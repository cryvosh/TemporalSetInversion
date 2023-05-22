#include <math.h>
#include <cstring>
#include "include/swizzle/setup.h"
#include "overloads.h"

const int MAT_BASE=1;
const int MAT_BARS=2;
const int MAT_BALL=3;
const int MAT_LINE=4;

mat2 Rot(float a) {
    float s=sin(a), c=cos(a);
    return mat2(c, -s, s, c);
}

float sdBox(vec3 p, vec3 s) {
    p = abs(p)-s;
	return length(max(p, 0.))+min(max(p.x, max(p.y, p.z)), 0.);
}

float sdBox(vec2 p, vec2 s) {
    p = abs(p)-s;
	return length(max(p, 0.))+min(max(p.x, p.y), 0.);
}

float sdLineSeg(vec3 p, vec3 a, vec3 b) {
    vec3 ap=p-a, ab=b-a;
    float t = clamp(dot(ap, ab)/dot(ab, ab), 0., 1.);
    vec3 c = a + ab*t;
    return length(p-c);
}

float sdBall(vec3 p, float a) {
    
    p.y-=1.01;
    p.xy *= Rot(a);
    p.y+=1.01;
    
    float ball = length(p)-.15;
    float ring = length(vec2(length(p.xy-vec2(0, .15))-.03, p.z))-.01;
    ball = min(ball, ring);
    
    p.z = abs(p.z);
    float line = sdLineSeg(p, vec3(0,.15,0), vec3(0, 1.01, .4))-.005;
    
    float d = min(ball, line);
	return d;
}

float f(float x, float y, float z, float iTime) {
    iTime = iTime + 1.5;
	vec3 p = vec3(x,y+3,z)/3.02;
    float base = sdBox(p, vec3(1,.1,.5))-.1;
    float bar = length( vec2(sdBox(p.xy, vec2(.8,1.4))-.15, abs(p.z)-.4) )-.04;
    
    base += sin(p.x*10.)*.001;
    
    float 
        a = sin(iTime*3.),
        a0 = a*.03,
        a1 = min(0., a),
        a5 = max(0., a);
    
    float 
        b1 = sdBall(p-vec3(.6,.5,0), a0+a1),
        b2 = sdBall(p-vec3(.3,.5,0), a0+(a+a1)*.05),
        b3 = sdBall(p-vec3(0,.5,0), a0+a*.05),
        b4 = sdBall(p-vec3(-.3,.5,0), a0+(a+a5)*.05),
        b5 = sdBall(p-vec3(-.6,.5,0), a0+a5);
    
    float balls = min(b1, min(b2, min(b3, min(b4, b5))));
    
    float d = min(base, bar);
    d = min(d, balls);
    
    d = max(d, -p.y); // cut off the bottom
    d *= 2.0;
    return d;
}

// https://www.shadertoy.com/view/sdsXWr