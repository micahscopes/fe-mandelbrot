struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
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

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
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
    p16_: f32,
    p17_: f32,
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

fn max_(a0_: f32, a1_: f32) -> f32 {
    var local_4: f32;
    var local_5: bool = false;
    var local_6: f32 = f32();

    if (a1_ < a0_) {
        local_6 = a0_;
    } else {
        local_6 = a1_;
    }
    let _e8 = local_6;
    return _e8;
}

fn from_i32_(a0_1: u32) -> f32 {
    return f32(bitcast<i32>(a0_1));
}

fn perturbational_mandelbrot_smooth_lib_image_clamp_c80d(a0_2: f32, a1_1: f32, a2_: f32) -> f32 {
    var local_7: f32;
    var local_8: bool = false;
    var local_9: f32 = f32();

    if (a0_2 < a1_1) {
        local_9 = a1_1;
    } else {
        if (a2_ < a0_2) {
            local_9 = a2_;
        } else {
            local_9 = a0_2;
        }
    }
    let _e11 = local_9;
    return _e11;
}

fn progress(a0_3: f32, a1_2: f32, a2_1: f32) -> f32 {
    let _e7 = perturbational_mandelbrot_smooth_lib_image_clamp_c80d(((a0_3 - a1_2) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn impl_trait_f32_floor(a0_4: f32) -> f32 {
    return floor(a0_4);
}

fn fmath_lib_to_i32_28bf(a0_5: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_5)), 2147483648u, (a0_5 <= -2147483600f)), 2147483647u, (a0_5 >= 2147483600f)), (a0_5 == a0_5));
}

fn perturbational_mandelbrot_smooth_lib_image_min_5396_(a0_6: f32, a1_3: f32) -> f32 {
    var local_10: f32;
    var local_11: bool = false;
    var local_12: f32 = f32();

    if (a0_6 < a1_3) {
        local_12 = a0_6;
    } else {
        local_12 = a1_3;
    }
    let _e8 = local_12;
    return _e8;
}

fn fmath_lib_mix_4d2b(a0_7: f32, a1_4: f32, a2_2: f32) -> f32 {
    return (a0_7 + ((a1_4 - a0_7) * a2_2));
}

fn perturbational_mandelbrot_smooth_lib_image_blend_6d77_(a0_8: FeLocal_fe_shader_private_layout_0_, a1_5: FeLocal_fe_shader_private_layout_0_, a2_3: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e5 = fmath_lib_mix_4d2b(a0_8.f0_, a1_5.f0_, a2_3);
    let _e8 = fmath_lib_mix_4d2b(a0_8.f1_, a1_5.f1_, a2_3);
    let _e11 = fmath_lib_mix_4d2b(a0_8.f2_, a1_5.f2_, a2_3);
    return FeLocal_fe_shader_private_layout_0_(_e5, _e8, _e11);
}

fn sample(a1_6: f32, a2_4: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e5 = perturbational_mandelbrot_smooth_lib_image_clamp_c80d(a1_6, 0f, 255f);
    let _e8 = perturbational_mandelbrot_smooth_lib_image_clamp_c80d(a2_4, 0f, 255f);
    let _e9 = impl_trait_f32_floor(_e5);
    let _e10 = impl_trait_f32_floor(_e8);
    let _e11 = fmath_lib_to_i32_28bf(_e9);
    let _e12 = fmath_lib_to_i32_28bf(_e10);
    let _e16 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e9 + 1f), 255f);
    let _e17 = fmath_lib_to_i32_28bf(_e16);
    let _e21 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e10 + 1f), 255f);
    let _e22 = fmath_lib_to_i32_28bf(_e21);
    let _e29 = blurred[i32(((_e12 << 8u) | _e11))].l;
    let _e31 = blurred[i32(((_e12 << 8u) | _e11))].a;
    let _e33 = blurred[i32(((_e12 << 8u) | _e11))].b;
    let _e41 = blurred[i32(((_e12 << 8u) | _e17))].l;
    let _e43 = blurred[i32(((_e12 << 8u) | _e17))].a;
    let _e45 = blurred[i32(((_e12 << 8u) | _e17))].b;
    let _e48 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(FeLocal_fe_shader_private_layout_0_(_e29, _e31, _e33), FeLocal_fe_shader_private_layout_0_(_e41, _e43, _e45), (_e5 - _e9));
    let _e55 = blurred[i32(((_e22 << 8u) | _e11))].l;
    let _e57 = blurred[i32(((_e22 << 8u) | _e11))].a;
    let _e59 = blurred[i32(((_e22 << 8u) | _e11))].b;
    let _e67 = blurred[i32(((_e22 << 8u) | _e17))].l;
    let _e69 = blurred[i32(((_e22 << 8u) | _e17))].a;
    let _e71 = blurred[i32(((_e22 << 8u) | _e17))].b;
    let _e74 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(FeLocal_fe_shader_private_layout_0_(_e55, _e57, _e59), FeLocal_fe_shader_private_layout_0_(_e67, _e69, _e71), (_e5 - _e9));
    let _e76 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(_e48, _e74, (_e8 - _e10));
    return _e76;
}

fn color(a0_9: u32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = from_i32_((a0_9 & 4095u));
    let _e10 = from_i32_(((a0_9 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_9 >> 22u));
    return FeLocal_fe_shader_private_layout_0_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn sqrt_(a0_10: f32) -> f32 {
    return sqrt(a0_10);
}

fn srgb(a0_11: f32) -> f32 {
    var local_13: f32;
    var local_14: bool = false;

    let _e4 = perturbational_mandelbrot_smooth_lib_image_clamp_c80d(a0_11, 0f, 1f);
    if (_e4 <= 0.0031308f) {
        local_13 = (12.92f * _e4);
        local_14 = true;
    }
    let _e31 = local_14;
    if _e31 {
    } else {
        let _e12 = sqrt_(_e4);
        let _e13 = sqrt_(_e12);
        let _e14 = sqrt_(_e13);
        let _e28 = perturbational_mandelbrot_smooth_lib_image_clamp_c80d(((((0.6620027f * _e12) + (0.6841221f * _e13)) - (0.3235836f * _e14)) - (0.022541147f * _e4)), 0f, 1f);
        local_13 = _e28;
    }
    let _e33 = local_13;
    return _e33;
}

fn rgba(a0_12: FeLocal_fe_shader_private_layout_0_) -> u32 {
    let _e9 = ((a0_12.f0_ + (0.39633778f * a0_12.f1_)) + (0.21580376f * a0_12.f2_));
    let _e18 = ((a0_12.f0_ - (0.105561346f * a0_12.f1_)) - (0.06385417f * a0_12.f2_));
    let _e27 = ((a0_12.f0_ - (0.08948418f * a0_12.f1_)) - (1.2914855f * a0_12.f2_));
    let _e29 = ((_e9 * _e9) * _e9);
    let _e31 = ((_e18 * _e18) * _e18);
    let _e33 = ((_e27 * _e27) * _e27);
    let _e42 = srgb((((4.0767417f * _e29) - (3.3077116f * _e31)) + (0.23096994f * _e33)));
    let _e47 = fmath_lib_to_i32_28bf(((_e42 * 255f) + 0.5f));
    let _e56 = srgb((((-1.268438f * _e29) + (2.6097574f * _e31)) - (0.34131938f * _e33)));
    let _e61 = fmath_lib_to_i32_28bf(((_e56 * 255f) + 0.5f));
    let _e70 = srgb((((-0.0041960864f * _e29) - (0.7034186f * _e31)) + (1.7076147f * _e33)));
    let _e75 = fmath_lib_to_i32_28bf(((_e70 * 255f) + 0.5f));
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
    let _e12 = input.p25_;
    let _e14 = input.p26_;
    let _e16 = input.p27_;
    let _e18 = input.p29_;
    let _e26 = (((_e10 & 2047u) << 11u) | (_e8 & 2047u));
    let _e31 = cache[i32(0u)].epoch;
    let _e36 = reference[i32(0u)].pending;
    let _e38 = reference[i32(0u)].ready_at;
    let _e39 = max_(_e16, _e38);
    let _e42 = max_(0f, (_e14 - _e39));
    let _e46 = from_i32_(_e36);
    let _e52 = progress(((_e42 * (1f - _e18)) * (1f - _e46)), 200f, 1600f);
    let _e56 = progress_pixels[i32(_e26)].z_re;
    let _e58 = progress_pixels[i32(_e26)].reference_i;
    let _e60 = progress_pixels[i32(_e26)].epoch;
    if (((_e60 == _e31) == false) | ((((_e58 & 536870912u) == 0u) == false) == false)) {
        let _e74 = from_i32_(_e8);
        let _e78 = from_i32_(_e10);
        let _e82 = sample(((_e74 * 256f) / _e12), ((_e78 * 256f) / _e12));
        let _e87 = fmath_lib_to_i32_28bf(((_e12 + 511f) / 512f));
        let _e88 = from_i32_(_e87);
        let _e89 = from_i32_(_e8);
        let _e90 = from_i32_(_e10);
        let _e92 = fmath_lib_to_i32_28bf((_e89 / _e88));
        let _e93 = from_i32_(_e92);
        let _e94 = (_e93 * _e88);
        let _e96 = fmath_lib_to_i32_28bf((_e90 / _e88));
        let _e97 = from_i32_(_e96);
        let _e98 = (_e97 * _e88);
        let _e99 = fmath_lib_to_i32_28bf(_e94);
        let _e101 = (_e99 & 2047u);
        let _e102 = fmath_lib_to_i32_28bf(_e98);
        let _e104 = (_e102 & 2047u);
        let _e108 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e94 + _e88), (_e12 - 1f));
        let _e109 = fmath_lib_to_i32_28bf(_e108);
        let _e111 = (_e109 & 2047u);
        let _e115 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e98 + _e88), (_e12 - 1f));
        let _e116 = fmath_lib_to_i32_28bf(_e115);
        let _e118 = (_e116 & 2047u);
        let _e125 = progress_pixels[i32(((_e104 << 11u) | _e101))].z_re;
        let _e127 = progress_pixels[i32(((_e104 << 11u) | _e101))].reference_i;
        let _e129 = progress_pixels[i32(((_e104 << 11u) | _e101))].epoch;
        let _e136 = progress_pixels[i32(((_e104 << 11u) | _e111))].z_re;
        let _e138 = progress_pixels[i32(((_e104 << 11u) | _e111))].reference_i;
        let _e140 = progress_pixels[i32(((_e104 << 11u) | _e111))].epoch;
        let _e147 = progress_pixels[i32(((_e118 << 11u) | _e101))].z_re;
        let _e149 = progress_pixels[i32(((_e118 << 11u) | _e101))].reference_i;
        let _e151 = progress_pixels[i32(((_e118 << 11u) | _e101))].epoch;
        let _e158 = progress_pixels[i32(((_e118 << 11u) | _e111))].z_re;
        let _e160 = progress_pixels[i32(((_e118 << 11u) | _e111))].reference_i;
        let _e162 = progress_pixels[i32(((_e118 << 11u) | _e111))].epoch;
        if (_e129 == _e31) {
            if (_e140 == _e31) {
                if (_e151 == _e31) {
                    if (_e162 == _e31) {
                        if (((((_e127 & _e138) & _e149) & _e160) & 536870912u) == 0u) {
                        } else {
                            local_2 = true;
                        }
                    }
                }
            }
        }
        let _e178 = local_2;
        if _e178 {
            let _e180 = ((_e89 - _e94) / _e88);
            let _e188 = native_pixels[i32(((_e104 << 11u) | _e101))];
            let _e189 = color(_e188);
            let _e195 = native_pixels[i32(((_e104 << 11u) | _e111))];
            let _e196 = color(_e195);
            let _e197 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(_e189, _e196, _e180);
            let _e203 = native_pixels[i32(((_e118 << 11u) | _e101))];
            let _e204 = color(_e203);
            let _e210 = native_pixels[i32(((_e118 << 11u) | _e111))];
            let _e211 = color(_e210);
            let _e212 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(_e204, _e211, _e180);
            let _e213 = max_(_e125, _e136);
            let _e214 = max_(_e147, _e158);
            let _e215 = max_(_e213, _e214);
            let _e217 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(_e197, _e212, ((_e90 - _e98) / _e88));
            let _e220 = progress((_e14 - _e215), 0f, 350f);
            let _e222 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(_e82, _e217, (_e220 * _e52));
            let _e223 = rgba(_e222);
            local_3 = _e223;
        } else {
            let _e224 = rgba(_e82);
            local_3 = _e224;
        }
        let _e228 = local_3;
        local = _e228;
        local_1 = true;
    } else {
        let _e234 = antialiased_pixels[i32(_e26)];
        let _e238 = progress((_e14 - _e56), 0f, 350f);
        let _e239 = (_e238 * _e52);
        if (1f <= _e239) {
            let _e242 = color(_e234);
            let _e243 = rgba(_e242);
            local = _e243;
            local_1 = true;
        }
        let _e263 = local_1;
        if _e263 {
        } else {
            let _e247 = from_i32_(_e8);
            let _e251 = from_i32_(_e10);
            let _e255 = sample(((_e247 * 256f) / _e12), ((_e251 * 256f) / _e12));
            let _e256 = color(_e234);
            let _e257 = perturbational_mandelbrot_smooth_lib_image_blend_6d77_(_e255, _e256, _e239);
            let _e258 = rgba(_e257);
            local = _e258;
            local_1 = true;
        }
    }
    let _e265 = local;
    return unpack4x8unorm(_e265);
}
