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

fn precision_lib_array_fixed_unsigned_word_42a2_(a0_4: u32, fe_trapped_5: ptr<function, bool>) {
    std_lib_evm_effects_assert_2501_(((bitcast<i32>(a0_4) < bitcast<i32>(0u)) == false), fe_trapped_5);
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_8: u32;
    var local_9: bool = false;

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
        local_8 = (_e4 * 13u);
        local_9 = true;
    }
    let _e31 = local_8;
    return _e31;
}

fn from_binary32_bits(a0_6: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_10: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_11: bool = false;
    var local_12: bool = bool();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_13: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_14: bool = false;
    var local_15: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_16: bool = false;
    var local_17: u32 = u32();
    var local_18: u32 = u32();
    var loop_result_2: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_46_: bool;
    var local_19: u32 = u32();

    let _e5 = (a0_6 & 2147483647u);
    std_lib_evm_effects_assert_2501_((_e5 < 1174405120u), fe_trapped_7);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_7);
    fixed_local_7_ = _e8;
    if (((a0_6 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_12 = true;
        }
    }
    let _e25 = local_12;
    fixed_local_7_.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_;
        local_13 = _e31;
        local_14 = true;
    }
    let _e153 = local_14;
    if _e153 {
    } else {
        let _e39 = ((_e5 & 8388607u) | 8388608u);
        precision_lib_array_fixed_signed_word_0e35_(_e28, fe_trapped_7);
        let _e43 = (_e28 - 150u);
        if ((((_e28 ^ _e43) & (_e28 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e49 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_((&fixed_local_7_), fe_trapped_7);
            let _e52 = (_e43 + _e49);
            if ((((_e43 ^ _e52) & (_e49 ^ _e52)) & 2147483648u) != 0u) {
            } else {
                let _e61 = (0u - _e52);
                if ((((0u ^ _e61) & (0u ^ _e52)) & 2147483648u) != 0u) {
                } else {
                    let _e67 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_7);
                    local_17 = _e61;
                    local_18 = 0u;
                    loop {
                        let _e75 = local_17;
                        let _e77 = local_18;
                        let _e78 = (_e77 < _e67);
                        loop_header_carry_46_ = _e78;
                        if _e78 {
                            if ((bitcast<i32>(_e75) < bitcast<i32>(24u)) == false) {
                                local_19 = 0u;
                            } else {
                                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e75)) == false) {
                                    local_19 = 0u;
                                } else {
                                    if ((bitcast<i32>(_e75) < bitcast<i32>(0u)) == false) {
                                        precision_lib_array_fixed_unsigned_word_42a2_(_e75, fe_trapped_7);
                                        local_19 = ((_e39 >> _e75) & 8191u);
                                    } else {
                                        let _e102 = (0u - _e75);
                                        precision_lib_array_fixed_unsigned_word_42a2_(_e102, fe_trapped_7);
                                        local_19 = ((_e39 << _e102) & 8191u);
                                    }
                                }
                            }
                            let _e113 = local_19;
                            fixed_local_7_.digits[_e77] = _e113;
                            let _e119 = (_e75 + 13u);
                            if ((((_e75 ^ _e119) & (13u ^ _e119)) & 2147483648u) != 0u) {
                                (*fe_trapped_7) = true;
                                break;
                            }
                            local_17 = _e119;
                            local_18 = (_e77 + 1u);
                            continue;
                        } else {
                            let _e130 = fixed_local_7_;
                            loop_result_2 = _e130;
                            loop_did_return_2 = true;
                            break;
                        }
                    }
                    let _e136 = loop_did_return_2;
                    if _e136 {
                        let _e138 = loop_result_2;
                        local_15 = _e138;
                        local_16 = true;
                    }
                }
                let _e143 = local_16;
                if _e143 {
                }
            }
            let _e145 = local_16;
            if _e145 {
            }
        }
        let _e148 = local_16;
        if _e148 {
        } else {
            (*fe_trapped_7) = true;
        }
        let _e150 = local_15;
        local_13 = _e150;
    }
    let _e155 = local_13;
    return _e155;
}

fn from_f32_(a0_7: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = from_binary32_bits(bitcast<u32>(a0_7), fe_trapped_8);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_9: ptr<function, bool>) -> bool {
    var local_20: u32 = u32();
    var loop_result_3: bool;
    var loop_did_return_3: bool = false;
    var loop_header_carry_5_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_9);
    local_20 = _e3;
    loop {
        let _e8 = local_20;
        let _e10 = (0u < _e8);
        loop_header_carry_5_ = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_8).digits[_e12];
            let _e18 = (*a1_2).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_20 = _e12;
                continue;
            }
            let _e25 = (*a0_8).digits[_e12];
            let _e28 = (*a1_2).digits[_e12];
            loop_result_3 = (_e25 < _e28);
            loop_did_return_3 = true;
            break;
        } else {
            loop_result_3 = false;
            loop_did_return_3 = true;
            break;
        }
    }
    let _e39 = loop_result_3;
    return _e39;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_9: bool, a1_3: u32, a2_1: u32, a3_1: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, a8_: u32, a9_: u32, a10_: u32, a11_: bool, a12_: u32, a13_: u32, a14_: u32, a15_: u32, a16_: u32, a17_: u32, a18_: u32, a19_: u32, a20_: u32, a21_: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_21: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_22: bool = false;
    var fixed_local_22_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_60_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var loop_result_4: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_4: bool = false;
    var loop_header_carry_150_: bool;
    var local_25: bool = bool();
    var fixed_local_95_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_132_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_26: u32 = u32();
    var local_27: u32 = u32();
    var loop_result_5: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_5: bool = false;
    var loop_header_carry_192_: bool;
    var local_28: u32 = u32();
    var local_29: u32 = u32();

    fixed_local_22_.negative = a0_9;
    fixed_local_22_.digits[0] = a1_3;
    fixed_local_22_.digits[1] = a2_1;
    fixed_local_22_.digits[2] = a3_1;
    fixed_local_22_.digits[3] = a4_;
    fixed_local_22_.digits[4] = a5_;
    fixed_local_22_.digits[5] = a6_;
    fixed_local_22_.digits[6] = a7_;
    fixed_local_22_.digits[7] = a8_;
    fixed_local_22_.digits[8] = a9_;
    fixed_local_22_.digits[9] = a10_;
    fixed_local_45_.negative = a11_;
    fixed_local_45_.digits[0] = a12_;
    fixed_local_45_.digits[1] = a13_;
    fixed_local_45_.digits[2] = a14_;
    fixed_local_45_.digits[3] = a15_;
    fixed_local_45_.digits[4] = a16_;
    fixed_local_45_.digits[5] = a17_;
    fixed_local_45_.digits[6] = a18_;
    fixed_local_45_.digits[7] = a19_;
    fixed_local_45_.digits[8] = a20_;
    fixed_local_45_.digits[9] = a21_;
    let _e52 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_10);
    let _e53 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_10);
    fixed_local_60_ = _e53;
    let _e57 = fixed_local_22_.negative;
    fixed_local_60_.negative = _e57;
    let _e60 = fixed_local_22_.negative;
    let _e62 = fixed_local_45_.negative;
    if (_e60 == _e62) {
        local_23 = 0u;
        local_24 = 0u;
        loop {
            let _e72 = local_23;
            let _e74 = local_24;
            let _e75 = (_e74 < _e52);
            loop_header_carry_150_ = _e75;
            if _e75 {
                let _e78 = fixed_local_22_.digits[_e74];
                let _e81 = fixed_local_45_.digits[_e74];
                let _e83 = (_e78 + _e81);
                if (_e78 > (4294967295u - _e81)) {
                } else {
                    let _e87 = (_e83 + _e72);
                    if (_e83 > (4294967295u - _e72)) {
                        (*fe_trapped_10) = true;
                        break;
                    }
                    fixed_local_60_.digits[_e74] = (_e87 & 8191u);
                    local_23 = (_e87 >> 13u);
                    local_24 = (_e74 + 1u);
                    continue;
                }
                (*fe_trapped_10) = true;
                break;
            } else {
                let _e102 = fixed_local_60_;
                loop_result_4 = _e102;
                loop_did_return_4 = true;
                break;
            }
        }
        let _e108 = loop_did_return_4;
        if _e108 {
            let _e110 = loop_result_4;
            local_21 = _e110;
            local_22 = true;
        }
    } else {
        let _e116 = fixed_local_22_.negative;
        let _e119 = fixed_local_22_.digits[0];
        let _e121 = fixed_local_22_.digits[1];
        let _e123 = fixed_local_22_.digits[2];
        let _e125 = fixed_local_22_.digits[3];
        let _e127 = fixed_local_22_.digits[4];
        let _e129 = fixed_local_22_.digits[5];
        let _e131 = fixed_local_22_.digits[6];
        let _e133 = fixed_local_22_.digits[7];
        let _e135 = fixed_local_22_.digits[8];
        let _e137 = fixed_local_22_.digits[9];
        fixed_local_95_.negative = _e116;
        fixed_local_95_.digits[0] = _e119;
        fixed_local_95_.digits[1] = _e121;
        fixed_local_95_.digits[2] = _e123;
        fixed_local_95_.digits[3] = _e125;
        fixed_local_95_.digits[4] = _e127;
        fixed_local_95_.digits[5] = _e129;
        fixed_local_95_.digits[6] = _e131;
        fixed_local_95_.digits[7] = _e133;
        fixed_local_95_.digits[8] = _e135;
        fixed_local_95_.digits[9] = _e137;
        let _e153 = fixed_local_45_.negative;
        let _e156 = fixed_local_45_.digits[0];
        let _e158 = fixed_local_45_.digits[1];
        let _e160 = fixed_local_45_.digits[2];
        let _e162 = fixed_local_45_.digits[3];
        let _e164 = fixed_local_45_.digits[4];
        let _e166 = fixed_local_45_.digits[5];
        let _e168 = fixed_local_45_.digits[6];
        let _e170 = fixed_local_45_.digits[7];
        let _e172 = fixed_local_45_.digits[8];
        let _e174 = fixed_local_45_.digits[9];
        fixed_local_132_.negative = _e153;
        fixed_local_132_.digits[0] = _e156;
        fixed_local_132_.digits[1] = _e158;
        fixed_local_132_.digits[2] = _e160;
        fixed_local_132_.digits[3] = _e162;
        fixed_local_132_.digits[4] = _e164;
        fixed_local_132_.digits[5] = _e166;
        fixed_local_132_.digits[6] = _e168;
        fixed_local_132_.digits[7] = _e170;
        fixed_local_132_.digits[8] = _e172;
        fixed_local_132_.digits[9] = _e174;
        let _e189 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c((&fixed_local_95_), (&fixed_local_132_), fe_trapped_10);
        if _e189 {
            let _e191 = fixed_local_45_.negative;
            local_25 = _e191;
        } else {
            let _e193 = fixed_local_22_.negative;
            local_25 = _e193;
        }
        let _e197 = local_25;
        fixed_local_60_.negative = _e197;
        local_26 = 0u;
        local_27 = 0u;
        loop {
            let _e207 = local_26;
            let _e209 = local_27;
            let _e210 = (_e209 < _e52);
            loop_header_carry_192_ = _e210;
            if _e210 {
                if _e189 {
                    let _e214 = fixed_local_45_.digits[_e209];
                    local_28 = _e214;
                } else {
                    let _e217 = fixed_local_22_.digits[_e209];
                    local_28 = _e217;
                }
                let _e222 = local_28;
                if _e189 {
                    let _e225 = fixed_local_22_.digits[_e209];
                    local_29 = _e225;
                } else {
                    let _e228 = fixed_local_45_.digits[_e209];
                    local_29 = _e228;
                }
                let _e232 = local_29;
                let _e235 = (8192u + _e222);
                if (8192u > (4294967295u - _e222)) {
                } else {
                    let _e238 = (_e235 - _e232);
                    if (_e235 < _e232) {
                    } else {
                        let _e240 = (_e238 - _e207);
                        if (_e238 < _e207) {
                        } else {
                            fixed_local_60_.digits[_e209] = (_e240 & 8191u);
                            let _e247 = (_e240 >> 13u);
                            if (1u < _e247) {
                                (*fe_trapped_10) = true;
                                break;
                            }
                            local_26 = (1u - _e247);
                            local_27 = (_e209 + 1u);
                            continue;
                        }
                    }
                }
                (*fe_trapped_10) = true;
                break;
            } else {
                let _e257 = fixed_local_60_;
                loop_result_5 = _e257;
                loop_did_return_5 = true;
                break;
            }
        }
        let _e263 = loop_did_return_5;
        if _e263 {
            let _e265 = loop_result_5;
            local_21 = _e265;
            local_22 = true;
        }
    }
    let _e270 = local_21;
    return _e270;
}

fn from_expansion(a0_10: FeLocal_fe_More_More_More_Last_e6310ae8_5_, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var fixed_local_28_: array<f32, 4> = array<f32, 4>();
    var local_30: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_31: u32 = u32();
    var loop_result_6: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_34_: bool;

    let _e2 = to_quad(a0_10);
    fixed_local_28_ = array<f32, 4>(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_);
    let _e11 = fixed_local_28_[0];
    let _e12 = from_f32_(_e11, fe_trapped_11);
    local_30 = _e12;
    local_31 = 1u;
    loop {
        let _e20 = local_30;
        let _e22 = local_31;
        let _e24 = (_e22 < 4u);
        loop_header_carry_34_ = _e24;
        if _e24 {
            let _e26 = fixed_local_28_[_e22];
            let _e27 = from_f32_(_e26, fe_trapped_11);
            let _e52 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e27.negative, _e27.digits[0], _e27.digits[1], _e27.digits[2], _e27.digits[3], _e27.digits[4], _e27.digits[5], _e27.digits[6], _e27.digits[7], _e27.digits[8], _e27.digits[9], fe_trapped_11);
            local_30 = _e52;
            local_31 = (_e22 + 1u);
            continue;
        } else {
            let _e57 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_11);
            let _e82 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e57.negative, _e57.digits[0], _e57.digits[1], _e57.digits[2], _e57.digits[3], _e57.digits[4], _e57.digits[5], _e57.digits[6], _e57.digits[7], _e57.digits[8], _e57.digits[9], fe_trapped_11);
            loop_result_6 = _e82;
            loop_did_return_6 = true;
            break;
        }
    }
    let _e88 = loop_result_6;
    return _e88;
}

fn neg(a0_11: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_((a0_11.negative == false), a0_11.digits);
}

fn sub(a0_12: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, a1_4: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = neg(a1_4);
    let _e28 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_12.negative, a0_12.digits[0], a0_12.digits[1], a0_12.digits[2], a0_12.digits[3], a0_12.digits[4], a0_12.digits[5], a0_12.digits[6], a0_12.digits[7], a0_12.digits[8], a0_12.digits[9], _e3.negative, _e3.digits[0], _e3.digits[1], _e3.digits[2], _e3.digits[3], _e3.digits[4], _e3.digits[5], _e3.digits[6], _e3.digits[7], _e3.digits[8], _e3.digits[9], fe_trapped_12);
    return _e28;
}

fn limb_highest_bit(a0_13: u32) -> u32 {
    var local_32: u32;
    var local_33: bool = false;
    var local_34: u32 = u32();

    if ((a0_13 < 4096u) == false) {
        local_34 = 12u;
    } else {
        if ((a0_13 < 2048u) == false) {
            local_34 = 11u;
        } else {
            if ((a0_13 < 1024u) == false) {
                local_34 = 10u;
            } else {
                if ((a0_13 < 512u) == false) {
                    local_34 = 9u;
                } else {
                    if ((a0_13 < 256u) == false) {
                        local_34 = 8u;
                    } else {
                        if ((a0_13 < 128u) == false) {
                            local_34 = 7u;
                        } else {
                            if ((a0_13 < 64u) == false) {
                                local_34 = 6u;
                            } else {
                                if ((a0_13 < 32u) == false) {
                                    local_34 = 5u;
                                } else {
                                    if ((a0_13 < 16u) == false) {
                                        local_34 = 4u;
                                    } else {
                                        if ((a0_13 < 8u) == false) {
                                            local_34 = 3u;
                                        } else {
                                            if ((a0_13 < 4u) == false) {
                                                local_34 = 2u;
                                            } else {
                                                if ((a0_13 < 2u) == false) {
                                                    local_34 = 1u;
                                                } else {
                                                    if (a0_13 == 1u) {
                                                    } else {
                                                        local_34 = 4294967295u;
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
    let _e80 = local_34;
    return _e80;
}

fn highest_bit(a0_14: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_35: u32 = u32();
    var local_36: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_4_: bool;
    var local_37: u32;
    var local_38: bool = false;
    var local_39: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_13);
    local_35 = 0u;
    local_36 = _e2;
    loop {
        let _e10 = local_35;
        let _e12 = local_36;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_14).digits[_e18];
                local_35 = _e21;
                local_36 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_35;
    let _e28 = local_36;
    if (_e26 == 0u) {
        local_39 = 4294967295u;
    } else {
        let _e33 = limb_highest_bit(_e26);
        precision_lib_array_fixed_signed_word_0e35_(_e28, fe_trapped_13);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_13) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_13) = true;
            } else {
                local_39 = _e58;
            }
        }
    }
    let _e69 = local_39;
    return _e69;
}

fn word_from(a0_15: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_5: u32, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_40: u32;
    var local_41: bool = false;
    var local_42: u32;
    var local_43: bool = false;
    var local_44: u32 = u32();
    var local_45: u32 = u32();
    var local_46: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_34_1: bool;

    if (bitcast<i32>(a1_5) < bitcast<i32>(0u)) {
        local_40 = 0u;
        local_41 = true;
    }
    let _e77 = local_41;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_5, fe_trapped_14);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_14);
        let _e15 = (a1_5 / 13u);
        if ((_e15 < _e13) == false) {
            local_42 = 0u;
            local_43 = true;
        }
        let _e72 = local_43;
        if _e72 {
        } else {
            let _e24 = (a1_5 % 13u);
            let _e27 = (*a0_15).digits[_e15];
            local_44 = (13u - _e24);
            local_45 = (_e27 >> _e24);
            local_46 = (_e15 + 1u);
            loop {
                let _e41 = local_44;
                let _e43 = local_45;
                let _e45 = local_46;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_1 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_15).digits[_e45];
                        local_44 = (_e41 + 13u);
                        local_45 = (_e43 | (_e51 << _e41));
                        local_46 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_8 = _e43;
                        loop_did_return_8 = true;
                        break;
                    }
                } else {
                    loop_result_8 = _e43;
                    loop_did_return_8 = true;
                    break;
                }
            }
            let _e69 = loop_result_8;
            local_42 = _e69;
        }
        let _e74 = local_42;
        local_40 = _e74;
    }
    let _e79 = local_40;
    return _e79;
}

fn bit_at(a0_16: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_6: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_47: u32;
    var local_48: bool = false;
    var local_49: u32;
    var local_50: bool = false;

    if (bitcast<i32>(a1_6) < bitcast<i32>(0u)) {
        local_47 = 0u;
        local_48 = true;
    }
    let _e38 = local_48;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_6, fe_trapped_15);
        let _e14 = (a1_6 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_15);
        if ((_e14 < _e15) == false) {
            local_49 = 0u;
            local_50 = true;
        }
        let _e33 = local_50;
        if _e33 {
        } else {
            let _e25 = (*a0_16).digits[_e14];
            local_49 = ((_e25 >> (a1_6 % 13u)) & 1u);
        }
        let _e35 = local_49;
        local_47 = _e35;
    }
    let _e40 = local_47;
    return _e40;
}

fn any_below(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_7: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_51: u32;
    var local_52: bool = false;
    var local_53: u32 = u32();
    var local_54: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_15_: bool;
    var local_55: u32;
    var local_56: bool = false;
    var local_57: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_7)) == false) {
        local_51 = 0u;
        local_52 = true;
    }
    let _e65 = local_52;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_7, fe_trapped_16);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
        local_53 = 0u;
        local_54 = 0u;
        loop {
            let _e25 = local_53;
            let _e27 = local_54;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_7 / 13u)) {
                    let _e32 = (*a0_17).digits[_e27];
                    local_53 = (_e25 | _e32);
                    local_54 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_53;
        let _e42 = local_54;
        if (_e42 < _e16) {
            let _e50 = (*a0_17).digits[_e42];
            let _e52 = (1u << (a1_7 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_16) = true;
            } else {
                local_57 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_57 = _e40;
        }
        let _e62 = local_57;
        local_51 = _e62;
    }
    let _e67 = local_51;
    return _e67;
}

fn project_binary32_(a0_18: u32, a1_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_58: u32;
    var local_59: bool = false;
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var local_64: u32 = u32();

    let _e5 = highest_bit(a1_8, fe_trapped_17);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_8, fe_trapped_17);
        let _e13 = (_e5 - _e10);
        if ((((_e5 ^ _e13) & (_e5 ^ _e10)) & 2147483648u) != 0u) {
            (*fe_trapped_17) = true;
        } else {
            let _e23 = (_e13 + 127u);
            if ((((_e13 ^ _e23) & (127u ^ _e23)) & 2147483648u) != 0u) {
                (*fe_trapped_17) = true;
            } else {
                let _e32 = (_e5 - 23u);
                if (bitcast<i32>(_e32) < bitcast<i32>(0u)) {
                    let _e40 = word_from(a1_8, 0u, fe_trapped_17);
                    local_61 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from(a1_8, _e32, fe_trapped_17);
                    local_61 = _e42;
                }
                let _e47 = local_61;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_8, _e49, fe_trapped_17);
                let _e51 = any_below(a1_8, _e49, fe_trapped_17);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_62 = 1u;
                    } else {
                        local_62 = (_e47 & 1u);
                    }
                }
                let _e64 = local_62;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_17) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_17) = true;
                        } else {
                            local_63 = 8388608u;
                            local_64 = _e77;
                        }
                    } else {
                        local_63 = _e66;
                        local_64 = _e23;
                    }
                    let _e90 = local_63;
                    let _e92 = local_64;
                    local_60 = (((a0_18 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_60;
    return _e103;
}

fn to_binary32_bits(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_65: u32;
    var local_66: bool = false;
    var local_67: u32 = u32();

    let _e5 = (*a0_19).negative;
    if _e5 {
        local_67 = 1u;
    }
    let _e9 = local_67;
    let _e10 = project_binary32_(_e9, a0_19, fe_trapped_18);
    return _e10;
}

fn to_f32_(a0_20: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_19: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_20, fe_trapped_19);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_21: FeLocal_fe_More_More_More_Last_e6310ae8_5_, a1_9: FeLocal_fe_More_More_More_Last_e6310ae8_5_, fe_trapped_20: ptr<function, bool>) -> f32 {
    var fixed_local_7_1: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e3 = from_expansion(a1_9, fe_trapped_20);
    let _e4 = from_expansion(a0_21, fe_trapped_20);
    let _e5 = sub(_e3, _e4, fe_trapped_20);
    fixed_local_7_1 = _e5;
    let _e8 = to_f32_((&fixed_local_7_1), fe_trapped_20);
    return _e8;
}

fn to_digits(a0_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>) -> array<u32, 10> {
    let _e2 = (*a0_22).digits;
    return _e2;
}

fn sign_(a0_23: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>) -> u32 {
    var local_68: u32;
    var local_69: bool = false;
    var local_70: u32 = u32();

    let _e4 = (*a0_23).negative;
    if _e4 {
        local_70 = 1u;
    }
    let _e8 = local_70;
    return _e8;
}

fn digest(a0_24: ptr<function, array<u32, 10>>) -> u32 {
    var local_71: u32 = u32();
    var local_72: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_4_1: bool;

    local_71 = 0u;
    local_72 = 0u;
    loop {
        let _e9 = local_71;
        let _e11 = local_72;
        let _e13 = (_e11 < 10u);
        loop_header_carry_4_1 = _e13;
        if _e13 {
            let _e15 = (*a0_24)[_e11];
            local_71 = (_e9 ^ (_e15 << ((_e11 * 7u) % 19u)));
            local_72 = (_e11 + 1u);
            continue;
        } else {
            loop_result_10 = _e9;
            loop_did_return_10 = true;
            break;
        }
    }
    let _e31 = loop_result_10;
    return _e31;
}

fn fill_lanes(a0_25: u32) -> FeLocal_fe_Lanes_7d9d22f9_6_ {
    var fixed_local_31_: FeLocal_fe_Lanes_7d9d22f9_6_ = FeLocal_fe_Lanes_7d9d22f9_6_();
    var local_73: u32 = u32();
    var loop_result_11: FeLocal_fe_Lanes_7d9d22f9_6_;
    var loop_did_return_11: bool = false;
    var loop_header_carry_34_2: bool;

    fixed_local_31_ = FeLocal_fe_Lanes_7d9d22f9_6_((((a0_25 >> 31u) == 0u) == false), array<u32, 10>());
    local_73 = 0u;
    loop {
        let _e16 = local_73;
        let _e18 = (_e16 < 10u);
        loop_header_carry_34_2 = _e18;
        if _e18 {
            fixed_local_31_.digits[_e16] = ((a0_25 >> _e16) & 8191u);
            local_73 = (_e16 + 1u);
            continue;
        } else {
            let _e27 = fixed_local_31_;
            loop_result_11 = _e27;
            loop_did_return_11 = true;
            break;
        }
    }
    let _e33 = loop_result_11;
    return _e33;
}

fn literal_lanes(a0_26: u32) -> FeLocal_fe_Lanes_7d9d22f9_6_ {
    return FeLocal_fe_Lanes_7d9d22f9_6_((((a0_26 >> 31u) == 0u) == false), array<u32, 10>((a0_26 & 8191u), ((a0_26 >> 1u) & 8191u), ((a0_26 >> 2u) & 8191u), ((a0_26 >> 3u) & 8191u), ((a0_26 >> 4u) & 8191u), ((a0_26 >> 5u) & 8191u), ((a0_26 >> 6u) & 8191u), ((a0_26 >> 7u) & 8191u), ((a0_26 >> 8u) & 8191u), ((a0_26 >> 9u) & 8191u)));
}

fn fold_lanes(a0_27: ptr<function, FeLocal_fe_Lanes_7d9d22f9_6_>) -> u32 {
    var local_74: u32;
    var local_75: bool = false;
    var local_76: u32 = u32();
    var fixed_local_6_: array<u32, 10> = array<u32, 10>();

    let _e4 = (*a0_27).digits;
    fixed_local_6_ = _e4;
    let _e7 = digest((&fixed_local_6_));
    let _e9 = (*a0_27).negative;
    if _e9 {
        local_76 = 2147483648u;
    }
    let _e13 = local_76;
    return (_e7 | _e13);
}

fn fill_array(a0_28: u32) -> array<u32, 10> {
    var fixed_local_2_: array<u32, 10> = array<u32, 10>();
    var local_77: u32 = u32();
    var loop_result_12: array<u32, 10>;
    var loop_did_return_12: bool = false;
    var loop_header_carry_24_: bool;

    local_77 = 0u;
    loop {
        let _e8 = local_77;
        let _e10 = (_e8 < 10u);
        loop_header_carry_24_ = _e10;
        if _e10 {
            fixed_local_2_[_e8] = ((a0_28 >> _e8) & 8191u);
            local_77 = (_e8 + 1u);
            continue;
        } else {
            let _e18 = fixed_local_2_;
            loop_result_12 = _e18;
            loop_did_return_12 = true;
            break;
        }
    }
    let _e24 = loop_result_12;
    return _e24;
}

fn fill_into(a0_29: ptr<function, FeLocal_fe_Lanes_7d9d22f9_6_>, a1_10: u32) {
    var local_78: u32 = u32();
    var loop_result_13: u32;
    var loop_did_return_13: bool = false;
    var loop_header_carry_5_1: bool;

    local_78 = 0u;
    loop {
        let _e7 = local_78;
        let _e9 = (_e7 < 10u);
        loop_header_carry_5_1 = _e9;
        if _e9 {
            (*a0_29).digits[_e7] = ((a1_10 >> _e7) & 8191u);
            local_78 = (_e7 + 1u);
            continue;
        } else {
            loop_did_return_13 = true;
            break;
        }
    }
    return;
}

fn count_flag(a0_30: u32, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_Flag_55212797_1_ {
    var fixed_local_12_: FeLocal_fe_Flag_55212797_1_ = FeLocal_fe_Flag_55212797_1_();
    var local_79: u32 = u32();
    var loop_result_14: FeLocal_fe_Flag_55212797_1_;
    var loop_did_return_14: bool = false;
    var loop_header_carry_15_1: bool;

    fixed_local_12_ = FeLocal_fe_Flag_55212797_1_((((a0_30 >> 31u) == 0u) == false), 0u);
    local_79 = 0u;
    loop {
        let _e17 = local_79;
        let _e19 = (_e17 < 10u);
        loop_header_carry_15_1 = _e19;
        if _e19 {
            let _e21 = fixed_local_12_.count;
            let _e24 = ((a0_30 >> _e17) & 1u);
            if (_e21 > (4294967295u - _e24)) {
                (*fe_trapped_21) = true;
                break;
            }
            fixed_local_12_.count = (_e21 + _e24);
            local_79 = (_e17 + 1u);
            continue;
        } else {
            let _e34 = fixed_local_12_;
            loop_result_14 = _e34;
            loop_did_return_14 = true;
            break;
        }
    }
    let _e40 = loop_result_14;
    return _e40;
}

fn loop_digest(a0_31: u32) -> u32 {
    var fixed_local_2_1: array<u32, 10> = array<u32, 10>();
    var local_80: u32 = u32();
    var loop_result_15: u32;
    var loop_did_return_15: bool = false;
    var loop_header_carry_24_1: bool;

    local_80 = 0u;
    loop {
        let _e8 = local_80;
        let _e10 = (_e8 < 10u);
        loop_header_carry_24_1 = _e10;
        if _e10 {
            fixed_local_2_1[_e8] = ((a0_31 >> _e8) & 8191u);
            local_80 = (_e8 + 1u);
            continue;
        } else {
            let _e18 = digest((&fixed_local_2_1));
            loop_result_15 = _e18;
            loop_did_return_15 = true;
            break;
        }
    }
    let _e24 = loop_result_15;
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
