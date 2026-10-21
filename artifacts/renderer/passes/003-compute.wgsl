struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_16_ {
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

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: bool,
    f1_: bool,
    f2_: f32,
    f3_: f32,
    f4_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_4_,
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
    f0_: FeLocal_fe_shader_private_layout_7_,
    f1_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: bool,
    f1_: bool,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: bool,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
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
    f18_: f32,
    f19_: f32,
    f20_: f32,
    f21_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
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

struct FeLocal_fe_shader_private_layout_21_ {
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
    history_full_re: f32,
    history_full_im: f32,
    history_initial_re: f32,
    history_initial_im: f32,
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

fn is_input_settled(a0_2: FeLocal_fe_shader_private_layout_3_) -> bool {
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

fn history_offsets(a0_3: FeLocal_fe_shader_private_layout_12_) -> FeLocal_fe_shader_private_layout_13_ {
    return FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_0_(a0_3.f18_, a0_3.f19_), FeLocal_fe_shader_private_layout_0_(a0_3.f20_, a0_3.f21_));
}

fn lib_image_max(a0_4: f32, a1_: f32) -> f32 {
    var local_9: f32;
    var local_10: bool = false;
    var local_11: f32 = f32();

    if (a1_ < a0_4) {
        local_11 = a0_4;
    } else {
        local_11 = a1_;
    }
    let _e8 = local_11;
    return _e8;
}

fn reproject_coarse_pixel(a0_5: FeLocal_fe_shader_private_layout_3_, a1_1: FeLocal_fe_shader_private_layout_16_, a2_: FeLocal_fe_shader_private_layout_16_, a3_: FeLocal_fe_shader_private_layout_13_, a4_: u32, a5_: u32) -> FeLocal_fe_shader_private_layout_17_ {
    var local_12: FeLocal_fe_shader_private_layout_17_;
    var local_13: bool = false;
    var local_14: bool = bool();
    var local_15: FeLocal_fe_shader_private_layout_17_;
    var local_16: bool = false;
    var local_17: FeLocal_fe_shader_private_layout_16_ = FeLocal_fe_shader_private_layout_16_();
    var local_18: FeLocal_fe_shader_private_layout_17_;
    var local_19: bool = false;
    var local_20: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_21: FeLocal_fe_shader_private_layout_17_;
    var local_22: bool = false;
    var local_23: bool = bool();

    if (a1_1.f17_ == 1u) {
        if ((a1_1.f16_ < a2_.f16_) == false) {
            local_14 = true;
        }
    }
    let _e21 = local_14;
    if _e21 {
        local_17 = a1_1;
    } else {
        local_17 = a2_;
    }
    let _e27 = local_17;
    if _e21 {
        local_20 = a3_.f0_;
    } else {
        local_20 = a3_.f1_;
    }
    let _e35 = local_20;
    let _e36 = from_i32_(a4_);
    let _e45 = from_i32_(a5_);
    let _e56 = lib_image_max(_e27.f8_, 0.000000000000000000000000001f);
    let _e69 = ((((((_e35.f0_ + (((((_e36 + 0.5f) * 2f) / a0_5.f9_) - 1f) * a0_5.f8_)) / _e56) + 1f) * _e27.f9_) * 0.5f) - 0.5f);
    let _e82 = ((((1f - ((_e35.f1_ + ((1f - (((_e45 + 0.5f) * 2f) / a0_5.f9_)) * a0_5.f8_)) / _e56)) * _e27.f9_) * 0.5f) - 0.5f);
    if (_e27.f17_ == 1u) {
        if (0f <= _e69) {
            if (0f <= _e82) {
                if (_e69 < (_e27.f9_ - 1f)) {
                    if (_e82 < (_e27.f9_ - 1f)) {
                        local_23 = true;
                    }
                }
            }
        }
    }
    let _e101 = local_23;
    return FeLocal_fe_shader_private_layout_17_(_e21, _e101, _e69, _e82, _e27.f9_);
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_();
}

fn from_continuation(a0_6: FeLocal_fe_shader_private_layout_0_, a1_2: FeLocal_fe_shader_private_layout_0_, a2_1: u32, a3_1: u32, a4_1: u32, a5_1: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a0_6.f0_, a0_6.f1_, a1_2.f0_, a1_2.f1_, a2_1, a3_1, a4_1, a5_1);
}

fn empty_progress(a0_7: u32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_7, 4f);
    return _e6;
}

fn progress_is_presentable(a0_8: u32) -> bool {
    return (((a0_8 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_9: u32) -> bool {
    return (((a0_9 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_10: u32, a1_3: u32, a2_2: u32) -> bool {
    var local_24: bool;
    var local_25: bool = false;
    var local_26: bool = bool();

    if ((a1_3 < a2_2) == false) {
        local_26 = true;
    } else {
        let _e8 = progress_has_outcome(a0_10);
        if _e8 {
            local_26 = true;
        } else {
            let _e9 = progress_is_presentable(a0_10);
            if _e9 {
                local_26 = true;
            }
        }
    }
    let _e17 = local_26;
    return _e17;
}

fn is_terminal(a0_11: FeLocal_fe_shader_private_layout_1_, a1_4: u32) -> bool {
    let _e4 = progress_is_terminal(a0_11.f4_, a0_11.f5_, a1_4);
    return _e4;
}

fn from_quad(a0_12: f32, a1_5: f32, a2_3: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_7_ {
    return FeLocal_fe_shader_private_layout_7_(a0_12, FeLocal_fe_shader_private_layout_6_(a1_5, FeLocal_fe_shader_private_layout_5_(a2_3, FeLocal_fe_shader_private_layout_4_(a3_2))));
}

fn center(a0_13: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e5 = from_quad(a0_13.f0_, a0_13.f1_, a0_13.f2_, a0_13.f3_);
    let _e10 = from_quad(a0_13.f4_, a0_13.f5_, a0_13.f6_, a0_13.f7_);
    return FeLocal_fe_shader_private_layout_8_(_e5, _e10);
}

fn camera(a0_14: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e1 = center(a0_14);
    return FeLocal_fe_shader_private_layout_9_(_e1, a0_14.f8_, a0_14.f9_);
}

fn ordered_2x2_(a0_15: u32, a1_6: u32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = from_i32_(a0_15);
    let _e9 = from_i32_((a0_15 & 1u));
    let _e13 = from_i32_(a1_6);
    let _e16 = from_i32_((a1_6 & 1u));
    return FeLocal_fe_shader_private_layout_10_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_16: FeLocal_fe_shader_private_layout_10_, a1_7: f32) -> FeLocal_fe_shader_private_layout_14_ {
    return FeLocal_fe_shader_private_layout_14_((((a0_16.f0_ / a1_7) * 2f) - 1f), (1f - ((a0_16.f1_ / a1_7) * 2f)));
}

fn center_offset(a0_17: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(bitcast<f32>(a0_17.f2_), bitcast<f32>(a0_17.f3_));
}

fn add(a0_18: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_18.f0_ + a1_8.f0_), (a0_18.f1_ + a1_8.f1_));
}

fn pixel_delta_from_reference(a1_9: u32, a2_4: FeLocal_fe_shader_private_layout_9_, a3_3: FeLocal_fe_shader_private_layout_10_, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_27: FeLocal_fe_shader_private_layout_0_;
    var local_28: bool = false;

    let _e7 = plane(a3_3, a2_4.f2_);
    if (a1_9 > (4294967295u - 8194u)) {
        (*fe_trapped_1) = true;
    }
    let _e17 = orbit[i32((a1_9 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_9 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_9 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_9 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_9 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_9 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_9 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_9 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_shader_private_layout_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e41 = add(_e33, FeLocal_fe_shader_private_layout_0_((_e7.f0_ * a2_4.f1_), (_e7.f1_ * a2_4.f1_)));
    return _e41;
}

fn progress_reference_index(a0_19: u32) -> u32 {
    return (a0_19 & 536870911u);
}

fn resolve_prefix_step(a0_20: u32, a1_10: u32, a2_5: u32, a3_4: u32, a4_2: bool, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_18_ {
    var local_29: FeLocal_fe_shader_private_layout_18_;
    var local_30: bool = false;
    var local_31: u32 = u32();
    var local_32: FeLocal_fe_shader_private_layout_18_;
    var local_33: bool = false;
    var local_34: u32 = u32();
    var local_35: FeLocal_fe_shader_private_layout_18_;
    var local_36: bool = false;
    var local_37: FeLocal_fe_shader_private_layout_18_ = FeLocal_fe_shader_private_layout_18_();

    if (0u < a3_4) {
        local_31 = (a3_4 - 1u);
    }
    let _e16 = local_31;
    if a4_2 {
        if (_e16 < a2_5) {
            local_34 = _e16;
        } else {
            local_34 = a2_5;
        }
    } else {
        local_34 = a2_5;
    }
    let _e24 = local_34;
    let _e25 = progress_reference_index(a0_20);
    let _e26 = progress_is_terminal(a0_20, a1_10, _e24);
    if _e26 {
        local_37 = FeLocal_fe_shader_private_layout_18_(FeLocal_fe_shader_private_layout_18_().f0_, FeLocal_fe_shader_private_layout_18_().f1_, _e25);
    } else {
        if (_e25 > (4294967295u - 1u)) {
            (*fe_trapped_2) = true;
        } else {
            if (((_e25 + 1u) < a3_4) == false) {
                if a4_2 {
                    local_37 = FeLocal_fe_shader_private_layout_18_(FeLocal_fe_shader_private_layout_18_().f0_, FeLocal_fe_shader_private_layout_18_().f1_, _e25);
                } else {
                    if (a3_4 < 2u) {
                        local_37 = FeLocal_fe_shader_private_layout_18_(FeLocal_fe_shader_private_layout_18_().f0_, FeLocal_fe_shader_private_layout_18_().f1_, _e25);
                    } else {
                        local_37 = FeLocal_fe_shader_private_layout_18_(true, true, 0u);
                    }
                }
            } else {
                local_37 = FeLocal_fe_shader_private_layout_18_(true, false, _e25);
            }
        }
    }
    let _e63 = local_37;
    return _e63;
}

fn position(a0_21: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_21.f2_, a0_21.f3_);
}

fn prepare_reference_step(a0_22: FeLocal_fe_shader_private_layout_1_, a1_11: u32, a2_6: u32, a3_5: bool, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_15_ {
    var local_38: FeLocal_fe_shader_private_layout_15_;
    var local_39: bool = false;
    var local_40: FeLocal_fe_shader_private_layout_15_ = FeLocal_fe_shader_private_layout_15_();

    let _e9 = resolve_prefix_step(a0_22.f4_, a0_22.f5_, a1_11, a2_6, a3_5, fe_trapped_3);
    if (_e9.f0_ == false) {
        local_40 = FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_15_().f0_, a0_22);
    } else {
        if _e9.f1_ {
            let _e17 = position(a0_22);
            let _e22 = from_continuation(_e17, _e17, 0u, a0_22.f5_, a0_22.f6_, a0_22.f7_);
            local_40 = FeLocal_fe_shader_private_layout_15_(true, _e22);
        } else {
            local_40 = FeLocal_fe_shader_private_layout_15_(true, a0_22);
        }
    }
    let _e31 = local_40;
    return _e31;
}

fn reference_index(a0_23: FeLocal_fe_shader_private_layout_1_) -> u32 {
    let _e2 = progress_reference_index(a0_23.f4_);
    return _e2;
}

fn decode_metadata(a0_24: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_11_ {
    return FeLocal_fe_shader_private_layout_11_(a0_24.f0_, a0_24.f1_);
}

fn delta(a0_25: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_25.f0_, a0_25.f1_);
}

fn progress_is_escaped(a0_26: u32) -> bool {
    return (((a0_26 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_27: FeLocal_fe_shader_private_layout_1_) -> bool {
    let _e2 = progress_is_escaped(a0_27.f4_);
    return _e2;
}

fn progress_is_glitched(a0_28: u32) -> bool {
    return (((a0_28 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_29: FeLocal_fe_shader_private_layout_1_) -> bool {
    let _e2 = progress_is_glitched(a0_29.f4_);
    return _e2;
}

fn is_invalid(a0_30: FeLocal_fe_shader_private_layout_2_) -> bool {
    var local_41: bool;
    var local_42: bool = false;
    var local_43: bool = bool();

    if (a0_30.f0_ == 2143289344u) {
        local_43 = true;
    } else {
        if (a0_30.f4_ == 2143289344u) {
            local_43 = true;
        }
    }
    let _e14 = local_43;
    return _e14;
}

fn decode(a0_31: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e9 = from_quad(bitcast<f32>(a0_31.f0_), bitcast<f32>(a0_31.f1_), bitcast<f32>(a0_31.f2_), bitcast<f32>(a0_31.f3_));
    let _e18 = from_quad(bitcast<f32>(a0_31.f4_), bitcast<f32>(a0_31.f5_), bitcast<f32>(a0_31.f6_), bitcast<f32>(a0_31.f7_));
    return FeLocal_fe_shader_private_layout_8_(_e9, _e18);
}

fn to_quad(a0_32: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_19_ {
    return FeLocal_fe_shader_private_layout_19_(a0_32.f0_, a0_32.f1_.f0_, a0_32.f1_.f1_.f0_, a0_32.f1_.f1_.f1_.f0_);
}

fn perturb(a0_33: FeLocal_fe_shader_private_layout_8_, a1_12: FeLocal_fe_shader_private_layout_0_, a2_7: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    let _e4 = to_quad(a0_33.f0_);
    let _e10 = to_quad(a0_33.f1_);
    return FeLocal_fe_shader_private_layout_0_(((((2f * ((_e4.f0_ * a1_12.f0_) - (_e10.f0_ * a1_12.f1_))) + (2f * ((((((_e4.f1_ * a1_12.f0_) - (_e10.f1_ * a1_12.f1_)) + (_e4.f2_ * a1_12.f0_)) - (_e10.f2_ * a1_12.f1_)) + (_e4.f3_ * a1_12.f0_)) - (_e10.f3_ * a1_12.f1_)))) + ((a1_12.f0_ * a1_12.f0_) - (a1_12.f1_ * a1_12.f1_))) + a2_7.f0_), ((((2f * ((_e4.f0_ * a1_12.f1_) + (_e10.f0_ * a1_12.f0_))) + (2f * ((((((_e4.f1_ * a1_12.f1_) + (_e10.f1_ * a1_12.f0_)) + (_e4.f2_ * a1_12.f1_)) + (_e10.f2_ * a1_12.f0_)) + (_e4.f3_ * a1_12.f1_)) + (_e10.f3_ * a1_12.f0_)))) + ((2f * a1_12.f0_) * a1_12.f1_)) + a2_7.f1_));
}

fn two_sum(a0_34: f32, a1_13: f32) -> FeLocal_fe_shader_private_layout_20_ {
    let _e2 = (a0_34 + a1_13);
    let _e3 = (_e2 - a0_34);
    return FeLocal_fe_shader_private_layout_20_(_e2, ((a0_34 - (_e2 - _e3)) + (a1_13 - _e3)));
}

fn reference_plus_delta(a0_35: f32, a1_14: f32, a2_8: f32, a3_6: f32, a4_3: f32) -> f32 {
    let _e5 = two_sum(a0_35, a4_3);
    let _e8 = two_sum(_e5.f0_, a1_14);
    let _e11 = two_sum(_e8.f0_, a2_8);
    let _e14 = two_sum(_e11.f0_, a3_6);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_36: FeLocal_fe_shader_private_layout_7_, a1_15: f32) -> f32 {
    let _e2 = to_quad(a0_36);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_15);
    return _e7;
}

fn reference_with_delta(a0_37: FeLocal_fe_shader_private_layout_8_, a1_16: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    let _e4 = expansion_plus_delta(a0_37.f0_, a1_16.f0_);
    let _e7 = expansion_plus_delta(a0_37.f1_, a1_16.f1_);
    return FeLocal_fe_shader_private_layout_0_(_e4, _e7);
}

fn norm_squared(a0_38: FeLocal_fe_shader_private_layout_0_) -> f32 {
    return ((a0_38.f0_ * a0_38.f0_) + (a0_38.f1_ * a0_38.f1_));
}

fn pack_progress_reference(a0_39: u32, a1_17: u32, a2_9: u32) -> u32 {
    return (((a0_39 & 536870911u) | (a1_17 << 31u)) | (a2_9 << 30u));
}

fn non_finite(a0_40: f32) -> bool {
    return (((a0_40 - a0_40) == 0f) == false);
}

fn is_non_finite_complex(a0_41: FeLocal_fe_shader_private_layout_0_) -> bool {
    var local_44: bool;
    var local_45: bool = false;
    var local_46: bool = bool();

    let _e4 = non_finite(a0_41.f0_);
    if _e4 {
        local_46 = true;
    } else {
        let _e6 = non_finite(a0_41.f1_);
        if _e6 {
            local_46 = true;
        }
    }
    let _e12 = local_46;
    return _e12;
}

fn impl_trait_f32_abs(a0_42: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_42) & 2147483647u));
}

fn impl_trait_f32_max(a0_43: f32, a1_18: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_43);
    let _e3 = bitcast<u32>(a1_18);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress_step(a0_44: FeLocal_fe_shader_private_layout_1_, a1_19: FeLocal_fe_shader_private_layout_0_, a2_10: FeLocal_fe_shader_private_layout_2_, a3_7: FeLocal_fe_shader_private_layout_2_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_47: FeLocal_fe_shader_private_layout_1_;
    var local_48: bool = false;
    var local_49: u32 = u32();
    var local_50: FeLocal_fe_shader_private_layout_1_;
    var local_51: bool = false;
    var local_52: u32 = u32();
    var local_53: FeLocal_fe_shader_private_layout_1_;
    var local_54: bool = false;
    var local_55: f32 = f32();
    var local_56: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_57: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: bool = bool();
    var local_62: FeLocal_fe_shader_private_layout_1_;
    var local_63: bool = false;

    let _e7 = delta(a0_44);
    let _e8 = position(a0_44);
    let _e9 = reference_index(a0_44);
    let _e10 = is_escaped(a0_44);
    if _e10 {
        local_49 = 1u;
    }
    let _e16 = local_49;
    let _e17 = is_glitched(a0_44);
    if _e17 {
        local_52 = 1u;
    }
    let _e28 = local_52;
    let _e30 = is_invalid(a2_10);
    if _e30 {
        local_55 = a0_44.f7_;
        local_56 = _e8;
        local_57 = _e7;
        local_58 = 1u;
        local_59 = _e16;
        local_60 = _e9;
    } else {
        let _e31 = is_invalid(a3_7);
        if _e31 {
            local_55 = a0_44.f7_;
            local_56 = _e8;
            local_57 = _e7;
            local_58 = 1u;
            local_59 = _e16;
            local_60 = _e9;
        } else {
            let _e33 = decode(a2_10);
            let _e34 = decode(a3_7);
            let _e35 = perturb(_e33, _e7, a1_19);
            let _e36 = reference_with_delta(_e34, _e35);
            let _e37 = norm_squared(_e36);
            let _e38 = norm_squared(_e35);
            if (4f < _e37) {
                let _e44 = impl_trait_f32_abs((_e37 - 4f));
                let _e46 = impl_trait_f32_max(1f, _e37);
                if (_e44 <= (0.000004f * _e46)) {
                    local_61 = true;
                }
            }
            let _e53 = local_61;
            let _e54 = is_non_finite_complex(_e35);
            if _e54 {
                local_55 = a0_44.f7_;
                local_56 = _e8;
                local_57 = _e7;
                local_58 = 1u;
                local_59 = _e16;
                local_60 = _e9;
            } else {
                let _e55 = non_finite(_e37);
                if (_e55 | _e53) {
                    local_55 = a0_44.f7_;
                    local_56 = _e8;
                    local_57 = _e7;
                    local_58 = 1u;
                    local_59 = _e16;
                    local_60 = _e9;
                } else {
                    if (4f < _e37) {
                        local_55 = _e37;
                        local_56 = _e36;
                        local_57 = _e35;
                        local_58 = _e28;
                        local_59 = 1u;
                        local_60 = _e9;
                    } else {
                        if (_e37 < _e38) {
                            local_55 = a0_44.f7_;
                            local_56 = _e36;
                            local_57 = _e36;
                            local_58 = _e28;
                            local_59 = _e16;
                        } else {
                            if (_e9 > (4294967295u - 1u)) {
                                (*fe_trapped_4) = true;
                            } else {
                                local_55 = a0_44.f7_;
                                local_56 = _e36;
                                local_57 = _e35;
                                local_58 = _e28;
                                local_59 = _e16;
                                local_60 = (_e9 + 1u);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e113 = local_55;
    let _e115 = local_56;
    let _e117 = local_57;
    let _e119 = local_58;
    let _e121 = local_59;
    let _e123 = local_60;
    let _e124 = pack_progress_reference(_e123, _e121, _e119);
    if (a0_44.f5_ > (4294967295u - 1u)) {
        (*fe_trapped_4) = true;
    }
    let _e133 = from_continuation(_e117, _e115, _e124, (a0_44.f5_ + 1u), a0_44.f6_, _e113);
    return _e133;
}

fn advance_preview_progress(a1_20: u32, a2_11: FeLocal_fe_shader_private_layout_0_, a3_8: u32, a4_4: u32, a5_2: bool, a6_: FeLocal_fe_shader_private_layout_1_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_64: FeLocal_fe_shader_private_layout_1_;
    var local_65: bool = false;
    var local_66: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_67: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return: bool = false;
    var loop_header_carry_53_: bool;

    if (a1_20 > (4294967295u - 8194u)) {
    } else {
        let _e17 = orbit[i32((a1_20 + 8194u))].re_w0_bits;
        let _e19 = orbit[i32((a1_20 + 8194u))].re_w1_bits;
        let _e21 = orbit[i32((a1_20 + 8194u))].re_w2_bits;
        let _e23 = orbit[i32((a1_20 + 8194u))].re_w3_bits;
        let _e25 = orbit[i32((a1_20 + 8194u))].im_w0_bits;
        let _e27 = orbit[i32((a1_20 + 8194u))].im_w1_bits;
        let _e29 = orbit[i32((a1_20 + 8194u))].im_w2_bits;
        let _e31 = orbit[i32((a1_20 + 8194u))].im_w3_bits;
        let _e33 = decode_metadata(FeLocal_fe_shader_private_layout_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
        local_66 = a6_;
        local_67 = 0u;
        loop {
            let _e42 = local_66;
            let _e44 = local_67;
            let _e45 = (_e44 < a4_4);
            loop_header_carry_53_ = _e45;
            if _e45 {
                let _e46 = prepare_reference_step(_e42, a3_8, _e33.f0_, a5_2, fe_trapped_5);
                if (_e46.f0_ == false) {
                    local_66 = _e42;
                    local_67 = a4_4;
                    continue;
                }
                let _e53 = reference_index(_e46.f1_);
                if (a1_20 > (4294967295u - _e53)) {
                } else {
                    let _e61 = orbit[i32((a1_20 + _e53))].re_w0_bits;
                    let _e63 = orbit[i32((a1_20 + _e53))].re_w1_bits;
                    let _e65 = orbit[i32((a1_20 + _e53))].re_w2_bits;
                    let _e67 = orbit[i32((a1_20 + _e53))].re_w3_bits;
                    let _e69 = orbit[i32((a1_20 + _e53))].im_w0_bits;
                    let _e71 = orbit[i32((a1_20 + _e53))].im_w1_bits;
                    let _e73 = orbit[i32((a1_20 + _e53))].im_w2_bits;
                    let _e75 = orbit[i32((a1_20 + _e53))].im_w3_bits;
                    let _e78 = (a1_20 + _e53);
                    if (a1_20 > (4294967295u - _e53)) {
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
                        let _e106 = advance_progress_step(_e46.f1_, a2_11, FeLocal_fe_shader_private_layout_2_(_e61, _e63, _e65, _e67, _e69, _e71, _e73, _e75), FeLocal_fe_shader_private_layout_2_(_e90, _e92, _e94, _e96, _e98, _e100, _e102, _e104), fe_trapped_5);
                        local_66 = _e106;
                        local_67 = (_e44 + 1u);
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
            local_64 = _e119;
            local_65 = true;
        }
    }
    let _e125 = local_65;
    if _e125 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e127 = local_64;
    return _e127;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
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
    let _e309 = local_1;
    if _e309 {
    } else {
        let _e55 = preview_cache[i32(0u)].x0_;
        let _e57 = preview_cache[i32(0u)].x1_;
        let _e59 = preview_cache[i32(0u)].x2_;
        let _e61 = preview_cache[i32(0u)].x3_;
        let _e63 = preview_cache[i32(0u)].y0_;
        let _e65 = preview_cache[i32(0u)].y1_;
        let _e67 = preview_cache[i32(0u)].y2_;
        let _e69 = preview_cache[i32(0u)].y3_;
        let _e71 = preview_cache[i32(0u)].zoom;
        let _e73 = preview_cache[i32(0u)].res;
        let _e75 = preview_cache[i32(0u)].reference_generation;
        let _e77 = preview_cache[i32(0u)].reference_bank;
        let _e79 = preview_cache[i32(0u)].prefix_only;
        let _e81 = preview_cache[i32(0u)].step_target;
        let _e83 = preview_cache[i32(0u)].completed_steps;
        let _e85 = preview_cache[i32(0u)].budget;
        let _e87 = preview_cache[i32(0u)].epoch;
        let _e89 = preview_cache[i32(0u)].completed;
        let _e91 = preview_cache[i32(0u)].history_full_re;
        let _e93 = preview_cache[i32(0u)].history_full_im;
        let _e95 = preview_cache[i32(0u)].history_initial_re;
        let _e97 = preview_cache[i32(0u)].history_initial_im;
        if (_e89 == 1u) {
        } else {
            if (_e81 == 0u) {
                local_3 = true;
            }
            let _e307 = local_3;
            if _e307 {
            } else {
                let _e105 = FeLocal_fe_shader_private_layout_3_(_e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39);
                let _e106 = from_i32_(global_invocation_id.x);
                let _e110 = to_i32_(((_e106 * _e29) / 256f));
                let _e111 = from_i32_(global_invocation_id.y);
                let _e115 = to_i32_(((_e111 * _e29) / 256f));
                let _e116 = is_input_settled(_e105);
                if _e116 {
                } else {
                    let _e121 = cache[i32(1u)].x0_;
                    let _e123 = cache[i32(1u)].x1_;
                    let _e125 = cache[i32(1u)].x2_;
                    let _e127 = cache[i32(1u)].x3_;
                    let _e129 = cache[i32(1u)].y0_;
                    let _e131 = cache[i32(1u)].y1_;
                    let _e133 = cache[i32(1u)].y2_;
                    let _e135 = cache[i32(1u)].y3_;
                    let _e137 = cache[i32(1u)].zoom;
                    let _e139 = cache[i32(1u)].res;
                    let _e141 = cache[i32(1u)].cursor;
                    let _e143 = cache[i32(1u)].aa;
                    let _e145 = cache[i32(1u)].budget;
                    let _e147 = cache[i32(1u)].radius;
                    let _e149 = cache[i32(1u)].preview_dirty;
                    let _e151 = cache[i32(1u)].blur_dirty;
                    let _e153 = cache[i32(1u)].epoch;
                    let _e155 = cache[i32(1u)].completed;
                    let _e161 = cache[i32(2u)].x0_;
                    let _e163 = cache[i32(2u)].x1_;
                    let _e165 = cache[i32(2u)].x2_;
                    let _e167 = cache[i32(2u)].x3_;
                    let _e169 = cache[i32(2u)].y0_;
                    let _e171 = cache[i32(2u)].y1_;
                    let _e173 = cache[i32(2u)].y2_;
                    let _e175 = cache[i32(2u)].y3_;
                    let _e177 = cache[i32(2u)].zoom;
                    let _e179 = cache[i32(2u)].res;
                    let _e181 = cache[i32(2u)].cursor;
                    let _e183 = cache[i32(2u)].aa;
                    let _e185 = cache[i32(2u)].budget;
                    let _e187 = cache[i32(2u)].radius;
                    let _e189 = cache[i32(2u)].preview_dirty;
                    let _e191 = cache[i32(2u)].blur_dirty;
                    let _e193 = cache[i32(2u)].epoch;
                    let _e195 = cache[i32(2u)].completed;
                    let _e197 = history_offsets(FeLocal_fe_shader_private_layout_12_(_e55, _e57, _e59, _e61, _e63, _e65, _e67, _e69, _e71, _e73, _e75, _e77, _e79, _e81, _e83, _e85, _e87, _e89, _e91, _e93, _e95, _e97));
                    let _e198 = reproject_coarse_pixel(_e105, FeLocal_fe_shader_private_layout_16_(_e121, _e123, _e125, _e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155), FeLocal_fe_shader_private_layout_16_(_e161, _e163, _e165, _e167, _e169, _e171, _e173, _e175, _e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191, _e193, _e195), _e197, _e110, _e115);
                    if _e198.f1_ {
                        local_3 = true;
                    }
                    let _e203 = local_3;
                    if _e203 {
                    }
                }
                let _e305 = local_3;
                if _e305 {
                } else {
                    let _e207 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
                    let _e211 = preview_progress[i32(_e207)].dz_re;
                    let _e213 = preview_progress[i32(_e207)].dz_im;
                    let _e215 = preview_progress[i32(_e207)].z_re;
                    let _e217 = preview_progress[i32(_e207)].z_im;
                    let _e219 = preview_progress[i32(_e207)].reference_i;
                    let _e221 = preview_progress[i32(_e207)].iteration;
                    let _e223 = preview_progress[i32(_e207)].epoch;
                    let _e225 = preview_progress[i32(_e207)].magnitude;
                    if (_e223 == _e87) {
                        local_4 = FeLocal_fe_shader_private_layout_1_(_e211, _e213, _e215, _e217, _e219, _e221, _e223, _e225);
                    } else {
                        let _e228 = empty_progress(_e87);
                        local_4 = _e228;
                    }
                    let _e233 = local_4;
                    let _e234 = is_terminal(_e233, _e85);
                    if _e234 {
                        local_5 = true;
                    } else {
                        local_5 = ((_e233.f5_ < _e81) == false);
                    }
                    let _e243 = local_5;
                    if _e243 {
                        if (_e223 == _e87) {
                        } else {
                            preview_progress[i32(_e207)].dz_re = _e233.f0_;
                            preview_progress[i32(_e207)].dz_im = _e233.f1_;
                            preview_progress[i32(_e207)].z_re = _e233.f2_;
                            preview_progress[i32(_e207)].z_im = _e233.f3_;
                            preview_progress[i32(_e207)].reference_i = _e233.f4_;
                            preview_progress[i32(_e207)].iteration = _e233.f5_;
                            preview_progress[i32(_e207)].epoch = _e233.f6_;
                            preview_progress[i32(_e207)].magnitude = _e233.f7_;
                        }
                        local_3 = true;
                    } else {
                        let _e269 = (_e77 * 8195u);
                        let _e270 = (_e77 != 0u);
                        if (_e270 && (8195u > (4294967295u / select(1u, _e77, _e270)))) {
                            fe_trapped = true;
                        }
                        let _e276 = camera(_e105);
                        let _e277 = ordered_2x2_(_e110, _e115);
                        let _e280 = pixel_delta_from_reference(_e269, _e276, _e277, (&fe_trapped));
                        let _e281 = advance_preview_progress(_e269, _e280, _e81, _e81, (_e79 == 1u), _e233, (&fe_trapped));
                        preview_progress[i32(_e207)].dz_re = _e281.f0_;
                        preview_progress[i32(_e207)].dz_im = _e281.f1_;
                        preview_progress[i32(_e207)].z_re = _e281.f2_;
                        preview_progress[i32(_e207)].z_im = _e281.f3_;
                        preview_progress[i32(_e207)].reference_i = _e281.f4_;
                        preview_progress[i32(_e207)].iteration = _e281.f5_;
                        preview_progress[i32(_e207)].epoch = _e281.f6_;
                        preview_progress[i32(_e207)].magnitude = _e281.f7_;
                        local_3 = true;
                    }
                    let _e303 = local_3;
                    if _e303 {
                    }
                }
            }
        }
    }
    let _e320 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e320);
}
