struct FeLocal_fe_Last_eb970eb0_4_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_5_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_4_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_6_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_5_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_7_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_6_,
}

struct FeLocal_fe_Coordinate_bdc10f09_8_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_7_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_9_ {
    re: FeLocal_fe_Coordinate_bdc10f09_8_,
    im: FeLocal_fe_Coordinate_bdc10f09_8_,
}

struct FeLocal_fe_Camera_03494b0d_10_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_9_,
    zoom: f32,
    res: f32,
}

struct FeLocal_fe_Vec2_f32_2772165c_11_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_12_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_11_,
}

struct FeLocal_fe_Contacts_10_9aa61bf4_13_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_12_, 10>,
}

struct FeLocal_fe_Viewport_91e53b90_14_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_11_,
    extent: FeLocal_fe_Vec2_f32_2772165c_11_,
}

struct FeLocal_fe_GestureSession_6b679731_15_ {
    contacts: FeLocal_fe_Contacts_10_9aa61bf4_13_,
    viewport: FeLocal_fe_Viewport_91e53b90_14_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_16_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_17_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_15_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_16_,
}

struct FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_ {
    re: FeLocal_fe_More_More_More_Last_e6310ae8_7_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_7_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_30_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_Complex_f32_87ec9249_19_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_PreviewKey_592da546_25_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    reference_generation: u32,
    reference_bank: u32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_26_ {
    full: FeLocal_fe_Complex_f32_87ec9249_19_,
    initial: FeLocal_fe_Complex_f32_87ec9249_19_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_27_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history: FeLocal_fe_HistoryOffsets_646326b2_26_,
}

struct FeLocal_fe_RefinementKey_028ab549_24_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    antialias: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_23_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_ {
    center: FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_,
    limit: u32,
    generation: u32,
}

struct FeLocal_fe_PackedReference_e11ca04a_20_ {
    re_w0_bits: u32,
    re_w1_bits: u32,
    re_w2_bits: u32,
    re_w3_bits: u32,
    im_w0_bits: u32,
    im_w1_bits: u32,
    im_w2_bits: u32,
    im_w3_bits: u32,
}

struct FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    negative: bool,
    digits: array<u32, 8>,
}

struct FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    value: FeLocal_fe_ArrayFixed_8_78307dfe_0_,
}

struct FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ {
    re: FeLocal_fe_ReferenceReal_aede3f8e_2_,
    im: FeLocal_fe_ReferenceReal_aede3f8e_2_,
}

struct FeLocal_fe_ReferenceStep_d9bbc380_29_ {
    value: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_,
    escaped: bool,
}

struct FeLocal_fe_ReferenceControl_7d077120_3_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_u32_u32_u32_u32_d07e8e72_28_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
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

struct preview_cache_element {
    camera_u002e_center_u002e_re_u002e_value_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    camera_u002e_zoom: f32,
    camera_u002e_res: f32,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history_u002e_full_u002e_re: f32,
    history_u002e_full_u002e_im: f32,
    history_u002e_initial_u002e_re: f32,
    history_u002e_initial_u002e_im: f32,
}

struct cache_element {
    camera_u002e_center_u002e_re_u002e_value_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    camera_u002e_zoom: f32,
    camera_u002e_res: f32,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
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
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(2)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(3)
var<storage, read_write> anchor: array<anchor_element>;
@group(0) @binding(4)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(5)
var<storage, read_write> reference_words: array<u32>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 1>;

fn input_age(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>) -> f32 {
    var local_32: f32;
    var local_33: bool = false;
    var local_34: f32 = f32();

    let _e4 = (*a0_).drag_active;
    if (0.5f <= _e4) {
    } else {
        let _e8 = (*a0_).clock;
        let _e10 = (*a0_).last_input;
        local_34 = (_e8 - _e10);
    }
    let _e14 = local_34;
    return _e14;
}

fn iteration_limit(a0_1: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_35: u32 = u32();
    var local_36: f32 = f32();
    var local_37: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_5_: bool;
    var local_38: u32 = u32();
    var local_39: f32 = f32();
    var local_40: u32;
    var local_41: bool = false;
    var local_42: u32 = u32();

    local_35 = 0u;
    local_36 = a0_1;
    local_37 = 0u;
    loop {
        let _e12 = local_35;
        let _e14 = local_36;
        let _e16 = local_37;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_38 = (_e12 + 1u);
                    local_39 = (_e14 * 2f);
                }
            } else {
                local_38 = _e12;
                local_39 = _e14;
            }
            let _e36 = local_38;
            let _e38 = local_39;
            local_35 = _e36;
            local_36 = _e38;
            local_37 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_35;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_42 = 8192u;
        } else {
            local_42 = _e60;
        }
        let _e71 = local_42;
        local_40 = _e71;
        local_41 = true;
    }
    let _e77 = local_41;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_40;
    return _e79;
}

fn center_value(a0_2: FeLocal_fe_Camera_03494b0d_10_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_ {
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_(a0_2.center.re.value, a0_2.center.im.value);
}

fn to_quad(a0_3: FeLocal_fe_More_More_More_Last_e6310ae8_7_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_30_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_30_(a0_3.lead, a0_3.tail.lead, a0_3.tail.tail.lead, a0_3.tail.tail.tail.value);
}

fn std_lib_evm_effects_assert_0f66_(a0_4: bool, fe_trapped_2: ptr<function, bool>) {
    var local_43: u32;
    var local_44: bool = false;

    if a0_4 {
        local_44 = true;
    } else {
        (*fe_trapped_2) = true;
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_3: ptr<function, bool>) -> u32 {
    std_lib_evm_effects_assert_0f66_(true, fe_trapped_3);
    return 10u;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_4);
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
}

fn precision_lib_array_fixed_signed_word_0309_(a0_5: u32, fe_trapped_5: ptr<function, bool>) {
    std_lib_evm_effects_assert_0f66_(((2147483647u < a0_5) == false), fe_trapped_5);
    return;
}

fn precision_lib_array_fixed_unsigned_word_3f05_(a0_6: u32, fe_trapped_6: ptr<function, bool>) {
    std_lib_evm_effects_assert_0f66_(((bitcast<i32>(a0_6) < bitcast<i32>(0u)) == false), fe_trapped_6);
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_45: u32;
    var local_46: bool = false;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_7);
    let _e4 = (_e2 - 1u);
    precision_lib_array_fixed_signed_word_0309_(_e4, fe_trapped_7);
    let _e12 = ((_e4 & 2147483648u) != 0u);
    let _e13 = ((13u & 2147483648u) != 0u);
    let _e17 = select(_e4, (0u - _e4), _e12);
    let _e21 = (_e17 != 0u);
    if (_e21 && (select(13u, (0u - 13u), _e13) > (select((2147483648u - 1u), 2147483648u, (_e12 != _e13)) / select(1u, _e17, _e21)))) {
        (*fe_trapped_7) = true;
    } else {
        local_45 = (_e4 * 13u);
        local_46 = true;
    }
    let _e31 = local_45;
    return _e31;
}

fn from_binary32_bits_g16d4_(a0_8: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    var local_47: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_48: bool = false;
    var local_49: bool = bool();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_50: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_51: bool = false;
    var local_52: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_53: bool = false;
    var local_54: u32 = u32();
    var local_55: u32 = u32();
    var loop_result_3: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_46_: bool;
    var local_56: u32 = u32();

    let _e5 = (a0_8 & 2147483647u);
    std_lib_evm_effects_assert_0f66_((_e5 < 1174405120u), fe_trapped_8);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_8);
    fixed_local_7_ = _e8;
    if (((a0_8 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_49 = true;
        }
    }
    let _e25 = local_49;
    fixed_local_7_.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_;
        local_50 = _e31;
        local_51 = true;
    }
    let _e153 = local_51;
    if _e153 {
    } else {
        let _e39 = ((_e5 & 8388607u) | 8388608u);
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_8);
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
                    let _e67 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_8);
                    local_54 = _e61;
                    local_55 = 0u;
                    loop {
                        let _e75 = local_54;
                        let _e77 = local_55;
                        let _e78 = (_e77 < _e67);
                        loop_header_carry_46_ = _e78;
                        if _e78 {
                            if ((bitcast<i32>(_e75) < bitcast<i32>(24u)) == false) {
                                local_56 = 0u;
                            } else {
                                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e75)) == false) {
                                    local_56 = 0u;
                                } else {
                                    if ((bitcast<i32>(_e75) < bitcast<i32>(0u)) == false) {
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e75, fe_trapped_8);
                                        local_56 = ((_e39 >> _e75) & 8191u);
                                    } else {
                                        let _e102 = (0u - _e75);
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e102, fe_trapped_8);
                                        local_56 = ((_e39 << _e102) & 8191u);
                                    }
                                }
                            }
                            let _e113 = local_56;
                            fixed_local_7_.digits[_e77] = _e113;
                            let _e119 = (_e75 + 13u);
                            if ((((_e75 ^ _e119) & (13u ^ _e119)) & 2147483648u) != 0u) {
                                (*fe_trapped_8) = true;
                                break;
                            }
                            local_54 = _e119;
                            local_55 = (_e77 + 1u);
                            continue;
                        } else {
                            let _e130 = fixed_local_7_;
                            loop_result_3 = _e130;
                            loop_did_return_3 = true;
                            break;
                        }
                    }
                    let _e136 = loop_did_return_3;
                    if _e136 {
                        let _e138 = loop_result_3;
                        local_52 = _e138;
                        local_53 = true;
                    }
                }
                let _e143 = local_53;
                if _e143 {
                }
            }
            let _e145 = local_53;
            if _e145 {
            }
        }
        let _e148 = local_53;
        if _e148 {
        } else {
            (*fe_trapped_8) = true;
        }
        let _e150 = local_52;
        local_50 = _e150;
    }
    let _e155 = local_50;
    return _e155;
}

fn from_f32_g16d4_(a0_9: f32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    let _e3 = from_binary32_bits_g16d4_(bitcast<u32>(a0_9), fe_trapped_9);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_10: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_10: ptr<function, bool>) -> bool {
    var local_57: u32 = u32();
    var loop_result_4: bool;
    var loop_did_return_4: bool = false;
    var loop_header_carry_5_1: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_10);
    local_57 = _e3;
    loop {
        let _e8 = local_57;
        let _e10 = (0u < _e8);
        loop_header_carry_5_1 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_10).digits[_e12];
            let _e18 = (*a1_).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_57 = _e12;
                continue;
            }
            let _e25 = (*a0_10).digits[_e12];
            let _e28 = (*a1_).digits[_e12];
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

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_11: bool, a1_1: u32, a2_: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, a8_: u32, a9_: u32, a10_: u32, a11_: bool, a12_: u32, a13_: u32, a14_: u32, a15_: u32, a16_: u32, a17_: u32, a18_: u32, a19_: u32, a20_: u32, a21_: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    var local_58: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_59: bool = false;
    var fixed_local_22_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_60_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var loop_result_5: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_5: bool = false;
    var loop_header_carry_150_: bool;
    var local_62: bool = bool();
    var fixed_local_95_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_132_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_63: u32 = u32();
    var local_64: u32 = u32();
    var loop_result_6: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_192_: bool;
    var local_65: u32 = u32();
    var local_66: u32 = u32();

    fixed_local_22_.negative = a0_11;
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
    let _e52 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_11);
    let _e53 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_11);
    fixed_local_60_ = _e53;
    let _e57 = fixed_local_22_.negative;
    fixed_local_60_.negative = _e57;
    let _e60 = fixed_local_22_.negative;
    let _e62 = fixed_local_45_.negative;
    if (_e60 == _e62) {
        local_60 = 0u;
        local_61 = 0u;
        loop {
            let _e72 = local_60;
            let _e74 = local_61;
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
                        (*fe_trapped_11) = true;
                        break;
                    }
                    fixed_local_60_.digits[_e74] = (_e87 & 8191u);
                    local_60 = (_e87 >> 13u);
                    local_61 = (_e74 + 1u);
                    continue;
                }
                (*fe_trapped_11) = true;
                break;
            } else {
                let _e102 = fixed_local_60_;
                loop_result_5 = _e102;
                loop_did_return_5 = true;
                break;
            }
        }
        let _e108 = loop_did_return_5;
        if _e108 {
            let _e110 = loop_result_5;
            local_58 = _e110;
            local_59 = true;
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
        let _e189 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c((&fixed_local_95_), (&fixed_local_132_), fe_trapped_11);
        if _e189 {
            let _e191 = fixed_local_45_.negative;
            local_62 = _e191;
        } else {
            let _e193 = fixed_local_22_.negative;
            local_62 = _e193;
        }
        let _e197 = local_62;
        fixed_local_60_.negative = _e197;
        local_63 = 0u;
        local_64 = 0u;
        loop {
            let _e207 = local_63;
            let _e209 = local_64;
            let _e210 = (_e209 < _e52);
            loop_header_carry_192_ = _e210;
            if _e210 {
                if _e189 {
                    let _e214 = fixed_local_45_.digits[_e209];
                    local_65 = _e214;
                } else {
                    let _e217 = fixed_local_22_.digits[_e209];
                    local_65 = _e217;
                }
                let _e222 = local_65;
                if _e189 {
                    let _e225 = fixed_local_22_.digits[_e209];
                    local_66 = _e225;
                } else {
                    let _e228 = fixed_local_45_.digits[_e209];
                    local_66 = _e228;
                }
                let _e232 = local_66;
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
                                (*fe_trapped_11) = true;
                                break;
                            }
                            local_63 = (1u - _e247);
                            local_64 = (_e209 + 1u);
                            continue;
                        }
                    }
                }
                (*fe_trapped_11) = true;
                break;
            } else {
                let _e257 = fixed_local_60_;
                loop_result_6 = _e257;
                loop_did_return_6 = true;
                break;
            }
        }
        let _e263 = loop_did_return_6;
        if _e263 {
            let _e265 = loop_result_6;
            local_58 = _e265;
            local_59 = true;
        }
    }
    let _e270 = local_58;
    return _e270;
}

fn from_expansion_g16d4_(a0_12: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    var fixed_local_28_: array<f32, 4> = array<f32, 4>();
    var local_67: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_68: u32 = u32();
    var loop_result_7: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_7: bool = false;
    var loop_header_carry_34_: bool;

    let _e2 = to_quad(a0_12);
    fixed_local_28_ = array<f32, 4>(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_);
    let _e11 = fixed_local_28_[0];
    let _e12 = from_f32_g16d4_(_e11, fe_trapped_12);
    local_67 = _e12;
    local_68 = 1u;
    loop {
        let _e20 = local_67;
        let _e22 = local_68;
        let _e24 = (_e22 < 4u);
        loop_header_carry_34_ = _e24;
        if _e24 {
            let _e26 = fixed_local_28_[_e22];
            let _e27 = from_f32_g16d4_(_e26, fe_trapped_12);
            let _e52 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e27.negative, _e27.digits[0], _e27.digits[1], _e27.digits[2], _e27.digits[3], _e27.digits[4], _e27.digits[5], _e27.digits[6], _e27.digits[7], _e27.digits[8], _e27.digits[9], fe_trapped_12);
            local_67 = _e52;
            local_68 = (_e22 + 1u);
            continue;
        } else {
            let _e57 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_12);
            let _e82 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e57.negative, _e57.digits[0], _e57.digits[1], _e57.digits[2], _e57.digits[3], _e57.digits[4], _e57.digits[5], _e57.digits[6], _e57.digits[7], _e57.digits[8], _e57.digits[9], fe_trapped_12);
            loop_result_7 = _e82;
            loop_did_return_7 = true;
            break;
        }
    }
    let _e88 = loop_result_7;
    return _e88;
}

fn neg_g16d4_(a0_13: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_1_((a0_13.negative == false), a0_13.digits);
}

fn sub_g16d4_(a0_14: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_, a1_2: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    let _e3 = neg_g16d4_(a1_2);
    let _e28 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_14.negative, a0_14.digits[0], a0_14.digits[1], a0_14.digits[2], a0_14.digits[3], a0_14.digits[4], a0_14.digits[5], a0_14.digits[6], a0_14.digits[7], a0_14.digits[8], a0_14.digits[9], _e3.negative, _e3.digits[0], _e3.digits[1], _e3.digits[2], _e3.digits[3], _e3.digits[4], _e3.digits[5], _e3.digits[6], _e3.digits[7], _e3.digits[8], _e3.digits[9], fe_trapped_13);
    return _e28;
}

fn precision_lib_fixed_limb_highest_bit_5b70_(a0_15: u32) -> u32 {
    var local_69: u32;
    var local_70: bool = false;
    var local_71: u32 = u32();

    if ((a0_15 < 4096u) == false) {
        local_71 = 12u;
    } else {
        if ((a0_15 < 2048u) == false) {
            local_71 = 11u;
        } else {
            if ((a0_15 < 1024u) == false) {
                local_71 = 10u;
            } else {
                if ((a0_15 < 512u) == false) {
                    local_71 = 9u;
                } else {
                    if ((a0_15 < 256u) == false) {
                        local_71 = 8u;
                    } else {
                        if ((a0_15 < 128u) == false) {
                            local_71 = 7u;
                        } else {
                            if ((a0_15 < 64u) == false) {
                                local_71 = 6u;
                            } else {
                                if ((a0_15 < 32u) == false) {
                                    local_71 = 5u;
                                } else {
                                    if ((a0_15 < 16u) == false) {
                                        local_71 = 4u;
                                    } else {
                                        if ((a0_15 < 8u) == false) {
                                            local_71 = 3u;
                                        } else {
                                            if ((a0_15 < 4u) == false) {
                                                local_71 = 2u;
                                            } else {
                                                if ((a0_15 < 2u) == false) {
                                                    local_71 = 1u;
                                                } else {
                                                    if (a0_15 == 1u) {
                                                    } else {
                                                        local_71 = 4294967295u;
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
    let _e80 = local_71;
    return _e80;
}

fn highest_bit_g16d4_(a0_16: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_72: u32 = u32();
    var local_73: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_4_: bool;
    var local_74: u32;
    var local_75: bool = false;
    var local_76: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_14);
    local_72 = 0u;
    local_73 = _e2;
    loop {
        let _e10 = local_72;
        let _e12 = local_73;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_16).digits[_e18];
                local_72 = _e21;
                local_73 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_72;
    let _e28 = local_73;
    if (_e26 == 0u) {
        local_76 = 4294967295u;
    } else {
        let _e33 = precision_lib_fixed_limb_highest_bit_5b70_(_e26);
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_14);
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
                local_76 = _e58;
            }
        }
    }
    let _e69 = local_76;
    return _e69;
}

fn word_from_g16d4_(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_3: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_77: u32;
    var local_78: bool = false;
    var local_79: u32;
    var local_80: bool = false;
    var local_81: u32 = u32();
    var local_82: u32 = u32();
    var local_83: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_34_1: bool;

    if (bitcast<i32>(a1_3) < bitcast<i32>(0u)) {
        local_77 = 0u;
        local_78 = true;
    }
    let _e77 = local_78;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_3, fe_trapped_15);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_15);
        let _e15 = (a1_3 / 13u);
        if ((_e15 < _e13) == false) {
            local_79 = 0u;
            local_80 = true;
        }
        let _e72 = local_80;
        if _e72 {
        } else {
            let _e24 = (a1_3 % 13u);
            let _e27 = (*a0_17).digits[_e15];
            local_81 = (13u - _e24);
            local_82 = (_e27 >> _e24);
            local_83 = (_e15 + 1u);
            loop {
                let _e41 = local_81;
                let _e43 = local_82;
                let _e45 = local_83;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_1 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_17).digits[_e45];
                        local_81 = (_e41 + 13u);
                        local_82 = (_e43 | (_e51 << _e41));
                        local_83 = (_e45 + 1u);
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
            local_79 = _e69;
        }
        let _e74 = local_79;
        local_77 = _e74;
    }
    let _e79 = local_77;
    return _e79;
}

fn bit_at(a0_18: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_4: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_84: u32;
    var local_85: bool = false;
    var local_86: u32;
    var local_87: bool = false;

    if (bitcast<i32>(a1_4) < bitcast<i32>(0u)) {
        local_84 = 0u;
        local_85 = true;
    }
    let _e38 = local_85;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_4, fe_trapped_16);
        let _e14 = (a1_4 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
        if ((_e14 < _e15) == false) {
            local_86 = 0u;
            local_87 = true;
        }
        let _e33 = local_87;
        if _e33 {
        } else {
            let _e25 = (*a0_18).digits[_e14];
            local_86 = ((_e25 >> (a1_4 % 13u)) & 1u);
        }
        let _e35 = local_86;
        local_84 = _e35;
    }
    let _e40 = local_84;
    return _e40;
}

fn any_below(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_5: u32, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_88: u32;
    var local_89: bool = false;
    var local_90: u32 = u32();
    var local_91: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_15_: bool;
    var local_92: u32;
    var local_93: bool = false;
    var local_94: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_5)) == false) {
        local_88 = 0u;
        local_89 = true;
    }
    let _e65 = local_89;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_5, fe_trapped_17);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_17);
        local_90 = 0u;
        local_91 = 0u;
        loop {
            let _e25 = local_90;
            let _e27 = local_91;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_5 / 13u)) {
                    let _e32 = (*a0_19).digits[_e27];
                    local_90 = (_e25 | _e32);
                    local_91 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_90;
        let _e42 = local_91;
        if (_e42 < _e16) {
            let _e50 = (*a0_19).digits[_e42];
            let _e52 = (1u << (a1_5 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_17) = true;
            } else {
                local_94 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_94 = _e40;
        }
        let _e62 = local_94;
        local_88 = _e62;
    }
    let _e67 = local_88;
    return _e67;
}

fn project_binary32_(a0_20: u32, a1_6: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_95: u32;
    var local_96: bool = false;
    var local_97: u32 = u32();
    var local_98: u32 = u32();
    var local_99: u32 = u32();
    var local_100: u32 = u32();
    var local_101: u32 = u32();

    let _e5 = highest_bit_g16d4_(a1_6, fe_trapped_18);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_6, fe_trapped_18);
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
                    let _e40 = word_from_g16d4_(a1_6, 0u, fe_trapped_18);
                    local_98 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from_g16d4_(a1_6, _e32, fe_trapped_18);
                    local_98 = _e42;
                }
                let _e47 = local_98;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_6, _e49, fe_trapped_18);
                let _e51 = any_below(a1_6, _e49, fe_trapped_18);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_99 = 1u;
                    } else {
                        local_99 = (_e47 & 1u);
                    }
                }
                let _e64 = local_99;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_18) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_18) = true;
                        } else {
                            local_100 = 8388608u;
                            local_101 = _e77;
                        }
                    } else {
                        local_100 = _e66;
                        local_101 = _e23;
                    }
                    let _e90 = local_100;
                    let _e92 = local_101;
                    local_97 = (((a0_20 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_97;
    return _e103;
}

fn to_binary32_bits(a0_21: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_102: u32;
    var local_103: bool = false;
    var local_104: u32 = u32();

    let _e5 = (*a0_21).negative;
    if _e5 {
        local_104 = 1u;
    }
    let _e9 = local_104;
    let _e10 = project_binary32_(_e9, a0_21, fe_trapped_19);
    return _e10;
}

fn to_f32_(a0_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_20: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_22, fe_trapped_20);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_23: FeLocal_fe_More_More_More_Last_e6310ae8_7_, a1_7: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_21: ptr<function, bool>) -> f32 {
    var fixed_local_7_1: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();

    let _e3 = from_expansion_g16d4_(a1_7, fe_trapped_21);
    let _e4 = from_expansion_g16d4_(a0_23, fe_trapped_21);
    let _e5 = sub_g16d4_(_e3, _e4, fe_trapped_21);
    fixed_local_7_1 = _e5;
    let _e8 = to_f32_((&fixed_local_7_1), fe_trapped_21);
    return _e8;
}

fn center_delta(a0_24: FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_, a1_8: FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_, fe_trapped_22: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_19_ {
    let _e5 = expansion_difference(a0_24.re, a1_8.re, fe_trapped_22);
    let _e8 = expansion_difference(a0_24.im, a1_8.im, fe_trapped_22);
    return FeLocal_fe_Complex_f32_87ec9249_19_(_e5, _e8);
}

fn impl_ReferenceAnchor_delta_from(a0_25: FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_, a1_9: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, fe_trapped_23: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_19_ {
    let _e5 = (*a1_9).camera;
    let _e6 = center_value(_e5);
    let _e7 = center_delta(a0_25.center, _e6, fe_trapped_23);
    return _e7;
}

fn impl_trait_f32_abs(a0_26: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_26) & 2147483647u));
}

fn is_input_settled(a0_27: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>) -> bool {
    var local_105: bool;
    var local_106: bool = false;
    var local_107: bool = bool();

    let _e4 = (*a0_27).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_27).clock;
        let _e10 = (*a0_27).last_input;
        if (60f <= (_e8 - _e10)) {
            local_107 = true;
        }
    }
    let _e17 = local_107;
    return _e17;
}

fn preview_uses_pending(a0_28: u32, a1_10: u32, a2_1: u32, a3_1: bool) -> bool {
    var local_108: bool;
    var local_109: bool = false;
    var local_110: bool = bool();

    if (a1_10 == 1u) {
        if (0u < a2_1) {
            if ((a0_28 == 0u) | a3_1) {
                local_110 = true;
            }
        }
    }
    let _e16 = local_110;
    return _e16;
}

fn select_preview_bank(a0_29: u32, a1_11: u32, a2_2: u32, a3_2: u32, a4_1: bool, fe_trapped_24: ptr<function, bool>) -> u32 {
    var local_111: u32;
    var local_112: bool = false;
    var local_113: u32 = u32();

    let _e8 = preview_uses_pending(a1_11, a2_2, a3_2, a4_1);
    if _e8 {
        if (1u < a0_29) {
            (*fe_trapped_24) = true;
        } else {
            local_113 = (1u - a0_29);
        }
    } else {
        local_113 = a0_29;
    }
    let _e16 = local_113;
    return _e16;
}

fn preview_bank(a0_30: FeLocal_fe_ReferenceControl_7d077120_3_, a1_12: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, fe_trapped_25: ptr<function, bool>) -> u32 {
    let _e7 = is_input_settled(a1_12);
    let _e8 = select_preview_bank(a0_30.active_, a0_30.active_valid, a0_30.pending, a0_30.index, _e7, fe_trapped_25);
    return _e8;
}

fn key(a0_31: FeLocal_fe_PreviewCache_6792a3e2_27_) -> FeLocal_fe_PreviewKey_592da546_25_ {
    return FeLocal_fe_PreviewKey_592da546_25_(a0_31.camera, a0_31.reference_generation, a0_31.reference_bank);
}

fn precision_lib_impl_trait_Last_915d_eq_6590_(a0_32: f32, a1_13: f32) -> bool {
    return (a0_32 == a1_13);
}

fn precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_33: FeLocal_fe_More_Last_1ac585f5_5_, a1_14: FeLocal_fe_More_Last_1ac585f5_5_) -> bool {
    var local_114: bool;
    var local_115: bool = false;
    var local_116: bool = bool();

    if (a0_33.lead == a1_14.lead) {
        let _e11 = precision_lib_impl_trait_Last_915d_eq_6590_(a0_33.tail.value, a1_14.tail.value);
        if _e11 {
            local_116 = true;
        }
    }
    let _e15 = local_116;
    return _e15;
}

fn precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_34: FeLocal_fe_More_More_Last_60a5ba63_6_, a1_15: FeLocal_fe_More_More_Last_60a5ba63_6_) -> bool {
    var local_117: bool;
    var local_118: bool = false;
    var local_119: bool = bool();

    if (a0_34.lead == a1_15.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_34.tail, a1_15.tail);
        if _e9 {
            local_119 = true;
        }
    }
    let _e13 = local_119;
    return _e13;
}

fn precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_35: FeLocal_fe_More_More_More_Last_e6310ae8_7_, a1_16: FeLocal_fe_More_More_More_Last_e6310ae8_7_) -> bool {
    var local_120: bool;
    var local_121: bool = false;
    var local_122: bool = bool();

    if (a0_35.lead == a1_16.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_35.tail, a1_16.tail);
        if _e9 {
            local_122 = true;
        }
    }
    let _e13 = local_122;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_36: FeLocal_fe_Coordinate_bdc10f09_8_, a1_17: FeLocal_fe_Coordinate_bdc10f09_8_) -> bool {
    var local_123: bool;
    var local_124: bool = false;
    var local_125: bool = bool();

    let _e6 = precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_36.value, a1_17.value);
    if _e6 {
        local_125 = true;
    }
    let _e10 = local_125;
    return _e10;
}

fn algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_37: FeLocal_fe_Complex_Coordinate_d4657101_9_, a1_18: FeLocal_fe_Complex_Coordinate_d4657101_9_) -> bool {
    var local_126: bool;
    var local_127: bool = false;
    var local_128: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_37.re, a1_18.re);
    if _e6 {
        let _e9 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_37.im, a1_18.im);
        if _e9 {
            local_128 = true;
        }
    }
    let _e13 = local_128;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_6ca5_(a0_38: FeLocal_fe_Camera_03494b0d_10_, a1_19: FeLocal_fe_Camera_03494b0d_10_) -> bool {
    var local_129: bool;
    var local_130: bool = false;
    var local_131: bool = bool();

    let _e6 = algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_38.center, a1_19.center);
    if _e6 {
        if (a0_38.zoom == a1_19.zoom) {
            if (a0_38.res == a1_19.res) {
                local_131 = true;
            }
        }
    }
    let _e16 = local_131;
    return _e16;
}

fn impl_trait_PreviewKey_eq(a0_39: FeLocal_fe_PreviewKey_592da546_25_, a1_20: FeLocal_fe_PreviewKey_592da546_25_) -> bool {
    var local_132: bool;
    var local_133: bool = false;
    var local_134: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_6ca5_(a0_39.camera, a1_20.camera);
    if _e6 {
        if (a0_39.reference_generation == a1_20.reference_generation) {
            if (a0_39.reference_bank == a1_20.reference_bank) {
                local_134 = true;
            }
        }
    }
    let _e16 = local_134;
    return _e16;
}

fn uses_pending_for_preview(a0_40: FeLocal_fe_ReferenceControl_7d077120_3_, a1_21: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>) -> bool {
    let _e5 = is_input_settled(a1_21);
    let _e6 = preview_uses_pending(a0_40.active_valid, a0_40.pending, a0_40.index, _e5);
    return _e6;
}

fn preview_has_reference(a0_41: u32, a1_22: u32, a2_3: u32) -> bool {
    var local_135: bool;
    var local_136: bool = false;
    var local_137: bool = bool();

    if (a0_41 == 1u) {
        local_137 = true;
    } else {
        if (a1_22 == 1u) {
            if (0u < a2_3) {
                local_137 = true;
            }
        }
    }
    let _e16 = local_137;
    return _e16;
}

fn has_preview_reference(a0_42: FeLocal_fe_ReferenceControl_7d077120_3_) -> bool {
    let _e4 = preview_has_reference(a0_42.active_valid, a0_42.pending, a0_42.index);
    return _e4;
}

fn available_preview_steps(a0_43: FeLocal_fe_ReferenceControl_7d077120_3_, a1_23: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, a2_4: u32) -> u32 {
    var local_138: u32;
    var local_139: bool = false;
    var local_140: u32 = u32();

    let _e5 = has_preview_reference(a0_43);
    if (_e5 == false) {
    } else {
        let _e8 = uses_pending_for_preview(a0_43, a1_23);
        if _e8 {
            if (a0_43.index < a2_4) {
                local_140 = a0_43.index;
            } else {
                local_140 = a2_4;
            }
        } else {
            local_140 = a2_4;
        }
    }
    let _e16 = local_140;
    return _e16;
}

fn next_preview_step_target(a0_44: u32, a1_24: u32, fe_trapped_26: ptr<function, bool>) -> u32 {
    var local_141: u32;
    var local_142: bool = false;
    var local_143: u32;
    var local_144: bool = false;
    var local_145: u32 = u32();

    let _e6 = (a0_44 + 256u);
    if (a0_44 > (4294967295u - 256u)) {
        (*fe_trapped_26) = true;
    }
    if (_e6 < a1_24) {
        local_145 = _e6;
    } else {
        local_145 = a1_24;
    }
    let _e16 = local_145;
    return _e16;
}

fn preview_is_completed(a0_45: u32, a1_25: u32, a2_5: u32) -> bool {
    var local_146: bool;
    var local_147: bool = false;
    var local_148: bool = bool();

    if (a0_45 == 0u) {
        if (0u < a2_5) {
            if ((a1_25 < a2_5) == false) {
                local_148 = true;
            }
        }
    }
    let _e15 = local_148;
    return _e15;
}

fn sync_with_view(a0_46: FeLocal_fe_PreviewCache_6792a3e2_27_, a1_26: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, a2_6: FeLocal_fe_ReferenceControl_7d077120_3_, a3_3: u32, a4_2: u32, fe_trapped_27: ptr<function, bool>) -> FeLocal_fe_PreviewCache_6792a3e2_27_ {
    var local_149: FeLocal_fe_PreviewCache_6792a3e2_27_;
    var local_150: bool = false;
    var local_151: bool = bool();
    var local_152: FeLocal_fe_PreviewCache_6792a3e2_27_;
    var local_153: bool = false;
    var local_154: u32 = u32();
    var local_155: FeLocal_fe_PreviewCache_6792a3e2_27_;
    var local_156: bool = false;
    var local_157: u32 = u32();
    var local_158: FeLocal_fe_PreviewCache_6792a3e2_27_;
    var local_159: bool = false;
    var local_160: u32 = u32();
    var local_161: FeLocal_fe_PreviewCache_6792a3e2_27_;
    var local_162: bool = false;
    var local_163: u32 = u32();

    let _e9 = (*a1_26).camera;
    let _e10 = preview_bank(a2_6, a1_26, fe_trapped_27);
    let _e12 = key(a0_46);
    let _e13 = impl_trait_PreviewKey_eq(_e12, FeLocal_fe_PreviewKey_592da546_25_(_e9, a3_3, _e10));
    if _e13 {
        if (a0_46.budget == a4_2) {
            if ((a0_46.epoch == 0u) == false) {
                local_151 = true;
            }
        }
    }
    let _e26 = local_151;
    let _e27 = uses_pending_for_preview(a2_6, a1_26);
    if _e27 {
        local_154 = 1u;
    }
    let _e33 = local_154;
    let _e34 = available_preview_steps(a2_6, a1_26, a4_2);
    if _e26 {
        local_157 = a0_46.completed_steps;
    }
    let _e40 = local_157;
    let _e41 = next_preview_step_target(_e40, _e34, fe_trapped_27);
    if _e26 {
        let _e42 = preview_is_completed(_e33, _e40, a4_2);
        if _e42 {
            local_160 = a0_46.completed;
        }
    }
    let _e48 = local_160;
    let _e49 = preview_bank(a2_6, a1_26, fe_trapped_27);
    if _e26 {
        local_163 = a0_46.epoch;
    } else {
        if (a0_46.epoch > (4294967295u - 1u)) {
            (*fe_trapped_27) = true;
        } else {
            local_163 = (a0_46.epoch + 1u);
        }
    }
    let _e61 = local_163;
    return FeLocal_fe_PreviewCache_6792a3e2_27_(_e9, a3_3, _e49, _e33, _e41, _e40, a4_2, _e61, _e48, a0_46.history);
}

fn max_(a0_47: f32, a1_27: f32) -> f32 {
    var local_164: f32;
    var local_165: bool = false;
    var local_166: f32 = f32();

    if (a1_27 < a0_47) {
        local_166 = a0_47;
    } else {
        local_166 = a1_27;
    }
    let _e8 = local_166;
    return _e8;
}

fn display_age(a0_48: FeLocal_fe_ReferenceControl_7d077120_3_, a1_28: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>) -> f32 {
    var local_167: f32;
    var local_168: bool = false;
    var local_169: f32 = f32();

    let _e5 = (*a1_28).drag_active;
    if (0.5f <= _e5) {
    } else {
        if (a0_48.pending == 1u) {
        } else {
            let _e12 = (*a1_28).clock;
            let _e14 = (*a1_28).last_input;
            let _e16 = max_(_e14, a0_48.ready_at);
            let _e19 = max_(0f, (_e12 - _e16));
            local_169 = _e19;
        }
    }
    let _e22 = local_169;
    return _e22;
}

fn clamp_f(a0_49: f32, a1_29: f32, a2_7: f32) -> f32 {
    var local_170: f32;
    var local_171: bool = false;
    var local_172: f32 = f32();

    if (a0_49 < a1_29) {
        local_172 = a1_29;
    } else {
        if (a2_7 < a0_49) {
            local_172 = a2_7;
        } else {
            local_172 = a0_49;
        }
    }
    let _e11 = local_172;
    return _e11;
}

fn progress(a0_50: f32, a1_30: f32, a2_8: f32) -> f32 {
    let _e7 = clamp_f(((a0_50 - a1_30) / a2_8), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_51: f32) -> f32 {
    let _e3 = progress(a0_51, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn impl_ViewCache_refinement_key(a0_52: FeLocal_fe_ViewCache_da6e2ccc_23_) -> FeLocal_fe_RefinementKey_028ab549_24_ {
    return FeLocal_fe_RefinementKey_028ab549_24_(a0_52.camera, a0_52.aa);
}

fn impl_MandelbrotViewState_refinement_key(a0_53: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>) -> FeLocal_fe_RefinementKey_028ab549_24_ {
    let _e2 = (*a0_53).camera;
    let _e4 = (*a0_53).antialias;
    return FeLocal_fe_RefinementKey_028ab549_24_(_e2, _e4);
}

fn impl_trait_RefinementKey_eq(a0_54: FeLocal_fe_RefinementKey_028ab549_24_, a1_31: FeLocal_fe_RefinementKey_028ab549_24_) -> bool {
    var local_173: bool;
    var local_174: bool = false;
    var local_175: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_6ca5_(a0_54.camera, a1_31.camera);
    if _e6 {
        if (a0_54.antialias == a1_31.antialias) {
            local_175 = true;
        }
    }
    let _e13 = local_175;
    return _e13;
}

fn sync_for_frame(a0_55: FeLocal_fe_ViewCache_da6e2ccc_23_, a1_32: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, a2_9: FeLocal_fe_ReferenceControl_7d077120_3_, a3_4: FeLocal_fe_PreviewCache_6792a3e2_27_, a4_3: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_28: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_23_ {
    var local_176: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_177: bool = false;
    var local_178: bool = bool();
    var local_179: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_180: bool = false;
    var local_181: u32 = u32();
    var local_182: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_183: bool = false;
    var local_184: u32 = u32();
    var local_185: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_186: bool = false;
    var local_187: u32 = u32();
    var local_188: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_189: bool = false;
    var local_190: u32 = u32();
    var local_191: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_192: bool = false;
    var local_193: u32 = u32();

    let _e9 = display_age(a2_9, a1_32);
    let _e10 = blur_radius(_e9);
    let _e11 = impl_ViewCache_refinement_key(a0_55);
    let _e12 = impl_MandelbrotViewState_refinement_key(a1_32);
    let _e13 = impl_trait_RefinementKey_eq(_e11, _e12);
    if (a4_3.completed == 1u) {
        if (a4_3.epoch == a0_55.epoch) {
            local_178 = true;
        }
    }
    let _e25 = local_178;
    let _e26 = has_preview_reference(a2_9);
    if (_e26 == false) {
    } else {
        if _e13 {
            if (a0_55.budget == a3_4.budget) {
                if (a3_4.completed == 1u) {
                    if (((360f <= _e9) == false) | (_e25 == false)) {
                        local_181 = 1u;
                    }
                } else {
                    local_181 = 1u;
                }
            } else {
                local_181 = 1u;
            }
        } else {
            local_181 = 1u;
        }
    }
    let _e52 = local_181;
    let _e53 = has_preview_reference(a2_9);
    if (_e53 == false) {
    } else {
        if (_e52 == 0u) {
            if (a0_55.radius == _e10) {
            } else {
                local_184 = 1u;
            }
        } else {
            local_184 = 1u;
        }
    }
    let _e67 = local_184;
    let _e69 = (*a1_32).camera;
    if _e13 {
        local_187 = a0_55.cursor;
    }
    let _e75 = local_187;
    let _e77 = (*a1_32).antialias;
    if _e13 {
        local_190 = a0_55.epoch;
    } else {
        if (a0_55.epoch > (4294967295u - 1u)) {
            (*fe_trapped_28) = true;
        } else {
            local_190 = (a0_55.epoch + 1u);
        }
    }
    let _e91 = local_190;
    if _e13 {
        local_193 = a0_55.completed;
    }
    let _e95 = local_193;
    return FeLocal_fe_ViewCache_da6e2ccc_23_(_e69, _e75, _e77, a3_4.budget, _e10, _e52, _e67, _e91, _e95);
}

fn from_state(a0_56: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, a1_33: u32, a2_10: u32) -> FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_ {
    let _e4 = (*a0_56).camera;
    let _e5 = center_value(_e4);
    return FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_(_e5, a1_33, a2_10);
}

fn clear_reference_checkpoint() {
    var local_194: u32 = u32();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_4_1: bool;

    local_194 = 0u;
    loop {
        let _e6 = local_194;
        let _e8 = (_e6 < 16u);
        loop_header_carry_4_1 = _e8;
        if _e8 {
            reference_words[i32(_e6)] = 0u;
            local_194 = (_e6 + 1u);
            continue;
        } else {
            loop_did_return_11 = true;
            break;
        }
    }
    return;
}

fn impl_trait_PackedReference_default() -> FeLocal_fe_PackedReference_e11ca04a_20_ {
    return FeLocal_fe_PackedReference_e11ca04a_20_();
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_29: ptr<function, bool>) -> u32 {
    std_lib_evm_effects_assert_0f66_(true, fe_trapped_29);
    return 8u;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_30: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_30);
    return FeLocal_fe_ArrayFixed_8_78307dfe_0_();
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a0_57: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_31: ptr<function, bool>) -> u32 {
    var local_195: u32;
    var local_196: bool = false;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_31);
    let _e4 = (_e2 - 1u);
    precision_lib_array_fixed_signed_word_0309_(_e4, fe_trapped_31);
    let _e12 = ((_e4 & 2147483648u) != 0u);
    let _e13 = ((13u & 2147483648u) != 0u);
    let _e17 = select(_e4, (0u - _e4), _e12);
    let _e21 = (_e17 != 0u);
    if (_e21 && (select(13u, (0u - 13u), _e13) > (select((2147483648u - 1u), 2147483648u, (_e12 != _e13)) / select(1u, _e17, _e21)))) {
        (*fe_trapped_31) = true;
    } else {
        local_195 = (_e4 * 13u);
        local_196 = true;
    }
    let _e31 = local_195;
    return _e31;
}

fn from_binary32_bits_gc7cf(a0_58: u32, fe_trapped_32: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_197: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_198: bool = false;
    var local_199: bool = bool();
    var fixed_local_7_2: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_200: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_201: bool = false;
    var local_202: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_203: bool = false;
    var local_204: u32 = u32();
    var local_205: u32 = u32();
    var loop_result_12: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_12: bool = false;
    var loop_header_carry_46_1: bool;
    var local_206: u32 = u32();

    let _e5 = (a0_58 & 2147483647u);
    std_lib_evm_effects_assert_0f66_((_e5 < 1174405120u), fe_trapped_32);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_32);
    fixed_local_7_2 = _e8;
    if (((a0_58 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_199 = true;
        }
    }
    let _e25 = local_199;
    fixed_local_7_2.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_2;
        local_200 = _e31;
        local_201 = true;
    }
    let _e153 = local_201;
    if _e153 {
    } else {
        let _e39 = ((_e5 & 8388607u) | 8388608u);
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_32);
        let _e43 = (_e28 - 150u);
        if ((((_e28 ^ _e43) & (_e28 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e49 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_((&fixed_local_7_2), fe_trapped_32);
            let _e52 = (_e43 + _e49);
            if ((((_e43 ^ _e52) & (_e49 ^ _e52)) & 2147483648u) != 0u) {
            } else {
                let _e61 = (0u - _e52);
                if ((((0u ^ _e61) & (0u ^ _e52)) & 2147483648u) != 0u) {
                } else {
                    let _e67 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_32);
                    local_204 = _e61;
                    local_205 = 0u;
                    loop {
                        let _e75 = local_204;
                        let _e77 = local_205;
                        let _e78 = (_e77 < _e67);
                        loop_header_carry_46_1 = _e78;
                        if _e78 {
                            if ((bitcast<i32>(_e75) < bitcast<i32>(24u)) == false) {
                                local_206 = 0u;
                            } else {
                                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e75)) == false) {
                                    local_206 = 0u;
                                } else {
                                    if ((bitcast<i32>(_e75) < bitcast<i32>(0u)) == false) {
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e75, fe_trapped_32);
                                        local_206 = ((_e39 >> _e75) & 8191u);
                                    } else {
                                        let _e102 = (0u - _e75);
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e102, fe_trapped_32);
                                        local_206 = ((_e39 << _e102) & 8191u);
                                    }
                                }
                            }
                            let _e113 = local_206;
                            fixed_local_7_2.digits[_e77] = _e113;
                            let _e119 = (_e75 + 13u);
                            if ((((_e75 ^ _e119) & (13u ^ _e119)) & 2147483648u) != 0u) {
                                (*fe_trapped_32) = true;
                                break;
                            }
                            local_204 = _e119;
                            local_205 = (_e77 + 1u);
                            continue;
                        } else {
                            let _e130 = fixed_local_7_2;
                            loop_result_12 = _e130;
                            loop_did_return_12 = true;
                            break;
                        }
                    }
                    let _e136 = loop_did_return_12;
                    if _e136 {
                        let _e138 = loop_result_12;
                        local_202 = _e138;
                        local_203 = true;
                    }
                }
                let _e143 = local_203;
                if _e143 {
                }
            }
            let _e145 = local_203;
            if _e145 {
            }
        }
        let _e148 = local_203;
        if _e148 {
        } else {
            (*fe_trapped_32) = true;
        }
        let _e150 = local_202;
        local_200 = _e150;
    }
    let _e155 = local_200;
    return _e155;
}

fn from_f32_gc7cf(a0_59: f32, fe_trapped_33: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e3 = from_binary32_bits_gc7cf(bitcast<u32>(a0_59), fe_trapped_33);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_gc7cf_4b9a(a0_60: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_34: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_34: ptr<function, bool>) -> bool {
    var local_207: u32 = u32();
    var loop_result_13: bool;
    var loop_did_return_13: bool = false;
    var loop_header_carry_5_2: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_34);
    local_207 = _e3;
    loop {
        let _e8 = local_207;
        let _e10 = (0u < _e8);
        loop_header_carry_5_2 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_60).digits[_e12];
            let _e18 = (*a1_34).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_207 = _e12;
                continue;
            }
            let _e25 = (*a0_60).digits[_e12];
            let _e28 = (*a1_34).digits[_e12];
            loop_result_13 = (_e25 < _e28);
            loop_did_return_13 = true;
            break;
        } else {
            loop_result_13 = false;
            loop_did_return_13 = true;
            break;
        }
    }
    let _e39 = loop_result_13;
    return _e39;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_61: bool, a1_35: u32, a2_11: u32, a3_5: u32, a4_4: u32, a5_1: u32, a6_1: u32, a7_1: u32, a8_1: u32, a9_1: bool, a10_1: u32, a11_1: u32, a12_1: u32, a13_1: u32, a14_1: u32, a15_1: u32, a16_1: u32, a17_1: u32, fe_trapped_35: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_208: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_209: bool = false;
    var fixed_local_18_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_37_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_50_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_210: u32 = u32();
    var local_211: u32 = u32();
    var loop_result_14: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_14: bool = false;
    var loop_header_carry_128_: bool;
    var local_212: bool = bool();
    var fixed_local_81_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_112_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_213: u32 = u32();
    var local_214: u32 = u32();
    var loop_result_15: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_15: bool = false;
    var loop_header_carry_170_: bool;
    var local_215: u32 = u32();
    var local_216: u32 = u32();

    fixed_local_18_.negative = a0_61;
    fixed_local_18_.digits[0] = a1_35;
    fixed_local_18_.digits[1] = a2_11;
    fixed_local_18_.digits[2] = a3_5;
    fixed_local_18_.digits[3] = a4_4;
    fixed_local_18_.digits[4] = a5_1;
    fixed_local_18_.digits[5] = a6_1;
    fixed_local_18_.digits[6] = a7_1;
    fixed_local_18_.digits[7] = a8_1;
    fixed_local_37_.negative = a9_1;
    fixed_local_37_.digits[0] = a10_1;
    fixed_local_37_.digits[1] = a11_1;
    fixed_local_37_.digits[2] = a12_1;
    fixed_local_37_.digits[3] = a13_1;
    fixed_local_37_.digits[4] = a14_1;
    fixed_local_37_.digits[5] = a15_1;
    fixed_local_37_.digits[6] = a16_1;
    fixed_local_37_.digits[7] = a17_1;
    let _e44 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_35);
    let _e45 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_35);
    fixed_local_50_ = _e45;
    let _e49 = fixed_local_18_.negative;
    fixed_local_50_.negative = _e49;
    let _e52 = fixed_local_18_.negative;
    let _e54 = fixed_local_37_.negative;
    if (_e52 == _e54) {
        local_210 = 0u;
        local_211 = 0u;
        loop {
            let _e64 = local_210;
            let _e66 = local_211;
            let _e67 = (_e66 < _e44);
            loop_header_carry_128_ = _e67;
            if _e67 {
                let _e70 = fixed_local_18_.digits[_e66];
                let _e73 = fixed_local_37_.digits[_e66];
                let _e75 = (_e70 + _e73);
                if (_e70 > (4294967295u - _e73)) {
                } else {
                    let _e79 = (_e75 + _e64);
                    if (_e75 > (4294967295u - _e64)) {
                        (*fe_trapped_35) = true;
                        break;
                    }
                    fixed_local_50_.digits[_e66] = (_e79 & 8191u);
                    local_210 = (_e79 >> 13u);
                    local_211 = (_e66 + 1u);
                    continue;
                }
                (*fe_trapped_35) = true;
                break;
            } else {
                let _e94 = fixed_local_50_;
                loop_result_14 = _e94;
                loop_did_return_14 = true;
                break;
            }
        }
        let _e100 = loop_did_return_14;
        if _e100 {
            let _e102 = loop_result_14;
            local_208 = _e102;
            local_209 = true;
        }
    } else {
        let _e108 = fixed_local_18_.negative;
        let _e111 = fixed_local_18_.digits[0];
        let _e113 = fixed_local_18_.digits[1];
        let _e115 = fixed_local_18_.digits[2];
        let _e117 = fixed_local_18_.digits[3];
        let _e119 = fixed_local_18_.digits[4];
        let _e121 = fixed_local_18_.digits[5];
        let _e123 = fixed_local_18_.digits[6];
        let _e125 = fixed_local_18_.digits[7];
        fixed_local_81_.negative = _e108;
        fixed_local_81_.digits[0] = _e111;
        fixed_local_81_.digits[1] = _e113;
        fixed_local_81_.digits[2] = _e115;
        fixed_local_81_.digits[3] = _e117;
        fixed_local_81_.digits[4] = _e119;
        fixed_local_81_.digits[5] = _e121;
        fixed_local_81_.digits[6] = _e123;
        fixed_local_81_.digits[7] = _e125;
        let _e139 = fixed_local_37_.negative;
        let _e142 = fixed_local_37_.digits[0];
        let _e144 = fixed_local_37_.digits[1];
        let _e146 = fixed_local_37_.digits[2];
        let _e148 = fixed_local_37_.digits[3];
        let _e150 = fixed_local_37_.digits[4];
        let _e152 = fixed_local_37_.digits[5];
        let _e154 = fixed_local_37_.digits[6];
        let _e156 = fixed_local_37_.digits[7];
        fixed_local_112_.negative = _e139;
        fixed_local_112_.digits[0] = _e142;
        fixed_local_112_.digits[1] = _e144;
        fixed_local_112_.digits[2] = _e146;
        fixed_local_112_.digits[3] = _e148;
        fixed_local_112_.digits[4] = _e150;
        fixed_local_112_.digits[5] = _e152;
        fixed_local_112_.digits[6] = _e154;
        fixed_local_112_.digits[7] = _e156;
        let _e169 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_gc7cf_4b9a((&fixed_local_81_), (&fixed_local_112_), fe_trapped_35);
        if _e169 {
            let _e171 = fixed_local_37_.negative;
            local_212 = _e171;
        } else {
            let _e173 = fixed_local_18_.negative;
            local_212 = _e173;
        }
        let _e177 = local_212;
        fixed_local_50_.negative = _e177;
        local_213 = 0u;
        local_214 = 0u;
        loop {
            let _e187 = local_213;
            let _e189 = local_214;
            let _e190 = (_e189 < _e44);
            loop_header_carry_170_ = _e190;
            if _e190 {
                if _e169 {
                    let _e194 = fixed_local_37_.digits[_e189];
                    local_215 = _e194;
                } else {
                    let _e197 = fixed_local_18_.digits[_e189];
                    local_215 = _e197;
                }
                let _e202 = local_215;
                if _e169 {
                    let _e205 = fixed_local_18_.digits[_e189];
                    local_216 = _e205;
                } else {
                    let _e208 = fixed_local_37_.digits[_e189];
                    local_216 = _e208;
                }
                let _e212 = local_216;
                let _e215 = (8192u + _e202);
                if (8192u > (4294967295u - _e202)) {
                } else {
                    let _e218 = (_e215 - _e212);
                    if (_e215 < _e212) {
                    } else {
                        let _e220 = (_e218 - _e187);
                        if (_e218 < _e187) {
                        } else {
                            fixed_local_50_.digits[_e189] = (_e220 & 8191u);
                            let _e227 = (_e220 >> 13u);
                            if (1u < _e227) {
                                (*fe_trapped_35) = true;
                                break;
                            }
                            local_213 = (1u - _e227);
                            local_214 = (_e189 + 1u);
                            continue;
                        }
                    }
                }
                (*fe_trapped_35) = true;
                break;
            } else {
                let _e237 = fixed_local_50_;
                loop_result_15 = _e237;
                loop_did_return_15 = true;
                break;
            }
        }
        let _e243 = loop_did_return_15;
        if _e243 {
            let _e245 = loop_result_15;
            local_208 = _e245;
            local_209 = true;
        }
    }
    let _e250 = local_208;
    return _e250;
}

fn from_expansion_gc7cf(a0_62: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_36: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var fixed_local_28_1: array<f32, 4> = array<f32, 4>();
    var local_217: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_218: u32 = u32();
    var loop_result_16: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_16: bool = false;
    var loop_header_carry_34_2: bool;

    let _e2 = to_quad(a0_62);
    fixed_local_28_1 = array<f32, 4>(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_);
    let _e11 = fixed_local_28_1[0];
    let _e12 = from_f32_gc7cf(_e11, fe_trapped_36);
    local_217 = _e12;
    local_218 = 1u;
    loop {
        let _e20 = local_217;
        let _e22 = local_218;
        let _e24 = (_e22 < 4u);
        loop_header_carry_34_2 = _e24;
        if _e24 {
            let _e26 = fixed_local_28_1[_e22];
            let _e27 = from_f32_gc7cf(_e26, fe_trapped_36);
            let _e48 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e27.negative, _e27.digits[0], _e27.digits[1], _e27.digits[2], _e27.digits[3], _e27.digits[4], _e27.digits[5], _e27.digits[6], _e27.digits[7], fe_trapped_36);
            local_217 = _e48;
            local_218 = (_e22 + 1u);
            continue;
        } else {
            let _e53 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_36);
            let _e74 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e53.negative, _e53.digits[0], _e53.digits[1], _e53.digits[2], _e53.digits[3], _e53.digits[4], _e53.digits[5], _e53.digits[6], _e53.digits[7], fe_trapped_36);
            loop_result_16 = _e74;
            loop_did_return_16 = true;
            break;
        }
    }
    let _e80 = loop_result_16;
    return _e80;
}

fn impl_ReferenceReal_from_expansion(a0_63: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_37: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e2 = from_expansion_gc7cf(a0_63, fe_trapped_37);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e2);
}

fn reference_center(a0_64: FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_, fe_trapped_38: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ {
    let _e4 = impl_ReferenceReal_from_expansion(a0_64.center.re, fe_trapped_38);
    let _e7 = impl_ReferenceReal_from_expansion(a0_64.center.im, fe_trapped_38);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_(_e4, _e7);
}

fn impl_ReferenceReal_zero(fe_trapped_39: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_39);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e1);
}

fn default_gfdd1_(fe_trapped_40: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ {
    let _e1 = impl_ReferenceReal_zero(fe_trapped_40);
    let _e2 = impl_ReferenceReal_zero(fe_trapped_40);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_(_e1, _e2);
}

fn from_digits(a0_65: bool, a1_36: ptr<function, array<u32, 8>>, fe_trapped_41: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_219: u32 = u32();
    var loop_result_17: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_17: bool = false;
    var loop_header_carry_6_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_41);
    local_219 = 0u;
    loop {
        let _e9 = local_219;
        let _e10 = (_e9 < _e3);
        loop_header_carry_6_ = _e10;
        if _e10 {
            let _e12 = (*a1_36)[_e9];
            std_lib_evm_effects_assert_0f66_((_e12 < 8192u), fe_trapped_41);
            local_219 = (_e9 + 1u);
            continue;
        } else {
            let _e18 = (*a1_36);
            loop_result_17 = FeLocal_fe_ArrayFixed_8_78307dfe_0_(a0_65, _e18);
            loop_did_return_17 = true;
            break;
        }
    }
    let _e25 = loop_result_17;
    return _e25;
}

fn impl_ReferenceReal_from_words(a0_66: u32, a1_37: ptr<function, array<u32, 8>>, fe_trapped_42: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    std_lib_evm_effects_assert_0f66_(((1u < a0_66) == false), fe_trapped_42);
    let _e9 = from_digits((a0_66 == 1u), a1_37, fe_trapped_42);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e9);
}

fn load_reference_checkpoint(a1_38: FeLocal_fe_ReferenceControl_7d077120_3_, fe_trapped_43: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ {
    var fixed_local_3_: array<u32, 8> = array<u32, 8>();
    var fixed_local_19_: array<u32, 8> = array<u32, 8>();
    var local_220: u32 = u32();
    var loop_result_18: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_;
    var loop_did_return_18: bool = false;
    var loop_header_carry_30_: bool;

    local_220 = 0u;
    loop {
        let _e12 = local_220;
        let _e14 = (_e12 < 8u);
        loop_header_carry_30_ = _e14;
        if _e14 {
            let _e17 = reference_words[i32(_e12)];
            fixed_local_3_[_e12] = _e17;
            let _e23 = reference_words[i32((_e12 + 8u))];
            fixed_local_19_[_e12] = _e23;
            local_220 = (_e12 + 1u);
            continue;
        } else {
            let _e29 = impl_ReferenceReal_from_words(a1_38.zx_s, (&fixed_local_3_), fe_trapped_43);
            let _e31 = impl_ReferenceReal_from_words(a1_38.zy_s, (&fixed_local_19_), fe_trapped_43);
            loop_result_18 = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_(_e29, _e31);
            loop_did_return_18 = true;
            break;
        }
    }
    let _e38 = loop_result_18;
    return _e38;
}

fn mul(a0_67: bool, a1_39: u32, a2_12: u32, a3_6: u32, a4_5: u32, a5_2: u32, a6_2: u32, a7_2: u32, a8_2: u32, a9_2: bool, a10_2: u32, a11_2: u32, a12_2: u32, a13_2: u32, a14_2: u32, a15_2: u32, a16_2: u32, a17_2: u32, fe_trapped_44: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var fixed_local_18_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_37_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_50_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_221: u32 = u32();
    var local_222: u32 = u32();
    var loop_result_19: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_19: bool = false;
    var loop_header_carry_63_: bool;
    var local_223: u32 = u32();
    var local_224: u32 = u32();
    var loop_result_20: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_20: bool = false;
    var loop_header_carry_68_: bool;
    var local_225: u32 = u32();
    var local_226: u32 = u32();
    var loop_result_21: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_21: bool = false;
    var loop_header_carry_230_: u32;
    var loop_header_carry_125_: bool;
    var local_227: u32 = u32();
    var local_228: u32 = u32();
    var loop_result_22: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_22: bool = false;
    var loop_header_carry_150_1: bool;

    fixed_local_18_1.negative = a0_67;
    fixed_local_18_1.digits[0] = a1_39;
    fixed_local_18_1.digits[1] = a2_12;
    fixed_local_18_1.digits[2] = a3_6;
    fixed_local_18_1.digits[3] = a4_5;
    fixed_local_18_1.digits[4] = a5_2;
    fixed_local_18_1.digits[5] = a6_2;
    fixed_local_18_1.digits[6] = a7_2;
    fixed_local_18_1.digits[7] = a8_2;
    fixed_local_37_1.negative = a9_2;
    fixed_local_37_1.digits[0] = a10_2;
    fixed_local_37_1.digits[1] = a11_2;
    fixed_local_37_1.digits[2] = a12_2;
    fixed_local_37_1.digits[3] = a13_2;
    fixed_local_37_1.digits[4] = a14_2;
    fixed_local_37_1.digits[5] = a15_2;
    fixed_local_37_1.digits[6] = a16_2;
    fixed_local_37_1.digits[7] = a17_2;
    let _e43 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_44);
    let _e44 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_44);
    fixed_local_50_1 = _e44;
    let _e48 = fixed_local_18_1.negative;
    let _e50 = fixed_local_37_1.negative;
    fixed_local_50_1.negative = ((_e48 == _e50) == false);
    local_221 = 0u;
    local_222 = 0u;
    loop {
        let _e63 = local_221;
        let _e65 = local_222;
        let _e66 = (_e65 < _e43);
        loop_header_carry_63_ = _e66;
        if _e66 {
            local_223 = 0u;
            local_224 = 0u;
            loop {
                let _e75 = local_223;
                let _e77 = local_224;
                let _e78 = (_e77 < _e43);
                loop_header_carry_68_ = _e78;
                if _e78 {
                    let _e81 = fixed_local_50_1.digits[_e77];
                    let _e84 = fixed_local_18_1.digits[_e77];
                    let _e87 = fixed_local_37_1.digits[_e65];
                    let _e91 = (_e84 * _e87);
                    let _e92 = (_e84 != 0u);
                    if (_e92 && (_e87 > (4294967295u / select(1u, _e84, _e92)))) {
                    } else {
                        let _e98 = (_e81 + _e91);
                        if (_e81 > (4294967295u - _e91)) {
                        } else {
                            let _e102 = (_e98 + _e75);
                            if (_e98 > (4294967295u - _e75)) {
                                (*fe_trapped_44) = true;
                                break;
                            }
                            fixed_local_50_1.digits[_e77] = (_e102 & 8191u);
                            local_223 = (_e102 >> 13u);
                            local_224 = (_e77 + 1u);
                            continue;
                        }
                    }
                    (*fe_trapped_44) = true;
                    break;
                } else {
                    break;
                }
            }
            let _e119 = local_223;
            if (_e65 < (_e43 - 1u)) {
                let _e126 = fixed_local_50_1.digits[0];
                local_226 = 0u;
                loop {
                    let _e132 = local_226;
                    let _e134 = (_e43 - 1u);
                    let _e135 = (_e132 < _e134);
                    loop_header_carry_230_ = _e134;
                    loop_header_carry_125_ = _e135;
                    if _e135 {
                        let _e140 = fixed_local_50_1.digits[(_e132 + 1u)];
                        fixed_local_50_1.digits[_e132] = _e140;
                        local_226 = (_e132 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                fixed_local_50_1.digits[(_e43 - 1u)] = _e119;
                local_225 = _e126;
            } else {
                local_227 = (_e63 >> 12u);
                local_228 = 0u;
                loop {
                    let _e161 = local_227;
                    let _e163 = local_228;
                    let _e164 = (_e163 < _e43);
                    loop_header_carry_150_1 = _e164;
                    if _e164 {
                        let _e167 = fixed_local_50_1.digits[_e163];
                        let _e169 = (_e167 + _e161);
                        if (_e167 > (4294967295u - _e161)) {
                            (*fe_trapped_44) = true;
                            break;
                        }
                        fixed_local_50_1.digits[_e163] = (_e169 & 8191u);
                        local_227 = (_e169 >> 13u);
                        local_228 = (_e163 + 1u);
                        continue;
                    } else {
                        local_225 = _e63;
                        break;
                    }
                }
            }
            let _e187 = local_225;
            if (_e65 > (4294967295u - 1u)) {
            } else {
                local_221 = _e187;
                local_222 = (_e65 + 1u);
                continue;
            }
            (*fe_trapped_44) = true;
            break;
        } else {
            let _e196 = fixed_local_50_1;
            loop_result_19 = _e196;
            loop_did_return_19 = true;
            break;
        }
    }
    let _e202 = loop_result_19;
    return _e202;
}

fn multiply(a0_68: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, a1_40: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_45: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e4 = (*a0_68).value;
    let _e6 = (*a1_40).value;
    let _e27 = mul(_e4.negative, _e4.digits[0], _e4.digits[1], _e4.digits[2], _e4.digits[3], _e4.digits[4], _e4.digits[5], _e4.digits[6], _e4.digits[7], _e6.negative, _e6.digits[0], _e6.digits[1], _e6.digits[2], _e6.digits[3], _e6.digits[4], _e6.digits[5], _e6.digits[6], _e6.digits[7], fe_trapped_45);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e27);
}

fn impl_trait_ReferenceReal_add(a0_69: FeLocal_fe_ReferenceReal_aede3f8e_2_, a1_41: FeLocal_fe_ReferenceReal_aede3f8e_2_, fe_trapped_46: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e25 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_69.value.negative, a0_69.value.digits[0], a0_69.value.digits[1], a0_69.value.digits[2], a0_69.value.digits[3], a0_69.value.digits[4], a0_69.value.digits[5], a0_69.value.digits[6], a0_69.value.digits[7], a1_41.value.negative, a1_41.value.digits[0], a1_41.value.digits[1], a1_41.value.digits[2], a1_41.value.digits[3], a1_41.value.digits[4], a1_41.value.digits[5], a1_41.value.digits[6], a1_41.value.digits[7], fe_trapped_46);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e25);
}

fn magnitude_exceeds_four(a0_70: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_47: ptr<function, bool>) -> bool {
    var local_229: bool;
    var local_230: bool = false;
    var local_231: bool;
    var local_232: bool = false;
    var local_233: u32 = u32();
    var loop_result_23: bool;
    var loop_did_return_23: bool = false;
    var loop_header_carry_18_: u32;
    var loop_header_carry_19_: bool;
    var loop_header_carry_21_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_47);
    let _e8 = (*a0_70).digits[(_e3 - 1u)];
    if (4u < _e8) {
        local_229 = true;
        local_230 = true;
    }
    let _e64 = local_230;
    if _e64 {
    } else {
        if (_e8 < 4u) {
            local_231 = false;
            local_232 = true;
        } else {
            local_233 = 0u;
        }
        let _e59 = local_232;
        if _e59 {
        } else {
            local_233 = 0u;
            loop {
                let _e29 = local_233;
                let _e31 = (_e3 - 1u);
                let _e33 = (_e29 < _e31);
                loop_header_carry_18_ = _e31;
                loop_header_carry_19_ = (_e3 < 1u);
                loop_header_carry_21_ = _e33;
                if _e33 {
                    let _e36 = (*a0_70).digits[_e29];
                    if ((_e36 == 0u) == false) {
                        loop_result_23 = true;
                        loop_did_return_23 = true;
                        break;
                    }
                    local_233 = (_e29 + 1u);
                    continue;
                } else {
                    loop_result_23 = false;
                    loop_did_return_23 = true;
                    break;
                }
            }
            let _e56 = loop_result_23;
            local_231 = _e56;
        }
        let _e61 = local_231;
        local_229 = _e61;
    }
    let _e66 = local_229;
    return _e66;
}

fn escaped(a0_71: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_48: ptr<function, bool>) -> bool {
    var fixed_local_5_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e3 = (*a0_71).value;
    fixed_local_5_ = _e3;
    let _e6 = magnitude_exceeds_four((&fixed_local_5_), fe_trapped_48);
    return _e6;
}

fn neg_gc7cf(a0_72: FeLocal_fe_ArrayFixed_8_78307dfe_0_) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    return FeLocal_fe_ArrayFixed_8_78307dfe_0_((a0_72.negative == false), a0_72.digits);
}

fn sub_gc7cf(a0_73: FeLocal_fe_ArrayFixed_8_78307dfe_0_, a1_42: FeLocal_fe_ArrayFixed_8_78307dfe_0_, fe_trapped_49: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e3 = neg_gc7cf(a1_42);
    let _e24 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_73.negative, a0_73.digits[0], a0_73.digits[1], a0_73.digits[2], a0_73.digits[3], a0_73.digits[4], a0_73.digits[5], a0_73.digits[6], a0_73.digits[7], _e3.negative, _e3.digits[0], _e3.digits[1], _e3.digits[2], _e3.digits[3], _e3.digits[4], _e3.digits[5], _e3.digits[6], _e3.digits[7], fe_trapped_49);
    return _e24;
}

fn impl_trait_ReferenceReal_sub(a0_74: FeLocal_fe_ReferenceReal_aede3f8e_2_, a1_43: FeLocal_fe_ReferenceReal_aede3f8e_2_, fe_trapped_50: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e5 = sub_gc7cf(a0_74.value, a1_43.value, fe_trapped_50);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e5);
}

fn reference_step(a0_75: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_>, a1_44: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_>, fe_trapped_51: ptr<function, bool>) -> FeLocal_fe_ReferenceStep_d9bbc380_29_ {
    var local_234: FeLocal_fe_ReferenceStep_d9bbc380_29_;
    var local_235: bool = false;
    var local_236: FeLocal_fe_ReferenceStep_d9bbc380_29_ = FeLocal_fe_ReferenceStep_d9bbc380_29_();
    var fixed_local_6_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_11_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_14_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_27_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_28_2: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();

    let _e6 = (*a0_75).re;
    fixed_local_6_ = _e6;
    let _e9 = multiply((&fixed_local_6_), (&fixed_local_6_), fe_trapped_51);
    let _e11 = (*a0_75).im;
    fixed_local_11_ = _e11;
    let _e14 = multiply((&fixed_local_11_), (&fixed_local_11_), fe_trapped_51);
    let _e15 = impl_trait_ReferenceReal_add(_e9, _e14, fe_trapped_51);
    fixed_local_14_ = _e15;
    let _e18 = escaped((&fixed_local_14_), fe_trapped_51);
    if _e18 {
        let _e19 = (*a0_75);
        local_236 = FeLocal_fe_ReferenceStep_d9bbc380_29_(_e19, true);
    } else {
        let _e23 = (*a0_75).re;
        let _e25 = (*a0_75).im;
        fixed_local_27_ = _e23;
        fixed_local_28_2 = _e25;
        let _e30 = multiply((&fixed_local_27_), (&fixed_local_28_2), fe_trapped_51);
        let _e31 = impl_trait_ReferenceReal_sub(_e9, _e14, fe_trapped_51);
        let _e33 = (*a1_44).re;
        let _e34 = impl_trait_ReferenceReal_add(_e31, _e33, fe_trapped_51);
        let _e35 = impl_trait_ReferenceReal_add(_e30, _e30, fe_trapped_51);
        let _e37 = (*a1_44).im;
        let _e38 = impl_trait_ReferenceReal_add(_e35, _e37, fe_trapped_51);
        local_236 = FeLocal_fe_ReferenceStep_d9bbc380_29_(FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_(_e34, _e38), false);
    }
    let _e45 = local_236;
    return _e45;
}

fn sign_gc7cf(a0_76: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>) -> u32 {
    var local_237: u32;
    var local_238: bool = false;
    var local_239: u32 = u32();

    let _e4 = (*a0_76).negative;
    if _e4 {
        local_239 = 1u;
    }
    let _e8 = local_239;
    return _e8;
}

fn impl_ReferenceReal_sign(a0_77: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>) -> u32 {
    var fixed_local_5_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e2 = (*a0_77).value;
    fixed_local_5_1 = _e2;
    let _e5 = sign_gc7cf((&fixed_local_5_1));
    return _e5;
}

fn publish(a0_78: u32, a1_45: u32, a2_13: u32, a3_7: u32, a4_6: f32) -> FeLocal_fe_ReferenceControl_7d077120_3_ {
    return FeLocal_fe_ReferenceControl_7d077120_3_(a0_78, 1u, 0u, a1_45, a2_13, a3_7, a4_6);
}

fn to_digits(a0_79: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>) -> array<u32, 8> {
    let _e2 = (*a0_79).digits;
    return _e2;
}

fn to_words(a0_80: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>) -> array<u32, 8> {
    var fixed_local_5_2: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e2 = (*a0_80).value;
    fixed_local_5_2 = _e2;
    let _e5 = to_digits((&fixed_local_5_2));
    return _e5;
}

fn store_reference_checkpoint(a1_46: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_>) {
    var fixed_local_6_1: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_12_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_14_1: array<u32, 8> = array<u32, 8>();
    var local_240: u32 = u32();
    var loop_result_24: u32;
    var loop_did_return_24: bool = false;
    var loop_header_carry_17_: bool;

    let _e3 = (*a1_46).re;
    fixed_local_6_1 = _e3;
    let _e6 = to_words((&fixed_local_6_1));
    fixed_local_8_ = _e6;
    let _e10 = (*a1_46).im;
    fixed_local_12_ = _e10;
    let _e13 = to_words((&fixed_local_12_));
    fixed_local_14_1 = _e13;
    local_240 = 0u;
    loop {
        let _e21 = local_240;
        let _e23 = (_e21 < 8u);
        loop_header_carry_17_ = _e23;
        if _e23 {
            let _e25 = fixed_local_8_[_e21];
            reference_words[i32(_e21)] = _e25;
            let _e31 = fixed_local_14_1[_e21];
            reference_words[i32((_e21 + 8u))] = _e31;
            local_240 = (_e21 + 1u);
            continue;
        } else {
            loop_did_return_24 = true;
            break;
        }
    }
    return;
}

fn advance_pending(a0_81: FeLocal_fe_ReferenceControl_7d077120_3_, a1_47: u32, a2_14: u32, a3_8: u32) -> FeLocal_fe_ReferenceControl_7d077120_3_ {
    var fixed_local_5_3: FeLocal_fe_ReferenceControl_7d077120_3_ = FeLocal_fe_ReferenceControl_7d077120_3_();

    fixed_local_5_3 = a0_81;
    fixed_local_5_3.pending = 1u;
    fixed_local_5_3.index = a1_47;
    fixed_local_5_3.zx_s = a2_14;
    fixed_local_5_3.zy_s = a3_8;
    let _e11 = fixed_local_5_3;
    return _e11;
}

fn invalidate_for_new_reference(a0_82: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_52: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_23_ {
    var local_241: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_242: bool = false;
    var fixed_local_2_: FeLocal_fe_ViewCache_da6e2ccc_23_ = FeLocal_fe_ViewCache_da6e2ccc_23_();

    fixed_local_2_ = a0_82;
    fixed_local_2_.cursor = 0u;
    fixed_local_2_.preview_dirty = 1u;
    fixed_local_2_.blur_dirty = 1u;
    if (a0_82.epoch > (4294967295u - 1u)) {
        (*fe_trapped_52) = true;
    }
    fixed_local_2_.epoch = (a0_82.epoch + 1u);
    fixed_local_2_.completed = 0u;
    let _e21 = fixed_local_2_;
    return _e21;
}

fn impl_ViewCache_delta_from(a0_83: FeLocal_fe_ViewCache_da6e2ccc_23_, a1_48: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, fe_trapped_53: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_19_ {
    let _e4 = center_value(a0_83.camera);
    let _e6 = (*a1_48).camera;
    let _e7 = center_value(_e6);
    let _e8 = center_delta(_e4, _e7, fe_trapped_53);
    return _e8;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_19_ {
    return FeLocal_fe_Complex_f32_87ec9249_19_();
}

fn for_view(a0_84: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, a1_49: FeLocal_fe_ViewCache_da6e2ccc_23_, a2_15: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_54: ptr<function, bool>) -> FeLocal_fe_HistoryOffsets_646326b2_26_ {
    var local_243: FeLocal_fe_HistoryOffsets_646326b2_26_;
    var local_244: bool = false;
    var local_245: FeLocal_fe_Complex_f32_87ec9249_19_ = FeLocal_fe_Complex_f32_87ec9249_19_();
    var local_246: FeLocal_fe_HistoryOffsets_646326b2_26_;
    var local_247: bool = false;
    var local_248: FeLocal_fe_Complex_f32_87ec9249_19_ = FeLocal_fe_Complex_f32_87ec9249_19_();

    if (a1_49.completed == 1u) {
        let _e9 = impl_ViewCache_delta_from(a1_49, a0_84, fe_trapped_54);
        local_245 = _e9;
    } else {
        let _e10 = default_ge58b();
        local_245 = _e10;
    }
    let _e16 = local_245;
    if (a2_15.completed == 1u) {
        let _e20 = impl_ViewCache_delta_from(a2_15, a0_84, fe_trapped_54);
        local_248 = _e20;
    } else {
        let _e21 = default_ge58b();
        local_248 = _e21;
    }
    let _e25 = local_248;
    return FeLocal_fe_HistoryOffsets_646326b2_26_(_e16, _e25);
}

fn from_quad(a0_85: f32, a1_50: f32, a2_16: f32, a3_9: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_7_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_7_(a0_85, FeLocal_fe_More_More_Last_60a5ba63_6_(a1_50, FeLocal_fe_More_Last_1ac585f5_5_(a2_16, FeLocal_fe_Last_eb970eb0_4_(a3_9))));
}

fn decode(a0_86: FeLocal_fe_PackedReference_e11ca04a_20_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_ {
    let _e9 = from_quad(bitcast<f32>(a0_86.re_w0_bits), bitcast<f32>(a0_86.re_w1_bits), bitcast<f32>(a0_86.re_w2_bits), bitcast<f32>(a0_86.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_86.im_w0_bits), bitcast<f32>(a0_86.im_w1_bits), bitcast<f32>(a0_86.im_w2_bits), bitcast<f32>(a0_86.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_(_e9, _e18);
}

fn with_center_offset(a0_87: FeLocal_fe_PackedReference_e11ca04a_20_, a1_51: FeLocal_fe_Complex_f32_87ec9249_19_) -> FeLocal_fe_PackedReference_e11ca04a_20_ {
    var fixed_local_3_1: FeLocal_fe_PackedReference_e11ca04a_20_ = FeLocal_fe_PackedReference_e11ca04a_20_();

    fixed_local_3_1 = a0_87;
    fixed_local_3_1.re_w2_bits = bitcast<u32>(a1_51.re);
    fixed_local_3_1.re_w3_bits = bitcast<u32>(a1_51.im);
    let _e10 = fixed_local_3_1;
    return _e10;
}

fn highest_bit_gc7cf(a0_88: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_55: ptr<function, bool>) -> u32 {
    var local_249: u32 = u32();
    var local_250: u32 = u32();
    var loop_result_25: u32;
    var loop_did_return_25: bool = false;
    var loop_header_carry_4_2: bool;
    var local_251: u32;
    var local_252: bool = false;
    var local_253: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_55);
    local_249 = 0u;
    local_250 = _e2;
    loop {
        let _e10 = local_249;
        let _e12 = local_250;
        let _e14 = (0u < _e12);
        loop_header_carry_4_2 = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_88).digits[_e18];
                local_249 = _e21;
                local_250 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_249;
    let _e28 = local_250;
    if (_e26 == 0u) {
        local_253 = 4294967295u;
    } else {
        let _e33 = precision_lib_fixed_limb_highest_bit_5b70_(_e26);
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_55);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_55) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_55) = true;
            } else {
                local_253 = _e58;
            }
        }
    }
    let _e69 = local_253;
    return _e69;
}

fn word_from_gc7cf(a0_89: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_52: u32, fe_trapped_56: ptr<function, bool>) -> u32 {
    var local_254: u32;
    var local_255: bool = false;
    var local_256: u32;
    var local_257: bool = false;
    var local_258: u32 = u32();
    var local_259: u32 = u32();
    var local_260: u32 = u32();
    var loop_result_26: u32;
    var loop_did_return_26: bool = false;
    var loop_header_carry_34_3: bool;

    if (bitcast<i32>(a1_52) < bitcast<i32>(0u)) {
        local_254 = 0u;
        local_255 = true;
    }
    let _e77 = local_255;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_52, fe_trapped_56);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_56);
        let _e15 = (a1_52 / 13u);
        if ((_e15 < _e13) == false) {
            local_256 = 0u;
            local_257 = true;
        }
        let _e72 = local_257;
        if _e72 {
        } else {
            let _e24 = (a1_52 % 13u);
            let _e27 = (*a0_89).digits[_e15];
            local_258 = (13u - _e24);
            local_259 = (_e27 >> _e24);
            local_260 = (_e15 + 1u);
            loop {
                let _e41 = local_258;
                let _e43 = local_259;
                let _e45 = local_260;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_3 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_89).digits[_e45];
                        local_258 = (_e41 + 13u);
                        local_259 = (_e43 | (_e51 << _e41));
                        local_260 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_26 = _e43;
                        loop_did_return_26 = true;
                        break;
                    }
                } else {
                    loop_result_26 = _e43;
                    loop_did_return_26 = true;
                    break;
                }
            }
            let _e69 = loop_result_26;
            local_256 = _e69;
        }
        let _e74 = local_256;
        local_254 = _e74;
    }
    let _e79 = local_254;
    return _e79;
}

fn project_binary32_quad(a0_90: u32, a1_53: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_57: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_28_ {
    var local_261: u32 = u32();
    var local_262: u32 = u32();
    var local_263: u32 = u32();
    var local_264: u32 = u32();
    var local_265: u32 = u32();
    var local_266: u32 = u32();
    var loop_result_27: FeLocal_fe_u32_u32_u32_u32_d07e8e72_28_;
    var loop_did_return_27: bool = false;
    var loop_header_carry_8_: bool;
    var local_267: u32 = u32();
    var local_268: u32 = u32();
    var local_269: u32 = u32();
    var local_270: u32 = u32();
    var local_271: u32 = u32();
    var local_272: u32 = u32();
    var local_273: u32 = u32();

    let _e3 = highest_bit_gc7cf(a1_53, fe_trapped_57);
    let _e4 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a1_53, fe_trapped_57);
    local_261 = 0u;
    local_262 = 0u;
    local_263 = 0u;
    local_264 = 0u;
    local_265 = 0u;
    local_266 = 0u;
    loop {
        let _e25 = local_261;
        let _e27 = local_262;
        let _e29 = local_263;
        let _e31 = local_264;
        let _e33 = local_265;
        let _e35 = local_266;
        let _e37 = (_e35 < 4u);
        loop_header_carry_8_ = _e37;
        if _e37 {
            let _e40 = (_e3 - _e33);
            if ((((_e3 ^ _e40) & (_e3 ^ _e33)) & 2147483648u) != 0u) {
            } else {
                if (bitcast<i32>(_e40) < bitcast<i32>(0u)) {
                    local_267 = 0u;
                } else {
                    let _e53 = (_e40 - 23u);
                    if (bitcast<i32>(_e53) < bitcast<i32>(0u)) {
                        let _e61 = word_from_gc7cf(a1_53, 0u, fe_trapped_57);
                        local_268 = ((_e61 << (0u - _e53)) & 16777215u);
                    } else {
                        let _e65 = word_from_gc7cf(a1_53, _e53, fe_trapped_57);
                        local_268 = (_e65 & 16777215u);
                    }
                    let _e71 = local_268;
                    if (_e71 == 0u) {
                        local_267 = 0u;
                    } else {
                        let _e76 = (_e71 >> 13u);
                        if (_e76 == 0u) {
                            let _e79 = precision_lib_fixed_limb_highest_bit_5b70_(_e71);
                            local_269 = _e79;
                        } else {
                            let _e80 = precision_lib_fixed_limb_highest_bit_5b70_(_e76);
                            local_269 = (13u + _e80);
                        }
                        let _e86 = local_269;
                        let _e92 = (_e53 + _e86);
                        if ((((_e53 ^ _e92) & (_e86 ^ _e92)) & 2147483648u) != 0u) {
                            (*fe_trapped_57) = true;
                            break;
                        } else {
                            let _e101 = (_e92 - _e4);
                            if ((((_e92 ^ _e101) & (_e92 ^ _e4)) & 2147483648u) != 0u) {
                                (*fe_trapped_57) = true;
                                break;
                            } else {
                                let _e111 = (_e101 + 127u);
                                if ((((_e101 ^ _e111) & (127u ^ _e111)) & 2147483648u) != 0u) {
                                    (*fe_trapped_57) = true;
                                    break;
                                } else {
                                    local_267 = (((a0_90 << 31u) | (_e111 << 23u)) | ((_e71 << (23u - _e86)) & 8388607u));
                                }
                            }
                        }
                    }
                }
                let _e136 = local_267;
                switch _e35 {
                    case 0u: {
                        local_270 = _e25;
                        local_271 = _e27;
                        local_272 = _e29;
                        local_273 = _e136;
                    }
                    case 1u: {
                        local_270 = _e25;
                        local_271 = _e27;
                        local_272 = _e136;
                        local_273 = _e31;
                    }
                    case 2u: {
                        local_270 = _e25;
                        local_271 = _e136;
                        local_272 = _e29;
                        local_273 = _e31;
                    }
                    default: {
                        local_270 = _e136;
                        local_271 = _e27;
                        local_272 = _e29;
                        local_273 = _e31;
                    }
                }
                let _e154 = local_270;
                let _e156 = local_271;
                let _e158 = local_272;
                let _e160 = local_273;
                let _e166 = (_e33 + 24u);
                if ((((_e33 ^ _e166) & (24u ^ _e166)) & 2147483648u) != 0u) {
                } else {
                    local_261 = _e154;
                    local_262 = _e156;
                    local_263 = _e158;
                    local_264 = _e160;
                    local_265 = _e166;
                    local_266 = (_e35 + 1u);
                    continue;
                }
            }
            (*fe_trapped_57) = true;
            break;
        } else {
            loop_result_27 = FeLocal_fe_u32_u32_u32_u32_d07e8e72_28_(_e31, _e29, _e27, _e25);
            loop_did_return_27 = true;
            break;
        }
    }
    let _e185 = loop_result_27;
    return _e185;
}

fn to_quad_bits_gc7cf(a0_91: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_58: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_28_ {
    let _e2 = sign_gc7cf(a0_91);
    let _e3 = project_binary32_quad(_e2, a0_91, fe_trapped_58);
    return _e3;
}

fn impl_ReferenceReal_to_quad_bits(a0_92: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_59: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_28_ {
    var fixed_local_5_4: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e3 = (*a0_92).value;
    fixed_local_5_4 = _e3;
    let _e6 = to_quad_bits_gc7cf((&fixed_local_5_4), fe_trapped_59);
    return _e6;
}

fn impl_PackedReference_from_words(a0_93: u32, a1_54: u32, a2_17: u32, a3_10: u32, a4_7: u32, a5_3: u32, a6_3: u32, a7_3: u32) -> FeLocal_fe_PackedReference_e11ca04a_20_ {
    return FeLocal_fe_PackedReference_e11ca04a_20_(a0_93, a1_54, a2_17, a3_10, a4_7, a5_3, a6_3, a7_3);
}

fn from_fixed(a0_94: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_>, fe_trapped_60: ptr<function, bool>) -> FeLocal_fe_PackedReference_e11ca04a_20_ {
    var fixed_local_5_5: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();

    let _e3 = (*a0_94).re;
    fixed_local_5_5 = _e3;
    let _e6 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_5), fe_trapped_60);
    let _e12 = (*a0_94).im;
    fixed_local_5_5 = _e12;
    let _e13 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_5), fe_trapped_60);
    let _e18 = impl_PackedReference_from_words(_e6.f0_, _e6.f1_, _e6.f2_, _e6.f3_, _e13.f0_, _e13.f1_, _e13.f2_, _e13.f3_);
    return _e18;
}

fn from_metadata(a0_95: u32, a1_55: u32) -> FeLocal_fe_PackedReference_e11ca04a_20_ {
    var fixed_local_3_2: FeLocal_fe_PackedReference_e11ca04a_20_ = FeLocal_fe_PackedReference_e11ca04a_20_();

    let _e2 = impl_trait_PackedReference_default();
    fixed_local_3_2 = _e2;
    fixed_local_3_2.re_w0_bits = a0_95;
    fixed_local_3_2.re_w1_bits = a1_55;
    let _e7 = fixed_local_3_2;
    return _e7;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: bool = bool();
    var fixed_local_560_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var fixed_local_667_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var local_3: u32;
    var local_4: bool = false;
    var local_5: bool = bool();
    var local_6: u32;
    var local_7: bool = false;
    var local_8: bool = bool();
    var local_9: u32;
    var local_10: bool = false;
    var local_11: bool = bool();
    var local_12: u32;
    var local_13: bool = false;
    var local_14: bool = bool();
    var local_15: u32 = u32();
    var local_16: FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_ = FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_();
    var fixed_local_1138_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var local_17: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var local_18: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var local_19: bool = bool();
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_1232_: bool;
    var local_22: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var local_23: u32 = u32();
    var fixed_local_1234_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var fixed_local_1236_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var fixed_local_1374_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var fixed_local_1271_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var local_24: bool = bool();
    var local_25: FeLocal_fe_ReferenceControl_7d077120_3_ = FeLocal_fe_ReferenceControl_7d077120_3_();
    var fixed_local_1426_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_1429_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_1537_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_21_();
    var fixed_local_1539_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_1542_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var local_26: u32;
    var local_27: bool = false;
    var local_28: FeLocal_fe_ViewCache_da6e2ccc_23_ = FeLocal_fe_ViewCache_da6e2ccc_23_();
    var fixed_local_943_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var fixed_local_1015_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var fixed_local_1080_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var fixed_local_1803_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var fixed_local_1904_: FeLocal_fe_PreviewCache_6792a3e2_27_ = FeLocal_fe_PreviewCache_6792a3e2_27_();
    var local_29: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_1968_: bool;
    var local_30: bool = bool();
    var local_31: bool = bool();

    let _e9 = params.p16_;
    let _e11 = params.p17_;
    let _e13 = params.p18_;
    let _e15 = params.p19_;
    let _e17 = params.p20_;
    let _e19 = params.p21_;
    let _e21 = params.p22_;
    let _e23 = params.p23_;
    let _e25 = params.p24_;
    let _e27 = params.p25_;
    let _e29 = params.p26_;
    let _e31 = params.p27_;
    let _e33 = params.p28_;
    let _e35 = params.p29_;
    let _e37 = params.p30_;
    let _e39 = params.p31_;
    let _e43 = params.p32_;
    let _e45 = params.p33_;
    let _e47 = params.p34_;
    let _e49 = params.p35_;
    let _e53 = params.p36_;
    let _e55 = params.p37_;
    let _e57 = params.p38_;
    let _e59 = params.p39_;
    let _e63 = params.p40_;
    let _e65 = params.p41_;
    let _e67 = params.p42_;
    let _e69 = params.p43_;
    let _e73 = params.p44_;
    let _e75 = params.p45_;
    let _e77 = params.p46_;
    let _e79 = params.p47_;
    let _e83 = params.p48_;
    let _e85 = params.p49_;
    let _e87 = params.p50_;
    let _e89 = params.p51_;
    let _e93 = params.p52_;
    let _e95 = params.p53_;
    let _e97 = params.p54_;
    let _e99 = params.p55_;
    let _e103 = params.p56_;
    let _e105 = params.p57_;
    let _e107 = params.p58_;
    let _e109 = params.p59_;
    let _e113 = params.p60_;
    let _e115 = params.p61_;
    let _e117 = params.p62_;
    let _e119 = params.p63_;
    let _e123 = params.p64_;
    let _e125 = params.p65_;
    let _e127 = params.p66_;
    let _e129 = params.p67_;
    let _e133 = params.p68_;
    let _e135 = params.p69_;
    let _e137 = params.p70_;
    let _e139 = params.p71_;
    let _e141 = params.p72_;
    let _e143 = params.p73_;
    let _e145 = params.p74_;
    let _e147 = params.p75_;
    let _e151 = params.p76_;
    let _e165 = FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e9, FeLocal_fe_More_More_Last_60a5ba63_6_(_e11, FeLocal_fe_More_Last_1ac585f5_5_(_e13, FeLocal_fe_Last_eb970eb0_4_(_e15))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e17, FeLocal_fe_More_More_Last_60a5ba63_6_(_e19, FeLocal_fe_More_Last_1ac585f5_5_(_e21, FeLocal_fe_Last_eb970eb0_4_(_e23)))))), _e25, _e27);
    let _e193 = FeLocal_fe_MandelbrotViewState_c524184f_17_(_e165, _e29, _e31, _e33, _e35, _e37, FeLocal_fe_GestureSession_6b679731_15_(FeLocal_fe_Contacts_10_9aa61bf4_13_(array<FeLocal_fe_Contact_2b5c3d26_12_, 10>(FeLocal_fe_Contact_2b5c3d26_12_((_e39 != 0u), _e43, FeLocal_fe_Vec2_f32_2772165c_11_(_e45, _e47)), FeLocal_fe_Contact_2b5c3d26_12_((_e49 != 0u), _e53, FeLocal_fe_Vec2_f32_2772165c_11_(_e55, _e57)), FeLocal_fe_Contact_2b5c3d26_12_((_e59 != 0u), _e63, FeLocal_fe_Vec2_f32_2772165c_11_(_e65, _e67)), FeLocal_fe_Contact_2b5c3d26_12_((_e69 != 0u), _e73, FeLocal_fe_Vec2_f32_2772165c_11_(_e75, _e77)), FeLocal_fe_Contact_2b5c3d26_12_((_e79 != 0u), _e83, FeLocal_fe_Vec2_f32_2772165c_11_(_e85, _e87)), FeLocal_fe_Contact_2b5c3d26_12_((_e89 != 0u), _e93, FeLocal_fe_Vec2_f32_2772165c_11_(_e95, _e97)), FeLocal_fe_Contact_2b5c3d26_12_((_e99 != 0u), _e103, FeLocal_fe_Vec2_f32_2772165c_11_(_e105, _e107)), FeLocal_fe_Contact_2b5c3d26_12_((_e109 != 0u), _e113, FeLocal_fe_Vec2_f32_2772165c_11_(_e115, _e117)), FeLocal_fe_Contact_2b5c3d26_12_((_e119 != 0u), _e123, FeLocal_fe_Vec2_f32_2772165c_11_(_e125, _e127)), FeLocal_fe_Contact_2b5c3d26_12_((_e129 != 0u), _e133, FeLocal_fe_Vec2_f32_2772165c_11_(_e135, _e137)))), FeLocal_fe_Viewport_91e53b90_14_(FeLocal_fe_Vec2_f32_2772165c_11_(_e139, _e141), FeLocal_fe_Vec2_f32_2772165c_11_(_e143, _e145))), FeLocal_fe_BackingRequest_2bcae9f8_16_((_e147 != 0u), _e151));
    let _e198 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e200 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e202 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e204 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e206 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e208 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e210 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e212 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e214 = cache[i32(0u)].camera_u002e_zoom;
    let _e216 = cache[i32(0u)].camera_u002e_res;
    let _e218 = cache[i32(0u)].cursor;
    let _e220 = cache[i32(0u)].aa;
    let _e222 = cache[i32(0u)].budget;
    let _e224 = cache[i32(0u)].radius;
    let _e226 = cache[i32(0u)].preview_dirty;
    let _e228 = cache[i32(0u)].blur_dirty;
    let _e230 = cache[i32(0u)].epoch;
    let _e232 = cache[i32(0u)].completed;
    let _e250 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e252 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e254 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e256 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e258 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e260 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e262 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e264 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e266 = cache[i32(2u)].camera_u002e_zoom;
    let _e268 = cache[i32(2u)].camera_u002e_res;
    let _e270 = cache[i32(2u)].cursor;
    let _e272 = cache[i32(2u)].aa;
    let _e274 = cache[i32(2u)].budget;
    let _e276 = cache[i32(2u)].radius;
    let _e278 = cache[i32(2u)].preview_dirty;
    let _e280 = cache[i32(2u)].blur_dirty;
    let _e282 = cache[i32(2u)].epoch;
    let _e284 = cache[i32(2u)].completed;
    let _e302 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e304 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e306 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e308 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e310 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e312 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e314 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e316 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e318 = preview_cache[i32(0u)].camera_u002e_zoom;
    let _e320 = preview_cache[i32(0u)].camera_u002e_res;
    let _e322 = preview_cache[i32(0u)].reference_generation;
    let _e324 = preview_cache[i32(0u)].reference_bank;
    let _e326 = preview_cache[i32(0u)].prefix_only;
    let _e328 = preview_cache[i32(0u)].step_target;
    let _e330 = preview_cache[i32(0u)].completed_steps;
    let _e332 = preview_cache[i32(0u)].budget;
    let _e334 = preview_cache[i32(0u)].epoch;
    let _e336 = preview_cache[i32(0u)].completed;
    let _e338 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
    let _e340 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
    let _e342 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
    let _e344 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
    fixed_local_560_ = _e193;
    let _e363 = input_age((&fixed_local_560_));
    let _e364 = iteration_limit(_e25, (&fe_trapped));
    let _e369 = reference[i32(0u)].active_;
    let _e371 = reference[i32(0u)].active_valid;
    let _e373 = reference[i32(0u)].pending;
    let _e375 = reference[i32(0u)].index;
    let _e377 = reference[i32(0u)].zx_s;
    let _e379 = reference[i32(0u)].zy_s;
    let _e381 = reference[i32(0u)].ready_at;
    let _e382 = FeLocal_fe_ReferenceControl_7d077120_3_(_e369, _e371, _e373, _e375, _e377, _e379, _e381);
    let _e386 = anchor[i32(_e369)].center_u002e_re_u002e_lead;
    let _e388 = anchor[i32(_e369)].center_u002e_re_u002e_tail_u002e_lead;
    let _e390 = anchor[i32(_e369)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead;
    let _e392 = anchor[i32(_e369)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e394 = anchor[i32(_e369)].center_u002e_im_u002e_lead;
    let _e396 = anchor[i32(_e369)].center_u002e_im_u002e_tail_u002e_lead;
    let _e398 = anchor[i32(_e369)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead;
    let _e400 = anchor[i32(_e369)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e402 = anchor[i32(_e369)].limit;
    let _e404 = anchor[i32(_e369)].generation;
    fixed_local_667_ = _e193;
    let _e417 = impl_ReferenceAnchor_delta_from(FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e386, FeLocal_fe_More_More_Last_60a5ba63_6_(_e388, FeLocal_fe_More_Last_1ac585f5_5_(_e390, FeLocal_fe_Last_eb970eb0_4_(_e392)))), FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e394, FeLocal_fe_More_More_Last_60a5ba63_6_(_e396, FeLocal_fe_More_Last_1ac585f5_5_(_e398, FeLocal_fe_Last_eb970eb0_4_(_e400))))), _e402, _e404), (&fixed_local_667_), (&fe_trapped));
    let _e418 = iteration_limit(_e25, (&fe_trapped));
    if (_e371 == 1u) {
        if (_e402 < _e418) {
        } else {
            let _e423 = impl_trait_f32_abs(_e417.re);
            if (_e423 <= (_e25 * 0.125f)) {
                let _e428 = impl_trait_f32_abs(_e417.im);
                if (_e428 <= (_e25 * 0.125f)) {
                    local_2 = true;
                }
            }
        }
    }
    let _e437 = local_2;
    if (_e373 == 0u) {
        local_5 = _e437;
    }
    let _e444 = local_5;
    if (_e371 == 1u) {
        local_8 = (_e363 < 60f);
    }
    let _e453 = local_8;
    if _e444 {
        local_11 = true;
    } else {
        local_11 = _e453;
    }
    let _e460 = local_11;
    if _e460 {
    } else {
        let _e462 = (1u - _e369);
        if (1u < _e369) {
            fe_trapped = true;
        } else {
            let _e469 = (_e462 * 8195u);
            let _e470 = (_e462 != 0u);
            if (_e470 && (8195u > (4294967295u / select(1u, _e462, _e470)))) {
                fe_trapped = true;
            } else {
                let _e480 = anchor[i32(_e462)].center_u002e_re_u002e_lead;
                let _e482 = anchor[i32(_e462)].center_u002e_re_u002e_tail_u002e_lead;
                let _e484 = anchor[i32(_e462)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead;
                let _e486 = anchor[i32(_e462)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                let _e488 = anchor[i32(_e462)].center_u002e_im_u002e_lead;
                let _e490 = anchor[i32(_e462)].center_u002e_im_u002e_tail_u002e_lead;
                let _e492 = anchor[i32(_e462)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead;
                let _e494 = anchor[i32(_e462)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                let _e496 = anchor[i32(_e462)].limit;
                let _e498 = anchor[i32(_e462)].generation;
                if (_e498 < _e404) {
                    local_15 = _e404;
                } else {
                    local_15 = _e498;
                }
                let _e513 = local_15;
                if (_e513 > (4294967295u - 1u)) {
                    fe_trapped = true;
                } else {
                    if (_e373 == 0u) {
                        fixed_local_1138_ = _e193;
                        let _e525 = from_state((&fixed_local_1138_), _e418, (_e513 + 1u));
                        anchor[i32(_e462)].center_u002e_re_u002e_lead = _e525.center.re.lead;
                        anchor[i32(_e462)].center_u002e_re_u002e_tail_u002e_lead = _e525.center.re.tail.lead;
                        anchor[i32(_e462)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead = _e525.center.re.tail.tail.lead;
                        anchor[i32(_e462)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e525.center.re.tail.tail.tail.value;
                        anchor[i32(_e462)].center_u002e_im_u002e_lead = _e525.center.im.lead;
                        anchor[i32(_e462)].center_u002e_im_u002e_tail_u002e_lead = _e525.center.im.tail.lead;
                        anchor[i32(_e462)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead = _e525.center.im.tail.tail.lead;
                        anchor[i32(_e462)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e525.center.im.tail.tail.tail.value;
                        anchor[i32(_e462)].limit = _e525.limit;
                        anchor[i32(_e462)].generation = _e525.generation;
                        clear_reference_checkpoint();
                        let _e557 = impl_trait_PackedReference_default();
                        orbit[i32(_e469)].re_w0_bits = _e557.re_w0_bits;
                        orbit[i32(_e469)].re_w1_bits = _e557.re_w1_bits;
                        orbit[i32(_e469)].re_w2_bits = _e557.re_w2_bits;
                        orbit[i32(_e469)].re_w3_bits = _e557.re_w3_bits;
                        orbit[i32(_e469)].im_w0_bits = _e557.im_w0_bits;
                        orbit[i32(_e469)].im_w1_bits = _e557.im_w1_bits;
                        orbit[i32(_e469)].im_w2_bits = _e557.im_w2_bits;
                        orbit[i32(_e469)].im_w3_bits = _e557.im_w3_bits;
                        local_16 = _e525;
                    } else {
                        local_16 = FeLocal_fe_ReferenceAnchor_f9cfd0aa_22_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_18_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e480, FeLocal_fe_More_More_Last_60a5ba63_6_(_e482, FeLocal_fe_More_Last_1ac585f5_5_(_e484, FeLocal_fe_Last_eb970eb0_4_(_e486)))), FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e488, FeLocal_fe_More_More_Last_60a5ba63_6_(_e490, FeLocal_fe_More_Last_1ac585f5_5_(_e492, FeLocal_fe_Last_eb970eb0_4_(_e494))))), _e496, _e498);
                    }
                    let _e580 = local_16;
                    let _e581 = reference_center(_e580, (&fe_trapped));
                    if (_e373 == 0u) {
                        let _e584 = default_gfdd1_((&fe_trapped));
                        local_17 = _e584;
                    } else {
                        let _e585 = load_reference_checkpoint(_e382, (&fe_trapped));
                        local_17 = _e585;
                    }
                    let _e593 = local_17;
                    if (_e373 == 0u) {
                        local_18 = _e593;
                        local_19 = false;
                        local_20 = 0u;
                        local_21 = 0u;
                    } else {
                        local_18 = _e593;
                        local_19 = false;
                        local_20 = _e375;
                        local_21 = 0u;
                    }
                    loop {
                        let _e611 = local_18;
                        let _e613 = local_19;
                        let _e615 = local_20;
                        let _e617 = local_21;
                        let _e619 = (_e617 < 64u);
                        loop_header_carry_1232_ = _e619;
                        if _e619 {
                            if (((_e615 < _e580.limit) == false) | _e613) {
                                break;
                            } else {
                                fixed_local_1234_ = _e611;
                                fixed_local_1236_ = _e581;
                                let _e631 = reference_step((&fixed_local_1234_), (&fixed_local_1236_), (&fe_trapped));
                                if _e631.escaped {
                                    local_22 = _e611;
                                    local_23 = _e615;
                                } else {
                                    let _e635 = (_e469 + _e615);
                                    if (_e469 > (4294967295u - _e615)) {
                                        fe_trapped = true;
                                        break;
                                    } else {
                                        if (_e635 > (4294967295u - 1u)) {
                                            fe_trapped = true;
                                            break;
                                        } else {
                                            fixed_local_1374_ = _e631.value;
                                            let _e647 = from_fixed((&fixed_local_1374_), (&fe_trapped));
                                            orbit[i32((_e635 + 1u))].re_w0_bits = _e647.re_w0_bits;
                                            orbit[i32((_e635 + 1u))].re_w1_bits = _e647.re_w1_bits;
                                            orbit[i32((_e635 + 1u))].re_w2_bits = _e647.re_w2_bits;
                                            orbit[i32((_e635 + 1u))].re_w3_bits = _e647.re_w3_bits;
                                            orbit[i32((_e635 + 1u))].im_w0_bits = _e647.im_w0_bits;
                                            orbit[i32((_e635 + 1u))].im_w1_bits = _e647.im_w1_bits;
                                            orbit[i32((_e635 + 1u))].im_w2_bits = _e647.im_w2_bits;
                                            orbit[i32((_e635 + 1u))].im_w3_bits = _e647.im_w3_bits;
                                            local_22 = _e631.value;
                                            local_23 = (_e615 + 1u);
                                        }
                                    }
                                }
                                let _e673 = local_22;
                                let _e675 = local_23;
                                local_18 = _e673;
                                local_19 = _e631.escaped;
                                local_20 = _e675;
                                local_21 = (_e617 + 1u);
                                continue;
                            }
                        } else {
                            break;
                        }
                    }
                    let _e684 = local_18;
                    let _e686 = local_19;
                    let _e688 = local_20;
                    if (_e469 > (4294967295u - 8193u)) {
                        fe_trapped = true;
                    } else {
                        fixed_local_1271_ = _e581;
                        let _e697 = from_fixed((&fixed_local_1271_), (&fe_trapped));
                        orbit[i32((_e469 + 8193u))].re_w0_bits = _e697.re_w0_bits;
                        orbit[i32((_e469 + 8193u))].re_w1_bits = _e697.re_w1_bits;
                        orbit[i32((_e469 + 8193u))].re_w2_bits = _e697.re_w2_bits;
                        orbit[i32((_e469 + 8193u))].re_w3_bits = _e697.re_w3_bits;
                        orbit[i32((_e469 + 8193u))].im_w0_bits = _e697.im_w0_bits;
                        orbit[i32((_e469 + 8193u))].im_w1_bits = _e697.im_w1_bits;
                        orbit[i32((_e469 + 8193u))].im_w2_bits = _e697.im_w2_bits;
                        orbit[i32((_e469 + 8193u))].im_w3_bits = _e697.im_w3_bits;
                        if (_e469 > (4294967295u - 8194u)) {
                            fe_trapped = true;
                        } else {
                            if (_e688 > (4294967295u - 1u)) {
                                fe_trapped = true;
                            } else {
                                let _e730 = from_metadata((_e688 + 1u), _e580.limit);
                                orbit[i32((_e469 + 8194u))].re_w0_bits = _e730.re_w0_bits;
                                orbit[i32((_e469 + 8194u))].re_w1_bits = _e730.re_w1_bits;
                                orbit[i32((_e469 + 8194u))].re_w2_bits = _e730.re_w2_bits;
                                orbit[i32((_e469 + 8194u))].re_w3_bits = _e730.re_w3_bits;
                                orbit[i32((_e469 + 8194u))].im_w0_bits = _e730.im_w0_bits;
                                orbit[i32((_e469 + 8194u))].im_w1_bits = _e730.im_w1_bits;
                                orbit[i32((_e469 + 8194u))].im_w2_bits = _e730.im_w2_bits;
                                orbit[i32((_e469 + 8194u))].im_w3_bits = _e730.im_w3_bits;
                                if _e686 {
                                    local_24 = true;
                                } else {
                                    if (_e688 < _e580.limit) {
                                    } else {
                                        local_24 = true;
                                    }
                                }
                                let _e757 = local_24;
                                if _e757 {
                                    fixed_local_1426_ = _e684.re;
                                    let _e761 = impl_ReferenceReal_sign((&fixed_local_1426_));
                                    fixed_local_1429_ = _e684.im;
                                    let _e765 = impl_ReferenceReal_sign((&fixed_local_1429_));
                                    let _e766 = publish(_e462, _e688, _e761, _e765, _e29);
                                    local_25 = _e766;
                                } else {
                                    fixed_local_1537_ = _e684;
                                    store_reference_checkpoint((&fixed_local_1537_));
                                    fixed_local_1539_ = _e684.re;
                                    let _e772 = impl_ReferenceReal_sign((&fixed_local_1539_));
                                    fixed_local_1542_ = _e684.im;
                                    let _e776 = impl_ReferenceReal_sign((&fixed_local_1542_));
                                    let _e777 = advance_pending(_e382, _e688, _e772, _e776);
                                    local_25 = _e777;
                                }
                                let _e781 = local_25;
                                reference[i32(0u)].active_ = _e781.active_;
                                reference[i32(0u)].active_valid = _e781.active_valid;
                                reference[i32(0u)].pending = _e781.pending;
                                reference[i32(0u)].index = _e781.index;
                                reference[i32(0u)].zx_s = _e781.zx_s;
                                reference[i32(0u)].zy_s = _e781.zy_s;
                                reference[i32(0u)].ready_at = _e781.ready_at;
                                local_14 = _e757;
                            }
                        }
                    }
                }
            }
        }
    }
    let _e803 = local_14;
    let _e808 = reference[i32(0u)].active_;
    let _e810 = reference[i32(0u)].active_valid;
    let _e812 = reference[i32(0u)].pending;
    let _e814 = reference[i32(0u)].index;
    let _e816 = reference[i32(0u)].zx_s;
    let _e818 = reference[i32(0u)].zy_s;
    let _e820 = reference[i32(0u)].ready_at;
    let _e821 = FeLocal_fe_ReferenceControl_7d077120_3_(_e808, _e810, _e812, _e814, _e816, _e818, _e820);
    fixed_local_943_ = _e193;
    let _e824 = preview_bank(_e821, (&fixed_local_943_), (&fe_trapped));
    let _e828 = anchor[i32(_e824)].generation;
    fixed_local_1015_ = _e193;
    let _e831 = sync_with_view(FeLocal_fe_PreviewCache_6792a3e2_27_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e302, FeLocal_fe_More_More_Last_60a5ba63_6_(_e304, FeLocal_fe_More_Last_1ac585f5_5_(_e306, FeLocal_fe_Last_eb970eb0_4_(_e308))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e310, FeLocal_fe_More_More_Last_60a5ba63_6_(_e312, FeLocal_fe_More_Last_1ac585f5_5_(_e314, FeLocal_fe_Last_eb970eb0_4_(_e316)))))), _e318, _e320), _e322, _e324, _e326, _e328, _e330, _e332, _e334, _e336, FeLocal_fe_HistoryOffsets_646326b2_26_(FeLocal_fe_Complex_f32_87ec9249_19_(_e338, _e340), FeLocal_fe_Complex_f32_87ec9249_19_(_e342, _e344))), (&fixed_local_1015_), _e821, _e828, _e364, (&fe_trapped));
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e831.camera.center.re.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e831.camera.center.re.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e831.camera.center.re.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e831.camera.center.re.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e831.camera.center.im.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e831.camera.center.im.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e831.camera.center.im.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e831.camera.center.im.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_zoom = _e831.camera.zoom;
    preview_cache[i32(0u)].camera_u002e_res = _e831.camera.res;
    preview_cache[i32(0u)].reference_generation = _e831.reference_generation;
    preview_cache[i32(0u)].reference_bank = _e831.reference_bank;
    preview_cache[i32(0u)].prefix_only = _e831.prefix_only;
    preview_cache[i32(0u)].step_target = _e831.step_target;
    preview_cache[i32(0u)].completed_steps = _e831.completed_steps;
    preview_cache[i32(0u)].budget = _e831.budget;
    preview_cache[i32(0u)].epoch = _e831.epoch;
    preview_cache[i32(0u)].completed = _e831.completed;
    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e831.history.full.re;
    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e831.history.full.im;
    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e831.history.initial.re;
    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e831.history.initial.im;
    fixed_local_1080_ = _e193;
    let _e896 = sync_for_frame(FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e198, FeLocal_fe_More_More_Last_60a5ba63_6_(_e200, FeLocal_fe_More_Last_1ac585f5_5_(_e202, FeLocal_fe_Last_eb970eb0_4_(_e204))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e206, FeLocal_fe_More_More_Last_60a5ba63_6_(_e208, FeLocal_fe_More_Last_1ac585f5_5_(_e210, FeLocal_fe_Last_eb970eb0_4_(_e212)))))), _e214, _e216), _e218, _e220, _e222, _e224, _e226, _e228, _e230, _e232), (&fixed_local_1080_), _e821, _e831, FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e250, FeLocal_fe_More_More_Last_60a5ba63_6_(_e252, FeLocal_fe_More_Last_1ac585f5_5_(_e254, FeLocal_fe_Last_eb970eb0_4_(_e256))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e258, FeLocal_fe_More_More_Last_60a5ba63_6_(_e260, FeLocal_fe_More_Last_1ac585f5_5_(_e262, FeLocal_fe_Last_eb970eb0_4_(_e264)))))), _e266, _e268), _e270, _e272, _e274, _e276, _e278, _e280, _e282, _e284), (&fe_trapped));
    if _e803 {
        let _e897 = invalidate_for_new_reference(_e896, (&fe_trapped));
        local_28 = _e897;
    } else {
        local_28 = _e896;
    }
    let _e901 = local_28;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e901.camera.center.re.value.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e901.camera.center.re.value.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e901.camera.center.re.value.tail.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e901.camera.center.re.value.tail.tail.tail.value;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e901.camera.center.im.value.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e901.camera.center.im.value.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e901.camera.center.im.value.tail.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e901.camera.center.im.value.tail.tail.tail.value;
    cache[i32(0u)].camera_u002e_zoom = _e901.camera.zoom;
    cache[i32(0u)].camera_u002e_res = _e901.camera.res;
    cache[i32(0u)].cursor = _e901.cursor;
    cache[i32(0u)].aa = _e901.aa;
    cache[i32(0u)].budget = _e901.budget;
    cache[i32(0u)].radius = _e901.radius;
    cache[i32(0u)].preview_dirty = _e901.preview_dirty;
    cache[i32(0u)].blur_dirty = _e901.blur_dirty;
    cache[i32(0u)].epoch = _e901.epoch;
    cache[i32(0u)].completed = _e901.completed;
    let _e957 = reference[i32(0u)].active_;
    let _e959 = reference[i32(0u)].active_valid;
    let _e961 = reference[i32(0u)].pending;
    let _e966 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e968 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e970 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e972 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e974 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e976 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e978 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e980 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e982 = cache[i32(1u)].camera_u002e_zoom;
    let _e984 = cache[i32(1u)].camera_u002e_res;
    let _e986 = cache[i32(1u)].cursor;
    let _e988 = cache[i32(1u)].aa;
    let _e990 = cache[i32(1u)].budget;
    let _e992 = cache[i32(1u)].radius;
    let _e994 = cache[i32(1u)].preview_dirty;
    let _e996 = cache[i32(1u)].blur_dirty;
    let _e998 = cache[i32(1u)].epoch;
    let _e1000 = cache[i32(1u)].completed;
    let _e1018 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e1020 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e1022 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1024 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1026 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1028 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1030 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1032 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1034 = cache[i32(2u)].camera_u002e_zoom;
    let _e1036 = cache[i32(2u)].camera_u002e_res;
    let _e1038 = cache[i32(2u)].cursor;
    let _e1040 = cache[i32(2u)].aa;
    let _e1042 = cache[i32(2u)].budget;
    let _e1044 = cache[i32(2u)].radius;
    let _e1046 = cache[i32(2u)].preview_dirty;
    let _e1048 = cache[i32(2u)].blur_dirty;
    let _e1050 = cache[i32(2u)].epoch;
    let _e1052 = cache[i32(2u)].completed;
    fixed_local_1803_ = _e193;
    let _e1068 = for_view((&fixed_local_1803_), FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e966, FeLocal_fe_More_More_Last_60a5ba63_6_(_e968, FeLocal_fe_More_Last_1ac585f5_5_(_e970, FeLocal_fe_Last_eb970eb0_4_(_e972))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e974, FeLocal_fe_More_More_Last_60a5ba63_6_(_e976, FeLocal_fe_More_Last_1ac585f5_5_(_e978, FeLocal_fe_Last_eb970eb0_4_(_e980)))))), _e982, _e984), _e986, _e988, _e990, _e992, _e994, _e996, _e998, _e1000), FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1018, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1020, FeLocal_fe_More_Last_1ac585f5_5_(_e1022, FeLocal_fe_Last_eb970eb0_4_(_e1024))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1026, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1028, FeLocal_fe_More_Last_1ac585f5_5_(_e1030, FeLocal_fe_Last_eb970eb0_4_(_e1032)))))), _e1034, _e1036), _e1038, _e1040, _e1042, _e1044, _e1046, _e1048, _e1050, _e1052), (&fe_trapped));
    let _e1073 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e1075 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e1077 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1079 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1081 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1083 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1085 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1087 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1089 = preview_cache[i32(0u)].camera_u002e_zoom;
    let _e1091 = preview_cache[i32(0u)].camera_u002e_res;
    let _e1093 = preview_cache[i32(0u)].reference_generation;
    let _e1095 = preview_cache[i32(0u)].reference_bank;
    let _e1097 = preview_cache[i32(0u)].prefix_only;
    let _e1099 = preview_cache[i32(0u)].step_target;
    let _e1101 = preview_cache[i32(0u)].completed_steps;
    let _e1103 = preview_cache[i32(0u)].budget;
    let _e1105 = preview_cache[i32(0u)].epoch;
    let _e1107 = preview_cache[i32(0u)].completed;
    let _e1109 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
    let _e1111 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
    let _e1113 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
    let _e1115 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
    fixed_local_1904_ = FeLocal_fe_PreviewCache_6792a3e2_27_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1073, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1075, FeLocal_fe_More_Last_1ac585f5_5_(_e1077, FeLocal_fe_Last_eb970eb0_4_(_e1079))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1081, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1083, FeLocal_fe_More_Last_1ac585f5_5_(_e1085, FeLocal_fe_Last_eb970eb0_4_(_e1087)))))), _e1089, _e1091), _e1093, _e1095, _e1097, _e1099, _e1101, _e1103, _e1105, _e1107, FeLocal_fe_HistoryOffsets_646326b2_26_(FeLocal_fe_Complex_f32_87ec9249_19_(_e1109, _e1111), FeLocal_fe_Complex_f32_87ec9249_19_(_e1113, _e1115)));
    fixed_local_1904_.history = _e1068;
    let _e1135 = fixed_local_1904_;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e1135.camera.center.re.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e1135.camera.center.re.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1135.camera.center.re.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1135.camera.center.re.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e1135.camera.center.im.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e1135.camera.center.im.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1135.camera.center.im.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1135.camera.center.im.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_zoom = _e1135.camera.zoom;
    preview_cache[i32(0u)].camera_u002e_res = _e1135.camera.res;
    preview_cache[i32(0u)].reference_generation = _e1135.reference_generation;
    preview_cache[i32(0u)].reference_bank = _e1135.reference_bank;
    preview_cache[i32(0u)].prefix_only = _e1135.prefix_only;
    preview_cache[i32(0u)].step_target = _e1135.step_target;
    preview_cache[i32(0u)].completed_steps = _e1135.completed_steps;
    preview_cache[i32(0u)].budget = _e1135.budget;
    preview_cache[i32(0u)].epoch = _e1135.epoch;
    preview_cache[i32(0u)].completed = _e1135.completed;
    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e1135.history.full.re;
    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e1135.history.full.im;
    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e1135.history.initial.re;
    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e1135.history.initial.im;
    local_29 = 0u;
    loop {
        let _e1203 = local_29;
        let _e1205 = (_e1203 < 2u);
        loop_header_carry_1968_ = _e1205;
        if _e1205 {
            if (_e959 == 1u) {
                if (_e1203 == _e957) {
                    local_30 = true;
                } else {
                    local_30 = false;
                }
            } else {
                local_30 = false;
            }
            let _e1218 = local_30;
            if (_e961 == 1u) {
                if (1u < _e957) {
                    fe_trapped = true;
                    break;
                } else {
                    if (_e1203 == (1u - _e957)) {
                        local_31 = true;
                    } else {
                        local_31 = false;
                    }
                }
            } else {
                local_31 = false;
            }
            let _e1233 = local_31;
            if (_e1218 | _e1233) {
                let _e1242 = orbit[i32(((_e1203 * 8195u) + 8193u))].re_w0_bits;
                let _e1244 = orbit[i32(((_e1203 * 8195u) + 8193u))].re_w1_bits;
                let _e1246 = orbit[i32(((_e1203 * 8195u) + 8193u))].re_w2_bits;
                let _e1248 = orbit[i32(((_e1203 * 8195u) + 8193u))].re_w3_bits;
                let _e1250 = orbit[i32(((_e1203 * 8195u) + 8193u))].im_w0_bits;
                let _e1252 = orbit[i32(((_e1203 * 8195u) + 8193u))].im_w1_bits;
                let _e1254 = orbit[i32(((_e1203 * 8195u) + 8193u))].im_w2_bits;
                let _e1256 = orbit[i32(((_e1203 * 8195u) + 8193u))].im_w3_bits;
                let _e1258 = decode(FeLocal_fe_PackedReference_e11ca04a_20_(_e1242, _e1244, _e1246, _e1248, _e1250, _e1252, _e1254, _e1256));
                let _e1259 = center_value(_e165);
                let _e1260 = center_delta(_e1258, _e1259, (&fe_trapped));
                let _e1264 = ((_e1203 * 8195u) + 8194u);
                let _e1268 = orbit[i32(_e1264)].re_w0_bits;
                let _e1270 = orbit[i32(_e1264)].re_w1_bits;
                let _e1272 = orbit[i32(_e1264)].re_w2_bits;
                let _e1274 = orbit[i32(_e1264)].re_w3_bits;
                let _e1276 = orbit[i32(_e1264)].im_w0_bits;
                let _e1278 = orbit[i32(_e1264)].im_w1_bits;
                let _e1280 = orbit[i32(_e1264)].im_w2_bits;
                let _e1282 = orbit[i32(_e1264)].im_w3_bits;
                let _e1284 = with_center_offset(FeLocal_fe_PackedReference_e11ca04a_20_(_e1268, _e1270, _e1272, _e1274, _e1276, _e1278, _e1280, _e1282), _e1260);
                orbit[i32(_e1264)].re_w0_bits = _e1284.re_w0_bits;
                orbit[i32(_e1264)].re_w1_bits = _e1284.re_w1_bits;
                orbit[i32(_e1264)].re_w2_bits = _e1284.re_w2_bits;
                orbit[i32(_e1264)].re_w3_bits = _e1284.re_w3_bits;
                orbit[i32(_e1264)].im_w0_bits = _e1284.im_w0_bits;
                orbit[i32(_e1264)].im_w1_bits = _e1284.im_w1_bits;
                orbit[i32(_e1264)].im_w2_bits = _e1284.im_w2_bits;
                orbit[i32(_e1264)].im_w3_bits = _e1284.im_w3_bits;
            }
            local_29 = (_e1203 + 1u);
            continue;
        } else {
            loop_did_return_1 = true;
            break;
        }
    }
    let _e1310 = fe_trapped;
    trap[0u] = u32(_e1310);
}
