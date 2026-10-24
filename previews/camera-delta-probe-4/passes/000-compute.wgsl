struct FeLocal_fe_Last_eb970eb0_2_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_3_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_2_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_4_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_3_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_5_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_4_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_7_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_Lanes_7d9d22f9_6_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_Flag_55212797_1_ {
    negative: bool,
    count: u32,
}

struct FeLocal_fe_InvocationId_3c625d5f_8_ {
    x: u32,
    y: u32,
    z: u32,
}

struct Params {
    p15_: f32,
}

@group(0) @binding(0)
var<storage, read_write> inputs: array<u32>;
@group(0) @binding(1)
var<storage, read_write> outputs: array<u32>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 512>;

fn read_f32_(a1_: u32) -> f32 {
    let _e4 = inputs[i32(a1_)];
    return bitcast<f32>(_e4);
}

fn from_quad(a0_: f32, a1_1: f32, a2_: f32, a3_: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_5_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_5_(a0_, FeLocal_fe_More_More_Last_60a5ba63_4_(a1_1, FeLocal_fe_More_Last_1ac585f5_3_(a2_, FeLocal_fe_Last_eb970eb0_2_(a3_))));
}

fn to_quad(a0_1: FeLocal_fe_More_More_More_Last_e6310ae8_5_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_7_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_7_(a0_1.lead, a0_1.tail.lead, a0_1.tail.tail.lead, a0_1.tail.tail.tail.value);
}

fn std_lib_evm_effects_assert_2501_(a0_2: bool, fe_trapped_1: ptr<function, bool>) {
    var local_6: u32;
    var local_7: bool = false;

    if a0_2 {
        local_7 = true;
    } else {
        (*fe_trapped_1) = true;
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_2: ptr<function, bool>) -> u32 {
    std_lib_evm_effects_assert_2501_(true, fe_trapped_2);
    return 10u;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_3);
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
}

fn precision_lib_array_fixed_signed_word_0e35_(a0_3: u32, fe_trapped_4: ptr<function, bool>) {
    std_lib_evm_effects_assert_2501_(((2147483647u < a0_3) == false), fe_trapped_4);
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_4: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_8: u32;
    var local_9: bool = false;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_5);
    let _e4 = (_e2 - 1u);
    precision_lib_array_fixed_signed_word_0e35_(_e4, fe_trapped_5);
    let _e12 = ((_e4 & 2147483648u) != 0u);
    let _e13 = ((13u & 2147483648u) != 0u);
    let _e17 = select(_e4, (0u - _e4), _e12);
    let _e21 = (_e17 != 0u);
    if (_e21 && (select(13u, (0u - 13u), _e13) > (select((2147483648u - 1u), 2147483648u, (_e12 != _e13)) / select(1u, _e17, _e21)))) {
        (*fe_trapped_5) = true;
    } else {
        local_8 = (_e4 * 13u);
        local_9 = true;
    }
    let _e31 = local_8;
    return _e31;
}

fn precision_lib_array_fixed_unsigned_word_42a2_(a0_5: u32, fe_trapped_6: ptr<function, bool>) {
    std_lib_evm_effects_assert_2501_(((bitcast<i32>(a0_5) < bitcast<i32>(0u)) == false), fe_trapped_6);
    return;
}

fn load_significand(a0_6: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_2: u32, a2_1: u32, fe_trapped_7: ptr<function, bool>) {
    var local_10: u32 = u32();
    var local_11: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_8_: bool;
    var local_12: u32 = u32();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_7);
    local_10 = a2_1;
    local_11 = 0u;
    loop {
        let _e12 = local_10;
        let _e14 = local_11;
        let _e15 = (_e14 < _e4);
        loop_header_carry_8_ = _e15;
        if _e15 {
            if ((bitcast<i32>(_e12) < bitcast<i32>(24u)) == false) {
                local_12 = 0u;
            } else {
                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e12)) == false) {
                    local_12 = 0u;
                } else {
                    if ((bitcast<i32>(_e12) < bitcast<i32>(0u)) == false) {
                        precision_lib_array_fixed_unsigned_word_42a2_(_e12, fe_trapped_7);
                        local_12 = ((a1_2 >> _e12) & 8191u);
                    } else {
                        let _e39 = (0u - _e12);
                        precision_lib_array_fixed_unsigned_word_42a2_(_e39, fe_trapped_7);
                        local_12 = ((a1_2 << _e39) & 8191u);
                    }
                }
            }
            let _e50 = local_12;
            (*a0_6).digits[_e14] = _e50;
            let _e56 = (_e12 + 13u);
            if ((((_e12 ^ _e56) & (13u ^ _e56)) & 2147483648u) != 0u) {
                (*fe_trapped_7) = true;
                break;
            }
            local_10 = _e56;
            local_11 = (_e14 + 1u);
            continue;
        } else {
            loop_did_return_2 = true;
            break;
        }
    }
    return;
}

fn from_binary32_bits(a0_7: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_13: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_14: bool = false;
    var local_15: bool = bool();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_16: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_17: bool = false;
    var local_18: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_19: bool = false;

    let _e5 = (a0_7 & 2147483647u);
    std_lib_evm_effects_assert_2501_((_e5 < 1174405120u), fe_trapped_8);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_8);
    fixed_local_7_ = _e8;
    if (((a0_7 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_15 = true;
        }
    }
    let _e25 = local_15;
    fixed_local_7_.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_;
        local_16 = _e31;
        local_17 = true;
    }
    let _e82 = local_17;
    if _e82 {
    } else {
        precision_lib_array_fixed_signed_word_0e35_(_e28, fe_trapped_8);
        let _e43 = (_e28 - 150u);
        if ((((_e28 ^ _e43) & (_e28 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e49 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_((&fixed_local_7_), fe_trapped_8);
            let _e52 = (_e43 + _e49);
            if ((((_e43 ^ _e52) & (_e49 ^ _e52)) & 2147483648u) != 0u) {
            } else {
                let _e61 = (0u - _e52);
                if ((((0u ^ _e61) & (0u ^ _e52)) & 2147483648u) != 0u) {
                } else {
                    load_significand((&fixed_local_7_), ((_e5 & 8388607u) | 8388608u), _e61, fe_trapped_8);
                    let _e67 = fixed_local_7_;
                    local_18 = _e67;
                    local_19 = true;
                }
                let _e72 = local_19;
                if _e72 {
                }
            }
            let _e74 = local_19;
            if _e74 {
            }
        }
        let _e77 = local_19;
        if _e77 {
        } else {
            (*fe_trapped_8) = true;
        }
        let _e79 = local_18;
        local_16 = _e79;
    }
    let _e84 = local_16;
    return _e84;
}

fn from_f32_(a0_8: f32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = from_binary32_bits(bitcast<u32>(a0_8), fe_trapped_9);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_g16d4_2244_(a0_9: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_10: ptr<function, bool>) {
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_7_: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_10);
    local_20 = 0u;
    local_21 = 0u;
    loop {
        let _e13 = local_20;
        let _e15 = local_21;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_ = _e16;
        if _e16 {
            let _e19 = (*a1_3).digits[_e15];
            let _e22 = (*a2_2).digits[_e15];
            let _e24 = (_e19 + _e22);
            if (_e19 > (4294967295u - _e22)) {
            } else {
                let _e28 = (_e24 + _e13);
                if (_e24 > (4294967295u - _e13)) {
                    (*fe_trapped_10) = true;
                    break;
                }
                (*a0_9).digits[_e15] = (_e28 & 8191u);
                local_20 = (_e28 >> 13u);
                local_21 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_10) = true;
            break;
        } else {
            loop_did_return_3 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_10: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_4: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_11: ptr<function, bool>) -> bool {
    var local_22: u32 = u32();
    var loop_result_4: bool;
    var loop_did_return_4: bool = false;
    var loop_header_carry_5_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_11);
    local_22 = _e3;
    loop {
        let _e8 = local_22;
        let _e10 = (0u < _e8);
        loop_header_carry_5_ = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_10).digits[_e12];
            let _e18 = (*a1_4).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_22 = _e12;
                continue;
            }
            let _e25 = (*a0_10).digits[_e12];
            let _e28 = (*a1_4).digits[_e12];
            loop_result_4 = (_e25 < _e28);
            loop_did_return_4 = true;
            break;
        } else {
            loop_result_4 = false;
            loop_did_return_4 = true;
            break;
        }
    }
    let _e39 = loop_result_4;
    return _e39;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_g16d4_403b(a0_11: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a3_1: bool, fe_trapped_12: ptr<function, bool>) {
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_8_1: bool;
    var local_25: u32 = u32();
    var local_26: u32 = u32();

    let _e5 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_12);
    local_23 = 0u;
    local_24 = 0u;
    loop {
        let _e14 = local_23;
        let _e16 = local_24;
        let _e17 = (_e16 < _e5);
        loop_header_carry_8_1 = _e17;
        if _e17 {
            if a3_1 {
                let _e21 = (*a2_3).digits[_e16];
                local_25 = _e21;
            } else {
                let _e24 = (*a1_5).digits[_e16];
                local_25 = _e24;
            }
            let _e29 = local_25;
            if a3_1 {
                let _e32 = (*a1_5).digits[_e16];
                local_26 = _e32;
            } else {
                let _e35 = (*a2_3).digits[_e16];
                local_26 = _e35;
            }
            let _e39 = local_26;
            let _e42 = (8192u + _e29);
            if (8192u > (4294967295u - _e29)) {
            } else {
                let _e45 = (_e42 - _e39);
                if (_e42 < _e39) {
                } else {
                    let _e47 = (_e45 - _e14);
                    if (_e45 < _e14) {
                    } else {
                        (*a0_11).digits[_e16] = (_e47 & 8191u);
                        let _e54 = (_e47 >> 13u);
                        if (1u < _e54) {
                            (*fe_trapped_12) = true;
                            break;
                        }
                        local_23 = (1u - _e54);
                        local_24 = (_e16 + 1u);
                        continue;
                    }
                }
            }
            (*fe_trapped_12) = true;
            break;
        } else {
            loop_did_return_5 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_12: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, a1_6: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_27: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_28: bool = false;
    var fixed_local_3_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_56_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_58_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_29: bool = bool();
    var fixed_local_60_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_62_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_96_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_98_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_13);
    fixed_local_3_ = _e4;
    fixed_local_3_.negative = a0_12.negative;
    if (a0_12.negative == a1_6.negative) {
        fixed_local_56_ = a0_12;
        fixed_local_58_ = a1_6;
        precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_g16d4_2244_((&fixed_local_3_), (&fixed_local_56_), (&fixed_local_58_), fe_trapped_13);
    } else {
        fixed_local_60_ = a0_12;
        fixed_local_62_ = a1_6;
        let _e21 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c((&fixed_local_60_), (&fixed_local_62_), fe_trapped_13);
        if _e21 {
            local_29 = a1_6.negative;
        } else {
            local_29 = a0_12.negative;
        }
        let _e27 = local_29;
        fixed_local_3_.negative = _e27;
        fixed_local_96_ = a0_12;
        fixed_local_98_ = a1_6;
        precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_g16d4_403b((&fixed_local_3_), (&fixed_local_96_), (&fixed_local_98_), _e21, fe_trapped_13);
    }
    let _e33 = fixed_local_3_;
    return _e33;
}

fn from_expansion(a0_13: FeLocal_fe_More_More_More_Last_e6310ae8_5_, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e2 = to_quad(a0_13);
    let _e7 = from_f32_(_e2.f0_, fe_trapped_14);
    let _e8 = from_f32_(_e2.f1_, fe_trapped_14);
    let _e9 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e7, _e8, fe_trapped_14);
    let _e10 = from_f32_(_e2.f2_, fe_trapped_14);
    let _e11 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e9, _e10, fe_trapped_14);
    let _e12 = from_f32_(_e2.f3_, fe_trapped_14);
    let _e13 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e11, _e12, fe_trapped_14);
    let _e14 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_14);
    let _e15 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e13, _e14, fe_trapped_14);
    return _e15;
}

fn neg(a0_14: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_((a0_14.negative == false), a0_14.digits);
}

fn sub(a0_15: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, a1_7: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, fe_trapped_15: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = neg(a1_7);
    let _e4 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_15, _e3, fe_trapped_15);
    return _e4;
}

fn limb_highest_bit(a0_16: u32) -> u32 {
    var local_30: u32;
    var local_31: bool = false;
    var local_32: u32 = u32();

    if ((a0_16 < 4096u) == false) {
        local_32 = 12u;
    } else {
        if ((a0_16 < 2048u) == false) {
            local_32 = 11u;
        } else {
            if ((a0_16 < 1024u) == false) {
                local_32 = 10u;
            } else {
                if ((a0_16 < 512u) == false) {
                    local_32 = 9u;
                } else {
                    if ((a0_16 < 256u) == false) {
                        local_32 = 8u;
                    } else {
                        if ((a0_16 < 128u) == false) {
                            local_32 = 7u;
                        } else {
                            if ((a0_16 < 64u) == false) {
                                local_32 = 6u;
                            } else {
                                if ((a0_16 < 32u) == false) {
                                    local_32 = 5u;
                                } else {
                                    if ((a0_16 < 16u) == false) {
                                        local_32 = 4u;
                                    } else {
                                        if ((a0_16 < 8u) == false) {
                                            local_32 = 3u;
                                        } else {
                                            if ((a0_16 < 4u) == false) {
                                                local_32 = 2u;
                                            } else {
                                                if ((a0_16 < 2u) == false) {
                                                    local_32 = 1u;
                                                } else {
                                                    if (a0_16 == 1u) {
                                                    } else {
                                                        local_32 = 4294967295u;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    let _e80 = local_32;
    return _e80;
}

fn highest_bit(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_33: u32 = u32();
    var local_34: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_4_: bool;
    var local_35: u32;
    var local_36: bool = false;
    var local_37: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
    local_33 = 0u;
    local_34 = _e2;
    loop {
        let _e10 = local_33;
        let _e12 = local_34;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_17).digits[_e18];
                local_33 = _e21;
                local_34 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_33;
    let _e28 = local_34;
    if (_e26 == 0u) {
        local_37 = 4294967295u;
    } else {
        let _e33 = limb_highest_bit(_e26);
        precision_lib_array_fixed_signed_word_0e35_(_e28, fe_trapped_16);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_16) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_16) = true;
            } else {
                local_37 = _e58;
            }
        }
    }
    let _e69 = local_37;
    return _e69;
}

fn word_from(a0_18: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_8: u32, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_38: u32;
    var local_39: bool = false;
    var local_40: u32;
    var local_41: bool = false;
    var local_42: u32 = u32();
    var local_43: u32 = u32();
    var local_44: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_34_: bool;

    if (bitcast<i32>(a1_8) < bitcast<i32>(0u)) {
        local_38 = 0u;
        local_39 = true;
    }
    let _e77 = local_39;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_8, fe_trapped_17);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_17);
        let _e15 = (a1_8 / 13u);
        if ((_e15 < _e13) == false) {
            local_40 = 0u;
            local_41 = true;
        }
        let _e72 = local_41;
        if _e72 {
        } else {
            let _e24 = (a1_8 % 13u);
            let _e27 = (*a0_18).digits[_e15];
            local_42 = (13u - _e24);
            local_43 = (_e27 >> _e24);
            local_44 = (_e15 + 1u);
            loop {
                let _e41 = local_42;
                let _e43 = local_43;
                let _e45 = local_44;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_ = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_18).digits[_e45];
                        local_42 = (_e41 + 13u);
                        local_43 = (_e43 | (_e51 << _e41));
                        local_44 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_7 = _e43;
                        loop_did_return_7 = true;
                        break;
                    }
                } else {
                    loop_result_7 = _e43;
                    loop_did_return_7 = true;
                    break;
                }
            }
            let _e69 = loop_result_7;
            local_40 = _e69;
        }
        let _e74 = local_40;
        local_38 = _e74;
    }
    let _e79 = local_38;
    return _e79;
}

fn bit_at(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_9: u32, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_45: u32;
    var local_46: bool = false;
    var local_47: u32;
    var local_48: bool = false;

    if (bitcast<i32>(a1_9) < bitcast<i32>(0u)) {
        local_45 = 0u;
        local_46 = true;
    }
    let _e38 = local_46;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_9, fe_trapped_18);
        let _e14 = (a1_9 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_18);
        if ((_e14 < _e15) == false) {
            local_47 = 0u;
            local_48 = true;
        }
        let _e33 = local_48;
        if _e33 {
        } else {
            let _e25 = (*a0_19).digits[_e14];
            local_47 = ((_e25 >> (a1_9 % 13u)) & 1u);
        }
        let _e35 = local_47;
        local_45 = _e35;
    }
    let _e40 = local_45;
    return _e40;
}

fn any_below(a0_20: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_10: u32, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_49: u32;
    var local_50: bool = false;
    var local_51: u32 = u32();
    var local_52: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_15_: bool;
    var local_53: u32;
    var local_54: bool = false;
    var local_55: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_10)) == false) {
        local_49 = 0u;
        local_50 = true;
    }
    let _e65 = local_50;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_10, fe_trapped_19);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_19);
        local_51 = 0u;
        local_52 = 0u;
        loop {
            let _e25 = local_51;
            let _e27 = local_52;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_10 / 13u)) {
                    let _e32 = (*a0_20).digits[_e27];
                    local_51 = (_e25 | _e32);
                    local_52 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_51;
        let _e42 = local_52;
        if (_e42 < _e16) {
            let _e50 = (*a0_20).digits[_e42];
            let _e52 = (1u << (a1_10 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_19) = true;
            } else {
                local_55 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_55 = _e40;
        }
        let _e62 = local_55;
        local_49 = _e62;
    }
    let _e67 = local_49;
    return _e67;
}

fn project_binary32_(a0_21: u32, a1_11: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_56: u32;
    var local_57: bool = false;
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();

    let _e5 = highest_bit(a1_11, fe_trapped_20);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_11, fe_trapped_20);
        let _e13 = (_e5 - _e10);
        if ((((_e5 ^ _e13) & (_e5 ^ _e10)) & 2147483648u) != 0u) {
            (*fe_trapped_20) = true;
        } else {
            let _e23 = (_e13 + 127u);
            if ((((_e13 ^ _e23) & (127u ^ _e23)) & 2147483648u) != 0u) {
                (*fe_trapped_20) = true;
            } else {
                let _e32 = (_e5 - 23u);
                if (bitcast<i32>(_e32) < bitcast<i32>(0u)) {
                    let _e40 = word_from(a1_11, 0u, fe_trapped_20);
                    local_59 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from(a1_11, _e32, fe_trapped_20);
                    local_59 = _e42;
                }
                let _e47 = local_59;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_11, _e49, fe_trapped_20);
                let _e51 = any_below(a1_11, _e49, fe_trapped_20);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_60 = 1u;
                    } else {
                        local_60 = (_e47 & 1u);
                    }
                }
                let _e64 = local_60;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_20) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_20) = true;
                        } else {
                            local_61 = 8388608u;
                            local_62 = _e77;
                        }
                    } else {
                        local_61 = _e66;
                        local_62 = _e23;
                    }
                    let _e90 = local_61;
                    let _e92 = local_62;
                    local_58 = (((a0_21 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_58;
    return _e103;
}

fn to_binary32_bits(a0_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_21: ptr<function, bool>) -> u32 {
    var local_63: u32;
    var local_64: bool = false;
    var local_65: u32 = u32();

    let _e5 = (*a0_22).negative;
    if _e5 {
        local_65 = 1u;
    }
    let _e9 = local_65;
    let _e10 = project_binary32_(_e9, a0_22, fe_trapped_21);
    return _e10;
}

fn to_f32_(a0_23: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_22: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_23, fe_trapped_22);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_24: FeLocal_fe_More_More_More_Last_e6310ae8_5_, a1_12: FeLocal_fe_More_More_More_Last_e6310ae8_5_, fe_trapped_23: ptr<function, bool>) -> f32 {
    var fixed_local_7_1: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e3 = from_expansion(a1_12, fe_trapped_23);
    let _e4 = from_expansion(a0_24, fe_trapped_23);
    let _e5 = sub(_e3, _e4, fe_trapped_23);
    fixed_local_7_1 = _e5;
    let _e8 = to_f32_((&fixed_local_7_1), fe_trapped_23);
    return _e8;
}

fn to_digits(a0_25: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>) -> array<u32, 10> {
    let _e2 = (*a0_25).digits;
    return _e2;
}

fn sign_(a0_26: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>) -> u32 {
    var local_66: u32;
    var local_67: bool = false;
    var local_68: u32 = u32();

    let _e4 = (*a0_26).negative;
    if _e4 {
        local_68 = 1u;
    }
    let _e8 = local_68;
    return _e8;
}

fn digest(a0_27: ptr<function, array<u32, 10>>) -> u32 {
    var local_69: u32 = u32();
    var local_70: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_4_1: bool;

    local_69 = 0u;
    local_70 = 0u;
    loop {
        let _e9 = local_69;
        let _e11 = local_70;
        let _e13 = (_e11 < 10u);
        loop_header_carry_4_1 = _e13;
        if _e13 {
            let _e15 = (*a0_27)[_e11];
            local_69 = (_e9 ^ (_e15 << ((_e11 * 7u) % 19u)));
            local_70 = (_e11 + 1u);
            continue;
        } else {
            loop_result_9 = _e9;
            loop_did_return_9 = true;
            break;
        }
    }
    let _e31 = loop_result_9;
    return _e31;
}

fn fill_lanes(a0_28: u32) -> FeLocal_fe_Lanes_7d9d22f9_6_ {
    var fixed_local_31_: FeLocal_fe_Lanes_7d9d22f9_6_ = FeLocal_fe_Lanes_7d9d22f9_6_();
    var local_71: u32 = u32();
    var loop_result_10: FeLocal_fe_Lanes_7d9d22f9_6_;
    var loop_did_return_10: bool = false;
    var loop_header_carry_34_1: bool;

    fixed_local_31_ = FeLocal_fe_Lanes_7d9d22f9_6_((((a0_28 >> 31u) == 0u) == false), array<u32, 10>());
    local_71 = 0u;
    loop {
        let _e16 = local_71;
        let _e18 = (_e16 < 10u);
        loop_header_carry_34_1 = _e18;
        if _e18 {
            fixed_local_31_.digits[_e16] = ((a0_28 >> _e16) & 8191u);
            local_71 = (_e16 + 1u);
            continue;
        } else {
            let _e27 = fixed_local_31_;
            loop_result_10 = _e27;
            loop_did_return_10 = true;
            break;
        }
    }
    let _e33 = loop_result_10;
    return _e33;
}

fn literal_lanes(a0_29: u32) -> FeLocal_fe_Lanes_7d9d22f9_6_ {
    return FeLocal_fe_Lanes_7d9d22f9_6_((((a0_29 >> 31u) == 0u) == false), array<u32, 10>((a0_29 & 8191u), ((a0_29 >> 1u) & 8191u), ((a0_29 >> 2u) & 8191u), ((a0_29 >> 3u) & 8191u), ((a0_29 >> 4u) & 8191u), ((a0_29 >> 5u) & 8191u), ((a0_29 >> 6u) & 8191u), ((a0_29 >> 7u) & 8191u), ((a0_29 >> 8u) & 8191u), ((a0_29 >> 9u) & 8191u)));
}

fn fold_lanes(a0_30: ptr<function, FeLocal_fe_Lanes_7d9d22f9_6_>) -> u32 {
    var local_72: u32;
    var local_73: bool = false;
    var local_74: u32 = u32();
    var fixed_local_6_: array<u32, 10> = array<u32, 10>();

    let _e4 = (*a0_30).digits;
    fixed_local_6_ = _e4;
    let _e7 = digest((&fixed_local_6_));
    let _e9 = (*a0_30).negative;
    if _e9 {
        local_74 = 2147483648u;
    }
    let _e13 = local_74;
    return (_e7 | _e13);
}

fn fill_array(a0_31: u32) -> array<u32, 10> {
    var fixed_local_2_: array<u32, 10> = array<u32, 10>();
    var local_75: u32 = u32();
    var loop_result_11: array<u32, 10>;
    var loop_did_return_11: bool = false;
    var loop_header_carry_24_: bool;

    local_75 = 0u;
    loop {
        let _e8 = local_75;
        let _e10 = (_e8 < 10u);
        loop_header_carry_24_ = _e10;
        if _e10 {
            fixed_local_2_[_e8] = ((a0_31 >> _e8) & 8191u);
            local_75 = (_e8 + 1u);
            continue;
        } else {
            let _e18 = fixed_local_2_;
            loop_result_11 = _e18;
            loop_did_return_11 = true;
            break;
        }
    }
    let _e24 = loop_result_11;
    return _e24;
}

fn fill_into(a0_32: ptr<function, FeLocal_fe_Lanes_7d9d22f9_6_>, a1_13: u32) {
    var local_76: u32 = u32();
    var loop_result_12: u32;
    var loop_did_return_12: bool = false;
    var loop_header_carry_5_1: bool;

    local_76 = 0u;
    loop {
        let _e7 = local_76;
        let _e9 = (_e7 < 10u);
        loop_header_carry_5_1 = _e9;
        if _e9 {
            (*a0_32).digits[_e7] = ((a1_13 >> _e7) & 8191u);
            local_76 = (_e7 + 1u);
            continue;
        } else {
            loop_did_return_12 = true;
            break;
        }
    }
    return;
}

fn count_flag(a0_33: u32, fe_trapped_24: ptr<function, bool>) -> FeLocal_fe_Flag_55212797_1_ {
    var fixed_local_12_: FeLocal_fe_Flag_55212797_1_ = FeLocal_fe_Flag_55212797_1_();
    var local_77: u32 = u32();
    var loop_result_13: FeLocal_fe_Flag_55212797_1_;
    var loop_did_return_13: bool = false;
    var loop_header_carry_15_1: bool;

    fixed_local_12_ = FeLocal_fe_Flag_55212797_1_((((a0_33 >> 31u) == 0u) == false), 0u);
    local_77 = 0u;
    loop {
        let _e17 = local_77;
        let _e19 = (_e17 < 10u);
        loop_header_carry_15_1 = _e19;
        if _e19 {
            let _e21 = fixed_local_12_.count;
            let _e24 = ((a0_33 >> _e17) & 1u);
            if (_e21 > (4294967295u - _e24)) {
                (*fe_trapped_24) = true;
                break;
            }
            fixed_local_12_.count = (_e21 + _e24);
            local_77 = (_e17 + 1u);
            continue;
        } else {
            let _e34 = fixed_local_12_;
            loop_result_13 = _e34;
            loop_did_return_13 = true;
            break;
        }
    }
    let _e40 = loop_result_13;
    return _e40;
}

fn loop_digest(a0_34: u32) -> u32 {
    var fixed_local_2_1: array<u32, 10> = array<u32, 10>();
    var local_78: u32 = u32();
    var loop_result_14: u32;
    var loop_did_return_14: bool = false;
    var loop_header_carry_24_1: bool;

    local_78 = 0u;
    loop {
        let _e8 = local_78;
        let _e10 = (_e8 < 10u);
        loop_header_carry_24_1 = _e10;
        if _e10 {
            fixed_local_2_1[_e8] = ((a0_34 >> _e8) & 8191u);
            local_78 = (_e8 + 1u);
            continue;
        } else {
            let _e18 = digest((&fixed_local_2_1));
            loop_result_14 = _e18;
            loop_did_return_14 = true;
            break;
        }
    }
    let _e24 = loop_result_14;
    return _e24;
}

@compute @workgroup_size(1, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_63_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_65_: array<u32, 10> = array<u32, 10>();
    var local_2: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_68_: bool;
    var fixed_local_93_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_103_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_113_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_123_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_133_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_135_: array<u32, 10> = array<u32, 10>();
    var fixed_local_189_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_191_: array<u32, 10> = array<u32, 10>();
    var fixed_local_201_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_211_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_224_: array<u32, 10> = array<u32, 10>();
    var fixed_local_235_: FeLocal_fe_Lanes_7d9d22f9_6_ = FeLocal_fe_Lanes_7d9d22f9_6_();
    var local_3: u32 = u32();
    var fixed_local_273_: array<u32, 10> = array<u32, 10>();
    var fixed_local_295_: FeLocal_fe_Lanes_7d9d22f9_6_ = FeLocal_fe_Lanes_7d9d22f9_6_();
    var local_4: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_297_: bool;
    var fixed_local_337_: FeLocal_fe_Lanes_7d9d22f9_6_ = FeLocal_fe_Lanes_7d9d22f9_6_();
    var local_5: u32 = u32();

    let _e11 = (global_invocation_id.x * 8u);
    let _e12 = (global_invocation_id.x != 0u);
    if (_e12 && (8u > (4294967295u / select(1u, global_invocation_id.x, _e12)))) {
    } else {
        let _e21 = (global_invocation_id.x * 32u);
        let _e22 = (global_invocation_id.x != 0u);
        if (_e22 && (32u > (4294967295u / select(1u, global_invocation_id.x, _e22)))) {
        } else {
            let _e27 = read_f32_(_e11);
            if (_e11 > (4294967295u - 1u)) {
            } else {
                let _e33 = read_f32_((_e11 + 1u));
                if (_e11 > (4294967295u - 2u)) {
                } else {
                    let _e39 = read_f32_((_e11 + 2u));
                    if (_e11 > (4294967295u - 3u)) {
                        fe_trapped = true;
                    }
                    let _e46 = read_f32_((_e11 + 3u));
                    let _e47 = from_quad(_e27, _e33, _e39, _e46);
                    let _e50 = (_e11 + 4u);
                    if (_e11 > (4294967295u - 4u)) {
                    } else {
                        let _e53 = read_f32_(_e50);
                        if (_e50 > (4294967295u - 1u)) {
                        } else {
                            let _e59 = read_f32_((_e50 + 1u));
                            if (_e50 > (4294967295u - 2u)) {
                            } else {
                                let _e65 = read_f32_((_e50 + 2u));
                                if (_e50 > (4294967295u - 3u)) {
                                    fe_trapped = true;
                                }
                                let _e72 = read_f32_((_e50 + 3u));
                                let _e73 = from_quad(_e53, _e59, _e65, _e72);
                                let _e74 = from_expansion(_e47, (&fe_trapped));
                                let _e75 = from_expansion(_e73, (&fe_trapped));
                                let _e76 = sub(_e75, _e74, (&fe_trapped));
                                let _e77 = expansion_difference(_e47, _e73, (&fe_trapped));
                                outputs[i32(_e21)] = bitcast<u32>(_e77);
                                fixed_local_63_ = _e75;
                                let _e83 = to_digits((&fixed_local_63_));
                                fixed_local_65_ = _e83;
                                local_2 = 0u;
                                loop {
                                    let _e91 = local_2;
                                    let _e93 = (_e91 < 10u);
                                    loop_header_carry_68_ = _e93;
                                    if _e93 {
                                        let _e96 = (_e21 + 1u);
                                        if (_e21 > (4294967295u - 1u)) {
                                        } else {
                                            if (_e96 > (4294967295u - _e91)) {
                                                fe_trapped = true;
                                                break;
                                            }
                                            let _e105 = fixed_local_65_[_e91];
                                            outputs[i32((_e96 + _e91))] = _e105;
                                            local_2 = (_e91 + 1u);
                                            continue;
                                        }
                                        fe_trapped = true;
                                        break;
                                    } else {
                                        break;
                                    }
                                }
                                if (_e21 > (4294967295u - 11u)) {
                                } else {
                                    fixed_local_93_ = _e75;
                                    let _e120 = sign_((&fixed_local_93_));
                                    outputs[i32((_e21 + 11u))] = _e120;
                                    if (_e21 > (4294967295u - 12u)) {
                                    } else {
                                        fixed_local_103_ = _e74;
                                        let _e130 = to_binary32_bits((&fixed_local_103_), (&fe_trapped));
                                        outputs[i32((_e21 + 12u))] = _e130;
                                        if (_e21 > (4294967295u - 13u)) {
                                        } else {
                                            fixed_local_113_ = _e75;
                                            let _e140 = to_binary32_bits((&fixed_local_113_), (&fe_trapped));
                                            outputs[i32((_e21 + 13u))] = _e140;
                                            if (_e21 > (4294967295u - 14u)) {
                                            } else {
                                                fixed_local_123_ = _e76;
                                                let _e150 = sign_((&fixed_local_123_));
                                                outputs[i32((_e21 + 14u))] = _e150;
                                                if (_e21 > (4294967295u - 15u)) {
                                                } else {
                                                    fixed_local_133_ = _e76;
                                                    let _e160 = to_digits((&fixed_local_133_));
                                                    fixed_local_135_ = _e160;
                                                    let _e163 = digest((&fixed_local_135_));
                                                    outputs[i32((_e21 + 15u))] = _e163;
                                                    let _e168 = inputs[i32(_e11)];
                                                    if (_e11 > (4294967295u - 4u)) {
                                                    } else {
                                                        let _e176 = inputs[i32((_e11 + 4u))];
                                                        if (_e21 > (4294967295u - 16u)) {
                                                        } else {
                                                            outputs[i32((_e21 + 16u))] = 12648430u;
                                                            if (_e21 > (4294967295u - 17u)) {
                                                            } else {
                                                                outputs[i32((_e21 + 17u))] = _e168;
                                                                if (_e21 > (4294967295u - 18u)) {
                                                                } else {
                                                                    outputs[i32((_e21 + 18u))] = _e176;
                                                                    if (_e21 > (4294967295u - 19u)) {
                                                                    } else {
                                                                        outputs[i32((_e21 + 19u))] = (_e168 >> 31u);
                                                                        let _e208 = from_binary32_bits(_e168, (&fe_trapped));
                                                                        if (_e21 > (4294967295u - 20u)) {
                                                                        } else {
                                                                            fixed_local_189_ = _e208;
                                                                            let _e216 = to_digits((&fixed_local_189_));
                                                                            fixed_local_191_ = _e216;
                                                                            let _e219 = digest((&fixed_local_191_));
                                                                            outputs[i32((_e21 + 20u))] = _e219;
                                                                            if (_e21 > (4294967295u - 21u)) {
                                                                            } else {
                                                                                fixed_local_201_ = _e208;
                                                                                let _e229 = sign_((&fixed_local_201_));
                                                                                outputs[i32((_e21 + 21u))] = _e229;
                                                                                if (_e21 > (4294967295u - 22u)) {
                                                                                } else {
                                                                                    fixed_local_211_ = _e208;
                                                                                    let _e239 = to_binary32_bits((&fixed_local_211_), (&fe_trapped));
                                                                                    outputs[i32((_e21 + 22u))] = _e239;
                                                                                    let _e242 = fill_lanes(_e168);
                                                                                    if (_e21 > (4294967295u - 23u)) {
                                                                                    } else {
                                                                                        fixed_local_224_ = _e242.digits;
                                                                                        let _e251 = digest((&fixed_local_224_));
                                                                                        outputs[i32((_e21 + 23u))] = _e251;
                                                                                        if (_e21 > (4294967295u - 24u)) {
                                                                                        } else {
                                                                                            let _e259 = literal_lanes(_e168);
                                                                                            fixed_local_235_ = _e259;
                                                                                            let _e262 = fold_lanes((&fixed_local_235_));
                                                                                            outputs[i32((_e21 + 24u))] = _e262;
                                                                                            if (_e21 > (4294967295u - 25u)) {
                                                                                            } else {
                                                                                                if _e242.negative {
                                                                                                    local_3 = 1u;
                                                                                                }
                                                                                                let _e275 = local_3;
                                                                                                outputs[i32((_e21 + 25u))] = _e275;
                                                                                                if (_e21 > (4294967295u - 26u)) {
                                                                                                } else {
                                                                                                    let _e283 = fill_array(_e168);
                                                                                                    fixed_local_273_ = _e283;
                                                                                                    let _e286 = digest((&fixed_local_273_));
                                                                                                    outputs[i32((_e21 + 26u))] = _e286;
                                                                                                    fixed_local_295_ = FeLocal_fe_Lanes_7d9d22f9_6_((((_e168 >> 31u) == 0u) == false), array<u32, 10>());
                                                                                                    local_4 = 0u;
                                                                                                    loop {
                                                                                                        let _e304 = local_4;
                                                                                                        let _e306 = (_e304 < 10u);
                                                                                                        loop_header_carry_297_ = _e306;
                                                                                                        if _e306 {
                                                                                                            fixed_local_295_.digits[_e304] = ((_e168 >> _e304) & 8191u);
                                                                                                            local_4 = (_e304 + 1u);
                                                                                                            continue;
                                                                                                        } else {
                                                                                                            break;
                                                                                                        }
                                                                                                    }
                                                                                                    if (_e21 > (4294967295u - 27u)) {
                                                                                                    } else {
                                                                                                        let _e321 = fold_lanes((&fixed_local_295_));
                                                                                                        outputs[i32((_e21 + 27u))] = _e321;
                                                                                                        fixed_local_337_ = FeLocal_fe_Lanes_7d9d22f9_6_((((_e168 >> 31u) == 0u) == false), array<u32, 10>());
                                                                                                        fill_into((&fixed_local_337_), _e168);
                                                                                                        if (_e21 > (4294967295u - 28u)) {
                                                                                                        } else {
                                                                                                            let _e339 = fold_lanes((&fixed_local_337_));
                                                                                                            outputs[i32((_e21 + 28u))] = _e339;
                                                                                                            let _e342 = count_flag(_e168, (&fe_trapped));
                                                                                                            if (_e21 > (4294967295u - 29u)) {
                                                                                                            } else {
                                                                                                                if _e342.negative {
                                                                                                                    local_5 = 2147483648u;
                                                                                                                }
                                                                                                                let _e354 = local_5;
                                                                                                                outputs[i32((_e21 + 29u))] = (_e342.count | _e354);
                                                                                                                if (_e21 > (4294967295u - 30u)) {
                                                                                                                } else {
                                                                                                                    let _e363 = loop_digest(_e168);
                                                                                                                    outputs[i32((_e21 + 30u))] = _e363;
                                                                                                                    local_1 = true;
                                                                                                                }
                                                                                                                let _e369 = local_1;
                                                                                                                if _e369 {
                                                                                                                }
                                                                                                            }
                                                                                                            let _e371 = local_1;
                                                                                                            if _e371 {
                                                                                                            }
                                                                                                        }
                                                                                                        let _e373 = local_1;
                                                                                                        if _e373 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e375 = local_1;
                                                                                                    if _e375 {
                                                                                                    }
                                                                                                }
                                                                                                let _e377 = local_1;
                                                                                                if _e377 {
                                                                                                }
                                                                                            }
                                                                                            let _e379 = local_1;
                                                                                            if _e379 {
                                                                                            }
                                                                                        }
                                                                                        let _e381 = local_1;
                                                                                        if _e381 {
                                                                                        }
                                                                                    }
                                                                                    let _e383 = local_1;
                                                                                    if _e383 {
                                                                                    }
                                                                                }
                                                                                let _e385 = local_1;
                                                                                if _e385 {
                                                                                }
                                                                            }
                                                                            let _e387 = local_1;
                                                                            if _e387 {
                                                                            }
                                                                        }
                                                                        let _e389 = local_1;
                                                                        if _e389 {
                                                                        }
                                                                    }
                                                                    let _e391 = local_1;
                                                                    if _e391 {
                                                                    }
                                                                }
                                                                let _e393 = local_1;
                                                                if _e393 {
                                                                }
                                                            }
                                                            let _e395 = local_1;
                                                            if _e395 {
                                                            }
                                                        }
                                                        let _e397 = local_1;
                                                        if _e397 {
                                                        }
                                                    }
                                                    let _e399 = local_1;
                                                    if _e399 {
                                                    }
                                                }
                                                let _e401 = local_1;
                                                if _e401 {
                                                }
                                            }
                                            let _e403 = local_1;
                                            if _e403 {
                                            }
                                        }
                                        let _e405 = local_1;
                                        if _e405 {
                                        }
                                    }
                                    let _e407 = local_1;
                                    if _e407 {
                                    }
                                }
                                let _e410 = local_1;
                                if _e410 {
                                } else {
                                    fe_trapped = true;
                                }
                            }
                            let _e412 = local_1;
                            if _e412 {
                            }
                        }
                        let _e415 = local_1;
                        if _e415 {
                        } else {
                            fe_trapped = true;
                        }
                    }
                    let _e418 = local_1;
                    if _e418 {
                    } else {
                        fe_trapped = true;
                    }
                }
                let _e420 = local_1;
                if _e420 {
                }
            }
            let _e423 = local_1;
            if _e423 {
            } else {
                fe_trapped = true;
            }
        }
        let _e425 = local_1;
        if _e425 {
        }
    }
    let _e428 = local_1;
    if _e428 {
    } else {
        fe_trapped = true;
    }
    let _e439 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 512u)) + (global_invocation_id.z * 512u))] = u32(_e439);
}
