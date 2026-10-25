struct FeLocal_fe_Last_eb970eb0_5_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_6_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_5_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_7_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_6_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_8_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_7_,
}

struct FeLocal_fe_Coordinate_bdc10f09_11_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_8_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_12_ {
    re: FeLocal_fe_Coordinate_bdc10f09_11_,
    im: FeLocal_fe_Coordinate_bdc10f09_11_,
}

struct FeLocal_fe_Complex_f32_87ec9249_13_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_14_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_12_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_13_,
}

struct FeLocal_fe_Vec2_f32_2772165c_15_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_16_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_15_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_17_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_16_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_18_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_15_,
    extent: FeLocal_fe_Vec2_f32_2772165c_15_,
}

struct FeLocal_fe_GestureSession_6b679731_19_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_17_,
    viewport: FeLocal_fe_Viewport_91e53b90_18_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_17_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_14_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_20_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_21_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_22_ {
    camera: FeLocal_fe_Camera_03494b0d_14_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_19_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_20_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_21_,
}

struct FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_ {
    re: FeLocal_fe_More_More_More_Last_e6310ae8_8_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_8_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_30_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    negative: bool,
    digits: array<u32, 10>,
}

struct FeLocal_fe_PreviewKey_592da546_26_ {
    camera: FeLocal_fe_Camera_03494b0d_14_,
    reference_generation: u32,
    reference_bank: u32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_27_ {
    full: FeLocal_fe_Complex_f32_87ec9249_13_,
    initial: FeLocal_fe_Complex_f32_87ec9249_13_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_28_ {
    camera: FeLocal_fe_Camera_03494b0d_14_,
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
    camera: FeLocal_fe_Camera_03494b0d_14_,
    antialias: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_24_ {
    camera: FeLocal_fe_Camera_03494b0d_14_,
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

struct FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_ {
    center: FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_,
    limit: u32,
    generation: u32,
}

struct FeLocal_fe_PackedReference_e11ca04a_23_ {
    re_w0_bits: u32,
    re_w1_bits: u32,
    re_w2_bits: u32,
    re_w3_bits: u32,
    im_w0_bits: u32,
    im_w1_bits: u32,
    im_w2_bits: u32,
    im_w3_bits: u32,
}

struct FeLocal_fe_ArrayFixed_8_78307dfe_1_ {
    negative: bool,
    digits: array<u32, 8>,
}

struct FeLocal_fe_ReferenceReal_aede3f8e_3_ {
    value: FeLocal_fe_ArrayFixed_8_78307dfe_1_,
}

struct FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_ {
    re: FeLocal_fe_ReferenceReal_aede3f8e_3_,
    im: FeLocal_fe_ReferenceReal_aede3f8e_3_,
}

struct FeLocal_fe_ReferenceControl_7d077120_2_ {
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

fn input_age(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> f32 {
    var local_31: f32;
    var local_32: bool = false;
    var local_33: f32 = f32();

    let _e4 = (*a0_).drag_active;
    if (0.5f <= _e4) {
    } else {
        let _e8 = (*a0_).clock;
        let _e10 = (*a0_).last_input;
        local_33 = (_e8 - _e10);
    }
    let _e14 = local_33;
    return _e14;
}

fn iteration_limit(a0_1: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_34: u32 = u32();
    var local_35: f32 = f32();
    var local_36: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_5_: bool;
    var local_37: u32 = u32();
    var local_38: f32 = f32();
    var local_39: u32;
    var local_40: bool = false;
    var local_41: u32 = u32();

    local_34 = 0u;
    local_35 = a0_1;
    local_36 = 0u;
    loop {
        let _e12 = local_34;
        let _e14 = local_35;
        let _e16 = local_36;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_37 = (_e12 + 1u);
                    local_38 = (_e14 * 2f);
                }
            } else {
                local_37 = _e12;
                local_38 = _e14;
            }
            let _e36 = local_37;
            let _e38 = local_38;
            local_34 = _e36;
            local_35 = _e38;
            local_36 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_34;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_41 = 8192u;
        } else {
            local_41 = _e60;
        }
        let _e71 = local_41;
        local_39 = _e71;
        local_40 = true;
    }
    let _e77 = local_40;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_39;
    return _e79;
}

fn center_value(a0_2: FeLocal_fe_Camera_03494b0d_14_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_ {
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_(a0_2.center.re.value, a0_2.center.im.value);
}

fn to_quad(a0_3: FeLocal_fe_More_More_More_Last_e6310ae8_8_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_30_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_30_(a0_3.lead, a0_3.tail.lead, a0_3.tail.tail.lead, a0_3.tail.tail.tail.value);
}

fn std_lib_evm_effects_assert_724a(a0_4: bool, fe_trapped_2: ptr<function, bool>) {
    var local_42: u32;
    var local_43: bool = false;

    if a0_4 {
        local_43 = true;
    } else {
        (*fe_trapped_2) = true;
    }
    return;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_3: ptr<function, bool>) -> u32 {
    std_lib_evm_effects_assert_724a(true, fe_trapped_3);
    return 10u;
}

fn zero_g16d4_(fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_4);
    return FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
}

fn clear_digits_g16d4_(a0_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_5: ptr<function, bool>) {
    var local_44: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_5_1: bool;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_5);
    local_44 = 0u;
    loop {
        let _e8 = local_44;
        let _e9 = (_e8 < _e2);
        loop_header_carry_5_1 = _e9;
        if _e9 {
            (*a0_5).digits[_e8] = 0u;
            local_44 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return_3 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_signed_word_0309_(a0_6: u32, fe_trapped_6: ptr<function, bool>) {
    std_lib_evm_effects_assert_724a(((2147483647u < a0_6) == false), fe_trapped_6);
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_7: ptr<function, bool>) -> u32 {
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

fn precision_lib_array_fixed_unsigned_word_3f05_(a0_8: u32, fe_trapped_8: ptr<function, bool>) {
    std_lib_evm_effects_assert_724a(((bitcast<i32>(a0_8) < bitcast<i32>(0u)) == false), fe_trapped_8);
    return;
}

fn load_significand_g16d4_(a0_9: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_: u32, a2_: u32, fe_trapped_9: ptr<function, bool>) {
    var local_47: u32 = u32();
    var local_48: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_8_: bool;
    var local_49: u32 = u32();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_9);
    local_47 = a2_;
    local_48 = 0u;
    loop {
        let _e12 = local_47;
        let _e14 = local_48;
        let _e15 = (_e14 < _e4);
        loop_header_carry_8_ = _e15;
        if _e15 {
            if ((bitcast<i32>(_e12) < bitcast<i32>(24u)) == false) {
                local_49 = 0u;
            } else {
                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e12)) == false) {
                    local_49 = 0u;
                } else {
                    if ((bitcast<i32>(_e12) < bitcast<i32>(0u)) == false) {
                        precision_lib_array_fixed_unsigned_word_3f05_(_e12, fe_trapped_9);
                        local_49 = ((a1_ >> _e12) & 8191u);
                    } else {
                        let _e39 = (0u - _e12);
                        precision_lib_array_fixed_unsigned_word_3f05_(_e39, fe_trapped_9);
                        local_49 = ((a1_ << _e39) & 8191u);
                    }
                }
            }
            let _e50 = local_49;
            (*a0_9).digits[_e14] = _e50;
            let _e56 = (_e12 + 13u);
            if ((((_e12 ^ _e56) & (13u ^ _e56)) & 2147483648u) != 0u) {
                (*fe_trapped_9) = true;
                break;
            }
            local_47 = _e56;
            local_48 = (_e14 + 1u);
            continue;
        } else {
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn assign_binary32_bits_g16d4_(a0_10: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_1: u32, fe_trapped_10: ptr<function, bool>) {
    var local_50: u32;
    var local_51: bool = false;
    var local_52: bool = bool();
    var local_53: u32;
    var local_54: bool = false;

    let _e6 = (a1_1 & 2147483647u);
    std_lib_evm_effects_assert_724a((_e6 < 1174405120u), fe_trapped_10);
    if (((a1_1 >> 31u) == 0u) == false) {
        if ((_e6 == 0u) == false) {
            local_52 = true;
        }
    }
    let _e23 = local_52;
    (*a0_10).negative = _e23;
    let _e26 = (_e6 >> 23u);
    if (_e26 == 0u) {
        clear_digits_g16d4_(a0_10, fe_trapped_10);
        local_54 = true;
    } else {
        precision_lib_array_fixed_signed_word_0309_(_e26, fe_trapped_10);
        let _e38 = (_e26 - 150u);
        if ((((_e26 ^ _e38) & (_e26 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e44 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a0_10, fe_trapped_10);
            let _e47 = (_e38 + _e44);
            if ((((_e38 ^ _e47) & (_e44 ^ _e47)) & 2147483648u) != 0u) {
            } else {
                let _e56 = (0u - _e47);
                if ((((0u ^ _e56) & (0u ^ _e47)) & 2147483648u) != 0u) {
                    (*fe_trapped_10) = true;
                }
                load_significand_g16d4_(a0_10, ((_e6 & 8388607u) | 8388608u), _e56, fe_trapped_10);
                local_54 = true;
            }
            let _e66 = local_54;
            if _e66 {
            }
        }
        let _e69 = local_54;
        if _e69 {
        } else {
            (*fe_trapped_10) = true;
        }
    }
    return;
}

fn add_magnitudes_g16d4_(a0_11: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_1: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_11: ptr<function, bool>) {
    var local_55: u32 = u32();
    var local_56: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_7_: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_11);
    local_55 = 0u;
    local_56 = 0u;
    loop {
        let _e13 = local_55;
        let _e15 = local_56;
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
                    (*fe_trapped_11) = true;
                    break;
                }
                (*a0_11).digits[_e15] = (_e28 & 8191u);
                local_55 = (_e28 >> 13u);
                local_56 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_11) = true;
            break;
        } else {
            loop_did_return_5 = true;
            break;
        }
    }
    return;
}

fn magnitude_less_g16d4_(a0_12: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_12: ptr<function, bool>) -> bool {
    var local_57: u32 = u32();
    var loop_result_6: bool;
    var loop_did_return_6: bool = false;
    var loop_header_carry_5_2: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_12);
    local_57 = _e3;
    loop {
        let _e8 = local_57;
        let _e10 = (0u < _e8);
        loop_header_carry_5_2 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_12).digits[_e12];
            let _e18 = (*a1_3).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_57 = _e12;
                continue;
            }
            let _e25 = (*a0_12).digits[_e12];
            let _e28 = (*a1_3).digits[_e12];
            loop_result_6 = (_e25 < _e28);
            loop_did_return_6 = true;
            break;
        } else {
            loop_result_6 = false;
            loop_did_return_6 = true;
            break;
        }
    }
    let _e39 = loop_result_6;
    return _e39;
}

fn subtract_magnitudes_g16d4_(a0_13: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_4: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_2: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a3_: bool, fe_trapped_13: ptr<function, bool>) {
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_8_1: bool;
    var local_60: u32 = u32();
    var local_61: u32 = u32();

    let _e5 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_13);
    local_58 = 0u;
    local_59 = 0u;
    loop {
        let _e14 = local_58;
        let _e16 = local_59;
        let _e17 = (_e16 < _e5);
        loop_header_carry_8_1 = _e17;
        if _e17 {
            if a3_ {
                let _e21 = (*a2_2).digits[_e16];
                local_60 = _e21;
            } else {
                let _e24 = (*a1_4).digits[_e16];
                local_60 = _e24;
            }
            let _e29 = local_60;
            if a3_ {
                let _e32 = (*a1_4).digits[_e16];
                local_61 = _e32;
            } else {
                let _e35 = (*a2_2).digits[_e16];
                local_61 = _e35;
            }
            let _e39 = local_61;
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
                        local_58 = (1u - _e54);
                        local_59 = (_e16 + 1u);
                        continue;
                    }
                }
            }
            (*fe_trapped_13) = true;
            break;
        } else {
            loop_did_return_7 = true;
            break;
        }
    }
    return;
}

fn assign_sum_g16d4_(a0_14: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_5: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a2_3: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_14: ptr<function, bool>) {
    var local_62: u32;
    var local_63: bool = false;
    var local_64: bool = bool();

    let _e6 = (*a1_5).negative;
    (*a0_14).negative = _e6;
    let _e9 = (*a1_5).negative;
    let _e11 = (*a2_3).negative;
    if (_e9 == _e11) {
        add_magnitudes_g16d4_(a0_14, a1_5, a2_3, fe_trapped_14);
    } else {
        let _e14 = magnitude_less_g16d4_(a1_5, a2_3, fe_trapped_14);
        if _e14 {
            let _e16 = (*a2_3).negative;
            local_64 = _e16;
        } else {
            let _e18 = (*a1_5).negative;
            local_64 = _e18;
        }
        let _e22 = local_64;
        (*a0_14).negative = _e22;
        subtract_magnitudes_g16d4_(a0_14, a1_5, a2_3, _e14, fe_trapped_14);
    }
    return;
}

fn assign_quad_g16d4_(a0_15: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_6: f32, a2_4: f32, a3_1: f32, a4_: f32, fe_trapped_15: ptr<function, bool>) {
    var fixed_local_6_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_8_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_10_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e6 = zero_g16d4_(fe_trapped_15);
    fixed_local_6_ = _e6;
    let _e9 = zero_g16d4_(fe_trapped_15);
    fixed_local_8_ = _e9;
    let _e12 = zero_g16d4_(fe_trapped_15);
    fixed_local_10_ = _e12;
    assign_binary32_bits_g16d4_((&fixed_local_6_), bitcast<u32>(a1_6), fe_trapped_15);
    assign_binary32_bits_g16d4_((&fixed_local_8_), bitcast<u32>(a2_4), fe_trapped_15);
    assign_sum_g16d4_((&fixed_local_10_), (&fixed_local_6_), (&fixed_local_8_), fe_trapped_15);
    assign_binary32_bits_g16d4_((&fixed_local_8_), bitcast<u32>(a3_1), fe_trapped_15);
    assign_sum_g16d4_((&fixed_local_6_), (&fixed_local_10_), (&fixed_local_8_), fe_trapped_15);
    assign_binary32_bits_g16d4_((&fixed_local_8_), bitcast<u32>(a4_), fe_trapped_15);
    assign_sum_g16d4_((&fixed_local_10_), (&fixed_local_6_), (&fixed_local_8_), fe_trapped_15);
    let _e19 = zero_g16d4_(fe_trapped_15);
    fixed_local_6_ = _e19;
    assign_sum_g16d4_(a0_15, (&fixed_local_10_), (&fixed_local_6_), fe_trapped_15);
    return;
}

fn copy_digits_g16d4_(a0_16: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_7: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_16: ptr<function, bool>) {
    var local_65: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_6_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_16);
    local_65 = 0u;
    loop {
        let _e9 = local_65;
        let _e10 = (_e9 < _e3);
        loop_header_carry_6_ = _e10;
        if _e10 {
            let _e13 = (*a1_7).digits[_e9];
            (*a0_16).digits[_e9] = _e13;
            local_65 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_8 = true;
            break;
        }
    }
    return;
}

fn assign_negated_g16d4_(a0_17: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_8: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_17: ptr<function, bool>) {
    let _e4 = (*a1_8).negative;
    (*a0_17).negative = (_e4 == false);
    copy_digits_g16d4_(a0_17, a1_8, fe_trapped_17);
    return;
}

fn precision_lib_fixed_limb_highest_bit_5b70_(a0_18: u32) -> u32 {
    var local_66: u32;
    var local_67: bool = false;
    var local_68: u32 = u32();

    if ((a0_18 < 4096u) == false) {
        local_68 = 12u;
    } else {
        if ((a0_18 < 2048u) == false) {
            local_68 = 11u;
        } else {
            if ((a0_18 < 1024u) == false) {
                local_68 = 10u;
            } else {
                if ((a0_18 < 512u) == false) {
                    local_68 = 9u;
                } else {
                    if ((a0_18 < 256u) == false) {
                        local_68 = 8u;
                    } else {
                        if ((a0_18 < 128u) == false) {
                            local_68 = 7u;
                        } else {
                            if ((a0_18 < 64u) == false) {
                                local_68 = 6u;
                            } else {
                                if ((a0_18 < 32u) == false) {
                                    local_68 = 5u;
                                } else {
                                    if ((a0_18 < 16u) == false) {
                                        local_68 = 4u;
                                    } else {
                                        if ((a0_18 < 8u) == false) {
                                            local_68 = 3u;
                                        } else {
                                            if ((a0_18 < 4u) == false) {
                                                local_68 = 2u;
                                            } else {
                                                if ((a0_18 < 2u) == false) {
                                                    local_68 = 1u;
                                                } else {
                                                    if (a0_18 == 1u) {
                                                    } else {
                                                        local_68 = 4294967295u;
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
    let _e80 = local_68;
    return _e80;
}

fn highest_bit_g16d4_(a0_19: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_69: u32 = u32();
    var local_70: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_4_: bool;
    var local_71: u32;
    var local_72: bool = false;
    var local_73: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_18);
    local_69 = 0u;
    local_70 = _e2;
    loop {
        let _e10 = local_69;
        let _e12 = local_70;
        let _e14 = (0u < _e12);
        loop_header_carry_4_ = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_19).digits[_e18];
                local_69 = _e21;
                local_70 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_69;
    let _e28 = local_70;
    if (_e26 == 0u) {
        local_73 = 4294967295u;
    } else {
        let _e33 = precision_lib_fixed_limb_highest_bit_5b70_(_e26);
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_18);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_18) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_18) = true;
            } else {
                local_73 = _e58;
            }
        }
    }
    let _e69 = local_73;
    return _e69;
}

fn word_from_g16d4_(a0_20: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_9: u32, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_74: u32;
    var local_75: bool = false;
    var local_76: u32;
    var local_77: bool = false;
    var local_78: u32 = u32();
    var local_79: u32 = u32();
    var local_80: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_34_: bool;

    if (bitcast<i32>(a1_9) < bitcast<i32>(0u)) {
        local_74 = 0u;
        local_75 = true;
    }
    let _e77 = local_75;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_9, fe_trapped_19);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_19);
        let _e15 = (a1_9 / 13u);
        if ((_e15 < _e13) == false) {
            local_76 = 0u;
            local_77 = true;
        }
        let _e72 = local_77;
        if _e72 {
        } else {
            let _e24 = (a1_9 % 13u);
            let _e27 = (*a0_20).digits[_e15];
            local_78 = (13u - _e24);
            local_79 = (_e27 >> _e24);
            local_80 = (_e15 + 1u);
            loop {
                let _e41 = local_78;
                let _e43 = local_79;
                let _e45 = local_80;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_ = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_20).digits[_e45];
                        local_78 = (_e41 + 13u);
                        local_79 = (_e43 | (_e51 << _e41));
                        local_80 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_10 = _e43;
                        loop_did_return_10 = true;
                        break;
                    }
                } else {
                    loop_result_10 = _e43;
                    loop_did_return_10 = true;
                    break;
                }
            }
            let _e69 = loop_result_10;
            local_76 = _e69;
        }
        let _e74 = local_76;
        local_74 = _e74;
    }
    let _e79 = local_74;
    return _e79;
}

fn bit_at(a0_21: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_10: u32, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_81: u32;
    var local_82: bool = false;
    var local_83: u32;
    var local_84: bool = false;

    if (bitcast<i32>(a1_10) < bitcast<i32>(0u)) {
        local_81 = 0u;
        local_82 = true;
    }
    let _e38 = local_82;
    if _e38 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_10, fe_trapped_20);
        let _e14 = (a1_10 / 13u);
        let _e15 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_20);
        if ((_e14 < _e15) == false) {
            local_83 = 0u;
            local_84 = true;
        }
        let _e33 = local_84;
        if _e33 {
        } else {
            let _e25 = (*a0_21).digits[_e14];
            local_83 = ((_e25 >> (a1_10 % 13u)) & 1u);
        }
        let _e35 = local_83;
        local_81 = _e35;
    }
    let _e40 = local_81;
    return _e40;
}

fn any_below(a0_22: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, a1_11: u32, fe_trapped_21: ptr<function, bool>) -> u32 {
    var local_85: u32;
    var local_86: bool = false;
    var local_87: u32 = u32();
    var local_88: u32 = u32();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_15_: bool;
    var local_89: u32;
    var local_90: bool = false;
    var local_91: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_11)) == false) {
        local_85 = 0u;
        local_86 = true;
    }
    let _e65 = local_86;
    if _e65 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_11, fe_trapped_21);
        let _e16 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_g16d4_0cb7_(fe_trapped_21);
        local_87 = 0u;
        local_88 = 0u;
        loop {
            let _e25 = local_87;
            let _e27 = local_88;
            let _e28 = (_e27 < _e16);
            loop_header_carry_15_ = _e28;
            if _e28 {
                if (_e27 < (a1_11 / 13u)) {
                    let _e32 = (*a0_22).digits[_e27];
                    local_87 = (_e25 | _e32);
                    local_88 = (_e27 + 1u);
                    continue;
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        let _e40 = local_87;
        let _e42 = local_88;
        if (_e42 < _e16) {
            let _e50 = (*a0_22).digits[_e42];
            let _e52 = (1u << (a1_11 % 13u));
            if (_e52 < 1u) {
                (*fe_trapped_21) = true;
            } else {
                local_91 = (_e40 | (_e50 & (_e52 - 1u)));
            }
        } else {
            local_91 = _e40;
        }
        let _e62 = local_91;
        local_85 = _e62;
    }
    let _e67 = local_85;
    return _e67;
}

fn project_binary32_(a0_23: u32, a1_12: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_22: ptr<function, bool>) -> u32 {
    var local_92: u32;
    var local_93: bool = false;
    var local_94: u32 = u32();
    var local_95: u32 = u32();
    var local_96: u32 = u32();
    var local_97: u32 = u32();
    var local_98: u32 = u32();

    let _e5 = highest_bit_g16d4_(a1_12, fe_trapped_22);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_g16d4_cbb5_(a1_12, fe_trapped_22);
        let _e13 = (_e5 - _e10);
        if ((((_e5 ^ _e13) & (_e5 ^ _e10)) & 2147483648u) != 0u) {
            (*fe_trapped_22) = true;
        } else {
            let _e23 = (_e13 + 127u);
            if ((((_e13 ^ _e23) & (127u ^ _e23)) & 2147483648u) != 0u) {
                (*fe_trapped_22) = true;
            } else {
                let _e32 = (_e5 - 23u);
                if (bitcast<i32>(_e32) < bitcast<i32>(0u)) {
                    let _e40 = word_from_g16d4_(a1_12, 0u, fe_trapped_22);
                    local_95 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from_g16d4_(a1_12, _e32, fe_trapped_22);
                    local_95 = _e42;
                }
                let _e47 = local_95;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at(a1_12, _e49, fe_trapped_22);
                let _e51 = any_below(a1_12, _e49, fe_trapped_22);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_96 = 1u;
                    } else {
                        local_96 = (_e47 & 1u);
                    }
                }
                let _e64 = local_96;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_22) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_22) = true;
                        } else {
                            local_97 = 8388608u;
                            local_98 = _e77;
                        }
                    } else {
                        local_97 = _e66;
                        local_98 = _e23;
                    }
                    let _e90 = local_97;
                    let _e92 = local_98;
                    local_94 = (((a0_23 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_94;
    return _e103;
}

fn to_binary32_bits(a0_24: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_23: ptr<function, bool>) -> u32 {
    var local_99: u32;
    var local_100: bool = false;
    var local_101: u32 = u32();

    let _e5 = (*a0_24).negative;
    if _e5 {
        local_101 = 1u;
    }
    let _e9 = local_101;
    let _e10 = project_binary32_(_e9, a0_24, fe_trapped_23);
    return _e10;
}

fn to_f32_(a0_25: ptr<function, FeLocal_fe_ArrayFixed_10_4b1c4a24_0_>, fe_trapped_24: ptr<function, bool>) -> f32 {
    let _e2 = to_binary32_bits(a0_25, fe_trapped_24);
    return bitcast<f32>(_e2);
}

fn expansion_difference(a0_26: FeLocal_fe_More_More_More_Last_e6310ae8_8_, a1_13: FeLocal_fe_More_More_More_Last_e6310ae8_8_, fe_trapped_25: ptr<function, bool>) -> f32 {
    var fixed_local_43_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_45_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();
    var fixed_local_47_: FeLocal_fe_ArrayFixed_10_4b1c4a24_0_ = FeLocal_fe_ArrayFixed_10_4b1c4a24_0_();

    let _e3 = to_quad(a0_26);
    let _e8 = to_quad(a1_13);
    let _e13 = zero_g16d4_(fe_trapped_25);
    fixed_local_43_ = _e13;
    assign_quad_g16d4_((&fixed_local_43_), _e3.f0_, _e3.f1_, _e3.f2_, _e3.f3_, fe_trapped_25);
    let _e16 = zero_g16d4_(fe_trapped_25);
    fixed_local_45_ = _e16;
    assign_quad_g16d4_((&fixed_local_45_), _e8.f0_, _e8.f1_, _e8.f2_, _e8.f3_, fe_trapped_25);
    let _e19 = zero_g16d4_(fe_trapped_25);
    fixed_local_47_ = _e19;
    assign_negated_g16d4_((&fixed_local_47_), (&fixed_local_43_), fe_trapped_25);
    let _e22 = zero_g16d4_(fe_trapped_25);
    fixed_local_43_ = _e22;
    assign_sum_g16d4_((&fixed_local_43_), (&fixed_local_45_), (&fixed_local_47_), fe_trapped_25);
    let _e23 = to_f32_((&fixed_local_43_), fe_trapped_25);
    return _e23;
}

fn center_delta(a0_27: FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_, a1_14: FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_, fe_trapped_26: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_13_ {
    let _e5 = expansion_difference(a0_27.re, a1_14.re, fe_trapped_26);
    let _e8 = expansion_difference(a0_27.im, a1_14.im, fe_trapped_26);
    return FeLocal_fe_Complex_f32_87ec9249_13_(_e5, _e8);
}

fn impl_ReferenceAnchor_delta_from(a0_28: FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_, a1_15: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, fe_trapped_27: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_13_ {
    let _e5 = (*a1_15).camera;
    let _e6 = center_value(_e5);
    let _e7 = center_delta(a0_28.center, _e6, fe_trapped_27);
    return _e7;
}

fn impl_trait_f32_abs(a0_29: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_29) & 2147483647u));
}

fn is_input_settled(a0_30: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> bool {
    var local_102: bool;
    var local_103: bool = false;
    var local_104: bool = bool();

    let _e4 = (*a0_30).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_30).clock;
        let _e10 = (*a0_30).last_input;
        if (60f <= (_e8 - _e10)) {
            local_104 = true;
        }
    }
    let _e17 = local_104;
    return _e17;
}

fn preview_uses_pending(a0_31: u32, a1_16: u32, a2_5: u32, a3_2: bool) -> bool {
    var local_105: bool;
    var local_106: bool = false;
    var local_107: bool = bool();

    if (a1_16 == 1u) {
        if (0u < a2_5) {
            if ((a0_31 == 0u) | a3_2) {
                local_107 = true;
            }
        }
    }
    let _e16 = local_107;
    return _e16;
}

fn select_preview_bank(a0_32: u32, a1_17: u32, a2_6: u32, a3_3: u32, a4_1: bool, fe_trapped_28: ptr<function, bool>) -> u32 {
    var local_108: u32;
    var local_109: bool = false;
    var local_110: u32 = u32();

    let _e8 = preview_uses_pending(a1_17, a2_6, a3_3, a4_1);
    if _e8 {
        if (1u < a0_32) {
            (*fe_trapped_28) = true;
        } else {
            local_110 = (1u - a0_32);
        }
    } else {
        local_110 = a0_32;
    }
    let _e16 = local_110;
    return _e16;
}

fn preview_bank(a0_33: FeLocal_fe_ReferenceControl_7d077120_2_, a1_18: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, fe_trapped_29: ptr<function, bool>) -> u32 {
    let _e7 = is_input_settled(a1_18);
    let _e8 = select_preview_bank(a0_33.active_, a0_33.active_valid, a0_33.pending, a0_33.index, _e7, fe_trapped_29);
    return _e8;
}

fn key(a0_34: FeLocal_fe_PreviewCache_6792a3e2_28_) -> FeLocal_fe_PreviewKey_592da546_26_ {
    return FeLocal_fe_PreviewKey_592da546_26_(a0_34.camera, a0_34.reference_generation, a0_34.reference_bank);
}

fn precision_lib_impl_trait_Last_915d_eq_6590_(a0_35: f32, a1_19: f32) -> bool {
    return (a0_35 == a1_19);
}

fn precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_36: FeLocal_fe_More_Last_1ac585f5_6_, a1_20: FeLocal_fe_More_Last_1ac585f5_6_) -> bool {
    var local_111: bool;
    var local_112: bool = false;
    var local_113: bool = bool();

    if (a0_36.lead == a1_20.lead) {
        let _e11 = precision_lib_impl_trait_Last_915d_eq_6590_(a0_36.tail.value, a1_20.tail.value);
        if _e11 {
            local_113 = true;
        }
    }
    let _e15 = local_113;
    return _e15;
}

fn precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_37: FeLocal_fe_More_More_Last_60a5ba63_7_, a1_21: FeLocal_fe_More_More_Last_60a5ba63_7_) -> bool {
    var local_114: bool;
    var local_115: bool = false;
    var local_116: bool = bool();

    if (a0_37.lead == a1_21.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_ge630_5964_(a0_37.tail, a1_21.tail);
        if _e9 {
            local_116 = true;
        }
    }
    let _e13 = local_116;
    return _e13;
}

fn precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_38: FeLocal_fe_More_More_More_Last_e6310ae8_8_, a1_22: FeLocal_fe_More_More_More_Last_e6310ae8_8_) -> bool {
    var local_117: bool;
    var local_118: bool = false;
    var local_119: bool = bool();

    if (a0_38.lead == a1_22.lead) {
        let _e9 = precision_lib_impl_trait_More_a3be_eq_g4419_562e(a0_38.tail, a1_22.tail);
        if _e9 {
            local_119 = true;
        }
    }
    let _e13 = local_119;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_39: FeLocal_fe_Coordinate_bdc10f09_11_, a1_23: FeLocal_fe_Coordinate_bdc10f09_11_) -> bool {
    var local_120: bool;
    var local_121: bool = false;
    var local_122: bool = bool();

    let _e6 = precision_lib_impl_trait_More_a3be_eq_ga905_5ac9_(a0_39.value, a1_23.value);
    if _e6 {
        local_122 = true;
    }
    let _e10 = local_122;
    return _e10;
}

fn algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_40: FeLocal_fe_Complex_Coordinate_d4657101_12_, a1_24: FeLocal_fe_Complex_Coordinate_d4657101_12_) -> bool {
    var local_123: bool;
    var local_124: bool = false;
    var local_125: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_40.re, a1_24.re);
    if _e6 {
        let _e9 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Coordinate_d9e2_eq_9fc9_(a0_40.im, a1_24.im);
        if _e9 {
            local_125 = true;
        }
    }
    let _e13 = local_125;
    return _e13;
}

fn algebra_lib_impl_trait_Complex_bbfa_eq_ge58b_4587_(a0_41: FeLocal_fe_Complex_f32_87ec9249_13_, a1_25: FeLocal_fe_Complex_f32_87ec9249_13_) -> bool {
    var local_126: bool;
    var local_127: bool = false;
    var local_128: bool = bool();

    if (a0_41.re == a1_25.re) {
        if (a0_41.im == a1_25.im) {
            local_128 = true;
        }
    }
    let _e13 = local_128;
    return _e13;
}

fn perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_42: FeLocal_fe_Camera_03494b0d_14_, a1_26: FeLocal_fe_Camera_03494b0d_14_) -> bool {
    var local_129: bool;
    var local_130: bool = false;
    var local_131: bool = bool();

    let _e6 = algebra_lib_impl_trait_Complex_bbfa_eq_ge0da_4e11_(a0_42.center, a1_26.center);
    if _e6 {
        if (a0_42.zoom == a1_26.zoom) {
            if (a0_42.res == a1_26.res) {
                let _e15 = algebra_lib_impl_trait_Complex_bbfa_eq_ge58b_4587_(a0_42.orientation, a1_26.orientation);
                if _e15 {
                    local_131 = true;
                }
            }
        }
    }
    let _e19 = local_131;
    return _e19;
}

fn impl_trait_PreviewKey_eq(a0_43: FeLocal_fe_PreviewKey_592da546_26_, a1_27: FeLocal_fe_PreviewKey_592da546_26_) -> bool {
    var local_132: bool;
    var local_133: bool = false;
    var local_134: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_43.camera, a1_27.camera);
    if _e6 {
        if (a0_43.reference_generation == a1_27.reference_generation) {
            if (a0_43.reference_bank == a1_27.reference_bank) {
                local_134 = true;
            }
        }
    }
    let _e16 = local_134;
    return _e16;
}

fn uses_pending_for_preview(a0_44: FeLocal_fe_ReferenceControl_7d077120_2_, a1_28: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> bool {
    let _e5 = is_input_settled(a1_28);
    let _e6 = preview_uses_pending(a0_44.active_valid, a0_44.pending, a0_44.index, _e5);
    return _e6;
}

fn preview_has_reference(a0_45: u32, a1_29: u32, a2_7: u32) -> bool {
    var local_135: bool;
    var local_136: bool = false;
    var local_137: bool = bool();

    if (a0_45 == 1u) {
        local_137 = true;
    } else {
        if (a1_29 == 1u) {
            if (0u < a2_7) {
                local_137 = true;
            }
        }
    }
    let _e16 = local_137;
    return _e16;
}

fn has_preview_reference(a0_46: FeLocal_fe_ReferenceControl_7d077120_2_) -> bool {
    let _e4 = preview_has_reference(a0_46.active_valid, a0_46.pending, a0_46.index);
    return _e4;
}

fn available_preview_steps(a0_47: FeLocal_fe_ReferenceControl_7d077120_2_, a1_30: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, a2_8: u32) -> u32 {
    var local_138: u32;
    var local_139: bool = false;
    var local_140: u32 = u32();

    let _e5 = has_preview_reference(a0_47);
    if (_e5 == false) {
    } else {
        let _e8 = uses_pending_for_preview(a0_47, a1_30);
        if _e8 {
            if (a0_47.index < a2_8) {
                local_140 = a0_47.index;
            } else {
                local_140 = a2_8;
            }
        } else {
            local_140 = a2_8;
        }
    }
    let _e16 = local_140;
    return _e16;
}

fn next_preview_step_target(a0_48: u32, a1_31: u32, fe_trapped_30: ptr<function, bool>) -> u32 {
    var local_141: u32;
    var local_142: bool = false;
    var local_143: u32;
    var local_144: bool = false;
    var local_145: u32 = u32();

    let _e6 = (a0_48 + 256u);
    if (a0_48 > (4294967295u - 256u)) {
        (*fe_trapped_30) = true;
    }
    if (_e6 < a1_31) {
        local_145 = _e6;
    } else {
        local_145 = a1_31;
    }
    let _e16 = local_145;
    return _e16;
}

fn preview_is_completed(a0_49: u32, a1_32: u32, a2_9: u32) -> bool {
    var local_146: bool;
    var local_147: bool = false;
    var local_148: bool = bool();

    if (a0_49 == 0u) {
        if (0u < a2_9) {
            if ((a1_32 < a2_9) == false) {
                local_148 = true;
            }
        }
    }
    let _e15 = local_148;
    return _e15;
}

fn sync_with_view(a0_50: FeLocal_fe_PreviewCache_6792a3e2_28_, a1_33: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, a2_10: FeLocal_fe_ReferenceControl_7d077120_2_, a3_4: u32, a4_2: u32, fe_trapped_31: ptr<function, bool>) -> FeLocal_fe_PreviewCache_6792a3e2_28_ {
    var local_149: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_150: bool = false;
    var local_151: bool = bool();
    var local_152: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_153: bool = false;
    var local_154: u32 = u32();
    var local_155: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_156: bool = false;
    var local_157: u32 = u32();
    var local_158: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_159: bool = false;
    var local_160: u32 = u32();
    var local_161: FeLocal_fe_PreviewCache_6792a3e2_28_;
    var local_162: bool = false;
    var local_163: u32 = u32();

    let _e9 = (*a1_33).camera;
    let _e10 = preview_bank(a2_10, a1_33, fe_trapped_31);
    let _e12 = key(a0_50);
    let _e13 = impl_trait_PreviewKey_eq(_e12, FeLocal_fe_PreviewKey_592da546_26_(_e9, a3_4, _e10));
    if _e13 {
        if (a0_50.budget == a4_2) {
            if ((a0_50.epoch == 0u) == false) {
                local_151 = true;
            }
        }
    }
    let _e26 = local_151;
    let _e27 = uses_pending_for_preview(a2_10, a1_33);
    if _e27 {
        local_154 = 1u;
    }
    let _e33 = local_154;
    let _e34 = available_preview_steps(a2_10, a1_33, a4_2);
    if _e26 {
        local_157 = a0_50.completed_steps;
    }
    let _e40 = local_157;
    let _e41 = next_preview_step_target(_e40, _e34, fe_trapped_31);
    if _e26 {
        let _e42 = preview_is_completed(_e33, _e40, a4_2);
        if _e42 {
            local_160 = a0_50.completed;
        }
    }
    let _e48 = local_160;
    let _e49 = preview_bank(a2_10, a1_33, fe_trapped_31);
    if _e26 {
        local_163 = a0_50.epoch;
    } else {
        if (a0_50.epoch > (4294967295u - 1u)) {
            (*fe_trapped_31) = true;
        } else {
            local_163 = (a0_50.epoch + 1u);
        }
    }
    let _e61 = local_163;
    return FeLocal_fe_PreviewCache_6792a3e2_28_(_e9, a3_4, _e49, _e33, _e41, _e40, a4_2, _e61, _e48, a0_50.history, a0_50.trace_clock);
}

fn max_(a0_51: f32, a1_34: f32) -> f32 {
    var local_164: f32;
    var local_165: bool = false;
    var local_166: f32 = f32();

    if (a1_34 < a0_51) {
        local_166 = a0_51;
    } else {
        local_166 = a1_34;
    }
    let _e8 = local_166;
    return _e8;
}

fn display_age(a0_52: FeLocal_fe_ReferenceControl_7d077120_2_, a1_35: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> f32 {
    var local_167: f32;
    var local_168: bool = false;
    var local_169: f32 = f32();

    let _e5 = (*a1_35).drag_active;
    if (0.5f <= _e5) {
    } else {
        if (a0_52.pending == 1u) {
        } else {
            let _e12 = (*a1_35).clock;
            let _e14 = (*a1_35).last_input;
            let _e16 = max_(_e14, a0_52.ready_at);
            let _e19 = max_(0f, (_e12 - _e16));
            local_169 = _e19;
        }
    }
    let _e22 = local_169;
    return _e22;
}

fn clamp_f(a0_53: f32, a1_36: f32, a2_11: f32) -> f32 {
    var local_170: f32;
    var local_171: bool = false;
    var local_172: f32 = f32();

    if (a0_53 < a1_36) {
        local_172 = a1_36;
    } else {
        if (a2_11 < a0_53) {
            local_172 = a2_11;
        } else {
            local_172 = a0_53;
        }
    }
    let _e11 = local_172;
    return _e11;
}

fn progress(a0_54: f32, a1_37: f32, a2_12: f32) -> f32 {
    let _e7 = clamp_f(((a0_54 - a1_37) / a2_12), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_55: f32) -> f32 {
    let _e3 = progress(a0_55, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn impl_ViewCache_refinement_key(a0_56: FeLocal_fe_ViewCache_da6e2ccc_24_) -> FeLocal_fe_RefinementKey_028ab549_25_ {
    return FeLocal_fe_RefinementKey_028ab549_25_(a0_56.camera, a0_56.aa);
}

fn impl_MandelbrotViewState_refinement_key(a0_57: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> FeLocal_fe_RefinementKey_028ab549_25_ {
    let _e2 = (*a0_57).camera;
    let _e4 = (*a0_57).antialias;
    return FeLocal_fe_RefinementKey_028ab549_25_(_e2, _e4);
}

fn impl_trait_RefinementKey_eq(a0_58: FeLocal_fe_RefinementKey_028ab549_25_, a1_38: FeLocal_fe_RefinementKey_028ab549_25_) -> bool {
    var local_173: bool;
    var local_174: bool = false;
    var local_175: bool = bool();

    let _e6 = perturbational_mandelbrot_smooth_lib_policy_impl_trait_Camera_d7f9_eq_4120_(a0_58.camera, a1_38.camera);
    if _e6 {
        if (a0_58.antialias == a1_38.antialias) {
            local_175 = true;
        }
    }
    let _e13 = local_175;
    return _e13;
}

fn sync_for_frame(a0_59: FeLocal_fe_ViewCache_da6e2ccc_24_, a1_39: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, a2_13: FeLocal_fe_ReferenceControl_7d077120_2_, a3_5: FeLocal_fe_PreviewCache_6792a3e2_28_, a4_3: FeLocal_fe_ViewCache_da6e2ccc_24_, fe_trapped_32: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_24_ {
    var local_176: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_177: bool = false;
    var local_178: bool = bool();
    var local_179: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_180: bool = false;
    var local_181: u32 = u32();
    var local_182: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_183: bool = false;
    var local_184: u32 = u32();
    var local_185: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_186: bool = false;
    var local_187: u32 = u32();
    var local_188: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_189: bool = false;
    var local_190: u32 = u32();
    var local_191: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_192: bool = false;
    var local_193: u32 = u32();
    var local_194: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_195: bool = false;
    var local_196: u32 = u32();

    let _e9 = display_age(a2_13, a1_39);
    let _e10 = blur_radius(_e9);
    let _e11 = impl_ViewCache_refinement_key(a0_59);
    let _e12 = impl_MandelbrotViewState_refinement_key(a1_39);
    let _e13 = impl_trait_RefinementKey_eq(_e11, _e12);
    if (a4_3.completed == 1u) {
        if (a4_3.epoch == a0_59.epoch) {
            local_178 = true;
        }
    }
    let _e25 = local_178;
    let _e26 = has_preview_reference(a2_13);
    if (_e26 == false) {
    } else {
        if _e13 {
            if (a0_59.budget == a3_5.budget) {
                if (a3_5.completed == 1u) {
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
    let _e53 = has_preview_reference(a2_13);
    if (_e53 == false) {
    } else {
        if (_e52 == 0u) {
            if (a0_59.radius == _e10) {
            } else {
                local_184 = 1u;
            }
        } else {
            local_184 = 1u;
        }
    }
    let _e67 = local_184;
    let _e69 = (*a1_39).camera;
    if _e13 {
        local_187 = a0_59.cursor;
    }
    let _e75 = local_187;
    let _e77 = (*a1_39).antialias;
    if _e13 {
        local_190 = a0_59.epoch;
    } else {
        if (a0_59.epoch > (4294967295u - 1u)) {
            (*fe_trapped_32) = true;
        } else {
            local_190 = (a0_59.epoch + 1u);
        }
    }
    let _e91 = local_190;
    if _e13 {
        local_193 = a0_59.completed;
    }
    let _e97 = local_193;
    if _e13 {
        local_196 = a0_59.steps;
    } else {
        local_196 = 1u;
    }
    let _e103 = local_196;
    return FeLocal_fe_ViewCache_da6e2ccc_24_(_e69, _e75, _e77, a3_5.budget, _e10, _e52, _e67, _e91, _e97, _e103, a0_59.frame_clock);
}

fn from_state(a0_60: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, a1_40: u32, a2_14: u32) -> FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_ {
    let _e4 = (*a0_60).camera;
    let _e5 = center_value(_e4);
    return FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_(_e5, a1_40, a2_14);
}

fn clear_reference_checkpoint() {
    var local_197: u32 = u32();
    var loop_result_12: u32;
    var loop_did_return_12: bool = false;
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
            loop_did_return_12 = true;
            break;
        }
    }
    return;
}

fn impl_trait_PackedReference_default() -> FeLocal_fe_PackedReference_e11ca04a_23_ {
    return FeLocal_fe_PackedReference_e11ca04a_23_();
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_33: ptr<function, bool>) -> u32 {
    std_lib_evm_effects_assert_724a(true, fe_trapped_33);
    return 8u;
}

fn precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_0377_(fe_trapped_34: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_1_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_34);
    return FeLocal_fe_ArrayFixed_8_78307dfe_1_();
}

fn perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_35: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_3_ {
    let _e1 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_0377_(fe_trapped_35);
    return FeLocal_fe_ReferenceReal_aede3f8e_3_(_e1);
}

fn default_gfdd1_(fe_trapped_36: ptr<function, bool>) -> FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_ {
    let _e1 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_36);
    let _e2 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_36);
    return FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_(_e1, _e2);
}

fn clear_digits_gc7cf(a0_61: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_37: ptr<function, bool>) {
    var local_198: u32 = u32();
    var loop_result_13: u32;
    var loop_did_return_13: bool = false;
    var loop_header_carry_5_3: bool;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_37);
    local_198 = 0u;
    loop {
        let _e8 = local_198;
        let _e9 = (_e8 < _e2);
        loop_header_carry_5_3 = _e9;
        if _e9 {
            (*a0_61).digits[_e8] = 0u;
            local_198 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return_13 = true;
            break;
        }
    }
    return;
}

fn precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a0_62: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_38: ptr<function, bool>) -> u32 {
    var local_199: u32;
    var local_200: bool = false;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_38);
    let _e4 = (_e2 - 1u);
    precision_lib_array_fixed_signed_word_0309_(_e4, fe_trapped_38);
    let _e12 = ((_e4 & 2147483648u) != 0u);
    let _e13 = ((13u & 2147483648u) != 0u);
    let _e17 = select(_e4, (0u - _e4), _e12);
    let _e21 = (_e17 != 0u);
    if (_e21 && (select(13u, (0u - 13u), _e13) > (select((2147483648u - 1u), 2147483648u, (_e12 != _e13)) / select(1u, _e17, _e21)))) {
        (*fe_trapped_38) = true;
    } else {
        local_199 = (_e4 * 13u);
        local_200 = true;
    }
    let _e31 = local_199;
    return _e31;
}

fn load_significand_gc7cf(a0_63: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_41: u32, a2_15: u32, fe_trapped_39: ptr<function, bool>) {
    var local_201: u32 = u32();
    var local_202: u32 = u32();
    var loop_result_14: u32;
    var loop_did_return_14: bool = false;
    var loop_header_carry_8_2: bool;
    var local_203: u32 = u32();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_39);
    local_201 = a2_15;
    local_202 = 0u;
    loop {
        let _e12 = local_201;
        let _e14 = local_202;
        let _e15 = (_e14 < _e4);
        loop_header_carry_8_2 = _e15;
        if _e15 {
            if ((bitcast<i32>(_e12) < bitcast<i32>(24u)) == false) {
                local_203 = 0u;
            } else {
                if ((bitcast<i32>(4294967283u) < bitcast<i32>(_e12)) == false) {
                    local_203 = 0u;
                } else {
                    if ((bitcast<i32>(_e12) < bitcast<i32>(0u)) == false) {
                        precision_lib_array_fixed_unsigned_word_3f05_(_e12, fe_trapped_39);
                        local_203 = ((a1_41 >> _e12) & 8191u);
                    } else {
                        let _e39 = (0u - _e12);
                        precision_lib_array_fixed_unsigned_word_3f05_(_e39, fe_trapped_39);
                        local_203 = ((a1_41 << _e39) & 8191u);
                    }
                }
            }
            let _e50 = local_203;
            (*a0_63).digits[_e14] = _e50;
            let _e56 = (_e12 + 13u);
            if ((((_e12 ^ _e56) & (13u ^ _e56)) & 2147483648u) != 0u) {
                (*fe_trapped_39) = true;
                break;
            }
            local_201 = _e56;
            local_202 = (_e14 + 1u);
            continue;
        } else {
            loop_did_return_14 = true;
            break;
        }
    }
    return;
}

fn assign_binary32_bits_gc7cf(a0_64: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_42: u32, fe_trapped_40: ptr<function, bool>) {
    var local_204: u32;
    var local_205: bool = false;
    var local_206: bool = bool();
    var local_207: u32;
    var local_208: bool = false;

    let _e6 = (a1_42 & 2147483647u);
    std_lib_evm_effects_assert_724a((_e6 < 1174405120u), fe_trapped_40);
    if (((a1_42 >> 31u) == 0u) == false) {
        if ((_e6 == 0u) == false) {
            local_206 = true;
        }
    }
    let _e23 = local_206;
    (*a0_64).negative = _e23;
    let _e26 = (_e6 >> 23u);
    if (_e26 == 0u) {
        clear_digits_gc7cf(a0_64, fe_trapped_40);
        local_208 = true;
    } else {
        precision_lib_array_fixed_signed_word_0309_(_e26, fe_trapped_40);
        let _e38 = (_e26 - 150u);
        if ((((_e26 ^ _e38) & (_e26 ^ 150u)) & 2147483648u) != 0u) {
        } else {
            let _e44 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a0_64, fe_trapped_40);
            let _e47 = (_e38 + _e44);
            if ((((_e38 ^ _e47) & (_e44 ^ _e47)) & 2147483648u) != 0u) {
            } else {
                let _e56 = (0u - _e47);
                if ((((0u ^ _e56) & (0u ^ _e47)) & 2147483648u) != 0u) {
                    (*fe_trapped_40) = true;
                }
                load_significand_gc7cf(a0_64, ((_e6 & 8388607u) | 8388608u), _e56, fe_trapped_40);
                local_208 = true;
            }
            let _e66 = local_208;
            if _e66 {
            }
        }
        let _e69 = local_208;
        if _e69 {
        } else {
            (*fe_trapped_40) = true;
        }
    }
    return;
}

fn add_magnitudes_gc7cf(a0_65: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_43: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a2_16: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_41: ptr<function, bool>) {
    var local_209: u32 = u32();
    var local_210: u32 = u32();
    var loop_result_15: u32;
    var loop_did_return_15: bool = false;
    var loop_header_carry_7_1: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_41);
    local_209 = 0u;
    local_210 = 0u;
    loop {
        let _e13 = local_209;
        let _e15 = local_210;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_1 = _e16;
        if _e16 {
            let _e19 = (*a1_43).digits[_e15];
            let _e22 = (*a2_16).digits[_e15];
            let _e24 = (_e19 + _e22);
            if (_e19 > (4294967295u - _e22)) {
            } else {
                let _e28 = (_e24 + _e13);
                if (_e24 > (4294967295u - _e13)) {
                    (*fe_trapped_41) = true;
                    break;
                }
                (*a0_65).digits[_e15] = (_e28 & 8191u);
                local_209 = (_e28 >> 13u);
                local_210 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_41) = true;
            break;
        } else {
            loop_did_return_15 = true;
            break;
        }
    }
    return;
}

fn magnitude_less_gc7cf(a0_66: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_44: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_42: ptr<function, bool>) -> bool {
    var local_211: u32 = u32();
    var loop_result_16: bool;
    var loop_did_return_16: bool = false;
    var loop_header_carry_5_4: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_42);
    local_211 = _e3;
    loop {
        let _e8 = local_211;
        let _e10 = (0u < _e8);
        loop_header_carry_5_4 = _e10;
        if _e10 {
            let _e12 = (_e8 - 1u);
            let _e15 = (*a0_66).digits[_e12];
            let _e18 = (*a1_44).digits[_e12];
            if ((_e15 == _e18) == false) {
            } else {
                local_211 = _e12;
                continue;
            }
            let _e25 = (*a0_66).digits[_e12];
            let _e28 = (*a1_44).digits[_e12];
            loop_result_16 = (_e25 < _e28);
            loop_did_return_16 = true;
            break;
        } else {
            loop_result_16 = false;
            loop_did_return_16 = true;
            break;
        }
    }
    let _e39 = loop_result_16;
    return _e39;
}

fn subtract_magnitudes_gc7cf(a0_67: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_45: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a2_17: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a3_6: bool, fe_trapped_43: ptr<function, bool>) {
    var local_212: u32 = u32();
    var local_213: u32 = u32();
    var loop_result_17: u32;
    var loop_did_return_17: bool = false;
    var loop_header_carry_8_3: bool;
    var local_214: u32 = u32();
    var local_215: u32 = u32();

    let _e5 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_43);
    local_212 = 0u;
    local_213 = 0u;
    loop {
        let _e14 = local_212;
        let _e16 = local_213;
        let _e17 = (_e16 < _e5);
        loop_header_carry_8_3 = _e17;
        if _e17 {
            if a3_6 {
                let _e21 = (*a2_17).digits[_e16];
                local_214 = _e21;
            } else {
                let _e24 = (*a1_45).digits[_e16];
                local_214 = _e24;
            }
            let _e29 = local_214;
            if a3_6 {
                let _e32 = (*a1_45).digits[_e16];
                local_215 = _e32;
            } else {
                let _e35 = (*a2_17).digits[_e16];
                local_215 = _e35;
            }
            let _e39 = local_215;
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
                            (*fe_trapped_43) = true;
                            break;
                        }
                        local_212 = (1u - _e54);
                        local_213 = (_e16 + 1u);
                        continue;
                    }
                }
            }
            (*fe_trapped_43) = true;
            break;
        } else {
            loop_did_return_17 = true;
            break;
        }
    }
    return;
}

fn assign_sum_gc7cf(a0_68: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_46: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a2_18: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_44: ptr<function, bool>) {
    var local_216: u32;
    var local_217: bool = false;
    var local_218: bool = bool();

    let _e6 = (*a1_46).negative;
    (*a0_68).negative = _e6;
    let _e9 = (*a1_46).negative;
    let _e11 = (*a2_18).negative;
    if (_e9 == _e11) {
        add_magnitudes_gc7cf(a0_68, a1_46, a2_18, fe_trapped_44);
    } else {
        let _e14 = magnitude_less_gc7cf(a1_46, a2_18, fe_trapped_44);
        if _e14 {
            let _e16 = (*a2_18).negative;
            local_218 = _e16;
        } else {
            let _e18 = (*a1_46).negative;
            local_218 = _e18;
        }
        let _e22 = local_218;
        (*a0_68).negative = _e22;
        subtract_magnitudes_gc7cf(a0_68, a1_46, a2_18, _e14, fe_trapped_44);
    }
    return;
}

fn assign_quad_gc7cf(a0_69: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_47: f32, a2_19: f32, a3_7: f32, a4_4: f32, fe_trapped_45: ptr<function, bool>) {
    var fixed_local_6_1: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();
    var fixed_local_8_1: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();
    var fixed_local_10_1: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e6 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_0377_(fe_trapped_45);
    fixed_local_6_1 = _e6;
    let _e9 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_0377_(fe_trapped_45);
    fixed_local_8_1 = _e9;
    let _e12 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_0377_(fe_trapped_45);
    fixed_local_10_1 = _e12;
    assign_binary32_bits_gc7cf((&fixed_local_6_1), bitcast<u32>(a1_47), fe_trapped_45);
    assign_binary32_bits_gc7cf((&fixed_local_8_1), bitcast<u32>(a2_19), fe_trapped_45);
    assign_sum_gc7cf((&fixed_local_10_1), (&fixed_local_6_1), (&fixed_local_8_1), fe_trapped_45);
    assign_binary32_bits_gc7cf((&fixed_local_8_1), bitcast<u32>(a3_7), fe_trapped_45);
    assign_sum_gc7cf((&fixed_local_6_1), (&fixed_local_10_1), (&fixed_local_8_1), fe_trapped_45);
    assign_binary32_bits_gc7cf((&fixed_local_8_1), bitcast<u32>(a4_4), fe_trapped_45);
    assign_sum_gc7cf((&fixed_local_10_1), (&fixed_local_6_1), (&fixed_local_8_1), fe_trapped_45);
    let _e19 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_0377_(fe_trapped_45);
    fixed_local_6_1 = _e19;
    assign_sum_gc7cf(a0_69, (&fixed_local_10_1), (&fixed_local_6_1), fe_trapped_45);
    return;
}

fn impl_ReferenceReal_assign_quad(a0_70: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a1_48: f32, a2_20: f32, a3_8: f32, a4_5: f32, fe_trapped_46: ptr<function, bool>) {
    assign_quad_gc7cf((&(*a0_70).value), a1_48, a2_20, a3_8, a4_5, fe_trapped_46);
    return;
}

fn assign_reference_center(a0_71: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_>, a1_49: FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_, fe_trapped_47: ptr<function, bool>) {
    let _e5 = to_quad(a1_49.center.re);
    let _e12 = to_quad(a1_49.center.im);
    impl_ReferenceReal_assign_quad((&(*a0_71).re), _e5.f0_, _e5.f1_, _e5.f2_, _e5.f3_, fe_trapped_47);
    impl_ReferenceReal_assign_quad((&(*a0_71).im), _e12.f0_, _e12.f1_, _e12.f2_, _e12.f3_, fe_trapped_47);
    return;
}

fn assert_canonical(a0_72: ptr<function, array<u32, 8>>, fe_trapped_48: ptr<function, bool>) {
    var local_219: u32 = u32();
    var loop_result_18: u32;
    var loop_did_return_18: bool = false;
    var loop_header_carry_5_5: bool;

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_48);
    local_219 = 0u;
    loop {
        let _e8 = local_219;
        let _e9 = (_e8 < _e2);
        loop_header_carry_5_5 = _e9;
        if _e9 {
            let _e11 = (*a0_72)[_e8];
            std_lib_evm_effects_assert_724a((_e11 < 8192u), fe_trapped_48);
            local_219 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return_18 = true;
            break;
        }
    }
    return;
}

fn from_digits(a0_73: bool, a1_50: ptr<function, array<u32, 8>>, fe_trapped_49: ptr<function, bool>) -> FeLocal_fe_ArrayFixed_8_78307dfe_1_ {
    assert_canonical(a1_50, fe_trapped_49);
    let _e3 = (*a1_50);
    return FeLocal_fe_ArrayFixed_8_78307dfe_1_(a0_73, _e3);
}

fn impl_ReferenceReal_from_words(a0_74: u32, a1_51: ptr<function, array<u32, 8>>, fe_trapped_50: ptr<function, bool>) -> FeLocal_fe_ReferenceReal_aede3f8e_3_ {
    std_lib_evm_effects_assert_724a(((1u < a0_74) == false), fe_trapped_50);
    let _e9 = from_digits((a0_74 == 1u), a1_51, fe_trapped_50);
    return FeLocal_fe_ReferenceReal_aede3f8e_3_(_e9);
}

fn load_reference_checkpoint_into(a0_75: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_>, a2_21: FeLocal_fe_ReferenceControl_7d077120_2_, fe_trapped_51: ptr<function, bool>) {
    var fixed_local_78_: array<u32, 8> = array<u32, 8>();

    let _e7 = reference_words[i32(0u)];
    let _e11 = reference_words[i32(1u)];
    let _e15 = reference_words[i32(2u)];
    let _e19 = reference_words[i32(3u)];
    let _e23 = reference_words[i32(4u)];
    let _e27 = reference_words[i32(5u)];
    let _e31 = reference_words[i32(6u)];
    let _e35 = reference_words[i32(7u)];
    let _e40 = reference_words[i32(8u)];
    let _e44 = reference_words[i32(9u)];
    let _e48 = reference_words[i32(10u)];
    let _e52 = reference_words[i32(11u)];
    let _e56 = reference_words[i32(12u)];
    let _e60 = reference_words[i32(13u)];
    let _e64 = reference_words[i32(14u)];
    let _e68 = reference_words[i32(15u)];
    fixed_local_78_ = array<u32, 8>(_e7, _e11, _e15, _e19, _e23, _e27, _e31, _e35);
    let _e73 = impl_ReferenceReal_from_words(a2_21.zx_s, (&fixed_local_78_), fe_trapped_51);
    (*a0_75).re = _e73;
    fixed_local_78_ = array<u32, 8>(_e40, _e44, _e48, _e52, _e56, _e60, _e64, _e68);
    let _e76 = impl_ReferenceReal_from_words(a2_21.zy_s, (&fixed_local_78_), fe_trapped_51);
    (*a0_75).im = _e76;
    return;
}

fn multiply_magnitudes(a0_76: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_52: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a2_22: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_52: ptr<function, bool>) {
    var local_220: u32 = u32();
    var local_221: u32 = u32();
    var loop_result_19: u32;
    var loop_did_return_19: bool = false;
    var loop_header_carry_7_2: bool;
    var local_222: u32 = u32();
    var local_223: u32 = u32();
    var loop_result_20: u32;
    var loop_did_return_20: bool = false;
    var loop_header_carry_10_: bool;
    var local_224: u32 = u32();
    var local_225: u32 = u32();
    var loop_result_21: u32;
    var loop_did_return_21: bool = false;
    var loop_header_carry_174_: u32;
    var loop_header_carry_68_: bool;
    var local_226: u32 = u32();
    var local_227: u32 = u32();
    var loop_result_22: u32;
    var loop_did_return_22: bool = false;
    var loop_header_carry_93_: bool;

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_52);
    local_220 = 0u;
    local_221 = 0u;
    loop {
        let _e13 = local_220;
        let _e15 = local_221;
        let _e16 = (_e15 < _e4);
        loop_header_carry_7_2 = _e16;
        if _e16 {
            local_222 = 0u;
            local_223 = 0u;
            loop {
                let _e25 = local_222;
                let _e27 = local_223;
                let _e28 = (_e27 < _e4);
                loop_header_carry_10_ = _e28;
                if _e28 {
                    let _e31 = (*a0_76).digits[_e27];
                    let _e34 = (*a1_52).digits[_e27];
                    let _e37 = (*a2_22).digits[_e15];
                    let _e41 = (_e34 * _e37);
                    let _e42 = (_e34 != 0u);
                    if (_e42 && (_e37 > (4294967295u / select(1u, _e34, _e42)))) {
                    } else {
                        let _e48 = (_e31 + _e41);
                        if (_e31 > (4294967295u - _e41)) {
                        } else {
                            let _e52 = (_e48 + _e25);
                            if (_e48 > (4294967295u - _e25)) {
                                (*fe_trapped_52) = true;
                                break;
                            }
                            (*a0_76).digits[_e27] = (_e52 & 8191u);
                            local_222 = (_e52 >> 13u);
                            local_223 = (_e27 + 1u);
                            continue;
                        }
                    }
                    (*fe_trapped_52) = true;
                    break;
                } else {
                    break;
                }
            }
            let _e69 = local_222;
            if (_e15 < (_e4 - 1u)) {
                let _e76 = (*a0_76).digits[0];
                local_225 = 0u;
                loop {
                    let _e82 = local_225;
                    let _e84 = (_e4 - 1u);
                    let _e85 = (_e82 < _e84);
                    loop_header_carry_174_ = _e84;
                    loop_header_carry_68_ = _e85;
                    if _e85 {
                        let _e90 = (*a0_76).digits[(_e82 + 1u)];
                        (*a0_76).digits[_e82] = _e90;
                        local_225 = (_e82 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                (*a0_76).digits[(_e4 - 1u)] = _e69;
                local_224 = _e76;
            } else {
                local_226 = (_e13 >> 12u);
                local_227 = 0u;
                loop {
                    let _e111 = local_226;
                    let _e113 = local_227;
                    let _e114 = (_e113 < _e4);
                    loop_header_carry_93_ = _e114;
                    if _e114 {
                        let _e117 = (*a0_76).digits[_e113];
                        let _e119 = (_e117 + _e111);
                        if (_e117 > (4294967295u - _e111)) {
                            (*fe_trapped_52) = true;
                            break;
                        }
                        (*a0_76).digits[_e113] = (_e119 & 8191u);
                        local_226 = (_e119 >> 13u);
                        local_227 = (_e113 + 1u);
                        continue;
                    } else {
                        local_224 = _e13;
                        break;
                    }
                }
            }
            let _e137 = local_224;
            if (_e15 > (4294967295u - 1u)) {
            } else {
                local_220 = _e137;
                local_221 = (_e15 + 1u);
                continue;
            }
            (*fe_trapped_52) = true;
            break;
        } else {
            loop_did_return_19 = true;
            break;
        }
    }
    return;
}

fn assign_product_gc7cf(a0_77: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_53: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a2_23: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_53: ptr<function, bool>) {
    let _e5 = (*a1_53).negative;
    let _e7 = (*a2_23).negative;
    (*a0_77).negative = ((_e5 == _e7) == false);
    clear_digits_gc7cf(a0_77, fe_trapped_53);
    multiply_magnitudes(a0_77, a1_53, a2_23, fe_trapped_53);
    return;
}

fn impl_ReferenceReal_assign_product(a0_78: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a1_54: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a2_24: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, fe_trapped_54: ptr<function, bool>) {
    var fixed_local_12_: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();
    var fixed_local_13_: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e5 = (*a1_54).value;
    let _e7 = (*a2_24).value;
    fixed_local_12_ = _e5;
    fixed_local_13_ = _e7;
    assign_product_gc7cf((&(*a0_78).value), (&fixed_local_12_), (&fixed_local_13_), fe_trapped_54);
    return;
}

fn impl_ReferenceReal_assign_sum(a0_79: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a1_55: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a2_25: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, fe_trapped_55: ptr<function, bool>) {
    var fixed_local_12_1: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();
    var fixed_local_13_1: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e5 = (*a1_55).value;
    let _e7 = (*a2_25).value;
    fixed_local_12_1 = _e5;
    fixed_local_13_1 = _e7;
    assign_sum_gc7cf((&(*a0_79).value), (&fixed_local_12_1), (&fixed_local_13_1), fe_trapped_55);
    return;
}

fn magnitude_exceeds_four(a0_80: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_56: ptr<function, bool>) -> bool {
    var local_228: bool;
    var local_229: bool = false;
    var local_230: bool;
    var local_231: bool = false;
    var local_232: u32 = u32();
    var loop_result_23: bool;
    var loop_did_return_23: bool = false;
    var loop_header_carry_18_: u32;
    var loop_header_carry_19_: bool;
    var loop_header_carry_21_: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_56);
    let _e8 = (*a0_80).digits[(_e3 - 1u)];
    if (4u < _e8) {
        local_228 = true;
        local_229 = true;
    }
    let _e64 = local_229;
    if _e64 {
    } else {
        if (_e8 < 4u) {
            local_230 = false;
            local_231 = true;
        } else {
            local_232 = 0u;
        }
        let _e59 = local_231;
        if _e59 {
        } else {
            local_232 = 0u;
            loop {
                let _e29 = local_232;
                let _e31 = (_e3 - 1u);
                let _e33 = (_e29 < _e31);
                loop_header_carry_18_ = _e31;
                loop_header_carry_19_ = (_e3 < 1u);
                loop_header_carry_21_ = _e33;
                if _e33 {
                    let _e36 = (*a0_80).digits[_e29];
                    if ((_e36 == 0u) == false) {
                        loop_result_23 = true;
                        loop_did_return_23 = true;
                        break;
                    }
                    local_232 = (_e29 + 1u);
                    continue;
                } else {
                    loop_result_23 = false;
                    loop_did_return_23 = true;
                    break;
                }
            }
            let _e56 = loop_result_23;
            local_230 = _e56;
        }
        let _e61 = local_230;
        local_228 = _e61;
    }
    let _e66 = local_228;
    return _e66;
}

fn escaped(a0_81: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, fe_trapped_57: ptr<function, bool>) -> bool {
    var fixed_local_5_: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e3 = (*a0_81).value;
    fixed_local_5_ = _e3;
    let _e6 = magnitude_exceeds_four((&fixed_local_5_), fe_trapped_57);
    return _e6;
}

fn copy_digits_gc7cf(a0_82: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_56: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_58: ptr<function, bool>) {
    var local_233: u32 = u32();
    var loop_result_24: u32;
    var loop_did_return_24: bool = false;
    var loop_header_carry_6_1: bool;

    let _e3 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_58);
    local_233 = 0u;
    loop {
        let _e9 = local_233;
        let _e10 = (_e9 < _e3);
        loop_header_carry_6_1 = _e10;
        if _e10 {
            let _e13 = (*a1_56).digits[_e9];
            (*a0_82).digits[_e9] = _e13;
            local_233 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_24 = true;
            break;
        }
    }
    return;
}

fn assign_negated_gc7cf(a0_83: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_57: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_59: ptr<function, bool>) {
    let _e4 = (*a1_57).negative;
    (*a0_83).negative = (_e4 == false);
    copy_digits_gc7cf(a0_83, a1_57, fe_trapped_59);
    return;
}

fn assign_difference(a0_84: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a1_58: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a2_26: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, fe_trapped_60: ptr<function, bool>) {
    var fixed_local_4_: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();
    var fixed_local_9_: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e4 = precision_lib_array_fixed_impl_ArrayFixed_c11e_zero_gc7cf_0377_(fe_trapped_60);
    fixed_local_4_ = _e4;
    let _e8 = (*a2_26).value;
    fixed_local_9_ = _e8;
    assign_negated_gc7cf((&fixed_local_4_), (&fixed_local_9_), fe_trapped_60);
    let _e12 = (*a1_58).value;
    fixed_local_9_ = _e12;
    assign_sum_gc7cf((&(*a0_84).value), (&fixed_local_9_), (&fixed_local_4_), fe_trapped_60);
    return;
}

fn assign_copy_gc7cf(a0_85: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_59: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_61: ptr<function, bool>) {
    let _e4 = (*a1_59).negative;
    (*a0_85).negative = _e4;
    copy_digits_gc7cf(a0_85, a1_59, fe_trapped_61);
    return;
}

fn impl_ReferenceReal_assign_copy(a0_86: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a1_60: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, fe_trapped_62: ptr<function, bool>) {
    var fixed_local_8_2: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e4 = (*a1_60).value;
    fixed_local_8_2 = _e4;
    assign_copy_gc7cf((&(*a0_86).value), (&fixed_local_8_2), fe_trapped_62);
    return;
}

fn reference_step_in_place(a0_87: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_>, a1_61: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_>, fe_trapped_63: ptr<function, bool>) -> bool {
    var local_234: bool;
    var local_235: bool = false;
    var local_236: bool = bool();
    var fixed_local_3_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_10_2: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_11_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_13_2: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_19_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_20_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_22_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_26_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_32_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_33_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_35_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_39_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_43_1: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_45_1: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_47_1: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_50_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();

    let _e5 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
    fixed_local_3_ = _e5;
    let _e9 = (*a0_87).re;
    let _e11 = (*a0_87).re;
    fixed_local_10_2 = _e9;
    fixed_local_11_ = _e11;
    impl_ReferenceReal_assign_product((&fixed_local_3_), (&fixed_local_10_2), (&fixed_local_11_), fe_trapped_63);
    let _e16 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
    fixed_local_13_2 = _e16;
    let _e20 = (*a0_87).im;
    let _e22 = (*a0_87).im;
    fixed_local_19_ = _e20;
    fixed_local_20_ = _e22;
    impl_ReferenceReal_assign_product((&fixed_local_13_2), (&fixed_local_19_), (&fixed_local_20_), fe_trapped_63);
    let _e27 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
    fixed_local_22_ = _e27;
    impl_ReferenceReal_assign_sum((&fixed_local_22_), (&fixed_local_3_), (&fixed_local_13_2), fe_trapped_63);
    let _e30 = escaped((&fixed_local_22_), fe_trapped_63);
    if _e30 {
        local_236 = true;
    } else {
        let _e31 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
        fixed_local_26_ = _e31;
        let _e35 = (*a0_87).re;
        let _e37 = (*a0_87).im;
        fixed_local_32_ = _e35;
        fixed_local_33_ = _e37;
        impl_ReferenceReal_assign_product((&fixed_local_26_), (&fixed_local_32_), (&fixed_local_33_), fe_trapped_63);
        let _e42 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
        fixed_local_35_ = _e42;
        assign_difference((&fixed_local_35_), (&fixed_local_3_), (&fixed_local_13_2), fe_trapped_63);
        let _e45 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
        fixed_local_39_ = _e45;
        let _e49 = (*a1_61).re;
        fixed_local_43_1 = _e49;
        impl_ReferenceReal_assign_sum((&fixed_local_39_), (&fixed_local_35_), (&fixed_local_43_1), fe_trapped_63);
        let _e52 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
        fixed_local_45_1 = _e52;
        impl_ReferenceReal_assign_sum((&fixed_local_45_1), (&fixed_local_26_), (&fixed_local_26_), fe_trapped_63);
        let _e55 = perturbational_mandelbrot_smooth_lib_orbit_impl_ReferenceReal_fdd1_zero_6a98_(fe_trapped_63);
        fixed_local_47_1 = _e55;
        let _e59 = (*a1_61).im;
        fixed_local_50_ = _e59;
        impl_ReferenceReal_assign_sum((&fixed_local_47_1), (&fixed_local_45_1), (&fixed_local_50_), fe_trapped_63);
        impl_ReferenceReal_assign_copy((&(*a0_87).re), (&fixed_local_39_), fe_trapped_63);
        impl_ReferenceReal_assign_copy((&(*a0_87).im), (&fixed_local_47_1), fe_trapped_63);
    }
    let _e67 = local_236;
    return _e67;
}

fn sign_gc7cf(a0_88: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>) -> u32 {
    var local_237: u32;
    var local_238: bool = false;
    var local_239: u32 = u32();

    let _e4 = (*a0_88).negative;
    if _e4 {
        local_239 = 1u;
    }
    let _e8 = local_239;
    return _e8;
}

fn impl_ReferenceReal_sign(a0_89: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>) -> u32 {
    var fixed_local_5_1: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e2 = (*a0_89).value;
    fixed_local_5_1 = _e2;
    let _e5 = sign_gc7cf((&fixed_local_5_1));
    return _e5;
}

fn publish(a0_90: u32, a1_62: u32, a2_27: u32, a3_9: u32, a4_6: f32) -> FeLocal_fe_ReferenceControl_7d077120_2_ {
    return FeLocal_fe_ReferenceControl_7d077120_2_(a0_90, 1u, 0u, a1_62, a2_27, a3_9, a4_6);
}

fn digit_gc7cf(a0_91: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_63: u32, fe_trapped_64: ptr<function, bool>) -> u32 {
    var local_240: u32;
    var local_241: bool = false;

    if (a1_63 < 8u) {
    } else {
        (*fe_trapped_64) = true;
    }
    let _e9 = (*a0_91).digits[a1_63];
    return _e9;
}

fn impl_ReferenceReal_digit(a0_92: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, a1_64: u32, fe_trapped_65: ptr<function, bool>) -> u32 {
    var fixed_local_7_: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e4 = (*a0_92).value;
    fixed_local_7_ = _e4;
    let _e7 = digit_gc7cf((&fixed_local_7_), a1_64, fe_trapped_65);
    return _e7;
}

fn store_reference_checkpoint(a1_65: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_>, fe_trapped_66: ptr<function, bool>) {
    var local_242: u32 = u32();
    var loop_result_25: u32;
    var loop_did_return_25: bool = false;
    var loop_header_carry_5_6: bool;
    var fixed_local_10_3: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_20_1: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();

    local_242 = 0u;
    loop {
        let _e8 = local_242;
        let _e10 = (_e8 < 8u);
        loop_header_carry_5_6 = _e10;
        if _e10 {
            let _e12 = (*a1_65).re;
            fixed_local_10_3 = _e12;
            let _e15 = impl_ReferenceReal_digit((&fixed_local_10_3), _e8, fe_trapped_66);
            reference_words[i32(_e8)] = _e15;
            let _e21 = (*a1_65).im;
            fixed_local_20_1 = _e21;
            let _e24 = impl_ReferenceReal_digit((&fixed_local_20_1), _e8, fe_trapped_66);
            reference_words[i32((_e8 + 8u))] = _e24;
            local_242 = (_e8 + 1u);
            continue;
        } else {
            loop_did_return_25 = true;
            break;
        }
    }
    return;
}

fn advance_pending(a0_93: FeLocal_fe_ReferenceControl_7d077120_2_, a1_66: u32, a2_28: u32, a3_10: u32) -> FeLocal_fe_ReferenceControl_7d077120_2_ {
    var fixed_local_5_2: FeLocal_fe_ReferenceControl_7d077120_2_ = FeLocal_fe_ReferenceControl_7d077120_2_();

    fixed_local_5_2 = a0_93;
    fixed_local_5_2.pending = 1u;
    fixed_local_5_2.index = a1_66;
    fixed_local_5_2.zx_s = a2_28;
    fixed_local_5_2.zy_s = a3_10;
    let _e11 = fixed_local_5_2;
    return _e11;
}

fn invalidate_for_new_reference(a0_94: FeLocal_fe_ViewCache_da6e2ccc_24_, fe_trapped_67: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_24_ {
    var local_243: FeLocal_fe_ViewCache_da6e2ccc_24_;
    var local_244: bool = false;
    var fixed_local_2_: FeLocal_fe_ViewCache_da6e2ccc_24_ = FeLocal_fe_ViewCache_da6e2ccc_24_();

    fixed_local_2_ = a0_94;
    fixed_local_2_.cursor = 0u;
    fixed_local_2_.preview_dirty = 1u;
    fixed_local_2_.blur_dirty = 1u;
    if (a0_94.epoch > (4294967295u - 1u)) {
        (*fe_trapped_67) = true;
    }
    fixed_local_2_.epoch = (a0_94.epoch + 1u);
    fixed_local_2_.completed = 0u;
    let _e21 = fixed_local_2_;
    return _e21;
}

fn impl_ViewCache_delta_from(a0_95: FeLocal_fe_ViewCache_da6e2ccc_24_, a1_67: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, fe_trapped_68: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_13_ {
    let _e4 = center_value(a0_95.camera);
    let _e6 = (*a1_67).camera;
    let _e7 = center_value(_e6);
    let _e8 = center_delta(_e4, _e7, fe_trapped_68);
    return _e8;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_13_ {
    return FeLocal_fe_Complex_f32_87ec9249_13_();
}

fn for_view(a0_96: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>, a1_68: FeLocal_fe_ViewCache_da6e2ccc_24_, a2_29: FeLocal_fe_ViewCache_da6e2ccc_24_, fe_trapped_69: ptr<function, bool>) -> FeLocal_fe_HistoryOffsets_646326b2_27_ {
    var local_245: FeLocal_fe_HistoryOffsets_646326b2_27_;
    var local_246: bool = false;
    var local_247: FeLocal_fe_Complex_f32_87ec9249_13_ = FeLocal_fe_Complex_f32_87ec9249_13_();
    var local_248: FeLocal_fe_HistoryOffsets_646326b2_27_;
    var local_249: bool = false;
    var local_250: FeLocal_fe_Complex_f32_87ec9249_13_ = FeLocal_fe_Complex_f32_87ec9249_13_();

    if (a1_68.completed == 1u) {
        let _e9 = impl_ViewCache_delta_from(a1_68, a0_96, fe_trapped_69);
        local_247 = _e9;
    } else {
        let _e10 = default_ge58b();
        local_247 = _e10;
    }
    let _e16 = local_247;
    if (a2_29.completed == 1u) {
        let _e20 = impl_ViewCache_delta_from(a2_29, a0_96, fe_trapped_69);
        local_250 = _e20;
    } else {
        let _e21 = default_ge58b();
        local_250 = _e21;
    }
    let _e25 = local_250;
    return FeLocal_fe_HistoryOffsets_646326b2_27_(_e16, _e25);
}

fn from_quad(a0_97: f32, a1_69: f32, a2_30: f32, a3_11: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_8_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_8_(a0_97, FeLocal_fe_More_More_Last_60a5ba63_7_(a1_69, FeLocal_fe_More_Last_1ac585f5_6_(a2_30, FeLocal_fe_Last_eb970eb0_5_(a3_11))));
}

fn decode(a0_98: FeLocal_fe_PackedReference_e11ca04a_23_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_ {
    let _e9 = from_quad(bitcast<f32>(a0_98.re_w0_bits), bitcast<f32>(a0_98.re_w1_bits), bitcast<f32>(a0_98.re_w2_bits), bitcast<f32>(a0_98.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_98.im_w0_bits), bitcast<f32>(a0_98.im_w1_bits), bitcast<f32>(a0_98.im_w2_bits), bitcast<f32>(a0_98.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_(_e9, _e18);
}

fn with_center_offset(a0_99: FeLocal_fe_PackedReference_e11ca04a_23_, a1_70: FeLocal_fe_Complex_f32_87ec9249_13_) -> FeLocal_fe_PackedReference_e11ca04a_23_ {
    var fixed_local_3_1: FeLocal_fe_PackedReference_e11ca04a_23_ = FeLocal_fe_PackedReference_e11ca04a_23_();

    fixed_local_3_1 = a0_99;
    fixed_local_3_1.re_w2_bits = bitcast<u32>(a1_70.re);
    fixed_local_3_1.re_w3_bits = bitcast<u32>(a1_70.im);
    let _e10 = fixed_local_3_1;
    return _e10;
}

fn highest_bit_gc7cf(a0_100: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_70: ptr<function, bool>) -> u32 {
    var local_251: u32 = u32();
    var local_252: u32 = u32();
    var loop_result_26: u32;
    var loop_did_return_26: bool = false;
    var loop_header_carry_4_2: bool;
    var local_253: u32;
    var local_254: bool = false;
    var local_255: u32 = u32();

    let _e2 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_70);
    local_251 = 0u;
    local_252 = _e2;
    loop {
        let _e10 = local_251;
        let _e12 = local_252;
        let _e14 = (0u < _e12);
        loop_header_carry_4_2 = _e14;
        if _e14 {
            if (_e10 == 0u) {
                let _e18 = (_e12 - 1u);
                let _e21 = (*a0_100).digits[_e18];
                local_251 = _e21;
                local_252 = _e18;
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    let _e26 = local_251;
    let _e28 = local_252;
    if (_e26 == 0u) {
        local_255 = 4294967295u;
    } else {
        let _e33 = precision_lib_fixed_limb_highest_bit_5b70_(_e26);
        precision_lib_array_fixed_signed_word_0309_(_e28, fe_trapped_70);
        let _e38 = (_e28 * 13u);
        let _e41 = ((_e28 & 2147483648u) != 0u);
        let _e42 = ((13u & 2147483648u) != 0u);
        let _e46 = select(_e28, (0u - _e28), _e41);
        let _e50 = (_e46 != 0u);
        if (_e50 && (select(13u, (0u - 13u), _e42) > (select((2147483648u - 1u), 2147483648u, (_e41 != _e42)) / select(1u, _e46, _e50)))) {
            (*fe_trapped_70) = true;
        } else {
            let _e58 = (_e38 + _e33);
            if ((((_e38 ^ _e58) & (_e33 ^ _e58)) & 2147483648u) != 0u) {
                (*fe_trapped_70) = true;
            } else {
                local_255 = _e58;
            }
        }
    }
    let _e69 = local_255;
    return _e69;
}

fn word_from_gc7cf(a0_101: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, a1_71: u32, fe_trapped_71: ptr<function, bool>) -> u32 {
    var local_256: u32;
    var local_257: bool = false;
    var local_258: u32;
    var local_259: bool = false;
    var local_260: u32 = u32();
    var local_261: u32 = u32();
    var local_262: u32 = u32();
    var loop_result_27: u32;
    var loop_did_return_27: bool = false;
    var loop_header_carry_34_1: bool;

    if (bitcast<i32>(a1_71) < bitcast<i32>(0u)) {
        local_256 = 0u;
        local_257 = true;
    }
    let _e77 = local_257;
    if _e77 {
    } else {
        precision_lib_array_fixed_unsigned_word_3f05_(a1_71, fe_trapped_71);
        let _e13 = precision_lib_array_fixed_impl_ArrayFixed_c11e_width_gc7cf_3185_(fe_trapped_71);
        let _e15 = (a1_71 / 13u);
        if ((_e15 < _e13) == false) {
            local_258 = 0u;
            local_259 = true;
        }
        let _e72 = local_259;
        if _e72 {
        } else {
            let _e24 = (a1_71 % 13u);
            let _e27 = (*a0_101).digits[_e15];
            local_260 = (13u - _e24);
            local_261 = (_e27 >> _e24);
            local_262 = (_e15 + 1u);
            loop {
                let _e41 = local_260;
                let _e43 = local_261;
                let _e45 = local_262;
                let _e46 = (_e45 < _e13);
                loop_header_carry_34_1 = _e46;
                if _e46 {
                    if (_e41 < 32u) {
                        let _e51 = (*a0_101).digits[_e45];
                        local_260 = (_e41 + 13u);
                        local_261 = (_e43 | (_e51 << _e41));
                        local_262 = (_e45 + 1u);
                        continue;
                    } else {
                        loop_result_27 = _e43;
                        loop_did_return_27 = true;
                        break;
                    }
                } else {
                    loop_result_27 = _e43;
                    loop_did_return_27 = true;
                    break;
                }
            }
            let _e69 = loop_result_27;
            local_258 = _e69;
        }
        let _e74 = local_258;
        local_256 = _e74;
    }
    let _e79 = local_256;
    return _e79;
}

fn project_binary32_quad(a0_102: u32, a1_72: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_72: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    var local_263: u32 = u32();
    var local_264: u32 = u32();
    var local_265: u32 = u32();
    var local_266: u32 = u32();
    var local_267: u32 = u32();
    var local_268: u32 = u32();
    var loop_result_28: FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_;
    var loop_did_return_28: bool = false;
    var loop_header_carry_8_4: bool;
    var local_269: u32 = u32();
    var local_270: u32 = u32();
    var local_271: u32 = u32();
    var local_272: u32 = u32();
    var local_273: u32 = u32();
    var local_274: u32 = u32();
    var local_275: u32 = u32();

    let _e3 = highest_bit_gc7cf(a1_72, fe_trapped_72);
    let _e4 = precision_lib_array_fixed_impl_trait_ArrayFixed_c12a_fractional_bits_gc7cf_6cd8_(a1_72, fe_trapped_72);
    local_263 = 0u;
    local_264 = 0u;
    local_265 = 0u;
    local_266 = 0u;
    local_267 = 0u;
    local_268 = 0u;
    loop {
        let _e25 = local_263;
        let _e27 = local_264;
        let _e29 = local_265;
        let _e31 = local_266;
        let _e33 = local_267;
        let _e35 = local_268;
        let _e37 = (_e35 < 4u);
        loop_header_carry_8_4 = _e37;
        if _e37 {
            let _e40 = (_e3 - _e33);
            if ((((_e3 ^ _e40) & (_e3 ^ _e33)) & 2147483648u) != 0u) {
            } else {
                if (bitcast<i32>(_e40) < bitcast<i32>(0u)) {
                    local_269 = 0u;
                } else {
                    let _e53 = (_e40 - 23u);
                    if (bitcast<i32>(_e53) < bitcast<i32>(0u)) {
                        let _e61 = word_from_gc7cf(a1_72, 0u, fe_trapped_72);
                        local_270 = ((_e61 << (0u - _e53)) & 16777215u);
                    } else {
                        let _e65 = word_from_gc7cf(a1_72, _e53, fe_trapped_72);
                        local_270 = (_e65 & 16777215u);
                    }
                    let _e71 = local_270;
                    if (_e71 == 0u) {
                        local_269 = 0u;
                    } else {
                        let _e76 = (_e71 >> 13u);
                        if (_e76 == 0u) {
                            let _e79 = precision_lib_fixed_limb_highest_bit_5b70_(_e71);
                            local_271 = _e79;
                        } else {
                            let _e80 = precision_lib_fixed_limb_highest_bit_5b70_(_e76);
                            local_271 = (13u + _e80);
                        }
                        let _e86 = local_271;
                        let _e92 = (_e53 + _e86);
                        if ((((_e53 ^ _e92) & (_e86 ^ _e92)) & 2147483648u) != 0u) {
                            (*fe_trapped_72) = true;
                            break;
                        } else {
                            let _e101 = (_e92 - _e4);
                            if ((((_e92 ^ _e101) & (_e92 ^ _e4)) & 2147483648u) != 0u) {
                                (*fe_trapped_72) = true;
                                break;
                            } else {
                                let _e111 = (_e101 + 127u);
                                if ((((_e101 ^ _e111) & (127u ^ _e111)) & 2147483648u) != 0u) {
                                    (*fe_trapped_72) = true;
                                    break;
                                } else {
                                    local_269 = (((a0_102 << 31u) | (_e111 << 23u)) | ((_e71 << (23u - _e86)) & 8388607u));
                                }
                            }
                        }
                    }
                }
                let _e136 = local_269;
                switch _e35 {
                    case 0u: {
                        local_272 = _e25;
                        local_273 = _e27;
                        local_274 = _e29;
                        local_275 = _e136;
                    }
                    case 1u: {
                        local_272 = _e25;
                        local_273 = _e27;
                        local_274 = _e136;
                        local_275 = _e31;
                    }
                    case 2u: {
                        local_272 = _e25;
                        local_273 = _e136;
                        local_274 = _e29;
                        local_275 = _e31;
                    }
                    default: {
                        local_272 = _e136;
                        local_273 = _e27;
                        local_274 = _e29;
                        local_275 = _e31;
                    }
                }
                let _e154 = local_272;
                let _e156 = local_273;
                let _e158 = local_274;
                let _e160 = local_275;
                let _e166 = (_e33 + 24u);
                if ((((_e33 ^ _e166) & (24u ^ _e166)) & 2147483648u) != 0u) {
                } else {
                    local_263 = _e154;
                    local_264 = _e156;
                    local_265 = _e158;
                    local_266 = _e160;
                    local_267 = _e166;
                    local_268 = (_e35 + 1u);
                    continue;
                }
            }
            (*fe_trapped_72) = true;
            break;
        } else {
            loop_result_28 = FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_(_e31, _e29, _e27, _e25);
            loop_did_return_28 = true;
            break;
        }
    }
    let _e185 = loop_result_28;
    return _e185;
}

fn to_quad_bits_gc7cf(a0_103: ptr<function, FeLocal_fe_ArrayFixed_8_78307dfe_1_>, fe_trapped_73: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    let _e2 = sign_gc7cf(a0_103);
    let _e3 = project_binary32_quad(_e2, a0_103, fe_trapped_73);
    return _e3;
}

fn impl_ReferenceReal_to_quad_bits(a0_104: ptr<function, FeLocal_fe_ReferenceReal_aede3f8e_3_>, fe_trapped_74: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_29_ {
    var fixed_local_5_3: FeLocal_fe_ArrayFixed_8_78307dfe_1_ = FeLocal_fe_ArrayFixed_8_78307dfe_1_();

    let _e3 = (*a0_104).value;
    fixed_local_5_3 = _e3;
    let _e6 = to_quad_bits_gc7cf((&fixed_local_5_3), fe_trapped_74);
    return _e6;
}

fn impl_PackedReference_from_words(a0_105: u32, a1_73: u32, a2_31: u32, a3_12: u32, a4_7: u32, a5_: u32, a6_: u32, a7_: u32) -> FeLocal_fe_PackedReference_e11ca04a_23_ {
    return FeLocal_fe_PackedReference_e11ca04a_23_(a0_105, a1_73, a2_31, a3_12, a4_7, a5_, a6_, a7_);
}

fn from_fixed(a0_106: ptr<function, FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_>, fe_trapped_75: ptr<function, bool>) -> FeLocal_fe_PackedReference_e11ca04a_23_ {
    var fixed_local_5_4: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();

    let _e3 = (*a0_106).re;
    fixed_local_5_4 = _e3;
    let _e6 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_4), fe_trapped_75);
    let _e12 = (*a0_106).im;
    fixed_local_5_4 = _e12;
    let _e13 = impl_ReferenceReal_to_quad_bits((&fixed_local_5_4), fe_trapped_75);
    let _e18 = impl_PackedReference_from_words(_e6.f0_, _e6.f1_, _e6.f2_, _e6.f3_, _e13.f0_, _e13.f1_, _e13.f2_, _e13.f3_);
    return _e18;
}

fn from_metadata(a0_107: u32, a1_74: u32) -> FeLocal_fe_PackedReference_e11ca04a_23_ {
    var fixed_local_3_2: FeLocal_fe_PackedReference_e11ca04a_23_ = FeLocal_fe_PackedReference_e11ca04a_23_();

    let _e2 = impl_trait_PackedReference_default();
    fixed_local_3_2 = _e2;
    fixed_local_3_2.re_w0_bits = a0_107;
    fixed_local_3_2.re_w1_bits = a1_74;
    let _e7 = fixed_local_3_2;
    return _e7;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: bool = bool();
    var fixed_local_630_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var fixed_local_740_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
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
    var local_16: FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_ = FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_();
    var fixed_local_1227_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var fixed_local_1287_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_();
    var fixed_local_1289_: FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_ = FeLocal_fe_Complex_ReferenceReal_205eeb8f_4_();
    var local_17: bool = bool();
    var local_18: u32 = u32();
    var local_19: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_1323_: bool;
    var local_20: u32 = u32();
    var local_21: bool = bool();
    var local_22: FeLocal_fe_ReferenceControl_7d077120_2_ = FeLocal_fe_ReferenceControl_7d077120_2_();
    var fixed_local_1486_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_1490_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_1611_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var fixed_local_1615_: FeLocal_fe_ReferenceReal_aede3f8e_3_ = FeLocal_fe_ReferenceReal_aede3f8e_3_();
    var local_23: u32;
    var local_24: bool = false;
    var local_25: FeLocal_fe_ViewCache_da6e2ccc_24_ = FeLocal_fe_ViewCache_da6e2ccc_24_();
    var fixed_local_1025_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var fixed_local_1097_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var fixed_local_1169_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var fixed_local_1913_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var fixed_local_2025_: FeLocal_fe_PreviewCache_6792a3e2_28_ = FeLocal_fe_PreviewCache_6792a3e2_28_();
    var local_26: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_2096_: bool;
    var local_27: bool = bool();
    var local_28: bool = bool();
    var local_29: u32;
    var local_30: bool = false;
    var fixed_local_2361_: FeLocal_fe_PreviewCache_6792a3e2_28_ = FeLocal_fe_PreviewCache_6792a3e2_28_();

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
    let _e166 = FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e9, FeLocal_fe_More_More_Last_60a5ba63_7_(_e11, FeLocal_fe_More_Last_1ac585f5_6_(_e13, FeLocal_fe_Last_eb970eb0_5_(_e15))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e17, FeLocal_fe_More_More_Last_60a5ba63_7_(_e19, FeLocal_fe_More_Last_1ac585f5_6_(_e21, FeLocal_fe_Last_eb970eb0_5_(_e23)))))), _e25, _e27, FeLocal_fe_Complex_f32_87ec9249_13_(_e29, _e31));
    let _e199 = FeLocal_fe_MandelbrotViewState_c524184f_22_(_e166, _e33, _e35, _e37, _e39, _e41, FeLocal_fe_GestureSession_6b679731_19_(FeLocal_fe_Contacts_2_ac13bf77_17_(array<FeLocal_fe_Contact_2b5c3d26_16_, 2>(FeLocal_fe_Contact_2b5c3d26_16_((_e43 != 0u), _e47, FeLocal_fe_Vec2_f32_2772165c_15_(_e49, _e51)), FeLocal_fe_Contact_2b5c3d26_16_((_e53 != 0u), _e57, FeLocal_fe_Vec2_f32_2772165c_15_(_e59, _e61)))), FeLocal_fe_Viewport_91e53b90_18_(FeLocal_fe_Vec2_f32_2772165c_15_(_e63, _e65), FeLocal_fe_Vec2_f32_2772165c_15_(_e67, _e69)), FeLocal_fe_Contacts_2_ac13bf77_17_(array<FeLocal_fe_Contact_2b5c3d26_16_, 2>(FeLocal_fe_Contact_2b5c3d26_16_((_e71 != 0u), _e75, FeLocal_fe_Vec2_f32_2772165c_15_(_e77, _e79)), FeLocal_fe_Contact_2b5c3d26_16_((_e81 != 0u), _e85, FeLocal_fe_Vec2_f32_2772165c_15_(_e87, _e89)))), FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e91, FeLocal_fe_More_More_Last_60a5ba63_7_(_e93, FeLocal_fe_More_Last_1ac585f5_6_(_e95, FeLocal_fe_Last_eb970eb0_5_(_e97))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e99, FeLocal_fe_More_More_Last_60a5ba63_7_(_e101, FeLocal_fe_More_Last_1ac585f5_6_(_e103, FeLocal_fe_Last_eb970eb0_5_(_e105)))))), _e107, _e109, FeLocal_fe_Complex_f32_87ec9249_13_(_e111, _e113))), FeLocal_fe_BackingRequest_2bcae9f8_20_((_e115 != 0u), _e119), FeLocal_fe_CameraTrace_7ca62f00_21_(_e123, array<u32, 14>(_e125, _e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151)));
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
    let _e413 = FeLocal_fe_ReferenceControl_7d077120_2_(_e400, _e402, _e404, _e406, _e408, _e410, _e412);
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
    let _e448 = impl_ReferenceAnchor_delta_from(FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e417, FeLocal_fe_More_More_Last_60a5ba63_7_(_e419, FeLocal_fe_More_Last_1ac585f5_6_(_e421, FeLocal_fe_Last_eb970eb0_5_(_e423)))), FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e425, FeLocal_fe_More_More_Last_60a5ba63_7_(_e427, FeLocal_fe_More_Last_1ac585f5_6_(_e429, FeLocal_fe_Last_eb970eb0_5_(_e431))))), _e433, _e435), (&fixed_local_740_), (&fe_trapped));
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
                        local_16 = FeLocal_fe_ReferenceAnchor_f9cfd0aa_10_(FeLocal_fe_Complex_More_More_More_Last_7724c22a_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e511, FeLocal_fe_More_More_Last_60a5ba63_7_(_e513, FeLocal_fe_More_Last_1ac585f5_6_(_e515, FeLocal_fe_Last_eb970eb0_5_(_e517)))), FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e519, FeLocal_fe_More_More_Last_60a5ba63_7_(_e521, FeLocal_fe_More_Last_1ac585f5_6_(_e523, FeLocal_fe_Last_eb970eb0_5_(_e525))))), _e527, _e529);
                    }
                    let _e610 = local_16;
                    let _e611 = default_gfdd1_((&fe_trapped));
                    fixed_local_1287_ = _e611;
                    assign_reference_center((&fixed_local_1287_), _e610, (&fe_trapped));
                    let _e614 = default_gfdd1_((&fe_trapped));
                    fixed_local_1289_ = _e614;
                    if (_e404 == 0u) {
                    } else {
                        load_reference_checkpoint_into((&fixed_local_1289_), _e413, (&fe_trapped));
                    }
                    if (_e404 == 0u) {
                        local_17 = false;
                        local_18 = 0u;
                        local_19 = 0u;
                    } else {
                        local_17 = false;
                        local_18 = _e406;
                        local_19 = 0u;
                    }
                    loop {
                        let _e637 = local_17;
                        let _e639 = local_18;
                        let _e641 = local_19;
                        let _e643 = (_e641 < 64u);
                        loop_header_carry_1323_ = _e643;
                        if _e643 {
                            if (((_e639 < _e610.limit) == false) | _e637) {
                                break;
                            } else {
                                let _e650 = reference_step_in_place((&fixed_local_1289_), (&fixed_local_1287_), (&fe_trapped));
                                if _e650 {
                                    local_20 = _e639;
                                } else {
                                    let _e652 = (_e500 + _e639);
                                    if (_e500 > (4294967295u - _e639)) {
                                        fe_trapped = true;
                                        break;
                                    } else {
                                        if (_e652 > (4294967295u - 1u)) {
                                            fe_trapped = true;
                                            break;
                                        } else {
                                            let _e662 = from_fixed((&fixed_local_1289_), (&fe_trapped));
                                            orbit[i32((_e652 + 1u))].re_w0_bits = _e662.re_w0_bits;
                                            orbit[i32((_e652 + 1u))].re_w1_bits = _e662.re_w1_bits;
                                            orbit[i32((_e652 + 1u))].re_w2_bits = _e662.re_w2_bits;
                                            orbit[i32((_e652 + 1u))].re_w3_bits = _e662.re_w3_bits;
                                            orbit[i32((_e652 + 1u))].im_w0_bits = _e662.im_w0_bits;
                                            orbit[i32((_e652 + 1u))].im_w1_bits = _e662.im_w1_bits;
                                            orbit[i32((_e652 + 1u))].im_w2_bits = _e662.im_w2_bits;
                                            orbit[i32((_e652 + 1u))].im_w3_bits = _e662.im_w3_bits;
                                            local_20 = (_e639 + 1u);
                                        }
                                    }
                                }
                                let _e686 = local_20;
                                local_17 = _e650;
                                local_18 = _e686;
                                local_19 = (_e641 + 1u);
                                continue;
                            }
                        } else {
                            break;
                        }
                    }
                    let _e694 = local_17;
                    let _e696 = local_18;
                    if (_e500 > (4294967295u - 8193u)) {
                        fe_trapped = true;
                    } else {
                        let _e703 = from_fixed((&fixed_local_1287_), (&fe_trapped));
                        orbit[i32((_e500 + 8193u))].re_w0_bits = _e703.re_w0_bits;
                        orbit[i32((_e500 + 8193u))].re_w1_bits = _e703.re_w1_bits;
                        orbit[i32((_e500 + 8193u))].re_w2_bits = _e703.re_w2_bits;
                        orbit[i32((_e500 + 8193u))].re_w3_bits = _e703.re_w3_bits;
                        orbit[i32((_e500 + 8193u))].im_w0_bits = _e703.im_w0_bits;
                        orbit[i32((_e500 + 8193u))].im_w1_bits = _e703.im_w1_bits;
                        orbit[i32((_e500 + 8193u))].im_w2_bits = _e703.im_w2_bits;
                        orbit[i32((_e500 + 8193u))].im_w3_bits = _e703.im_w3_bits;
                        if (_e500 > (4294967295u - 8194u)) {
                            fe_trapped = true;
                        } else {
                            if (_e696 > (4294967295u - 1u)) {
                                fe_trapped = true;
                            } else {
                                let _e736 = from_metadata((_e696 + 1u), _e610.limit);
                                orbit[i32((_e500 + 8194u))].re_w0_bits = _e736.re_w0_bits;
                                orbit[i32((_e500 + 8194u))].re_w1_bits = _e736.re_w1_bits;
                                orbit[i32((_e500 + 8194u))].re_w2_bits = _e736.re_w2_bits;
                                orbit[i32((_e500 + 8194u))].re_w3_bits = _e736.re_w3_bits;
                                orbit[i32((_e500 + 8194u))].im_w0_bits = _e736.im_w0_bits;
                                orbit[i32((_e500 + 8194u))].im_w1_bits = _e736.im_w1_bits;
                                orbit[i32((_e500 + 8194u))].im_w2_bits = _e736.im_w2_bits;
                                orbit[i32((_e500 + 8194u))].im_w3_bits = _e736.im_w3_bits;
                                if _e694 {
                                    local_21 = true;
                                } else {
                                    if (_e696 < _e610.limit) {
                                    } else {
                                        local_21 = true;
                                    }
                                }
                                let _e763 = local_21;
                                if _e763 {
                                    let _e765 = fixed_local_1289_.re;
                                    fixed_local_1486_ = _e765;
                                    let _e768 = impl_ReferenceReal_sign((&fixed_local_1486_));
                                    let _e770 = fixed_local_1289_.im;
                                    fixed_local_1490_ = _e770;
                                    let _e773 = impl_ReferenceReal_sign((&fixed_local_1490_));
                                    let _e774 = publish(_e493, _e696, _e768, _e773, _e33);
                                    local_22 = _e774;
                                } else {
                                    store_reference_checkpoint((&fixed_local_1289_), (&fe_trapped));
                                    let _e776 = fixed_local_1289_.re;
                                    fixed_local_1611_ = _e776;
                                    let _e779 = impl_ReferenceReal_sign((&fixed_local_1611_));
                                    let _e781 = fixed_local_1289_.im;
                                    fixed_local_1615_ = _e781;
                                    let _e784 = impl_ReferenceReal_sign((&fixed_local_1615_));
                                    let _e785 = advance_pending(_e413, _e696, _e779, _e784);
                                    local_22 = _e785;
                                }
                                let _e789 = local_22;
                                reference[i32(0u)].active_ = _e789.active_;
                                reference[i32(0u)].active_valid = _e789.active_valid;
                                reference[i32(0u)].pending = _e789.pending;
                                reference[i32(0u)].index = _e789.index;
                                reference[i32(0u)].zx_s = _e789.zx_s;
                                reference[i32(0u)].zy_s = _e789.zy_s;
                                reference[i32(0u)].ready_at = _e789.ready_at;
                                local_14 = _e763;
                            }
                        }
                    }
                }
            }
        }
    }
    let _e811 = local_14;
    let _e816 = reference[i32(0u)].active_;
    let _e818 = reference[i32(0u)].active_valid;
    let _e820 = reference[i32(0u)].pending;
    let _e822 = reference[i32(0u)].index;
    let _e824 = reference[i32(0u)].zx_s;
    let _e826 = reference[i32(0u)].zy_s;
    let _e828 = reference[i32(0u)].ready_at;
    let _e829 = FeLocal_fe_ReferenceControl_7d077120_2_(_e816, _e818, _e820, _e822, _e824, _e826, _e828);
    fixed_local_1025_ = _e199;
    let _e832 = preview_bank(_e829, (&fixed_local_1025_), (&fe_trapped));
    let _e836 = anchor[i32(_e832)].generation;
    fixed_local_1097_ = _e199;
    let _e839 = sync_with_view(FeLocal_fe_PreviewCache_6792a3e2_28_(FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e326, FeLocal_fe_More_More_Last_60a5ba63_7_(_e328, FeLocal_fe_More_Last_1ac585f5_6_(_e330, FeLocal_fe_Last_eb970eb0_5_(_e332))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e334, FeLocal_fe_More_More_Last_60a5ba63_7_(_e336, FeLocal_fe_More_Last_1ac585f5_6_(_e338, FeLocal_fe_Last_eb970eb0_5_(_e340)))))), _e342, _e344, FeLocal_fe_Complex_f32_87ec9249_13_(_e346, _e348)), _e350, _e352, _e354, _e356, _e358, _e360, _e362, _e364, FeLocal_fe_HistoryOffsets_646326b2_27_(FeLocal_fe_Complex_f32_87ec9249_13_(_e366, _e368), FeLocal_fe_Complex_f32_87ec9249_13_(_e370, _e372)), _e374), (&fixed_local_1097_), _e829, _e836, _e395, (&fe_trapped));
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e839.camera.center.re.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e839.camera.center.re.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e839.camera.center.re.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e839.camera.center.re.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e839.camera.center.im.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e839.camera.center.im.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e839.camera.center.im.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e839.camera.center.im.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_zoom = _e839.camera.zoom;
    preview_cache[i32(0u)].camera_u002e_res = _e839.camera.res;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_re = _e839.camera.orientation.re;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_im = _e839.camera.orientation.im;
    preview_cache[i32(0u)].reference_generation = _e839.reference_generation;
    preview_cache[i32(0u)].reference_bank = _e839.reference_bank;
    preview_cache[i32(0u)].prefix_only = _e839.prefix_only;
    preview_cache[i32(0u)].step_target = _e839.step_target;
    preview_cache[i32(0u)].completed_steps = _e839.completed_steps;
    preview_cache[i32(0u)].budget = _e839.budget;
    preview_cache[i32(0u)].epoch = _e839.epoch;
    preview_cache[i32(0u)].completed = _e839.completed;
    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e839.history.full.re;
    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e839.history.full.im;
    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e839.history.initial.re;
    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e839.history.initial.im;
    preview_cache[i32(0u)].trace_clock = _e839.trace_clock;
    fixed_local_1169_ = _e199;
    let _e911 = sync_for_frame(FeLocal_fe_ViewCache_da6e2ccc_24_(FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e204, FeLocal_fe_More_More_Last_60a5ba63_7_(_e206, FeLocal_fe_More_Last_1ac585f5_6_(_e208, FeLocal_fe_Last_eb970eb0_5_(_e210))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e212, FeLocal_fe_More_More_Last_60a5ba63_7_(_e214, FeLocal_fe_More_Last_1ac585f5_6_(_e216, FeLocal_fe_Last_eb970eb0_5_(_e218)))))), _e220, _e222, FeLocal_fe_Complex_f32_87ec9249_13_(_e224, _e226)), _e228, _e230, _e232, _e234, _e236, _e238, _e240, _e242, _e244, _e246), (&fixed_local_1169_), _e829, _e839, FeLocal_fe_ViewCache_da6e2ccc_24_(FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e265, FeLocal_fe_More_More_Last_60a5ba63_7_(_e267, FeLocal_fe_More_Last_1ac585f5_6_(_e269, FeLocal_fe_Last_eb970eb0_5_(_e271))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e273, FeLocal_fe_More_More_Last_60a5ba63_7_(_e275, FeLocal_fe_More_Last_1ac585f5_6_(_e277, FeLocal_fe_Last_eb970eb0_5_(_e279)))))), _e281, _e283, FeLocal_fe_Complex_f32_87ec9249_13_(_e285, _e287)), _e289, _e291, _e293, _e295, _e297, _e299, _e301, _e303, _e305, _e307), (&fe_trapped));
    if _e811 {
        let _e912 = invalidate_for_new_reference(_e911, (&fe_trapped));
        local_25 = _e912;
    } else {
        local_25 = _e911;
    }
    let _e916 = local_25;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e916.camera.center.re.value.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e916.camera.center.re.value.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e916.camera.center.re.value.tail.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e916.camera.center.re.value.tail.tail.tail.value;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e916.camera.center.im.value.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e916.camera.center.im.value.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e916.camera.center.im.value.tail.tail.lead;
    cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e916.camera.center.im.value.tail.tail.tail.value;
    cache[i32(0u)].camera_u002e_zoom = _e916.camera.zoom;
    cache[i32(0u)].camera_u002e_res = _e916.camera.res;
    cache[i32(0u)].camera_u002e_orientation_u002e_re = _e916.camera.orientation.re;
    cache[i32(0u)].camera_u002e_orientation_u002e_im = _e916.camera.orientation.im;
    cache[i32(0u)].cursor = _e916.cursor;
    cache[i32(0u)].aa = _e916.aa;
    cache[i32(0u)].budget = _e916.budget;
    cache[i32(0u)].radius = _e916.radius;
    cache[i32(0u)].preview_dirty = _e916.preview_dirty;
    cache[i32(0u)].blur_dirty = _e916.blur_dirty;
    cache[i32(0u)].epoch = _e916.epoch;
    cache[i32(0u)].completed = _e916.completed;
    cache[i32(0u)].steps = _e916.steps;
    cache[i32(0u)].frame_clock = _e916.frame_clock;
    let _e981 = reference[i32(0u)].active_;
    let _e983 = reference[i32(0u)].active_valid;
    let _e985 = reference[i32(0u)].pending;
    let _e990 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e992 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e994 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e996 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e998 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1000 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1002 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1004 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1006 = cache[i32(1u)].camera_u002e_zoom;
    let _e1008 = cache[i32(1u)].camera_u002e_res;
    let _e1010 = cache[i32(1u)].camera_u002e_orientation_u002e_re;
    let _e1012 = cache[i32(1u)].camera_u002e_orientation_u002e_im;
    let _e1014 = cache[i32(1u)].cursor;
    let _e1016 = cache[i32(1u)].aa;
    let _e1018 = cache[i32(1u)].budget;
    let _e1020 = cache[i32(1u)].radius;
    let _e1022 = cache[i32(1u)].preview_dirty;
    let _e1024 = cache[i32(1u)].blur_dirty;
    let _e1026 = cache[i32(1u)].epoch;
    let _e1028 = cache[i32(1u)].completed;
    let _e1030 = cache[i32(1u)].steps;
    let _e1032 = cache[i32(1u)].frame_clock;
    let _e1051 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e1053 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e1055 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1057 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1059 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1061 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1063 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1065 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1067 = cache[i32(2u)].camera_u002e_zoom;
    let _e1069 = cache[i32(2u)].camera_u002e_res;
    let _e1071 = cache[i32(2u)].camera_u002e_orientation_u002e_re;
    let _e1073 = cache[i32(2u)].camera_u002e_orientation_u002e_im;
    let _e1075 = cache[i32(2u)].cursor;
    let _e1077 = cache[i32(2u)].aa;
    let _e1079 = cache[i32(2u)].budget;
    let _e1081 = cache[i32(2u)].radius;
    let _e1083 = cache[i32(2u)].preview_dirty;
    let _e1085 = cache[i32(2u)].blur_dirty;
    let _e1087 = cache[i32(2u)].epoch;
    let _e1089 = cache[i32(2u)].completed;
    let _e1091 = cache[i32(2u)].steps;
    let _e1093 = cache[i32(2u)].frame_clock;
    fixed_local_1913_ = _e199;
    let _e1110 = for_view((&fixed_local_1913_), FeLocal_fe_ViewCache_da6e2ccc_24_(FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e990, FeLocal_fe_More_More_Last_60a5ba63_7_(_e992, FeLocal_fe_More_Last_1ac585f5_6_(_e994, FeLocal_fe_Last_eb970eb0_5_(_e996))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e998, FeLocal_fe_More_More_Last_60a5ba63_7_(_e1000, FeLocal_fe_More_Last_1ac585f5_6_(_e1002, FeLocal_fe_Last_eb970eb0_5_(_e1004)))))), _e1006, _e1008, FeLocal_fe_Complex_f32_87ec9249_13_(_e1010, _e1012)), _e1014, _e1016, _e1018, _e1020, _e1022, _e1024, _e1026, _e1028, _e1030, _e1032), FeLocal_fe_ViewCache_da6e2ccc_24_(FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e1051, FeLocal_fe_More_More_Last_60a5ba63_7_(_e1053, FeLocal_fe_More_Last_1ac585f5_6_(_e1055, FeLocal_fe_Last_eb970eb0_5_(_e1057))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e1059, FeLocal_fe_More_More_Last_60a5ba63_7_(_e1061, FeLocal_fe_More_Last_1ac585f5_6_(_e1063, FeLocal_fe_Last_eb970eb0_5_(_e1065)))))), _e1067, _e1069, FeLocal_fe_Complex_f32_87ec9249_13_(_e1071, _e1073)), _e1075, _e1077, _e1079, _e1081, _e1083, _e1085, _e1087, _e1089, _e1091, _e1093), (&fe_trapped));
    let _e1115 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e1117 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e1119 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1121 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1123 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e1125 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e1127 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e1129 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e1131 = preview_cache[i32(0u)].camera_u002e_zoom;
    let _e1133 = preview_cache[i32(0u)].camera_u002e_res;
    let _e1135 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_re;
    let _e1137 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_im;
    let _e1139 = preview_cache[i32(0u)].reference_generation;
    let _e1141 = preview_cache[i32(0u)].reference_bank;
    let _e1143 = preview_cache[i32(0u)].prefix_only;
    let _e1145 = preview_cache[i32(0u)].step_target;
    let _e1147 = preview_cache[i32(0u)].completed_steps;
    let _e1149 = preview_cache[i32(0u)].budget;
    let _e1151 = preview_cache[i32(0u)].epoch;
    let _e1153 = preview_cache[i32(0u)].completed;
    let _e1155 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
    let _e1157 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
    let _e1159 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
    let _e1161 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
    let _e1163 = preview_cache[i32(0u)].trace_clock;
    fixed_local_2025_ = FeLocal_fe_PreviewCache_6792a3e2_28_(FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e1115, FeLocal_fe_More_More_Last_60a5ba63_7_(_e1117, FeLocal_fe_More_Last_1ac585f5_6_(_e1119, FeLocal_fe_Last_eb970eb0_5_(_e1121))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e1123, FeLocal_fe_More_More_Last_60a5ba63_7_(_e1125, FeLocal_fe_More_Last_1ac585f5_6_(_e1127, FeLocal_fe_Last_eb970eb0_5_(_e1129)))))), _e1131, _e1133, FeLocal_fe_Complex_f32_87ec9249_13_(_e1135, _e1137)), _e1139, _e1141, _e1143, _e1145, _e1147, _e1149, _e1151, _e1153, FeLocal_fe_HistoryOffsets_646326b2_27_(FeLocal_fe_Complex_f32_87ec9249_13_(_e1155, _e1157), FeLocal_fe_Complex_f32_87ec9249_13_(_e1159, _e1161)), _e1163);
    fixed_local_2025_.history = _e1110;
    let _e1184 = fixed_local_2025_;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e1184.camera.center.re.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e1184.camera.center.re.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1184.camera.center.re.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1184.camera.center.re.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e1184.camera.center.im.value.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e1184.camera.center.im.value.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1184.camera.center.im.value.tail.tail.lead;
    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1184.camera.center.im.value.tail.tail.tail.value;
    preview_cache[i32(0u)].camera_u002e_zoom = _e1184.camera.zoom;
    preview_cache[i32(0u)].camera_u002e_res = _e1184.camera.res;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_re = _e1184.camera.orientation.re;
    preview_cache[i32(0u)].camera_u002e_orientation_u002e_im = _e1184.camera.orientation.im;
    preview_cache[i32(0u)].reference_generation = _e1184.reference_generation;
    preview_cache[i32(0u)].reference_bank = _e1184.reference_bank;
    preview_cache[i32(0u)].prefix_only = _e1184.prefix_only;
    preview_cache[i32(0u)].step_target = _e1184.step_target;
    preview_cache[i32(0u)].completed_steps = _e1184.completed_steps;
    preview_cache[i32(0u)].budget = _e1184.budget;
    preview_cache[i32(0u)].epoch = _e1184.epoch;
    preview_cache[i32(0u)].completed = _e1184.completed;
    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e1184.history.full.re;
    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e1184.history.full.im;
    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e1184.history.initial.re;
    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e1184.history.initial.im;
    preview_cache[i32(0u)].trace_clock = _e1184.trace_clock;
    local_26 = 0u;
    loop {
        let _e1259 = local_26;
        let _e1261 = (_e1259 < 2u);
        loop_header_carry_2096_ = _e1261;
        if _e1261 {
            if (_e983 == 1u) {
                if (_e1259 == _e981) {
                    local_27 = true;
                } else {
                    local_27 = false;
                }
            } else {
                local_27 = false;
            }
            let _e1274 = local_27;
            if (_e985 == 1u) {
                if (1u < _e981) {
                    fe_trapped = true;
                    break;
                } else {
                    if (_e1259 == (1u - _e981)) {
                        local_28 = true;
                    } else {
                        local_28 = false;
                    }
                }
            } else {
                local_28 = false;
            }
            let _e1289 = local_28;
            if (_e1274 | _e1289) {
                let _e1298 = orbit[i32(((_e1259 * 8195u) + 8193u))].re_w0_bits;
                let _e1300 = orbit[i32(((_e1259 * 8195u) + 8193u))].re_w1_bits;
                let _e1302 = orbit[i32(((_e1259 * 8195u) + 8193u))].re_w2_bits;
                let _e1304 = orbit[i32(((_e1259 * 8195u) + 8193u))].re_w3_bits;
                let _e1306 = orbit[i32(((_e1259 * 8195u) + 8193u))].im_w0_bits;
                let _e1308 = orbit[i32(((_e1259 * 8195u) + 8193u))].im_w1_bits;
                let _e1310 = orbit[i32(((_e1259 * 8195u) + 8193u))].im_w2_bits;
                let _e1312 = orbit[i32(((_e1259 * 8195u) + 8193u))].im_w3_bits;
                let _e1314 = decode(FeLocal_fe_PackedReference_e11ca04a_23_(_e1298, _e1300, _e1302, _e1304, _e1306, _e1308, _e1310, _e1312));
                let _e1315 = center_value(_e166);
                let _e1316 = center_delta(_e1314, _e1315, (&fe_trapped));
                let _e1320 = ((_e1259 * 8195u) + 8194u);
                let _e1324 = orbit[i32(_e1320)].re_w0_bits;
                let _e1326 = orbit[i32(_e1320)].re_w1_bits;
                let _e1328 = orbit[i32(_e1320)].re_w2_bits;
                let _e1330 = orbit[i32(_e1320)].re_w3_bits;
                let _e1332 = orbit[i32(_e1320)].im_w0_bits;
                let _e1334 = orbit[i32(_e1320)].im_w1_bits;
                let _e1336 = orbit[i32(_e1320)].im_w2_bits;
                let _e1338 = orbit[i32(_e1320)].im_w3_bits;
                let _e1340 = with_center_offset(FeLocal_fe_PackedReference_e11ca04a_23_(_e1324, _e1326, _e1328, _e1330, _e1332, _e1334, _e1336, _e1338), _e1316);
                orbit[i32(_e1320)].re_w0_bits = _e1340.re_w0_bits;
                orbit[i32(_e1320)].re_w1_bits = _e1340.re_w1_bits;
                orbit[i32(_e1320)].re_w2_bits = _e1340.re_w2_bits;
                orbit[i32(_e1320)].re_w3_bits = _e1340.re_w3_bits;
                orbit[i32(_e1320)].im_w0_bits = _e1340.im_w0_bits;
                orbit[i32(_e1320)].im_w1_bits = _e1340.im_w1_bits;
                orbit[i32(_e1320)].im_w2_bits = _e1340.im_w2_bits;
                orbit[i32(_e1320)].im_w3_bits = _e1340.im_w3_bits;
            }
            local_26 = (_e1259 + 1u);
            continue;
        } else {
            break;
        }
    }
    if _e123 {
        let _e1368 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e1370 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e1372 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e1374 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e1376 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e1378 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e1380 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e1382 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e1384 = preview_cache[i32(0u)].camera_u002e_zoom;
        let _e1386 = preview_cache[i32(0u)].camera_u002e_res;
        let _e1388 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_re;
        let _e1390 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_im;
        let _e1392 = preview_cache[i32(0u)].reference_generation;
        let _e1394 = preview_cache[i32(0u)].reference_bank;
        let _e1396 = preview_cache[i32(0u)].prefix_only;
        let _e1398 = preview_cache[i32(0u)].step_target;
        let _e1400 = preview_cache[i32(0u)].completed_steps;
        let _e1402 = preview_cache[i32(0u)].budget;
        let _e1404 = preview_cache[i32(0u)].epoch;
        let _e1406 = preview_cache[i32(0u)].completed;
        let _e1408 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e1410 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e1412 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e1414 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        let _e1416 = preview_cache[i32(0u)].trace_clock;
        fixed_local_2361_ = FeLocal_fe_PreviewCache_6792a3e2_28_(FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_12_(FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e1368, FeLocal_fe_More_More_Last_60a5ba63_7_(_e1370, FeLocal_fe_More_Last_1ac585f5_6_(_e1372, FeLocal_fe_Last_eb970eb0_5_(_e1374))))), FeLocal_fe_Coordinate_bdc10f09_11_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e1376, FeLocal_fe_More_More_Last_60a5ba63_7_(_e1378, FeLocal_fe_More_Last_1ac585f5_6_(_e1380, FeLocal_fe_Last_eb970eb0_5_(_e1382)))))), _e1384, _e1386, FeLocal_fe_Complex_f32_87ec9249_13_(_e1388, _e1390)), _e1392, _e1394, _e1396, _e1398, _e1400, _e1402, _e1404, _e1406, FeLocal_fe_HistoryOffsets_646326b2_27_(FeLocal_fe_Complex_f32_87ec9249_13_(_e1408, _e1410), FeLocal_fe_Complex_f32_87ec9249_13_(_e1412, _e1414)), _e1416);
        fixed_local_2361_.trace_clock = _e33;
        let _e1437 = fixed_local_2361_;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e1437.camera.center.re.value.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e1437.camera.center.re.value.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1437.camera.center.re.value.tail.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1437.camera.center.re.value.tail.tail.tail.value;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e1437.camera.center.im.value.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e1437.camera.center.im.value.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e1437.camera.center.im.value.tail.tail.lead;
        preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e1437.camera.center.im.value.tail.tail.tail.value;
        preview_cache[i32(0u)].camera_u002e_zoom = _e1437.camera.zoom;
        preview_cache[i32(0u)].camera_u002e_res = _e1437.camera.res;
        preview_cache[i32(0u)].camera_u002e_orientation_u002e_re = _e1437.camera.orientation.re;
        preview_cache[i32(0u)].camera_u002e_orientation_u002e_im = _e1437.camera.orientation.im;
        preview_cache[i32(0u)].reference_generation = _e1437.reference_generation;
        preview_cache[i32(0u)].reference_bank = _e1437.reference_bank;
        preview_cache[i32(0u)].prefix_only = _e1437.prefix_only;
        preview_cache[i32(0u)].step_target = _e1437.step_target;
        preview_cache[i32(0u)].completed_steps = _e1437.completed_steps;
        preview_cache[i32(0u)].budget = _e1437.budget;
        preview_cache[i32(0u)].epoch = _e1437.epoch;
        preview_cache[i32(0u)].completed = _e1437.completed;
        preview_cache[i32(0u)].history_u002e_full_u002e_re = _e1437.history.full.re;
        preview_cache[i32(0u)].history_u002e_full_u002e_im = _e1437.history.full.im;
        preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e1437.history.initial.re;
        preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e1437.history.initial.im;
        preview_cache[i32(0u)].trace_clock = _e1437.trace_clock;
    }
    let _e1508 = fe_trapped;
    trap[0u] = u32(_e1508);
}
