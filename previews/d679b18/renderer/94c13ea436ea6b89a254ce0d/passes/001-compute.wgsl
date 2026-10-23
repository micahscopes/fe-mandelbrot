struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_2_,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: FeLocal_fe_shader_private_layout_8_,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: bool,
    f1_: array<u32, 10>,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: f32,
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

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: bool,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_12_,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: array<FeLocal_fe_shader_private_layout_13_, 10>,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: FeLocal_fe_shader_private_layout_12_,
    f1_: FeLocal_fe_shader_private_layout_12_,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: FeLocal_fe_shader_private_layout_14_,
    f1_: FeLocal_fe_shader_private_layout_15_,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: bool,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: FeLocal_fe_shader_private_layout_10_,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: FeLocal_fe_shader_private_layout_16_,
    f7_: FeLocal_fe_shader_private_layout_17_,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: u32,
    f2_: u32,
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
    p31_: u32,
    p32_: u32,
    p33_: f32,
    p34_: f32,
    p35_: u32,
    p36_: u32,
    p37_: f32,
    p38_: f32,
    p39_: u32,
    p40_: u32,
    p41_: f32,
    p42_: f32,
    p43_: u32,
    p44_: u32,
    p45_: f32,
    p46_: f32,
    p47_: u32,
    p48_: u32,
    p49_: f32,
    p50_: f32,
    p51_: u32,
    p52_: u32,
    p53_: f32,
    p54_: f32,
    p55_: u32,
    p56_: u32,
    p57_: f32,
    p58_: f32,
    p59_: u32,
    p60_: u32,
    p61_: f32,
    p62_: f32,
    p63_: u32,
    p64_: u32,
    p65_: f32,
    p66_: f32,
    p67_: u32,
    p68_: u32,
    p69_: f32,
    p70_: f32,
    p71_: f32,
    p72_: f32,
    p73_: f32,
    p74_: f32,
    p75_: u32,
    p76_: f32,
}

@group(0) @binding(0)
var<storage, read_write> anchor: array<anchor_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn center_value(a0_: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_6_ {
    return FeLocal_fe_shader_private_layout_6_(a0_.f0_.f0_.f0_, a0_.f0_.f1_.f0_);
}

fn to_quad(a0_1: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_19_ {
    return FeLocal_fe_shader_private_layout_19_(a0_1.f0_, a0_1.f1_.f0_, a0_1.f1_.f1_.f0_, a0_1.f1_.f1_.f1_.f0_);
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

fn zero(fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_3);
    return FeLocal_fe_shader_private_layout_0_();
}

fn precision_lib_array_fixed_signed_word_0e35_(a0_3: u32, fe_trapped_4: ptr<function, bool>) {
    std_lib_evm_effects_assert_2501_(((2147483647u < a0_3) == false), fe_trapped_4);
    return;
}

fn precision_lib_array_fixed_unsigned_word_42a2_(a0_4: u32, fe_trapped_5: ptr<function, bool>) {
    std_lib_evm_effects_assert_2501_(((bitcast<i32>(a0_4) < bitcast<i32>(0u)) == false), fe_trapped_5);
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_5: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_6: ptr<function, bool>) -> u32 {
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

fn from_binary32_bits(a0_6: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_11: FeLocal_fe_shader_private_layout_0_;
    var local_12: bool = false;
    var local_13: bool = bool();
    var fixed_local_7_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_14: FeLocal_fe_shader_private_layout_0_;
    var local_15: bool = false;
    var local_16: FeLocal_fe_shader_private_layout_0_;
    var local_17: bool = false;
    var local_18: u32 = u32();
    var local_19: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_0_;
    var loop_did_return: bool = false;
    var loop_header_carry_46_: bool;
    var local_20: u32 = u32();

    let _e5 = (a0_6 & 2147483647u);
    std_lib_evm_effects_assert_2501_((_e5 < 1174405120u), fe_trapped_7);
    let _e8 = zero(fe_trapped_7);
    fixed_local_7_ = _e8;
    if (((a0_6 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_13 = true;
        }
    }
    let _e25 = local_13;
    fixed_local_7_.f0_ = _e25;
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
                            fixed_local_7_.f1_[_e77] = _e113;
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

fn from_f32_(a0_7: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = from_binary32_bits(bitcast<u32>(a0_7), fe_trapped_8);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_8: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_9: ptr<function, bool>) -> bool {
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
            let _e15 = (*a0_8).f1_[_e12];
            let _e18 = (*a1_).f1_[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_21 = _e12;
                continue;
            }
            let _e25 = (*a0_8).f1_[_e12];
            let _e28 = (*a1_).f1_[_e12];
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

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitude_g16d4_3d94_(a0_9: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_1: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_22: u32 = u32();
    var local_23: u32 = u32();
    var loop_result_2: FeLocal_fe_shader_private_layout_0_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_7_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_10);
    local_22 = 0u;
    local_23 = 0u;
    loop {
        let _e12 = local_22;
        let _e14 = local_23;
        let _e15 = (_e14 < _e3);
        loop_header_carry_7_ = _e15;
        if _e15 {
            let _e18 = (*a0_9).f1_[_e14];
            let _e21 = (8192u + _e18);
            if (8192u > (4294967295u - _e18)) {
            } else {
                let _e26 = (*a1_1).f1_[_e14];
                let _e27 = (_e21 - _e26);
                if (_e21 < _e26) {
                } else {
                    let _e29 = (_e27 - _e12);
                    if (_e27 < _e12) {
                    } else {
                        (*a0_9).f1_[_e14] = (_e29 & 8191u);
                        let _e36 = (_e29 >> 13u);
                        if (1u < _e36) {
                            (*fe_trapped_10) = true;
                            break;
                        }
                        local_22 = (1u - _e36);
                        local_23 = (_e14 + 1u);
                        continue;
                    }
                }
            }
            (*fe_trapped_10) = true;
            break;
        } else {
            let _e46 = (*a0_9);
            loop_result_2 = _e46;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e52 = loop_result_2;
    return _e52;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_10: bool, a1_2: u32, a2_: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, a8_: u32, a9_: u32, a10_: u32, a11_: bool, a12_: u32, a13_: u32, a14_: u32, a15_: u32, a16_: u32, a17_: u32, a18_: u32, a19_: u32, a20_: u32, a21_: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_24: FeLocal_fe_shader_private_layout_0_;
    var local_25: bool = false;
    var fixed_local_22_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_45_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_91_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_128_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_204_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_241_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_279_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_316_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_166_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_26: u32 = u32();
    var local_27: u32 = u32();
    var loop_result_3: FeLocal_fe_shader_private_layout_0_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_332_: bool;

    fixed_local_22_.f0_ = a0_10;
    fixed_local_22_.f1_[0] = a1_2;
    fixed_local_22_.f1_[1] = a2_;
    fixed_local_22_.f1_[2] = a3_;
    fixed_local_22_.f1_[3] = a4_;
    fixed_local_22_.f1_[4] = a5_;
    fixed_local_22_.f1_[5] = a6_;
    fixed_local_22_.f1_[6] = a7_;
    fixed_local_22_.f1_[7] = a8_;
    fixed_local_22_.f1_[8] = a9_;
    fixed_local_22_.f1_[9] = a10_;
    fixed_local_45_.f0_ = a11_;
    fixed_local_45_.f1_[0] = a12_;
    fixed_local_45_.f1_[1] = a13_;
    fixed_local_45_.f1_[2] = a14_;
    fixed_local_45_.f1_[3] = a15_;
    fixed_local_45_.f1_[4] = a16_;
    fixed_local_45_.f1_[5] = a17_;
    fixed_local_45_.f1_[6] = a18_;
    fixed_local_45_.f1_[7] = a19_;
    fixed_local_45_.f1_[8] = a20_;
    fixed_local_45_.f1_[9] = a21_;
    let _e53 = fixed_local_22_.f0_;
    let _e55 = fixed_local_45_.f0_;
    if ((_e53 == _e55) == false) {
        let _e60 = fixed_local_22_.f0_;
        let _e63 = fixed_local_22_.f1_[0];
        let _e65 = fixed_local_22_.f1_[1];
        let _e67 = fixed_local_22_.f1_[2];
        let _e69 = fixed_local_22_.f1_[3];
        let _e71 = fixed_local_22_.f1_[4];
        let _e73 = fixed_local_22_.f1_[5];
        let _e75 = fixed_local_22_.f1_[6];
        let _e77 = fixed_local_22_.f1_[7];
        let _e79 = fixed_local_22_.f1_[8];
        let _e81 = fixed_local_22_.f1_[9];
        fixed_local_91_.f0_ = _e60;
        fixed_local_91_.f1_[0] = _e63;
        fixed_local_91_.f1_[1] = _e65;
        fixed_local_91_.f1_[2] = _e67;
        fixed_local_91_.f1_[3] = _e69;
        fixed_local_91_.f1_[4] = _e71;
        fixed_local_91_.f1_[5] = _e73;
        fixed_local_91_.f1_[6] = _e75;
        fixed_local_91_.f1_[7] = _e77;
        fixed_local_91_.f1_[8] = _e79;
        fixed_local_91_.f1_[9] = _e81;
        let _e97 = fixed_local_45_.f0_;
        let _e100 = fixed_local_45_.f1_[0];
        let _e102 = fixed_local_45_.f1_[1];
        let _e104 = fixed_local_45_.f1_[2];
        let _e106 = fixed_local_45_.f1_[3];
        let _e108 = fixed_local_45_.f1_[4];
        let _e110 = fixed_local_45_.f1_[5];
        let _e112 = fixed_local_45_.f1_[6];
        let _e114 = fixed_local_45_.f1_[7];
        let _e116 = fixed_local_45_.f1_[8];
        let _e118 = fixed_local_45_.f1_[9];
        fixed_local_128_.f0_ = _e97;
        fixed_local_128_.f1_[0] = _e100;
        fixed_local_128_.f1_[1] = _e102;
        fixed_local_128_.f1_[2] = _e104;
        fixed_local_128_.f1_[3] = _e106;
        fixed_local_128_.f1_[4] = _e108;
        fixed_local_128_.f1_[5] = _e110;
        fixed_local_128_.f1_[6] = _e112;
        fixed_local_128_.f1_[7] = _e114;
        fixed_local_128_.f1_[8] = _e116;
        fixed_local_128_.f1_[9] = _e118;
        let _e133 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c((&fixed_local_91_), (&fixed_local_128_), fe_trapped_11);
        if _e133 {
            let _e135 = fixed_local_45_.f0_;
            let _e138 = fixed_local_45_.f1_[0];
            let _e140 = fixed_local_45_.f1_[1];
            let _e142 = fixed_local_45_.f1_[2];
            let _e144 = fixed_local_45_.f1_[3];
            let _e146 = fixed_local_45_.f1_[4];
            let _e148 = fixed_local_45_.f1_[5];
            let _e150 = fixed_local_45_.f1_[6];
            let _e152 = fixed_local_45_.f1_[7];
            let _e154 = fixed_local_45_.f1_[8];
            let _e156 = fixed_local_45_.f1_[9];
            fixed_local_204_.f0_ = _e135;
            fixed_local_204_.f1_[0] = _e138;
            fixed_local_204_.f1_[1] = _e140;
            fixed_local_204_.f1_[2] = _e142;
            fixed_local_204_.f1_[3] = _e144;
            fixed_local_204_.f1_[4] = _e146;
            fixed_local_204_.f1_[5] = _e148;
            fixed_local_204_.f1_[6] = _e150;
            fixed_local_204_.f1_[7] = _e152;
            fixed_local_204_.f1_[8] = _e154;
            fixed_local_204_.f1_[9] = _e156;
            let _e172 = fixed_local_22_.f0_;
            let _e175 = fixed_local_22_.f1_[0];
            let _e177 = fixed_local_22_.f1_[1];
            let _e179 = fixed_local_22_.f1_[2];
            let _e181 = fixed_local_22_.f1_[3];
            let _e183 = fixed_local_22_.f1_[4];
            let _e185 = fixed_local_22_.f1_[5];
            let _e187 = fixed_local_22_.f1_[6];
            let _e189 = fixed_local_22_.f1_[7];
            let _e191 = fixed_local_22_.f1_[8];
            let _e193 = fixed_local_22_.f1_[9];
            fixed_local_241_.f0_ = _e172;
            fixed_local_241_.f1_[0] = _e175;
            fixed_local_241_.f1_[1] = _e177;
            fixed_local_241_.f1_[2] = _e179;
            fixed_local_241_.f1_[3] = _e181;
            fixed_local_241_.f1_[4] = _e183;
            fixed_local_241_.f1_[5] = _e185;
            fixed_local_241_.f1_[6] = _e187;
            fixed_local_241_.f1_[7] = _e189;
            fixed_local_241_.f1_[8] = _e191;
            fixed_local_241_.f1_[9] = _e193;
            let _e208 = precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitude_g16d4_3d94_((&fixed_local_204_), (&fixed_local_241_), fe_trapped_11);
            local_24 = _e208;
            local_25 = true;
        }
        let _e291 = local_25;
        if _e291 {
        } else {
            let _e213 = fixed_local_22_.f0_;
            let _e216 = fixed_local_22_.f1_[0];
            let _e218 = fixed_local_22_.f1_[1];
            let _e220 = fixed_local_22_.f1_[2];
            let _e222 = fixed_local_22_.f1_[3];
            let _e224 = fixed_local_22_.f1_[4];
            let _e226 = fixed_local_22_.f1_[5];
            let _e228 = fixed_local_22_.f1_[6];
            let _e230 = fixed_local_22_.f1_[7];
            let _e232 = fixed_local_22_.f1_[8];
            let _e234 = fixed_local_22_.f1_[9];
            fixed_local_279_.f0_ = _e213;
            fixed_local_279_.f1_[0] = _e216;
            fixed_local_279_.f1_[1] = _e218;
            fixed_local_279_.f1_[2] = _e220;
            fixed_local_279_.f1_[3] = _e222;
            fixed_local_279_.f1_[4] = _e224;
            fixed_local_279_.f1_[5] = _e226;
            fixed_local_279_.f1_[6] = _e228;
            fixed_local_279_.f1_[7] = _e230;
            fixed_local_279_.f1_[8] = _e232;
            fixed_local_279_.f1_[9] = _e234;
            let _e250 = fixed_local_45_.f0_;
            let _e253 = fixed_local_45_.f1_[0];
            let _e255 = fixed_local_45_.f1_[1];
            let _e257 = fixed_local_45_.f1_[2];
            let _e259 = fixed_local_45_.f1_[3];
            let _e261 = fixed_local_45_.f1_[4];
            let _e263 = fixed_local_45_.f1_[5];
            let _e265 = fixed_local_45_.f1_[6];
            let _e267 = fixed_local_45_.f1_[7];
            let _e269 = fixed_local_45_.f1_[8];
            let _e271 = fixed_local_45_.f1_[9];
            fixed_local_316_.f0_ = _e250;
            fixed_local_316_.f1_[0] = _e253;
            fixed_local_316_.f1_[1] = _e255;
            fixed_local_316_.f1_[2] = _e257;
            fixed_local_316_.f1_[3] = _e259;
            fixed_local_316_.f1_[4] = _e261;
            fixed_local_316_.f1_[5] = _e263;
            fixed_local_316_.f1_[6] = _e265;
            fixed_local_316_.f1_[7] = _e267;
            fixed_local_316_.f1_[8] = _e269;
            fixed_local_316_.f1_[9] = _e271;
            let _e286 = precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitude_g16d4_3d94_((&fixed_local_279_), (&fixed_local_316_), fe_trapped_11);
            local_24 = _e286;
            local_25 = true;
        }
    } else {
        let _e293 = fixed_local_22_.f0_;
        let _e296 = fixed_local_22_.f1_[0];
        let _e298 = fixed_local_22_.f1_[1];
        let _e300 = fixed_local_22_.f1_[2];
        let _e302 = fixed_local_22_.f1_[3];
        let _e304 = fixed_local_22_.f1_[4];
        let _e306 = fixed_local_22_.f1_[5];
        let _e308 = fixed_local_22_.f1_[6];
        let _e310 = fixed_local_22_.f1_[7];
        let _e312 = fixed_local_22_.f1_[8];
        let _e314 = fixed_local_22_.f1_[9];
        fixed_local_166_.f0_ = _e293;
        fixed_local_166_.f1_[0] = _e296;
        fixed_local_166_.f1_[1] = _e298;
        fixed_local_166_.f1_[2] = _e300;
        fixed_local_166_.f1_[3] = _e302;
        fixed_local_166_.f1_[4] = _e304;
        fixed_local_166_.f1_[5] = _e306;
        fixed_local_166_.f1_[6] = _e308;
        fixed_local_166_.f1_[7] = _e310;
        fixed_local_166_.f1_[8] = _e312;
        fixed_local_166_.f1_[9] = _e314;
        let _e329 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_11);
        local_26 = 0u;
        local_27 = 0u;
        loop {
            let _e338 = local_26;
            let _e340 = local_27;
            let _e341 = (_e340 < _e329);
            loop_header_carry_332_ = _e341;
            if _e341 {
                let _e344 = fixed_local_22_.f1_[_e340];
                let _e347 = fixed_local_45_.f1_[_e340];
                let _e349 = (_e344 + _e347);
                if (_e344 > (4294967295u - _e347)) {
                } else {
                    let _e353 = (_e349 + _e338);
                    if (_e349 > (4294967295u - _e338)) {
                        (*fe_trapped_11) = true;
                        break;
                    }
                    fixed_local_166_.f1_[_e340] = (_e353 & 8191u);
                    local_26 = (_e353 >> 13u);
                    local_27 = (_e340 + 1u);
                    continue;
                }
                (*fe_trapped_11) = true;
                break;
            } else {
                let _e368 = fixed_local_166_;
                loop_result_3 = _e368;
                loop_did_return_3 = true;
                break;
            }
        }
        let _e374 = loop_did_return_3;
        if _e374 {
            let _e376 = loop_result_3;
            local_24 = _e376;
            local_25 = true;
        }
    }
    let _e381 = local_24;
    return _e381;
}

fn from_expansion(a0_11: FeLocal_fe_shader_private_layout_5_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    let _e2 = to_quad(a0_11);
    let _e7 = from_f32_(_e2.f0_, fe_trapped_12);
    let _e8 = from_f32_(_e2.f1_, fe_trapped_12);
    let _e33 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e7.f0_, _e7.f1_[0], _e7.f1_[1], _e7.f1_[2], _e7.f1_[3], _e7.f1_[4], _e7.f1_[5], _e7.f1_[6], _e7.f1_[7], _e7.f1_[8], _e7.f1_[9], _e8.f0_, _e8.f1_[0], _e8.f1_[1], _e8.f1_[2], _e8.f1_[3], _e8.f1_[4], _e8.f1_[5], _e8.f1_[6], _e8.f1_[7], _e8.f1_[8], _e8.f1_[9], fe_trapped_12);
    let _e34 = from_f32_(_e2.f2_, fe_trapped_12);
    let _e59 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e33.f0_, _e33.f1_[0], _e33.f1_[1], _e33.f1_[2], _e33.f1_[3], _e33.f1_[4], _e33.f1_[5], _e33.f1_[6], _e33.f1_[7], _e33.f1_[8], _e33.f1_[9], _e34.f0_, _e34.f1_[0], _e34.f1_[1], _e34.f1_[2], _e34.f1_[3], _e34.f1_[4], _e34.f1_[5], _e34.f1_[6], _e34.f1_[7], _e34.f1_[8], _e34.f1_[9], fe_trapped_12);
    let _e60 = from_f32_(_e2.f3_, fe_trapped_12);
    let _e85 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e59.f0_, _e59.f1_[0], _e59.f1_[1], _e59.f1_[2], _e59.f1_[3], _e59.f1_[4], _e59.f1_[5], _e59.f1_[6], _e59.f1_[7], _e59.f1_[8], _e59.f1_[9], _e60.f0_, _e60.f1_[0], _e60.f1_[1], _e60.f1_[2], _e60.f1_[3], _e60.f1_[4], _e60.f1_[5], _e60.f1_[6], _e60.f1_[7], _e60.f1_[8], _e60.f1_[9], fe_trapped_12);
    let _e86 = zero(fe_trapped_12);
    let _e111 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e85.f0_, _e85.f1_[0], _e85.f1_[1], _e85.f1_[2], _e85.f1_[3], _e85.f1_[4], _e85.f1_[5], _e85.f1_[6], _e85.f1_[7], _e85.f1_[8], _e85.f1_[9], _e86.f0_, _e86.f1_[0], _e86.f1_[1], _e86.f1_[2], _e86.f1_[3], _e86.f1_[4], _e86.f1_[5], _e86.f1_[6], _e86.f1_[7], _e86.f1_[8], _e86.f1_[9], fe_trapped_12);
    return _e111;
}

fn neg(a0_12: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_12.f0_ == false), a0_12.f1_);
}

fn sub(a0_13: FeLocal_fe_shader_private_layout_0_, a1_3: FeLocal_fe_shader_private_layout_0_, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = neg(a1_3);
    let _e28 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_13.f0_, a0_13.f1_[0], a0_13.f1_[1], a0_13.f1_[2], a0_13.f1_[3], a0_13.f1_[4], a0_13.f1_[5], a0_13.f1_[6], a0_13.f1_[7], a0_13.f1_[8], a0_13.f1_[9], _e3.f0_, _e3.f1_[0], _e3.f1_[1], _e3.f1_[2], _e3.f1_[3], _e3.f1_[4], _e3.f1_[5], _e3.f1_[6], _e3.f1_[7], _e3.f1_[8], _e3.f1_[9], fe_trapped_13);
    return _e28;
}

fn limb_highest_bit(a0_14: u32) -> u32 {
    var local_28: u32;
    var local_29: bool = false;
    var local_30: u32 = u32();

    if ((a0_14 < 4096u) == false) {
        local_30 = 12u;
    } else {
        if ((a0_14 < 2048u) == false) {
            local_30 = 11u;
        } else {
            if ((a0_14 < 1024u) == false) {
                local_30 = 10u;
            } else {
                if ((a0_14 < 512u) == false) {
                    local_30 = 9u;
                } else {
                    if ((a0_14 < 256u) == false) {
                        local_30 = 8u;
                    } else {
                        if ((a0_14 < 128u) == false) {
                            local_30 = 7u;
                        } else {
                            if ((a0_14 < 64u) == false) {
                                local_30 = 6u;
                            } else {
                                if ((a0_14 < 32u) == false) {
                                    local_30 = 5u;
                                } else {
                                    if ((a0_14 < 16u) == false) {
                                        local_30 = 4u;
                                    } else {
                                        if ((a0_14 < 8u) == false) {
                                            local_30 = 3u;
                                        } else {
                                            if ((a0_14 < 4u) == false) {
                                                local_30 = 2u;
                                            } else {
                                                if ((a0_14 < 2u) == false) {
                                                    local_30 = 1u;
                                                } else {
                                                    if (a0_14 == 1u) {
                                                    } else {
                                                        local_30 = 4294967295u;
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
    let _e80 = local_30;
    return _e80;
}

fn highest_bit(a0_15: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_31: u32 = u32();
    var local_32: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_4_: bool;
    var local_33: u32;
    var local_34: bool = false;
    var local_35: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_14);
    local_31 = 0u;
    local_32 = _e2;
    loop {
        let _e10 = local_31;
        let _e12 = local_32;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_15).f1_[_e18];
                local_31 = _e21;
                local_32 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_31;
    let _e28 = local_32;
    if (_e26 == 0u) {
        local_35 = 4294967295u;
    } else {
        let _e33 = limb_highest_bit(_e26);
        precision_lib_array_fixed_signed_word_0e35_(_e28, fe_trapped_14);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_14) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_14) = true;
            } else {
                local_35 = _e58;
            }
        }
    }
    let _e69 = local_35;
    return _e69;
}

fn word_from(a0_16: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_4: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_36: u32;
    var local_37: bool = false;
    var local_38: u32;
    var local_39: bool = false;
    var local_40: u32 = u32();
    var local_41: u32 = u32();
    var local_42: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_34_: bool;

    if (bitcast<i32>(a1_4) < bitcast<i32>(0u)) {
        local_36 = 0u;
        local_37 = true;
    }
    let _e77 = local_37;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_4, fe_trapped_15);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_15);
        let _e15 = (a1_4 / 13u);
        if ((_e15 < _e13) == false) {
            local_38 = 0u;
            local_39 = true;
        }
        let _e72 = local_39;
        if _e72 {
        } else {
            let _e24 = (a1_4 % 13u);
            let _e27 = (*a0_16).f1_[_e15];
            local_40 = (13u - _e24);
            local_41 = (_e27 >> _e24);
            local_42 = (_e15 + 1u);
            loop {
                let _e41 = local_40;
                let _e43 = local_41;
                let _e45 = local_42;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_ = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_16).f1_[_e45];
                        local_40 = (_e41 + 13u);
                        local_41 = (_e43 | (_e51 << _e41));
                        local_42 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_5 = _e43;
                        loop_did_return_5 = true;
                        break;
                    }
                } else {
                    loop_result_5 = _e43;
                    loop_did_return_5 = true;
                    break;
                }
            }
            let _e69 = loop_result_5;
            local_38 = _e69;
        }
        let _e74 = local_38;
        local_36 = _e74;
    }
    let _e79 = local_36;
    return _e79;
}

fn bit_at(a0_17: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_5: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_43: u32;
    var local_44: bool = false;
    var local_45: u32;
    var local_46: bool = false;

    if (bitcast<i32>(a1_5) < bitcast<i32>(0u)) {
        local_43 = 0u;
        local_44 = true;
    }
    let _e38 = local_44;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_5, fe_trapped_16);
        let _e14 = (a1_5 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
        if ((_e14 < _e15) == false) {
            local_45 = 0u;
            local_46 = true;
        }
        let _e33 = local_46;
        if _e33 {
        } else {
            let _e25 = (*a0_17).f1_[_e14];
            local_45 = ((_e25 >> (a1_5 % 13u)) & 1u);
        }
        let _e35 = local_45;
        local_43 = _e35;
    }
    let _e40 = local_43;
    return _e40;
}

fn any_below(a0_18: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_6: u32, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_47: u32;
    var local_48: bool = false;
    var local_49: u32 = u32();
    var local_50: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_15_: bool;
    var local_51: u32;
    var local_52: bool = false;
    var local_53: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_6)) == false) {
        local_47 = 0u;
        local_48 = true;
    }
    let _e65 = local_48;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_6, fe_trapped_17);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_17);
        local_49 = 0u;
        local_50 = 0u;
        loop {
            let _e25 = local_49;
            let _e27 = local_50;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_6 / 13u)) {
                    let _e32 = (*a0_18).f1_[_e27];
                    local_49 = (_e25 | _e32);
                    local_50 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_49;
        let _e42 = local_50;
        if (_e42 < _e16) {
            let _e50 = (*a0_18).f1_[_e42];
            let _e52 = (1u << (a1_6 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_17) = true;
            } else {
                local_53 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_53 = _e40;
        }
        let _e62 = local_53;
        local_47 = _e62;
    }
    let _e67 = local_47;
    return _e67;
}

fn project_binary32_(a0_19: u32, a1_7: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_54: u32;
    var local_55: bool = false;
    var local_56: u32 = u32();
    var local_57: u32 = u32();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();

    let _e5 = highest_bit(a1_7, fe_trapped_18);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_7, fe_trapped_18);
        let _e13 = (_e5 - _e10);
        if ((((_e5 ^ _e13) & (_e5 ^ _e10)) & 2147483648u) != 0u) {
            (*fe_trapped_18) = true;
        } else {
            let _e23 = (_e13 + 127u);
            if ((((_e13 ^ _e23) & (127u ^ _e23)) & 2147483648u) != 0u) {
                (*fe_trapped_18) = true;
            } else {
                let _e32 = (_e5 - 23u);
                if (bitcast<i32>(_e32) < bitcast<i32>(0u)) {
                    let _e40 = word_from(a1_7, 0u, fe_trapped_18);
                    local_57 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from(a1_7, _e32, fe_trapped_18);
                    local_57 = _e42;
                }
                let _e47 = local_57;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_7, _e49, fe_trapped_18);
                let _e51 = any_below(a1_7, _e49, fe_trapped_18);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_58 = 1u;
                    } else {
                        local_58 = (_e47 & 1u);
                    }
                }
                let _e64 = local_58;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_18) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_18) = true;
                        } else {
                            local_59 = 8388608u;
                            local_60 = _e77;
                        }
                    } else {
                        local_59 = _e66;
                        local_60 = _e23;
                    }
                    let _e90 = local_59;
                    let _e92 = local_60;
                    local_56 = (((a0_19 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_56;
    return _e103;
}

fn to_binary32_bits(a0_20: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_61: u32;
    var local_62: bool = false;
    var local_63: u32 = u32();

    let _e5 = (*a0_20).f0_;
    if _e5 {
        local_63 = 1u;
    }
    let _e9 = local_63;
    let _e10 = project_binary32_(_e9, a0_20, fe_trapped_19);
    return _e10;
}

fn to_f32_(a0_21: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_20: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_21, fe_trapped_20);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_22: FeLocal_fe_shader_private_layout_5_, a1_8: FeLocal_fe_shader_private_layout_5_, fe_trapped_21: ptr<function, bool>) -> f32 {
    var fixed_local_7_1: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    let _e3 = from_expansion(a1_8, fe_trapped_21);
    let _e4 = from_expansion(a0_22, fe_trapped_21);
    let _e5 = sub(_e3, _e4, fe_trapped_21);
    fixed_local_7_1 = _e5;
    let _e8 = to_f32_((&fixed_local_7_1), fe_trapped_21);
    return _e8;
}

fn center_delta(a0_23: FeLocal_fe_shader_private_layout_6_, a1_9: FeLocal_fe_shader_private_layout_6_, fe_trapped_22: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = expansion_difference(a0_23.f0_, a1_9.f0_, fe_trapped_22);
    let _e8 = expansion_difference(a0_23.f1_, a1_9.f1_, fe_trapped_22);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e8);
}

fn delta_from(a0_24: FeLocal_fe_shader_private_layout_11_, a1_10: ptr<function, FeLocal_fe_shader_private_layout_18_>, fe_trapped_23: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = (*a1_10).f0_;
    let _e6 = center_value(_e5);
    let _e7 = center_delta(a0_24.f0_, _e6, fe_trapped_23);
    return _e7;
}

fn iteration_limit(a0_25: f32, fe_trapped_24: ptr<function, bool>) -> u32 {
    var local_64: u32 = u32();
    var local_65: f32 = f32();
    var local_66: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_5_1: bool;
    var local_67: u32 = u32();
    var local_68: f32 = f32();
    var local_69: u32;
    var local_70: bool = false;
    var local_71: u32 = u32();

    local_64 = 0u;
    local_65 = a0_25;
    local_66 = 0u;
    loop {
        let _e12 = local_64;
        let _e14 = local_65;
        let _e16 = local_66;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_1 = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_24) = true;
                    break;
                } else {
                    local_67 = (_e12 + 1u);
                    local_68 = (_e14 * 2f);
                }
            } else {
                local_67 = _e12;
                local_68 = _e14;
            }
            let _e36 = local_67;
            let _e38 = local_68;
            local_64 = _e36;
            local_65 = _e38;
            local_66 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_64;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_24) = true;
        }
        if (8192u < _e60) {
            local_71 = 8192u;
        } else {
            local_71 = _e60;
        }
        let _e71 = local_71;
        local_69 = _e71;
        local_70 = true;
    }
    let _e77 = local_70;
    if _e77 {
    } else {
        (*fe_trapped_24) = true;
    }
    let _e79 = local_69;
    return _e79;
}

fn cancel_pending(a0_26: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    var fixed_local_2_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    fixed_local_2_ = a0_26;
    fixed_local_2_.f2_ = 0u;
    fixed_local_2_.f3_ = 0u;
    fixed_local_2_.f4_ = 0u;
    fixed_local_2_.f5_ = 0u;
    let _e11 = fixed_local_2_;
    return _e11;
}

fn impl_trait_f32_abs(a0_27: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_27) & 2147483647u));
}

fn impl_trait_f32_max(a0_28: f32, a1_11: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_28);
    let _e3 = bitcast<u32>(a1_11);
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
    var fixed_local_382_: FeLocal_fe_shader_private_layout_18_ = FeLocal_fe_shader_private_layout_18_();

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
    let _e40 = params.p32_;
    let _e42 = params.p33_;
    let _e44 = params.p34_;
    let _e46 = params.p35_;
    let _e50 = params.p36_;
    let _e52 = params.p37_;
    let _e54 = params.p38_;
    let _e56 = params.p39_;
    let _e60 = params.p40_;
    let _e62 = params.p41_;
    let _e64 = params.p42_;
    let _e66 = params.p43_;
    let _e70 = params.p44_;
    let _e72 = params.p45_;
    let _e74 = params.p46_;
    let _e76 = params.p47_;
    let _e80 = params.p48_;
    let _e82 = params.p49_;
    let _e84 = params.p50_;
    let _e86 = params.p51_;
    let _e90 = params.p52_;
    let _e92 = params.p53_;
    let _e94 = params.p54_;
    let _e96 = params.p55_;
    let _e100 = params.p56_;
    let _e102 = params.p57_;
    let _e104 = params.p58_;
    let _e106 = params.p59_;
    let _e110 = params.p60_;
    let _e112 = params.p61_;
    let _e114 = params.p62_;
    let _e116 = params.p63_;
    let _e120 = params.p64_;
    let _e122 = params.p65_;
    let _e124 = params.p66_;
    let _e126 = params.p67_;
    let _e130 = params.p68_;
    let _e132 = params.p69_;
    let _e134 = params.p70_;
    let _e136 = params.p71_;
    let _e138 = params.p72_;
    let _e140 = params.p73_;
    let _e142 = params.p74_;
    let _e144 = params.p75_;
    let _e148 = params.p76_;
    let _e194 = reference[i32(0u)].active_;
    let _e196 = reference[i32(0u)].active_valid;
    let _e198 = reference[i32(0u)].pending;
    let _e200 = reference[i32(0u)].index;
    let _e202 = reference[i32(0u)].zx_s;
    let _e204 = reference[i32(0u)].zy_s;
    let _e206 = reference[i32(0u)].ready_at;
    let _e207 = FeLocal_fe_shader_private_layout_1_(_e194, _e196, _e198, _e200, _e202, _e204, _e206);
    if (_e198 == 0u) {
        local_1 = true;
    }
    let _e303 = local_1;
    if _e303 {
    } else {
        if (_e194 == 0u) {
            local_4 = 1u;
        }
        let _e220 = local_4;
        let _e224 = anchor[i32(_e220)].center_u002e_re_u002e_lead;
        let _e226 = anchor[i32(_e220)].center_u002e_re_u002e_tail_u002e_lead;
        let _e228 = anchor[i32(_e220)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead;
        let _e230 = anchor[i32(_e220)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e232 = anchor[i32(_e220)].center_u002e_im_u002e_lead;
        let _e234 = anchor[i32(_e220)].center_u002e_im_u002e_tail_u002e_lead;
        let _e236 = anchor[i32(_e220)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead;
        let _e238 = anchor[i32(_e220)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e240 = anchor[i32(_e220)].limit;
        let _e242 = anchor[i32(_e220)].generation;
        fixed_local_382_ = FeLocal_fe_shader_private_layout_18_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_5_(_e6, FeLocal_fe_shader_private_layout_4_(_e8, FeLocal_fe_shader_private_layout_3_(_e10, FeLocal_fe_shader_private_layout_2_(_e12))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_5_(_e14, FeLocal_fe_shader_private_layout_4_(_e16, FeLocal_fe_shader_private_layout_3_(_e18, FeLocal_fe_shader_private_layout_2_(_e20)))))), _e22, _e24), _e26, _e28, _e30, _e32, _e34, FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_14_(array<FeLocal_fe_shader_private_layout_13_, 10>(FeLocal_fe_shader_private_layout_13_((_e36 != 0u), _e40, FeLocal_fe_shader_private_layout_12_(_e42, _e44)), FeLocal_fe_shader_private_layout_13_((_e46 != 0u), _e50, FeLocal_fe_shader_private_layout_12_(_e52, _e54)), FeLocal_fe_shader_private_layout_13_((_e56 != 0u), _e60, FeLocal_fe_shader_private_layout_12_(_e62, _e64)), FeLocal_fe_shader_private_layout_13_((_e66 != 0u), _e70, FeLocal_fe_shader_private_layout_12_(_e72, _e74)), FeLocal_fe_shader_private_layout_13_((_e76 != 0u), _e80, FeLocal_fe_shader_private_layout_12_(_e82, _e84)), FeLocal_fe_shader_private_layout_13_((_e86 != 0u), _e90, FeLocal_fe_shader_private_layout_12_(_e92, _e94)), FeLocal_fe_shader_private_layout_13_((_e96 != 0u), _e100, FeLocal_fe_shader_private_layout_12_(_e102, _e104)), FeLocal_fe_shader_private_layout_13_((_e106 != 0u), _e110, FeLocal_fe_shader_private_layout_12_(_e112, _e114)), FeLocal_fe_shader_private_layout_13_((_e116 != 0u), _e120, FeLocal_fe_shader_private_layout_12_(_e122, _e124)), FeLocal_fe_shader_private_layout_13_((_e126 != 0u), _e130, FeLocal_fe_shader_private_layout_12_(_e132, _e134)))), FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_12_(_e136, _e138), FeLocal_fe_shader_private_layout_12_(_e140, _e142))), FeLocal_fe_shader_private_layout_17_((_e144 != 0u), _e148));
        let _e255 = delta_from(FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_6_(FeLocal_fe_shader_private_layout_5_(_e224, FeLocal_fe_shader_private_layout_4_(_e226, FeLocal_fe_shader_private_layout_3_(_e228, FeLocal_fe_shader_private_layout_2_(_e230)))), FeLocal_fe_shader_private_layout_5_(_e232, FeLocal_fe_shader_private_layout_4_(_e234, FeLocal_fe_shader_private_layout_3_(_e236, FeLocal_fe_shader_private_layout_2_(_e238))))), _e240, _e242), (&fixed_local_382_), (&fe_trapped));
        let _e256 = iteration_limit(_e22, (&fe_trapped));
        if (_e240 < _e256) {
            let _e258 = cancel_pending(_e207);
            reference[i32(0u)].active_ = _e258.f0_;
            reference[i32(0u)].active_valid = _e258.f1_;
            reference[i32(0u)].pending = _e258.f2_;
            reference[i32(0u)].index = _e258.f3_;
            reference[i32(0u)].zx_s = _e258.f4_;
            reference[i32(0u)].zy_s = _e258.f5_;
            reference[i32(0u)].ready_at = _e258.f6_;
        } else {
            let _e277 = impl_trait_f32_abs(_e255.f0_);
            let _e279 = impl_trait_f32_abs(_e255.f1_);
            let _e280 = impl_trait_f32_max(_e277, _e279);
            if ((_e22 * 0.5f) < _e280) {
                let _e284 = cancel_pending(_e207);
                reference[i32(0u)].active_ = _e284.f0_;
                reference[i32(0u)].active_valid = _e284.f1_;
                reference[i32(0u)].pending = _e284.f2_;
                reference[i32(0u)].index = _e284.f3_;
                reference[i32(0u)].zx_s = _e284.f4_;
                reference[i32(0u)].zy_s = _e284.f5_;
                reference[i32(0u)].ready_at = _e284.f6_;
            }
        }
    }
    let _e305 = fe_trapped;
    trap[0u] = u32(_e305);
}
