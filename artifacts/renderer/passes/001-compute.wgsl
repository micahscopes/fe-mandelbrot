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

struct FeLocal_fe_Coordinate_bdc10f09_8_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_5_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_9_ {
    re: FeLocal_fe_Coordinate_bdc10f09_8_,
    im: FeLocal_fe_Coordinate_bdc10f09_8_,
}

struct FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_ {
    re: FeLocal_fe_More_More_More_Last_e6310ae8_5_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_5_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_19_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_Complex_f32_87ec9249_7_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_10_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_9_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_7_,
}

struct FeLocal_fe_Vec2_f32_2772165c_12_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_13_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_12_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_14_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_13_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_15_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_12_,
    extent: FeLocal_fe_Vec2_f32_2772165c_12_,
}

struct FeLocal_fe_GestureSession_6b679731_16_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_14_,
    viewport: FeLocal_fe_Viewport_91e53b90_15_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_14_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_10_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_17_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_18_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_16_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_17_,
}

struct FeLocal_fe_ReferenceControl_7d077120_1_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_ReferenceAnchor_f9cfd0aa_11_ {
    center: FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_,
    limit: u32,
    generation: u32,
}

struct anchor_element {
    center_u002e_re_u002e_lead: f32,
    center_u002e_re_u002e_tail_u002e_lead: f32,
    center_u002e_re_u002e_tail_u002e_tail_u002e_lead: f32,
    center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    center_u002e_im_u002e_lead: f32,
    center_u002e_im_u002e_tail_u002e_lead: f32,
    center_u002e_im_u002e_tail_u002e_tail_u002e_lead: f32,
    center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    limit: u32,
    generation: u32,
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
    p16_: f32,
    p17_: f32,
    p18_: f32,
    p19_: f32,
    p20_: f32,
    p21_: f32,
    p22_: f32,
    p23_: f32,
    p24_: f32,
    p25_: f32,
    p26_: f32,
    p27_: f32,
    p28_: f32,
    p29_: f32,
    p30_: f32,
    p31_: f32,
    p32_: f32,
    p33_: u32,
    p34_: u32,
    p35_: f32,
    p36_: f32,
    p37_: u32,
    p38_: u32,
    p39_: f32,
    p40_: f32,
    p41_: f32,
    p42_: f32,
    p43_: f32,
    p44_: f32,
    p45_: u32,
    p46_: u32,
    p47_: f32,
    p48_: f32,
    p49_: u32,
    p50_: u32,
    p51_: f32,
    p52_: f32,
    p53_: f32,
    p54_: f32,
    p55_: f32,
    p56_: f32,
    p57_: f32,
    p58_: f32,
    p59_: f32,
    p60_: f32,
    p61_: f32,
    p62_: f32,
    p63_: f32,
    p64_: f32,
    p65_: u32,
    p66_: f32,
}

@group(0) @binding(0)
var<storage, read_write> anchor: array<anchor_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn center_value(a0_: FeLocal_fe_Camera_03494b0d_10_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_ {
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_(a0_.center.re.value, a0_.center.im.value);
}

fn to_quad(a0_1: FeLocal_fe_More_More_More_Last_e6310ae8_5_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_19_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_19_(a0_1.lead, a0_1.tail.lead, a0_1.tail.tail.lead, a0_1.tail.tail.tail.value);
}

fn std_lib_evm_effects_assert_2501_(a0_2: bool, fe_trapped_1: ptr<function, bool>) {
    var local_7: u32;
    var local_8: bool = false;

    if a0_2 {
        local_8 = true;
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

fn from_binary32_bits(a0_6: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_11: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_12: bool = false;
    var local_13: bool = bool();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_14: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_15: bool = false;
    var local_16: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_17: bool = false;
    var local_18: u32 = u32();
    var local_19: u32 = u32();
    var loop_result: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return: bool = false;
    var loop_header_carry_46_: bool;
    var local_20: u32 = u32();

    let _e5 = (a0_6 & 2147483647u);
    std_lib_evm_effects_assert_2501_((_e5 < 1174405120u), fe_trapped_7);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_7);
    fixed_local_7_ = _e8;
    if (((a0_6 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_13 = true;
        }
    }
    let _e25 = local_13;
    fixed_local_7_.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_;
        local_14 = _e31;
        local_15 = true;
    }
    let _e153 = local_15;
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
                    local_18 = _e61;
                    local_19 = 0u;
                    loop {
                        let _e75 = local_18;
                        let _e77 = local_19;
                        let _e78 = (_e77 < _e67);
                        loop_header_carry_46_ = _e78;
                        if _e78 {
                            if ((bitcast<i32>(_e75) < bitcast<i32>(24u)) == false) {
                                local_20 = 0u;
                            } else {
                                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e75)) == false) {
                                    local_20 = 0u;
                                } else {
                                    if ((bitcast<i32>(_e75) < bitcast<i32>(0u)) == false) {
                                        precision_lib_array_fixed_unsigned_word_42a2_(_e75, fe_trapped_7);
                                        local_20 = ((_e39 >> _e75) & 8191u);
                                    } else {
                                        let _e102 = (0u - _e75);
                                        precision_lib_array_fixed_unsigned_word_42a2_(_e102, fe_trapped_7);
                                        local_20 = ((_e39 << _e102) & 8191u);
                                    }
                                }
                            }
                            let _e113 = local_20;
                            fixed_local_7_.digits[_e77] = _e113;
                            let _e119 = (_e75 + 13u);
                            if ((((_e75 ^ _e119) & (13u ^ _e119)) & 2147483648u) != 0u) {
                                (*fe_trapped_7) = true;
                                break;
                            }
                            local_18 = _e119;
                            local_19 = (_e77 + 1u);
                            continue;
                        } else {
                            let _e130 = fixed_local_7_;
                            loop_result = _e130;
                            loop_did_return = true;
                            break;
                        }
                    }
                    let _e136 = loop_did_return;
                    if _e136 {
                        let _e138 = loop_result;
                        local_16 = _e138;
                        local_17 = true;
                    }
                }
                let _e143 = local_17;
                if _e143 {
                }
            }
            let _e145 = local_17;
            if _e145 {
            }
        }
        let _e148 = local_17;
        if _e148 {
        } else {
            (*fe_trapped_7) = true;
        }
        let _e150 = local_16;
        local_14 = _e150;
    }
    let _e155 = local_14;
    return _e155;
}

fn from_f32_(a0_7: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = from_binary32_bits(bitcast<u32>(a0_7), fe_trapped_8);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_9: ptr<function, bool>) -> bool {
    var local_21: u32 = u32();
    var loop_result_1: bool;
    var loop_did_return_1: bool = false;
    var loop_header_carry_5_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_9);
    local_21 = _e3;
    loop {
        let _e8 = local_21;
        let _e10 = (0u < _e8);
        loop_header_carry_5_ = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_8).digits[_e12];
            let _e18 = (*a1_).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_21 = _e12;
                continue;
            }
            let _e25 = (*a0_8).digits[_e12];
            let _e28 = (*a1_).digits[_e12];
            loop_result_1 = (_e25 < _e28);
            loop_did_return_1 = true;
            break;
        } else {
            loop_result_1 = false;
            loop_did_return_1 = true;
            break;
        }
    }
    let _e39 = loop_result_1;
    return _e39;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_9: bool, a1_1: u32, a2_: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, a8_: u32, a9_: u32, a10_: u32, a11_: bool, a12_: u32, a13_: u32, a14_: u32, a15_: u32, a16_: u32, a17_: u32, a18_: u32, a19_: u32, a20_: u32, a21_: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var local_22: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var local_23: bool = false;
    var fixed_local_22_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_60_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_24: u32 = u32();
    var local_25: u32 = u32();
    var loop_result_2: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_150_: bool;
    var local_26: bool = bool();
    var fixed_local_95_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_132_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_27: u32 = u32();
    var local_28: u32 = u32();
    var loop_result_3: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_192_: bool;
    var local_29: u32 = u32();
    var local_30: u32 = u32();

    fixed_local_22_.negative = a0_9;
    fixed_local_22_.digits[0] = a1_1;
    fixed_local_22_.digits[1] = a2_;
    fixed_local_22_.digits[2] = a3_;
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
        local_24 = 0u;
        local_25 = 0u;
        loop {
            let _e72 = local_24;
            let _e74 = local_25;
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
                    local_24 = (_e87 >> 13u);
                    local_25 = (_e74 + 1u);
                    continue;
                }
                (*fe_trapped_10) = true;
                break;
            } else {
                let _e102 = fixed_local_60_;
                loop_result_2 = _e102;
                loop_did_return_2 = true;
                break;
            }
        }
        let _e108 = loop_did_return_2;
        if _e108 {
            let _e110 = loop_result_2;
            local_22 = _e110;
            local_23 = true;
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
            local_26 = _e191;
        } else {
            let _e193 = fixed_local_22_.negative;
            local_26 = _e193;
        }
        let _e197 = local_26;
        fixed_local_60_.negative = _e197;
        local_27 = 0u;
        local_28 = 0u;
        loop {
            let _e207 = local_27;
            let _e209 = local_28;
            let _e210 = (_e209 < _e52);
            loop_header_carry_192_ = _e210;
            if _e210 {
                if _e189 {
                    let _e214 = fixed_local_45_.digits[_e209];
                    local_29 = _e214;
                } else {
                    let _e217 = fixed_local_22_.digits[_e209];
                    local_29 = _e217;
                }
                let _e222 = local_29;
                if _e189 {
                    let _e225 = fixed_local_22_.digits[_e209];
                    local_30 = _e225;
                } else {
                    let _e228 = fixed_local_45_.digits[_e209];
                    local_30 = _e228;
                }
                let _e232 = local_30;
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
                            local_27 = (1u - _e247);
                            local_28 = (_e209 + 1u);
                            continue;
                        }
                    }
                }
                (*fe_trapped_10) = true;
                break;
            } else {
                let _e257 = fixed_local_60_;
                loop_result_3 = _e257;
                loop_did_return_3 = true;
                break;
            }
        }
        let _e263 = loop_did_return_3;
        if _e263 {
            let _e265 = loop_result_3;
            local_22 = _e265;
            local_23 = true;
        }
    }
    let _e270 = local_22;
    return _e270;
}

fn from_expansion(a0_10: FeLocal_fe_More_More_More_Last_e6310ae8_5_, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    var fixed_local_28_: array<f32, 4> = array<f32, 4>();
    var local_31: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var local_32: u32 = u32();
    var loop_result_4: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_;
    var loop_did_return_4: bool = false;
    var loop_header_carry_34_: bool;

    let _e2 = to_quad(a0_10);
    fixed_local_28_ = array<f32, 4>(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_);
    let _e11 = fixed_local_28_[0];
    let _e12 = from_f32_(_e11, fe_trapped_11);
    local_31 = _e12;
    local_32 = 1u;
    loop {
        let _e20 = local_31;
        let _e22 = local_32;
        let _e24 = (_e22 < 4u);
        loop_header_carry_34_ = _e24;
        if _e24 {
            let _e26 = fixed_local_28_[_e22];
            let _e27 = from_f32_(_e26, fe_trapped_11);
            let _e52 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e27.negative, _e27.digits[0], _e27.digits[1], _e27.digits[2], _e27.digits[3], _e27.digits[4], _e27.digits[5], _e27.digits[6], _e27.digits[7], _e27.digits[8], _e27.digits[9], fe_trapped_11);
            local_31 = _e52;
            local_32 = (_e22 + 1u);
            continue;
        } else {
            let _e57 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_11);
            let _e82 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e57.negative, _e57.digits[0], _e57.digits[1], _e57.digits[2], _e57.digits[3], _e57.digits[4], _e57.digits[5], _e57.digits[6], _e57.digits[7], _e57.digits[8], _e57.digits[9], fe_trapped_11);
            loop_result_4 = _e82;
            loop_did_return_4 = true;
            break;
        }
    }
    let _e88 = loop_result_4;
    return _e88;
}

fn neg(a0_11: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_((a0_11.negative == false), a0_11.digits);
}

fn sub(a0_12: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, a1_2: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e3 = neg(a1_2);
    let _e28 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_12.negative, a0_12.digits[0], a0_12.digits[1], a0_12.digits[2], a0_12.digits[3], a0_12.digits[4], a0_12.digits[5], a0_12.digits[6], a0_12.digits[7], a0_12.digits[8], a0_12.digits[9], _e3.negative, _e3.digits[0], _e3.digits[1], _e3.digits[2], _e3.digits[3], _e3.digits[4], _e3.digits[5], _e3.digits[6], _e3.digits[7], _e3.digits[8], _e3.digits[9], fe_trapped_12);
    return _e28;
}

fn limb_highest_bit(a0_13: u32) -> u32 {
    var local_33: u32;
    var local_34: bool = false;
    var local_35: u32 = u32();

    if ((a0_13 < 4096u) == false) {
        local_35 = 12u;
    } else {
        if ((a0_13 < 2048u) == false) {
            local_35 = 11u;
        } else {
            if ((a0_13 < 1024u) == false) {
                local_35 = 10u;
            } else {
                if ((a0_13 < 512u) == false) {
                    local_35 = 9u;
                } else {
                    if ((a0_13 < 256u) == false) {
                        local_35 = 8u;
                    } else {
                        if ((a0_13 < 128u) == false) {
                            local_35 = 7u;
                        } else {
                            if ((a0_13 < 64u) == false) {
                                local_35 = 6u;
                            } else {
                                if ((a0_13 < 32u) == false) {
                                    local_35 = 5u;
                                } else {
                                    if ((a0_13 < 16u) == false) {
                                        local_35 = 4u;
                                    } else {
                                        if ((a0_13 < 8u) == false) {
                                            local_35 = 3u;
                                        } else {
                                            if ((a0_13 < 4u) == false) {
                                                local_35 = 2u;
                                            } else {
                                                if ((a0_13 < 2u) == false) {
                                                    local_35 = 1u;
                                                } else {
                                                    if (a0_13 == 1u) {
                                                    } else {
                                                        local_35 = 4294967295u;
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
    let _e80 = local_35;
    return _e80;
}

fn highest_bit(a0_14: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_36: u32 = u32();
    var local_37: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_4_: bool;
    var local_38: u32;
    var local_39: bool = false;
    var local_40: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_13);
    local_36 = 0u;
    local_37 = _e2;
    loop {
        let _e10 = local_36;
        let _e12 = local_37;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_14).digits[_e18];
                local_36 = _e21;
                local_37 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_36;
    let _e28 = local_37;
    if (_e26 == 0u) {
        local_40 = 4294967295u;
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
                local_40 = _e58;
            }
        }
    }
    let _e69 = local_40;
    return _e69;
}

fn word_from(a0_15: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_3: u32, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_41: u32;
    var local_42: bool = false;
    var local_43: u32;
    var local_44: bool = false;
    var local_45: u32 = u32();
    var local_46: u32 = u32();
    var local_47: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_34_1: bool;

    if (bitcast<i32>(a1_3) < bitcast<i32>(0u)) {
        local_41 = 0u;
        local_42 = true;
    }
    let _e77 = local_42;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_3, fe_trapped_14);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_14);
        let _e15 = (a1_3 / 13u);
        if ((_e15 < _e13) == false) {
            local_43 = 0u;
            local_44 = true;
        }
        let _e72 = local_44;
        if _e72 {
        } else {
            let _e24 = (a1_3 % 13u);
            let _e27 = (*a0_15).digits[_e15];
            local_45 = (13u - _e24);
            local_46 = (_e27 >> _e24);
            local_47 = (_e15 + 1u);
            loop {
                let _e41 = local_45;
                let _e43 = local_46;
                let _e45 = local_47;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_1 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_15).digits[_e45];
                        local_45 = (_e41 + 13u);
                        local_46 = (_e43 | (_e51 << _e41));
                        local_47 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_6 = _e43;
                        loop_did_return_6 = true;
                        break;
                    }
                } else {
                    loop_result_6 = _e43;
                    loop_did_return_6 = true;
                    break;
                }
            }
            let _e69 = loop_result_6;
            local_43 = _e69;
        }
        let _e74 = local_43;
        local_41 = _e74;
    }
    let _e79 = local_41;
    return _e79;
}

fn bit_at(a0_16: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_4: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_48: u32;
    var local_49: bool = false;
    var local_50: u32;
    var local_51: bool = false;

    if (bitcast<i32>(a1_4) < bitcast<i32>(0u)) {
        local_48 = 0u;
        local_49 = true;
    }
    let _e38 = local_49;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_4, fe_trapped_15);
        let _e14 = (a1_4 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_15);
        if ((_e14 < _e15) == false) {
            local_50 = 0u;
            local_51 = true;
        }
        let _e33 = local_51;
        if _e33 {
        } else {
            let _e25 = (*a0_16).digits[_e14];
            local_50 = ((_e25 >> (a1_4 % 13u)) & 1u);
        }
        let _e35 = local_50;
        local_48 = _e35;
    }
    let _e40 = local_48;
    return _e40;
}

fn any_below(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_5: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_52: u32;
    var local_53: bool = false;
    var local_54: u32 = u32();
    var local_55: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_15_: bool;
    var local_56: u32;
    var local_57: bool = false;
    var local_58: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_5)) == false) {
        local_52 = 0u;
        local_53 = true;
    }
    let _e65 = local_53;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_5, fe_trapped_16);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
        local_54 = 0u;
        local_55 = 0u;
        loop {
            let _e25 = local_54;
            let _e27 = local_55;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_5 / 13u)) {
                    let _e32 = (*a0_17).digits[_e27];
                    local_54 = (_e25 | _e32);
                    local_55 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_54;
        let _e42 = local_55;
        if (_e42 < _e16) {
            let _e50 = (*a0_17).digits[_e42];
            let _e52 = (1u << (a1_5 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_16) = true;
            } else {
                local_58 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_58 = _e40;
        }
        let _e62 = local_58;
        local_52 = _e62;
    }
    let _e67 = local_52;
    return _e67;
}

fn project_binary32_(a0_18: u32, a1_6: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_59: u32;
    var local_60: bool = false;
    var local_61: u32 = u32();
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var local_64: u32 = u32();
    var local_65: u32 = u32();

    let _e5 = highest_bit(a1_6, fe_trapped_17);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_6, fe_trapped_17);
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
                    let _e40 = word_from(a1_6, 0u, fe_trapped_17);
                    local_62 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from(a1_6, _e32, fe_trapped_17);
                    local_62 = _e42;
                }
                let _e47 = local_62;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_6, _e49, fe_trapped_17);
                let _e51 = any_below(a1_6, _e49, fe_trapped_17);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_63 = 1u;
                    } else {
                        local_63 = (_e47 & 1u);
                    }
                }
                let _e64 = local_63;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_17) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_17) = true;
                        } else {
                            local_64 = 8388608u;
                            local_65 = _e77;
                        }
                    } else {
                        local_64 = _e66;
                        local_65 = _e23;
                    }
                    let _e90 = local_64;
                    let _e92 = local_65;
                    local_61 = (((a0_18 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_61;
    return _e103;
}

fn to_binary32_bits(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_66: u32;
    var local_67: bool = false;
    var local_68: u32 = u32();

    let _e5 = (*a0_19).negative;
    if _e5 {
        local_68 = 1u;
    }
    let _e9 = local_68;
    let _e10 = project_binary32_(_e9, a0_19, fe_trapped_18);
    return _e10;
}

fn to_f32_(a0_20: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_19: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_20, fe_trapped_19);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_21: FeLocal_fe_More_More_More_Last_e6310ae8_5_, a1_7: FeLocal_fe_More_More_More_Last_e6310ae8_5_, fe_trapped_20: ptr<function, bool>) -> f32 {
    var fixed_local_7_1: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e3 = from_expansion(a1_7, fe_trapped_20);
    let _e4 = from_expansion(a0_21, fe_trapped_20);
    let _e5 = sub(_e3, _e4, fe_trapped_20);
    fixed_local_7_1 = _e5;
    let _e8 = to_f32_((&fixed_local_7_1), fe_trapped_20);
    return _e8;
}

fn center_delta(a0_22: FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_, a1_8: FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_7_ {
    let _e5 = expansion_difference(a0_22.re, a1_8.re, fe_trapped_21);
    let _e8 = expansion_difference(a0_22.im, a1_8.im, fe_trapped_21);
    return FeLocal_fe_Complex_f32_87ec9249_7_(_e5, _e8);
}

fn delta_from(a0_23: FeLocal_fe_ReferenceAnchor_f9cfd0aa_11_, a1_9: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_18_>, fe_trapped_22: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_7_ {
    let _e5 = (*a1_9).camera;
    let _e6 = center_value(_e5);
    let _e7 = center_delta(a0_23.center, _e6, fe_trapped_22);
    return _e7;
}

fn iteration_limit(a0_24: f32, fe_trapped_23: ptr<function, bool>) -> u32 {
    var local_69: u32 = u32();
    var local_70: f32 = f32();
    var local_71: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_5_1: bool;
    var local_72: u32 = u32();
    var local_73: f32 = f32();
    var local_74: u32;
    var local_75: bool = false;
    var local_76: u32 = u32();

    local_69 = 0u;
    local_70 = a0_24;
    local_71 = 0u;
    loop {
        let _e12 = local_69;
        let _e14 = local_70;
        let _e16 = local_71;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_1 = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_23) = true;
                    break;
                } else {
                    local_72 = (_e12 + 1u);
                    local_73 = (_e14 * 2f);
                }
            } else {
                local_72 = _e12;
                local_73 = _e14;
            }
            let _e36 = local_72;
            let _e38 = local_73;
            local_69 = _e36;
            local_70 = _e38;
            local_71 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_69;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_23) = true;
        }
        if (8192u < _e60) {
            local_76 = 8192u;
        } else {
            local_76 = _e60;
        }
        let _e71 = local_76;
        local_74 = _e71;
        local_75 = true;
    }
    let _e77 = local_75;
    if _e77 {
    } else {
        (*fe_trapped_23) = true;
    }
    let _e79 = local_74;
    return _e79;
}

fn cancel_pending(a0_25: FeLocal_fe_ReferenceControl_7d077120_1_) -> FeLocal_fe_ReferenceControl_7d077120_1_ {
    var fixed_local_2_: FeLocal_fe_ReferenceControl_7d077120_1_ = FeLocal_fe_ReferenceControl_7d077120_1_();

    fixed_local_2_ = a0_25;
    fixed_local_2_.pending = 0u;
    fixed_local_2_.index = 0u;
    fixed_local_2_.zx_s = 0u;
    fixed_local_2_.zy_s = 0u;
    let _e11 = fixed_local_2_;
    return _e11;
}

fn impl_trait_f32_abs(a0_26: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_26) & 2147483647u));
}

fn impl_trait_f32_max(a0_27: f32, a1_10: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_27);
    let _e3 = bitcast<u32>(a1_10);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32 = u32();
    var local_5: u32;
    var local_6: bool = false;
    var fixed_local_360_: FeLocal_fe_MandelbrotViewState_c524184f_18_ = FeLocal_fe_MandelbrotViewState_c524184f_18_();

    let _e6 = params.p16_;
    let _e8 = params.p17_;
    let _e10 = params.p18_;
    let _e12 = params.p19_;
    let _e14 = params.p20_;
    let _e16 = params.p21_;
    let _e18 = params.p22_;
    let _e20 = params.p23_;
    let _e22 = params.p24_;
    let _e24 = params.p25_;
    let _e26 = params.p26_;
    let _e28 = params.p27_;
    let _e30 = params.p28_;
    let _e32 = params.p29_;
    let _e34 = params.p30_;
    let _e36 = params.p31_;
    let _e38 = params.p32_;
    let _e40 = params.p33_;
    let _e44 = params.p34_;
    let _e46 = params.p35_;
    let _e48 = params.p36_;
    let _e50 = params.p37_;
    let _e54 = params.p38_;
    let _e56 = params.p39_;
    let _e58 = params.p40_;
    let _e60 = params.p41_;
    let _e62 = params.p42_;
    let _e64 = params.p43_;
    let _e66 = params.p44_;
    let _e68 = params.p45_;
    let _e72 = params.p46_;
    let _e74 = params.p47_;
    let _e76 = params.p48_;
    let _e78 = params.p49_;
    let _e82 = params.p50_;
    let _e84 = params.p51_;
    let _e86 = params.p52_;
    let _e88 = params.p53_;
    let _e90 = params.p54_;
    let _e92 = params.p55_;
    let _e94 = params.p56_;
    let _e96 = params.p57_;
    let _e98 = params.p58_;
    let _e100 = params.p59_;
    let _e102 = params.p60_;
    let _e104 = params.p61_;
    let _e106 = params.p62_;
    let _e108 = params.p63_;
    let _e110 = params.p64_;
    let _e112 = params.p65_;
    let _e116 = params.p66_;
    let _e166 = reference[i32(0u)].active_;
    let _e168 = reference[i32(0u)].active_valid;
    let _e170 = reference[i32(0u)].pending;
    let _e172 = reference[i32(0u)].index;
    let _e174 = reference[i32(0u)].zx_s;
    let _e176 = reference[i32(0u)].zy_s;
    let _e178 = reference[i32(0u)].ready_at;
    let _e179 = FeLocal_fe_ReferenceControl_7d077120_1_(_e166, _e168, _e170, _e172, _e174, _e176, _e178);
    if (_e170 == 0u) {
        local_1 = true;
    }
    let _e275 = local_1;
    if _e275 {
    } else {
        if (_e166 == 0u) {
            local_4 = 1u;
        }
        let _e192 = local_4;
        let _e196 = anchor[i32(_e192)].center_u002e_re_u002e_lead;
        let _e198 = anchor[i32(_e192)].center_u002e_re_u002e_tail_u002e_lead;
        let _e200 = anchor[i32(_e192)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead;
        let _e202 = anchor[i32(_e192)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e204 = anchor[i32(_e192)].center_u002e_im_u002e_lead;
        let _e206 = anchor[i32(_e192)].center_u002e_im_u002e_tail_u002e_lead;
        let _e208 = anchor[i32(_e192)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead;
        let _e210 = anchor[i32(_e192)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e212 = anchor[i32(_e192)].limit;
        let _e214 = anchor[i32(_e192)].generation;
        fixed_local_360_ = FeLocal_fe_MandelbrotViewState_c524184f_18_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e6, FeLocal_fe_More_More_Last_60a5ba63_4_(_e8, FeLocal_fe_More_Last_1ac585f5_3_(_e10, FeLocal_fe_Last_eb970eb0_2_(_e12))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e14, FeLocal_fe_More_More_Last_60a5ba63_4_(_e16, FeLocal_fe_More_Last_1ac585f5_3_(_e18, FeLocal_fe_Last_eb970eb0_2_(_e20)))))), _e22, _e24, FeLocal_fe_Complex_f32_87ec9249_7_(_e26, _e28)), _e30, _e32, _e34, _e36, _e38, FeLocal_fe_GestureSession_6b679731_16_(FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e40 != 0u), _e44, FeLocal_fe_Vec2_f32_2772165c_12_(_e46, _e48)), FeLocal_fe_Contact_2b5c3d26_13_((_e50 != 0u), _e54, FeLocal_fe_Vec2_f32_2772165c_12_(_e56, _e58)))), FeLocal_fe_Viewport_91e53b90_15_(FeLocal_fe_Vec2_f32_2772165c_12_(_e60, _e62), FeLocal_fe_Vec2_f32_2772165c_12_(_e64, _e66)), FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e68 != 0u), _e72, FeLocal_fe_Vec2_f32_2772165c_12_(_e74, _e76)), FeLocal_fe_Contact_2b5c3d26_13_((_e78 != 0u), _e82, FeLocal_fe_Vec2_f32_2772165c_12_(_e84, _e86)))), FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e88, FeLocal_fe_More_More_Last_60a5ba63_4_(_e90, FeLocal_fe_More_Last_1ac585f5_3_(_e92, FeLocal_fe_Last_eb970eb0_2_(_e94))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e96, FeLocal_fe_More_More_Last_60a5ba63_4_(_e98, FeLocal_fe_More_Last_1ac585f5_3_(_e100, FeLocal_fe_Last_eb970eb0_2_(_e102)))))), _e104, _e106, FeLocal_fe_Complex_f32_87ec9249_7_(_e108, _e110))), FeLocal_fe_BackingRequest_2bcae9f8_17_((_e112 != 0u), _e116));
        let _e227 = delta_from(FeLocal_fe_ReferenceAnchor_f9cfd0aa_11_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e196, FeLocal_fe_More_More_Last_60a5ba63_4_(_e198, FeLocal_fe_More_Last_1ac585f5_3_(_e200, FeLocal_fe_Last_eb970eb0_2_(_e202)))), FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e204, FeLocal_fe_More_More_Last_60a5ba63_4_(_e206, FeLocal_fe_More_Last_1ac585f5_3_(_e208, FeLocal_fe_Last_eb970eb0_2_(_e210))))), _e212, _e214), (&fixed_local_360_), (&fe_trapped));
        let _e228 = iteration_limit(_e22, (&fe_trapped));
        if (_e212 < _e228) {
            let _e230 = cancel_pending(_e179);
            reference[i32(0u)].active_ = _e230.active_;
            reference[i32(0u)].active_valid = _e230.active_valid;
            reference[i32(0u)].pending = _e230.pending;
            reference[i32(0u)].index = _e230.index;
            reference[i32(0u)].zx_s = _e230.zx_s;
            reference[i32(0u)].zy_s = _e230.zy_s;
            reference[i32(0u)].ready_at = _e230.ready_at;
        } else {
            let _e249 = impl_trait_f32_abs(_e227.re);
            let _e251 = impl_trait_f32_abs(_e227.im);
            let _e252 = impl_trait_f32_max(_e249, _e251);
            if ((_e22 * 0.5f) < _e252) {
                let _e256 = cancel_pending(_e179);
                reference[i32(0u)].active_ = _e256.active_;
                reference[i32(0u)].active_valid = _e256.active_valid;
                reference[i32(0u)].pending = _e256.pending;
                reference[i32(0u)].index = _e256.index;
                reference[i32(0u)].zx_s = _e256.zx_s;
                reference[i32(0u)].zy_s = _e256.zy_s;
                reference[i32(0u)].ready_at = _e256.ready_at;
            }
        }
    }
    let _e277 = fe_trapped;
    trap[0u] = u32(_e277);
}
