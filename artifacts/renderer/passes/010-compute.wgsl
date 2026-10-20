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

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
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

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
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

fn iteration_limit(a0_: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_6: u32 = u32();
    var local_7: f32 = f32();
    var local_8: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_9: u32 = u32();
    var local_10: f32 = f32();
    var local_11: u32;
    var local_12: bool = false;
    var local_13: u32 = u32();

    local_6 = 0u;
    local_7 = a0_;
    local_8 = 0u;
    loop {
        let _e12 = local_6;
        let _e14 = local_7;
        let _e16 = local_8;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_9 = (_e12 + 1u);
                    local_10 = (_e14 * 2f);
                }
            } else {
                local_9 = _e12;
                local_10 = _e14;
            }
            let _e36 = local_9;
            let _e38 = local_10;
            local_6 = _e36;
            local_7 = _e38;
            local_8 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_6;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_13 = 8192u;
        } else {
            local_13 = _e60;
        }
        let _e71 = local_13;
        local_11 = _e71;
        local_12 = true;
    }
    let _e77 = local_12;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_11;
    return _e79;
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn from_i32_(a0_2: u32) -> f32 {
    return f32(bitcast<i32>(a0_2));
}

fn empty_progress(a0_3: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_3, 4f);
}

fn clamp_(a0_4: f32, a1_: f32, a2_: f32) -> f32 {
    var local_14: f32;
    var local_15: bool = false;
    var local_16: f32 = f32();

    if (a0_4 < a1_) {
        local_16 = a1_;
    } else {
        if (a2_ < a0_4) {
            local_16 = a2_;
        } else {
            local_16 = a0_4;
        }
    }
    let _e11 = local_16;
    return _e11;
}

fn packed(a0_5: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e4 = clamp_(a0_5.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_5.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_5.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_6: f32) -> f32 {
    return floor(a0_6);
}

fn fract_(a0_7: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_7);
    return (a0_7 - _e1);
}

fn anchor(a0_8: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_17: FeLocal_fe_shader_private_layout_5_;
    var local_18: bool = false;
    var local_19: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_8 {
        case 0u: {
            local_19 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_19 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_19 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_19 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_19 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_19;
    return _e29;
}

fn wrap_pi(a0_9: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_9 / 6.2831855f) + 0.5f));
    return (a0_9 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_10: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_10) & 2147483647u));
}

fn sin_(a0_11: f32) -> f32 {
    let _e1 = wrap_pi(a0_11);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_12: f32) -> f32 {
    let _e3 = sin_((a0_12 + 1.5707964f));
    return _e3;
}

fn oklch(a0_13: f32, a1_1: f32, a2_1: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = (a2_1 * 0.017453292f);
    let _e5 = cos_(_e4);
    let _e7 = sin_(_e4);
    return FeLocal_fe_shader_private_layout_5_(a0_13, (a1_1 * _e5), (a1_1 * _e7));
}

fn escape_palette(a0_14: u32, a1_2: f32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_20: u32;
    var local_21: bool = false;
    var local_22: u32 = u32();
    var local_23: u32;
    var local_24: bool = false;
    var local_25: f32 = f32();

    let _e5 = from_i32_(a0_14);
    let _e11 = fract_(((_e5 + (4f / a1_2)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e22 = ((_e16 * _e16) * (3f - (2f * _e16)));
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_2) = true;
        } else {
            local_22 = _e29;
        }
    }
    let _e40 = local_22;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_25 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_25 = (_e44 + 360f);
        } else {
            local_25 = _e44;
        }
    }
    let _e57 = local_25;
    let _e73 = oklch((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22)), (_e23.f2_ + (_e57 * _e22)));
    let _e74 = packed(_e73);
    return _e74;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_15: FeLocal_fe_shader_private_layout_4_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_26: u32;
    var local_27: bool = false;
    var local_28: u32 = u32();

    if (((a0_15.f4_ & 1073741824u) == 0u) == false) {
        let _e11 = glitch();
        local_28 = _e11;
    } else {
        if (((a0_15.f4_ & 2147483648u) == 0u) == false) {
            let _e21 = escape_palette(a0_15.f5_, a0_15.f7_, fe_trapped_3);
            local_28 = _e21;
        } else {
            let _e22 = interior();
            local_28 = _e22;
        }
    }
    let _e27 = local_28;
    return _e27;
}

fn phase_order_rect(a0_16: u32, a1_3: u32, a2_2: u32, a3_: u32, a4_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_29: u32;
    var local_30: bool = false;
    var local_31: u32 = u32();

    let _e7 = from_i32_(a1_3);
    let _e10 = from_i32_(a2_2);
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
            local_31 = 1u;
        } else {
            if (_e25 < 1u) {
                (*fe_trapped_4) = true;
            } else {
                local_31 = (_e25 - 1u);
            }
        }
        let _e47 = local_31;
        let _e51 = (a0_16 * _e47);
        let _e52 = (a0_16 != 0u);
        if (_e52 && (_e47 > (4294967295u / select(1u, a0_16, _e52)))) {
        } else {
            if (_e51 > (4294967295u - _e34)) {
            } else {
                if (_e25 == 0u) {
                } else {
                    local_29 = ((_e51 + _e34) % _e25);
                    local_30 = true;
                }
                let _e68 = local_30;
                if _e68 {
                }
            }
            let _e70 = local_30;
            if _e70 {
            }
        }
        let _e72 = local_30;
        if _e72 {
        }
    }
    let _e75 = local_30;
    if _e75 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e77 = local_29;
    return _e77;
}

fn from_quad(a0_17: f32, a1_4: f32, a2_3: f32, a3_1: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_17, FeLocal_fe_shader_private_layout_2_(a1_4, FeLocal_fe_shader_private_layout_1_(a2_3, FeLocal_fe_shader_private_layout_0_(a3_1))));
}

fn camera(a0_18: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = from_quad(a0_18.f0_, a0_18.f1_, a0_18.f2_, a0_18.f3_);
    let _e10 = from_quad(a0_18.f4_, a0_18.f5_, a0_18.f6_, a0_18.f7_);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e10, a0_18.f8_, a0_18.f9_);
}

fn ordered_2x2_(a0_19: u32, a1_5: u32) -> FeLocal_fe_shader_private_layout_8_ {
    let _e6 = from_i32_(a0_19);
    let _e9 = from_i32_((a0_19 & 1u));
    let _e13 = from_i32_(a1_5);
    let _e16 = from_i32_((a1_5 & 1u));
    return FeLocal_fe_shader_private_layout_8_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_20: FeLocal_fe_shader_private_layout_8_, a1_6: f32) -> FeLocal_fe_shader_private_layout_11_ {
    return FeLocal_fe_shader_private_layout_11_((((a0_20.f0_ / a1_6) * 2f) - 1f), (1f - ((a0_20.f1_ / a1_6) * 2f)));
}

fn re_expansion(a0_21: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_21.f0_), bitcast<f32>(a0_21.f1_), bitcast<f32>(a0_21.f2_), bitcast<f32>(a0_21.f3_));
    return _e9;
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

fn precision_lib_two_sum_34a0_(a0_26: f32, a1_7: f32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e2 = (a0_26 + a1_7);
    let _e3 = (_e2 - a0_26);
    return FeLocal_fe_shader_private_layout_10_(_e2, ((a0_26 - (_e2 - _e3)) + (a1_7 - _e3)));
}

fn impl_trait_Last_add_corr(a0_27: f32, a1_8: f32, a2_4: f32) -> f32 {
    return ((a2_4 + a0_27) + a1_8);
}

fn add_corr_ge630_(a0_28: FeLocal_fe_shader_private_layout_1_, a1_9: FeLocal_fe_shader_private_layout_1_, a2_5: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_28.f0_, a2_5);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_9.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_28.f1_.f0_, a1_9.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_29: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_29.f0_;
}

fn with_head_ge630_(a0_30: FeLocal_fe_shader_private_layout_1_, a1_10: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_10, FeLocal_fe_shader_private_layout_0_(a0_30.f1_.f0_));
}

fn add_corr_g4419_(a0_31: FeLocal_fe_shader_private_layout_2_, a1_11: FeLocal_fe_shader_private_layout_2_, a2_6: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_31.f0_, a2_6);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_11.f0_);
    let _e14 = add_corr_ge630_(a0_31.f1_, a1_11.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_32: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_32.f0_;
}

fn with_head_g4419_(a0_33: FeLocal_fe_shader_private_layout_2_, a1_12: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_12, a0_33.f1_);
}

fn add_corr_ga905_(a0_34: FeLocal_fe_shader_private_layout_3_, a1_13: FeLocal_fe_shader_private_layout_3_, a2_7: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_34.f0_, a2_7);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_13.f0_);
    let _e14 = add_corr_g4419_(a0_34.f1_, a1_13.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_35: FeLocal_fe_shader_private_layout_3_, a1_14: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_14);
    let _e4 = add_corr_ga905_(a0_35, _e2, 0f);
    return _e4;
}

fn im_expansion(a0_36: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_36.f4_), bitcast<f32>(a0_36.f5_), bitcast<f32>(a0_36.f6_), bitcast<f32>(a0_36.f7_));
    return _e9;
}

fn to_quad(a0_37: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_12_ {
    return FeLocal_fe_shader_private_layout_12_(a0_37.f0_, a0_37.f1_.f0_, a0_37.f1_.f1_.f0_, a0_37.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_38: f32, a1_15: f32, a2_8: f32, a3_2: f32, a4_1: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_38, a4_1);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_15);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_8);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_2);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn pixel_delta_from_reference(a1_16: u32, a2_9: FeLocal_fe_shader_private_layout_7_, a3_3: FeLocal_fe_shader_private_layout_8_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_32: FeLocal_fe_shader_private_layout_10_;
    var local_33: bool = false;

    let _e7 = plane(a3_3, a2_9.f3_);
    if (a1_16 > (4294967295u - 8193u)) {
        (*fe_trapped_5) = true;
    }
    let _e17 = orbit[i32((a1_16 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_16 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_16 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_16 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_16 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_16 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_16 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_16 + 8193u))].im_w3_bits;
    let _e32 = FeLocal_fe_shader_private_layout_9_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31);
    let _e34 = re_expansion(_e32);
    let _e35 = sub(a2_9.f0_, _e34);
    let _e37 = im_expansion(_e32);
    let _e38 = sub(a2_9.f1_, _e37);
    let _e39 = to_quad(_e35);
    let _e44 = to_quad(_e38);
    let _e52 = reference_plus_delta(_e39.f0_, _e39.f1_, _e39.f2_, _e39.f3_, (_e7.f0_ * a2_9.f2_));
    let _e56 = reference_plus_delta(_e44.f0_, _e44.f1_, _e44.f2_, _e44.f3_, (_e7.f1_ * a2_9.f2_));
    return FeLocal_fe_shader_private_layout_10_(_e52, _e56);
}

fn invalid_reference(a0_39: FeLocal_fe_shader_private_layout_9_) -> bool {
    var local_34: bool;
    var local_35: bool = false;
    var local_36: bool = bool();

    if (a0_39.f0_ == 2143289344u) {
        local_36 = true;
    } else {
        if (a0_39.f4_ == 2143289344u) {
            local_36 = true;
        }
    }
    let _e14 = local_36;
    return _e14;
}

fn non_finite(a0_40: f32) -> bool {
    return (((a0_40 - a0_40) == 0f) == false);
}

fn impl_trait_f32_max(a0_41: f32, a1_17: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_41);
    let _e3 = bitcast<u32>(a1_17);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress(a1_18: u32, a2_10: f32, a3_4: f32, a4_2: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_37: FeLocal_fe_shader_private_layout_4_;
    var local_38: bool = false;
    var local_39: u32 = u32();
    var local_40: u32 = u32();
    var local_41: u32 = u32();
    var local_42: f32 = f32();
    var local_43: f32 = f32();
    var local_44: f32 = f32();
    var local_45: f32 = f32();
    var local_46: f32 = f32();
    var local_47: u32 = u32();
    var local_48: u32 = u32();
    var local_49: u32 = u32();
    var local_50: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_145_: bool;
    var local_51: f32 = f32();
    var local_52: f32 = f32();
    var local_53: u32 = u32();
    var local_54: f32 = f32();
    var local_55: f32 = f32();
    var local_56: f32 = f32();
    var local_57: f32 = f32();
    var local_58: f32 = f32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: bool = bool();

    if (a1_18 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_18 + 8194u))].re_w0_bits;
        if (((a6_.f4_ & 2147483648u) == 0u) == false) {
            local_39 = 1u;
        }
        let _e37 = local_39;
        if (((a6_.f4_ & 1073741824u) == 0u) == false) {
            local_40 = 1u;
        }
        let _e48 = local_40;
        local_41 = 0u;
        local_42 = a6_.f7_;
        local_43 = a6_.f3_;
        local_44 = a6_.f2_;
        local_45 = a6_.f1_;
        local_46 = a6_.f0_;
        local_47 = _e48;
        local_48 = (a6_.f4_ & 1073741823u);
        local_49 = _e37;
        local_50 = a6_.f5_;
        loop {
            let _e74 = local_41;
            let _e76 = local_42;
            let _e78 = local_43;
            let _e80 = local_44;
            let _e82 = local_45;
            let _e84 = local_46;
            let _e86 = local_47;
            let _e88 = local_48;
            let _e90 = local_49;
            let _e92 = local_50;
            let _e93 = (_e92 < a4_2);
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
                                local_51 = _e78;
                                local_52 = _e80;
                                local_53 = 0u;
                            } else {
                                local_51 = _e82;
                                local_52 = _e84;
                                local_53 = _e88;
                            }
                            let _e129 = local_51;
                            let _e131 = local_52;
                            let _e133 = local_53;
                            if (a1_18 > (4294967295u - _e133)) {
                            } else {
                                let _e141 = orbit[i32((a1_18 + _e133))].re_w0_bits;
                                let _e143 = orbit[i32((a1_18 + _e133))].re_w1_bits;
                                let _e145 = orbit[i32((a1_18 + _e133))].re_w2_bits;
                                let _e147 = orbit[i32((a1_18 + _e133))].re_w3_bits;
                                let _e149 = orbit[i32((a1_18 + _e133))].im_w0_bits;
                                let _e151 = orbit[i32((a1_18 + _e133))].im_w1_bits;
                                let _e153 = orbit[i32((a1_18 + _e133))].im_w2_bits;
                                let _e155 = orbit[i32((a1_18 + _e133))].im_w3_bits;
                                let _e158 = (a1_18 + _e133);
                                if (a1_18 > (4294967295u - _e133)) {
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
                                        let _e193 = invalid_reference(FeLocal_fe_shader_private_layout_9_(_e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155));
                                        if _e193 {
                                            local_54 = _e76;
                                            local_55 = _e78;
                                            local_56 = _e80;
                                            local_57 = _e129;
                                            local_58 = _e131;
                                            local_59 = 1u;
                                            local_60 = _e133;
                                            local_61 = _e90;
                                        } else {
                                            let _e194 = invalid_reference(FeLocal_fe_shader_private_layout_9_(_e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191));
                                            if _e194 {
                                                local_54 = _e76;
                                                local_55 = _e78;
                                                local_56 = _e80;
                                                local_57 = _e129;
                                                local_58 = _e131;
                                                local_59 = 1u;
                                                local_60 = _e133;
                                                local_61 = _e90;
                                            } else {
                                                let _e196 = bitcast<f32>(_e141);
                                                let _e197 = bitcast<f32>(_e143);
                                                let _e198 = bitcast<f32>(_e145);
                                                let _e199 = bitcast<f32>(_e147);
                                                let _e200 = bitcast<f32>(_e149);
                                                let _e201 = bitcast<f32>(_e151);
                                                let _e202 = bitcast<f32>(_e153);
                                                let _e203 = bitcast<f32>(_e155);
                                                let _e249 = ((((2f * ((_e196 * _e131) - (_e200 * _e129))) + (2f * ((((((_e197 * _e131) - (_e201 * _e129)) + (_e198 * _e131)) - (_e202 * _e129)) + (_e199 * _e131)) - (_e203 * _e129)))) + ((_e131 * _e131) - (_e129 * _e129))) + a2_10);
                                                let _e259 = ((((2f * ((_e196 * _e129) + (_e200 * _e131))) + (2f * ((((((_e197 * _e129) + (_e201 * _e131)) + (_e198 * _e129)) + (_e202 * _e131)) + (_e199 * _e129)) + (_e203 * _e131)))) + ((2f * _e131) * _e129)) + a3_4);
                                                let _e260 = reference_plus_delta(bitcast<f32>(_e177), bitcast<f32>(_e179), bitcast<f32>(_e181), bitcast<f32>(_e183), _e249);
                                                let _e261 = reference_plus_delta(bitcast<f32>(_e185), bitcast<f32>(_e187), bitcast<f32>(_e189), bitcast<f32>(_e191), _e259);
                                                let _e264 = ((_e260 * _e260) + (_e261 * _e261));
                                                if (4f < _e264) {
                                                    let _e273 = impl_trait_f32_abs((_e264 - 4f));
                                                    let _e275 = impl_trait_f32_max(1f, _e264);
                                                    if (_e273 <= (0.000004f * _e275)) {
                                                        local_62 = true;
                                                    } else {
                                                        local_62 = false;
                                                    }
                                                } else {
                                                    local_62 = false;
                                                }
                                                let _e286 = local_62;
                                                let _e287 = non_finite(_e249);
                                                if _e287 {
                                                    local_54 = _e76;
                                                    local_55 = _e78;
                                                    local_56 = _e80;
                                                    local_57 = _e129;
                                                    local_58 = _e131;
                                                    local_59 = 1u;
                                                    local_60 = _e133;
                                                    local_61 = _e90;
                                                } else {
                                                    let _e288 = non_finite(_e259);
                                                    if _e288 {
                                                        local_54 = _e76;
                                                        local_55 = _e78;
                                                        local_56 = _e80;
                                                        local_57 = _e129;
                                                        local_58 = _e131;
                                                        local_59 = 1u;
                                                        local_60 = _e133;
                                                        local_61 = _e90;
                                                    } else {
                                                        let _e289 = non_finite(_e264);
                                                        if (_e289 | _e286) {
                                                            local_54 = _e76;
                                                            local_55 = _e78;
                                                            local_56 = _e80;
                                                            local_57 = _e129;
                                                            local_58 = _e131;
                                                            local_59 = 1u;
                                                            local_60 = _e133;
                                                            local_61 = _e90;
                                                        } else {
                                                            if (4f < _e264) {
                                                                local_54 = _e264;
                                                                local_55 = _e261;
                                                                local_56 = _e260;
                                                                local_57 = _e259;
                                                                local_58 = _e249;
                                                                local_59 = _e86;
                                                                local_60 = _e133;
                                                                local_61 = 1u;
                                                            } else {
                                                                if (_e264 < ((_e249 * _e249) + (_e259 * _e259))) {
                                                                    local_54 = _e76;
                                                                    local_55 = _e261;
                                                                    local_56 = _e260;
                                                                    local_57 = _e261;
                                                                    local_58 = _e260;
                                                                    local_59 = _e86;
                                                                    local_60 = 0u;
                                                                    local_61 = _e90;
                                                                } else {
                                                                    if (_e133 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_6) = true;
                                                                        break;
                                                                    } else {
                                                                        local_54 = _e76;
                                                                        local_55 = _e261;
                                                                        local_56 = _e260;
                                                                        local_57 = _e259;
                                                                        local_58 = _e249;
                                                                        local_59 = _e86;
                                                                        local_60 = (_e133 + 1u);
                                                                        local_61 = _e90;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e371 = local_54;
                                        let _e373 = local_55;
                                        let _e375 = local_56;
                                        let _e377 = local_57;
                                        let _e379 = local_58;
                                        let _e381 = local_59;
                                        let _e383 = local_60;
                                        let _e385 = local_61;
                                        local_41 = (_e74 + 1u);
                                        local_42 = _e371;
                                        local_43 = _e373;
                                        local_44 = _e375;
                                        local_45 = _e377;
                                        local_46 = _e379;
                                        local_47 = _e381;
                                        local_48 = _e383;
                                        local_49 = _e385;
                                        local_50 = (_e92 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_6) = true;
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
            local_37 = _e438;
            local_38 = true;
        }
    }
    let _e444 = local_38;
    if _e444 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e446 = local_37;
    return _e446;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_3: bool = bool();
    var local_4: f32 = f32();
    var local_5: u32 = u32();

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
    let _e48 = reference[i32(0u)].active_;
    let _e50 = reference[i32(0u)].active_valid;
    let _e52 = reference[i32(0u)].pending;
    if (_e52 == 1u) {
    } else {
        if (_e50 == 0u) {
        } else {
            if (0.5f <= _e39) {
            } else {
                if ((_e33 - _e35) < 60f) {
                    local_1 = true;
                }
                let _e285 = local_1;
                if _e285 {
                } else {
                    let _e68 = cache[i32(0u)].cursor;
                    let _e70 = cache[i32(0u)].epoch;
                    let _e71 = iteration_limit(_e29, (&fe_trapped));
                    let _e76 = to_i32_(((_e31 + 127f) / 128f));
                    let _e81 = to_i32_(((_e31 + 255f) / 256f));
                    let _e85 = (_e76 * _e81);
                    let _e86 = (_e76 != 0u);
                    if (_e86 && (_e81 > (4294967295u / select(1u, _e76, _e86)))) {
                    } else {
                        let _e91 = iteration_limit(_e29, (&fe_trapped));
                        let _e95 = ((_e91 + 2047u) / 2048u);
                        let _e100 = (_e95 != 0u);
                        if (_e100 && (_e85 > (4294967295u / select(1u, _e95, _e100)))) {
                        } else {
                            if (_e68 < (_e95 * _e85)) {
                            } else {
                                local_1 = true;
                            }
                            let _e278 = local_1;
                            if _e278 {
                            } else {
                                if (_e95 == 0u) {
                                } else {
                                    let _e111 = phase_order_rect((_e68 / _e95), global_invocation_id.x, global_invocation_id.y, _e76, _e81, (&fe_trapped));
                                    let _e115 = (global_invocation_id.x * _e76);
                                    let _e116 = (global_invocation_id.x != 0u);
                                    if (_e116 && (_e76 > (4294967295u / select(1u, global_invocation_id.x, _e116)))) {
                                    } else {
                                        if (_e76 == 0u) {
                                        } else {
                                            let _e123 = (_e111 % _e76);
                                            let _e125 = (_e115 + _e123);
                                            if (_e115 > (4294967295u - _e123)) {
                                            } else {
                                                let _e131 = (global_invocation_id.y * _e81);
                                                let _e132 = (global_invocation_id.y != 0u);
                                                if (_e132 && (_e81 > (4294967295u / select(1u, global_invocation_id.y, _e132)))) {
                                                } else {
                                                    let _e137 = (_e111 / _e76);
                                                    let _e139 = (_e131 + _e137);
                                                    if (_e131 > (4294967295u - _e137)) {
                                                    } else {
                                                        let _e142 = from_i32_(_e125);
                                                        if (_e31 <= _e142) {
                                                        } else {
                                                            let _e144 = from_i32_(_e139);
                                                            if (_e31 <= _e144) {
                                                                local_1 = true;
                                                            }
                                                            let _e260 = local_1;
                                                            if _e260 {
                                                            } else {
                                                                let _e151 = ((_e139 << 11u) | _e125);
                                                                let _e155 = progress_pixels[i32(_e151)].dz_re;
                                                                let _e157 = progress_pixels[i32(_e151)].dz_im;
                                                                let _e159 = progress_pixels[i32(_e151)].z_re;
                                                                let _e161 = progress_pixels[i32(_e151)].z_im;
                                                                let _e163 = progress_pixels[i32(_e151)].reference_i;
                                                                let _e165 = progress_pixels[i32(_e151)].iteration;
                                                                let _e167 = progress_pixels[i32(_e151)].epoch;
                                                                let _e169 = progress_pixels[i32(_e151)].magnitude;
                                                                if (_e167 == _e70) {
                                                                    local_2 = FeLocal_fe_shader_private_layout_4_(_e155, _e157, _e159, _e161, _e163, _e165, _e167, _e169);
                                                                } else {
                                                                    let _e172 = empty_progress(_e70);
                                                                    local_2 = _e172;
                                                                }
                                                                let _e176 = local_2;
                                                                if (_e176.f5_ < _e71) {
                                                                    if ((_e176.f4_ & 3221225472u) == 0u) {
                                                                    } else {
                                                                        local_1 = true;
                                                                    }
                                                                    let _e254 = local_1;
                                                                    if _e254 {
                                                                    } else {
                                                                        let _e190 = (_e48 * 8195u);
                                                                        let _e191 = (_e48 != 0u);
                                                                        if (_e191 && (8195u > (4294967295u / select(1u, _e48, _e191)))) {
                                                                            fe_trapped = true;
                                                                        }
                                                                        let _e198 = camera(FeLocal_fe_shader_private_layout_6_(_e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39, _e41));
                                                                        let _e199 = ordered_2x2_(_e125, _e139);
                                                                        let _e200 = pixel_delta_from_reference(_e190, _e198, _e199, (&fe_trapped));
                                                                        let _e204 = advance_progress(_e190, _e200.f0_, _e200.f1_, _e71, 2048u, _e176, (&fe_trapped));
                                                                        if (_e204.f5_ < _e71) {
                                                                            if ((_e204.f4_ & 3221225472u) == 0u) {
                                                                            } else {
                                                                                local_3 = true;
                                                                            }
                                                                        } else {
                                                                            local_3 = true;
                                                                        }
                                                                        let _e218 = local_3;
                                                                        if _e218 {
                                                                            local_4 = _e33;
                                                                        } else {
                                                                            local_4 = _e204.f2_;
                                                                        }
                                                                        let _e226 = local_4;
                                                                        if _e218 {
                                                                            local_5 = 536870912u;
                                                                        }
                                                                        let _e232 = local_5;
                                                                        progress_pixels[i32(_e151)].dz_re = _e204.f0_;
                                                                        progress_pixels[i32(_e151)].dz_im = _e204.f1_;
                                                                        progress_pixels[i32(_e151)].z_re = _e226;
                                                                        progress_pixels[i32(_e151)].z_im = _e204.f3_;
                                                                        progress_pixels[i32(_e151)].reference_i = (_e204.f4_ | _e232);
                                                                        progress_pixels[i32(_e151)].iteration = _e204.f5_;
                                                                        progress_pixels[i32(_e151)].epoch = _e70;
                                                                        progress_pixels[i32(_e151)].magnitude = _e204.f7_;
                                                                        let _e246 = progress_color(_e204, (&fe_trapped));
                                                                        native_pixels[i32(_e151)] = _e246;
                                                                        antialiased_pixels[i32(_e151)] = _e246;
                                                                        local_1 = true;
                                                                    }
                                                                }
                                                                let _e258 = local_1;
                                                                if _e258 {
                                                                } else {
                                                                    local_1 = true;
                                                                }
                                                            }
                                                        }
                                                        let _e264 = local_1;
                                                        if _e264 {
                                                        } else {
                                                            local_1 = true;
                                                        }
                                                    }
                                                    let _e266 = local_1;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_1;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_1;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_1;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_1;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_1;
                                if _e276 {
                                }
                            }
                        }
                        let _e280 = local_1;
                        if _e280 {
                        }
                    }
                    let _e283 = local_1;
                    if _e283 {
                    } else {
                        fe_trapped = true;
                    }
                }
            }
            let _e287 = local_1;
            if _e287 {
            }
        }
        let _e289 = local_1;
        if _e289 {
        }
    }
    let _e300 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e300);
}
