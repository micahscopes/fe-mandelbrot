struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: f32,
    f1_: f32,
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

struct FeLocal_fe_shader_private_layout_10_ {
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
    f6_: f32,
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
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct FeLocal_fe_shader_private_layout_13_ {
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

fn phase_order(a0_9: u32, a1_4: u32, a2_: u32, a3_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_13: u32;
    var local_14: bool = false;

    let _e6 = from_i32_(a1_4);
    let _e9 = from_i32_(a2_);
    let _e12 = ((_e6 * 0.06711056f) + (_e9 * 0.00583715f));
    let _e13 = to_i32_(_e12);
    let _e14 = from_i32_(_e13);
    let _e17 = ((_e12 - _e14) * 52.982918f);
    let _e18 = to_i32_(_e17);
    let _e19 = from_i32_(_e18);
    let _e24 = (a3_ * a3_);
    let _e25 = (a3_ != 0u);
    if (_e25 && (a3_ > (4294967295u / select(1u, a3_, _e25)))) {
    } else {
        let _e30 = from_i32_(_e24);
        let _e32 = to_i32_(((_e17 - _e19) * _e30));
        let _e37 = (2u * a3_);
        let _e38 = (2u != 0u);
        if (_e38 && (a3_ > (4294967295u / select(1u, 2u, _e38)))) {
        } else {
            let _e45 = (_e37 + 1u);
            if (_e37 > (4294967295u - 1u)) {
            } else {
                let _e51 = (a0_9 * _e45);
                let _e52 = (a0_9 != 0u);
                if (_e52 && (_e45 > (4294967295u / select(1u, a0_9, _e52)))) {
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

fn ordered_2x2_(a0_10: u32, a1_5: u32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e6 = from_i32_(a0_10);
    let _e9 = from_i32_((a0_10 & 1u));
    let _e13 = from_i32_(a1_5);
    let _e16 = from_i32_((a1_5 & 1u));
    return FeLocal_fe_shader_private_layout_7_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_11: FeLocal_fe_shader_private_layout_7_, a1_6: f32) -> FeLocal_fe_shader_private_layout_8_ {
    return FeLocal_fe_shader_private_layout_8_((((a0_11.f0_ / a1_6) * 2f) - 1f), (1f - ((a0_11.f1_ / a1_6) * 2f)));
}

fn empty_progress(a0_12: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_12, 4f);
}

fn precision_lib_two_sum_34a0_(a0_13: f32, a1_7: f32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e2 = (a0_13 + a1_7);
    let _e3 = (_e2 - a0_13);
    return FeLocal_fe_shader_private_layout_10_(_e2, ((a0_13 - (_e2 - _e3)) + (a1_7 - _e3)));
}

fn reference_plus_delta(a0_14: f32, a1_8: f32, a2_1: f32, a3_1: f32, a4_: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_14, a4_);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_8);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_1);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_1);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn invalid_reference(a0_15: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_15: bool;
    var local_16: bool = false;
    var local_17: bool = bool();

    if (a0_15.f0_ == 2143289344u) {
        local_17 = true;
    } else {
        if (a0_15.f4_ == 2143289344u) {
            local_17 = true;
        }
    }
    let _e14 = local_17;
    return _e14;
}

fn non_finite(a0_16: f32) -> bool {
    return (((a0_16 - a0_16) == 0f) == false);
}

fn advance_progress(a1_9: u32, a2_2: f32, a3_2: f32, a4_1: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_18: FeLocal_fe_shader_private_layout_4_;
    var local_19: bool = false;
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var local_22: u32 = u32();
    var local_23: f32 = f32();
    var local_24: f32 = f32();
    var local_25: f32 = f32();
    var local_26: f32 = f32();
    var local_27: f32 = f32();
    var local_28: u32 = u32();
    var local_29: u32 = u32();
    var local_30: u32 = u32();
    var local_31: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_145_: bool;
    var local_32: f32 = f32();
    var local_33: f32 = f32();
    var local_34: u32 = u32();
    var local_35: f32 = f32();
    var local_36: f32 = f32();
    var local_37: f32 = f32();
    var local_38: f32 = f32();
    var local_39: f32 = f32();
    var local_40: u32 = u32();
    var local_41: u32 = u32();
    var local_42: u32 = u32();
    var local_43: bool = bool();

    if (a1_9 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_9 + 8194u))].re_w0_bits;
        if (((a6_.f4_ & 2147483648u) == 0u) == false) {
            local_20 = 1u;
        }
        let _e37 = local_20;
        if (((a6_.f4_ & 1073741824u) == 0u) == false) {
            local_21 = 1u;
        }
        let _e48 = local_21;
        local_22 = 0u;
        local_23 = a6_.f7_;
        local_24 = a6_.f3_;
        local_25 = a6_.f2_;
        local_26 = a6_.f1_;
        local_27 = a6_.f0_;
        local_28 = _e48;
        local_29 = (a6_.f4_ & 1073741823u);
        local_30 = _e37;
        local_31 = a6_.f5_;
        loop {
            let _e74 = local_22;
            let _e76 = local_23;
            let _e78 = local_24;
            let _e80 = local_25;
            let _e82 = local_26;
            let _e84 = local_27;
            let _e86 = local_28;
            let _e88 = local_29;
            let _e90 = local_30;
            let _e92 = local_31;
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
                                local_32 = _e78;
                                local_33 = _e80;
                                local_34 = 0u;
                            } else {
                                local_32 = _e82;
                                local_33 = _e84;
                                local_34 = _e88;
                            }
                            let _e129 = local_32;
                            let _e131 = local_33;
                            let _e133 = local_34;
                            if (a1_9 > (4294967295u - _e133)) {
                            } else {
                                let _e141 = orbit[i32((a1_9 + _e133))].re_w0_bits;
                                let _e143 = orbit[i32((a1_9 + _e133))].re_w1_bits;
                                let _e145 = orbit[i32((a1_9 + _e133))].re_w2_bits;
                                let _e147 = orbit[i32((a1_9 + _e133))].re_w3_bits;
                                let _e149 = orbit[i32((a1_9 + _e133))].im_w0_bits;
                                let _e151 = orbit[i32((a1_9 + _e133))].im_w1_bits;
                                let _e153 = orbit[i32((a1_9 + _e133))].im_w2_bits;
                                let _e155 = orbit[i32((a1_9 + _e133))].im_w3_bits;
                                let _e158 = (a1_9 + _e133);
                                if (a1_9 > (4294967295u - _e133)) {
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
                                        let _e193 = invalid_reference(FeLocal_fe_shader_private_layout_6_(_e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155));
                                        if _e193 {
                                            local_35 = _e76;
                                            local_36 = _e78;
                                            local_37 = _e80;
                                            local_38 = _e129;
                                            local_39 = _e131;
                                            local_40 = 1u;
                                            local_41 = _e133;
                                            local_42 = _e90;
                                        } else {
                                            let _e194 = invalid_reference(FeLocal_fe_shader_private_layout_6_(_e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191));
                                            if _e194 {
                                                local_35 = _e76;
                                                local_36 = _e78;
                                                local_37 = _e80;
                                                local_38 = _e129;
                                                local_39 = _e131;
                                                local_40 = 1u;
                                                local_41 = _e133;
                                                local_42 = _e90;
                                            } else {
                                                let _e196 = bitcast<f32>(_e141);
                                                let _e197 = bitcast<f32>(_e143);
                                                let _e198 = bitcast<f32>(_e145);
                                                let _e199 = bitcast<f32>(_e147);
                                                let _e200 = bitcast<f32>(_e149);
                                                let _e201 = bitcast<f32>(_e151);
                                                let _e202 = bitcast<f32>(_e153);
                                                let _e203 = bitcast<f32>(_e155);
                                                let _e249 = ((((2f * ((_e196 * _e131) - (_e200 * _e129))) + (2f * ((((((_e197 * _e131) - (_e201 * _e129)) + (_e198 * _e131)) - (_e202 * _e129)) + (_e199 * _e131)) - (_e203 * _e129)))) + ((_e131 * _e131) - (_e129 * _e129))) + a2_2);
                                                let _e259 = ((((2f * ((_e196 * _e129) + (_e200 * _e131))) + (2f * ((((((_e197 * _e129) + (_e201 * _e131)) + (_e198 * _e129)) + (_e202 * _e131)) + (_e199 * _e129)) + (_e203 * _e131)))) + ((2f * _e131) * _e129)) + a3_2);
                                                let _e260 = reference_plus_delta(bitcast<f32>(_e177), bitcast<f32>(_e179), bitcast<f32>(_e181), bitcast<f32>(_e183), _e249);
                                                let _e261 = reference_plus_delta(bitcast<f32>(_e185), bitcast<f32>(_e187), bitcast<f32>(_e189), bitcast<f32>(_e191), _e259);
                                                let _e264 = ((_e260 * _e260) + (_e261 * _e261));
                                                if (4f < _e264) {
                                                    let _e273 = impl_trait_f32_abs((_e264 - 4f));
                                                    let _e275 = impl_trait_f32_max(1f, _e264);
                                                    if (_e273 <= (0.000004f * _e275)) {
                                                        local_43 = true;
                                                    } else {
                                                        local_43 = false;
                                                    }
                                                } else {
                                                    local_43 = false;
                                                }
                                                let _e286 = local_43;
                                                let _e287 = non_finite(_e249);
                                                if _e287 {
                                                    local_35 = _e76;
                                                    local_36 = _e78;
                                                    local_37 = _e80;
                                                    local_38 = _e129;
                                                    local_39 = _e131;
                                                    local_40 = 1u;
                                                    local_41 = _e133;
                                                    local_42 = _e90;
                                                } else {
                                                    let _e288 = non_finite(_e259);
                                                    if _e288 {
                                                        local_35 = _e76;
                                                        local_36 = _e78;
                                                        local_37 = _e80;
                                                        local_38 = _e129;
                                                        local_39 = _e131;
                                                        local_40 = 1u;
                                                        local_41 = _e133;
                                                        local_42 = _e90;
                                                    } else {
                                                        let _e289 = non_finite(_e264);
                                                        if (_e289 | _e286) {
                                                            local_35 = _e76;
                                                            local_36 = _e78;
                                                            local_37 = _e80;
                                                            local_38 = _e129;
                                                            local_39 = _e131;
                                                            local_40 = 1u;
                                                            local_41 = _e133;
                                                            local_42 = _e90;
                                                        } else {
                                                            if (4f < _e264) {
                                                                local_35 = _e264;
                                                                local_36 = _e261;
                                                                local_37 = _e260;
                                                                local_38 = _e259;
                                                                local_39 = _e249;
                                                                local_40 = _e86;
                                                                local_41 = _e133;
                                                                local_42 = 1u;
                                                            } else {
                                                                if (_e264 < ((_e249 * _e249) + (_e259 * _e259))) {
                                                                    local_35 = _e76;
                                                                    local_36 = _e261;
                                                                    local_37 = _e260;
                                                                    local_38 = _e261;
                                                                    local_39 = _e260;
                                                                    local_40 = _e86;
                                                                    local_41 = 0u;
                                                                    local_42 = _e90;
                                                                } else {
                                                                    if (_e133 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_3) = true;
                                                                        break;
                                                                    } else {
                                                                        local_35 = _e76;
                                                                        local_36 = _e261;
                                                                        local_37 = _e260;
                                                                        local_38 = _e259;
                                                                        local_39 = _e249;
                                                                        local_40 = _e86;
                                                                        local_41 = (_e133 + 1u);
                                                                        local_42 = _e90;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e371 = local_35;
                                        let _e373 = local_36;
                                        let _e375 = local_37;
                                        let _e377 = local_38;
                                        let _e379 = local_39;
                                        let _e381 = local_40;
                                        let _e383 = local_41;
                                        let _e385 = local_42;
                                        local_22 = (_e74 + 1u);
                                        local_23 = _e371;
                                        local_24 = _e373;
                                        local_25 = _e375;
                                        local_26 = _e377;
                                        local_27 = _e379;
                                        local_28 = _e381;
                                        local_29 = _e383;
                                        local_30 = _e385;
                                        local_31 = (_e92 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_3) = true;
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
            local_18 = _e438;
            local_19 = true;
        }
    }
    let _e444 = local_19;
    if _e444 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e446 = local_18;
    return _e446;
}

fn from_quad(a0_17: f32, a1_10: f32, a2_3: f32, a3_3: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_17, FeLocal_fe_shader_private_layout_2_(a1_10, FeLocal_fe_shader_private_layout_1_(a2_3, FeLocal_fe_shader_private_layout_0_(a3_3))));
}

fn impl_trait_Last_negate(a0_18: f32) -> f32 {
    return -(a0_18);
}

fn negate_ge630_(a0_19: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_19.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_19.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_20: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_20.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_20.f0_), _e4);
}

fn negate_ga905_(a0_21: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_21.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_21.f0_), _e4);
}

fn impl_trait_Last_add_corr(a0_22: f32, a1_11: f32, a2_4: f32) -> f32 {
    return ((a2_4 + a0_22) + a1_11);
}

fn add_corr_ge630_(a0_23: FeLocal_fe_shader_private_layout_1_, a1_12: FeLocal_fe_shader_private_layout_1_, a2_5: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_23.f0_, a2_5);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_12.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_23.f1_.f0_, a1_12.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_24: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_24.f0_;
}

fn with_head_ge630_(a0_25: FeLocal_fe_shader_private_layout_1_, a1_13: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_13, FeLocal_fe_shader_private_layout_0_(a0_25.f1_.f0_));
}

fn add_corr_g4419_(a0_26: FeLocal_fe_shader_private_layout_2_, a1_14: FeLocal_fe_shader_private_layout_2_, a2_6: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_26.f0_, a2_6);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_14.f0_);
    let _e14 = add_corr_ge630_(a0_26.f1_, a1_14.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_27: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_27.f0_;
}

fn with_head_g4419_(a0_28: FeLocal_fe_shader_private_layout_2_, a1_15: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_15, a0_28.f1_);
}

fn add_corr_ga905_(a0_29: FeLocal_fe_shader_private_layout_3_, a1_16: FeLocal_fe_shader_private_layout_3_, a2_7: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_29.f0_, a2_7);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_16.f0_);
    let _e14 = add_corr_g4419_(a0_29.f1_, a1_16.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_30: FeLocal_fe_shader_private_layout_3_, a1_17: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_17);
    let _e4 = add_corr_ga905_(a0_30, _e2, 0f);
    return _e4;
}

fn to_quad(a0_31: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_(a0_31.f0_, a0_31.f1_.f0_, a0_31.f1_.f1_.f0_, a0_31.f1_.f1_.f1_.f0_);
}

fn sample_progress(a1_18: u32, a2_8: f32, a3_4: f32, a4_2: f32, a5_1: f32, a6_1: f32, a7_: f32, a8_: f32, a9_: f32, a10_: f32, a11_: f32, a12_: u32, a13_: u32, a14_: u32, a15_: f32, a16_: f32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_44: FeLocal_fe_shader_private_layout_4_;
    var local_45: bool = false;
    var local_46: u32 = u32();

    let _e19 = ordered_2x2_(a12_, a13_);
    let _e25 = plane(FeLocal_fe_shader_private_layout_7_((_e19.f0_ + a15_), (_e19.f1_ + a16_)), a11_);
    if (a1_18 > (4294967295u - 8193u)) {
    } else {
        let _e36 = orbit[i32((a1_18 + 8193u))].re_w0_bits;
        let _e38 = orbit[i32((a1_18 + 8193u))].re_w1_bits;
        let _e40 = orbit[i32((a1_18 + 8193u))].re_w2_bits;
        let _e42 = orbit[i32((a1_18 + 8193u))].re_w3_bits;
        let _e44 = orbit[i32((a1_18 + 8193u))].im_w0_bits;
        let _e46 = orbit[i32((a1_18 + 8193u))].im_w1_bits;
        let _e48 = orbit[i32((a1_18 + 8193u))].im_w2_bits;
        let _e50 = orbit[i32((a1_18 + 8193u))].im_w3_bits;
        let _e59 = from_quad(a2_8, a3_4, a4_2, a5_1);
        let _e60 = from_quad(bitcast<f32>(_e36), bitcast<f32>(_e38), bitcast<f32>(_e40), bitcast<f32>(_e42));
        let _e61 = sub(_e59, _e60);
        let _e62 = from_quad(a6_1, a7_, a8_, a9_);
        let _e63 = from_quad(bitcast<f32>(_e44), bitcast<f32>(_e46), bitcast<f32>(_e48), bitcast<f32>(_e50));
        let _e64 = sub(_e62, _e63);
        let _e65 = to_quad(_e61);
        let _e70 = to_quad(_e64);
        let _e76 = reference_plus_delta(_e65.f0_, _e65.f1_, _e65.f2_, _e65.f3_, (_e25.f0_ * a10_));
        let _e78 = reference_plus_delta(_e70.f0_, _e70.f1_, _e70.f2_, _e70.f3_, (_e25.f1_ * a10_));
        if (a1_18 > (4294967295u - 8194u)) {
            (*fe_trapped_4) = true;
        }
        let _e89 = orbit[i32((a1_18 + 8194u))].re_w1_bits;
        if (a14_ < _e89) {
            local_46 = a14_;
        } else {
            local_46 = _e89;
        }
        let _e94 = local_46;
        let _e96 = empty_progress(0u);
        let _e97 = advance_progress(a1_18, _e76, _e78, _e94, _e94, _e96, fe_trapped_4);
        local_44 = _e97;
        local_45 = true;
    }
    let _e103 = local_45;
    if _e103 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e105 = local_44;
    return _e105;
}

fn clamp_(a0_32: f32, a1_19: f32, a2_9: f32) -> f32 {
    var local_47: f32;
    var local_48: bool = false;
    var local_49: f32 = f32();

    if (a0_32 < a1_19) {
        local_49 = a1_19;
    } else {
        if (a2_9 < a0_32) {
            local_49 = a2_9;
        } else {
            local_49 = a0_32;
        }
    }
    let _e11 = local_49;
    return _e11;
}

fn packed(a0_33: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e4 = clamp_(a0_33.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_33.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_33.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_34: f32) -> f32 {
    return floor(a0_34);
}

fn fract_(a0_35: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_35);
    return (a0_35 - _e1);
}

fn anchor(a0_36: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_50: FeLocal_fe_shader_private_layout_5_;
    var local_51: bool = false;
    var local_52: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_36 {
        case 0u: {
            local_52 = FeLocal_fe_shader_private_layout_5_(0.79f, 0.085f, 275f);
        }
        case 1u: {
            local_52 = FeLocal_fe_shader_private_layout_5_(0.86f, 0.075f, 335f);
        }
        case 2u: {
            local_52 = FeLocal_fe_shader_private_layout_5_(0.88f, 0.075f, 65f);
        }
        case 3u: {
            local_52 = FeLocal_fe_shader_private_layout_5_(0.86f, 0.075f, 165f);
        }
        default: {
            local_52 = FeLocal_fe_shader_private_layout_5_(0.81f, 0.075f, 235f);
        }
    }
    let _e29 = local_52;
    return _e29;
}

fn wrap_pi(a0_37: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_37 / 6.2831855f) + 0.5f));
    return (a0_37 - (6.2831855f * _e5));
}

fn sin_(a0_38: f32) -> f32 {
    let _e1 = wrap_pi(a0_38);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_39: f32) -> f32 {
    let _e3 = sin_((a0_39 + 1.5707964f));
    return _e3;
}

fn escape_palette(a0_40: u32, a1_20: f32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_53: u32;
    var local_54: bool = false;
    var local_55: u32 = u32();
    var local_56: u32;
    var local_57: bool = false;
    var local_58: f32 = f32();

    let _e5 = from_i32_(a0_40);
    let _e11 = fract_(((_e5 + (4f / a1_20)) / 256f));
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
            (*fe_trapped_5) = true;
        } else {
            local_55 = _e29;
        }
    }
    let _e40 = local_55;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_58 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_58 = (_e44 + 360f);
        } else {
            local_58 = _e44;
        }
    }
    let _e57 = local_58;
    let _e62 = ((_e23.f2_ + (_e57 * _e22)) * 0.017453292f);
    let _e68 = (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22));
    let _e75 = cos_(_e62);
    let _e77 = sin_(_e62);
    let _e80 = packed(FeLocal_fe_shader_private_layout_5_((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e68 * _e75), (_e68 * _e77)));
    return _e80;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_41: FeLocal_fe_shader_private_layout_4_, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_59: u32;
    var local_60: bool = false;
    var local_61: u32 = u32();

    if (((a0_41.f4_ & 1073741824u) == 0u) == false) {
        let _e11 = glitch();
        local_61 = _e11;
    } else {
        if (((a0_41.f4_ & 2147483648u) == 0u) == false) {
            let _e21 = escape_palette(a0_41.f5_, a0_41.f7_, fe_trapped_6);
            local_61 = _e21;
        } else {
            let _e22 = interior();
            local_61 = _e22;
        }
    }
    let _e27 = local_61;
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
    let _e44 = reference[i32(0u)].active_;
    let _e46 = reference[i32(0u)].active_valid;
    let _e48 = reference[i32(0u)].pending;
    if (_e48 == 1u) {
    } else {
        if (_e46 == 0u) {
        } else {
            if (0.5f <= _e38) {
            } else {
                if ((_e32 - _e34) < 60f) {
                    local_1 = true;
                }
                let _e333 = local_1;
                if _e333 {
                } else {
                    let _e64 = cache[i32(0u)].cursor;
                    let _e65 = iteration_limit(_e28, (&fe_trapped));
                    let _e69 = ((_e65 + 2047u) / 2048u);
                    let _e74 = to_i32_(((_e30 + 127f) / 128f));
                    let _e79 = to_i32_(((_e30 + 255f) / 256f));
                    let _e83 = (_e69 * _e74);
                    let _e84 = (_e69 != 0u);
                    if (_e84 && (_e74 > (4294967295u / select(1u, _e69, _e84)))) {
                    } else {
                        let _e92 = (_e83 * _e79);
                        let _e93 = (_e83 != 0u);
                        if (_e93 && (_e79 > (4294967295u / select(1u, _e83, _e93)))) {
                        } else {
                            let _e102 = to_i32_(((_e30 + 255f) / 256f));
                            if (_e64 < _e92) {
                            } else {
                                let _e107 = (_e102 * _e102);
                                let _e108 = (_e102 != 0u);
                                if (_e108 && (_e102 > (4294967295u / select(1u, _e102, _e108)))) {
                                } else {
                                    if (_e92 > (4294967295u - _e107)) {
                                    } else {
                                        if (_e64 < (_e92 + _e107)) {
                                        } else {
                                            local_1 = true;
                                        }
                                        let _e317 = local_1;
                                        if _e317 {
                                        } else {
                                            if (_e64 < _e92) {
                                            } else {
                                                let _e122 = phase_order((_e64 - _e92), global_invocation_id.x, global_invocation_id.y, _e102, (&fe_trapped));
                                                let _e126 = (global_invocation_id.x * _e102);
                                                let _e127 = (global_invocation_id.x != 0u);
                                                if (_e127 && (_e102 > (4294967295u / select(1u, global_invocation_id.x, _e127)))) {
                                                } else {
                                                    if (_e102 == 0u) {
                                                    } else {
                                                        let _e134 = (_e122 % _e102);
                                                        let _e136 = (_e126 + _e134);
                                                        if (_e126 > (4294967295u - _e134)) {
                                                        } else {
                                                            let _e142 = (global_invocation_id.y * _e102);
                                                            let _e143 = (global_invocation_id.y != 0u);
                                                            if (_e143 && (_e102 > (4294967295u / select(1u, global_invocation_id.y, _e143)))) {
                                                            } else {
                                                                let _e148 = (_e122 / _e102);
                                                                let _e150 = (_e142 + _e148);
                                                                if (_e142 > (4294967295u - _e148)) {
                                                                } else {
                                                                    let _e153 = from_i32_(_e136);
                                                                    if (_e30 <= _e153) {
                                                                    } else {
                                                                        let _e155 = from_i32_(_e150);
                                                                        if (_e30 <= _e155) {
                                                                            local_1 = true;
                                                                        }
                                                                        let _e299 = local_1;
                                                                        if _e299 {
                                                                        } else {
                                                                            let _e161 = ((_e150 << 11u) | _e136);
                                                                            let _e164 = native_pixels[i32(_e161)];
                                                                            let _e165 = color(_e164);
                                                                            let _e166 = from_i32_(_e136);
                                                                            let _e167 = from_i32_(_e150);
                                                                            let _e171 = impl_trait_f32_max(0f, (_e166 - 1f));
                                                                            let _e172 = to_i32_(_e171);
                                                                            let _e177 = impl_trait_f32_min((_e30 - 1f), (_e166 + 1f));
                                                                            let _e178 = to_i32_(_e177);
                                                                            let _e182 = impl_trait_f32_max(0f, (_e167 - 1f));
                                                                            let _e183 = to_i32_(_e182);
                                                                            let _e188 = impl_trait_f32_min((_e30 - 1f), (_e167 + 1f));
                                                                            let _e189 = to_i32_(_e188);
                                                                            let _e195 = native_pixels[i32(((_e150 << 11u) | _e172))];
                                                                            let _e196 = color(_e195);
                                                                            let _e197 = contrast(_e165, _e196);
                                                                            let _e203 = native_pixels[i32(((_e150 << 11u) | _e178))];
                                                                            let _e204 = color(_e203);
                                                                            let _e205 = contrast(_e165, _e204);
                                                                            let _e206 = impl_trait_f32_max(_e197, _e205);
                                                                            let _e212 = native_pixels[i32(((_e183 << 11u) | _e136))];
                                                                            let _e213 = color(_e212);
                                                                            let _e214 = contrast(_e165, _e213);
                                                                            let _e220 = native_pixels[i32(((_e189 << 11u) | _e136))];
                                                                            let _e221 = color(_e220);
                                                                            let _e222 = contrast(_e165, _e221);
                                                                            let _e223 = impl_trait_f32_max(_e214, _e222);
                                                                            let _e224 = impl_trait_f32_max(_e206, _e223);
                                                                            if (0.5f <= _e36) {
                                                                                if (0.12f < _e224) {
                                                                                    let _e234 = (_e44 != 0u);
                                                                                    if (_e234 && (8195u > (4294967295u / select(1u, _e44, _e234)))) {
                                                                                    } else {
                                                                                        let _e239 = iteration_limit(_e28, (&fe_trapped));
                                                                                        let _e242 = sample_progress((_e44 * 8195u), _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e136, _e150, _e239, 0.28f, -0.28f, (&fe_trapped));
                                                                                        let _e243 = progress_color(_e242, (&fe_trapped));
                                                                                        let _e244 = color(_e243);
                                                                                        let _e250 = (_e44 != 0u);
                                                                                        if (_e250 && (8195u > (4294967295u / select(1u, _e44, _e250)))) {
                                                                                            fe_trapped = true;
                                                                                        }
                                                                                        let _e256 = iteration_limit(_e28, (&fe_trapped));
                                                                                        let _e259 = sample_progress((_e44 * 8195u), _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e136, _e150, _e256, -0.28f, 0.28f, (&fe_trapped));
                                                                                        let _e260 = progress_color(_e259, (&fe_trapped));
                                                                                        let _e261 = color(_e260);
                                                                                        let _e284 = packed(FeLocal_fe_shader_private_layout_5_((((_e165.f0_ + _e244.f0_) + _e261.f0_) / 3f), (((_e165.f1_ + _e244.f1_) + _e261.f1_) / 3f), (((_e165.f2_ + _e244.f2_) + _e261.f2_) / 3f)));
                                                                                        antialiased_pixels[i32(_e161)] = _e284;
                                                                                        local_1 = true;
                                                                                    }
                                                                                    let _e291 = local_1;
                                                                                    if _e291 {
                                                                                    } else {
                                                                                        fe_trapped = true;
                                                                                    }
                                                                                }
                                                                                let _e293 = local_1;
                                                                                if _e293 {
                                                                                }
                                                                            }
                                                                            let _e297 = local_1;
                                                                            if _e297 {
                                                                            } else {
                                                                                local_1 = true;
                                                                            }
                                                                        }
                                                                    }
                                                                    let _e303 = local_1;
                                                                    if _e303 {
                                                                    } else {
                                                                        local_1 = true;
                                                                    }
                                                                }
                                                                let _e305 = local_1;
                                                                if _e305 {
                                                                }
                                                            }
                                                            let _e307 = local_1;
                                                            if _e307 {
                                                            }
                                                        }
                                                        let _e309 = local_1;
                                                        if _e309 {
                                                        }
                                                    }
                                                    let _e311 = local_1;
                                                    if _e311 {
                                                    }
                                                }
                                                let _e313 = local_1;
                                                if _e313 {
                                                }
                                            }
                                            let _e315 = local_1;
                                            if _e315 {
                                            }
                                        }
                                    }
                                    let _e319 = local_1;
                                    if _e319 {
                                    }
                                }
                                let _e322 = local_1;
                                if _e322 {
                                } else {
                                    fe_trapped = true;
                                }
                            }
                            let _e326 = local_1;
                            if _e326 {
                            } else {
                                local_1 = true;
                            }
                        }
                        let _e328 = local_1;
                        if _e328 {
                        }
                    }
                    let _e331 = local_1;
                    if _e331 {
                    } else {
                        fe_trapped = true;
                    }
                }
            }
            let _e335 = local_1;
            if _e335 {
            }
        }
        let _e337 = local_1;
        if _e337 {
        }
    }
    let _e348 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e348);
}
