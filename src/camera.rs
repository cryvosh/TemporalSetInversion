// use crate::input;
use cgmath::*;
use winit::event::*;
use std::time::Duration;
use std::f32::consts::FRAC_PI_2;

pub struct Camera {
	pub position: Point3<f32>,
	up: cgmath::Vector3<f32>,
	pitch: Rad<f32>,
	yaw: Rad<f32>,
	aspect: f32,
	fovy: f32,
	znear: f32,
	zfar: f32,
}

impl Camera {
	pub fn new(position: Point3<f32>, up: Vector3<f32>, aspect: f32, fovy: f32, znear: f32, zfar: f32) -> Self {
		return Self {
			position: position,
			up: up,
			pitch: Rad(0.000001),
			yaw: Rad(0.000001),
			aspect: aspect,
			fovy: fovy,
			znear: znear,
			zfar: zfar
		}
	}
	
	// Returns camera to world matrix
	pub fn calc_inv_view_matrix(&self) -> cgmath::Matrix4<f32> {
		return self.calc_view_matrix().invert().unwrap();
	}

	/// Returns world to camera matrix
	pub fn calc_view_matrix(&self) -> cgmath::Matrix4<f32> {
		return cgmath::Matrix4::look_at_dir(
			self.position, 
			self.make_front(),
			self.up
		)
	}

	pub fn make_front(&self) -> Vector3<f32> {
		let (yaw_sin, yaw_cos) = self.yaw.0.sin_cos();
		let (pitch_sin, pitch_cos) = self.pitch.0.sin_cos();
		return Vector3{x: pitch_cos*yaw_sin, y: pitch_sin, z: pitch_cos*yaw_cos};
	}
}

pub struct CameraController {
	movement_speed: f32,
	mouse_sensitivity: f32
}

impl CameraController {
	pub fn new(movement_speed: f32, mouse_sensitivity: f32) -> Self {
		return Self {
			movement_speed: movement_speed,
			mouse_sensitivity: mouse_sensitivity
		}
	}

	pub fn update(&mut self, camera: &mut Camera, input: &crate::input::Input, dt: Duration) {
		let dt = dt.as_secs_f32();

		// Handle keyboard input
		let mut movement_forward = 0.0;
		let mut movement_right = 0.0;

		self.movement_speed *= 1.0 + input.wheel_delta*0.1;

		if input.get_key(VirtualKeyCode::W) {movement_forward += 1.0;}
		if input.get_key(VirtualKeyCode::S) {movement_forward -= 1.0;}
		if input.get_key(VirtualKeyCode::A) {movement_right += 1.0;}
		if input.get_key(VirtualKeyCode::D) {movement_right -= 1.0;}

		// Handle mouse move
		let forward = camera.make_front();
		let right = forward.cross(camera.up).normalize();

		camera.position += forward * movement_forward * self.movement_speed * dt;
		camera.position -= right * movement_right * self.movement_speed * dt;

		if input.get_key(VirtualKeyCode::Numpad8) {camera.position.y += 1.0*self.movement_speed*dt;}
		if input.get_key(VirtualKeyCode::Numpad2) {camera.position.y -= 1.0*self.movement_speed*dt;}
		if input.get_key(VirtualKeyCode::Numpad6) {camera.position.x += 1.0*self.movement_speed*dt;}
		if input.get_key(VirtualKeyCode::Numpad4) {camera.position.x -= 1.0*self.movement_speed*dt;}
		if input.get_key(VirtualKeyCode::Numpad9) {camera.position.z += 1.0*self.movement_speed*dt;}
		if input.get_key(VirtualKeyCode::Numpad7) {camera.position.z -= 1.0*self.movement_speed*dt;}

		if input.get_key(VirtualKeyCode::Numpad0) {println!("{:?}", camera.position);}

		camera.yaw -= Rad(input.get_mouse_delta_x() as f32) * self.mouse_sensitivity;
		camera.pitch -= Rad(input.get_mouse_delta_y() as f32) * self.mouse_sensitivity;

		// Enforce angle constraints
		let epsilon = 0.1;
		camera.pitch.0 = camera.pitch.0.min(FRAC_PI_2-epsilon).max(-FRAC_PI_2+epsilon);
		camera.yaw.0 %= 4.0 * FRAC_PI_2;

		if input.get_key(VirtualKeyCode::P) {
			camera.pitch = Rad(0.000001);
			camera.yaw = Rad(0.000001);
			camera.position = Point3{x:0.0,y:0.0,z:0.0};
		}
	}
}