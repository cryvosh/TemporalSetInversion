#pragma once

float min(float a, float b) {
	return fmin(a,b);
}

float max(float a, float b) {
	return fmax(a,b);
}

float mod(float a, float b) {
	return fmod(a,b);
}

vec3 mod(vec3 a, vec3 b) {
	return vec3(fmod(a.x,b.x), fmod(a.y,b.y), fmod(a.z,b.z));
}

vec2 min(vec2 a, vec2 b) {
	return vec2(min(a.x,b.x), min(a.y,b.y));
}

vec2 max(vec2 a, vec2 b) {
	return vec2(max(a.x, b.x), max(a.y,b.y));
}

vec3 min(vec3 a, vec3 b) {
	return vec3(min(a.x, b.x), min(a.y, b.y), min(a.z,b.z));
}

vec3 max(vec3 a, vec3 b) {
	return vec3(max(a.x, b.x), max(a.y, b.y), max(a.z,b.z));
}

vec3 min(vec3 a, float b) {
	return min(a, vec3(b));
}

vec2 min(vec2 a, float b) {
	return min(a, vec2(b));
}

vec2 max(vec2 a, float b) {
	return max(a, vec2(b));
}

vec3 max(vec3 a, float b) {
	return max(a, vec3(b));
}

float sign(float x) {
	return x / abs(x);
}

float clamp(float x, float minVal, float maxVal) {
	return min(max(x, minVal), maxVal);
}

float smoothstep(float edge0, float edge1, float x) {
	float t = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0);
	return t * t * (3.0 - 2.0 * t);
}

float step(float edge, float x) {
	return sign(x-edge)*0.5+0.5;
}
