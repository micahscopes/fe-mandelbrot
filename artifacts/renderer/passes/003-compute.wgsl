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

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_6: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_47: u32;
    var local_48: bool = false;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_6);
    let _e4 = (_e2 - 1u);
    precision_lib_array_fixed_signed_word_0309_(_e4, fe_trapped_6);
    let _e12 = ((_e4 & 2147483648u) != 0u);
    let _e13 = ((13u & 2147483648u) != 0u);
    let _e17 = select(_e4, (0u - _e4), _e12);
    let _e21 = (_e17 != 0u);
    if (_e21 && (select(13u, (0u - 13u), _e13) > (select((2147483648u - 1u), 2147483648u, (_e12 != _e13)) / select(1u, _e17, _e21)))) {
        (*fe_trapped_6) = true;
    } else {
        local_47 = (_e4 * 13u);
        local_48 = true;
    }
    let _e31 = local_47;
    return _e31;
}

fn precision_lib_array_fixed_unsigned_word_3f05_(a0_7: u32, fe_trapped_7: ptr<function, bool>) {
    std_lib_evm_effects_assert_0f66_(((bitcast<i32>(a0_7) < bitcast<i32>(0u)) == false), fe_trapped_7);
    return;
}

fn load_significand_g16d4_(a0_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_: u32, a2_: u32, fe_trapped_8: ptr<function, bool>) {
    var local_49: u32 = u32();
    var local_50: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_8_: bool;
    var local_51: u32 = u32();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_8);
    local_49 = a2_;
    local_50 = 0u;
    loop {
        let _e12 = local_49;
        let _e14 = local_50;
        let _e15 = (_e14 < _e4);
        loop_header_carry_8_ = _e15;
        if _e15 {
            if ((bitcast<i32>(_e12) < bitcast<i32>(24u)) == false) {
                local_51 = 0u;
            } else {
                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e12)) == false) {
                    local_51 = 0u;
                } else {
                    if ((bitcast<i32>(_e12) < bitcast<i32>(0u)) == false) {
                        precision_lib_array_fixed_unsigned_word_3f05_(_e12, fe_trapped_8);
                        local_51 = ((a1_ >> _e12) & 8191u);
                    } else {
                        let _e39 = (0u - _e12);
                        precision_lib_array_fixed_unsigned_word_3f05_(_e39, fe_trapped_8);
                        local_51 = ((a1_ << _e39) & 8191u);
                    }
                }
            }
            let _e50 = local_51;
            (*a0_8).digits[_e14] = _e50;
            let _e56 = (_e12 + 13u);
            if ((((_e12 ^ _e56) & (13u ^ _e56)) & 2147483648u) != 0u) {
                (*fe_trapped_8) = true;
                break;
            }
            local_49 = _e56;
            local_50 = (_e14 + 1u);
            continue;
        } else {
            loop_did_return_3 = true;
            break;
        }
    }
    return;
}

fn from_binary32_bits_g16d4_(a0_9: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    var local_52: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_53: bool = false;
    var local_54: bool = bool();
    var fixed_local_7_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_55: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_56: bool = false;
    var local_57: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_58: bool = false;

    let _e5 = (a0_9 & 2147483647u);
    std_lib_evm_effects_assert_0f66_((_e5 < 1174405120u), fe_trapped_9);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_9);
    fixed_local_7_ = _e8;
    if (((a0_9 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_54 = true;
        }
    }
    let _e25 = local_54;
    fixed_local_7_.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_;
        local_55 = _e31;
        local_56 = true;
    }
    let _e82 = local_56;
    if _e82 {
    } else {
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_9);
        let _e43 = (_e28 - 150u);
        if ((((_e28 ^ _e43) & (_e28 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e49 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_((&fixed_local_7_), fe_trapped_9);
            let _e52 = (_e43 + _e49);
            if ((((_e43 ^ _e52) & (_e49 ^ _e52)) & 2147483648u) != 0u) {
            } else {
                let _e61 = (0u - _e52);
                if ((((0u ^ _e61) & (0u ^ _e52)) & 2147483648u) != 0u) {
                } else {
                    load_significand_g16d4_((&fixed_local_7_), ((_e5 & 8388607u) | 8388608u), _e61, fe_trapped_9);
                    let _e67 = fixed_local_7_;
                    local_57 = _e67;
                    local_58 = true;
                }
                let _e72 = local_58;
                if _e72 {
                }
            }
            let _e74 = local_58;
            if _e74 {
            }
        }
        let _e77 = local_58;
        if _e77 {
        } else {
            (*fe_trapped_9) = true;
        }
        let _e79 = local_57;
        local_55 = _e79;
    }
    let _e84 = local_55;
    return _e84;
}

fn from_f32_g16d4_(a0_10: f32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    let _e3 = from_binary32_bits_g16d4_(bitcast<u32>(a0_10), fe_trapped_10);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_g16d4_2244_(a0_11: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_1: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a2_1: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_11: ptr<function, bool>) {
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_7_: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_11);
    local_59 = 0u;
    local_60 = 0u;
    loop {
        let _e13 = local_59;
        let _e15 = local_60;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_ = _e16;
        if _e16 {
            let _e19 = (*a1_1).digits[_e15];
            let _e22 = (*a2_1).digits[_e15];
            let _e24 = (_e19 + _e22);
            if (_e19 > (4294967295u - _e22)) {
            } else {
                let _e28 = (_e24 + _e13);
                if (_e24 > (4294967295u - _e13)) {
                    (*fe_trapped_11) = true;
                    break;
                }
                (*a0_11).digits[_e15] = (_e28 & 8191u);
                local_59 = (_e28 >> 13u);
                local_60 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_11) = true;
            break;
        } else {
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c(a0_12: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_12: ptr<function, bool>) -> bool {
    var local_61: u32 = u32();
    var loop_result_5: bool;
    var loop_did_return_5: bool = false;
    var loop_header_carry_5_1: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_12);
    local_61 = _e3;
    loop {
        let _e8 = local_61;
        let _e10 = (0u < _e8);
        loop_header_carry_5_1 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_12).digits[_e12];
            let _e18 = (*a1_2).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_61 = _e12;
                continue;
            }
            let _e25 = (*a0_12).digits[_e12];
            let _e28 = (*a1_2).digits[_e12];
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

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_g16d4_403b(a0_13: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a2_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a3_: bool, fe_trapped_13: ptr<function, bool>) {
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_8_1: bool;
    var local_64: u32 = u32();
    var local_65: u32 = u32();

    let _e5 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_13);
    local_62 = 0u;
    local_63 = 0u;
    loop {
        let _e14 = local_62;
        let _e16 = local_63;
        let _e17 = (_e16 < _e5);
        loop_header_carry_8_1 = _e17;
        if _e17 {
            if a3_ {
                let _e21 = (*a2_2).digits[_e16];
                local_64 = _e21;
            } else {
                let _e24 = (*a1_3).digits[_e16];
                local_64 = _e24;
            }
            let _e29 = local_64;
            if a3_ {
                let _e32 = (*a1_3).digits[_e16];
                local_65 = _e32;
            } else {
                let _e35 = (*a2_2).digits[_e16];
                local_65 = _e35;
            }
            let _e39 = local_65;
            let _e42 = (8192u + _e29);
            if (8192u > (4294967295u - _e29)) {
            } else {
                let _e45 = (_e42 - _e39);
                if (_e42 < _e39) {
                } else {
                    let _e47 = (_e45 - _e14);
                    if (_e45 < _e14) {
                    } else {
                        (*a0_13).digits[_e16] = (_e47 & 8191u);
                        let _e54 = (_e47 >> 13u);
                        if (1u < _e54) {
                            (*fe_trapped_13) = true;
                            break;
                        }
                        local_62 = (1u - _e54);
                        local_63 = (_e16 + 1u);
                        continue;
                    }
                }
            }
            (*fe_trapped_13) = true;
            break;
        } else {
            loop_did_return_6 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_14: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_, a1_4: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    var local_66: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_;
    var local_67: bool = false;
    var fixed_local_3_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_56_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_58_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var local_68: bool = bool();
    var fixed_local_60_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_62_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_96_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();
    var fixed_local_98_: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_14);
    fixed_local_3_ = _e4;
    fixed_local_3_.negative = a0_14.negative;
    if (a0_14.negative == a1_4.negative) {
        fixed_local_56_ = a0_14;
        fixed_local_58_ = a1_4;
        precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_g16d4_2244_((&fixed_local_3_), (&fixed_local_56_), (&fixed_local_58_), fe_trapped_14);
    } else {
        fixed_local_60_ = a0_14;
        fixed_local_62_ = a1_4;
        let _e21 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_g16d4_8d9c((&fixed_local_60_), (&fixed_local_62_), fe_trapped_14);
        if _e21 {
            local_68 = a1_4.negative;
        } else {
            local_68 = a0_14.negative;
        }
        let _e27 = local_68;
        fixed_local_3_.negative = _e27;
        fixed_local_96_ = a0_14;
        fixed_local_98_ = a1_4;
        precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_g16d4_403b((&fixed_local_3_), (&fixed_local_96_), (&fixed_local_98_), _e21, fe_trapped_14);
    }
    let _e33 = fixed_local_3_;
    return _e33;
}

fn from_expansion_g16d4_(a0_15: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_15: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    let _e2 = to_quad(a0_15);
    let _e7 = from_f32_g16d4_(_e2.f0_, fe_trapped_15);
    let _e8 = from_f32_g16d4_(_e2.f1_, fe_trapped_15);
    let _e9 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e7, _e8, fe_trapped_15);
    let _e10 = from_f32_g16d4_(_e2.f2_, fe_trapped_15);
    let _e11 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e9, _e10, fe_trapped_15);
    let _e12 = from_f32_g16d4_(_e2.f3_, fe_trapped_15);
    let _e13 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e11, _e12, fe_trapped_15);
    let _e14 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_g16d4_1118_(fe_trapped_15);
    let _e15 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(_e13, _e14, fe_trapped_15);
    return _e15;
}

fn neg_g16d4_(a0_16: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_1_((a0_16.negative == false), a0_16.digits);
}

fn sub_g16d4_(a0_17: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_, a1_5: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ {
    let _e3 = neg_g16d4_(a1_5);
    let _e4 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_g16d4_2831_(a0_17, _e3, fe_trapped_16);
    return _e4;
}

fn precision_lib_fixed_limb_highest_bit_5b70_(a0_18: u32) -> u32 {
    var local_69: u32;
    var local_70: bool = false;
    var local_71: u32 = u32();

    if ((a0_18 < 4096u) == false) {
        local_71 = 12u;
    } else {
        if ((a0_18 < 2048u) == false) {
            local_71 = 11u;
        } else {
            if ((a0_18 < 1024u) == false) {
                local_71 = 10u;
            } else {
                if ((a0_18 < 512u) == false) {
                    local_71 = 9u;
                } else {
                    if ((a0_18 < 256u) == false) {
                        local_71 = 8u;
                    } else {
                        if ((a0_18 < 128u) == false) {
                            local_71 = 7u;
                        } else {
                            if ((a0_18 < 64u) == false) {
                                local_71 = 6u;
                            } else {
                                if ((a0_18 < 32u) == false) {
                                    local_71 = 5u;
                                } else {
                                    if ((a0_18 < 16u) == false) {
                                        local_71 = 4u;
                                    } else {
                                        if ((a0_18 < 8u) == false) {
                                            local_71 = 3u;
                                        } else {
                                            if ((a0_18 < 4u) == false) {
                                                local_71 = 2u;
                                            } else {
                                                if ((a0_18 < 2u) == false) {
                                                    local_71 = 1u;
                                                } else {
                                                    if (a0_18 == 1u) {
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

fn highest_bit_g16d4_(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_72: u32 = u32();
    var local_73: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_4_: bool;
    var local_74: u32;
    var local_75: bool = false;
    var local_76: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_17);
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
                let _e21 = (*a0_19).digits[_e18];
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
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_17);
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
                local_76 = _e58;
            }
        }
    }
    let _e69 = local_76;
    return _e69;
}

fn word_from_g16d4_(a0_20: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_6: u32, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_77: u32;
    var local_78: bool = false;
    var local_79: u32;
    var local_80: bool = false;
    var local_81: u32 = u32();
    var local_82: u32 = u32();
    var local_83: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_34_: bool;

    if (bitcast<i32>(a1_6) < bitcast<i32>(0u)) {
        local_77 = 0u;
        local_78 = true;
    }
    let _e77 = local_78;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_6, fe_trapped_18);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_18);
        let _e15 = (a1_6 / 13u);
        if ((_e15 < _e13) == false) {
            local_79 = 0u;
            local_80 = true;
        }
        let _e72 = local_80;
        if _e72 {
        } else {
            let _e24 = (a1_6 % 13u);
            let _e27 = (*a0_20).digits[_e15];
            local_81 = (13u - _e24);
            local_82 = (_e27 >> _e24);
            local_83 = (_e15 + 1u);
            loop {
                let _e41 = local_81;
                let _e43 = local_82;
                let _e45 = local_83;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_ = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_20).digits[_e45];
                        local_81 = (_e41 + 13u);
                        local_82 = (_e43 | (_e51 << _e41));
                        local_83 = (_e45 + 1u);
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
            local_79 = _e69;
        }
        let _e74 = local_79;
        local_77 = _e74;
    }
    let _e79 = local_77;
    return _e79;
}

fn bit_at(a0_21: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_7: u32, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_84: u32;
    var local_85: bool = false;
    var local_86: u32;
    var local_87: bool = false;

    if (bitcast<i32>(a1_7) < bitcast<i32>(0u)) {
        local_84 = 0u;
        local_85 = true;
    }
    let _e38 = local_85;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_7, fe_trapped_19);
        let _e14 = (a1_7 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_19);
        if ((_e14 < _e15) == false) {
            local_86 = 0u;
            local_87 = true;
        }
        let _e33 = local_87;
        if _e33 {
        } else {
            let _e25 = (*a0_21).digits[_e14];
            local_86 = ((_e25 >> (a1_7 % 13u)) & 1u);
        }
        let _e35 = local_86;
        local_84 = _e35;
    }
    let _e40 = local_84;
    return _e40;
}

fn any_below(a0_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, a1_8: u32, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_88: u32;
    var local_89: bool = false;
    var local_90: u32 = u32();
    var local_91: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_15_: bool;
    var local_92: u32;
    var local_93: bool = false;
    var local_94: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_8)) == false) {
        local_88 = 0u;
        local_89 = true;
    }
    let _e65 = local_89;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_8, fe_trapped_20);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_20);
        local_90 = 0u;
        local_91 = 0u;
        loop {
            let _e25 = local_90;
            let _e27 = local_91;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_8 / 13u)) {
                    let _e32 = (*a0_22).digits[_e27];
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
            let _e50 = (*a0_22).digits[_e42];
            let _e52 = (1u << (a1_8 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_20) = true;
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

fn project_binary32_(a0_23: u32, a1_9: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_21: ptr<function, bool>) -> u32 {
    var local_95: u32;
    var local_96: bool = false;
    var local_97: u32 = u32();
    var local_98: u32 = u32();
    var local_99: u32 = u32();
    var local_100: u32 = u32();
    var local_101: u32 = u32();

    let _e5 = highest_bit_g16d4_(a1_9, fe_trapped_21);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_9, fe_trapped_21);
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
                    let _e40 = word_from_g16d4_(a1_9, 0u, fe_trapped_21);
                    local_98 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from_g16d4_(a1_9, _e32, fe_trapped_21);
                    local_98 = _e42;
                }
                let _e47 = local_98;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_9, _e49, fe_trapped_21);
                let _e51 = any_below(a1_9, _e49, fe_trapped_21);
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
                    (*fe_trapped_21) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_21) = true;
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
                    local_97 = (((a0_23 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_97;
    return _e103;
}

fn to_binary32_bits(a0_24: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_22: ptr<function, bool>) -> u32 {
    var local_102: u32;
    var local_103: bool = false;
    var local_104: u32 = u32();

    let _e5 = (*a0_24).negative;
    if _e5 {
        local_104 = 1u;
    }
    let _e9 = local_104;
    let _e10 = project_binary32_(_e9, a0_24, fe_trapped_22);
    return _e10;
}

fn to_f32_(a0_25: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_1_>, fe_trapped_23: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_25, fe_trapped_23);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_26: FeLocal_fe_More_More_More_Last_e6310ae8_7_, a1_10: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_24: ptr<function, bool>) -> f32 {
    var fixed_local_7_1: FeLocal_fe_ArrayFixed_10_4b1c4a24_1_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_1_();

    let _e3 = from_expansion_g16d4_(a1_10, fe_trapped_24);
    let _e4 = from_expansion_g16d4_(a0_26, fe_trapped_24);
    let _e5 = sub_g16d4_(_e3, _e4, fe_trapped_24);
    fixed_local_7_1 = _e5;
    let _e8 = to_f32_((&fixed_local_7_1), fe_trapped_24);
    return _e8;
}

fn center_delta(a0_27: FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_, a1_11: FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_, fe_trapped_25: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    let _e5 = expansion_difference(a0_27.re, a1_11.re, fe_trapped_25);
    let _e8 = expansion_difference(a0_27.im, a1_11.im, fe_trapped_25);
    return FeLocal_fe_Complex_f32_87ec9249_10_(_e5, _e8);
}

fn impl_ReferenceAnchor_delta_from(a0_28: FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_, a1_12: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, fe_trapped_26: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    let _e5 = (*a1_12).camera;
    let _e6 = center_value(_e5);
    let _e7 = center_delta(a0_28.center, _e6, fe_trapped_26);
    return _e7;
}

fn impl_trait_f32_abs(a0_29: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_29) & 2147483647u));
}

fn is_input_settled(a0_30: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> bool {
    var local_105: bool;
    var local_106: bool = false;
    var local_107: bool = bool();

    let _e4 = (*a0_30).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_30).clock;
        let _e10 = (*a0_30).last_input;
        if (60f <= (_e8 - _e10)) {
            local_107 = true;
        }
    }
    let _e17 = local_107;
    return _e17;
}

fn preview_uses_pending(a0_31: u32, a1_13: u32, a2_3: u32, a3_1: bool) -> bool {
    var local_108: bool;
    var local_109: bool = false;
    var local_110: bool = bool();

    if (a1_13 == 1u) {
        if (0u < a2_3) {
            if ((a0_31 == 0u) | a3_1) {
                local_110 = true;
            }
        }
    }
    let _e16 = local_110;
    return _e16;
}

fn select_preview_bank(a0_32: u32, a1_14: u32, a2_4: u32, a3_2: u32, a4_: bool, fe_trapped_27: ptr<function, bool>) -> u32 {
    var local_111: u32;
    var local_112: bool = false;
    var local_113: u32 = u32();

    let _e8 = preview_uses_pending(a1_14, a2_4, a3_2, a4_);
    if _e8 {
        if (1u < a0_32) {
            (*fe_trapped_27) = true;
        } else {
            local_113 = (1u - a0_32);
        }
    } else {
        local_113 = a0_32;
    }
    let _e16 = local_113;
    return _e16;
}

fn preview_bank(a0_33: FeLocal_fe_ReferenceControl_7d077120_3_, a1_15: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, fe_trapped_28: ptr<function, bool>) -> u32 {
    let _e7 = is_input_settled(a1_15);
    let _e8 = select_preview_bank(a0_33.active_, a0_33.active_valid, a0_33.pending, a0_33.index, _e7, fe_trapped_28);
    return _e8;
}

fn key(a0_34: FeLocal_fe_PreviewCache_6792a3e2_28_) -> FeLocal_fe_PreviewKey_592da546_26_ {
    return FeLocal_fe_PreviewKey_592da546_26_(a0_34.camera, a0_34.reference_generation, a0_34.reference_bank);
}

fn precision_lib_impl_trait_Last_915d_eq_6590_(a0_35: f32, a1_16: f32) -> bool {
    return (a0_35 == a1_16);
}

fn precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_36: FeLocal_fe_More_Last_1ac585f5_5_, a1_17: FeLocal_fe_More_Last_1ac585f5_5_) -> bool {
    var local_114: bool;
    var local_115: bool = false;
    var local_116: bool = bool();

    if (a0_36.lead == a1_17.lead) {
        let _e11 = precision_lib_impl_trait_Last_915d_eq_6590_(a0_36.tail.value, a1_17.tail.value);
        if _e11 {
            local_116 = true;
        }
    }
    let _e15 = local_116;
    return _e15;
}

fn precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_37: FeLocal_fe_More_More_Last_60a5ba63_6_, a1_18: FeLocal_fe_More_More_Last_60a5ba63_6_) -> bool {
    var local_117: bool;
    var local_118: bool = false;
    var local_119: bool = bool();

    if (a0_37.lead == a1_18.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_37.tail, a1_18.tail);
        if _e9 {
            local_119 = true;
        }
    }
    let _e13 = local_119;
    return _e13;
}

fn precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_38: FeLocal_fe_More_More_More_Last_e6310ae8_7_, a1_19: FeLocal_fe_More_More_More_Last_e6310ae8_7_) -> bool {
    var local_120: bool;
    var local_121: bool = false;
    var local_122: bool = bool();

    if (a0_38.lead == a1_19.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_38.tail, a1_19.tail);
        if _e9 {
            local_122 = true;
        }
    }
    let _e13 = local_122;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_39: FeLocal_fe_Coordinate_bdc10f09_8_, a1_20: FeLocal_fe_Coordinate_bdc10f09_8_) -> bool {
    var local_123: bool;
    var local_124: bool = false;
    var local_125: bool = bool();

    let _e6 = precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_39.value, a1_20.value);
    if _e6 {
        local_125 = true;
    }
    let _e10 = local_125;
    return _e10;
}

fn algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_40: FeLocal_fe_Complex_Coordinate_d4657101_9_, a1_21: FeLocal_fe_Complex_Coordinate_d4657101_9_) -> bool {
    var local_126: bool;
    var local_127: bool = false;
    var local_128: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_40.re, a1_21.re);
    if _e6 {
        let _e9 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_40.im, a1_21.im);
        if _e9 {
            local_128 = true;
        }
    }
    let _e13 = local_128;
    return _e13;
}

fn algebra_lib_impl_trait_Complex_bbfa_eq_ge58b_4587_(a0_41: FeLocal_fe_Complex_f32_87ec9249_10_, a1_22: FeLocal_fe_Complex_f32_87ec9249_10_) -> bool {
    var local_129: bool;
    var local_130: bool = false;
    var local_131: bool = bool();

    if (a0_41.re == a1_22.re) {
        if (a0_41.im == a1_22.im) {
            local_131 = true;
        }
    }
    let _e13 = local_131;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_42: FeLocal_fe_Camera_03494b0d_11_, a1_23: FeLocal_fe_Camera_03494b0d_11_) -> bool {
    var local_132: bool;
    var local_133: bool = false;
    var local_134: bool = bool();

    let _e6 = algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_42.center, a1_23.center);
    if _e6 {
        if (a0_42.zoom == a1_23.zoom) {
            if (a0_42.res == a1_23.res) {
                let _e15 = algebra_lib_impl_trait_Complex_bbfa_eq_ge58b_4587_(a0_42.orientation, a1_23.orientation);
                if _e15 {
                    local_134 = true;
                }
            }
        }
    }
    let _e19 = local_134;
    return _e19;
}

fn impl_trait_PreviewKey_eq(a0_43: FeLocal_fe_PreviewKey_592da546_26_, a1_24: FeLocal_fe_PreviewKey_592da546_26_) -> bool {
    var local_135: bool;
    var local_136: bool = false;
    var local_137: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_43.camera, a1_24.camera);
    if _e6 {
        if (a0_43.reference_generation == a1_24.reference_generation) {
            if (a0_43.reference_bank == a1_24.reference_bank) {
                local_137 = true;
            }
        }
    }
    let _e16 = local_137;
    return _e16;
}

fn uses_pending_for_preview(a0_44: FeLocal_fe_ReferenceControl_7d077120_3_, a1_25: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> bool {
    let _e5 = is_input_settled(a1_25);
    let _e6 = preview_uses_pending(a0_44.active_valid, a0_44.pending, a0_44.index, _e5);
    return _e6;
}

fn preview_has_reference(a0_45: u32, a1_26: u32, a2_5: u32) -> bool {
    var local_138: bool;
    var local_139: bool = false;
    var local_140: bool = bool();

    if (a0_45 == 1u) {
        local_140 = true;
    } else {
        if (a1_26 == 1u) {
            if (0u < a2_5) {
                local_140 = true;
            }
        }
    }
    let _e16 = local_140;
    return _e16;
}

fn has_preview_reference(a0_46: FeLocal_fe_ReferenceControl_7d077120_3_) -> bool {
    let _e4 = preview_has_reference(a0_46.active_valid, a0_46.pending, a0_46.index);
    return _e4;
}

fn available_preview_steps(a0_47: FeLocal_fe_ReferenceControl_7d077120_3_, a1_27: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a2_6: u32) -> u32 {
    var local_141: u32;
    var local_142: bool = false;
    var local_143: u32 = u32();

    let _e5 = has_preview_reference(a0_47);
    if (_e5 == false) {
    } else {
        let _e8 = uses_pending_for_preview(a0_47, a1_27);
        if _e8 {
            if (a0_47.index < a2_6) {
                local_143 = a0_47.index;
            } else {
                local_143 = a2_6;
            }
        } else {
            local_143 = a2_6;
        }
    }
    let _e16 = local_143;
    return _e16;
}

fn next_preview_step_target(a0_48: u32, a1_28: u32, fe_trapped_29: ptr<function, bool>) -> u32 {
    var local_144: u32;
    var local_145: bool = false;
    var local_146: u32;
    var local_147: bool = false;
    var local_148: u32 = u32();

    let _e6 = (a0_48 + 256u);
    if (a0_48 > (4294967295u - 256u)) {
        (*fe_trapped_29) = true;
    }
    if (_e6 < a1_28) {
        local_148 = _e6;
    } else {
        local_148 = a1_28;
    }
    let _e16 = local_148;
    return _e16;
}

fn preview_is_completed(a0_49: u32, a1_29: u32, a2_7: u32) -> bool {
    var local_149: bool;
    var local_150: bool = false;
    var local_151: bool = bool();

    if (a0_49 == 0u) {
        if (0u < a2_7) {
            if ((a1_29 < a2_7) == false) {
                local_151 = true;
            }
        }
    }
    let _e15 = local_151;
    return _e15;
}

fn sync_with_view(a0_50: FeLocal_fe_PreviewCache_6792a3e2_28_, a1_30: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a2_8: FeLocal_fe_ReferenceControl_7d077120_3_, a3_3: u32, a4_1: u32, fe_trapped_30: ptr<function, bool>) -> FeLocal_fe_PreviewCache_6792a3e2_28_ {
    var local_152: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_153: bool = false;
    var local_154: bool = bool();
    var local_155: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_156: bool = false;
    var local_157: u32 = u32();
    var local_158: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_159: bool = false;
    var local_160: u32 = u32();
    var local_161: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_162: bool = false;
    var local_163: u32 = u32();
    var local_164: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_165: bool = false;
    var local_166: u32 = u32();

    let _e9 = (*a1_30).camera;
    let _e10 = preview_bank(a2_8, a1_30, fe_trapped_30);
    let _e12 = key(a0_50);
    let _e13 = impl_trait_PreviewKey_eq(_e12, FeLocal_fe_PreviewKey_592da546_26_(_e9, a3_3, _e10));
    if _e13 {
        if (a0_50.budget == a4_1) {
            if ((a0_50.epoch == 0u) == false) {
                local_154 = true;
            }
        }
    }
    let _e26 = local_154;
    let _e27 = uses_pending_for_preview(a2_8, a1_30);
    if _e27 {
        local_157 = 1u;
    }
    let _e33 = local_157;
    let _e34 = available_preview_steps(a2_8, a1_30, a4_1);
    if _e26 {
        local_160 = a0_50.completed_steps;
    }
    let _e40 = local_160;
    let _e41 = next_preview_step_target(_e40, _e34, fe_trapped_30);
    if _e26 {
        let _e42 = preview_is_completed(_e33, _e40, a4_1);
        if _e42 {
            local_163 = a0_50.completed;
        }
    }
    let _e48 = local_163;
    let _e49 = preview_bank(a2_8, a1_30, fe_trapped_30);
    if _e26 {
        local_166 = a0_50.epoch;
    } else {
        if (a0_50.epoch > (4294967295u - 1u)) {
            (*fe_trapped_30) = true;
        } else {
            local_166 = (a0_50.epoch + 1u);
        }
    }
    let _e61 = local_166;
    return FeLocal_fe_PreviewCache_6792a3e2_28_(_e9, a3_3, _e49, _e33, _e41, _e40, a4_1, _e61, _e48, a0_50.history, a0_50.trace_clock);
}

fn max_(a0_51: f32, a1_31: f32) -> f32 {
    var local_167: f32;
    var local_168: bool = false;
    var local_169: f32 = f32();

    if (a1_31 < a0_51) {
        local_169 = a0_51;
    } else {
        local_169 = a1_31;
    }
    let _e8 = local_169;
    return _e8;
}

fn display_age(a0_52: FeLocal_fe_ReferenceControl_7d077120_3_, a1_32: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> f32 {
    var local_170: f32;
    var local_171: bool = false;
    var local_172: f32 = f32();

    let _e5 = (*a1_32).drag_active;
    if (0.5f <= _e5) {
    } else {
        if (a0_52.pending == 1u) {
        } else {
            let _e12 = (*a1_32).clock;
            let _e14 = (*a1_32).last_input;
            let _e16 = max_(_e14, a0_52.ready_at);
            let _e19 = max_(0f, (_e12 - _e16));
            local_172 = _e19;
        }
    }
    let _e22 = local_172;
    return _e22;
}

fn clamp_f(a0_53: f32, a1_33: f32, a2_9: f32) -> f32 {
    var local_173: f32;
    var local_174: bool = false;
    var local_175: f32 = f32();

    if (a0_53 < a1_33) {
        local_175 = a1_33;
    } else {
        if (a2_9 < a0_53) {
            local_175 = a2_9;
        } else {
            local_175 = a0_53;
        }
    }
    let _e11 = local_175;
    return _e11;
}

fn progress(a0_54: f32, a1_34: f32, a2_10: f32) -> f32 {
    let _e7 = clamp_f(((a0_54 - a1_34) / a2_10), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_55: f32) -> f32 {
    let _e3 = progress(a0_55, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn impl_ViewCache_refinement_key(a0_56: FeLocal_fe_ViewCache_da6e2ccc_23_) -> FeLocal_fe_RefinementKey_028ab549_25_ {
    return FeLocal_fe_RefinementKey_028ab549_25_(a0_56.camera, a0_56.aa);
}

fn impl_MandelbrotViewState_refinement_key(a0_57: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> FeLocal_fe_RefinementKey_028ab549_25_ {
    let _e2 = (*a0_57).camera;
    let _e4 = (*a0_57).antialias;
    return FeLocal_fe_RefinementKey_028ab549_25_(_e2, _e4);
}

fn impl_trait_RefinementKey_eq(a0_58: FeLocal_fe_RefinementKey_028ab549_25_, a1_35: FeLocal_fe_RefinementKey_028ab549_25_) -> bool {
    var local_176: bool;
    var local_177: bool = false;
    var local_178: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_58.camera, a1_35.camera);
    if _e6 {
        if (a0_58.antialias == a1_35.antialias) {
            local_178 = true;
        }
    }
    let _e13 = local_178;
    return _e13;
}

fn sync_for_frame(a0_59: FeLocal_fe_ViewCache_da6e2ccc_23_, a1_36: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a2_11: FeLocal_fe_ReferenceControl_7d077120_3_, a3_4: FeLocal_fe_PreviewCache_6792a3e2_28_, a4_2: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_31: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_23_ {
    var local_179: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_180: bool = false;
    var local_181: bool = bool();
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
    var local_194: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_195: bool = false;
    var local_196: u32 = u32();

    let _e9 = display_age(a2_11, a1_36);
    let _e10 = blur_radius(_e9);
    let _e11 = impl_ViewCache_refinement_key(a0_59);
    let _e12 = impl_MandelbrotViewState_refinement_key(a1_36);
    let _e13 = impl_trait_RefinementKey_eq(_e11, _e12);
    if (a4_2.completed == 1u) {
        if (a4_2.epoch == a0_59.epoch) {
            local_181 = true;
        }
    }
    let _e25 = local_181;
    let _e26 = has_preview_reference(a2_11);
    if (_e26 == false) {
    } else {
        if _e13 {
            if (a0_59.budget == a3_4.budget) {
                if (a3_4.completed == 1u) {
                    if (((360f <= _e9) == false) | (_e25 == false)) {
                        local_184 = 1u;
                    }
                } else {
                    local_184 = 1u;
                }
            } else {
                local_184 = 1u;
            }
        } else {
            local_184 = 1u;
        }
    }
    let _e52 = local_184;
    let _e53 = has_preview_reference(a2_11);
    if (_e53 == false) {
    } else {
        if (_e52 == 0u) {
            if (a0_59.radius == _e10) {
            } else {
                local_187 = 1u;
            }
        } else {
            local_187 = 1u;
        }
    }
    let _e67 = local_187;
    let _e69 = (*a1_36).camera;
    if _e13 {
        local_190 = a0_59.cursor;
    }
    let _e75 = local_190;
    let _e77 = (*a1_36).antialias;
    if _e13 {
        local_193 = a0_59.epoch;
    } else {
        if (a0_59.epoch > (4294967295u - 1u)) {
            (*fe_trapped_31) = true;
        } else {
            local_193 = (a0_59.epoch + 1u);
        }
    }
    let _e91 = local_193;
    if _e13 {
        local_196 = a0_59.completed;
    }
    let _e95 = local_196;
    return FeLocal_fe_ViewCache_da6e2ccc_23_(_e69, _e75, _e77, a3_4.budget, _e10, _e52, _e67, _e91, _e95, a0_59.steps, a0_59.frame_clock);
}

fn from_state(a0_60: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a1_37: u32, a2_12: u32) -> FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_ {
    let _e4 = (*a0_60).camera;
    let _e5 = center_value(_e4);
    return FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_(_e5, a1_37, a2_12);
}

fn clear_reference_checkpoint() {
    var local_197: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_4_1: bool;

    local_197 = 0u;
    loop {
        let _e6 = local_197;
        let _e8 = (_e6 < 16u);
        loop_header_carry_4_1 = _e8;
        if _e8 {
            reference_words[i32(_e6)] = 0u;
            local_197 = (_e6 + 1u);
            continue;
        } else {
            loop_did_return_10 = true;
            break;
        }
    }
    return;
}

fn impl_trait_PackedReference_default() -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    return FeLocal_fe_PackedReference_e11ca04a_21_();
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_32: ptr<function, bool>) -> u32 {
    std_lib_evm_effects_assert_0f66_(true, fe_trapped_32);
    return 8u;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_33: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_33);
    return FeLocal_fe_ArrayFixed_8_78307dfe_0_();
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a0_61: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_34: ptr<function, bool>) -> u32 {
    var local_198: u32;
    var local_199: bool = false;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_34);
    let _e4 = (_e2 - 1u);
    precision_lib_array_fixed_signed_word_0309_(_e4, fe_trapped_34);
    let _e12 = ((_e4 & 2147483648u) != 0u);
    let _e13 = ((13u & 2147483648u) != 0u);
    let _e17 = select(_e4, (0u - _e4), _e12);
    let _e21 = (_e17 != 0u);
    if (_e21 && (select(13u, (0u - 13u), _e13) > (select((2147483648u - 1u), 2147483648u, (_e12 != _e13)) / select(1u, _e17, _e21)))) {
        (*fe_trapped_34) = true;
    } else {
        local_198 = (_e4 * 13u);
        local_199 = true;
    }
    let _e31 = local_198;
    return _e31;
}

fn load_significand_gc7cf(a0_62: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_38: u32, a2_13: u32, fe_trapped_35: ptr<function, bool>) {
    var local_200: u32 = u32();
    var local_201: u32 = u32();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_8_2: bool;
    var local_202: u32 = u32();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_35);
    local_200 = a2_13;
    local_201 = 0u;
    loop {
        let _e12 = local_200;
        let _e14 = local_201;
        let _e15 = (_e14 < _e4);
        loop_header_carry_8_2 = _e15;
        if _e15 {
            if ((bitcast<i32>(_e12) < bitcast<i32>(24u)) == false) {
                local_202 = 0u;
            } else {
                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e12)) == false) {
                    local_202 = 0u;
                } else {
                    if ((bitcast<i32>(_e12) < bitcast<i32>(0u)) == false) {
                        precision_lib_array_fixed_unsigned_word_3f05_(_e12, fe_trapped_35);
                        local_202 = ((a1_38 >> _e12) & 8191u);
                    } else {
                        let _e39 = (0u - _e12);
                        precision_lib_array_fixed_unsigned_word_3f05_(_e39, fe_trapped_35);
                        local_202 = ((a1_38 << _e39) & 8191u);
                    }
                }
            }
            let _e50 = local_202;
            (*a0_62).digits[_e14] = _e50;
            let _e56 = (_e12 + 13u);
            if ((((_e12 ^ _e56) & (13u ^ _e56)) & 2147483648u) != 0u) {
                (*fe_trapped_35) = true;
                break;
            }
            local_200 = _e56;
            local_201 = (_e14 + 1u);
            continue;
        } else {
            loop_did_return_11 = true;
            break;
        }
    }
    return;
}

fn from_binary32_bits_gc7cf(a0_63: u32, fe_trapped_36: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_203: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_204: bool = false;
    var local_205: bool = bool();
    var fixed_local_7_2: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_206: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_207: bool = false;
    var local_208: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_209: bool = false;

    let _e5 = (a0_63 & 2147483647u);
    std_lib_evm_effects_assert_0f66_((_e5 < 1174405120u), fe_trapped_36);
    let _e8 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_36);
    fixed_local_7_2 = _e8;
    if (((a0_63 >> 31u) == 0u) == false) {
        if ((_e5 == 0u) == false) {
            local_205 = true;
        }
    }
    let _e25 = local_205;
    fixed_local_7_2.negative = _e25;
    let _e28 = (_e5 >> 23u);
    if (_e28 == 0u) {
        let _e31 = fixed_local_7_2;
        local_206 = _e31;
        local_207 = true;
    }
    let _e82 = local_207;
    if _e82 {
    } else {
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_36);
        let _e43 = (_e28 - 150u);
        if ((((_e28 ^ _e43) & (_e28 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e49 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_((&fixed_local_7_2), fe_trapped_36);
            let _e52 = (_e43 + _e49);
            if ((((_e43 ^ _e52) & (_e49 ^ _e52)) & 2147483648u) != 0u) {
            } else {
                let _e61 = (0u - _e52);
                if ((((0u ^ _e61) & (0u ^ _e52)) & 2147483648u) != 0u) {
                } else {
                    load_significand_gc7cf((&fixed_local_7_2), ((_e5 & 8388607u) | 8388608u), _e61, fe_trapped_36);
                    let _e67 = fixed_local_7_2;
                    local_208 = _e67;
                    local_209 = true;
                }
                let _e72 = local_209;
                if _e72 {
                }
            }
            let _e74 = local_209;
            if _e74 {
            }
        }
        let _e77 = local_209;
        if _e77 {
        } else {
            (*fe_trapped_36) = true;
        }
        let _e79 = local_208;
        local_206 = _e79;
    }
    let _e84 = local_206;
    return _e84;
}

fn from_f32_gc7cf(a0_64: f32, fe_trapped_37: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e3 = from_binary32_bits_gc7cf(bitcast<u32>(a0_64), fe_trapped_37);
    return _e3;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_gc7cf_6b33_(a0_65: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_39: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a2_14: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_38: ptr<function, bool>) {
    var local_210: u32 = u32();
    var local_211: u32 = u32();
    var loop_result_12: u32;
    var loop_did_return_12: bool = false;
    var loop_header_carry_7_1: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_38);
    local_210 = 0u;
    local_211 = 0u;
    loop {
        let _e13 = local_210;
        let _e15 = local_211;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_1 = _e16;
        if _e16 {
            let _e19 = (*a1_39).digits[_e15];
            let _e22 = (*a2_14).digits[_e15];
            let _e24 = (_e19 + _e22);
            if (_e19 > (4294967295u - _e22)) {
            } else {
                let _e28 = (_e24 + _e13);
                if (_e24 > (4294967295u - _e13)) {
                    (*fe_trapped_38) = true;
                    break;
                }
                (*a0_65).digits[_e15] = (_e28 & 8191u);
                local_210 = (_e28 >> 13u);
                local_211 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_38) = true;
            break;
        } else {
            loop_did_return_12 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_gc7cf_4b9a(a0_66: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_40: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_39: ptr<function, bool>) -> bool {
    var local_212: u32 = u32();
    var loop_result_13: bool;
    var loop_did_return_13: bool = false;
    var loop_header_carry_5_2: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_39);
    local_212 = _e3;
    loop {
        let _e8 = local_212;
        let _e10 = (0u < _e8);
        loop_header_carry_5_2 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_66).digits[_e12];
            let _e18 = (*a1_40).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_212 = _e12;
                continue;
            }
            let _e25 = (*a0_66).digits[_e12];
            let _e28 = (*a1_40).digits[_e12];
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

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_gc7cf_b7d9_(a0_67: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_41: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a2_15: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a3_5: bool, fe_trapped_40: ptr<function, bool>) {
    var local_213: u32 = u32();
    var local_214: u32 = u32();
    var loop_result_14: u32;
    var loop_did_return_14: bool = false;
    var loop_header_carry_8_3: bool;
    var local_215: u32 = u32();
    var local_216: u32 = u32();

    let _e5 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_40);
    local_213 = 0u;
    local_214 = 0u;
    loop {
        let _e14 = local_213;
        let _e16 = local_214;
        let _e17 = (_e16 < _e5);
        loop_header_carry_8_3 = _e17;
        if _e17 {
            if a3_5 {
                let _e21 = (*a2_15).digits[_e16];
                local_215 = _e21;
            } else {
                let _e24 = (*a1_41).digits[_e16];
                local_215 = _e24;
            }
            let _e29 = local_215;
            if a3_5 {
                let _e32 = (*a1_41).digits[_e16];
                local_216 = _e32;
            } else {
                let _e35 = (*a2_15).digits[_e16];
                local_216 = _e35;
            }
            let _e39 = local_216;
            let _e42 = (8192u + _e29);
            if (8192u > (4294967295u - _e29)) {
            } else {
                let _e45 = (_e42 - _e39);
                if (_e42 < _e39) {
                } else {
                    let _e47 = (_e45 - _e14);
                    if (_e45 < _e14) {
                    } else {
                        (*a0_67).digits[_e16] = (_e47 & 8191u);
                        let _e54 = (_e47 >> 13u);
                        if (1u < _e54) {
                            (*fe_trapped_40) = true;
                            break;
                        }
                        local_213 = (1u - _e54);
                        local_214 = (_e16 + 1u);
                        continue;
                    }
                }
            }
            (*fe_trapped_40) = true;
            break;
        } else {
            loop_did_return_14 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_68: FeLocal_fe_ArrayFixed_8_78307dfe_0_, a1_42: FeLocal_fe_ArrayFixed_8_78307dfe_0_, fe_trapped_41: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var local_217: FeLocal_fe_ArrayFixed_8_78307dfe_0_;
    var local_218: bool = false;
    var fixed_local_3_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_48_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_50_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var local_219: bool = bool();
    var fixed_local_52_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_54_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_84_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_86_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_41);
    fixed_local_3_1 = _e4;
    fixed_local_3_1.negative = a0_68.negative;
    if (a0_68.negative == a1_42.negative) {
        fixed_local_48_ = a0_68;
        fixed_local_50_ = a1_42;
        precision_lib_array_fixed_impl_ArrayFixed_c11e_add_magnitudes_gc7cf_6b33_((&fixed_local_3_1), (&fixed_local_48_), (&fixed_local_50_), fe_trapped_41);
    } else {
        fixed_local_52_ = a0_68;
        fixed_local_54_ = a1_42;
        let _e21 = precision_lib_array_fixed_impl_ArrayFixed_c11e_magnitude_less_gc7cf_4b9a((&fixed_local_52_), (&fixed_local_54_), fe_trapped_41);
        if _e21 {
            local_219 = a1_42.negative;
        } else {
            local_219 = a0_68.negative;
        }
        let _e27 = local_219;
        fixed_local_3_1.negative = _e27;
        fixed_local_84_ = a0_68;
        fixed_local_86_ = a1_42;
        precision_lib_array_fixed_impl_ArrayFixed_c11e_subtract_magnitudes_gc7cf_b7d9_((&fixed_local_3_1), (&fixed_local_84_), (&fixed_local_86_), _e21, fe_trapped_41);
    }
    let _e33 = fixed_local_3_1;
    return _e33;
}

fn from_expansion_gc7cf(a0_69: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_42: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e2 = to_quad(a0_69);
    let _e7 = from_f32_gc7cf(_e2.f0_, fe_trapped_42);
    let _e8 = from_f32_gc7cf(_e2.f1_, fe_trapped_42);
    let _e9 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(_e7, _e8, fe_trapped_42);
    let _e10 = from_f32_gc7cf(_e2.f2_, fe_trapped_42);
    let _e11 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(_e9, _e10, fe_trapped_42);
    let _e12 = from_f32_gc7cf(_e2.f3_, fe_trapped_42);
    let _e13 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(_e11, _e12, fe_trapped_42);
    let _e14 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_42);
    let _e15 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(_e13, _e14, fe_trapped_42);
    return _e15;
}

fn impl_ReferenceReal_from_expansion(a0_70: FeLocal_fe_More_More_More_Last_e6310ae8_7_, fe_trapped_43: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e2 = from_expansion_gc7cf(a0_70, fe_trapped_43);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e2);
}

fn reference_center(a0_71: FeLocal_fe_ReferenceAnchor_f9cfd0aa_24_, fe_trapped_44: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ {
    let _e4 = impl_ReferenceReal_from_expansion(a0_71.center.re, fe_trapped_44);
    let _e7 = impl_ReferenceReal_from_expansion(a0_71.center.im, fe_trapped_44);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e4, _e7);
}

fn impl_ReferenceReal_zero(fe_trapped_45: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_45);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e1);
}

fn default_gfdd1_(fe_trapped_46: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ {
    let _e1 = impl_ReferenceReal_zero(fe_trapped_46);
    let _e2 = impl_ReferenceReal_zero(fe_trapped_46);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e1, _e2);
}

fn assert_canonical(a0_72: ptr<function, array<u32, 8>>, fe_trapped_47: ptr<function, bool>) {
    var local_220: u32 = u32();
    var loop_result_15: u32;
    var loop_did_return_15: bool = false;
    var loop_header_carry_5_3: bool;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_47);
    local_220 = 0u;
    loop {
        let _e8 = local_220;
        let _e9 = (_e8 < _e2);
        loop_header_carry_5_3 = _e9;
        if _e9 {
            let _e11 = (*a0_72)[_e8];
            std_lib_evm_effects_assert_0f66_((_e11 < 8192u), fe_trapped_47);
            local_220 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return_15 = true;
            break;
        }
    }
    return;
}

fn from_digits(a0_73: bool, a1_43: ptr<function, array<u32, 8>>, fe_trapped_48: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    assert_canonical(a1_43, fe_trapped_48);
    let _e3 = (*a1_43);
    return FeLocal_fe_ArrayFixed_8_78307dfe_0_(a0_73, _e3);
}

fn impl_ReferenceReal_from_words(a0_74: u32, a1_44: ptr<function, array<u32, 8>>, fe_trapped_49: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    std_lib_evm_effects_assert_0f66_(((1u < a0_74) == false), fe_trapped_49);
    let _e9 = from_digits((a0_74 == 1u), a1_44, fe_trapped_49);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e9);
}

fn load_reference_checkpoint(a1_45: FeLocal_fe_ReferenceControl_7d077120_3_, fe_trapped_50: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_ {
    var fixed_local_77_: array<u32, 8> = array<u32, 8>();

    let _e6 = reference_words[i32(0u)];
    let _e10 = reference_words[i32(1u)];
    let _e14 = reference_words[i32(2u)];
    let _e18 = reference_words[i32(3u)];
    let _e22 = reference_words[i32(4u)];
    let _e26 = reference_words[i32(5u)];
    let _e30 = reference_words[i32(6u)];
    let _e34 = reference_words[i32(7u)];
    let _e39 = reference_words[i32(8u)];
    let _e43 = reference_words[i32(9u)];
    let _e47 = reference_words[i32(10u)];
    let _e51 = reference_words[i32(11u)];
    let _e55 = reference_words[i32(12u)];
    let _e59 = reference_words[i32(13u)];
    let _e63 = reference_words[i32(14u)];
    let _e67 = reference_words[i32(15u)];
    fixed_local_77_ = array<u32, 8>(_e6, _e10, _e14, _e18, _e22, _e26, _e30, _e34);
    let _e72 = impl_ReferenceReal_from_words(a1_45.zx_s, (&fixed_local_77_), fe_trapped_50);
    fixed_local_77_ = array<u32, 8>(_e39, _e43, _e47, _e51, _e55, _e59, _e63, _e67);
    let _e74 = impl_ReferenceReal_from_words(a1_45.zy_s, (&fixed_local_77_), fe_trapped_50);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e72, _e74);
}

fn multiply_magnitudes(a0_75: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_46: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a2_16: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_51: ptr<function, bool>) {
    var local_221: u32 = u32();
    var local_222: u32 = u32();
    var loop_result_16: u32;
    var loop_did_return_16: bool = false;
    var loop_header_carry_7_2: bool;
    var local_223: u32 = u32();
    var local_224: u32 = u32();
    var loop_result_17: u32;
    var loop_did_return_17: bool = false;
    var loop_header_carry_10_: bool;
    var local_225: u32 = u32();
    var local_226: u32 = u32();
    var loop_result_18: u32;
    var loop_did_return_18: bool = false;
    var loop_header_carry_174_: u32;
    var loop_header_carry_68_: bool;
    var local_227: u32 = u32();
    var local_228: u32 = u32();
    var loop_result_19: u32;
    var loop_did_return_19: bool = false;
    var loop_header_carry_93_: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_51);
    local_221 = 0u;
    local_222 = 0u;
    loop {
        let _e13 = local_221;
        let _e15 = local_222;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_2 = _e16;
        if _e16 {
            local_223 = 0u;
            local_224 = 0u;
            loop {
                let _e25 = local_223;
                let _e27 = local_224;
                let _e28 = (_e27 < _e4);
                loop_header_carry_10_ = _e28;
                if _e28 {
                    let _e31 = (*a0_75).digits[_e27];
                    let _e34 = (*a1_46).digits[_e27];
                    let _e37 = (*a2_16).digits[_e15];
                    let _e41 = (_e34 * _e37);
                    let _e42 = (_e34 != 0u);
                    if (_e42 && (_e37 > (4294967295u / select(1u, _e34, _e42)))) {
                    } else {
                        let _e48 = (_e31 + _e41);
                        if (_e31 > (4294967295u - _e41)) {
                        } else {
                            let _e52 = (_e48 + _e25);
                            if (_e48 > (4294967295u - _e25)) {
                                (*fe_trapped_51) = true;
                                break;
                            }
                            (*a0_75).digits[_e27] = (_e52 & 8191u);
                            local_223 = (_e52 >> 13u);
                            local_224 = (_e27 + 1u);
                            continue;
                        }
                    }
                    (*fe_trapped_51) = true;
                    break;
                } else {
                    break;
                }
            }
            let _e69 = local_223;
            if (_e15 < (_e4 - 1u)) {
                let _e76 = (*a0_75).digits[0];
                local_226 = 0u;
                loop {
                    let _e82 = local_226;
                    let _e84 = (_e4 - 1u);
                    let _e85 = (_e82 < _e84);
                    loop_header_carry_174_ = _e84;
                    loop_header_carry_68_ = _e85;
                    if _e85 {
                        let _e90 = (*a0_75).digits[(_e82 + 1u)];
                        (*a0_75).digits[_e82] = _e90;
                        local_226 = (_e82 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                (*a0_75).digits[(_e4 - 1u)] = _e69;
                local_225 = _e76;
            } else {
                local_227 = (_e13 >> 12u);
                local_228 = 0u;
                loop {
                    let _e111 = local_227;
                    let _e113 = local_228;
                    let _e114 = (_e113 < _e4);
                    loop_header_carry_93_ = _e114;
                    if _e114 {
                        let _e117 = (*a0_75).digits[_e113];
                        let _e119 = (_e117 + _e111);
                        if (_e117 > (4294967295u - _e111)) {
                            (*fe_trapped_51) = true;
                            break;
                        }
                        (*a0_75).digits[_e113] = (_e119 & 8191u);
                        local_227 = (_e119 >> 13u);
                        local_228 = (_e113 + 1u);
                        continue;
                    } else {
                        local_225 = _e13;
                        break;
                    }
                }
            }
            let _e137 = local_225;
            if (_e15 > (4294967295u - 1u)) {
            } else {
                local_221 = _e137;
                local_222 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_51) = true;
            break;
        } else {
            loop_did_return_16 = true;
            break;
        }
    }
    return;
}

fn mul(a0_76: FeLocal_fe_ArrayFixed_8_78307dfe_0_, a1_47: FeLocal_fe_ArrayFixed_8_78307dfe_0_, fe_trapped_52: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    var fixed_local_3_2: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_38_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();
    var fixed_local_39_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_02b1_(fe_trapped_52);
    fixed_local_3_2 = _e3;
    fixed_local_3_2.negative = ((a0_76.negative == a1_47.negative) == false);
    fixed_local_38_ = a0_76;
    fixed_local_39_ = a1_47;
    multiply_magnitudes((&fixed_local_3_2), (&fixed_local_38_), (&fixed_local_39_), fe_trapped_52);
    let _e16 = fixed_local_3_2;
    return _e16;
}

fn multiply(a0_77: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, a1_48: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_53: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e4 = (*a0_77).value;
    let _e6 = (*a1_48).value;
    let _e7 = mul(_e4, _e6, fe_trapped_53);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e7);
}

fn impl_trait_ReferenceReal_add(a0_78: FeLocal_fe_ReferenceReal_aede3f8e_2_, a1_49: FeLocal_fe_ReferenceReal_aede3f8e_2_, fe_trapped_54: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e5 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_78.value, a1_49.value, fe_trapped_54);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e5);
}

fn magnitude_exceeds_four(a0_79: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_55: ptr<function, bool>) -> bool {
    var local_229: bool;
    var local_230: bool = false;
    var local_231: bool;
    var local_232: bool = false;
    var local_233: u32 = u32();
    var loop_result_20: bool;
    var loop_did_return_20: bool = false;
    var loop_header_carry_18_: u32;
    var loop_header_carry_19_: bool;
    var loop_header_carry_21_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_55);
    let _e8 = (*a0_79).digits[(_e3 - 1u)];
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
                    let _e36 = (*a0_79).digits[_e29];
                    if ((_e36 == 0u) == false) {
                        loop_result_20 = true;
                        loop_did_return_20 = true;
                        break;
                    }
                    local_233 = (_e29 + 1u);
                    continue;
                } else {
                    loop_result_20 = false;
                    loop_did_return_20 = true;
                    break;
                }
            }
            let _e56 = loop_result_20;
            local_231 = _e56;
        }
        let _e61 = local_231;
        local_229 = _e61;
    }
    let _e66 = local_229;
    return _e66;
}

fn escaped(a0_80: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_56: ptr<function, bool>) -> bool {
    var fixed_local_5_: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e3 = (*a0_80).value;
    fixed_local_5_ = _e3;
    let _e6 = magnitude_exceeds_four((&fixed_local_5_), fe_trapped_56);
    return _e6;
}

fn neg_gc7cf(a0_81: FeLocal_fe_ArrayFixed_8_78307dfe_0_) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    return FeLocal_fe_ArrayFixed_8_78307dfe_0_((a0_81.negative == false), a0_81.digits);
}

fn sub_gc7cf(a0_82: FeLocal_fe_ArrayFixed_8_78307dfe_0_, a1_50: FeLocal_fe_ArrayFixed_8_78307dfe_0_, fe_trapped_57: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_0_ {
    let _e3 = neg_gc7cf(a1_50);
    let _e4 = precision_lib_array_fixed_impl_trait_ArrayFixed_5692_add_gc7cf_115e(a0_82, _e3, fe_trapped_57);
    return _e4;
}

fn impl_trait_ReferenceReal_sub(a0_83: FeLocal_fe_ReferenceReal_aede3f8e_2_, a1_51: FeLocal_fe_ReferenceReal_aede3f8e_2_, fe_trapped_58: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_2_ {
    let _e5 = sub_gc7cf(a0_83.value, a1_51.value, fe_trapped_58);
    return FeLocal_fe_ReferenceReal_aede3f8e_2_(_e5);
}

fn reference_step(a0_84: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>, a1_52: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>, fe_trapped_59: ptr<function, bool>) -> FeLocal_fe_ReferenceStep_d9bbc380_30_ {
    var local_234: FeLocal_fe_ReferenceStep_d9bbc380_30_;
    var local_235: bool = false;
    var local_236: FeLocal_fe_ReferenceStep_d9bbc380_30_ = FeLocal_fe_ReferenceStep_d9bbc380_30_();
    var fixed_local_6_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_11_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_14_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_27_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_28_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();

    let _e6 = (*a0_84).re;
    fixed_local_6_ = _e6;
    let _e9 = multiply((&fixed_local_6_), (&fixed_local_6_), fe_trapped_59);
    let _e11 = (*a0_84).im;
    fixed_local_11_ = _e11;
    let _e14 = multiply((&fixed_local_11_), (&fixed_local_11_), fe_trapped_59);
    let _e15 = impl_trait_ReferenceReal_add(_e9, _e14, fe_trapped_59);
    fixed_local_14_ = _e15;
    let _e18 = escaped((&fixed_local_14_), fe_trapped_59);
    if _e18 {
        let _e19 = (*a0_84);
        local_236 = FeLocal_fe_ReferenceStep_d9bbc380_30_(_e19, true);
    } else {
        let _e23 = (*a0_84).re;
        let _e25 = (*a0_84).im;
        fixed_local_27_ = _e23;
        fixed_local_28_ = _e25;
        let _e30 = multiply((&fixed_local_27_), (&fixed_local_28_), fe_trapped_59);
        let _e31 = impl_trait_ReferenceReal_sub(_e9, _e14, fe_trapped_59);
        let _e33 = (*a1_52).re;
        let _e34 = impl_trait_ReferenceReal_add(_e31, _e33, fe_trapped_59);
        let _e35 = impl_trait_ReferenceReal_add(_e30, _e30, fe_trapped_59);
        let _e37 = (*a1_52).im;
        let _e38 = impl_trait_ReferenceReal_add(_e35, _e37, fe_trapped_59);
        local_236 = FeLocal_fe_ReferenceStep_d9bbc380_30_(FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_(_e34, _e38), false);
    }
    let _e45 = local_236;
    return _e45;
}

fn sign_gc7cf(a0_85: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>) -> u32 {
    var local_237: u32;
    var local_238: bool = false;
    var local_239: u32 = u32();

    let _e4 = (*a0_85).negative;
    if _e4 {
        local_239 = 1u;
    }
    let _e8 = local_239;
    return _e8;
}

fn impl_ReferenceReal_sign(a0_86: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>) -> u32 {
    var fixed_local_5_1: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e2 = (*a0_86).value;
    fixed_local_5_1 = _e2;
    let _e5 = sign_gc7cf((&fixed_local_5_1));
    return _e5;
}

fn publish(a0_87: u32, a1_53: u32, a2_17: u32, a3_6: u32, a4_3: f32) -> FeLocal_fe_ReferenceControl_7d077120_3_ {
    return FeLocal_fe_ReferenceControl_7d077120_3_(a0_87, 1u, 0u, a1_53, a2_17, a3_6, a4_3);
}

fn to_digits(a0_88: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>) -> array<u32, 8> {
    let _e2 = (*a0_88).digits;
    return _e2;
}

fn to_words(a0_89: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>) -> array<u32, 8> {
    var fixed_local_5_2: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e2 = (*a0_89).value;
    fixed_local_5_2 = _e2;
    let _e5 = to_digits((&fixed_local_5_2));
    return _e5;
}

fn store_reference_checkpoint(a1_54: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>) {
    var fixed_local_6_1: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_12_: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();
    var fixed_local_14_1: array<u32, 8> = array<u32, 8>();
    var local_240: u32 = u32();
    var loop_result_21: u32;
    var loop_did_return_21: bool = false;
    var loop_header_carry_17_: bool;

    let _e3 = (*a1_54).re;
    fixed_local_6_1 = _e3;
    let _e6 = to_words((&fixed_local_6_1));
    fixed_local_8_ = _e6;
    let _e10 = (*a1_54).im;
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
            loop_did_return_21 = true;
            break;
        }
    }
    return;
}

fn advance_pending(a0_90: FeLocal_fe_ReferenceControl_7d077120_3_, a1_55: u32, a2_18: u32, a3_7: u32) -> FeLocal_fe_ReferenceControl_7d077120_3_ {
    var fixed_local_5_3: FeLocal_fe_ReferenceControl_7d077120_3_ = FeLocal_fe_ReferenceControl_7d077120_3_();

    fixed_local_5_3 = a0_90;
    fixed_local_5_3.pending = 1u;
    fixed_local_5_3.index = a1_55;
    fixed_local_5_3.zx_s = a2_18;
    fixed_local_5_3.zy_s = a3_7;
    let _e11 = fixed_local_5_3;
    return _e11;
}

fn invalidate_for_new_reference(a0_91: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_60: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_23_ {
    var local_241: FeLocal_fe_ViewCache_da6e2ccc_23_;
    var local_242: bool = false;
    var fixed_local_2_: FeLocal_fe_ViewCache_da6e2ccc_23_ = FeLocal_fe_ViewCache_da6e2ccc_23_();

    fixed_local_2_ = a0_91;
    fixed_local_2_.cursor = 0u;
    fixed_local_2_.preview_dirty = 1u;
    fixed_local_2_.blur_dirty = 1u;
    if (a0_91.epoch > (4294967295u - 1u)) {
        (*fe_trapped_60) = true;
    }
    fixed_local_2_.epoch = (a0_91.epoch + 1u);
    fixed_local_2_.completed = 0u;
    let _e21 = fixed_local_2_;
    return _e21;
}

fn impl_ViewCache_delta_from(a0_92: FeLocal_fe_ViewCache_da6e2ccc_23_, a1_56: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, fe_trapped_61: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    let _e4 = center_value(a0_92.camera);
    let _e6 = (*a1_56).camera;
    let _e7 = center_value(_e6);
    let _e8 = center_delta(_e4, _e7, fe_trapped_61);
    return _e8;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_10_ {
    return FeLocal_fe_Complex_f32_87ec9249_10_();
}

fn for_view(a0_93: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a1_57: FeLocal_fe_ViewCache_da6e2ccc_23_, a2_19: FeLocal_fe_ViewCache_da6e2ccc_23_, fe_trapped_62: ptr<function, bool>) -> FeLocal_fe_HistoryOffsets_646326b2_27_ {
    var local_243: FeLocal_fe_HistoryOffsets_646326b2_27_;
    var local_244: bool = false;
    var local_245: FeLocal_fe_Complex_f32_87ec9249_10_ = FeLocal_fe_Complex_f32_87ec9249_10_();
    var local_246: FeLocal_fe_HistoryOffsets_646326b2_27_;
    var local_247: bool = false;
    var local_248: FeLocal_fe_Complex_f32_87ec9249_10_ = FeLocal_fe_Complex_f32_87ec9249_10_();

    if (a1_57.completed == 1u) {
        let _e9 = impl_ViewCache_delta_from(a1_57, a0_93, fe_trapped_62);
        local_245 = _e9;
    } else {
        let _e10 = default_ge58b();
        local_245 = _e10;
    }
    let _e16 = local_245;
    if (a2_19.completed == 1u) {
        let _e20 = impl_ViewCache_delta_from(a2_19, a0_93, fe_trapped_62);
        local_248 = _e20;
    } else {
        let _e21 = default_ge58b();
        local_248 = _e21;
    }
    let _e25 = local_248;
    return FeLocal_fe_HistoryOffsets_646326b2_27_(_e16, _e25);
}

fn from_quad(a0_94: f32, a1_58: f32, a2_20: f32, a3_8: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_7_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_7_(a0_94, FeLocal_fe_More_More_Last_60a5ba63_6_(a1_58, FeLocal_fe_More_Last_1ac585f5_5_(a2_20, FeLocal_fe_Last_eb970eb0_4_(a3_8))));
}

fn decode(a0_95: FeLocal_fe_PackedReference_e11ca04a_21_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_ {
    let _e9 = from_quad(bitcast<f32>(a0_95.re_w0_bits), bitcast<f32>(a0_95.re_w1_bits), bitcast<f32>(a0_95.re_w2_bits), bitcast<f32>(a0_95.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_95.im_w0_bits), bitcast<f32>(a0_95.im_w1_bits), bitcast<f32>(a0_95.im_w2_bits), bitcast<f32>(a0_95.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_20_(_e9, _e18);
}

fn with_center_offset(a0_96: FeLocal_fe_PackedReference_e11ca04a_21_, a1_59: FeLocal_fe_Complex_f32_87ec9249_10_) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    var fixed_local_3_3: FeLocal_fe_PackedReference_e11ca04a_21_ = FeLocal_fe_PackedReference_e11ca04a_21_();

    fixed_local_3_3 = a0_96;
    fixed_local_3_3.re_w2_bits = bitcast<u32>(a1_59.re);
    fixed_local_3_3.re_w3_bits = bitcast<u32>(a1_59.im);
    let _e10 = fixed_local_3_3;
    return _e10;
}

fn highest_bit_gc7cf(a0_97: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_63: ptr<function, bool>) -> u32 {
    var local_249: u32 = u32();
    var local_250: u32 = u32();
    var loop_result_22: u32;
    var loop_did_return_22: bool = false;
    var loop_header_carry_4_2: bool;
    var local_251: u32;
    var local_252: bool = false;
    var local_253: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_63);
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
                let _e21 = (*a0_97).digits[_e18];
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
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_63);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_63) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_63) = true;
            } else {
                local_253 = _e58;
            }
        }
    }
    let _e69 = local_253;
    return _e69;
}

fn word_from_gc7cf(a0_98: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, a1_60: u32, fe_trapped_64: ptr<function, bool>) -> u32 {
    var local_254: u32;
    var local_255: bool = false;
    var local_256: u32;
    var local_257: bool = false;
    var local_258: u32 = u32();
    var local_259: u32 = u32();
    var local_260: u32 = u32();
    var loop_result_23: u32;
    var loop_did_return_23: bool = false;
    var loop_header_carry_34_1: bool;

    if (bitcast<i32>(a1_60) < bitcast<i32>(0u)) {
        local_254 = 0u;
        local_255 = true;
    }
    let _e77 = local_255;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_60, fe_trapped_64);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_23b2_(fe_trapped_64);
        let _e15 = (a1_60 / 13u);
        if ((_e15 < _e13) == false) {
            local_256 = 0u;
            local_257 = true;
        }
        let _e72 = local_257;
        if _e72 {
        } else {
            let _e24 = (a1_60 % 13u);
            let _e27 = (*a0_98).digits[_e15];
            local_258 = (13u - _e24);
            local_259 = (_e27 >> _e24);
            local_260 = (_e15 + 1u);
            loop {
                let _e41 = local_258;
                let _e43 = local_259;
                let _e45 = local_260;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_1 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_98).digits[_e45];
                        local_258 = (_e41 + 13u);
                        local_259 = (_e43 | (_e51 << _e41));
                        local_260 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_23 = _e43;
                        loop_did_return_23 = true;
                        break;
                    }
                } else {
                    loop_result_23 = _e43;
                    loop_did_return_23 = true;
                    break;
                }
            }
            let _e69 = loop_result_23;
            local_256 = _e69;
        }
        let _e74 = local_256;
        local_254 = _e74;
    }
    let _e79 = local_254;
    return _e79;
}

fn project_binary32_quad(a0_99: u32, a1_61: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_65: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    var local_261: u32 = u32();
    var local_262: u32 = u32();
    var local_263: u32 = u32();
    var local_264: u32 = u32();
    var local_265: u32 = u32();
    var local_266: u32 = u32();
    var loop_result_24: FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_;
    var loop_did_return_24: bool = false;
    var loop_header_carry_8_4: bool;
    var local_267: u32 = u32();
    var local_268: u32 = u32();
    var local_269: u32 = u32();
    var local_270: u32 = u32();
    var local_271: u32 = u32();
    var local_272: u32 = u32();
    var local_273: u32 = u32();

    let _e3 = highest_bit_gc7cf(a1_61, fe_trapped_65);
    let _e4 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a1_61, fe_trapped_65);
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
        loop_header_carry_8_4 = _e37;
        if _e37 {
            let _e40 = (_e3 - _e33);
            if ((((_e3 ^ _e40) & (_e3 ^ _e33)) & 2147483648u) != 0u) {
            } else {
                if (bitcast<i32>(_e40) < bitcast<i32>(0u)) {
                    local_267 = 0u;
                } else {
                    let _e53 = (_e40 - 23u);
                    if (bitcast<i32>(_e53) < bitcast<i32>(0u)) {
                        let _e61 = word_from_gc7cf(a1_61, 0u, fe_trapped_65);
                        local_268 = ((_e61 << (0u - _e53)) & 16777215u);
                    } else {
                        let _e65 = word_from_gc7cf(a1_61, _e53, fe_trapped_65);
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
                            (*fe_trapped_65) = true;
                            break;
                        } else {
                            let _e101 = (_e92 - _e4);
                            if ((((_e92 ^ _e101) & (_e92 ^ _e4)) & 2147483648u) != 0u) {
                                (*fe_trapped_65) = true;
                                break;
                            } else {
                                let _e111 = (_e101 + 127u);
                                if ((((_e101 ^ _e111) & (127u ^ _e111)) & 2147483648u) != 0u) {
                                    (*fe_trapped_65) = true;
                                    break;
                                } else {
                                    local_267 = (((a0_99 << 31u) | (_e111 << 23u)) | ((_e71 << (23u - _e86)) & 8388607u));
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
            (*fe_trapped_65) = true;
            break;
        } else {
            loop_result_24 = FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_(_e31, _e29, _e27, _e25);
            loop_did_return_24 = true;
            break;
        }
    }
    let _e185 = loop_result_24;
    return _e185;
}

fn to_quad_bits_gc7cf(a0_100: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_0_>, fe_trapped_66: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    let _e2 = sign_gc7cf(a0_100);
    let _e3 = project_binary32_quad(_e2, a0_100, fe_trapped_66);
    return _e3;
}

fn impl_ReferenceReal_to_quad_bits(a0_101: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_2_>, fe_trapped_67: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    var fixed_local_5_4: FeLocal_fe_ArrayFixed_8_78307dfe_0_ = FeLocal_fe_ArrayFixed_8_78307dfe_0_();

    let _e3 = (*a0_101).value;
    fixed_local_5_4 = _e3;
    let _e6 = to_quad_bits_gc7cf((&fixed_local_5_4), fe_trapped_67);
    return _e6;
}

fn impl_PackedReference_from_words(a0_102: u32, a1_62: u32, a2_21: u32, a3_9: u32, a4_4: u32, a5_: u32, a6_: u32, a7_: u32) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    return FeLocal_fe_PackedReference_e11ca04a_21_(a0_102, a1_62, a2_21, a3_9, a4_4, a5_, a6_, a7_);
}

fn from_fixed(a0_103: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_22_>, fe_trapped_68: ptr<function, bool>) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    var fixed_local_5_5: FeLocal_fe_ReferenceReal_aede3f8e_2_ = FeLocal_fe_ReferenceReal_aede3f8e_2_();

    let _e3 = (*a0_103).re;
    fixed_local_5_5 = _e3;
    let _e6 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_5), fe_trapped_68);
    let _e12 = (*a0_103).im;
    fixed_local_5_5 = _e12;
    let _e13 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_5), fe_trapped_68);
    let _e18 = impl_PackedReference_from_words(_e6.f0_, _e6.f1_, _e6.f2_, _e6.f3_, _e13.f0_, _e13.f1_, _e13.f2_, _e13.f3_);
    return _e18;
}

fn from_metadata(a0_104: u32, a1_63: u32) -> FeLocal_fe_PackedReference_e11ca04a_21_ {
    var fixed_local_3_4: FeLocal_fe_PackedReference_e11ca04a_21_ = FeLocal_fe_PackedReference_e11ca04a_21_();

    let _e2 = impl_trait_PackedReference_default();
    fixed_local_3_4 = _e2;
    fixed_local_3_4.re_w0_bits = a0_104;
    fixed_local_3_4.re_w1_bits = a1_63;
    let _e7 = fixed_local_3_4;
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
