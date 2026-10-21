struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: f32,
    f5_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: f32,
    f7_: f32,
    f8_: f32,
    f9_: f32,
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: f32,
    f7_: f32,
    f8_: f32,
    f9_: f32,
    f10_: u32,
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct blurred_element {
    l: f32,
    a: f32,
    b: f32,
}

struct cache_element {
    x0_: f32,
    x1_: f32,
    x2_: f32,
    x3_: f32,
    y0_: f32,
    y1_: f32,
    y2_: f32,
    y3_: f32,
    zoom: f32,
    res: f32,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct reference_element {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct progress_pixels_element {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct Input {
    p18_: f32,
    p19_: f32,
    p20_: f32,
    p21_: f32,
    p22_: f32,
    p23_: f32,
    p24_: f32,
    p25_: f32,
    p26_: f32,
    p27_: f32,
    p28_: f32,
    p29_: f32,
    p30_: f32,
    p31_: f32,
    p32_: f32,
}

@group(0) @binding(0)
var<storage> blurred: array<blurred_element>;
@group(0) @binding(1)
var<storage> cache: array<cache_element>;
@group(0) @binding(2)
var<storage> reference: array<reference_element>;
@group(0) @binding(3)
var<storage> native_pixels: array<u32>;
@group(0) @binding(4)
var<storage> antialiased_pixels: array<u32>;
@group(0) @binding(5)
var<storage> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(6)
var<storage> input: Input;

fn index(a0_: FeLocal_fe_shader_private_layout_6_, a1_: u32) -> u32 {
    return ((a0_.f1_ << a1_) | a0_.f0_);
}

fn max_(a0_1: f32, a1_1: f32) -> f32 {
    var local_4: f32;
    var local_5: bool = false;
    var local_6: f32 = f32();

    if (a1_1 < a0_1) {
        local_6 = a0_1;
    } else {
        local_6 = a1_1;
    }
    let _e8 = local_6;
    return _e8;
}

fn display_age(a0_2: FeLocal_fe_shader_private_layout_3_, a1_2: FeLocal_fe_shader_private_layout_4_) -> f32 {
    var local_7: f32;
    var local_8: bool = false;
    var local_9: f32 = f32();

    if (0.5f <= a1_2.f13_) {
    } else {
        if (a0_2.f2_ == 1u) {
        } else {
            let _e13 = max_(a1_2.f11_, a0_2.f6_);
            let _e16 = max_(0f, (a1_2.f10_ - _e13));
            local_9 = _e16;
        }
    }
    let _e19 = local_9;
    return _e19;
}

fn lib_clamp(a0_3: f32, a1_3: f32, a2_: f32) -> f32 {
    var local_10: f32;
    var local_11: bool = false;
    var local_12: f32 = f32();

    if (a0_3 < a1_3) {
        local_12 = a1_3;
    } else {
        if (a2_ < a0_3) {
            local_12 = a2_;
        } else {
            local_12 = a0_3;
        }
    }
    let _e11 = local_12;
    return _e11;
}

fn progress(a0_4: f32, a1_4: f32, a2_1: f32) -> f32 {
    let _e7 = lib_clamp(((a0_4 - a1_4) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn progress_is_presentable(a0_5: u32) -> bool {
    return (((a0_5 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_6: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_presentable(a0_6.f4_);
    return _e2;
}

fn is_presentable_in(a0_7: FeLocal_fe_shader_private_layout_5_, a1_5: u32) -> bool {
    var local_13: bool;
    var local_14: bool = false;
    var local_15: bool = bool();

    if (a0_7.f6_ == a1_5) {
        let _e6 = is_presentable(a0_7);
        if _e6 {
            local_15 = true;
        }
    }
    let _e10 = local_15;
    return _e10;
}

fn fade_started_at(a0_8: FeLocal_fe_shader_private_layout_5_) -> f32 {
    return a0_8.f2_;
}

fn from_i32_(a0_9: u32) -> f32 {
    return f32(bitcast<i32>(a0_9));
}

fn impl_trait_f32_floor(a0_10: f32) -> f32 {
    return floor(a0_10);
}

fn to_i32_(a0_11: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_11)), 2147483648u, (a0_11 <= -2147483600f)), 2147483647u, (a0_11 >= 2147483600f)), (a0_11 == a0_11));
}

fn min_(a0_12: f32, a1_6: f32) -> f32 {
    var local_16: f32;
    var local_17: bool = false;
    var local_18: f32 = f32();

    if (a0_12 < a1_6) {
        local_18 = a0_12;
    } else {
        local_18 = a1_6;
    }
    let _e8 = local_18;
    return _e8;
}

fn bilinear_tap(a0_13: f32, a1_7: f32, a2_2: f32, a3_: u32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = lib_clamp(a0_13, 0f, a2_2);
    let _e7 = lib_clamp(a1_7, 0f, a2_2);
    let _e8 = impl_trait_f32_floor(_e5);
    let _e9 = impl_trait_f32_floor(_e7);
    let _e10 = to_i32_(_e8);
    let _e11 = to_i32_(_e9);
    let _e14 = min_((_e8 + 1f), a2_2);
    let _e15 = to_i32_(_e14);
    let _e18 = min_((_e9 + 1f), a2_2);
    let _e19 = to_i32_(_e18);
    return FeLocal_fe_shader_private_layout_1_(((_e11 << a3_) | _e10), ((_e11 << a3_) | _e15), ((_e19 << a3_) | _e10), ((_e19 << a3_) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn to_vec(a0_14: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_14.f0_, a0_14.f1_, a0_14.f2_);
}

fn sub(a0_15: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_15.f0_ - a1_8.f0_), (a0_15.f1_ - a1_8.f1_), (a0_15.f2_ - a1_8.f2_));
}

fn mul(a0_16: FeLocal_fe_shader_private_layout_0_, a1_9: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_16.f0_ * a1_9), (a0_16.f1_ * a1_9), (a0_16.f2_ * a1_9));
}

fn impl_trait_Vec3_add_ge58b(a0_17: FeLocal_fe_shader_private_layout_0_, a1_10: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_17.f0_ + a1_10.f0_), (a0_17.f1_ + a1_10.f1_), (a0_17.f2_ + a1_10.f2_));
}

fn interpolate(a0_18: FeLocal_fe_shader_private_layout_0_, a1_11: FeLocal_fe_shader_private_layout_0_, a2_3: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = sub(a1_11, a0_18);
    let _e4 = mul(_e3, a2_3);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_18, _e4);
    return _e5;
}

fn from_vec(a0_19: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a0_19.f0_, a0_19.f1_, a0_19.f2_);
}

fn blend(a0_20: FeLocal_fe_shader_private_layout_2_, a1_12: FeLocal_fe_shader_private_layout_2_, a2_4: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = to_vec(a0_20);
    let _e4 = to_vec(a1_12);
    let _e5 = interpolate(_e3, _e4, a2_4);
    let _e6 = from_vec(_e5);
    return _e6;
}

fn blend_corners(a0_21: FeLocal_fe_shader_private_layout_2_, a1_13: FeLocal_fe_shader_private_layout_2_, a2_5: FeLocal_fe_shader_private_layout_2_, a3_1: FeLocal_fe_shader_private_layout_2_, a4_: f32, a5_: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e6 = blend(a0_21, a1_13, a4_);
    let _e7 = blend(a2_5, a3_1, a4_);
    let _e8 = blend(_e6, _e7, a5_);
    return _e8;
}

fn sample(a1_14: f32, a2_6: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e5 = bilinear_tap(a1_14, a2_6, 255f, 8u);
    let _e10 = blurred[i32(_e5.f0_)].l;
    let _e12 = blurred[i32(_e5.f0_)].a;
    let _e14 = blurred[i32(_e5.f0_)].b;
    let _e20 = blurred[i32(_e5.f1_)].l;
    let _e22 = blurred[i32(_e5.f1_)].a;
    let _e24 = blurred[i32(_e5.f1_)].b;
    let _e30 = blurred[i32(_e5.f2_)].l;
    let _e32 = blurred[i32(_e5.f2_)].a;
    let _e34 = blurred[i32(_e5.f2_)].b;
    let _e40 = blurred[i32(_e5.f3_)].l;
    let _e42 = blurred[i32(_e5.f3_)].a;
    let _e44 = blurred[i32(_e5.f3_)].b;
    let _e48 = blend_corners(FeLocal_fe_shader_private_layout_2_(_e10, _e12, _e14), FeLocal_fe_shader_private_layout_2_(_e20, _e22, _e24), FeLocal_fe_shader_private_layout_2_(_e30, _e32, _e34), FeLocal_fe_shader_private_layout_2_(_e40, _e42, _e44), _e5.f4_, _e5.f5_);
    return _e48;
}

fn lattice_tap(a0_22: u32, a1_15: u32, a2_7: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = from_i32_(a0_22);
    let _e5 = from_i32_(a1_15);
    let _e7 = to_i32_((_e4 / a2_7));
    let _e8 = from_i32_(_e7);
    let _e9 = (_e8 * a2_7);
    let _e11 = to_i32_((_e5 / a2_7));
    let _e12 = from_i32_(_e11);
    let _e13 = (_e12 * a2_7);
    let _e14 = to_i32_(_e9);
    let _e16 = (_e14 & 2047u);
    let _e17 = to_i32_(_e13);
    let _e19 = (_e17 & 2047u);
    let _e21 = min_((_e9 + a2_7), a3_2);
    let _e22 = to_i32_(_e21);
    let _e24 = (_e22 & 2047u);
    let _e26 = min_((_e13 + a2_7), a3_2);
    let _e27 = to_i32_(_e26);
    let _e29 = (_e27 & 2047u);
    return FeLocal_fe_shader_private_layout_1_(((_e19 << 11u) | _e16), ((_e19 << 11u) | _e24), ((_e29 << 11u) | _e16), ((_e29 << 11u) | _e24), ((_e4 - _e9) / a2_7), ((_e5 - _e13) / a2_7));
}

fn unpack_lab(a0_23: u32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = from_i32_((a0_23 & 4095u));
    let _e10 = from_i32_(((a0_23 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_23 >> 22u));
    return FeLocal_fe_shader_private_layout_2_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn sqrt_(a0_24: f32) -> f32 {
    return sqrt(a0_24);
}

fn srgb(a0_25: f32) -> f32 {
    var local_19: f32;
    var local_20: bool = false;

    let _e4 = lib_clamp(a0_25, 0f, 1f);
    if (_e4 <= 0.0031308f) {
        local_19 = (12.92f * _e4);
        local_20 = true;
    }
    let _e31 = local_20;
    if _e31 {
    } else {
        let _e12 = sqrt_(_e4);
        let _e13 = sqrt_(_e12);
        let _e14 = sqrt_(_e13);
        let _e28 = lib_clamp(((((0.6620027f * _e12) + (0.6841221f * _e13)) - (0.3235836f * _e14)) - (0.022541147f * _e4)), 0f, 1f);
        local_19 = _e28;
    }
    let _e33 = local_19;
    return _e33;
}

fn display_rgba(a0_26: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e9 = ((a0_26.f0_ + (0.39633778f * a0_26.f1_)) + (0.21580376f * a0_26.f2_));
    let _e18 = ((a0_26.f0_ - (0.105561346f * a0_26.f1_)) - (0.06385417f * a0_26.f2_));
    let _e27 = ((a0_26.f0_ - (0.08948418f * a0_26.f1_)) - (1.2914855f * a0_26.f2_));
    let _e29 = ((_e9 * _e9) * _e9);
    let _e31 = ((_e18 * _e18) * _e18);
    let _e33 = ((_e27 * _e27) * _e27);
    let _e42 = srgb((((4.0767417f * _e29) - (3.3077116f * _e31)) + (0.23096994f * _e33)));
    let _e47 = to_i32_(((_e42 * 255f) + 0.5f));
    let _e56 = srgb((((-1.268438f * _e29) + (2.6097574f * _e31)) - (0.34131938f * _e33)));
    let _e61 = to_i32_(((_e56 * 255f) + 0.5f));
    let _e70 = srgb((((-0.0041960864f * _e29) - (0.7034186f * _e31)) + (1.7076147f * _e33)));
    let _e75 = to_i32_(((_e70 * 255f) + 0.5f));
    return ((((_e47 & 255u) | ((_e61 & 255u) << 8u)) | ((_e75 & 255u) << 16u)) | 4278190080u);
}

@vertex
fn vs_fullscreen(@builtin(vertex_index) vi: u32) -> @builtin(position) vec4<f32> {
    return vec4<f32>((f32(((vi & 1u) << 2u)) - 1f), (f32(((vi & 2u) << 1u)) - 1f), 0f, 1f);
}

@fragment
fn fs_main(@builtin(position) pos: vec4<f32>) -> @location(0) vec4<f32> {
    var local: u32;
    var local_1: bool = false;
    var local_2: bool = bool();
    var local_3: u32 = u32();

    let _e8 = u32(pos.x);
    let _e10 = u32(pos.y);
    let _e12 = input.p18_;
    let _e14 = input.p19_;
    let _e16 = input.p20_;
    let _e18 = input.p21_;
    let _e20 = input.p22_;
    let _e22 = input.p23_;
    let _e24 = input.p24_;
    let _e26 = input.p25_;
    let _e28 = input.p26_;
    let _e30 = input.p27_;
    let _e32 = input.p28_;
    let _e34 = input.p29_;
    let _e36 = input.p30_;
    let _e38 = input.p31_;
    let _e40 = input.p32_;
    let _e49 = index(FeLocal_fe_shader_private_layout_6_((_e8 & 2047u), (_e10 & 2047u)), 11u);
    let _e54 = cache[i32(0u)].epoch;
    let _e59 = reference[i32(0u)].active_;
    let _e61 = reference[i32(0u)].active_valid;
    let _e63 = reference[i32(0u)].pending;
    let _e65 = reference[i32(0u)].index;
    let _e67 = reference[i32(0u)].zx_s;
    let _e69 = reference[i32(0u)].zy_s;
    let _e71 = reference[i32(0u)].ready_at;
    let _e73 = display_age(FeLocal_fe_shader_private_layout_3_(_e59, _e61, _e63, _e65, _e67, _e69, _e71), FeLocal_fe_shader_private_layout_4_(_e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40));
    let _e76 = progress(_e73, 200f, 1600f);
    let _e80 = progress_pixels[i32(_e49)].dz_re;
    let _e82 = progress_pixels[i32(_e49)].dz_im;
    let _e84 = progress_pixels[i32(_e49)].z_re;
    let _e86 = progress_pixels[i32(_e49)].z_im;
    let _e88 = progress_pixels[i32(_e49)].reference_i;
    let _e90 = progress_pixels[i32(_e49)].iteration;
    let _e92 = progress_pixels[i32(_e49)].epoch;
    let _e94 = progress_pixels[i32(_e49)].magnitude;
    let _e95 = FeLocal_fe_shader_private_layout_5_(_e80, _e82, _e84, _e86, _e88, _e90, _e92, _e94);
    let _e96 = is_presentable_in(_e95, _e54);
    if _e96 {
        let _e99 = antialiased_pixels[i32(_e49)];
        let _e100 = fade_started_at(_e95);
        let _e104 = progress((_e32 - _e100), 0f, 350f);
        let _e105 = (_e104 * _e76);
        if (1f <= _e105) {
            let _e108 = unpack_lab(_e99);
            let _e109 = display_rgba(_e108);
            local = _e109;
            local_1 = true;
        }
        let _e129 = local_1;
        if _e129 {
        } else {
            let _e113 = from_i32_(_e8);
            let _e117 = from_i32_(_e10);
            let _e121 = sample(((_e113 * 256f) / _e30), ((_e117 * 256f) / _e30));
            let _e122 = unpack_lab(_e99);
            let _e123 = blend(_e121, _e122, _e105);
            let _e124 = display_rgba(_e123);
            local = _e124;
            local_1 = true;
        }
    } else {
        let _e131 = from_i32_(_e8);
        let _e135 = from_i32_(_e10);
        let _e139 = sample(((_e131 * 256f) / _e30), ((_e135 * 256f) / _e30));
        let _e144 = to_i32_(((_e30 + 511f) / 512f));
        let _e145 = from_i32_(_e144);
        let _e148 = lattice_tap(_e8, _e10, _e145, (_e30 - 1f));
        let _e153 = progress_pixels[i32(_e148.f0_)].dz_re;
        let _e155 = progress_pixels[i32(_e148.f0_)].dz_im;
        let _e157 = progress_pixels[i32(_e148.f0_)].z_re;
        let _e159 = progress_pixels[i32(_e148.f0_)].z_im;
        let _e161 = progress_pixels[i32(_e148.f0_)].reference_i;
        let _e163 = progress_pixels[i32(_e148.f0_)].iteration;
        let _e165 = progress_pixels[i32(_e148.f0_)].epoch;
        let _e167 = progress_pixels[i32(_e148.f0_)].magnitude;
        let _e168 = FeLocal_fe_shader_private_layout_5_(_e153, _e155, _e157, _e159, _e161, _e163, _e165, _e167);
        let _e173 = progress_pixels[i32(_e148.f1_)].dz_re;
        let _e175 = progress_pixels[i32(_e148.f1_)].dz_im;
        let _e177 = progress_pixels[i32(_e148.f1_)].z_re;
        let _e179 = progress_pixels[i32(_e148.f1_)].z_im;
        let _e181 = progress_pixels[i32(_e148.f1_)].reference_i;
        let _e183 = progress_pixels[i32(_e148.f1_)].iteration;
        let _e185 = progress_pixels[i32(_e148.f1_)].epoch;
        let _e187 = progress_pixels[i32(_e148.f1_)].magnitude;
        let _e188 = FeLocal_fe_shader_private_layout_5_(_e173, _e175, _e177, _e179, _e181, _e183, _e185, _e187);
        let _e193 = progress_pixels[i32(_e148.f2_)].dz_re;
        let _e195 = progress_pixels[i32(_e148.f2_)].dz_im;
        let _e197 = progress_pixels[i32(_e148.f2_)].z_re;
        let _e199 = progress_pixels[i32(_e148.f2_)].z_im;
        let _e201 = progress_pixels[i32(_e148.f2_)].reference_i;
        let _e203 = progress_pixels[i32(_e148.f2_)].iteration;
        let _e205 = progress_pixels[i32(_e148.f2_)].epoch;
        let _e207 = progress_pixels[i32(_e148.f2_)].magnitude;
        let _e208 = FeLocal_fe_shader_private_layout_5_(_e193, _e195, _e197, _e199, _e201, _e203, _e205, _e207);
        let _e213 = progress_pixels[i32(_e148.f3_)].dz_re;
        let _e215 = progress_pixels[i32(_e148.f3_)].dz_im;
        let _e217 = progress_pixels[i32(_e148.f3_)].z_re;
        let _e219 = progress_pixels[i32(_e148.f3_)].z_im;
        let _e221 = progress_pixels[i32(_e148.f3_)].reference_i;
        let _e223 = progress_pixels[i32(_e148.f3_)].iteration;
        let _e225 = progress_pixels[i32(_e148.f3_)].epoch;
        let _e227 = progress_pixels[i32(_e148.f3_)].magnitude;
        let _e228 = FeLocal_fe_shader_private_layout_5_(_e213, _e215, _e217, _e219, _e221, _e223, _e225, _e227);
        let _e229 = is_presentable_in(_e168, _e54);
        if _e229 {
            let _e230 = is_presentable_in(_e188, _e54);
            if _e230 {
                let _e231 = is_presentable_in(_e208, _e54);
                if _e231 {
                    let _e232 = is_presentable_in(_e228, _e54);
                    if _e232 {
                        local_2 = true;
                    }
                }
            }
        }
        let _e237 = local_2;
        if _e237 {
            let _e241 = native_pixels[i32(_e148.f0_)];
            let _e242 = unpack_lab(_e241);
            let _e246 = native_pixels[i32(_e148.f1_)];
            let _e247 = unpack_lab(_e246);
            let _e251 = native_pixels[i32(_e148.f2_)];
            let _e252 = unpack_lab(_e251);
            let _e256 = native_pixels[i32(_e148.f3_)];
            let _e257 = unpack_lab(_e256);
            let _e260 = blend_corners(_e242, _e247, _e252, _e257, _e148.f4_, _e148.f5_);
            let _e261 = fade_started_at(_e168);
            let _e262 = fade_started_at(_e188);
            let _e263 = max_(_e261, _e262);
            let _e264 = fade_started_at(_e208);
            let _e265 = fade_started_at(_e228);
            let _e266 = max_(_e264, _e265);
            let _e267 = max_(_e263, _e266);
            let _e271 = progress((_e32 - _e267), 0f, 350f);
            let _e273 = blend(_e139, _e260, (_e271 * _e76));
            let _e274 = display_rgba(_e273);
            local_3 = _e274;
        } else {
            let _e275 = display_rgba(_e139);
            local_3 = _e275;
        }
        let _e279 = local_3;
        local = _e279;
        local_1 = true;
    }
    let _e284 = local;
    return unpack4x8unorm(_e284);
}
