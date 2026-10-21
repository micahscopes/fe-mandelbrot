struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: u32,
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
    f8_: u32,
    f9_: u32,
    f10_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_0_,
    f2_: u32,
    f3_: bool,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: u32,
    f2_: u32,
    f3_: FeLocal_fe_shader_private_layout_3_,
    f4_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: bool,
    f1_: bool,
    f2_: bool,
    f3_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: bool,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_8_,
    f2_: FeLocal_fe_shader_private_layout_8_,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: FeLocal_fe_shader_private_layout_8_,
    f7_: u32,
    f8_: FeLocal_fe_shader_private_layout_8_,
    f9_: u32,
    f10_: u32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: u32,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: FeLocal_fe_shader_private_layout_8_,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct Params {
    p6_: f32,
    p7_: f32,
    p8_: f32,
    p9_: f32,
}

@group(0) @binding(0)
var<storage, read_write> proof: array<u32>;
@group(0) @binding(1)
var<storage> params: Params;
@group(0) @binding(2)
var<storage, read_write> trap: array<u32, 1>;

fn to_i32_(a0_: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_)), 2147483648u, (a0_ <= -2147483600f)), 2147483647u, (a0_ >= 2147483600f)), (a0_ == a0_));
}

fn impl_EscapesByQ12_new(a0_1: u32, a1_: u32, a2_: u32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(a0_1, a1_), a2_);
}

fn square(a0_2: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_10: u32;
    var local_11: bool = false;

    let _e9 = ((a0_2 & 2147483648u) != 0u);
    let _e10 = ((a0_2 & 2147483648u) != 0u);
    let _e14 = select(a0_2, (0u - a0_2), _e9);
    let _e18 = (_e14 != 0u);
    if (_e18 && (select(a0_2, (0u - a0_2), _e10) > (select((2147483648u - 1u), 2147483648u, (_e9 != _e10)) / select(1u, _e14, _e18)))) {
        (*fe_trapped_1) = true;
    } else {
        local_10 = (a0_2 * a0_2);
        local_11 = true;
    }
    let _e28 = local_10;
    return _e28;
}

fn derive_air_words(a0_3: u32, a1_1: u32, a2_1: u32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_6_ {
    var local_12: FeLocal_fe_shader_private_layout_6_;
    var local_13: bool = false;
    var local_14: u32 = u32();

    let _e5 = square(a1_1, fe_trapped_2);
    let _e6 = square(a2_1, fe_trapped_2);
    let _e9 = (_e5 + _e6);
    if ((((_e5 ^ _e9) & (_e6 ^ _e9)) & 2147483648u) != 0u) {
    } else {
        let _e17 = (_e5 - _e6);
        if ((((_e5 ^ _e17) & (_e5 ^ _e6)) & 2147483648u) != 0u) {
        } else {
            let _e26 = bitcast<u32>((bitcast<i32>(_e17) >> 12u));
            let _e31 = (a1_1 * 2u);
            let _e34 = ((a1_1 & 2147483648u) != 0u);
            let _e35 = ((2u & 2147483648u) != 0u);
            let _e39 = select(a1_1, (0u - a1_1), _e34);
            let _e43 = (_e39 != 0u);
            if (_e43 && (select(2u, (0u - 2u), _e35) > (select((2147483648u - 1u), 2147483648u, (_e34 != _e35)) / select(1u, _e39, _e43)))) {
            } else {
                let _e51 = (_e31 * a2_1);
                let _e54 = ((_e31 & 2147483648u) != 0u);
                let _e55 = ((a2_1 & 2147483648u) != 0u);
                let _e59 = select(_e31, (0u - _e31), _e54);
                let _e63 = (_e59 != 0u);
                if (_e63 && (select(a2_1, (0u - a2_1), _e55) > (select((2147483648u - 1u), 2147483648u, (_e54 != _e55)) / select(1u, _e59, _e63)))) {
                } else {
                    let _e71 = bitcast<u32>((bitcast<i32>(_e51) >> 12u));
                    let _e76 = (_e26 * 4096u);
                    let _e79 = ((_e26 & 2147483648u) != 0u);
                    let _e80 = ((4096u & 2147483648u) != 0u);
                    let _e84 = select(_e26, (0u - _e26), _e79);
                    let _e88 = (_e84 != 0u);
                    if (_e88 && (select(4096u, (0u - 4096u), _e80) > (select((2147483648u - 1u), 2147483648u, (_e79 != _e80)) / select(1u, _e84, _e88)))) {
                    } else {
                        let _e95 = (_e17 - _e76);
                        if ((((_e17 ^ _e95) & (_e17 ^ _e76)) & 2147483648u) != 0u) {
                        } else {
                            let _e105 = (_e71 * 4096u);
                            let _e108 = ((_e71 & 2147483648u) != 0u);
                            let _e109 = ((4096u & 2147483648u) != 0u);
                            let _e113 = select(_e71, (0u - _e71), _e108);
                            let _e117 = (_e113 != 0u);
                            if (_e117 && (select(4096u, (0u - 4096u), _e109) > (select((2147483648u - 1u), 2147483648u, (_e108 != _e109)) / select(1u, _e113, _e117)))) {
                            } else {
                                let _e124 = (_e51 - _e105);
                                if ((((_e51 ^ _e124) & (_e51 ^ _e105)) & 2147483648u) != 0u) {
                                    (*fe_trapped_2) = true;
                                }
                                if ((bitcast<i32>(_e9) < bitcast<i32>(67108864u)) == false) {
                                    local_14 = 1u;
                                }
                                let _e141 = local_14;
                                local_12 = FeLocal_fe_shader_private_layout_6_(a0_3, a1_1, a2_1, _e5, _e6, _e9, _e26, _e95, _e71, _e124, _e141);
                                local_13 = true;
                            }
                            let _e147 = local_13;
                            if _e147 {
                            }
                        }
                        let _e149 = local_13;
                        if _e149 {
                        }
                    }
                    let _e151 = local_13;
                    if _e151 {
                    }
                }
                let _e153 = local_13;
                if _e153 {
                }
            }
            let _e155 = local_13;
            if _e155 {
            }
        }
        let _e157 = local_13;
        if _e157 {
        }
    }
    let _e160 = local_13;
    if _e160 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e162 = local_12;
    return _e162;
}

fn derived_air_words(a0_4: u32, a1_2: FeLocal_fe_shader_private_layout_0_, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_6_ {
    let _e5 = derive_air_words(a0_4, a1_2.f0_, a1_2.f1_, fe_trapped_3);
    return _e5;
}

fn projected_air_row(a0_5: u32, a1_3: u32, a2_2: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, a8_: u32, a9_: u32, a10_: bool) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_2_(a0_5, FeLocal_fe_shader_private_layout_0_(a1_3, a2_2), a5_, a10_), a3_, a4_, FeLocal_fe_shader_private_layout_3_(a6_, a7_), FeLocal_fe_shader_private_layout_3_(a8_, a9_));
}

fn air_row_from_words(a0_6: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e14 = projected_air_row(a0_6.f0_, a0_6.f1_, a0_6.f2_, a0_6.f3_, a0_6.f4_, a0_6.f5_, a0_6.f6_, a0_6.f7_, a0_6.f8_, a0_6.f9_, (a0_6.f10_ == 1u));
    return _e14;
}

fn air_row(a0_7: u32, a1_4: FeLocal_fe_shader_private_layout_0_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    let _e3 = derived_air_words(a0_7, a1_4, fe_trapped_4);
    let _e4 = air_row_from_words(_e3);
    return _e4;
}

fn impl_EscapeTraceStream_new(a0_8: FeLocal_fe_shader_private_layout_1_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = air_row(0u, FeLocal_fe_shader_private_layout_0_(), fe_trapped_5);
    return FeLocal_fe_shader_private_layout_5_(a0_8, _e4);
}

fn escape_claim_is_valid(a0_9: u32, a1_5: u32, a2_3: u32) -> bool {
    var local_15: bool;
    var local_16: bool = false;
    var local_17: bool = bool();

    if ((bitcast<i32>(a0_9) < bitcast<i32>(4294959104u)) == false) {
        if (bitcast<i32>(a0_9) < bitcast<i32>(4096u)) {
            if ((bitcast<i32>(a1_5) < bitcast<i32>(4294961152u)) == false) {
                if (bitcast<i32>(a1_5) < bitcast<i32>(6144u)) {
                    if ((1048576u < a2_3) == false) {
                        local_17 = true;
                    }
                }
            }
        }
    }
    let _e32 = local_17;
    return _e32;
}

fn impl_EscapesByQ12_is_valid(a0_10: FeLocal_fe_shader_private_layout_1_) -> bool {
    let _e6 = escape_claim_is_valid(a0_10.f0_.f0_, a0_10.f0_.f1_, a0_10.f1_);
    return _e6;
}

fn impl_EscapeTraceStream_is_valid(a0_11: FeLocal_fe_shader_private_layout_5_) -> bool {
    let _e2 = impl_EscapesByQ12_is_valid(a0_11.f0_);
    return _e2;
}

fn current_proof_row(a0_12: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_7_ {
    var local_18: FeLocal_fe_shader_private_layout_7_;
    var local_19: bool = false;
    var local_20: bool = bool();

    let _e3 = impl_EscapeTraceStream_is_valid(a0_12);
    let _e4 = impl_EscapeTraceStream_is_valid(a0_12);
    let _e5 = impl_EscapeTraceStream_is_valid(a0_12);
    if _e5 {
        if a0_12.f1_.f0_.f3_ {
            local_20 = true;
        }
    }
    let _e12 = local_20;
    return FeLocal_fe_shader_private_layout_7_(_e3, _e4, _e12, a0_12.f1_);
}

fn wrapping_sub(a0_13: u32, a1_6: u32) -> u32 {
    return (a0_13 - a1_6);
}

fn unsigned_abs(a0_14: u32) -> u32 {
    var local_21: u32;
    var local_22: bool = false;
    var local_23: u32 = u32();

    if (bitcast<i32>(a0_14) < bitcast<i32>(0u)) {
        let _e8 = wrapping_sub(0u, a0_14);
        local_23 = _e8;
    } else {
        local_23 = a0_14;
    }
    let _e12 = local_23;
    return _e12;
}

fn signed_magnitude(a0_15: u32) -> FeLocal_fe_shader_private_layout_12_ {
    let _e5 = unsigned_abs(a0_15);
    return FeLocal_fe_shader_private_layout_12_((bitcast<i32>(a0_15) < bitcast<i32>(0u)), _e5);
}

fn encode_signed_word(a0_16: u32) -> FeLocal_fe_shader_private_layout_8_ {
    var local_24: FeLocal_fe_shader_private_layout_8_;
    var local_25: bool = false;
    var local_26: u32 = u32();

    let _e3 = signed_magnitude(a0_16);
    if _e3.f0_ {
        local_26 = 1u;
    }
    let _e8 = local_26;
    return FeLocal_fe_shader_private_layout_8_(_e8, _e3.f1_);
}

fn encode_air_words(a0_17: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e12 = encode_signed_word(a0_17.f1_);
    let _e13 = encode_signed_word(a0_17.f2_);
    let _e14 = encode_signed_word(a0_17.f6_);
    let _e15 = encode_signed_word(a0_17.f8_);
    return FeLocal_fe_shader_private_layout_9_(a0_17.f0_, _e12, _e13, a0_17.f3_, a0_17.f4_, a0_17.f5_, _e14, a0_17.f7_, _e15, a0_17.f9_, a0_17.f10_);
}

fn encode_air_row(a0_18: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_9_ {
    var local_27: FeLocal_fe_shader_private_layout_9_;
    var local_28: bool = false;
    var local_29: u32 = u32();

    if a0_18.f0_.f3_ {
        local_29 = 1u;
    }
    let _e28 = local_29;
    let _e30 = encode_air_words(FeLocal_fe_shader_private_layout_6_(a0_18.f0_.f0_, a0_18.f0_.f1_.f0_, a0_18.f0_.f1_.f1_, a0_18.f1_, a0_18.f2_, a0_18.f0_.f2_, a0_18.f3_.f0_, a0_18.f3_.f1_, a0_18.f4_.f0_, a0_18.f4_.f1_, _e28));
    return _e30;
}

fn encode_proof_row(a0_19: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_10_ {
    var local_30: FeLocal_fe_shader_private_layout_10_;
    var local_31: bool = false;
    var local_32: u32 = u32();
    var local_33: FeLocal_fe_shader_private_layout_10_;
    var local_34: bool = false;
    var local_35: u32 = u32();

    if a0_19.f1_ {
        local_32 = 1u;
    }
    let _e9 = local_32;
    if a0_19.f2_ {
        local_35 = 1u;
    }
    let _e14 = local_35;
    let _e16 = encode_air_row(a0_19.f3_);
    return FeLocal_fe_shader_private_layout_10_(_e9, _e14, _e16);
}

fn encoded_proof_row_word(a0_20: FeLocal_fe_shader_private_layout_10_, a1_7: u32) -> u32 {
    var local_36: u32;
    var local_37: bool = false;
    var local_38: u32 = u32();

    switch a1_7 {
        case 0u: {
            local_38 = a0_20.f2_.f0_;
        }
        case 1u: {
            local_38 = a0_20.f2_.f1_.f0_;
        }
        case 2u: {
            local_38 = a0_20.f2_.f1_.f1_;
        }
        case 3u: {
            local_38 = a0_20.f2_.f2_.f0_;
        }
        case 4u: {
            local_38 = a0_20.f2_.f2_.f1_;
        }
        case 5u: {
            local_38 = a0_20.f2_.f3_;
        }
        case 6u: {
            local_38 = a0_20.f2_.f4_;
        }
        case 7u: {
            local_38 = a0_20.f2_.f5_;
        }
        case 8u: {
            local_38 = a0_20.f2_.f6_.f0_;
        }
        case 9u: {
            local_38 = a0_20.f2_.f6_.f1_;
        }
        case 10u: {
            local_38 = a0_20.f2_.f7_;
        }
        case 11u: {
            local_38 = a0_20.f2_.f8_.f0_;
        }
        case 12u: {
            local_38 = a0_20.f2_.f8_.f1_;
        }
        case 13u: {
            local_38 = a0_20.f2_.f9_;
        }
        case 14u: {
            local_38 = a0_20.f2_.f10_;
        }
        case 15u: {
            local_38 = a0_20.f0_;
        }
        case 16u: {
            local_38 = a0_20.f1_;
        }
        default: {
        }
    }
    let _e62 = local_38;
    return _e62;
}

fn store_main_trace_row(a1_8: u32, a2_4: u32, a3_1: FeLocal_fe_shader_private_layout_10_, fe_trapped_6: ptr<function, bool>) {
    var local_39: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_8_: bool;

    local_39 = 0u;
    loop {
        let _e10 = local_39;
        let _e12 = (_e10 < 17u);
        loop_header_carry_8_ = _e12;
        if _e12 {
            let _e14 = (_e10 << 10u);
            let _e16 = (a1_8 + _e14);
            if (a1_8 > (4294967295u - _e14)) {
            } else {
                if (_e16 > (4294967295u - a2_4)) {
                    (*fe_trapped_6) = true;
                    break;
                }
                let _e24 = encoded_proof_row_word(a3_1, _e10);
                proof[i32((_e16 + a2_4))] = _e24;
                local_39 = (_e10 + 1u);
                continue;
            }
            (*fe_trapped_6) = true;
            break;
        } else {
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn current_air_row(a0_21: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_4_ {
    return a0_21.f1_;
}

fn can_advance(a0_22: FeLocal_fe_shader_private_layout_5_) -> bool {
    var local_40: bool;
    var local_41: bool = false;
    var local_42: bool = bool();

    let _e3 = impl_EscapeTraceStream_is_valid(a0_22);
    if _e3 {
        if (a0_22.f1_.f0_.f3_ == false) {
            if (a0_22.f1_.f0_.f0_ < a0_22.f0_.f1_) {
                local_42 = true;
            }
        }
    }
    let _e18 = local_42;
    return _e18;
}

fn advance(a0_23: ptr<function, FeLocal_fe_shader_private_layout_5_>, fe_trapped_7: ptr<function, bool>) {
    var local_43: u32;
    var local_44: bool = false;
    var local_45: u32;
    var local_46: bool = false;

    let _e3 = (*a0_23);
    let _e4 = can_advance(_e3);
    if (_e4 == false) {
        local_44 = true;
    }
    let _e64 = local_44;
    if _e64 {
    } else {
        let _e13 = (*a0_23).f1_.f3_.f0_;
        let _e17 = (*a0_23).f0_.f0_.f0_;
        let _e20 = (_e13 + _e17);
        if ((((_e13 ^ _e20) & (_e17 ^ _e20)) & 2147483648u) != 0u) {
        } else {
            let _e29 = (*a0_23).f1_.f4_.f0_;
            let _e33 = (*a0_23).f0_.f0_.f1_;
            let _e36 = (_e29 + _e33);
            if ((((_e29 ^ _e36) & (_e33 ^ _e36)) & 2147483648u) != 0u) {
            } else {
                let _e46 = (*a0_23).f1_.f0_.f0_;
                if (_e46 > (4294967295u - 1u)) {
                } else {
                    let _e52 = air_row((_e46 + 1u), FeLocal_fe_shader_private_layout_0_(_e20, _e36), fe_trapped_7);
                    (*a0_23).f1_ = _e52;
                    local_46 = true;
                }
                let _e57 = local_46;
                if _e57 {
                }
            }
            let _e59 = local_46;
            if _e59 {
            }
        }
        let _e62 = local_46;
        if _e62 {
        } else {
            (*fe_trapped_7) = true;
        }
    }
    return;
}

fn escapes_by_q12_public_word(a0_24: FeLocal_fe_shader_private_layout_11_, a1_9: u32) -> u32 {
    var local_47: u32;
    var local_48: bool = false;
    var local_49: u32 = u32();

    switch a1_9 {
        case 0u: {
            local_49 = a0_24.f0_.f0_;
        }
        case 1u: {
            local_49 = a0_24.f0_.f1_;
        }
        case 2u: {
            local_49 = a0_24.f1_.f0_;
        }
        case 3u: {
            local_49 = a0_24.f1_.f1_;
        }
        case 4u: {
            local_49 = a0_24.f2_;
        }
        case 5u: {
            local_49 = a0_24.f3_;
        }
        case 6u: {
            local_49 = a0_24.f4_;
        }
        case 7u: {
            local_49 = a0_24.f5_;
        }
        default: {
        }
    }
    let _e25 = local_49;
    return _e25;
}

fn escapes_by_q12_public_width(a0_25: u32) -> u32 {
    var local_50: u32;
    var local_51: bool = false;
    var local_52: u32 = u32();

    switch a0_25 {
        case 0u: {
            local_52 = 1u;
        }
        case 1u: {
            local_52 = 14u;
        }
        case 2u: {
            local_52 = 1u;
        }
        case 3u: {
            local_52 = 13u;
        }
        case 4u: {
            local_52 = 21u;
        }
        case 5u: {
            local_52 = 21u;
        }
        case 6u: {
            local_52 = 21u;
        }
        case 7u: {
            local_52 = 22u;
        }
        default: {
        }
    }
    let _e20 = local_52;
    return _e20;
}

fn low_mask(a0_26: u32, fe_trapped_8: ptr<function, bool>) -> u32 {
    var local_53: u32;
    var local_54: bool = false;
    var local_55: u32 = u32();

    if (a0_26 == 0u) {
    } else {
        let _e7 = (1u << a0_26);
        if (_e7 < 1u) {
            (*fe_trapped_8) = true;
        } else {
            local_55 = (_e7 - 1u);
        }
    }
    let _e14 = local_55;
    return _e14;
}

fn encoded_public_field_direct(a0_27: FeLocal_fe_shader_private_layout_11_, a1_10: u32, fe_trapped_9: ptr<function, bool>) -> u32 {
    var local_56: u32;
    var local_57: bool = false;
    var local_58: u32;
    var local_59: bool = false;
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_22_: bool;
    var local_64: u32 = u32();
    var local_65: u32 = u32();
    var local_66: u32 = u32();

    if ((a1_10 < 4u) == false) {
        local_56 = 0u;
        local_57 = true;
    }
    let _e99 = local_57;
    if _e99 {
    } else {
        let _e15 = (a1_10 * 30u);
        if ((_e15 + 30u) < 114u) {
            local_60 = (_e15 + 30u);
        } else {
            local_60 = 114u;
        }
        let _e26 = local_60;
        local_61 = 0u;
        local_62 = 0u;
        local_63 = 0u;
        loop {
            let _e38 = local_61;
            let _e40 = local_62;
            let _e42 = local_63;
            let _e44 = (_e42 < 8u);
            loop_header_carry_22_ = _e44;
            if _e44 {
                let _e45 = escapes_by_q12_public_width(_e42);
                let _e47 = (_e40 + _e45);
                if (_e40 > (4294967295u - _e45)) {
                } else {
                    if (_e15 < _e47) {
                        if (_e40 < _e26) {
                            if (_e15 < _e40) {
                                local_65 = _e40;
                            } else {
                                local_65 = _e15;
                            }
                            let _e59 = local_65;
                            if (_e47 < _e26) {
                                local_66 = _e47;
                            } else {
                                local_66 = _e26;
                            }
                            let _e64 = local_66;
                            if (_e64 < _e59) {
                                (*fe_trapped_9) = true;
                                break;
                            } else {
                                if (_e59 < _e40) {
                                    (*fe_trapped_9) = true;
                                    break;
                                } else {
                                    if (_e59 < _e15) {
                                        (*fe_trapped_9) = true;
                                        break;
                                    } else {
                                        let _e74 = escapes_by_q12_public_word(a0_27, _e42);
                                        let _e76 = low_mask((_e64 - _e59), fe_trapped_9);
                                        local_64 = (_e38 | (((_e74 >> (_e59 - _e40)) & _e76) << (_e59 - _e15)));
                                    }
                                }
                            }
                        } else {
                            local_64 = _e38;
                        }
                    } else {
                        local_64 = _e38;
                    }
                    let _e84 = local_64;
                    local_61 = _e84;
                    local_62 = _e47;
                    local_63 = (_e42 + 1u);
                    continue;
                }
                (*fe_trapped_9) = true;
                break;
            } else {
                loop_result_5 = _e38;
                loop_did_return_5 = true;
                break;
            }
        }
        let _e96 = loop_result_5;
        local_56 = _e96;
    }
    let _e101 = local_56;
    return _e101;
}

fn encoded_word_is_valid(a0_28: u32, a1_11: u32) -> bool {
    var local_67: bool;
    var local_68: bool = false;
    var local_69: bool = bool();

    if ((32u < a1_11) == false) {
        if (a1_11 == 32u) {
            local_69 = true;
        } else {
            if ((a0_28 >> a1_11) == 0u) {
                local_69 = true;
            }
        }
    }
    let _e18 = local_69;
    return _e18;
}

fn encoded_public_fields_are_valid(a0_29: FeLocal_fe_shader_private_layout_11_) -> bool {
    var local_70: bool = bool();
    var local_71: u32 = u32();
    var loop_result_6: bool;
    var loop_did_return_6: bool = false;
    var loop_header_carry_5_: bool;
    var local_72: bool = bool();

    local_70 = true;
    local_71 = 0u;
    loop {
        let _e9 = local_70;
        let _e11 = local_71;
        let _e13 = (_e11 < 8u);
        loop_header_carry_5_ = _e13;
        if _e13 {
            if _e9 {
                let _e15 = escapes_by_q12_public_word(a0_29, _e11);
                let _e16 = escapes_by_q12_public_width(_e11);
                let _e17 = encoded_word_is_valid(_e15, _e16);
                if _e17 {
                    local_72 = true;
                } else {
                    local_72 = false;
                }
            } else {
                local_72 = false;
            }
            let _e25 = local_72;
            local_70 = _e25;
            local_71 = (_e11 + 1u);
            continue;
        } else {
            loop_result_6 = _e9;
            loop_did_return_6 = true;
            break;
        }
    }
    let _e35 = loop_result_6;
    return _e35;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var fixed_local_19_: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_26_: bool;
    var local_1: bool = bool();
    var local_2: bool = bool();
    var local_3: u32;
    var local_4: bool = false;
    var local_5: bool = bool();
    var local_6: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_68_: bool;
    var local_7: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_90_: bool;
    var local_8: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_100_: bool;
    var local_9: u32 = u32();

    let _e5 = params.p8_;
    let _e7 = params.p9_;
    let _e8 = to_i32_(_e5);
    let _e9 = to_i32_(_e7);
    let _e11 = impl_EscapesByQ12_new(_e8, _e9, 1023u);
    let _e12 = impl_EscapeTraceStream_new(_e11, (&fe_trapped));
    fixed_local_19_ = _e12;
    let _e15 = fixed_local_19_;
    let _e16 = impl_EscapeTraceStream_is_valid(_e15);
    local = 0u;
    loop {
        let _e22 = local;
        let _e24 = (_e22 < 1024u);
        loop_header_carry_26_ = _e24;
        if _e24 {
            let _e27 = fixed_local_19_;
            let _e28 = current_proof_row(_e27);
            let _e29 = encode_proof_row(_e28);
            store_main_trace_row(0u, _e22, _e29, (&fe_trapped));
            if _e28.f2_ {
                local_1 = _e16;
                local_2 = true;
                break;
            } else {
                if ((_e22 + 1u) < 1024u) {
                    let _e39 = fixed_local_19_;
                    let _e40 = can_advance(_e39);
                    if _e40 {
                        advance((&fixed_local_19_), (&fe_trapped));
                        local = (_e22 + 1u);
                        continue;
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            local_1 = _e16;
            break;
        }
    }
    let _e47 = local;
    let _e50 = local_1;
    let _e52 = local_2;
    let _e53 = fixed_local_19_;
    let _e54 = current_air_row(_e53);
    if (_e47 > (4294967295u - 1u)) {
    } else {
        if _e52 {
            local_5 = _e50;
        }
        let _e66 = local_5;
        let _e71 = encode_proof_row(FeLocal_fe_shader_private_layout_7_(true, false, false, _e54));
        let _e74 = (_e47 + 1u);
        if (_e47 > (4294967295u - 1u)) {
            fe_trapped = true;
        } else {
            local_6 = _e74;
        }
        local_6 = _e74;
        loop {
            let _e82 = local_6;
            let _e84 = (_e82 < 1024u);
            loop_header_carry_68_ = _e84;
            if _e84 {
                store_main_trace_row(0u, _e82, _e71, (&fe_trapped));
                local_6 = (_e82 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e92 = encode_signed_word(_e11.f0_.f0_);
        let _e95 = encode_signed_word(_e11.f0_.f1_);
        let _e98 = FeLocal_fe_shader_private_layout_11_(_e92, _e95, _e11.f1_, _e54.f0_.f0_, (_e47 + 1u), 1024u);
        local_7 = 0u;
        loop {
            let _e104 = local_7;
            let _e106 = (_e104 < 8u);
            loop_header_carry_90_ = _e106;
            if _e106 {
                let _e110 = escapes_by_q12_public_word(_e98, _e104);
                proof[i32((459780u + _e104))] = _e110;
                local_7 = (_e104 + 1u);
                continue;
            } else {
                local_8 = 0u;
                break;
            }
        }
        local_8 = 0u;
        loop {
            let _e123 = local_8;
            let _e125 = (_e123 < 4u);
            loop_header_carry_100_ = _e125;
            if _e125 {
                let _e128 = encoded_public_field_direct(_e98, _e123, (&fe_trapped));
                proof[i32((459776u + _e123))] = _e128;
                local_8 = (_e123 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e136 = encoded_public_fields_are_valid(_e98);
        if ((_e66 == false) | (_e136 == false)) {
        } else {
            local_9 = 1u;
        }
        let _e145 = local_9;
        proof[i32(459788u)] = _e145;
        local_4 = true;
    }
    let _e153 = local_4;
    if _e153 {
    } else {
        fe_trapped = true;
    }
    let _e155 = fe_trapped;
    trap[0u] = u32(_e155);
}
