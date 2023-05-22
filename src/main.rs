#[macro_use]
extern crate lazy_static;

use std::{io::{stdin, stdout, Write}, error::Error};
use bytemuck::Zeroable;
use ir::GPUInstruction;
use wgpu::{util::DeviceExt, SurfaceConfiguration, Surface, CommandEncoder};
use std::time::{Duration, Instant};
use winit::{
    event::*,
    event_loop::{ControlFlow, EventLoop},
    window::WindowBuilder, dpi::PhysicalSize,
};
use winit::window::Window;
mod input;
mod camera;
mod uniforms;
mod ir;
use std::borrow::Cow;
use futures;
use winit::monitor::{MonitorHandle, VideoMode};
use winit::window::{Fullscreen};
use std::panic;
use std::fs::{self, File};
use std::io::prelude::*;
use std::io::LineWriter;
use regex::Regex;
use image::{ImageBuffer, Rgba, DynamicImage};

#[repr(C)]
#[derive(Debug, Copy, Clone, bytemuck::Pod, bytemuck::Zeroable)]
struct Region { // needs a references field to count how many voxels reference this tape
    instruction_count: u32,
    instructions: [ir::GPUInstruction; 4096],
}

#[repr(C)]
#[derive(Debug, Copy, Clone, bytemuck::Pod, bytemuck::Zeroable)]
struct Voxel {
    x: [f32; 2],
    y: [f32; 2],
    z: [f32; 2],
    t: f32,
    child_count: u32, // to determine if is leaf
    children: [u32; 8],
    f: f32,
    dx: f32,
    dy: f32,
    dz: f32,    
    time_err: f32,
    debug: f32,
}

struct State {
    device: wgpu::Device,
    queue: wgpu::Queue,
    size: PhysicalSize<u32>,
    config: SurfaceConfiguration,
    surface: Surface,
    rootfinding_shader: wgpu::ShaderModule,
    rootfinding_pipeline: wgpu::ComputePipeline,
    raytracing_pipeline: wgpu::ComputePipeline,
    vertfrag_shader: wgpu::ShaderModule,
    render_pipeline: wgpu::RenderPipeline,
    regions: Vec<Region>,
    broker_queue: Vec<u32>,
    storage_buffer: wgpu::Buffer,
    rootfinding_bind_group: wgpu::BindGroup,
    raytracing_bind_group: wgpu::BindGroup,
    fragment_bind_group: wgpu::BindGroup,
    camera: camera::Camera,
    camera_controller: camera::CameraController,
    uniforms: uniforms::Uniforms,
    uniform_buffer: wgpu::Buffer,
    pixel_buffer: wgpu::Buffer,
    memory_buffer: wgpu::Buffer,
    broker_queue_buffer: wgpu::Buffer,
    ir: ir::IR,
    broker_queue_size: usize,
    broker_queue_src_buffer: wgpu::Buffer,
    buf_pipeline: wgpu::ComputePipeline,
    buf_bind_group: wgpu::BindGroup,
    first_eval: bool,
    voxel_buffers: Vec<wgpu::Buffer>,
    tapememory_queue_buffer: wgpu::Buffer,
    voxel_buffer_size: u64,
    voxel_queue_buffer: wgpu::Buffer,
    pixel_staging_buffer: wgpu::Buffer,
    querySet: wgpu::QuerySet,
    queryBuffer: wgpu::Buffer,
    queryCapacity: u32,
    queryStagingBuffer: wgpu::Buffer
}

impl State {
    // constructor
    async fn new(window: &Window) -> Self {
        let size = window.inner_size();

        let instance = wgpu::Instance::new(wgpu::Backends::VULKAN);
        let surface = unsafe {instance.create_surface(window)};

        let adapter = instance.request_adapter(
            &wgpu::RequestAdapterOptions {
                power_preference: wgpu::PowerPreference::HighPerformance,
                compatible_surface: Some(&surface),
                force_fallback_adapter: false
            },
        ).await.unwrap();

        let mut lims = adapter.limits();
        lims.max_storage_buffer_binding_size = 2147483648;

        let (device, queue) = adapter.request_device(
            &wgpu::DeviceDescriptor {
                // features: wgpu::Features::empty(),
                features: wgpu::Features::TIMESTAMP_QUERY | wgpu::Features::WRITE_TIMESTAMP_INSIDE_PASSES,
                limits: lims,
                label: None
            },
            None,
        ).await.unwrap();

        let config = wgpu::SurfaceConfiguration {
            usage: wgpu::TextureUsages::RENDER_ATTACHMENT,
            format: surface.get_supported_formats(&adapter)[0],
            width: size.width,
            height: size.height,
            present_mode: wgpu::PresentMode::Immediate,
            // present_mode: wgpu::PresentMode::Fifo,
            alpha_mode: wgpu::CompositeAlphaMode::Auto,
        };
        surface.configure(&device, &config);

        let src = std::fs::read_to_string("src/compute.wgsl");

        let src = match src {
            Ok(file) => file,
            Err(error) => panic!("Problem opening the file: {:?}", error),
        };

        let rootfinding_shader = device.create_shader_module(wgpu::ShaderModuleDescriptor {
            label: None,
            source: wgpu::ShaderSource::Wgsl(Cow::from(src))
        });

        let rootfinding_pipeline = device.create_compute_pipeline(&wgpu::ComputePipelineDescriptor {
            label: None,
            layout: None,
            module: &rootfinding_shader,
            entry_point: "main",
        });

        let raytracing_pipeline = device.create_compute_pipeline(&wgpu::ComputePipelineDescriptor {
            label: None,
            layout: None,
            module: &rootfinding_shader,
            entry_point: "rt_main",
        });

        let buf_pipeline = device.create_compute_pipeline(&wgpu::ComputePipelineDescriptor {
            label: None,
            layout: None,
            module: &rootfinding_shader,
            entry_point: "buf_main",
        });

        let vertfrag_shader = device.create_shader_module(wgpu::ShaderModuleDescriptor {
            label: None,
            source: wgpu::ShaderSource::Wgsl(include_str!("vertfrag.wgsl").into()),
        });

        let render_pipeline = device.create_render_pipeline(&wgpu::RenderPipelineDescriptor {
            label: Some("Render Pipeline"),
            layout: None,
            vertex: wgpu::VertexState {
                module: &vertfrag_shader,
                entry_point: "vs_main",
                buffers: &[],
            },
            fragment: Some(wgpu::FragmentState {
                module: &vertfrag_shader,
                entry_point: "fs_main",
                targets: &[Some(wgpu::ColorTargetState {
                    format: config.format,
                    blend: Some(wgpu::BlendState::REPLACE),
                    write_mask: wgpu::ColorWrites::ALL,
                })],
            }),
            primitive: wgpu::PrimitiveState {
                topology: wgpu::PrimitiveTopology::TriangleList,
                strip_index_format: None,
                front_face: wgpu::FrontFace::Ccw,
                cull_mode: Some(wgpu::Face::Back),
                polygon_mode: wgpu::PolygonMode::Fill,
                unclipped_depth: false,
                conservative: false,
            },
            depth_stencil: None,
            multisample: wgpu::MultisampleState {
                count: 1,
                mask: !0,
                alpha_to_coverage_enabled: false,
            },
            multiview: None,
        });

        let mut regions = vec![];
        for i in 0..(i32::pow(2,13)) {
            regions.push(
                Region::zeroed()
            );
        }

        println!("got here");

        let broker_queue_size = 33554432;
        let mut broker_queue = vec![0; broker_queue_size*2 + 12];

        let broker_queue_src_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
            label: None,
            contents: bytemuck::cast_slice(&broker_queue),
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
        });

		let camera = camera::Camera::new(
			(0.0,0.0,0.0).into(),
			cgmath::Vector3::unit_y(),
			(size.width / size.height) as f32,
			90.0,
			0.1,
			10000.0
		);
		let camera_controller = camera::CameraController::new(3.0, 0.001);

        let uniforms = uniforms::Uniforms::new();

        let storage_buffer = device.create_buffer(&wgpu::BufferDescriptor {
            label: None,
            size: (bytemuck::cast_slice(&regions) as &[u8]).len() as u64,
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
            mapped_at_creation: false
        });

        queue.write_buffer(&storage_buffer, 0, bytemuck::cast_slice(&regions));

        let mut voxels = vec![];
        let size_of_voxel = (bytemuck::cast_slice(&[Voxel::zeroed()]) as &[u8]).len() as u64;
        // 4294967295

        for i in 0..(2147483648 / size_of_voxel) {
            voxels.push(
                Voxel::zeroed()
            );
        }

        println!("{:?}", (bytemuck::cast_slice(&voxels) as &[u8]).len() as u64);

        let voxel_buffer_size = (bytemuck::cast_slice(&voxels) as &[u8]).len() as u64;

        let voxel_buffer = device.create_buffer(&wgpu::BufferDescriptor {
            label: None,
            size: voxel_buffer_size,
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
            mapped_at_creation: false
        });

        let voxel_buffer2 = device.create_buffer(&wgpu::BufferDescriptor {
            label: None,
            size: voxel_buffer_size,
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
            mapped_at_creation: false
        });

        let memory_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
            label: None,
            contents: bytemuck::bytes_of(&[0,0,0,0,0,0]),
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
        });

        let broker_queue_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
            label: None,
            contents: bytemuck::cast_slice(&broker_queue),
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
        });

        let tapememory_queue_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
            label: None,
            contents: bytemuck::cast_slice(&broker_queue),
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
        });

        let voxel_queue_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
            label: None,
            contents: bytemuck::cast_slice(&broker_queue),
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
        });

        let uniform_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
            label: None,
            contents: bytemuck::bytes_of(&uniforms),
            usage: wgpu::BufferUsages::UNIFORM | wgpu::BufferUsages::COPY_DST
        });

        let rootfinding_bind_group = device.create_bind_group(&wgpu::BindGroupDescriptor {
            label: None,
            layout: &rootfinding_pipeline.get_bind_group_layout(0),
            entries: &[
                wgpu::BindGroupEntry {
                    binding: 0,
                    resource: storage_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 1,
                    resource: memory_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 2,
                    resource: broker_queue_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 4,
                    resource: uniform_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 6,
                    resource: voxel_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 8,
                    resource: voxel_queue_buffer.as_entire_binding(),
                },
            ],
        });

        let pixel_buffer = device.create_buffer(&wgpu::BufferDescriptor {
            label: None,
            size: (size.width * size.height * 4 * 4) as u64,
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
            mapped_at_creation: false
        });

        let pixel_staging_buffer = device.create_buffer(&wgpu::BufferDescriptor {
            label: None,
            size: (size.width * size.height * 4 * 4) as u64,
            usage: wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::MAP_READ,
            mapped_at_creation: false
        });

        let raytracing_bind_group = device.create_bind_group(&wgpu::BindGroupDescriptor {
            label: None,
            // layout: &raytracing_bind_group_layout,
            layout: &raytracing_pipeline.get_bind_group_layout(0),
            entries: &[
                wgpu::BindGroupEntry {
                    binding: 0,
                    resource: storage_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 1,
                    resource: memory_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 2,
                    resource: broker_queue_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 3,
                    resource: pixel_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 4,
                    resource: uniform_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 6,
                    resource: voxel_buffer.as_entire_binding(),
                },
            ]
        });

        let buf_bind_group = device.create_bind_group(&wgpu::BindGroupDescriptor {
            label: None,
            // layout: &raytracing_bind_group_layout,
            layout: &buf_pipeline.get_bind_group_layout(0),
            entries: &[
                wgpu::BindGroupEntry {
                    binding: 0,
                    resource: storage_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 1,
                    resource: memory_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 2,
                    resource: broker_queue_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 4,
                    resource: uniform_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 6,
                    resource: voxel_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 8,
                    resource: voxel_queue_buffer.as_entire_binding(),
                },
            ]
        });

        let fragment_bind_group = device.create_bind_group(&wgpu::BindGroupDescriptor {
            label: None,
            layout: &render_pipeline.get_bind_group_layout(0),
            entries: &[
                wgpu::BindGroupEntry {
                    binding: 3,
                    resource: pixel_buffer.as_entire_binding(),
                },
                wgpu::BindGroupEntry {
                    binding: 4,
                    resource: uniform_buffer.as_entire_binding(),
                },
            ]
        });

        let ir = ir::IR::new(false, 0.0);

        let first_eval = true;

        let voxel_buffers = vec!(voxel_buffer, voxel_buffer2);

        let queryCapacity = 4;
        let querySet = device.create_query_set(&wgpu::QuerySetDescriptor{
            label: None,
            ty: wgpu::QueryType::Timestamp,
            count: queryCapacity
        });

        let queryBuffer = device.create_buffer(&wgpu::BufferDescriptor {
            label: None,
            size: (8 * queryCapacity) as u64,
            usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
            mapped_at_creation: false
        });

        let queryStagingBuffer = device.create_buffer(&wgpu::BufferDescriptor {
            label: None,
            size: (8 * queryCapacity) as u64,
            usage: wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::MAP_READ,
            mapped_at_creation: false
        });

        Self {
            device,
            queue,
            size,
            config,
            surface,
            rootfinding_shader,
            rootfinding_pipeline,
            raytracing_pipeline,
            vertfrag_shader,
            render_pipeline,
            regions,
            broker_queue,
            storage_buffer,
            rootfinding_bind_group,
            raytracing_bind_group,
            fragment_bind_group,
            camera,
            camera_controller,
            uniforms,
            uniform_buffer,
            pixel_buffer,
            memory_buffer,
            broker_queue_buffer,
            ir,
            broker_queue_size,
            broker_queue_src_buffer,
            buf_pipeline,
            buf_bind_group,
            first_eval,
            voxel_buffers,
            tapememory_queue_buffer,
            voxel_buffer_size,
            voxel_queue_buffer,
            pixel_staging_buffer,
            querySet,
            queryBuffer,
            queryCapacity,
            queryStagingBuffer,
        }
    }

    pub fn update(&mut self, input: &input::Input, dt: Duration, time: Duration) {
        self.camera_controller.update(&mut self.camera, input, dt);
        self.uniforms.update_time(time);
        self.uniforms.update_view(&self.camera);

        self.queue.write_buffer(&self.uniform_buffer, 0, bytemuck::bytes_of(&self.uniforms));
    }

    pub fn reloadshader(&mut self) {
        let src = std::fs::read_to_string("src/compute.wgsl");

        let src = match src {
            Ok(file) => file,
            Err(error) => panic!("Problem opening the file: {:?}", error),
        };

        self.device.push_error_scope(wgpu::ErrorFilter::Validation);

        self.rootfinding_shader = self.device.create_shader_module(wgpu::ShaderModuleDescriptor {
            label: None,
            source: wgpu::ShaderSource::Wgsl(Cow::from(src))
        });

        let err_pop = pollster::block_on(self.device.pop_error_scope());        

        match err_pop {
            Some(x) => {
                match x {
                    wgpu::Error::Validation{source, description} => {
                        println!("{}", description);
                        println!("ERRORRR");
                        return;
                    },
                    _ => {}
                }
            }
            None => {}
        }

        self.rootfinding_pipeline = self.device.create_compute_pipeline(&wgpu::ComputePipelineDescriptor {
            label: None,
            layout: None,
            module: &self.rootfinding_shader,
            entry_point: "main",
        });

        self.raytracing_pipeline = self.device.create_compute_pipeline(&wgpu::ComputePipelineDescriptor {
            label: None,
            layout: None,
            module: &self.rootfinding_shader,
            entry_point: "rt_main",
        });

        self.buf_pipeline = self.device.create_compute_pipeline(&wgpu::ComputePipelineDescriptor {
            label: None,
            layout: None,
            module: &self.rootfinding_shader,
            entry_point: "buf_main",
        });

        self.resize(self.size);
    }

    // todo avoid code duplication
    pub fn resize(&mut self, new_size: winit::dpi::PhysicalSize<u32>) {
        if new_size.width > 0 && new_size.height > 0 {
            self.size = new_size;
            self.config.width = new_size.width;
            self.config.height = new_size.height;
            self.surface.configure(&self.device, &self.config);
            self.uniforms.update_resolution(new_size.width, new_size.height);

            self.pixel_buffer = self.device.create_buffer(&wgpu::BufferDescriptor {
                label: None,
                size: (self.size.width * self.size.height * 4 * 4) as u64,
                usage: wgpu::BufferUsages::STORAGE | wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::COPY_SRC,
                mapped_at_creation: false
            });

            self.pixel_staging_buffer = self.device.create_buffer(&wgpu::BufferDescriptor {
                label: None,
                size: (self.size.width * self.size.height * 4 * 4) as u64,
                usage: wgpu::BufferUsages::COPY_DST | wgpu::BufferUsages::MAP_READ,
                mapped_at_creation: false
            });
            

            let size_of_voxel = (bytemuck::cast_slice(&[Voxel::zeroed()]) as &[u8]).len() as u64;

            self.raytracing_bind_group = self.device.create_bind_group(&wgpu::BindGroupDescriptor {
                label: None,
                // layout: &raytracing_bind_group_layout,
                layout: &self.raytracing_pipeline.get_bind_group_layout(0),
                entries: &[
                    wgpu::BindGroupEntry {
                        binding: 0,
                        resource: self.storage_buffer.as_entire_binding(),
                    },
                    wgpu::BindGroupEntry {
                        binding: 1,
                        resource: self.memory_buffer.as_entire_binding(),
                    },
                    wgpu::BindGroupEntry {
                        binding: 2,
                        resource: self.broker_queue_buffer.as_entire_binding(),
                    },
                    wgpu::BindGroupEntry {
                        binding: 3,
                        resource: self.pixel_buffer.as_entire_binding(),
                    },
                    wgpu::BindGroupEntry {
                        binding: 4,
                        resource: self.uniform_buffer.as_entire_binding(),
                    },
                    wgpu::BindGroupEntry {
                        binding: 6,
                        resource: self.voxel_buffers[0].as_entire_binding(),
                    },
                ]
            });
    
            self.fragment_bind_group = self.device.create_bind_group(&wgpu::BindGroupDescriptor {
                label: None,
                // layout: &raytracing_bind_group_layout,
                layout: &self.render_pipeline.get_bind_group_layout(0),
                entries: &[
                    wgpu::BindGroupEntry {
                        binding: 3,
                        resource: self.pixel_buffer.as_entire_binding(),
                    },
                    wgpu::BindGroupEntry {
                        binding: 4,
                        resource: self.uniform_buffer.as_entire_binding(),
                    },
                ]
            });
        }

        self.first_eval = true;
    }

    pub fn render(&mut self, framenumber: i32, accum_runtime: f64) -> Result<(), wgpu::SurfaceError> {
        let output = self.surface.get_current_texture()?;

        let view = output.texture.create_view(&wgpu::TextureViewDescriptor::default());

        let mut encoder = self.device.create_command_encoder(&wgpu::CommandEncoderDescriptor {
            label: None,
        });

        {
            let mut raytrace_pass = encoder.begin_compute_pass(&wgpu::ComputePassDescriptor {
                label: None
            });

            raytrace_pass.set_pipeline(&self.raytracing_pipeline);
            raytrace_pass.set_bind_group(0, &self.raytracing_bind_group, &[]);
            raytrace_pass.dispatch_workgroups((self.size.width as f32 / 16.0).ceil() as u32, (self.size.height as f32 / 16.0).ceil() as u32, 1);
        }

        {
            let mut render_pass = encoder.begin_render_pass(&wgpu::RenderPassDescriptor {
                label: Some("Render Pass"),
                color_attachments: &[Some(wgpu::RenderPassColorAttachment {
                    view: &view,
                    resolve_target: None,
                    ops: wgpu::Operations {
                        load: wgpu::LoadOp::Clear(wgpu::Color {
                            r: 0.1,
                            g: 0.2,
                            b: 0.3,
                            a: 1.0,
                        }),
                        store: true,
                    },
                })],
                depth_stencil_attachment: None,
            });

            render_pass.set_pipeline(&self.render_pipeline);
            render_pass.set_bind_group(0, &self.fragment_bind_group, &[]);
            render_pass.draw(0..3, 0..1); 
        }

        {
            let mut buf_pass = encoder.begin_compute_pass(&wgpu::ComputePassDescriptor { 
                label: None
            });

            buf_pass.set_pipeline(&self.buf_pipeline);
            buf_pass.set_bind_group(0, &self.buf_bind_group, &[]);
            buf_pass.dispatch_workgroups(1, 1, 1);
        }

        // save frame, save image
        let save_frames_to_disk = false;
        if (save_frames_to_disk) {
            {
            encoder.copy_buffer_to_buffer(&self.pixel_buffer, 0, &self.pixel_staging_buffer, 0, self.pixel_buffer.size());

            let buffer_slice = self.pixel_staging_buffer.slice(..);

            let (sender, receiver) = futures_intrusive::channel::shared::oneshot_channel();
            buffer_slice.map_async(wgpu::MapMode::Read, move |v| sender.send(v).unwrap());

            self.device.poll(wgpu::Maintain::Wait);

            pollster::block_on(receiver.receive());

            let data = buffer_slice.get_mapped_range();
            let data2: Vec<f32> = bytemuck::cast_slice(&data).to_vec();
            let imgbf = ImageBuffer::<Rgba<f32>,_>::from_raw(self.size.width, self.size.height, data2).unwrap();
            let rgb = DynamicImage::ImageRgba32F(imgbf).into_rgba8();
            rgb.save(format!("images/{}.png", framenumber)).unwrap();
            }

            self.pixel_staging_buffer.unmap();
        }

        self.queue.submit(Some(encoder.finish()));

        output.present();

        Ok(())
    }

    pub fn compute(&mut self, debugmem: bool, debugtapes: bool, debugvoxels: bool, time: Duration) -> f64 {
        let mut encoder = self.device.create_command_encoder(&wgpu::CommandEncoderDescriptor {
            label: None,
        });
        encoder.write_timestamp(&self.querySet, 0);

        if (self.first_eval) {
            encoder.clear_buffer(&self.broker_queue_buffer, 0, wgpu::BufferSize::new(4*(self.broker_queue_size*2+ 12) as u64));
            encoder.clear_buffer(&self.tapememory_queue_buffer, 0, wgpu::BufferSize::new(4*(self.broker_queue_size*2+ 12) as u64));
            encoder.clear_buffer(&self.voxel_queue_buffer, 0, wgpu::BufferSize::new(4*(self.broker_queue_size*2+ 12) as u64));

            for i in 0..self.voxel_buffers.len() {
                encoder.clear_buffer(&self.voxel_buffers[i], 0, wgpu::BufferSize::new(self.voxel_buffer_size));
            }
            

            self.queue.submit(Some(encoder.finish()));

            self.ir = ir::IR::new(false, time.as_secs_f32());
            self.regions[0].instructions = self.ir.gpu_instructions;
            self.regions[0].instruction_count = self.ir.instructions.len() as u32;

            self.queue.write_buffer(&self.storage_buffer, 0, bytemuck::cast_slice(&[self.regions[0]]));
            self.queue.write_buffer(&self.memory_buffer, 0, bytemuck::cast_slice(&[0,0,0,0,0,0]));

            let vxl = Voxel{
                x: self.regions[0].instructions[0].val,
                y: self.regions[0].instructions[1].val,
                z: self.regions[0].instructions[2].val,
                child_count: 0,
                t: 0.0,
                children: [0; 8],
                f: 0.0,
                dx: 0.0,
                dy: 0.0,
                dz: 0.0,
                time_err: 0.0,
                debug: 0.0
            };
            self.queue.write_buffer(&self.voxel_buffers[0], 0, bytemuck::cast_slice(&[vxl]));
            self.queue.write_buffer(&self.broker_queue_buffer, 0, bytemuck::cast_slice(&[0]));
            self.queue.write_buffer(&self.broker_queue_buffer, (self.broker_queue_size as u64)*4, bytemuck::cast_slice(&[1]));
            self.queue.write_buffer(&self.broker_queue_buffer, (self.broker_queue_size as u64)*2*4, bytemuck::cast_slice(&[0,1,1]));
        } else {
            self.queue.submit(Some(encoder.finish()));
        }

        let mut encoder = self.device.create_command_encoder(&wgpu::CommandEncoderDescriptor {
            label: None,
        });

        {
            let mut compute_pass = encoder.begin_compute_pass(&wgpu::ComputePassDescriptor {
                label: None
            });

            compute_pass.set_pipeline(&self.rootfinding_pipeline);
            compute_pass.set_bind_group(0, &self.rootfinding_bind_group, &[]);
            compute_pass.dispatch_workgroups(4096 as u32, 1, 1); // I can increase this now
        }

        encoder.write_timestamp(&self.querySet, 1);
        encoder.resolve_query_set(&self.querySet, 0..2, &self.queryBuffer, 0);
        self.queue.submit(Some(encoder.finish()));

        // reading timestamp

        let mut ftimediff = 0.0;

        {
        let mut encoder = self.device.create_command_encoder(&wgpu::CommandEncoderDescriptor {
            label: None,
        });
        encoder.copy_buffer_to_buffer(&self.queryBuffer, 0, &self.queryStagingBuffer, 0, self.queryBuffer.size());

        let buffer_slice = self.queryStagingBuffer.slice(..);

        let (sender, receiver) = futures_intrusive::channel::shared::oneshot_channel();
        buffer_slice.map_async(wgpu::MapMode::Read, move |v| sender.send(v).unwrap());

        self.device.poll(wgpu::Maintain::Wait);

        pollster::block_on(receiver.receive());

        let data = buffer_slice.get_mapped_range();
        let mut data2: Vec<u64> = bytemuck::cast_slice(&data).to_vec();

        let timediff = data2[1] - data2[0];
        ftimediff = timediff as f64;
        ftimediff *= self.queue.get_timestamp_period() as f64;
        ftimediff /= 1000000.0;

        drop(data);
        self.queryStagingBuffer.unmap();

        self.queue.submit(Some(encoder.finish()));
        }

        if (debugtapes) {
            let mut encoder = self.device.create_command_encoder(&wgpu::CommandEncoderDescriptor {
                label: None,
            });
            let slice_size = 50 * std::mem::size_of::<f32>() * (1 + 4096*8);
            let size = slice_size as wgpu::BufferAddress;

            let staging_buffer = self.device.create_buffer(&wgpu::BufferDescriptor {
                label: None,
                size,
                usage: wgpu::BufferUsages::MAP_READ | wgpu::BufferUsages::COPY_DST,
                mapped_at_creation: false,
            });

            encoder.copy_buffer_to_buffer(&self.storage_buffer, 0, &staging_buffer, 0, size);
            self.queue.submit(Some(encoder.finish()));

            let buffer_slice = staging_buffer.slice(..);

            let (sender, receiver) = futures_intrusive::channel::shared::oneshot_channel();
            buffer_slice.map_async(wgpu::MapMode::Read, move |v| sender.send(v).unwrap());

            self.device.poll(wgpu::Maintain::Wait);

            pollster::block_on(receiver.receive());

                let data = buffer_slice.get_mapped_range();
                let result: Vec<Region> = bytemuck::cast_slice(&data).to_vec();
        
                drop(data);
                staging_buffer.unmap();
                println!(" ");
                for j in result.len()-1..result.len() {
                    let region = result[j];
                    println!("index {:?} ", j);
                    println!("instruction count = {:?}", region.instruction_count);
                    for i in 0..region.instruction_count as usize {
                        println!("");
                        let instruction = region.instructions[i];
                        let (opcode, uses) = ir::unpack2x16(region.instructions[i].opcode_uses);
                        let (larg, rarg) = ir::unpack2x16(region.instructions[i].larg_rarg);
    
                        print!("index = {:?}, ", instruction.index_);
                        print!("uses = {:?}, ", uses);
                        print!("hmm = {:?}, ", (opcode & !(3 << 14 as u32)));
                        print!("op = {:?}, ", *ir::OPCODES.get_by_left(&(opcode & !(3 << 14 as u32))).unwrap());
                        print!("larg = {:?}, ", larg);
                        print!("rarg = {:?}, ", rarg);
                        print!("rarg_literal = {:?}, ", instruction.rarg_literal);
                        print!("val = {:?}, ", instruction.val);
                        print!("sens = {:?}, ", instruction.sens);
                    }
                    println!(" ");
                }            
        }

        return ftimediff;
    }

}

fn prompt_for_monitor(event_loop: &EventLoop<()>) -> MonitorHandle {
    for (num, monitor) in event_loop.available_monitors().enumerate() {
        println!("Monitor #{}: {:?}", num, monitor.name());
    }

    print!("Please write the number of the monitor to use: ");
    stdout().flush().unwrap();

    let mut num = String::new();
    stdin().read_line(&mut num).unwrap();
    let num = num.trim().parse().expect("Please enter a number");
    let monitor = event_loop
        .available_monitors()
        .nth(num)
        .expect("Please enter a valid ID");

    println!("Using {:?}", monitor.name());

    monitor
}

fn prompt_for_video_mode(monitor: &MonitorHandle) -> VideoMode {
    for (i, video_mode) in monitor.video_modes().enumerate() {
        println!("Video mode #{}: {}", i, video_mode);
    }

    print!("Please write the number of the video mode to use: ");
    stdout().flush().unwrap();

    let mut num = String::new();
    stdin().read_line(&mut num).unwrap();
    let num = num.trim().parse().expect("Please enter a number");
    let video_mode = monitor
        .video_modes()
        .nth(num)
        .expect("Please enter a valid ID");

    println!("Using {}", video_mode);

    video_mode
}

fn main() -> std::io::Result<()> {
    env_logger::init();
    let event_loop = EventLoop::new();

    let window: Window;
    let shouldbefullscreen = false;

    if (shouldbefullscreen) {
        // https://github.com/rust-windowing/winit/blob/master/examples/fullscreen.rs
        let mut num = String::new();
        println!("Please enter 1 for fullscreen, 2 for borderless fullscreen");
        stdin().read_line(&mut num).unwrap();
        let num = num.trim().parse().expect("Please enter a number");
        let fullscreen = Some(match num {
            1 => Fullscreen::Exclusive(prompt_for_video_mode(&prompt_for_monitor(&event_loop))),
            2 => Fullscreen::Borderless(Some(prompt_for_monitor(&event_loop))),
            _ => panic!("Please enter a valid number"),
        });

        window = WindowBuilder::new()
            .with_title("surjector")
            .with_fullscreen(fullscreen.clone())
            .build(&event_loop).unwrap();
    } else {
        window = WindowBuilder::new().with_title("surjector").build(&event_loop).unwrap();
    }

    let save_timing_to_disk = false;
    let filename = "timing.txt";
    let file = File::create(filename)?;
    let mut file = LineWriter::new(file);

    let mut input = input::Input::new();

    let mut state = pollster::block_on(State::new(&window));

	let mut cursor_grabbed = true;
	let _ = window.set_cursor_grab(winit::window::CursorGrabMode::Confined);
	window.set_cursor_visible(false);

    let mut start_time = Instant::now();
	let mut last_frame_time = Instant::now();

    let mut frame_number = 0;
    let mut accum_runtime = 0.0;

    event_loop.run(move |event, _, control_flow| {
        match event {
			Event::DeviceEvent {
				event,
				..
			} => {
				if cursor_grabbed {
					input.parse_event(event);
				}
			}

            Event::WindowEvent {
                ref event,
                window_id
            } if window_id == window.id() => {
                match event {
					WindowEvent::KeyboardInput {
						input: KeyboardInput {
							virtual_keycode: Some(code),
							state: ElementState::Pressed,
							..
						},
						..
					} => {
						match code {
							VirtualKeyCode::Escape => {
								if cursor_grabbed {
									cursor_grabbed = false;
									let _ = window.set_cursor_grab(winit::window::CursorGrabMode::None);
									window.set_cursor_visible(true);
								}
							}

                            VirtualKeyCode::R => {
                                println!("r");
                                if (save_timing_to_disk) {
                                    let f = File::create(filename).unwrap();
                                    file = LineWriter::new(f);
                                }

                                start_time = Instant::now();
                                state.first_eval = true;
                                frame_number = 0;
                                accum_runtime = 0.0;
                                state.reloadshader();
                            }

                            VirtualKeyCode::T => {
                                println!("t");
                                state.uniforms.rendermode = (state.uniforms.rendermode + 1.0) % 2.0;
                            }
                            
							_ => {}
						}
					}

                    WindowEvent::MouseInput {
						state: ElementState::Pressed,
						..
					} => {
						if !cursor_grabbed {
							cursor_grabbed = true;
							let _ = window.set_cursor_grab(winit::window::CursorGrabMode::Confined);
							window.set_cursor_visible(false);
						}
					}

                    WindowEvent::Focused(false) => {
						if cursor_grabbed {
							cursor_grabbed = false;
							let _ = window.set_cursor_grab(winit::window::CursorGrabMode::None);
							window.set_cursor_visible(true);
						}
					}

                    WindowEvent::CloseRequested => {*control_flow = ControlFlow::Exit}

                    WindowEvent::Resized(physical_size) => {
						state.resize(*physical_size);                 
					}

                    _ => {}
                }
            }

            Event::RedrawRequested(window_id) if window_id == window.id() => {
                let now = Instant::now(); // might not be monotonic?
				let dt = now - last_frame_time;
				last_frame_time = now;

                state.update(&input, dt, Duration::from_secs_f32((frame_number as f32) * (1.0/60.0)));

                let frmtime = state.compute(input.get_key_down(VirtualKeyCode::Q), input.get_key_down(VirtualKeyCode::E), input.get_key_down(VirtualKeyCode::F), Instant::now()-start_time);

                if (input.get_key(VirtualKeyCode::Space)) {
                    println!("framenumber: {:?}, time: {:?}, rootfindtime: {:?}", frame_number, dt.as_micros() as f64 / 1000.0, frmtime);
                }

                accum_runtime += frmtime;

                if (save_timing_to_disk) {
                    write!(file, "framenumber: {:?}, rootfinding_time_accumulated: {:?}, actual_frame_time: {:?}\n", frame_number, accum_runtime, dt.as_micros() as f64 / 1000.0);
                }

                match state.render(frame_number, accum_runtime) {
                    Ok(_) => {}
                    Err(wgpu::SurfaceError::Lost) => state.resize(state.size),
                    Err(wgpu::SurfaceError::OutOfMemory) => *control_flow = ControlFlow::Exit,
                    Err(e) => {}
                }

                state.first_eval = false;

                input.clear();

                frame_number += 1;
            }

            Event::RedrawEventsCleared => {
                window.request_redraw();
            }

            _ => {}
        }
    });
}