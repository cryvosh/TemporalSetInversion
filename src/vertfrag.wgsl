struct VertexOutput {
    @builtin(position) clip_position: vec4<f32>,
};

struct Pixels {
    pixels: array<vec4<f32>>,
};

@vertex
fn vs_main(
    @builtin(vertex_index) in_vertex_index: u32,
) -> VertexOutput {
    var out: VertexOutput;
    var pos = vec2<f32>(f32((in_vertex_index << 1u) & 2u), f32(in_vertex_index & 2u)) * 2.0 - 1.0;
    out.clip_position = vec4<f32>(f32(pos.x), f32(pos.y), 0.0, 1.0);

    return out;
}

struct Uniforms {
    view: mat4x4<f32>,
    resolution: vec2<u32>,
    time: f32,
    lasttime: f32,
    rendermode: f32,
    _padding: f32,
    _padding2: f32,
    _padding3: f32,
};

@group(0) @binding(3)
var<storage, read_write> pixels: Pixels;

@group(0) @binding(4)
var<uniform> uniforms: Uniforms;

@fragment
fn fs_main(
    @builtin(position) coord: vec4<f32>,
) -> @location(0) vec4<f32> {
    var pixel_index = u32(coord.y)*uniforms.resolution.x + u32(coord.x);
    var col = pixels.pixels[pixel_index];
    col.x = pow(col.x, 2.2);
    col.y = pow(col.y, 2.2);
    col.z = pow(col.z, 2.2);
    return col;
}