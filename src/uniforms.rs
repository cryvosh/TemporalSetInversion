use std::vec::Vec;
use crate::camera;
use wgpu::util::DeviceExt;
use std::time::{Duration, Instant};

#[repr(C)]
#[derive(Debug, Copy, Clone, bytemuck::Pod, bytemuck::Zeroable)]
pub struct Uniforms {
    view_matrix: [[f32; 4]; 4],
	resolution: [u32; 2],
	pub time: f32,
    pub lasttime: f32,
	pub rendermode: f32,
	_padding: f32,
	_padding2: f32,
	_padding3: f32,
}

impl Uniforms {
	pub fn new() -> Self {
		use cgmath::SquareMatrix;
		Self {
			view_matrix: cgmath::Matrix4::identity().into(),
			resolution: [0; 2],
			time: 0.0,
			lasttime: 0.0,
			rendermode: 0.0,
			_padding: 0.0,
			_padding2: 0.0,
			_padding3: 0.0,
		}
	}

	pub fn update_resolution(&mut self, width: u32, height: u32) {
		self.resolution = [width, height];
	}

	pub fn update_time(&mut self, time: Duration) {
		self.lasttime = self.time;
		self.time = time.as_secs_f32();
	}

	pub fn update_view(&mut self, camera: &camera::Camera) {
		self.view_matrix = camera.calc_inv_view_matrix().into();
	}
}