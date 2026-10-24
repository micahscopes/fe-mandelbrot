struct FeLocal_fe_RefinementPace_85cee56b_19_ {
    steps: u32,
    last_clock: f32,
}

struct FeLocal_fe_Last_eb970eb0_0_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_1_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_0_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_2_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_1_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_3_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_2_,
}

struct FeLocal_fe_Coordinate_bdc10f09_4_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_3_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_5_ {
    re: FeLocal_fe_Coordinate_bdc10f09_4_,
    im: FeLocal_fe_Coordinate_bdc10f09_4_,
}

struct FeLocal_fe_Complex_f32_87ec9249_6_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_7_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_5_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_6_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_8_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
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

struct FeLocal_fe_RefinementSchedule_b8aa1d23_9_ {
    limit: u32,
    rounds: u32,
    quantum: u32,
    sx: u32,
    sy: u32,
    phases: u32,
    aa_stride: u32,
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

struct FeLocal_fe_Contacts_2_ac13bf77_13_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_12_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_14_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_11_,
    extent: FeLocal_fe_Vec2_f32_2772165c_11_,
}

struct FeLocal_fe_GestureSession_6b679731_15_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_13_,
    viewport: FeLocal_fe_Viewport_91e53b90_14_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_13_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_7_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_16_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_17_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_18_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_15_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_16_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_17_,
}

struct FeLocal_fe_ReferenceControl_7d077120_10_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
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
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn pace(a0_: FeLocal_fe_ViewCache_da6e2ccc_8_) -> FeLocal_fe_RefinementPace_85cee56b_19_ {
    return FeLocal_fe_RefinementPace_85cee56b_19_(a0_.steps, a0_.frame_clock);
}

fn observe_frame(a0_1: FeLocal_fe_RefinementPace_85cee56b_19_, a1_: f32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_RefinementPace_85cee56b_19_ {
    var local_2: FeLocal_fe_RefinementPace_85cee56b_19_;
    var local_3: bool = false;
    var local_4: u32 = u32();
    var local_5: FeLocal_fe_RefinementPace_85cee56b_19_;
    var local_6: bool = false;
    var local_7: u32 = u32();

    let _e6 = (a1_ - a0_1.last_clock);
    if (a0_1.steps == 0u) {
        local_4 = 1u;
    } else {
        local_4 = a0_1.steps;
    }
    let _e17 = local_4;
    if (a0_1.last_clock <= 0f) {
        local_7 = 1u;
    } else {
        if (_e6 <= 0f) {
            local_7 = 1u;
        } else {
            if (250f < _e6) {
                local_7 = 1u;
            } else {
                if (_e6 <= 20f) {
                    let _e28 = (_e17 / 4u);
                    let _e30 = (_e17 + _e28);
                    if (_e17 > (4294967295u - _e28)) {
                        (*fe_trapped_1) = true;
                    } else {
                        let _e36 = (_e30 + 1u);
                        if (_e30 > (4294967295u - 1u)) {
                            (*fe_trapped_1) = true;
                        } else {
                            if (256u < _e36) {
                                local_7 = 256u;
                            } else {
                                local_7 = _e36;
                            }
                        }
                    }
                } else {
                    let _e50 = (_e17 != 0u);
                    if (_e50 && (3u > (4294967295u / select(1u, _e17, _e50)))) {
                        (*fe_trapped_1) = true;
                    } else {
                        let _e57 = ((_e17 * 3u) / 5u);
                        if (_e57 < 1u) {
                            local_7 = 1u;
                        } else {
                            local_7 = _e57;
                        }
                    }
                }
            }
        }
    }
    let _e70 = local_7;
    return FeLocal_fe_RefinementPace_85cee56b_19_(_e70, a1_);
}

fn with_pace(a0_2: FeLocal_fe_ViewCache_da6e2ccc_8_, a1_1: FeLocal_fe_RefinementPace_85cee56b_19_) -> FeLocal_fe_ViewCache_da6e2ccc_8_ {
    var fixed_local_3_: FeLocal_fe_ViewCache_da6e2ccc_8_ = FeLocal_fe_ViewCache_da6e2ccc_8_();

    fixed_local_3_ = a0_2;
    fixed_local_3_.steps = a1_1.steps;
    fixed_local_3_.frame_clock = a1_1.last_clock;
    let _e8 = fixed_local_3_;
    return _e8;
}

fn to_i32_(a0_3: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_3)), 2147483648u, (a0_3 <= -2147483600f)), 2147483647u, (a0_3 >= 2147483600f)), (a0_3 == a0_3));
}

fn iteration_limit(a0_4: f32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_8: u32 = u32();
    var local_9: f32 = f32();
    var local_10: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_11: u32 = u32();
    var local_12: f32 = f32();
    var local_13: u32;
    var local_14: bool = false;
    var local_15: u32 = u32();

    local_8 = 0u;
    local_9 = a0_4;
    local_10 = 0u;
    loop {
        let _e12 = local_8;
        let _e14 = local_9;
        let _e16 = local_10;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_2) = true;
                    break;
                } else {
                    local_11 = (_e12 + 1u);
                    local_12 = (_e14 * 2f);
                }
            } else {
                local_11 = _e12;
                local_12 = _e14;
            }
            let _e36 = local_11;
            let _e38 = local_12;
            local_8 = _e36;
            local_9 = _e38;
            local_10 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_8;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_2) = true;
        }
        if (8192u < _e60) {
            local_15 = 8192u;
        } else {
            local_15 = _e60;
        }
        let _e71 = local_15;
        local_13 = _e71;
        local_14 = true;
    }
    let _e77 = local_14;
    if _e77 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e79 = local_13;
    return _e79;
}

fn assert(a0_5: bool, fe_trapped_3: ptr<function, bool>) {
    var local_16: u32;
    var local_17: bool = false;

    if a0_5 {
        local_17 = true;
    } else {
        (*fe_trapped_3) = true;
    }
    return;
}

fn for_grid(a0_6: u32, a1_2: u32, a2_: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_9_ {
    var local_18: FeLocal_fe_RefinementSchedule_b8aa1d23_9_;
    var local_19: bool = false;
    var local_20: bool = bool();
    var local_21: FeLocal_fe_RefinementSchedule_b8aa1d23_9_;
    var local_22: bool = false;
    var local_23: u32 = u32();
    var loop_result_1: FeLocal_fe_RefinementSchedule_b8aa1d23_9_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_28_: u32;
    var loop_header_carry_29_: bool;

    if (0u < a0_6) {
        if ((8192u < a0_6) == false) {
            if (0u < a1_2) {
                if (0u < a2_) {
                    local_20 = true;
                }
            }
        }
    }
    let _e20 = local_20;
    assert(_e20, fe_trapped_4);
    let _e23 = (a0_6 + 128u);
    if (a0_6 > (4294967295u - 128u)) {
    } else {
        if (_e23 < 1u) {
        } else {
            local_23 = 2u;
            loop {
                let _e36 = local_23;
                let _e40 = (_e36 * _e36);
                let _e41 = (_e36 != 0u);
                let _e45 = (_e41 && (_e36 > (4294967295u / select(1u, _e36, _e41))));
                loop_header_carry_28_ = _e40;
                loop_header_carry_29_ = _e45;
                if _e45 {
                    break;
                } else {
                    let _e51 = (_e40 != 0u);
                    if (_e51 && (128u > (4294967295u / select(1u, _e40, _e51)))) {
                        break;
                    } else {
                        if ((_e40 * 128u) < a0_6) {
                            let _e62 = (_e36 != 0u);
                            if (_e62 && (2u > (4294967295u / select(1u, _e36, _e62)))) {
                                break;
                            } else {
                                local_23 = (_e36 * 2u);
                                continue;
                            }
                        } else {
                            let _e72 = (a1_2 != 0u);
                            if (_e72 && (a2_ > (4294967295u / select(1u, a1_2, _e72)))) {
                                break;
                            } else {
                                let _e81 = (a2_ != 0u);
                                if (_e81 && (_e36 > (4294967295u / select(1u, a2_, _e81)))) {
                                    break;
                                } else {
                                    loop_result_1 = FeLocal_fe_RefinementSchedule_b8aa1d23_9_(a0_6, ((_e23 - 1u) / 128u), 128u, a1_2, a2_, (a1_2 * a2_), (a2_ * _e36));
                                    loop_did_return_1 = true;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            let _e94 = loop_did_return_1;
            if _e94 {
                let _e96 = loop_result_1;
                local_21 = _e96;
                local_22 = true;
            }
        }
        let _e101 = local_22;
        if _e101 {
        }
    }
    let _e104 = local_22;
    if _e104 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e106 = local_21;
    return _e106;
}

fn for_view(a0_7: f32, a1_3: f32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_9_ {
    let _e7 = to_i32_(((a1_3 + 127f) / 128f));
    let _e12 = to_i32_(((a1_3 + 255f) / 256f));
    let _e13 = iteration_limit(a0_7, fe_trapped_5);
    let _e14 = for_grid(_e13, _e7, _e12, fe_trapped_5);
    return _e14;
}

fn refine_steps(a0_8: FeLocal_fe_RefinementSchedule_b8aa1d23_9_, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_24: u32;
    var local_25: bool = false;

    let _e9 = (a0_8.rounds != 0u);
    if (_e9 && (a0_8.phases > (4294967295u / select(1u, a0_8.rounds, _e9)))) {
        (*fe_trapped_6) = true;
    } else {
        local_24 = (a0_8.rounds * a0_8.phases);
        local_25 = true;
    }
    let _e19 = local_24;
    return _e19;
}

fn total_steps(a0_9: FeLocal_fe_RefinementSchedule_b8aa1d23_9_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_26: u32;
    var local_27: bool = false;

    let _e3 = refine_steps(a0_9, fe_trapped_7);
    let _e9 = (a0_9.aa_stride * a0_9.aa_stride);
    let _e10 = (a0_9.aa_stride != 0u);
    if (_e10 && (a0_9.aa_stride > (4294967295u / select(1u, a0_9.aa_stride, _e10)))) {
    } else {
        if (_e3 > (4294967295u - _e9)) {
        } else {
            local_26 = (_e3 + _e9);
            local_27 = true;
        }
        let _e23 = local_27;
        if _e23 {
        }
    }
    let _e26 = local_27;
    if _e26 {
    } else {
        (*fe_trapped_7) = true;
    }
    let _e28 = local_26;
    return _e28;
}

fn is_input_settled(a0_10: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_18_>) -> bool {
    var local_28: bool;
    var local_29: bool = false;
    var local_30: bool = bool();

    let _e4 = (*a0_10).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_10).clock;
        let _e10 = (*a0_10).last_input;
        if (60f <= (_e8 - _e10)) {
            local_30 = true;
        }
    }
    let _e17 = local_30;
    return _e17;
}

fn can_refine(a0_11: FeLocal_fe_ReferenceControl_7d077120_10_, a1_4: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_18_>) -> bool {
    var local_31: bool;
    var local_32: bool = false;
    var local_33: bool = bool();

    if (a0_11.pending == 0u) {
        if (a0_11.active_valid == 1u) {
            let _e10 = is_input_settled(a1_4);
            if _e10 {
                local_33 = true;
            }
        }
    }
    let _e14 = local_33;
    return _e14;
}

fn batch(a0_12: FeLocal_fe_RefinementSchedule_b8aa1d23_9_, a1_5: u32, a2_1: u32, fe_trapped_8: ptr<function, bool>) -> u32 {
    var local_34: u32;
    var local_35: bool = false;
    var local_36: u32;
    var local_37: bool = false;
    var local_38: u32 = u32();
    var local_39: u32;
    var local_40: bool = false;
    var local_41: u32 = u32();
    var local_42: u32;
    var local_43: bool = false;
    var local_44: u32 = u32();
    var local_45: u32;
    var local_46: bool = false;
    var local_47: u32;
    var local_48: bool = false;
    var local_49: u32 = u32();
    var local_50: u32;
    var local_51: bool = false;
    var local_52: u32 = u32();

    let _e5 = refine_steps(a0_12, fe_trapped_8);
    let _e6 = total_steps(a0_12, fe_trapped_8);
    if ((a1_5 < _e6) == false) {
        local_34 = 0u;
        local_35 = true;
    }
    let _e78 = local_35;
    if _e78 {
    } else {
        if (a2_1 == 0u) {
            local_38 = 1u;
        } else {
            local_38 = a2_1;
        }
        let _e24 = local_38;
        if (a1_5 < 16u) {
            local_41 = 16u;
        } else {
            if (a1_5 < _e5) {
                local_41 = _e5;
            } else {
                local_41 = _e6;
            }
        }
        let _e35 = local_41;
        if (a1_5 < 16u) {
            local_44 = 1u;
        } else {
            if (a1_5 < _e5) {
                local_44 = a0_12.phases;
            } else {
                let _e46 = (a0_12.aa_stride != 0u);
                if (_e46 && (a0_12.aa_stride > (4294967295u / select(1u, a0_12.aa_stride, _e46)))) {
                    (*fe_trapped_8) = true;
                } else {
                    local_44 = (a0_12.aa_stride * a0_12.aa_stride);
                }
            }
        }
        let _e58 = local_44;
        let _e59 = (_e35 - a1_5);
        if (_e35 < a1_5) {
            (*fe_trapped_8) = true;
        }
        if (_e59 < _e58) {
            local_49 = _e59;
        } else {
            local_49 = _e58;
        }
        let _e70 = local_49;
        if (_e24 < _e70) {
            local_52 = _e24;
        } else {
            local_52 = _e70;
        }
        let _e75 = local_52;
        local_34 = _e75;
    }
    let _e80 = local_34;
    return _e80;
}

fn advance_cursor(a0_13: FeLocal_fe_ViewCache_da6e2ccc_8_, a1_6: u32, a2_2: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_8_ {
    var local_53: FeLocal_fe_ViewCache_da6e2ccc_8_;
    var local_54: bool = false;
    var fixed_local_4_: FeLocal_fe_ViewCache_da6e2ccc_8_ = FeLocal_fe_ViewCache_da6e2ccc_8_();
    var local_55: FeLocal_fe_ViewCache_da6e2ccc_8_;
    var local_56: bool = false;
    var local_57: u32 = u32();

    fixed_local_4_ = a0_13;
    let _e9 = (a0_13.cursor + a1_6);
    if (a0_13.cursor > (4294967295u - a1_6)) {
        (*fe_trapped_9) = true;
    }
    fixed_local_4_.cursor = _e9;
    if ((_e9 < a2_2) == false) {
        local_57 = 1u;
    }
    let _e22 = local_57;
    fixed_local_4_.completed = _e22;
    let _e24 = fixed_local_4_;
    return _e24;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_613_: FeLocal_fe_MandelbrotViewState_c524184f_18_ = FeLocal_fe_MandelbrotViewState_c524184f_18_();

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
    let _e218 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e220 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e222 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e224 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e226 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e228 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e230 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e232 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e234 = cache[i32(0u)].camera_u002e_zoom;
    let _e236 = cache[i32(0u)].camera_u002e_res;
    let _e238 = cache[i32(0u)].camera_u002e_orientation_u002e_re;
    let _e240 = cache[i32(0u)].camera_u002e_orientation_u002e_im;
    let _e242 = cache[i32(0u)].cursor;
    let _e244 = cache[i32(0u)].aa;
    let _e246 = cache[i32(0u)].budget;
    let _e248 = cache[i32(0u)].radius;
    let _e250 = cache[i32(0u)].preview_dirty;
    let _e252 = cache[i32(0u)].blur_dirty;
    let _e254 = cache[i32(0u)].epoch;
    let _e256 = cache[i32(0u)].completed;
    let _e258 = cache[i32(0u)].steps;
    let _e260 = cache[i32(0u)].frame_clock;
    let _e274 = FeLocal_fe_ViewCache_da6e2ccc_8_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e218, FeLocal_fe_More_More_Last_60a5ba63_2_(_e220, FeLocal_fe_More_Last_1ac585f5_1_(_e222, FeLocal_fe_Last_eb970eb0_0_(_e224))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e226, FeLocal_fe_More_More_Last_60a5ba63_2_(_e228, FeLocal_fe_More_Last_1ac585f5_1_(_e230, FeLocal_fe_Last_eb970eb0_0_(_e232)))))), _e234, _e236, FeLocal_fe_Complex_f32_87ec9249_6_(_e238, _e240)), _e242, _e244, _e246, _e248, _e250, _e252, _e254, _e256, _e258, _e260);
    let _e275 = pace(_e274);
    let _e276 = observe_frame(_e275, _e30, (&fe_trapped));
    let _e277 = with_pace(_e274, _e276);
    let _e278 = for_view(_e22, _e24, (&fe_trapped));
    let _e279 = total_steps(_e278, (&fe_trapped));
    fixed_local_613_ = FeLocal_fe_MandelbrotViewState_c524184f_18_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e6, FeLocal_fe_More_More_Last_60a5ba63_2_(_e8, FeLocal_fe_More_Last_1ac585f5_1_(_e10, FeLocal_fe_Last_eb970eb0_0_(_e12))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e14, FeLocal_fe_More_More_Last_60a5ba63_2_(_e16, FeLocal_fe_More_Last_1ac585f5_1_(_e18, FeLocal_fe_Last_eb970eb0_0_(_e20)))))), _e22, _e24, FeLocal_fe_Complex_f32_87ec9249_6_(_e26, _e28)), _e30, _e32, _e34, _e36, _e38, FeLocal_fe_GestureSession_6b679731_15_(FeLocal_fe_Contacts_2_ac13bf77_13_(array<FeLocal_fe_Contact_2b5c3d26_12_, 2>(FeLocal_fe_Contact_2b5c3d26_12_((_e40 != 0u), _e44, FeLocal_fe_Vec2_f32_2772165c_11_(_e46, _e48)), FeLocal_fe_Contact_2b5c3d26_12_((_e50 != 0u), _e54, FeLocal_fe_Vec2_f32_2772165c_11_(_e56, _e58)))), FeLocal_fe_Viewport_91e53b90_14_(FeLocal_fe_Vec2_f32_2772165c_11_(_e60, _e62), FeLocal_fe_Vec2_f32_2772165c_11_(_e64, _e66)), FeLocal_fe_Contacts_2_ac13bf77_13_(array<FeLocal_fe_Contact_2b5c3d26_12_, 2>(FeLocal_fe_Contact_2b5c3d26_12_((_e68 != 0u), _e72, FeLocal_fe_Vec2_f32_2772165c_11_(_e74, _e76)), FeLocal_fe_Contact_2b5c3d26_12_((_e78 != 0u), _e82, FeLocal_fe_Vec2_f32_2772165c_11_(_e84, _e86)))), FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e88, FeLocal_fe_More_More_Last_60a5ba63_2_(_e90, FeLocal_fe_More_Last_1ac585f5_1_(_e92, FeLocal_fe_Last_eb970eb0_0_(_e94))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e96, FeLocal_fe_More_More_Last_60a5ba63_2_(_e98, FeLocal_fe_More_Last_1ac585f5_1_(_e100, FeLocal_fe_Last_eb970eb0_0_(_e102)))))), _e104, _e106, FeLocal_fe_Complex_f32_87ec9249_6_(_e108, _e110))), FeLocal_fe_BackingRequest_2bcae9f8_16_((_e112 != 0u), _e116), FeLocal_fe_CameraTrace_7ca62f00_17_((_e118 != 0u), array<u32, 14>(_e122, _e124, _e126, _e128, _e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148)));
    let _e282 = can_refine(FeLocal_fe_ReferenceControl_7d077120_10_(_e200, _e202, _e204, _e206, _e208, _e210, _e212), (&fixed_local_613_));
    if _e282 {
        if (_e242 < _e279) {
            let _e284 = batch(_e278, _e242, _e258, (&fe_trapped));
            let _e285 = advance_cursor(_e277, _e284, _e279, (&fe_trapped));
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e285.camera.center.re.value.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e285.camera.center.re.value.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e285.camera.center.re.value.tail.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e285.camera.center.re.value.tail.tail.tail.value;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e285.camera.center.im.value.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e285.camera.center.im.value.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e285.camera.center.im.value.tail.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e285.camera.center.im.value.tail.tail.tail.value;
            cache[i32(0u)].camera_u002e_zoom = _e285.camera.zoom;
            cache[i32(0u)].camera_u002e_res = _e285.camera.res;
            cache[i32(0u)].camera_u002e_orientation_u002e_re = _e285.camera.orientation.re;
            cache[i32(0u)].camera_u002e_orientation_u002e_im = _e285.camera.orientation.im;
            cache[i32(0u)].cursor = _e285.cursor;
            cache[i32(0u)].aa = _e285.aa;
            cache[i32(0u)].budget = _e285.budget;
            cache[i32(0u)].radius = _e285.radius;
            cache[i32(0u)].preview_dirty = _e285.preview_dirty;
            cache[i32(0u)].blur_dirty = _e285.blur_dirty;
            cache[i32(0u)].epoch = _e285.epoch;
            cache[i32(0u)].completed = _e285.completed;
            cache[i32(0u)].steps = _e285.steps;
            cache[i32(0u)].frame_clock = _e285.frame_clock;
        } else {
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e277.camera.center.re.value.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e277.camera.center.re.value.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e277.camera.center.re.value.tail.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e277.camera.center.re.value.tail.tail.tail.value;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e277.camera.center.im.value.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e277.camera.center.im.value.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e277.camera.center.im.value.tail.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e277.camera.center.im.value.tail.tail.tail.value;
            cache[i32(0u)].camera_u002e_zoom = _e277.camera.zoom;
            cache[i32(0u)].camera_u002e_res = _e277.camera.res;
            cache[i32(0u)].camera_u002e_orientation_u002e_re = _e277.camera.orientation.re;
            cache[i32(0u)].camera_u002e_orientation_u002e_im = _e277.camera.orientation.im;
            cache[i32(0u)].cursor = _e277.cursor;
            cache[i32(0u)].aa = _e277.aa;
            cache[i32(0u)].budget = _e277.budget;
            cache[i32(0u)].radius = _e277.radius;
            cache[i32(0u)].preview_dirty = _e277.preview_dirty;
            cache[i32(0u)].blur_dirty = _e277.blur_dirty;
            cache[i32(0u)].epoch = _e277.epoch;
            cache[i32(0u)].completed = _e277.completed;
            cache[i32(0u)].steps = _e277.steps;
            cache[i32(0u)].frame_clock = _e277.frame_clock;
        }
    } else {
        cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e277.camera.center.re.value.lead;
        cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e277.camera.center.re.value.tail.lead;
        cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e277.camera.center.re.value.tail.tail.lead;
        cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e277.camera.center.re.value.tail.tail.tail.value;
        cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e277.camera.center.im.value.lead;
        cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e277.camera.center.im.value.tail.lead;
        cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e277.camera.center.im.value.tail.tail.lead;
        cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e277.camera.center.im.value.tail.tail.tail.value;
        cache[i32(0u)].camera_u002e_zoom = _e277.camera.zoom;
        cache[i32(0u)].camera_u002e_res = _e277.camera.res;
        cache[i32(0u)].camera_u002e_orientation_u002e_re = _e277.camera.orientation.re;
        cache[i32(0u)].camera_u002e_orientation_u002e_im = _e277.camera.orientation.im;
        cache[i32(0u)].cursor = _e277.cursor;
        cache[i32(0u)].aa = _e277.aa;
        cache[i32(0u)].budget = _e277.budget;
        cache[i32(0u)].radius = _e277.radius;
        cache[i32(0u)].preview_dirty = _e277.preview_dirty;
        cache[i32(0u)].blur_dirty = _e277.blur_dirty;
        cache[i32(0u)].epoch = _e277.epoch;
        cache[i32(0u)].completed = _e277.completed;
        cache[i32(0u)].steps = _e277.steps;
        cache[i32(0u)].frame_clock = _e277.frame_clock;
    }
    let _e467 = fe_trapped;
    trap[0u] = u32(_e467);
}
