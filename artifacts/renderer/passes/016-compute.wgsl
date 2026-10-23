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

struct FeLocal_fe_Vec2_f32_2772165c_10_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_11_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_10_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_12_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_11_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_13_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_10_,
    extent: FeLocal_fe_Vec2_f32_2772165c_10_,
}

struct FeLocal_fe_GestureSession_6b679731_14_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_12_,
    viewport: FeLocal_fe_Viewport_91e53b90_13_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_12_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_7_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_15_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_16_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_17_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_14_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_15_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_16_,
}

struct FeLocal_fe_RefinementSchedule_b8aa1d23_18_ {
    limit: u32,
    rounds: u32,
    quantum: u32,
    sx: u32,
    sy: u32,
    phases: u32,
    aa_stride: u32,
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
}

struct FeLocal_fe_ReferenceControl_7d077120_9_ {
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

fn is_input_settled(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>) -> bool {
    var local_4: bool;
    var local_5: bool = false;
    var local_6: bool = bool();

    let _e4 = (*a0_).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_).clock;
        let _e10 = (*a0_).last_input;
        if (60f <= (_e8 - _e10)) {
            local_6 = true;
        }
    }
    let _e17 = local_6;
    return _e17;
}

fn can_refine(a0_1: FeLocal_fe_ReferenceControl_7d077120_9_, a1_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>) -> bool {
    var local_7: bool;
    var local_8: bool = false;
    var local_9: bool = bool();

    if (a0_1.pending == 0u) {
        if (a0_1.active_valid == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_9 = true;
            }
        }
    }
    let _e14 = local_9;
    return _e14;
}

fn to_i32_(a0_2: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_2)), 2147483648u, (a0_2 <= -2147483600f)), 2147483647u, (a0_2 >= 2147483600f)), (a0_2 == a0_2));
}

fn iteration_limit(a0_3: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_10: u32 = u32();
    var local_11: f32 = f32();
    var local_12: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_13: u32 = u32();
    var local_14: f32 = f32();
    var local_15: u32;
    var local_16: bool = false;
    var local_17: u32 = u32();

    local_10 = 0u;
    local_11 = a0_3;
    local_12 = 0u;
    loop {
        let _e12 = local_10;
        let _e14 = local_11;
        let _e16 = local_12;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_13 = (_e12 + 1u);
                    local_14 = (_e14 * 2f);
                }
            } else {
                local_13 = _e12;
                local_14 = _e14;
            }
            let _e36 = local_13;
            let _e38 = local_14;
            local_10 = _e36;
            local_11 = _e38;
            local_12 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_10;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_17 = 8192u;
        } else {
            local_17 = _e60;
        }
        let _e71 = local_17;
        local_15 = _e71;
        local_16 = true;
    }
    let _e77 = local_16;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_15;
    return _e79;
}

fn assert(a0_4: bool, fe_trapped_2: ptr<function, bool>) {
    var local_18: u32;
    var local_19: bool = false;

    if a0_4 {
        local_19 = true;
    } else {
        (*fe_trapped_2) = true;
    }
    return;
}

fn for_grid(a0_5: u32, a1_1: u32, a2_: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_18_ {
    var local_20: FeLocal_fe_RefinementSchedule_b8aa1d23_18_;
    var local_21: bool = false;
    var local_22: bool = bool();
    var local_23: FeLocal_fe_RefinementSchedule_b8aa1d23_18_;
    var local_24: bool = false;
    var local_25: u32 = u32();
    var loop_result_1: FeLocal_fe_RefinementSchedule_b8aa1d23_18_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_28_: u32;
    var loop_header_carry_29_: bool;

    if (0u < a0_5) {
        if ((8192u < a0_5) == false) {
            if (0u < a1_1) {
                if (0u < a2_) {
                    local_22 = true;
                }
            }
        }
    }
    let _e20 = local_22;
    assert(_e20, fe_trapped_3);
    let _e23 = (a0_5 + 128u);
    if (a0_5 > (4294967295u - 128u)) {
    } else {
        if (_e23 < 1u) {
        } else {
            local_25 = 2u;
            loop {
                let _e36 = local_25;
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
                        if ((_e40 * 128u) < a0_5) {
                            let _e62 = (_e36 != 0u);
                            if (_e62 && (2u > (4294967295u / select(1u, _e36, _e62)))) {
                                break;
                            } else {
                                local_25 = (_e36 * 2u);
                                continue;
                            }
                        } else {
                            let _e72 = (a1_1 != 0u);
                            if (_e72 && (a2_ > (4294967295u / select(1u, a1_1, _e72)))) {
                                break;
                            } else {
                                let _e81 = (a2_ != 0u);
                                if (_e81 && (_e36 > (4294967295u / select(1u, a2_, _e81)))) {
                                    break;
                                } else {
                                    loop_result_1 = FeLocal_fe_RefinementSchedule_b8aa1d23_18_(a0_5, ((_e23 - 1u) / 128u), 128u, a1_1, a2_, (a1_1 * a2_), (a2_ * _e36));
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
                local_23 = _e96;
                local_24 = true;
            }
        }
        let _e101 = local_24;
        if _e101 {
        }
    }
    let _e104 = local_24;
    if _e104 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e106 = local_23;
    return _e106;
}

fn for_view(a0_6: f32, a1_2: f32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_18_ {
    let _e7 = to_i32_(((a1_2 + 127f) / 128f));
    let _e12 = to_i32_(((a1_2 + 255f) / 256f));
    let _e13 = iteration_limit(a0_6, fe_trapped_4);
    let _e14 = for_grid(_e13, _e7, _e12, fe_trapped_4);
    return _e14;
}

fn refine_steps(a0_7: FeLocal_fe_RefinementSchedule_b8aa1d23_18_, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_26: u32;
    var local_27: bool = false;

    let _e9 = (a0_7.rounds != 0u);
    if (_e9 && (a0_7.phases > (4294967295u / select(1u, a0_7.rounds, _e9)))) {
        (*fe_trapped_5) = true;
    } else {
        local_26 = (a0_7.rounds * a0_7.phases);
        local_27 = true;
    }
    let _e19 = local_26;
    return _e19;
}

fn total_steps(a0_8: FeLocal_fe_RefinementSchedule_b8aa1d23_18_, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_28: u32;
    var local_29: bool = false;

    let _e3 = refine_steps(a0_8, fe_trapped_6);
    let _e9 = (a0_8.aa_stride * a0_8.aa_stride);
    let _e10 = (a0_8.aa_stride != 0u);
    if (_e10 && (a0_8.aa_stride > (4294967295u / select(1u, a0_8.aa_stride, _e10)))) {
    } else {
        if (_e3 > (4294967295u - _e9)) {
        } else {
            local_28 = (_e3 + _e9);
            local_29 = true;
        }
        let _e23 = local_29;
        if _e23 {
        }
    }
    let _e26 = local_29;
    if _e26 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e28 = local_28;
    return _e28;
}

fn advance_cursor(a0_9: FeLocal_fe_ViewCache_da6e2ccc_8_, a1_3: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_ViewCache_da6e2ccc_8_ {
    var local_30: FeLocal_fe_ViewCache_da6e2ccc_8_;
    var local_31: bool = false;
    var fixed_local_3_: FeLocal_fe_ViewCache_da6e2ccc_8_ = FeLocal_fe_ViewCache_da6e2ccc_8_();
    var local_32: FeLocal_fe_ViewCache_da6e2ccc_8_;
    var local_33: bool = false;
    var local_34: u32 = u32();

    fixed_local_3_ = a0_9;
    let _e9 = (a0_9.cursor + 1u);
    if (a0_9.cursor > (4294967295u - 1u)) {
        (*fe_trapped_7) = true;
    }
    fixed_local_3_.cursor = _e9;
    if ((_e9 < a1_3) == false) {
        local_34 = 1u;
    }
    let _e22 = local_34;
    fixed_local_3_.completed = _e22;
    let _e24 = fixed_local_3_;
    return _e24;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_344_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();
    var local_2: u32;
    var local_3: bool = false;

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
    fixed_local_344_ = FeLocal_fe_MandelbrotViewState_c524184f_17_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e6, FeLocal_fe_More_More_Last_60a5ba63_2_(_e8, FeLocal_fe_More_Last_1ac585f5_1_(_e10, FeLocal_fe_Last_eb970eb0_0_(_e12))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e14, FeLocal_fe_More_More_Last_60a5ba63_2_(_e16, FeLocal_fe_More_Last_1ac585f5_1_(_e18, FeLocal_fe_Last_eb970eb0_0_(_e20)))))), _e22, _e24, FeLocal_fe_Complex_f32_87ec9249_6_(_e26, _e28)), _e30, _e32, _e34, _e36, _e38, FeLocal_fe_GestureSession_6b679731_14_(FeLocal_fe_Contacts_2_ac13bf77_12_(array<FeLocal_fe_Contact_2b5c3d26_11_, 2>(FeLocal_fe_Contact_2b5c3d26_11_((_e40 != 0u), _e44, FeLocal_fe_Vec2_f32_2772165c_10_(_e46, _e48)), FeLocal_fe_Contact_2b5c3d26_11_((_e50 != 0u), _e54, FeLocal_fe_Vec2_f32_2772165c_10_(_e56, _e58)))), FeLocal_fe_Viewport_91e53b90_13_(FeLocal_fe_Vec2_f32_2772165c_10_(_e60, _e62), FeLocal_fe_Vec2_f32_2772165c_10_(_e64, _e66)), FeLocal_fe_Contacts_2_ac13bf77_12_(array<FeLocal_fe_Contact_2b5c3d26_11_, 2>(FeLocal_fe_Contact_2b5c3d26_11_((_e68 != 0u), _e72, FeLocal_fe_Vec2_f32_2772165c_10_(_e74, _e76)), FeLocal_fe_Contact_2b5c3d26_11_((_e78 != 0u), _e82, FeLocal_fe_Vec2_f32_2772165c_10_(_e84, _e86)))), FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e88, FeLocal_fe_More_More_Last_60a5ba63_2_(_e90, FeLocal_fe_More_Last_1ac585f5_1_(_e92, FeLocal_fe_Last_eb970eb0_0_(_e94))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e96, FeLocal_fe_More_More_Last_60a5ba63_2_(_e98, FeLocal_fe_More_Last_1ac585f5_1_(_e100, FeLocal_fe_Last_eb970eb0_0_(_e102)))))), _e104, _e106, FeLocal_fe_Complex_f32_87ec9249_6_(_e108, _e110))), FeLocal_fe_BackingRequest_2bcae9f8_15_((_e112 != 0u), _e116), FeLocal_fe_CameraTrace_7ca62f00_16_((_e118 != 0u), array<u32, 14>(_e122, _e124, _e126, _e128, _e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148)));
    let _e216 = can_refine(FeLocal_fe_ReferenceControl_7d077120_9_(_e200, _e202, _e204, _e206, _e208, _e210, _e212), (&fixed_local_344_));
    if _e216 {
    } else {
        local_1 = true;
    }
    let _e342 = local_1;
    if _e342 {
    } else {
        let _e224 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e226 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e228 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e230 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e232 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e234 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e236 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e238 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e240 = cache[i32(0u)].camera_u002e_zoom;
        let _e242 = cache[i32(0u)].camera_u002e_res;
        let _e244 = cache[i32(0u)].camera_u002e_orientation_u002e_re;
        let _e246 = cache[i32(0u)].camera_u002e_orientation_u002e_im;
        let _e248 = cache[i32(0u)].cursor;
        let _e250 = cache[i32(0u)].aa;
        let _e252 = cache[i32(0u)].budget;
        let _e254 = cache[i32(0u)].radius;
        let _e256 = cache[i32(0u)].preview_dirty;
        let _e258 = cache[i32(0u)].blur_dirty;
        let _e260 = cache[i32(0u)].epoch;
        let _e262 = cache[i32(0u)].completed;
        let _e277 = for_view(_e22, _e24, (&fe_trapped));
        let _e278 = total_steps(_e277, (&fe_trapped));
        if (_e248 < _e278) {
        } else {
            local_3 = true;
        }
        let _e340 = local_3;
        if _e340 {
        } else {
            let _e282 = advance_cursor(FeLocal_fe_ViewCache_da6e2ccc_8_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e224, FeLocal_fe_More_More_Last_60a5ba63_2_(_e226, FeLocal_fe_More_Last_1ac585f5_1_(_e228, FeLocal_fe_Last_eb970eb0_0_(_e230))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e232, FeLocal_fe_More_More_Last_60a5ba63_2_(_e234, FeLocal_fe_More_Last_1ac585f5_1_(_e236, FeLocal_fe_Last_eb970eb0_0_(_e238)))))), _e240, _e242, FeLocal_fe_Complex_f32_87ec9249_6_(_e244, _e246)), _e248, _e250, _e252, _e254, _e256, _e258, _e260, _e262), _e278, (&fe_trapped));
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e282.camera.center.re.value.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e282.camera.center.re.value.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e282.camera.center.re.value.tail.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e282.camera.center.re.value.tail.tail.tail.value;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e282.camera.center.im.value.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e282.camera.center.im.value.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e282.camera.center.im.value.tail.tail.lead;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e282.camera.center.im.value.tail.tail.tail.value;
            cache[i32(0u)].camera_u002e_zoom = _e282.camera.zoom;
            cache[i32(0u)].camera_u002e_res = _e282.camera.res;
            cache[i32(0u)].camera_u002e_orientation_u002e_re = _e282.camera.orientation.re;
            cache[i32(0u)].camera_u002e_orientation_u002e_im = _e282.camera.orientation.im;
            cache[i32(0u)].cursor = _e282.cursor;
            cache[i32(0u)].aa = _e282.aa;
            cache[i32(0u)].budget = _e282.budget;
            cache[i32(0u)].radius = _e282.radius;
            cache[i32(0u)].preview_dirty = _e282.preview_dirty;
            cache[i32(0u)].blur_dirty = _e282.blur_dirty;
            cache[i32(0u)].epoch = _e282.epoch;
            cache[i32(0u)].completed = _e282.completed;
        }
    }
    let _e344 = fe_trapped;
    trap[0u] = u32(_e344);
}
