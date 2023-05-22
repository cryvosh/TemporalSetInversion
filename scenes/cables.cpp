#include <math.h>
#include <cstring>
#include "include/swizzle/setup.h"
#include "overloads.h"

float mysmoothstep(float a, float b, float t) {
    return a + (b-a) * smoothstep(0.0, 1.0, clamp(t, 0.0, 1.0));
}

mat2 rotate2D(float rad)
{
    float c = cos(rad);
    float s = sin(rad);
    return mat2(c, s, -s, c);
}

float smax( float a, float b, float k )
{
    a = -a;
    b = -b;
    float h = max( k-abs(a-b), 0.0 )/k;
    return -(min( a, b ) - h*h*k*(1.0/4.0));
}

float f(float x, float y, float z, float iTime)
{
    const float PI = 3.1415926;
    const float TAU = PI * 2.0;
    const float E = 0.01;

    iTime = iTime * 0.8;

	vec3 p = vec3(x,y,-z)*0.9;
    float d = 100.0;
    float a = 0.0;
    p.yz *= rotate2D(PI / 5.0);
    p.y -= 0.5;
    vec3 reaction = vec3(cos(iTime), 0.0, sin(iTime)) * 3.0;
    float val = length(reaction - p);
    vec3 po = p;
    float c = 2.0;
    float test = min(val,c)-c;
    p += vec3(0.1);
    float s = 0.2;
    p += max(exp(-val)-0.17,0.0) * 1.0 * normalize(reaction - p);
    float r = atan(p.z, p.x) * 3.0;
    const int ite = 15;

	#pragma clang loop unroll_count(20)
    for (int i = 0; i < ite; i++)
    {
        r += 0.5 / float(ite) * TAU;
        float s = 0.5 + sin(float(i) * 1.618 * TAU) * 0.25;
        vec2 q = vec2(length(p.xz) + cos(r) * s - 3.0, p.y + sin(r) * s);
        float dd = length(q) - 0.071;
    	d = min(d, dd);
    }

    float dd = (length(po - reaction) - 0.52)*6.0;
    d = min(d, dd);
	d = d/8;

    return d;
}