// SHADERS

fn vmax(v: vec3<f32>) -> f32 {
    var v_1: vec3<f32>;

    v_1 = v;
    let _e3 = v_1;
    _ = _e3.x;
    let _e5 = v_1;
    _ = _e5.y;
    let _e7 = v_1;
    let _e9 = v_1;
    _ = max(_e7.x, _e9.y);
    let _e12 = v_1;
    _ = _e12.z;
    let _e14 = v_1;
    _ = _e14.x;
    let _e16 = v_1;
    _ = _e16.y;
    let _e18 = v_1;
    let _e20 = v_1;
    let _e23 = v_1;
    return max(max(_e18.x, _e20.y), _e23.z);
}

fn fBox(p: vec3<f32>, b: vec3<f32>) -> f32 {
    var p_1: vec3<f32>;
    var b_1: vec3<f32>;
    var d: vec3<f32>;

    p_1 = p;
    b_1 = b;
    _ = p_1;
    let _e6 = p_1;
    let _e8 = b_1;
    d = (abs(_e6) - _e8);
    _ = d;
    _ = vec3<f32>(f32(0));
    let _e15 = d;
    _ = max(_e15, vec3<f32>(f32(0)));
    _ = d;
    _ = vec3<f32>(f32(0));
    let _e24 = d;
    _ = d;
    _ = vec3<f32>(f32(0));
    let _e34 = d;
    _ = min(_e34, vec3<f32>(f32(0)));
    _ = d;
    _ = vec3<f32>(f32(0));
    let _e43 = d;
    let _e48 = vmax(min(_e43, vec3<f32>(f32(0))));
    return (length(max(_e24, vec3<f32>(f32(0)))) + _e48);
}

fn vmax_1(v_2: vec2<f32>) -> f32 {
    var v_3: vec2<f32>;

    v_3 = v_2;
    let _e3 = v_3;
    _ = _e3.x;
    let _e5 = v_3;
    _ = _e5.y;
    let _e7 = v_3;
    let _e9 = v_3;
    return max(_e7.x, _e9.y);
}

fn fCylinder(p_2: vec3<f32>) -> f32 {
    var p_3: vec3<f32>;
    var d_1: f32;

    p_3 = p_2;
    let _e3 = p_3;
    _ = _e3.xz;
    let _e5 = p_3;
    d_1 = (length(_e5.xz) - 0.5);
    _ = d_1;
    let _e12 = p_3;
    _ = _e12.y;
    let _e14 = p_3;
    _ = (abs(_e14.y) - 1.0);
    let _e19 = d_1;
    let _e20 = p_3;
    _ = _e20.y;
    let _e22 = p_3;
    d_1 = max(_e19, (abs(_e22.y) - 1.0));
    let _e28 = d_1;
    return _e28;
}

fn domainRepeat1D(p_4: f32, size: f32) -> f32 {
    var p_5: f32;
    var size_1: f32;

    p_5 = p_4;
    size_1 = size;
    let _e5 = p_5;
    let _e6 = size_1;
    _ = (_e5 + (_e6 * 0.5));
    _ = size_1;
    let _e11 = p_5;
    let _e12 = size_1;
    let _e15 = (_e11 + (_e12 * 0.5));
    let _e16 = size_1;
    let _e21 = size_1;
    return ((_e15 - (floor((_e15 / _e16)) * _e16)) - (_e21 * 0.5));
}

fn pModPolar(p_6: vec2<f32>, repetitions: f32) -> vec2<f32> {
    var p_7: vec2<f32>;
    var repetitions_1: f32;
    var angle: f32;
    var a: f32;
    var r: f32;
    var c: f32;

    p_7 = p_6;
    repetitions_1 = repetitions;
    let _e8 = repetitions_1;
    angle = ((2.0 * 3.1414999961853027) / _e8);
    let _e11 = p_7;
    _ = _e11.y;
    let _e13 = p_7;
    _ = _e13.x;
    let _e15 = p_7;
    let _e17 = p_7;
    let _e20 = angle;
    a = (atan2(_e15.y, _e17.x) + (_e20 / 2.0));
    _ = p_7;
    let _e26 = p_7;
    r = length(_e26);
    let _e29 = a;
    let _e30 = angle;
    _ = (_e29 / _e30);
    let _e32 = a;
    let _e33 = angle;
    c = floor((_e32 / _e33));
    _ = a;
    _ = angle;
    let _e39 = a;
    let _e40 = angle;
    let _e45 = angle;
    a = ((_e39 - (floor((_e39 / _e40)) * _e40)) - (_e45 / 2.0));
    _ = a;
    let _e50 = a;
    _ = a;
    let _e53 = a;
    let _e56 = r;
    return (vec2<f32>(cos(_e50), sin(_e53)) * _e56);
}

fn rdX(p_8: vec3<f32>) -> vec3<f32> {
    var p_9: vec3<f32>;

    p_9 = p_8;
    let _e3 = p_9;
    let _e5 = p_9;
    let _e7 = p_9;
    return vec3<f32>(_e3.x, _e5.z, -(_e7.y));
}

fn rdY(p_10: vec3<f32>) -> vec3<f32> {
    var p_11: vec3<f32>;

    p_11 = p_10;
    let _e3 = p_11;
    let _e6 = p_11;
    let _e8 = p_11;
    return vec3<f32>(-(_e3.z), _e6.y, _e8.x);
}

fn rdZ(p_12: vec3<f32>) -> vec3<f32> {
    var p_13: vec3<f32>;

    p_13 = p_12;
    let _e3 = p_13;
    let _e6 = p_13;
    let _e8 = p_13;
    return vec3<f32>(-(_e3.y), _e6.x, _e8.z);
}

fn fCylinder_1(p_14: vec3<f32>, r_1: f32, height: f32) -> f32 {
    var p_15: vec3<f32>;
    var r_2: f32;
    var height_1: f32;
    var d_2: f32;

    p_15 = p_14;
    r_2 = r_1;
    height_1 = height;
    let _e7 = p_15;
    _ = _e7.xz;
    let _e9 = p_15;
    let _e12 = r_2;
    d_2 = (length(_e9.xz) - _e12);
    _ = d_2;
    let _e16 = p_15;
    _ = _e16.y;
    let _e18 = p_15;
    let _e21 = height_1;
    _ = (abs(_e18.y) - _e21);
    let _e23 = d_2;
    let _e24 = p_15;
    _ = _e24.y;
    let _e26 = p_15;
    let _e29 = height_1;
    d_2 = max(_e23, (abs(_e26.y) - _e29));
    let _e32 = d_2;
    return _e32;
}

// CABLES F
fn rotate2D(rad: f32) -> mat2x2<f32> {
    var rad_1: f32;
    var c: f32;
    var s: f32;

    rad_1 = rad;
    _ = rad_1;
    let _e4 = rad_1;
    c = cos(_e4);
    _ = rad_1;
    let _e8 = rad_1;
    s = sin(_e8);
    let _e11 = c;
    let _e12 = s;
    let _e13 = s;
    let _e15 = c;
    return mat2x2<f32>(vec2<f32>(_e11, _e12), vec2<f32>(-(_e13), _e15));
}

fn fcables3(x: f32, y: f32, z: f32, iTime: f32) -> f32 {
    var x_1: f32;
    var y_1: f32;
    var z_1: f32;
    var iTime_1: f32;
    var PI: f32;
    var TAU: f32;
    var E: f32;
    var p: vec3<f32>;
    var d: f32;
    var a: f32;
    var reaction: vec3<f32>;
    var val: f32;
    var po: vec3<f32>;
    var c_1: f32;
    var test: f32;
    var s_1: f32;
    var r: f32;
    var ite: i32;
    var i: i32;
    var s_2: f32;
    var q: vec2<f32>;
    var dd: f32;
    var dd_1: f32;

    x_1 = x;
    y_1 = y;
    z_1 = z;
    iTime_1 = iTime;
    PI = 3.141592502593994;
    let _e11 = PI;
    TAU = (_e11 * 2.0);
    E = 0.009999999776482582;
    let _e17 = iTime_1;
    iTime_1 = (_e17 * 0.800000011920929);
    let _e20 = x_1;
    let _e21 = y_1;
    let _e22 = z_1;
    p = (vec3<f32>(_e20, _e21, -(_e22)) * 0.8999999761581421);
    d = 100.0;
    a = 0.0;
    let _e32 = p;
    _ = _e32.yz;
    let _e34 = p;
    let _e36 = PI;
    _ = (_e36 / 5.0);
    let _e39 = PI;
    let _e42 = rotate2D((_e39 / 5.0));
    let _e43 = (_e34.yz * _e42);
    p.y = _e43.x;
    p.z = _e43.y;
    let _e49 = p;
    p.y = (_e49.y - 0.5);
    _ = iTime_1;
    let _e54 = iTime_1;
    _ = iTime_1;
    let _e58 = iTime_1;
    reaction = (vec3<f32>(cos(_e54), 0.0, sin(_e58)) * 3.0);
    let _e64 = reaction;
    let _e65 = p;
    _ = (_e64 - _e65);
    let _e67 = reaction;
    let _e68 = p;
    val = length((_e67 - _e68));
    let _e72 = p;
    po = _e72;
    c_1 = 2.0;
    _ = val;
    _ = c_1;
    let _e78 = val;
    let _e79 = c_1;
    let _e81 = c_1;
    test = (min(_e78, _e79) - _e81);
    let _e84 = p;
    p = (_e84 + vec3<f32>(0.10000000149011612));
    s_1 = 0.20000000298023224;
    let _e90 = p;
    let _e91 = val;
    _ = -(_e91);
    let _e93 = val;
    _ = (exp(-(_e93)) - 0.17000000178813934);
    let _e99 = val;
    _ = -(_e99);
    let _e101 = val;
    let _e110 = reaction;
    let _e111 = p;
    _ = (_e110 - _e111);
    let _e113 = reaction;
    let _e114 = p;
    p = (_e90 + ((max((exp(-(_e101)) - 0.17000000178813934), 0.0) * 1.0) * normalize((_e113 - _e114))));
    let _e119 = p;
    _ = _e119.z;
    let _e121 = p;
    _ = _e121.x;
    let _e123 = p;
    let _e125 = p;
    r = (atan2(_e125.x,_e123.z) * 3.0);
    ite = 15;
    i = 0;
    loop {
        let _e135 = i;
        let _e136 = ite;
        if !((_e135 < _e136)) {
            break;
        }
        {
            let _e142 = r;
            let _e144 = ite;
            let _e147 = TAU;
            r = (_e142 + ((0.5 / f32(_e144)) * _e147));
            let _e151 = i;
            let _e155 = TAU;
            _ = ((f32(_e151) * 1.6180000305175781) * _e155);
            let _e157 = i;
            let _e161 = TAU;
            s_2 = (0.5 + (sin(((f32(_e157) * 1.6180000305175781) * _e161)) * 0.25));
            let _e168 = p;
            _ = _e168.xz;
            let _e170 = p;
            _ = r;
            let _e174 = r;
            let _e176 = s_2;
            let _e181 = p;
            _ = r;
            let _e184 = r;
            let _e186 = s_2;
            q = vec2<f32>(((length(_e170.xz) + (cos(_e174) * _e176)) - 3.0), (_e181.y + (sin(_e184) * _e186)));
            _ = q;
            let _e192 = q;
            dd = (length(_e192) - 0.07100000232458115);
            _ = d;
            _ = dd;
            let _e199 = d;
            let _e200 = dd;
            d = min(_e199, _e200);
        }
        continuing {
            let _e139 = i;
            i = (_e139 + 1);
        }
    }
    let _e202 = po;
    let _e203 = reaction;
    _ = (_e202 - _e203);
    let _e205 = po;
    let _e206 = reaction;
    dd_1 = ((length((_e205 - _e206)) - 0.5199999809265137) * 6.0);
    _ = d;
    _ = dd_1;
    let _e216 = d;
    let _e217 = dd_1;
    d = min(_e216, _e217);
    let _e219 = d;
    d = (_e219 / f32(8));
    let _e223 = d;
    return _e223;
}
// F TEARDROP
fn fteardrop(x: f32, y: f32, z: f32, iTime: f32) -> f32 {
    var x_1: f32;
    var y_1: f32;
    var z_1: f32;
    var iTime_1: f32;

    x_1 = x;
    y_1 = y;
    z_1 = z;
    iTime_1 = iTime;
    let _e9 = x_1;
    x_1 = (_e9 / f32(2));
    let _e13 = y_1;
    y_1 = (_e13 / f32(2));
    let _e17 = z_1;
    z_1 = (_e17 / f32(2));
    let _e22 = x_1;
    let _e24 = x_1;
    let _e26 = x_1;
    let _e28 = x_1;
    let _e30 = x_1;
    let _e33 = x_1;
    let _e35 = x_1;
    let _e37 = x_1;
    let _e39 = x_1;
    let _e42 = y_1;
    let _e43 = y_1;
    let _e46 = z_1;
    let _e47 = z_1;
    return -(((((((((0.5 * _e22) * _e24) * _e26) * _e28) * _e30) + ((((0.5 * _e33) * _e35) * _e37) * _e39)) - (_e42 * _e43)) - (_e46 * _e47)));
}

// SKY
var<private> turbidity: f32 = 1.0;
var<private> sunSize: f32 = 1.0;
var<private> SkyFactor: f32 = 1.0;
var<private> time: f32 = 0.5;
var<private> sunIntensity: f32 = 1000.0;

fn RayleighPhase(cosViewSunAngle: f32) -> f32 {
    var cosViewSunAngle_1: f32;

    cosViewSunAngle_1 = cosViewSunAngle;
    _ = cosViewSunAngle_1;
    let _e30 = cosViewSunAngle_1;
    return ((3.0 / (16.0 * 3.1415927410125732)) * (1.0 + pow(_e30, 2.0)));
}

fn totalMie(primaryWavelengths: vec3<f32>, K: vec3<f32>, T: f32) -> vec3<f32> {
    var primaryWavelengths_1: vec3<f32>;
    var K_1: vec3<f32>;
    var T_1: f32;
    var c: f32;

    primaryWavelengths_1 = primaryWavelengths;
    K_1 = K;
    T_1 = T;
    let _e28 = T_1;
    c = ((0.20000000298023224 * _e28) * 9.99999983775159e-18);
    let _e34 = c;
    let _e39 = primaryWavelengths_1;
    _ = (vec3<f32>((2.0 * 3.1415927410125732)) / _e39);
    _ = vec3<f32>((4.0 - 2.0));
    let _e47 = primaryWavelengths_1;
    let _e55 = K_1;
    return ((((0.4339999854564667 * _e34) * 3.1415927410125732) * pow((vec3<f32>((2.0 * 3.1415927410125732)) / _e47), vec3<f32>((4.0 - 2.0)))) * _e55);
}

fn hgPhase(cosViewSunAngle_2: f32, g: f32) -> f32 {
    var cosViewSunAngle_3: f32;
    var g_1: f32;

    cosViewSunAngle_3 = cosViewSunAngle_2;
    g_1 = g;
    _ = g_1;
    let _e32 = g_1;
    let _e38 = g_1;
    let _e40 = cosViewSunAngle_3;
    _ = g_1;
    let _e45 = g_1;
    _ = ((1.0 - ((2.0 * _e38) * _e40)) + pow(_e45, 2.0));
    let _e52 = g_1;
    let _e54 = cosViewSunAngle_3;
    _ = g_1;
    let _e59 = g_1;
    return ((1.0 / (4.0 * 3.1415927410125732)) * ((1.0 - pow(_e32, 2.0)) / pow(((1.0 - ((2.0 * _e52) * _e54)) + pow(_e59, 2.0)), 1.5)));
}

fn SunIntensity(zenithAngleCos: f32) -> f32 {
    var zenithAngleCos_1: f32;

    zenithAngleCos_1 = zenithAngleCos;
    let _e23 = sunIntensity;
    _ = zenithAngleCos_1;
    let _e27 = zenithAngleCos_1;
    _ = -(((1.6110731611233942 - acos(_e27)) / 1.5));
    _ = zenithAngleCos_1;
    let _e33 = zenithAngleCos_1;
    _ = (1.0 - exp(-(((1.6110731611233942 - acos(_e33)) / 1.5))));
    _ = zenithAngleCos_1;
    let _e43 = zenithAngleCos_1;
    _ = -(((1.6110731611233942 - acos(_e43)) / 1.5));
    _ = zenithAngleCos_1;
    let _e49 = zenithAngleCos_1;
    return (_e23 * max(0.0, (1.0 - exp(-(((1.6110731611233942 - acos(_e49)) / 1.5))))));
}

fn fromSpherical(p: vec2<f32>) -> vec3<f32> {
    var p_1: vec2<f32>;

    p_1 = p;
    let _e23 = p_1;
    _ = _e23.x;
    let _e25 = p_1;
    let _e28 = p_1;
    _ = _e28.y;
    let _e30 = p_1;
    let _e34 = p_1;
    _ = _e34.x;
    let _e36 = p_1;
    let _e39 = p_1;
    _ = _e39.y;
    let _e41 = p_1;
    let _e45 = p_1;
    _ = _e45.y;
    let _e47 = p_1;
    return vec3<f32>((cos(_e25.x) * sin(_e30.y)), (sin(_e36.x) * sin(_e41.y)), cos(_e47.y));
}

// https://github.com/Syntopia/Fragmentarium/blob/master/Fragmentarium-Source/Examples/Include/Sunsky.frag
fn sunsky(viewDir: vec3<f32>, SunPos: vec2<f32>) -> vec3<f32> {
    var viewDir_1: vec3<f32>;
    var sunAngularDiameterCos: f32;
    var sunDirection: vec3<f32>;
    var cosViewSunAngle_4: f32;
    var cosSunUpAngle: f32;
    var cosUpViewAngle: f32;
    var sunE: f32;
    var rayleighAtX: vec3<f32>;
    var mieAtX: vec3<f32>;
    var zenithAngle: f32;
    var rayleighOpticalLength: f32;
    var mieOpticalLength: f32;
    var Fex: vec3<f32>;
    var rayleighXtoEye: vec3<f32>;
    var mieXtoEye: vec3<f32>;
    var totalLightAtX: vec3<f32>;
    var lightFromXtoEye: vec3<f32>;
    var somethingElse: vec3<f32>;
    var sky: vec3<f32>;
    var sundisk: f32;
    var sun: vec3<f32>;

    viewDir_1 = viewDir;
    let _e23 = sunSize;
    _ = ((_e23 * 3.1415927410125732) / 180.0);
    let _e27 = sunSize;
    sunAngularDiameterCos = cos(((_e27 * 3.1415927410125732) / 180.0));
    let _e33 = SunPos;
    _ = ((_e33 - vec2<f32>(0.0, 0.5)) * vec2<f32>(6.28000020980835, 3.140000104904175));
    let _e42 = SunPos;
    let _e51 = fromSpherical(((_e42 - vec2<f32>(0.0, 0.5)) * vec2<f32>(6.28000020980835, 3.140000104904175)));
    let _e52 = SunPos;
    _ = ((_e52 - vec2<f32>(0.0, 0.5)) * vec2<f32>(6.28000020980835, 3.140000104904175));
    let _e61 = SunPos;
    let _e70 = fromSpherical(((_e61 - vec2<f32>(0.0, 0.5)) * vec2<f32>(6.28000020980835, 3.140000104904175)));
    sunDirection = normalize(_e70);
    _ = viewDir_1;
    _ = sunDirection;
    let _e75 = viewDir_1;
    let _e76 = sunDirection;
    cosViewSunAngle_4 = dot(_e75, _e76);
    _ = sunDirection;
    let _e80 = sunDirection;
    cosSunUpAngle = dot(_e80, vec3<f32>(0.0, 0.0, 1.0));
    _ = viewDir_1;
    let _e84 = viewDir_1;
    cosUpViewAngle = dot(vec3<f32>(0.0, 0.0, 1.0), _e84);
    let _e87 = sunAngularDiameterCos;
    if (_e87 == 1.0) {
        {
            return vec3<f32>(1.0, 0.0, 0.0);
        }
    }
    _ = cosSunUpAngle;
    let _e95 = cosSunUpAngle;
    let _e96 = SunIntensity(_e95);
    sunE = _e96;
    rayleighAtX = vec3<f32>(5.176821105123963e-6, 1.2785348189936485e-5, 2.8530756026157178e-5);
    _ = turbidity;
    let _e104 = turbidity;
    let _e105 = totalMie(vec3<f32>(6.800000278417428e-7, 5.499999815583578e-7, 4.4999998749517545e-7), vec3<f32>(0.6859999895095825, 0.6779999732971191, 0.6660000085830688), _e104);
    mieAtX = (_e105 * 0.004999999888241291);
    _ = cosUpViewAngle;
    let _e111 = cosUpViewAngle;
    zenithAngle = max(0.0, _e111);
    let _e114 = zenithAngle;
    rayleighOpticalLength = (8400.0 / _e114);
    let _e117 = zenithAngle;
    mieOpticalLength = (1250.0 / _e117);
    let _e120 = rayleighAtX;
    let _e121 = rayleighOpticalLength;
    let _e123 = mieAtX;
    let _e124 = mieOpticalLength;
    _ = -(((_e120 * _e121) + (_e123 * _e124)));
    let _e128 = rayleighAtX;
    let _e129 = rayleighOpticalLength;
    let _e131 = mieAtX;
    let _e132 = mieOpticalLength;
    Fex = exp(-(((_e128 * _e129) + (_e131 * _e132))));
    let _e138 = rayleighAtX;
    _ = cosViewSunAngle_4;
    let _e140 = cosViewSunAngle_4;
    let _e141 = RayleighPhase(_e140);
    rayleighXtoEye = (_e138 * _e141);
    let _e144 = mieAtX;
    _ = cosViewSunAngle_4;
    let _e146 = cosViewSunAngle_4;
    let _e147 = hgPhase(_e146, 0.800000011920929);
    mieXtoEye = (_e144 * _e147);
    let _e150 = rayleighAtX;
    let _e151 = mieAtX;
    totalLightAtX = (_e150 + _e151);
    let _e154 = rayleighXtoEye;
    let _e155 = mieXtoEye;
    lightFromXtoEye = (_e154 + _e155);
    let _e158 = sunE;
    let _e159 = lightFromXtoEye;
    let _e160 = totalLightAtX;
    somethingElse = (_e158 * (_e159 / _e160));
    let _e164 = somethingElse;
    let _e166 = Fex;
    sky = (_e164 * (vec3<f32>(1.0) - _e166));
    let _e171 = sky;
    _ = vec3<f32>(1.0);
    let _e174 = somethingElse;
    let _e175 = Fex;
    _ = (_e174 * _e175);
    _ = vec3<f32>(0.5);
    let _e179 = somethingElse;
    let _e180 = Fex;
    _ = pow((_e179 * _e180), vec3<f32>(0.5));
    _ = sunDirection;
    let _e187 = sunDirection;
    _ = (1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e187));
    _ = sunDirection;
    let _e193 = sunDirection;
    _ = pow((1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e193)), 5.0);
    _ = sunDirection;
    let _e202 = sunDirection;
    _ = (1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e202));
    _ = sunDirection;
    let _e208 = sunDirection;
    _ = clamp(pow((1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e208)), 5.0), 0.0, 1.0);
    let _e218 = somethingElse;
    let _e219 = Fex;
    _ = (_e218 * _e219);
    _ = vec3<f32>(0.5);
    let _e223 = somethingElse;
    let _e224 = Fex;
    _ = sunDirection;
    let _e231 = sunDirection;
    _ = (1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e231));
    _ = sunDirection;
    let _e237 = sunDirection;
    _ = pow((1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e237)), 5.0);
    _ = sunDirection;
    let _e246 = sunDirection;
    _ = (1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e246));
    _ = sunDirection;
    let _e252 = sunDirection;
    sky = (_e171 * mix(vec3<f32>(1.0), pow((_e223 * _e224), vec3<f32>(0.5)), vec3<f32>(clamp(pow((1.0 - dot(vec3<f32>(0.0, 0.0, 1.0), _e252)), 5.0), 0.0, 1.0))));
    _ = sunAngularDiameterCos;
    let _e264 = sunAngularDiameterCos;
    _ = (_e264 + 1.9999999494757503e-5);
    _ = cosViewSunAngle_4;
    let _e268 = sunAngularDiameterCos;
    let _e269 = sunAngularDiameterCos;
    let _e272 = cosViewSunAngle_4;
    sundisk = smoothstep(_e268, (_e269 + 1.9999999494757503e-5), _e272);
    let _e275 = sunE;
    let _e278 = Fex;
    let _e280 = sundisk;
    sun = (((_e275 * 19000.0) * _e278) * _e280);
    let _e284 = sun;
    let _e285 = sky;
    return (0.009999999776482582 * (_e285));
}

fn smin(a_25: f32, b_26: f32, k: f32) -> f32 {
    var a_26: f32;
    var b_27: f32;
    var k_1: f32;
    var h: f32;

    a_26 = a_25;
    b_27 = b_26;
    k_1 = k;
    let _e7 = k_1;
    let _e8 = a_26;
    let _e9 = b_27;
    _ = (_e8 - _e9);
    let _e11 = a_26;
    let _e12 = b_27;
    _ = (_e7 - abs((_e11 - _e12)));
    let _e17 = k_1;
    let _e18 = a_26;
    let _e19 = b_27;
    _ = (_e18 - _e19);
    let _e21 = a_26;
    let _e22 = b_27;
    let _e27 = max((_e17 - abs((_e21 - _e22))), 0.0);
    h = _e27;
    _ = a_26;
    _ = b_27;
    let _e31 = a_26;
    let _e32 = b_27;
    let _e33 = min(_e31, _e32);
    let _e34 = h;
    let _e35 = h;
    let _e39 = k_1;
    return (_e33 - (((_e34 * _e35) * 0.25) / _e39));
}

fn rotate(a_27: vec2<f32>, theta: f32) -> vec2<f32> {
    var a_28: vec2<f32>;
    var theta_1: f32;

    a_28 = a_27;
    theta_1 = theta;
    let _e5 = a_28;
    _ = theta_1;
    let _e8 = theta_1;
    let _e11 = a_28;
    _ = theta_1;
    let _e14 = theta_1;
    let _e18 = a_28;
    _ = theta_1;
    let _e21 = theta_1;
    let _e24 = a_28;
    _ = theta_1;
    let _e27 = theta_1;
    return vec2<f32>(((_e5.x * cos(_e8)) - (_e11.y * sin(_e14))), ((_e18.x * sin(_e21)) + (_e24.y * cos(_e27))));
}

fn fsponza5(x_8: f32, y: f32, z: f32, t_1: f32) -> f32 {
    var x_9: f32;
    var y_1: f32;
    var z_1: f32;
    var t_2: f32;
    var zo: f32;
    var yo: f32;
    var xo: f32;
    var theta_2: f32;
    var p_16: vec3<f32>;
    var wsPos: vec3<f32>;
    var a0_: vec4<f32>;
    var a1_: vec4<f32>;
    var a2_: vec4<f32>;
    var a3_: vec4<f32>;
    var a4_: vec4<f32>;
    var a5_: vec4<f32>;
    var d5_: f32;
    var d4_: f32;
    var d3_: f32;
    var a6_: vec4<f32>;
    var d6_: f32;
    var d2_: f32;
    var a7_: vec4<f32>;
    var d7_: f32;
    var a8_: vec4<f32>;
    var d8_: f32;
    var a9_: vec4<f32>;
    var d9_: f32;
    var d1_: f32;
    var d0_: f32;
    var timescale: f32;

    x_9 = x_8;
    y_1 = y;
    z_1 = z;
    t_2 = t_1;
    let _e9 = t_2;
    t_2 = (_e9 * 0.8999999761581421);
    let _e12 = y_1;
    y_1 = (_e12 + f32(3));
    let _e16 = z_1;
    zo = _e16;
    let _e18 = y_1;
    yo = _e18;
    let _e20 = x_9;
    xo = _e20;
    theta_2 = (3.1415927410125732 / 4.0);
    _ = y_1;
    let _e28 = y_1;
    let _e31 = domainRepeat1D(_e28, f32(3));
    y_1 = _e31;
    let _e32 = y_1;
    y_1 = (_e32 + 0.8999999761581421);
    let _e35 = x_9;
    let _e36 = y_1;
    let _e37 = z_1;
    p_16 = vec3<f32>(_e35, _e36, _e37);
    let _e40 = p_16;
    _ = _e40.xz;
    let _e42 = p_16;
    _ = _e42.xz;
    let _e44 = theta_2;
    _ = -(_e44);
    let _e46 = p_16;
    let _e48 = theta_2;
    let _e50 = rotate(_e46.xz, -(_e48));
    p_16.x = _e50.x;
    p_16.z = _e50.y;
    let _e56 = p_16;
    _ = _e56.z;
    let _e58 = p_16;
    p_16.z = abs(_e58.z);
    let _e61 = p_16;
    _ = _e61.xz;
    let _e63 = p_16;
    _ = _e63.xz;
    _ = theta_2;
    let _e66 = p_16;
    let _e68 = theta_2;
    let _e69 = rotate(_e66.xz, _e68);
    p_16.x = _e69.x;
    p_16.z = _e69.y;
    let _e74 = p_16;
    _ = _e74.xz;
    let _e76 = p_16;
    let _e81 = (_e76.xz + vec2<f32>(2.5, 2.5));
    p_16.x = _e81.x;
    p_16.z = _e81.y;
    let _e87 = p_16;
    p_16.z = (_e87.z + 1.1100000143051147);
    wsPos = vec3<f32>(0.0, 0.0, 0.0);
    let _e96 = p_16;
    a0_ = vec4<f32>(_e96.x, _e96.y, _e96.z, 1.0);
    let _e103 = a0_;
    a1_ = (_e103 - vec4<f32>(0.0, 0.0, -(0.382999986410141), 0.0));
    let _e112 = a1_;
    a2_ = ((_e112 * vec4<f32>(0.5, 0.5, 0.45500001311302185, 1.0)) - vec4<f32>(0.0, -(0.2919999957084656), 0.0, 0.0));
    let _e127 = a2_;
    a3_ = (_e127 - vec4<f32>(0.0, -(0.9200000166893005), 7.248000144958496, 0.0));
    let _e136 = a3_;
    a4_ = _e136;
    let _e138 = a4_;
    a5_ = (_e138 - vec4<f32>(-(0.009999999776482582), 0.0, 0.0, 0.0));
    let _e148 = a5_;
    _ = _e148.z;
    let _e151 = a5_;
    let _e154 = domainRepeat1D(_e151.z, 1.0099999904632568);
    a5_.z = _e154;
    let _e179 = a5_;
    wsPos = (mat4x4<f32>(vec4<f32>(0.0, -(1.0), 0.0, 0.0), vec4<f32>(1.0, 0.0, 0.0, 0.0), vec4<f32>(0.0, 0.0, 1.0, 0.0), vec4<f32>(-(1.4839999675750732), -(0.3269999921321869), 0.0, 1.0)) * _e179).xyz;
    _ = wsPos;
    let _e185 = wsPos;
    let _e188 = fCylinder_1(_e185, 0.44999998807907104, 0.8360000252723694);
    d5_ = _e188;
    let _e212 = a4_;
    wsPos = (mat4x4<f32>(vec4<f32>(0.0, 0.0, 1.0, 0.0), vec4<f32>(1.0, 0.0, 0.0, 0.0), vec4<f32>(0.0, 1.0, 0.0, 0.0), vec4<f32>(-(1.4700000286102295), 0.0, 0.5540000200271606, 1.0)) * _e212).xyz;
    _ = d5_;
    _ = wsPos;
    let _e219 = wsPos;
    let _e222 = fCylinder_1(_e219, 0.5, 20.0);
    let _e223 = d5_;
    _ = wsPos;
    let _e227 = wsPos;
    let _e230 = fCylinder_1(_e227, 0.5, 20.0);
    let _e231 = min(_e223, _e230);
    d4_ = _e231;
    let _e233 = a3_;
    wsPos = (_e233.xyz - vec3<f32>(-(0.7519999742507935), 1.9119999408721924, -(7.329999923706055)));
    let _e242 = d4_;
    _ = -(_e242);
    _ = wsPos;
    _ = vec3<f32>(0.8130000233650208, 0.4749999940395355, 12.104000091552734);
    let _e249 = wsPos;
    let _e254 = fBox(_e249, vec3<f32>(0.8130000233650208, 0.4749999940395355, 12.104000091552734));
    let _e255 = d4_;
    _ = wsPos;
    _ = vec3<f32>(0.8130000233650208, 0.4749999940395355, 12.104000091552734);
    let _e262 = wsPos;
    let _e267 = fBox(_e262, vec3<f32>(0.8130000233650208, 0.4749999940395355, 12.104000091552734));
    let _e268 = max(-(_e255), _e267);
    d3_ = _e268;
    let _e270 = a2_;
    a6_ = ((_e270 * vec4<f32>(1.0, 1.0, 0.9900000095367432, 1.0)) - vec4<f32>(0.0, -(0.33899998664855957), 0.6809999942779541, 0.0));
    let _e286 = a6_;
    _ = _e286.z;
    let _e289 = a6_;
    let _e292 = domainRepeat1D(_e289.z, 1.0);
    a6_.z = _e292;
    let _e293 = a6_;
    wsPos = (_e293.xyz - vec3<f32>(0.0, 0.5659999847412109, 0.0));
    _ = wsPos;
    let _e303 = wsPos;
    let _e306 = fCylinder_1(_e303, 0.07999999821186066, 0.30300000309944153);
    d6_ = _e306;
    let _e308 = a6_;
    wsPos = (_e308.xyz - vec3<f32>(0.0, 0.8629999756813049, 0.0));
    _ = d6_;
    _ = wsPos;
    _ = vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929);
    let _e321 = wsPos;
    let _e326 = fBox(_e321, vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929));
    let _e327 = d6_;
    _ = wsPos;
    _ = vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929);
    let _e333 = wsPos;
    let _e338 = fBox(_e333, vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929));
    let _e339 = min(_e327, _e338);
    d6_ = _e339;
    let _e340 = a6_;
    wsPos = (_e340.xyz - vec3<f32>(-(1.1069999933242798), 0.8629999756813049, 0.0));
    _ = d6_;
    _ = wsPos;
    _ = vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929);
    let _e354 = wsPos;
    let _e359 = fBox(_e354, vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929));
    let _e360 = d6_;
    _ = wsPos;
    _ = vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929);
    let _e366 = wsPos;
    let _e371 = fBox(_e366, vec3<f32>(0.10300000011920929, 0.03799999877810478, 0.10300000011920929));
    let _e372 = min(_e360, _e371);
    d6_ = _e372;
    let _e373 = a6_;
    wsPos = (_e373.xyz - vec3<f32>(0.0, 1.9220000505447388, 0.0));
    _ = d6_;
    _ = wsPos;
    let _e384 = wsPos;
    let _e387 = fCylinder_1(_e384, 0.07999999821186066, 0.12800000607967377);
    let _e388 = d6_;
    _ = wsPos;
    let _e392 = wsPos;
    let _e395 = fCylinder_1(_e392, 0.07999999821186066, 0.12800000607967377);
    let _e396 = min(_e388, _e395);
    d6_ = _e396;
    _ = d3_;
    _ = d6_;
    let _e399 = d3_;
    let _e400 = d6_;
    let _e401 = min(_e399, _e400);
    d2_ = _e401;
    let _e427 = a2_;
    a7_ = (mat4x4<f32>(vec4<f32>(0.0, -(1.090999960899353), 0.0, 0.0), vec4<f32>(1.090999960899353, 0.0, 0.0, 0.0), vec4<f32>(0.0, 0.0, 1.090999960899353, 0.0), vec4<f32>(-(0.6549999713897705), 0.0, -(7.9079999923706055), 1.0)) * _e427);
    let _e430 = a7_;
    _ = (_e430.xyz - vec3<f32>(-(0.06400000303983688), 9.470000267028809, -(25.16200065612793)));
    _ = vec3<f32>(1.0, 0.0, 0.0);
    let _e443 = a7_;
    d7_ = dot((_e443.xyz - vec3<f32>(-(0.06400000303983688), 9.470000267028809, -(25.16200065612793))), vec3<f32>(1.0, 0.0, 0.0));
    let _e458 = a7_;
    a8_ = _e458;
    let _e461 = a8_;
    _ = _e461.z;
    let _e464 = a8_;
    let _e467 = domainRepeat1D(_e464.z, 1.1019999980926514);
    a8_.z = _e467;
    let _e468 = a8_;
    wsPos = _e468.xyz;
    _ = wsPos;
    let _e473 = wsPos;
    let _e476 = fCylinder_1(_e473, 0.5839999914169312, 9.166999816894531);
    d8_ = _e476;
    let _e478 = a8_;
    wsPos = (_e478.xyz - vec3<f32>(0.0, -(0.07699999958276749), 0.0));
    let _e486 = d8_;
    _ = -(_e486);
    _ = wsPos;
    let _e491 = wsPos;
    let _e494 = fCylinder_1(_e491, 0.625, 0.04899999871850014);
    let _e495 = d8_;
    _ = wsPos;
    let _e500 = wsPos;
    let _e503 = fCylinder_1(_e500, 0.625, 0.04899999871850014);
    let _e504 = max(-(_e495), _e503);
    d8_ = _e504;
    let _e505 = d7_;
    _ = -(_e505);
    _ = d8_;
    let _e508 = d7_;
    let _e510 = d8_;
    let _e511 = max(-(_e508), _e510);
    d7_ = _e511;
    _ = d2_;
    _ = d7_;
    let _e514 = d2_;
    let _e515 = d7_;
    let _e516 = min(_e514, _e515);
    d2_ = _e516;
    let _e517 = a2_;
    wsPos = (_e517.xyz - vec3<f32>(-(1.7039999961853027), 1.4600000381469727, 0.0));
    _ = d2_;
    _ = wsPos;
    _ = vec3<f32>(1.9299999475479126, 0.03700000047683716, 27.801000595092773);
    let _e531 = wsPos;
    let _e536 = fBox(_e531, vec3<f32>(1.9299999475479126, 0.03700000047683716, 27.801000595092773));
    let _e537 = d2_;
    _ = wsPos;
    _ = vec3<f32>(1.9299999475479126, 0.03700000047683716, 27.801000595092773);
    let _e543 = wsPos;
    let _e548 = fBox(_e543, vec3<f32>(1.9299999475479126, 0.03700000047683716, 27.801000595092773));
    let _e549 = min(_e537, _e548);
    d2_ = _e549;
    let _e550 = a2_;
    a9_ = (_e550 - vec4<f32>(0.0, 0.0, -(0.3269999921321869), 0.0));
    let _e560 = a9_;
    _ = _e560.z;
    let _e563 = a9_;
    let _e566 = domainRepeat1D(_e563.z, 1.0099999904632568);
    a9_.z = _e566;
    let _e590 = a9_;
    wsPos = (mat4x4<f32>(vec4<f32>(0.37400001287460327, 0.9269999861717224, 0.0, 0.0), vec4<f32>(-(0.9269999861717224), 0.37400001287460327, 0.0, 0.0), vec4<f32>(0.0, 0.0, 1.0, 0.0), vec4<f32>(1.1369999647140503, -(0.7590000033378601), 0.0, 1.0)) * _e590).xyz;
    _ = wsPos;
    let _e596 = wsPos;
    let _e599 = fCylinder_1(_e596, 0.009999999776482582, 0.2280000001192093);
    d9_ = _e599;
    let _e601 = a9_;
    wsPos = ((_e601.xyz * vec3<f32>(11.434000015258789, 11.434000015258789, 11.434000015258789)) - vec3<f32>(0.05400000140070915, 1.2480000257492065, 0.0));
    _ = d9_;
    let _e614 = wsPos;
    _ = (_e614 - vec3<f32>(f32(0), f32(13), f32(0)));
    let _e623 = wsPos;
    _ = (length((_e623 - vec3<f32>(f32(0), f32(13), f32(0)))) - 0.699999988079071);
    let _e635 = d9_;
    let _e636 = wsPos;
    _ = (_e636 - vec3<f32>(f32(0), f32(13), f32(0)));
    let _e645 = wsPos;
    let _e657 = min(_e635, (length((_e645 - vec3<f32>(f32(0), f32(13), f32(0)))) - 0.699999988079071));
    d9_ = _e657;
    _ = d2_;
    _ = d9_;
    let _e660 = d2_;
    let _e661 = d9_;
    let _e662 = min(_e660, _e661);
    d2_ = _e662;
    let _e663 = d2_;
    d1_ = _e663;
    let _e665 = d1_;
    d0_ = _e665;
    _ = d0_;
    let _e668 = yo;
    _ = (_e668 + 1.4199999570846558);
    let _e671 = d0_;
    let _e672 = yo;
    let _e675 = min(_e671, (_e672 + 1.4199999570846558));
    d0_ = _e675;
    _ = d0_;
    let _e677 = p_16;
    _ = (_e677.x + 2.200000047683716);
    let _e681 = d0_;
    let _e682 = p_16;
    let _e686 = min(_e681, (_e682.x + 2.200000047683716));
    d0_ = _e686;
    _ = d0_;
    let _e688 = yo;
    _ = (_e688 - 4.5);
    let _e691 = d0_;
    let _e692 = yo;
    let _e695 = max(_e691, (_e692 - 4.5));
    d0_ = _e695;
    timescale = 0.30000001192092896;
    _ = d0_;
    let _e699 = xo;
    let _e700 = yo;
    let _e701 = zo;
    let _e705 = t_2;
    let _e706 = timescale;
    _ = (_e705 * _e706);
    let _e708 = t_2;
    let _e709 = timescale;
    let _e716 = t_2;
    let _e717 = timescale;
    _ = (_e716 * _e717);
    let _e719 = t_2;
    let _e720 = timescale;
    let _e725 = t_2;
    let _e726 = timescale;
    _ = (_e725 * _e726);
    let _e728 = t_2;
    let _e729 = timescale;
    _ = ((vec3<f32>(_e699, _e700, _e701) - vec3<f32>((f32(-(4)) * cos((_e708 * _e709))), (-(2.5) * cos((_e719 * _e720))), (f32(4) * cos((_e728 * _e729))))) - vec3<f32>(0.4000000059604645, f32(0), 0.4000000059604645));
    let _e742 = xo;
    let _e743 = yo;
    let _e744 = zo;
    let _e748 = t_2;
    let _e749 = timescale;
    _ = (_e748 * _e749);
    let _e751 = t_2;
    let _e752 = timescale;
    let _e759 = t_2;
    let _e760 = timescale;
    _ = (_e759 * _e760);
    let _e762 = t_2;
    let _e763 = timescale;
    let _e768 = t_2;
    let _e769 = timescale;
    _ = (_e768 * _e769);
    let _e771 = t_2;
    let _e772 = timescale;
    _ = (length(((vec3<f32>(_e742, _e743, _e744) - vec3<f32>((f32(-(4)) * cos((_e751 * _e752))), (-(2.5) * cos((_e762 * _e763))), (f32(4) * cos((_e771 * _e772))))) - vec3<f32>(0.4000000059604645, f32(0), 0.4000000059604645))) - 0.8999999761581421);
    let _e789 = d0_;
    let _e790 = xo;
    let _e791 = yo;
    let _e792 = zo;
    let _e796 = t_2;
    let _e797 = timescale;
    _ = (_e796 * _e797);
    let _e799 = t_2;
    let _e800 = timescale;
    let _e807 = t_2;
    let _e808 = timescale;
    _ = (_e807 * _e808);
    let _e810 = t_2;
    let _e811 = timescale;
    let _e816 = t_2;
    let _e817 = timescale;
    _ = (_e816 * _e817);
    let _e819 = t_2;
    let _e820 = timescale;
    _ = ((vec3<f32>(_e790, _e791, _e792) - vec3<f32>((f32(-(4)) * cos((_e799 * _e800))), (-(2.5) * cos((_e810 * _e811))), (f32(4) * cos((_e819 * _e820))))) - vec3<f32>(0.4000000059604645, f32(0), 0.4000000059604645));
    let _e833 = xo;
    let _e834 = yo;
    let _e835 = zo;
    let _e839 = t_2;
    let _e840 = timescale;
    _ = (_e839 * _e840);
    let _e842 = t_2;
    let _e843 = timescale;
    let _e850 = t_2;
    let _e851 = timescale;
    _ = (_e850 * _e851);
    let _e853 = t_2;
    let _e854 = timescale;
    let _e859 = t_2;
    let _e860 = timescale;
    _ = (_e859 * _e860);
    let _e862 = t_2;
    let _e863 = timescale;
    let _e880 = smin(_e789, (length(((vec3<f32>(_e833, _e834, _e835) - vec3<f32>((f32(-(4)) * cos((_e842 * _e843))), (-(2.5) * cos((_e853 * _e854))), (f32(4) * cos((_e862 * _e863))))) - vec3<f32>(0.4000000059604645, f32(0), 0.4000000059604645))) - 0.8999999761581421), 1.2999999523162842);
    d0_ = _e880;
    _ = d0_;
    let _e882 = p_16;
    let _e884 = p_16;
    _ = ((_e882.x + _e884.z) - f32(12));
    let _e890 = d0_;
    let _e891 = p_16;
    let _e893 = p_16;
    let _e899 = max(_e890, ((_e891.x + _e893.z) - f32(12)));
    d0_ = _e899;
    _ = d0_;
    let _e901 = xo;
    _ = (_e901 - 4.960000038146973);
    let _e904 = d0_;
    let _e905 = xo;
    let _e908 = max(_e904, (_e905 - 4.960000038146973));
    d0_ = _e908;
    _ = d0_;
    let _e910 = zo;
    _ = (_e910 - 4.960000038146973);
    let _e913 = d0_;
    let _e914 = zo;
    let _e917 = max(_e913, (_e914 - 4.960000038146973));
    d0_ = _e917;
    let _e918 = d0_;
    return _e918;
}

// CRADLE

fn Rot(a_29: f32) -> mat2x2<f32> {
    var a_30: f32;
    var s: f32;
    var c_1: f32;

    a_30 = a_29;
    _ = a_30;
    let _e8 = a_30;
    s = sin(_e8);
    _ = a_30;
    let _e12 = a_30;
    c_1 = cos(_e12);
    let _e15 = c_1;
    let _e16 = s;
    let _e18 = s;
    let _e19 = c_1;
    return mat2x2<f32>(vec2<f32>(_e15, -(_e16)), vec2<f32>(_e18, _e19));
}

fn max_2(a_14: vec3<f32>, b_14: vec3<f32>) -> vec3<f32> {
    var a_15: vec3<f32>;
    var b_15: vec3<f32>;

    a_15 = a_14;
    b_15 = b_14;
    let _e5 = a_15;
    _ = _e5.x;
    let _e7 = b_15;
    _ = _e7.x;
    let _e9 = a_15;
    let _e11 = b_15;
    let _e13 = max(_e9.x, _e11.x);
    let _e14 = a_15;
    _ = _e14.y;
    let _e16 = b_15;
    _ = _e16.y;
    let _e18 = a_15;
    let _e20 = b_15;
    let _e22 = max(_e18.y, _e20.y);
    let _e23 = a_15;
    _ = _e23.z;
    let _e25 = b_15;
    _ = _e25.z;
    let _e27 = a_15;
    let _e29 = b_15;
    let _e31 = max(_e27.z, _e29.z);
    return vec3<f32>(_e13, _e22, _e31);
}

fn max_1(a_10: vec2<f32>, b_10: vec2<f32>) -> vec2<f32> {
    var a_11: vec2<f32>;
    var b_11: vec2<f32>;

    a_11 = a_10;
    b_11 = b_10;
    let _e5 = a_11;
    _ = _e5.x;
    let _e7 = b_11;
    _ = _e7.x;
    let _e9 = a_11;
    let _e11 = b_11;
    let _e13 = max(_e9.x, _e11.x);
    let _e14 = a_11;
    _ = _e14.y;
    let _e16 = b_11;
    _ = _e16.y;
    let _e18 = a_11;
    let _e20 = b_11;
    let _e22 = max(_e18.y, _e20.y);
    return vec2<f32>(_e13, _e22);
}

fn max_3(a_20: vec2<f32>, b_20: f32) -> vec2<f32> {
    var a_21: vec2<f32>;
    var b_21: f32;

    a_21 = a_20;
    b_21 = b_20;
    _ = a_21;
    let _e6 = b_21;
    _ = vec2<f32>(_e6);
    let _e8 = a_21;
    let _e9 = b_21;
    let _e11 = max_1(_e8, vec2<f32>(_e9));
    return _e11;
}

fn max_4(a_22: vec3<f32>, b_22: f32) -> vec3<f32> {
    var a_23: vec3<f32>;
    var b_23: f32;

    a_23 = a_22;
    b_23 = b_22;
    _ = a_23;
    let _e6 = b_23;
    _ = vec3<f32>(_e6);
    let _e8 = a_23;
    let _e9 = b_23;
    let _e11 = max_2(_e8, vec3<f32>(_e9));
    return _e11;
}

fn sdBox(p_16: vec3<f32>, s_1: vec3<f32>) -> f32 {
    var p_17: vec3<f32>;
    var s_2: vec3<f32>;

    p_17 = p_16;
    s_2 = s_1;
    _ = p_17;
    let _e10 = p_17;
    let _e12 = s_2;
    p_17 = (abs(_e10) - _e12);
    _ = p_17;
    let _e16 = p_17;
    let _e18 = max_4(_e16, 0.0);
    _ = p_17;
    let _e21 = p_17;
    let _e23 = max_4(_e21, 0.0);
    let _e25 = p_17;
    _ = _e25.x;
    let _e27 = p_17;
    _ = _e27.y;
    let _e29 = p_17;
    _ = _e29.z;
    let _e31 = p_17;
    let _e33 = p_17;
    let _e35 = max(_e31.y, _e33.z);
    let _e36 = p_17;
    let _e38 = p_17;
    _ = _e38.y;
    let _e40 = p_17;
    _ = _e40.z;
    let _e42 = p_17;
    let _e44 = p_17;
    let _e46 = max(_e42.y, _e44.z);
    let _e47 = max(_e36.x, _e46);
    let _e49 = p_17;
    _ = _e49.x;
    let _e51 = p_17;
    _ = _e51.y;
    let _e53 = p_17;
    _ = _e53.z;
    let _e55 = p_17;
    let _e57 = p_17;
    let _e59 = max(_e55.y, _e57.z);
    let _e60 = p_17;
    let _e62 = p_17;
    _ = _e62.y;
    let _e64 = p_17;
    _ = _e64.z;
    let _e66 = p_17;
    let _e68 = p_17;
    let _e70 = max(_e66.y, _e68.z);
    let _e71 = max(_e60.x, _e70);
    let _e73 = min(_e71, 0.0);
    return (length(_e23) + _e73);
}

fn sdBox_1(p_18: vec2<f32>, s_3: vec2<f32>) -> f32 {
    var p_19: vec2<f32>;
    var s_4: vec2<f32>;

    p_19 = p_18;
    s_4 = s_3;
    _ = p_19;
    let _e10 = p_19;
    let _e12 = s_4;
    p_19 = (abs(_e10) - _e12);
    _ = p_19;
    let _e16 = p_19;
    let _e18 = max_3(_e16, 0.0);
    _ = p_19;
    let _e21 = p_19;
    let _e23 = max_3(_e21, 0.0);
    let _e25 = p_19;
    _ = _e25.x;
    let _e27 = p_19;
    _ = _e27.y;
    let _e29 = p_19;
    let _e31 = p_19;
    let _e33 = max(_e29.x, _e31.y);
    let _e35 = p_19;
    _ = _e35.x;
    let _e37 = p_19;
    _ = _e37.y;
    let _e39 = p_19;
    let _e41 = p_19;
    let _e43 = max(_e39.x, _e41.y);
    let _e45 = min(_e43, 0.0);
    return (length(_e23) + _e45);
}

fn sdLineSeg(p_20: vec3<f32>, a_31: vec3<f32>, b_28: vec3<f32>) -> f32 {
    var p_21: vec3<f32>;
    var a_32: vec3<f32>;
    var b_29: vec3<f32>;
    var ap: vec3<f32>;
    var ab: vec3<f32>;
    var t_1: f32;
    var c_2: vec3<f32>;

    p_21 = p_20;
    a_32 = a_31;
    b_29 = b_28;
    let _e11 = p_21;
    let _e12 = a_32;
    ap = (_e11 - _e12);
    let _e15 = b_29;
    let _e16 = a_32;
    ab = (_e15 - _e16);
    _ = ap;
    _ = ab;
    let _e21 = ap;
    let _e22 = ab;
    _ = ab;
    _ = ab;
    let _e26 = ab;
    let _e27 = ab;
    _ = (dot(_e21, _e22) / dot(_e26, _e27));
    _ = ap;
    _ = ab;
    let _e34 = ap;
    let _e35 = ab;
    _ = ab;
    _ = ab;
    let _e39 = ab;
    let _e40 = ab;
    let _e45 = clamp((dot(_e34, _e35) / dot(_e39, _e40)), 0.0, 1.0);
    t_1 = _e45;
    let _e47 = a_32;
    let _e48 = ab;
    let _e49 = t_1;
    c_2 = (_e47 + (_e48 * _e49));
    let _e53 = p_21;
    let _e54 = c_2;
    _ = (_e53 - _e54);
    let _e56 = p_21;
    let _e57 = c_2;
    return length((_e56 - _e57));
}

fn sdBall(p_22: vec3<f32>, a_33: f32) -> f32 {
    var p_23: vec3<f32>;
    var a_34: f32;
    var ball: f32;
    var ring: f32;
    var line_: f32;
    var d_3: f32;

    p_23 = p_22;
    a_34 = a_33;
    let _e10 = p_23;
    p_23.y = (_e10.y - 1.0099999904632568);
    let _e14 = p_23;
    _ = _e14.xy;
    let _e16 = p_23;
    _ = a_34;
    let _e19 = a_34;
    let _e20 = Rot(_e19);
    let _e21 = (_e16.xy * _e20);
    p_23.x = _e21.x;
    p_23.y = _e21.y;
    let _e27 = p_23;
    p_23.y = (_e27.y + 1.0099999904632568);
    _ = p_23;
    let _e32 = p_23;
    ball = (length(_e32) - 0.15000000596046448);
    let _e37 = p_23;
    _ = (_e37.xy - vec2<f32>(f32(0), 0.15000000596046448));
    let _e44 = p_23;
    let _e54 = p_23;
    _ = vec2<f32>((length((_e44.xy - vec2<f32>(f32(0), 0.15000000596046448))) - 0.029999999329447746), _e54.z);
    let _e57 = p_23;
    _ = (_e57.xy - vec2<f32>(f32(0), 0.15000000596046448));
    let _e64 = p_23;
    let _e74 = p_23;
    ring = (length(vec2<f32>((length((_e64.xy - vec2<f32>(f32(0), 0.15000000596046448))) - 0.029999999329447746), _e74.z)) - 0.009999999776482582);
    _ = ball;
    _ = ring;
    let _e83 = ball;
    let _e84 = ring;
    let _e85 = min(_e83, _e84);
    ball = _e85;
    let _e87 = p_23;
    _ = _e87.z;
    let _e89 = p_23;
    p_23.z = abs(_e89.z);
    _ = p_23;
    _ = vec3<f32>(f32(0), 0.15000000596046448, f32(0));
    _ = vec3<f32>(f32(0), 1.0099999904632568, 0.4000000059604645);
    let _e104 = p_23;
    let _e116 = sdLineSeg(_e104, vec3<f32>(f32(0), 0.15000000596046448, f32(0)), vec3<f32>(f32(0), 1.0099999904632568, 0.4000000059604645));
    line_ = (_e116 - 0.004999999888241291);
    _ = ball;
    _ = line_;
    let _e122 = ball;
    let _e123 = line_;
    let _e124 = min(_e122, _e123);
    d_3 = _e124;
    let _e126 = d_3;
    return _e126;
}

fn fcradle(x_8: f32, y: f32, z: f32, iTime: f32) -> f32 {
    var x_9: f32;
    var y_1: f32;
    var z_1: f32;
    var iTime_1: f32;
    var p_24: vec3<f32>;
    var base: f32;
    var bar: f32;
    var a_35: f32;
    var a0_: f32;
    var a1_: f32;
    var a5_: f32;
    var b1_: f32;
    var b2_: f32;
    var b3_: f32;
    var b4_: f32;
    var b5_: f32;
    var balls: f32;
    var d_4: f32;

    x_9 = x_8;
    y_1 = y;
    z_1 = z;
    iTime_1 = iTime;
    let _e13 = iTime_1;
    iTime_1 = (_e13 + 1.5);
    let _e16 = x_9;
    let _e17 = y_1;
    let _e21 = z_1;
    p_24 = (vec3<f32>(_e16, (_e17 + f32(3)), _e21) / vec3<f32>(3.0199999809265137));
    _ = p_24;
    _ = vec3<f32>(f32(1), 0.10000000149011612, 0.5);
    let _e33 = p_24;
    let _e39 = sdBox(_e33, vec3<f32>(f32(1), 0.10000000149011612, 0.5));
    base = (_e39 - 0.10000000149011612);
    let _e43 = p_24;
    _ = _e43.xy;
    _ = vec2<f32>(0.800000011920929, 1.399999976158142);
    let _e48 = p_24;
    let _e53 = sdBox_1(_e48.xy, vec2<f32>(0.800000011920929, 1.399999976158142));
    let _e56 = p_24;
    _ = _e56.z;
    let _e58 = p_24;
    _ = vec2<f32>((_e53 - 0.15000000596046448), (abs(_e58.z) - 0.4000000059604645));
    let _e64 = p_24;
    _ = _e64.xy;
    _ = vec2<f32>(0.800000011920929, 1.399999976158142);
    let _e69 = p_24;
    let _e74 = sdBox_1(_e69.xy, vec2<f32>(0.800000011920929, 1.399999976158142));
    let _e77 = p_24;
    _ = _e77.z;
    let _e79 = p_24;
    bar = (length(vec2<f32>((_e74 - 0.15000000596046448), (abs(_e79.z) - 0.4000000059604645))) - 0.03999999910593033);
    let _e89 = base;
    let _e90 = p_24;
    _ = (_e90.x * 10.0);
    let _e94 = p_24;
    base = (_e89 + (sin((_e94.x * 10.0)) * 0.0010000000474974513));
    let _e102 = iTime_1;
    _ = (_e102 * 3.0);
    let _e105 = iTime_1;
    a_35 = sin((_e105 * 3.0));
    let _e110 = a_35;
    a0_ = (_e110 * 0.029999999329447746);
    _ = a_35;
    let _e117 = a_35;
    let _e118 = min(0.0, _e117);
    a1_ = _e118;
    _ = a_35;
    let _e123 = a_35;
    let _e124 = max(0.0, _e123);
    a5_ = _e124;
    let _e126 = p_24;
    _ = (_e126 - vec3<f32>(0.6000000238418579, 0.5, f32(0)));
    let _e133 = a0_;
    let _e134 = a1_;
    _ = (_e133 + _e134);
    let _e136 = p_24;
    let _e143 = a0_;
    let _e144 = a1_;
    let _e146 = sdBall((_e136 - vec3<f32>(0.6000000238418579, 0.5, f32(0))), (_e143 + _e144));
    b1_ = _e146;
    let _e148 = p_24;
    _ = (_e148 - vec3<f32>(0.30000001192092896, 0.5, f32(0)));
    let _e155 = a0_;
    let _e156 = a_35;
    let _e157 = a1_;
    _ = (_e155 + ((_e156 + _e157) * 0.05000000074505806));
    let _e162 = p_24;
    let _e169 = a0_;
    let _e170 = a_35;
    let _e171 = a1_;
    let _e176 = sdBall((_e162 - vec3<f32>(0.30000001192092896, 0.5, f32(0))), (_e169 + ((_e170 + _e171) * 0.05000000074505806)));
    b2_ = _e176;
    let _e178 = p_24;
    _ = (_e178 - vec3<f32>(f32(0), 0.5, f32(0)));
    let _e186 = a0_;
    let _e187 = a_35;
    _ = (_e186 + (_e187 * 0.05000000074505806));
    let _e191 = p_24;
    let _e199 = a0_;
    let _e200 = a_35;
    let _e204 = sdBall((_e191 - vec3<f32>(f32(0), 0.5, f32(0))), (_e199 + (_e200 * 0.05000000074505806)));
    b3_ = _e204;
    let _e206 = p_24;
    _ = (_e206 - vec3<f32>(-(0.30000001192092896), 0.5, f32(0)));
    let _e214 = a0_;
    let _e215 = a_35;
    let _e216 = a5_;
    _ = (_e214 + ((_e215 + _e216) * 0.05000000074505806));
    let _e221 = p_24;
    let _e229 = a0_;
    let _e230 = a_35;
    let _e231 = a5_;
    let _e236 = sdBall((_e221 - vec3<f32>(-(0.30000001192092896), 0.5, f32(0))), (_e229 + ((_e230 + _e231) * 0.05000000074505806)));
    b4_ = _e236;
    let _e238 = p_24;
    _ = (_e238 - vec3<f32>(-(0.6000000238418579), 0.5, f32(0)));
    let _e246 = a0_;
    let _e247 = a5_;
    _ = (_e246 + _e247);
    let _e249 = p_24;
    let _e257 = a0_;
    let _e258 = a5_;
    let _e260 = sdBall((_e249 - vec3<f32>(-(0.6000000238418579), 0.5, f32(0))), (_e257 + _e258));
    b5_ = _e260;
    _ = b1_;
    _ = b2_;
    _ = b3_;
    _ = b4_;
    _ = b5_;
    let _e267 = b4_;
    let _e268 = b5_;
    let _e269 = min(_e267, _e268);
    let _e270 = b3_;
    _ = b4_;
    _ = b5_;
    let _e273 = b4_;
    let _e274 = b5_;
    let _e275 = min(_e273, _e274);
    let _e276 = min(_e270, _e275);
    let _e277 = b2_;
    _ = b3_;
    _ = b4_;
    _ = b5_;
    let _e281 = b4_;
    let _e282 = b5_;
    let _e283 = min(_e281, _e282);
    let _e284 = b3_;
    _ = b4_;
    _ = b5_;
    let _e287 = b4_;
    let _e288 = b5_;
    let _e289 = min(_e287, _e288);
    let _e290 = min(_e284, _e289);
    let _e291 = min(_e277, _e290);
    let _e292 = b1_;
    _ = b2_;
    _ = b3_;
    _ = b4_;
    _ = b5_;
    let _e297 = b4_;
    let _e298 = b5_;
    let _e299 = min(_e297, _e298);
    let _e300 = b3_;
    _ = b4_;
    _ = b5_;
    let _e303 = b4_;
    let _e304 = b5_;
    let _e305 = min(_e303, _e304);
    let _e306 = min(_e300, _e305);
    let _e307 = b2_;
    _ = b3_;
    _ = b4_;
    _ = b5_;
    let _e311 = b4_;
    let _e312 = b5_;
    let _e313 = min(_e311, _e312);
    let _e314 = b3_;
    _ = b4_;
    _ = b5_;
    let _e317 = b4_;
    let _e318 = b5_;
    let _e319 = min(_e317, _e318);
    let _e320 = min(_e314, _e319);
    let _e321 = min(_e307, _e320);
    let _e322 = min(_e292, _e321);
    balls = _e322;
    _ = base;
    _ = bar;
    let _e326 = base;
    let _e327 = bar;
    let _e328 = min(_e326, _e327);
    d_4 = _e328;
    _ = d_4;
    _ = balls;
    let _e332 = d_4;
    let _e333 = balls;
    let _e334 = min(_e332, _e333);
    d_4 = _e334;
    _ = d_4;
    let _e336 = p_24;
    _ = -(_e336.y);
    let _e339 = d_4;
    let _e340 = p_24;
    let _e343 = max(_e339, -(_e340.y));
    d_4 = _e343;
    let _e344 = d_4;
    d_4 = (_e344 * 2.0);
    let _e347 = d_4;
    return _e347;
}

// PIANO

fn sdCylinder(p_16: vec3<f32>, h_1: vec2<f32>) -> f32 {
    var p_17: vec3<f32>;
    var h_2: vec2<f32>;
    var d_3: vec2<f32>;

    p_17 = p_16;
    h_2 = h_1;
    let _e5 = p_17;
    _ = _e5.xz;
    let _e7 = p_17;
    let _e10 = p_17;
    _ = vec2<f32>(length(_e7.xz), _e10.y);
    let _e13 = p_17;
    _ = _e13.xz;
    let _e15 = p_17;
    let _e18 = p_17;
    let _e22 = h_2;
    d_3 = (abs(vec2<f32>(length(_e15.xz), _e18.y)) - _e22);
    let _e25 = d_3;
    _ = _e25.x;
    let _e27 = d_3;
    _ = _e27.y;
    let _e29 = d_3;
    let _e31 = d_3;
    let _e33 = max(_e29.x, _e31.y);
    let _e35 = d_3;
    _ = _e35.x;
    let _e37 = d_3;
    _ = _e37.y;
    let _e39 = d_3;
    let _e41 = d_3;
    let _e43 = max(_e39.x, _e41.y);
    let _e45 = min(_e43, 0.0);
    _ = d_3;
    let _e48 = d_3;
    let _e50 = max_3(_e48, 0.0);
    _ = d_3;
    let _e53 = d_3;
    let _e55 = max_3(_e53, 0.0);
    return (_e45 + length(_e55));
}

fn RotMat(axis: vec3<f32>, angle_1: f32) -> mat3x3<f32> {
    var axis_1: vec3<f32>;
    var angle_2: f32;
    var s: f32;
    var c_1: f32;
    var oc: f32;

    axis_1 = axis;
    angle_2 = angle_1;
    _ = axis_1;
    let _e6 = axis_1;
    axis_1 = normalize(_e6);
    _ = angle_2;
    let _e9 = angle_2;
    s = sin(_e9);
    _ = angle_2;
    let _e13 = angle_2;
    c_1 = cos(_e13);
    let _e17 = c_1;
    oc = (1.0 - _e17);
    let _e20 = oc;
    let _e21 = axis_1;
    let _e24 = axis_1;
    let _e27 = c_1;
    let _e29 = oc;
    let _e30 = axis_1;
    let _e33 = axis_1;
    let _e36 = axis_1;
    let _e38 = s;
    let _e41 = oc;
    let _e42 = axis_1;
    let _e45 = axis_1;
    let _e48 = axis_1;
    let _e50 = s;
    let _e53 = oc;
    let _e54 = axis_1;
    let _e57 = axis_1;
    let _e60 = axis_1;
    let _e62 = s;
    let _e65 = oc;
    let _e66 = axis_1;
    let _e69 = axis_1;
    let _e72 = c_1;
    let _e74 = oc;
    let _e75 = axis_1;
    let _e78 = axis_1;
    let _e81 = axis_1;
    let _e83 = s;
    let _e86 = oc;
    let _e87 = axis_1;
    let _e90 = axis_1;
    let _e93 = axis_1;
    let _e95 = s;
    let _e98 = oc;
    let _e99 = axis_1;
    let _e102 = axis_1;
    let _e105 = axis_1;
    let _e107 = s;
    let _e110 = oc;
    let _e111 = axis_1;
    let _e114 = axis_1;
    let _e117 = c_1;
    return mat3x3<f32>(vec3<f32>((((_e20 * _e21.x) * _e24.x) + _e27), (((_e29 * _e30.x) * _e33.y) - (_e36.z * _e38)), (((_e41 * _e42.z) * _e45.x) + (_e48.y * _e50))), vec3<f32>((((_e53 * _e54.x) * _e57.y) + (_e60.z * _e62)), (((_e65 * _e66.y) * _e69.y) + _e72), (((_e74 * _e75.y) * _e78.z) - (_e81.x * _e83))), vec3<f32>((((_e86 * _e87.z) * _e90.x) - (_e93.y * _e95)), (((_e98 * _e99.y) * _e102.z) + (_e105.x * _e107)), (((_e110 * _e111.z) * _e114.z) + _e117)));
}

fn udRoundBox(p_20: vec3<f32>, b_30: vec3<f32>, r_3: vec3<f32>) -> f32 {
    var p_21: vec3<f32>;
    var b_31: vec3<f32>;
    var r_4: vec3<f32>;

    p_21 = p_20;
    b_31 = b_30;
    r_4 = r_3;
    _ = p_21;
    let _e8 = p_21;
    let _e10 = b_31;
    _ = (abs(_e8) - _e10);
    _ = p_21;
    let _e14 = p_21;
    let _e16 = b_31;
    let _e19 = max_4((abs(_e14) - _e16), 0.0);
    _ = p_21;
    let _e21 = p_21;
    let _e23 = b_31;
    _ = (abs(_e21) - _e23);
    _ = p_21;
    let _e27 = p_21;
    let _e29 = b_31;
    let _e32 = max_4((abs(_e27) - _e29), 0.0);
    let _e34 = r_4;
    return (length(_e32) - _e34.x);
}

fn opRepLim(p_22: f32, s_1: f32, mi: f32, ma: f32) -> f32 {
    var p_23: f32;
    var s_2: f32;
    var mi_1: f32;
    var ma_1: f32;

    p_23 = p_22;
    s_2 = s_1;
    mi_1 = mi;
    ma_1 = ma;
    let _e9 = p_23;
    let _e10 = s_2;
    let _e11 = p_23;
    let _e12 = s_2;
    _ = ((_e11 / _e12) + 0.5);
    let _e16 = p_23;
    let _e17 = s_2;
    _ = floor(((_e16 / _e17) + 0.5));
    _ = mi_1;
    _ = ma_1;
    let _e24 = p_23;
    let _e25 = s_2;
    _ = ((_e24 / _e25) + 0.5);
    let _e29 = p_23;
    let _e30 = s_2;
    let _e35 = mi_1;
    let _e36 = ma_1;
    let _e37 = clamp(floor(((_e29 / _e30) + 0.5)), _e35, _e36);
    return (_e9 - (_e10 * _e37));
}

fn obj1_(p_24: vec3<f32>) -> f32 {
    var p_25: vec3<f32>;
    var q: vec3<f32>;

    p_25 = p_24;
    let _e3 = p_25;
    _ = (_e3.x + 0.10000000149011612);
    _ = -(22.0);
    let _e11 = p_25;
    let _e19 = opRepLim((_e11.x + 0.10000000149011612), 0.20000000298023224, -(22.0), 23.0);
    let _e20 = p_25;
    let _e24 = (_e20.yz - vec2<f32>(0.10000000149011612));
    q = vec3<f32>(_e19, _e24.x, _e24.y);
    _ = q;
    _ = (vec3<f32>(0.09099999815225601, 0.07500000298023224, 0.6000000238418579) - vec3<f32>(0.004999999888241291));
    _ = vec3<f32>(0.009999999776482582);
    let _e39 = q;
    let _e49 = udRoundBox(_e39, (vec3<f32>(0.09099999815225601, 0.07500000298023224, 0.6000000238418579) - vec3<f32>(0.004999999888241291)), vec3<f32>(0.009999999776482582));
    return _e49;
}

fn obj2_(p_26: vec3<f32>, d_5: f32) -> f32 {
    var p_27: vec3<f32>;
    var d_6: f32;
    var q_1: vec3<f32>;
    var k_2: f32;
    var res: f32;

    p_27 = p_26;
    d_6 = d_5;
    let _e5 = p_27;
    _ = (_e5.x + 0.20000000298023224);
    _ = -(21.0);
    let _e13 = p_27;
    let _e21 = opRepLim((_e13.x + 0.20000000298023224), 0.20000000298023224, -(21.0), 23.0);
    let _e22 = p_27;
    let _e26 = p_27;
    q_1 = vec3<f32>(_e21, (_e22.y - 0.1850000023841858), (_e26.z - 0.30000001192092896));
    let _e32 = p_27;
    _ = ((_e32.x / 0.20000000298023224) + 0.5);
    let _e38 = p_27;
    _ = floor(((_e38.x / 0.20000000298023224) + 0.5));
    let _e46 = p_27;
    _ = ((_e46.x / 0.20000000298023224) + 0.5);
    let _e52 = p_27;
    let _e60 = (floor(((_e52.x / 0.20000000298023224) + 0.5)) % 7.0);
    k_2 = _e60;
    _ = q_1;
    _ = (vec3<f32>(0.05999999865889549, 0.07500000298023224, 0.4000000059604645) - vec3<f32>(0.009999999776482582));
    _ = vec3<f32>(0.009999999776482582, 0.009999999776482582, 0.009999999776482582);
    let _e74 = q_1;
    let _e86 = udRoundBox(_e74, (vec3<f32>(0.05999999865889549, 0.07500000298023224, 0.4000000059604645) - vec3<f32>(0.009999999776482582)), vec3<f32>(0.009999999776482582, 0.009999999776482582, 0.009999999776482582));
    res = _e86;
    let _e88 = res;
    return _e88;
}

fn obj3_(p_28: vec3<f32>) -> f32 {
    var p_29: vec3<f32>;
    var d1_: f32;
    var d2_: f32;
    var d3_: f32;
    var d4_: f32;
    var d5_: f32;

    p_29 = p_28;
    let _e3 = p_29;
    _ = (_e3 - vec3<f32>(0.0, 0.0, 1.7000000476837158));
    _ = vec3<f32>(5.400000095367432, 0.6000000238418579, 1.0);
    _ = vec3<f32>(0.05000000074505806);
    let _e15 = p_29;
    let _e27 = udRoundBox((_e15 - vec3<f32>(0.0, 0.0, 1.7000000476837158)), vec3<f32>(5.400000095367432, 0.6000000238418579, 1.0), vec3<f32>(0.05000000074505806));
    d1_ = _e27;
    let _e29 = p_29;
    _ = (_e29 - vec3<f32>(0.0, -(0.30000001192092896), 0.10000000149011612));
    _ = vec3<f32>(5.400000095367432, 0.30000001192092896, 0.6000000238418579);
    _ = vec3<f32>(0.05000000074505806);
    let _e42 = p_29;
    let _e55 = udRoundBox((_e42 - vec3<f32>(0.0, -(0.30000001192092896), 0.10000000149011612)), vec3<f32>(5.400000095367432, 0.30000001192092896, 0.6000000238418579), vec3<f32>(0.05000000074505806));
    d2_ = _e55;
    let _e57 = p_29;
    _ = (_e57 - vec3<f32>(0.0, -(1.0), 2.5));
    _ = vec3<f32>(5.400000095367432, 3.0, 1.0);
    _ = vec3<f32>(0.05000000074505806);
    let _e70 = p_29;
    let _e83 = udRoundBox((_e70 - vec3<f32>(0.0, -(1.0), 2.5)), vec3<f32>(5.400000095367432, 3.0, 1.0), vec3<f32>(0.05000000074505806));
    d3_ = _e83;
    let _e85 = p_29;
    _ = _e85.x;
    let _e87 = p_29;
    let _e90 = p_29;
    let _e92 = p_29;
    _ = (vec3<f32>(abs(_e87.x), _e90.y, _e92.z) - vec3<f32>(5.25, -(2.200000047683716), -(0.3499999940395355)));
    _ = vec2<f32>(0.10000000149011612, 1.850000023841858);
    let _e105 = p_29;
    _ = _e105.x;
    let _e107 = p_29;
    let _e110 = p_29;
    let _e112 = p_29;
    let _e125 = sdCylinder((vec3<f32>(abs(_e107.x), _e110.y, _e112.z) - vec3<f32>(5.25, -(2.200000047683716), -(0.3499999940395355))), vec2<f32>(0.10000000149011612, 1.850000023841858));
    d4_ = _e125;
    let _e127 = d4_;
    _ = -(0.699999988079071);
    let _e133 = p_29;
    _ = (18.0 * _e133.y);
    let _e137 = p_29;
    _ = sin((18.0 * _e137.y));
    let _e145 = p_29;
    _ = (18.0 * _e145.y);
    let _e149 = p_29;
    let _e153 = smoothstep(-(0.699999988079071), 0.699999988079071, sin((18.0 * _e149.y)));
    let _e156 = p_29;
    d4_ = (_e127 - (((0.029999999329447746 * _e153) + (0.017000000923871994 * _e156.y)) + 0.02500000037252903));
    let _e163 = p_29;
    _ = _e163.x;
    let _e165 = p_29;
    let _e168 = p_29;
    let _e170 = p_29;
    _ = (vec3<f32>(abs(_e165.x), _e168.y, _e170.z) - vec3<f32>(5.050000190734863, 0.0, 0.30000001192092896));
    _ = vec3<f32>(0.3499999940395355, 0.20000000298023224, 0.800000011920929);
    _ = vec3<f32>(0.05000000074505806);
    let _e184 = p_29;
    _ = _e184.x;
    let _e186 = p_29;
    let _e189 = p_29;
    let _e191 = p_29;
    let _e205 = udRoundBox((vec3<f32>(abs(_e186.x), _e189.y, _e191.z) - vec3<f32>(5.050000190734863, 0.0, 0.30000001192092896)), vec3<f32>(0.3499999940395355, 0.20000000298023224, 0.800000011920929), vec3<f32>(0.05000000074505806));
    d5_ = _e205;
    _ = d1_;
    _ = d2_;
    let _e209 = d1_;
    let _e210 = d2_;
    let _e211 = min(_e209, _e210);
    _ = d3_;
    _ = d1_;
    _ = d2_;
    let _e215 = d1_;
    let _e216 = d2_;
    let _e217 = min(_e215, _e216);
    let _e218 = d3_;
    let _e219 = min(_e217, _e218);
    _ = d4_;
    _ = d1_;
    _ = d2_;
    let _e223 = d1_;
    let _e224 = d2_;
    let _e225 = min(_e223, _e224);
    _ = d3_;
    _ = d1_;
    _ = d2_;
    let _e229 = d1_;
    let _e230 = d2_;
    let _e231 = min(_e229, _e230);
    let _e232 = d3_;
    let _e233 = min(_e231, _e232);
    let _e234 = d4_;
    let _e235 = min(_e233, _e234);
    _ = d5_;
    _ = d1_;
    _ = d2_;
    let _e239 = d1_;
    let _e240 = d2_;
    let _e241 = min(_e239, _e240);
    _ = d3_;
    _ = d1_;
    _ = d2_;
    let _e245 = d1_;
    let _e246 = d2_;
    let _e247 = min(_e245, _e246);
    let _e248 = d3_;
    let _e249 = min(_e247, _e248);
    _ = d4_;
    _ = d1_;
    _ = d2_;
    let _e253 = d1_;
    let _e254 = d2_;
    let _e255 = min(_e253, _e254);
    _ = d3_;
    _ = d1_;
    _ = d2_;
    let _e259 = d1_;
    let _e260 = d2_;
    let _e261 = min(_e259, _e260);
    let _e262 = d3_;
    let _e263 = min(_e261, _e262);
    let _e264 = d4_;
    let _e265 = min(_e263, _e264);
    let _e266 = d5_;
    let _e267 = min(_e265, _e266);
    return _e267;
}

fn obj4_(p_30: vec3<f32>) -> f32 {
    var p_31: vec3<f32>;

    p_31 = p_30;
    let _e4 = p_31;
    return (3.75 + _e4.y);
}

fn obj5_(p_32: vec3<f32>) -> f32 {
    var p_33: vec3<f32>;

    p_33 = p_32;
    let _e4 = p_33;
    _ = (3.5 - _e4.z);
    let _e7 = p_33;
    _ = (_e7.x + 6.5);
    let _e12 = p_33;
    let _e15 = p_33;
    let _e19 = min((3.5 - _e12.z), (_e15.x + 6.5));
    return _e19;
}

fn obj6_(p_34: vec3<f32>) -> f32 {
    var p_35: vec3<f32>;
    var q_2: vec3<f32>;
    var x_8: f32;

    p_35 = p_34;
    let _e3 = p_35;
    q_2 = (_e3 - vec3<f32>(0.0, 1.2999999523162842, 1.1449999809265137));
    let _e10 = q_2;
    _ = _e10.x;
    let _e12 = q_2;
    x_8 = abs(_e12.x);
    let _e17 = q_2;
    let _e22 = x_8;
    let _e25 = x_8;
    q_2.z = (_e17.z + (((0.15000000596046448 * 4.0) * _e22) * (1.0 - _e25)));
    let _e29 = q_2;
    _ = _e29.yz;
    let _e39 = q_2;
    let _e41 = (mat2x2<f32>(vec2<f32>(0.8999999761581421, -(0.4099999964237213)), vec2<f32>(0.4099999964237213, 0.8999999761581421)) * _e39.yz);
    q_2.y = _e41.x;
    q_2.z = _e41.y;
    _ = q_2;
    _ = vec3<f32>(1.0, 0.699999988079071, 0.0);
    _ = vec3<f32>(0.009999999776482582);
    let _e54 = q_2;
    let _e61 = udRoundBox(_e54, vec3<f32>(1.0, 0.699999988079071, 0.0), vec3<f32>(0.009999999776482582));
    return ((0.5 * _e61) - 0.009999999776482582);
}

fn obj8_(p_36: vec3<f32>) -> f32 {
    var p_37: vec3<f32>;
    var q_3: vec3<f32>;
    var y: f32;
    var d_7: f32;
    var s_3: vec3<f32>;
    var d2_1: f32;

    p_37 = p_36;
    let _e3 = p_37;
    q_3 = (_e3 - vec3<f32>(-(0.5), -(1.7999999523162842), -(2.0)));
    let _e13 = q_3;
    _ = _e13.xz;
    let _e23 = q_3;
    let _e25 = (mat2x2<f32>(vec2<f32>(0.8999999761581421, 0.4399999976158142), vec2<f32>(-(0.4399999976158142), 0.8999999761581421)) * _e23.xz);
    q_3.x = _e25.x;
    q_3.z = _e25.y;
    let _e33 = q_3;
    _ = (8.0 * _e33.x);
    let _e37 = q_3;
    let _e43 = q_3;
    _ = (8.0 * _e43.z);
    let _e47 = q_3;
    y = (0.5 + ((0.5 * sin((8.0 * _e37.x))) * sin((8.0 * _e47.z))));
    _ = y;
    let _e57 = y;
    let _e63 = q_3;
    _ = _e63.y;
    let _e67 = q_3;
    let _e69 = smoothstep(0.10000000149011612, 0.4000000059604645, _e67.y);
    y = ((0.10000000149011612 * pow(_e57, 3.0)) * _e69);
    _ = q_3;
    _ = vec3<f32>(1.5, 0.25, 0.6000000238418579);
    _ = vec3<f32>(0.30000001192092896);
    let _e78 = q_3;
    let _e85 = udRoundBox(_e78, vec3<f32>(1.5, 0.25, 0.6000000238418579), vec3<f32>(0.30000001192092896));
    d_7 = _e85;
    let _e87 = d_7;
    let _e88 = y;
    d_7 = (_e87 + _e88);
    let _e90 = q_3;
    _ = _e90.x;
    let _e92 = q_3;
    let _e95 = q_3;
    let _e97 = q_3;
    _ = _e97.z;
    let _e99 = q_3;
    s_3 = vec3<f32>(abs(_e92.x), _e95.y, abs(_e99.z));
    let _e104 = s_3;
    _ = (_e104 - vec3<f32>(1.399999976158142, -(1.2000000476837158), 0.6000000238418579));
    _ = vec2<f32>(0.15000000596046448, 1.0499999523162842);
    let _e114 = s_3;
    let _e124 = sdCylinder((_e114 - vec3<f32>(1.399999976158142, -(1.2000000476837158), 0.6000000238418579)), vec2<f32>(0.15000000596046448, 1.0499999523162842));
    d2_1 = _e124;
    _ = d_7;
    _ = d2_1;
    let _e128 = d_7;
    let _e129 = d2_1;
    let _e130 = min(_e128, _e129);
    return _e130;
}

fn obj7_(p_38: vec3<f32>) -> f32 {
    var p_39: vec3<f32>;
    var q_4: vec3<f32>;
    var r_5: vec3<f32>;

    p_39 = p_38;
    let _e3 = p_39;
    q_4 = (_e3 - vec3<f32>(0.0, -(3.5999999046325684), 1.2000000476837158));
    let _e11 = q_4;
    _ = (_e11.x - 0.25);
    let _e16 = q_4;
    let _e21 = ((_e16.x - 0.25) % 0.5);
    let _e24 = q_4;
    let _e25 = _e24.yz;
    r_5 = vec3<f32>((_e21 - 0.25), _e25.x, _e25.y);
    _ = r_5;
    _ = vec3<f32>(0.05000000074505806, 0.0, 0.3799999952316284);
    _ = vec3<f32>(0.07999999821186066);
    let _e38 = r_5;
    let _e45 = udRoundBox(_e38, vec3<f32>(0.05000000074505806, 0.0, 0.3799999952316284), vec3<f32>(0.07999999821186066));
    _ = (0.5 * _e45);
    _ = q_4;
    _ = vec3<f32>(0.75, 1.0, 1.0);
    let _e52 = q_4;
    let _e57 = sdBox(_e52, vec3<f32>(0.75, 1.0, 1.0));
    _ = r_5;
    _ = vec3<f32>(0.05000000074505806, 0.0, 0.3799999952316284);
    _ = vec3<f32>(0.07999999821186066);
    let _e66 = r_5;
    let _e73 = udRoundBox(_e66, vec3<f32>(0.05000000074505806, 0.0, 0.3799999952316284), vec3<f32>(0.07999999821186066));
    _ = q_4;
    _ = vec3<f32>(0.75, 1.0, 1.0);
    let _e80 = q_4;
    let _e85 = sdBox(_e80, vec3<f32>(0.75, 1.0, 1.0));
    let _e86 = max((0.5 * _e73), _e85);
    return _e86;
}

fn fpiano(x_9: f32, y_1: f32, z: f32, t_1: f32) -> f32 {
    var x_10: f32;
    var y_2: f32;
    var z_1: f32;
    var t_2: f32;
    var p_40: vec3<f32>;
    var psin: vec3<f32>;
    var s_4: f32;
    var res_1: vec2<f32>;
    var d_8: f32;
    var ob2_: vec2<f32>;
    var ob3_: vec2<f32>;
    var ob4_: vec2<f32>;
    var ob5_: vec2<f32>;
    var ob6_: vec2<f32>;
    var ob7_: vec2<f32>;
    var ob8_: vec2<f32>;

    x_10 = x_9;
    y_2 = y_1;
    z_1 = z;
    t_2 = t_1;
    let _e9 = x_10;
    let _e10 = y_2;
    let _e11 = z_1;
    p_40 = (vec3<f32>(_e9, _e10, _e11) * 1.2999999523162842);
    let _e16 = p_40;
    psin = _e16;
    let _e18 = p_40;
    let _e20 = t_2;
    _ = (((_e18.x + (_e20 * 2.5)) - f32(3)) - 3.1414999961853027);
    let _e31 = p_40;
    let _e33 = t_2;
    let _e44 = clamp((((_e31.x + (_e33 * 2.5)) - f32(3)) - 3.1414999961853027), 0.0, 3.141592502593994);
    let _e45 = p_40;
    let _e47 = t_2;
    _ = (((_e45.x + (_e47 * 2.5)) - f32(3)) - 3.1414999961853027);
    let _e58 = p_40;
    let _e60 = t_2;
    let _e71 = clamp((((_e58.x + (_e60 * 2.5)) - f32(3)) - 3.1414999961853027), 0.0, 3.141592502593994);
    s_4 = sin(_e71);
    let _e75 = psin;
    let _e77 = s_4;
    let _e78 = s_4;
    psin.y = (_e75.y - (_e77 * _e78));
    _ = psin;
    let _e82 = psin;
    let _e83 = obj1_(_e82);
    res_1 = vec2<f32>(_e83, 0.0);
    let _e87 = res_1;
    d_8 = _e87.x;
    _ = psin;
    let _e91 = res_1;
    _ = _e91.x;
    let _e93 = psin;
    let _e94 = res_1;
    let _e96 = obj2_(_e93, _e94.x);
    ob2_ = vec2<f32>(_e96, 1.0);
    _ = d_8;
    let _e101 = ob2_;
    _ = _e101.x;
    let _e103 = d_8;
    let _e104 = ob2_;
    let _e106 = min(_e103, _e104.x);
    d_8 = _e106;
    let _e107 = p_40;
    _ = (_e107 * vec3<f32>(f32(1), 0.949999988079071, f32(1)));
    let _e115 = p_40;
    let _e123 = obj3_((_e115 * vec3<f32>(f32(1), 0.949999988079071, f32(1))));
    ob3_ = vec2<f32>(_e123, 2.0);
    _ = d_8;
    let _e128 = ob3_;
    _ = _e128.x;
    let _e130 = d_8;
    let _e131 = ob3_;
    let _e133 = min(_e130, _e131.x);
    d_8 = _e133;
    _ = p_40;
    let _e135 = p_40;
    let _e136 = obj4_(_e135);
    ob4_ = vec2<f32>(_e136, 3.0);
    _ = d_8;
    let _e141 = ob4_;
    _ = _e141.x;
    let _e143 = d_8;
    let _e144 = ob4_;
    let _e146 = min(_e143, _e144.x);
    d_8 = _e146;
    _ = p_40;
    let _e148 = p_40;
    let _e149 = obj5_(_e148);
    ob5_ = vec2<f32>(_e149, 3.0);
    _ = p_40;
    let _e154 = p_40;
    let _e155 = obj6_(_e154);
    ob6_ = vec2<f32>(_e155, 5.0);
    _ = d_8;
    let _e160 = ob6_;
    _ = _e160.x;
    let _e162 = d_8;
    let _e163 = ob6_;
    let _e165 = min(_e162, _e163.x);
    d_8 = _e165;
    _ = p_40;
    let _e167 = p_40;
    let _e168 = obj7_(_e167);
    ob7_ = vec2<f32>(_e168, 6.0);
    _ = d_8;
    let _e173 = ob7_;
    _ = _e173.x;
    let _e175 = d_8;
    let _e176 = ob7_;
    let _e178 = min(_e175, _e176.x);
    d_8 = _e178;
    _ = p_40;
    let _e180 = p_40;
    let _e181 = obj8_(_e180);
    ob8_ = vec2<f32>(_e181, 7.0);
    _ = d_8;
    let _e186 = ob8_;
    _ = _e186.x;
    let _e188 = d_8;
    let _e189 = ob8_;
    let _e191 = min(_e188, _e189.x);
    d_8 = _e191;
    _ = d_8;
    let _e193 = z_1;
    _ = (-(_e193) - 3.200000047683716);
    let _e197 = d_8;
    let _e198 = z_1;
    let _e202 = max(_e197, (-(_e198) - 3.200000047683716));
    d_8 = _e202;
    _ = d_8;
    let _e204 = z_1;
    _ = (_e204 - 3.4000000953674316);
    let _e207 = d_8;
    let _e208 = z_1;
    let _e211 = max(_e207, (_e208 - 3.4000000953674316));
    d_8 = _e211;
    _ = d_8;
    let _e213 = y_2;
    _ = (-(_e213) - 3.299999952316284);
    let _e217 = d_8;
    let _e218 = y_2;
    let _e222 = max(_e217, (-(_e218) - 3.299999952316284));
    d_8 = _e222;
    _ = d_8;
    let _e224 = x_10;
    let _e225 = z_1;
    _ = ((_e224 - _e225) - f32(5));
    let _e230 = d_8;
    let _e231 = x_10;
    let _e232 = z_1;
    let _e237 = max(_e230, ((_e231 - _e232) - f32(5)));
    d_8 = _e237;
    _ = d_8;
    let _e239 = x_10;
    let _e241 = z_1;
    _ = ((-(_e239) - _e241) - f32(5));
    let _e246 = d_8;
    let _e247 = x_10;
    let _e249 = z_1;
    let _e254 = max(_e246, ((-(_e247) - _e249) - f32(5)));
    d_8 = _e254;
    _ = d_8;
    let _e256 = x_10;
    _ = (-(_e256) - 4.800000190734863);
    let _e260 = d_8;
    let _e261 = x_10;
    let _e265 = max(_e260, (-(_e261) - 4.800000190734863));
    d_8 = _e265;
    _ = d_8;
    let _e267 = x_10;
    _ = (_e267 - 4.800000190734863);
    let _e270 = d_8;
    let _e271 = x_10;
    let _e274 = max(_e270, (_e271 - 4.800000190734863));
    d_8 = _e274;
    let _e275 = d_8;
    return _e275;
}

fn obj(p: vec3<f32>) -> f32 {
    var p_1: vec3<f32>;
    var ax: vec3<f32>;
    var ce: vec3<f32>;
    var d1_: f32;
    var d2_: f32;
    var d3_: f32;

    p_1 = p;
    ax = (vec3<f32>(-(2.0), 2.0, 1.0) / vec3<f32>(3.0));
    ce = vec3<f32>(0.0, -(0.20000000298023224), -(0.20000000298023224));
    _ = p_1;
    _ = ax;
    let _e21 = p_1;
    let _e22 = ax;
    d1_ = (dot(_e21, _e22) - 0.10000000149011612);
    _ = p_1;
    let _e28 = p_1;
    d2_ = (length(_e28) - 1.0);
    let _e33 = p_1;
    let _e34 = ce;
    let _e36 = ax;
    let _e37 = p_1;
    let _e38 = ce;
    _ = (_e37 - _e38);
    _ = ax;
    let _e41 = p_1;
    let _e42 = ce;
    let _e44 = ax;
    _ = ((_e33 - _e34) - (_e36 * dot((_e41 - _e42), _e44)));
    let _e48 = p_1;
    let _e49 = ce;
    let _e51 = ax;
    let _e52 = p_1;
    let _e53 = ce;
    _ = (_e52 - _e53);
    _ = ax;
    let _e56 = p_1;
    let _e57 = ce;
    let _e59 = ax;
    d3_ = (length(((_e48 - _e49) - (_e51 * dot((_e56 - _e57), _e59)))) - 1.0);
    _ = d1_;
    _ = d2_;
    let _e69 = d1_;
    let _e70 = d2_;
    _ = max(_e69, _e70);
    let _e72 = d3_;
    _ = -(_e72);
    _ = d1_;
    _ = d2_;
    let _e76 = d1_;
    let _e77 = d2_;
    let _e79 = d3_;
    return max(max(_e76, _e77), -(_e79));
}

// GENERIC

// for some reason builtin doesn't work ?
fn radians(x: f32) -> f32 {
    return x * 0.017453292519943295474;
}

fn max_component(x: vec3<f32>) -> f32 {
    return max(x.x, max(x.y, x.z));
}

fn imax_component(x: vec3<i32>) -> i32 {
    return max(x.x, max(x.y, x.z));
}

fn min_component(x: vec3<f32>) -> f32 {
    return min(x.x, min(x.y, x.z));
}

fn imin_component(x: vec3<i32>) -> i32 {
    return min(x.x, min(x.y, x.z));
}

var<private> seed3: u32 = 0;

// https://nvpro-samples.github.io/vk_mini_path_tracer/
fn frand() -> f32 {
    seed3 = seed3 * 747796405u + 1u;
    var word = ((seed3 >> ((seed3 >> 28u) + 4u)) ^ seed3) * 277803737u;
    word = (word >> 22u) ^ word;
    return (f32(word) / 4294967295.0) * 2.0 - 1.0; // -1 to 1
}

fn seededfrand(seed: u32) -> f32 {
    var word = ((seed >> ((seed >> 28u) + 4u)) ^ seed) * 277803737u;
    word = (word >> 22u) ^ word;
    return (f32(word) / 4294967295.0) * 2.0 - 1.0; // -1 to 1
}

fn frand0to1() -> f32 {
    seed3 = seed3 * 747796405u + 1u;
    var word = ((seed3 >> ((seed3 >> 28u) + 4u)) ^ seed3) * 277803737u;
    word = (word >> 22u) ^ word;
    return (f32(word) / 4294967295.0);
}

// INTERVALS

let PI = 3.141592653589793;
let TWOPI = 6.283185307179586;
let HALFPI = 1.5707963267948966;

// Interval Arithmetic
struct Interval {
    lo: f32,
    hi: f32,
};

fn I_FROM(a: f32) -> Interval {
    return Interval(a, a);
}

fn I_FROM_MID_RAD(mid: f32, rad: f32) -> Interval {
    return Interval(mid-rad, mid+rad);
}

fn I_FROM_UNORDERED(a: f32, b: f32) -> Interval {
    return Interval(min(a,b), max(a,b));
}

fn I_CONTAINS_ZERO(a: Interval) -> bool {
    return a.lo <= 0.0 && 0.0 <= a.hi;
}

fn I_CONTAINS_X(a: Interval, x: f32) -> bool {
    return a.lo <= x && x <= a.hi;
}

fn DIAMETER(a: Interval) -> f32 {
    return a.hi - a.lo;
}

fn MID(a: Interval) -> f32 {
    return (a.lo+a.hi)/2.0;
}

fn HI(a: Interval) -> f32 {
    return a.lo;
}

fn LO(a: Interval) -> f32 {
    return a.lo;
}

fn RADIUS(a: Interval) -> f32 {
    return (a.hi-a.lo)/2.0;
}

fn INFINITY() -> f32 {
    return 1.0/0.0;
}

fn MINUS_INFINITY() -> f32 {
    return -1.0/0.0;
}

fn BIG() -> f32{
    // return INFINITY();
    return 1000000.0;
}

fn ADD_II(a: Interval, b: Interval) -> Interval {
    return Interval(a.lo+b.lo, a.hi+b.hi);
}

fn ADD_IF(a: Interval, b: f32) -> Interval {
    return Interval(a.lo+b, a.hi+b);
}

fn SUB_II(a: Interval, b: Interval) -> Interval {
    return Interval(a.lo-b.hi, a.hi-b.lo);
}

fn SUB_IF(a: Interval, b: f32) -> Interval {
    return Interval(a.lo-b, a.hi-b);
}

fn MUL_II(a: Interval, b: Interval) -> Interval {
    var x = a.lo*b.lo;
    var y = a.lo*b.hi;
    var z = a.hi*b.lo;
    var w = a.hi*b.hi;
    return Interval(min(min(x,y),min(z,w)), max(max(x,y),max(z,w)));
}

fn MUL_IF(a: Interval, b: f32) -> Interval {
    if (b >= 0.0) {
        return Interval(a.lo*b, a.hi*b);
    } else {
        return Interval(a.hi*b, a.lo*b);
    }
    
}

fn SQRT_I(a: Interval) -> Interval {
    return Interval(sqrt(max(a.lo, 0.0)), sqrt(max(a.hi, 0.0)));
}

fn EXP_I(a: Interval) -> Interval {
    return Interval(exp(a.lo), exp(a.hi));
}

fn LOG_I(a: Interval) -> Interval {
    return Interval(log(max(a.lo, 0.0)), log(max(a.hi, 0.0)));
}

fn NEG_I(a: Interval) -> Interval {
    return Interval(-a.hi, -a.lo);
}

fn INV_I(a: Interval) -> Interval {
    if (I_CONTAINS_ZERO(a)) {
        return Interval(-1.0/0.0, 1.0/0.0);
    } else if (a.lo >= 0.0) {
        return Interval(1.0/a.lo, 1.0/a.hi);
    } else {
        return Interval(1.0/a.hi, 1.0/a.lo);
    }
}

fn DIV_II(a: Interval, b: Interval) -> Interval {
    var x = a.lo/b.lo;
    var y = a.lo/b.hi;
    var z = a.hi/b.lo;
    var w = a.hi/b.hi;
    return Interval(
        min(min(x,y), min(z,w)),
        max(max(x,y), max(z,w))
    );
}

fn DIV_IF(a: Interval, b: f32) -> Interval {
    return DIV_II(a, I_FROM(b));
}

fn MIN_II(a: Interval, b: Interval) -> Interval {
    return Interval(min(a.lo, b.lo), min(a.hi, b.hi));
}

fn MIN_IF(a: Interval, b: f32) -> Interval {
    return Interval(min(a.lo, b), min(a.hi, b));
}

fn MAX_IF(a: Interval, b: f32) -> Interval {
    return Interval(max(a.lo, b), max(a.hi, b));
}

fn MAX_II(a: Interval, b: Interval) -> Interval {
    return Interval(max(a.lo, b.lo), max(a.hi, b.hi));
}

fn ABS_I(a: Interval) -> Interval {
    if (I_CONTAINS_ZERO(a)) {
        return Interval(0.0, max(-a.lo, a.hi));
    } else if (a.hi < 0.0) {
        return Interval(-a.hi, -a.lo);
    } else {
        return a;
    }
}


fn ABS_I_RR(larg: Interval) -> Interval {
    if (I_CONTAINS_ZERO(larg)) {
        return Interval(-1.0, 1.0);
    } else if (larg.hi < 0.0) {
        return I_FROM(-1.0);
    } else {
        return I_FROM(1.0);
    }
}

// union
fn CUP_II(a: Interval, b: Interval) -> Interval {
    return Interval(min(a.lo, b.lo), max(a.hi, b.hi));
}

fn I_EMPTY() -> Interval {
    return Interval(1.0/0.0, -1.0/0.0); // [+inf, -inf]
}

fn EQUALS_II(a: Interval, b: Interval) -> bool {
    return a.lo == b.lo && a.hi == b.hi;
}

// intersection
fn CAP_II(a: Interval, b:Interval) -> Interval {
    if (a.hi < b.lo || b.hi < a.lo) {
        return I_EMPTY();
    } else {
        return Interval(max(a.lo, b.lo), min(a.hi, b.hi));
    }
}

fn ismin(a: Interval, b: Interval, k: Interval) -> Interval {
    var res = ADD_II(EXP_I(MUL_II(NEG_I(k),a)), EXP_I(MUL_II(NEG_I(k),b)));
    return DIV_II(NEG_I(LOG_I(res)), k);
}

fn is_nan(a: f32) -> bool {
    if (a < 0.0 || a > 0.0 || a == 0.0) {
        return false;
    } else {
        return true;
    }
}

fn I_IS_NAN(a: Interval) -> bool {
    return is_nan(a.lo) || is_nan(a.hi);
}

fn SQR_I(a: Interval) -> Interval {
    var x = a.lo*a.lo;
    var y = a.hi*a.hi;

    if (I_CONTAINS_ZERO(a)) {
        return Interval(0.0, max(x,y));
    } else {
        return Interval(min(x,y), max(x,y));
    }
}

fn TRUNC_I(a: Interval) -> Interval {
    return Interval(trunc(a.lo), trunc(a.hi));
}

fn FLOOR_I(a: Interval) -> Interval {
    return Interval(floor(a.lo), floor(a.hi));
}

fn FLOOR_I_RR(a: Interval) -> Interval {
    if (floor(a.hi)!=floor(a.lo)) {
        return Interval(-BIG(), BIG());
    }
    
    return I_FROM(0.0);
}

fn CEIL_I(a: Interval) -> Interval {
    return Interval(ceil(a.lo), ceil(a.hi));
}

fn SIGN_I(a: Interval) -> Interval {
    return Interval(sign(a.lo), sign(a.hi));
}

fn ATAN2_II(x: Interval, y: Interval) -> Interval {
    var range_atan = Interval(-PI, PI);
    var half_range_atan = Interval(-HALFPI, HALFPI);
    var pos_range_atan = Interval(0.0, PI);

    if (y.lo == 0.0) {
        return Interval(0.0, y.hi);
    }
    if (y.hi == 0.0) {
        return Interval(y.lo, 0.0);
    }

    if (x.lo == 0.0 && x.hi == 0.0) {
        if (y.lo == 0.0 && y.hi == 0.0) {
            return I_EMPTY();
        }
        if (y.lo >= 0.0) {
            return I_FROM(HALFPI);
        }
        if (y.hi <= 0.0) {
            return I_FROM(-HALFPI);
        }
        return half_range_atan;

    } else if (x.lo > 0.0) {
        if (y.lo == 0.0 && y.hi == 0.0) {
            return y;
        }
        if (y.lo >= 0.0) {
            return Interval(atan2(y.lo, x.hi), atan2(y.hi, x.lo));
        }
        if (y.hi <= 0.0) {
            return Interval(atan2(y.lo, x.lo), atan2(y.hi, x.hi));
        }
        return Interval(atan2(y.lo,x.lo), atan2(y.hi,x.lo));
    } else if (x.hi < 0.0) {
        if (y.lo == 0.0 && y.hi == 0.0) {
            return I_FROM(PI);
        }
        if (y.lo >= 0.0) {
            return Interval(atan2(y.hi, x.hi), atan2(y.lo,x.lo));
        }
        if (y.hi < 0.0) { // hmm
            return Interval(atan2(y.hi, x.lo), atan2(y.lo,x.hi));
        }
        return range_atan;
    } else {
        if (x.lo == 0.0) {
            if (y.lo == 0.0 && y.hi == 0.0) {
                return y;
            }
            if (y.lo >= 0.0) {
                return Interval(atan2(y.lo,x.hi), half_range_atan.hi);
            }
            if (y.hi <= 0.0) {
                return Interval(half_range_atan.lo, atan2(y.hi,x.hi));
            }
            return half_range_atan;
        } else if (x.hi == 0.0) {
            if (y.lo == 0.0 && y.hi == 0.0) {
                return I_FROM(PI);
            }
            if (y.lo >= 0.0) {
                return Interval(HALFPI, atan2(y.lo,x.lo));
            }
            if (y.hi < 0.0) { // hmm
                return Interval(atan2(y.hi,x.lo), -HALFPI);
            }
            return range_atan;
        } else {
            if (y.lo >= 0.0) {
                return Interval(atan2(y.lo,x.hi), atan2(y.lo,x.lo));
            }
            if (y.hi < 0.0) { // hmm
                return Interval(atan2(y.hi,x.lo), atan2(y.hi,x.hi));
            }
            return range_atan;
        }
    }
    return range_atan;
}

fn ATAN2_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    return array<Interval,2>(
        DIV_II(NEG_I(larg), ADD_II(SQR_I(rarg), SQR_I(larg))),
        DIV_II(rarg, ADD_II(SQR_I(rarg), SQR_I(larg)))
    );
}

// reverse rule
fn SQR_I_RR(larg: Interval) -> Interval {
    return MUL_IF(larg, 2.0);
}


fn MOD_II(a: Interval, b: Interval) -> Interval {
    return SUB_II(a, MUL_II(b, FLOOR_I(DIV_II(a,b))));
}

fn MOD_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    var a = FLOOR_I(DIV_II(larg, rarg));
    return array<Interval,2>(I_FROM(1.0), NEG_I(ADD_II(a, MUL_II(rarg, FLOOR_I_RR(a)))));
}

// ASSUMES b LOWER AND UPPER ARE THE SAME INTEGER
fn POW_II(a: Interval, b: Interval) -> Interval {
    var power = i32(round(b.lo));
    var powerf = f32(power);
    var lower = 0.0;
    var higher = 0.0;
    var n = power;

    if (a.lo <= 0.0) {
        if (power % 2 == 0) {
            lower = pow(-a.lo, powerf);
        } else {
            lower = -pow(-a.lo, powerf);
        }
    } else {
        lower = pow(a.lo, powerf);
    }

    if (a.hi <= 0.0) {
        if (power % 2 == 0) {
            higher = pow(-a.hi, powerf);
        } else {
            higher = -pow(-a.hi, powerf);
        }
    } else {
        higher = pow(a.hi, powerf);
    }

    if (I_CONTAINS_ZERO(a)) {
        return Interval(0.0, max(lower, higher));
    } 
    return Interval(min(lower, higher), max(lower, higher));
}

fn POW_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    return array<Interval,2>(MUL_II(rarg, POW_II(larg, SUB_IF(rarg, 1.0))), MUL_II(POW_II(larg, rarg), LOG_I(larg)));
}

fn LOG_I_RR(larg: Interval) -> Interval {
    return DIV_II(I_FROM(1.0), larg);
}

fn EXP_I_RR(larg: Interval) -> Interval {
    return EXP_I(larg);
}

fn NEG_I_RR(larg: Interval) -> Interval {
    return I_FROM(-1.0);
}

fn SQRT_I_RR(larg: Interval) -> Interval {
    // return I_FROM(1.0);
    var res = DIV_II(I_FROM(1.0), MUL_IF(SQRT_I(larg), 2.0));
    res.hi = min(res.hi, BIG());
    return res;
}

fn MIN_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    if (larg.hi < rarg.lo) {
        return array<Interval,2>(I_FROM(1.0), I_FROM(0.0));
    } else if (rarg.hi < larg.lo) {
        return array<Interval,2>(I_FROM(0.0), I_FROM(1.0));
    } else {
        return array<Interval,2>(I_FROM(1.0), I_FROM(1.0));
    }
}

fn MAX_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    if (larg.hi < rarg.lo) {
        return array<Interval,2>(I_FROM(0.0), I_FROM(1.0));
    } else if (rarg.hi < larg.lo) {
        return array<Interval,2>(I_FROM(1.0), I_FROM(0.0));
    } else {
        return array<Interval,2>(I_FROM(1.0), I_FROM(1.0));
    }
}

fn MUL_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    return array<Interval,2>(rarg, larg);
}

fn DIV_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    return array<Interval,2>(DIV_II(I_FROM(1.0), rarg), NEG_I(DIV_II(larg, SQR_I(rarg))));
}

fn ADD_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    return array<Interval,2>(I_FROM(1.0), I_FROM(1.0));
}

fn SUB_II_RR(larg: Interval, rarg: Interval) -> array<Interval, 2> {
    return array<Interval,2>(I_FROM(1.0), I_FROM(-1.0));
}

fn mymod(x:f32, y:f32) -> f32 {
    return x - y * floor(x/y);
}

// https://github.com/JuliaIntervals/IntervalArithmetic.jl/blob/master/src/intervals/trigonometric.jl
fn SIN_I(a: Interval) -> Interval {
    var whole_range = Interval(-1.0, 1.0);

    if (DIAMETER(a) > TWOPI) {
        return whole_range;
    }

    var lo_quadrant = floor(a.lo / HALFPI);
    var hi_quadrant = floor(a.hi / HALFPI);

    if (hi_quadrant - lo_quadrant > 4.0) {
        return whole_range;
    }

    lo_quadrant = mymod(lo_quadrant,4.0);
    hi_quadrant = mymod(hi_quadrant,4.0);

    if (lo_quadrant == hi_quadrant) {
        if (a.hi - a.lo > PI) {
            return whole_range;
        }
        return I_FROM_UNORDERED(sin(a.lo), sin(a.hi));
    } else if ((lo_quadrant == 3.0 && hi_quadrant == 0.0) || (lo_quadrant == 1.0 && hi_quadrant == 2.0)) {
        return I_FROM_UNORDERED(sin(a.lo), sin(a.hi));
    } else if ((lo_quadrant == 0.0 || lo_quadrant == 3.0) && (hi_quadrant == 1.0 || hi_quadrant == 2.0)) {
        return Interval(min(sin(a.lo), sin(a.hi)), 1.0);
    } else if ((lo_quadrant == 1.0 || lo_quadrant == 2.0) && (hi_quadrant == 3.0 || hi_quadrant == 0.0)) {
        return Interval(-1.0, max(sin(a.lo), sin(a.hi)));
    } else {
        return whole_range;
    }
}

fn COS_I(a: Interval) -> Interval {
    return SIN_I(ADD_II(a, I_FROM(HALFPI)));
}


fn SIN_I_RR(larg: Interval) -> Interval {
    return COS_I(larg);
}

fn COS_I_RR(larg: Interval) -> Interval {
    return NEG_I(SIN_I(larg));
}

fn bisect(a: Interval) -> array<Interval,2> {
    var mid = (a.lo + a.hi) / 2.0;
    return array<Interval,2>(Interval(a.lo, mid), Interval(mid, a.hi));
}

// Utils

fn pack2x16(a: u32, b: u32) -> u32 {
    return (a<<16u) | b;
}

fn unpack2x16(a: u32) -> vec2<u32> {
    var x = a >> 16u; // spec says this inserts zeros on the left
    var y = a & 65535u;
    return vec2<u32>(x,y);
}

struct GPUInstruction {
    index_: u32,
    opcode_uses: u32, // opcode and uses spliced together
    larg_rarg: u32, // left and right arg spliced together
    literal: f32, // constant
    val: Interval,
    sens: Interval,
};

struct Tape {
    instruction_count: u32,
    instructions: array<GPUInstruction, 4096>,
};

struct Voxel {
    x: Interval,
    y: Interval,
    z: Interval,
    t: f32,
    child_count: u32,
    children: array<u32, 8>,
    f: f32,
    dx: f32,
    dy: f32,
    dz: f32,
    time_err: f32,
    fast: f32,
};

struct Tapes {
    tapes: array<Tape>, // a flattened tree of tapes, tapes are linked together via parent/children pointers
};

struct Voxels {
    voxels: array<Voxel>, // a flattened tree of tapes, tapes are linked together via parent/children pointers
};

struct Stack1 {
    vals: array<u32, 64>,
    pointer: u32,
};

struct WorkGroupMemory {
    parent_voxel_index: atomic<u32>,
    last_memory_start: atomic<u32>,
    ambiguous_siblings: atomic<u32>,
    cur_instruction_index: atomic<u32>,
    dealloc: atomic<u32>,
    stacks: array<Stack1, 32>,
    child_indices: array<atomic<u32>, 8>,
};

struct Memory {
    start_of_empty_tape: atomic<u32>,
    work_left: atomic<u32>,
    start_of_empty_voxel: atomic<u32>,
    allocated_tapes: atomic<u32>,
    test: atomic<u32>,
    allocated_voxels: atomic<u32>,
};

// Broker Queue

struct BrokerQueue {
    ringbuffer: array<atomic<u32>, 33554432>,
    tickets: array<atomic<u32>, 33554432>,
    head: atomic<u32>, // should start 0
    tail: atomic<u32>, // should start 1
    count: atomic<i32>, // should start 1
};

let N = 33554432u; // ringbuffer length, at most 2^16
let MaxThreads = 1048576u; // workgroup_size * dispatched amount
let failure = 4294967295u; // max u32

// NOTE: The compiler deletes these if they're unused

@group(0) @binding(0)
var<storage, read_write> tapes: Tapes;

var<workgroup> workgroup_memory: WorkGroupMemory;

@group(0) @binding(1)
var<storage, read_write> memory: Memory;

@group(0) @binding(2)
var<storage, read_write> brokerqueue: BrokerQueue;

@group(0) @binding(6)
var<storage, read_write> voxels: Voxels;

@group(0) @binding(7)
var<storage, read_write> tapememoryqueue: BrokerQueue;

@group(0) @binding(8)
var<storage, read_write> voxelmemoryqueue: BrokerQueue;

@group(0) @binding(9)
var<storage, read_write> voxels2: Voxels;

// tape queue below

fn ensureEnqueueT() -> bool {
    var num = atomicLoad(&tapememoryqueue.count);
    var ensurance = false;

    loop {
        if (ensurance || num >= i32(N)) {
            break;
        }
        ensurance = atomicAdd(&tapememoryqueue.count, 1) < i32(N);
        if (!ensurance) {
            num = atomicSub(&tapememoryqueue.count, 1) - 1;
        }
    }
    return ensurance;
}

fn ensureDequeueT() -> bool {
    var num = atomicLoad(&tapememoryqueue.count);
    var ensurance = false;

    loop {
        if (ensurance || num <= 0) {
            break;
        }
        ensurance = atomicSub(&tapememoryqueue.count, 1) > 0;
        if (!ensurance) {
            num = atomicAdd(&tapememoryqueue.count, 1) + 1;
        }
    }
    return ensurance;
}

fn waitForTicketT(pos: u32, expected_ticket: u32) {
    loop {
        storageBarrier();

        if (atomicLoad(&tapememoryqueue.tickets[pos]) == expected_ticket) {
            break;
        }
    }
}

fn putDataT(element: u32) {
    var pos = atomicAdd(&tapememoryqueue.tail, 1u);
    var p = pos % N;
    waitForTicketT(p, 2u*(pos/N));
    tapememoryqueue.ringbuffer[p] = element;
    storageBarrier();
    atomicStore(&tapememoryqueue.tickets[p], 2u * (pos/N) + 1u);
}

fn readDataT() -> u32 {
    var pos = atomicAdd(&tapememoryqueue.head, 1u);
    var p = pos % N;
    waitForTicketT(p, 2u*(pos/N) + 1u);
    var element = tapememoryqueue.ringbuffer[p];
    storageBarrier();
    atomicStore(&tapememoryqueue.tickets[p], 2u*((pos+N)/N));
    return element;
}

fn enqueueT(element: u32) -> bool {
    loop {
        if (ensureEnqueueT()) {
            break;
        }
        var head = atomicLoad(&tapememoryqueue.head);
        var tail = atomicLoad(&tapememoryqueue.tail);
        if (N <= (tail-head) && (tail-head) < N + (MaxThreads/2u)) {
            return false;
        }

        storageBarrier();
    }
    putDataT(element);
    return true;
}

fn dequeueT() -> u32 {
    loop {
        if (ensureDequeueT()) {
            break;
        }
        var head = atomicLoad(&tapememoryqueue.head);
        var tail = atomicLoad(&tapememoryqueue.tail);

        if (N + (MaxThreads/2u) <= (tail-head) - 1u) {
            return failure;
        }

        storageBarrier();
    }
    return readDataT();
}

// work queue below

fn ensureEnqueue() -> bool {
    var num = atomicLoad(&brokerqueue.count);
    var ensurance = false;

    loop {
        if (ensurance || num >= i32(N)) {
            break;
        }
        ensurance = atomicAdd(&brokerqueue.count, 1) < i32(N);
        if (!ensurance) {
            num = atomicSub(&brokerqueue.count, 1) - 1;
        }
    }
    return ensurance;
}

fn ensureDequeue() -> bool {
    var num = atomicLoad(&brokerqueue.count);
    var ensurance = false;

    loop {
        if (ensurance || num <= 0) {
            break;
        }
        ensurance = atomicSub(&brokerqueue.count, 1) > 0;
        if (!ensurance) {
            num = atomicAdd(&brokerqueue.count, 1) + 1;
        }
    }
    return ensurance;
}

fn waitForTicket(pos: u32, expected_ticket: u32) {
    loop {
        storageBarrier();

        if (atomicLoad(&brokerqueue.tickets[pos]) == expected_ticket) {
            break;
        }
    }
}

fn putData(element: u32) {
    var pos = atomicAdd(&brokerqueue.tail, 1u);
    var p = pos % N;
    waitForTicket(p, 2u*(pos/N));
    brokerqueue.ringbuffer[p] = element;
    storageBarrier();
    atomicStore(&brokerqueue.tickets[p], 2u * (pos/N) + 1u);
}

fn readData() -> u32 {
    var pos = atomicAdd(&brokerqueue.head, 1u);
    var p = pos % N;
    waitForTicket(p, 2u*(pos/N) + 1u);
    var element = brokerqueue.ringbuffer[p];
    storageBarrier();
    atomicStore(&brokerqueue.tickets[p], 2u*((pos+N)/N));
    return element;
}

fn enqueue(element: u32) -> bool {
    loop {
        if (ensureEnqueue()) {
            break;
        }
        var head = atomicLoad(&brokerqueue.head);
        var tail = atomicLoad(&brokerqueue.tail);
        if (N <= (tail-head) && (tail-head) < N + (MaxThreads/2u)) {
            return false;
        }

        storageBarrier();
    }
    putData(element);
    return true;
}

fn dequeue() -> u32 {
    loop {
        if (ensureDequeue()) {
            break;
        }
        var head = atomicLoad(&brokerqueue.head);
        var tail = atomicLoad(&brokerqueue.tail);

        if (N + (MaxThreads/2u) <= (tail-head) - 1u) {
            return failure;
        }

        storageBarrier();
    }
    atomicAdd(&memory.work_left, 1u); // different
    return readData();
}

// voxel queue below

fn ensureEnqueueV() -> bool {
    var num = atomicLoad(&voxelmemoryqueue.count);
    var ensurance = false;

    loop {
        if (ensurance || num >= i32(N)) {
            break;
        }
        ensurance = atomicAdd(&voxelmemoryqueue.count, 1) < i32(N);
        if (!ensurance) {
            num = atomicSub(&voxelmemoryqueue.count, 1) - 1;
        }
    }
    return ensurance;
}

fn ensuredequeueV() -> bool {
    var num = atomicLoad(&voxelmemoryqueue.count);
    var ensurance = false;

    loop {
        if (ensurance || num <= 0) {
            break;
        }
        ensurance = atomicSub(&voxelmemoryqueue.count, 1) > 0;
        if (!ensurance) {
            num = atomicAdd(&voxelmemoryqueue.count, 1) + 1;
        }
    }
    return ensurance;
}

fn waitforTicketV(pos: u32, expected_ticket: u32) {
    loop {
        storageBarrier();

        if (atomicLoad(&voxelmemoryqueue.tickets[pos]) == expected_ticket) {
            break;
        }
    }
}

fn putDataV(element: u32) {
    var pos = atomicAdd(&voxelmemoryqueue.tail, 1u);
    var p = pos % N;
    waitforTicketV(p, 2u*(pos/N));
    voxelmemoryqueue.ringbuffer[p] = element;
    storageBarrier();
    atomicStore(&voxelmemoryqueue.tickets[p], 2u * (pos/N) + 1u);
}

fn readDataV() -> u32 {
    var pos = atomicAdd(&voxelmemoryqueue.head, 1u);
    var p = pos % N;
    waitforTicketV(p, 2u*(pos/N) + 1u);
    var element = voxelmemoryqueue.ringbuffer[p];
    storageBarrier();
    atomicStore(&voxelmemoryqueue.tickets[p], 2u*((pos+N)/N));
    return element;
}

fn enqueueV(element: u32) -> bool {
    loop {
        if (ensureEnqueueV()) {
            break;
        }
        var head = atomicLoad(&voxelmemoryqueue.head);
        var tail = atomicLoad(&voxelmemoryqueue.tail);
        if (N <= (tail-head) && (tail-head) < N + (MaxThreads/2u)) {
            return false;
        }

        storageBarrier();
    }
    putDataV(element);
    return true;
}

fn dequeueV() -> u32 {
    loop {
        if (ensuredequeueV()) {
            break;
        }
        var head = atomicLoad(&voxelmemoryqueue.head);
        var tail = atomicLoad(&voxelmemoryqueue.tail);

        if (N + (MaxThreads/2u) <= (tail-head) - 1u) {
            return failure;
        }

        storageBarrier();
    }
    return readDataV();
}

// pruning stack ops

fn push_s(i: u32, val: u32) -> bool {
    if (workgroup_memory.stacks[i].pointer == 16u) {
        return false;
    }
    workgroup_memory.stacks[i].vals[workgroup_memory.stacks[i].pointer] = val;
    workgroup_memory.stacks[i].pointer = workgroup_memory.stacks[i].pointer + 1u;
    return true;
}

fn pop_s(i: u32) -> u32 {
    if (workgroup_memory.stacks[i].pointer == 0u) {
        return failure;
    }
    workgroup_memory.stacks[i].pointer = workgroup_memory.stacks[i].pointer - 1u;
    return workgroup_memory.stacks[i].vals[workgroup_memory.stacks[i].pointer];
}

fn peak_s(i: u32) -> u32 {
    if (workgroup_memory.stacks[i].pointer == 0u) {
        return failure;
    }
    return workgroup_memory.stacks[i].vals[workgroup_memory.stacks[i].pointer - 1u];
}

fn isempty_s(i: u32) -> bool {
    return workgroup_memory.stacks[i].pointer == 0u;
}

fn clear_s(i: u32) {
    workgroup_memory.stacks[i].pointer = 0u;
}

struct Pixels {
    pixels: array<vec4<f32>>,
};

struct Uniforms {
    view: mat4x4<f32>,
    resolution: vec2<u32>,
    time: f32,
    lasttime: f32,
    rendermode: f32,
    _padding: f32,
    _padding2: f32,
    _padding3: f32,
};


@group(0) @binding(3)
var<storage, read_write> pixels: Pixels;

@group(0) @binding(4)
var<uniform> uniforms: Uniforms;

fn mallocV() -> u32 {
    var address = dequeueV();
    if (address == failure) {
        address = atomicAdd(&memory.start_of_empty_voxel, 1u) + 1u;
    }

    voxels.voxels[address].child_count = 0u;
    voxels.voxels[address].f = 1.0;
    voxels.voxels[address].t = 0.0;
    voxels.voxels[address].time_err = 0.0;
    voxels.voxels[address].fast = 0.0;
    atomicAdd(&memory.allocated_voxels, 1u);
    return address;
}

fn freeV(address: u32) {
    voxels.voxels[address].child_count = 0u;
    voxels.voxels[address].f = 0.0;
    voxels.voxels[address].t = 0.0;
    voxels.voxels[address].time_err = 0.0;
    voxels.voxels[address].fast = 0.0;
    atomicSub(&memory.allocated_voxels, 1u);
    enqueueV(address);
}

fn fix(x: Interval) -> Interval {
    var lo = x.lo;
    var hi = x.hi;
    if (is_nan(x.hi)) {
        hi = BIG();
    }
    if (is_nan(x.lo)) {
        lo = -BIG();
    }
    return Interval(max(lo, -BIG()),min(hi,BIG()));
}

fn lipschitz_contraction(domain: Interval, range: Interval, lower_lipschitz_bound: f32, iso: f32) -> Interval {
    var I = domain;
    if (!I_CONTAINS_X(range, iso)) {
        return I;
    }
    if (lower_lipschitz_bound > 0.0){
        var a = (iso-range.lo)/lower_lipschitz_bound + domain.lo;
        var b = (iso-range.hi)/lower_lipschitz_bound + domain.hi;
        // I = Interval(I.lo, a);
        I = Interval(b,a);
    } else if (lower_lipschitz_bound < 0.0) {
        var c = (iso-range.lo)/lower_lipschitz_bound + domain.hi;
        var d = (iso-range.hi)/lower_lipschitz_bound + domain.lo;
        // I = Interval(c, I.hi);
        I = Interval(c,d);
    }
    I = CAP_II(I, domain);
    return I;
}

// PARAMETERS

// world gets split into (split_fac^subdivions)^3 voxels
let split_fac: i32 = 2;
let sweptvolume = false;
let cinematic = false;
let point_sample = true;
let localsubdiv = 8; // controls octree resolution
let delta = 0.01;
let normal_viz = false; // normals visualization
let fast_normals = true;
let scene = 3; // 3=sponza blob, 4=newton's cradle, 5=piano wave, 9=spaghetti
let see_background = false;
let totalsamples = 8;
let fast_multiplier = 1.0;
let octree_darken_factor = 0.98;
let fastenabled = true;
let lipschitz_corrected = false;

@compute @workgroup_size(2,2,2)
fn main(
    @builtin(global_invocation_id) global_id: vec3<u32>,
    @builtin(local_invocation_id) local_id: vec3<u32>, // set by workgroup_size
    @builtin(workgroup_id) workgroup_id: vec3<u32>, // workgroup id
    @builtin(local_invocation_index) local_index: u32, // linearized local_id
    @builtin(num_workgroups) num_workgroups: vec3<u32>,
) {
    var epsilon = 10.0 * pow(1.0/f32(split_fac), f32(localsubdiv));

    var global_index = workgroup_id.x * 8u + local_index;

    loop {
        // first thread in warp grabs from the queue
        if (local_index == 0u) {
            var deq = dequeue();

            atomicStore(&workgroup_memory.parent_voxel_index, deq & ~(1u<<31u)); // the memory location of the parent voxel (to be subdivided)
            atomicStore(&workgroup_memory.dealloc, deq >> 31u); // if 1, then indicates a dealloc

            if (deq != failure && atomicLoad(&workgroup_memory.dealloc) == 1u) { // means dealloc
                if (voxels.voxels[workgroup_memory.parent_voxel_index].child_count != 0u) {
                    voxels.voxels[workgroup_memory.parent_voxel_index].child_count = 0u;
                    for (var j=0u; j<8u; j=j+1u) {
                        enqueue(voxels.voxels[workgroup_memory.parent_voxel_index].children[j] | (1u<<31u));
                    }
                }
                freeV(workgroup_memory.parent_voxel_index);
                atomicSub(&memory.work_left, 1u);
                atomicStore(&workgroup_memory.parent_voxel_index, failure & ~(1u<<31u)); // forces an immediate continue on all threads in warp
            }
        }
        
        storageBarrier();
        workgroupBarrier();

        // don't kill thread until all threads in group are finished
        if (atomicLoad(&workgroup_memory.parent_voxel_index) == (failure & ~(1u<<31u))) {
            if (atomicLoad(&memory.work_left) == 0u) {
                return;
            } else {
                continue;
            }
        }

        var parent_voxel_index = workgroup_memory.parent_voxel_index; // the memory location of the voxel to be subdivided
        var parent_tape_index = 0u; // always read full program from root voxel (no pruning)

        var cur_voxel_index = 0u; // location of current subvoxel
        var cur_tape_index = global_index + 1u; // place to execute current subvoxel

        var new_voxel = voxels.voxels[parent_voxel_index].child_count == 0u;
        if (new_voxel) {
            if (local_index == 0u) {
                for (var j=0; j<8; j=j+1) {
                    atomicStore(&workgroup_memory.child_indices[j], mallocV()); // note mallocV clears all voxel fields for us
                }
            }

            workgroupBarrier();

            cur_voxel_index = atomicLoad(&workgroup_memory.child_indices[local_index]);
        } else { 
            cur_voxel_index = voxels.voxels[parent_voxel_index].children[local_id.x + local_id.y*u32(split_fac) + local_id.z*u32(split_fac)*u32(split_fac)];
        }

        voxels.voxels[parent_voxel_index].child_count = 1u; // so raytracer knows parent is not a leaf
        voxels.voxels[parent_voxel_index].children[local_id.x + local_id.y*u32(split_fac) + local_id.z*u32(split_fac)*u32(split_fac)] = cur_voxel_index; // tell parent about child
        
        var dx = DIAMETER(voxels.voxels[parent_voxel_index].x) / f32(split_fac);
        var dy = DIAMETER(voxels.voxels[parent_voxel_index].y) / f32(split_fac);
        var dz = DIAMETER(voxels.voxels[parent_voxel_index].z) / f32(split_fac);
        var width = max(dx, max(dy, dz));

        var cur_x = Interval((voxels.voxels[parent_voxel_index].x).lo + dx*f32(local_id.x), (voxels.voxels[parent_voxel_index].x).lo + dx*f32(1u+local_id.x));
        var cur_y = Interval((voxels.voxels[parent_voxel_index].y).lo + dy*f32(local_id.y), (voxels.voxels[parent_voxel_index].y).lo + dy*f32(1u+local_id.y));
        var cur_z = Interval((voxels.voxels[parent_voxel_index].z).lo + dz*f32(local_id.z), (voxels.voxels[parent_voxel_index].z).lo + dz*f32(1u+local_id.z));

        // copy args and zero their gradients
        for (var j=0u; j<4u; j = j + 1u) {
            tapes.tapes[cur_tape_index].instructions[j] = tapes.tapes[parent_tape_index].instructions[j];
            tapes.tapes[cur_tape_index].instructions[j].sens = I_FROM(0.0);
        }

        // set voxel bounds
        voxels.voxels[cur_voxel_index].x = cur_x;
        voxels.voxels[cur_voxel_index].y = cur_y;
        voxels.voxels[cur_voxel_index].z = cur_z;
        var cur_t = I_FROM(0.0);

        if (new_voxel || voxels.voxels[parent_voxel_index].fast == 1.0 || width <= epsilon) {
            if (sweptvolume) {
                cur_t = Interval(uniforms.time - 1.0/60.0, uniforms.time); // between last time and now
            } else {
                cur_t = I_FROM(uniforms.time);
            }

            voxels.voxels[cur_voxel_index].fast = 0.0;
        } else {
            cur_t = Interval(voxels.voxels[cur_voxel_index].t, uniforms.time);
        }
        voxels.voxels[cur_voxel_index].t = uniforms.time;

        if (point_sample && width <= epsilon) { // point sample the center of small voxels
            cur_x = I_FROM(MID(cur_x));
            cur_y = I_FROM(MID(cur_y));
            cur_z = I_FROM(MID(cur_z));
            width = 0.0;
        }
        tapes.tapes[cur_tape_index].instructions[0].val = cur_x;
        tapes.tapes[cur_tape_index].instructions[1].val = cur_y;
        tapes.tapes[cur_tape_index].instructions[2].val = cur_z;
        tapes.tapes[cur_tape_index].instructions[3].val = I_FROM_UNORDERED(cur_t.lo, cur_t.hi); // need this if want use input / to go back in time
        tapes.tapes[cur_tape_index].instruction_count = tapes.tapes[parent_tape_index].instruction_count;

        // don't subdivide interior of swept volume
        if (new_voxel || voxels.voxels[cur_voxel_index].f >= 0.0 || voxels.voxels[cur_voxel_index].child_count == 0u) {
            var discontinuous = false;

            // forward evaluation
            for (var j=4u; j<tapes.tapes[cur_tape_index].instruction_count; j=j+1u) {

                var opcode_uses = unpack2x16(tapes.tapes[parent_tape_index].instructions[j].opcode_uses);
                var larg_rarg = unpack2x16(tapes.tapes[parent_tape_index].instructions[j].larg_rarg);

                var op = opcode_uses.x & ~(3u<<14u);
                var op_top = (opcode_uses.x >> 14u);
                var val = I_FROM(0.0);

                switch (op_top) {
                    case 1u: { // larg is a register, rarg is a literal
                        var larg = tapes.tapes[cur_tape_index].instructions[larg_rarg.x].val;
                        var rarg = tapes.tapes[parent_tape_index].instructions[j].literal;

                        switch (op) {
                            case 11u: {
                                val = SQR_I(larg);
                            }
                            case 12u: {
                                val = SQRT_I(larg);
                            }
                            case 9u: {
                                val = EXP_I(larg);
                            }
                            case 10u: {
                                val = LOG_I(larg);
                            }
                            case 16u: {
                                val = NEG_I(larg);
                            }
                            case 19u: {
                                val = ABS_I(larg);
                            }
                            case 25u: {
                                val = FLOOR_I(larg);
                            }
                            case 14u: {
                                val = SIN_I(larg);
                            }
                            case 15u: {
                                val = COS_I(larg);
                            }
                            case 5u: {
                                val = ADD_IF(larg, rarg);
                            }
                            case 6u: {
                                val = SUB_IF(larg, rarg);
                            }
                            case 8u: {
                                val = DIV_IF(larg, rarg);
                            }
                            case 7u: {
                                val = MUL_IF(larg, rarg);
                            }
                            case 17u: {
                                val = MIN_IF(larg, rarg);
                            }
                            case 18u: {
                                val = MAX_IF(larg, rarg);
                            }
                            case 13u: {
                                val = POW_II(larg, I_FROM(rarg));
                            }
                            case 28u: {
                                val = larg;
                            }
                            case 29u: {
                                val = MOD_II(larg, I_FROM(rarg));
                            }
                            case 30u: {
                                val = ATAN2_II(larg, I_FROM(rarg));
                            }
                            default: {
                                val = I_FROM(-1.0 / 0.0);
                            }
                        }
                    }
                    case 0u: { // both larg and rarg are registers
                        var larg = tapes.tapes[cur_tape_index].instructions[larg_rarg.x].val;
                        var rarg = tapes.tapes[cur_tape_index].instructions[larg_rarg.y].val;

                        switch (op) {
                            case 5u: {
                                val = ADD_II(larg, rarg);
                            }
                            case 6u: {
                                val = SUB_II(larg, rarg);
                            }
                            case 8u: {
                                val = DIV_II(larg, rarg);
                            }
                            case 7u: {
                                val = MUL_II(larg, rarg);
                            }
                            case 17u: {
                                val = MIN_II(larg, rarg);
                            }
                            case 18u: {
                                val = MAX_II(larg, rarg);
                            }
                            case 13u: {
                                val = POW_II(larg, rarg);
                            }
                            case 29u: {
                                val = MOD_II(larg, rarg);
                            }
                            case 30u: {
                                val = ATAN2_II(larg, rarg);
                            }
                            case 0u: {
                                val = I_FROM(tapes.tapes[parent_tape_index].instructions[j].literal);
                            }
                            default: {
                                val = I_FROM(-1.0 / 0.0);
                            }
                        }
                    }
                    case 2u: { // larg is a literal, rarg is a register
                        var larg = tapes.tapes[parent_tape_index].instructions[j].literal;
                        var rarg = tapes.tapes[cur_tape_index].instructions[larg_rarg.y].val;
                        switch (op) {
                            case 6u: {
                                val = SUB_II(I_FROM(larg), rarg); // should be SUB_FI
                            }
                            case 8u: {
                                val = DIV_II(I_FROM(larg), rarg); // should be DIV_FI
                            }
                            default: {
                                val = I_FROM(-1.0 / 0.0);
                            }
                        }
                    }
                    default: {}
                }

                val = fix(val);
                tapes.tapes[cur_tape_index].instructions[j] = tapes.tapes[parent_tape_index].instructions[j];
                tapes.tapes[cur_tape_index].instructions[j].val = val;
                tapes.tapes[cur_tape_index].instructions[j].sens = I_FROM(0.0);
            }

            var field_interval = tapes.tapes[cur_tape_index].instructions[tapes.tapes[cur_tape_index].instruction_count - 1u].val;

            // set gradient of output to 1
            tapes.tapes[cur_tape_index].instructions[tapes.tapes[cur_tape_index].instruction_count - 1u].sens = I_FROM(1.0);

            // reverse autodiff pass
            var take_derivative = (cur_t.lo != cur_t.hi) || (fast_normals == false && (normal_viz || cinematic));

            var df = I_FROM(0.0);
            var df_dt = I_FROM(0.0);

            if (take_derivative) { 
                for (var j=tapes.tapes[cur_tape_index].instruction_count - 1u; j>=4u; j=j - 1u) {
                    var opcode_uses = unpack2x16(tapes.tapes[parent_tape_index].instructions[j].opcode_uses);
                    var larg_rarg = unpack2x16(tapes.tapes[parent_tape_index].instructions[j].larg_rarg);

                    var op = opcode_uses.x & ~(3u<<14u);
                    var op_top = (opcode_uses.x >> 14u);

                    var larg_uses = unpack2x16(tapes.tapes[parent_tape_index].instructions[larg_rarg.x].opcode_uses);
                    var rarg_uses = unpack2x16(tapes.tapes[parent_tape_index].instructions[larg_rarg.y].opcode_uses);

                    switch (op_top) {
                        case 1u: { // larg is a register, rarg is a literal
                            var larg = tapes.tapes[cur_tape_index].instructions[larg_rarg.x].val;
                            var rarg = tapes.tapes[parent_tape_index].instructions[j].literal;
                            var sens: Interval;

                            if (tapes.tapes[cur_tape_index].instructions[j].sens.lo == 0.0 
                            && tapes.tapes[cur_tape_index].instructions[j].sens.hi == 0.0
                            && larg_uses.y == 1u) {
                                tapes.tapes[cur_tape_index].instructions[larg_rarg.x].sens = I_FROM(0.0);
                            } else {
                            // if (true) {

                            switch(op) {
                                case 11u: {
                                    sens = SQR_I_RR(larg);
                                }
                                case 12u: {
                                    sens = SQRT_I_RR(larg);
                                }
                                case 16u: {
                                    sens = NEG_I_RR(larg);
                                }
                                case 14u: {
                                    sens = SIN_I_RR(larg);
                                }
                                case 15u: {
                                    sens = COS_I_RR(larg);
                                }
                                case 5u: {
                                    sens = ADD_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 6u: {
                                    sens = SUB_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 7u: {
                                    sens = MUL_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 8u: {
                                    sens = DIV_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 9u: {
                                    sens = EXP_I_RR(larg);
                                }
                                case 10u: {
                                    sens = LOG_I_RR(larg);
                                }
                                case 25u: {
                                    sens = FLOOR_I_RR(larg);
                                }
                                case 19u: {
                                    sens = ABS_I_RR(larg);
                                }
                                case 17u: {
                                    sens = MIN_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 18u: {
                                    sens = MAX_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 13u: {
                                    sens = POW_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 28u: {
                                    sens = I_FROM(1.0);
                                }
                                case 29u: {
                                    sens = MOD_II_RR(larg, I_FROM(rarg))[0];
                                }
                                case 30u: {
                                    sens = ATAN2_II_RR(larg, I_FROM(rarg))[0];
                                }
                                default: {
                                    sens = I_FROM(-1.0 / 0.0);
                                }
                            }
                            sens = fix(sens);
                            sens = MUL_II(sens, tapes.tapes[cur_tape_index].instructions[j].sens);
                            sens = ADD_II(sens, tapes.tapes[cur_tape_index].instructions[larg_rarg.x].sens);
                            tapes.tapes[cur_tape_index].instructions[larg_rarg.x].sens = sens;
                            }
                        }
                        case 0u: { // both larg and rarg are registers
                            var larg = tapes.tapes[cur_tape_index].instructions[larg_rarg.x].val;
                            var rarg = tapes.tapes[cur_tape_index].instructions[larg_rarg.y].val;
                            var sens: array<Interval, 2>;

                            if (tapes.tapes[cur_tape_index].instructions[j].sens.lo == 0.0 
                            && tapes.tapes[cur_tape_index].instructions[j].sens.hi == 0.0
                            && larg_uses.y == 1u
                            && rarg_uses.y == 1u) {
                                tapes.tapes[cur_tape_index].instructions[larg_rarg.x].sens = I_FROM(0.0);
                                tapes.tapes[cur_tape_index].instructions[larg_rarg.y].sens = I_FROM(0.0);
                            } else {

                            switch(op) {
                                case 17u: {
                                    sens = MIN_II_RR(larg, rarg);
                                }
                                case 7u: {
                                    sens = MUL_II_RR(larg, rarg);
                                }
                                case 8u: {
                                    sens = DIV_II_RR(larg, rarg);
                                }
                                case 5u: {
                                    sens = ADD_II_RR(larg, rarg);
                                }
                                case 6u: {
                                    sens = SUB_II_RR(larg, rarg);
                                }
                                case 18u: {
                                    sens = MAX_II_RR(larg, rarg);
                                }
                                case 13u: {
                                    sens = POW_II_RR(larg, rarg);
                                }
                                case 30u: {
                                    sens = ATAN2_II_RR(larg, rarg);
                                }
                                case 0u: {
                                    sens = array<Interval,2>(I_FROM(0.0), I_FROM(0.0));
                                }
                                default: {
                                    sens = array<Interval,2>(I_FROM(-1.0 / 0.0), I_FROM(-1.0 / 0.0));
                                }
                            }
                            sens[0] = fix(sens[0]);
                            sens[1] = fix(sens[1]);

                            sens[0] = MUL_II(sens[0], tapes.tapes[cur_tape_index].instructions[j].sens);
                            sens[1] = MUL_II(sens[1], tapes.tapes[cur_tape_index].instructions[j].sens);
                            sens[0] = ADD_II(sens[0], tapes.tapes[cur_tape_index].instructions[larg_rarg.x].sens);
                            sens[1] = ADD_II(sens[1], tapes.tapes[cur_tape_index].instructions[larg_rarg.y].sens);
                            tapes.tapes[cur_tape_index].instructions[larg_rarg.x].sens = sens[0];
                            tapes.tapes[cur_tape_index].instructions[larg_rarg.y].sens = sens[1];
                            }
                        }
                        case 2u: { // larg is a literal, rarg is a register
                            var larg = tapes.tapes[parent_tape_index].instructions[j].literal;
                            var rarg = tapes.tapes[cur_tape_index].instructions[larg_rarg.y].val;
                            var sens: Interval;

                            if (tapes.tapes[cur_tape_index].instructions[j].sens.lo == 0.0 
                            && tapes.tapes[cur_tape_index].instructions[j].sens.hi == 0.0
                            && rarg_uses.y == 1u) {
                                tapes.tapes[cur_tape_index].instructions[larg_rarg.y].sens = I_FROM(0.0);
                            } else {

                            switch(op) {
                                case 6u: {
                                    sens = SUB_II_RR(I_FROM(larg), rarg)[1];
                                }
                                case 8u: {
                                    sens = DIV_II_RR(I_FROM(larg), rarg)[1];
                                }
                                default: {
                                    sens = I_FROM(-1.0 / 0.0);
                                }
                            }
                            sens = fix(sens);

                            sens = MUL_II(sens, tapes.tapes[cur_tape_index].instructions[j].sens);
                            sens = ADD_II(sens, tapes.tapes[cur_tape_index].instructions[larg_rarg.y].sens);
                            tapes.tapes[cur_tape_index].instructions[larg_rarg.y].sens = sens;
                            }
                        }
                        default: {}
                    }
                }

                // save normal vector in voxel
                voxels.voxels[cur_voxel_index].dx = MID(tapes.tapes[cur_tape_index].instructions[0].sens);
                voxels.voxels[cur_voxel_index].dy = MID(tapes.tapes[cur_tape_index].instructions[1].sens);
                voxels.voxels[cur_voxel_index].dz = MID(tapes.tapes[cur_tape_index].instructions[2].sens);

                // accumulate time_err
                df_dt = tapes.tapes[cur_tape_index].instructions[3].sens;
                var dt = DIAMETER(tapes.tapes[cur_tape_index].instructions[3].val);
                df = MUL_IF(df_dt, dt);
                
                var W = MUL_IF(Interval(-1.0,1.0), DIAMETER(field_interval));

                df = CAP_II(df, W);

                if (lipschitz_corrected && ABS_I(df).hi != 0.0) {
                    var lipschitz_bound = ABS_I(
                        SQRT_I(
                            ADD_II(SQR_I(tapes.tapes[cur_tape_index].instructions[0].sens), 
                            ADD_II(SQR_I(tapes.tapes[cur_tape_index].instructions[1].sens), 
                            SQR_I(tapes.tapes[cur_tape_index].instructions[2].sens))
                            )
                            )
                        ).lo;
                    if (!is_nan(lipschitz_bound)) {
                        df = DIV_IF(df, lipschitz_bound); // NO
                    }
                }
                if (df.lo == -1.0/0.0 || df.hi == 1.0/0.0 || is_nan(df.lo) || is_nan(df.hi)) {
                    df = I_FROM(delta);
                }
                voxels.voxels[cur_voxel_index].time_err = voxels.voxels[cur_voxel_index].time_err + clamp(ABS_I(df).hi, 0.0, delta);
            }

            workgroupBarrier();

            var thick = 0.0;
            
            if (!sweptvolume && fastenabled) {
                if (ABS_I(df).hi >= delta*fast_multiplier) {
                    voxels.voxels[cur_voxel_index].fast = 1.0;
                } else {
                    voxels.voxels[cur_voxel_index].fast = 0.0;
                }
            }

            if (I_CONTAINS_X(field_interval, delta*thick)) {
                voxels.voxels[cur_voxel_index].f = 0.0;
                var recursed = false;

                if (!recursed && width > epsilon) { // if internal voxel
                    if (new_voxel || is_nan(df_dt.lo) || is_nan(df_dt.hi) || abs(df_dt.lo) == INFINITY() || abs(df_dt.hi) == INFINITY()
                        || voxels.voxels[parent_voxel_index].fast == 1.0
                        || cur_t.lo == cur_t.hi
                        || voxels.voxels[cur_voxel_index].time_err >= delta
                        || voxels.voxels[cur_voxel_index].child_count == 0u
                        ) {

                        voxels.voxels[cur_voxel_index].time_err = 0.0;
                        enqueue(cur_voxel_index);
                    }
                }
            } else {
                if (field_interval.hi <= delta*thick) {
                    voxels.voxels[cur_voxel_index].f = -1.0;
                } else {
                    if (!sweptvolume) {
                        voxels.voxels[cur_voxel_index].f = 1.0;
                    }
                }

                if (!sweptvolume) {
                    // enqueue children for deallocation
                    if (voxels.voxels[cur_voxel_index].child_count != 0u) {
                        voxels.voxels[cur_voxel_index].child_count = 0u;
                        for (var j=0u; j<8u; j=j+1u) {
                            enqueue(voxels.voxels[cur_voxel_index].children[j] | (1u<<31u));
                        }
                    }
                }
            }

        }

        workgroupBarrier();

        if (local_index == 0u) {
            atomicSub(&memory.work_left, 1u);
        }

    }
}

// https://jcgt.org/published/0007/03/04/
fn efficient_slabs(p0: vec3<f32>, p1: vec3<f32>, ray_origin: vec3<f32>, inv_ray_dir: vec3<f32>) -> vec3<f32> {
    var t0 = (p0 - ray_origin) * inv_ray_dir;
    var t1 = (p1 - ray_origin) * inv_ray_dir;
    var tmin = min(t0, t1);
    var tmax = max(t0, t1);

    var dist1 = max_component(tmin);
    var dist2 = min_component(tmax);

    // .x is 1.0 if hit, 0.0 if no hit, .y is distance to close side, .z is distance to far side
    return vec3<f32>(f32(dist1 <= dist2 && dist2 >= 0.0), max(dist1, 0.0), max(dist2, 0.0));
}

// todo: stack

struct Stack {
    vals: array<u32, 16>,
    pointer: u32,
};

var<private> stack: Stack;

fn push(val: u32) -> bool {
    if (stack.pointer == 16u) {
        return false;
    }
    stack.vals[stack.pointer] = val;
    stack.pointer = stack.pointer + 1u;
    return true;
}

fn pop() -> u32 {
    if (stack.pointer == 0u) {
        return failure;
    }
    stack.pointer = stack.pointer - 1u;
    return stack.vals[stack.pointer];
}

fn peak() -> u32 {
    if (stack.pointer == 0u) {
        return failure;
    }
    return stack.vals[stack.pointer - 1u];
}

fn isempty() -> bool {
    return stack.pointer == 0u;
}

fn smoothstep(edge0: f32, edge1: f32, x: f32) -> f32 {
    var t = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0);
    return t * t * (3.0 - 2.0 * t);
}

fn mysmoothstep(a: f32, b: f32, t: f32) -> f32 {
    return a + (b-a) * smoothstep(0.0, 1.0, clamp(t, 0.0, 1.0));
}

fn mylerp(a: f32, b: f32, t: f32) -> f32 {
    return mix(a, b, clamp(t, 0.0, 1.0));
}

fn mylerpvec(a: vec3<f32>, b: vec3<f32>, t: f32) -> vec3<f32> {
    return vec3<f32>(mylerp(a.x, b.x, t), mylerp(a.y, b.y, t), mylerp(a.z,b.z,t));
}

fn box_frame(p: vec3<f32>, b: vec3<f32>, e: f32) -> f32 {
    var p1 = abs(p)-b;
    var q = abs(p1+e)-e;
    var a = length(max(vec3<f32>(p1.x,q.y,q.z),vec3<f32>(0.0)))+ min(max(p1.x,max(q.y,q.z)),0.0);
    var b = length(max(vec3<f32>(q.x,p.y,q.z),vec3<f32>(0.0)))+min(max(q.x,max(p.y,q.z)),0.0);
    var c = length(max(vec3<f32>(q.x,q.y,p.z),vec3<f32>(0.0)))+min(max(q.x,max(q.y,p.z)),0.0);
    return min(a,min(b,c));
}

struct RayTraceResult {
    c: vec3<f32>, // surface color
    d: f32, // distance from ray origin (negative if missed)
    n: vec3<f32>, // normal at hit
};

let eps = 0.0001;

fn finite_diff_normal(x: f32, y: f32, z: f32, t: f32) -> vec3<f32> {
    var h = 0.01;
    var k = vec2<f32>(1.0,-1.0);
    var p = vec3<f32>(x,y,z);

    var a = p + k.xyy*h;
    var b = p + k.yyx*h;
    var c = p + k.yxy*h;
    var d = p + k.xxx*h;

    switch(scene) {
        case 3: {
        return normalize(   k.xyy*fsponza5( a.x, a.y, a.z, t ) + 
                            k.yyx*fsponza5( b.x, b.y, b.z, t ) + 
                            k.yxy*fsponza5( c.x, c.y, c.z, t ) + 
                            k.xxx*fsponza5( d.x, d.y, d.z, t ) );
        }
        case 4: {
        return normalize(   k.xyy*fcradle( a.x, a.y, a.z, t ) + 
                            k.yyx*fcradle( b.x, b.y, b.z, t ) + 
                            k.yxy*fcradle( c.x, c.y, c.z, t ) + 
                            k.xxx*fcradle( d.x, d.y, d.z, t ) );
        }
        case 5: {
        return normalize(   k.xyy*fpiano( a.x, a.y, a.z, t ) + 
                            k.yyx*fpiano( b.x, b.y, b.z, t ) + 
                            k.yxy*fpiano( c.x, c.y, c.z, t ) + 
                            k.xxx*fpiano( d.x, d.y, d.z, t ) );
        }
        case 9: {
        return normalize(   k.xyy*fcables3( a.x, a.y, a.z, t ) + 
                            k.yyx*fcables3( b.x, b.y, b.z, t ) + 
                            k.yxy*fcables3( c.x, c.y, c.z, t ) + 
                            k.xxx*fcables3( d.x, d.y, d.z, t ) );
        }
        default: {
            return vec3<f32>(1.0);
        }
    }

    return vec3<f32>(0.0);
}

// http://www.cse.yorku.ca/~amana/research/grid.pdf
// https://www.shadertoy.com/view/XdtcRM
// https://www.shadertoy.com/view/7dK3D3
fn trace(ray_origin: vec3<f32>, ray_direction: vec3<f32>) -> RayTraceResult { // ray origin and ray direction
    var epsilon = 10.0 * pow(1.0/f32(split_fac), f32(localsubdiv));
    stack.pointer = 0u;
    var m = 0u;

    var normal_at_hit = vec3<f32>(0.0);
    var ray_origin2 = vec3<f32>(ray_origin);
    var c = vec3<f32>(1.0);
    var octreevis = vec3<f32>(0.0);

    push(0u);
    
    var intersected = false;
    var iter = 0;

    var p0: vec3<f32>;
    var p1: vec3<f32>;
    var hit: vec3<f32>;

    var region_index = peak(); // really a voxel_index now

    var x = voxels.voxels[region_index].x;
    var y = voxels.voxels[region_index].y;
    var z = voxels.voxels[region_index].z;

    p0 = vec3<f32>(x.lo, y.lo, z.lo);
    p1 = vec3<f32>(x.hi, y.hi, z.hi);

    hit = efficient_slabs(p0, p1, ray_origin2, 1.0 / ray_direction);

    if (hit.x == 0.0) {
        return RayTraceResult(c, -1.0, normal_at_hit);
    }

    var spheremarchstep = 0.0;
    var totalmarchsteps = 0;

    for (var iter=0u; iter<5000u; iter=iter+1u) {
        if (intersected) {
            break;
        }

        if (isempty()) {
            return RayTraceResult(c, -1.0, normal_at_hit);
        }

        var region_index = pop(); // used to peek

        if (hit.x == 0.0) { // if missed, move up a stack frame
            var top = peak();

            x = voxels.voxels[top].x;
            y = voxels.voxels[top].y;
            z = voxels.voxels[top].z;

            p0 = vec3<f32>(x.lo, y.lo, z.lo);
            p1 = vec3<f32>(x.hi, y.hi, z.hi);
            hit = efficient_slabs(p0, p1, ray_origin2, 1.0 / ray_direction);

            continue;
        }

        var ro = ((ray_origin2 + (hit.y+eps) * ray_direction) - p0) * (f32(split_fac)) / (p1-p0);
        var rd = ray_direction * (f32(split_fac) / (p1-p0));

        var mapPos = vec3<i32>(floor(ro));
        var deltaDist = 1.0 / abs(rd);
        var rayStep = vec3<i32>(sign(rd));
        var sideDist = (sign(rd) * (vec3<f32>(mapPos) - ro) + (sign(rd) * 0.5) + 0.5) * deltaDist;

        var mask = vec3<bool>(false,false,false);

        var old_ray_orgin_2 = vec3<f32>(ray_origin2);
        
        // march through empty voxels
        for (var i=0; i<32; i=i+1) {
            if (!cinematic && !normal_viz) {
                octreevis = octreevis + vec3<f32>(0.01);
                if (max_component(p1-p0) < 1.0) {
                    c = c * octree_darken_factor;
                }
            }

            var t = (length(vec3<f32>(mask) * (sideDist - deltaDist)) + hit.y + eps) + spheremarchstep;
            ray_origin2 = old_ray_orgin_2 + t * ray_direction;
            spheremarchstep = 0.0;

            // if left current voxel, go up one stack frame
            if (t >= hit.z - eps) {
                ray_origin2 = old_ray_orgin_2 + (hit.z) * ray_direction; // left voxel, so we should snap back to exit

                // moving up a stack frame
                var top = peak();

                x = voxels.voxels[top].x;
                y = voxels.voxels[top].y;
                z = voxels.voxels[top].z;

                p0 = vec3<f32>(x.lo, y.lo, z.lo);
                p1 = vec3<f32>(x.hi, y.hi, z.hi);
                hit = efficient_slabs(p0, p1, ray_origin2, 1.0 / ray_direction);

                break;
            }
            
            // checking if child index is valid
            var childindex = mapPos.x + (split_fac)*mapPos.y + (split_fac*split_fac)*mapPos.z;
            if (childindex < 0 || childindex >= split_fac*split_fac*split_fac) {
                break;
            }
            var childregion_index = voxels.voxels[region_index].children[childindex];

            var ts = uniforms.time - voxels.voxels[childregion_index].t;
            if (voxels.voxels[childregion_index].f <= 0.0) {                        
                x = voxels.voxels[childregion_index].x;
                y = voxels.voxels[childregion_index].y;
                z = voxels.voxels[childregion_index].z;

                var testp0 = vec3<f32>(x.lo-eps, y.lo-eps, z.lo-eps);
                var testp1 = vec3<f32>(x.hi+eps, y.hi+eps, z.hi+eps);
                var testhit = efficient_slabs(testp0, testp1, ray_origin2, 1.0 / ray_direction);

                if (testhit.x == 1.0) {
                    
                    if (voxels.voxels[childregion_index].child_count != 0u) {
                        push(region_index);
                        push((childregion_index));

                        // moving down one stack frame
                        p0 = testp0;
                        p1 = testp1;
                        hit = testhit;
                        break;
                    } else {

                        var normaltest = vec3<f32>(0.0);
                        normaltest.r = voxels.voxels[childregion_index].dx;
                        normaltest.g = voxels.voxels[childregion_index].dy;
                        normaltest.b = voxels.voxels[childregion_index].dz;

                        intersected = true;

                        if (intersected) {
                            normal_at_hit.r = voxels.voxels[childregion_index].dx;
                            normal_at_hit.g = voxels.voxels[childregion_index].dy;
                            normal_at_hit.b = voxels.voxels[childregion_index].dz;

                            // normal finite diffs
                            if (fast_normals) {
                                normal_at_hit = finite_diff_normal(ray_origin2.x, ray_origin2.y, ray_origin2.z, uniforms.time);
                                if (sweptvolume) {
                                    normal_at_hit = finite_diff_normal(ray_origin2.x, ray_origin2.y, ray_origin2.z, voxels.voxels[region_index].t);
                                }
                            }

                            var normal_visualization = normalize(normal_at_hit * vec3<f32>(1.0,1.0,1.0))*0.5 + 0.5;
                            var timesince = uniforms.time - voxels.voxels[childregion_index].t;
                            var movement_color = vec3<f32>(0.7,0.0001,0.0001);
                            if (!cinematic) {
                                movement_color = vec3<f32>(1.0,0.0,0.0);
                            }

                            var base_color = vec3<f32>(0.1);
                            if (normal_viz) {
                                base_color = normal_visualization;
                            } else if (cinematic) {
                                switch(scene) {
                                    case 3: {
                                        base_color = vec3<f32>(0.03);
                                        movement_color = vec3<f32>(0.4,0.0001,0.0001);
                                    }
                                    case 4: {
                                        base_color = vec3<f32>(0.015);
                                    }
                                    case 5: {
                                        base_color = vec3<f32>(0.02);
                                        movement_color = vec3<f32>(0.4,0.0001,0.0001);                                    
                                    }
                                    case 9: {
                                        base_color = vec3<f32>(0.01);
                                    }
                                    default: {
                                    }
                                }
                            } else {
                                base_color = vec3<f32>(1.0);
                            }

                            if (!normal_viz) {
                                c = c - mylerpvec(1.0-movement_color, 1.0-base_color, timesince*60.0);
                            } else {
                                c = base_color;
                            }
                            
                            break;
                        }
                    }
                }
            }

            mask = sideDist.xyz <= min(sideDist.yzx, sideDist.zxy);
            sideDist = sideDist + vec3<f32>(mask) * deltaDist;
            mapPos = mapPos + vec3<i32>(mask) * rayStep;
        }
    }
    
    c = min(c, vec3<f32>(1.0));
    c = max(c, vec3<f32>(0.0));

    var dist = abs(length(ray_origin2 - ray_origin));
    if (!intersected) {
        dist = -1.0;
    }
    return RayTraceResult(c, dist, normal_at_hit);
}

fn ortho(v: vec3<f32>) -> vec3<f32> {
    var v_1: vec3<f32>;
    var local: vec3<f32>;

    v_1 = v;
    let _e23 = v_1;
    _ = _e23.x;
    let _e25 = v_1;
    let _e28 = v_1;
    _ = _e28.z;
    let _e30 = v_1;
    if (abs(_e25.x) > abs(_e30.z)) {
        let _e34 = v_1;
        let _e37 = v_1;
        local = vec3<f32>(-(_e34.y), _e37.x, 0.0);
    } else {
        let _e42 = v_1;
        let _e45 = v_1;
        local = vec3<f32>(0.0, -(_e42.z), _e45.y);
    }
    let _e49 = local;
    return _e49;
}

fn getSampleBiased(d: vec3<f32>, power: f32) -> vec3<f32> {
    var dir = normalize(d);
    var o1 = normalize(ortho(dir));
    var o2 = normalize(cross(dir, o1));
    var r = vec2<f32>(frand0to1(), frand0to1());
    r.x = r.x*2.0*PI;
    r.y = pow(r.y, 1.0/(power+1.0));
    var oneminus = sqrt(1.0-r.y*r.y);
    return cos(r.x)*oneminus*o1+sin(r.x)*oneminus*o2+r.y*dir;    
}

fn getBackground(dir: vec3<f32>, sunPos: vec2<f32>) -> vec3<f32> {
    return sunsky(vec3<f32>(dir.x,dir.z,dir.y), sunPos);
}

fn get_color_single(ro: vec3<f32>, rd: vec3<f32>) -> vec4<f32> { // path tracing single ray
    var frm = ro; // from
    var dir = rd;
    var luminance = vec3<f32>(1.0);
    var direct = vec3<f32>(0.0);

    var sunPos = vec2<f32>(-0.1,0.7);
    var sunIntensity = 3.0;
    var specularIntensity = 1.0;
    var albedo = 1.0;
    var sunsize = 0.01;
    var backgroundmultiplier = 1.0;
    if (scene == 3) {
        sunPos = vec2<f32>(0.36,0.72);
        specularIntensity = 1.0;
        sunsize = 0.1;
        albedo = 1.5;
        backgroundmultiplier = 2.0;
        sunIntensity = 2.0;
    } else if (scene == 4) {
        sunPos = vec2<f32>(-0.1,0.57);
        sunsize = 0.01;
    } else if (scene == 5) {
        sunPos = vec2<f32>(0.63,0.65);
        sunsize = 0.02;
    }

    var bounces = 2;
    if (!cinematic) {
        bounces = 1;
    }
    for (var i=0; i<bounces; i=i+1) {
        var cur_trace = trace(frm, dir);
        var surface_color = cur_trace.c;
        var hitNormal = cur_trace.n;
        var hitpoint = frm + cur_trace.d * dir;

        if (cur_trace.d >= 0.0) { // hit
            if (!cinematic) {
                if (!normal_viz) {
                    return vec4<f32>(surface_color, 1.0);
                }

                return vec4<f32>(surface_color, 1.0);
            }

            var old_rd = dir;
            dir = getSampleBiased(hitNormal, 3.0);
            luminance = luminance * surface_color * albedo;
            frm = hitpoint + hitNormal*0.05;

            // direct lighting
            var sundir = normalize(fromSpherical((sunPos-vec2<f32>(0.0,0.5))*vec2<f32>(6.28,3.14))).xzy;
            var sunsampledir = normalize(sundir + vec3<f32>(frand(), frand(), frand()) * sunsize);
            var sunlight = dot(hitNormal, sunsampledir);
            var shadowtrace = trace(frm, sunsampledir);

            if (sunlight > 0.0 && shadowtrace.d < 0.0) { // if facing towards sun and not in shadow
                direct = direct + luminance * sunlight * sunIntensity;

                var half = normalize(-old_rd + sundir);
                var spec = 100.0 * pow(max(dot(hitNormal, half), 0.0), 30.0) * specularIntensity;
                direct = direct + luminance * spec;
            } 

        } else {
            if (i == 0 && !see_background) {
                if (cinematic || normal_viz) {
                    return vec4<f32>(10.0, 10.0, 10.0, 0.0);
                } else {
                    return vec4<f32>(surface_color.x, surface_color.y, surface_color.z, 1.0);
                }
            }
            
            return vec4<f32>(direct + luminance * getBackground(dir, sunPos), 1.0) * backgroundmultiplier;
        }
    }

    return vec4<f32>(direct, 1.0);
}

fn rotationMatrix(axis: vec3<f32>, angle: f32) -> mat4x4<f32> {
    var axis_1: vec3<f32>;
    var angle_1: f32;
    var s: f32;
    var c_1: f32;
    var oc: f32;

    axis_1 = axis;
    angle_1 = angle;
    _ = axis_1;
    let _e26 = axis_1;
    axis_1 = normalize(_e26);
    _ = angle_1;
    let _e29 = angle_1;
    s = sin(_e29);
    _ = angle_1;
    let _e33 = angle_1;
    c_1 = cos(_e33);
    let _e37 = c_1;
    oc = (1.0 - _e37);
    let _e40 = oc;
    let _e41 = axis_1;
    let _e44 = axis_1;
    let _e47 = c_1;
    let _e49 = oc;
    let _e50 = axis_1;
    let _e53 = axis_1;
    let _e56 = axis_1;
    let _e58 = s;
    let _e61 = oc;
    let _e62 = axis_1;
    let _e65 = axis_1;
    let _e68 = axis_1;
    let _e70 = s;
    let _e74 = oc;
    let _e75 = axis_1;
    let _e78 = axis_1;
    let _e81 = axis_1;
    let _e83 = s;
    let _e86 = oc;
    let _e87 = axis_1;
    let _e90 = axis_1;
    let _e93 = c_1;
    let _e95 = oc;
    let _e96 = axis_1;
    let _e99 = axis_1;
    let _e102 = axis_1;
    let _e104 = s;
    let _e108 = oc;
    let _e109 = axis_1;
    let _e112 = axis_1;
    let _e115 = axis_1;
    let _e117 = s;
    let _e120 = oc;
    let _e121 = axis_1;
    let _e124 = axis_1;
    let _e127 = axis_1;
    let _e129 = s;
    let _e132 = oc;
    let _e133 = axis_1;
    let _e136 = axis_1;
    let _e139 = c_1;
    return mat4x4<f32>(vec4<f32>((((_e40 * _e41.x) * _e44.x) + _e47), (((_e49 * _e50.x) * _e53.y) - (_e56.z * _e58)), (((_e61 * _e62.z) * _e65.x) + (_e68.y * _e70)), 0.0), vec4<f32>((((_e74 * _e75.x) * _e78.y) + (_e81.z * _e83)), (((_e86 * _e87.y) * _e90.y) + _e93), (((_e95 * _e96.y) * _e99.z) - (_e102.x * _e104)), 0.0), vec4<f32>((((_e108 * _e109.z) * _e112.x) - (_e115.y * _e117)), (((_e120 * _e121.y) * _e124.z) + (_e127.x * _e129)), (((_e132 * _e133.z) * _e136.z) + _e139), 0.0), vec4<f32>(0.0, 0.0, 0.0, 1.0));
}

fn ray_direction(vfov: f32, res: vec2<u32>, pixel: vec2<f32>) -> vec3<f32> {
    var xy = pixel - vec2<f32>(res) / 2.0 + vec2<f32>(0.5,0.5);
    var z = f32(res.y) / tan( radians(vfov) / 2.0 );
    return normalize(vec3<f32>(xy.x, -xy.y, -z));
}

fn LessThan(f: vec3<f32>, value: f32) -> vec3<f32> {
    return vec3<f32>(f<vec3<f32>(value));
}

fn LinearToSRGB(x: vec3<f32>) -> vec3<f32> {
    var rgb = clamp(x, vec3<f32>(0.0), vec3<f32>(1.0));
    return mix(
        pow(rgb, vec3<f32>(1.0 / 2.4)) * 1.055 - 0.055,
        rgb * 12.92,
        LessThan(rgb, 0.0031308)
    );
}

// https://blog.demofox.org/2020/06/06/casual-shadertoy-path-tracing-2-image-improvement-and-glossy-reflections/
// https://knarkowicz.wordpress.com/2016/01/06/aces-filmic-tone-mapping-curve/
fn ACES2Film(x: vec3<f32>) -> vec3<f32> {
    var a = 2.51;
    var b = 0.03;
    var c = 2.43;
    var d = 0.59;
    var e = 0.14;
    return clamp((x*(a*x + b)) / (x*(c*x + d) + e), vec3<f32>(0.0), vec3<f32>(1.0));
}

fn get_color_supersample(ro: vec3<f32>, vfov: f32, view: mat4x4<f32>, res: vec2<u32>, pixel: vec2<f32>) -> vec4<f32> { // supersample a pixel
    var samples = totalsamples;
    if (!cinematic) {
        samples = 1;
    }
    var c = vec4<f32>(0.0);

    for (var i=0; i<samples; i=i+1) {
        var offset = vec2<f32>(frand(), frand())*f32(cinematic)*0.5;
        var local_ray_dir = ray_direction(vfov, res, pixel + offset);
        var local_ray_dir_transformed = view * vec4<f32>(local_ray_dir, 0.0);
        var global_ray_dir = vec3<f32>(local_ray_dir_transformed.x, local_ray_dir_transformed.y, local_ray_dir_transformed.z);
        if (uniforms.rendermode == 0.0) {
            c = c + get_color_single(ro, global_ray_dir);
        }
    }

    c = c / f32(samples);
    if (cinematic) {
        var srgb = LinearToSRGB(c.xyz);
        c = vec4<f32>(srgb, c.a);
    }
    
    c.r = pow(c.r, 0.45);
    c.g = pow(c.g, 0.45);
    c.b = pow(c.b, 0.45);

    return c;
}

@compute @workgroup_size(16,16)
fn rt_main(
    @builtin(global_invocation_id) global_id: vec3<u32>,
    @builtin(local_invocation_id) local_id: vec3<u32>, // set by workgroup_size
    @builtin(workgroup_id) workgroup_id: vec3<u32>, // workgroup id
    @builtin(local_invocation_index) local_index: u32, // linearized local_id
) { 
    var g = tapes.tapes[0].instruction_count;
    var k = memory.start_of_empty_tape;
    var m = brokerqueue.count;
    var pixel = vec2<u32>(global_id.x, global_id.y);

    if (pixel.x >= uniforms.resolution.x) {return;}

    var pixel_index = pixel.y*uniforms.resolution.x + pixel.x;
    var eye = vec3<f32>(uniforms.view[3].x, uniforms.view[3].y, uniforms.view[3].z);
    var view = uniforms.view;
    var fov = 90.0;
    seed3 = u32(pixel_index) + u32(12345.0 * (sin(uniforms.time*12345.0) * 0.5 + 0.5));
    var pix = vec2<f32>(pixel);
    if (scene == 3) {
        eye = eye+vec3<f32>(7.7, -2.21, 7.7);
        view = rotationMatrix(vec3<f32>(0.0,1.0,0.0), (PI/4.0)*3.0) * uniforms.view;
    } else if (scene == 4) {
        eye = eye+vec3<f32>(0.0, -0.78, -7.0);
    } else if (scene == 5) {
        eye = eye+vec3<f32>(7.13, 2.14, -5.6);
        view = rotationMatrix(vec3<f32>(0.0,1.0,0.0), (PI/4.0)) * uniforms.view;
        view = rotationMatrix(vec3<f32>(-1.0,0.0,-1.0), (PI/4.0)*0.45) * view;
    }

    if (scene == 0) {
        pix.y = pix.y - f32(uniforms.resolution.y)*0.32;
    }

    var color = get_color_supersample(eye, fov, view, uniforms.resolution, pix); // SET FOV HERE

    pixels.pixels[pixel_index] = color;
}

@compute @workgroup_size(1)
fn buf_main(
    @builtin(global_invocation_id) global_id: vec3<u32>,
    @builtin(local_invocation_id) local_id: vec3<u32>, // set by workgroup_size
    @builtin(workgroup_id) workgroup_id: vec3<u32>, // workgroup id
    @builtin(local_invocation_index) local_index: u32, // linearized local_id
    @builtin(num_workgroups) num_workgroups: vec3<u32>,
) { 
    var m = tapes.tapes[0].instructions[0].val; // so it doesn't get pruned away
    var l = atomicLoad(&brokerqueue.count);
    var g = uniforms.time;
    var k = voxels.voxels[0].x;
    var uhwid = voxelmemoryqueue.count;
    var uhwfi = memory.start_of_empty_tape;

    if (true) {
        enqueue(0u);
    }
}