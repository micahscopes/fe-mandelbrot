struct FeLocal_fe_Last_eb970eb0_1_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_2_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_1_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_3_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_2_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_4_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_3_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_InvocationId_3c625d5f_6_ {
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

fn from_quad(a0_: f32, a1_1: f32, a2_: f32, a3_: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_4_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_4_(a0_, FeLocal_fe_More_More_Last_60a5ba63_3_(a1_1, FeLocal_fe_More_Last_1ac585f5_2_(a2_, FeLocal_fe_Last_eb970eb0_1_(a3_))));
}

fn to_quad(a0_1: FeLocal_fe_More_More_More_Last_e6310ae8_4_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_5_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_5_(a0_1.lead, a0_1.tail.lead, a0_1.tail.tail.lead, a0_1.tail.tail.tail.value);
}

fn std_lib_evm_effects_assert_2501_(a0_2: bool, fe_trapped_1: ptr<function, bool>) {
    var local_3: u32;
    var local_4: bool = false;

    if a0_2 {
        local_4 = true;
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
    var local_5: u32;
    var local_6: bool = false;

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
        local_5 = (_e4 * 13u);
        local_6 = true;
    }
    let _e31 = local_5;
    return _e31;
}

fn from_binary32_bits(a0_6: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_7: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_8: bool = false;
    var local_9: bool = bool();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_10: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_11: bool = false;
    var local_12: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_13: bool = false;
    var local_14: u32 = u32();
    var local_15: u32 = u32();
    var loop_result_1: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_46_: bool;
    var local_16: u32 = u32();

    let _e5 = (a0_6 & 2147483647u);
    std_lib_evm_effects_assert_2501_((_e5 < 1174405120u), fe_trapped_7);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_7);
    fixed_local_7_ = _e8;
    if (((a0_6 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_9 = true;
        }
    }
    let _e25 = local_9;
    fixed_local_7_.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_;
        local_10 = _e31;
        local_11 = true;
    }
    let _e153 = local_11;
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
                    local_14 = _e61;
                    local_15 = 0u;
                    loop {
                        let _e75 = local_14;
                        let _e77 = local_15;
                        let _e78 = (_e77 < _e67);
                        loop_header_carry_46_ = _e78;
                        if _e78 {
                            if ((bitcast<i32>(_e75) < bitcast<i32>(24u)) == false) {
                                local_16 = 0u;
                            } else {
                                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e75)) == false) {
                                    local_16 = 0u;
                                } else {
                                    if ((bitcast<i32>(_e75) < bitcast<i32>(0u)) == false) {
                                        precision_lib_array_fixed_unsigned_word_42a2_(_e75, fe_trapped_7);
                                        local_16 = ((_e39 >> _e75) & 8191u);
                                    } else {
                                        let _e102 = (0u - _e75);
                                        precision_lib_array_fixed_unsigned_word_42a2_(_e102, fe_trapped_7);
                                        local_16 = ((_e39 << _e102) & 8191u);
                                    }
                                }
                            }
                            let _e113 = local_16;
                            fixed_local_7_.digits[_e77] = _e113;
                            let _e119 = (_e75 + 13u);
                            if ((((_e75 ^ _e119) & (13u ^ _e119)) & 2147483648u) != 0u) {
                                (*fe_trapped_7) = true;
                                break;
                            }
                            local_14 = _e119;
                            local_15 = (_e77 + 1u);
                            continue;
                        } else {
                            let _e130 = fixed_local_7_;
                            loop_result_1 = _e130;
                            loop_did_return_1 = true;
                            break;
                        }
                    }
                    let _e136 = loop_did_return_1;
                    if _e136 {
                        let _e138 = loop_result_1;
                        local_12 = _e138;
                        local_13 = true;
                    }
                }
                let _e143 = local_13;
                if _e143 {
                }
            }
            let _e145 = local_13;
            if _e145 {
            }
        }
        let _e148 = local_13;
        if _e148 {
        } else {
            (*fe_trapped_7) = true;
        }
        let _e150 = local_12;
        local_10 = _e150;
    }
    let _e155 = local_10;
    return _e155;
}

fn from_f32_(a0_7: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = from_binary32_bits(bitcast<u32>(a0_7), fe_trapped_8);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_9: ptr<function, bool>) -> bool {
    var local_17: u32 = u32();
    var loop_result_2: bool;
    var loop_did_return_2: bool = false;
    var loop_header_carry_5_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_9);
    local_17 = _e3;
    loop {
        let _e8 = local_17;
        let _e10 = (0u < _e8);
        loop_header_carry_5_ = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_8).digits[_e12];
            let _e18 = (*a1_2).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_17 = _e12;
                continue;
            }
            let _e25 = (*a0_8).digits[_e12];
            let _e28 = (*a1_2).digits[_e12];
            loop_result_2 = (_e25 < _e28);
            loop_did_return_2 = true;
            break;
        } else {
            loop_result_2 = false;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e39 = loop_result_2;
    return _e39;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_9: bool, a1_3: u32, a2_1: u32, a3_1: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, a8_: u32, a9_: u32, a10_: u32, a11_: bool, a12_: u32, a13_: u32, a14_: u32, a15_: u32, a16_: u32, a17_: u32, a18_: u32, a19_: u32, a20_: u32, a21_: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_18: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_19: bool = false;
    var fixed_local_22_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_60_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var loop_result_3: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_150_: bool;
    var local_22: bool = bool();
    var fixed_local_95_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_132_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var loop_result_4: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_4: bool = false;
    var loop_header_carry_192_: bool;
    var local_25: u32 = u32();
    var local_26: u32 = u32();

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
        local_20 = 0u;
        local_21 = 0u;
        loop {
            let _e72 = local_20;
            let _e74 = local_21;
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
                    local_20 = (_e87 >> 13u);
                    local_21 = (_e74 + 1u);
                    continue;
                }
                (*fe_trapped_10) = true;
                break;
            } else {
                let _e102 = fixed_local_60_;
                loop_result_3 = _e102;
                loop_did_return_3 = true;
                break;
            }
        }
        let _e108 = loop_did_return_3;
        if _e108 {
            let _e110 = loop_result_3;
            local_18 = _e110;
            local_19 = true;
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
            local_22 = _e191;
        } else {
            let _e193 = fixed_local_22_.negative;
            local_22 = _e193;
        }
        let _e197 = local_22;
        fixed_local_60_.negative = _e197;
        local_23 = 0u;
        local_24 = 0u;
        loop {
            let _e207 = local_23;
            let _e209 = local_24;
            let _e210 = (_e209 < _e52);
            loop_header_carry_192_ = _e210;
            if _e210 {
                if _e189 {
                    let _e214 = fixed_local_45_.digits[_e209];
                    local_25 = _e214;
                } else {
                    let _e217 = fixed_local_22_.digits[_e209];
                    local_25 = _e217;
                }
                let _e222 = local_25;
                if _e189 {
                    let _e225 = fixed_local_22_.digits[_e209];
                    local_26 = _e225;
                } else {
                    let _e228 = fixed_local_45_.digits[_e209];
                    local_26 = _e228;
                }
                let _e232 = local_26;
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
                            local_23 = (1u - _e247);
                            local_24 = (_e209 + 1u);
                            continue;
                        }
                    }
                }
                (*fe_trapped_10) = true;
                break;
            } else {
                let _e257 = fixed_local_60_;
                loop_result_4 = _e257;
                loop_did_return_4 = true;
                break;
            }
        }
        let _e263 = loop_did_return_4;
        if _e263 {
            let _e265 = loop_result_4;
            local_18 = _e265;
            local_19 = true;
        }
    }
    let _e270 = local_18;
    return _e270;
}

fn from_expansion(a0_10: FeLocal_fe_More_More_More_Last_e6310ae8_4_, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var fixed_local_28_: array<f32, 4> = array<f32, 4>();
    var local_27: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_28: u32 = u32();
    var loop_result_5: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_5: bool = false;
    var loop_header_carry_34_: bool;

    let _e2 = to_quad(a0_10);
    fixed_local_28_ = array<f32, 4>(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_);
    let _e11 = fixed_local_28_[0];
    let _e12 = from_f32_(_e11, fe_trapped_11);
    local_27 = _e12;
    local_28 = 1u;
    loop {
        let _e20 = local_27;
        let _e22 = local_28;
        let _e24 = (_e22 < 4u);
        loop_header_carry_34_ = _e24;
        if _e24 {
            let _e26 = fixed_local_28_[_e22];
            let _e27 = from_f32_(_e26, fe_trapped_11);
            let _e52 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e27.negative, _e27.digits[0], _e27.digits[1], _e27.digits[2], _e27.digits[3], _e27.digits[4], _e27.digits[5], _e27.digits[6], _e27.digits[7], _e27.digits[8], _e27.digits[9], fe_trapped_11);
            local_27 = _e52;
            local_28 = (_e22 + 1u);
            continue;
        } else {
            let _e57 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_11);
            let _e82 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e57.negative, _e57.digits[0], _e57.digits[1], _e57.digits[2], _e57.digits[3], _e57.digits[4], _e57.digits[5], _e57.digits[6], _e57.digits[7], _e57.digits[8], _e57.digits[9], fe_trapped_11);
            loop_result_5 = _e82;
            loop_did_return_5 = true;
            break;
        }
    }
    let _e88 = loop_result_5;
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
    var local_29: u32;
    var local_30: bool = false;
    var local_31: u32 = u32();

    if ((a0_13 < 4096u) == false) {
        local_31 = 12u;
    } else {
        if ((a0_13 < 2048u) == false) {
            local_31 = 11u;
        } else {
            if ((a0_13 < 1024u) == false) {
                local_31 = 10u;
            } else {
                if ((a0_13 < 512u) == false) {
                    local_31 = 9u;
                } else {
                    if ((a0_13 < 256u) == false) {
                        local_31 = 8u;
                    } else {
                        if ((a0_13 < 128u) == false) {
                            local_31 = 7u;
                        } else {
                            if ((a0_13 < 64u) == false) {
                                local_31 = 6u;
                            } else {
                                if ((a0_13 < 32u) == false) {
                                    local_31 = 5u;
                                } else {
                                    if ((a0_13 < 16u) == false) {
                                        local_31 = 4u;
                                    } else {
                                        if ((a0_13 < 8u) == false) {
                                            local_31 = 3u;
                                        } else {
                                            if ((a0_13 < 4u) == false) {
                                                local_31 = 2u;
                                            } else {
                                                if ((a0_13 < 2u) == false) {
                                                    local_31 = 1u;
                                                } else {
                                                    if (a0_13 == 1u) {
                                                    } else {
                                                        local_31 = 4294967295u;
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
    let _e80 = local_31;
    return _e80;
}

fn highest_bit(a0_14: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_32: u32 = u32();
    var local_33: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_4_: bool;
    var local_34: u32;
    var local_35: bool = false;
    var local_36: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_13);
    local_32 = 0u;
    local_33 = _e2;
    loop {
        let _e10 = local_32;
        let _e12 = local_33;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_14).digits[_e18];
                local_32 = _e21;
                local_33 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_32;
    let _e28 = local_33;
    if (_e26 == 0u) {
        local_36 = 4294967295u;
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
                local_36 = _e58;
            }
        }
    }
    let _e69 = local_36;
    return _e69;
}

fn word_from(a0_15: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_5: u32, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_37: u32;
    var local_38: bool = false;
    var local_39: u32;
    var local_40: bool = false;
    var local_41: u32 = u32();
    var local_42: u32 = u32();
    var local_43: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_34_1: bool;

    if (bitcast<i32>(a1_5) < bitcast<i32>(0u)) {
        local_37 = 0u;
        local_38 = true;
    }
    let _e77 = local_38;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_5, fe_trapped_14);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_14);
        let _e15 = (a1_5 / 13u);
        if ((_e15 < _e13) == false) {
            local_39 = 0u;
            local_40 = true;
        }
        let _e72 = local_40;
        if _e72 {
        } else {
            let _e24 = (a1_5 % 13u);
            let _e27 = (*a0_15).digits[_e15];
            local_41 = (13u - _e24);
            local_42 = (_e27 >> _e24);
            local_43 = (_e15 + 1u);
            loop {
                let _e41 = local_41;
                let _e43 = local_42;
                let _e45 = local_43;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_1 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_15).digits[_e45];
                        local_41 = (_e41 + 13u);
                        local_42 = (_e43 | (_e51 << _e41));
                        local_43 = (_e45 + 1u);
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
            local_39 = _e69;
        }
        let _e74 = local_39;
        local_37 = _e74;
    }
    let _e79 = local_37;
    return _e79;
}

fn bit_at(a0_16: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_6: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_44: u32;
    var local_45: bool = false;
    var local_46: u32;
    var local_47: bool = false;

    if (bitcast<i32>(a1_6) < bitcast<i32>(0u)) {
        local_44 = 0u;
        local_45 = true;
    }
    let _e38 = local_45;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_6, fe_trapped_15);
        let _e14 = (a1_6 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_15);
        if ((_e14 < _e15) == false) {
            local_46 = 0u;
            local_47 = true;
        }
        let _e33 = local_47;
        if _e33 {
        } else {
            let _e25 = (*a0_16).digits[_e14];
            local_46 = ((_e25 >> (a1_6 % 13u)) & 1u);
        }
        let _e35 = local_46;
        local_44 = _e35;
    }
    let _e40 = local_44;
    return _e40;
}

fn any_below(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_7: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_48: u32;
    var local_49: bool = false;
    var local_50: u32 = u32();
    var local_51: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_15_: bool;
    var local_52: u32;
    var local_53: bool = false;
    var local_54: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_7)) == false) {
        local_48 = 0u;
        local_49 = true;
    }
    let _e65 = local_49;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_7, fe_trapped_16);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
        local_50 = 0u;
        local_51 = 0u;
        loop {
            let _e25 = local_50;
            let _e27 = local_51;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_7 / 13u)) {
                    let _e32 = (*a0_17).digits[_e27];
                    local_50 = (_e25 | _e32);
                    local_51 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_50;
        let _e42 = local_51;
        if (_e42 < _e16) {
            let _e50 = (*a0_17).digits[_e42];
            let _e52 = (1u << (a1_7 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_16) = true;
            } else {
                local_54 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_54 = _e40;
        }
        let _e62 = local_54;
        local_48 = _e62;
    }
    let _e67 = local_48;
    return _e67;
}

fn project_binary32_(a0_18: u32, a1_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_55: u32;
    var local_56: bool = false;
    var local_57: u32 = u32();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: u32 = u32();

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
                    local_58 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from(a1_8, _e32, fe_trapped_17);
                    local_58 = _e42;
                }
                let _e47 = local_58;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_8, _e49, fe_trapped_17);
                let _e51 = any_below(a1_8, _e49, fe_trapped_17);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_59 = 1u;
                    } else {
                        local_59 = (_e47 & 1u);
                    }
                }
                let _e64 = local_59;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_17) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_17) = true;
                        } else {
                            local_60 = 8388608u;
                            local_61 = _e77;
                        }
                    } else {
                        local_60 = _e66;
                        local_61 = _e23;
                    }
                    let _e90 = local_60;
                    let _e92 = local_61;
                    local_57 = (((a0_18 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_57;
    return _e103;
}

fn to_binary32_bits(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_62: u32;
    var local_63: bool = false;
    var local_64: u32 = u32();

    let _e5 = (*a0_19).negative;
    if _e5 {
        local_64 = 1u;
    }
    let _e9 = local_64;
    let _e10 = project_binary32_(_e9, a0_19, fe_trapped_18);
    return _e10;
}

fn to_f32_(a0_20: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_19: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_20, fe_trapped_19);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_21: FeLocal_fe_More_More_More_Last_e6310ae8_4_, a1_9: FeLocal_fe_More_More_More_Last_e6310ae8_4_, fe_trapped_20: ptr<function, bool>) -> f32 {
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
    var local_65: u32;
    var local_66: bool = false;
    var local_67: u32 = u32();

    let _e4 = (*a0_23).negative;
    if _e4 {
        local_67 = 1u;
    }
    let _e8 = local_67;
    return _e8;
}

fn digest(a0_24: ptr<function, array<u32, 10>>) -> u32 {
    var local_68: u32 = u32();
    var local_69: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_4_1: bool;

    local_68 = 0u;
    local_69 = 0u;
    loop {
        let _e9 = local_68;
        let _e11 = local_69;
        let _e13 = (_e11 < 10u);
        loop_header_carry_4_1 = _e13;
        if _e13 {
            let _e15 = (*a0_24)[_e11];
            local_68 = (_e9 ^ (_e15 << ((_e11 * 7u) % 19u)));
            local_69 = (_e11 + 1u);
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

    let _e10 = (global_invocation_id.x * 8u);
    let _e11 = (global_invocation_id.x != 0u);
    if (_e11 && (8u > (4294967295u / select(1u, global_invocation_id.x, _e11)))) {
    } else {
        let _e20 = (global_invocation_id.x * 16u);
        let _e21 = (global_invocation_id.x != 0u);
        if (_e21 && (16u > (4294967295u / select(1u, global_invocation_id.x, _e21)))) {
        } else {
            let _e26 = read_f32_(_e10);
            if (_e10 > (4294967295u - 1u)) {
            } else {
                let _e32 = read_f32_((_e10 + 1u));
                if (_e10 > (4294967295u - 2u)) {
                } else {
                    let _e38 = read_f32_((_e10 + 2u));
                    if (_e10 > (4294967295u - 3u)) {
                        fe_trapped = true;
                    }
                    let _e45 = read_f32_((_e10 + 3u));
                    let _e46 = from_quad(_e26, _e32, _e38, _e45);
                    let _e49 = (_e10 + 4u);
                    if (_e10 > (4294967295u - 4u)) {
                    } else {
                        let _e52 = read_f32_(_e49);
                        if (_e49 > (4294967295u - 1u)) {
                        } else {
                            let _e58 = read_f32_((_e49 + 1u));
                            if (_e49 > (4294967295u - 2u)) {
                            } else {
                                let _e64 = read_f32_((_e49 + 2u));
                                if (_e49 > (4294967295u - 3u)) {
                                    fe_trapped = true;
                                }
                                let _e71 = read_f32_((_e49 + 3u));
                                let _e72 = from_quad(_e52, _e58, _e64, _e71);
                                let _e73 = from_expansion(_e46, (&fe_trapped));
                                let _e74 = from_expansion(_e72, (&fe_trapped));
                                let _e75 = sub(_e74, _e73, (&fe_trapped));
                                let _e76 = expansion_difference(_e46, _e72, (&fe_trapped));
                                outputs[i32(_e20)] = bitcast<u32>(_e76);
                                fixed_local_63_ = _e74;
                                let _e82 = to_digits((&fixed_local_63_));
                                fixed_local_65_ = _e82;
                                local_2 = 0u;
                                loop {
                                    let _e90 = local_2;
                                    let _e92 = (_e90 < 10u);
                                    loop_header_carry_68_ = _e92;
                                    if _e92 {
                                        let _e95 = (_e20 + 1u);
                                        if (_e20 > (4294967295u - 1u)) {
                                        } else {
                                            if (_e95 > (4294967295u - _e90)) {
                                                fe_trapped = true;
                                                break;
                                            }
                                            let _e104 = fixed_local_65_[_e90];
                                            outputs[i32((_e95 + _e90))] = _e104;
                                            local_2 = (_e90 + 1u);
                                            continue;
                                        }
                                        fe_trapped = true;
                                        break;
                                    } else {
                                        break;
                                    }
                                }
                                if (_e20 > (4294967295u - 11u)) {
                                } else {
                                    fixed_local_93_ = _e74;
                                    let _e119 = sign_((&fixed_local_93_));
                                    outputs[i32((_e20 + 11u))] = _e119;
                                    if (_e20 > (4294967295u - 12u)) {
                                    } else {
                                        fixed_local_103_ = _e73;
                                        let _e129 = to_binary32_bits((&fixed_local_103_), (&fe_trapped));
                                        outputs[i32((_e20 + 12u))] = _e129;
                                        if (_e20 > (4294967295u - 13u)) {
                                        } else {
                                            fixed_local_113_ = _e74;
                                            let _e139 = to_binary32_bits((&fixed_local_113_), (&fe_trapped));
                                            outputs[i32((_e20 + 13u))] = _e139;
                                            if (_e20 > (4294967295u - 14u)) {
                                            } else {
                                                fixed_local_123_ = _e75;
                                                let _e149 = sign_((&fixed_local_123_));
                                                outputs[i32((_e20 + 14u))] = _e149;
                                                if (_e20 > (4294967295u - 15u)) {
                                                } else {
                                                    fixed_local_133_ = _e75;
                                                    let _e159 = to_digits((&fixed_local_133_));
                                                    fixed_local_135_ = _e159;
                                                    let _e162 = digest((&fixed_local_135_));
                                                    outputs[i32((_e20 + 15u))] = _e162;
                                                    local_1 = true;
                                                }
                                                let _e168 = local_1;
                                                if _e168 {
                                                }
                                            }
                                            let _e170 = local_1;
                                            if _e170 {
                                            }
                                        }
                                        let _e172 = local_1;
                                        if _e172 {
                                        }
                                    }
                                    let _e174 = local_1;
                                    if _e174 {
                                    }
                                }
                                let _e177 = local_1;
                                if _e177 {
                                } else {
                                    fe_trapped = true;
                                }
                            }
                            let _e179 = local_1;
                            if _e179 {
                            }
                        }
                        let _e182 = local_1;
                        if _e182 {
                        } else {
                            fe_trapped = true;
                        }
                    }
                    let _e185 = local_1;
                    if _e185 {
                    } else {
                        fe_trapped = true;
                    }
                }
                let _e187 = local_1;
                if _e187 {
                }
            }
            let _e190 = local_1;
            if _e190 {
            } else {
                fe_trapped = true;
            }
        }
        let _e192 = local_1;
        if _e192 {
        }
    }
    let _e195 = local_1;
    if _e195 {
    } else {
        fe_trapped = true;
    }
    let _e206 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 512u)) + (global_invocation_id.z * 512u))] = u32(_e206);
}
