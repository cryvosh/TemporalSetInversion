#include <math.h>
#include <cstring>
#include "include/swizzle/setup.h"
#include "overloads.h"

// hg
float vmax(vec3 v) {
	return max(max(v.x, v.y), v.z);
}

// hg
float fBox(vec3 p, vec3 b) {
	vec3 d = abs(p) - b;
	return length(max(d, vec3(0))) + vmax(min(d, vec3(0)));
} 

// hg
float vmax(vec2 v) {
	return max(v.x, v.y);
}

// hg
float fCylinder(vec3 p) {
    float d = length(p.xz) - .5;
    d = max(d, abs(p.y) - 1.0);
    return d;
}

float domainRepeat1D(float p, float size)
{
    return mod((p) + size * .5, size) - size * .5;
}

// hg
vec2 pModPolar(vec2 p, float repetitions) {
	float angle = 2.0 * 3.1415 / repetitions;
	float a = atan(p.y, p.x) + angle/2.;
	float r = length(p);
	float c = floor(a/angle);
	a = mod(a,angle) - angle/2.;
	return vec2(cos(a), sin(a))*r;
}

vec3 rdX(vec3 p)
{
    return vec3(p.x, p.z, -p.y);
}

vec3 rdY(vec3 p)
{
    return vec3(-p.z, p.y, p.x);
}

vec3 rdZ(vec3 p)
{
    return vec3(-p.y, p.x, p.z);
}

// hg
float fCylinder(vec3 p, float r, float height) {
	float d = length(p.xz) - r;
	d = max(d, abs(p.y) - height);
	return d;
}

float smin( float a, float b, float k ) {
    float h = max(k-abs(a-b),0.0);
    return min(a, b) - h*h*0.25/k;
}

vec2 rotate(vec2 a, float theta) {
	return vec2(a.x*cos(theta) - a.y*sin(theta), a.x*sin(theta) + a.y*cos(theta));
}

float f(float x, float y, float z, float t)
{
	t = t * 0.9;
	y = y + 3;
	float zo = z;
	float yo = y;
	float xo = x;

	float theta = 3.14159265 / 4.0;

	y = domainRepeat1D(y,3);
	y = y + 0.9;

	vec3 p = vec3(x,y,z);
	
	p.xz = rotate(p.xz, -theta);

	p.z = abs(p.z);

	p.xz = rotate(p.xz, theta);

	p.xz += vec2(2.5,2.5);
	p.z += 1.11;
	
	vec3 wsPos = vec3(.0,.0,.0);
	vec4 a0 = vec4(p, 1.0);
	vec4 a1 = a0 - vec4(.0,.0,-.383,.0);
	vec4 a2 = (a1 * vec4(.5,.5,.455,1.0)) - vec4(.0,-.292,.0,.0);
	vec4 a3 = a2 - vec4(.0,-.92,7.248,.0);
	vec4 a4 = a3;
	vec4 a5 = a4 - vec4(-.01,.0,.0,.0);
	a5.z = domainRepeat1D(a5.z , 1.01);
	wsPos = (mat4(.0, -1.0, .0, .0, 1.0, .0, .0, .0, .0, .0, 1.0, .0, -1.484, -.327, .0, 1.0) * a5).xyz;
	float d5 = fCylinder(wsPos, .45,.836);
	wsPos = (mat4(.0, .0, 1.0, .0, 1.0, .0, .0, .0, .0, 1.0, .0, .0, -1.47, .0, .554, 1.0) * a4).xyz;
	float d4 = min(d5,fCylinder(wsPos, .5,20.0));
	wsPos = a3.xyz - vec3(-.752,1.912,-7.33);
	float d3 = max(-d4,fBox(wsPos,vec3(.813,.475,12.104)));
	vec4 a6 = (a2 * vec4(1.0,1.0,.99,1.0)) - vec4(.0,-.339,.681,.0);
	a6.z = domainRepeat1D(a6.z , 1.0);
	wsPos = a6.xyz - vec3(.0,.566,.0);
	float d6 = fCylinder(wsPos, .08,.303);
	wsPos = a6.xyz - vec3(.0,.863,.0);
	d6 = min(d6,fBox(wsPos,vec3(.103,.038,.103)));
	wsPos = a6.xyz - vec3(-1.107,.863,.0);
	d6 = min(d6,fBox(wsPos,vec3(.103,.038,.103)));
	wsPos = a6.xyz - vec3(.0,1.922,.0);
	d6 = min(d6,fCylinder(wsPos, .08,.128));
	float d2 = min(d3,d6);
	vec4 a7 = (mat4(.0, -1.091, .0, .0, 1.091, .0, .0, .0, .0, .0, 1.091, .0, -.655, .0, -7.908, 1.0) * a2);
	float d7 = dot(a7.xyz - vec3(-.064,9.47,-25.162), vec3(1.0,.0,.0));
	vec4 a8 = a7;
	a8.z = domainRepeat1D(a8.z , 1.102);
	wsPos = a8.xyz;
	float d8 = fCylinder(wsPos, .584,9.167);
	wsPos = a8.xyz - vec3(.0,-.077,.0);
	d8 = max(-d8,fCylinder(wsPos, .625,.049));
	d7 = max(-d7,d8);
	d2 = min(d2,d7);
	wsPos = a2.xyz - vec3(-1.704,1.46,.0);
	d2 = min(d2,fBox(wsPos,vec3(1.93,.037,27.801)));
	vec4 a9 = a2 - vec4(.0,.0,-.327,.0);
	a9.z = domainRepeat1D(a9.z , 1.01);
	wsPos = (mat4(.374, .927, .0, .0, -.927, .374, .0, .0, .0, .0, 1.0, .0, 1.137, -.759, .0, 1.0) * a9).xyz;
	float d9 = fCylinder(wsPos, .01,.228);
	wsPos = ( a9.xyz * vec3(11.434,11.434,11.434)) - vec3(.054,1.248,.0);
	d9 = min(d9,length(wsPos - vec3(0,13,0)) - 0.7);
	d2 = min(d2,d9);
	float d1 = d2;
	float d0 = d1;
	d0 = min(d0, yo+1.42);
	d0 = min(d0, p.x+2.2);
	d0 = max(d0, yo-4.5);
	float timescale = 0.3;
	d0 = smin(d0, length(vec3(xo,yo,zo)-vec3(-4*cos(t*timescale), -2.5*cos(t*timescale), 4*cos(t*timescale)) - vec3(0.4,0,0.4) ) - 0.9, 1.3);
	d0 = max(d0, p.x+p.z-12);
	d0 = max(d0, xo - 4.96);
	d0 = max(d0, zo - 4.96);

	return d0;
}
