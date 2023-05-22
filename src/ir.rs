use std::convert::From;
use crate::ir::ARG::*;
use std::fs;
use bimap::BiMap;
use std::iter::FromIterator;

lazy_static! {
    pub static ref OPCODES: BiMap<u32, &'static str> = {
        let mut OPS = BiMap::from_iter(vec![
            (0, "NOP"),
            (1, "ARGX"),
            (2, "ARGY"),
            (3, "ARGZ"),
            (4, "ARGW"),
            (5, "ADD"),
            (6, "SUB"),
            (7, "MUL"),
            (8, "DIV"),
            (9, "EXP"),
            (10, "LOG"),
            (11, "SQR"),
            (12, "SQRT"),
            (13, "POW"),
            (14, "SIN"),
            (15, "COS"),
            (16, "NEG"),
            (17, "MIN"),
            (18, "MAX"),
            (19, "ABS"),
            (20, "CUP"),
            (21, "CAP"),
            (22, "BR"),
            (23, "PHI"),
            (24, "TRUNC"),
            (25, "FLOOR"),
            (26, "CEIL"),
            (27, "SIGN"),
            (28, "RET"),
            (29, "MOD"),
            (30, "ATAN2"),
        ]);
        return OPS
    };

    static ref UNARY_OPS: Vec<u32> = {
        let unary_str = vec![
            "NOP", "ARGX", "ARGY", "ARGZ", "LOG", "SQR", "SQRT", "SIN", "COS", "NEG", "EXP",
            "TRUNC", "FLOOR", "CEIL", "SIGN", "ABS", "RET"
        ];
        let res = unary_str.iter().map(|x| *OPCODES.get_by_right(x).unwrap()).collect();
        return res;
    };

    static ref TAIL_OPS: Vec<u32> = {
        let tail_str = vec!["EXP", "LOG", "SQRT", "MIN", "MAX", "FLOOR", "CEIL", "ABS", "SIN", "COS", "POW", "MOD", "ATAN2"];
        let res = tail_str.iter().map(|x| *OPCODES.get_by_right(x).unwrap()).collect();
        return res;
    };
}

fn is_unary(op: u32) -> bool {
    return UNARY_OPS.contains(&op);
}

fn is_tail(op: u32) -> bool {
    return TAIL_OPS.contains(&op);
}

#[derive(Debug, PartialEq)]
enum ARG {
    REGISTER(u32),
    LITERAL(f32)
}

#[derive(Debug)]
pub struct Instruction {
    index: u16,
    op: u32,
    uses: Vec<u16>,
    larg: ARG,
    rarg: ARG,
    val: [f32; 2],
    sens: [f32; 2],
}

// compressed to save space
// 8 * 4 bytes
#[repr(C)]
#[derive(Debug, Copy, Clone, bytemuck::Pod, bytemuck::Zeroable)]
pub struct GPUInstruction {
    pub index_: u32,
    pub opcode_uses: u32, // opcode and uses spliced together
    pub larg_rarg: u32, // left and right arg spliced together
    pub rarg_literal: f32, // constant
    pub val: [f32; 2],
    pub sens: [f32; 2],
}

pub fn pack2x16(a: u16, b: u16) -> u32 {
    return ((a as u32)<<16) | (b as u32);
}

pub fn unpack2x16(a: u32) -> (u32, u32) {
    let x = a >> 16;
    let y = a & 65535;
    return (x,y);
}

// default constructor
impl From<()> for Instruction {
    fn from(_: ()) -> Self {
        return Self {
            index: 0,
            op: *OPCODES.get_by_right("NOP").unwrap(),
            uses: vec!(),
            larg: LITERAL(0.0),
            rarg: LITERAL(0.0),
            val: [0.0,0.0],
            sens: [0.0,0.0]
        }
    }
}

// op, larg, rarg
impl From<(u16, u32, ARG, ARG)> for Instruction {
    fn from(v: (u16, u32, ARG, ARG)) -> Self {
        return Self {
            index: v.0,
            op: v.1,
            uses: vec!(),
            larg: v.2,
            rarg: v.3,
            val: [0.0,0.0],
            sens: [0.0,0.0]
        }
    }
}

impl Instruction {
    pub fn to_gpu(&self) -> GPUInstruction {
        // encodes which arg the literal corresponds to, in the top two bits
        // 00 = both args are registers
        // 10 = left arg takes the literal
        // 01 = right arg is the literal

        let mut literal: f32 = 0.0;
        let mut literal_side: u16 = 3; // 11

        let larg: u16 = match self.larg {
            REGISTER(index) => {
                literal_side -= 2;
                index as u16
            }
            LITERAL(value) => {
                literal = value;
                0
            }
        };

        let rarg: u16 = match self.rarg {
            REGISTER(index) => {
                literal_side -= 1;
                index as u16
            }
            LITERAL(value) => {
                literal = value;
                0
            }
        };

        let op: u16 = (self.op as u16) | (literal_side<<14);

        return GPUInstruction {
            index_: self.index as u32,
            opcode_uses: pack2x16(op as u16, self.uses.len() as u16),
            larg_rarg: pack2x16(larg, rarg),
            rarg_literal: literal,
            val: self.val,
            sens: self.sens,
        }
    }
}

#[derive(Debug)]
pub struct IR {
    pub instructions: Vec<Instruction>,
    pub gpu_instructions: [GPUInstruction; 4096],
}

fn parseLLVMIR(input: &mut String, instructions: &mut Vec<Instruction>) {
    let a = input.find("fffff").unwrap();
    let b = &input[a..(input.len())];
    let start = b.find("\n").unwrap();
    let end = b.find("}").unwrap();
    let f = &b[start..end-1];
    let lines: Vec<&str> = f.split("\n").collect();

    for i in 1..lines.len() {
        let line = lines[i];
        let tokens: Vec<&str> = line.split_whitespace().collect();
        let mut instruction = Instruction::from(());
        instruction.index = instructions.len() as u16;

        instruction.op = match tokens[0] {
            "ret" => *OPCODES.get_by_right("RET").unwrap(),
            _ => match tokens[2] {
                "fadd" => *OPCODES.get_by_right("ADD").unwrap(),
                "fneg" => *OPCODES.get_by_right("NEG").unwrap(),
                "fsub" => *OPCODES.get_by_right("SUB").unwrap(),
                "fmul" => *OPCODES.get_by_right("MUL").unwrap(),
                "fdiv" => *OPCODES.get_by_right("DIV").unwrap(),
                "tail" => match tokens[5] {
                    i if i.contains("sqrt") => *OPCODES.get_by_right("SQRT").unwrap(),
                    i if i.contains("log") => *OPCODES.get_by_right("LOG").unwrap(),
                    i if i.contains("exp") => *OPCODES.get_by_right("EXP").unwrap(),
                    i if i.contains("min") => *OPCODES.get_by_right("MIN").unwrap(),
                    i if i.contains("max") => *OPCODES.get_by_right("MAX").unwrap(),
                    i if i.contains("floor") => *OPCODES.get_by_right("FLOOR").unwrap(),
                    i if i.contains("abs") => *OPCODES.get_by_right("ABS").unwrap(),
                    i if i.contains("sin") => *OPCODES.get_by_right("SIN").unwrap(),
                    i if i.contains("cos") => *OPCODES.get_by_right("COS").unwrap(),
                    i if i.contains("pow") => *OPCODES.get_by_right("POW").unwrap(),
                    i if i.contains("mod") => *OPCODES.get_by_right("MOD").unwrap(),
                    i if i.contains("atan2") => *OPCODES.get_by_right("ATAN2").unwrap(),
                    _ => {
                        eprintln!("cannot parse");
                        *OPCODES.get_by_right("NOP").unwrap()
                    }
                },
                _ => {
                    eprintln!("cannot parse");
                    *OPCODES.get_by_right("NOP").unwrap()
                }
            }
        };

        match instruction.op {
            op if is_tail(op) && is_unary(op) => {
                instruction.larg = match tokens[6] {
                    token if token.contains("%") => REGISTER((&token[1..token.len()-1]).parse().unwrap()),
                    token if token.contains("0x") => {
                        let bits = u64::from_str_radix((&token[2..token.len()-1]), 16).unwrap();
                        let val = f64::from_bits(bits);
                        LITERAL(val as f32)
                    }
                    token => LITERAL((&token[0..token.len()]).parse().unwrap())
                };
            }
            op if is_tail(op) && !is_unary(op) => {
                instruction.larg = match tokens[6] {
                    token if token.contains("%") => REGISTER((&token[1..token.len()-1]).parse().unwrap()),
                    token => LITERAL((&token[0..token.len()]).parse().unwrap())
                };
                instruction.rarg = match tokens[8] {
                    token if token.contains("%") => REGISTER((&token[1..token.len()-1]).parse().unwrap()),
                    token if token.contains("0x") => {
                        let bits = u64::from_str_radix((&token[2..token.len()-1]), 16).unwrap();
                        let val = f64::from_bits(bits);
                        LITERAL(val as f32)
                    }
                    token => LITERAL((&token[0..token.len()-1]).parse().unwrap())
                };
            }
            op if is_unary(op) => {
                instruction.larg = match tokens[0] {
                    "ret" => REGISTER((&tokens[2][1..tokens[2].len()]).parse().unwrap()),
                    _ => match tokens[4] {
                        token if token.contains("%") => REGISTER((&token[1..token.len()]).parse().unwrap()),
                        token => LITERAL((&token[0..token.len()]).parse().unwrap())
                    }
                };
                instruction.rarg = LITERAL(0.0);
            }
            op if !is_unary(op) => {
                instruction.larg = match tokens[4] {
                    token if token.contains("%") => REGISTER((&token[1..token.len()-1]).parse().unwrap()),
                    token if token.contains("0x") => {
                        let bits = u64::from_str_radix((&token[2..token.len()-1]), 16).unwrap();
                        let val = f64::from_bits(bits);
                        LITERAL(val as f32)
                    }
                    token => LITERAL((&token[0..token.len()-1]).parse().unwrap())
                };
                instruction.rarg = match tokens[5] {
                    token if token.contains("%") => REGISTER((&token[1..token.len()]).parse().unwrap()),
                    token if token.contains("0x") => {
                        let bits = u64::from_str_radix((&token[2..token.len()]), 16).unwrap();
                        let val = f64::from_bits(bits);
                        LITERAL(val as f32)
                    }
                    token => LITERAL((&token[0..token.len()]).parse().unwrap())
                };
            }
            _ => {}
        }

        let num_args = 4; // x, y, z, t (might have more later)

        // reindexing
        instruction.larg = match instruction.larg {
            REGISTER(index) if index > num_args-1 => REGISTER(index -1),
            _ => instruction.larg
        };        
        instruction.rarg = match instruction.rarg {
            REGISTER(index) if index > num_args-1 => REGISTER(index -1),
            _ => instruction.rarg
        };
        
        // interval optimization
        if (instruction.op == *OPCODES.get_by_right("MUL").unwrap() && instruction.larg == instruction.rarg) {
            instruction.op = *OPCODES.get_by_right("SQR").unwrap();
            instruction.rarg = LITERAL(0.0); // to make it unary 
        }

        // counting uses
        match instruction.larg {
            REGISTER(larg_index) => {
                instructions[larg_index as usize].uses.push(instruction.index);
            }
            _ => {}
        }
        match instruction.rarg {
            REGISTER(rarg_index) => {
                instructions[rarg_index as usize].uses.push(instruction.index);
            }
            _ => {}
        }

        instructions.push(instruction);
    }
}

impl IR {
    pub fn new(debug: bool, time: f32) -> Self {
        let mut instructions = vec![
            Instruction::from((0, *OPCODES.get_by_right("ARGX").unwrap(), LITERAL(0.0), LITERAL(0.0))),
            Instruction::from((1, *OPCODES.get_by_right("ARGY").unwrap(), LITERAL(0.0), LITERAL(0.0))),
            Instruction::from((2, *OPCODES.get_by_right("ARGZ").unwrap(), LITERAL(0.0), LITERAL(0.0))),
            Instruction::from((3, *OPCODES.get_by_right("ARGW").unwrap(), LITERAL(0.0), LITERAL(0.0))),
        ];

        // initial box
        let lo = -5.0;
        let hi = 5.0;
        instructions[0].val = [lo, hi];
        instructions[1].val = [lo, hi];
        instructions[2].val = [lo, hi];
        instructions[3].val = [time, time];

        let mut file_contents = fs::read_to_string("scenes/sponza.ll").expect("Could not read file.");

        parseLLVMIR(&mut file_contents, &mut instructions);

        let len = instructions.len(); 
        instructions[len-1].uses.push(0); // dummy usage so last instruction doesn't get pruned 

        let mut gpu_instructions = [Instruction::from(()).to_gpu(); 4096];
        for i in 0..instructions.len().min(4096) {
            gpu_instructions[i] = instructions[i].to_gpu();
        }

        return IR{
            instructions,
            gpu_instructions
        };
    }

    pub fn to_gpu(&mut self) -> [GPUInstruction; 4096] {
        for i in 0..4096 {
            self.gpu_instructions[i] = self.instructions[i].to_gpu();
        }
        return self.gpu_instructions;
    }
}