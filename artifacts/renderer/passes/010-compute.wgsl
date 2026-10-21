struct FeLocal_fe_shader_private_layout_15_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: bool,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: f32,
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

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
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

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_8_ {
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

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_20_ {
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

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_8_) -> bool {
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

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_11_, a1_: FeLocal_fe_shader_private_layout_8_) -> bool {
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

fn for_view(a0_4: f32, a1_1: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_15_ {
    var local_28: FeLocal_fe_shader_private_layout_15_;
    var local_29: bool = false;

    let _e4 = iteration_limit(a0_4, fe_trapped_2);
    let _e13 = to_i32_(((a1_1 + 127f) / 128f));
    let _e18 = to_i32_(((a1_1 + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_15_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn refine_steps(a0_5: FeLocal_fe_shader_private_layout_15_, fe_trapped_3: ptr<function, bool>) -> u32 {
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

fn impl_trait_CohortPixel_default() -> FeLocal_fe_shader_private_layout_7_ {
    return FeLocal_fe_shader_private_layout_7_();
}

fn from_i32_(a0_6: u32) -> f32 {
    return f32(bitcast<i32>(a0_6));
}

fn phase_offset(a0_7: u32, a1_2: u32, a2_: u32) -> u32 {
    let _e3 = from_i32_(a0_7);
    let _e6 = from_i32_(a1_2);
    let _e9 = ((_e3 * 0.06711056f) + (_e6 * 0.00583715f));
    let _e10 = to_i32_(_e9);
    let _e11 = from_i32_(_e10);
    let _e14 = ((_e9 - _e11) * 52.982918f);
    let _e15 = to_i32_(_e14);
    let _e16 = from_i32_(_e15);
    let _e18 = from_i32_(a2_);
    let _e20 = to_i32_(((_e14 - _e16) * _e18));
    return _e20;
}

fn phase_order_rect(a0_8: u32, a1_3: u32, a2_1: u32, a3_: u32, a4_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_32: u32;
    var local_33: bool = false;
    var local_34: u32 = u32();

    let _e10 = (a3_ * a4_);
    let _e11 = (a3_ != 0u);
    if (_e11 && (a4_ > (4294967295u / select(1u, a3_, _e11)))) {
    } else {
        let _e17 = phase_offset(a1_3, a2_1, _e10);
        if ((_e17 & 1u) == 0u) {
            local_34 = 1u;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_4) = true;
            } else {
                local_34 = (_e10 - 1u);
            }
        }
        let _e30 = local_34;
        let _e34 = (a0_8 * _e30);
        let _e35 = (a0_8 != 0u);
        if (_e35 && (_e30 > (4294967295u / select(1u, a0_8, _e35)))) {
        } else {
            if (_e34 > (4294967295u - _e17)) {
            } else {
                if (_e10 == 0u) {
                } else {
                    local_32 = ((_e34 + _e17) % _e10);
                    local_33 = true;
                }
                let _e51 = local_33;
                if _e51 {
                }
            }
            let _e53 = local_33;
            if _e53 {
            }
        }
        let _e55 = local_33;
        if _e55 {
        }
    }
    let _e58 = local_33;
    if _e58 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e60 = local_32;
    return _e60;
}

fn at(a0_9: u32, a1_4: u32, a2_2: f32) -> FeLocal_fe_shader_private_layout_7_ {
    var local_35: FeLocal_fe_shader_private_layout_7_;
    var local_36: bool = false;
    var local_37: bool = bool();

    let _e5 = from_i32_(a0_9);
    if (_e5 < a2_2) {
        let _e7 = from_i32_(a1_4);
        if (_e7 < a2_2) {
            local_37 = true;
        }
    }
    let _e12 = local_37;
    return FeLocal_fe_shader_private_layout_7_(a0_9, a1_4, ((a1_4 << 11u) | a0_9), _e12);
}

fn rect_pixel(a0_10: FeLocal_fe_shader_private_layout_15_, a1_5: u32, a2_3: u32, a3_1: u32, a4_1: f32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    var local_38: FeLocal_fe_shader_private_layout_7_;
    var local_39: bool = false;
    var local_40: FeLocal_fe_shader_private_layout_7_;
    var local_41: bool = false;

    let _e7 = refine_steps(a0_10, fe_trapped_5);
    if ((a1_5 < _e7) == false) {
        let _e11 = impl_trait_CohortPixel_default();
        local_38 = _e11;
        local_39 = true;
    }
    let _e82 = local_39;
    if _e82 {
    } else {
        if (a0_10.f1_ == 0u) {
        } else {
            let _e22 = phase_order_rect((a1_5 / a0_10.f1_), a2_3, a3_1, a0_10.f2_, a0_10.f3_, fe_trapped_5);
            let _e27 = (a2_3 * a0_10.f2_);
            let _e28 = (a2_3 != 0u);
            if (_e28 && (a0_10.f2_ > (4294967295u / select(1u, a2_3, _e28)))) {
            } else {
                if (a0_10.f2_ == 0u) {
                } else {
                    let _e36 = (_e22 % a0_10.f2_);
                    if (_e27 > (4294967295u - _e36)) {
                    } else {
                        let _e45 = (a3_1 * a0_10.f3_);
                        let _e46 = (a3_1 != 0u);
                        if (_e46 && (a0_10.f3_ > (4294967295u / select(1u, a3_1, _e46)))) {
                        } else {
                            if (a0_10.f2_ == 0u) {
                            } else {
                                let _e54 = (_e22 / a0_10.f2_);
                                if (_e45 > (4294967295u - _e54)) {
                                } else {
                                    let _e59 = at((_e27 + _e36), (_e45 + _e54), a4_1);
                                    local_40 = _e59;
                                    local_41 = true;
                                }
                                let _e64 = local_41;
                                if _e64 {
                                }
                            }
                            let _e66 = local_41;
                            if _e66 {
                            }
                        }
                        let _e68 = local_41;
                        if _e68 {
                        }
                    }
                    let _e70 = local_41;
                    if _e70 {
                    }
                }
                let _e72 = local_41;
                if _e72 {
                }
            }
            let _e74 = local_41;
            if _e74 {
            }
        }
        let _e77 = local_41;
        if _e77 {
        } else {
            (*fe_trapped_5) = true;
        }
        let _e79 = local_40;
        local_38 = _e79;
    }
    let _e84 = local_38;
    return _e84;
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_();
}

fn from_continuation(a0_11: FeLocal_fe_shader_private_layout_4_, a1_6: FeLocal_fe_shader_private_layout_4_, a2_4: u32, a3_2: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_(a0_11.f0_, a0_11.f1_, a1_6.f0_, a1_6.f1_, a2_4, a3_2, a4_2, a5_);
}

fn empty_progress(a0_12: u32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_12, 4f);
    return _e6;
}

fn progress_is_presentable(a0_13: u32) -> bool {
    return (((a0_13 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_14: u32) -> bool {
    return (((a0_14 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_15: u32, a1_7: u32, a2_5: u32) -> bool {
    var local_42: bool;
    var local_43: bool = false;
    var local_44: bool = bool();

    if ((a1_7 < a2_5) == false) {
        local_44 = true;
    } else {
        let _e8 = progress_has_outcome(a0_15);
        if _e8 {
            local_44 = true;
        } else {
            let _e9 = progress_is_presentable(a0_15);
            if _e9 {
                local_44 = true;
            }
        }
    }
    let _e17 = local_44;
    return _e17;
}

fn is_terminal(a0_16: FeLocal_fe_shader_private_layout_5_, a1_8: u32) -> bool {
    let _e4 = progress_is_terminal(a0_16.f4_, a0_16.f5_, a1_8);
    return _e4;
}

fn progress_with_presentable(a0_17: u32) -> u32 {
    return (a0_17 | 536870912u);
}

fn with_fade_start(a0_18: FeLocal_fe_shader_private_layout_5_, a1_9: f32) -> FeLocal_fe_shader_private_layout_5_ {
    var fixed_local_3_: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    fixed_local_3_ = a0_18;
    fixed_local_3_.f2_ = a1_9;
    let _e6 = progress_with_presentable(a0_18.f4_);
    fixed_local_3_.f4_ = _e6;
    let _e8 = fixed_local_3_;
    return _e8;
}

fn progress_is_glitched(a0_19: u32) -> bool {
    return (((a0_19 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_20: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_glitched(a0_20.f4_);
    return _e2;
}

fn clamp_(a0_21: f32, a1_10: f32, a2_6: f32) -> f32 {
    var local_45: f32;
    var local_46: bool = false;
    var local_47: f32 = f32();

    if (a0_21 < a1_10) {
        local_47 = a1_10;
    } else {
        if (a2_6 < a0_21) {
            local_47 = a2_6;
        } else {
            local_47 = a0_21;
        }
    }
    let _e11 = local_47;
    return _e11;
}

fn pack_lab(a0_22: FeLocal_fe_shader_private_layout_16_) -> u32 {
    let _e4 = clamp_(a0_22.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_22.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_22.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_16_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn progress_is_escaped(a0_23: u32) -> bool {
    return (((a0_23 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_24: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_escaped(a0_24.f4_);
    return _e2;
}

fn impl_trait_f32_floor(a0_25: f32) -> f32 {
    return floor(a0_25);
}

fn fract_(a0_26: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_26);
    return (a0_26 - _e1);
}

fn anchor(a0_27: u32) -> FeLocal_fe_shader_private_layout_6_ {
    var local_48: FeLocal_fe_shader_private_layout_6_;
    var local_49: bool = false;
    var local_50: FeLocal_fe_shader_private_layout_6_ = FeLocal_fe_shader_private_layout_6_();

    switch a0_27 {
        case 0u: {
            local_50 = FeLocal_fe_shader_private_layout_6_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_50 = FeLocal_fe_shader_private_layout_6_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_50 = FeLocal_fe_shader_private_layout_6_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_50 = FeLocal_fe_shader_private_layout_6_(0.73f, 0.142f, 165f);
        }
        default: {
            local_50 = FeLocal_fe_shader_private_layout_6_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_50;
    return _e29;
}

fn interpolate(a0_28: FeLocal_fe_shader_private_layout_6_, a1_11: FeLocal_fe_shader_private_layout_6_, a2_7: f32) -> FeLocal_fe_shader_private_layout_6_ {
    var local_51: FeLocal_fe_shader_private_layout_6_;
    var local_52: bool = false;
    var local_53: f32 = f32();

    let _e7 = (a1_11.f2_ - a0_28.f2_);
    if (180f < _e7) {
        local_53 = (_e7 - 360f);
    } else {
        if (_e7 < -180f) {
            local_53 = (_e7 + 360f);
        } else {
            local_53 = _e7;
        }
    }
    let _e20 = local_53;
    return FeLocal_fe_shader_private_layout_6_((a0_28.f0_ + ((a1_11.f0_ - a0_28.f0_) * a2_7)), (a0_28.f1_ + ((a1_11.f1_ - a0_28.f1_) * a2_7)), (a0_28.f2_ + (_e20 * a2_7)));
}

fn wrap_pi(a0_29: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_29 / 6.2831855f) + 0.5f));
    return (a0_29 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_30: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_30) & 2147483647u));
}

fn sin_(a0_31: f32) -> f32 {
    let _e1 = wrap_pi(a0_31);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_32: f32) -> f32 {
    let _e3 = sin_((a0_32 + 1.5707964f));
    return _e3;
}

fn to_color(a0_33: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_16_ {
    let _e3 = (a0_33.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_16_(a0_33.f0_, (a0_33.f1_ * _e6), (a0_33.f1_ * _e9));
}

fn escape_palette(a0_34: u32, a1_12: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_54: u32;
    var local_55: bool = false;
    var local_56: u32 = u32();

    let _e5 = from_i32_(a0_34);
    let _e11 = fract_(((_e5 + (4f / a1_12)) / 256f));
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
            local_56 = _e29;
        }
    }
    let _e38 = local_56;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_16_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_35: FeLocal_fe_shader_private_layout_5_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_57: u32;
    var local_58: bool = false;
    var local_59: u32 = u32();

    let _e4 = is_glitched(a0_35);
    if _e4 {
        let _e5 = glitch();
        local_59 = _e5;
    } else {
        let _e6 = is_escaped(a0_35);
        if _e6 {
            let _e9 = escape_palette(a0_35.f5_, a0_35.f7_, fe_trapped_7);
            local_59 = _e9;
        } else {
            let _e10 = interior();
            local_59 = _e10;
        }
    }
    let _e15 = local_59;
    return _e15;
}

fn from_quad(a0_36: f32, a1_13: f32, a2_8: f32, a3_3: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_36, FeLocal_fe_shader_private_layout_2_(a1_13, FeLocal_fe_shader_private_layout_1_(a2_8, FeLocal_fe_shader_private_layout_0_(a3_3))));
}

fn center(a0_37: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e5 = from_quad(a0_37.f0_, a0_37.f1_, a0_37.f2_, a0_37.f3_);
    let _e10 = from_quad(a0_37.f4_, a0_37.f5_, a0_37.f6_, a0_37.f7_);
    return FeLocal_fe_shader_private_layout_9_(_e5, _e10);
}

fn camera(a0_38: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_10_ {
    let _e1 = center(a0_38);
    return FeLocal_fe_shader_private_layout_10_(_e1, a0_38.f8_, a0_38.f9_);
}

fn ordered_2x2_(a0_39: u32, a1_14: u32) -> FeLocal_fe_shader_private_layout_12_ {
    let _e6 = from_i32_(a0_39);
    let _e9 = from_i32_((a0_39 & 1u));
    let _e13 = from_i32_(a1_14);
    let _e16 = from_i32_((a1_14 & 1u));
    return FeLocal_fe_shader_private_layout_12_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn sample(a0_40: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_12_ {
    let _e3 = ordered_2x2_(a0_40.f0_, a0_40.f1_);
    return _e3;
}

fn plane(a0_41: FeLocal_fe_shader_private_layout_12_, a1_15: f32) -> FeLocal_fe_shader_private_layout_17_ {
    return FeLocal_fe_shader_private_layout_17_((((a0_41.f0_ / a1_15) * 2f) - 1f), (1f - ((a0_41.f1_ / a1_15) * 2f)));
}

fn decode(a0_42: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e9 = from_quad(bitcast<f32>(a0_42.f0_), bitcast<f32>(a0_42.f1_), bitcast<f32>(a0_42.f2_), bitcast<f32>(a0_42.f3_));
    let _e18 = from_quad(bitcast<f32>(a0_42.f4_), bitcast<f32>(a0_42.f5_), bitcast<f32>(a0_42.f6_), bitcast<f32>(a0_42.f7_));
    return FeLocal_fe_shader_private_layout_9_(_e9, _e18);
}

fn impl_trait_Last_negate(a0_43: f32) -> f32 {
    return -(a0_43);
}

fn negate_ge630_(a0_44: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_44.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_44.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_45: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_45.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_45.f0_), _e4);
}

fn negate_ga905_(a0_46: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_46.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_46.f0_), _e4);
}

fn precision_lib_two_sum_56b3_(a0_47: f32, a1_16: f32) -> FeLocal_fe_shader_private_layout_19_ {
    let _e2 = (a0_47 + a1_16);
    let _e3 = (_e2 - a0_47);
    return FeLocal_fe_shader_private_layout_19_(_e2, ((a0_47 - (_e2 - _e3)) + (a1_16 - _e3)));
}

fn impl_trait_Last_add_corr(a0_48: f32, a1_17: f32, a2_9: f32) -> f32 {
    return ((a2_9 + a0_48) + a1_17);
}

fn add_corr_ge630_(a0_49: FeLocal_fe_shader_private_layout_1_, a1_18: FeLocal_fe_shader_private_layout_1_, a2_10: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_56b3_(a0_49.f0_, a2_10);
    let _e8 = precision_lib_two_sum_56b3_(_e4.f0_, a1_18.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_49.f1_.f0_, a1_18.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_56b3_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_50: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_50.f0_;
}

fn with_head_ge630_(a0_51: FeLocal_fe_shader_private_layout_1_, a1_19: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_19, FeLocal_fe_shader_private_layout_0_(a0_51.f1_.f0_));
}

fn add_corr_g4419_(a0_52: FeLocal_fe_shader_private_layout_2_, a1_20: FeLocal_fe_shader_private_layout_2_, a2_11: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_56b3_(a0_52.f0_, a2_11);
    let _e8 = precision_lib_two_sum_56b3_(_e4.f0_, a1_20.f0_);
    let _e14 = add_corr_ge630_(a0_52.f1_, a1_20.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_56b3_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_53: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_53.f0_;
}

fn with_head_g4419_(a0_54: FeLocal_fe_shader_private_layout_2_, a1_21: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_21, a0_54.f1_);
}

fn add_corr_ga905_(a0_55: FeLocal_fe_shader_private_layout_3_, a1_22: FeLocal_fe_shader_private_layout_3_, a2_12: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_56b3_(a0_55.f0_, a2_12);
    let _e8 = precision_lib_two_sum_56b3_(_e4.f0_, a1_22.f0_);
    let _e14 = add_corr_g4419_(a0_55.f1_, a1_22.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_56b3_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub_ga905_(a0_56: FeLocal_fe_shader_private_layout_3_, a1_23: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_23);
    let _e4 = add_corr_ga905_(a0_56, _e2, 0f);
    return _e4;
}

fn sub_ge3dc(a0_57: FeLocal_fe_shader_private_layout_9_, a1_24: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e4 = sub_ga905_(a0_57.f0_, a1_24.f0_);
    let _e7 = sub_ga905_(a0_57.f1_, a1_24.f1_);
    return FeLocal_fe_shader_private_layout_9_(_e4, _e7);
}

fn to_quad(a0_58: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_18_ {
    return FeLocal_fe_shader_private_layout_18_(a0_58.f0_, a0_58.f1_.f0_, a0_58.f1_.f1_.f0_, a0_58.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_59: f32, a1_25: f32, a2_13: f32, a3_4: f32, a4_3: f32) -> f32 {
    let _e5 = precision_lib_two_sum_56b3_(a0_59, a4_3);
    let _e8 = precision_lib_two_sum_56b3_(_e5.f0_, a1_25);
    let _e11 = precision_lib_two_sum_56b3_(_e8.f0_, a2_13);
    let _e14 = precision_lib_two_sum_56b3_(_e11.f0_, a3_4);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_60: FeLocal_fe_shader_private_layout_3_, a1_26: f32) -> f32 {
    let _e2 = to_quad(a0_60);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_26);
    return _e7;
}

fn reference_with_delta(a0_61: FeLocal_fe_shader_private_layout_9_, a1_27: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = expansion_plus_delta(a0_61.f0_, a1_27.f0_);
    let _e7 = expansion_plus_delta(a0_61.f1_, a1_27.f1_);
    return FeLocal_fe_shader_private_layout_4_(_e4, _e7);
}

fn pixel_delta_from_reference(a1_28: u32, a2_14: FeLocal_fe_shader_private_layout_10_, a3_5: FeLocal_fe_shader_private_layout_12_, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_60: FeLocal_fe_shader_private_layout_4_;
    var local_61: bool = false;

    let _e7 = plane(a3_5, a2_14.f2_);
    if (a1_28 > (4294967295u - 8193u)) {
        (*fe_trapped_8) = true;
    }
    let _e17 = orbit[i32((a1_28 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_28 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_28 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_28 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_28 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_28 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_28 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_28 + 8193u))].im_w3_bits;
    let _e33 = decode(FeLocal_fe_shader_private_layout_13_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e42 = sub_ge3dc(a2_14.f0_, _e33);
    let _e43 = reference_with_delta(_e42, FeLocal_fe_shader_private_layout_4_((_e7.f0_ * a2_14.f1_), (_e7.f1_ * a2_14.f1_)));
    return _e43;
}

fn is_presentable(a0_62: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_presentable(a0_62.f4_);
    return _e2;
}

fn pack_progress_reference(a0_63: u32, a1_29: u32, a2_15: u32) -> u32 {
    return (((a0_63 & 536870911u) | (a1_29 << 31u)) | (a2_15 << 30u));
}

fn perturb(a0_64: FeLocal_fe_shader_private_layout_9_, a1_30: FeLocal_fe_shader_private_layout_4_, a2_16: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = to_quad(a0_64.f0_);
    let _e10 = to_quad(a0_64.f1_);
    return FeLocal_fe_shader_private_layout_4_(((((2f * ((_e4.f0_ * a1_30.f0_) - (_e10.f0_ * a1_30.f1_))) + (2f * ((((((_e4.f1_ * a1_30.f0_) - (_e10.f1_ * a1_30.f1_)) + (_e4.f2_ * a1_30.f0_)) - (_e10.f2_ * a1_30.f1_)) + (_e4.f3_ * a1_30.f0_)) - (_e10.f3_ * a1_30.f1_)))) + ((a1_30.f0_ * a1_30.f0_) - (a1_30.f1_ * a1_30.f1_))) + a2_16.f0_), ((((2f * ((_e4.f0_ * a1_30.f1_) + (_e10.f0_ * a1_30.f0_))) + (2f * ((((((_e4.f1_ * a1_30.f1_) + (_e10.f1_ * a1_30.f0_)) + (_e4.f2_ * a1_30.f1_)) + (_e10.f2_ * a1_30.f0_)) + (_e4.f3_ * a1_30.f1_)) + (_e10.f3_ * a1_30.f0_)))) + ((2f * a1_30.f0_) * a1_30.f1_)) + a2_16.f1_));
}

fn norm_squared(a0_65: FeLocal_fe_shader_private_layout_4_) -> f32 {
    return ((a0_65.f0_ * a0_65.f0_) + (a0_65.f1_ * a0_65.f1_));
}

fn is_invalid(a0_66: FeLocal_fe_shader_private_layout_13_) -> bool {
    var local_62: bool;
    var local_63: bool = false;
    var local_64: bool = bool();

    if (a0_66.f0_ == 2143289344u) {
        local_64 = true;
    } else {
        if (a0_66.f4_ == 2143289344u) {
            local_64 = true;
        }
    }
    let _e14 = local_64;
    return _e14;
}

fn non_finite(a0_67: f32) -> bool {
    return (((a0_67 - a0_67) == 0f) == false);
}

fn is_non_finite(a0_68: FeLocal_fe_shader_private_layout_4_) -> bool {
    var local_65: bool;
    var local_66: bool = false;
    var local_67: bool = bool();

    let _e4 = non_finite(a0_68.f0_);
    if _e4 {
        local_67 = true;
    } else {
        let _e6 = non_finite(a0_68.f1_);
        if _e6 {
            local_67 = true;
        }
    }
    let _e12 = local_67;
    return _e12;
}

fn impl_trait_f32_max(a0_69: f32, a1_31: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_69);
    let _e3 = bitcast<u32>(a1_31);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn decode_metadata(a0_70: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_14_ {
    return FeLocal_fe_shader_private_layout_14_(a0_70.f0_, a0_70.f1_);
}

fn delta(a0_71: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_71.f0_, a0_71.f1_);
}

fn position(a0_72: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_72.f2_, a0_72.f3_);
}

fn progress_reference_index(a0_73: u32) -> u32 {
    return (a0_73 & 536870911u);
}

fn reference_index(a0_74: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e2 = progress_reference_index(a0_74.f4_);
    return _e2;
}

fn advance_progress(a1_32: u32, a2_17: FeLocal_fe_shader_private_layout_4_, a3_6: u32, a4_4: u32, a5_1: FeLocal_fe_shader_private_layout_5_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_68: FeLocal_fe_shader_private_layout_5_;
    var local_69: bool = false;
    var local_70: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_71: u32 = u32();
    var local_72: u32 = u32();
    var local_73: u32 = u32();
    var local_74: f32 = f32();
    var local_75: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_76: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_77: u32 = u32();
    var local_78: u32 = u32();
    var local_79: u32 = u32();
    var local_80: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_5_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_81_: bool;
    var local_81: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_82: u32 = u32();
    var local_83: f32 = f32();
    var local_84: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_85: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_86: u32 = u32();
    var local_87: u32 = u32();
    var local_88: u32 = u32();
    var local_89: bool = bool();

    let _e9 = is_presentable(a5_1);
    if _e9 {
        local_70 = a5_1;
    } else {
        if (a1_32 > (4294967295u - 8194u)) {
            (*fe_trapped_9) = true;
        } else {
            let _e20 = orbit[i32((a1_32 + 8194u))].re_w0_bits;
            let _e22 = orbit[i32((a1_32 + 8194u))].re_w1_bits;
            let _e24 = orbit[i32((a1_32 + 8194u))].re_w2_bits;
            let _e26 = orbit[i32((a1_32 + 8194u))].re_w3_bits;
            let _e28 = orbit[i32((a1_32 + 8194u))].im_w0_bits;
            let _e30 = orbit[i32((a1_32 + 8194u))].im_w1_bits;
            let _e32 = orbit[i32((a1_32 + 8194u))].im_w2_bits;
            let _e34 = orbit[i32((a1_32 + 8194u))].im_w3_bits;
            let _e36 = decode_metadata(FeLocal_fe_shader_private_layout_13_(_e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
            let _e38 = delta(a5_1);
            let _e39 = position(a5_1);
            let _e40 = reference_index(a5_1);
            let _e41 = is_escaped(a5_1);
            if _e41 {
                local_71 = 1u;
            }
            let _e46 = local_71;
            let _e47 = is_glitched(a5_1);
            if _e47 {
                local_72 = 1u;
            }
            let _e51 = local_72;
            local_73 = 0u;
            local_74 = a5_1.f7_;
            local_75 = _e39;
            local_76 = _e38;
            local_77 = _e51;
            local_78 = _e46;
            local_79 = _e40;
            local_80 = a5_1.f5_;
            loop {
                let _e73 = local_73;
                let _e75 = local_74;
                let _e77 = local_75;
                let _e79 = local_76;
                let _e81 = local_77;
                let _e83 = local_78;
                let _e85 = local_79;
                let _e87 = local_80;
                let _e88 = (_e87 < a3_6);
                loop_header_carry_81_ = _e88;
                if _e88 {
                    if (_e73 < a4_4) {
                        if (_e83 == 0u) {
                            if (_e81 == 0u) {
                                if (_e85 > (4294967295u - 1u)) {
                                } else {
                                    if (((_e85 + 1u) < _e36.f0_) == false) {
                                        local_81 = _e77;
                                        local_82 = 0u;
                                    } else {
                                        local_81 = _e79;
                                        local_82 = _e85;
                                    }
                                    let _e110 = local_81;
                                    let _e112 = local_82;
                                    if (a1_32 > (4294967295u - _e112)) {
                                    } else {
                                        let _e120 = orbit[i32((a1_32 + _e112))].re_w0_bits;
                                        let _e122 = orbit[i32((a1_32 + _e112))].re_w1_bits;
                                        let _e124 = orbit[i32((a1_32 + _e112))].re_w2_bits;
                                        let _e126 = orbit[i32((a1_32 + _e112))].re_w3_bits;
                                        let _e128 = orbit[i32((a1_32 + _e112))].im_w0_bits;
                                        let _e130 = orbit[i32((a1_32 + _e112))].im_w1_bits;
                                        let _e132 = orbit[i32((a1_32 + _e112))].im_w2_bits;
                                        let _e134 = orbit[i32((a1_32 + _e112))].im_w3_bits;
                                        let _e135 = FeLocal_fe_shader_private_layout_13_(_e120, _e122, _e124, _e126, _e128, _e130, _e132, _e134);
                                        let _e137 = (a1_32 + _e112);
                                        if (a1_32 > (4294967295u - _e112)) {
                                        } else {
                                            if (_e137 > (4294967295u - 1u)) {
                                            } else {
                                                let _e154 = orbit[i32((_e137 + 1u))].re_w0_bits;
                                                let _e156 = orbit[i32((_e137 + 1u))].re_w1_bits;
                                                let _e158 = orbit[i32((_e137 + 1u))].re_w2_bits;
                                                let _e160 = orbit[i32((_e137 + 1u))].re_w3_bits;
                                                let _e162 = orbit[i32((_e137 + 1u))].im_w0_bits;
                                                let _e164 = orbit[i32((_e137 + 1u))].im_w1_bits;
                                                let _e166 = orbit[i32((_e137 + 1u))].im_w2_bits;
                                                let _e168 = orbit[i32((_e137 + 1u))].im_w3_bits;
                                                let _e169 = FeLocal_fe_shader_private_layout_13_(_e154, _e156, _e158, _e160, _e162, _e164, _e166, _e168);
                                                let _e170 = is_invalid(_e135);
                                                if _e170 {
                                                    local_83 = _e75;
                                                    local_84 = _e77;
                                                    local_85 = _e110;
                                                    local_86 = 1u;
                                                    local_87 = _e83;
                                                    local_88 = _e112;
                                                } else {
                                                    let _e171 = is_invalid(_e169);
                                                    if _e171 {
                                                        local_83 = _e75;
                                                        local_84 = _e77;
                                                        local_85 = _e110;
                                                        local_86 = 1u;
                                                        local_87 = _e83;
                                                        local_88 = _e112;
                                                    } else {
                                                        let _e173 = decode(_e135);
                                                        let _e174 = decode(_e169);
                                                        let _e175 = perturb(_e173, _e110, a2_17);
                                                        let _e176 = reference_with_delta(_e174, _e175);
                                                        let _e177 = norm_squared(_e176);
                                                        let _e178 = norm_squared(_e175);
                                                        if (4f < _e177) {
                                                            let _e184 = impl_trait_f32_abs((_e177 - 4f));
                                                            let _e186 = impl_trait_f32_max(1f, _e177);
                                                            if (_e184 <= (0.000004f * _e186)) {
                                                                local_89 = true;
                                                            } else {
                                                                local_89 = false;
                                                            }
                                                        } else {
                                                            local_89 = false;
                                                        }
                                                        let _e197 = local_89;
                                                        let _e198 = is_non_finite(_e175);
                                                        if _e198 {
                                                            local_83 = _e75;
                                                            local_84 = _e77;
                                                            local_85 = _e110;
                                                            local_86 = 1u;
                                                            local_87 = _e83;
                                                            local_88 = _e112;
                                                        } else {
                                                            let _e199 = non_finite(_e177);
                                                            if (_e199 | _e197) {
                                                                local_83 = _e75;
                                                                local_84 = _e77;
                                                                local_85 = _e110;
                                                                local_86 = 1u;
                                                                local_87 = _e83;
                                                                local_88 = _e112;
                                                            } else {
                                                                if (4f < _e177) {
                                                                    local_83 = _e177;
                                                                    local_84 = _e176;
                                                                    local_85 = _e175;
                                                                    local_86 = _e81;
                                                                    local_87 = 1u;
                                                                    local_88 = _e112;
                                                                } else {
                                                                    if (_e177 < _e178) {
                                                                        local_83 = _e75;
                                                                        local_84 = _e176;
                                                                        local_85 = _e176;
                                                                        local_86 = _e81;
                                                                        local_87 = _e83;
                                                                        local_88 = 0u;
                                                                    } else {
                                                                        if (_e112 > (4294967295u - 1u)) {
                                                                            (*fe_trapped_9) = true;
                                                                            break;
                                                                        } else {
                                                                            local_83 = _e75;
                                                                            local_84 = _e176;
                                                                            local_85 = _e175;
                                                                            local_86 = _e81;
                                                                            local_87 = _e83;
                                                                            local_88 = (_e112 + 1u);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                let _e258 = local_83;
                                                let _e260 = local_84;
                                                let _e262 = local_85;
                                                let _e264 = local_86;
                                                let _e266 = local_87;
                                                let _e268 = local_88;
                                                local_73 = (_e73 + 1u);
                                                local_74 = _e258;
                                                local_75 = _e260;
                                                local_76 = _e262;
                                                local_77 = _e264;
                                                local_78 = _e266;
                                                local_79 = _e268;
                                                local_80 = (_e87 + 1u);
                                                continue;
                                            }
                                        }
                                    }
                                }
                                (*fe_trapped_9) = true;
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
            let _e284 = local_74;
            let _e286 = local_75;
            let _e288 = local_76;
            let _e290 = local_77;
            let _e292 = local_78;
            let _e294 = local_79;
            let _e296 = local_80;
            let _e297 = pack_progress_reference(_e294, _e292, _e290);
            let _e299 = from_continuation(_e288, _e286, _e297, _e296, a5_1.f6_, _e284);
            local_70 = _e299;
        }
    }
    let _e303 = local_70;
    return _e303;
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
    var local_6: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: u32;
    var local_10: bool = false;
    var local_11: u32;
    var local_12: bool = false;
    var local_13: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

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
    let _e43 = FeLocal_fe_shader_private_layout_8_(_e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39, _e41);
    let _e48 = reference[i32(0u)].active_;
    let _e50 = reference[i32(0u)].active_valid;
    let _e52 = reference[i32(0u)].pending;
    let _e54 = reference[i32(0u)].index;
    let _e56 = reference[i32(0u)].zx_s;
    let _e58 = reference[i32(0u)].zy_s;
    let _e60 = reference[i32(0u)].ready_at;
    let _e62 = can_refine(FeLocal_fe_shader_private_layout_11_(_e48, _e50, _e52, _e54, _e56, _e58, _e60), _e43);
    if _e62 {
    } else {
        local_1 = true;
    }
    let _e169 = local_1;
    if _e169 {
    } else {
        let _e70 = cache[i32(0u)].cursor;
        let _e72 = cache[i32(0u)].epoch;
        let _e73 = for_view(_e29, _e31, (&fe_trapped));
        let _e74 = rect_pixel(_e73, _e70, global_invocation_id.x, global_invocation_id.y, _e31, (&fe_trapped));
        if _e74.f3_ {
        } else {
            local_3 = true;
        }
        let _e167 = local_3;
        if _e167 {
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
                local_6 = FeLocal_fe_shader_private_layout_5_(_e84, _e86, _e88, _e90, _e92, _e94, _e96, _e98);
            } else {
                let _e101 = empty_progress(_e72);
                local_6 = _e101;
            }
            let _e106 = local_6;
            let _e108 = is_terminal(_e106, _e73.f0_);
            if _e108 {
                local_8 = true;
            }
            let _e165 = local_8;
            if _e165 {
            } else {
                let _e116 = (_e48 * 8195u);
                let _e117 = (_e48 != 0u);
                if (_e117 && (8195u > (4294967295u / select(1u, _e48, _e117)))) {
                    fe_trapped = true;
                }
                let _e125 = camera(_e43);
                let _e126 = sample(_e74);
                let _e128 = pixel_delta_from_reference(_e116, _e125, _e126, (&fe_trapped));
                let _e130 = advance_progress(_e116, _e128, _e73.f0_, 2048u, _e106, (&fe_trapped));
                let _e132 = is_terminal(_e130, _e73.f0_);
                if _e132 {
                    let _e133 = with_fade_start(_e130, _e33);
                    local_13 = _e133;
                } else {
                    local_13 = _e130;
                }
                let _e137 = local_13;
                progress_pixels[i32(_e74.f2_)].dz_re = _e137.f0_;
                progress_pixels[i32(_e74.f2_)].dz_im = _e137.f1_;
                progress_pixels[i32(_e74.f2_)].z_re = _e137.f2_;
                progress_pixels[i32(_e74.f2_)].z_im = _e137.f3_;
                progress_pixels[i32(_e74.f2_)].reference_i = _e137.f4_;
                progress_pixels[i32(_e74.f2_)].iteration = _e137.f5_;
                progress_pixels[i32(_e74.f2_)].epoch = _e137.f6_;
                progress_pixels[i32(_e74.f2_)].magnitude = _e137.f7_;
                let _e157 = progress_color(_e130, (&fe_trapped));
                native_pixels[i32(_e74.f2_)] = _e157;
                antialiased_pixels[i32(_e74.f2_)] = _e157;
            }
        }
    }
    let _e180 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e180);
}
