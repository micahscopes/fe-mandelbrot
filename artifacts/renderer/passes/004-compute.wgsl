struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_6_,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: FeLocal_fe_shader_private_layout_8_,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
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
    f10_: u32,
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: bool,
    f1_: bool,
    f2_: f32,
    f3_: f32,
    f4_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: f32,
    f5_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_15_ {
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
    f11_: u32,
    f12_: u32,
    f13_: u32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct FeLocal_fe_shader_private_layout_10_ {
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

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
}

struct initial_pixels_element {
    l: f32,
    a: f32,
    b: f32,
}

struct preview_progress_element {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct preview_cache_element {
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
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
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

struct Params {
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
    p42_: f32,
    p43_: f32,
}

@group(0) @binding(0)
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(1)
var<storage, read_write> initial_pixels: array<initial_pixels_element>;
@group(0) @binding(2)
var<storage, read_write> preview_progress: array<preview_progress_element>;
@group(0) @binding(3)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(4)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(5)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 65536>;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn from_quad(a0_2: f32, a1_: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_8_ {
    return FeLocal_fe_shader_private_layout_8_(a0_2, FeLocal_fe_shader_private_layout_7_(a1_, FeLocal_fe_shader_private_layout_6_(a2_, FeLocal_fe_shader_private_layout_5_(a3_))));
}

fn impl_ViewCache_center(a0_3: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e5 = from_quad(a0_3.f0_, a0_3.f1_, a0_3.f2_, a0_3.f3_);
    let _e10 = from_quad(a0_3.f4_, a0_3.f5_, a0_3.f6_, a0_3.f7_);
    return FeLocal_fe_shader_private_layout_9_(_e5, _e10);
}

fn impl_MandelbrotViewState_center(a0_4: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e5 = from_quad(a0_4.f0_, a0_4.f1_, a0_4.f2_, a0_4.f3_);
    let _e10 = from_quad(a0_4.f4_, a0_4.f5_, a0_4.f6_, a0_4.f7_);
    return FeLocal_fe_shader_private_layout_9_(_e5, _e10);
}

fn to_quad(a0_5: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_14_ {
    return FeLocal_fe_shader_private_layout_14_(a0_5.f0_, a0_5.f1_.f0_, a0_5.f1_.f1_.f0_, a0_5.f1_.f1_.f1_.f0_);
}

fn expansion_delta(a0_6: FeLocal_fe_shader_private_layout_8_, a1_1: FeLocal_fe_shader_private_layout_8_) -> f32 {
    let _e2 = to_quad(a0_6);
    let _e7 = to_quad(a1_1);
    return (((_e7.f0_ - _e2.f0_) + (_e7.f1_ - _e2.f1_)) + ((_e7.f2_ - _e2.f2_) + (_e7.f3_ - _e2.f3_)));
}

fn center_delta(a0_7: FeLocal_fe_shader_private_layout_9_, a1_2: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_11_ {
    let _e4 = expansion_delta(a0_7.f0_, a1_2.f0_);
    let _e7 = expansion_delta(a0_7.f1_, a1_2.f1_);
    return FeLocal_fe_shader_private_layout_11_(_e4, _e7);
}

fn delta_from(a0_8: FeLocal_fe_shader_private_layout_4_, a1_3: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_11_ {
    let _e2 = impl_ViewCache_center(a0_8);
    let _e3 = impl_MandelbrotViewState_center(a1_3);
    let _e4 = center_delta(_e2, _e3);
    return _e4;
}

fn lib_image_max(a0_9: f32, a1_4: f32) -> f32 {
    var local_15: f32;
    var local_16: bool = false;
    var local_17: f32 = f32();

    if (a1_4 < a0_9) {
        local_17 = a0_9;
    } else {
        local_17 = a1_4;
    }
    let _e8 = local_17;
    return _e8;
}

fn reproject_coarse_pixel(a0_10: FeLocal_fe_shader_private_layout_10_, a1_5: FeLocal_fe_shader_private_layout_4_, a2_1: FeLocal_fe_shader_private_layout_4_, a3_1: u32, a4_: u32) -> FeLocal_fe_shader_private_layout_13_ {
    var local_18: FeLocal_fe_shader_private_layout_13_;
    var local_19: bool = false;
    var local_20: bool = bool();
    var local_21: FeLocal_fe_shader_private_layout_13_;
    var local_22: bool = false;
    var local_23: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_24: FeLocal_fe_shader_private_layout_13_;
    var local_25: bool = false;
    var local_26: bool = bool();

    if (a1_5.f17_ == 1u) {
        if ((a1_5.f16_ < a2_1.f16_) == false) {
            local_20 = true;
        }
    }
    let _e20 = local_20;
    if _e20 {
        local_23 = a1_5;
    } else {
        local_23 = a2_1;
    }
    let _e26 = local_23;
    let _e27 = delta_from(_e26, a0_10);
    let _e28 = from_i32_(a3_1);
    let _e37 = from_i32_(a4_);
    let _e48 = lib_image_max(_e26.f8_, 0.000000000000000000000000001f);
    let _e61 = ((((((_e27.f0_ + (((((_e28 + 0.5f) * 2f) / a0_10.f9_) - 1f) * a0_10.f8_)) / _e48) + 1f) * _e26.f9_) * 0.5f) - 0.5f);
    let _e74 = ((((1f - ((_e27.f1_ + ((1f - (((_e37 + 0.5f) * 2f) / a0_10.f9_)) * a0_10.f8_)) / _e48)) * _e26.f9_) * 0.5f) - 0.5f);
    if (_e26.f17_ == 1u) {
        if (0f <= _e61) {
            if (0f <= _e74) {
                if (_e61 < (_e26.f9_ - 1f)) {
                    if (_e74 < (_e26.f9_ - 1f)) {
                        local_26 = true;
                    }
                }
            }
        }
    }
    let _e93 = local_26;
    return FeLocal_fe_shader_private_layout_13_(_e20, _e93, _e61, _e74, _e26.f9_);
}

fn lib_clamp(a0_11: f32, a1_6: f32, a2_2: f32) -> f32 {
    var local_27: f32;
    var local_28: bool = false;
    var local_29: f32 = f32();

    if (a0_11 < a1_6) {
        local_29 = a1_6;
    } else {
        if (a2_2 < a0_11) {
            local_29 = a2_2;
        } else {
            local_29 = a0_11;
        }
    }
    let _e11 = local_29;
    return _e11;
}

fn impl_trait_f32_floor(a0_12: f32) -> f32 {
    return floor(a0_12);
}

fn min_(a0_13: f32, a1_7: f32) -> f32 {
    var local_30: f32;
    var local_31: bool = false;
    var local_32: f32 = f32();

    if (a0_13 < a1_7) {
        local_32 = a0_13;
    } else {
        local_32 = a1_7;
    }
    let _e8 = local_32;
    return _e8;
}

fn bilinear_tap(a0_14: f32, a1_8: f32, a2_3: f32, a3_2: u32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e5 = lib_clamp(a0_14, 0f, a2_3);
    let _e7 = lib_clamp(a1_8, 0f, a2_3);
    let _e8 = impl_trait_f32_floor(_e5);
    let _e9 = impl_trait_f32_floor(_e7);
    let _e10 = to_i32_(_e8);
    let _e11 = to_i32_(_e9);
    let _e14 = min_((_e8 + 1f), a2_3);
    let _e15 = to_i32_(_e14);
    let _e18 = min_((_e9 + 1f), a2_3);
    let _e19 = to_i32_(_e18);
    return FeLocal_fe_shader_private_layout_2_(((_e11 << a3_2) | _e10), ((_e11 << a3_2) | _e15), ((_e19 << a3_2) | _e10), ((_e19 << a3_2) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn unpack_lab(a0_15: u32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e3 = from_i32_((a0_15 & 4095u));
    let _e10 = from_i32_(((a0_15 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_15 >> 22u));
    return FeLocal_fe_shader_private_layout_3_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn to_vec(a0_16: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_16.f0_, a0_16.f1_, a0_16.f2_);
}

fn sub(a0_17: FeLocal_fe_shader_private_layout_0_, a1_9: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_17.f0_ - a1_9.f0_), (a0_17.f1_ - a1_9.f1_), (a0_17.f2_ - a1_9.f2_));
}

fn mul(a0_18: FeLocal_fe_shader_private_layout_0_, a1_10: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_18.f0_ * a1_10), (a0_18.f1_ * a1_10), (a0_18.f2_ * a1_10));
}

fn impl_trait_Vec3_add_ge58b(a0_19: FeLocal_fe_shader_private_layout_0_, a1_11: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_19.f0_ + a1_11.f0_), (a0_19.f1_ + a1_11.f1_), (a0_19.f2_ + a1_11.f2_));
}

fn interpolate_g8d60_(a0_20: FeLocal_fe_shader_private_layout_0_, a1_12: FeLocal_fe_shader_private_layout_0_, a2_4: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = sub(a1_12, a0_20);
    let _e4 = mul(_e3, a2_4);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_20, _e4);
    return _e5;
}

fn from_vec(a0_21: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_21.f0_, a0_21.f1_, a0_21.f2_);
}

fn blend(a0_22: FeLocal_fe_shader_private_layout_3_, a1_13: FeLocal_fe_shader_private_layout_3_, a2_5: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e3 = to_vec(a0_22);
    let _e4 = to_vec(a1_13);
    let _e5 = interpolate_g8d60_(_e3, _e4, a2_5);
    let _e6 = from_vec(_e5);
    return _e6;
}

fn blend_corners(a0_23: FeLocal_fe_shader_private_layout_3_, a1_14: FeLocal_fe_shader_private_layout_3_, a2_6: FeLocal_fe_shader_private_layout_3_, a3_3: FeLocal_fe_shader_private_layout_3_, a4_1: f32, a5_: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e6 = blend(a0_23, a1_14, a4_1);
    let _e7 = blend(a2_6, a3_3, a4_1);
    let _e8 = blend(_e6, _e7, a5_);
    return _e8;
}

fn sample_snapshot(a1_15: f32, a2_7: f32, a3_4: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e7 = bilinear_tap(a1_15, a2_7, (a3_4 - 1f), 11u);
    let _e11 = snapshot_pixels[i32(_e7.f0_)];
    let _e12 = unpack_lab(_e11);
    let _e16 = snapshot_pixels[i32(_e7.f1_)];
    let _e17 = unpack_lab(_e16);
    let _e21 = snapshot_pixels[i32(_e7.f2_)];
    let _e22 = unpack_lab(_e21);
    let _e26 = snapshot_pixels[i32(_e7.f3_)];
    let _e27 = unpack_lab(_e26);
    let _e30 = blend_corners(_e12, _e17, _e22, _e27, _e7.f4_, _e7.f5_);
    return _e30;
}

fn impl_trait_f32_max(a0_24: f32, a1_16: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_24);
    let _e3 = bitcast<u32>(a1_16);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn sample(a1_17: f32, a2_8: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e5 = bilinear_tap(a1_17, a2_8, 255f, 8u);
    let _e10 = initial_pixels[i32(_e5.f0_)].l;
    let _e12 = initial_pixels[i32(_e5.f0_)].a;
    let _e14 = initial_pixels[i32(_e5.f0_)].b;
    let _e20 = initial_pixels[i32(_e5.f1_)].l;
    let _e22 = initial_pixels[i32(_e5.f1_)].a;
    let _e24 = initial_pixels[i32(_e5.f1_)].b;
    let _e30 = initial_pixels[i32(_e5.f2_)].l;
    let _e32 = initial_pixels[i32(_e5.f2_)].a;
    let _e34 = initial_pixels[i32(_e5.f2_)].b;
    let _e40 = initial_pixels[i32(_e5.f3_)].l;
    let _e42 = initial_pixels[i32(_e5.f3_)].a;
    let _e44 = initial_pixels[i32(_e5.f3_)].b;
    let _e48 = blend_corners(FeLocal_fe_shader_private_layout_3_(_e10, _e12, _e14), FeLocal_fe_shader_private_layout_3_(_e20, _e22, _e24), FeLocal_fe_shader_private_layout_3_(_e30, _e32, _e34), FeLocal_fe_shader_private_layout_3_(_e40, _e42, _e44), _e5.f4_, _e5.f5_);
    return _e48;
}

fn is_input_settled(a0_25: FeLocal_fe_shader_private_layout_10_) -> bool {
    var local_33: bool;
    var local_34: bool = false;
    var local_35: bool = bool();

    if (a0_25.f13_ < 0.5f) {
        if (60f <= (a0_25.f10_ - a0_25.f11_)) {
            local_35 = true;
        }
    }
    let _e14 = local_35;
    return _e14;
}

fn progress_is_glitched(a0_26: u32) -> bool {
    return (((a0_26 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_27: FeLocal_fe_shader_private_layout_12_) -> bool {
    let _e2 = progress_is_glitched(a0_27.f4_);
    return _e2;
}

fn progress_is_escaped(a0_28: u32) -> bool {
    return (((a0_28 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_29: FeLocal_fe_shader_private_layout_12_) -> bool {
    let _e2 = progress_is_escaped(a0_29.f4_);
    return _e2;
}

fn pack_lab(a0_30: FeLocal_fe_shader_private_layout_3_) -> u32 {
    let _e4 = lib_clamp(a0_30.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = lib_clamp(((a0_30.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = lib_clamp(((a0_30.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_3_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn fract_(a0_31: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_31);
    return (a0_31 - _e1);
}

fn anchor(a0_32: u32) -> FeLocal_fe_shader_private_layout_1_ {
    var local_36: FeLocal_fe_shader_private_layout_1_;
    var local_37: bool = false;
    var local_38: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    switch a0_32 {
        case 0u: {
            local_38 = FeLocal_fe_shader_private_layout_1_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_38 = FeLocal_fe_shader_private_layout_1_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_38 = FeLocal_fe_shader_private_layout_1_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_38 = FeLocal_fe_shader_private_layout_1_(0.73f, 0.142f, 165f);
        }
        default: {
            local_38 = FeLocal_fe_shader_private_layout_1_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_38;
    return _e29;
}

fn impl_Oklch_interpolate(a0_33: FeLocal_fe_shader_private_layout_1_, a1_18: FeLocal_fe_shader_private_layout_1_, a2_9: f32) -> FeLocal_fe_shader_private_layout_1_ {
    var local_39: FeLocal_fe_shader_private_layout_1_;
    var local_40: bool = false;
    var local_41: f32 = f32();

    let _e7 = (a1_18.f2_ - a0_33.f2_);
    if (540f < _e7) {
        let _e14 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
        let _e17 = (_e7 - (360f * _e14));
        if (_e17 == -180f) {
            if (0f < _e7) {
                local_41 = 180f;
            } else {
                local_41 = _e17;
            }
        } else {
            local_41 = _e17;
        }
    } else {
        if (_e7 < -540f) {
            let _e32 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
            let _e35 = (_e7 - (360f * _e32));
            if (_e35 == -180f) {
                if (0f < _e7) {
                    local_41 = 180f;
                } else {
                    local_41 = _e35;
                }
            } else {
                local_41 = _e35;
            }
        } else {
            if (180f < _e7) {
                local_41 = (_e7 - 360f);
            } else {
                if (_e7 < -180f) {
                    local_41 = (_e7 + 360f);
                } else {
                    local_41 = _e7;
                }
            }
        }
    }
    let _e56 = local_41;
    return FeLocal_fe_shader_private_layout_1_((a0_33.f0_ + ((a1_18.f0_ - a0_33.f0_) * a2_9)), (a0_33.f1_ + ((a1_18.f1_ - a0_33.f1_) * a2_9)), (a0_33.f2_ + (_e56 * a2_9)));
}

fn wrap_pi(a0_34: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_34 / 6.2831855f) + 0.5f));
    return (a0_34 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_35: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_35) & 2147483647u));
}

fn sin_(a0_36: f32) -> f32 {
    let _e1 = wrap_pi(a0_36);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_37: f32) -> f32 {
    let _e3 = sin_((a0_37 + 1.5707964f));
    return _e3;
}

fn to_color(a0_38: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e3 = (a0_38.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_3_(a0_38.f0_, (a0_38.f1_ * _e6), (a0_38.f1_ * _e9));
}

fn escape_palette(a0_39: u32, a1_19: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_42: u32;
    var local_43: bool = false;
    var local_44: u32 = u32();

    let _e5 = from_i32_(a0_39);
    let _e11 = fract_(((_e5 + (4f / a1_19)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_1) = true;
        } else {
            local_44 = _e29;
        }
    }
    let _e38 = local_44;
    let _e39 = anchor(_e38);
    let _e40 = impl_Oklch_interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_3_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_40: FeLocal_fe_shader_private_layout_12_, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_45: u32;
    var local_46: bool = false;
    var local_47: u32 = u32();

    let _e4 = is_glitched(a0_40);
    if _e4 {
        let _e5 = glitch();
        local_47 = _e5;
    } else {
        let _e6 = is_escaped(a0_40);
        if _e6 {
            let _e9 = escape_palette(a0_40.f5_, a0_40.f7_, fe_trapped_2);
            local_47 = _e9;
        } else {
            let _e10 = interior();
            local_47 = _e10;
        }
    }
    let _e15 = local_47;
    return _e15;
}

fn input_age(a0_41: FeLocal_fe_shader_private_layout_10_) -> f32 {
    var local_48: f32;
    var local_49: bool = false;
    var local_50: f32 = f32();

    if (0.5f <= a0_41.f13_) {
    } else {
        local_50 = (a0_41.f10_ - a0_41.f11_);
    }
    let _e11 = local_50;
    return _e11;
}

fn progress(a0_42: f32, a1_20: f32, a2_10: f32) -> f32 {
    let _e7 = lib_clamp(((a0_42 - a1_20) / a2_10), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn impl_trait_Color_default() -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_();
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
    var local_6: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: bool = bool();
    var local_10: u32;
    var local_11: bool = false;
    var local_12: bool = bool();
    var local_13: bool = bool();
    var local_14: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();

    let _e12 = params.p29_;
    let _e14 = params.p30_;
    let _e16 = params.p31_;
    let _e18 = params.p32_;
    let _e20 = params.p33_;
    let _e22 = params.p34_;
    let _e24 = params.p35_;
    let _e26 = params.p36_;
    let _e28 = params.p37_;
    let _e30 = params.p38_;
    let _e32 = params.p39_;
    let _e34 = params.p40_;
    let _e36 = params.p41_;
    let _e38 = params.p42_;
    let _e40 = params.p43_;
    let _e46 = cache[i32(0u)].preview_dirty;
    if (_e46 == 0u) {
        local_1 = true;
    }
    let _e304 = local_1;
    if _e304 {
    } else {
        let _e56 = preview_cache[i32(0u)].prefix_only;
        let _e58 = preview_cache[i32(0u)].step_target;
        let _e60 = preview_cache[i32(0u)].budget;
        let _e62 = preview_cache[i32(0u)].epoch;
        if (_e58 == 0u) {
            local_3 = true;
        }
        let _e302 = local_3;
        if _e302 {
        } else {
            let _e69 = FeLocal_fe_shader_private_layout_10_(_e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40);
            let _e72 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
            let _e73 = from_i32_(global_invocation_id.x);
            let _e77 = to_i32_(((_e73 * _e30) / 256f));
            let _e78 = from_i32_(global_invocation_id.y);
            let _e82 = to_i32_(((_e78 * _e30) / 256f));
            let _e87 = cache[i32(1u)].x0_;
            let _e89 = cache[i32(1u)].x1_;
            let _e91 = cache[i32(1u)].x2_;
            let _e93 = cache[i32(1u)].x3_;
            let _e95 = cache[i32(1u)].y0_;
            let _e97 = cache[i32(1u)].y1_;
            let _e99 = cache[i32(1u)].y2_;
            let _e101 = cache[i32(1u)].y3_;
            let _e103 = cache[i32(1u)].zoom;
            let _e105 = cache[i32(1u)].res;
            let _e107 = cache[i32(1u)].cursor;
            let _e109 = cache[i32(1u)].aa;
            let _e111 = cache[i32(1u)].budget;
            let _e113 = cache[i32(1u)].radius;
            let _e115 = cache[i32(1u)].preview_dirty;
            let _e117 = cache[i32(1u)].blur_dirty;
            let _e119 = cache[i32(1u)].epoch;
            let _e121 = cache[i32(1u)].completed;
            let _e127 = cache[i32(2u)].x0_;
            let _e129 = cache[i32(2u)].x1_;
            let _e131 = cache[i32(2u)].x2_;
            let _e133 = cache[i32(2u)].x3_;
            let _e135 = cache[i32(2u)].y0_;
            let _e137 = cache[i32(2u)].y1_;
            let _e139 = cache[i32(2u)].y2_;
            let _e141 = cache[i32(2u)].y3_;
            let _e143 = cache[i32(2u)].zoom;
            let _e145 = cache[i32(2u)].res;
            let _e147 = cache[i32(2u)].cursor;
            let _e149 = cache[i32(2u)].aa;
            let _e151 = cache[i32(2u)].budget;
            let _e153 = cache[i32(2u)].radius;
            let _e155 = cache[i32(2u)].preview_dirty;
            let _e157 = cache[i32(2u)].blur_dirty;
            let _e159 = cache[i32(2u)].epoch;
            let _e161 = cache[i32(2u)].completed;
            let _e163 = reproject_coarse_pixel(_e69, FeLocal_fe_shader_private_layout_4_(_e87, _e89, _e91, _e93, _e95, _e97, _e99, _e101, _e103, _e105, _e107, _e109, _e111, _e113, _e115, _e117, _e119, _e121), FeLocal_fe_shader_private_layout_4_(_e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155, _e157, _e159, _e161), _e77, _e82);
            if _e163.f0_ {
                let _e168 = sample_snapshot(_e163.f2_, _e163.f3_, _e163.f4_);
                local_6 = _e168;
            } else {
                let _e171 = impl_trait_f32_max(_e163.f4_, 1f);
                let _e173 = (256f / _e171);
                let _e178 = sample((_e163.f2_ * _e173), (_e163.f3_ * _e173));
                local_6 = _e178;
            }
            let _e184 = local_6;
            if _e163.f1_ {
                let _e186 = is_input_settled(_e69);
                local_9 = (_e186 == false);
            }
            let _e192 = local_9;
            if _e192 {
                pixels[i32(_e72)].l = _e184.f0_;
                pixels[i32(_e72)].a = _e184.f1_;
                pixels[i32(_e72)].b = _e184.f2_;
            } else {
                let _e205 = preview_progress[i32(_e72)].dz_re;
                let _e207 = preview_progress[i32(_e72)].dz_im;
                let _e209 = preview_progress[i32(_e72)].z_re;
                let _e211 = preview_progress[i32(_e72)].z_im;
                let _e213 = preview_progress[i32(_e72)].reference_i;
                let _e215 = preview_progress[i32(_e72)].iteration;
                let _e217 = preview_progress[i32(_e72)].epoch;
                let _e219 = preview_progress[i32(_e72)].magnitude;
                let _e220 = FeLocal_fe_shader_private_layout_12_(_e205, _e207, _e209, _e211, _e213, _e215, _e217, _e219);
                if (_e217 == _e62) {
                    let _e222 = is_escaped(_e220);
                    if _e222 {
                        let _e223 = is_glitched(_e220);
                        if _e223 {
                        } else {
                            local_12 = true;
                        }
                    }
                }
                let _e228 = local_12;
                if (_e217 == _e62) {
                    let _e230 = is_escaped(_e220);
                    if _e230 {
                    } else {
                        let _e231 = is_glitched(_e220);
                        if _e231 {
                        } else {
                            if (_e56 == 0u) {
                                if (_e215 < _e60) {
                                } else {
                                    local_13 = true;
                                }
                            }
                        }
                    }
                }
                let _e238 = local_13;
                if (_e228 | _e238) {
                    let _e241 = progress_color(_e220, (&fe_trapped));
                    let _e242 = unpack_lab(_e241);
                    if _e163.f1_ {
                        let _e244 = input_age(_e69);
                        let _e247 = progress(_e244, 60f, 300f);
                        let _e248 = blend(_e184, _e242, _e247);
                        local_14 = _e248;
                    } else {
                        local_14 = _e242;
                    }
                    let _e252 = local_14;
                    pixels[i32(_e72)].l = _e252.f0_;
                    pixels[i32(_e72)].a = _e252.f1_;
                    pixels[i32(_e72)].b = _e252.f2_;
                } else {
                    if _e163.f1_ {
                        pixels[i32(_e72)].l = _e184.f0_;
                        pixels[i32(_e72)].a = _e184.f1_;
                        pixels[i32(_e72)].b = _e184.f2_;
                    } else {
                        if (_e56 == 0u) {
                            let _e272 = is_glitched(_e220);
                            if _e272 {
                                let _e273 = interior();
                                let _e274 = unpack_lab(_e273);
                                pixels[i32(_e72)].l = _e274.f0_;
                                pixels[i32(_e72)].a = _e274.f1_;
                                pixels[i32(_e72)].b = _e274.f2_;
                            } else {
                                let _e283 = impl_trait_Color_default();
                                pixels[i32(_e72)].l = _e283.f0_;
                                pixels[i32(_e72)].a = _e283.f1_;
                                pixels[i32(_e72)].b = _e283.f2_;
                            }
                        } else {
                            let _e292 = impl_trait_Color_default();
                            pixels[i32(_e72)].l = _e292.f0_;
                            pixels[i32(_e72)].a = _e292.f1_;
                            pixels[i32(_e72)].b = _e292.f2_;
                        }
                    }
                }
            }
        }
    }
    let _e315 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e315);
}
