struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: u32,
    f4_: f32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_2_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
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

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: u32,
    f1_: f32,
    f2_: u32,
}

struct orbit_element {
    re_w0_bits: u32,
    re_w1_bits: u32,
    re_w2_bits: u32,
    re_w3_bits: u32,
    im_w0_bits: u32,
    im_w1_bits: u32,
    im_w2_bits: u32,
    im_w3_bits: u32,
}

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
    iteration: u32,
    magnitude: f32,
    flags: u32,
}

struct initial_pixels_element {
    l: f32,
    a: f32,
    b: f32,
    iteration: u32,
    magnitude: f32,
    flags: u32,
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

struct Params {
    p27_: f32,
    p28_: f32,
    p29_: f32,
    p30_: f32,
    p31_: f32,
    p32_: f32,
    p33_: f32,
    p34_: f32,
    p35_: f32,
    p36_: f32,
    p37_: f32,
    p38_: f32,
    p39_: f32,
    p40_: f32,
    p41_: f32,
}

@group(0) @binding(0)
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(2)
var<storage, read_write> initial_pixels: array<initial_pixels_element>;
@group(0) @binding(3)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(4)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(5)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 65536>;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn fmath_lib_to_i32_28bf(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn impl_trait_f32_max(a0_2: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_2);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(a0_3: f32, a1_1: f32, a2_: f32) -> f32 {
    var local_23: f32;
    var local_24: bool = false;
    var local_25: f32 = f32();

    if (a0_3 < a1_1) {
        local_25 = a1_1;
    } else {
        if (a2_ < a0_3) {
            local_25 = a2_;
        } else {
            local_25 = a0_3;
        }
    }
    let _e11 = local_25;
    return _e11;
}

fn core_lib_num_impl_trait_f32_30b9_floor_4012_(a0_4: f32) -> f32 {
    return floor(a0_4);
}

fn perturbational_mandelbrot_smooth_lib_image_min_5396_(a0_5: f32, a1_2: f32) -> f32 {
    var local_26: f32;
    var local_27: bool = false;
    var local_28: f32 = f32();

    if (a0_5 < a1_2) {
        local_28 = a0_5;
    } else {
        local_28 = a1_2;
    }
    let _e8 = local_28;
    return _e8;
}

fn color(a0_6: u32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e3 = from_i32_((a0_6 & 4095u));
    let _e10 = from_i32_(((a0_6 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_6 >> 22u));
    return FeLocal_fe_shader_private_layout_5_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn fmath_lib_mix_4d2b(a0_7: f32, a1_3: f32, a2_1: f32) -> f32 {
    return (a0_7 + ((a1_3 - a0_7) * a2_1));
}

fn perceptual_color_lib_blend_5210_(a0_8: FeLocal_fe_shader_private_layout_5_, a1_4: FeLocal_fe_shader_private_layout_5_, a2_2: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e5 = fmath_lib_mix_4d2b(a0_8.f0_, a1_4.f0_, a2_2);
    let _e8 = fmath_lib_mix_4d2b(a0_8.f1_, a1_4.f1_, a2_2);
    let _e11 = fmath_lib_mix_4d2b(a0_8.f2_, a1_4.f2_, a2_2);
    return FeLocal_fe_shader_private_layout_5_(_e5, _e8, _e11);
}

fn sample_snapshot(a1_5: f32, a2_3: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e7 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(a1_5, 0f, (a3_ - 1f));
    let _e8 = core_lib_num_impl_trait_f32_30b9_floor_4012_(_e7);
    let _e12 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(a2_3, 0f, (a3_ - 1f));
    let _e13 = core_lib_num_impl_trait_f32_30b9_floor_4012_(_e12);
    let _e14 = fmath_lib_to_i32_28bf(_e8);
    let _e15 = fmath_lib_to_i32_28bf(_e13);
    let _e20 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e8 + 1f), (a3_ - 1f));
    let _e21 = fmath_lib_to_i32_28bf(_e20);
    let _e26 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e13 + 1f), (a3_ - 1f));
    let _e27 = fmath_lib_to_i32_28bf(_e26);
    let _e31 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_((a1_5 - _e8), 0f, 1f);
    let _e35 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_((a2_3 - _e13), 0f, 1f);
    let _e41 = snapshot_pixels[i32(((_e15 << 11u) | _e14))];
    let _e42 = color(_e41);
    let _e48 = snapshot_pixels[i32(((_e15 << 11u) | _e21))];
    let _e49 = color(_e48);
    let _e50 = perceptual_color_lib_blend_5210_(_e42, _e49, _e31);
    let _e56 = snapshot_pixels[i32(((_e27 << 11u) | _e14))];
    let _e57 = color(_e56);
    let _e63 = snapshot_pixels[i32(((_e27 << 11u) | _e21))];
    let _e64 = color(_e63);
    let _e65 = perceptual_color_lib_blend_5210_(_e57, _e64, _e31);
    let _e66 = perceptual_color_lib_blend_5210_(_e50, _e65, _e35);
    return _e66;
}

fn lab(a0_9: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_(a0_9.f0_, a0_9.f1_, a0_9.f2_);
}

fn sample(a1_6: f32, a2_4: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e5 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(a1_6, 0f, 255f);
    let _e8 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(a2_4, 0f, 255f);
    let _e9 = core_lib_num_impl_trait_f32_30b9_floor_4012_(_e5);
    let _e10 = core_lib_num_impl_trait_f32_30b9_floor_4012_(_e8);
    let _e11 = fmath_lib_to_i32_28bf(_e9);
    let _e12 = fmath_lib_to_i32_28bf(_e10);
    let _e16 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e9 + 1f), 255f);
    let _e17 = fmath_lib_to_i32_28bf(_e16);
    let _e21 = perturbational_mandelbrot_smooth_lib_image_min_5396_((_e10 + 1f), 255f);
    let _e22 = fmath_lib_to_i32_28bf(_e21);
    let _e29 = initial_pixels[i32(((_e12 << 8u) | _e11))].l;
    let _e31 = initial_pixels[i32(((_e12 << 8u) | _e11))].a;
    let _e33 = initial_pixels[i32(((_e12 << 8u) | _e11))].b;
    let _e35 = initial_pixels[i32(((_e12 << 8u) | _e11))].iteration;
    let _e37 = initial_pixels[i32(((_e12 << 8u) | _e11))].magnitude;
    let _e39 = initial_pixels[i32(((_e12 << 8u) | _e11))].flags;
    let _e41 = lab(FeLocal_fe_shader_private_layout_7_(_e29, _e31, _e33, _e35, _e37, _e39));
    let _e48 = initial_pixels[i32(((_e12 << 8u) | _e17))].l;
    let _e50 = initial_pixels[i32(((_e12 << 8u) | _e17))].a;
    let _e52 = initial_pixels[i32(((_e12 << 8u) | _e17))].b;
    let _e54 = initial_pixels[i32(((_e12 << 8u) | _e17))].iteration;
    let _e56 = initial_pixels[i32(((_e12 << 8u) | _e17))].magnitude;
    let _e58 = initial_pixels[i32(((_e12 << 8u) | _e17))].flags;
    let _e60 = lab(FeLocal_fe_shader_private_layout_7_(_e48, _e50, _e52, _e54, _e56, _e58));
    let _e62 = perceptual_color_lib_blend_5210_(_e41, _e60, (_e5 - _e9));
    let _e69 = initial_pixels[i32(((_e22 << 8u) | _e11))].l;
    let _e71 = initial_pixels[i32(((_e22 << 8u) | _e11))].a;
    let _e73 = initial_pixels[i32(((_e22 << 8u) | _e11))].b;
    let _e75 = initial_pixels[i32(((_e22 << 8u) | _e11))].iteration;
    let _e77 = initial_pixels[i32(((_e22 << 8u) | _e11))].magnitude;
    let _e79 = initial_pixels[i32(((_e22 << 8u) | _e11))].flags;
    let _e81 = lab(FeLocal_fe_shader_private_layout_7_(_e69, _e71, _e73, _e75, _e77, _e79));
    let _e88 = initial_pixels[i32(((_e22 << 8u) | _e17))].l;
    let _e90 = initial_pixels[i32(((_e22 << 8u) | _e17))].a;
    let _e92 = initial_pixels[i32(((_e22 << 8u) | _e17))].b;
    let _e94 = initial_pixels[i32(((_e22 << 8u) | _e17))].iteration;
    let _e96 = initial_pixels[i32(((_e22 << 8u) | _e17))].magnitude;
    let _e98 = initial_pixels[i32(((_e22 << 8u) | _e17))].flags;
    let _e100 = lab(FeLocal_fe_shader_private_layout_7_(_e88, _e90, _e92, _e94, _e96, _e98));
    let _e102 = perceptual_color_lib_blend_5210_(_e81, _e100, (_e5 - _e9));
    let _e104 = perceptual_color_lib_blend_5210_(_e62, _e102, (_e8 - _e10));
    return _e104;
}

fn preview_sample(a0_10: FeLocal_fe_shader_private_layout_5_, a1_7: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_7_ {
    return FeLocal_fe_shader_private_layout_7_(a0_10.f0_, a0_10.f1_, a0_10.f2_, a1_7.f0_, a1_7.f1_, a1_7.f2_);
}

fn progress(a0_11: f32, a1_8: f32, a2_5: f32) -> f32 {
    let _e7 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(((a0_11 - a1_8) / a2_5), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn iteration_limit(a0_12: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_29: u32 = u32();
    var local_30: f32 = f32();
    var local_31: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_32: u32 = u32();
    var local_33: f32 = f32();
    var local_34: u32;
    var local_35: bool = false;
    var local_36: u32 = u32();

    local_29 = 0u;
    local_30 = a0_12;
    local_31 = 0u;
    loop {
        let _e12 = local_29;
        let _e14 = local_30;
        let _e16 = local_31;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_32 = (_e12 + 1u);
                    local_33 = (_e14 * 2f);
                }
            } else {
                local_32 = _e12;
                local_33 = _e14;
            }
            let _e36 = local_32;
            let _e38 = local_33;
            local_29 = _e36;
            local_30 = _e38;
            local_31 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_29;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_36 = 8192u;
        } else {
            local_36 = _e60;
        }
        let _e71 = local_36;
        local_34 = _e71;
        local_35 = true;
    }
    let _e77 = local_35;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_34;
    return _e79;
}

fn ordered_2x2_(a0_13: u32, a1_9: u32) -> FeLocal_fe_shader_private_layout_8_ {
    let _e6 = from_i32_(a0_13);
    let _e9 = from_i32_((a0_13 & 1u));
    let _e13 = from_i32_(a1_9);
    let _e16 = from_i32_((a1_9 & 1u));
    return FeLocal_fe_shader_private_layout_8_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_14: FeLocal_fe_shader_private_layout_8_, a1_10: f32) -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_((((a0_14.f0_ / a1_10) * 2f) - 1f), (1f - ((a0_14.f1_ / a1_10) * 2f)));
}

fn empty_progress(a0_15: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_15, 4f);
}

fn precision_lib_two_sum_34a0_(a0_16: f32, a1_11: f32) -> FeLocal_fe_shader_private_layout_12_ {
    let _e2 = (a0_16 + a1_11);
    let _e3 = (_e2 - a0_16);
    return FeLocal_fe_shader_private_layout_12_(_e2, ((a0_16 - (_e2 - _e3)) + (a1_11 - _e3)));
}

fn reference_plus_delta(a0_17: f32, a1_12: f32, a2_6: f32, a3_1: f32, a4_: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_17, a4_);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_12);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_6);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_1);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn invalid_reference(a0_18: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_37: bool;
    var local_38: bool = false;
    var local_39: bool = bool();

    if (a0_18.f0_ == 2143289344u) {
        local_39 = true;
    } else {
        if (a0_18.f4_ == 2143289344u) {
            local_39 = true;
        }
    }
    let _e14 = local_39;
    return _e14;
}

fn non_finite(a0_19: f32) -> bool {
    return (((a0_19 - a0_19) == 0f) == false);
}

fn impl_trait_f32_abs(a0_20: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_20) & 2147483647u));
}

fn advance_progress(a1_13: u32, a2_7: f32, a3_2: f32, a4_1: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_40: FeLocal_fe_shader_private_layout_4_;
    var local_41: bool = false;
    var local_42: u32 = u32();
    var local_43: u32 = u32();
    var local_44: u32 = u32();
    var local_45: f32 = f32();
    var local_46: f32 = f32();
    var local_47: f32 = f32();
    var local_48: f32 = f32();
    var local_49: f32 = f32();
    var local_50: u32 = u32();
    var local_51: u32 = u32();
    var local_52: u32 = u32();
    var local_53: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_145_: bool;
    var local_54: f32 = f32();
    var local_55: f32 = f32();
    var local_56: u32 = u32();
    var local_57: f32 = f32();
    var local_58: f32 = f32();
    var local_59: f32 = f32();
    var local_60: f32 = f32();
    var local_61: f32 = f32();
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var local_64: u32 = u32();
    var local_65: bool = bool();

    if (a1_13 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_13 + 8194u))].re_w0_bits;
        if (((a6_.f4_ & 2147483648u) == 0u) == false) {
            local_42 = 1u;
        }
        let _e37 = local_42;
        if (((a6_.f4_ & 1073741824u) == 0u) == false) {
            local_43 = 1u;
        }
        let _e48 = local_43;
        local_44 = 0u;
        local_45 = a6_.f7_;
        local_46 = a6_.f3_;
        local_47 = a6_.f2_;
        local_48 = a6_.f1_;
        local_49 = a6_.f0_;
        local_50 = _e48;
        local_51 = (a6_.f4_ & 1073741823u);
        local_52 = _e37;
        local_53 = a6_.f5_;
        loop {
            let _e74 = local_44;
            let _e76 = local_45;
            let _e78 = local_46;
            let _e80 = local_47;
            let _e82 = local_48;
            let _e84 = local_49;
            let _e86 = local_50;
            let _e88 = local_51;
            let _e90 = local_52;
            let _e92 = local_53;
            let _e93 = (_e92 < a4_1);
            loop_header_carry_145_ = _e93;
            if _e93 {
                if (_e74 < a5_) {
                    if (_e90 == 0u) {
                        if (_e86 == 0u) {
                        } else {
                            loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                            loop_did_return_1 = true;
                            break;
                        }
                        if (_e88 > (4294967295u - 1u)) {
                        } else {
                            if (((_e88 + 1u) < _e18) == false) {
                                local_54 = _e78;
                                local_55 = _e80;
                                local_56 = 0u;
                            } else {
                                local_54 = _e82;
                                local_55 = _e84;
                                local_56 = _e88;
                            }
                            let _e129 = local_54;
                            let _e131 = local_55;
                            let _e133 = local_56;
                            if (a1_13 > (4294967295u - _e133)) {
                            } else {
                                let _e141 = orbit[i32((a1_13 + _e133))].re_w0_bits;
                                let _e143 = orbit[i32((a1_13 + _e133))].re_w1_bits;
                                let _e145 = orbit[i32((a1_13 + _e133))].re_w2_bits;
                                let _e147 = orbit[i32((a1_13 + _e133))].re_w3_bits;
                                let _e149 = orbit[i32((a1_13 + _e133))].im_w0_bits;
                                let _e151 = orbit[i32((a1_13 + _e133))].im_w1_bits;
                                let _e153 = orbit[i32((a1_13 + _e133))].im_w2_bits;
                                let _e155 = orbit[i32((a1_13 + _e133))].im_w3_bits;
                                let _e158 = (a1_13 + _e133);
                                if (a1_13 > (4294967295u - _e133)) {
                                } else {
                                    if (_e158 > (4294967295u - 1u)) {
                                    } else {
                                        let _e177 = orbit[i32((_e158 + 1u))].re_w0_bits;
                                        let _e179 = orbit[i32((_e158 + 1u))].re_w1_bits;
                                        let _e181 = orbit[i32((_e158 + 1u))].re_w2_bits;
                                        let _e183 = orbit[i32((_e158 + 1u))].re_w3_bits;
                                        let _e185 = orbit[i32((_e158 + 1u))].im_w0_bits;
                                        let _e187 = orbit[i32((_e158 + 1u))].im_w1_bits;
                                        let _e189 = orbit[i32((_e158 + 1u))].im_w2_bits;
                                        let _e191 = orbit[i32((_e158 + 1u))].im_w3_bits;
                                        let _e193 = invalid_reference(FeLocal_fe_shader_private_layout_6_(_e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155));
                                        if _e193 {
                                            local_57 = _e76;
                                            local_58 = _e78;
                                            local_59 = _e80;
                                            local_60 = _e129;
                                            local_61 = _e131;
                                            local_62 = 1u;
                                            local_63 = _e133;
                                            local_64 = _e90;
                                        } else {
                                            let _e194 = invalid_reference(FeLocal_fe_shader_private_layout_6_(_e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191));
                                            if _e194 {
                                                local_57 = _e76;
                                                local_58 = _e78;
                                                local_59 = _e80;
                                                local_60 = _e129;
                                                local_61 = _e131;
                                                local_62 = 1u;
                                                local_63 = _e133;
                                                local_64 = _e90;
                                            } else {
                                                let _e196 = bitcast<f32>(_e141);
                                                let _e197 = bitcast<f32>(_e143);
                                                let _e198 = bitcast<f32>(_e145);
                                                let _e199 = bitcast<f32>(_e147);
                                                let _e200 = bitcast<f32>(_e149);
                                                let _e201 = bitcast<f32>(_e151);
                                                let _e202 = bitcast<f32>(_e153);
                                                let _e203 = bitcast<f32>(_e155);
                                                let _e249 = ((((2f * ((_e196 * _e131) - (_e200 * _e129))) + (2f * ((((((_e197 * _e131) - (_e201 * _e129)) + (_e198 * _e131)) - (_e202 * _e129)) + (_e199 * _e131)) - (_e203 * _e129)))) + ((_e131 * _e131) - (_e129 * _e129))) + a2_7);
                                                let _e259 = ((((2f * ((_e196 * _e129) + (_e200 * _e131))) + (2f * ((((((_e197 * _e129) + (_e201 * _e131)) + (_e198 * _e129)) + (_e202 * _e131)) + (_e199 * _e129)) + (_e203 * _e131)))) + ((2f * _e131) * _e129)) + a3_2);
                                                let _e260 = reference_plus_delta(bitcast<f32>(_e177), bitcast<f32>(_e179), bitcast<f32>(_e181), bitcast<f32>(_e183), _e249);
                                                let _e261 = reference_plus_delta(bitcast<f32>(_e185), bitcast<f32>(_e187), bitcast<f32>(_e189), bitcast<f32>(_e191), _e259);
                                                let _e264 = ((_e260 * _e260) + (_e261 * _e261));
                                                if (4f < _e264) {
                                                    let _e273 = impl_trait_f32_abs((_e264 - 4f));
                                                    let _e275 = impl_trait_f32_max(1f, _e264);
                                                    if (_e273 <= (0.000004f * _e275)) {
                                                        local_65 = true;
                                                    } else {
                                                        local_65 = false;
                                                    }
                                                } else {
                                                    local_65 = false;
                                                }
                                                let _e286 = local_65;
                                                let _e287 = non_finite(_e249);
                                                if _e287 {
                                                    local_57 = _e76;
                                                    local_58 = _e78;
                                                    local_59 = _e80;
                                                    local_60 = _e129;
                                                    local_61 = _e131;
                                                    local_62 = 1u;
                                                    local_63 = _e133;
                                                    local_64 = _e90;
                                                } else {
                                                    let _e288 = non_finite(_e259);
                                                    if _e288 {
                                                        local_57 = _e76;
                                                        local_58 = _e78;
                                                        local_59 = _e80;
                                                        local_60 = _e129;
                                                        local_61 = _e131;
                                                        local_62 = 1u;
                                                        local_63 = _e133;
                                                        local_64 = _e90;
                                                    } else {
                                                        let _e289 = non_finite(_e264);
                                                        if (_e289 | _e286) {
                                                            local_57 = _e76;
                                                            local_58 = _e78;
                                                            local_59 = _e80;
                                                            local_60 = _e129;
                                                            local_61 = _e131;
                                                            local_62 = 1u;
                                                            local_63 = _e133;
                                                            local_64 = _e90;
                                                        } else {
                                                            if (4f < _e264) {
                                                                local_57 = _e264;
                                                                local_58 = _e261;
                                                                local_59 = _e260;
                                                                local_60 = _e259;
                                                                local_61 = _e249;
                                                                local_62 = _e86;
                                                                local_63 = _e133;
                                                                local_64 = 1u;
                                                            } else {
                                                                if (_e264 < ((_e249 * _e249) + (_e259 * _e259))) {
                                                                    local_57 = _e76;
                                                                    local_58 = _e261;
                                                                    local_59 = _e260;
                                                                    local_60 = _e261;
                                                                    local_61 = _e260;
                                                                    local_62 = _e86;
                                                                    local_63 = 0u;
                                                                    local_64 = _e90;
                                                                } else {
                                                                    if (_e133 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_2) = true;
                                                                        break;
                                                                    } else {
                                                                        local_57 = _e76;
                                                                        local_58 = _e261;
                                                                        local_59 = _e260;
                                                                        local_60 = _e259;
                                                                        local_61 = _e249;
                                                                        local_62 = _e86;
                                                                        local_63 = (_e133 + 1u);
                                                                        local_64 = _e90;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e371 = local_57;
                                        let _e373 = local_58;
                                        let _e375 = local_59;
                                        let _e377 = local_60;
                                        let _e379 = local_61;
                                        let _e381 = local_62;
                                        let _e383 = local_63;
                                        let _e385 = local_64;
                                        local_44 = (_e74 + 1u);
                                        local_45 = _e371;
                                        local_46 = _e373;
                                        local_47 = _e375;
                                        local_48 = _e377;
                                        local_49 = _e379;
                                        local_50 = _e381;
                                        local_51 = _e383;
                                        local_52 = _e385;
                                        local_53 = (_e92 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_2) = true;
                        break;
                    } else {
                        loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                        loop_did_return_1 = true;
                        break;
                    }
                } else {
                    loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                    loop_did_return_1 = true;
                    break;
                }
            } else {
                loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                loop_did_return_1 = true;
                break;
            }
        }
        let _e436 = loop_did_return_1;
        if _e436 {
            let _e438 = loop_result_1;
            local_40 = _e438;
            local_41 = true;
        }
    }
    let _e444 = local_41;
    if _e444 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e446 = local_40;
    return _e446;
}

fn from_quad(a0_21: f32, a1_14: f32, a2_8: f32, a3_3: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_21, FeLocal_fe_shader_private_layout_2_(a1_14, FeLocal_fe_shader_private_layout_1_(a2_8, FeLocal_fe_shader_private_layout_0_(a3_3))));
}

fn impl_trait_Last_negate(a0_22: f32) -> f32 {
    return -(a0_22);
}

fn negate_ge630_(a0_23: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_23.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_23.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_24: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_24.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_24.f0_), _e4);
}

fn negate_ga905_(a0_25: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_25.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_25.f0_), _e4);
}

fn impl_trait_Last_add_corr(a0_26: f32, a1_15: f32, a2_9: f32) -> f32 {
    return ((a2_9 + a0_26) + a1_15);
}

fn add_corr_ge630_(a0_27: FeLocal_fe_shader_private_layout_1_, a1_16: FeLocal_fe_shader_private_layout_1_, a2_10: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_27.f0_, a2_10);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_16.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_27.f1_.f0_, a1_16.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_28: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_28.f0_;
}

fn with_head_ge630_(a0_29: FeLocal_fe_shader_private_layout_1_, a1_17: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_17, FeLocal_fe_shader_private_layout_0_(a0_29.f1_.f0_));
}

fn add_corr_g4419_(a0_30: FeLocal_fe_shader_private_layout_2_, a1_18: FeLocal_fe_shader_private_layout_2_, a2_11: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_30.f0_, a2_11);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_18.f0_);
    let _e14 = add_corr_ge630_(a0_30.f1_, a1_18.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_31: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_31.f0_;
}

fn with_head_g4419_(a0_32: FeLocal_fe_shader_private_layout_2_, a1_19: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_19, a0_32.f1_);
}

fn add_corr_ga905_(a0_33: FeLocal_fe_shader_private_layout_3_, a1_20: FeLocal_fe_shader_private_layout_3_, a2_12: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_33.f0_, a2_12);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_20.f0_);
    let _e14 = add_corr_g4419_(a0_33.f1_, a1_20.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_34: FeLocal_fe_shader_private_layout_3_, a1_21: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_21);
    let _e4 = add_corr_ga905_(a0_34, _e2, 0f);
    return _e4;
}

fn to_quad(a0_35: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_11_ {
    return FeLocal_fe_shader_private_layout_11_(a0_35.f0_, a0_35.f1_.f0_, a0_35.f1_.f1_.f0_, a0_35.f1_.f1_.f1_.f0_);
}

fn sample_progress(a1_22: u32, a2_13: f32, a3_4: f32, a4_2: f32, a5_1: f32, a6_1: f32, a7_: f32, a8_: f32, a9_: f32, a10_: f32, a11_: f32, a12_: u32, a13_: u32, a14_: u32, a15_: f32, a16_: f32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_66: FeLocal_fe_shader_private_layout_4_;
    var local_67: bool = false;
    var local_68: u32 = u32();

    let _e19 = ordered_2x2_(a12_, a13_);
    let _e25 = plane(FeLocal_fe_shader_private_layout_8_((_e19.f0_ + a15_), (_e19.f1_ + a16_)), a11_);
    if (a1_22 > (4294967295u - 8193u)) {
    } else {
        let _e36 = orbit[i32((a1_22 + 8193u))].re_w0_bits;
        let _e38 = orbit[i32((a1_22 + 8193u))].re_w1_bits;
        let _e40 = orbit[i32((a1_22 + 8193u))].re_w2_bits;
        let _e42 = orbit[i32((a1_22 + 8193u))].re_w3_bits;
        let _e44 = orbit[i32((a1_22 + 8193u))].im_w0_bits;
        let _e46 = orbit[i32((a1_22 + 8193u))].im_w1_bits;
        let _e48 = orbit[i32((a1_22 + 8193u))].im_w2_bits;
        let _e50 = orbit[i32((a1_22 + 8193u))].im_w3_bits;
        let _e59 = from_quad(a2_13, a3_4, a4_2, a5_1);
        let _e60 = from_quad(bitcast<f32>(_e36), bitcast<f32>(_e38), bitcast<f32>(_e40), bitcast<f32>(_e42));
        let _e61 = sub(_e59, _e60);
        let _e62 = from_quad(a6_1, a7_, a8_, a9_);
        let _e63 = from_quad(bitcast<f32>(_e44), bitcast<f32>(_e46), bitcast<f32>(_e48), bitcast<f32>(_e50));
        let _e64 = sub(_e62, _e63);
        let _e65 = to_quad(_e61);
        let _e70 = to_quad(_e64);
        let _e76 = reference_plus_delta(_e65.f0_, _e65.f1_, _e65.f2_, _e65.f3_, (_e25.f0_ * a10_));
        let _e78 = reference_plus_delta(_e70.f0_, _e70.f1_, _e70.f2_, _e70.f3_, (_e25.f1_ * a10_));
        if (a1_22 > (4294967295u - 8194u)) {
            (*fe_trapped_3) = true;
        }
        let _e89 = orbit[i32((a1_22 + 8194u))].re_w1_bits;
        if (a14_ < _e89) {
            local_68 = a14_;
        } else {
            local_68 = _e89;
        }
        let _e94 = local_68;
        let _e96 = empty_progress(0u);
        let _e97 = advance_progress(a1_22, _e76, _e78, _e94, _e94, _e96, fe_trapped_3);
        local_66 = _e97;
        local_67 = true;
    }
    let _e103 = local_67;
    if _e103 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e105 = local_66;
    return _e105;
}

fn packed(a0_36: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e4 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(a0_36.f0_, 0f, 1f);
    let _e9 = fmath_lib_to_i32_28bf(((_e4 * 4095f) + 0.5f));
    let _e17 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(((a0_36.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = fmath_lib_to_i32_28bf((_e17 + 0.5f));
    let _e28 = perturbational_mandelbrot_smooth_lib_image_clamp_42a0_(((a0_36.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = fmath_lib_to_i32_28bf((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn fract_(a0_37: f32) -> f32 {
    let _e1 = core_lib_num_impl_trait_f32_30b9_floor_4012_(a0_37);
    return (a0_37 - _e1);
}

fn anchor(a0_38: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_69: FeLocal_fe_shader_private_layout_5_;
    var local_70: bool = false;
    var local_71: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_38 {
        case 0u: {
            local_71 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_71 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_71 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_71 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_71 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_71;
    return _e29;
}

fn wrap_pi(a0_39: f32) -> f32 {
    let _e5 = core_lib_num_impl_trait_f32_30b9_floor_4012_(((a0_39 / 6.2831855f) + 0.5f));
    return (a0_39 - (6.2831855f * _e5));
}

fn sin_(a0_40: f32) -> f32 {
    let _e1 = wrap_pi(a0_40);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_41: f32) -> f32 {
    let _e3 = sin_((a0_41 + 1.5707964f));
    return _e3;
}

fn oklch(a0_42: f32, a1_23: f32, a2_14: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = (a2_14 * 0.017453292f);
    let _e5 = cos_(_e4);
    let _e7 = sin_(_e4);
    return FeLocal_fe_shader_private_layout_5_(a0_42, (a1_23 * _e5), (a1_23 * _e7));
}

fn escape_palette(a0_43: u32, a1_24: f32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_72: u32;
    var local_73: bool = false;
    var local_74: u32 = u32();
    var local_75: u32;
    var local_76: bool = false;
    var local_77: f32 = f32();

    let _e5 = from_i32_(a0_43);
    let _e11 = fract_(((_e5 + (4f / a1_24)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = fmath_lib_to_i32_28bf(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e22 = ((_e16 * _e16) * (3f - (2f * _e16)));
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_4) = true;
        } else {
            local_74 = _e29;
        }
    }
    let _e40 = local_74;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_77 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_77 = (_e44 + 360f);
        } else {
            local_77 = _e44;
        }
    }
    let _e57 = local_77;
    let _e73 = oklch((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22)), (_e23.f2_ + (_e57 * _e22)));
    let _e74 = packed(_e73);
    return _e74;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_44: FeLocal_fe_shader_private_layout_4_, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_78: u32;
    var local_79: bool = false;
    var local_80: u32 = u32();

    if (((a0_44.f4_ & 1073741824u) == 0u) == false) {
        let _e11 = glitch();
        local_80 = _e11;
    } else {
        if (((a0_44.f4_ & 2147483648u) == 0u) == false) {
            let _e21 = escape_palette(a0_44.f5_, a0_44.f7_, fe_trapped_5);
            local_80 = _e21;
        } else {
            let _e22 = interior();
            local_80 = _e22;
        }
    }
    let _e27 = local_80;
    return _e27;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32;
    var local_5: bool = false;
    var local_6: bool = bool();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: FeLocal_fe_shader_private_layout_13_ = FeLocal_fe_shader_private_layout_13_();
    var local_10: u32;
    var local_11: bool = false;
    var local_12: bool = bool();
    var local_13: u32;
    var local_14: bool = false;
    var local_15: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_16: u32;
    var local_17: bool = false;
    var local_18: u32;
    var local_19: bool = false;
    var local_20: u32;
    var local_21: bool = false;
    var local_22: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    let _e11 = params.p27_;
    let _e13 = params.p28_;
    let _e15 = params.p29_;
    let _e17 = params.p30_;
    let _e19 = params.p31_;
    let _e21 = params.p32_;
    let _e23 = params.p33_;
    let _e25 = params.p34_;
    let _e27 = params.p35_;
    let _e29 = params.p36_;
    let _e31 = params.p37_;
    let _e33 = params.p38_;
    let _e35 = params.p40_;
    let _e41 = reference[i32(0u)].active_valid;
    if (_e41 == 0u) {
        local_1 = true;
    }
    let _e378 = local_1;
    if _e378 {
    } else {
        let _e51 = cache[i32(0u)].preview_dirty;
        if (_e51 == 0u) {
            local_3 = true;
        }
        let _e376 = local_3;
        if _e376 {
        } else {
            let _e58 = from_i32_(global_invocation_id.x);
            let _e62 = fmath_lib_to_i32_28bf(((_e58 * _e29) / 256f));
            let _e63 = from_i32_(global_invocation_id.y);
            let _e67 = fmath_lib_to_i32_28bf(((_e63 * _e29) / 256f));
            let _e72 = cache[i32(1u)].x0_;
            let _e74 = cache[i32(1u)].x1_;
            let _e76 = cache[i32(1u)].x2_;
            let _e78 = cache[i32(1u)].x3_;
            let _e80 = cache[i32(1u)].y0_;
            let _e82 = cache[i32(1u)].y1_;
            let _e84 = cache[i32(1u)].y2_;
            let _e86 = cache[i32(1u)].y3_;
            let _e88 = cache[i32(1u)].zoom;
            let _e90 = cache[i32(1u)].res;
            let _e92 = cache[i32(1u)].cursor;
            let _e94 = cache[i32(1u)].aa;
            let _e96 = cache[i32(1u)].budget;
            let _e98 = cache[i32(1u)].radius;
            let _e100 = cache[i32(1u)].preview_dirty;
            let _e102 = cache[i32(1u)].blur_dirty;
            let _e104 = cache[i32(1u)].epoch;
            let _e106 = cache[i32(1u)].completed;
            let _e112 = cache[i32(2u)].x0_;
            let _e114 = cache[i32(2u)].x1_;
            let _e116 = cache[i32(2u)].x2_;
            let _e118 = cache[i32(2u)].x3_;
            let _e120 = cache[i32(2u)].y0_;
            let _e122 = cache[i32(2u)].y1_;
            let _e124 = cache[i32(2u)].y2_;
            let _e126 = cache[i32(2u)].y3_;
            let _e128 = cache[i32(2u)].zoom;
            let _e130 = cache[i32(2u)].res;
            let _e132 = cache[i32(2u)].cursor;
            let _e134 = cache[i32(2u)].aa;
            let _e136 = cache[i32(2u)].budget;
            let _e138 = cache[i32(2u)].radius;
            let _e140 = cache[i32(2u)].preview_dirty;
            let _e142 = cache[i32(2u)].blur_dirty;
            let _e144 = cache[i32(2u)].epoch;
            let _e146 = cache[i32(2u)].completed;
            if (_e106 == 1u) {
                if (_e104 < _e144) {
                } else {
                    local_6 = true;
                }
            }
            let _e156 = local_6;
            if _e156 {
                local_9 = FeLocal_fe_shader_private_layout_13_(_e72, _e74, _e76, _e78, _e80, _e82, _e84, _e86, _e88, _e90, _e92, _e94, _e96, _e98, _e100, _e102, _e104, _e106);
            } else {
                local_9 = FeLocal_fe_shader_private_layout_13_(_e112, _e114, _e116, _e118, _e120, _e122, _e124, _e126, _e128, _e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146);
            }
            let _e162 = local_9;
            let _e185 = from_i32_(_e62);
            let _e193 = from_i32_(_e67);
            let _e205 = impl_trait_f32_max(_e162.f8_, 0.000000000000000000000000001f);
            let _e214 = (((((((((_e11 - _e162.f0_) + (_e13 - _e162.f1_)) + ((_e15 - _e162.f2_) + (_e17 - _e162.f3_))) + (((((_e185 + 0.5f) * 2f) / _e29) - 1f) * _e27)) / _e205) + 1f) * _e162.f9_) * 0.5f) - 0.5f);
            let _e219 = impl_trait_f32_max(_e162.f8_, 0.000000000000000000000000001f);
            let _e228 = ((((1f - (((((_e19 - _e162.f4_) + (_e21 - _e162.f5_)) + ((_e23 - _e162.f6_) + (_e25 - _e162.f7_))) + ((1f - (((_e193 + 0.5f) * 2f) / _e29)) * _e27)) / _e219)) * _e162.f9_) * 0.5f) - 0.5f);
            if (_e162.f17_ == 1u) {
                if (0f <= _e214) {
                    if (0f <= _e228) {
                        if (_e214 < (_e162.f9_ - 1f)) {
                            if (_e228 < (_e162.f9_ - 1f)) {
                                local_12 = true;
                            }
                        }
                    }
                }
            }
            let _e249 = local_12;
            if _e156 {
                let _e251 = sample_snapshot(_e214, _e228, _e162.f9_);
                local_15 = _e251;
            } else {
                let _e256 = impl_trait_f32_max(_e162.f9_, 1f);
                let _e262 = impl_trait_f32_max(_e162.f9_, 1f);
                let _e264 = sample(((_e214 * 256f) / _e256), ((_e228 * 256f) / _e262));
                local_15 = _e264;
            }
            let _e269 = local_15;
            let _e274 = reference[i32(0u)].ready_at;
            let _e275 = impl_trait_f32_max(_e33, _e274);
            let _e278 = impl_trait_f32_max(0f, (_e31 - _e275));
            let _e286 = reference[i32(0u)].pending;
            let _e287 = from_i32_(_e286);
            let _e290 = ((_e278 * (1f - _e35)) * (1f - _e287));
            if _e249 {
                if (_e290 < 60f) {
                    let _e297 = preview_sample(_e269, FeLocal_fe_shader_private_layout_10_());
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e297.f0_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e297.f1_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e297.f2_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].iteration = _e297.f3_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].magnitude = _e297.f4_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].flags = _e297.f5_;
                    local_17 = true;
                }
                let _e315 = local_17;
                if _e315 {
                }
            }
            let _e374 = local_17;
            if _e374 {
            } else {
                let _e321 = reference[i32(0u)].active_;
                let _e327 = (_e321 != 0u);
                if (_e327 && (8195u > (4294967295u / select(1u, _e321, _e327)))) {
                    fe_trapped = true;
                }
                let _e335 = iteration_limit(_e27, (&fe_trapped));
                let _e338 = sample_progress((_e321 * 8195u), _e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e62, _e67, _e335, 0f, 0f, (&fe_trapped));
                let _e339 = progress_color(_e338, (&fe_trapped));
                let _e340 = color(_e339);
                if _e249 {
                    let _e343 = progress(_e290, 60f, 300f);
                    let _e344 = perceptual_color_lib_blend_5210_(_e269, _e340, _e343);
                    local_22 = _e344;
                } else {
                    local_22 = _e340;
                }
                let _e348 = local_22;
                let _e358 = preview_sample(_e348, FeLocal_fe_shader_private_layout_10_(_e338.f5_, _e338.f7_, (_e338.f4_ & 3221225472u)));
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e358.f0_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e358.f1_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e358.f2_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].iteration = _e358.f3_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].magnitude = _e358.f4_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].flags = _e358.f5_;
            }
        }
    }
    let _e389 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e389);
}
