# Temporal Set Inversion for Animated Implicits

Project page with paper pdf and supplemental video can be found [here](https://www.cryvosh.com/TemporalSetInversion/).

Note that this is all research-quality code. The interesting bits are contained entirely within `/src/compute.wgsl`.

### Setup instructions
1. Download and install [Rust](https://www.rust-lang.org/tools/install)
2. Clone this repository
3. Run `cargo run --release -- --Awarnings` in the root directory

### Controls
1. Press `r` to hot-reload `/src/compute.wgsl`
2. Camera controls are `w`, `a`, `s`, `d` + mouse to look
3. Scroll up or down to change movement speed
4. If the camera controls feel wrong, disable the scene-dependant view matrix modifications in `fn rt_main` in `/src/compute.wgsl`

### Shader Parameters
1. `Ctrl+f` for "PARAMETERS" in `/src/compute.wgsl`, here you will find the following:
2. `localsubdiv` controls the octree resolution, e.g., 8 -> (2^8, or 256)^3 and 10 -> (2^10, or 1024)^3
3. `delta` controls the temporal error tolerance, e.g., 0.01 (depends on the Lipschitz bounds of `f`)
4. `pointsample` enables world-space point-sampling within indeterminate leaves
5. `fastenabled` enables the fast-evaluation optimization
6. `lipschitz_corrected` enables Lipschitz-correction on delta
7. `swept_volume` enables swept-volume rendering
8. `normalvis` sets the surface color to the world-space normals
9. `cinematic` enables naive pathtracing with `totalsamples` samples per pixel
10. `fast_normals` enables per-pixel normals via finite-difference
11. `scene` selects which scene's normals (if `fast_normals` is true) / lighting / camera settings to use

### Other parameters
1. To enable fullscreen, set `shouldbefullscreen` in `/src/main.rs` to true
2. To save frames to disk, set `save_frames_to_disk` in `/src/main.rs` to true
3. To save timing data to disk, set `save_timing_to_disk` in `/src/main.rs` to true

### To switch scenes
1. Make `file_contents` in `/src/IR.rs` read from `scenes/something_else.ll`
2. Set `scene` in `/src/compute.wgsl` according to the comment next to it

### To add a new scene
1. Create new file `/scenes/example.cpp` and paste in your GLSL code
2. The field function must be named `f`, mapping 4 floats `x,y,z,t` to a single float
3. Paste this at the top of `/scenes/example.cpp`
	```
	#include <math.h>
	#include <cstring>
	#include "include/swizzle/setup.h"
	#include "overloads.h"
	```
4. Install [Clang](https://clang.llvm.org/get_started.html) and run `./compile.sh example` to generate `example.ll`
5. Fiddle with the code until `example.ll` contains no branches or casts in the field function
6. In `/src/IR.rs` point the constructor's file contents to `scenes/example.ll`
7. Set `scene` in `/src/compute.wgsl` to some new value
8. Make sure `fast_normals` in `/src/compute.wgsl` is set to false to get per-voxel normals. If you want per-pixel normals, keep reading

### To enable fast per-pixel normals on the new scene
1. Paste your GLSL code into a temp file called `example.frag`
2. Paste this at the top of `example.frag`

	```
	layout(location = 0) out vec4 color;
	void main() {
		color = vec4(0.0);
	}
	```
3. Run `naga example.frag example.wgsl` in the CLI
4. Paste the contents of `example.wgsl` at the top of `/src/compute.wgsl`, ignoring the `FragmentOutput` and `color` lines (top of the file) as well as `fn main()` (bottom of file)
5. Rename `fn f` to something else, e.g., `fn example`
6. Add a new case to `fn finite_diff_normal` in `/src/compute.wgsl` to call `fn example` if `scene` is set appropriately
7. Make sure `scene` in `/src/compute.wgsl` is set to your new value
8. Set `fastenabled` in `/src/compute.wgsl` to true so that `fn finite_diff_normals` is used

I've tested this code on Windows 10, Vulkan backend, with an RTX 3080 / i7 3930k. It should in theory work on other operating systems / GPUs and even the web thanks to wgpu. If you need help setting it up, please open an issue.