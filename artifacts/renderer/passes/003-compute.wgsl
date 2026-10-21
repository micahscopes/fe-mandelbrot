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

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: f32,
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
    f0_: bool,
    f1_: bool,
    f2_: f32,
    f3_: f32,
    f4_: f32,
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

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_18_ {
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

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: bool,
    f1_: bool,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: bool,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_19_ {
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
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: u32,
    f1_: u32,
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
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> preview_progress: array<preview_progress_element>;
@group(0) @binding(2)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(3)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(4)
var<storage> params: Params;
@group(0) @binding(5)
var<storage, read_write> trap: array<u32, 65536>;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn is_input_settled(a0_2: FeLocal_fe_shader_private_layout_7_) -> bool {
    var local_6: bool;
    var local_7: bool = false;
    var local_8: bool = bool();

    if (a0_2.f13_ < 0.5f) {
        if (60f <= (a0_2.f10_ - a0_2.f11_)) {
            local_8 = true;
        }
    }
    let _e14 = local_8;
    return _e14;
}

fn from_quad(a0_3: f32, a1_: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_3, FeLocal_fe_shader_private_layout_2_(a1_, FeLocal_fe_shader_private_layout_1_(a2_, FeLocal_fe_shader_private_layout_0_(a3_))));
}

fn impl_ViewCache_center(a0_4: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e5 = from_quad(a0_4.f0_, a0_4.f1_, a0_4.f2_, a0_4.f3_);
    let _e10 = from_quad(a0_4.f4_, a0_4.f5_, a0_4.f6_, a0_4.f7_);
    return FeLocal_fe_shader_private_layout_8_(_e5, _e10);
}

fn impl_MandelbrotViewState_center(a0_5: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e5 = from_quad(a0_5.f0_, a0_5.f1_, a0_5.f2_, a0_5.f3_);
    let _e10 = from_quad(a0_5.f4_, a0_5.f5_, a0_5.f6_, a0_5.f7_);
    return FeLocal_fe_shader_private_layout_8_(_e5, _e10);
}

fn to_quad(a0_6: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_17_ {
    return FeLocal_fe_shader_private_layout_17_(a0_6.f0_, a0_6.f1_.f0_, a0_6.f1_.f1_.f0_, a0_6.f1_.f1_.f1_.f0_);
}

fn expansion_delta(a0_7: FeLocal_fe_shader_private_layout_3_, a1_1: FeLocal_fe_shader_private_layout_3_) -> f32 {
    let _e2 = to_quad(a0_7);
    let _e7 = to_quad(a1_1);
    return (((_e7.f0_ - _e2.f0_) + (_e7.f1_ - _e2.f1_)) + ((_e7.f2_ - _e2.f2_) + (_e7.f3_ - _e2.f3_)));
}

fn center_delta(a0_8: FeLocal_fe_shader_private_layout_8_, a1_2: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = expansion_delta(a0_8.f0_, a1_2.f0_);
    let _e7 = expansion_delta(a0_8.f1_, a1_2.f1_);
    return FeLocal_fe_shader_private_layout_4_(_e4, _e7);
}

fn delta_from(a0_9: FeLocal_fe_shader_private_layout_10_, a1_3: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e2 = impl_ViewCache_center(a0_9);
    let _e3 = impl_MandelbrotViewState_center(a1_3);
    let _e4 = center_delta(_e2, _e3);
    return _e4;
}

fn lib_image_max(a0_10: f32, a1_4: f32) -> f32 {
    var local_9: f32;
    var local_10: bool = false;
    var local_11: f32 = f32();

    if (a1_4 < a0_10) {
        local_11 = a0_10;
    } else {
        local_11 = a1_4;
    }
    let _e8 = local_11;
    return _e8;
}

fn reproject_coarse_pixel(a0_11: FeLocal_fe_shader_private_layout_7_, a1_5: FeLocal_fe_shader_private_layout_10_, a2_1: FeLocal_fe_shader_private_layout_10_, a3_1: u32, a4_: u32) -> FeLocal_fe_shader_private_layout_15_ {
    var local_12: FeLocal_fe_shader_private_layout_15_;
    var local_13: bool = false;
    var local_14: bool = bool();
    var local_15: FeLocal_fe_shader_private_layout_15_;
    var local_16: bool = false;
    var local_17: FeLocal_fe_shader_private_layout_10_ = FeLocal_fe_shader_private_layout_10_();
    var local_18: FeLocal_fe_shader_private_layout_15_;
    var local_19: bool = false;
    var local_20: bool = bool();

    if (a1_5.f17_ == 1u) {
        if ((a1_5.f16_ < a2_1.f16_) == false) {
            local_14 = true;
        }
    }
    let _e20 = local_14;
    if _e20 {
        local_17 = a1_5;
    } else {
        local_17 = a2_1;
    }
    let _e26 = local_17;
    let _e27 = delta_from(_e26, a0_11);
    let _e28 = from_i32_(a3_1);
    let _e37 = from_i32_(a4_);
    let _e48 = lib_image_max(_e26.f8_, 0.000000000000000000000000001f);
    let _e61 = ((((((_e27.f0_ + (((((_e28 + 0.5f) * 2f) / a0_11.f9_) - 1f) * a0_11.f8_)) / _e48) + 1f) * _e26.f9_) * 0.5f) - 0.5f);
    let _e74 = ((((1f - ((_e27.f1_ + ((1f - (((_e37 + 0.5f) * 2f) / a0_11.f9_)) * a0_11.f8_)) / _e48)) * _e26.f9_) * 0.5f) - 0.5f);
    if (_e26.f17_ == 1u) {
        if (0f <= _e61) {
            if (0f <= _e74) {
                if (_e61 < (_e26.f9_ - 1f)) {
                    if (_e74 < (_e26.f9_ - 1f)) {
                        local_20 = true;
                    }
                }
            }
        }
    }
    let _e93 = local_20;
    return FeLocal_fe_shader_private_layout_15_(_e20, _e93, _e61, _e74, _e26.f9_);
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_();
}

fn from_continuation(a0_12: FeLocal_fe_shader_private_layout_4_, a1_6: FeLocal_fe_shader_private_layout_4_, a2_2: u32, a3_2: u32, a4_1: u32, a5_: f32) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_(a0_12.f0_, a0_12.f1_, a1_6.f0_, a1_6.f1_, a2_2, a3_2, a4_1, a5_);
}

fn empty_progress(a0_13: u32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_13, 4f);
    return _e6;
}

fn progress_is_presentable(a0_14: u32) -> bool {
    return (((a0_14 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_15: u32) -> bool {
    return (((a0_15 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_16: u32, a1_7: u32, a2_3: u32) -> bool {
    var local_21: bool;
    var local_22: bool = false;
    var local_23: bool = bool();

    if ((a1_7 < a2_3) == false) {
        local_23 = true;
    } else {
        let _e8 = progress_has_outcome(a0_16);
        if _e8 {
            local_23 = true;
        } else {
            let _e9 = progress_is_presentable(a0_16);
            if _e9 {
                local_23 = true;
            }
        }
    }
    let _e17 = local_23;
    return _e17;
}

fn is_terminal(a0_17: FeLocal_fe_shader_private_layout_5_, a1_8: u32) -> bool {
    let _e4 = progress_is_terminal(a0_17.f4_, a0_17.f5_, a1_8);
    return _e4;
}

fn camera(a0_18: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e1 = impl_MandelbrotViewState_center(a0_18);
    return FeLocal_fe_shader_private_layout_9_(_e1, a0_18.f8_, a0_18.f9_);
}

fn ordered_2x2_(a0_19: u32, a1_9: u32) -> FeLocal_fe_shader_private_layout_11_ {
    let _e6 = from_i32_(a0_19);
    let _e9 = from_i32_((a0_19 & 1u));
    let _e13 = from_i32_(a1_9);
    let _e16 = from_i32_((a1_9 & 1u));
    return FeLocal_fe_shader_private_layout_11_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_20: FeLocal_fe_shader_private_layout_11_, a1_10: f32) -> FeLocal_fe_shader_private_layout_13_ {
    return FeLocal_fe_shader_private_layout_13_((((a0_20.f0_ / a1_10) * 2f) - 1f), (1f - ((a0_20.f1_ / a1_10) * 2f)));
}

fn decode(a0_21: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e9 = from_quad(bitcast<f32>(a0_21.f0_), bitcast<f32>(a0_21.f1_), bitcast<f32>(a0_21.f2_), bitcast<f32>(a0_21.f3_));
    let _e18 = from_quad(bitcast<f32>(a0_21.f4_), bitcast<f32>(a0_21.f5_), bitcast<f32>(a0_21.f6_), bitcast<f32>(a0_21.f7_));
    return FeLocal_fe_shader_private_layout_8_(_e9, _e18);
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

fn precision_lib_two_sum_0836_(a0_26: f32, a1_11: f32) -> FeLocal_fe_shader_private_layout_18_ {
    let _e2 = (a0_26 + a1_11);
    let _e3 = (_e2 - a0_26);
    return FeLocal_fe_shader_private_layout_18_(_e2, ((a0_26 - (_e2 - _e3)) + (a1_11 - _e3)));
}

fn impl_trait_Last_add_corr(a0_27: f32, a1_12: f32, a2_4: f32) -> f32 {
    return ((a2_4 + a0_27) + a1_12);
}

fn add_corr_ge630_(a0_28: FeLocal_fe_shader_private_layout_1_, a1_13: FeLocal_fe_shader_private_layout_1_, a2_5: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_0836_(a0_28.f0_, a2_5);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_13.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_28.f1_.f0_, a1_13.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_0836_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_29: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_29.f0_;
}

fn with_head_ge630_(a0_30: FeLocal_fe_shader_private_layout_1_, a1_14: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_14, FeLocal_fe_shader_private_layout_0_(a0_30.f1_.f0_));
}

fn add_corr_g4419_(a0_31: FeLocal_fe_shader_private_layout_2_, a1_15: FeLocal_fe_shader_private_layout_2_, a2_6: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_0836_(a0_31.f0_, a2_6);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_15.f0_);
    let _e14 = add_corr_ge630_(a0_31.f1_, a1_15.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_0836_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_32: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_32.f0_;
}

fn with_head_g4419_(a0_33: FeLocal_fe_shader_private_layout_2_, a1_16: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_16, a0_33.f1_);
}

fn add_corr_ga905_(a0_34: FeLocal_fe_shader_private_layout_3_, a1_17: FeLocal_fe_shader_private_layout_3_, a2_7: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_0836_(a0_34.f0_, a2_7);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_17.f0_);
    let _e14 = add_corr_g4419_(a0_34.f1_, a1_17.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_0836_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub_ga905_(a0_35: FeLocal_fe_shader_private_layout_3_, a1_18: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_18);
    let _e4 = add_corr_ga905_(a0_35, _e2, 0f);
    return _e4;
}

fn sub_ge3dc(a0_36: FeLocal_fe_shader_private_layout_8_, a1_19: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e4 = sub_ga905_(a0_36.f0_, a1_19.f0_);
    let _e7 = sub_ga905_(a0_36.f1_, a1_19.f1_);
    return FeLocal_fe_shader_private_layout_8_(_e4, _e7);
}

fn reference_plus_delta(a0_37: f32, a1_20: f32, a2_8: f32, a3_3: f32, a4_2: f32) -> f32 {
    let _e5 = precision_lib_two_sum_0836_(a0_37, a4_2);
    let _e8 = precision_lib_two_sum_0836_(_e5.f0_, a1_20);
    let _e11 = precision_lib_two_sum_0836_(_e8.f0_, a2_8);
    let _e14 = precision_lib_two_sum_0836_(_e11.f0_, a3_3);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_38: FeLocal_fe_shader_private_layout_3_, a1_21: f32) -> f32 {
    let _e2 = to_quad(a0_38);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_21);
    return _e7;
}

fn reference_with_delta(a0_39: FeLocal_fe_shader_private_layout_8_, a1_22: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = expansion_plus_delta(a0_39.f0_, a1_22.f0_);
    let _e7 = expansion_plus_delta(a0_39.f1_, a1_22.f1_);
    return FeLocal_fe_shader_private_layout_4_(_e4, _e7);
}

fn pixel_delta_from_reference(a1_23: u32, a2_9: FeLocal_fe_shader_private_layout_9_, a3_4: FeLocal_fe_shader_private_layout_11_, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_24: FeLocal_fe_shader_private_layout_4_;
    var local_25: bool = false;

    let _e7 = plane(a3_4, a2_9.f2_);
    if (a1_23 > (4294967295u - 8193u)) {
        (*fe_trapped_1) = true;
    }
    let _e17 = orbit[i32((a1_23 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_23 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_23 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_23 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_23 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_23 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_23 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_23 + 8193u))].im_w3_bits;
    let _e33 = decode(FeLocal_fe_shader_private_layout_6_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e42 = sub_ge3dc(a2_9.f0_, _e33);
    let _e43 = reference_with_delta(_e42, FeLocal_fe_shader_private_layout_4_((_e7.f0_ * a2_9.f1_), (_e7.f1_ * a2_9.f1_)));
    return _e43;
}

fn progress_reference_index(a0_40: u32) -> u32 {
    return (a0_40 & 536870911u);
}

fn resolve_prefix_step(a0_41: u32, a1_24: u32, a2_10: u32, a3_5: u32, a4_3: bool, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_16_ {
    var local_26: FeLocal_fe_shader_private_layout_16_;
    var local_27: bool = false;
    var local_28: u32 = u32();
    var local_29: FeLocal_fe_shader_private_layout_16_;
    var local_30: bool = false;
    var local_31: u32 = u32();
    var local_32: FeLocal_fe_shader_private_layout_16_;
    var local_33: bool = false;
    var local_34: FeLocal_fe_shader_private_layout_16_ = FeLocal_fe_shader_private_layout_16_();

    if (0u < a3_5) {
        local_28 = (a3_5 - 1u);
    }
    let _e16 = local_28;
    if a4_3 {
        if (_e16 < a2_10) {
            local_31 = _e16;
        } else {
            local_31 = a2_10;
        }
    } else {
        local_31 = a2_10;
    }
    let _e24 = local_31;
    let _e25 = progress_reference_index(a0_41);
    let _e26 = progress_is_terminal(a0_41, a1_24, _e24);
    if _e26 {
        local_34 = FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_16_().f0_, FeLocal_fe_shader_private_layout_16_().f1_, _e25);
    } else {
        if (_e25 > (4294967295u - 1u)) {
            (*fe_trapped_2) = true;
        } else {
            if (((_e25 + 1u) < a3_5) == false) {
                if a4_3 {
                    local_34 = FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_16_().f0_, FeLocal_fe_shader_private_layout_16_().f1_, _e25);
                } else {
                    if (a3_5 < 2u) {
                        local_34 = FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_16_().f0_, FeLocal_fe_shader_private_layout_16_().f1_, _e25);
                    } else {
                        local_34 = FeLocal_fe_shader_private_layout_16_(true, true, 0u);
                    }
                }
            } else {
                local_34 = FeLocal_fe_shader_private_layout_16_(true, false, _e25);
            }
        }
    }
    let _e63 = local_34;
    return _e63;
}

fn position(a0_42: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_42.f2_, a0_42.f3_);
}

fn prepare_reference_step(a0_43: FeLocal_fe_shader_private_layout_5_, a1_25: u32, a2_11: u32, a3_6: bool, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_14_ {
    var local_35: FeLocal_fe_shader_private_layout_14_;
    var local_36: bool = false;
    var local_37: FeLocal_fe_shader_private_layout_14_ = FeLocal_fe_shader_private_layout_14_();

    let _e9 = resolve_prefix_step(a0_43.f4_, a0_43.f5_, a1_25, a2_11, a3_6, fe_trapped_3);
    if (_e9.f0_ == false) {
        local_37 = FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_14_().f0_, a0_43);
    } else {
        if _e9.f1_ {
            let _e17 = position(a0_43);
            let _e22 = from_continuation(_e17, _e17, 0u, a0_43.f5_, a0_43.f6_, a0_43.f7_);
            local_37 = FeLocal_fe_shader_private_layout_14_(true, _e22);
        } else {
            local_37 = FeLocal_fe_shader_private_layout_14_(true, a0_43);
        }
    }
    let _e31 = local_37;
    return _e31;
}

fn reference_index(a0_44: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e2 = progress_reference_index(a0_44.f4_);
    return _e2;
}

fn decode_metadata(a0_45: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_12_ {
    return FeLocal_fe_shader_private_layout_12_(a0_45.f0_, a0_45.f1_);
}

fn delta(a0_46: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_46.f0_, a0_46.f1_);
}

fn progress_is_escaped(a0_47: u32) -> bool {
    return (((a0_47 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_48: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_escaped(a0_48.f4_);
    return _e2;
}

fn progress_is_glitched(a0_49: u32) -> bool {
    return (((a0_49 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_50: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_glitched(a0_50.f4_);
    return _e2;
}

fn is_invalid(a0_51: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_38: bool;
    var local_39: bool = false;
    var local_40: bool = bool();

    if (a0_51.f0_ == 2143289344u) {
        local_40 = true;
    } else {
        if (a0_51.f4_ == 2143289344u) {
            local_40 = true;
        }
    }
    let _e14 = local_40;
    return _e14;
}

fn perturb(a0_52: FeLocal_fe_shader_private_layout_8_, a1_26: FeLocal_fe_shader_private_layout_4_, a2_12: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = to_quad(a0_52.f0_);
    let _e10 = to_quad(a0_52.f1_);
    return FeLocal_fe_shader_private_layout_4_(((((2f * ((_e4.f0_ * a1_26.f0_) - (_e10.f0_ * a1_26.f1_))) + (2f * ((((((_e4.f1_ * a1_26.f0_) - (_e10.f1_ * a1_26.f1_)) + (_e4.f2_ * a1_26.f0_)) - (_e10.f2_ * a1_26.f1_)) + (_e4.f3_ * a1_26.f0_)) - (_e10.f3_ * a1_26.f1_)))) + ((a1_26.f0_ * a1_26.f0_) - (a1_26.f1_ * a1_26.f1_))) + a2_12.f0_), ((((2f * ((_e4.f0_ * a1_26.f1_) + (_e10.f0_ * a1_26.f0_))) + (2f * ((((((_e4.f1_ * a1_26.f1_) + (_e10.f1_ * a1_26.f0_)) + (_e4.f2_ * a1_26.f1_)) + (_e10.f2_ * a1_26.f0_)) + (_e4.f3_ * a1_26.f1_)) + (_e10.f3_ * a1_26.f0_)))) + ((2f * a1_26.f0_) * a1_26.f1_)) + a2_12.f1_));
}

fn norm_squared(a0_53: FeLocal_fe_shader_private_layout_4_) -> f32 {
    return ((a0_53.f0_ * a0_53.f0_) + (a0_53.f1_ * a0_53.f1_));
}

fn pack_progress_reference(a0_54: u32, a1_27: u32, a2_13: u32) -> u32 {
    return (((a0_54 & 536870911u) | (a1_27 << 31u)) | (a2_13 << 30u));
}

fn non_finite(a0_55: f32) -> bool {
    return (((a0_55 - a0_55) == 0f) == false);
}

fn is_non_finite_complex(a0_56: FeLocal_fe_shader_private_layout_4_) -> bool {
    var local_41: bool;
    var local_42: bool = false;
    var local_43: bool = bool();

    let _e4 = non_finite(a0_56.f0_);
    if _e4 {
        local_43 = true;
    } else {
        let _e6 = non_finite(a0_56.f1_);
        if _e6 {
            local_43 = true;
        }
    }
    let _e12 = local_43;
    return _e12;
}

fn impl_trait_f32_abs(a0_57: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_57) & 2147483647u));
}

fn impl_trait_f32_max(a0_58: f32, a1_28: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_58);
    let _e3 = bitcast<u32>(a1_28);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress_step(a0_59: FeLocal_fe_shader_private_layout_5_, a1_29: FeLocal_fe_shader_private_layout_4_, a2_14: FeLocal_fe_shader_private_layout_6_, a3_7: FeLocal_fe_shader_private_layout_6_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_44: FeLocal_fe_shader_private_layout_5_;
    var local_45: bool = false;
    var local_46: u32 = u32();
    var local_47: FeLocal_fe_shader_private_layout_5_;
    var local_48: bool = false;
    var local_49: u32 = u32();
    var local_50: FeLocal_fe_shader_private_layout_5_;
    var local_51: bool = false;
    var local_52: f32 = f32();
    var local_53: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_54: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_55: u32 = u32();
    var local_56: u32 = u32();
    var local_57: u32 = u32();
    var local_58: bool = bool();
    var local_59: FeLocal_fe_shader_private_layout_5_;
    var local_60: bool = false;

    let _e7 = delta(a0_59);
    let _e8 = position(a0_59);
    let _e9 = reference_index(a0_59);
    let _e10 = is_escaped(a0_59);
    if _e10 {
        local_46 = 1u;
    }
    let _e16 = local_46;
    let _e17 = is_glitched(a0_59);
    if _e17 {
        local_49 = 1u;
    }
    let _e28 = local_49;
    let _e30 = is_invalid(a2_14);
    if _e30 {
        local_52 = a0_59.f7_;
        local_53 = _e8;
        local_54 = _e7;
        local_55 = 1u;
        local_56 = _e16;
        local_57 = _e9;
    } else {
        let _e31 = is_invalid(a3_7);
        if _e31 {
            local_52 = a0_59.f7_;
            local_53 = _e8;
            local_54 = _e7;
            local_55 = 1u;
            local_56 = _e16;
            local_57 = _e9;
        } else {
            let _e33 = decode(a2_14);
            let _e34 = decode(a3_7);
            let _e35 = perturb(_e33, _e7, a1_29);
            let _e36 = reference_with_delta(_e34, _e35);
            let _e37 = norm_squared(_e36);
            let _e38 = norm_squared(_e35);
            if (4f < _e37) {
                let _e44 = impl_trait_f32_abs((_e37 - 4f));
                let _e46 = impl_trait_f32_max(1f, _e37);
                if (_e44 <= (0.000004f * _e46)) {
                    local_58 = true;
                }
            }
            let _e53 = local_58;
            let _e54 = is_non_finite_complex(_e35);
            if _e54 {
                local_52 = a0_59.f7_;
                local_53 = _e8;
                local_54 = _e7;
                local_55 = 1u;
                local_56 = _e16;
                local_57 = _e9;
            } else {
                let _e55 = non_finite(_e37);
                if (_e55 | _e53) {
                    local_52 = a0_59.f7_;
                    local_53 = _e8;
                    local_54 = _e7;
                    local_55 = 1u;
                    local_56 = _e16;
                    local_57 = _e9;
                } else {
                    if (4f < _e37) {
                        local_52 = _e37;
                        local_53 = _e36;
                        local_54 = _e35;
                        local_55 = _e28;
                        local_56 = 1u;
                        local_57 = _e9;
                    } else {
                        if (_e37 < _e38) {
                            local_52 = a0_59.f7_;
                            local_53 = _e36;
                            local_54 = _e36;
                            local_55 = _e28;
                            local_56 = _e16;
                        } else {
                            if (_e9 > (4294967295u - 1u)) {
                                (*fe_trapped_4) = true;
                            } else {
                                local_52 = a0_59.f7_;
                                local_53 = _e36;
                                local_54 = _e35;
                                local_55 = _e28;
                                local_56 = _e16;
                                local_57 = (_e9 + 1u);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e113 = local_52;
    let _e115 = local_53;
    let _e117 = local_54;
    let _e119 = local_55;
    let _e121 = local_56;
    let _e123 = local_57;
    let _e124 = pack_progress_reference(_e123, _e121, _e119);
    if (a0_59.f5_ > (4294967295u - 1u)) {
        (*fe_trapped_4) = true;
    }
    let _e133 = from_continuation(_e117, _e115, _e124, (a0_59.f5_ + 1u), a0_59.f6_, _e113);
    return _e133;
}

fn advance_preview_progress(a1_30: u32, a2_15: FeLocal_fe_shader_private_layout_4_, a3_8: u32, a4_4: u32, a5_1: bool, a6_: FeLocal_fe_shader_private_layout_5_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_61: FeLocal_fe_shader_private_layout_5_;
    var local_62: bool = false;
    var local_63: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_64: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_5_;
    var loop_did_return: bool = false;
    var loop_header_carry_53_: bool;

    if (a1_30 > (4294967295u - 8194u)) {
    } else {
        let _e17 = orbit[i32((a1_30 + 8194u))].re_w0_bits;
        let _e19 = orbit[i32((a1_30 + 8194u))].re_w1_bits;
        let _e21 = orbit[i32((a1_30 + 8194u))].re_w2_bits;
        let _e23 = orbit[i32((a1_30 + 8194u))].re_w3_bits;
        let _e25 = orbit[i32((a1_30 + 8194u))].im_w0_bits;
        let _e27 = orbit[i32((a1_30 + 8194u))].im_w1_bits;
        let _e29 = orbit[i32((a1_30 + 8194u))].im_w2_bits;
        let _e31 = orbit[i32((a1_30 + 8194u))].im_w3_bits;
        let _e33 = decode_metadata(FeLocal_fe_shader_private_layout_6_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
        local_63 = a6_;
        local_64 = 0u;
        loop {
            let _e42 = local_63;
            let _e44 = local_64;
            let _e45 = (_e44 < a4_4);
            loop_header_carry_53_ = _e45;
            if _e45 {
                let _e46 = prepare_reference_step(_e42, a3_8, _e33.f0_, a5_1, fe_trapped_5);
                if (_e46.f0_ == false) {
                    local_63 = _e42;
                    local_64 = a4_4;
                    continue;
                }
                let _e53 = reference_index(_e46.f1_);
                if (a1_30 > (4294967295u - _e53)) {
                } else {
                    let _e61 = orbit[i32((a1_30 + _e53))].re_w0_bits;
                    let _e63 = orbit[i32((a1_30 + _e53))].re_w1_bits;
                    let _e65 = orbit[i32((a1_30 + _e53))].re_w2_bits;
                    let _e67 = orbit[i32((a1_30 + _e53))].re_w3_bits;
                    let _e69 = orbit[i32((a1_30 + _e53))].im_w0_bits;
                    let _e71 = orbit[i32((a1_30 + _e53))].im_w1_bits;
                    let _e73 = orbit[i32((a1_30 + _e53))].im_w2_bits;
                    let _e75 = orbit[i32((a1_30 + _e53))].im_w3_bits;
                    let _e78 = (a1_30 + _e53);
                    if (a1_30 > (4294967295u - _e53)) {
                    } else {
                        if (_e78 > (4294967295u - 1u)) {
                            (*fe_trapped_5) = true;
                            break;
                        }
                        let _e90 = orbit[i32((_e78 + 1u))].re_w0_bits;
                        let _e92 = orbit[i32((_e78 + 1u))].re_w1_bits;
                        let _e94 = orbit[i32((_e78 + 1u))].re_w2_bits;
                        let _e96 = orbit[i32((_e78 + 1u))].re_w3_bits;
                        let _e98 = orbit[i32((_e78 + 1u))].im_w0_bits;
                        let _e100 = orbit[i32((_e78 + 1u))].im_w1_bits;
                        let _e102 = orbit[i32((_e78 + 1u))].im_w2_bits;
                        let _e104 = orbit[i32((_e78 + 1u))].im_w3_bits;
                        let _e106 = advance_progress_step(_e46.f1_, a2_15, FeLocal_fe_shader_private_layout_6_(_e61, _e63, _e65, _e67, _e69, _e71, _e73, _e75), FeLocal_fe_shader_private_layout_6_(_e90, _e92, _e94, _e96, _e98, _e100, _e102, _e104), fe_trapped_5);
                        local_63 = _e106;
                        local_64 = (_e44 + 1u);
                        continue;
                    }
                }
                (*fe_trapped_5) = true;
                break;
            } else {
                loop_result = _e42;
                loop_did_return = true;
                break;
            }
        }
        let _e117 = loop_did_return;
        if _e117 {
            let _e119 = loop_result;
            local_61 = _e119;
            local_62 = true;
        }
    }
    let _e125 = local_62;
    if _e125 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e127 = local_61;
    return _e127;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_5: bool = bool();

    let _e11 = params.p29_;
    let _e13 = params.p30_;
    let _e15 = params.p31_;
    let _e17 = params.p32_;
    let _e19 = params.p33_;
    let _e21 = params.p34_;
    let _e23 = params.p35_;
    let _e25 = params.p36_;
    let _e27 = params.p37_;
    let _e29 = params.p38_;
    let _e31 = params.p39_;
    let _e33 = params.p40_;
    let _e35 = params.p41_;
    let _e37 = params.p42_;
    let _e39 = params.p43_;
    let _e45 = cache[i32(0u)].preview_dirty;
    if (_e45 == 0u) {
        local_1 = true;
    }
    let _e275 = local_1;
    if _e275 {
    } else {
        let _e55 = preview_cache[i32(0u)].reference_bank;
        let _e57 = preview_cache[i32(0u)].prefix_only;
        let _e59 = preview_cache[i32(0u)].step_target;
        let _e61 = preview_cache[i32(0u)].budget;
        let _e63 = preview_cache[i32(0u)].epoch;
        let _e65 = preview_cache[i32(0u)].completed;
        if (_e65 == 1u) {
        } else {
            if (_e59 == 0u) {
                local_3 = true;
            }
            let _e273 = local_3;
            if _e273 {
            } else {
                let _e72 = FeLocal_fe_shader_private_layout_7_(_e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39);
                let _e73 = from_i32_(global_invocation_id.x);
                let _e77 = to_i32_(((_e73 * _e29) / 256f));
                let _e78 = from_i32_(global_invocation_id.y);
                let _e82 = to_i32_(((_e78 * _e29) / 256f));
                let _e83 = is_input_settled(_e72);
                if _e83 {
                } else {
                    let _e88 = cache[i32(1u)].x0_;
                    let _e90 = cache[i32(1u)].x1_;
                    let _e92 = cache[i32(1u)].x2_;
                    let _e94 = cache[i32(1u)].x3_;
                    let _e96 = cache[i32(1u)].y0_;
                    let _e98 = cache[i32(1u)].y1_;
                    let _e100 = cache[i32(1u)].y2_;
                    let _e102 = cache[i32(1u)].y3_;
                    let _e104 = cache[i32(1u)].zoom;
                    let _e106 = cache[i32(1u)].res;
                    let _e108 = cache[i32(1u)].cursor;
                    let _e110 = cache[i32(1u)].aa;
                    let _e112 = cache[i32(1u)].budget;
                    let _e114 = cache[i32(1u)].radius;
                    let _e116 = cache[i32(1u)].preview_dirty;
                    let _e118 = cache[i32(1u)].blur_dirty;
                    let _e120 = cache[i32(1u)].epoch;
                    let _e122 = cache[i32(1u)].completed;
                    let _e128 = cache[i32(2u)].x0_;
                    let _e130 = cache[i32(2u)].x1_;
                    let _e132 = cache[i32(2u)].x2_;
                    let _e134 = cache[i32(2u)].x3_;
                    let _e136 = cache[i32(2u)].y0_;
                    let _e138 = cache[i32(2u)].y1_;
                    let _e140 = cache[i32(2u)].y2_;
                    let _e142 = cache[i32(2u)].y3_;
                    let _e144 = cache[i32(2u)].zoom;
                    let _e146 = cache[i32(2u)].res;
                    let _e148 = cache[i32(2u)].cursor;
                    let _e150 = cache[i32(2u)].aa;
                    let _e152 = cache[i32(2u)].budget;
                    let _e154 = cache[i32(2u)].radius;
                    let _e156 = cache[i32(2u)].preview_dirty;
                    let _e158 = cache[i32(2u)].blur_dirty;
                    let _e160 = cache[i32(2u)].epoch;
                    let _e162 = cache[i32(2u)].completed;
                    let _e164 = reproject_coarse_pixel(_e72, FeLocal_fe_shader_private_layout_10_(_e88, _e90, _e92, _e94, _e96, _e98, _e100, _e102, _e104, _e106, _e108, _e110, _e112, _e114, _e116, _e118, _e120, _e122), FeLocal_fe_shader_private_layout_10_(_e128, _e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148, _e150, _e152, _e154, _e156, _e158, _e160, _e162), _e77, _e82);
                    if _e164.f1_ {
                        local_3 = true;
                    }
                    let _e169 = local_3;
                    if _e169 {
                    }
                }
                let _e271 = local_3;
                if _e271 {
                } else {
                    let _e173 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
                    let _e177 = preview_progress[i32(_e173)].dz_re;
                    let _e179 = preview_progress[i32(_e173)].dz_im;
                    let _e181 = preview_progress[i32(_e173)].z_re;
                    let _e183 = preview_progress[i32(_e173)].z_im;
                    let _e185 = preview_progress[i32(_e173)].reference_i;
                    let _e187 = preview_progress[i32(_e173)].iteration;
                    let _e189 = preview_progress[i32(_e173)].epoch;
                    let _e191 = preview_progress[i32(_e173)].magnitude;
                    if (_e189 == _e63) {
                        local_4 = FeLocal_fe_shader_private_layout_5_(_e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191);
                    } else {
                        let _e194 = empty_progress(_e63);
                        local_4 = _e194;
                    }
                    let _e199 = local_4;
                    let _e200 = is_terminal(_e199, _e61);
                    if _e200 {
                        local_5 = true;
                    } else {
                        local_5 = ((_e199.f5_ < _e59) == false);
                    }
                    let _e209 = local_5;
                    if _e209 {
                        if (_e189 == _e63) {
                        } else {
                            preview_progress[i32(_e173)].dz_re = _e199.f0_;
                            preview_progress[i32(_e173)].dz_im = _e199.f1_;
                            preview_progress[i32(_e173)].z_re = _e199.f2_;
                            preview_progress[i32(_e173)].z_im = _e199.f3_;
                            preview_progress[i32(_e173)].reference_i = _e199.f4_;
                            preview_progress[i32(_e173)].iteration = _e199.f5_;
                            preview_progress[i32(_e173)].epoch = _e199.f6_;
                            preview_progress[i32(_e173)].magnitude = _e199.f7_;
                        }
                        local_3 = true;
                    } else {
                        let _e235 = (_e55 * 8195u);
                        let _e236 = (_e55 != 0u);
                        if (_e236 && (8195u > (4294967295u / select(1u, _e55, _e236)))) {
                            fe_trapped = true;
                        }
                        let _e242 = camera(_e72);
                        let _e243 = ordered_2x2_(_e77, _e82);
                        let _e246 = pixel_delta_from_reference(_e235, _e242, _e243, (&fe_trapped));
                        let _e247 = advance_preview_progress(_e235, _e246, _e59, _e59, (_e57 == 1u), _e199, (&fe_trapped));
                        preview_progress[i32(_e173)].dz_re = _e247.f0_;
                        preview_progress[i32(_e173)].dz_im = _e247.f1_;
                        preview_progress[i32(_e173)].z_re = _e247.f2_;
                        preview_progress[i32(_e173)].z_im = _e247.f3_;
                        preview_progress[i32(_e173)].reference_i = _e247.f4_;
                        preview_progress[i32(_e173)].iteration = _e247.f5_;
                        preview_progress[i32(_e173)].epoch = _e247.f6_;
                        preview_progress[i32(_e173)].magnitude = _e247.f7_;
                        local_3 = true;
                    }
                    let _e269 = local_3;
                    if _e269 {
                    }
                }
            }
        }
    }
    let _e286 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e286);
}
