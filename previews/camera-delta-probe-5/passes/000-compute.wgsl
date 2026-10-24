struct FeLocal_fe_Last_eb970eb0_3_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_4_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_3_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_5_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_4_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_6_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_5_,
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

struct FeLocal_fe_Lanes_7d9d22f9_1_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_Flag_55212797_2_ {
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

fn from_quad(a0_: f32, a1_1: f32, a2_: f32, a3_: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_6_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_6_(a0_, FeLocal_fe_More_More_Last_60a5ba63_5_(a1_1, FeLocal_fe_More_Last_1ac585f5_4_(a2_, FeLocal_fe_Last_eb970eb0_3_(a3_))));
}

fn to_quad(a0_1: FeLocal_fe_More_More_More_Last_e6310ae8_6_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_7_ {
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

fn clear_digits(a0_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_4: ptr<function, bool>) {
    var local_8: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_5_: bool;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_4);
    local_8 = 0u;
    loop {
        let _e8 = local_8;
        let _e9 = (_e8 < _e2);
        loop_header_carry_5_ = _e9;
        if _e9 {
            (*a0_3).digits[_e8] = 0u;
            local_8 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return_2 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_signed_word_0e35_(a0_4: u32, fe_trapped_5: ptr<function, bool>) {
    std_lib_evm_effects_assert_2501_(((2147483647u < a0_4) == false), fe_trapped_5);
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_9: u32;
    var local_10: bool = false;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_6);
    let _e4 = (_e2 - 1u);
    precision_lib_array_fixed_signed_word_0e35_(_e4, fe_trapped_6);
    let _e12 = ((_e4 & 2147483648u) != 0u);
    let _e13 = ((13u & 2147483648u) != 0u);
    let _e17 = select(_e4, (0u - _e4), _e12);
    let _e21 = (_e17 != 0u);
    if (_e21 && (select(13u, (0u - 13u), _e13) > (select((2147483648u - 1u), 2147483648u, (_e12 != _e13)) / select(1u, _e17, _e21)))) {
        (*fe_trapped_6) = true;
    } else {
        local_9 = (_e4 * 13u);
        local_10 = true;
    }
    let _e31 = local_9;
    return _e31;
}

fn precision_lib_array_fixed_unsigned_word_42a2_(a0_6: u32, fe_trapped_7: ptr<function, bool>) {
    std_lib_evm_effects_assert_2501_(((bitcast<i32>(a0_6) < bitcast<i32>(0u)) == false), fe_trapped_7);
    return;
}

fn load_significand(a0_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_2: u32, a2_1: u32, fe_trapped_8: ptr<function, bool>) {
    var local_11: u32 = u32();
    var local_12: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_8_: bool;
    var local_13: u32 = u32();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_8);
    local_11 = a2_1;
    local_12 = 0u;
    loop {
        let _e12 = local_11;
        let _e14 = local_12;
        let _e15 = (_e14 < _e4);
        loop_header_carry_8_ = _e15;
        if _e15 {
            if ((bitcast<i32>(_e12) < bitcast<i32>(24u)) == false) {
                local_13 = 0u;
            } else {
                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e12)) == false) {
                    local_13 = 0u;
                } else {
                    if ((bitcast<i32>(_e12) < bitcast<i32>(0u)) == false) {
                        precision_lib_array_fixed_unsigned_word_42a2_(_e12, fe_trapped_8);
                        local_13 = ((a1_2 >> _e12) & 8191u);
                    } else {
                        let _e39 = (0u - _e12);
                        precision_lib_array_fixed_unsigned_word_42a2_(_e39, fe_trapped_8);
                        local_13 = ((a1_2 << _e39) & 8191u);
                    }
                }
            }
            let _e50 = local_13;
            (*a0_7).digits[_e14] = _e50;
            let _e56 = (_e12 + 13u);
            if ((((_e12 ^ _e56) & (13u ^ _e56)) & 2147483648u) != 0u) {
                (*fe_trapped_8) = true;
                break;
            }
            local_11 = _e56;
            local_12 = (_e14 + 1u);
            continue;
        } else {
            loop_did_return_3 = true;
            break;
        }
    }
    return;
}

fn assign_binary32_bits(a0_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_3: u32, fe_trapped_9: ptr<function, bool>) {
    var local_14: u32;
    var local_15: bool = false;
    var local_16: bool = bool();
    var local_17: u32;
    var local_18: bool = false;

    let _e6 = (a1_3 & 2147483647u);
    std_lib_evm_effects_assert_2501_((_e6 < 1174405120u), fe_trapped_9);
    if (((a1_3 >> 31u) == 0u) == false) {
        if ((_e6 == 0u) == false) {
            local_16 = true;
        }
    }
    let _e23 = local_16;
    (*a0_8).negative = _e23;
    let _e26 = (_e6 >> 23u);
    if (_e26 == 0u) {
        clear_digits(a0_8, fe_trapped_9);
        local_18 = true;
    } else {
        precision_lib_array_fixed_signed_word_0e35_(_e26, fe_trapped_9);
        let _e38 = (_e26 - 150u);
        if ((((_e26 ^ _e38) & (_e26 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e44 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_8, fe_trapped_9);
            let _e47 = (_e38 + _e44);
            if ((((_e38 ^ _e47) & (_e44 ^ _e47)) & 2147483648u) != 0u) {
            } else {
                let _e56 = (0u - _e47);
                if ((((0u ^ _e56) & (0u ^ _e47)) & 2147483648u) != 0u) {
                    (*fe_trapped_9) = true;
                }
                load_significand(a0_8, ((_e6 & 8388607u) | 8388608u), _e56, fe_trapped_9);
                local_18 = true;
            }
            let _e66 = local_18;
            if _e66 {
            }
        }
        let _e69 = local_18;
        if _e69 {
        } else {
            (*fe_trapped_9) = true;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_g16d4_2244_(a0_9: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_4: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_10: ptr<function, bool>) {
    var local_19: u32 = u32();
    var local_20: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_7_: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_10);
    local_19 = 0u;
    local_20 = 0u;
    loop {
        let _e13 = local_19;
        let _e15 = local_20;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_ = _e16;
        if _e16 {
            let _e19 = (*a1_4).digits[_e15];
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
                local_19 = (_e28 >> 13u);
                local_20 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_10) = true;
            break;
        } else {
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_10: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_11: ptr<function, bool>) -> bool {
    var local_21: u32 = u32();
    var loop_result_5: bool;
    var loop_did_return_5: bool = false;
    var loop_header_carry_5_1: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_11);
    local_21 = _e3;
    loop {
        let _e8 = local_21;
        let _e10 = (0u < _e8);
        loop_header_carry_5_1 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_10).digits[_e12];
            let _e18 = (*a1_5).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_21 = _e12;
                continue;
            }
            let _e25 = (*a0_10).digits[_e12];
            let _e28 = (*a1_5).digits[_e12];
            loop_result_5 = (_e25 < _e28);
            loop_did_return_5 = true;
            break;
        } else {
            loop_result_5 = false;
            loop_did_return_5 = true;
            break;
        }
    }
    let _e39 = loop_result_5;
    return _e39;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_g16d4_11c1_(a0_11: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_6: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a3_1: bool, fe_trapped_12: ptr<function, bool>) {
    var local_22: u32 = u32();
    var local_23: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_8_1: bool;
    var local_24: u32 = u32();
    var local_25: u32 = u32();

    let _e5 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_12);
    local_22 = 0u;
    local_23 = 0u;
    loop {
        let _e14 = local_22;
        let _e16 = local_23;
        let _e17 = (_e16 < _e5);
        loop_header_carry_8_1 = _e17;
        if _e17 {
            if a3_1 {
                let _e21 = (*a2_3).digits[_e16];
                local_24 = _e21;
            } else {
                let _e24 = (*a1_6).digits[_e16];
                local_24 = _e24;
            }
            let _e29 = local_24;
            if a3_1 {
                let _e32 = (*a1_6).digits[_e16];
                local_25 = _e32;
            } else {
                let _e35 = (*a2_3).digits[_e16];
                local_25 = _e35;
            }
            let _e39 = local_25;
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
                        local_22 = (1u - _e54);
                        local_23 = (_e16 + 1u);
                        continue;
                    }
                }
            }
            (*fe_trapped_12) = true;
            break;
        } else {
            loop_did_return_6 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_assign_sum_g16d4_af20_(a0_12: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_4: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_13: ptr<function, bool>) {
    var local_26: u32;
    var local_27: bool = false;
    var local_28: bool = bool();

    let _e6 = (*a1_7).negative;
    (*a0_12).negative = _e6;
    let _e9 = (*a1_7).negative;
    let _e11 = (*a2_4).negative;
    if (_e9 == _e11) {
        precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_g16d4_2244_(a0_12, a1_7, a2_4, fe_trapped_13);
    } else {
        let _e14 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a1_7, a2_4, fe_trapped_13);
        if _e14 {
            let _e16 = (*a2_4).negative;
            local_28 = _e16;
        } else {
            let _e18 = (*a1_7).negative;
            local_28 = _e18;
        }
        let _e22 = local_28;
        (*a0_12).negative = _e22;
        precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_g16d4_11c1_(a0_12, a1_7, a2_4, _e14, fe_trapped_13);
    }
    return;
}

fn assign_quad(a0_13: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_8: f32, a2_5: f32, a3_2: f32, a4_: f32, fe_trapped_14: ptr<function, bool>) {
    var fixed_local_6_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_8_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_10_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e6 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_14);
    fixed_local_6_ = _e6;
    let _e9 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_14);
    fixed_local_8_ = _e9;
    let _e12 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_14);
    fixed_local_10_ = _e12;
    assign_binary32_bits((&fixed_local_6_), bitcast<u32>(a1_8), fe_trapped_14);
    assign_binary32_bits((&fixed_local_8_), bitcast<u32>(a2_5), fe_trapped_14);
    precision_lib_array_fixed_impl_ArrayFixed_c11e_assign_sum_g16d4_af20_((&fixed_local_10_), (&fixed_local_6_), (&fixed_local_8_), fe_trapped_14);
    assign_binary32_bits((&fixed_local_8_), bitcast<u32>(a3_2), fe_trapped_14);
    precision_lib_array_fixed_impl_ArrayFixed_c11e_assign_sum_g16d4_af20_((&fixed_local_6_), (&fixed_local_10_), (&fixed_local_8_), fe_trapped_14);
    assign_binary32_bits((&fixed_local_8_), bitcast<u32>(a4_), fe_trapped_14);
    precision_lib_array_fixed_impl_ArrayFixed_c11e_assign_sum_g16d4_af20_((&fixed_local_10_), (&fixed_local_6_), (&fixed_local_8_), fe_trapped_14);
    let _e19 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_14);
    fixed_local_6_ = _e19;
    precision_lib_array_fixed_impl_ArrayFixed_c11e_assign_sum_g16d4_af20_(a0_13, (&fixed_local_10_), (&fixed_local_6_), fe_trapped_14);
    return;
}

fn from_expansion(a0_14: FeLocal_fe_More_More_More_Last_e6310ae8_6_, fe_trapped_15: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var fixed_local_24_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e2 = to_quad(a0_14);
    let _e7 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_15);
    fixed_local_24_ = _e7;
    assign_quad((&fixed_local_24_), _e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, fe_trapped_15);
    let _e10 = fixed_local_24_;
    return _e10;
}

fn neg(a0_15: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_((a0_15.negative == false), a0_15.digits);
}

fn add(a0_16: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, a1_9: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var fixed_local_3_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_5_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_16);
    fixed_local_3_ = _e3;
    fixed_local_5_ = a0_16;
    fixed_local_7_ = a1_9;
    precision_lib_array_fixed_impl_ArrayFixed_c11e_assign_sum_g16d4_af20_((&fixed_local_3_), (&fixed_local_5_), (&fixed_local_7_), fe_trapped_16);
    let _e10 = fixed_local_3_;
    return _e10;
}

fn sub(a0_17: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, a1_10: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = neg(a1_10);
    let _e4 = add(a0_17, _e3, fe_trapped_17);
    return _e4;
}

fn copy_digits(a0_18: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_11: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_18: ptr<function, bool>) {
    var local_29: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_6_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_18);
    local_29 = 0u;
    loop {
        let _e9 = local_29;
        let _e10 = (_e9 < _e3);
        loop_header_carry_6_ = _e10;
        if _e10 {
            let _e13 = (*a1_11).digits[_e9];
            (*a0_18).digits[_e9] = _e13;
            local_29 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_7 = true;
            break;
        }
    }
    return;
}

fn assign_negated(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_12: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_19: ptr<function, bool>) {
    let _e4 = (*a1_12).negative;
    (*a0_19).negative = (_e4 == false);
    copy_digits(a0_19, a1_12, fe_trapped_19);
    return;
}

fn limb_highest_bit(a0_20: u32) -> u32 {
    var local_30: u32;
    var local_31: bool = false;
    var local_32: u32 = u32();

    if ((a0_20 < 4096u) == false) {
        local_32 = 12u;
    } else {
        if ((a0_20 < 2048u) == false) {
            local_32 = 11u;
        } else {
            if ((a0_20 < 1024u) == false) {
                local_32 = 10u;
            } else {
                if ((a0_20 < 512u) == false) {
                    local_32 = 9u;
                } else {
                    if ((a0_20 < 256u) == false) {
                        local_32 = 8u;
                    } else {
                        if ((a0_20 < 128u) == false) {
                            local_32 = 7u;
                        } else {
                            if ((a0_20 < 64u) == false) {
                                local_32 = 6u;
                            } else {
                                if ((a0_20 < 32u) == false) {
                                    local_32 = 5u;
                                } else {
                                    if ((a0_20 < 16u) == false) {
                                        local_32 = 4u;
                                    } else {
                                        if ((a0_20 < 8u) == false) {
                                            local_32 = 3u;
                                        } else {
                                            if ((a0_20 < 4u) == false) {
                                                local_32 = 2u;
                                            } else {
                                                if ((a0_20 < 2u) == false) {
                                                    local_32 = 1u;
                                                } else {
                                                    if (a0_20 == 1u) {
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

fn highest_bit(a0_21: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_33: u32 = u32();
    var local_34: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_4_: bool;
    var local_35: u32;
    var local_36: bool = false;
    var local_37: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_20);
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
                let _e21 = (*a0_21).digits[_e18];
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
        precision_lib_array_fixed_signed_word_0e35_(_e28, fe_trapped_20);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_20) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_20) = true;
            } else {
                local_37 = _e58;
            }
        }
    }
    let _e69 = local_37;
    return _e69;
}

fn word_from(a0_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_13: u32, fe_trapped_21: ptr<function, bool>) -> u32 {
    var local_38: u32;
    var local_39: bool = false;
    var local_40: u32;
    var local_41: bool = false;
    var local_42: u32 = u32();
    var local_43: u32 = u32();
    var local_44: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_34_: bool;

    if (bitcast<i32>(a1_13) < bitcast<i32>(0u)) {
        local_38 = 0u;
        local_39 = true;
    }
    let _e77 = local_39;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_13, fe_trapped_21);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_21);
        let _e15 = (a1_13 / 13u);
        if ((_e15 < _e13) == false) {
            local_40 = 0u;
            local_41 = true;
        }
        let _e72 = local_41;
        if _e72 {
        } else {
            let _e24 = (a1_13 % 13u);
            let _e27 = (*a0_22).digits[_e15];
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
                        let _e51 = (*a0_22).digits[_e45];
                        local_42 = (_e41 + 13u);
                        local_43 = (_e43 | (_e51 << _e41));
                        local_44 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_9 = _e43;
                        loop_did_return_9 = true;
                        break;
                    }
                } else {
                    loop_result_9 = _e43;
                    loop_did_return_9 = true;
                    break;
                }
            }
            let _e69 = loop_result_9;
            local_40 = _e69;
        }
        let _e74 = local_40;
        local_38 = _e74;
    }
    let _e79 = local_38;
    return _e79;
}

fn bit_at(a0_23: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_14: u32, fe_trapped_22: ptr<function, bool>) -> u32 {
    var local_45: u32;
    var local_46: bool = false;
    var local_47: u32;
    var local_48: bool = false;

    if (bitcast<i32>(a1_14) < bitcast<i32>(0u)) {
        local_45 = 0u;
        local_46 = true;
    }
    let _e38 = local_46;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_14, fe_trapped_22);
        let _e14 = (a1_14 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_22);
        if ((_e14 < _e15) == false) {
            local_47 = 0u;
            local_48 = true;
        }
        let _e33 = local_48;
        if _e33 {
        } else {
            let _e25 = (*a0_23).digits[_e14];
            local_47 = ((_e25 >> (a1_14 % 13u)) & 1u);
        }
        let _e35 = local_47;
        local_45 = _e35;
    }
    let _e40 = local_45;
    return _e40;
}

fn any_below(a0_24: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_15: u32, fe_trapped_23: ptr<function, bool>) -> u32 {
    var local_49: u32;
    var local_50: bool = false;
    var local_51: u32 = u32();
    var local_52: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_15_: bool;
    var local_53: u32;
    var local_54: bool = false;
    var local_55: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_15)) == false) {
        local_49 = 0u;
        local_50 = true;
    }
    let _e65 = local_50;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_15, fe_trapped_23);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_23);
        local_51 = 0u;
        local_52 = 0u;
        loop {
            let _e25 = local_51;
            let _e27 = local_52;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_15 / 13u)) {
                    let _e32 = (*a0_24).digits[_e27];
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
            let _e50 = (*a0_24).digits[_e42];
            let _e52 = (1u << (a1_15 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_23) = true;
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

fn project_binary32_(a0_25: u32, a1_16: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_24: ptr<function, bool>) -> u32 {
    var local_56: u32;
    var local_57: bool = false;
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();

    let _e5 = highest_bit(a1_16, fe_trapped_24);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_16, fe_trapped_24);
        let _e13 = (_e5 - _e10);
        if ((((_e5 ^ _e13) & (_e5 ^ _e10)) & 2147483648u) != 0u) {
            (*fe_trapped_24) = true;
        } else {
            let _e23 = (_e13 + 127u);
            if ((((_e13 ^ _e23) & (127u ^ _e23)) & 2147483648u) != 0u) {
                (*fe_trapped_24) = true;
            } else {
                let _e32 = (_e5 - 23u);
                if (bitcast<i32>(_e32) < bitcast<i32>(0u)) {
                    let _e40 = word_from(a1_16, 0u, fe_trapped_24);
                    local_59 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from(a1_16, _e32, fe_trapped_24);
                    local_59 = _e42;
                }
                let _e47 = local_59;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_16, _e49, fe_trapped_24);
                let _e51 = any_below(a1_16, _e49, fe_trapped_24);
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
                    (*fe_trapped_24) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_24) = true;
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
                    local_58 = (((a0_25 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_58;
    return _e103;
}

fn to_binary32_bits(a0_26: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_25: ptr<function, bool>) -> u32 {
    var local_63: u32;
    var local_64: bool = false;
    var local_65: u32 = u32();

    let _e5 = (*a0_26).negative;
    if _e5 {
        local_65 = 1u;
    }
    let _e9 = local_65;
    let _e10 = project_binary32_(_e9, a0_26, fe_trapped_25);
    return _e10;
}

fn to_f32_(a0_27: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_26: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_27, fe_trapped_26);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_28: FeLocal_fe_More_More_More_Last_e6310ae8_6_, a1_17: FeLocal_fe_More_More_More_Last_e6310ae8_6_, fe_trapped_27: ptr<function, bool>) -> f32 {
    var fixed_local_43_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_47_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e3 = to_quad(a0_28);
    let _e8 = to_quad(a1_17);
    let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_27);
    fixed_local_43_ = _e13;
    assign_quad((&fixed_local_43_), _e3.f0_, _e3.f1_, _e3.f2_, _e3.f3_, fe_trapped_27);
    let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_27);
    fixed_local_45_ = _e16;
    assign_quad((&fixed_local_45_), _e8.f0_, _e8.f1_, _e8.f2_, _e8.f3_, fe_trapped_27);
    let _e19 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_27);
    fixed_local_47_ = _e19;
    assign_negated((&fixed_local_47_), (&fixed_local_43_), fe_trapped_27);
    let _e22 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_27);
    fixed_local_43_ = _e22;
    precision_lib_array_fixed_impl_ArrayFixed_c11e_assign_sum_g16d4_af20_((&fixed_local_43_), (&fixed_local_45_), (&fixed_local_47_), fe_trapped_27);
    let _e23 = to_f32_((&fixed_local_43_), fe_trapped_27);
    return _e23;
}

fn to_digits(a0_29: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>) -> array<u32, 10> {
    let _e2 = (*a0_29).digits;
    return _e2;
}

fn sign_(a0_30: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>) -> u32 {
    var local_66: u32;
    var local_67: bool = false;
    var local_68: u32 = u32();

    let _e4 = (*a0_30).negative;
    if _e4 {
        local_68 = 1u;
    }
    let _e8 = local_68;
    return _e8;
}

fn digest(a0_31: ptr<function, array<u32, 10>>) -> u32 {
    var local_69: u32 = u32();
    var local_70: u32 = u32();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_4_1: bool;

    local_69 = 0u;
    local_70 = 0u;
    loop {
        let _e9 = local_69;
        let _e11 = local_70;
        let _e13 = (_e11 < 10u);
        loop_header_carry_4_1 = _e13;
        if _e13 {
            let _e15 = (*a0_31)[_e11];
            local_69 = (_e9 ^ (_e15 << ((_e11 * 7u) % 19u)));
            local_70 = (_e11 + 1u);
            continue;
        } else {
            loop_result_11 = _e9;
            loop_did_return_11 = true;
            break;
        }
    }
    let _e31 = loop_result_11;
    return _e31;
}

fn from_binary32_bits(a0_32: u32, fe_trapped_28: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var fixed_local_2_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_28);
    fixed_local_2_ = _e2;
    assign_binary32_bits((&fixed_local_2_), a0_32, fe_trapped_28);
    let _e5 = fixed_local_2_;
    return _e5;
}

fn fill_lanes(a0_33: u32) -> FeLocal_fe_Lanes_7d9d22f9_1_ {
    var fixed_local_31_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var local_71: u32 = u32();
    var loop_result_12: FeLocal_fe_Lanes_7d9d22f9_1_;
    var loop_did_return_12: bool = false;
    var loop_header_carry_34_1: bool;

    fixed_local_31_ = FeLocal_fe_Lanes_7d9d22f9_1_((((a0_33 >> 31u) == 0u) == false), array<u32, 10>());
    local_71 = 0u;
    loop {
        let _e16 = local_71;
        let _e18 = (_e16 < 10u);
        loop_header_carry_34_1 = _e18;
        if _e18 {
            fixed_local_31_.digits[_e16] = ((a0_33 >> _e16) & 8191u);
            local_71 = (_e16 + 1u);
            continue;
        } else {
            let _e27 = fixed_local_31_;
            loop_result_12 = _e27;
            loop_did_return_12 = true;
            break;
        }
    }
    let _e33 = loop_result_12;
    return _e33;
}

fn literal_lanes(a0_34: u32) -> FeLocal_fe_Lanes_7d9d22f9_1_ {
    return FeLocal_fe_Lanes_7d9d22f9_1_((((a0_34 >> 31u) == 0u) == false), array<u32, 10>((a0_34 & 8191u), ((a0_34 >> 1u) & 8191u), ((a0_34 >> 2u) & 8191u), ((a0_34 >> 3u) & 8191u), ((a0_34 >> 4u) & 8191u), ((a0_34 >> 5u) & 8191u), ((a0_34 >> 6u) & 8191u), ((a0_34 >> 7u) & 8191u), ((a0_34 >> 8u) & 8191u), ((a0_34 >> 9u) & 8191u)));
}

fn fold_lanes(a0_35: ptr<function, FeLocal_fe_Lanes_7d9d22f9_1_>) -> u32 {
    var local_72: u32;
    var local_73: bool = false;
    var local_74: u32 = u32();
    var fixed_local_6_1: array<u32, 10> = array<u32, 10>();

    let _e4 = (*a0_35).digits;
    fixed_local_6_1 = _e4;
    let _e7 = digest((&fixed_local_6_1));
    let _e9 = (*a0_35).negative;
    if _e9 {
        local_74 = 2147483648u;
    }
    let _e13 = local_74;
    return (_e7 | _e13);
}

fn fill_array(a0_36: u32) -> array<u32, 10> {
    var fixed_local_2_1: array<u32, 10> = array<u32, 10>();
    var local_75: u32 = u32();
    var loop_result_13: array<u32, 10>;
    var loop_did_return_13: bool = false;
    var loop_header_carry_24_: bool;

    local_75 = 0u;
    loop {
        let _e8 = local_75;
        let _e10 = (_e8 < 10u);
        loop_header_carry_24_ = _e10;
        if _e10 {
            fixed_local_2_1[_e8] = ((a0_36 >> _e8) & 8191u);
            local_75 = (_e8 + 1u);
            continue;
        } else {
            let _e18 = fixed_local_2_1;
            loop_result_13 = _e18;
            loop_did_return_13 = true;
            break;
        }
    }
    let _e24 = loop_result_13;
    return _e24;
}

fn fill_into(a0_37: ptr<function, FeLocal_fe_Lanes_7d9d22f9_1_>, a1_18: u32) {
    var local_76: u32 = u32();
    var loop_result_14: u32;
    var loop_did_return_14: bool = false;
    var loop_header_carry_5_2: bool;

    local_76 = 0u;
    loop {
        let _e7 = local_76;
        let _e9 = (_e7 < 10u);
        loop_header_carry_5_2 = _e9;
        if _e9 {
            (*a0_37).digits[_e7] = ((a1_18 >> _e7) & 8191u);
            local_76 = (_e7 + 1u);
            continue;
        } else {
            loop_did_return_14 = true;
            break;
        }
    }
    return;
}

fn count_flag(a0_38: u32, fe_trapped_29: ptr<function, bool>) -> FeLocal_fe_Flag_55212797_2_ {
    var fixed_local_12_: FeLocal_fe_Flag_55212797_2_ = FeLocal_fe_Flag_55212797_2_();
    var local_77: u32 = u32();
    var loop_result_15: FeLocal_fe_Flag_55212797_2_;
    var loop_did_return_15: bool = false;
    var loop_header_carry_15_1: bool;

    fixed_local_12_ = FeLocal_fe_Flag_55212797_2_((((a0_38 >> 31u) == 0u) == false), 0u);
    local_77 = 0u;
    loop {
        let _e17 = local_77;
        let _e19 = (_e17 < 10u);
        loop_header_carry_15_1 = _e19;
        if _e19 {
            let _e21 = fixed_local_12_.count;
            let _e24 = ((a0_38 >> _e17) & 1u);
            if (_e21 > (4294967295u - _e24)) {
                (*fe_trapped_29) = true;
                break;
            }
            fixed_local_12_.count = (_e21 + _e24);
            local_77 = (_e17 + 1u);
            continue;
        } else {
            let _e34 = fixed_local_12_;
            loop_result_15 = _e34;
            loop_did_return_15 = true;
            break;
        }
    }
    let _e40 = loop_result_15;
    return _e40;
}

fn loop_digest(a0_39: u32) -> u32 {
    var fixed_local_2_2: array<u32, 10> = array<u32, 10>();
    var local_78: u32 = u32();
    var loop_result_16: u32;
    var loop_did_return_16: bool = false;
    var loop_header_carry_24_1: bool;

    local_78 = 0u;
    loop {
        let _e8 = local_78;
        let _e10 = (_e8 < 10u);
        loop_header_carry_24_1 = _e10;
        if _e10 {
            fixed_local_2_2[_e8] = ((a0_39 >> _e8) & 8191u);
            local_78 = (_e8 + 1u);
            continue;
        } else {
            let _e18 = digest((&fixed_local_2_2));
            loop_result_16 = _e18;
            loop_did_return_16 = true;
            break;
        }
    }
    let _e24 = loop_result_16;
    return _e24;
}

fn const_index_lanes(a0_40: u32) -> FeLocal_fe_Lanes_7d9d22f9_1_ {
    var fixed_local_31_1: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();

    fixed_local_31_1 = FeLocal_fe_Lanes_7d9d22f9_1_((((a0_40 >> 31u) == 0u) == false), array<u32, 10>());
    fixed_local_31_1.digits[0] = (a0_40 & 8191u);
    fixed_local_31_1.digits[1] = ((a0_40 >> 1u) & 8191u);
    fixed_local_31_1.digits[2] = ((a0_40 >> 2u) & 8191u);
    fixed_local_31_1.digits[3] = ((a0_40 >> 3u) & 8191u);
    fixed_local_31_1.digits[4] = ((a0_40 >> 4u) & 8191u);
    fixed_local_31_1.digits[5] = ((a0_40 >> 5u) & 8191u);
    fixed_local_31_1.digits[6] = ((a0_40 >> 6u) & 8191u);
    fixed_local_31_1.digits[7] = ((a0_40 >> 7u) & 8191u);
    fixed_local_31_1.digits[8] = ((a0_40 >> 8u) & 8191u);
    fixed_local_31_1.digits[9] = ((a0_40 >> 9u) & 8191u);
    let _e69 = fixed_local_31_1;
    return _e69;
}

fn loop_then_literal(a0_41: u32) -> FeLocal_fe_Lanes_7d9d22f9_1_ {
    var fixed_local_2_3: array<u32, 10> = array<u32, 10>();
    var local_79: u32 = u32();
    var loop_result_17: FeLocal_fe_Lanes_7d9d22f9_1_;
    var loop_did_return_17: bool = false;
    var loop_header_carry_24_2: bool;

    local_79 = 0u;
    loop {
        let _e8 = local_79;
        let _e10 = (_e8 < 10u);
        loop_header_carry_24_2 = _e10;
        if _e10 {
            fixed_local_2_3[_e8] = ((a0_41 >> _e8) & 8191u);
            local_79 = (_e8 + 1u);
            continue;
        } else {
            let _e25 = fixed_local_2_3[0];
            let _e27 = fixed_local_2_3[1];
            let _e29 = fixed_local_2_3[2];
            let _e31 = fixed_local_2_3[3];
            let _e33 = fixed_local_2_3[4];
            let _e35 = fixed_local_2_3[5];
            let _e37 = fixed_local_2_3[6];
            let _e39 = fixed_local_2_3[7];
            let _e41 = fixed_local_2_3[8];
            let _e43 = fixed_local_2_3[9];
            loop_result_17 = FeLocal_fe_Lanes_7d9d22f9_1_((((a0_41 >> 31u) == 0u) == false), array<u32, 10>(_e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39, _e41, _e43));
            loop_did_return_17 = true;
            break;
        }
    }
    let _e51 = loop_result_17;
    return _e51;
}

fn hand_back(a0_42: ptr<function, FeLocal_fe_Lanes_7d9d22f9_1_>) -> FeLocal_fe_Lanes_7d9d22f9_1_ {
    let _e1 = (*a0_42);
    return _e1;
}

fn flip_twice(a0_43: u32) -> FeLocal_fe_Lanes_7d9d22f9_1_ {
    var fixed_local_3_1: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();

    let _e1 = literal_lanes(a0_43);
    fixed_local_3_1 = _e1;
    let _e5 = fixed_local_3_1.negative;
    fixed_local_3_1.negative = (_e5 == false);
    let _e10 = fixed_local_3_1.negative;
    fixed_local_3_1.negative = (_e10 == false);
    let _e14 = fixed_local_3_1;
    return _e14;
}

fn assert_canonical(a0_44: ptr<function, array<u32, 10>>, fe_trapped_30: ptr<function, bool>) {
    var local_80: u32 = u32();
    var loop_result_18: u32;
    var loop_did_return_18: bool = false;
    var loop_header_carry_5_3: bool;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_30);
    local_80 = 0u;
    loop {
        let _e8 = local_80;
        let _e9 = (_e8 < _e2);
        loop_header_carry_5_3 = _e9;
        if _e9 {
            let _e11 = (*a0_44)[_e8];
            std_lib_evm_effects_assert_2501_((_e11 < 8192u), fe_trapped_30);
            local_80 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return_18 = true;
            break;
        }
    }
    return;
}

fn from_digits(a0_45: bool, a1_19: ptr<function, array<u32, 10>>, fe_trapped_31: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    assert_canonical(a1_19, fe_trapped_31);
    let _e3 = (*a1_19);
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_(a0_45, _e3);
}

fn from_param(a0_46: u32, fe_trapped_32: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var fixed_local_48_: array<u32, 10> = array<u32, 10>();

    fixed_local_48_ = array<u32, 10>((a0_46 & 8191u), ((a0_46 >> 1u) & 8191u), ((a0_46 >> 2u) & 8191u), ((a0_46 >> 3u) & 8191u), ((a0_46 >> 4u) & 8191u), ((a0_46 >> 5u) & 8191u), ((a0_46 >> 6u) & 8191u), ((a0_46 >> 7u) & 8191u), ((a0_46 >> 8u) & 8191u), ((a0_46 >> 9u) & 8191u));
    let _e49 = from_digits((((a0_46 >> 31u) == 0u) == false), (&fixed_local_48_), fe_trapped_32);
    return _e49;
}

fn digit(a0_47: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_20: u32, fe_trapped_33: ptr<function, bool>) -> u32 {
    var local_81: u32;
    var local_82: bool = false;

    if (a1_20 < 10u) {
    } else {
        (*fe_trapped_33) = true;
    }
    let _e9 = (*a0_47).digits[a1_20];
    return _e9;
}

fn digit_digest(a0_48: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_34: ptr<function, bool>) -> u32 {
    var local_83: u32 = u32();
    var local_84: u32 = u32();
    var loop_result_19: u32;
    var loop_did_return_19: bool = false;
    var loop_header_carry_4_2: bool;
    var local_85: u32;
    var local_86: bool = false;
    var local_87: u32 = u32();

    local_83 = 0u;
    local_84 = 0u;
    loop {
        let _e10 = local_83;
        let _e12 = local_84;
        let _e14 = (_e12 < 10u);
        loop_header_carry_4_2 = _e14;
        if _e14 {
            let _e15 = digit(a0_48, _e12, fe_trapped_34);
            local_83 = (_e10 ^ (_e15 << ((_e12 * 7u) % 19u)));
            local_84 = (_e12 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e28 = local_83;
    let _e31 = sign_(a0_48);
    if (_e31 == 1u) {
        local_87 = 2147483648u;
    }
    let _e37 = local_87;
    return (_e28 | _e37);
}

fn multiply_magnitudes(a0_49: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_21: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_6: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_35: ptr<function, bool>) {
    var local_88: u32 = u32();
    var local_89: u32 = u32();
    var loop_result_20: u32;
    var loop_did_return_20: bool = false;
    var loop_header_carry_7_1: bool;
    var local_90: u32 = u32();
    var local_91: u32 = u32();
    var loop_result_21: u32;
    var loop_did_return_21: bool = false;
    var loop_header_carry_10_: bool;
    var local_92: u32 = u32();
    var local_93: u32 = u32();
    var loop_result_22: u32;
    var loop_did_return_22: bool = false;
    var loop_header_carry_174_: u32;
    var loop_header_carry_68_1: bool;
    var local_94: u32 = u32();
    var local_95: u32 = u32();
    var loop_result_23: u32;
    var loop_did_return_23: bool = false;
    var loop_header_carry_93_: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_35);
    local_88 = 0u;
    local_89 = 0u;
    loop {
        let _e13 = local_88;
        let _e15 = local_89;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_1 = _e16;
        if _e16 {
            local_90 = 0u;
            local_91 = 0u;
            loop {
                let _e25 = local_90;
                let _e27 = local_91;
                let _e28 = (_e27 < _e4);
                loop_header_carry_10_ = _e28;
                if _e28 {
                    let _e31 = (*a0_49).digits[_e27];
                    let _e34 = (*a1_21).digits[_e27];
                    let _e37 = (*a2_6).digits[_e15];
                    let _e41 = (_e34 * _e37);
                    let _e42 = (_e34 != 0u);
                    if (_e42 && (_e37 > (4294967295u / select(1u, _e34, _e42)))) {
                    } else {
                        let _e48 = (_e31 + _e41);
                        if (_e31 > (4294967295u - _e41)) {
                        } else {
                            let _e52 = (_e48 + _e25);
                            if (_e48 > (4294967295u - _e25)) {
                                (*fe_trapped_35) = true;
                                break;
                            }
                            (*a0_49).digits[_e27] = (_e52 & 8191u);
                            local_90 = (_e52 >> 13u);
                            local_91 = (_e27 + 1u);
                            continue;
                        }
                    }
                    (*fe_trapped_35) = true;
                    break;
                } else {
                    break;
                }
            }
            let _e69 = local_90;
            if (_e15 < (_e4 - 1u)) {
                let _e76 = (*a0_49).digits[0];
                local_93 = 0u;
                loop {
                    let _e82 = local_93;
                    let _e84 = (_e4 - 1u);
                    let _e85 = (_e82 < _e84);
                    loop_header_carry_174_ = _e84;
                    loop_header_carry_68_1 = _e85;
                    if _e85 {
                        let _e90 = (*a0_49).digits[(_e82 + 1u)];
                        (*a0_49).digits[_e82] = _e90;
                        local_93 = (_e82 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                (*a0_49).digits[(_e4 - 1u)] = _e69;
                local_92 = _e76;
            } else {
                local_94 = (_e13 >> 12u);
                local_95 = 0u;
                loop {
                    let _e111 = local_94;
                    let _e113 = local_95;
                    let _e114 = (_e113 < _e4);
                    loop_header_carry_93_ = _e114;
                    if _e114 {
                        let _e117 = (*a0_49).digits[_e113];
                        let _e119 = (_e117 + _e111);
                        if (_e117 > (4294967295u - _e111)) {
                            (*fe_trapped_35) = true;
                            break;
                        }
                        (*a0_49).digits[_e113] = (_e119 & 8191u);
                        local_94 = (_e119 >> 13u);
                        local_95 = (_e113 + 1u);
                        continue;
                    } else {
                        local_92 = _e13;
                        break;
                    }
                }
            }
            let _e137 = local_92;
            if (_e15 > (4294967295u - 1u)) {
            } else {
                local_88 = _e137;
                local_89 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_35) = true;
            break;
        } else {
            loop_did_return_20 = true;
            break;
        }
    }
    return;
}

fn assign_product(a0_50: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_36: ptr<function, bool>) {
    let _e5 = (*a1_22).negative;
    let _e7 = (*a2_7).negative;
    (*a0_50).negative = ((_e5 == _e7) == false);
    clear_digits(a0_50, fe_trapped_36);
    multiply_magnitudes(a0_50, a1_22, a2_7, fe_trapped_36);
    return;
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
    var fixed_local_235_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var local_3: u32 = u32();
    var fixed_local_273_: array<u32, 10> = array<u32, 10>();
    var fixed_local_295_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var local_4: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_297_: bool;
    var fixed_local_337_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var local_5: u32 = u32();
    var fixed_local_381_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var fixed_local_392_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var fixed_local_413_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var fixed_local_421_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var fixed_local_432_: FeLocal_fe_Lanes_7d9d22f9_1_ = FeLocal_fe_Lanes_7d9d22f9_1_();
    var fixed_local_443_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_448_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_468_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_471_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e11 = (global_invocation_id.x * 8u);
    let _e12 = (global_invocation_id.x != 0u);
    if (_e12 && (8u > (4294967295u / select(1u, global_invocation_id.x, _e12)))) {
    } else {
        let _e21 = (global_invocation_id.x * 48u);
        let _e22 = (global_invocation_id.x != 0u);
        if (_e22 && (48u > (4294967295u / select(1u, global_invocation_id.x, _e22)))) {
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
                                                                                                    fixed_local_295_ = FeLocal_fe_Lanes_7d9d22f9_1_((((_e168 >> 31u) == 0u) == false), array<u32, 10>());
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
                                                                                                        fixed_local_337_ = FeLocal_fe_Lanes_7d9d22f9_1_((((_e168 >> 31u) == 0u) == false), array<u32, 10>());
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
                                                                                                                    if (_e21 > (4294967295u - 31u)) {
                                                                                                                    } else {
                                                                                                                        let _e371 = const_index_lanes(_e168);
                                                                                                                        fixed_local_381_ = _e371;
                                                                                                                        let _e374 = fold_lanes((&fixed_local_381_));
                                                                                                                        outputs[i32((_e21 + 31u))] = _e374;
                                                                                                                        if (_e21 > (4294967295u - 32u)) {
                                                                                                                        } else {
                                                                                                                            let _e382 = loop_then_literal(_e168);
                                                                                                                            fixed_local_392_ = _e382;
                                                                                                                            let _e385 = fold_lanes((&fixed_local_392_));
                                                                                                                            outputs[i32((_e21 + 32u))] = _e385;
                                                                                                                            fixed_local_413_ = FeLocal_fe_Lanes_7d9d22f9_1_((((_e168 >> 31u) == 0u) == false), array<u32, 10>());
                                                                                                                            fill_into((&fixed_local_413_), _e168);
                                                                                                                            if (_e21 > (4294967295u - 33u)) {
                                                                                                                            } else {
                                                                                                                                let _e403 = hand_back((&fixed_local_413_));
                                                                                                                                fixed_local_421_ = _e403;
                                                                                                                                let _e406 = fold_lanes((&fixed_local_421_));
                                                                                                                                outputs[i32((_e21 + 33u))] = _e406;
                                                                                                                                if (_e21 > (4294967295u - 34u)) {
                                                                                                                                } else {
                                                                                                                                    let _e414 = flip_twice(_e168);
                                                                                                                                    fixed_local_432_ = _e414;
                                                                                                                                    let _e417 = fold_lanes((&fixed_local_432_));
                                                                                                                                    outputs[i32((_e21 + 34u))] = _e417;
                                                                                                                                    if (_e21 > (4294967295u - 35u)) {
                                                                                                                                    } else {
                                                                                                                                        let _e425 = from_param(_e168, (&fe_trapped));
                                                                                                                                        fixed_local_443_ = _e425;
                                                                                                                                        let _e428 = digit_digest((&fixed_local_443_), (&fe_trapped));
                                                                                                                                        outputs[i32((_e21 + 35u))] = _e428;
                                                                                                                                        let _e431 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_((&fe_trapped));
                                                                                                                                        fixed_local_448_ = _e431;
                                                                                                                                        assign_binary32_bits((&fixed_local_448_), _e168, (&fe_trapped));
                                                                                                                                        if (_e21 > (4294967295u - 36u)) {
                                                                                                                                        } else {
                                                                                                                                            let _e439 = digit_digest((&fixed_local_448_), (&fe_trapped));
                                                                                                                                            outputs[i32((_e21 + 36u))] = _e439;
                                                                                                                                            if (_e21 > (4294967295u - 37u)) {
                                                                                                                                            } else {
                                                                                                                                                let _e447 = to_binary32_bits((&fixed_local_448_), (&fe_trapped));
                                                                                                                                                outputs[i32((_e21 + 37u))] = _e447;
                                                                                                                                                let _e450 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_((&fe_trapped));
                                                                                                                                                fixed_local_468_ = _e450;
                                                                                                                                                assign_binary32_bits((&fixed_local_468_), _e176, (&fe_trapped));
                                                                                                                                                let _e453 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_((&fe_trapped));
                                                                                                                                                fixed_local_471_ = _e453;
                                                                                                                                                assign_product((&fixed_local_471_), (&fixed_local_448_), (&fixed_local_468_), (&fe_trapped));
                                                                                                                                                if (_e21 > (4294967295u - 38u)) {
                                                                                                                                                } else {
                                                                                                                                                    let _e461 = digit_digest((&fixed_local_471_), (&fe_trapped));
                                                                                                                                                    outputs[i32((_e21 + 38u))] = _e461;
                                                                                                                                                    local_1 = true;
                                                                                                                                                }
                                                                                                                                                let _e467 = local_1;
                                                                                                                                                if _e467 {
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            let _e469 = local_1;
                                                                                                                                            if _e469 {
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        let _e471 = local_1;
                                                                                                                                        if _e471 {
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    let _e473 = local_1;
                                                                                                                                    if _e473 {
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                let _e475 = local_1;
                                                                                                                                if _e475 {
                                                                                                                                }
                                                                                                                            }
                                                                                                                            let _e477 = local_1;
                                                                                                                            if _e477 {
                                                                                                                            }
                                                                                                                        }
                                                                                                                        let _e479 = local_1;
                                                                                                                        if _e479 {
                                                                                                                        }
                                                                                                                    }
                                                                                                                    let _e481 = local_1;
                                                                                                                    if _e481 {
                                                                                                                    }
                                                                                                                }
                                                                                                                let _e483 = local_1;
                                                                                                                if _e483 {
                                                                                                                }
                                                                                                            }
                                                                                                            let _e485 = local_1;
                                                                                                            if _e485 {
                                                                                                            }
                                                                                                        }
                                                                                                        let _e487 = local_1;
                                                                                                        if _e487 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e489 = local_1;
                                                                                                    if _e489 {
                                                                                                    }
                                                                                                }
                                                                                                let _e491 = local_1;
                                                                                                if _e491 {
                                                                                                }
                                                                                            }
                                                                                            let _e493 = local_1;
                                                                                            if _e493 {
                                                                                            }
                                                                                        }
                                                                                        let _e495 = local_1;
                                                                                        if _e495 {
                                                                                        }
                                                                                    }
                                                                                    let _e497 = local_1;
                                                                                    if _e497 {
                                                                                    }
                                                                                }
                                                                                let _e499 = local_1;
                                                                                if _e499 {
                                                                                }
                                                                            }
                                                                            let _e501 = local_1;
                                                                            if _e501 {
                                                                            }
                                                                        }
                                                                        let _e503 = local_1;
                                                                        if _e503 {
                                                                        }
                                                                    }
                                                                    let _e505 = local_1;
                                                                    if _e505 {
                                                                    }
                                                                }
                                                                let _e507 = local_1;
                                                                if _e507 {
                                                                }
                                                            }
                                                            let _e509 = local_1;
                                                            if _e509 {
                                                            }
                                                        }
                                                        let _e511 = local_1;
                                                        if _e511 {
                                                        }
                                                    }
                                                    let _e513 = local_1;
                                                    if _e513 {
                                                    }
                                                }
                                                let _e515 = local_1;
                                                if _e515 {
                                                }
                                            }
                                            let _e517 = local_1;
                                            if _e517 {
                                            }
                                        }
                                        let _e519 = local_1;
                                        if _e519 {
                                        }
                                    }
                                    let _e521 = local_1;
                                    if _e521 {
                                    }
                                }
                                let _e524 = local_1;
                                if _e524 {
                                } else {
                                    fe_trapped = true;
                                }
                            }
                            let _e526 = local_1;
                            if _e526 {
                            }
                        }
                        let _e529 = local_1;
                        if _e529 {
                        } else {
                            fe_trapped = true;
                        }
                    }
                    let _e532 = local_1;
                    if _e532 {
                    } else {
                        fe_trapped = true;
                    }
                }
                let _e534 = local_1;
                if _e534 {
                }
            }
            let _e537 = local_1;
            if _e537 {
            } else {
                fe_trapped = true;
            }
        }
        let _e539 = local_1;
        if _e539 {
        }
    }
    let _e542 = local_1;
    if _e542 {
    } else {
        fe_trapped = true;
    }
    let _e553 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 512u)) + (global_invocation_id.z * 512u))] = u32(_e553);
}
