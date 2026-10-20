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

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
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
var<storage> params: Params;
@group(0) @binding(6)
var<storage, read_write> trap: array<u32, 65536>;

fn iteration_limit(a0_: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_2: u32 = u32();
    var local_3: f32 = f32();
    var local_4: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_5: u32 = u32();
    var local_6: f32 = f32();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: u32 = u32();

    local_2 = 0u;
    local_3 = a0_;
    local_4 = 0u;
    loop {
        let _e12 = local_2;
        let _e14 = local_3;
        let _e16 = local_4;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_5 = (_e12 + 1u);
                    local_6 = (_e14 * 2f);
                }
            } else {
                local_5 = _e12;
                local_6 = _e14;
            }
            let _e36 = local_5;
            let _e38 = local_6;
            local_2 = _e36;
            local_3 = _e38;
            local_4 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_2;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_9 = 8192u;
        } else {
            local_9 = _e60;
        }
        let _e71 = local_9;
        local_7 = _e71;
        local_8 = true;
    }
    let _e77 = local_8;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_7;
    return _e79;
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn from_i32_(a0_2: u32) -> f32 {
    return f32(bitcast<i32>(a0_2));
}

fn color(a0_3: u32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e3 = from_i32_((a0_3 & 4095u));
    let _e10 = from_i32_(((a0_3 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_3 >> 22u));
    return FeLocal_fe_shader_private_layout_5_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn impl_trait_f32_max(a0_4: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_4);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn impl_trait_f32_min(a0_5: f32, a1_1: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_5);
    let _e3 = bitcast<u32>(a1_1);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) < (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn impl_trait_f32_abs(a0_6: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_6) & 2147483647u));
}

fn lib_image_max(a0_7: f32, a1_2: f32) -> f32 {
    var local_10: f32;
    var local_11: bool = false;
    var local_12: f32 = f32();

    if (a1_2 < a0_7) {
        local_12 = a0_7;
    } else {
        local_12 = a1_2;
    }
    let _e8 = local_12;
    return _e8;
}

fn contrast(a0_8: FeLocal_fe_shader_private_layout_5_, a1_3: FeLocal_fe_shader_private_layout_5_) -> f32 {
    let _e5 = impl_trait_f32_abs((a0_8.f0_ - a1_3.f0_));
    let _e11 = impl_trait_f32_abs((a0_8.f1_ - a1_3.f1_));
    let _e17 = impl_trait_f32_abs((a0_8.f2_ - a1_3.f2_));
    let _e20 = lib_image_max((4f * _e11), (4f * _e17));
    let _e21 = lib_image_max((2f * _e5), _e20);
    return _e21;
}

fn from_quad(a0_9: f32, a1_4: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_9, FeLocal_fe_shader_private_layout_2_(a1_4, FeLocal_fe_shader_private_layout_1_(a2_, FeLocal_fe_shader_private_layout_0_(a3_))));
}

fn camera(a0_10: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = from_quad(a0_10.f0_, a0_10.f1_, a0_10.f2_, a0_10.f3_);
    let _e10 = from_quad(a0_10.f4_, a0_10.f5_, a0_10.f6_, a0_10.f7_);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e10, a0_10.f8_, a0_10.f9_);
}

fn phase_order(a0_11: u32, a1_5: u32, a2_1: u32, a3_1: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_13: u32;
    var local_14: bool = false;

    let _e6 = from_i32_(a1_5);
    let _e9 = from_i32_(a2_1);
    let _e12 = ((_e6 * 0.06711056f) + (_e9 * 0.00583715f));
    let _e13 = to_i32_(_e12);
    let _e14 = from_i32_(_e13);
    let _e17 = ((_e12 - _e14) * 52.982918f);
    let _e18 = to_i32_(_e17);
    let _e19 = from_i32_(_e18);
    let _e24 = (a3_1 * a3_1);
    let _e25 = (a3_1 != 0u);
    if (_e25 && (a3_1 > (4294967295u / select(1u, a3_1, _e25)))) {
    } else {
        let _e30 = from_i32_(_e24);
        let _e32 = to_i32_(((_e17 - _e19) * _e30));
        let _e37 = (2u * a3_1);
        let _e38 = (2u != 0u);
        if (_e38 && (a3_1 > (4294967295u / select(1u, 2u, _e38)))) {
        } else {
            let _e45 = (_e37 + 1u);
            if (_e37 > (4294967295u - 1u)) {
            } else {
                let _e51 = (a0_11 * _e45);
                let _e52 = (a0_11 != 0u);
                if (_e52 && (_e45 > (4294967295u / select(1u, a0_11, _e52)))) {
                } else {
                    if (_e51 > (4294967295u - _e32)) {
                    } else {
                        if (_e24 == 0u) {
                        } else {
                            local_13 = ((_e51 + _e32) % _e24);
                            local_14 = true;
                        }
                        let _e68 = local_14;
                        if _e68 {
                        }
                    }
                    let _e70 = local_14;
                    if _e70 {
                    }
                }
                let _e72 = local_14;
                if _e72 {
                }
            }
            let _e74 = local_14;
            if _e74 {
            }
        }
        let _e76 = local_14;
        if _e76 {
        }
    }
    let _e79 = local_14;
    if _e79 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e81 = local_13;
    return _e81;
}

fn ordered_2x2_(a0_12: u32, a1_6: u32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e6 = from_i32_(a0_12);
    let _e9 = from_i32_((a0_12 & 1u));
    let _e13 = from_i32_(a1_6);
    let _e16 = from_i32_((a1_6 & 1u));
    return FeLocal_fe_shader_private_layout_9_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn offset_sample(a0_13: u32, a1_7: u32, a2_2: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e4 = ordered_2x2_(a0_13, a1_7);
    return FeLocal_fe_shader_private_layout_9_((_e4.f0_ + a2_2), (_e4.f1_ + a3_2));
}

fn plane(a0_14: FeLocal_fe_shader_private_layout_9_, a1_8: f32) -> FeLocal_fe_shader_private_layout_11_ {
    return FeLocal_fe_shader_private_layout_11_((((a0_14.f0_ / a1_8) * 2f) - 1f), (1f - ((a0_14.f1_ / a1_8) * 2f)));
}

fn re_expansion(a0_15: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_15.f0_), bitcast<f32>(a0_15.f1_), bitcast<f32>(a0_15.f2_), bitcast<f32>(a0_15.f3_));
    return _e9;
}

fn impl_trait_Last_negate(a0_16: f32) -> f32 {
    return -(a0_16);
}

fn negate_ge630_(a0_17: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_17.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_17.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_18: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_18.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_18.f0_), _e4);
}

fn negate_ga905_(a0_19: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_19.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_19.f0_), _e4);
}

fn precision_lib_two_sum_34a0_(a0_20: f32, a1_9: f32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e2 = (a0_20 + a1_9);
    let _e3 = (_e2 - a0_20);
    return FeLocal_fe_shader_private_layout_10_(_e2, ((a0_20 - (_e2 - _e3)) + (a1_9 - _e3)));
}

fn impl_trait_Last_add_corr(a0_21: f32, a1_10: f32, a2_3: f32) -> f32 {
    return ((a2_3 + a0_21) + a1_10);
}

fn add_corr_ge630_(a0_22: FeLocal_fe_shader_private_layout_1_, a1_11: FeLocal_fe_shader_private_layout_1_, a2_4: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_22.f0_, a2_4);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_11.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_22.f1_.f0_, a1_11.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_23: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_23.f0_;
}

fn with_head_ge630_(a0_24: FeLocal_fe_shader_private_layout_1_, a1_12: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_12, FeLocal_fe_shader_private_layout_0_(a0_24.f1_.f0_));
}

fn add_corr_g4419_(a0_25: FeLocal_fe_shader_private_layout_2_, a1_13: FeLocal_fe_shader_private_layout_2_, a2_5: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_25.f0_, a2_5);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_13.f0_);
    let _e14 = add_corr_ge630_(a0_25.f1_, a1_13.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_26: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_26.f0_;
}

fn with_head_g4419_(a0_27: FeLocal_fe_shader_private_layout_2_, a1_14: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_14, a0_27.f1_);
}

fn add_corr_ga905_(a0_28: FeLocal_fe_shader_private_layout_3_, a1_15: FeLocal_fe_shader_private_layout_3_, a2_6: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_28.f0_, a2_6);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_15.f0_);
    let _e14 = add_corr_g4419_(a0_28.f1_, a1_15.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_29: FeLocal_fe_shader_private_layout_3_, a1_16: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_16);
    let _e4 = add_corr_ga905_(a0_29, _e2, 0f);
    return _e4;
}

fn im_expansion(a0_30: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_30.f4_), bitcast<f32>(a0_30.f5_), bitcast<f32>(a0_30.f6_), bitcast<f32>(a0_30.f7_));
    return _e9;
}

fn to_quad(a0_31: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_12_ {
    return FeLocal_fe_shader_private_layout_12_(a0_31.f0_, a0_31.f1_.f0_, a0_31.f1_.f1_.f0_, a0_31.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_32: f32, a1_17: f32, a2_7: f32, a3_3: f32, a4_: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_32, a4_);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_17);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_7);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_3);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn pixel_delta_from_reference(a1_18: u32, a2_8: FeLocal_fe_shader_private_layout_7_, a3_4: FeLocal_fe_shader_private_layout_9_, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_15: FeLocal_fe_shader_private_layout_10_;
    var local_16: bool = false;

    let _e7 = plane(a3_4, a2_8.f3_);
    if (a1_18 > (4294967295u - 8193u)) {
        (*fe_trapped_3) = true;
    }
    let _e17 = orbit[i32((a1_18 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_18 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_18 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_18 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_18 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_18 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_18 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_18 + 8193u))].im_w3_bits;
    let _e32 = FeLocal_fe_shader_private_layout_8_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31);
    let _e34 = re_expansion(_e32);
    let _e35 = sub(a2_8.f0_, _e34);
    let _e37 = im_expansion(_e32);
    let _e38 = sub(a2_8.f1_, _e37);
    let _e39 = to_quad(_e35);
    let _e44 = to_quad(_e38);
    let _e52 = reference_plus_delta(_e39.f0_, _e39.f1_, _e39.f2_, _e39.f3_, (_e7.f0_ * a2_8.f2_));
    let _e56 = reference_plus_delta(_e44.f0_, _e44.f1_, _e44.f2_, _e44.f3_, (_e7.f1_ * a2_8.f2_));
    return FeLocal_fe_shader_private_layout_10_(_e52, _e56);
}

fn empty_progress(a0_33: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_33, 4f);
}

fn invalid_reference(a0_34: FeLocal_fe_shader_private_layout_8_) -> bool {
    var local_17: bool;
    var local_18: bool = false;
    var local_19: bool = bool();

    if (a0_34.f0_ == 2143289344u) {
        local_19 = true;
    } else {
        if (a0_34.f4_ == 2143289344u) {
            local_19 = true;
        }
    }
    let _e14 = local_19;
    return _e14;
}

fn non_finite(a0_35: f32) -> bool {
    return (((a0_35 - a0_35) == 0f) == false);
}

fn advance_progress(a1_19: u32, a2_9: f32, a3_5: f32, a4_1: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_20: FeLocal_fe_shader_private_layout_4_;
    var local_21: bool = false;
    var local_22: u32 = u32();
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var local_25: f32 = f32();
    var local_26: f32 = f32();
    var local_27: f32 = f32();
    var local_28: f32 = f32();
    var local_29: f32 = f32();
    var local_30: u32 = u32();
    var local_31: u32 = u32();
    var local_32: u32 = u32();
    var local_33: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_145_: bool;
    var local_34: f32 = f32();
    var local_35: f32 = f32();
    var local_36: u32 = u32();
    var local_37: f32 = f32();
    var local_38: f32 = f32();
    var local_39: f32 = f32();
    var local_40: f32 = f32();
    var local_41: f32 = f32();
    var local_42: u32 = u32();
    var local_43: u32 = u32();
    var local_44: u32 = u32();
    var local_45: bool = bool();

    if (a1_19 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_19 + 8194u))].re_w0_bits;
        if (((a6_.f4_ & 2147483648u) == 0u) == false) {
            local_22 = 1u;
        }
        let _e37 = local_22;
        if (((a6_.f4_ & 1073741824u) == 0u) == false) {
            local_23 = 1u;
        }
        let _e48 = local_23;
        local_24 = 0u;
        local_25 = a6_.f7_;
        local_26 = a6_.f3_;
        local_27 = a6_.f2_;
        local_28 = a6_.f1_;
        local_29 = a6_.f0_;
        local_30 = _e48;
        local_31 = (a6_.f4_ & 1073741823u);
        local_32 = _e37;
        local_33 = a6_.f5_;
        loop {
            let _e74 = local_24;
            let _e76 = local_25;
            let _e78 = local_26;
            let _e80 = local_27;
            let _e82 = local_28;
            let _e84 = local_29;
            let _e86 = local_30;
            let _e88 = local_31;
            let _e90 = local_32;
            let _e92 = local_33;
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
                                local_34 = _e78;
                                local_35 = _e80;
                                local_36 = 0u;
                            } else {
                                local_34 = _e82;
                                local_35 = _e84;
                                local_36 = _e88;
                            }
                            let _e129 = local_34;
                            let _e131 = local_35;
                            let _e133 = local_36;
                            if (a1_19 > (4294967295u - _e133)) {
                            } else {
                                let _e141 = orbit[i32((a1_19 + _e133))].re_w0_bits;
                                let _e143 = orbit[i32((a1_19 + _e133))].re_w1_bits;
                                let _e145 = orbit[i32((a1_19 + _e133))].re_w2_bits;
                                let _e147 = orbit[i32((a1_19 + _e133))].re_w3_bits;
                                let _e149 = orbit[i32((a1_19 + _e133))].im_w0_bits;
                                let _e151 = orbit[i32((a1_19 + _e133))].im_w1_bits;
                                let _e153 = orbit[i32((a1_19 + _e133))].im_w2_bits;
                                let _e155 = orbit[i32((a1_19 + _e133))].im_w3_bits;
                                let _e158 = (a1_19 + _e133);
                                if (a1_19 > (4294967295u - _e133)) {
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
                                        let _e193 = invalid_reference(FeLocal_fe_shader_private_layout_8_(_e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155));
                                        if _e193 {
                                            local_37 = _e76;
                                            local_38 = _e78;
                                            local_39 = _e80;
                                            local_40 = _e129;
                                            local_41 = _e131;
                                            local_42 = 1u;
                                            local_43 = _e133;
                                            local_44 = _e90;
                                        } else {
                                            let _e194 = invalid_reference(FeLocal_fe_shader_private_layout_8_(_e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191));
                                            if _e194 {
                                                local_37 = _e76;
                                                local_38 = _e78;
                                                local_39 = _e80;
                                                local_40 = _e129;
                                                local_41 = _e131;
                                                local_42 = 1u;
                                                local_43 = _e133;
                                                local_44 = _e90;
                                            } else {
                                                let _e196 = bitcast<f32>(_e141);
                                                let _e197 = bitcast<f32>(_e143);
                                                let _e198 = bitcast<f32>(_e145);
                                                let _e199 = bitcast<f32>(_e147);
                                                let _e200 = bitcast<f32>(_e149);
                                                let _e201 = bitcast<f32>(_e151);
                                                let _e202 = bitcast<f32>(_e153);
                                                let _e203 = bitcast<f32>(_e155);
                                                let _e249 = ((((2f * ((_e196 * _e131) - (_e200 * _e129))) + (2f * ((((((_e197 * _e131) - (_e201 * _e129)) + (_e198 * _e131)) - (_e202 * _e129)) + (_e199 * _e131)) - (_e203 * _e129)))) + ((_e131 * _e131) - (_e129 * _e129))) + a2_9);
                                                let _e259 = ((((2f * ((_e196 * _e129) + (_e200 * _e131))) + (2f * ((((((_e197 * _e129) + (_e201 * _e131)) + (_e198 * _e129)) + (_e202 * _e131)) + (_e199 * _e129)) + (_e203 * _e131)))) + ((2f * _e131) * _e129)) + a3_5);
                                                let _e260 = reference_plus_delta(bitcast<f32>(_e177), bitcast<f32>(_e179), bitcast<f32>(_e181), bitcast<f32>(_e183), _e249);
                                                let _e261 = reference_plus_delta(bitcast<f32>(_e185), bitcast<f32>(_e187), bitcast<f32>(_e189), bitcast<f32>(_e191), _e259);
                                                let _e264 = ((_e260 * _e260) + (_e261 * _e261));
                                                if (4f < _e264) {
                                                    let _e273 = impl_trait_f32_abs((_e264 - 4f));
                                                    let _e275 = impl_trait_f32_max(1f, _e264);
                                                    if (_e273 <= (0.000004f * _e275)) {
                                                        local_45 = true;
                                                    } else {
                                                        local_45 = false;
                                                    }
                                                } else {
                                                    local_45 = false;
                                                }
                                                let _e286 = local_45;
                                                let _e287 = non_finite(_e249);
                                                if _e287 {
                                                    local_37 = _e76;
                                                    local_38 = _e78;
                                                    local_39 = _e80;
                                                    local_40 = _e129;
                                                    local_41 = _e131;
                                                    local_42 = 1u;
                                                    local_43 = _e133;
                                                    local_44 = _e90;
                                                } else {
                                                    let _e288 = non_finite(_e259);
                                                    if _e288 {
                                                        local_37 = _e76;
                                                        local_38 = _e78;
                                                        local_39 = _e80;
                                                        local_40 = _e129;
                                                        local_41 = _e131;
                                                        local_42 = 1u;
                                                        local_43 = _e133;
                                                        local_44 = _e90;
                                                    } else {
                                                        let _e289 = non_finite(_e264);
                                                        if (_e289 | _e286) {
                                                            local_37 = _e76;
                                                            local_38 = _e78;
                                                            local_39 = _e80;
                                                            local_40 = _e129;
                                                            local_41 = _e131;
                                                            local_42 = 1u;
                                                            local_43 = _e133;
                                                            local_44 = _e90;
                                                        } else {
                                                            if (4f < _e264) {
                                                                local_37 = _e264;
                                                                local_38 = _e261;
                                                                local_39 = _e260;
                                                                local_40 = _e259;
                                                                local_41 = _e249;
                                                                local_42 = _e86;
                                                                local_43 = _e133;
                                                                local_44 = 1u;
                                                            } else {
                                                                if (_e264 < ((_e249 * _e249) + (_e259 * _e259))) {
                                                                    local_37 = _e76;
                                                                    local_38 = _e261;
                                                                    local_39 = _e260;
                                                                    local_40 = _e261;
                                                                    local_41 = _e260;
                                                                    local_42 = _e86;
                                                                    local_43 = 0u;
                                                                    local_44 = _e90;
                                                                } else {
                                                                    if (_e133 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_4) = true;
                                                                        break;
                                                                    } else {
                                                                        local_37 = _e76;
                                                                        local_38 = _e261;
                                                                        local_39 = _e260;
                                                                        local_40 = _e259;
                                                                        local_41 = _e249;
                                                                        local_42 = _e86;
                                                                        local_43 = (_e133 + 1u);
                                                                        local_44 = _e90;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e371 = local_37;
                                        let _e373 = local_38;
                                        let _e375 = local_39;
                                        let _e377 = local_40;
                                        let _e379 = local_41;
                                        let _e381 = local_42;
                                        let _e383 = local_43;
                                        let _e385 = local_44;
                                        local_24 = (_e74 + 1u);
                                        local_25 = _e371;
                                        local_26 = _e373;
                                        local_27 = _e375;
                                        local_28 = _e377;
                                        local_29 = _e379;
                                        local_30 = _e381;
                                        local_31 = _e383;
                                        local_32 = _e385;
                                        local_33 = (_e92 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_4) = true;
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
            local_20 = _e438;
            local_21 = true;
        }
    }
    let _e444 = local_21;
    if _e444 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e446 = local_20;
    return _e446;
}

fn sample_progress(a1_20: u32, a2_10: FeLocal_fe_shader_private_layout_7_, a3_6: FeLocal_fe_shader_private_layout_9_, a4_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_46: FeLocal_fe_shader_private_layout_4_;
    var local_47: bool = false;
    var local_48: FeLocal_fe_shader_private_layout_4_;
    var local_49: bool = false;
    var local_50: u32 = u32();

    let _e7 = pixel_delta_from_reference(a1_20, a2_10, a3_6, fe_trapped_5);
    if (a1_20 > (4294967295u - 8194u)) {
        (*fe_trapped_5) = true;
    }
    let _e21 = orbit[i32((a1_20 + 8194u))].re_w1_bits;
    if (a4_2 < _e21) {
        local_50 = a4_2;
    } else {
        local_50 = _e21;
    }
    let _e26 = local_50;
    let _e28 = empty_progress(0u);
    let _e29 = advance_progress(a1_20, _e7.f0_, _e7.f1_, _e26, _e26, _e28, fe_trapped_5);
    return _e29;
}

fn clamp_(a0_36: f32, a1_21: f32, a2_11: f32) -> f32 {
    var local_51: f32;
    var local_52: bool = false;
    var local_53: f32 = f32();

    if (a0_36 < a1_21) {
        local_53 = a1_21;
    } else {
        if (a2_11 < a0_36) {
            local_53 = a2_11;
        } else {
            local_53 = a0_36;
        }
    }
    let _e11 = local_53;
    return _e11;
}

fn packed(a0_37: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e4 = clamp_(a0_37.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_37.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_37.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_38: f32) -> f32 {
    return floor(a0_38);
}

fn fract_(a0_39: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_39);
    return (a0_39 - _e1);
}

fn anchor(a0_40: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_54: FeLocal_fe_shader_private_layout_5_;
    var local_55: bool = false;
    var local_56: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_40 {
        case 0u: {
            local_56 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_56 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_56 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_56 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_56 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_56;
    return _e29;
}

fn wrap_pi(a0_41: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_41 / 6.2831855f) + 0.5f));
    return (a0_41 - (6.2831855f * _e5));
}

fn sin_(a0_42: f32) -> f32 {
    let _e1 = wrap_pi(a0_42);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_43: f32) -> f32 {
    let _e3 = sin_((a0_43 + 1.5707964f));
    return _e3;
}

fn oklch(a0_44: f32, a1_22: f32, a2_12: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = (a2_12 * 0.017453292f);
    let _e5 = cos_(_e4);
    let _e7 = sin_(_e4);
    return FeLocal_fe_shader_private_layout_5_(a0_44, (a1_22 * _e5), (a1_22 * _e7));
}

fn escape_palette(a0_45: u32, a1_23: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_57: u32;
    var local_58: bool = false;
    var local_59: u32 = u32();
    var local_60: u32;
    var local_61: bool = false;
    var local_62: f32 = f32();

    let _e5 = from_i32_(a0_45);
    let _e11 = fract_(((_e5 + (4f / a1_23)) / 256f));
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
            (*fe_trapped_6) = true;
        } else {
            local_59 = _e29;
        }
    }
    let _e40 = local_59;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_62 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_62 = (_e44 + 360f);
        } else {
            local_62 = _e44;
        }
    }
    let _e57 = local_62;
    let _e73 = oklch((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22)), (_e23.f2_ + (_e57 * _e22)));
    let _e74 = packed(_e73);
    return _e74;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_46: FeLocal_fe_shader_private_layout_4_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_63: u32;
    var local_64: bool = false;
    var local_65: u32 = u32();

    if (((a0_46.f4_ & 1073741824u) == 0u) == false) {
        let _e11 = glitch();
        local_65 = _e11;
    } else {
        if (((a0_46.f4_ & 2147483648u) == 0u) == false) {
            let _e21 = escape_palette(a0_46.f5_, a0_46.f7_, fe_trapped_7);
            local_65 = _e21;
        } else {
            let _e22 = interior();
            local_65 = _e22;
        }
    }
    let _e27 = local_65;
    return _e27;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;

    let _e12 = params.p27_;
    let _e14 = params.p28_;
    let _e16 = params.p29_;
    let _e18 = params.p30_;
    let _e20 = params.p31_;
    let _e22 = params.p32_;
    let _e24 = params.p33_;
    let _e26 = params.p34_;
    let _e28 = params.p35_;
    let _e30 = params.p36_;
    let _e32 = params.p37_;
    let _e34 = params.p38_;
    let _e36 = params.p39_;
    let _e38 = params.p40_;
    let _e40 = params.p41_;
    let _e47 = reference[i32(0u)].active_;
    let _e49 = reference[i32(0u)].active_valid;
    let _e51 = reference[i32(0u)].pending;
    if (_e51 == 1u) {
    } else {
        if (_e49 == 0u) {
        } else {
            if (0.5f <= _e38) {
            } else {
                if ((_e32 - _e34) < 60f) {
                    local_1 = true;
                }
                let _e338 = local_1;
                if _e338 {
                } else {
                    let _e67 = cache[i32(0u)].cursor;
                    let _e68 = iteration_limit(_e28, (&fe_trapped));
                    let _e72 = ((_e68 + 2047u) / 2048u);
                    let _e77 = to_i32_(((_e30 + 127f) / 128f));
                    let _e82 = to_i32_(((_e30 + 255f) / 256f));
                    let _e86 = (_e72 * _e77);
                    let _e87 = (_e72 != 0u);
                    if (_e87 && (_e77 > (4294967295u / select(1u, _e72, _e87)))) {
                    } else {
                        let _e95 = (_e86 * _e82);
                        let _e96 = (_e86 != 0u);
                        if (_e96 && (_e82 > (4294967295u / select(1u, _e86, _e96)))) {
                        } else {
                            let _e105 = to_i32_(((_e30 + 255f) / 256f));
                            if (_e67 < _e95) {
                            } else {
                                let _e110 = (_e105 * _e105);
                                let _e111 = (_e105 != 0u);
                                if (_e111 && (_e105 > (4294967295u / select(1u, _e105, _e111)))) {
                                } else {
                                    if (_e95 > (4294967295u - _e110)) {
                                    } else {
                                        if (_e67 < (_e95 + _e110)) {
                                        } else {
                                            local_1 = true;
                                        }
                                        let _e322 = local_1;
                                        if _e322 {
                                        } else {
                                            if (_e67 < _e95) {
                                            } else {
                                                let _e125 = phase_order((_e67 - _e95), global_invocation_id.x, global_invocation_id.y, _e105, (&fe_trapped));
                                                let _e129 = (global_invocation_id.x * _e105);
                                                let _e130 = (global_invocation_id.x != 0u);
                                                if (_e130 && (_e105 > (4294967295u / select(1u, global_invocation_id.x, _e130)))) {
                                                } else {
                                                    if (_e105 == 0u) {
                                                    } else {
                                                        let _e137 = (_e125 % _e105);
                                                        let _e139 = (_e129 + _e137);
                                                        if (_e129 > (4294967295u - _e137)) {
                                                        } else {
                                                            let _e145 = (global_invocation_id.y * _e105);
                                                            let _e146 = (global_invocation_id.y != 0u);
                                                            if (_e146 && (_e105 > (4294967295u / select(1u, global_invocation_id.y, _e146)))) {
                                                            } else {
                                                                let _e151 = (_e125 / _e105);
                                                                let _e153 = (_e145 + _e151);
                                                                if (_e145 > (4294967295u - _e151)) {
                                                                } else {
                                                                    let _e156 = from_i32_(_e139);
                                                                    if (_e30 <= _e156) {
                                                                    } else {
                                                                        let _e158 = from_i32_(_e153);
                                                                        if (_e30 <= _e158) {
                                                                            local_1 = true;
                                                                        }
                                                                        let _e304 = local_1;
                                                                        if _e304 {
                                                                        } else {
                                                                            let _e164 = ((_e153 << 11u) | _e139);
                                                                            let _e167 = native_pixels[i32(_e164)];
                                                                            let _e168 = color(_e167);
                                                                            let _e169 = from_i32_(_e139);
                                                                            let _e170 = from_i32_(_e153);
                                                                            let _e174 = impl_trait_f32_max(0f, (_e169 - 1f));
                                                                            let _e175 = to_i32_(_e174);
                                                                            let _e180 = impl_trait_f32_min((_e30 - 1f), (_e169 + 1f));
                                                                            let _e181 = to_i32_(_e180);
                                                                            let _e185 = impl_trait_f32_max(0f, (_e170 - 1f));
                                                                            let _e186 = to_i32_(_e185);
                                                                            let _e191 = impl_trait_f32_min((_e30 - 1f), (_e170 + 1f));
                                                                            let _e192 = to_i32_(_e191);
                                                                            let _e198 = native_pixels[i32(((_e153 << 11u) | _e175))];
                                                                            let _e199 = color(_e198);
                                                                            let _e200 = contrast(_e168, _e199);
                                                                            let _e206 = native_pixels[i32(((_e153 << 11u) | _e181))];
                                                                            let _e207 = color(_e206);
                                                                            let _e208 = contrast(_e168, _e207);
                                                                            let _e209 = impl_trait_f32_max(_e200, _e208);
                                                                            let _e215 = native_pixels[i32(((_e186 << 11u) | _e139))];
                                                                            let _e216 = color(_e215);
                                                                            let _e217 = contrast(_e168, _e216);
                                                                            let _e223 = native_pixels[i32(((_e192 << 11u) | _e139))];
                                                                            let _e224 = color(_e223);
                                                                            let _e225 = contrast(_e168, _e224);
                                                                            let _e226 = impl_trait_f32_max(_e217, _e225);
                                                                            let _e227 = impl_trait_f32_max(_e209, _e226);
                                                                            if (0.5f <= _e36) {
                                                                                if (0.12f < _e227) {
                                                                                    let _e232 = camera(FeLocal_fe_shader_private_layout_6_(_e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40));
                                                                                    let _e233 = iteration_limit(_e28, (&fe_trapped));
                                                                                    let _e239 = (_e47 != 0u);
                                                                                    if (_e239 && (8195u > (4294967295u / select(1u, _e47, _e239)))) {
                                                                                    } else {
                                                                                        let _e246 = offset_sample(_e139, _e153, 0.28f, -0.28f);
                                                                                        let _e247 = sample_progress((_e47 * 8195u), _e232, _e246, _e233, (&fe_trapped));
                                                                                        let _e248 = progress_color(_e247, (&fe_trapped));
                                                                                        let _e249 = color(_e248);
                                                                                        let _e255 = (_e47 != 0u);
                                                                                        if (_e255 && (8195u > (4294967295u / select(1u, _e47, _e255)))) {
                                                                                            fe_trapped = true;
                                                                                        }
                                                                                        let _e263 = offset_sample(_e139, _e153, -0.28f, 0.28f);
                                                                                        let _e264 = sample_progress((_e47 * 8195u), _e232, _e263, _e233, (&fe_trapped));
                                                                                        let _e265 = progress_color(_e264, (&fe_trapped));
                                                                                        let _e266 = color(_e265);
                                                                                        let _e289 = packed(FeLocal_fe_shader_private_layout_5_((((_e168.f0_ + _e249.f0_) + _e266.f0_) / 3f), (((_e168.f1_ + _e249.f1_) + _e266.f1_) / 3f), (((_e168.f2_ + _e249.f2_) + _e266.f2_) / 3f)));
                                                                                        antialiased_pixels[i32(_e164)] = _e289;
                                                                                        local_1 = true;
                                                                                    }
                                                                                    let _e296 = local_1;
                                                                                    if _e296 {
                                                                                    } else {
                                                                                        fe_trapped = true;
                                                                                    }
                                                                                }
                                                                                let _e298 = local_1;
                                                                                if _e298 {
                                                                                }
                                                                            }
                                                                            let _e302 = local_1;
                                                                            if _e302 {
                                                                            } else {
                                                                                local_1 = true;
                                                                            }
                                                                        }
                                                                    }
                                                                    let _e308 = local_1;
                                                                    if _e308 {
                                                                    } else {
                                                                        local_1 = true;
                                                                    }
                                                                }
                                                                let _e310 = local_1;
                                                                if _e310 {
                                                                }
                                                            }
                                                            let _e312 = local_1;
                                                            if _e312 {
                                                            }
                                                        }
                                                        let _e314 = local_1;
                                                        if _e314 {
                                                        }
                                                    }
                                                    let _e316 = local_1;
                                                    if _e316 {
                                                    }
                                                }
                                                let _e318 = local_1;
                                                if _e318 {
                                                }
                                            }
                                            let _e320 = local_1;
                                            if _e320 {
                                            }
                                        }
                                    }
                                    let _e324 = local_1;
                                    if _e324 {
                                    }
                                }
                                let _e327 = local_1;
                                if _e327 {
                                } else {
                                    fe_trapped = true;
                                }
                            }
                            let _e331 = local_1;
                            if _e331 {
                            } else {
                                local_1 = true;
                            }
                        }
                        let _e333 = local_1;
                        if _e333 {
                        }
                    }
                    let _e336 = local_1;
                    if _e336 {
                    } else {
                        fe_trapped = true;
                    }
                }
            }
            let _e340 = local_1;
            if _e340 {
            }
        }
        let _e342 = local_1;
        if _e342 {
        }
    }
    let _e353 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e353);
}
