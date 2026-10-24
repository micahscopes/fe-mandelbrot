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

struct FeLocal_fe_Complex_f32_87ec9249_10_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_11_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_9_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_10_,
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
    baseline_camera: FeLocal_fe_Camera_03494b0d_11_,
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
    camera: FeLocal_fe_Camera_03494b0d_11_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_16_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_17_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_18_,
}

struct FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_ {
    re: FeLocal_fe_More_More_More_Last_e6310ae8_7_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_7_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_31_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_PreviewKey_592da546_26_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    reference_generation: u32,
    reference_bank: u32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_27_ {
    full: FeLocal_fe_Complex_f32_87ec9249_10_,
    initial: FeLocal_fe_Complex_f32_87ec9249_10_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_28_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history: FeLocal_fe_HistoryOffsets_646326b2_27_,
    trace_clock: f32,
}

struct FeLocal_fe_RefinementKey_028ab549_25_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    antialias: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_23_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
    steps: u32,
    frame_clock: f32,
}

struct FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_ {
    center: FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_,
    limit: u32,
    generation: u32,
}

struct FeLocal_fe_PackedReference_e11ca04a_21_ {
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

struct FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ {
    re: FeLocal_fe_ReferenceReal_aede3f8e_2_,
    im: FeLocal_fe_ReferenceReal_aede3f8e_2_,
}

struct FeLocal_fe_ReferenceStep_d9bbc380_30_ {
    value: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_,
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

struct FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
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
    camera_u002e_orientation_u002e_re: f32,
    camera_u002e_orientation_u002e_im: f32,
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
    trace_clock: f32,
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
    camera_u002e_orientation_u002e_re: f32,
    camera_u002e_orientation_u002e_im: f32,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
    steps: u32,
    frame_clock: f32,
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

fn input_age(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> f32 {
    var local_34: f32;
    var local_35: bool = false;
    var local_36: f32 = f32();

    let _e4 = (*a0_).drag_active;
    if (0.5f <= _e4) {
    } else {
        let _e8 = (*a0_).clock;
        let _e10 = (*a0_).last_input;
        local_36 = (_e8 - _e10);
    }
    let _e14 = local_36;
    return _e14;
}

fn iteration_limit(a0_1: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_37: u32 = u32();
    var local_38: f32 = f32();
    var local_39: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_5_: bool;
    var local_40: u32 = u32();
    var local_41: f32 = f32();
    var local_42: u32;
    var local_43: bool = false;
    var local_44: u32 = u32();

    local_37 = 0u;
    local_38 = a0_1;
    local_39 = 0u;
    loop {
        let _e12 = local_37;
        let _e14 = local_38;
        let _e16 = local_39;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_40 = (_e12 + 1u);
                    local_41 = (_e14 * 2f);
                }
            } else {
                local_40 = _e12;
                local_41 = _e14;
            }
            let _e36 = local_40;
            let _e38 = local_41;
            local_37 = _e36;
            local_38 = _e38;
            local_39 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_37;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_44 = 8192u;
        } else {
            local_44 = _e60;
        }
        let _e71 = local_44;
        local_42 = _e71;
        local_43 = true;
    }
    let _e77 = local_43;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_42;
    return _e79;
}

fn center_value(a0_2: FeLocal_fe_Camera_03494b0d_11_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_ {
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_(a0_2.center.re.value, a0_2.center.im.value);
}

fn to_quad(a0_3: FeLocal_fe_More_More_More_Last_e6310ae8_7_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_31_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_31_(a0_3.lead, a0_3.tail.lead, a0_3.tail.tail.lead, a0_3.tail.tail.tail.value);
}

fn std_lib_evm_effects_assert_0f66_(a0_4: bool, fe_trapped_2: ptr<function, bool>) {
    var local_45: u32;
    var local_46: bool = false;

    if a0_4 {
        local_46 = true;
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
    var local_47: u32;
    var local_48: bool = false;

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
        local_47 = (_e4 * 13u);
        local_48 = true;
    }
    let _e31 = local_47;
    return _e31;
}

fn from_binary32_bits_g16d4_(a0_8: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    var local_49: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_50: bool = false;
    var local_51: bool = bool();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_52: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_53: bool = false;
    var local_54: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_55: bool = false;
    var local_56: u32 = u32();
    var local_57: u32 = u32();
    var loop_result_3: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_46_: bool;
    var local_58: u32 = u32();

    let _e5 = (a0_8 & 2147483647u);
    std_lib_evm_effects_assert_0f66_((_e5 < 1174405120u), fe_trapped_8);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_8);
    fixed_local_7_ = _e8;
    if (((a0_8 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_51 = true;
        }
    }
    let _e25 = local_51;
    fixed_local_7_.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_;
        local_52 = _e31;
        local_53 = true;
    }
    let _e153 = local_53;
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
                    local_56 = _e61;
                    local_57 = 0u;
                    loop {
                        let _e75 = local_56;
                        let _e77 = local_57;
                        let _e78 = (_e77 < _e67);
                        loop_header_carry_46_ = _e78;
                        if _e78 {
                            if ((bitcast<i32>(_e75) < bitcast<i32>(24u)) == false) {
                                local_58 = 0u;
                            } else {
                                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e75)) == false) {
                                    local_58 = 0u;
                                } else {
                                    if ((bitcast<i32>(_e75) < bitcast<i32>(0u)) == false) {
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e75, fe_trapped_8);
                                        local_58 = ((_e39 >> _e75) & 8191u);
                                    } else {
                                        let _e102 = (0u - _e75);
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e102, fe_trapped_8);
                                        local_58 = ((_e39 << _e102) & 8191u);
                                    }
                                }
                            }
                            let _e113 = local_58;
                            fixed_local_7_.digits[_e77] = _e113;
                            let _e119 = (_e75 + 13u);
                            if ((((_e75 ^ _e119) & (13u ^ _e119)) & 2147483648u) != 0u) {
                                (*fe_trapped_8) = true;
                                break;
                            }
                            local_56 = _e119;
                            local_57 = (_e77 + 1u);
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
                        local_54 = _e138;
                        local_55 = true;
                    }
                }
                let _e143 = local_55;
                if _e143 {
                }
            }
            let _e145 = local_55;
            if _e145 {
            }
        }
        let _e148 = local_55;
        if _e148 {
        } else {
            (*fe_trapped_8) = true;
        }
        let _e150 = local_54;
        local_52 = _e150;
    }
    let _e155 = local_52;
    return _e155;
}

fn from_f32_g16d4_(a0_9: f32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    let _e3 = from_binary32_bits_g16d4_(bitcast<u32>(a0_9), fe_trapped_9);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_10: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_10: ptr<function, bool>) -> bool {
    var local_59: u32 = u32();
    var loop_result_4: bool;
    var loop_did_return_4: bool = false;
    var loop_header_carry_5_1: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_10);
    local_59 = _e3;
    loop {
        let _e8 = local_59;
        let _e10 = (0u < _e8);
        loop_header_carry_5_1 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_10).digits[_e12];
            let _e18 = (*a1_).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_59 = _e12;
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
    var local_60: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_61: bool = false;
    var fixed_local_22_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_60_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var loop_result_5: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_5: bool = false;
    var loop_header_carry_150_: bool;
    var local_64: bool = bool();
    var fixed_local_95_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_132_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_65: u32 = u32();
    var local_66: u32 = u32();
    var loop_result_6: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_192_: bool;
    var local_67: u32 = u32();
    var local_68: u32 = u32();

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
        local_62 = 0u;
        local_63 = 0u;
        loop {
            let _e72 = local_62;
            let _e74 = local_63;
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
                    local_62 = (_e87 >> 13u);
                    local_63 = (_e74 + 1u);
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
            local_60 = _e110;
            local_61 = true;
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
            local_64 = _e191;
        } else {
            let _e193 = fixed_local_22_.negative;
            local_64 = _e193;
        }
        let _e197 = local_64;
        fixed_local_60_.negative = _e197;
        local_65 = 0u;
        local_66 = 0u;
        loop {
            let _e207 = local_65;
            let _e209 = local_66;
            let _e210 = (_e209 < _e52);
            loop_header_carry_192_ = _e210;
            if _e210 {
                if _e189 {
                    let _e214 = fixed_local_45_.digits[_e209];
                    local_67 = _e214;
                } else {
                    let _e217 = fixed_local_22_.digits[_e209];
                    local_67 = _e217;
                }
                let _e222 = local_67;
                if _e189 {
                    let _e225 = fixed_local_22_.digits[_e209];
                    local_68 = _e225;
                } else {
                    let _e228 = fixed_local_45_.digits[_e209];
                    local_68 = _e228;
                }
                let _e232 = local_68;
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
                            local_65 = (1u - _e247);
                            local_66 = (_e209 + 1u);
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
            local_60 = _e265;
            local_61 = true;
        }
    }
    let _e270 = local_60;
    return _e270;
}

fn from_expansion_g16d4_(a0_12: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    var fixed_local_28_: array<f32, 4> = array<f32, 4>();
    var local_69: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_70: u32 = u32();
    var loop_result_7: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var loop_did_return_7: bool = false;
    var loop_header_carry_34_: bool;

    let _e2 = to_quad(a0_12);
    fixed_local_28_ = array<f32, 4>(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_);
    let _e11 = fixed_local_28_[0];
    let _e12 = from_f32_g16d4_(_e11, fe_trapped_12);
    local_69 = _e12;
    local_70 = 1u;
    loop {
        let _e20 = local_69;
        let _e22 = local_70;
        let _e24 = (_e22 < 4u);
        loop_header_carry_34_ = _e24;
        if _e24 {
            let _e26 = fixed_local_28_[_e22];
            let _e27 = from_f32_g16d4_(_e26, fe_trapped_12);
            let _e52 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e20.digits[8], _e20.digits[9], _e27.negative, _e27.digits[0], _e27.digits[1], _e27.digits[2], _e27.digits[3], _e27.digits[4], _e27.digits[5], _e27.digits[6], _e27.digits[7], _e27.digits[8], _e27.digits[9], fe_trapped_12);
            local_69 = _e52;
            local_70 = (_e22 + 1u);
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
    var local_71: u32;
    var local_72: bool = false;
    var local_73: u32 = u32();

    if ((a0_15 < 4096u) == false) {
        local_73 = 12u;
    } else {
        if ((a0_15 < 2048u) == false) {
            local_73 = 11u;
        } else {
            if ((a0_15 < 1024u) == false) {
                local_73 = 10u;
            } else {
                if ((a0_15 < 512u) == false) {
                    local_73 = 9u;
                } else {
                    if ((a0_15 < 256u) == false) {
                        local_73 = 8u;
                    } else {
                        if ((a0_15 < 128u) == false) {
                            local_73 = 7u;
                        } else {
                            if ((a0_15 < 64u) == false) {
                                local_73 = 6u;
                            } else {
                                if ((a0_15 < 32u) == false) {
                                    local_73 = 5u;
                                } else {
                                    if ((a0_15 < 16u) == false) {
                                        local_73 = 4u;
                                    } else {
                                        if ((a0_15 < 8u) == false) {
                                            local_73 = 3u;
                                        } else {
                                            if ((a0_15 < 4u) == false) {
                                                local_73 = 2u;
                                            } else {
                                                if ((a0_15 < 2u) == false) {
                                                    local_73 = 1u;
                                                } else {
                                                    if (a0_15 == 1u) {
                                                    } else {
                                                        local_73 = 4294967295u;
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
    let _e80 = local_73;
    return _e80;
}

fn highest_bit_g16d4_(a0_16: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_74: u32 = u32();
    var local_75: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_4_: bool;
    var local_76: u32;
    var local_77: bool = false;
    var local_78: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_14);
    local_74 = 0u;
    local_75 = _e2;
    loop {
        let _e10 = local_74;
        let _e12 = local_75;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_16).digits[_e18];
                local_74 = _e21;
                local_75 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_74;
    let _e28 = local_75;
    if (_e26 == 0u) {
        local_78 = 4294967295u;
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
                local_78 = _e58;
            }
        }
    }
    let _e69 = local_78;
    return _e69;
}

fn word_from_g16d4_(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_3: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_79: u32;
    var local_80: bool = false;
    var local_81: u32;
    var local_82: bool = false;
    var local_83: u32 = u32();
    var local_84: u32 = u32();
    var local_85: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_34_1: bool;

    if (bitcast<i32>(a1_3) < bitcast<i32>(0u)) {
        local_79 = 0u;
        local_80 = true;
    }
    let _e77 = local_80;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_3, fe_trapped_15);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_15);
        let _e15 = (a1_3 / 13u);
        if ((_e15 < _e13) == false) {
            local_81 = 0u;
            local_82 = true;
        }
        let _e72 = local_82;
        if _e72 {
        } else {
            let _e24 = (a1_3 % 13u);
            let _e27 = (*a0_17).digits[_e15];
            local_83 = (13u - _e24);
            local_84 = (_e27 >> _e24);
            local_85 = (_e15 + 1u);
            loop {
                let _e41 = local_83;
                let _e43 = local_84;
                let _e45 = local_85;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_1 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_17).digits[_e45];
                        local_83 = (_e41 + 13u);
                        local_84 = (_e43 | (_e51 << _e41));
                        local_85 = (_e45 + 1u);
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
            local_81 = _e69;
        }
        let _e74 = local_81;
        local_79 = _e74;
    }
    let _e79 = local_79;
    return _e79;
}

fn bit_at(a0_18: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_4: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_86: u32;
    var local_87: bool = false;
    var local_88: u32;
    var local_89: bool = false;

    if (bitcast<i32>(a1_4) < bitcast<i32>(0u)) {
        local_86 = 0u;
        local_87 = true;
    }
    let _e38 = local_87;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_4, fe_trapped_16);
        let _e14 = (a1_4 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
        if ((_e14 < _e15) == false) {
            local_88 = 0u;
            local_89 = true;
        }
        let _e33 = local_89;
        if _e33 {
        } else {
            let _e25 = (*a0_18).digits[_e14];
            local_88 = ((_e25 >> (a1_4 % 13u)) & 1u);
        }
        let _e35 = local_88;
        local_86 = _e35;
    }
    let _e40 = local_86;
    return _e40;
}

fn any_below(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_5: u32, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_90: u32;
    var local_91: bool = false;
    var local_92: u32 = u32();
    var local_93: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_15_: bool;
    var local_94: u32;
    var local_95: bool = false;
    var local_96: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_5)) == false) {
        local_90 = 0u;
        local_91 = true;
    }
    let _e65 = local_91;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_5, fe_trapped_17);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_17);
        local_92 = 0u;
        local_93 = 0u;
        loop {
            let _e25 = local_92;
            let _e27 = local_93;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_5 / 13u)) {
                    let _e32 = (*a0_19).digits[_e27];
                    local_92 = (_e25 | _e32);
                    local_93 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_92;
        let _e42 = local_93;
        if (_e42 < _e16) {
            let _e50 = (*a0_19).digits[_e42];
            let _e52 = (1u << (a1_5 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_17) = true;
            } else {
                local_96 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_96 = _e40;
        }
        let _e62 = local_96;
        local_90 = _e62;
    }
    let _e67 = local_90;
    return _e67;
}

fn project_binary32_(a0_20: u32, a1_6: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_97: u32;
    var local_98: bool = false;
    var local_99: u32 = u32();
    var local_100: u32 = u32();
    var local_101: u32 = u32();
    var local_102: u32 = u32();
    var local_103: u32 = u32();

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
                    local_100 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from_g16d4_(a1_6, _e32, fe_trapped_18);
                    local_100 = _e42;
                }
                let _e47 = local_100;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_6, _e49, fe_trapped_18);
                let _e51 = any_below(a1_6, _e49, fe_trapped_18);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_101 = 1u;
                    } else {
                        local_101 = (_e47 & 1u);
                    }
                }
                let _e64 = local_101;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_18) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_18) = true;
                        } else {
                            local_102 = 8388608u;
                            local_103 = _e77;
                        }
                    } else {
                        local_102 = _e66;
                        local_103 = _e23;
                    }
                    let _e90 = local_102;
                    let _e92 = local_103;
                    local_99 = (((a0_20 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_99;
    return _e103;
}

fn to_binary32_bits(a0_21: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_104: u32;
    var local_105: bool = false;
    var local_106: u32 = u32();

    let _e5 = (*a0_21).negative;
    if _e5 {
        local_106 = 1u;
    }
    let _e9 = local_106;
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

fn center_delta(a0_24: FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_, a1_8: FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_, fe_trapped_22: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    let _e5 = expansion_difference(a0_24.re, a1_8.re, fe_trapped_22);
    let _e8 = expansion_difference(a0_24.im, a1_8.im, fe_trapped_22);
    return FeLocal_fe_Complex_f32_87ec9249_10_(_e5, _e8);
}

fn impl_ReferenceAnchor_delta_from(a0_25: FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_, a1_9: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, fe_trapped_23: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    let _e5 = (*a1_9).camera;
    let _e6 = center_value(_e5);
    let _e7 = center_delta(a0_25.center, _e6, fe_trapped_23);
    return _e7;
}

fn impl_trait_f32_abs(a0_26: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_26) & 2147483647u));
}

fn is_input_settled(a0_27: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> bool {
    var local_107: bool;
    var local_108: bool = false;
    var local_109: bool = bool();

    let _e4 = (*a0_27).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_27).clock;
        let _e10 = (*a0_27).last_input;
        if (60f <= (_e8 - _e10)) {
            local_109 = true;
        }
    }
    let _e17 = local_109;
    return _e17;
}

fn preview_uses_pending(a0_28: u32, a1_10: u32, a2_1: u32, a3_1: bool) -> bool {
    var local_110: bool;
    var local_111: bool = false;
    var local_112: bool = bool();

    if (a1_10 == 1u) {
        if (0u < a2_1) {
            if ((a0_28 == 0u) | a3_1) {
                local_112 = true;
            }
        }
    }
    let _e16 = local_112;
    return _e16;
}

fn select_preview_bank(a0_29: u32, a1_11: u32, a2_2: u32, a3_2: u32, a4_1: bool, fe_trapped_24: ptr<function, bool>) -> u32 {
    var local_113: u32;
    var local_114: bool = false;
    var local_115: u32 = u32();

    let _e8 = preview_uses_pending(a1_11, a2_2, a3_2, a4_1);
    if _e8 {
        if (1u < a0_29) {
            (*fe_trapped_24) = true;
        } else {
            local_115 = (1u - a0_29);
        }
    } else {
        local_115 = a0_29;
    }
    let _e16 = local_115;
    return _e16;
}

fn preview_bank(a0_30: FeLocal_fe_ReferenceControl_7d077120_3_, a1_12: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, fe_trapped_25: ptr<function, bool>) -> u32 {
    let _e7 = is_input_settled(a1_12);
    let _e8 = select_preview_bank(a0_30.active_, a0_30.active_valid, a0_30.pending, a0_30.index, _e7, fe_trapped_25);
    return _e8;
}

fn key(a0_31: FeLocal_fe_PreviewCache_6792a3e2_28_) -> FeLocal_fe_PreviewKey_592da546_26_ {
    return FeLocal_fe_PreviewKey_592da546_26_(a0_31.camera, a0_31.reference_generation, a0_31.reference_bank);
}

fn precision_lib_impl_trait_Last_915d_eq_6590_(a0_32: f32, a1_13: f32) -> bool {
    return (a0_32 == a1_13);
}

fn precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_33: FeLocal_fe_More_Last_1ac585f5_5_, a1_14: FeLocal_fe_More_Last_1ac585f5_5_) -> bool {
    var local_116: bool;
    var local_117: bool = false;
    var local_118: bool = bool();

    if (a0_33.lead == a1_14.lead) {
        let _e11 = precision_lib_impl_trait_Last_915d_eq_6590_(a0_33.tail.value, a1_14.tail.value);
        if _e11 {
            local_118 = true;
        }
    }
    let _e15 = local_118;
    return _e15;
}

fn precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_34: FeLocal_fe_More_More_Last_60a5ba63_6_, a1_15: FeLocal_fe_More_More_Last_60a5ba63_6_) -> bool {
    var local_119: bool;
    var local_120: bool = false;
    var local_121: bool = bool();

    if (a0_34.lead == a1_15.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_34.tail, a1_15.tail);
        if _e9 {
            local_121 = true;
        }
    }
    let _e13 = local_121;
    return _e13;
}

fn precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_35: FeLocal_fe_More_More_More_Last_e6310ae8_7_, a1_16: FeLocal_fe_More_More_More_Last_e6310ae8_7_) -> bool {
    var local_122: bool;
    var local_123: bool = false;
    var local_124: bool = bool();

    if (a0_35.lead == a1_16.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_35.tail, a1_16.tail);
        if _e9 {
            local_124 = true;
        }
    }
    let _e13 = local_124;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_36: FeLocal_fe_Coordinate_bdc10f09_8_, a1_17: FeLocal_fe_Coordinate_bdc10f09_8_) -> bool {
    var local_125: bool;
    var local_126: bool = false;
    var local_127: bool = bool();

    let _e6 = precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_36.value, a1_17.value);
    if _e6 {
        local_127 = true;
    }
    let _e10 = local_127;
    return _e10;
}

fn algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_37: FeLocal_fe_Complex_Coordinate_d4657101_9_, a1_18: FeLocal_fe_Complex_Coordinate_d4657101_9_) -> bool {
    var local_128: bool;
    var local_129: bool = false;
    var local_130: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_37.re, a1_18.re);
    if _e6 {
        let _e9 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_37.im, a1_18.im);
        if _e9 {
            local_130 = true;
        }
    }
    let _e13 = local_130;
    return _e13;
}

fn algebra_lib_impl_trait_Complex_bbfa_eq_ge58b_4587_(a0_38: FeLocal_fe_Complex_f32_87ec9249_10_, a1_19: FeLocal_fe_Complex_f32_87ec9249_10_) -> bool {
    var local_131: bool;
    var local_132: bool = false;
    var local_133: bool = bool();

    if (a0_38.re == a1_19.re) {
        if (a0_38.im == a1_19.im) {
            local_133 = true;
        }
    }
    let _e13 = local_133;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_39: FeLocal_fe_Camera_03494b0d_11_, a1_20: FeLocal_fe_Camera_03494b0d_11_) -> bool {
    var local_134: bool;
    var local_135: bool = false;
    var local_136: bool = bool();

    let _e6 = algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_39.center, a1_20.center);
    if _e6 {
        if (a0_39.zoom == a1_20.zoom) {
            if (a0_39.res == a1_20.res) {
                let _e15 = algebra_lib_impl_trait_Complex_bbfa_eq_ge58b_4587_(a0_39.orientation, a1_20.orientation);
                if _e15 {
                    local_136 = true;
                }
            }
        }
    }
    let _e19 = local_136;
    return _e19;
}

fn impl_trait_PreviewKey_eq(a0_40: FeLocal_fe_PreviewKey_592da546_26_, a1_21: FeLocal_fe_PreviewKey_592da546_26_) -> bool {
    var local_137: bool;
    var local_138: bool = false;
    var local_139: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_40.camera, a1_21.camera);
    if _e6 {
        if (a0_40.reference_generation == a1_21.reference_generation) {
            if (a0_40.reference_bank == a1_21.reference_bank) {
                local_139 = true;
            }
        }
    }
    let _e16 = local_139;
    return _e16;
}

fn uses_pending_for_preview(a0_41: FeLocal_fe_ReferenceControl_7d077120_3_, a1_22: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> bool {
    let _e5 = is_input_settled(a1_22);
    let _e6 = preview_uses_pending(a0_41.active_valid, a0_41.pending, a0_41.index, _e5);
    return _e6;
}

fn preview_has_reference(a0_42: u32, a1_23: u32, a2_3: u32) -> bool {
    var local_140: bool;
    var local_141: bool = false;
    var local_142: bool = bool();

    if (a0_42 == 1u) {
        local_142 = true;
    } else {
        if (a1_23 == 1u) {
            if (0u < a2_3) {
                local_142 = true;
            }
        }
    }
    let _e16 = local_142;
    return _e16;
}

fn has_preview_reference(a0_43: FeLocal_fe_ReferenceControl_7d077120_3_) -> bool {
    let _e4 = preview_has_reference(a0_43.active_valid, a0_43.pending, a0_43.index);
    return _e4;
}

fn available_preview_steps(a0_44: FeLocal_fe_ReferenceControl_7d077120_3_, a1_24: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a2_4: u32) -> u32 {
    var local_143: u32;
    var local_144: bool = false;
    var local_145: u32 = u32();

    let _e5 = has_preview_reference(a0_44);
    if (_e5 == false) {
    } else {
        let _e8 = uses_pending_for_preview(a0_44, a1_24);
        if _e8 {
            if (a0_44.index < a2_4) {
                local_145 = a0_44.index;
            } else {
                local_145 = a2_4;
            }
        } else {
            local_145 = a2_4;
        }
    }
    let _e16 = local_145;
    return _e16;
}

fn next_preview_step_target(a0_45: u32, a1_25: u32, fe_trapped_26: ptr<function, bool>) -> u32 {
    var local_146: u32;
    var local_147: bool = false;
    var local_148: u32;
    var local_149: bool = false;
    var local_150: u32 = u32();

    let _e6 = (a0_45 + 256u);
    if (a0_45 > (4294967295u - 256u)) {
        (*fe_trapped_26) = true;
    }
    if (_e6 < a1_25) {
        local_150 = _e6;
    } else {
        local_150 = a1_25;
    }
    let _e16 = local_150;
    return _e16;
}

fn preview_is_completed(a0_46: u32, a1_26: u32, a2_5: u32) -> bool {
    var local_151: bool;
    var local_152: bool = false;
    var local_153: bool = bool();

    if (a0_46 == 0u) {
        if (0u < a2_5) {
            if ((a1_26 < a2_5) == false) {
                local_153 = true;
            }
        }
    }
    let _e15 = local_153;
    return _e15;
}

fn sync_with_view(a0_47: FeLocal_fe_PreviewCache_6792a3e2_28_, a1_27: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a2_6: FeLocal_fe_ReferenceControl_7d077120_3_, a3_3: u32, a4_2: u32, fe_trapped_27: ptr<function, bool>) -> FeLocal_fe_PreviewCache_6792a3e2_28_ {
    var local_154: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_155: bool = false;
    var local_156: bool = bool();
    var local_157: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_158: bool = false;
    var local_159: u32 = u32();
    var local_160: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_161: bool = false;
    var local_162: u32 = u32();
    var local_163: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_164: bool = false;
    var local_165: u32 = u32();
    var local_166: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_167: bool = false;
    var local_168: u32 = u32();

    let _e9 = (*a1_27).camera;
    let _e10 = preview_bank(a2_6, a1_27, fe_trapped_27);
    let _e12 = key(a0_47);
    let _e13 = impl_trait_PreviewKey_eq(_e12, FeLocal_fe_PreviewKey_592da546_26_(_e9, a3_3, _e10));
    if _e13 {
        if (a0_47.budget == a4_2) {
            if ((a0_47.epoch == 0u) == false) {
                local_156 = true;
            }
        }
    }
    let _e26 = local_156;
    let _e27 = uses_pending_for_preview(a2_6, a1_27);
    if _e27 {
        local_159 = 1u;
    }
    let _e33 = local_159;
    let _e34 = available_preview_steps(a2_6, a1_27, a4_2);
    if _e26 {
        local_162 = a0_47.completed_steps;
    }
    let _e40 = local_162;
    let _e41 = next_preview_step_target(_e40, _e34, fe_trapped_27);
    if _e26 {
        let _e42 = preview_is_completed(_e33, _e40, a4_2);
        if _e42 {
            local_165 = a0_47.completed;
        }
    }
    let _e48 = local_165;
    let _e49 = preview_bank(a2_6, a1_27, fe_trapped_27);
    if _e26 {
        local_168 = a0_47.epoch;
    } else {
        if (a0_47.epoch > (4294967295u - 1u)) {
            (*fe_trapped_27) = true;
        } else {
            local_168 = (a0_47.epoch + 1u);
        }
    }
    let _e61 = local_168;
    return FeLocal_fe_PreviewCache_6792a3e2_28_(_e9, a3_3, _e49, _e33, _e41, _e40, a4_2, _e61, _e48, a0_47.history, a0_47.trace_clock);
}

fn max_(a0_48: f32, a1_28: f32) -> f32 {
    var local_169: f32;
    var local_170: bool = false;
    var local_171: f32 = f32();

    if (a1_28 < a0_48) {
        local_171 = a0_48;
    } else {
        local_171 = a1_28;
    }
    let _e8 = local_171;
    return _e8;
}

fn display_age(a0_49: FeLocal_fe_ReferenceControl_7d077120_3_, a1_29: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> f32 {
    var local_172: f32;
    var local_173: bool = false;
    var local_174: f32 = f32();

    let _e5 = (*a1_29).drag_active;
    if (0.5f <= _e5) {
    } else {
        if (a0_49.pending == 1u) {
        } else {
            let _e12 = (*a1_29).clock;
            let _e14 = (*a1_29).last_input;
            let _e16 = max_(_e14, a0_49.ready_at);
            let _e19 = max_(0f, (_e12 - _e16));
            local_174 = _e19;
        }
    }
    let _e22 = local_174;
    return _e22;
}

fn clamp_f(a0_50: f32, a1_30: f32, a2_7: f32) -> f32 {
    var local_175: f32;
    var local_176: bool = false;
    var local_177: f32 = f32();

    if (a0_50 < a1_30) {
        local_177 = a1_30;
    } else {
        if (a2_7 < a0_50) {
            local_177 = a2_7;
        } else {
            local_177 = a0_50;
        }
    }
    let _e11 = local_177;
    return _e11;
}

fn progress(a0_51: f32, a1_31: f32, a2_8: f32) -> f32 {
    let _e7 = clamp_f(((a0_51 - a1_31) / a2_8), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_52: f32) -> f32 {
    let _e3 = progress(a0_52, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn impl_ViewCache_refinement_key(a0_53: FeLocal_fe_ViewCache_da6e2ccc_23_) -> FeLocal_fe_RefinementKey_028ab549_25_ {
    return FeLocal_fe_RefinementKey_028ab549_25_(a0_53.camera, a0_53.aa);
}

fn impl_MandelbrotViewState_refinement_key(a0_54: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> FeLocal_fe_RefinementKey_028ab549_25_ {
    let _e2 = (*a0_54).camera;
    let _e4 = (*a0_54).antialias;
    return FeLocal_fe_RefinementKey_028ab549_25_(_e2, _e4);
}

fn impl_trait_RefinementKey_eq(a0_55: FeLocal_fe_RefinementKey_028ab549_25_, a1_32: FeLocal_fe_RefinementKey_028ab549_25_) -> bool {
    var local_178: bool;
    var local_179: bool = false;
    var local_180: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_55.camera, a1_32.camera);
    if _e6 {
        if (a0_55.antialias == a1_32.antialias) {
            local_180 = true;
        }
    }
    let _e13 = local_180;
    return _e13;
}

fn sync_for_frame(a0_56: FeLocal_fe_ViewCache_da6e2ccc_23_, a1_33: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a2_9: FeLocal_fe_ReferenceControl_7d077120_3_, a3_4: FeLocal_fe_PreviewCache_6792a3e2_28_, a4_3: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_28: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_23_ {
    var local_181: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_182: bool = false;
    var local_183: bool = bool();
    var local_184: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_185: bool = false;
    var local_186: u32 = u32();
    var local_187: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_188: bool = false;
    var local_189: u32 = u32();
    var local_190: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_191: bool = false;
    var local_192: u32 = u32();
    var local_193: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_194: bool = false;
    var local_195: u32 = u32();
    var local_196: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_197: bool = false;
    var local_198: u32 = u32();

    let _e9 = display_age(a2_9, a1_33);
    let _e10 = blur_radius(_e9);
    let _e11 = impl_ViewCache_refinement_key(a0_56);
    let _e12 = impl_MandelbrotViewState_refinement_key(a1_33);
    let _e13 = impl_trait_RefinementKey_eq(_e11, _e12);
    if (a4_3.completed == 1u) {
        if (a4_3.epoch == a0_56.epoch) {
            local_183 = true;
        }
    }
    let _e25 = local_183;
    let _e26 = has_preview_reference(a2_9);
    if (_e26 == false) {
    } else {
        if _e13 {
            if (a0_56.budget == a3_4.budget) {
                if (a3_4.completed == 1u) {
                    if (((360f <= _e9) == false) | (_e25 == false)) {
                        local_186 = 1u;
                    }
                } else {
                    local_186 = 1u;
                }
            } else {
                local_186 = 1u;
            }
        } else {
            local_186 = 1u;
        }
    }
    let _e52 = local_186;
    let _e53 = has_preview_reference(a2_9);
    if (_e53 == false) {
    } else {
        if (_e52 == 0u) {
            if (a0_56.radius == _e10) {
            } else {
                local_189 = 1u;
            }
        } else {
            local_189 = 1u;
        }
    }
    let _e67 = local_189;
    let _e69 = (*a1_33).camera;
    if _e13 {
        local_192 = a0_56.cursor;
    }
    let _e75 = local_192;
    let _e77 = (*a1_33).antialias;
    if _e13 {
        local_195 = a0_56.epoch;
    } else {
        if (a0_56.epoch > (4294967295u - 1u)) {
            (*fe_trapped_28) = true;
        } else {
            local_195 = (a0_56.epoch + 1u);
        }
    }
    let _e91 = local_195;
    if _e13 {
        local_198 = a0_56.completed;
    }
    let _e95 = local_198;
    return FeLocal_fe_ViewCache_da6e2ccc_23_(_e69, _e75, _e77, a3_4.budget, _e10, _e52, _e67, _e91, _e95, a0_56.steps, a0_56.frame_clock);
}

fn from_state(a0_57: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a1_34: u32, a2_10: u32) -> FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_ {
    let _e4 = (*a0_57).camera;
    let _e5 = center_value(_e4);
    return FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_(_e5, a1_34, a2_10);
}

fn clear_reference_checkpoint() {
    var local_199: u32 = u32();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_4_1: bool;

    local_199 = 0u;
    loop {
        let _e6 = local_199;
        let _e8 = (_e6 < 16u);
        loop_header_carry_4_1 = _e8;
        if _e8 {
            reference_words[i32(_e6)] = 0u;
            local_199 = (_e6 + 1u);
            continue;
        } else {
            loop_did_return_11 = true;
            break;
        }
    }
    return;
}

fn impl_trait_PackedReference_default() -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    return FeLocal_fe_PackedReference_e11ca04a_21_();
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_29: ptr<function, bool>) -> u32 {
    std_lib_evm_effects_assert_0f66_(true, fe_trapped_29);
    return 8u;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_30: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_30);
    return FeLocal_fe_ArrayFixed_8_78307dfe_0_();
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a0_58: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_31: ptr<function, bool>) -> u32 {
    var local_200: u32;
    var local_201: bool = false;

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
        local_200 = (_e4 * 13u);
        local_201 = true;
    }
    let _e31 = local_200;
    return _e31;
}

fn from_binary32_bits_gc7cf(a0_59: u32, fe_trapped_32: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_202: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_203: bool = false;
    var local_204: bool = bool();
    var fixed_local_7_2: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_205: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_206: bool = false;
    var local_207: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_208: bool = false;
    var local_209: u32 = u32();
    var local_210: u32 = u32();
    var loop_result_12: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_12: bool = false;
    var loop_header_carry_46_1: bool;
    var local_211: u32 = u32();

    let _e5 = (a0_59 & 2147483647u);
    std_lib_evm_effects_assert_0f66_((_e5 < 1174405120u), fe_trapped_32);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_32);
    fixed_local_7_2 = _e8;
    if (((a0_59 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_204 = true;
        }
    }
    let _e25 = local_204;
    fixed_local_7_2.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_2;
        local_205 = _e31;
        local_206 = true;
    }
    let _e153 = local_206;
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
                    local_209 = _e61;
                    local_210 = 0u;
                    loop {
                        let _e75 = local_209;
                        let _e77 = local_210;
                        let _e78 = (_e77 < _e67);
                        loop_header_carry_46_1 = _e78;
                        if _e78 {
                            if ((bitcast<i32>(_e75) < bitcast<i32>(24u)) == false) {
                                local_211 = 0u;
                            } else {
                                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e75)) == false) {
                                    local_211 = 0u;
                                } else {
                                    if ((bitcast<i32>(_e75) < bitcast<i32>(0u)) == false) {
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e75, fe_trapped_32);
                                        local_211 = ((_e39 >> _e75) & 8191u);
                                    } else {
                                        let _e102 = (0u - _e75);
                                        precision_lib_array_fixed_unsigned_word_3f05_(_e102, fe_trapped_32);
                                        local_211 = ((_e39 << _e102) & 8191u);
                                    }
                                }
                            }
                            let _e113 = local_211;
                            fixed_local_7_2.digits[_e77] = _e113;
                            let _e119 = (_e75 + 13u);
                            if ((((_e75 ^ _e119) & (13u ^ _e119)) & 2147483648u) != 0u) {
                                (*fe_trapped_32) = true;
                                break;
                            }
                            local_209 = _e119;
                            local_210 = (_e77 + 1u);
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
                        local_207 = _e138;
                        local_208 = true;
                    }
                }
                let _e143 = local_208;
                if _e143 {
                }
            }
            let _e145 = local_208;
            if _e145 {
            }
        }
        let _e148 = local_208;
        if _e148 {
        } else {
            (*fe_trapped_32) = true;
        }
        let _e150 = local_207;
        local_205 = _e150;
    }
    let _e155 = local_205;
    return _e155;
}

fn from_f32_gc7cf(a0_60: f32, fe_trapped_33: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e3 = from_binary32_bits_gc7cf(bitcast<u32>(a0_60), fe_trapped_33);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_gc7cf_4b9a(a0_61: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_35: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_34: ptr<function, bool>) -> bool {
    var local_212: u32 = u32();
    var loop_result_13: bool;
    var loop_did_return_13: bool = false;
    var loop_header_carry_5_2: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_34);
    local_212 = _e3;
    loop {
        let _e8 = local_212;
        let _e10 = (0u < _e8);
        loop_header_carry_5_2 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_61).digits[_e12];
            let _e18 = (*a1_35).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_212 = _e12;
                continue;
            }
            let _e25 = (*a0_61).digits[_e12];
            let _e28 = (*a1_35).digits[_e12];
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

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_62: bool, a1_36: u32, a2_11: u32, a3_5: u32, a4_4: u32, a5_1: u32, a6_1: u32, a7_1: u32, a8_1: u32, a9_1: bool, a10_1: u32, a11_1: u32, a12_1: u32, a13_1: u32, a14_1: u32, a15_1: u32, a16_1: u32, a17_1: u32, fe_trapped_35: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_213: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_214: bool = false;
    var fixed_local_18_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_37_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_50_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_215: u32 = u32();
    var local_216: u32 = u32();
    var loop_result_14: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_14: bool = false;
    var loop_header_carry_128_: bool;
    var local_217: bool = bool();
    var fixed_local_81_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_112_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_218: u32 = u32();
    var local_219: u32 = u32();
    var loop_result_15: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_15: bool = false;
    var loop_header_carry_170_: bool;
    var local_220: u32 = u32();
    var local_221: u32 = u32();

    fixed_local_18_.negative = a0_62;
    fixed_local_18_.digits[0] = a1_36;
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
        local_215 = 0u;
        local_216 = 0u;
        loop {
            let _e64 = local_215;
            let _e66 = local_216;
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
                    local_215 = (_e79 >> 13u);
                    local_216 = (_e66 + 1u);
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
            local_213 = _e102;
            local_214 = true;
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
            local_217 = _e171;
        } else {
            let _e173 = fixed_local_18_.negative;
            local_217 = _e173;
        }
        let _e177 = local_217;
        fixed_local_50_.negative = _e177;
        local_218 = 0u;
        local_219 = 0u;
        loop {
            let _e187 = local_218;
            let _e189 = local_219;
            let _e190 = (_e189 < _e44);
            loop_header_carry_170_ = _e190;
            if _e190 {
                if _e169 {
                    let _e194 = fixed_local_37_.digits[_e189];
                    local_220 = _e194;
                } else {
                    let _e197 = fixed_local_18_.digits[_e189];
                    local_220 = _e197;
                }
                let _e202 = local_220;
                if _e169 {
                    let _e205 = fixed_local_18_.digits[_e189];
                    local_221 = _e205;
                } else {
                    let _e208 = fixed_local_37_.digits[_e189];
                    local_221 = _e208;
                }
                let _e212 = local_221;
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
                            local_218 = (1u - _e227);
                            local_219 = (_e189 + 1u);
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
            local_213 = _e245;
            local_214 = true;
        }
    }
    let _e250 = local_213;
    return _e250;
}

fn from_expansion_gc7cf(a0_63: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_36: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var fixed_local_28_1: array<f32, 4> = array<f32, 4>();
    var local_222: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_223: u32 = u32();
    var loop_result_16: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_16: bool = false;
    var loop_header_carry_34_2: bool;

    let _e2 = to_quad(a0_63);
    fixed_local_28_1 = array<f32, 4>(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_);
    let _e11 = fixed_local_28_1[0];
    let _e12 = from_f32_gc7cf(_e11, fe_trapped_36);
    local_222 = _e12;
    local_223 = 1u;
    loop {
        let _e20 = local_222;
        let _e22 = local_223;
        let _e24 = (_e22 < 4u);
        loop_header_carry_34_2 = _e24;
        if _e24 {
            let _e26 = fixed_local_28_1[_e22];
            let _e27 = from_f32_gc7cf(_e26, fe_trapped_36);
            let _e48 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(_e20.negative, _e20.digits[0], _e20.digits[1], _e20.digits[2], _e20.digits[3], _e20.digits[4], _e20.digits[5], _e20.digits[6], _e20.digits[7], _e27.negative, _e27.digits[0], _e27.digits[1], _e27.digits[2], _e27.digits[3], _e27.digits[4], _e27.digits[5], _e27.digits[6], _e27.digits[7], fe_trapped_36);
            local_222 = _e48;
            local_223 = (_e22 + 1u);
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

fn impl_ReferenceReal_from_expansion(a0_64: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_37: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e2 = from_expansion_gc7cf(a0_64, fe_trapped_37);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e2);
}

fn reference_center(a0_65: FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_, fe_trapped_38: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ {
    let _e4 = impl_ReferenceReal_from_expansion(a0_65.center.re, fe_trapped_38);
    let _e7 = impl_ReferenceReal_from_expansion(a0_65.center.im, fe_trapped_38);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e4, _e7);
}

fn impl_ReferenceReal_zero(fe_trapped_39: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_39);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e1);
}

fn default_gfdd1_(fe_trapped_40: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ {
    let _e1 = impl_ReferenceReal_zero(fe_trapped_40);
    let _e2 = impl_ReferenceReal_zero(fe_trapped_40);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e1, _e2);
}

fn from_digits(a0_66: bool, a1_37: ptr<function, array<u32, 8>>, fe_trapped_41: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_224: u32 = u32();
    var loop_result_17: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_17: bool = false;
    var loop_header_carry_6_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_41);
    local_224 = 0u;
    loop {
        let _e9 = local_224;
        let _e10 = (_e9 < _e3);
        loop_header_carry_6_ = _e10;
        if _e10 {
            let _e12 = (*a1_37)[_e9];
            std_lib_evm_effects_assert_0f66_((_e12 < 8192u), fe_trapped_41);
            local_224 = (_e9 + 1u);
            continue;
        } else {
            let _e18 = (*a1_37);
            loop_result_17 = FeLocal_fe_ArrayFixed_8_78307dfe_0_(a0_66, _e18);
            loop_did_return_17 = true;
            break;
        }
    }
    let _e25 = loop_result_17;
    return _e25;
}

fn impl_ReferenceReal_from_words(a0_67: u32, a1_38: ptr<function, array<u32, 8>>, fe_trapped_42: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    std_lib_evm_effects_assert_0f66_(((1u < a0_67) == false), fe_trapped_42);
    let _e9 = from_digits((a0_67 == 1u), a1_38, fe_trapped_42);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e9);
}

fn load_reference_checkpoint(a1_39: FeLocal_fe_ReferenceControl_7d077120_3_, fe_trapped_43: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ {
    var fixed_local_3_: array<u32, 8> = array<u32, 8>();
    var fixed_local_19_: array<u32, 8> = array<u32, 8>();
    var local_225: u32 = u32();
    var loop_result_18: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_;
    var loop_did_return_18: bool = false;
    var loop_header_carry_30_: bool;

    local_225 = 0u;
    loop {
        let _e12 = local_225;
        let _e14 = (_e12 < 8u);
        loop_header_carry_30_ = _e14;
        if _e14 {
            let _e17 = reference_words[i32(_e12)];
            fixed_local_3_[_e12] = _e17;
            let _e23 = reference_words[i32((_e12 + 8u))];
            fixed_local_19_[_e12] = _e23;
            local_225 = (_e12 + 1u);
            continue;
        } else {
            let _e29 = impl_ReferenceReal_from_words(a1_39.zx_s, (&fixed_local_3_), fe_trapped_43);
            let _e31 = impl_ReferenceReal_from_words(a1_39.zy_s, (&fixed_local_19_), fe_trapped_43);
            loop_result_18 = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e29, _e31);
            loop_did_return_18 = true;
            break;
        }
    }
    let _e38 = loop_result_18;
    return _e38;
}

fn mul(a0_68: bool, a1_40: u32, a2_12: u32, a3_6: u32, a4_5: u32, a5_2: u32, a6_2: u32, a7_2: u32, a8_2: u32, a9_2: bool, a10_2: u32, a11_2: u32, a12_2: u32, a13_2: u32, a14_2: u32, a15_2: u32, a16_2: u32, a17_2: u32, fe_trapped_44: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var fixed_local_18_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_37_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_50_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_226: u32 = u32();
    var local_227: u32 = u32();
    var loop_result_19: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_19: bool = false;
    var loop_header_carry_63_: bool;
    var local_228: u32 = u32();
    var local_229: u32 = u32();
    var loop_result_20: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_20: bool = false;
    var loop_header_carry_68_: bool;
    var local_230: u32 = u32();
    var local_231: u32 = u32();
    var loop_result_21: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_21: bool = false;
    var loop_header_carry_230_: u32;
    var loop_header_carry_125_: bool;
    var local_232: u32 = u32();
    var local_233: u32 = u32();
    var loop_result_22: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var loop_did_return_22: bool = false;
    var loop_header_carry_150_1: bool;

    fixed_local_18_1.negative = a0_68;
    fixed_local_18_1.digits[0] = a1_40;
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
    local_226 = 0u;
    local_227 = 0u;
    loop {
        let _e63 = local_226;
        let _e65 = local_227;
        let _e66 = (_e65 < _e43);
        loop_header_carry_63_ = _e66;
        if _e66 {
            local_228 = 0u;
            local_229 = 0u;
            loop {
                let _e75 = local_228;
                let _e77 = local_229;
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
                            local_228 = (_e102 >> 13u);
                            local_229 = (_e77 + 1u);
                            continue;
                        }
                    }
                    (*fe_trapped_44) = true;
                    break;
                } else {
                    break;
                }
            }
            let _e119 = local_228;
            if (_e65 < (_e43 - 1u)) {
                let _e126 = fixed_local_50_1.digits[0];
                local_231 = 0u;
                loop {
                    let _e132 = local_231;
                    let _e134 = (_e43 - 1u);
                    let _e135 = (_e132 < _e134);
                    loop_header_carry_230_ = _e134;
                    loop_header_carry_125_ = _e135;
                    if _e135 {
                        let _e140 = fixed_local_50_1.digits[(_e132 + 1u)];
                        fixed_local_50_1.digits[_e132] = _e140;
                        local_231 = (_e132 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                fixed_local_50_1.digits[(_e43 - 1u)] = _e119;
                local_230 = _e126;
            } else {
                local_232 = (_e63 >> 12u);
                local_233 = 0u;
                loop {
                    let _e161 = local_232;
                    let _e163 = local_233;
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
                        local_232 = (_e169 >> 13u);
                        local_233 = (_e163 + 1u);
                        continue;
                    } else {
                        local_230 = _e63;
                        break;
                    }
                }
            }
            let _e187 = local_230;
            if (_e65 > (4294967295u - 1u)) {
            } else {
                local_226 = _e187;
                local_227 = (_e65 + 1u);
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

fn multiply(a0_69: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, a1_41: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_45: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e4 = (*a0_69).value;
    let _e6 = (*a1_41).value;
    let _e27 = mul(_e4.negative, _e4.digits[0], _e4.digits[1], _e4.digits[2], _e4.digits[3], _e4.digits[4], _e4.digits[5], _e4.digits[6], _e4.digits[7], _e6.negative, _e6.digits[0], _e6.digits[1], _e6.digits[2], _e6.digits[3], _e6.digits[4], _e6.digits[5], _e6.digits[6], _e6.digits[7], fe_trapped_45);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e27);
}

fn impl_trait_ReferenceReal_add(a0_70: FeLocal_fe_ReferenceReal_aede3f8e_2_, a1_42: FeLocal_fe_ReferenceReal_aede3f8e_2_, fe_trapped_46: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e25 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_70.value.negative, a0_70.value.digits[0], a0_70.value.digits[1], a0_70.value.digits[2], a0_70.value.digits[3], a0_70.value.digits[4], a0_70.value.digits[5], a0_70.value.digits[6], a0_70.value.digits[7], a1_42.value.negative, a1_42.value.digits[0], a1_42.value.digits[1], a1_42.value.digits[2], a1_42.value.digits[3], a1_42.value.digits[4], a1_42.value.digits[5], a1_42.value.digits[6], a1_42.value.digits[7], fe_trapped_46);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e25);
}

fn magnitude_exceeds_four(a0_71: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_47: ptr<function, bool>) -> bool {
    var local_234: bool;
    var local_235: bool = false;
    var local_236: bool;
    var local_237: bool = false;
    var local_238: u32 = u32();
    var loop_result_23: bool;
    var loop_did_return_23: bool = false;
    var loop_header_carry_18_: u32;
    var loop_header_carry_19_: bool;
    var loop_header_carry_21_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_47);
    let _e8 = (*a0_71).digits[(_e3 - 1u)];
    if (4u < _e8) {
        local_234 = true;
        local_235 = true;
    }
    let _e64 = local_235;
    if _e64 {
    } else {
        if (_e8 < 4u) {
            local_236 = false;
            local_237 = true;
        } else {
            local_238 = 0u;
        }
        let _e59 = local_237;
        if _e59 {
        } else {
            local_238 = 0u;
            loop {
                let _e29 = local_238;
                let _e31 = (_e3 - 1u);
                let _e33 = (_e29 < _e31);
                loop_header_carry_18_ = _e31;
                loop_header_carry_19_ = (_e3 < 1u);
                loop_header_carry_21_ = _e33;
                if _e33 {
                    let _e36 = (*a0_71).digits[_e29];
                    if ((_e36 == 0u) == false) {
                        loop_result_23 = true;
                        loop_did_return_23 = true;
                        break;
                    }
                    local_238 = (_e29 + 1u);
                    continue;
                } else {
                    loop_result_23 = false;
                    loop_did_return_23 = true;
                    break;
                }
            }
            let _e56 = loop_result_23;
            local_236 = _e56;
        }
        let _e61 = local_236;
        local_234 = _e61;
    }
    let _e66 = local_234;
    return _e66;
}

fn escaped(a0_72: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_48: ptr<function, bool>) -> bool {
    var fixed_local_5_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e3 = (*a0_72).value;
    fixed_local_5_ = _e3;
    let _e6 = magnitude_exceeds_four((&fixed_local_5_), fe_trapped_48);
    return _e6;
}

fn neg_gc7cf(a0_73: FeLocal_fe_ArrayFixed_8_78307dfe_0_) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    return FeLocal_fe_ArrayFixed_8_78307dfe_0_((a0_73.negative == false), a0_73.digits);
}

fn sub_gc7cf(a0_74: FeLocal_fe_ArrayFixed_8_78307dfe_0_, a1_43: FeLocal_fe_ArrayFixed_8_78307dfe_0_, fe_trapped_49: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e3 = neg_gc7cf(a1_43);
    let _e24 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_74.negative, a0_74.digits[0], a0_74.digits[1], a0_74.digits[2], a0_74.digits[3], a0_74.digits[4], a0_74.digits[5], a0_74.digits[6], a0_74.digits[7], _e3.negative, _e3.digits[0], _e3.digits[1], _e3.digits[2], _e3.digits[3], _e3.digits[4], _e3.digits[5], _e3.digits[6], _e3.digits[7], fe_trapped_49);
    return _e24;
}

fn impl_trait_ReferenceReal_sub(a0_75: FeLocal_fe_ReferenceReal_aede3f8e_2_, a1_44: FeLocal_fe_ReferenceReal_aede3f8e_2_, fe_trapped_50: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e5 = sub_gc7cf(a0_75.value, a1_44.value, fe_trapped_50);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e5);
}

fn reference_step(a0_76: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>, a1_45: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>, fe_trapped_51: ptr<function, bool>) -> FeLocal_fe_ReferenceStep_d9bbc380_30_ {
    var local_239: FeLocal_fe_ReferenceStep_d9bbc380_30_;
    var local_240: bool = false;
    var local_241: FeLocal_fe_ReferenceStep_d9bbc380_30_ = FeLocal_fe_ReferenceStep_d9bbc380_30_();
    var fixed_local_6_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_11_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_14_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_27_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_28_2: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();

    let _e6 = (*a0_76).re;
    fixed_local_6_ = _e6;
    let _e9 = multiply((&fixed_local_6_), (&fixed_local_6_), fe_trapped_51);
    let _e11 = (*a0_76).im;
    fixed_local_11_ = _e11;
    let _e14 = multiply((&fixed_local_11_), (&fixed_local_11_), fe_trapped_51);
    let _e15 = impl_trait_ReferenceReal_add(_e9, _e14, fe_trapped_51);
    fixed_local_14_ = _e15;
    let _e18 = escaped((&fixed_local_14_), fe_trapped_51);
    if _e18 {
        let _e19 = (*a0_76);
        local_241 = FeLocal_fe_ReferenceStep_d9bbc380_30_(_e19, true);
    } else {
        let _e23 = (*a0_76).re;
        let _e25 = (*a0_76).im;
        fixed_local_27_ = _e23;
        fixed_local_28_2 = _e25;
        let _e30 = multiply((&fixed_local_27_), (&fixed_local_28_2), fe_trapped_51);
        let _e31 = impl_trait_ReferenceReal_sub(_e9, _e14, fe_trapped_51);
        let _e33 = (*a1_45).re;
        let _e34 = impl_trait_ReferenceReal_add(_e31, _e33, fe_trapped_51);
        let _e35 = impl_trait_ReferenceReal_add(_e30, _e30, fe_trapped_51);
        let _e37 = (*a1_45).im;
        let _e38 = impl_trait_ReferenceReal_add(_e35, _e37, fe_trapped_51);
        local_241 = FeLocal_fe_ReferenceStep_d9bbc380_30_(FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e34, _e38), false);
    }
    let _e45 = local_241;
    return _e45;
}

fn sign_gc7cf(a0_77: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>) -> u32 {
    var local_242: u32;
    var local_243: bool = false;
    var local_244: u32 = u32();

    let _e4 = (*a0_77).negative;
    if _e4 {
        local_244 = 1u;
    }
    let _e8 = local_244;
    return _e8;
}

fn impl_ReferenceReal_sign(a0_78: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>) -> u32 {
    var fixed_local_5_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e2 = (*a0_78).value;
    fixed_local_5_1 = _e2;
    let _e5 = sign_gc7cf((&fixed_local_5_1));
    return _e5;
}

fn publish(a0_79: u32, a1_46: u32, a2_13: u32, a3_7: u32, a4_6: f32) -> FeLocal_fe_ReferenceControl_7d077120_3_ {
    return FeLocal_fe_ReferenceControl_7d077120_3_(a0_79, 1u, 0u, a1_46, a2_13, a3_7, a4_6);
}

fn to_digits(a0_80: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>) -> array<u32, 8> {
    let _e2 = (*a0_80).digits;
    return _e2;
}

fn to_words(a0_81: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>) -> array<u32, 8> {
    var fixed_local_5_2: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e2 = (*a0_81).value;
    fixed_local_5_2 = _e2;
    let _e5 = to_digits((&fixed_local_5_2));
    return _e5;
}

fn store_reference_checkpoint(a1_47: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>) {
    var fixed_local_6_1: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_12_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_14_1: array<u32, 8> = array<u32, 8>();
    var local_245: u32 = u32();
    var loop_result_24: u32;
    var loop_did_return_24: bool = false;
    var loop_header_carry_17_: bool;

    let _e3 = (*a1_47).re;
    fixed_local_6_1 = _e3;
    let _e6 = to_words((&fixed_local_6_1));
    fixed_local_8_ = _e6;
    let _e10 = (*a1_47).im;
    fixed_local_12_ = _e10;
    let _e13 = to_words((&fixed_local_12_));
    fixed_local_14_1 = _e13;
    local_245 = 0u;
    loop {
        let _e21 = local_245;
        let _e23 = (_e21 < 8u);
        loop_header_carry_17_ = _e23;
        if _e23 {
            let _e25 = fixed_local_8_[_e21];
            reference_words[i32(_e21)] = _e25;
            let _e31 = fixed_local_14_1[_e21];
            reference_words[i32((_e21 + 8u))] = _e31;
            local_245 = (_e21 + 1u);
            continue;
        } else {
            loop_did_return_24 = true;
            break;
        }
    }
    return;
}

fn advance_pending(a0_82: FeLocal_fe_ReferenceControl_7d077120_3_, a1_48: u32, a2_14: u32, a3_8: u32) -> FeLocal_fe_ReferenceControl_7d077120_3_ {
    var fixed_local_5_3: FeLocal_fe_ReferenceControl_7d077120_3_ = FeLocal_fe_ReferenceControl_7d077120_3_();

    fixed_local_5_3 = a0_82;
    fixed_local_5_3.pending = 1u;
    fixed_local_5_3.index = a1_48;
    fixed_local_5_3.zx_s = a2_14;
    fixed_local_5_3.zy_s = a3_8;
    let _e11 = fixed_local_5_3;
    return _e11;
}

fn invalidate_for_new_reference(a0_83: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_52: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_23_ {
    var local_246: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_247: bool = false;
    var fixed_local_2_: FeLocal_fe_ViewCache_da6e2ccc_23_ = FeLocal_fe_ViewCache_da6e2ccc_23_();

    fixed_local_2_ = a0_83;
    fixed_local_2_.cursor = 0u;
    fixed_local_2_.preview_dirty = 1u;
    fixed_local_2_.blur_dirty = 1u;
    if (a0_83.epoch > (4294967295u - 1u)) {
        (*fe_trapped_52) = true;
    }
    fixed_local_2_.epoch = (a0_83.epoch + 1u);
    fixed_local_2_.completed = 0u;
    let _e21 = fixed_local_2_;
    return _e21;
}

fn impl_ViewCache_delta_from(a0_84: FeLocal_fe_ViewCache_da6e2ccc_23_, a1_49: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, fe_trapped_53: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    let _e4 = center_value(a0_84.camera);
    let _e6 = (*a1_49).camera;
    let _e7 = center_value(_e6);
    let _e8 = center_delta(_e4, _e7, fe_trapped_53);
    return _e8;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    return FeLocal_fe_Complex_f32_87ec9249_10_();
}

fn for_view(a0_85: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a1_50: FeLocal_fe_ViewCache_da6e2ccc_23_, a2_15: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_54: ptr<function, bool>) -> FeLocal_fe_HistoryOffsets_646326b2_27_ {
    var local_248: FeLocal_fe_HistoryOffsets_646326b2_27_;
    var local_249: bool = false;
    var local_250: FeLocal_fe_Complex_f32_87ec9249_10_ = FeLocal_fe_Complex_f32_87ec9249_10_();
    var local_251: FeLocal_fe_HistoryOffsets_646326b2_27_;
    var local_252: bool = false;
    var local_253: FeLocal_fe_Complex_f32_87ec9249_10_ = FeLocal_fe_Complex_f32_87ec9249_10_();

    if (a1_50.completed == 1u) {
        let _e9 = impl_ViewCache_delta_from(a1_50, a0_85, fe_trapped_54);
        local_250 = _e9;
    } else {
        let _e10 = default_ge58b();
        local_250 = _e10;
    }
    let _e16 = local_250;
    if (a2_15.completed == 1u) {
        let _e20 = impl_ViewCache_delta_from(a2_15, a0_85, fe_trapped_54);
        local_253 = _e20;
    } else {
        let _e21 = default_ge58b();
        local_253 = _e21;
    }
    let _e25 = local_253;
    return FeLocal_fe_HistoryOffsets_646326b2_27_(_e16, _e25);
}

fn from_quad(a0_86: f32, a1_51: f32, a2_16: f32, a3_9: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_7_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_7_(a0_86, FeLocal_fe_More_More_Last_60a5ba63_6_(a1_51, FeLocal_fe_More_Last_1ac585f5_5_(a2_16, FeLocal_fe_Last_eb970eb0_4_(a3_9))));
}

fn decode(a0_87: FeLocal_fe_PackedReference_e11ca04a_21_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_ {
    let _e9 = from_quad(bitcast<f32>(a0_87.re_w0_bits), bitcast<f32>(a0_87.re_w1_bits), bitcast<f32>(a0_87.re_w2_bits), bitcast<f32>(a0_87.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_87.im_w0_bits), bitcast<f32>(a0_87.im_w1_bits), bitcast<f32>(a0_87.im_w2_bits), bitcast<f32>(a0_87.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_(_e9, _e18);
}

fn with_center_offset(a0_88: FeLocal_fe_PackedReference_e11ca04a_21_, a1_52: FeLocal_fe_Complex_f32_87ec9249_10_) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    var fixed_local_3_1: FeLocal_fe_PackedReference_e11ca04a_21_ = FeLocal_fe_PackedReference_e11ca04a_21_();

    fixed_local_3_1 = a0_88;
    fixed_local_3_1.re_w2_bits = bitcast<u32>(a1_52.re);
    fixed_local_3_1.re_w3_bits = bitcast<u32>(a1_52.im);
    let _e10 = fixed_local_3_1;
    return _e10;
}

fn highest_bit_gc7cf(a0_89: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_55: ptr<function, bool>) -> u32 {
    var local_254: u32 = u32();
    var local_255: u32 = u32();
    var loop_result_25: u32;
    var loop_did_return_25: bool = false;
    var loop_header_carry_4_2: bool;
    var local_256: u32;
    var local_257: bool = false;
    var local_258: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_55);
    local_254 = 0u;
    local_255 = _e2;
    loop {
        let _e10 = local_254;
        let _e12 = local_255;
        let _e14 = (0u < _e12);
        loop_header_carry_4_2 = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_89).digits[_e18];
                local_254 = _e21;
                local_255 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_254;
    let _e28 = local_255;
    if (_e26 == 0u) {
        local_258 = 4294967295u;
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
                local_258 = _e58;
            }
        }
    }
    let _e69 = local_258;
    return _e69;
}

fn word_from_gc7cf(a0_90: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_53: u32, fe_trapped_56: ptr<function, bool>) -> u32 {
    var local_259: u32;
    var local_260: bool = false;
    var local_261: u32;
    var local_262: bool = false;
    var local_263: u32 = u32();
    var local_264: u32 = u32();
    var local_265: u32 = u32();
    var loop_result_26: u32;
    var loop_did_return_26: bool = false;
    var loop_header_carry_34_3: bool;

    if (bitcast<i32>(a1_53) < bitcast<i32>(0u)) {
        local_259 = 0u;
        local_260 = true;
    }
    let _e77 = local_260;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_53, fe_trapped_56);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_56);
        let _e15 = (a1_53 / 13u);
        if ((_e15 < _e13) == false) {
            local_261 = 0u;
            local_262 = true;
        }
        let _e72 = local_262;
        if _e72 {
        } else {
            let _e24 = (a1_53 % 13u);
            let _e27 = (*a0_90).digits[_e15];
            local_263 = (13u - _e24);
            local_264 = (_e27 >> _e24);
            local_265 = (_e15 + 1u);
            loop {
                let _e41 = local_263;
                let _e43 = local_264;
                let _e45 = local_265;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_3 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_90).digits[_e45];
                        local_263 = (_e41 + 13u);
                        local_264 = (_e43 | (_e51 << _e41));
                        local_265 = (_e45 + 1u);
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
            local_261 = _e69;
        }
        let _e74 = local_261;
        local_259 = _e74;
    }
    let _e79 = local_259;
    return _e79;
}

fn project_binary32_quad(a0_91: u32, a1_54: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_57: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    var local_266: u32 = u32();
    var local_267: u32 = u32();
    var local_268: u32 = u32();
    var local_269: u32 = u32();
    var local_270: u32 = u32();
    var local_271: u32 = u32();
    var loop_result_27: FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_;
    var loop_did_return_27: bool = false;
    var loop_header_carry_8_: bool;
    var local_272: u32 = u32();
    var local_273: u32 = u32();
    var local_274: u32 = u32();
    var local_275: u32 = u32();
    var local_276: u32 = u32();
    var local_277: u32 = u32();
    var local_278: u32 = u32();

    let _e3 = highest_bit_gc7cf(a1_54, fe_trapped_57);
    let _e4 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a1_54, fe_trapped_57);
    local_266 = 0u;
    local_267 = 0u;
    local_268 = 0u;
    local_269 = 0u;
    local_270 = 0u;
    local_271 = 0u;
    loop {
        let _e25 = local_266;
        let _e27 = local_267;
        let _e29 = local_268;
        let _e31 = local_269;
        let _e33 = local_270;
        let _e35 = local_271;
        let _e37 = (_e35 < 4u);
        loop_header_carry_8_ = _e37;
        if _e37 {
            let _e40 = (_e3 - _e33);
            if ((((_e3 ^ _e40) & (_e3 ^ _e33)) & 2147483648u) != 0u) {
            } else {
                if (bitcast<i32>(_e40) < bitcast<i32>(0u)) {
                    local_272 = 0u;
                } else {
                    let _e53 = (_e40 - 23u);
                    if (bitcast<i32>(_e53) < bitcast<i32>(0u)) {
                        let _e61 = word_from_gc7cf(a1_54, 0u, fe_trapped_57);
                        local_273 = ((_e61 << (0u - _e53)) & 16777215u);
                    } else {
                        let _e65 = word_from_gc7cf(a1_54, _e53, fe_trapped_57);
                        local_273 = (_e65 & 16777215u);
                    }
                    let _e71 = local_273;
                    if (_e71 == 0u) {
                        local_272 = 0u;
                    } else {
                        let _e76 = (_e71 >> 13u);
                        if (_e76 == 0u) {
                            let _e79 = precision_lib_fixed_limb_highest_bit_5b70_(_e71);
                            local_274 = _e79;
                        } else {
                            let _e80 = precision_lib_fixed_limb_highest_bit_5b70_(_e76);
                            local_274 = (13u + _e80);
                        }
                        let _e86 = local_274;
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
                                    local_272 = (((a0_91 << 31u) | (_e111 << 23u)) | ((_e71 << (23u - _e86)) & 8388607u));
                                }
                            }
                        }
                    }
                }
                let _e136 = local_272;
                switch _e35 {
                    case 0u: {
                        local_275 = _e25;
                        local_276 = _e27;
                        local_277 = _e29;
                        local_278 = _e136;
                    }
                    case 1u: {
                        local_275 = _e25;
                        local_276 = _e27;
                        local_277 = _e136;
                        local_278 = _e31;
                    }
                    case 2u: {
                        local_275 = _e25;
                        local_276 = _e136;
                        local_277 = _e29;
                        local_278 = _e31;
                    }
                    default: {
                        local_275 = _e136;
                        local_276 = _e27;
                        local_277 = _e29;
                        local_278 = _e31;
                    }
                }
                let _e154 = local_275;
                let _e156 = local_276;
                let _e158 = local_277;
                let _e160 = local_278;
                let _e166 = (_e33 + 24u);
                if ((((_e33 ^ _e166) & (24u ^ _e166)) & 2147483648u) != 0u) {
                } else {
                    local_266 = _e154;
                    local_267 = _e156;
                    local_268 = _e158;
                    local_269 = _e160;
                    local_270 = _e166;
                    local_271 = (_e35 + 1u);
                    continue;
                }
            }
            (*fe_trapped_57) = true;
            break;
        } else {
            loop_result_27 = FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_(_e31, _e29, _e27, _e25);
            loop_did_return_27 = true;
            break;
        }
    }
    let _e185 = loop_result_27;
    return _e185;
}

fn to_quad_bits_gc7cf(a0_92: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_58: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    let _e2 = sign_gc7cf(a0_92);
    let _e3 = project_binary32_quad(_e2, a0_92, fe_trapped_58);
    return _e3;
}

fn impl_ReferenceReal_to_quad_bits(a0_93: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_59: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    var fixed_local_5_4: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e3 = (*a0_93).value;
    fixed_local_5_4 = _e3;
    let _e6 = to_quad_bits_gc7cf((&fixed_local_5_4), fe_trapped_59);
    return _e6;
}

fn impl_PackedReference_from_words(a0_94: u32, a1_55: u32, a2_17: u32, a3_10: u32, a4_7: u32, a5_3: u32, a6_3: u32, a7_3: u32) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    return FeLocal_fe_PackedReference_e11ca04a_21_(a0_94, a1_55, a2_17, a3_10, a4_7, a5_3, a6_3, a7_3);
}

fn from_fixed(a0_95: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>, fe_trapped_60: ptr<function, bool>) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    var fixed_local_5_5: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();

    let _e3 = (*a0_95).re;
    fixed_local_5_5 = _e3;
    let _e6 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_5), fe_trapped_60);
    let _e12 = (*a0_95).im;
    fixed_local_5_5 = _e12;
    let _e13 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_5), fe_trapped_60);
    let _e18 = impl_PackedReference_from_words(_e6.f0_, _e6.f1_, _e6.f2_, _e6.f3_, _e13.f0_, _e13.f1_, _e13.f2_, _e13.f3_);
    return _e18;
}

fn from_metadata(a0_96: u32, a1_56: u32) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    var fixed_local_3_2: FeLocal_fe_PackedReference_e11ca04a_21_ = FeLocal_fe_PackedReference_e11ca04a_21_();

    let _e2 = impl_trait_PackedReference_default();
    fixed_local_3_2 = _e2;
    fixed_local_3_2.re_w0_bits = a0_96;
    fixed_local_3_2.re_w1_bits = a1_56;
    let _e7 = fixed_local_3_2;
    return _e7;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: bool = bool();
    var fixed_local_630_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var fixed_local_740_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
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
    var local_16: FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_ = FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_();
    var fixed_local_1227_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var local_17: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var local_18: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var local_19: bool = bool();
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_1321_: bool;
    var local_22: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var local_23: u32 = u32();
    var fixed_local_1323_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var fixed_local_1325_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var fixed_local_1463_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var fixed_local_1360_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var local_24: bool = bool();
    var local_25: FeLocal_fe_ReferenceControl_7d077120_3_ = FeLocal_fe_ReferenceControl_7d077120_3_();
    var fixed_local_1515_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_1518_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_1637_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_();
    var fixed_local_1639_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_1642_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var local_26: u32;
    var local_27: bool = false;
    var local_28: FeLocal_fe_ViewCache_da6e2ccc_23_ = FeLocal_fe_ViewCache_da6e2ccc_23_();
    var fixed_local_1025_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var fixed_local_1097_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var fixed_local_1169_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var fixed_local_1940_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var fixed_local_2052_: FeLocal_fe_PreviewCache_6792a3e2_28_ = FeLocal_fe_PreviewCache_6792a3e2_28_();
    var local_29: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_2123_: bool;
    var local_30: bool = bool();
    var local_31: bool = bool();
    var local_32: u32;
    var local_33: bool = false;
    var fixed_local_2388_: FeLocal_fe_PreviewCache_6792a3e2_28_ = FeLocal_fe_PreviewCache_6792a3e2_28_();

    let _e9 = params.p17_;
    let _e11 = params.p18_;
    let _e13 = params.p19_;
    let _e15 = params.p20_;
    let _e17 = params.p21_;
    let _e19 = params.p22_;
    let _e21 = params.p23_;
    let _e23 = params.p24_;
    let _e25 = params.p25_;
    let _e27 = params.p26_;
    let _e29 = params.p27_;
    let _e31 = params.p28_;
    let _e33 = params.p29_;
    let _e35 = params.p30_;
    let _e37 = params.p31_;
    let _e39 = params.p32_;
    let _e41 = params.p33_;
    let _e43 = params.p34_;
    let _e47 = params.p35_;
    let _e49 = params.p36_;
    let _e51 = params.p37_;
    let _e53 = params.p38_;
    let _e57 = params.p39_;
    let _e59 = params.p40_;
    let _e61 = params.p41_;
    let _e63 = params.p42_;
    let _e65 = params.p43_;
    let _e67 = params.p44_;
    let _e69 = params.p45_;
    let _e71 = params.p46_;
    let _e75 = params.p47_;
    let _e77 = params.p48_;
    let _e79 = params.p49_;
    let _e81 = params.p50_;
    let _e85 = params.p51_;
    let _e87 = params.p52_;
    let _e89 = params.p53_;
    let _e91 = params.p54_;
    let _e93 = params.p55_;
    let _e95 = params.p56_;
    let _e97 = params.p57_;
    let _e99 = params.p58_;
    let _e101 = params.p59_;
    let _e103 = params.p60_;
    let _e105 = params.p61_;
    let _e107 = params.p62_;
    let _e109 = params.p63_;
    let _e111 = params.p64_;
    let _e113 = params.p65_;
    let _e115 = params.p66_;
    let _e119 = params.p67_;
    let _e121 = params.p68_;
    let _e123 = (_e121 != 0u);
    let _e125 = params.p69_;
    let _e127 = params.p70_;
    let _e129 = params.p71_;
    let _e131 = params.p72_;
    let _e133 = params.p73_;
    let _e135 = params.p74_;
    let _e137 = params.p75_;
    let _e139 = params.p76_;
    let _e141 = params.p77_;
    let _e143 = params.p78_;
    let _e145 = params.p79_;
    let _e147 = params.p80_;
    let _e149 = params.p81_;
    let _e151 = params.p82_;
    let _e166 = FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e9, FeLocal_fe_More_More_Last_60a5ba63_6_(_e11, FeLocal_fe_More_Last_1ac585f5_5_(_e13, FeLocal_fe_Last_eb970eb0_4_(_e15))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e17, FeLocal_fe_More_More_Last_60a5ba63_6_(_e19, FeLocal_fe_More_Last_1ac585f5_5_(_e21, FeLocal_fe_Last_eb970eb0_4_(_e23)))))), _e25, _e27, FeLocal_fe_Complex_f32_87ec9249_10_(_e29, _e31));
    let _e199 = FeLocal_fe_MandelbrotViewState_c524184f_19_(_e166, _e33, _e35, _e37, _e39, _e41, FeLocal_fe_GestureSession_6b679731_16_(FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e43 != 0u), _e47, FeLocal_fe_Vec2_f32_2772165c_12_(_e49, _e51)), FeLocal_fe_Contact_2b5c3d26_13_((_e53 != 0u), _e57, FeLocal_fe_Vec2_f32_2772165c_12_(_e59, _e61)))), FeLocal_fe_Viewport_91e53b90_15_(FeLocal_fe_Vec2_f32_2772165c_12_(_e63, _e65), FeLocal_fe_Vec2_f32_2772165c_12_(_e67, _e69)), FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e71 != 0u), _e75, FeLocal_fe_Vec2_f32_2772165c_12_(_e77, _e79)), FeLocal_fe_Contact_2b5c3d26_13_((_e81 != 0u), _e85, FeLocal_fe_Vec2_f32_2772165c_12_(_e87, _e89)))), FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e91, FeLocal_fe_More_More_Last_60a5ba63_6_(_e93, FeLocal_fe_More_Last_1ac585f5_5_(_e95, FeLocal_fe_Last_eb970eb0_4_(_e97))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e99, FeLocal_fe_More_More_Last_60a5ba63_6_(_e101, FeLocal_fe_More_Last_1ac585f5_5_(_e103, FeLocal_fe_Last_eb970eb0_4_(_e105)))))), _e107, _e109, FeLocal_fe_Complex_f32_87ec9249_10_(_e111, _e113))), FeLocal_fe_BackingRequest_2bcae9f8_17_((_e115 != 0u), _e119), FeLocal_fe_CameraTrace_7ca62f00_18_(_e123, array<u32, 14>(_e125, _e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151)));
    let _e204 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e206 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e208 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e210 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e212 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e214 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e216 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e218 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e220 = cache[i32(0u)].camera_u002e_zoom;
    let _e222 = cache[i32(0u)].camera_u002e_res;
    let _e224 = cache[i32(0u)].camera_u002e_orientation_u002e_re;
    let _e226 = cache[i32(0u)].camera_u002e_orientation_u002e_im;
    let _e228 = cache[i32(0u)].cursor;
    let _e230 = cache[i32(0u)].aa;
    let _e232 = cache[i32(0u)].budget;
    let _e234 = cache[i32(0u)].radius;
    let _e236 = cache[i32(0u)].preview_dirty;
    let _e238 = cache[i32(0u)].blur_dirty;
    let _e240 = cache[i32(0u)].epoch;
    let _e242 = cache[i32(0u)].completed;
    let _e244 = cache[i32(0u)].steps;
    let _e246 = cache[i32(0u)].frame_clock;
    let _e265 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e267 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e269 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e271 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e273 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e275 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e277 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e279 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e281 = cache[i32(2u)].camera_u002e_zoom;
    let _e283 = cache[i32(2u)].camera_u002e_res;
    let _e285 = cache[i32(2u)].camera_u002e_orientation_u002e_re;
    let _e287 = cache[i32(2u)].camera_u002e_orientation_u002e_im;
    let _e289 = cache[i32(2u)].cursor;
    let _e291 = cache[i32(2u)].aa;
    let _e293 = cache[i32(2u)].budget;
    let _e295 = cache[i32(2u)].radius;
    let _e297 = cache[i32(2u)].preview_dirty;
    let _e299 = cache[i32(2u)].blur_dirty;
    let _e301 = cache[i32(2u)].epoch;
    let _e303 = cache[i32(2u)].completed;
    let _e305 = cache[i32(2u)].steps;
    let _e307 = cache[i32(2u)].frame_clock;
    let _e326 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e328 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e330 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e332 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e334 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e336 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e338 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e340 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e342 = preview_cache[i32(0u)].camera_u002e_zoom;
    let _e344 = preview_cache[i32(0u)].camera_u002e_res;
    let _e346 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_re;
    let _e348 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_im;
    let _e350 = preview_cache[i32(0u)].reference_generation;
    let _e352 = preview_cache[i32(0u)].reference_bank;
    let _e354 = preview_cache[i32(0u)].prefix_only;
    let _e356 = preview_cache[i32(0u)].step_target;
    let _e358 = preview_cache[i32(0u)].completed_steps;
    let _e360 = preview_cache[i32(0u)].budget;
    let _e362 = preview_cache[i32(0u)].epoch;
    let _e364 = preview_cache[i32(0u)].completed;
    let _e366 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
    let _e368 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
    let _e370 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
    let _e372 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
    let _e374 = preview_cache[i32(0u)].trace_clock;
    fixed_local_630_ = _e199;
    let _e394 = input_age((&fixed_local_630_));
    let _e395 = iteration_limit(_e25, (&fe_trapped));
    let _e400 = reference[i32(0u)].active_;
    let _e402 = reference[i32(0u)].active_valid;
    let _e404 = reference[i32(0u)].pending;
    let _e406 = reference[i32(0u)].index;
    let _e408 = reference[i32(0u)].zx_s;
    let _e410 = reference[i32(0u)].zy_s;
    let _e412 = reference[i32(0u)].ready_at;
    let _e413 = FeLocal_fe_ReferenceControl_7d077120_3_(_e400, _e402, _e404, _e406, _e408, _e410, _e412);
    let _e417 = anchor[i32(_e400)].center_u002e_re_u002e_lead;
    let _e419 = anchor[i32(_e400)].center_u002e_re_u002e_tail_u002e_lead;
    let _e421 = anchor[i32(_e400)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead;
    let _e423 = anchor[i32(_e400)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e425 = anchor[i32(_e400)].center_u002e_im_u002e_lead;
    let _e427 = anchor[i32(_e400)].center_u002e_im_u002e_tail_u002e_lead;
    let _e429 = anchor[i32(_e400)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead;
    let _e431 = anchor[i32(_e400)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e433 = anchor[i32(_e400)].limit;
    let _e435 = anchor[i32(_e400)].generation;
    fixed_local_740_ = _e199;
    let _e448 = impl_ReferenceAnchor_delta_from(FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e417, FeLocal_fe_More_More_Last_60a5ba63_6_(_e419, FeLocal_fe_More_Last_1ac585f5_5_(_e421, FeLocal_fe_Last_eb970eb0_4_(_e423)))), FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e425, FeLocal_fe_More_More_Last_60a5ba63_6_(_e427, FeLocal_fe_More_Last_1ac585f5_5_(_e429, FeLocal_fe_Last_eb970eb0_4_(_e431))))), _e433, _e435), (&fixed_local_740_), (&fe_trapped));
    let _e449 = iteration_limit(_e25, (&fe_trapped));
    if (_e402 == 1u) {
        if (_e433 < _e449) {
        } else {
            let _e454 = impl_trait_f32_abs(_e448.re);
            if (_e454 <= (_e25 * 0.125f)) {
                let _e459 = impl_trait_f32_abs(_e448.im);
                if (_e459 <= (_e25 * 0.125f)) {
                    local_2 = true;
                }
            }
        }
    }
    let _e468 = local_2;
    if (_e404 == 0u) {
        local_5 = _e468;
    }
    let _e475 = local_5;
    if (_e402 == 1u) {
        local_8 = (_e394 < 60f);
    }
    let _e484 = local_8;
    if _e475 {
        local_11 = true;
    } else {
        local_11 = _e484;
    }
    let _e491 = local_11;
    if _e491 {
    } else {
        let _e493 = (1u - _e400);
        if (1u < _e400) {
            fe_trapped = true;
        } else {
            let _e500 = (_e493 * 8195u);
            let _e501 = (_e493 != 0u);
            if (_e501 && (8195u > (4294967295u / select(1u, _e493, _e501)))) {
                fe_trapped = true;
            } else {
                let _e511 = anchor[i32(_e493)].center_u002e_re_u002e_lead;
                let _e513 = anchor[i32(_e493)].center_u002e_re_u002e_tail_u002e_lead;
                let _e515 = anchor[i32(_e493)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead;
                let _e517 = anchor[i32(_e493)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                let _e519 = anchor[i32(_e493)].center_u002e_im_u002e_lead;
                let _e521 = anchor[i32(_e493)].center_u002e_im_u002e_tail_u002e_lead;
                let _e523 = anchor[i32(_e493)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead;
                let _e525 = anchor[i32(_e493)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                let _e527 = anchor[i32(_e493)].limit;
                let _e529 = anchor[i32(_e493)].generation;
                if (_e529 < _e435) {
                    local_15 = _e435;
                } else {
                    local_15 = _e529;
                }
                let _e544 = local_15;
                if (_e544 > (4294967295u - 1u)) {
                    fe_trapped = true;
                } else {
                    if (_e404 == 0u) {
                        fixed_local_1227_ = _e199;
                        let _e556 = from_state((&fixed_local_1227_), _e449, (_e544 + 1u));
                        anchor[i32(_e493)].center_u002e_re_u002e_lead = _e556.center.re.lead;
                        anchor[i32(_e493)].center_u002e_re_u002e_tail_u002e_lead = _e556.center.re.tail.lead;
                        anchor[i32(_e493)].center_u002e_re_u002e_tail_u002e_tail_u002e_lead = _e556.center.re.tail.tail.lead;
                        anchor[i32(_e493)].center_u002e_re_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e556.center.re.tail.tail.tail.value;
                        anchor[i32(_e493)].center_u002e_im_u002e_lead = _e556.center.im.lead;
                        anchor[i32(_e493)].center_u002e_im_u002e_tail_u002e_lead = _e556.center.im.tail.lead;
                        anchor[i32(_e493)].center_u002e_im_u002e_tail_u002e_tail_u002e_lead = _e556.center.im.tail.tail.lead;
                        anchor[i32(_e493)].center_u002e_im_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e556.center.im.tail.tail.tail.value;
                        anchor[i32(_e493)].limit = _e556.limit;
                        anchor[i32(_e493)].generation = _e556.generation;
                        clear_reference_checkpoint();
                        let _e588 = impl_trait_PackedReference_default();
                        orbit[i32(_e500)].re_w0_bits = _e588.re_w0_bits;
                        orbit[i32(_e500)].re_w1_bits = _e588.re_w1_bits;
                        orbit[i32(_e500)].re_w2_bits = _e588.re_w2_bits;
                        orbit[i32(_e500)].re_w3_bits = _e588.re_w3_bits;
                        orbit[i32(_e500)].im_w0_bits = _e588.im_w0_bits;
                        orbit[i32(_e500)].im_w1_bits = _e588.im_w1_bits;
                        orbit[i32(_e500)].im_w2_bits = _e588.im_w2_bits;
                        orbit[i32(_e500)].im_w3_bits = _e588.im_w3_bits;
                        local_16 = _e556;
                    } else {
                        local_16 = FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e511, FeLocal_fe_More_More_Last_60a5ba63_6_(_e513, FeLocal_fe_More_Last_1ac585f5_5_(_e515, FeLocal_fe_Last_eb970eb0_4_(_e517)))), FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e519, FeLocal_fe_More_More_Last_60a5ba63_6_(_e521, FeLocal_fe_More_Last_1ac585f5_5_(_e523, FeLocal_fe_Last_eb970eb0_4_(_e525))))), _e527, _e529);
                    }
                    let _e611 = local_16;
                    let _e612 = reference_center(_e611, (&fe_trapped));
                    if (_e404 == 0u) {
                        let _e615 = default_gfdd1_((&fe_trapped));
                        local_17 = _e615;
                    } else {
                        let _e616 = load_reference_checkpoint(_e413, (&fe_trapped));
                        local_17 = _e616;
                    }
                    let _e624 = local_17;
                    if (_e404 == 0u) {
                        local_18 = _e624;
                        local_19 = false;
                        local_20 = 0u;
                        local_21 = 0u;
                    } else {
                        local_18 = _e624;
                        local_19 = false;
                        local_20 = _e406;
                        local_21 = 0u;
                    }
                    loop {
                        let _e642 = local_18;
                        let _e644 = local_19;
                        let _e646 = local_20;
                        let _e648 = local_21;
                        let _e650 = (_e648 < 64u);
                        loop_header_carry_1321_ = _e650;
                        if _e650 {
                            if (((_e646 < _e611.limit) == false) | _e644) {
                                break;
                            } else {
                                fixed_local_1323_ = _e642;
                                fixed_local_1325_ = _e612;
                                let _e662 = reference_step((&fixed_local_1323_), (&fixed_local_1325_), (&fe_trapped));
                                if _e662.escaped {
                                    local_22 = _e642;
                                    local_23 = _e646;
                                } else {
                                    let _e666 = (_e500 + _e646);
                                    if (_e500 > (4294967295u - _e646)) {
                                        fe_trapped = true;
                                        break;
                                    } else {
                                        if (_e666 > (4294967295u - 1u)) {
                                            fe_trapped = true;
                                            break;
                                        } else {
                                            fixed_local_1463_ = _e662.value;
                                            let _e678 = from_fixed((&fixed_local_1463_), (&fe_trapped));
                                            orbit[i32((_e666 + 1u))].re_w0_bits = _e678.re_w0_bits;
                                            orbit[i32((_e666 + 1u))].re_w1_bits = _e678.re_w1_bits;
                                            orbit[i32((_e666 + 1u))].re_w2_bits = _e678.re_w2_bits;
                                            orbit[i32((_e666 + 1u))].re_w3_bits = _e678.re_w3_bits;
                                            orbit[i32((_e666 + 1u))].im_w0_bits = _e678.im_w0_bits;
                                            orbit[i32((_e666 + 1u))].im_w1_bits = _e678.im_w1_bits;
                                            orbit[i32((_e666 + 1u))].im_w2_bits = _e678.im_w2_bits;
                                            orbit[i32((_e666 + 1u))].im_w3_bits = _e678.im_w3_bits;
                                            local_22 = _e662.value;
                                            local_23 = (_e646 + 1u);
                                        }
                                    }
                                }
                                let _e704 = local_22;
                                let _e706 = local_23;
                                local_18 = _e704;
                                local_19 = _e662.escaped;
                                local_20 = _e706;
                                local_21 = (_e648 + 1u);
                                continue;
                            }
                        } else {
                            break;
                        }
                    }
                    let _e715 = local_18;
                    let _e717 = local_19;
                    let _e719 = local_20;
                    if (_e500 > (4294967295u - 8193u)) {
                        fe_trapped = true;
                    } else {
                        fixed_local_1360_ = _e612;
                        let _e728 = from_fixed((&fixed_local_1360_), (&fe_trapped));
                        orbit[i32((_e500 + 8193u))].re_w0_bits = _e728.re_w0_bits;
                        orbit[i32((_e500 + 8193u))].re_w1_bits = _e728.re_w1_bits;
                        orbit[i32((_e500 + 8193u))].re_w2_bits = _e728.re_w2_bits;
                        orbit[i32((_e500 + 8193u))].re_w3_bits = _e728.re_w3_bits;
                        orbit[i32((_e500 + 8193u))].im_w0_bits = _e728.im_w0_bits;
                        orbit[i32((_e500 + 8193u))].im_w1_bits = _e728.im_w1_bits;
                        orbit[i32((_e500 + 8193u))].im_w2_bits = _e728.im_w2_bits;
                        orbit[i32((_e500 + 8193u))].im_w3_bits = _e728.im_w3_bits;
                        if (_e500 > (4294967295u - 8194u)) {
                            fe_trapped = true;
                        } else {
                            if (_e719 > (4294967295u - 1u)) {
                                fe_trapped = true;
                            } else {
                                let _e761 = from_metadata((_e719 + 1u), _e611.limit);
                                orbit[i32((_e500 + 8194u))].re_w0_bits = _e761.re_w0_bits;
                                orbit[i32((_e500 + 8194u))].re_w1_bits = _e761.re_w1_bits;
                                orbit[i32((_e500 + 8194u))].re_w2_bits = _e761.re_w2_bits;
                                orbit[i32((_e500 + 8194u))].re_w3_bits = _e761.re_w3_bits;
                                orbit[i32((_e500 + 8194u))].im_w0_bits = _e761.im_w0_bits;
                                orbit[i32((_e500 + 8194u))].im_w1_bits = _e761.im_w1_bits;
                                orbit[i32((_e500 + 8194u))].im_w2_bits = _e761.im_w2_bits;
                                orbit[i32((_e500 + 8194u))].im_w3_bits = _e761.im_w3_bits;
                                if _e717 {
                                    local_24 = true;
                                } else {
                                    if (_e719 < _e611.limit) {
                                    } else {
                                        local_24 = true;
                                    }
                                }
                                let _e788 = local_24;
                                if _e788 {
                                    fixed_local_1515_ = _e715.re;
                                    let _e792 = impl_ReferenceReal_sign((&fixed_local_1515_));
                                    fixed_local_1518_ = _e715.im;
                                    let _e796 = impl_ReferenceReal_sign((&fixed_local_1518_));
                                    let _e797 = publish(_e493, _e719, _e792, _e796, _e33);
                                    local_25 = _e797;
                                } else {
                                    fixed_local_1637_ = _e715;
                                    store_reference_checkpoint((&fixed_local_1637_));
                                    fixed_local_1639_ = _e715.re;
                                    let _e803 = impl_ReferenceReal_sign((&fixed_local_1639_));
                                    fixed_local_1642_ = _e715.im;
                                    let _e807 = impl_ReferenceReal_sign((&fixed_local_1642_));
                                    let _e808 = advance_pending(_e413, _e719, _e803, _e807);
                                    local_25 = _e808;
                                }
                                let _e812 = local_25;
                                reference[i32(0u)].active_ = _e812.active_;
                                reference[i32(0u)].active_valid = _e812.active_valid;
                                reference[i32(0u)].pending = _e812.pending;
                                reference[i32(0u)].index = _e812.index;
                                reference[i32(0u)].zx_s = _e812.zx_s;
                                reference[i32(0u)].zy_s = _e812.zy_s;
                                reference[i32(0u)].ready_at = _e812.ready_at;
                                local_14 = _e788;
                            }
                        }
                    }
                }
            }
        }
    }
    let _e834 = local_14;
    let _e839 = reference[i32(0u)].active_;
    let _e841 = reference[i32(0u)].active_valid;
    let _e843 = reference[i32(0u)].pending;
    let _e845 = reference[i32(0u)].index;
    let _e847 = reference[i32(0u)].zx_s;
    let _e849 = reference[i32(0u)].zy_s;
    let _e851 = reference[i32(0u)].ready_at;
    let _e852 = FeLocal_fe_ReferenceControl_7d077120_3_(_e839, _e841, _e843, _e845, _e847, _e849, _e851);
    fixed_local_1025_ = _e199;
    let _e855 = preview_bank(_e852, (&fixed_local_1025_), (&fe_trapped));
    let _e859 = anchor[i32(_e855)].generation;
    fixed_local_1097_ = _e199;
    let _e862 = sync_with_view(FeLocal_fe_PreviewCache_6792a3e2_28_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e326, FeLocal_fe_More_More_Last_60a5ba63_6_(_e328, FeLocal_fe_More_Last_1ac585f5_5_(_e330, FeLocal_fe_Last_eb970eb0_4_(_e332))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e334, FeLocal_fe_More_More_Last_60a5ba63_6_(_e336, FeLocal_fe_More_Last_1ac585f5_5_(_e338, FeLocal_fe_Last_eb970eb0_4_(_e340)))))), _e342, _e344, FeLocal_fe_Complex_f32_87ec9249_10_(_e346, _e348)), _e350, _e352, _e354, _e356, _e358, _e360, _e362, _e364, FeLocal_fe_HistoryOffsets_646326b2_27_(FeLocal_fe_Complex_f32_87ec9249_10_(_e366, _e368), FeLocal_fe_Complex_f32_87ec9249_10_(_e370, _e372)), _e374), (&fixed_local_1097_), _e852, _e859, _e395, (&fe_trapped));
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e862.camera.center.re.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e862.camera.center.re.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e862.camera.center.re.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e862.camera.center.re.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e862.camera.center.im.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e862.camera.center.im.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e862.camera.center.im.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e862.camera.center.im.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_zoom = _e862.camera.zoom;
    preview_cache[i32(0u)].camera_u002e_res = _e862.camera.res;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_re = _e862.camera.orientation.re;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_im = _e862.camera.orientation.im;
    preview_cache[i32(0u)].reference_generation = _e862.reference_generation;
    preview_cache[i32(0u)].reference_bank = _e862.reference_bank;
    preview_cache[i32(0u)].prefix_only = _e862.prefix_only;
    preview_cache[i32(0u)].step_target = _e862.step_target;
    preview_cache[i32(0u)].completed_steps = _e862.completed_steps;
    preview_cache[i32(0u)].budget = _e862.budget;
    preview_cache[i32(0u)].epoch = _e862.epoch;
    preview_cache[i32(0u)].completed = _e862.completed;
    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e862.history.full.re;
    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e862.history.full.im;
    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e862.history.initial.re;
    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e862.history.initial.im;
    preview_cache[i32(0u)].trace_clock = _e862.trace_clock;
    fixed_local_1169_ = _e199;
    let _e934 = sync_for_frame(FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e204, FeLocal_fe_More_More_Last_60a5ba63_6_(_e206, FeLocal_fe_More_Last_1ac585f5_5_(_e208, FeLocal_fe_Last_eb970eb0_4_(_e210))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e212, FeLocal_fe_More_More_Last_60a5ba63_6_(_e214, FeLocal_fe_More_Last_1ac585f5_5_(_e216, FeLocal_fe_Last_eb970eb0_4_(_e218)))))), _e220, _e222, FeLocal_fe_Complex_f32_87ec9249_10_(_e224, _e226)), _e228, _e230, _e232, _e234, _e236, _e238, _e240, _e242, _e244, _e246), (&fixed_local_1169_), _e852, _e862, FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e265, FeLocal_fe_More_More_Last_60a5ba63_6_(_e267, FeLocal_fe_More_Last_1ac585f5_5_(_e269, FeLocal_fe_Last_eb970eb0_4_(_e271))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e273, FeLocal_fe_More_More_Last_60a5ba63_6_(_e275, FeLocal_fe_More_Last_1ac585f5_5_(_e277, FeLocal_fe_Last_eb970eb0_4_(_e279)))))), _e281, _e283, FeLocal_fe_Complex_f32_87ec9249_10_(_e285, _e287)), _e289, _e291, _e293, _e295, _e297, _e299, _e301, _e303, _e305, _e307), (&fe_trapped));
    if _e834 {
        let _e935 = invalidate_for_new_reference(_e934, (&fe_trapped));
        local_28 = _e935;
    } else {
        local_28 = _e934;
    }
    let _e939 = local_28;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e939.camera.center.re.value.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e939.camera.center.re.value.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e939.camera.center.re.value.tail.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e939.camera.center.re.value.tail.tail.tail.value;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e939.camera.center.im.value.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e939.camera.center.im.value.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e939.camera.center.im.value.tail.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e939.camera.center.im.value.tail.tail.tail.value;
    cache[i32(0u)].camera_u002e_zoom = _e939.camera.zoom;
    cache[i32(0u)].camera_u002e_res = _e939.camera.res;
    cache[i32(0u)].camera_u002e_orientation_u002e_re = _e939.camera.orientation.re;
    cache[i32(0u)].camera_u002e_orientation_u002e_im = _e939.camera.orientation.im;
    cache[i32(0u)].cursor = _e939.cursor;
    cache[i32(0u)].aa = _e939.aa;
    cache[i32(0u)].budget = _e939.budget;
    cache[i32(0u)].radius = _e939.radius;
    cache[i32(0u)].preview_dirty = _e939.preview_dirty;
    cache[i32(0u)].blur_dirty = _e939.blur_dirty;
    cache[i32(0u)].epoch = _e939.epoch;
    cache[i32(0u)].completed = _e939.completed;
    cache[i32(0u)].steps = _e939.steps;
    cache[i32(0u)].frame_clock = _e939.frame_clock;
    let _e1004 = reference[i32(0u)].active_;
    let _e1006 = reference[i32(0u)].active_valid;
    let _e1008 = reference[i32(0u)].pending;
    let _e1013 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e1015 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e1017 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1019 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1021 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1023 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1025 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1027 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1029 = cache[i32(1u)].camera_u002e_zoom;
    let _e1031 = cache[i32(1u)].camera_u002e_res;
    let _e1033 = cache[i32(1u)].camera_u002e_orientation_u002e_re;
    let _e1035 = cache[i32(1u)].camera_u002e_orientation_u002e_im;
    let _e1037 = cache[i32(1u)].cursor;
    let _e1039 = cache[i32(1u)].aa;
    let _e1041 = cache[i32(1u)].budget;
    let _e1043 = cache[i32(1u)].radius;
    let _e1045 = cache[i32(1u)].preview_dirty;
    let _e1047 = cache[i32(1u)].blur_dirty;
    let _e1049 = cache[i32(1u)].epoch;
    let _e1051 = cache[i32(1u)].completed;
    let _e1053 = cache[i32(1u)].steps;
    let _e1055 = cache[i32(1u)].frame_clock;
    let _e1074 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e1076 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e1078 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1080 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1082 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1084 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1086 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1088 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1090 = cache[i32(2u)].camera_u002e_zoom;
    let _e1092 = cache[i32(2u)].camera_u002e_res;
    let _e1094 = cache[i32(2u)].camera_u002e_orientation_u002e_re;
    let _e1096 = cache[i32(2u)].camera_u002e_orientation_u002e_im;
    let _e1098 = cache[i32(2u)].cursor;
    let _e1100 = cache[i32(2u)].aa;
    let _e1102 = cache[i32(2u)].budget;
    let _e1104 = cache[i32(2u)].radius;
    let _e1106 = cache[i32(2u)].preview_dirty;
    let _e1108 = cache[i32(2u)].blur_dirty;
    let _e1110 = cache[i32(2u)].epoch;
    let _e1112 = cache[i32(2u)].completed;
    let _e1114 = cache[i32(2u)].steps;
    let _e1116 = cache[i32(2u)].frame_clock;
    fixed_local_1940_ = _e199;
    let _e1133 = for_view((&fixed_local_1940_), FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1013, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1015, FeLocal_fe_More_Last_1ac585f5_5_(_e1017, FeLocal_fe_Last_eb970eb0_4_(_e1019))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1021, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1023, FeLocal_fe_More_Last_1ac585f5_5_(_e1025, FeLocal_fe_Last_eb970eb0_4_(_e1027)))))), _e1029, _e1031, FeLocal_fe_Complex_f32_87ec9249_10_(_e1033, _e1035)), _e1037, _e1039, _e1041, _e1043, _e1045, _e1047, _e1049, _e1051, _e1053, _e1055), FeLocal_fe_ViewCache_da6e2ccc_23_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1074, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1076, FeLocal_fe_More_Last_1ac585f5_5_(_e1078, FeLocal_fe_Last_eb970eb0_4_(_e1080))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1082, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1084, FeLocal_fe_More_Last_1ac585f5_5_(_e1086, FeLocal_fe_Last_eb970eb0_4_(_e1088)))))), _e1090, _e1092, FeLocal_fe_Complex_f32_87ec9249_10_(_e1094, _e1096)), _e1098, _e1100, _e1102, _e1104, _e1106, _e1108, _e1110, _e1112, _e1114, _e1116), (&fe_trapped));
    let _e1138 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e1140 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e1142 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1144 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1146 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1148 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1150 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1152 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1154 = preview_cache[i32(0u)].camera_u002e_zoom;
    let _e1156 = preview_cache[i32(0u)].camera_u002e_res;
    let _e1158 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_re;
    let _e1160 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_im;
    let _e1162 = preview_cache[i32(0u)].reference_generation;
    let _e1164 = preview_cache[i32(0u)].reference_bank;
    let _e1166 = preview_cache[i32(0u)].prefix_only;
    let _e1168 = preview_cache[i32(0u)].step_target;
    let _e1170 = preview_cache[i32(0u)].completed_steps;
    let _e1172 = preview_cache[i32(0u)].budget;
    let _e1174 = preview_cache[i32(0u)].epoch;
    let _e1176 = preview_cache[i32(0u)].completed;
    let _e1178 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
    let _e1180 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
    let _e1182 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
    let _e1184 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
    let _e1186 = preview_cache[i32(0u)].trace_clock;
    fixed_local_2052_ = FeLocal_fe_PreviewCache_6792a3e2_28_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1138, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1140, FeLocal_fe_More_Last_1ac585f5_5_(_e1142, FeLocal_fe_Last_eb970eb0_4_(_e1144))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1146, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1148, FeLocal_fe_More_Last_1ac585f5_5_(_e1150, FeLocal_fe_Last_eb970eb0_4_(_e1152)))))), _e1154, _e1156, FeLocal_fe_Complex_f32_87ec9249_10_(_e1158, _e1160)), _e1162, _e1164, _e1166, _e1168, _e1170, _e1172, _e1174, _e1176, FeLocal_fe_HistoryOffsets_646326b2_27_(FeLocal_fe_Complex_f32_87ec9249_10_(_e1178, _e1180), FeLocal_fe_Complex_f32_87ec9249_10_(_e1182, _e1184)), _e1186);
    fixed_local_2052_.history = _e1133;
    let _e1207 = fixed_local_2052_;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e1207.camera.center.re.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e1207.camera.center.re.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1207.camera.center.re.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1207.camera.center.re.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e1207.camera.center.im.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e1207.camera.center.im.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1207.camera.center.im.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1207.camera.center.im.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_zoom = _e1207.camera.zoom;
    preview_cache[i32(0u)].camera_u002e_res = _e1207.camera.res;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_re = _e1207.camera.orientation.re;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_im = _e1207.camera.orientation.im;
    preview_cache[i32(0u)].reference_generation = _e1207.reference_generation;
    preview_cache[i32(0u)].reference_bank = _e1207.reference_bank;
    preview_cache[i32(0u)].prefix_only = _e1207.prefix_only;
    preview_cache[i32(0u)].step_target = _e1207.step_target;
    preview_cache[i32(0u)].completed_steps = _e1207.completed_steps;
    preview_cache[i32(0u)].budget = _e1207.budget;
    preview_cache[i32(0u)].epoch = _e1207.epoch;
    preview_cache[i32(0u)].completed = _e1207.completed;
    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e1207.history.full.re;
    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e1207.history.full.im;
    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e1207.history.initial.re;
    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e1207.history.initial.im;
    preview_cache[i32(0u)].trace_clock = _e1207.trace_clock;
    local_29 = 0u;
    loop {
        let _e1282 = local_29;
        let _e1284 = (_e1282 < 2u);
        loop_header_carry_2123_ = _e1284;
        if _e1284 {
            if (_e1006 == 1u) {
                if (_e1282 == _e1004) {
                    local_30 = true;
                } else {
                    local_30 = false;
                }
            } else {
                local_30 = false;
            }
            let _e1297 = local_30;
            if (_e1008 == 1u) {
                if (1u < _e1004) {
                    fe_trapped = true;
                    break;
                } else {
                    if (_e1282 == (1u - _e1004)) {
                        local_31 = true;
                    } else {
                        local_31 = false;
                    }
                }
            } else {
                local_31 = false;
            }
            let _e1312 = local_31;
            if (_e1297 | _e1312) {
                let _e1321 = orbit[i32(((_e1282 * 8195u) + 8193u))].re_w0_bits;
                let _e1323 = orbit[i32(((_e1282 * 8195u) + 8193u))].re_w1_bits;
                let _e1325 = orbit[i32(((_e1282 * 8195u) + 8193u))].re_w2_bits;
                let _e1327 = orbit[i32(((_e1282 * 8195u) + 8193u))].re_w3_bits;
                let _e1329 = orbit[i32(((_e1282 * 8195u) + 8193u))].im_w0_bits;
                let _e1331 = orbit[i32(((_e1282 * 8195u) + 8193u))].im_w1_bits;
                let _e1333 = orbit[i32(((_e1282 * 8195u) + 8193u))].im_w2_bits;
                let _e1335 = orbit[i32(((_e1282 * 8195u) + 8193u))].im_w3_bits;
                let _e1337 = decode(FeLocal_fe_PackedReference_e11ca04a_21_(_e1321, _e1323, _e1325, _e1327, _e1329, _e1331, _e1333, _e1335));
                let _e1338 = center_value(_e166);
                let _e1339 = center_delta(_e1337, _e1338, (&fe_trapped));
                let _e1343 = ((_e1282 * 8195u) + 8194u);
                let _e1347 = orbit[i32(_e1343)].re_w0_bits;
                let _e1349 = orbit[i32(_e1343)].re_w1_bits;
                let _e1351 = orbit[i32(_e1343)].re_w2_bits;
                let _e1353 = orbit[i32(_e1343)].re_w3_bits;
                let _e1355 = orbit[i32(_e1343)].im_w0_bits;
                let _e1357 = orbit[i32(_e1343)].im_w1_bits;
                let _e1359 = orbit[i32(_e1343)].im_w2_bits;
                let _e1361 = orbit[i32(_e1343)].im_w3_bits;
                let _e1363 = with_center_offset(FeLocal_fe_PackedReference_e11ca04a_21_(_e1347, _e1349, _e1351, _e1353, _e1355, _e1357, _e1359, _e1361), _e1339);
                orbit[i32(_e1343)].re_w0_bits = _e1363.re_w0_bits;
                orbit[i32(_e1343)].re_w1_bits = _e1363.re_w1_bits;
                orbit[i32(_e1343)].re_w2_bits = _e1363.re_w2_bits;
                orbit[i32(_e1343)].re_w3_bits = _e1363.re_w3_bits;
                orbit[i32(_e1343)].im_w0_bits = _e1363.im_w0_bits;
                orbit[i32(_e1343)].im_w1_bits = _e1363.im_w1_bits;
                orbit[i32(_e1343)].im_w2_bits = _e1363.im_w2_bits;
                orbit[i32(_e1343)].im_w3_bits = _e1363.im_w3_bits;
            }
            local_29 = (_e1282 + 1u);
            continue;
        } else {
            break;
        }
    }
    if _e123 {
        let _e1391 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e1393 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e1395 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e1397 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e1399 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e1401 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e1403 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e1405 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e1407 = preview_cache[i32(0u)].camera_u002e_zoom;
        let _e1409 = preview_cache[i32(0u)].camera_u002e_res;
        let _e1411 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_re;
        let _e1413 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_im;
        let _e1415 = preview_cache[i32(0u)].reference_generation;
        let _e1417 = preview_cache[i32(0u)].reference_bank;
        let _e1419 = preview_cache[i32(0u)].prefix_only;
        let _e1421 = preview_cache[i32(0u)].step_target;
        let _e1423 = preview_cache[i32(0u)].completed_steps;
        let _e1425 = preview_cache[i32(0u)].budget;
        let _e1427 = preview_cache[i32(0u)].epoch;
        let _e1429 = preview_cache[i32(0u)].completed;
        let _e1431 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e1433 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e1435 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e1437 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        let _e1439 = preview_cache[i32(0u)].trace_clock;
        fixed_local_2388_ = FeLocal_fe_PreviewCache_6792a3e2_28_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1391, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1393, FeLocal_fe_More_Last_1ac585f5_5_(_e1395, FeLocal_fe_Last_eb970eb0_4_(_e1397))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e1399, FeLocal_fe_More_More_Last_60a5ba63_6_(_e1401, FeLocal_fe_More_Last_1ac585f5_5_(_e1403, FeLocal_fe_Last_eb970eb0_4_(_e1405)))))), _e1407, _e1409, FeLocal_fe_Complex_f32_87ec9249_10_(_e1411, _e1413)), _e1415, _e1417, _e1419, _e1421, _e1423, _e1425, _e1427, _e1429, FeLocal_fe_HistoryOffsets_646326b2_27_(FeLocal_fe_Complex_f32_87ec9249_10_(_e1431, _e1433), FeLocal_fe_Complex_f32_87ec9249_10_(_e1435, _e1437)), _e1439);
        fixed_local_2388_.trace_clock = _e33;
        let _e1460 = fixed_local_2388_;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e1460.camera.center.re.value.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e1460.camera.center.re.value.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1460.camera.center.re.value.tail.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1460.camera.center.re.value.tail.tail.tail.value;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e1460.camera.center.im.value.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e1460.camera.center.im.value.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1460.camera.center.im.value.tail.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1460.camera.center.im.value.tail.tail.tail.value;
        preview_cache[i32(0u)].camera_u002e_zoom = _e1460.camera.zoom;
        preview_cache[i32(0u)].camera_u002e_res = _e1460.camera.res;
        preview_cache[i32(0u)].camera_u002e_orientation_u002e_re = _e1460.camera.orientation.re;
        preview_cache[i32(0u)].camera_u002e_orientation_u002e_im = _e1460.camera.orientation.im;
        preview_cache[i32(0u)].reference_generation = _e1460.reference_generation;
        preview_cache[i32(0u)].reference_bank = _e1460.reference_bank;
        preview_cache[i32(0u)].prefix_only = _e1460.prefix_only;
        preview_cache[i32(0u)].step_target = _e1460.step_target;
        preview_cache[i32(0u)].completed_steps = _e1460.completed_steps;
        preview_cache[i32(0u)].budget = _e1460.budget;
        preview_cache[i32(0u)].epoch = _e1460.epoch;
        preview_cache[i32(0u)].completed = _e1460.completed;
        preview_cache[i32(0u)].history_u002e_full_u002e_re = _e1460.history.full.re;
        preview_cache[i32(0u)].history_u002e_full_u002e_im = _e1460.history.full.im;
        preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e1460.history.initial.re;
        preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e1460.history.initial.im;
        preview_cache[i32(0u)].trace_clock = _e1460.trace_clock;
    }
    let _e1531 = fe_trapped;
    trap[0u] = u32(_e1531);
}
