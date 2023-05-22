use std::collections::HashSet;
use winit::event::*;
use winit::dpi::PhysicalPosition;

pub struct Input {
	keys_down: HashSet<VirtualKeyCode>, // keys that were pressed this frame
	keys_up: HashSet<VirtualKeyCode>, // keys that were released this frame
	keys: HashSet<VirtualKeyCode>, // keys that are down this frame
	mouse_delta_x: f64, // mouse delta x this frame
	mouse_delta_y: f64, // mouse delta y this frame
	pub wheel_delta: f32,
}

impl Input {
	pub fn new() -> Self {
		let keys_down = HashSet::new();
		let keys_up = HashSet::new();
		let keys = HashSet::new();
		return Self {
			keys_down,
			keys_up,
			keys,
			mouse_delta_x: 0.0,
			mouse_delta_y: 0.0,
			wheel_delta: 0.0,
		}
	}

	pub fn parse_event(&mut self, event: DeviceEvent) {
		match event {
			DeviceEvent::Key(KeyboardInput {
				virtual_keycode: Some(code),
				state,
				..
			}) => {
				match state {
					ElementState::Pressed => {
						self.keys.insert(code);
						self.keys_down.insert(code);
					}
					ElementState::Released => {
						self.keys.remove(&code);
						self.keys_up.insert(code);
					}
				}
			}

			DeviceEvent::MouseWheel { delta, .. } => {
				self.wheel_delta = match delta {
					MouseScrollDelta::LineDelta(_, scroll) => scroll,
					MouseScrollDelta::PixelDelta(PhysicalPosition {
						y: scroll,
						..
					}) => scroll as f32
				};
			}

			DeviceEvent::MouseMotion{delta} => {
				self.mouse_delta_x += delta.0;
				self.mouse_delta_y += delta.1;
			}

			_ => {}
		}
	}

	pub fn clear(&mut self) {
		self.keys_down.clear();
		self.keys_up.clear();
		self.mouse_delta_x = 0.0;
		self.mouse_delta_y = 0.0;
		self.wheel_delta = 0.0;
	}
	

    /// Returns true in the frame this key is released
	pub fn get_key_up(&self, virtual_keycode: VirtualKeyCode) -> bool {
		return self.keys_up.contains(&virtual_keycode);
	}

    /// Returns true in the frame this key is pressed
	pub fn get_key_down(&self, virtual_keycode: VirtualKeyCode) -> bool {
		return self.keys_down.contains(&virtual_keycode);
	}

	/// Returns true while this key is held down
	pub fn get_key(&self, virtual_keycode: VirtualKeyCode) -> bool {
		return self.keys.contains(&virtual_keycode);
	}

	/// Returns mouse x pixel delta in this frame
	pub fn get_mouse_delta_x(&self) -> f64 {
		return self.mouse_delta_x;
	}

	/// Returns mouse y pixel delta in this frame
	pub fn get_mouse_delta_y(&self) -> f64 {
		return self.mouse_delta_y;
	}
}
