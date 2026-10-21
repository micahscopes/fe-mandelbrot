struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: bool,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
}

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

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: FeLocal_fe_shader_private_layout_8_,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: FeLocal_fe_shader_private_layout_13_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_21_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_23_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_22_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
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
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_24_ {
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

struct FeLocal_fe_shader_private_layout_25_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: f32,
    f1_: f32,
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

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_12_) -> bool {
    var local_6: bool;
    var local_7: bool = false;
    var local_8: bool = bool();

    if (a0_.f13_ < 0.5f) {
        if (60f <= (a0_.f10_ - a0_.f11_)) {
            local_8 = true;
        }
    }
    let _e14 = local_8;
    return _e14;
}

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_15_, a1_: FeLocal_fe_shader_private_layout_12_) -> bool {
    var local_9: bool;
    var local_10: bool = false;
    var local_11: bool = bool();

    if (a0_1.f2_ == 0u) {
        if (a0_1.f1_ == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_11 = true;
            }
        }
    }
    let _e14 = local_11;
    return _e14;
}

fn iteration_limit(a0_2: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_12: u32 = u32();
    var local_13: f32 = f32();
    var local_14: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_15: u32 = u32();
    var local_16: f32 = f32();
    var local_17: u32;
    var local_18: bool = false;
    var local_19: u32 = u32();

    local_12 = 0u;
    local_13 = a0_2;
    local_14 = 0u;
    loop {
        let _e12 = local_12;
        let _e14 = local_13;
        let _e16 = local_14;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_15 = (_e12 + 1u);
                    local_16 = (_e14 * 2f);
                }
            } else {
                local_15 = _e12;
                local_16 = _e14;
            }
            let _e36 = local_15;
            let _e38 = local_16;
            local_12 = _e36;
            local_13 = _e38;
            local_14 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_12;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_19 = 8192u;
        } else {
            local_19 = _e60;
        }
        let _e71 = local_19;
        local_17 = _e71;
        local_18 = true;
    }
    let _e77 = local_18;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_17;
    return _e79;
}

fn to_i32_(a0_3: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_3)), 2147483648u, (a0_3 <= -2147483600f)), 2147483647u, (a0_3 >= 2147483600f)), (a0_3 == a0_3));
}

fn for_view(a0_4: f32, a1_1: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_20: FeLocal_fe_shader_private_layout_0_;
    var local_21: bool = false;

    let _e4 = iteration_limit(a0_4, fe_trapped_2);
    let _e13 = to_i32_(((a1_1 + 127f) / 128f));
    let _e18 = to_i32_(((a1_1 + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_0_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn refine_steps(a0_5: FeLocal_fe_shader_private_layout_0_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_22: u32;
    var local_23: bool = false;

    let _e9 = (a0_5.f1_ != 0u);
    if (_e9 && (a0_5.f4_ > (4294967295u / select(1u, a0_5.f1_, _e9)))) {
        (*fe_trapped_3) = true;
    } else {
        local_22 = (a0_5.f1_ * a0_5.f4_);
        local_23 = true;
    }
    let _e19 = local_22;
    return _e19;
}

fn impl_trait_Pixel_default() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_shader_private_layout_2_ {
    let _e0 = impl_trait_Pixel_default();
    return FeLocal_fe_shader_private_layout_2_(_e0, false);
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

fn phase_order(a0_8: u32, a1_3: u32, a2_1: u32, a3_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_24: u32;
    var local_25: bool = false;

    let _e9 = (a3_ * a3_);
    let _e10 = (a3_ != 0u);
    if (_e10 && (a3_ > (4294967295u / select(1u, a3_, _e10)))) {
    } else {
        let _e15 = phase_offset(a1_3, a2_1, _e9);
        let _e20 = (2u * a3_);
        let _e21 = (2u != 0u);
        if (_e21 && (a3_ > (4294967295u / select(1u, 2u, _e21)))) {
        } else {
            let _e28 = (_e20 + 1u);
            if (_e20 > (4294967295u - 1u)) {
            } else {
                let _e34 = (a0_8 * _e28);
                let _e35 = (a0_8 != 0u);
                if (_e35 && (_e28 > (4294967295u / select(1u, a0_8, _e35)))) {
                } else {
                    if (_e34 > (4294967295u - _e15)) {
                    } else {
                        if (_e9 == 0u) {
                        } else {
                            local_24 = ((_e34 + _e15) % _e9);
                            local_25 = true;
                        }
                        let _e51 = local_25;
                        if _e51 {
                        }
                    }
                    let _e53 = local_25;
                    if _e53 {
                    }
                }
                let _e55 = local_25;
                if _e55 {
                }
            }
            let _e57 = local_25;
            if _e57 {
            }
        }
        let _e59 = local_25;
        if _e59 {
        }
    }
    let _e62 = local_25;
    if _e62 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e64 = local_24;
    return _e64;
}

fn in_extent(a0_9: FeLocal_fe_shader_private_layout_1_, a1_4: f32) -> bool {
    var local_26: bool;
    var local_27: bool = false;
    var local_28: bool = bool();

    let _e5 = from_i32_(a0_9.f0_);
    if (_e5 < a1_4) {
        let _e8 = from_i32_(a0_9.f1_);
        if (_e8 < a1_4) {
            local_28 = true;
        }
    }
    let _e13 = local_28;
    return _e13;
}

fn at(a0_10: u32, a1_5: u32, a2_2: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = FeLocal_fe_shader_private_layout_1_(a0_10, a1_5);
    let _e4 = in_extent(_e3, a2_2);
    return FeLocal_fe_shader_private_layout_2_(_e3, _e4);
}

fn aa_pixel(a0_11: FeLocal_fe_shader_private_layout_0_, a1_6: u32, a2_3: u32, a3_1: u32, a4_: f32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_29: FeLocal_fe_shader_private_layout_2_;
    var local_30: bool = false;

    let _e7 = refine_steps(a0_11, fe_trapped_5);
    let _e13 = (a0_11.f5_ * a0_11.f5_);
    let _e14 = (a0_11.f5_ != 0u);
    if (_e14 && (a0_11.f5_ > (4294967295u / select(1u, a0_11.f5_, _e14)))) {
    } else {
        if (a1_6 < _e7) {
        } else {
            if (_e7 > (4294967295u - _e13)) {
                (*fe_trapped_5) = true;
            } else {
                if ((a1_6 < (_e7 + _e13)) == false) {
                } else {
                    let _e30 = phase_order((a1_6 - _e7), a2_3, a3_1, a0_11.f5_, fe_trapped_5);
                    let _e35 = (a2_3 * a0_11.f5_);
                    let _e36 = (a2_3 != 0u);
                    if (_e36 && (a0_11.f5_ > (4294967295u / select(1u, a2_3, _e36)))) {
                        (*fe_trapped_5) = true;
                    } else {
                        if (a0_11.f5_ == 0u) {
                            (*fe_trapped_5) = true;
                        } else {
                            let _e46 = (_e30 % a0_11.f5_);
                            if (_e35 > (4294967295u - _e46)) {
                                (*fe_trapped_5) = true;
                            } else {
                                let _e56 = (a3_1 * a0_11.f5_);
                                let _e57 = (a3_1 != 0u);
                                if (_e57 && (a0_11.f5_ > (4294967295u / select(1u, a3_1, _e57)))) {
                                    (*fe_trapped_5) = true;
                                } else {
                                    if (a0_11.f5_ == 0u) {
                                        (*fe_trapped_5) = true;
                                    } else {
                                        let _e67 = (_e30 / a0_11.f5_);
                                        if (_e56 > (4294967295u - _e67)) {
                                            (*fe_trapped_5) = true;
                                        } else {
                                            let _e73 = at((_e35 + _e46), (_e56 + _e67), a4_);
                                            local_29 = _e73;
                                            local_30 = true;
                                        }
                                        let _e78 = local_30;
                                        if _e78 {
                                        }
                                    }
                                    let _e80 = local_30;
                                    if _e80 {
                                    }
                                }
                                let _e82 = local_30;
                                if _e82 {
                                }
                            }
                            let _e84 = local_30;
                            if _e84 {
                            }
                        }
                        let _e86 = local_30;
                        if _e86 {
                        }
                    }
                    let _e88 = local_30;
                    if _e88 {
                    }
                }
                let _e90 = local_30;
                if _e90 {
                }
            }
            let _e92 = local_30;
            if _e92 {
            }
        }
        let _e98 = local_30;
        if _e98 {
        } else {
            let _e93 = impl_trait_CohortPixel_default();
            local_29 = _e93;
            local_30 = true;
        }
    }
    let _e101 = local_30;
    if _e101 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e103 = local_29;
    return _e103;
}

fn impl_Pixel_index(a0_12: FeLocal_fe_shader_private_layout_1_, a1_7: u32) -> u32 {
    return ((a0_12.f1_ << a1_7) | a0_12.f0_);
}

fn impl_CohortPixel_index(a0_13: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e3 = impl_Pixel_index(a0_13.f0_, 11u);
    return _e3;
}

fn unpack_lab(a0_14: u32) -> FeLocal_fe_shader_private_layout_4_ {
    let _e3 = from_i32_((a0_14 & 4095u));
    let _e10 = from_i32_(((a0_14 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_14 >> 22u));
    return FeLocal_fe_shader_private_layout_4_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn clamped_neighbor_indices(a0_15: FeLocal_fe_shader_private_layout_1_, a1_8: f32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_16_ {
    var local_31: FeLocal_fe_shader_private_layout_16_;
    var local_32: bool = false;
    var local_33: u32 = u32();
    var local_34: FeLocal_fe_shader_private_layout_16_;
    var local_35: bool = false;
    var local_36: u32 = u32();
    var local_37: FeLocal_fe_shader_private_layout_16_;
    var local_38: bool = false;
    var local_39: u32 = u32();
    var local_40: FeLocal_fe_shader_private_layout_16_;
    var local_41: bool = false;
    var local_42: u32 = u32();

    let _e7 = to_i32_((a1_8 - 1f));
    if (0u < a0_15.f0_) {
        if (a0_15.f0_ < 1u) {
            (*fe_trapped_6) = true;
        } else {
            local_33 = (a0_15.f0_ - 1u);
        }
    }
    let _e20 = local_33;
    if (a0_15.f0_ < _e7) {
        if (a0_15.f0_ > (4294967295u - 1u)) {
            (*fe_trapped_6) = true;
        } else {
            local_36 = (a0_15.f0_ + 1u);
        }
    } else {
        local_36 = _e7;
    }
    let _e35 = local_36;
    if (0u < a0_15.f1_) {
        if (a0_15.f1_ < 1u) {
            (*fe_trapped_6) = true;
        } else {
            local_39 = (a0_15.f1_ - 1u);
        }
    }
    let _e48 = local_39;
    if (a0_15.f1_ < _e7) {
        if (a0_15.f1_ > (4294967295u - 1u)) {
            (*fe_trapped_6) = true;
        } else {
            local_42 = (a0_15.f1_ + 1u);
        }
    } else {
        local_42 = _e7;
    }
    let _e61 = local_42;
    return FeLocal_fe_shader_private_layout_16_(((a0_15.f1_ << 11u) | _e20), ((a0_15.f1_ << 11u) | _e35), ((_e48 << 11u) | a0_15.f0_), ((_e61 << 11u) | a0_15.f0_));
}

fn impl_trait_f32_abs(a0_16: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_16) & 2147483647u));
}

fn lib_image_max(a0_17: f32, a1_9: f32) -> f32 {
    var local_43: f32;
    var local_44: bool = false;
    var local_45: f32 = f32();

    if (a1_9 < a0_17) {
        local_45 = a0_17;
    } else {
        local_45 = a1_9;
    }
    let _e8 = local_45;
    return _e8;
}

fn contrast(a0_18: FeLocal_fe_shader_private_layout_4_, a1_10: FeLocal_fe_shader_private_layout_4_) -> f32 {
    let _e5 = impl_trait_f32_abs((a0_18.f0_ - a1_10.f0_));
    let _e11 = impl_trait_f32_abs((a0_18.f1_ - a1_10.f1_));
    let _e17 = impl_trait_f32_abs((a0_18.f2_ - a1_10.f2_));
    let _e20 = lib_image_max((4f * _e11), (4f * _e17));
    let _e21 = lib_image_max((2f * _e5), _e20);
    return _e21;
}

fn impl_trait_f32_max(a0_19: f32, a1_11: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_19);
    let _e3 = bitcast<u32>(a1_11);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn from_quad(a0_20: f32, a1_12: f32, a2_4: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_8_ {
    return FeLocal_fe_shader_private_layout_8_(a0_20, FeLocal_fe_shader_private_layout_7_(a1_12, FeLocal_fe_shader_private_layout_6_(a2_4, FeLocal_fe_shader_private_layout_5_(a3_2))));
}

fn center(a0_21: FeLocal_fe_shader_private_layout_12_) -> FeLocal_fe_shader_private_layout_13_ {
    let _e5 = from_quad(a0_21.f0_, a0_21.f1_, a0_21.f2_, a0_21.f3_);
    let _e10 = from_quad(a0_21.f4_, a0_21.f5_, a0_21.f6_, a0_21.f7_);
    return FeLocal_fe_shader_private_layout_13_(_e5, _e10);
}

fn camera(a0_22: FeLocal_fe_shader_private_layout_12_) -> FeLocal_fe_shader_private_layout_14_ {
    let _e1 = center(a0_22);
    return FeLocal_fe_shader_private_layout_14_(_e1, a0_22.f8_, a0_22.f9_);
}

fn ordered_2x2_(a0_23: u32, a1_13: u32) -> FeLocal_fe_shader_private_layout_20_ {
    let _e6 = from_i32_(a0_23);
    let _e9 = from_i32_((a0_23 & 1u));
    let _e13 = from_i32_(a1_13);
    let _e16 = from_i32_((a1_13 & 1u));
    return FeLocal_fe_shader_private_layout_20_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn sample(a0_24: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_20_ {
    let _e3 = ordered_2x2_(a0_24.f0_, a0_24.f1_);
    return _e3;
}

fn impl_Pixel_offset_sample(a0_25: FeLocal_fe_shader_private_layout_1_, a1_14: FeLocal_fe_shader_private_layout_19_) -> FeLocal_fe_shader_private_layout_20_ {
    let _e2 = sample(a0_25);
    return FeLocal_fe_shader_private_layout_20_((_e2.f0_ + a1_14.f0_), (_e2.f1_ + a1_14.f1_));
}

fn impl_CohortPixel_offset_sample(a0_26: FeLocal_fe_shader_private_layout_2_, a1_15: FeLocal_fe_shader_private_layout_19_) -> FeLocal_fe_shader_private_layout_20_ {
    let _e3 = impl_Pixel_offset_sample(a0_26.f0_, a1_15);
    return _e3;
}

fn plane(a0_27: FeLocal_fe_shader_private_layout_20_, a1_16: f32) -> FeLocal_fe_shader_private_layout_21_ {
    return FeLocal_fe_shader_private_layout_21_((((a0_27.f0_ / a1_16) * 2f) - 1f), (1f - ((a0_27.f1_ / a1_16) * 2f)));
}

fn decode(a0_28: FeLocal_fe_shader_private_layout_17_) -> FeLocal_fe_shader_private_layout_13_ {
    let _e9 = from_quad(bitcast<f32>(a0_28.f0_), bitcast<f32>(a0_28.f1_), bitcast<f32>(a0_28.f2_), bitcast<f32>(a0_28.f3_));
    let _e18 = from_quad(bitcast<f32>(a0_28.f4_), bitcast<f32>(a0_28.f5_), bitcast<f32>(a0_28.f6_), bitcast<f32>(a0_28.f7_));
    return FeLocal_fe_shader_private_layout_13_(_e9, _e18);
}

fn impl_trait_Last_negate(a0_29: f32) -> f32 {
    return -(a0_29);
}

fn negate_ge630_(a0_30: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_6_ {
    let _e5 = impl_trait_Last_negate(a0_30.f1_.f0_);
    return FeLocal_fe_shader_private_layout_6_(-(a0_30.f0_), FeLocal_fe_shader_private_layout_5_(_e5));
}

fn negate_g4419_(a0_31: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e4 = negate_ge630_(a0_31.f1_);
    return FeLocal_fe_shader_private_layout_7_(-(a0_31.f0_), _e4);
}

fn negate_ga905_(a0_32: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e4 = negate_g4419_(a0_32.f1_);
    return FeLocal_fe_shader_private_layout_8_(-(a0_32.f0_), _e4);
}

fn precision_lib_two_sum_0836_(a0_33: f32, a1_17: f32) -> FeLocal_fe_shader_private_layout_23_ {
    let _e2 = (a0_33 + a1_17);
    let _e3 = (_e2 - a0_33);
    return FeLocal_fe_shader_private_layout_23_(_e2, ((a0_33 - (_e2 - _e3)) + (a1_17 - _e3)));
}

fn impl_trait_Last_add_corr(a0_34: f32, a1_18: f32, a2_5: f32) -> f32 {
    return ((a2_5 + a0_34) + a1_18);
}

fn add_corr_ge630_(a0_35: FeLocal_fe_shader_private_layout_6_, a1_19: FeLocal_fe_shader_private_layout_6_, a2_6: f32) -> FeLocal_fe_shader_private_layout_6_ {
    let _e4 = precision_lib_two_sum_0836_(a0_35.f0_, a2_6);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_19.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_35.f1_.f0_, a1_19.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_0836_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_6_(_e17.f0_, FeLocal_fe_shader_private_layout_5_(_e17.f1_));
}

fn head_ge630_(a0_36: FeLocal_fe_shader_private_layout_6_) -> f32 {
    return a0_36.f0_;
}

fn with_head_ge630_(a0_37: FeLocal_fe_shader_private_layout_6_, a1_20: f32) -> FeLocal_fe_shader_private_layout_6_ {
    return FeLocal_fe_shader_private_layout_6_(a1_20, FeLocal_fe_shader_private_layout_5_(a0_37.f1_.f0_));
}

fn add_corr_g4419_(a0_38: FeLocal_fe_shader_private_layout_7_, a1_21: FeLocal_fe_shader_private_layout_7_, a2_7: f32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e4 = precision_lib_two_sum_0836_(a0_38.f0_, a2_7);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_21.f0_);
    let _e14 = add_corr_ge630_(a0_38.f1_, a1_21.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_0836_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_7_(_e16.f0_, _e19);
}

fn head_g4419_(a0_39: FeLocal_fe_shader_private_layout_7_) -> f32 {
    return a0_39.f0_;
}

fn with_head_g4419_(a0_40: FeLocal_fe_shader_private_layout_7_, a1_22: f32) -> FeLocal_fe_shader_private_layout_7_ {
    return FeLocal_fe_shader_private_layout_7_(a1_22, a0_40.f1_);
}

fn add_corr_ga905_(a0_41: FeLocal_fe_shader_private_layout_8_, a1_23: FeLocal_fe_shader_private_layout_8_, a2_8: f32) -> FeLocal_fe_shader_private_layout_8_ {
    let _e4 = precision_lib_two_sum_0836_(a0_41.f0_, a2_8);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_23.f0_);
    let _e14 = add_corr_g4419_(a0_41.f1_, a1_23.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_0836_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_8_(_e16.f0_, _e19);
}

fn sub_ga905_(a0_42: FeLocal_fe_shader_private_layout_8_, a1_24: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e2 = negate_ga905_(a1_24);
    let _e4 = add_corr_ga905_(a0_42, _e2, 0f);
    return _e4;
}

fn sub_ge3dc(a0_43: FeLocal_fe_shader_private_layout_13_, a1_25: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_13_ {
    let _e4 = sub_ga905_(a0_43.f0_, a1_25.f0_);
    let _e7 = sub_ga905_(a0_43.f1_, a1_25.f1_);
    return FeLocal_fe_shader_private_layout_13_(_e4, _e7);
}

fn to_quad(a0_44: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_22_ {
    return FeLocal_fe_shader_private_layout_22_(a0_44.f0_, a0_44.f1_.f0_, a0_44.f1_.f1_.f0_, a0_44.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_45: f32, a1_26: f32, a2_9: f32, a3_3: f32, a4_1: f32) -> f32 {
    let _e5 = precision_lib_two_sum_0836_(a0_45, a4_1);
    let _e8 = precision_lib_two_sum_0836_(_e5.f0_, a1_26);
    let _e11 = precision_lib_two_sum_0836_(_e8.f0_, a2_9);
    let _e14 = precision_lib_two_sum_0836_(_e11.f0_, a3_3);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_46: FeLocal_fe_shader_private_layout_8_, a1_27: f32) -> f32 {
    let _e2 = to_quad(a0_46);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_27);
    return _e7;
}

fn reference_with_delta(a0_47: FeLocal_fe_shader_private_layout_13_, a1_28: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e4 = expansion_plus_delta(a0_47.f0_, a1_28.f0_);
    let _e7 = expansion_plus_delta(a0_47.f1_, a1_28.f1_);
    return FeLocal_fe_shader_private_layout_9_(_e4, _e7);
}

fn pixel_delta_from_reference(a1_29: u32, a2_10: FeLocal_fe_shader_private_layout_14_, a3_4: FeLocal_fe_shader_private_layout_20_, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    var local_46: FeLocal_fe_shader_private_layout_9_;
    var local_47: bool = false;

    let _e7 = plane(a3_4, a2_10.f2_);
    if (a1_29 > (4294967295u - 8193u)) {
        (*fe_trapped_7) = true;
    }
    let _e17 = orbit[i32((a1_29 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_29 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_29 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_29 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_29 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_29 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_29 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_29 + 8193u))].im_w3_bits;
    let _e33 = decode(FeLocal_fe_shader_private_layout_17_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e42 = sub_ge3dc(a2_10.f0_, _e33);
    let _e43 = reference_with_delta(_e42, FeLocal_fe_shader_private_layout_9_((_e7.f0_ * a2_10.f1_), (_e7.f1_ * a2_10.f1_)));
    return _e43;
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_();
}

fn from_continuation(a0_48: FeLocal_fe_shader_private_layout_9_, a1_30: FeLocal_fe_shader_private_layout_9_, a2_11: u32, a3_5: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_shader_private_layout_10_ {
    return FeLocal_fe_shader_private_layout_10_(a0_48.f0_, a0_48.f1_, a1_30.f0_, a1_30.f1_, a2_11, a3_5, a4_2, a5_);
}

fn empty_progress(a0_49: u32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_49, 4f);
    return _e6;
}

fn progress_is_presentable(a0_50: u32) -> bool {
    return (((a0_50 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_51: FeLocal_fe_shader_private_layout_10_) -> bool {
    let _e2 = progress_is_presentable(a0_51.f4_);
    return _e2;
}

fn progress_is_glitched(a0_52: u32) -> bool {
    return (((a0_52 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_53: FeLocal_fe_shader_private_layout_10_) -> bool {
    let _e2 = progress_is_glitched(a0_53.f4_);
    return _e2;
}

fn pack_progress_reference(a0_54: u32, a1_31: u32, a2_12: u32) -> u32 {
    return (((a0_54 & 536870911u) | (a1_31 << 31u)) | (a2_12 << 30u));
}

fn perturb(a0_55: FeLocal_fe_shader_private_layout_13_, a1_32: FeLocal_fe_shader_private_layout_9_, a2_13: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e4 = to_quad(a0_55.f0_);
    let _e10 = to_quad(a0_55.f1_);
    return FeLocal_fe_shader_private_layout_9_(((((2f * ((_e4.f0_ * a1_32.f0_) - (_e10.f0_ * a1_32.f1_))) + (2f * ((((((_e4.f1_ * a1_32.f0_) - (_e10.f1_ * a1_32.f1_)) + (_e4.f2_ * a1_32.f0_)) - (_e10.f2_ * a1_32.f1_)) + (_e4.f3_ * a1_32.f0_)) - (_e10.f3_ * a1_32.f1_)))) + ((a1_32.f0_ * a1_32.f0_) - (a1_32.f1_ * a1_32.f1_))) + a2_13.f0_), ((((2f * ((_e4.f0_ * a1_32.f1_) + (_e10.f0_ * a1_32.f0_))) + (2f * ((((((_e4.f1_ * a1_32.f1_) + (_e10.f1_ * a1_32.f0_)) + (_e4.f2_ * a1_32.f1_)) + (_e10.f2_ * a1_32.f0_)) + (_e4.f3_ * a1_32.f1_)) + (_e10.f3_ * a1_32.f0_)))) + ((2f * a1_32.f0_) * a1_32.f1_)) + a2_13.f1_));
}

fn norm_squared(a0_56: FeLocal_fe_shader_private_layout_9_) -> f32 {
    return ((a0_56.f0_ * a0_56.f0_) + (a0_56.f1_ * a0_56.f1_));
}

fn is_invalid(a0_57: FeLocal_fe_shader_private_layout_17_) -> bool {
    var local_48: bool;
    var local_49: bool = false;
    var local_50: bool = bool();

    if (a0_57.f0_ == 2143289344u) {
        local_50 = true;
    } else {
        if (a0_57.f4_ == 2143289344u) {
            local_50 = true;
        }
    }
    let _e14 = local_50;
    return _e14;
}

fn non_finite(a0_58: f32) -> bool {
    return (((a0_58 - a0_58) == 0f) == false);
}

fn is_non_finite_complex(a0_59: FeLocal_fe_shader_private_layout_9_) -> bool {
    var local_51: bool;
    var local_52: bool = false;
    var local_53: bool = bool();

    let _e4 = non_finite(a0_59.f0_);
    if _e4 {
        local_53 = true;
    } else {
        let _e6 = non_finite(a0_59.f1_);
        if _e6 {
            local_53 = true;
        }
    }
    let _e12 = local_53;
    return _e12;
}

fn decode_metadata(a0_60: FeLocal_fe_shader_private_layout_17_) -> FeLocal_fe_shader_private_layout_18_ {
    return FeLocal_fe_shader_private_layout_18_(a0_60.f0_, a0_60.f1_);
}

fn delta(a0_61: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_(a0_61.f0_, a0_61.f1_);
}

fn position(a0_62: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_(a0_62.f2_, a0_62.f3_);
}

fn progress_reference_index(a0_63: u32) -> u32 {
    return (a0_63 & 536870911u);
}

fn reference_index(a0_64: FeLocal_fe_shader_private_layout_10_) -> u32 {
    let _e2 = progress_reference_index(a0_64.f4_);
    return _e2;
}

fn progress_is_escaped(a0_65: u32) -> bool {
    return (((a0_65 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_66: FeLocal_fe_shader_private_layout_10_) -> bool {
    let _e2 = progress_is_escaped(a0_66.f4_);
    return _e2;
}

fn advance_progress(a1_33: u32, a2_14: FeLocal_fe_shader_private_layout_9_, a3_6: u32, a4_3: u32, a5_1: FeLocal_fe_shader_private_layout_10_, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_54: FeLocal_fe_shader_private_layout_10_;
    var local_55: bool = false;
    var local_56: FeLocal_fe_shader_private_layout_10_ = FeLocal_fe_shader_private_layout_10_();
    var local_57: u32 = u32();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: f32 = f32();
    var local_61: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();
    var local_62: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();
    var local_63: u32 = u32();
    var local_64: u32 = u32();
    var local_65: u32 = u32();
    var local_66: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_10_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_81_: bool;
    var local_67: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();
    var local_68: u32 = u32();
    var local_69: f32 = f32();
    var local_70: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();
    var local_71: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();
    var local_72: u32 = u32();
    var local_73: u32 = u32();
    var local_74: u32 = u32();
    var local_75: bool = bool();

    let _e9 = is_presentable(a5_1);
    if _e9 {
        local_56 = a5_1;
    } else {
        if (a1_33 > (4294967295u - 8194u)) {
            (*fe_trapped_8) = true;
        } else {
            let _e20 = orbit[i32((a1_33 + 8194u))].re_w0_bits;
            let _e22 = orbit[i32((a1_33 + 8194u))].re_w1_bits;
            let _e24 = orbit[i32((a1_33 + 8194u))].re_w2_bits;
            let _e26 = orbit[i32((a1_33 + 8194u))].re_w3_bits;
            let _e28 = orbit[i32((a1_33 + 8194u))].im_w0_bits;
            let _e30 = orbit[i32((a1_33 + 8194u))].im_w1_bits;
            let _e32 = orbit[i32((a1_33 + 8194u))].im_w2_bits;
            let _e34 = orbit[i32((a1_33 + 8194u))].im_w3_bits;
            let _e36 = decode_metadata(FeLocal_fe_shader_private_layout_17_(_e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
            let _e38 = delta(a5_1);
            let _e39 = position(a5_1);
            let _e40 = reference_index(a5_1);
            let _e41 = is_escaped(a5_1);
            if _e41 {
                local_57 = 1u;
            }
            let _e46 = local_57;
            let _e47 = is_glitched(a5_1);
            if _e47 {
                local_58 = 1u;
            }
            let _e51 = local_58;
            local_59 = 0u;
            local_60 = a5_1.f7_;
            local_61 = _e39;
            local_62 = _e38;
            local_63 = _e51;
            local_64 = _e46;
            local_65 = _e40;
            local_66 = a5_1.f5_;
            loop {
                let _e73 = local_59;
                let _e75 = local_60;
                let _e77 = local_61;
                let _e79 = local_62;
                let _e81 = local_63;
                let _e83 = local_64;
                let _e85 = local_65;
                let _e87 = local_66;
                let _e88 = (_e87 < a3_6);
                loop_header_carry_81_ = _e88;
                if _e88 {
                    if (_e73 < a4_3) {
                        if (_e83 == 0u) {
                            if (_e81 == 0u) {
                                if (_e85 > (4294967295u - 1u)) {
                                } else {
                                    if (((_e85 + 1u) < _e36.f0_) == false) {
                                        local_67 = _e77;
                                        local_68 = 0u;
                                    } else {
                                        local_67 = _e79;
                                        local_68 = _e85;
                                    }
                                    let _e110 = local_67;
                                    let _e112 = local_68;
                                    if (a1_33 > (4294967295u - _e112)) {
                                    } else {
                                        let _e120 = orbit[i32((a1_33 + _e112))].re_w0_bits;
                                        let _e122 = orbit[i32((a1_33 + _e112))].re_w1_bits;
                                        let _e124 = orbit[i32((a1_33 + _e112))].re_w2_bits;
                                        let _e126 = orbit[i32((a1_33 + _e112))].re_w3_bits;
                                        let _e128 = orbit[i32((a1_33 + _e112))].im_w0_bits;
                                        let _e130 = orbit[i32((a1_33 + _e112))].im_w1_bits;
                                        let _e132 = orbit[i32((a1_33 + _e112))].im_w2_bits;
                                        let _e134 = orbit[i32((a1_33 + _e112))].im_w3_bits;
                                        let _e135 = FeLocal_fe_shader_private_layout_17_(_e120, _e122, _e124, _e126, _e128, _e130, _e132, _e134);
                                        let _e137 = (a1_33 + _e112);
                                        if (a1_33 > (4294967295u - _e112)) {
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
                                                let _e169 = FeLocal_fe_shader_private_layout_17_(_e154, _e156, _e158, _e160, _e162, _e164, _e166, _e168);
                                                let _e170 = is_invalid(_e135);
                                                if _e170 {
                                                    local_69 = _e75;
                                                    local_70 = _e77;
                                                    local_71 = _e110;
                                                    local_72 = 1u;
                                                    local_73 = _e83;
                                                    local_74 = _e112;
                                                } else {
                                                    let _e171 = is_invalid(_e169);
                                                    if _e171 {
                                                        local_69 = _e75;
                                                        local_70 = _e77;
                                                        local_71 = _e110;
                                                        local_72 = 1u;
                                                        local_73 = _e83;
                                                        local_74 = _e112;
                                                    } else {
                                                        let _e173 = decode(_e135);
                                                        let _e174 = decode(_e169);
                                                        let _e175 = perturb(_e173, _e110, a2_14);
                                                        let _e176 = reference_with_delta(_e174, _e175);
                                                        let _e177 = norm_squared(_e176);
                                                        let _e178 = norm_squared(_e175);
                                                        if (4f < _e177) {
                                                            let _e184 = impl_trait_f32_abs((_e177 - 4f));
                                                            let _e186 = impl_trait_f32_max(1f, _e177);
                                                            if (_e184 <= (0.000004f * _e186)) {
                                                                local_75 = true;
                                                            } else {
                                                                local_75 = false;
                                                            }
                                                        } else {
                                                            local_75 = false;
                                                        }
                                                        let _e197 = local_75;
                                                        let _e198 = is_non_finite_complex(_e175);
                                                        if _e198 {
                                                            local_69 = _e75;
                                                            local_70 = _e77;
                                                            local_71 = _e110;
                                                            local_72 = 1u;
                                                            local_73 = _e83;
                                                            local_74 = _e112;
                                                        } else {
                                                            let _e199 = non_finite(_e177);
                                                            if (_e199 | _e197) {
                                                                local_69 = _e75;
                                                                local_70 = _e77;
                                                                local_71 = _e110;
                                                                local_72 = 1u;
                                                                local_73 = _e83;
                                                                local_74 = _e112;
                                                            } else {
                                                                if (4f < _e177) {
                                                                    local_69 = _e177;
                                                                    local_70 = _e176;
                                                                    local_71 = _e175;
                                                                    local_72 = _e81;
                                                                    local_73 = 1u;
                                                                    local_74 = _e112;
                                                                } else {
                                                                    if (_e177 < _e178) {
                                                                        local_69 = _e75;
                                                                        local_70 = _e176;
                                                                        local_71 = _e176;
                                                                        local_72 = _e81;
                                                                        local_73 = _e83;
                                                                        local_74 = 0u;
                                                                    } else {
                                                                        if (_e112 > (4294967295u - 1u)) {
                                                                            (*fe_trapped_8) = true;
                                                                            break;
                                                                        } else {
                                                                            local_69 = _e75;
                                                                            local_70 = _e176;
                                                                            local_71 = _e175;
                                                                            local_72 = _e81;
                                                                            local_73 = _e83;
                                                                            local_74 = (_e112 + 1u);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                let _e258 = local_69;
                                                let _e260 = local_70;
                                                let _e262 = local_71;
                                                let _e264 = local_72;
                                                let _e266 = local_73;
                                                let _e268 = local_74;
                                                local_59 = (_e73 + 1u);
                                                local_60 = _e258;
                                                local_61 = _e260;
                                                local_62 = _e262;
                                                local_63 = _e264;
                                                local_64 = _e266;
                                                local_65 = _e268;
                                                local_66 = (_e87 + 1u);
                                                continue;
                                            }
                                        }
                                    }
                                }
                                (*fe_trapped_8) = true;
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
            let _e284 = local_60;
            let _e286 = local_61;
            let _e288 = local_62;
            let _e290 = local_63;
            let _e292 = local_64;
            let _e294 = local_65;
            let _e296 = local_66;
            let _e297 = pack_progress_reference(_e294, _e292, _e290);
            let _e299 = from_continuation(_e288, _e286, _e297, _e296, a5_1.f6_, _e284);
            local_56 = _e299;
        }
    }
    let _e303 = local_56;
    return _e303;
}

fn sample_progress(a1_34: u32, a2_15: FeLocal_fe_shader_private_layout_14_, a3_7: FeLocal_fe_shader_private_layout_20_, a4_4: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_76: FeLocal_fe_shader_private_layout_10_;
    var local_77: bool = false;
    var local_78: FeLocal_fe_shader_private_layout_10_;
    var local_79: bool = false;
    var local_80: u32 = u32();

    let _e7 = pixel_delta_from_reference(a1_34, a2_15, a3_7, fe_trapped_9);
    if (a1_34 > (4294967295u - 8194u)) {
        (*fe_trapped_9) = true;
    }
    let _e19 = orbit[i32((a1_34 + 8194u))].re_w0_bits;
    let _e21 = orbit[i32((a1_34 + 8194u))].re_w1_bits;
    let _e23 = orbit[i32((a1_34 + 8194u))].re_w2_bits;
    let _e25 = orbit[i32((a1_34 + 8194u))].re_w3_bits;
    let _e27 = orbit[i32((a1_34 + 8194u))].im_w0_bits;
    let _e29 = orbit[i32((a1_34 + 8194u))].im_w1_bits;
    let _e31 = orbit[i32((a1_34 + 8194u))].im_w2_bits;
    let _e33 = orbit[i32((a1_34 + 8194u))].im_w3_bits;
    let _e35 = decode_metadata(FeLocal_fe_shader_private_layout_17_(_e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33));
    if (a4_4 < _e35.f1_) {
        local_80 = a4_4;
    } else {
        local_80 = _e35.f1_;
    }
    let _e42 = local_80;
    let _e44 = empty_progress(0u);
    let _e45 = advance_progress(a1_34, _e7, _e42, _e42, _e44, fe_trapped_9);
    return _e45;
}

fn clamp_(a0_67: f32, a1_35: f32, a2_16: f32) -> f32 {
    var local_81: f32;
    var local_82: bool = false;
    var local_83: f32 = f32();

    if (a0_67 < a1_35) {
        local_83 = a1_35;
    } else {
        if (a2_16 < a0_67) {
            local_83 = a2_16;
        } else {
            local_83 = a0_67;
        }
    }
    let _e11 = local_83;
    return _e11;
}

fn pack_lab(a0_68: FeLocal_fe_shader_private_layout_4_) -> u32 {
    let _e4 = clamp_(a0_68.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_68.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_68.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_4_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_69: f32) -> f32 {
    return floor(a0_69);
}

fn fract_(a0_70: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_70);
    return (a0_70 - _e1);
}

fn anchor(a0_71: u32) -> FeLocal_fe_shader_private_layout_11_ {
    var local_84: FeLocal_fe_shader_private_layout_11_;
    var local_85: bool = false;
    var local_86: FeLocal_fe_shader_private_layout_11_ = FeLocal_fe_shader_private_layout_11_();

    switch a0_71 {
        case 0u: {
            local_86 = FeLocal_fe_shader_private_layout_11_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_86 = FeLocal_fe_shader_private_layout_11_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_86 = FeLocal_fe_shader_private_layout_11_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_86 = FeLocal_fe_shader_private_layout_11_(0.73f, 0.142f, 165f);
        }
        default: {
            local_86 = FeLocal_fe_shader_private_layout_11_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_86;
    return _e29;
}

fn interpolate(a0_72: FeLocal_fe_shader_private_layout_11_, a1_36: FeLocal_fe_shader_private_layout_11_, a2_17: f32) -> FeLocal_fe_shader_private_layout_11_ {
    var local_87: FeLocal_fe_shader_private_layout_11_;
    var local_88: bool = false;
    var local_89: f32 = f32();

    let _e7 = (a1_36.f2_ - a0_72.f2_);
    if (540f < _e7) {
        let _e14 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
        let _e17 = (_e7 - (360f * _e14));
        if (_e17 == -180f) {
            if (0f < _e7) {
                local_89 = 180f;
            } else {
                local_89 = _e17;
            }
        } else {
            local_89 = _e17;
        }
    } else {
        if (_e7 < -540f) {
            let _e32 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
            let _e35 = (_e7 - (360f * _e32));
            if (_e35 == -180f) {
                if (0f < _e7) {
                    local_89 = 180f;
                } else {
                    local_89 = _e35;
                }
            } else {
                local_89 = _e35;
            }
        } else {
            if (180f < _e7) {
                local_89 = (_e7 - 360f);
            } else {
                if (_e7 < -180f) {
                    local_89 = (_e7 + 360f);
                } else {
                    local_89 = _e7;
                }
            }
        }
    }
    let _e56 = local_89;
    return FeLocal_fe_shader_private_layout_11_((a0_72.f0_ + ((a1_36.f0_ - a0_72.f0_) * a2_17)), (a0_72.f1_ + ((a1_36.f1_ - a0_72.f1_) * a2_17)), (a0_72.f2_ + (_e56 * a2_17)));
}

fn wrap_pi(a0_73: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_73 / 6.2831855f) + 0.5f));
    return (a0_73 - (6.2831855f * _e5));
}

fn sin_(a0_74: f32) -> f32 {
    let _e1 = wrap_pi(a0_74);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_75: f32) -> f32 {
    let _e3 = sin_((a0_75 + 1.5707964f));
    return _e3;
}

fn to_color(a0_76: FeLocal_fe_shader_private_layout_11_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e3 = (a0_76.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_4_(a0_76.f0_, (a0_76.f1_ * _e6), (a0_76.f1_ * _e9));
}

fn escape_palette(a0_77: u32, a1_37: f32, fe_trapped_10: ptr<function, bool>) -> u32 {
    var local_90: u32;
    var local_91: bool = false;
    var local_92: u32 = u32();

    let _e5 = from_i32_(a0_77);
    let _e11 = fract_(((_e5 + (4f / a1_37)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_10) = true;
        } else {
            local_92 = _e29;
        }
    }
    let _e38 = local_92;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_4_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_78: FeLocal_fe_shader_private_layout_10_, fe_trapped_11: ptr<function, bool>) -> u32 {
    var local_93: u32;
    var local_94: bool = false;
    var local_95: u32 = u32();

    let _e4 = is_glitched(a0_78);
    if _e4 {
        let _e5 = glitch();
        local_95 = _e5;
    } else {
        let _e6 = is_escaped(a0_78);
        if _e6 {
            let _e9 = escape_palette(a0_78.f5_, a0_78.f7_, fe_trapped_11);
            local_95 = _e9;
        } else {
            let _e10 = interior();
            local_95 = _e10;
        }
    }
    let _e15 = local_95;
    return _e15;
}

fn perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a0_79: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_79.f0_, a0_79.f1_, a0_79.f2_);
}

fn add_ge58b(a0_80: FeLocal_fe_shader_private_layout_3_, a1_38: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_((a0_80.f0_ + a1_38.f0_), (a0_80.f1_ + a1_38.f1_), (a0_80.f2_ + a1_38.f2_));
}

fn perceptual_color_lib_impl_Color_4fa0_from_vec_3fb1_(a0_81: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_81.f0_, a0_81.f1_, a0_81.f2_);
}

fn impl_trait_Color_add(a0_82: FeLocal_fe_shader_private_layout_4_, a1_39: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a0_82);
    let _e3 = perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a1_39);
    let _e4 = add_ge58b(_e2, _e3);
    let _e5 = perceptual_color_lib_impl_Color_4fa0_from_vec_3fb1_(_e4);
    return _e5;
}

fn div_ge58b(a0_83: FeLocal_fe_shader_private_layout_3_, a1_40: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_((a0_83.f0_ / a1_40), (a0_83.f1_ / a1_40), (a0_83.f2_ / a1_40));
}

fn impl_trait_Color_div(a0_84: FeLocal_fe_shader_private_layout_4_, a1_41: f32) -> FeLocal_fe_shader_private_layout_4_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a0_84);
    let _e3 = div_ge58b(_e2, a1_41);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_3fb1_(_e3);
    return _e4;
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
    let _e42 = FeLocal_fe_shader_private_layout_12_(_e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40);
    let _e47 = reference[i32(0u)].active_;
    let _e49 = reference[i32(0u)].active_valid;
    let _e51 = reference[i32(0u)].pending;
    let _e53 = reference[i32(0u)].index;
    let _e55 = reference[i32(0u)].zx_s;
    let _e57 = reference[i32(0u)].zy_s;
    let _e59 = reference[i32(0u)].ready_at;
    let _e61 = can_refine(FeLocal_fe_shader_private_layout_15_(_e47, _e49, _e51, _e53, _e55, _e57, _e59), _e42);
    if _e61 {
    } else {
        local_1 = true;
    }
    let _e152 = local_1;
    if _e152 {
    } else {
        let _e69 = cache[i32(0u)].cursor;
        let _e70 = for_view(_e28, _e30, (&fe_trapped));
        let _e71 = aa_pixel(_e70, _e69, global_invocation_id.x, global_invocation_id.y, _e30, (&fe_trapped));
        if _e71.f1_ {
        } else {
            local_3 = true;
        }
        let _e150 = local_3;
        if _e150 {
        } else {
            let _e76 = impl_CohortPixel_index(_e71);
            let _e79 = native_pixels[i32(_e76)];
            let _e80 = unpack_lab(_e79);
            let _e82 = clamped_neighbor_indices(_e71.f0_, _e30, (&fe_trapped));
            let _e89 = native_pixels[i32(_e82.f0_)];
            let _e90 = unpack_lab(_e89);
            let _e91 = contrast(_e80, _e90);
            let _e94 = native_pixels[i32(_e82.f1_)];
            let _e95 = unpack_lab(_e94);
            let _e96 = contrast(_e80, _e95);
            let _e97 = impl_trait_f32_max(_e91, _e96);
            let _e100 = native_pixels[i32(_e82.f2_)];
            let _e101 = unpack_lab(_e100);
            let _e102 = contrast(_e80, _e101);
            let _e105 = native_pixels[i32(_e82.f3_)];
            let _e106 = unpack_lab(_e105);
            let _e107 = contrast(_e80, _e106);
            let _e108 = impl_trait_f32_max(_e102, _e107);
            let _e109 = impl_trait_f32_max(_e97, _e108);
            if (0.5f <= _e36) {
                if (0.12f < _e109) {
                    let _e114 = camera(_e42);
                    let _e119 = (_e47 * 8195u);
                    let _e120 = (_e47 != 0u);
                    if (_e120 && (8195u > (4294967295u / select(1u, _e47, _e120)))) {
                        fe_trapped = true;
                    }
                    let _e129 = impl_CohortPixel_offset_sample(_e71, FeLocal_fe_shader_private_layout_19_(0.28f, -0.28f));
                    let _e131 = sample_progress(_e119, _e114, _e129, _e70.f0_, (&fe_trapped));
                    let _e132 = progress_color(_e131, (&fe_trapped));
                    let _e133 = unpack_lab(_e132);
                    let _e137 = impl_CohortPixel_offset_sample(_e71, FeLocal_fe_shader_private_layout_19_(-0.28f, 0.28f));
                    let _e139 = sample_progress(_e119, _e114, _e137, _e70.f0_, (&fe_trapped));
                    let _e140 = progress_color(_e139, (&fe_trapped));
                    let _e141 = unpack_lab(_e140);
                    let _e142 = impl_trait_Color_add(_e80, _e133);
                    let _e143 = impl_trait_Color_add(_e142, _e141);
                    let _e145 = impl_trait_Color_div(_e143, 3f);
                    let _e146 = pack_lab(_e145);
                    antialiased_pixels[i32(_e76)] = _e146;
                }
            }
        }
    }
    let _e163 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e163);
}
