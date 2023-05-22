#include <math.h>
#include <cstring>
#include "include/swizzle/setup.h"
#include "overloads.h"


float sdCylinder( vec3 p, vec2 h )
{
  vec2 d = abs(vec2(length(p.xz),p.y)) - h;
  return min(max(d.x,d.y),0.0) + length(max(d,0.0));
}
float sdBox( vec3 p, vec3 b )
{
    vec3 d = abs(p) - b;
    return min(max(d.x,max(d.y,d.z)),0.0) + length(max(d,0.0));
}

mat3 RotMat(vec3 axis, float angle)
{
    // http://www.neilmendoza.com/glsl-rotation-about-an-arbitrary-axis/
    axis = normalize(axis);
    float s = sin(angle);
    float c = cos(angle);
    float oc = 1.0 - c;
    
    return mat3(oc*axis.x*axis.x+c,         oc*axis.x*axis.y-axis.z*s,  oc*axis.z*axis.x+axis.y*s, 
                oc*axis.x*axis.y+axis.z*s,  oc*axis.y*axis.y+c,         oc*axis.y*axis.z-axis.x*s, 
                oc*axis.z*axis.x-axis.y*s,  oc*axis.y*axis.z+axis.x*s,  oc*axis.z*axis.z+c);
}

float udRoundBox( vec3 p, vec3 b, vec3 r )
{
  return length(max(abs(p)-b,0.0))-r.x;
}

float opRepLim(  float p,  float s,  float mi,  float ma )
{
    return p-s*clamp(floor(p/s + 0.5),mi,ma);
}

float obj1(  vec3 p )
{
    vec3 q = vec3( opRepLim(p.x+0.1,0.2,-22.0,23.0), p.yz-0.1 );
	return udRoundBox( q, vec3(0.091,0.075,0.6)-0.005, vec3(0.01) );
}

float obj2(  vec3 p,  float d )
{
    vec3 q = vec3( opRepLim(p.x+0.2,0.2,-21.0,23.0), p.y-0.185, p.z - 0.3 );
	float k = mod( floor( p.x/0.2 + 0.5), 7.0 );

	float res = udRoundBox( q, vec3(0.06,0.075,0.4)-0.01, vec3(0.01,0.01,0.01) );

	return res;
}

float obj3(  vec3 p )
{
	float d1 = udRoundBox( p - vec3(0.0, 0.0,1.7), vec3(5.4,0.6,1.0), vec3(0.05) );
	float d2 = udRoundBox( p - vec3(0.0,-0.3,0.1), vec3(5.4,0.3,0.6), vec3(0.05) );
	float d3 = udRoundBox( p - vec3(0.0,-1.0,2.5), vec3(5.4,3.0,1.0), vec3(0.05) );

	float d4 = sdCylinder( vec3(abs(p.x),p.y,p.z) - vec3(5.25,-2.2,-0.35), vec2(0.1,1.85) );
    d4 -= 0.03*smoothstep(-0.7,0.7,sin(18.0*p.y)) + 0.017*p.y + 0.025;

	float d5 = udRoundBox( vec3(abs(p.x),p.y,p.z) - vec3(5.05,0.0,0.3), vec3(0.35,0.2,0.8), vec3(0.05) );
	
	return min( min( min( min( d1, d2 ), d3 ), d4 ), d5 );
}

float obj4(  vec3 p )
{
    return 3.75+p.y;
}

float obj5(  vec3 p )
{
    return min( 3.5-p.z, p.x+6.5 );
}

float obj6(  vec3 p )
{
	vec3 q = p - vec3(0.0,1.3,1.145);
	float x = abs(q.x);
	q.z += 0.15*4.0*x*(1.0-x);
	q.yz = mat2(0.9,-0.41,0.41,0.9)*q.yz;
    return 0.5*udRoundBox( q, vec3(1.0,0.7,0.0), vec3(0.01) )-0.01;
}


float obj8(  vec3 p )
{
	vec3 q = p - vec3(-0.5,-1.8,-2.0);
	
	q.xz = mat2( 0.9,0.44,-0.44,0.9)*q.xz;
	
	float y = 0.5 + 0.5*sin(8.0*q.x)*sin(8.0*q.z);
	y = 0.1*pow(y,3.0) * smoothstep( 0.1,0.4,q.y );
    float d = udRoundBox( q, vec3(1.5,0.25,0.6), vec3(0.3) );
	d += y;
	
	vec3 s = vec3( abs(q.x), q.y, abs(q.z) );
	float d2 = sdCylinder( s - vec3(1.4,-1.2,0.6), vec2(0.15,1.05) );
	return min( d, d2 );
}


float obj7(  vec3 p )
{
	vec3 q = p - vec3(0.0,-3.6,1.2);
	vec3 r = vec3( mod( q.x-0.25, 0.5 ) - 0.25, q.yz );
    return max( 0.5*udRoundBox( r, vec3(0.05,0.0,0.38), vec3(0.08) ), sdBox( q, vec3(0.75,1.0,1.0) ) );
}

float f(float x, float y, float z, float t )
{
	vec3 p = vec3(x,y,z)*1.3;

	vec3 psin = p;
	float s = (float)sin(clamp(p.x + t*2.5 - 3 - 3.1415, 0.0, 3.1415926));
	psin.y -= s*s;

    vec2 res = vec2( obj1( psin ), 0.0 );
	float d = res.x;

    vec2 ob2 = vec2( obj2( psin, res.x ), 1.0 );
	d = min(d, ob2.x);

    vec2 ob3 = vec2( obj3( p * vec3(1,0.95,1) ), 2.0 );
	d = min(d, ob3.x);

	vec2 ob4 = vec2( obj4( p ), 3.0 );
	d = min(d, ob4.x);

	vec2 ob5 = vec2( obj5( p ), 3.0 );

    vec2 ob6 = vec2( obj6( p ), 5.0 );
	d = min(d, ob6.x);

    vec2 ob7 = vec2( obj7( p ), 6.0 );
	d = min(d, ob7.x);

    vec2 ob8 = vec2( obj8( p ), 7.0 );
	d = min(d, ob8.x);

	d = max(d, -z-3.2);
	d = max(d, z-3.4);
	d = max(d, -y-3.3);
	d = max(d, x-z-5);
	d = max(d, -x-z-5);
	d = max(d, -x-4.8);
	d = max(d, x-4.8);

	return d;
}