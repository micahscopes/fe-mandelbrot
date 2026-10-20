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

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: bool,
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

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
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
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct FeLocal_fe_shader_private_layout_16_ {
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
var<storage, read_write> trap: array<u32, 16384>;

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    if (a0_.f13_ < 0.5f) {
        if (60f <= (a0_.f10_ - a0_.f11_)) {
            local_7 = true;
        }
    }
    let _e14 = local_7;
    return _e14;
}

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_8_, a1_: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_8: bool;
    var local_9: bool = false;
    var local_10: bool = bool();

    if (a0_1.f2_ == 0u) {
        if (a0_1.f1_ == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_10 = true;
            }
        }
    }
    let _e14 = local_10;
    return _e14;
}

fn is_presentable(a0_2: FeLocal_fe_shader_private_layout_4_) -> bool {
    return (((a0_2.f4_ & 536870912u) == 0u) == false);
}

fn is_presentable_in(a0_3: FeLocal_fe_shader_private_layout_4_, a1_1: u32) -> bool {
    var local_11: bool;
    var local_12: bool = false;
    var local_13: bool = bool();

    if (a0_3.f6_ == a1_1) {
        let _e6 = is_presentable(a0_3);
        if _e6 {
            local_13 = true;
        }
    }
    let _e10 = local_13;
    return _e10;
}

fn empty_progress(a0_4: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_4, 4f);
}

fn iteration_limit(a0_5: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_14: u32 = u32();
    var local_15: f32 = f32();
    var local_16: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_17: u32 = u32();
    var local_18: f32 = f32();
    var local_19: u32;
    var local_20: bool = false;
    var local_21: u32 = u32();

    local_14 = 0u;
    local_15 = a0_5;
    local_16 = 0u;
    loop {
        let _e12 = local_14;
        let _e14 = local_15;
        let _e16 = local_16;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_17 = (_e12 + 1u);
                    local_18 = (_e14 * 2f);
                }
            } else {
                local_17 = _e12;
                local_18 = _e14;
            }
            let _e36 = local_17;
            let _e38 = local_18;
            local_14 = _e36;
            local_15 = _e38;
            local_16 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_14;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_21 = 8192u;
        } else {
            local_21 = _e60;
        }
        let _e71 = local_21;
        local_19 = _e71;
        local_20 = true;
    }
    let _e77 = local_20;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_19;
    return _e79;
}

fn to_i32_(a0_6: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_6)), 2147483648u, (a0_6 <= -2147483600f)), 2147483647u, (a0_6 >= 2147483600f)), (a0_6 == a0_6));
}

fn unpack_order_byte(a0_7: FeLocal_fe_shader_private_layout_10_, a1_2: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_22: u32;
    var local_23: bool = false;
    var local_24: u32 = u32();
    var local_25: u32;
    var local_26: bool = false;

    switch ((a1_2 >> 2u) & 7u) {
        case 0u: {
            local_24 = a0_7.f0_;
        }
        case 1u: {
            local_24 = a0_7.f1_;
        }
        case 2u: {
            local_24 = a0_7.f2_;
        }
        case 3u: {
            local_24 = a0_7.f3_;
        }
        case 4u: {
            local_24 = a0_7.f4_;
        }
        case 5u: {
            local_24 = a0_7.f5_;
        }
        case 6u: {
            local_24 = a0_7.f6_;
        }
        default: {
            local_24 = a0_7.f7_;
        }
    }
    let _e27 = local_24;
    let _e29 = (a1_2 & 3u);
    let _e35 = (_e29 != 0u);
    if (_e35 && (8u > (4294967295u / select(1u, _e29, _e35)))) {
        (*fe_trapped_2) = true;
    }
    return ((_e27 >> (_e29 * 8u)) & 255u);
}

fn from_i32_(a0_8: u32) -> f32 {
    return f32(bitcast<i32>(a0_8));
}

fn seed_pixel(a0_9: FeLocal_fe_shader_private_layout_10_, a1_3: u32, a2_: u32, a3_: u32, a4_: f32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_13_ {
    var local_27: FeLocal_fe_shader_private_layout_13_;
    var local_28: bool = false;
    var local_29: bool = bool();

    let _e11 = to_i32_(((a4_ + 511f) / 512f));
    let _e12 = unpack_order_byte(a0_9, a1_3, fe_trapped_3);
    let _e14 = (a2_ / 4u);
    let _e16 = (a3_ / 4u);
    let _e18 = (_e12 & 15u);
    let _e23 = (_e14 * 13u);
    let _e24 = (_e14 != 0u);
    if (_e24 && (13u > (4294967295u / select(1u, _e14, _e24)))) {
    } else {
        let _e30 = (_e18 + _e23);
        if (_e18 > (4294967295u - _e23)) {
        } else {
            let _e37 = (_e16 * 7u);
            let _e38 = (_e16 != 0u);
            if (_e38 && (7u > (4294967295u / select(1u, _e16, _e38)))) {
            } else {
                if (_e30 > (4294967295u - _e37)) {
                } else {
                    let _e48 = ((_e30 + _e37) & 15u);
                    let _e50 = (_e12 >> 4u);
                    let _e55 = (_e14 * 5u);
                    let _e56 = (_e14 != 0u);
                    if (_e56 && (5u > (4294967295u / select(1u, _e14, _e56)))) {
                    } else {
                        let _e62 = (_e50 + _e55);
                        if (_e50 > (4294967295u - _e55)) {
                        } else {
                            let _e69 = (_e16 * 11u);
                            let _e70 = (_e16 != 0u);
                            if (_e70 && (11u > (4294967295u / select(1u, _e16, _e70)))) {
                            } else {
                                if (_e62 > (4294967295u - _e69)) {
                                } else {
                                    let _e80 = ((_e62 + _e69) & 15u);
                                    let _e85 = (_e14 * 16u);
                                    let _e86 = (_e14 != 0u);
                                    if (_e86 && (16u > (4294967295u / select(1u, _e14, _e86)))) {
                                    } else {
                                        let _e92 = (_e85 + _e48);
                                        if (_e85 > (4294967295u - _e48)) {
                                        } else {
                                            let _e98 = (_e92 * _e11);
                                            let _e99 = (_e92 != 0u);
                                            if (_e99 && (_e11 > (4294967295u / select(1u, _e92, _e99)))) {
                                            } else {
                                                let _e108 = (_e16 * 16u);
                                                let _e109 = (_e16 != 0u);
                                                if (_e109 && (16u > (4294967295u / select(1u, _e16, _e109)))) {
                                                } else {
                                                    let _e115 = (_e108 + _e80);
                                                    if (_e108 > (4294967295u - _e80)) {
                                                    } else {
                                                        let _e121 = (_e115 * _e11);
                                                        let _e122 = (_e115 != 0u);
                                                        if (_e122 && (_e11 > (4294967295u / select(1u, _e115, _e122)))) {
                                                            (*fe_trapped_3) = true;
                                                        }
                                                        let _e129 = from_i32_(_e98);
                                                        if (_e129 < a4_) {
                                                            let _e131 = from_i32_(_e121);
                                                            if (_e131 < a4_) {
                                                                local_29 = true;
                                                            }
                                                        }
                                                        let _e136 = local_29;
                                                        local_27 = FeLocal_fe_shader_private_layout_13_(_e98, _e121, ((_e121 << 11u) | _e98), _e136);
                                                        local_28 = true;
                                                    }
                                                    let _e145 = local_28;
                                                    if _e145 {
                                                    }
                                                }
                                                let _e147 = local_28;
                                                if _e147 {
                                                }
                                            }
                                            let _e149 = local_28;
                                            if _e149 {
                                            }
                                        }
                                        let _e151 = local_28;
                                        if _e151 {
                                        }
                                    }
                                    let _e153 = local_28;
                                    if _e153 {
                                    }
                                }
                                let _e155 = local_28;
                                if _e155 {
                                }
                            }
                            let _e157 = local_28;
                            if _e157 {
                            }
                        }
                        let _e159 = local_28;
                        if _e159 {
                        }
                    }
                    let _e161 = local_28;
                    if _e161 {
                    }
                }
                let _e163 = local_28;
                if _e163 {
                }
            }
            let _e165 = local_28;
            if _e165 {
            }
        }
        let _e167 = local_28;
        if _e167 {
        }
    }
    let _e170 = local_28;
    if _e170 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e172 = local_27;
    return _e172;
}

fn from_quad(a0_10: f32, a1_4: f32, a2_1: f32, a3_1: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_10, FeLocal_fe_shader_private_layout_2_(a1_4, FeLocal_fe_shader_private_layout_1_(a2_1, FeLocal_fe_shader_private_layout_0_(a3_1))));
}

fn camera(a0_11: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = from_quad(a0_11.f0_, a0_11.f1_, a0_11.f2_, a0_11.f3_);
    let _e10 = from_quad(a0_11.f4_, a0_11.f5_, a0_11.f6_, a0_11.f7_);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e10, a0_11.f8_, a0_11.f9_);
}

fn ordered_2x2_(a0_12: u32, a1_5: u32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e6 = from_i32_(a0_12);
    let _e9 = from_i32_((a0_12 & 1u));
    let _e13 = from_i32_(a1_5);
    let _e16 = from_i32_((a1_5 & 1u));
    return FeLocal_fe_shader_private_layout_9_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_13: FeLocal_fe_shader_private_layout_9_, a1_6: f32) -> FeLocal_fe_shader_private_layout_12_ {
    return FeLocal_fe_shader_private_layout_12_((((a0_13.f0_ / a1_6) * 2f) - 1f), (1f - ((a0_13.f1_ / a1_6) * 2f)));
}

fn re_expansion(a0_14: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_14.f0_), bitcast<f32>(a0_14.f1_), bitcast<f32>(a0_14.f2_), bitcast<f32>(a0_14.f3_));
    return _e9;
}

fn impl_trait_Last_negate(a0_15: f32) -> f32 {
    return -(a0_15);
}

fn negate_ge630_(a0_16: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_16.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_16.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_17: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_17.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_17.f0_), _e4);
}

fn negate_ga905_(a0_18: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_18.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_18.f0_), _e4);
}

fn precision_lib_two_sum_34a0_(a0_19: f32, a1_7: f32) -> FeLocal_fe_shader_private_layout_11_ {
    let _e2 = (a0_19 + a1_7);
    let _e3 = (_e2 - a0_19);
    return FeLocal_fe_shader_private_layout_11_(_e2, ((a0_19 - (_e2 - _e3)) + (a1_7 - _e3)));
}

fn impl_trait_Last_add_corr(a0_20: f32, a1_8: f32, a2_2: f32) -> f32 {
    return ((a2_2 + a0_20) + a1_8);
}

fn add_corr_ge630_(a0_21: FeLocal_fe_shader_private_layout_1_, a1_9: FeLocal_fe_shader_private_layout_1_, a2_3: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_21.f0_, a2_3);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_9.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_21.f1_.f0_, a1_9.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_22: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_22.f0_;
}

fn with_head_ge630_(a0_23: FeLocal_fe_shader_private_layout_1_, a1_10: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_10, FeLocal_fe_shader_private_layout_0_(a0_23.f1_.f0_));
}

fn add_corr_g4419_(a0_24: FeLocal_fe_shader_private_layout_2_, a1_11: FeLocal_fe_shader_private_layout_2_, a2_4: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_24.f0_, a2_4);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_11.f0_);
    let _e14 = add_corr_ge630_(a0_24.f1_, a1_11.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_25: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_25.f0_;
}

fn with_head_g4419_(a0_26: FeLocal_fe_shader_private_layout_2_, a1_12: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_12, a0_26.f1_);
}

fn add_corr_ga905_(a0_27: FeLocal_fe_shader_private_layout_3_, a1_13: FeLocal_fe_shader_private_layout_3_, a2_5: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_27.f0_, a2_5);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_13.f0_);
    let _e14 = add_corr_g4419_(a0_27.f1_, a1_13.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_28: FeLocal_fe_shader_private_layout_3_, a1_14: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_14);
    let _e4 = add_corr_ga905_(a0_28, _e2, 0f);
    return _e4;
}

fn im_expansion(a0_29: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_29.f4_), bitcast<f32>(a0_29.f5_), bitcast<f32>(a0_29.f6_), bitcast<f32>(a0_29.f7_));
    return _e9;
}

fn to_quad(a0_30: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_14_ {
    return FeLocal_fe_shader_private_layout_14_(a0_30.f0_, a0_30.f1_.f0_, a0_30.f1_.f1_.f0_, a0_30.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_31: f32, a1_15: f32, a2_6: f32, a3_2: f32, a4_1: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_31, a4_1);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_15);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_6);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_2);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn pixel_delta_from_reference(a1_16: u32, a2_7: FeLocal_fe_shader_private_layout_7_, a3_3: FeLocal_fe_shader_private_layout_9_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_11_ {
    var local_30: FeLocal_fe_shader_private_layout_11_;
    var local_31: bool = false;

    let _e7 = plane(a3_3, a2_7.f3_);
    if (a1_16 > (4294967295u - 8193u)) {
        (*fe_trapped_4) = true;
    }
    let _e17 = orbit[i32((a1_16 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_16 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_16 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_16 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_16 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_16 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_16 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_16 + 8193u))].im_w3_bits;
    let _e32 = FeLocal_fe_shader_private_layout_10_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31);
    let _e34 = re_expansion(_e32);
    let _e35 = sub(a2_7.f0_, _e34);
    let _e37 = im_expansion(_e32);
    let _e38 = sub(a2_7.f1_, _e37);
    let _e39 = to_quad(_e35);
    let _e44 = to_quad(_e38);
    let _e52 = reference_plus_delta(_e39.f0_, _e39.f1_, _e39.f2_, _e39.f3_, (_e7.f0_ * a2_7.f2_));
    let _e56 = reference_plus_delta(_e44.f0_, _e44.f1_, _e44.f2_, _e44.f3_, (_e7.f1_ * a2_7.f2_));
    return FeLocal_fe_shader_private_layout_11_(_e52, _e56);
}

fn is_glitched(a0_32: FeLocal_fe_shader_private_layout_4_) -> bool {
    return (((a0_32.f4_ & 1073741824u) == 0u) == false);
}

fn invalid_reference(a0_33: FeLocal_fe_shader_private_layout_10_) -> bool {
    var local_32: bool;
    var local_33: bool = false;
    var local_34: bool = bool();

    if (a0_33.f0_ == 2143289344u) {
        local_34 = true;
    } else {
        if (a0_33.f4_ == 2143289344u) {
            local_34 = true;
        }
    }
    let _e14 = local_34;
    return _e14;
}

fn non_finite(a0_34: f32) -> bool {
    return (((a0_34 - a0_34) == 0f) == false);
}

fn impl_trait_f32_abs(a0_35: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_35) & 2147483647u));
}

fn impl_trait_f32_max(a0_36: f32, a1_17: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_36);
    let _e3 = bitcast<u32>(a1_17);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn reference_index(a0_37: FeLocal_fe_shader_private_layout_4_) -> u32 {
    return (a0_37.f4_ & 536870911u);
}

fn is_escaped(a0_38: FeLocal_fe_shader_private_layout_4_) -> bool {
    return (((a0_38.f4_ & 2147483648u) == 0u) == false);
}

fn advance_progress(a1_18: u32, a2_8: f32, a3_4: f32, a4_2: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_35: FeLocal_fe_shader_private_layout_4_;
    var local_36: bool = false;
    var local_37: u32 = u32();
    var local_38: u32 = u32();
    var local_39: u32 = u32();
    var local_40: f32 = f32();
    var local_41: f32 = f32();
    var local_42: f32 = f32();
    var local_43: f32 = f32();
    var local_44: f32 = f32();
    var local_45: u32 = u32();
    var local_46: u32 = u32();
    var local_47: u32 = u32();
    var local_48: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_113_: bool;
    var local_49: f32 = f32();
    var local_50: f32 = f32();
    var local_51: u32 = u32();
    var local_52: f32 = f32();
    var local_53: f32 = f32();
    var local_54: f32 = f32();
    var local_55: f32 = f32();
    var local_56: f32 = f32();
    var local_57: u32 = u32();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: bool = bool();

    if (a1_18 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_18 + 8194u))].re_w0_bits;
        let _e23 = reference_index(a6_);
        let _e24 = is_escaped(a6_);
        if _e24 {
            local_37 = 1u;
        }
        let _e29 = local_37;
        let _e30 = is_glitched(a6_);
        if _e30 {
            local_38 = 1u;
        }
        let _e34 = local_38;
        local_39 = 0u;
        local_40 = a6_.f7_;
        local_41 = a6_.f3_;
        local_42 = a6_.f2_;
        local_43 = a6_.f1_;
        local_44 = a6_.f0_;
        local_45 = _e34;
        local_46 = _e23;
        local_47 = _e29;
        local_48 = a6_.f5_;
        loop {
            let _e60 = local_39;
            let _e62 = local_40;
            let _e64 = local_41;
            let _e66 = local_42;
            let _e68 = local_43;
            let _e70 = local_44;
            let _e72 = local_45;
            let _e74 = local_46;
            let _e76 = local_47;
            let _e78 = local_48;
            let _e79 = (_e78 < a4_2);
            loop_header_carry_113_ = _e79;
            if _e79 {
                if (_e60 < a5_) {
                    if (_e76 == 0u) {
                        if (_e72 == 0u) {
                        } else {
                            loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                            loop_did_return_1 = true;
                            break;
                        }
                        if (_e74 > (4294967295u - 1u)) {
                        } else {
                            if (((_e74 + 1u) < _e18) == false) {
                                local_49 = _e64;
                                local_50 = _e66;
                                local_51 = 0u;
                            } else {
                                local_49 = _e68;
                                local_50 = _e70;
                                local_51 = _e74;
                            }
                            let _e115 = local_49;
                            let _e117 = local_50;
                            let _e119 = local_51;
                            if (a1_18 > (4294967295u - _e119)) {
                            } else {
                                let _e127 = orbit[i32((a1_18 + _e119))].re_w0_bits;
                                let _e129 = orbit[i32((a1_18 + _e119))].re_w1_bits;
                                let _e131 = orbit[i32((a1_18 + _e119))].re_w2_bits;
                                let _e133 = orbit[i32((a1_18 + _e119))].re_w3_bits;
                                let _e135 = orbit[i32((a1_18 + _e119))].im_w0_bits;
                                let _e137 = orbit[i32((a1_18 + _e119))].im_w1_bits;
                                let _e139 = orbit[i32((a1_18 + _e119))].im_w2_bits;
                                let _e141 = orbit[i32((a1_18 + _e119))].im_w3_bits;
                                let _e144 = (a1_18 + _e119);
                                if (a1_18 > (4294967295u - _e119)) {
                                } else {
                                    if (_e144 > (4294967295u - 1u)) {
                                    } else {
                                        let _e163 = orbit[i32((_e144 + 1u))].re_w0_bits;
                                        let _e165 = orbit[i32((_e144 + 1u))].re_w1_bits;
                                        let _e167 = orbit[i32((_e144 + 1u))].re_w2_bits;
                                        let _e169 = orbit[i32((_e144 + 1u))].re_w3_bits;
                                        let _e171 = orbit[i32((_e144 + 1u))].im_w0_bits;
                                        let _e173 = orbit[i32((_e144 + 1u))].im_w1_bits;
                                        let _e175 = orbit[i32((_e144 + 1u))].im_w2_bits;
                                        let _e177 = orbit[i32((_e144 + 1u))].im_w3_bits;
                                        let _e179 = invalid_reference(FeLocal_fe_shader_private_layout_10_(_e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141));
                                        if _e179 {
                                            local_52 = _e62;
                                            local_53 = _e64;
                                            local_54 = _e66;
                                            local_55 = _e115;
                                            local_56 = _e117;
                                            local_57 = 1u;
                                            local_58 = _e119;
                                            local_59 = _e76;
                                        } else {
                                            let _e180 = invalid_reference(FeLocal_fe_shader_private_layout_10_(_e163, _e165, _e167, _e169, _e171, _e173, _e175, _e177));
                                            if _e180 {
                                                local_52 = _e62;
                                                local_53 = _e64;
                                                local_54 = _e66;
                                                local_55 = _e115;
                                                local_56 = _e117;
                                                local_57 = 1u;
                                                local_58 = _e119;
                                                local_59 = _e76;
                                            } else {
                                                let _e182 = bitcast<f32>(_e127);
                                                let _e183 = bitcast<f32>(_e129);
                                                let _e184 = bitcast<f32>(_e131);
                                                let _e185 = bitcast<f32>(_e133);
                                                let _e186 = bitcast<f32>(_e135);
                                                let _e187 = bitcast<f32>(_e137);
                                                let _e188 = bitcast<f32>(_e139);
                                                let _e189 = bitcast<f32>(_e141);
                                                let _e235 = ((((2f * ((_e182 * _e117) - (_e186 * _e115))) + (2f * ((((((_e183 * _e117) - (_e187 * _e115)) + (_e184 * _e117)) - (_e188 * _e115)) + (_e185 * _e117)) - (_e189 * _e115)))) + ((_e117 * _e117) - (_e115 * _e115))) + a2_8);
                                                let _e245 = ((((2f * ((_e182 * _e115) + (_e186 * _e117))) + (2f * ((((((_e183 * _e115) + (_e187 * _e117)) + (_e184 * _e115)) + (_e188 * _e117)) + (_e185 * _e115)) + (_e189 * _e117)))) + ((2f * _e117) * _e115)) + a3_4);
                                                let _e246 = reference_plus_delta(bitcast<f32>(_e163), bitcast<f32>(_e165), bitcast<f32>(_e167), bitcast<f32>(_e169), _e235);
                                                let _e247 = reference_plus_delta(bitcast<f32>(_e171), bitcast<f32>(_e173), bitcast<f32>(_e175), bitcast<f32>(_e177), _e245);
                                                let _e250 = ((_e246 * _e246) + (_e247 * _e247));
                                                if (4f < _e250) {
                                                    let _e259 = impl_trait_f32_abs((_e250 - 4f));
                                                    let _e261 = impl_trait_f32_max(1f, _e250);
                                                    if (_e259 <= (0.000004f * _e261)) {
                                                        local_60 = true;
                                                    } else {
                                                        local_60 = false;
                                                    }
                                                } else {
                                                    local_60 = false;
                                                }
                                                let _e272 = local_60;
                                                let _e273 = non_finite(_e235);
                                                if _e273 {
                                                    local_52 = _e62;
                                                    local_53 = _e64;
                                                    local_54 = _e66;
                                                    local_55 = _e115;
                                                    local_56 = _e117;
                                                    local_57 = 1u;
                                                    local_58 = _e119;
                                                    local_59 = _e76;
                                                } else {
                                                    let _e274 = non_finite(_e245);
                                                    if _e274 {
                                                        local_52 = _e62;
                                                        local_53 = _e64;
                                                        local_54 = _e66;
                                                        local_55 = _e115;
                                                        local_56 = _e117;
                                                        local_57 = 1u;
                                                        local_58 = _e119;
                                                        local_59 = _e76;
                                                    } else {
                                                        let _e275 = non_finite(_e250);
                                                        if (_e275 | _e272) {
                                                            local_52 = _e62;
                                                            local_53 = _e64;
                                                            local_54 = _e66;
                                                            local_55 = _e115;
                                                            local_56 = _e117;
                                                            local_57 = 1u;
                                                            local_58 = _e119;
                                                            local_59 = _e76;
                                                        } else {
                                                            if (4f < _e250) {
                                                                local_52 = _e250;
                                                                local_53 = _e247;
                                                                local_54 = _e246;
                                                                local_55 = _e245;
                                                                local_56 = _e235;
                                                                local_57 = _e72;
                                                                local_58 = _e119;
                                                                local_59 = 1u;
                                                            } else {
                                                                if (_e250 < ((_e235 * _e235) + (_e245 * _e245))) {
                                                                    local_52 = _e62;
                                                                    local_53 = _e247;
                                                                    local_54 = _e246;
                                                                    local_55 = _e247;
                                                                    local_56 = _e246;
                                                                    local_57 = _e72;
                                                                    local_58 = 0u;
                                                                    local_59 = _e76;
                                                                } else {
                                                                    if (_e119 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_5) = true;
                                                                        break;
                                                                    } else {
                                                                        local_52 = _e62;
                                                                        local_53 = _e247;
                                                                        local_54 = _e246;
                                                                        local_55 = _e245;
                                                                        local_56 = _e235;
                                                                        local_57 = _e72;
                                                                        local_58 = (_e119 + 1u);
                                                                        local_59 = _e76;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e357 = local_52;
                                        let _e359 = local_53;
                                        let _e361 = local_54;
                                        let _e363 = local_55;
                                        let _e365 = local_56;
                                        let _e367 = local_57;
                                        let _e369 = local_58;
                                        let _e371 = local_59;
                                        local_39 = (_e60 + 1u);
                                        local_40 = _e357;
                                        local_41 = _e359;
                                        local_42 = _e361;
                                        local_43 = _e363;
                                        local_44 = _e365;
                                        local_45 = _e367;
                                        local_46 = _e369;
                                        local_47 = _e371;
                                        local_48 = (_e78 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_5) = true;
                        break;
                    } else {
                        loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                        loop_did_return_1 = true;
                        break;
                    }
                } else {
                    loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                    loop_did_return_1 = true;
                    break;
                }
            } else {
                loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                loop_did_return_1 = true;
                break;
            }
        }
        let _e422 = loop_did_return_1;
        if _e422 {
            let _e424 = loop_result_1;
            local_35 = _e424;
            local_36 = true;
        }
    }
    let _e430 = local_36;
    if _e430 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e432 = local_35;
    return _e432;
}

fn with_fade_start(a0_39: FeLocal_fe_shader_private_layout_4_, a1_19: f32) -> FeLocal_fe_shader_private_layout_4_ {
    var fixed_local_3_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    fixed_local_3_ = a0_39;
    fixed_local_3_.f2_ = a1_19;
    fixed_local_3_.f4_ = (a0_39.f4_ | 536870912u);
    let _e9 = fixed_local_3_;
    return _e9;
}

fn clamp_(a0_40: f32, a1_20: f32, a2_9: f32) -> f32 {
    var local_61: f32;
    var local_62: bool = false;
    var local_63: f32 = f32();

    if (a0_40 < a1_20) {
        local_63 = a1_20;
    } else {
        if (a2_9 < a0_40) {
            local_63 = a2_9;
        } else {
            local_63 = a0_40;
        }
    }
    let _e11 = local_63;
    return _e11;
}

fn packed(a0_41: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e4 = clamp_(a0_41.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_41.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_41.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_42: f32) -> f32 {
    return floor(a0_42);
}

fn fract_(a0_43: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_43);
    return (a0_43 - _e1);
}

fn anchor(a0_44: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_64: FeLocal_fe_shader_private_layout_5_;
    var local_65: bool = false;
    var local_66: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_44 {
        case 0u: {
            local_66 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_66 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_66 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_66 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_66 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_66;
    return _e29;
}

fn wrap_pi(a0_45: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_45 / 6.2831855f) + 0.5f));
    return (a0_45 - (6.2831855f * _e5));
}

fn sin_(a0_46: f32) -> f32 {
    let _e1 = wrap_pi(a0_46);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_47: f32) -> f32 {
    let _e3 = sin_((a0_47 + 1.5707964f));
    return _e3;
}

fn oklch(a0_48: f32, a1_21: f32, a2_10: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = (a2_10 * 0.017453292f);
    let _e5 = cos_(_e4);
    let _e7 = sin_(_e4);
    return FeLocal_fe_shader_private_layout_5_(a0_48, (a1_21 * _e5), (a1_21 * _e7));
}

fn escape_palette(a0_49: u32, a1_22: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_67: u32;
    var local_68: bool = false;
    var local_69: u32 = u32();
    var local_70: u32;
    var local_71: bool = false;
    var local_72: f32 = f32();

    let _e5 = from_i32_(a0_49);
    let _e11 = fract_(((_e5 + (4f / a1_22)) / 256f));
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
            local_69 = _e29;
        }
    }
    let _e40 = local_69;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_72 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_72 = (_e44 + 360f);
        } else {
            local_72 = _e44;
        }
    }
    let _e57 = local_72;
    let _e73 = oklch((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22)), (_e23.f2_ + (_e57 * _e22)));
    let _e74 = packed(_e73);
    return _e74;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_50: FeLocal_fe_shader_private_layout_4_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_73: u32;
    var local_74: bool = false;
    var local_75: u32 = u32();

    let _e4 = is_glitched(a0_50);
    if _e4 {
        let _e5 = glitch();
        local_75 = _e5;
    } else {
        let _e6 = is_escaped(a0_50);
        if _e6 {
            let _e9 = escape_palette(a0_50.f5_, a0_50.f7_, fe_trapped_7);
            local_75 = _e9;
        } else {
            let _e10 = interior();
            local_75 = _e10;
        }
    }
    let _e15 = local_75;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    let _e14 = params.p27_;
    let _e16 = params.p28_;
    let _e18 = params.p29_;
    let _e20 = params.p30_;
    let _e22 = params.p31_;
    let _e24 = params.p32_;
    let _e26 = params.p33_;
    let _e28 = params.p34_;
    let _e30 = params.p35_;
    let _e32 = params.p36_;
    let _e34 = params.p37_;
    let _e36 = params.p38_;
    let _e38 = params.p39_;
    let _e40 = params.p40_;
    let _e42 = params.p41_;
    let _e44 = FeLocal_fe_shader_private_layout_6_(_e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40, _e42);
    let _e49 = reference[i32(0u)].active_;
    let _e51 = reference[i32(0u)].active_valid;
    let _e53 = reference[i32(0u)].pending;
    let _e55 = reference[i32(0u)].index;
    let _e57 = reference[i32(0u)].zx_s;
    let _e59 = reference[i32(0u)].zy_s;
    let _e61 = reference[i32(0u)].ready_at;
    let _e63 = can_refine(FeLocal_fe_shader_private_layout_8_(_e49, _e51, _e53, _e55, _e57, _e59, _e61), _e44);
    if _e63 {
    } else {
        local_1 = true;
    }
    let _e227 = local_1;
    if _e227 {
    } else {
        let _e71 = cache[i32(0u)].cursor;
        let _e73 = cache[i32(0u)].epoch;
        let _e75 = cache[i32(0u)].completed;
        if (_e71 < 16u) {
            if (_e75 == 1u) {
                local_3 = true;
            }
            let _e225 = local_3;
            if _e225 {
            } else {
                let _e88 = (((global_invocation_id.y % 4u) << 2u) + (global_invocation_id.x % 4u));
                let _e93 = (_e71 * 16u);
                let _e94 = (_e71 != 0u);
                if (_e94 && (16u > (4294967295u / select(1u, _e71, _e94)))) {
                } else {
                    let _e100 = (_e93 + _e88);
                    if (_e93 > (4294967295u - _e88)) {
                    } else {
                        let _e104 = (_e100 >> 5u);
                        if (16390u > (4294967295u - _e104)) {
                        } else {
                            let _e113 = orbit[i32((16390u + _e104))].re_w0_bits;
                            let _e115 = orbit[i32((16390u + _e104))].re_w1_bits;
                            let _e117 = orbit[i32((16390u + _e104))].re_w2_bits;
                            let _e119 = orbit[i32((16390u + _e104))].re_w3_bits;
                            let _e121 = orbit[i32((16390u + _e104))].im_w0_bits;
                            let _e123 = orbit[i32((16390u + _e104))].im_w1_bits;
                            let _e125 = orbit[i32((16390u + _e104))].im_w2_bits;
                            let _e127 = orbit[i32((16390u + _e104))].im_w3_bits;
                            let _e129 = seed_pixel(FeLocal_fe_shader_private_layout_10_(_e113, _e115, _e117, _e119, _e121, _e123, _e125, _e127), _e100, global_invocation_id.x, global_invocation_id.y, _e32, (&fe_trapped));
                            if _e129.f3_ {
                            } else {
                                local_3 = true;
                            }
                            let _e216 = local_3;
                            if _e216 {
                            } else {
                                let _e137 = progress_pixels[i32(_e129.f2_)].dz_re;
                                let _e139 = progress_pixels[i32(_e129.f2_)].dz_im;
                                let _e141 = progress_pixels[i32(_e129.f2_)].z_re;
                                let _e143 = progress_pixels[i32(_e129.f2_)].z_im;
                                let _e145 = progress_pixels[i32(_e129.f2_)].reference_i;
                                let _e147 = progress_pixels[i32(_e129.f2_)].iteration;
                                let _e149 = progress_pixels[i32(_e129.f2_)].epoch;
                                let _e151 = progress_pixels[i32(_e129.f2_)].magnitude;
                                let _e152 = FeLocal_fe_shader_private_layout_4_(_e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151);
                                let _e153 = is_presentable_in(_e152, _e73);
                                if _e153 {
                                    local_3 = true;
                                }
                                let _e214 = local_3;
                                if _e214 {
                                } else {
                                    if (_e149 == _e73) {
                                        local_4 = _e152;
                                    } else {
                                        let _e158 = empty_progress(_e73);
                                        local_4 = _e158;
                                    }
                                    let _e162 = local_4;
                                    let _e163 = iteration_limit(_e30, (&fe_trapped));
                                    let _e168 = (_e49 * 8195u);
                                    let _e169 = (_e49 != 0u);
                                    if (_e169 && (8195u > (4294967295u / select(1u, _e49, _e169)))) {
                                    } else {
                                        let _e174 = camera(_e44);
                                        let _e177 = ordered_2x2_(_e129.f0_, _e129.f1_);
                                        let _e178 = pixel_delta_from_reference(_e168, _e174, _e177, (&fe_trapped));
                                        let _e181 = advance_progress(_e168, _e178.f0_, _e178.f1_, _e163, _e163, _e162, (&fe_trapped));
                                        let _e183 = with_fade_start(_e181, _e34);
                                        progress_pixels[i32(_e129.f2_)].dz_re = _e183.f0_;
                                        progress_pixels[i32(_e129.f2_)].dz_im = _e183.f1_;
                                        progress_pixels[i32(_e129.f2_)].z_re = _e183.f2_;
                                        progress_pixels[i32(_e129.f2_)].z_im = _e183.f3_;
                                        progress_pixels[i32(_e129.f2_)].reference_i = _e183.f4_;
                                        progress_pixels[i32(_e129.f2_)].iteration = _e183.f5_;
                                        progress_pixels[i32(_e129.f2_)].epoch = _e183.f6_;
                                        progress_pixels[i32(_e129.f2_)].magnitude = _e183.f7_;
                                        let _e202 = progress_color(_e181, (&fe_trapped));
                                        native_pixels[i32(_e129.f2_)] = _e202;
                                        antialiased_pixels[i32(_e129.f2_)] = _e202;
                                        local_3 = true;
                                    }
                                    let _e212 = local_3;
                                    if _e212 {
                                    }
                                }
                            }
                        }
                        let _e218 = local_3;
                        if _e218 {
                        }
                    }
                    let _e220 = local_3;
                    if _e220 {
                    }
                }
                let _e223 = local_3;
                if _e223 {
                } else {
                    fe_trapped = true;
                }
            }
        }
    }
    let _e238 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 16384u))] = u32(_e238);
}
