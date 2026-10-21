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

struct FeLocal_fe_shader_private_layout_7_ {
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

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_17_ {
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

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
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
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
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

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_8_) -> bool {
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

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_11_, a1_: FeLocal_fe_shader_private_layout_8_) -> bool {
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

fn progress_is_presentable(a0_2: u32) -> bool {
    return (((a0_2 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_3: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_presentable(a0_3.f4_);
    return _e2;
}

fn is_presentable_in(a0_4: FeLocal_fe_shader_private_layout_5_, a1_1: u32) -> bool {
    var local_11: bool;
    var local_12: bool = false;
    var local_13: bool = bool();

    if (a0_4.f6_ == a1_1) {
        let _e6 = is_presentable(a0_4);
        if _e6 {
            local_13 = true;
        }
    }
    let _e10 = local_13;
    return _e10;
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_();
}

fn from_continuation(a0_5: FeLocal_fe_shader_private_layout_4_, a1_2: FeLocal_fe_shader_private_layout_4_, a2_: u32, a3_: u32, a4_: u32, a5_: f32) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_(a0_5.f0_, a0_5.f1_, a1_2.f0_, a1_2.f1_, a2_, a3_, a4_, a5_);
}

fn empty_progress(a0_6: u32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_6, 4f);
    return _e6;
}

fn iteration_limit(a0_7: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
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
    local_15 = a0_7;
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

fn to_i32_(a0_8: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_8)), 2147483648u, (a0_8 <= -2147483600f)), 2147483647u, (a0_8 >= 2147483600f)), (a0_8 == a0_8));
}

fn word(a0_9: FeLocal_fe_shader_private_layout_13_, a1_3: u32) -> u32 {
    var local_22: u32;
    var local_23: bool = false;
    var local_24: u32 = u32();

    switch (a1_3 & 7u) {
        case 0u: {
            local_24 = a0_9.f0_;
        }
        case 1u: {
            local_24 = a0_9.f1_;
        }
        case 2u: {
            local_24 = a0_9.f2_;
        }
        case 3u: {
            local_24 = a0_9.f3_;
        }
        case 4u: {
            local_24 = a0_9.f4_;
        }
        case 5u: {
            local_24 = a0_9.f5_;
        }
        case 6u: {
            local_24 = a0_9.f6_;
        }
        default: {
            local_24 = a0_9.f7_;
        }
    }
    let _e23 = local_24;
    return _e23;
}

fn unpack_order_byte(a0_10: FeLocal_fe_shader_private_layout_13_, a1_4: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_25: u32;
    var local_26: bool = false;

    let _e8 = word(a0_10, ((a1_4 >> 2u) & 7u));
    let _e10 = (a1_4 & 3u);
    let _e16 = (_e10 != 0u);
    if (_e16 && (8u > (4294967295u / select(1u, _e10, _e16)))) {
        (*fe_trapped_2) = true;
    }
    return ((_e8 >> (_e10 * 8u)) & 255u);
}

fn from_i32_(a0_11: u32) -> f32 {
    return f32(bitcast<i32>(a0_11));
}

fn at(a0_12: u32, a1_5: u32, a2_1: f32) -> FeLocal_fe_shader_private_layout_7_ {
    var local_27: FeLocal_fe_shader_private_layout_7_;
    var local_28: bool = false;
    var local_29: bool = bool();

    let _e5 = from_i32_(a0_12);
    if (_e5 < a2_1) {
        let _e7 = from_i32_(a1_5);
        if (_e7 < a2_1) {
            local_29 = true;
        }
    }
    let _e12 = local_29;
    return FeLocal_fe_shader_private_layout_7_(a0_12, a1_5, ((a1_5 << 11u) | a0_12), _e12);
}

fn seed_pixel(a0_13: FeLocal_fe_shader_private_layout_13_, a1_6: u32, a2_2: u32, a3_1: u32, a4_1: f32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    var local_30: FeLocal_fe_shader_private_layout_7_;
    var local_31: bool = false;

    let _e11 = to_i32_(((a4_1 + 511f) / 512f));
    let _e12 = unpack_order_byte(a0_13, a1_6, fe_trapped_3);
    let _e14 = (a2_2 / 4u);
    let _e16 = (a3_1 / 4u);
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
                                                        let _e122 = (_e115 != 0u);
                                                        if (_e122 && (_e11 > (4294967295u / select(1u, _e115, _e122)))) {
                                                        } else {
                                                            let _e127 = at((_e92 * _e11), (_e115 * _e11), a4_1);
                                                            local_30 = _e127;
                                                            local_31 = true;
                                                        }
                                                        let _e132 = local_31;
                                                        if _e132 {
                                                        }
                                                    }
                                                    let _e134 = local_31;
                                                    if _e134 {
                                                    }
                                                }
                                                let _e136 = local_31;
                                                if _e136 {
                                                }
                                            }
                                            let _e138 = local_31;
                                            if _e138 {
                                            }
                                        }
                                        let _e140 = local_31;
                                        if _e140 {
                                        }
                                    }
                                    let _e142 = local_31;
                                    if _e142 {
                                    }
                                }
                                let _e144 = local_31;
                                if _e144 {
                                }
                            }
                            let _e146 = local_31;
                            if _e146 {
                            }
                        }
                        let _e148 = local_31;
                        if _e148 {
                        }
                    }
                    let _e150 = local_31;
                    if _e150 {
                    }
                }
                let _e152 = local_31;
                if _e152 {
                }
            }
            let _e154 = local_31;
            if _e154 {
            }
        }
        let _e156 = local_31;
        if _e156 {
        }
    }
    let _e159 = local_31;
    if _e159 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e161 = local_30;
    return _e161;
}

fn from_quad(a0_14: f32, a1_7: f32, a2_3: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_14, FeLocal_fe_shader_private_layout_2_(a1_7, FeLocal_fe_shader_private_layout_1_(a2_3, FeLocal_fe_shader_private_layout_0_(a3_2))));
}

fn center(a0_15: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e5 = from_quad(a0_15.f0_, a0_15.f1_, a0_15.f2_, a0_15.f3_);
    let _e10 = from_quad(a0_15.f4_, a0_15.f5_, a0_15.f6_, a0_15.f7_);
    return FeLocal_fe_shader_private_layout_9_(_e5, _e10);
}

fn camera(a0_16: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_10_ {
    let _e1 = center(a0_16);
    return FeLocal_fe_shader_private_layout_10_(_e1, a0_16.f8_, a0_16.f9_);
}

fn ordered_2x2_(a0_17: u32, a1_8: u32) -> FeLocal_fe_shader_private_layout_12_ {
    let _e6 = from_i32_(a0_17);
    let _e9 = from_i32_((a0_17 & 1u));
    let _e13 = from_i32_(a1_8);
    let _e16 = from_i32_((a1_8 & 1u));
    return FeLocal_fe_shader_private_layout_12_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn sample(a0_18: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_12_ {
    let _e3 = ordered_2x2_(a0_18.f0_, a0_18.f1_);
    return _e3;
}

fn plane(a0_19: FeLocal_fe_shader_private_layout_12_, a1_9: f32) -> FeLocal_fe_shader_private_layout_16_ {
    return FeLocal_fe_shader_private_layout_16_((((a0_19.f0_ / a1_9) * 2f) - 1f), (1f - ((a0_19.f1_ / a1_9) * 2f)));
}

fn decode(a0_20: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e9 = from_quad(bitcast<f32>(a0_20.f0_), bitcast<f32>(a0_20.f1_), bitcast<f32>(a0_20.f2_), bitcast<f32>(a0_20.f3_));
    let _e18 = from_quad(bitcast<f32>(a0_20.f4_), bitcast<f32>(a0_20.f5_), bitcast<f32>(a0_20.f6_), bitcast<f32>(a0_20.f7_));
    return FeLocal_fe_shader_private_layout_9_(_e9, _e18);
}

fn impl_trait_Last_negate(a0_21: f32) -> f32 {
    return -(a0_21);
}

fn negate_ge630_(a0_22: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_22.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_22.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_23: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_23.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_23.f0_), _e4);
}

fn negate_ga905_(a0_24: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_24.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_24.f0_), _e4);
}

fn precision_lib_two_sum_56b3_(a0_25: f32, a1_10: f32) -> FeLocal_fe_shader_private_layout_18_ {
    let _e2 = (a0_25 + a1_10);
    let _e3 = (_e2 - a0_25);
    return FeLocal_fe_shader_private_layout_18_(_e2, ((a0_25 - (_e2 - _e3)) + (a1_10 - _e3)));
}

fn impl_trait_Last_add_corr(a0_26: f32, a1_11: f32, a2_4: f32) -> f32 {
    return ((a2_4 + a0_26) + a1_11);
}

fn add_corr_ge630_(a0_27: FeLocal_fe_shader_private_layout_1_, a1_12: FeLocal_fe_shader_private_layout_1_, a2_5: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_56b3_(a0_27.f0_, a2_5);
    let _e8 = precision_lib_two_sum_56b3_(_e4.f0_, a1_12.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_27.f1_.f0_, a1_12.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_56b3_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_28: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_28.f0_;
}

fn with_head_ge630_(a0_29: FeLocal_fe_shader_private_layout_1_, a1_13: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_13, FeLocal_fe_shader_private_layout_0_(a0_29.f1_.f0_));
}

fn add_corr_g4419_(a0_30: FeLocal_fe_shader_private_layout_2_, a1_14: FeLocal_fe_shader_private_layout_2_, a2_6: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_56b3_(a0_30.f0_, a2_6);
    let _e8 = precision_lib_two_sum_56b3_(_e4.f0_, a1_14.f0_);
    let _e14 = add_corr_ge630_(a0_30.f1_, a1_14.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_56b3_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_31: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_31.f0_;
}

fn with_head_g4419_(a0_32: FeLocal_fe_shader_private_layout_2_, a1_15: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_15, a0_32.f1_);
}

fn add_corr_ga905_(a0_33: FeLocal_fe_shader_private_layout_3_, a1_16: FeLocal_fe_shader_private_layout_3_, a2_7: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_56b3_(a0_33.f0_, a2_7);
    let _e8 = precision_lib_two_sum_56b3_(_e4.f0_, a1_16.f0_);
    let _e14 = add_corr_g4419_(a0_33.f1_, a1_16.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_56b3_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub_ga905_(a0_34: FeLocal_fe_shader_private_layout_3_, a1_17: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_17);
    let _e4 = add_corr_ga905_(a0_34, _e2, 0f);
    return _e4;
}

fn sub_ge3dc(a0_35: FeLocal_fe_shader_private_layout_9_, a1_18: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e4 = sub_ga905_(a0_35.f0_, a1_18.f0_);
    let _e7 = sub_ga905_(a0_35.f1_, a1_18.f1_);
    return FeLocal_fe_shader_private_layout_9_(_e4, _e7);
}

fn to_quad(a0_36: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_17_ {
    return FeLocal_fe_shader_private_layout_17_(a0_36.f0_, a0_36.f1_.f0_, a0_36.f1_.f1_.f0_, a0_36.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_37: f32, a1_19: f32, a2_8: f32, a3_3: f32, a4_2: f32) -> f32 {
    let _e5 = precision_lib_two_sum_56b3_(a0_37, a4_2);
    let _e8 = precision_lib_two_sum_56b3_(_e5.f0_, a1_19);
    let _e11 = precision_lib_two_sum_56b3_(_e8.f0_, a2_8);
    let _e14 = precision_lib_two_sum_56b3_(_e11.f0_, a3_3);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_38: FeLocal_fe_shader_private_layout_3_, a1_20: f32) -> f32 {
    let _e2 = to_quad(a0_38);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_20);
    return _e7;
}

fn reference_with_delta(a0_39: FeLocal_fe_shader_private_layout_9_, a1_21: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = expansion_plus_delta(a0_39.f0_, a1_21.f0_);
    let _e7 = expansion_plus_delta(a0_39.f1_, a1_21.f1_);
    return FeLocal_fe_shader_private_layout_4_(_e4, _e7);
}

fn pixel_delta_from_reference(a1_22: u32, a2_9: FeLocal_fe_shader_private_layout_10_, a3_4: FeLocal_fe_shader_private_layout_12_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_32: FeLocal_fe_shader_private_layout_4_;
    var local_33: bool = false;

    let _e7 = plane(a3_4, a2_9.f2_);
    if (a1_22 > (4294967295u - 8193u)) {
        (*fe_trapped_4) = true;
    }
    let _e17 = orbit[i32((a1_22 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_22 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_22 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_22 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_22 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_22 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_22 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_22 + 8193u))].im_w3_bits;
    let _e33 = decode(FeLocal_fe_shader_private_layout_13_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e42 = sub_ge3dc(a2_9.f0_, _e33);
    let _e43 = reference_with_delta(_e42, FeLocal_fe_shader_private_layout_4_((_e7.f0_ * a2_9.f1_), (_e7.f1_ * a2_9.f1_)));
    return _e43;
}

fn progress_is_glitched(a0_40: u32) -> bool {
    return (((a0_40 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_41: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_glitched(a0_41.f4_);
    return _e2;
}

fn pack_progress_reference(a0_42: u32, a1_23: u32, a2_10: u32) -> u32 {
    return (((a0_42 & 536870911u) | (a1_23 << 31u)) | (a2_10 << 30u));
}

fn perturb(a0_43: FeLocal_fe_shader_private_layout_9_, a1_24: FeLocal_fe_shader_private_layout_4_, a2_11: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = to_quad(a0_43.f0_);
    let _e10 = to_quad(a0_43.f1_);
    return FeLocal_fe_shader_private_layout_4_(((((2f * ((_e4.f0_ * a1_24.f0_) - (_e10.f0_ * a1_24.f1_))) + (2f * ((((((_e4.f1_ * a1_24.f0_) - (_e10.f1_ * a1_24.f1_)) + (_e4.f2_ * a1_24.f0_)) - (_e10.f2_ * a1_24.f1_)) + (_e4.f3_ * a1_24.f0_)) - (_e10.f3_ * a1_24.f1_)))) + ((a1_24.f0_ * a1_24.f0_) - (a1_24.f1_ * a1_24.f1_))) + a2_11.f0_), ((((2f * ((_e4.f0_ * a1_24.f1_) + (_e10.f0_ * a1_24.f0_))) + (2f * ((((((_e4.f1_ * a1_24.f1_) + (_e10.f1_ * a1_24.f0_)) + (_e4.f2_ * a1_24.f1_)) + (_e10.f2_ * a1_24.f0_)) + (_e4.f3_ * a1_24.f1_)) + (_e10.f3_ * a1_24.f0_)))) + ((2f * a1_24.f0_) * a1_24.f1_)) + a2_11.f1_));
}

fn norm_squared(a0_44: FeLocal_fe_shader_private_layout_4_) -> f32 {
    return ((a0_44.f0_ * a0_44.f0_) + (a0_44.f1_ * a0_44.f1_));
}

fn is_invalid(a0_45: FeLocal_fe_shader_private_layout_13_) -> bool {
    var local_34: bool;
    var local_35: bool = false;
    var local_36: bool = bool();

    if (a0_45.f0_ == 2143289344u) {
        local_36 = true;
    } else {
        if (a0_45.f4_ == 2143289344u) {
            local_36 = true;
        }
    }
    let _e14 = local_36;
    return _e14;
}

fn non_finite(a0_46: f32) -> bool {
    return (((a0_46 - a0_46) == 0f) == false);
}

fn is_non_finite(a0_47: FeLocal_fe_shader_private_layout_4_) -> bool {
    var local_37: bool;
    var local_38: bool = false;
    var local_39: bool = bool();

    let _e4 = non_finite(a0_47.f0_);
    if _e4 {
        local_39 = true;
    } else {
        let _e6 = non_finite(a0_47.f1_);
        if _e6 {
            local_39 = true;
        }
    }
    let _e12 = local_39;
    return _e12;
}

fn impl_trait_f32_abs(a0_48: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_48) & 2147483647u));
}

fn impl_trait_f32_max(a0_49: f32, a1_25: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_49);
    let _e3 = bitcast<u32>(a1_25);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn decode_metadata(a0_50: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_14_ {
    return FeLocal_fe_shader_private_layout_14_(a0_50.f0_, a0_50.f1_);
}

fn delta(a0_51: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_51.f0_, a0_51.f1_);
}

fn position(a0_52: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_52.f2_, a0_52.f3_);
}

fn progress_reference_index(a0_53: u32) -> u32 {
    return (a0_53 & 536870911u);
}

fn reference_index(a0_54: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e2 = progress_reference_index(a0_54.f4_);
    return _e2;
}

fn progress_is_escaped(a0_55: u32) -> bool {
    return (((a0_55 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_56: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = progress_is_escaped(a0_56.f4_);
    return _e2;
}

fn advance_progress(a1_26: u32, a2_12: FeLocal_fe_shader_private_layout_4_, a3_5: u32, a4_3: u32, a5_1: FeLocal_fe_shader_private_layout_5_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_40: FeLocal_fe_shader_private_layout_5_;
    var local_41: bool = false;
    var local_42: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_43: u32 = u32();
    var local_44: u32 = u32();
    var local_45: u32 = u32();
    var local_46: f32 = f32();
    var local_47: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_48: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_49: u32 = u32();
    var local_50: u32 = u32();
    var local_51: u32 = u32();
    var local_52: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_5_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_81_: bool;
    var local_53: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_54: u32 = u32();
    var local_55: f32 = f32();
    var local_56: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_57: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: bool = bool();

    let _e9 = is_presentable(a5_1);
    if _e9 {
        local_42 = a5_1;
    } else {
        if (a1_26 > (4294967295u - 8194u)) {
            (*fe_trapped_5) = true;
        } else {
            let _e20 = orbit[i32((a1_26 + 8194u))].re_w0_bits;
            let _e22 = orbit[i32((a1_26 + 8194u))].re_w1_bits;
            let _e24 = orbit[i32((a1_26 + 8194u))].re_w2_bits;
            let _e26 = orbit[i32((a1_26 + 8194u))].re_w3_bits;
            let _e28 = orbit[i32((a1_26 + 8194u))].im_w0_bits;
            let _e30 = orbit[i32((a1_26 + 8194u))].im_w1_bits;
            let _e32 = orbit[i32((a1_26 + 8194u))].im_w2_bits;
            let _e34 = orbit[i32((a1_26 + 8194u))].im_w3_bits;
            let _e36 = decode_metadata(FeLocal_fe_shader_private_layout_13_(_e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
            let _e38 = delta(a5_1);
            let _e39 = position(a5_1);
            let _e40 = reference_index(a5_1);
            let _e41 = is_escaped(a5_1);
            if _e41 {
                local_43 = 1u;
            }
            let _e46 = local_43;
            let _e47 = is_glitched(a5_1);
            if _e47 {
                local_44 = 1u;
            }
            let _e51 = local_44;
            local_45 = 0u;
            local_46 = a5_1.f7_;
            local_47 = _e39;
            local_48 = _e38;
            local_49 = _e51;
            local_50 = _e46;
            local_51 = _e40;
            local_52 = a5_1.f5_;
            loop {
                let _e73 = local_45;
                let _e75 = local_46;
                let _e77 = local_47;
                let _e79 = local_48;
                let _e81 = local_49;
                let _e83 = local_50;
                let _e85 = local_51;
                let _e87 = local_52;
                let _e88 = (_e87 < a3_5);
                loop_header_carry_81_ = _e88;
                if _e88 {
                    if (_e73 < a4_3) {
                        if (_e83 == 0u) {
                            if (_e81 == 0u) {
                                if (_e85 > (4294967295u - 1u)) {
                                } else {
                                    if (((_e85 + 1u) < _e36.f0_) == false) {
                                        local_53 = _e77;
                                        local_54 = 0u;
                                    } else {
                                        local_53 = _e79;
                                        local_54 = _e85;
                                    }
                                    let _e110 = local_53;
                                    let _e112 = local_54;
                                    if (a1_26 > (4294967295u - _e112)) {
                                    } else {
                                        let _e120 = orbit[i32((a1_26 + _e112))].re_w0_bits;
                                        let _e122 = orbit[i32((a1_26 + _e112))].re_w1_bits;
                                        let _e124 = orbit[i32((a1_26 + _e112))].re_w2_bits;
                                        let _e126 = orbit[i32((a1_26 + _e112))].re_w3_bits;
                                        let _e128 = orbit[i32((a1_26 + _e112))].im_w0_bits;
                                        let _e130 = orbit[i32((a1_26 + _e112))].im_w1_bits;
                                        let _e132 = orbit[i32((a1_26 + _e112))].im_w2_bits;
                                        let _e134 = orbit[i32((a1_26 + _e112))].im_w3_bits;
                                        let _e135 = FeLocal_fe_shader_private_layout_13_(_e120, _e122, _e124, _e126, _e128, _e130, _e132, _e134);
                                        let _e137 = (a1_26 + _e112);
                                        if (a1_26 > (4294967295u - _e112)) {
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
                                                    local_55 = _e75;
                                                    local_56 = _e77;
                                                    local_57 = _e110;
                                                    local_58 = 1u;
                                                    local_59 = _e83;
                                                    local_60 = _e112;
                                                } else {
                                                    let _e171 = is_invalid(_e169);
                                                    if _e171 {
                                                        local_55 = _e75;
                                                        local_56 = _e77;
                                                        local_57 = _e110;
                                                        local_58 = 1u;
                                                        local_59 = _e83;
                                                        local_60 = _e112;
                                                    } else {
                                                        let _e173 = decode(_e135);
                                                        let _e174 = decode(_e169);
                                                        let _e175 = perturb(_e173, _e110, a2_12);
                                                        let _e176 = reference_with_delta(_e174, _e175);
                                                        let _e177 = norm_squared(_e176);
                                                        let _e178 = norm_squared(_e175);
                                                        if (4f < _e177) {
                                                            let _e184 = impl_trait_f32_abs((_e177 - 4f));
                                                            let _e186 = impl_trait_f32_max(1f, _e177);
                                                            if (_e184 <= (0.000004f * _e186)) {
                                                                local_61 = true;
                                                            } else {
                                                                local_61 = false;
                                                            }
                                                        } else {
                                                            local_61 = false;
                                                        }
                                                        let _e197 = local_61;
                                                        let _e198 = is_non_finite(_e175);
                                                        if _e198 {
                                                            local_55 = _e75;
                                                            local_56 = _e77;
                                                            local_57 = _e110;
                                                            local_58 = 1u;
                                                            local_59 = _e83;
                                                            local_60 = _e112;
                                                        } else {
                                                            let _e199 = non_finite(_e177);
                                                            if (_e199 | _e197) {
                                                                local_55 = _e75;
                                                                local_56 = _e77;
                                                                local_57 = _e110;
                                                                local_58 = 1u;
                                                                local_59 = _e83;
                                                                local_60 = _e112;
                                                            } else {
                                                                if (4f < _e177) {
                                                                    local_55 = _e177;
                                                                    local_56 = _e176;
                                                                    local_57 = _e175;
                                                                    local_58 = _e81;
                                                                    local_59 = 1u;
                                                                    local_60 = _e112;
                                                                } else {
                                                                    if (_e177 < _e178) {
                                                                        local_55 = _e75;
                                                                        local_56 = _e176;
                                                                        local_57 = _e176;
                                                                        local_58 = _e81;
                                                                        local_59 = _e83;
                                                                        local_60 = 0u;
                                                                    } else {
                                                                        if (_e112 > (4294967295u - 1u)) {
                                                                            (*fe_trapped_5) = true;
                                                                            break;
                                                                        } else {
                                                                            local_55 = _e75;
                                                                            local_56 = _e176;
                                                                            local_57 = _e175;
                                                                            local_58 = _e81;
                                                                            local_59 = _e83;
                                                                            local_60 = (_e112 + 1u);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                let _e258 = local_55;
                                                let _e260 = local_56;
                                                let _e262 = local_57;
                                                let _e264 = local_58;
                                                let _e266 = local_59;
                                                let _e268 = local_60;
                                                local_45 = (_e73 + 1u);
                                                local_46 = _e258;
                                                local_47 = _e260;
                                                local_48 = _e262;
                                                local_49 = _e264;
                                                local_50 = _e266;
                                                local_51 = _e268;
                                                local_52 = (_e87 + 1u);
                                                continue;
                                            }
                                        }
                                    }
                                }
                                (*fe_trapped_5) = true;
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
            let _e284 = local_46;
            let _e286 = local_47;
            let _e288 = local_48;
            let _e290 = local_49;
            let _e292 = local_50;
            let _e294 = local_51;
            let _e296 = local_52;
            let _e297 = pack_progress_reference(_e294, _e292, _e290);
            let _e299 = from_continuation(_e288, _e286, _e297, _e296, a5_1.f6_, _e284);
            local_42 = _e299;
        }
    }
    let _e303 = local_42;
    return _e303;
}

fn progress_with_presentable(a0_57: u32) -> u32 {
    return (a0_57 | 536870912u);
}

fn with_fade_start(a0_58: FeLocal_fe_shader_private_layout_5_, a1_27: f32) -> FeLocal_fe_shader_private_layout_5_ {
    var fixed_local_3_: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    fixed_local_3_ = a0_58;
    fixed_local_3_.f2_ = a1_27;
    let _e6 = progress_with_presentable(a0_58.f4_);
    fixed_local_3_.f4_ = _e6;
    let _e8 = fixed_local_3_;
    return _e8;
}

fn clamp_(a0_59: f32, a1_28: f32, a2_13: f32) -> f32 {
    var local_62: f32;
    var local_63: bool = false;
    var local_64: f32 = f32();

    if (a0_59 < a1_28) {
        local_64 = a1_28;
    } else {
        if (a2_13 < a0_59) {
            local_64 = a2_13;
        } else {
            local_64 = a0_59;
        }
    }
    let _e11 = local_64;
    return _e11;
}

fn pack_lab(a0_60: FeLocal_fe_shader_private_layout_15_) -> u32 {
    let _e4 = clamp_(a0_60.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_60.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_60.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_15_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_61: f32) -> f32 {
    return floor(a0_61);
}

fn fract_(a0_62: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_62);
    return (a0_62 - _e1);
}

fn anchor(a0_63: u32) -> FeLocal_fe_shader_private_layout_6_ {
    var local_65: FeLocal_fe_shader_private_layout_6_;
    var local_66: bool = false;
    var local_67: FeLocal_fe_shader_private_layout_6_ = FeLocal_fe_shader_private_layout_6_();

    switch a0_63 {
        case 0u: {
            local_67 = FeLocal_fe_shader_private_layout_6_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_67 = FeLocal_fe_shader_private_layout_6_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_67 = FeLocal_fe_shader_private_layout_6_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_67 = FeLocal_fe_shader_private_layout_6_(0.73f, 0.142f, 165f);
        }
        default: {
            local_67 = FeLocal_fe_shader_private_layout_6_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_67;
    return _e29;
}

fn interpolate(a0_64: FeLocal_fe_shader_private_layout_6_, a1_29: FeLocal_fe_shader_private_layout_6_, a2_14: f32) -> FeLocal_fe_shader_private_layout_6_ {
    var local_68: FeLocal_fe_shader_private_layout_6_;
    var local_69: bool = false;
    var local_70: f32 = f32();

    let _e7 = (a1_29.f2_ - a0_64.f2_);
    if (180f < _e7) {
        local_70 = (_e7 - 360f);
    } else {
        if (_e7 < -180f) {
            local_70 = (_e7 + 360f);
        } else {
            local_70 = _e7;
        }
    }
    let _e20 = local_70;
    return FeLocal_fe_shader_private_layout_6_((a0_64.f0_ + ((a1_29.f0_ - a0_64.f0_) * a2_14)), (a0_64.f1_ + ((a1_29.f1_ - a0_64.f1_) * a2_14)), (a0_64.f2_ + (_e20 * a2_14)));
}

fn wrap_pi(a0_65: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_65 / 6.2831855f) + 0.5f));
    return (a0_65 - (6.2831855f * _e5));
}

fn sin_(a0_66: f32) -> f32 {
    let _e1 = wrap_pi(a0_66);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_67: f32) -> f32 {
    let _e3 = sin_((a0_67 + 1.5707964f));
    return _e3;
}

fn to_color(a0_68: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_15_ {
    let _e3 = (a0_68.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_15_(a0_68.f0_, (a0_68.f1_ * _e6), (a0_68.f1_ * _e9));
}

fn escape_palette(a0_69: u32, a1_30: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_71: u32;
    var local_72: bool = false;
    var local_73: u32 = u32();

    let _e5 = from_i32_(a0_69);
    let _e11 = fract_(((_e5 + (4f / a1_30)) / 256f));
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
            local_73 = _e29;
        }
    }
    let _e38 = local_73;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_15_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_70: FeLocal_fe_shader_private_layout_5_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_74: u32;
    var local_75: bool = false;
    var local_76: u32 = u32();

    let _e4 = is_glitched(a0_70);
    if _e4 {
        let _e5 = glitch();
        local_76 = _e5;
    } else {
        let _e6 = is_escaped(a0_70);
        if _e6 {
            let _e9 = escape_palette(a0_70.f5_, a0_70.f7_, fe_trapped_7);
            local_76 = _e9;
        } else {
            let _e10 = interior();
            local_76 = _e10;
        }
    }
    let _e15 = local_76;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

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
    let _e44 = FeLocal_fe_shader_private_layout_8_(_e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40, _e42);
    let _e49 = reference[i32(0u)].active_;
    let _e51 = reference[i32(0u)].active_valid;
    let _e53 = reference[i32(0u)].pending;
    let _e55 = reference[i32(0u)].index;
    let _e57 = reference[i32(0u)].zx_s;
    let _e59 = reference[i32(0u)].zy_s;
    let _e61 = reference[i32(0u)].ready_at;
    let _e63 = can_refine(FeLocal_fe_shader_private_layout_11_(_e49, _e51, _e53, _e55, _e57, _e59, _e61), _e44);
    if _e63 {
    } else {
        local_1 = true;
    }
    let _e223 = local_1;
    if _e223 {
    } else {
        let _e71 = cache[i32(0u)].cursor;
        let _e73 = cache[i32(0u)].epoch;
        let _e75 = cache[i32(0u)].completed;
        if (_e71 < 16u) {
            if (_e75 == 1u) {
                local_3 = true;
            }
            let _e221 = local_3;
            if _e221 {
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
                            let _e129 = seed_pixel(FeLocal_fe_shader_private_layout_13_(_e113, _e115, _e117, _e119, _e121, _e123, _e125, _e127), _e100, global_invocation_id.x, global_invocation_id.y, _e32, (&fe_trapped));
                            if _e129.f3_ {
                            } else {
                                local_3 = true;
                            }
                            let _e212 = local_3;
                            if _e212 {
                            } else {
                                let _e137 = progress_pixels[i32(_e129.f2_)].dz_re;
                                let _e139 = progress_pixels[i32(_e129.f2_)].dz_im;
                                let _e141 = progress_pixels[i32(_e129.f2_)].z_re;
                                let _e143 = progress_pixels[i32(_e129.f2_)].z_im;
                                let _e145 = progress_pixels[i32(_e129.f2_)].reference_i;
                                let _e147 = progress_pixels[i32(_e129.f2_)].iteration;
                                let _e149 = progress_pixels[i32(_e129.f2_)].epoch;
                                let _e151 = progress_pixels[i32(_e129.f2_)].magnitude;
                                let _e152 = FeLocal_fe_shader_private_layout_5_(_e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151);
                                let _e153 = is_presentable_in(_e152, _e73);
                                if _e153 {
                                    local_3 = true;
                                }
                                let _e210 = local_3;
                                if _e210 {
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
                                        let _e175 = sample(_e129);
                                        let _e176 = pixel_delta_from_reference(_e168, _e174, _e175, (&fe_trapped));
                                        let _e177 = advance_progress(_e168, _e176, _e163, _e163, _e162, (&fe_trapped));
                                        let _e179 = with_fade_start(_e177, _e34);
                                        progress_pixels[i32(_e129.f2_)].dz_re = _e179.f0_;
                                        progress_pixels[i32(_e129.f2_)].dz_im = _e179.f1_;
                                        progress_pixels[i32(_e129.f2_)].z_re = _e179.f2_;
                                        progress_pixels[i32(_e129.f2_)].z_im = _e179.f3_;
                                        progress_pixels[i32(_e129.f2_)].reference_i = _e179.f4_;
                                        progress_pixels[i32(_e129.f2_)].iteration = _e179.f5_;
                                        progress_pixels[i32(_e129.f2_)].epoch = _e179.f6_;
                                        progress_pixels[i32(_e129.f2_)].magnitude = _e179.f7_;
                                        let _e198 = progress_color(_e177, (&fe_trapped));
                                        native_pixels[i32(_e129.f2_)] = _e198;
                                        antialiased_pixels[i32(_e129.f2_)] = _e198;
                                        local_3 = true;
                                    }
                                    let _e208 = local_3;
                                    if _e208 {
                                    }
                                }
                            }
                        }
                        let _e214 = local_3;
                        if _e214 {
                        }
                    }
                    let _e216 = local_3;
                    if _e216 {
                    }
                }
                let _e219 = local_3;
                if _e219 {
                } else {
                    fe_trapped = true;
                }
            }
        }
    }
    let _e234 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 16384u))] = u32(_e234);
}
