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

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_20_ {
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

struct FeLocal_fe_CameraTrace_7ca62f00_18_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_19_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_16_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_17_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_18_,
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
    p33_: f32,
    p34_: u32,
    p35_: u32,
    p36_: f32,
    p37_: f32,
    p38_: u32,
    p39_: u32,
    p40_: f32,
    p41_: f32,
    p42_: f32,
    p43_: f32,
    p44_: f32,
    p45_: f32,
    p46_: u32,
    p47_: u32,
    p48_: f32,
    p49_: f32,
    p50_: u32,
    p51_: u32,
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
    p65_: f32,
    p66_: u32,
    p67_: f32,
    p68_: u32,
    p69_: u32,
    p70_: u32,
    p71_: u32,
    p72_: u32,
    p73_: u32,
    p74_: u32,
    p75_: u32,
    p76_: u32,
    p77_: u32,
    p78_: u32,
    p79_: u32,
    p80_: u32,
    p81_: u32,
    p82_: u32,
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

fn to_quad(a0_1: FeLocal_fe_More_More_More_Last_e6310ae8_5_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_20_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_20_(a0_1.lead, a0_1.tail.lead, a0_1.tail.tail.lead, a0_1.tail.tail.tail.value);
}

fn std_lib_evm_effects_assert_82af(a0_2: bool, fe_trapped_1: ptr<function, bool>) {
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
    std_lib_evm_effects_assert_82af(true, fe_trapped_2);
    return 10u;
}

fn zero(fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_3);
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
}

fn clear_digits(a0_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_4: ptr<function, bool>) {
    var local_9: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_4);
    local_9 = 0u;
    loop {
        let _e8 = local_9;
        let _e9 = (_e8 < _e2);
        loop_header_carry_5_ = _e9;
        if _e9 {
            (*a0_3).digits[_e8] = 0u;
            local_9 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_signed_word_0e35_(a0_4: u32, fe_trapped_5: ptr<function, bool>) {
    std_lib_evm_effects_assert_82af(((2147483647u < a0_4) == false), fe_trapped_5);
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_10: u32;
    var local_11: bool = false;

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
        local_10 = (_e4 * 13u);
        local_11 = true;
    }
    let _e31 = local_10;
    return _e31;
}

fn precision_lib_array_fixed_unsigned_word_42a2_(a0_6: u32, fe_trapped_7: ptr<function, bool>) {
    std_lib_evm_effects_assert_82af(((bitcast<i32>(a0_6) < bitcast<i32>(0u)) == false), fe_trapped_7);
    return;
}

fn load_significand(a0_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_: u32, a2_: u32, fe_trapped_8: ptr<function, bool>) {
    var local_12: u32 = u32();
    var local_13: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_8_: bool;
    var local_14: u32 = u32();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_8);
    local_12 = a2_;
    local_13 = 0u;
    loop {
        let _e12 = local_12;
        let _e14 = local_13;
        let _e15 = (_e14 < _e4);
        loop_header_carry_8_ = _e15;
        if _e15 {
            if ((bitcast<i32>(_e12) < bitcast<i32>(24u)) == false) {
                local_14 = 0u;
            } else {
                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e12)) == false) {
                    local_14 = 0u;
                } else {
                    if ((bitcast<i32>(_e12) < bitcast<i32>(0u)) == false) {
                        precision_lib_array_fixed_unsigned_word_42a2_(_e12, fe_trapped_8);
                        local_14 = ((a1_ >> _e12) & 8191u);
                    } else {
                        let _e39 = (0u - _e12);
                        precision_lib_array_fixed_unsigned_word_42a2_(_e39, fe_trapped_8);
                        local_14 = ((a1_ << _e39) & 8191u);
                    }
                }
            }
            let _e50 = local_14;
            (*a0_7).digits[_e14] = _e50;
            let _e56 = (_e12 + 13u);
            if ((((_e12 ^ _e56) & (13u ^ _e56)) & 2147483648u) != 0u) {
                (*fe_trapped_8) = true;
                break;
            }
            local_12 = _e56;
            local_13 = (_e14 + 1u);
            continue;
        } else {
            loop_did_return_1 = true;
            break;
        }
    }
    return;
}

fn assign_binary32_bits(a0_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_1: u32, fe_trapped_9: ptr<function, bool>) {
    var local_15: u32;
    var local_16: bool = false;
    var local_17: bool = bool();
    var local_18: u32;
    var local_19: bool = false;

    let _e6 = (a1_1 & 2147483647u);
    std_lib_evm_effects_assert_82af((_e6 < 1174405120u), fe_trapped_9);
    if (((a1_1 >> 31u) == 0u) == false) {
        if ((_e6 == 0u) == false) {
            local_17 = true;
        }
    }
    let _e23 = local_17;
    (*a0_8).negative = _e23;
    let _e26 = (_e6 >> 23u);
    if (_e26 == 0u) {
        clear_digits(a0_8, fe_trapped_9);
        local_19 = true;
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
                local_19 = true;
            }
            let _e66 = local_19;
            if _e66 {
            }
        }
        let _e69 = local_19;
        if _e69 {
        } else {
            (*fe_trapped_9) = true;
        }
    }
    return;
}

fn add_magnitudes(a0_9: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_1: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_10: ptr<function, bool>) {
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
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
            let _e19 = (*a1_2).digits[_e15];
            let _e22 = (*a2_1).digits[_e15];
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
            loop_did_return_2 = true;
            break;
        }
    }
    return;
}

fn magnitude_less(a0_10: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_11: ptr<function, bool>) -> bool {
    var local_22: u32 = u32();
    var loop_result_3: bool;
    var loop_did_return_3: bool = false;
    var loop_header_carry_5_1: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_11);
    local_22 = _e3;
    loop {
        let _e8 = local_22;
        let _e10 = (0u < _e8);
        loop_header_carry_5_1 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_10).digits[_e12];
            let _e18 = (*a1_3).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_22 = _e12;
                continue;
            }
            let _e25 = (*a0_10).digits[_e12];
            let _e28 = (*a1_3).digits[_e12];
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

fn subtract_magnitudes(a0_11: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_4: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a3_: bool, fe_trapped_12: ptr<function, bool>) {
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
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
            if a3_ {
                let _e21 = (*a2_2).digits[_e16];
                local_25 = _e21;
            } else {
                let _e24 = (*a1_4).digits[_e16];
                local_25 = _e24;
            }
            let _e29 = local_25;
            if a3_ {
                let _e32 = (*a1_4).digits[_e16];
                local_26 = _e32;
            } else {
                let _e35 = (*a2_2).digits[_e16];
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
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn assign_sum(a0_12: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_13: ptr<function, bool>) {
    var local_27: u32;
    var local_28: bool = false;
    var local_29: bool = bool();

    let _e6 = (*a1_5).negative;
    (*a0_12).negative = _e6;
    let _e9 = (*a1_5).negative;
    let _e11 = (*a2_3).negative;
    if (_e9 == _e11) {
        add_magnitudes(a0_12, a1_5, a2_3, fe_trapped_13);
    } else {
        let _e14 = magnitude_less(a1_5, a2_3, fe_trapped_13);
        if _e14 {
            let _e16 = (*a2_3).negative;
            local_29 = _e16;
        } else {
            let _e18 = (*a1_5).negative;
            local_29 = _e18;
        }
        let _e22 = local_29;
        (*a0_12).negative = _e22;
        subtract_magnitudes(a0_12, a1_5, a2_3, _e14, fe_trapped_13);
    }
    return;
}

fn assign_quad(a0_13: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_6: f32, a2_4: f32, a3_1: f32, a4_: f32, fe_trapped_14: ptr<function, bool>) {
    var fixed_local_6_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_8_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_10_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e6 = zero(fe_trapped_14);
    fixed_local_6_ = _e6;
    let _e9 = zero(fe_trapped_14);
    fixed_local_8_ = _e9;
    let _e12 = zero(fe_trapped_14);
    fixed_local_10_ = _e12;
    assign_binary32_bits((&fixed_local_6_), bitcast<u32>(a1_6), fe_trapped_14);
    assign_binary32_bits((&fixed_local_8_), bitcast<u32>(a2_4), fe_trapped_14);
    assign_sum((&fixed_local_10_), (&fixed_local_6_), (&fixed_local_8_), fe_trapped_14);
    assign_binary32_bits((&fixed_local_8_), bitcast<u32>(a3_1), fe_trapped_14);
    assign_sum((&fixed_local_6_), (&fixed_local_10_), (&fixed_local_8_), fe_trapped_14);
    assign_binary32_bits((&fixed_local_8_), bitcast<u32>(a4_), fe_trapped_14);
    assign_sum((&fixed_local_10_), (&fixed_local_6_), (&fixed_local_8_), fe_trapped_14);
    let _e19 = zero(fe_trapped_14);
    fixed_local_6_ = _e19;
    assign_sum(a0_13, (&fixed_local_10_), (&fixed_local_6_), fe_trapped_14);
    return;
}

fn copy_digits(a0_14: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_15: ptr<function, bool>) {
    var local_30: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_6_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_15);
    local_30 = 0u;
    loop {
        let _e9 = local_30;
        let _e10 = (_e9 < _e3);
        loop_header_carry_6_ = _e10;
        if _e10 {
            let _e13 = (*a1_7).digits[_e9];
            (*a0_14).digits[_e9] = _e13;
            local_30 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_5 = true;
            break;
        }
    }
    return;
}

fn assign_negated(a0_15: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_16: ptr<function, bool>) {
    let _e4 = (*a1_8).negative;
    (*a0_15).negative = (_e4 == false);
    copy_digits(a0_15, a1_8, fe_trapped_16);
    return;
}

fn limb_highest_bit(a0_16: u32) -> u32 {
    var local_31: u32;
    var local_32: bool = false;
    var local_33: u32 = u32();

    if ((a0_16 < 4096u) == false) {
        local_33 = 12u;
    } else {
        if ((a0_16 < 2048u) == false) {
            local_33 = 11u;
        } else {
            if ((a0_16 < 1024u) == false) {
                local_33 = 10u;
            } else {
                if ((a0_16 < 512u) == false) {
                    local_33 = 9u;
                } else {
                    if ((a0_16 < 256u) == false) {
                        local_33 = 8u;
                    } else {
                        if ((a0_16 < 128u) == false) {
                            local_33 = 7u;
                        } else {
                            if ((a0_16 < 64u) == false) {
                                local_33 = 6u;
                            } else {
                                if ((a0_16 < 32u) == false) {
                                    local_33 = 5u;
                                } else {
                                    if ((a0_16 < 16u) == false) {
                                        local_33 = 4u;
                                    } else {
                                        if ((a0_16 < 8u) == false) {
                                            local_33 = 3u;
                                        } else {
                                            if ((a0_16 < 4u) == false) {
                                                local_33 = 2u;
                                            } else {
                                                if ((a0_16 < 2u) == false) {
                                                    local_33 = 1u;
                                                } else {
                                                    if (a0_16 == 1u) {
                                                    } else {
                                                        local_33 = 4294967295u;
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
    let _e80 = local_33;
    return _e80;
}

fn highest_bit(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_34: u32 = u32();
    var local_35: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_4_: bool;
    var local_36: u32;
    var local_37: bool = false;
    var local_38: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_17);
    local_34 = 0u;
    local_35 = _e2;
    loop {
        let _e10 = local_34;
        let _e12 = local_35;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_17).digits[_e18];
                local_34 = _e21;
                local_35 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_34;
    let _e28 = local_35;
    if (_e26 == 0u) {
        local_38 = 4294967295u;
    } else {
        let _e33 = limb_highest_bit(_e26);
        precision_lib_array_fixed_signed_word_0e35_(_e28, fe_trapped_17);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_17) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_17) = true;
            } else {
                local_38 = _e58;
            }
        }
    }
    let _e69 = local_38;
    return _e69;
}

fn word_from(a0_18: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_9: u32, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_39: u32;
    var local_40: bool = false;
    var local_41: u32;
    var local_42: bool = false;
    var local_43: u32 = u32();
    var local_44: u32 = u32();
    var local_45: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_34_: bool;

    if (bitcast<i32>(a1_9) < bitcast<i32>(0u)) {
        local_39 = 0u;
        local_40 = true;
    }
    let _e77 = local_40;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_9, fe_trapped_18);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_18);
        let _e15 = (a1_9 / 13u);
        if ((_e15 < _e13) == false) {
            local_41 = 0u;
            local_42 = true;
        }
        let _e72 = local_42;
        if _e72 {
        } else {
            let _e24 = (a1_9 % 13u);
            let _e27 = (*a0_18).digits[_e15];
            local_43 = (13u - _e24);
            local_44 = (_e27 >> _e24);
            local_45 = (_e15 + 1u);
            loop {
                let _e41 = local_43;
                let _e43 = local_44;
                let _e45 = local_45;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_ = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_18).digits[_e45];
                        local_43 = (_e41 + 13u);
                        local_44 = (_e43 | (_e51 << _e41));
                        local_45 = (_e45 + 1u);
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
            local_41 = _e69;
        }
        let _e74 = local_41;
        local_39 = _e74;
    }
    let _e79 = local_39;
    return _e79;
}

fn bit_at(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_10: u32, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_46: u32;
    var local_47: bool = false;
    var local_48: u32;
    var local_49: bool = false;

    if (bitcast<i32>(a1_10) < bitcast<i32>(0u)) {
        local_46 = 0u;
        local_47 = true;
    }
    let _e38 = local_47;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_10, fe_trapped_19);
        let _e14 = (a1_10 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_19);
        if ((_e14 < _e15) == false) {
            local_48 = 0u;
            local_49 = true;
        }
        let _e33 = local_49;
        if _e33 {
        } else {
            let _e25 = (*a0_19).digits[_e14];
            local_48 = ((_e25 >> (a1_10 % 13u)) & 1u);
        }
        let _e35 = local_48;
        local_46 = _e35;
    }
    let _e40 = local_46;
    return _e40;
}

fn any_below(a0_20: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_11: u32, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_50: u32;
    var local_51: bool = false;
    var local_52: u32 = u32();
    var local_53: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_15_: bool;
    var local_54: u32;
    var local_55: bool = false;
    var local_56: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_11)) == false) {
        local_50 = 0u;
        local_51 = true;
    }
    let _e65 = local_51;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_42a2_(a1_11, fe_trapped_20);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_20);
        local_52 = 0u;
        local_53 = 0u;
        loop {
            let _e25 = local_52;
            let _e27 = local_53;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_11 / 13u)) {
                    let _e32 = (*a0_20).digits[_e27];
                    local_52 = (_e25 | _e32);
                    local_53 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_52;
        let _e42 = local_53;
        if (_e42 < _e16) {
            let _e50 = (*a0_20).digits[_e42];
            let _e52 = (1u << (a1_11 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_20) = true;
            } else {
                local_56 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_56 = _e40;
        }
        let _e62 = local_56;
        local_50 = _e62;
    }
    let _e67 = local_50;
    return _e67;
}

fn project_binary32_(a0_21: u32, a1_12: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_21: ptr<function, bool>) -> u32 {
    var local_57: u32;
    var local_58: bool = false;
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();
    var local_63: u32 = u32();

    let _e5 = highest_bit(a1_12, fe_trapped_21);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_12, fe_trapped_21);
        let _e13 = (_e5 - _e10);
        if ((((_e5 ^ _e13) & (_e5 ^ _e10)) & 2147483648u) != 0u) {
            (*fe_trapped_21) = true;
        } else {
            let _e23 = (_e13 + 127u);
            if ((((_e13 ^ _e23) & (127u ^ _e23)) & 2147483648u) != 0u) {
                (*fe_trapped_21) = true;
            } else {
                let _e32 = (_e5 - 23u);
                if (bitcast<i32>(_e32) < bitcast<i32>(0u)) {
                    let _e40 = word_from(a1_12, 0u, fe_trapped_21);
                    local_60 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from(a1_12, _e32, fe_trapped_21);
                    local_60 = _e42;
                }
                let _e47 = local_60;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_12, _e49, fe_trapped_21);
                let _e51 = any_below(a1_12, _e49, fe_trapped_21);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_61 = 1u;
                    } else {
                        local_61 = (_e47 & 1u);
                    }
                }
                let _e64 = local_61;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_21) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_21) = true;
                        } else {
                            local_62 = 8388608u;
                            local_63 = _e77;
                        }
                    } else {
                        local_62 = _e66;
                        local_63 = _e23;
                    }
                    let _e90 = local_62;
                    let _e92 = local_63;
                    local_59 = (((a0_21 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_59;
    return _e103;
}

fn to_binary32_bits(a0_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_22: ptr<function, bool>) -> u32 {
    var local_64: u32;
    var local_65: bool = false;
    var local_66: u32 = u32();

    let _e5 = (*a0_22).negative;
    if _e5 {
        local_66 = 1u;
    }
    let _e9 = local_66;
    let _e10 = project_binary32_(_e9, a0_22, fe_trapped_22);
    return _e10;
}

fn to_f32_(a0_23: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_23: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_23, fe_trapped_23);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_24: FeLocal_fe_More_More_More_Last_e6310ae8_5_, a1_13: FeLocal_fe_More_More_More_Last_e6310ae8_5_, fe_trapped_24: ptr<function, bool>) -> f32 {
    var fixed_local_43_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_47_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e3 = to_quad(a0_24);
    let _e8 = to_quad(a1_13);
    let _e13 = zero(fe_trapped_24);
    fixed_local_43_ = _e13;
    assign_quad((&fixed_local_43_), _e3.f0_, _e3.f1_, _e3.f2_, _e3.f3_, fe_trapped_24);
    let _e16 = zero(fe_trapped_24);
    fixed_local_45_ = _e16;
    assign_quad((&fixed_local_45_), _e8.f0_, _e8.f1_, _e8.f2_, _e8.f3_, fe_trapped_24);
    let _e19 = zero(fe_trapped_24);
    fixed_local_47_ = _e19;
    assign_negated((&fixed_local_47_), (&fixed_local_43_), fe_trapped_24);
    let _e22 = zero(fe_trapped_24);
    fixed_local_43_ = _e22;
    assign_sum((&fixed_local_43_), (&fixed_local_45_), (&fixed_local_47_), fe_trapped_24);
    let _e23 = to_f32_((&fixed_local_43_), fe_trapped_24);
    return _e23;
}

fn center_delta(a0_25: FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_, a1_14: FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_, fe_trapped_25: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_7_ {
    let _e5 = expansion_difference(a0_25.re, a1_14.re, fe_trapped_25);
    let _e8 = expansion_difference(a0_25.im, a1_14.im, fe_trapped_25);
    return FeLocal_fe_Complex_f32_87ec9249_7_(_e5, _e8);
}

fn delta_from(a0_26: FeLocal_fe_ReferenceAnchor_f9cfd0aa_11_, a1_15: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, fe_trapped_26: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_7_ {
    let _e5 = (*a1_15).camera;
    let _e6 = center_value(_e5);
    let _e7 = center_delta(a0_26.center, _e6, fe_trapped_26);
    return _e7;
}

fn iteration_limit(a0_27: f32, fe_trapped_27: ptr<function, bool>) -> u32 {
    var local_67: u32 = u32();
    var local_68: f32 = f32();
    var local_69: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_5_2: bool;
    var local_70: u32 = u32();
    var local_71: f32 = f32();
    var local_72: u32;
    var local_73: bool = false;
    var local_74: u32 = u32();

    local_67 = 0u;
    local_68 = a0_27;
    local_69 = 0u;
    loop {
        let _e12 = local_67;
        let _e14 = local_68;
        let _e16 = local_69;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_2 = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_27) = true;
                    break;
                } else {
                    local_70 = (_e12 + 1u);
                    local_71 = (_e14 * 2f);
                }
            } else {
                local_70 = _e12;
                local_71 = _e14;
            }
            let _e36 = local_70;
            let _e38 = local_71;
            local_67 = _e36;
            local_68 = _e38;
            local_69 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_67;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_27) = true;
        }
        if (8192u < _e60) {
            local_74 = 8192u;
        } else {
            local_74 = _e60;
        }
        let _e71 = local_74;
        local_72 = _e71;
        local_73 = true;
    }
    let _e77 = local_73;
    if _e77 {
    } else {
        (*fe_trapped_27) = true;
    }
    let _e79 = local_72;
    return _e79;
}

fn cancel_pending(a0_28: FeLocal_fe_ReferenceControl_7d077120_1_) -> FeLocal_fe_ReferenceControl_7d077120_1_ {
    var fixed_local_2_: FeLocal_fe_ReferenceControl_7d077120_1_ = FeLocal_fe_ReferenceControl_7d077120_1_();

    fixed_local_2_ = a0_28;
    fixed_local_2_.pending = 0u;
    fixed_local_2_.index = 0u;
    fixed_local_2_.zx_s = 0u;
    fixed_local_2_.zy_s = 0u;
    let _e11 = fixed_local_2_;
    return _e11;
}

fn impl_trait_f32_abs(a0_29: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_29) & 2147483647u));
}

fn impl_trait_f32_max(a0_30: f32, a1_16: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_30);
    let _e3 = bitcast<u32>(a1_16);
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
    var fixed_local_414_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();

    let _e6 = params.p17_;
    let _e8 = params.p18_;
    let _e10 = params.p19_;
    let _e12 = params.p20_;
    let _e14 = params.p21_;
    let _e16 = params.p22_;
    let _e18 = params.p23_;
    let _e20 = params.p24_;
    let _e22 = params.p25_;
    let _e24 = params.p26_;
    let _e26 = params.p27_;
    let _e28 = params.p28_;
    let _e30 = params.p29_;
    let _e32 = params.p30_;
    let _e34 = params.p31_;
    let _e36 = params.p32_;
    let _e38 = params.p33_;
    let _e40 = params.p34_;
    let _e44 = params.p35_;
    let _e46 = params.p36_;
    let _e48 = params.p37_;
    let _e50 = params.p38_;
    let _e54 = params.p39_;
    let _e56 = params.p40_;
    let _e58 = params.p41_;
    let _e60 = params.p42_;
    let _e62 = params.p43_;
    let _e64 = params.p44_;
    let _e66 = params.p45_;
    let _e68 = params.p46_;
    let _e72 = params.p47_;
    let _e74 = params.p48_;
    let _e76 = params.p49_;
    let _e78 = params.p50_;
    let _e82 = params.p51_;
    let _e84 = params.p52_;
    let _e86 = params.p53_;
    let _e88 = params.p54_;
    let _e90 = params.p55_;
    let _e92 = params.p56_;
    let _e94 = params.p57_;
    let _e96 = params.p58_;
    let _e98 = params.p59_;
    let _e100 = params.p60_;
    let _e102 = params.p61_;
    let _e104 = params.p62_;
    let _e106 = params.p63_;
    let _e108 = params.p64_;
    let _e110 = params.p65_;
    let _e112 = params.p66_;
    let _e116 = params.p67_;
    let _e118 = params.p68_;
    let _e122 = params.p69_;
    let _e124 = params.p70_;
    let _e126 = params.p71_;
    let _e128 = params.p72_;
    let _e130 = params.p73_;
    let _e132 = params.p74_;
    let _e134 = params.p75_;
    let _e136 = params.p76_;
    let _e138 = params.p77_;
    let _e140 = params.p78_;
    let _e142 = params.p79_;
    let _e144 = params.p80_;
    let _e146 = params.p81_;
    let _e148 = params.p82_;
    let _e200 = reference[i32(0u)].active_;
    let _e202 = reference[i32(0u)].active_valid;
    let _e204 = reference[i32(0u)].pending;
    let _e206 = reference[i32(0u)].index;
    let _e208 = reference[i32(0u)].zx_s;
    let _e210 = reference[i32(0u)].zy_s;
    let _e212 = reference[i32(0u)].ready_at;
    let _e213 = FeLocal_fe_ReferenceControl_7d077120_1_(_e200, _e202, _e204, _e206, _e208, _e210, _e212);
    if (_e204 == 0u) {
        local_1 = true;
    }
    let _e309 = local_1;
    if _e309 {
    } else {
        if (_e200 == 0u) {
            local_4 = 1u;
        }
        let _e226 = local_4;
        let _e230 = anchor[i32(_e226)].center_u002e_re_u002e_lead;
        let _e232 = anchor[i32(_e226)].center_u002e_re_u002e_tail_u002e_lead;
        let _e234 = anchor[i32(_e226)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead;
        let _e236 = anchor[i32(_e226)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e238 = anchor[i32(_e226)].center_u002e_im_u002e_lead;
        let _e240 = anchor[i32(_e226)].center_u002e_im_u002e_tail_u002e_lead;
        let _e242 = anchor[i32(_e226)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead;
        let _e244 = anchor[i32(_e226)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e246 = anchor[i32(_e226)].limit;
        let _e248 = anchor[i32(_e226)].generation;
        fixed_local_414_ = FeLocal_fe_MandelbrotViewState_c524184f_19_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e6, FeLocal_fe_More_More_Last_60a5ba63_4_(_e8, FeLocal_fe_More_Last_1ac585f5_3_(_e10, FeLocal_fe_Last_eb970eb0_2_(_e12))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e14, FeLocal_fe_More_More_Last_60a5ba63_4_(_e16, FeLocal_fe_More_Last_1ac585f5_3_(_e18, FeLocal_fe_Last_eb970eb0_2_(_e20)))))), _e22, _e24, FeLocal_fe_Complex_f32_87ec9249_7_(_e26, _e28)), _e30, _e32, _e34, _e36, _e38, FeLocal_fe_GestureSession_6b679731_16_(FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e40 != 0u), _e44, FeLocal_fe_Vec2_f32_2772165c_12_(_e46, _e48)), FeLocal_fe_Contact_2b5c3d26_13_((_e50 != 0u), _e54, FeLocal_fe_Vec2_f32_2772165c_12_(_e56, _e58)))), FeLocal_fe_Viewport_91e53b90_15_(FeLocal_fe_Vec2_f32_2772165c_12_(_e60, _e62), FeLocal_fe_Vec2_f32_2772165c_12_(_e64, _e66)), FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e68 != 0u), _e72, FeLocal_fe_Vec2_f32_2772165c_12_(_e74, _e76)), FeLocal_fe_Contact_2b5c3d26_13_((_e78 != 0u), _e82, FeLocal_fe_Vec2_f32_2772165c_12_(_e84, _e86)))), FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e88, FeLocal_fe_More_More_Last_60a5ba63_4_(_e90, FeLocal_fe_More_Last_1ac585f5_3_(_e92, FeLocal_fe_Last_eb970eb0_2_(_e94))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e96, FeLocal_fe_More_More_Last_60a5ba63_4_(_e98, FeLocal_fe_More_Last_1ac585f5_3_(_e100, FeLocal_fe_Last_eb970eb0_2_(_e102)))))), _e104, _e106, FeLocal_fe_Complex_f32_87ec9249_7_(_e108, _e110))), FeLocal_fe_BackingRequest_2bcae9f8_17_((_e112 != 0u), _e116), FeLocal_fe_CameraTrace_7ca62f00_18_((_e118 != 0u), array<u32, 14>(_e122, _e124, _e126, _e128, _e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148)));
        let _e261 = delta_from(FeLocal_fe_ReferenceAnchor_f9cfd0aa_11_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e230, FeLocal_fe_More_More_Last_60a5ba63_4_(_e232, FeLocal_fe_More_Last_1ac585f5_3_(_e234, FeLocal_fe_Last_eb970eb0_2_(_e236)))), FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e238, FeLocal_fe_More_More_Last_60a5ba63_4_(_e240, FeLocal_fe_More_Last_1ac585f5_3_(_e242, FeLocal_fe_Last_eb970eb0_2_(_e244))))), _e246, _e248), (&fixed_local_414_), (&fe_trapped));
        let _e262 = iteration_limit(_e22, (&fe_trapped));
        if (_e246 < _e262) {
            let _e264 = cancel_pending(_e213);
            reference[i32(0u)].active_ = _e264.active_;
            reference[i32(0u)].active_valid = _e264.active_valid;
            reference[i32(0u)].pending = _e264.pending;
            reference[i32(0u)].index = _e264.index;
            reference[i32(0u)].zx_s = _e264.zx_s;
            reference[i32(0u)].zy_s = _e264.zy_s;
            reference[i32(0u)].ready_at = _e264.ready_at;
        } else {
            let _e283 = impl_trait_f32_abs(_e261.re);
            let _e285 = impl_trait_f32_abs(_e261.im);
            let _e286 = impl_trait_f32_max(_e283, _e285);
            if ((_e22 * 0.5f) < _e286) {
                let _e290 = cancel_pending(_e213);
                reference[i32(0u)].active_ = _e290.active_;
                reference[i32(0u)].active_valid = _e290.active_valid;
                reference[i32(0u)].pending = _e290.pending;
                reference[i32(0u)].index = _e290.index;
                reference[i32(0u)].zx_s = _e290.zx_s;
                reference[i32(0u)].zy_s = _e290.zy_s;
                reference[i32(0u)].ready_at = _e290.ready_at;
            }
        }
    }
    let _e311 = fe_trapped;
    trap[0u] = u32(_e311);
}
