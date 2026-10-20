struct FeLocal_fe_shader_private_layout_10_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: bool,
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
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
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

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: FeLocal_fe_shader_private_layout_3_,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_6_ {
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

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_17_ {
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

struct FeLocal_fe_shader_private_layout_18_ {
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
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(3)
var<storage, read_write> native_pixels: array<u32>;
@group(0) @binding(4)
var<storage, read_write> antialiased_pixels: array<u32>;
@group(0) @binding(5)
var<storage, read_write> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 32768>;

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_14: bool;
    var local_15: bool = false;
    var local_16: bool = bool();

    if (a0_.f13_ < 0.5f) {
        if (60f <= (a0_.f10_ - a0_.f11_)) {
            local_16 = true;
        }
    }
    let _e14 = local_16;
    return _e14;
}

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_8_, a1_: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_17: bool;
    var local_18: bool = false;
    var local_19: bool = bool();

    if (a0_1.f2_ == 0u) {
        if (a0_1.f1_ == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_19 = true;
            }
        }
    }
    let _e14 = local_19;
    return _e14;
}

fn iteration_limit(a0_2: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_20: u32 = u32();
    var local_21: f32 = f32();
    var local_22: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_23: u32 = u32();
    var local_24: f32 = f32();
    var local_25: u32;
    var local_26: bool = false;
    var local_27: u32 = u32();

    local_20 = 0u;
    local_21 = a0_2;
    local_22 = 0u;
    loop {
        let _e12 = local_20;
        let _e14 = local_21;
        let _e16 = local_22;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_23 = (_e12 + 1u);
                    local_24 = (_e14 * 2f);
                }
            } else {
                local_23 = _e12;
                local_24 = _e14;
            }
            let _e36 = local_23;
            let _e38 = local_24;
            local_20 = _e36;
            local_21 = _e38;
            local_22 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_20;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_27 = 8192u;
        } else {
            local_27 = _e60;
        }
        let _e71 = local_27;
        local_25 = _e71;
        local_26 = true;
    }
    let _e77 = local_26;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_25;
    return _e79;
}

fn to_i32_(a0_3: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_3)), 2147483648u, (a0_3 <= -2147483600f)), 2147483647u, (a0_3 >= 2147483600f)), (a0_3 == a0_3));
}

fn for_view(a0_4: f32, a1_1: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_28: FeLocal_fe_shader_private_layout_10_;
    var local_29: bool = false;

    let _e4 = iteration_limit(a0_4, fe_trapped_2);
    let _e13 = to_i32_(((a1_1 + 127f) / 128f));
    let _e18 = to_i32_(((a1_1 + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_10_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn refine_steps(a0_5: FeLocal_fe_shader_private_layout_10_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_30: u32;
    var local_31: bool = false;

    let _e9 = (a0_5.f1_ != 0u);
    if (_e9 && (a0_5.f4_ > (4294967295u / select(1u, a0_5.f1_, _e9)))) {
        (*fe_trapped_3) = true;
    } else {
        local_30 = (a0_5.f1_ * a0_5.f4_);
        local_31 = true;
    }
    let _e19 = local_30;
    return _e19;
}

fn from_i32_(a0_6: u32) -> f32 {
    return f32(bitcast<i32>(a0_6));
}

fn phase_order_rect(a0_7: u32, a1_2: u32, a2_: u32, a3_: u32, a4_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_32: u32;
    var local_33: bool = false;
    var local_34: u32 = u32();

    let _e7 = from_i32_(a1_2);
    let _e10 = from_i32_(a2_);
    let _e13 = ((_e7 * 0.06711056f) + (_e10 * 0.00583715f));
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e18 = ((_e13 - _e15) * 52.982918f);
    let _e19 = to_i32_(_e18);
    let _e20 = from_i32_(_e19);
    let _e25 = (a3_ * a4_);
    let _e26 = (a3_ != 0u);
    if (_e26 && (a4_ > (4294967295u / select(1u, a3_, _e26)))) {
    } else {
        let _e32 = from_i32_(_e25);
        let _e34 = to_i32_(((_e18 - _e20) * _e32));
        if ((_e34 & 1u) == 0u) {
            local_34 = 1u;
        } else {
            if (_e25 < 1u) {
                (*fe_trapped_4) = true;
            } else {
                local_34 = (_e25 - 1u);
            }
        }
        let _e47 = local_34;
        let _e51 = (a0_7 * _e47);
        let _e52 = (a0_7 != 0u);
        if (_e52 && (_e47 > (4294967295u / select(1u, a0_7, _e52)))) {
        } else {
            if (_e51 > (4294967295u - _e34)) {
            } else {
                if (_e25 == 0u) {
                } else {
                    local_32 = ((_e51 + _e34) % _e25);
                    local_33 = true;
                }
                let _e68 = local_33;
                if _e68 {
                }
            }
            let _e70 = local_33;
            if _e70 {
            }
        }
        let _e72 = local_33;
        if _e72 {
        }
    }
    let _e75 = local_33;
    if _e75 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e77 = local_32;
    return _e77;
}

fn rect_pixel(a0_8: FeLocal_fe_shader_private_layout_10_, a1_3: u32, a2_1: u32, a3_1: u32, a4_1: f32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_15_ {
    var local_35: FeLocal_fe_shader_private_layout_15_;
    var local_36: bool = false;
    var local_37: FeLocal_fe_shader_private_layout_15_;
    var local_38: bool = false;
    var local_39: bool = bool();

    let _e7 = refine_steps(a0_8, fe_trapped_5);
    if ((a1_3 < _e7) == false) {
        local_35 = FeLocal_fe_shader_private_layout_15_();
        local_36 = true;
    }
    let _e93 = local_36;
    if _e93 {
    } else {
        if (a0_8.f1_ == 0u) {
        } else {
            let _e22 = phase_order_rect((a1_3 / a0_8.f1_), a2_1, a3_1, a0_8.f2_, a0_8.f3_, fe_trapped_5);
            let _e27 = (a2_1 * a0_8.f2_);
            let _e28 = (a2_1 != 0u);
            if (_e28 && (a0_8.f2_ > (4294967295u / select(1u, a2_1, _e28)))) {
            } else {
                if (a0_8.f2_ == 0u) {
                } else {
                    let _e36 = (_e22 % a0_8.f2_);
                    let _e38 = (_e27 + _e36);
                    if (_e27 > (4294967295u - _e36)) {
                    } else {
                        let _e45 = (a3_1 * a0_8.f3_);
                        let _e46 = (a3_1 != 0u);
                        if (_e46 && (a0_8.f3_ > (4294967295u / select(1u, a3_1, _e46)))) {
                        } else {
                            if (a0_8.f2_ == 0u) {
                            } else {
                                let _e54 = (_e22 / a0_8.f2_);
                                let _e56 = (_e45 + _e54);
                                if (_e45 > (4294967295u - _e54)) {
                                    (*fe_trapped_5) = true;
                                }
                                let _e61 = from_i32_(_e38);
                                if (_e61 < a4_1) {
                                    let _e63 = from_i32_(_e56);
                                    if (_e63 < a4_1) {
                                        local_39 = true;
                                    }
                                }
                                let _e68 = local_39;
                                local_37 = FeLocal_fe_shader_private_layout_15_(_e38, _e56, ((_e56 << 11u) | _e38), _e68);
                                local_38 = true;
                            }
                            let _e77 = local_38;
                            if _e77 {
                            }
                        }
                        let _e79 = local_38;
                        if _e79 {
                        }
                    }
                    let _e81 = local_38;
                    if _e81 {
                    }
                }
                let _e83 = local_38;
                if _e83 {
                }
            }
            let _e85 = local_38;
            if _e85 {
            }
        }
        let _e88 = local_38;
        if _e88 {
        } else {
            (*fe_trapped_5) = true;
        }
        let _e90 = local_37;
        local_35 = _e90;
    }
    let _e95 = local_35;
    return _e95;
}

fn empty_progress(a0_9: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_9, 4f);
}

fn progress_has_outcome(a0_10: u32) -> bool {
    return (((a0_10 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_11: u32, a1_4: u32, a2_2: u32) -> bool {
    var local_40: bool;
    var local_41: bool = false;
    var local_42: bool = bool();

    if ((a1_4 < a2_2) == false) {
        local_42 = true;
    } else {
        let _e8 = progress_has_outcome(a0_11);
        if _e8 {
            local_42 = true;
        }
    }
    let _e14 = local_42;
    return _e14;
}

fn is_terminal(a0_12: FeLocal_fe_shader_private_layout_4_, a1_5: u32) -> bool {
    let _e4 = progress_is_terminal(a0_12.f4_, a0_12.f5_, a1_5);
    return _e4;
}

fn progress_with_presentable(a0_13: u32) -> u32 {
    return (a0_13 | 536870912u);
}

fn with_fade_start(a0_14: FeLocal_fe_shader_private_layout_4_, a1_6: f32) -> FeLocal_fe_shader_private_layout_4_ {
    var fixed_local_3_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    fixed_local_3_ = a0_14;
    fixed_local_3_.f2_ = a1_6;
    let _e6 = progress_with_presentable(a0_14.f4_);
    fixed_local_3_.f4_ = _e6;
    let _e8 = fixed_local_3_;
    return _e8;
}

fn progress_is_glitched(a0_15: u32) -> bool {
    return (((a0_15 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_16: FeLocal_fe_shader_private_layout_4_) -> bool {
    let _e2 = progress_is_glitched(a0_16.f4_);
    return _e2;
}

fn clamp_(a0_17: f32, a1_7: f32, a2_3: f32) -> f32 {
    var local_43: f32;
    var local_44: bool = false;
    var local_45: f32 = f32();

    if (a0_17 < a1_7) {
        local_45 = a1_7;
    } else {
        if (a2_3 < a0_17) {
            local_45 = a2_3;
        } else {
            local_45 = a0_17;
        }
    }
    let _e11 = local_45;
    return _e11;
}

fn pack_lab(a0_18: FeLocal_fe_shader_private_layout_12_) -> u32 {
    let _e4 = clamp_(a0_18.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_18.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_18.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_12_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn progress_is_escaped(a0_19: u32) -> bool {
    return (((a0_19 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_20: FeLocal_fe_shader_private_layout_4_) -> bool {
    let _e2 = progress_is_escaped(a0_20.f4_);
    return _e2;
}

fn impl_trait_f32_floor(a0_21: f32) -> f32 {
    return floor(a0_21);
}

fn fract_(a0_22: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_22);
    return (a0_22 - _e1);
}

fn anchor(a0_23: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_46: FeLocal_fe_shader_private_layout_5_;
    var local_47: bool = false;
    var local_48: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_23 {
        case 0u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_48;
    return _e29;
}

fn interpolate(a0_24: FeLocal_fe_shader_private_layout_5_, a1_8: FeLocal_fe_shader_private_layout_5_, a2_4: f32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_49: FeLocal_fe_shader_private_layout_5_;
    var local_50: bool = false;
    var local_51: f32 = f32();

    let _e7 = (a1_8.f2_ - a0_24.f2_);
    if (180f < _e7) {
        local_51 = (_e7 - 360f);
    } else {
        if (_e7 < -180f) {
            local_51 = (_e7 + 360f);
        } else {
            local_51 = _e7;
        }
    }
    let _e20 = local_51;
    return FeLocal_fe_shader_private_layout_5_((a0_24.f0_ + ((a1_8.f0_ - a0_24.f0_) * a2_4)), (a0_24.f1_ + ((a1_8.f1_ - a0_24.f1_) * a2_4)), (a0_24.f2_ + (_e20 * a2_4)));
}

fn wrap_pi(a0_25: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_25 / 6.2831855f) + 0.5f));
    return (a0_25 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_26: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_26) & 2147483647u));
}

fn sin_(a0_27: f32) -> f32 {
    let _e1 = wrap_pi(a0_27);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_28: f32) -> f32 {
    let _e3 = sin_((a0_28 + 1.5707964f));
    return _e3;
}

fn to_color(a0_29: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_12_ {
    let _e3 = (a0_29.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_12_(a0_29.f0_, (a0_29.f1_ * _e6), (a0_29.f1_ * _e9));
}

fn escape_palette(a0_30: u32, a1_9: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_52: u32;
    var local_53: bool = false;
    var local_54: u32 = u32();

    let _e5 = from_i32_(a0_30);
    let _e11 = fract_(((_e5 + (4f / a1_9)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_6) = true;
        } else {
            local_54 = _e29;
        }
    }
    let _e38 = local_54;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_12_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_31: FeLocal_fe_shader_private_layout_4_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_55: u32;
    var local_56: bool = false;
    var local_57: u32 = u32();

    let _e4 = is_glitched(a0_31);
    if _e4 {
        let _e5 = glitch();
        local_57 = _e5;
    } else {
        let _e6 = is_escaped(a0_31);
        if _e6 {
            let _e9 = escape_palette(a0_31.f5_, a0_31.f7_, fe_trapped_7);
            local_57 = _e9;
        } else {
            let _e10 = interior();
            local_57 = _e10;
        }
    }
    let _e15 = local_57;
    return _e15;
}

fn from_quad(a0_32: f32, a1_10: f32, a2_5: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_32, FeLocal_fe_shader_private_layout_2_(a1_10, FeLocal_fe_shader_private_layout_1_(a2_5, FeLocal_fe_shader_private_layout_0_(a3_2))));
}

fn camera(a0_33: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = from_quad(a0_33.f0_, a0_33.f1_, a0_33.f2_, a0_33.f3_);
    let _e10 = from_quad(a0_33.f4_, a0_33.f5_, a0_33.f6_, a0_33.f7_);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e10, a0_33.f8_, a0_33.f9_);
}

fn ordered_2x2_(a0_34: u32, a1_11: u32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e6 = from_i32_(a0_34);
    let _e9 = from_i32_((a0_34 & 1u));
    let _e13 = from_i32_(a1_11);
    let _e16 = from_i32_((a1_11 & 1u));
    return FeLocal_fe_shader_private_layout_9_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_35: FeLocal_fe_shader_private_layout_9_, a1_12: f32) -> FeLocal_fe_shader_private_layout_14_ {
    return FeLocal_fe_shader_private_layout_14_((((a0_35.f0_ / a1_12) * 2f) - 1f), (1f - ((a0_35.f1_ / a1_12) * 2f)));
}

fn re_expansion(a0_36: FeLocal_fe_shader_private_layout_11_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_36.f0_), bitcast<f32>(a0_36.f1_), bitcast<f32>(a0_36.f2_), bitcast<f32>(a0_36.f3_));
    return _e9;
}

fn impl_trait_Last_negate(a0_37: f32) -> f32 {
    return -(a0_37);
}

fn negate_ge630_(a0_38: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_38.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_38.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_39: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_39.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_39.f0_), _e4);
}

fn negate_ga905_(a0_40: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_40.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_40.f0_), _e4);
}

fn precision_lib_two_sum_34a0_(a0_41: f32, a1_13: f32) -> FeLocal_fe_shader_private_layout_13_ {
    let _e2 = (a0_41 + a1_13);
    let _e3 = (_e2 - a0_41);
    return FeLocal_fe_shader_private_layout_13_(_e2, ((a0_41 - (_e2 - _e3)) + (a1_13 - _e3)));
}

fn impl_trait_Last_add_corr(a0_42: f32, a1_14: f32, a2_6: f32) -> f32 {
    return ((a2_6 + a0_42) + a1_14);
}

fn add_corr_ge630_(a0_43: FeLocal_fe_shader_private_layout_1_, a1_15: FeLocal_fe_shader_private_layout_1_, a2_7: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_43.f0_, a2_7);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_15.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_43.f1_.f0_, a1_15.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_44: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_44.f0_;
}

fn with_head_ge630_(a0_45: FeLocal_fe_shader_private_layout_1_, a1_16: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_16, FeLocal_fe_shader_private_layout_0_(a0_45.f1_.f0_));
}

fn add_corr_g4419_(a0_46: FeLocal_fe_shader_private_layout_2_, a1_17: FeLocal_fe_shader_private_layout_2_, a2_8: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_46.f0_, a2_8);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_17.f0_);
    let _e14 = add_corr_ge630_(a0_46.f1_, a1_17.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_47: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_47.f0_;
}

fn with_head_g4419_(a0_48: FeLocal_fe_shader_private_layout_2_, a1_18: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_18, a0_48.f1_);
}

fn add_corr_ga905_(a0_49: FeLocal_fe_shader_private_layout_3_, a1_19: FeLocal_fe_shader_private_layout_3_, a2_9: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_49.f0_, a2_9);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_19.f0_);
    let _e14 = add_corr_g4419_(a0_49.f1_, a1_19.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_50: FeLocal_fe_shader_private_layout_3_, a1_20: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_20);
    let _e4 = add_corr_ga905_(a0_50, _e2, 0f);
    return _e4;
}

fn im_expansion(a0_51: FeLocal_fe_shader_private_layout_11_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_51.f4_), bitcast<f32>(a0_51.f5_), bitcast<f32>(a0_51.f6_), bitcast<f32>(a0_51.f7_));
    return _e9;
}

fn to_quad(a0_52: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_16_ {
    return FeLocal_fe_shader_private_layout_16_(a0_52.f0_, a0_52.f1_.f0_, a0_52.f1_.f1_.f0_, a0_52.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_53: f32, a1_21: f32, a2_10: f32, a3_3: f32, a4_2: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_53, a4_2);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_21);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_10);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_3);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn pixel_delta_from_reference(a1_22: u32, a2_11: FeLocal_fe_shader_private_layout_7_, a3_4: FeLocal_fe_shader_private_layout_9_, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_13_ {
    var local_58: FeLocal_fe_shader_private_layout_13_;
    var local_59: bool = false;

    let _e7 = plane(a3_4, a2_11.f3_);
    if (a1_22 > (4294967295u - 8193u)) {
        (*fe_trapped_8) = true;
    }
    let _e17 = orbit[i32((a1_22 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_22 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_22 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_22 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_22 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_22 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_22 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_22 + 8193u))].im_w3_bits;
    let _e32 = FeLocal_fe_shader_private_layout_11_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31);
    let _e34 = re_expansion(_e32);
    let _e35 = sub(a2_11.f0_, _e34);
    let _e37 = im_expansion(_e32);
    let _e38 = sub(a2_11.f1_, _e37);
    let _e39 = to_quad(_e35);
    let _e44 = to_quad(_e38);
    let _e52 = reference_plus_delta(_e39.f0_, _e39.f1_, _e39.f2_, _e39.f3_, (_e7.f0_ * a2_11.f2_));
    let _e56 = reference_plus_delta(_e44.f0_, _e44.f1_, _e44.f2_, _e44.f3_, (_e7.f1_ * a2_11.f2_));
    return FeLocal_fe_shader_private_layout_13_(_e52, _e56);
}

fn pack_progress_reference(a0_54: u32, a1_23: u32, a2_12: u32) -> u32 {
    return (((a0_54 & 536870911u) | (a1_23 << 31u)) | (a2_12 << 30u));
}

fn invalid_reference(a0_55: FeLocal_fe_shader_private_layout_11_) -> bool {
    var local_60: bool;
    var local_61: bool = false;
    var local_62: bool = bool();

    if (a0_55.f0_ == 2143289344u) {
        local_62 = true;
    } else {
        if (a0_55.f4_ == 2143289344u) {
            local_62 = true;
        }
    }
    let _e14 = local_62;
    return _e14;
}

fn non_finite(a0_56: f32) -> bool {
    return (((a0_56 - a0_56) == 0f) == false);
}

fn impl_trait_f32_max(a0_57: f32, a1_24: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_57);
    let _e3 = bitcast<u32>(a1_24);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn progress_reference_index(a0_58: u32) -> u32 {
    return (a0_58 & 536870911u);
}

fn reference_index(a0_59: FeLocal_fe_shader_private_layout_4_) -> u32 {
    let _e2 = progress_reference_index(a0_59.f4_);
    return _e2;
}

fn advance_progress(a1_25: u32, a2_13: f32, a3_5: f32, a4_3: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_63: FeLocal_fe_shader_private_layout_4_;
    var local_64: bool = false;
    var local_65: u32 = u32();
    var local_66: u32 = u32();
    var local_67: u32 = u32();
    var local_68: f32 = f32();
    var local_69: f32 = f32();
    var local_70: f32 = f32();
    var local_71: f32 = f32();
    var local_72: f32 = f32();
    var local_73: u32 = u32();
    var local_74: u32 = u32();
    var local_75: u32 = u32();
    var local_76: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_113_: bool;
    var local_77: f32 = f32();
    var local_78: f32 = f32();
    var local_79: u32 = u32();
    var local_80: f32 = f32();
    var local_81: f32 = f32();
    var local_82: f32 = f32();
    var local_83: f32 = f32();
    var local_84: f32 = f32();
    var local_85: u32 = u32();
    var local_86: u32 = u32();
    var local_87: u32 = u32();
    var local_88: bool = bool();

    if (a1_25 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_25 + 8194u))].re_w0_bits;
        let _e23 = reference_index(a6_);
        let _e24 = is_escaped(a6_);
        if _e24 {
            local_65 = 1u;
        }
        let _e29 = local_65;
        let _e30 = is_glitched(a6_);
        if _e30 {
            local_66 = 1u;
        }
        let _e34 = local_66;
        local_67 = 0u;
        local_68 = a6_.f7_;
        local_69 = a6_.f3_;
        local_70 = a6_.f2_;
        local_71 = a6_.f1_;
        local_72 = a6_.f0_;
        local_73 = _e34;
        local_74 = _e29;
        local_75 = _e23;
        local_76 = a6_.f5_;
        loop {
            let _e60 = local_67;
            let _e62 = local_68;
            let _e64 = local_69;
            let _e66 = local_70;
            let _e68 = local_71;
            let _e70 = local_72;
            let _e72 = local_73;
            let _e74 = local_74;
            let _e76 = local_75;
            let _e78 = local_76;
            let _e79 = (_e78 < a4_3);
            loop_header_carry_113_ = _e79;
            if _e79 {
                if (_e60 < a5_) {
                    if (_e74 == 0u) {
                        if (_e72 == 0u) {
                        } else {
                            let _e85 = pack_progress_reference(_e76, _e74, _e72);
                            loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, _e85, _e78, a6_.f6_, _e62);
                            loop_did_return_1 = true;
                            break;
                        }
                        if (_e76 > (4294967295u - 1u)) {
                        } else {
                            if (((_e76 + 1u) < _e18) == false) {
                                local_77 = _e64;
                                local_78 = _e66;
                                local_79 = 0u;
                            } else {
                                local_77 = _e68;
                                local_78 = _e70;
                                local_79 = _e76;
                            }
                            let _e110 = local_77;
                            let _e112 = local_78;
                            let _e114 = local_79;
                            if (a1_25 > (4294967295u - _e114)) {
                            } else {
                                let _e122 = orbit[i32((a1_25 + _e114))].re_w0_bits;
                                let _e124 = orbit[i32((a1_25 + _e114))].re_w1_bits;
                                let _e126 = orbit[i32((a1_25 + _e114))].re_w2_bits;
                                let _e128 = orbit[i32((a1_25 + _e114))].re_w3_bits;
                                let _e130 = orbit[i32((a1_25 + _e114))].im_w0_bits;
                                let _e132 = orbit[i32((a1_25 + _e114))].im_w1_bits;
                                let _e134 = orbit[i32((a1_25 + _e114))].im_w2_bits;
                                let _e136 = orbit[i32((a1_25 + _e114))].im_w3_bits;
                                let _e139 = (a1_25 + _e114);
                                if (a1_25 > (4294967295u - _e114)) {
                                } else {
                                    if (_e139 > (4294967295u - 1u)) {
                                    } else {
                                        let _e158 = orbit[i32((_e139 + 1u))].re_w0_bits;
                                        let _e160 = orbit[i32((_e139 + 1u))].re_w1_bits;
                                        let _e162 = orbit[i32((_e139 + 1u))].re_w2_bits;
                                        let _e164 = orbit[i32((_e139 + 1u))].re_w3_bits;
                                        let _e166 = orbit[i32((_e139 + 1u))].im_w0_bits;
                                        let _e168 = orbit[i32((_e139 + 1u))].im_w1_bits;
                                        let _e170 = orbit[i32((_e139 + 1u))].im_w2_bits;
                                        let _e172 = orbit[i32((_e139 + 1u))].im_w3_bits;
                                        let _e174 = invalid_reference(FeLocal_fe_shader_private_layout_11_(_e122, _e124, _e126, _e128, _e130, _e132, _e134, _e136));
                                        if _e174 {
                                            local_80 = _e62;
                                            local_81 = _e64;
                                            local_82 = _e66;
                                            local_83 = _e110;
                                            local_84 = _e112;
                                            local_85 = 1u;
                                            local_86 = _e74;
                                            local_87 = _e114;
                                        } else {
                                            let _e175 = invalid_reference(FeLocal_fe_shader_private_layout_11_(_e158, _e160, _e162, _e164, _e166, _e168, _e170, _e172));
                                            if _e175 {
                                                local_80 = _e62;
                                                local_81 = _e64;
                                                local_82 = _e66;
                                                local_83 = _e110;
                                                local_84 = _e112;
                                                local_85 = 1u;
                                                local_86 = _e74;
                                                local_87 = _e114;
                                            } else {
                                                let _e177 = bitcast<f32>(_e122);
                                                let _e178 = bitcast<f32>(_e124);
                                                let _e179 = bitcast<f32>(_e126);
                                                let _e180 = bitcast<f32>(_e128);
                                                let _e181 = bitcast<f32>(_e130);
                                                let _e182 = bitcast<f32>(_e132);
                                                let _e183 = bitcast<f32>(_e134);
                                                let _e184 = bitcast<f32>(_e136);
                                                let _e230 = ((((2f * ((_e177 * _e112) - (_e181 * _e110))) + (2f * ((((((_e178 * _e112) - (_e182 * _e110)) + (_e179 * _e112)) - (_e183 * _e110)) + (_e180 * _e112)) - (_e184 * _e110)))) + ((_e112 * _e112) - (_e110 * _e110))) + a2_13);
                                                let _e240 = ((((2f * ((_e177 * _e110) + (_e181 * _e112))) + (2f * ((((((_e178 * _e110) + (_e182 * _e112)) + (_e179 * _e110)) + (_e183 * _e112)) + (_e180 * _e110)) + (_e184 * _e112)))) + ((2f * _e112) * _e110)) + a3_5);
                                                let _e241 = reference_plus_delta(bitcast<f32>(_e158), bitcast<f32>(_e160), bitcast<f32>(_e162), bitcast<f32>(_e164), _e230);
                                                let _e242 = reference_plus_delta(bitcast<f32>(_e166), bitcast<f32>(_e168), bitcast<f32>(_e170), bitcast<f32>(_e172), _e240);
                                                let _e245 = ((_e241 * _e241) + (_e242 * _e242));
                                                if (4f < _e245) {
                                                    let _e254 = impl_trait_f32_abs((_e245 - 4f));
                                                    let _e256 = impl_trait_f32_max(1f, _e245);
                                                    if (_e254 <= (0.000004f * _e256)) {
                                                        local_88 = true;
                                                    } else {
                                                        local_88 = false;
                                                    }
                                                } else {
                                                    local_88 = false;
                                                }
                                                let _e267 = local_88;
                                                let _e268 = non_finite(_e230);
                                                if _e268 {
                                                    local_80 = _e62;
                                                    local_81 = _e64;
                                                    local_82 = _e66;
                                                    local_83 = _e110;
                                                    local_84 = _e112;
                                                    local_85 = 1u;
                                                    local_86 = _e74;
                                                    local_87 = _e114;
                                                } else {
                                                    let _e269 = non_finite(_e240);
                                                    if _e269 {
                                                        local_80 = _e62;
                                                        local_81 = _e64;
                                                        local_82 = _e66;
                                                        local_83 = _e110;
                                                        local_84 = _e112;
                                                        local_85 = 1u;
                                                        local_86 = _e74;
                                                        local_87 = _e114;
                                                    } else {
                                                        let _e270 = non_finite(_e245);
                                                        if (_e270 | _e267) {
                                                            local_80 = _e62;
                                                            local_81 = _e64;
                                                            local_82 = _e66;
                                                            local_83 = _e110;
                                                            local_84 = _e112;
                                                            local_85 = 1u;
                                                            local_86 = _e74;
                                                            local_87 = _e114;
                                                        } else {
                                                            if (4f < _e245) {
                                                                local_80 = _e245;
                                                                local_81 = _e242;
                                                                local_82 = _e241;
                                                                local_83 = _e240;
                                                                local_84 = _e230;
                                                                local_85 = _e72;
                                                                local_86 = 1u;
                                                                local_87 = _e114;
                                                            } else {
                                                                if (_e245 < ((_e230 * _e230) + (_e240 * _e240))) {
                                                                    local_80 = _e62;
                                                                    local_81 = _e242;
                                                                    local_82 = _e241;
                                                                    local_83 = _e242;
                                                                    local_84 = _e241;
                                                                    local_85 = _e72;
                                                                    local_86 = _e74;
                                                                    local_87 = 0u;
                                                                } else {
                                                                    if (_e114 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_9) = true;
                                                                        break;
                                                                    } else {
                                                                        local_80 = _e62;
                                                                        local_81 = _e242;
                                                                        local_82 = _e241;
                                                                        local_83 = _e240;
                                                                        local_84 = _e230;
                                                                        local_85 = _e72;
                                                                        local_86 = _e74;
                                                                        local_87 = (_e114 + 1u);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e352 = local_80;
                                        let _e354 = local_81;
                                        let _e356 = local_82;
                                        let _e358 = local_83;
                                        let _e360 = local_84;
                                        let _e362 = local_85;
                                        let _e364 = local_86;
                                        let _e366 = local_87;
                                        local_67 = (_e60 + 1u);
                                        local_68 = _e352;
                                        local_69 = _e354;
                                        local_70 = _e356;
                                        local_71 = _e358;
                                        local_72 = _e360;
                                        local_73 = _e362;
                                        local_74 = _e364;
                                        local_75 = _e366;
                                        local_76 = (_e78 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_9) = true;
                        break;
                    } else {
                        let _e382 = pack_progress_reference(_e76, _e74, _e72);
                        loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, _e382, _e78, a6_.f6_, _e62);
                        loop_did_return_1 = true;
                        break;
                    }
                } else {
                    let _e388 = pack_progress_reference(_e76, _e74, _e72);
                    loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, _e388, _e78, a6_.f6_, _e62);
                    loop_did_return_1 = true;
                    break;
                }
            } else {
                let _e394 = pack_progress_reference(_e76, _e74, _e72);
                loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, _e394, _e78, a6_.f6_, _e62);
                loop_did_return_1 = true;
                break;
            }
        }
        let _e402 = loop_did_return_1;
        if _e402 {
            let _e404 = loop_result_1;
            local_63 = _e404;
            local_64 = true;
        }
    }
    let _e410 = local_64;
    if _e410 {
    } else {
        (*fe_trapped_9) = true;
    }
    let _e412 = local_63;
    return _e412;
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
    var local_6: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: u32;
    var local_10: bool = false;
    var local_11: u32;
    var local_12: bool = false;
    var local_13: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    let _e13 = params.p27_;
    let _e15 = params.p28_;
    let _e17 = params.p29_;
    let _e19 = params.p30_;
    let _e21 = params.p31_;
    let _e23 = params.p32_;
    let _e25 = params.p33_;
    let _e27 = params.p34_;
    let _e29 = params.p35_;
    let _e31 = params.p36_;
    let _e33 = params.p37_;
    let _e35 = params.p38_;
    let _e37 = params.p39_;
    let _e39 = params.p40_;
    let _e41 = params.p41_;
    let _e43 = FeLocal_fe_shader_private_layout_6_(_e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39, _e41);
    let _e48 = reference[i32(0u)].active_;
    let _e50 = reference[i32(0u)].active_valid;
    let _e52 = reference[i32(0u)].pending;
    let _e54 = reference[i32(0u)].index;
    let _e56 = reference[i32(0u)].zx_s;
    let _e58 = reference[i32(0u)].zy_s;
    let _e60 = reference[i32(0u)].ready_at;
    let _e62 = can_refine(FeLocal_fe_shader_private_layout_8_(_e48, _e50, _e52, _e54, _e56, _e58, _e60), _e43);
    if _e62 {
    } else {
        local_1 = true;
    }
    let _e173 = local_1;
    if _e173 {
    } else {
        let _e70 = cache[i32(0u)].cursor;
        let _e72 = cache[i32(0u)].epoch;
        let _e73 = for_view(_e29, _e31, (&fe_trapped));
        let _e74 = rect_pixel(_e73, _e70, global_invocation_id.x, global_invocation_id.y, _e31, (&fe_trapped));
        if _e74.f3_ {
        } else {
            local_3 = true;
        }
        let _e171 = local_3;
        if _e171 {
        } else {
            let _e84 = progress_pixels[i32(_e74.f2_)].dz_re;
            let _e86 = progress_pixels[i32(_e74.f2_)].dz_im;
            let _e88 = progress_pixels[i32(_e74.f2_)].z_re;
            let _e90 = progress_pixels[i32(_e74.f2_)].z_im;
            let _e92 = progress_pixels[i32(_e74.f2_)].reference_i;
            let _e94 = progress_pixels[i32(_e74.f2_)].iteration;
            let _e96 = progress_pixels[i32(_e74.f2_)].epoch;
            let _e98 = progress_pixels[i32(_e74.f2_)].magnitude;
            if (_e96 == _e72) {
                local_6 = FeLocal_fe_shader_private_layout_4_(_e84, _e86, _e88, _e90, _e92, _e94, _e96, _e98);
            } else {
                let _e101 = empty_progress(_e72);
                local_6 = _e101;
            }
            let _e106 = local_6;
            let _e108 = is_terminal(_e106, _e73.f0_);
            if _e108 {
                local_8 = true;
            }
            let _e169 = local_8;
            if _e169 {
            } else {
                let _e116 = (_e48 * 8195u);
                let _e117 = (_e48 != 0u);
                if (_e117 && (8195u > (4294967295u / select(1u, _e48, _e117)))) {
                    fe_trapped = true;
                }
                let _e125 = camera(_e43);
                let _e128 = ordered_2x2_(_e74.f0_, _e74.f1_);
                let _e130 = pixel_delta_from_reference(_e116, _e125, _e128, (&fe_trapped));
                let _e134 = advance_progress(_e116, _e130.f0_, _e130.f1_, _e73.f0_, 2048u, _e106, (&fe_trapped));
                let _e136 = is_terminal(_e134, _e73.f0_);
                if _e136 {
                    let _e137 = with_fade_start(_e134, _e33);
                    local_13 = _e137;
                } else {
                    local_13 = _e134;
                }
                let _e141 = local_13;
                progress_pixels[i32(_e74.f2_)].dz_re = _e141.f0_;
                progress_pixels[i32(_e74.f2_)].dz_im = _e141.f1_;
                progress_pixels[i32(_e74.f2_)].z_re = _e141.f2_;
                progress_pixels[i32(_e74.f2_)].z_im = _e141.f3_;
                progress_pixels[i32(_e74.f2_)].reference_i = _e141.f4_;
                progress_pixels[i32(_e74.f2_)].iteration = _e141.f5_;
                progress_pixels[i32(_e74.f2_)].epoch = _e141.f6_;
                progress_pixels[i32(_e74.f2_)].magnitude = _e141.f7_;
                let _e161 = progress_color(_e134, (&fe_trapped));
                native_pixels[i32(_e74.f2_)] = _e161;
                antialiased_pixels[i32(_e74.f2_)] = _e161;
            }
        }
    }
    let _e184 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e184);
}
