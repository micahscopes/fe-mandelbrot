struct FeLocal_fe_Last_eb970eb0_9_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_10_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_9_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_11_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_10_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_12_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_11_,
}

struct FeLocal_fe_Coordinate_bdc10f09_13_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_12_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_14_ {
    re: FeLocal_fe_Coordinate_bdc10f09_13_,
    im: FeLocal_fe_Coordinate_bdc10f09_13_,
}

struct FeLocal_fe_Complex_f32_87ec9249_0_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_15_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_14_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_0_,
}

struct FeLocal_fe_Vec2_f32_2772165c_16_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_17_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_16_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_18_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_17_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_19_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_16_,
    extent: FeLocal_fe_Vec2_f32_2772165c_16_,
}

struct FeLocal_fe_GestureSession_6b679731_20_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_18_,
    viewport: FeLocal_fe_Viewport_91e53b90_19_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_18_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_15_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_21_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_22_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_23_ {
    camera: FeLocal_fe_Camera_03494b0d_15_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_20_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_21_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_22_,
}

struct FeLocal_fe_RefinementSchedule_b8aa1d23_7_ {
    limit: u32,
    rounds: u32,
    quantum: u32,
    sx: u32,
    sy: u32,
    phases: u32,
    aa_stride: u32,
}

struct FeLocal_fe_Pixel_5817280a_5_ {
    x: u32,
    y: u32,
}

struct FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    control: u32,
    epoch: u32,
    payload: FeLocal_fe_Complex_f32_87ec9249_0_,
}

struct FeLocal_fe_CohortPixel_5c31bbba_6_ {
    pixel: FeLocal_fe_Pixel_5817280a_5_,
    active_: bool,
}

struct FeLocal_fe_PixelSample_d22dfa2e_24_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_PlaneSample_375c1fa3_27_ {
    u: f32,
    v: f32,
}

struct FeLocal_fe_PackedReference_e11ca04a_2_ {
    re_w0_bits: u32,
    re_w1_bits: u32,
    re_w2_bits: u32,
    re_w3_bits: u32,
    im_w0_bits: u32,
    im_w1_bits: u32,
    im_w2_bits: u32,
    im_w3_bits: u32,
}

struct FeLocal_fe_ReferenceMetadata_782c1884_25_ {
    valid_samples: u32,
    limit: u32,
}

struct FeLocal_fe_OrbitProgress_96185e10_3_ {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct FeLocal_fe_Color_6b73191a_26_ {
    l: f32,
    a: f32,
    b: f32,
}

struct FeLocal_fe_Oklch_77e78738_4_ {
    l: f32,
    chroma: f32,
    hue: f32,
}

struct FeLocal_fe_ReferenceControl_7d077120_8_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_28_ {
    camera: FeLocal_fe_Camera_03494b0d_15_,
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

struct FeLocal_fe_InvocationId_3c625d5f_29_ {
    x: u32,
    y: u32,
    z: u32,
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

struct progress_pixels_element {
    control: u32,
    epoch: u32,
    payload_u002e_re: f32,
    payload_u002e_im: f32,
}

struct Params {
    p30_: f32,
    p31_: f32,
    p32_: f32,
    p33_: f32,
    p34_: f32,
    p35_: f32,
    p36_: f32,
    p37_: f32,
    p38_: f32,
    p39_: f32,
    p40_: f32,
    p41_: f32,
    p42_: f32,
    p43_: f32,
    p44_: f32,
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
    p55_: f32,
    p56_: f32,
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
    p67_: f32,
    p68_: f32,
    p69_: f32,
    p70_: f32,
    p71_: f32,
    p72_: f32,
    p73_: f32,
    p74_: f32,
    p75_: f32,
    p76_: f32,
    p77_: f32,
    p78_: f32,
    p79_: u32,
    p80_: f32,
    p81_: u32,
    p82_: u32,
    p83_: u32,
    p84_: u32,
    p85_: u32,
    p86_: u32,
    p87_: u32,
    p88_: u32,
    p89_: u32,
    p90_: u32,
    p91_: u32,
    p92_: u32,
    p93_: u32,
    p94_: u32,
    p95_: u32,
}

@group(0) @binding(0)
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(3)
var<storage, read_write> native_pixels: array<u32>;
@group(0) @binding(4)
var<storage, read_write> antialiased_pixels: array<u32>;
@group(0) @binding(5)
var<storage, read_write> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 32768>;

fn is_input_settled(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_23_>) -> bool {
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

fn can_refine(a0_1: FeLocal_fe_ReferenceControl_7d077120_8_, a1_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_23_>) -> bool {
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
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
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

fn for_grid(a0_5: u32, a1_1: u32, a2_: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_7_ {
    var local_20: FeLocal_fe_RefinementSchedule_b8aa1d23_7_;
    var local_21: bool = false;
    var local_22: bool = bool();
    var local_23: FeLocal_fe_RefinementSchedule_b8aa1d23_7_;
    var local_24: bool = false;
    var local_25: u32 = u32();
    var loop_result_2: FeLocal_fe_RefinementSchedule_b8aa1d23_7_;
    var loop_did_return_2: bool = false;
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
                                    loop_result_2 = FeLocal_fe_RefinementSchedule_b8aa1d23_7_(a0_5, ((_e23 - 1u) >> 7u), 128u, a1_1, a2_, (a1_1 * a2_), (a2_ * _e36));
                                    loop_did_return_2 = true;
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            let _e94 = loop_did_return_2;
            if _e94 {
                let _e96 = loop_result_2;
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

fn for_view(a0_6: f32, a1_2: f32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_7_ {
    let _e7 = to_i32_(((a1_2 + 127f) / 128f));
    let _e12 = to_i32_(((a1_2 + 255f) / 256f));
    let _e13 = iteration_limit(a0_6, fe_trapped_4);
    let _e14 = for_grid(_e13, _e7, _e12, fe_trapped_4);
    return _e14;
}

fn refine_steps(a0_7: FeLocal_fe_RefinementSchedule_b8aa1d23_7_, fe_trapped_5: ptr<function, bool>) -> u32 {
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

fn total_steps(a0_8: FeLocal_fe_RefinementSchedule_b8aa1d23_7_, fe_trapped_6: ptr<function, bool>) -> u32 {
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

fn batch(a0_9: FeLocal_fe_RefinementSchedule_b8aa1d23_7_, a1_3: u32, a2_1: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_30: u32;
    var local_31: bool = false;
    var local_32: u32;
    var local_33: bool = false;
    var local_34: u32 = u32();
    var local_35: u32;
    var local_36: bool = false;
    var local_37: u32 = u32();
    var local_38: u32;
    var local_39: bool = false;
    var local_40: u32 = u32();
    var local_41: u32;
    var local_42: bool = false;
    var local_43: u32;
    var local_44: bool = false;
    var local_45: u32 = u32();
    var local_46: u32;
    var local_47: bool = false;
    var local_48: u32 = u32();

    let _e5 = refine_steps(a0_9, fe_trapped_7);
    let _e6 = total_steps(a0_9, fe_trapped_7);
    if ((a1_3 < _e6) == false) {
        local_30 = 0u;
        local_31 = true;
    }
    let _e78 = local_31;
    if _e78 {
    } else {
        if (a2_1 == 0u) {
            local_34 = 1u;
        } else {
            local_34 = a2_1;
        }
        let _e24 = local_34;
        if (a1_3 < 16u) {
            local_37 = 16u;
        } else {
            if (a1_3 < _e5) {
                local_37 = _e5;
            } else {
                local_37 = _e6;
            }
        }
        let _e35 = local_37;
        if (a1_3 < 16u) {
            local_40 = 1u;
        } else {
            if (a1_3 < _e5) {
                local_40 = a0_9.phases;
            } else {
                let _e46 = (a0_9.aa_stride != 0u);
                if (_e46 && (a0_9.aa_stride > (4294967295u / select(1u, a0_9.aa_stride, _e46)))) {
                    (*fe_trapped_7) = true;
                } else {
                    local_40 = (a0_9.aa_stride * a0_9.aa_stride);
                }
            }
        }
        let _e58 = local_40;
        let _e59 = (_e35 - a1_3);
        if (_e35 < a1_3) {
            (*fe_trapped_7) = true;
        }
        if (_e59 < _e58) {
            local_45 = _e59;
        } else {
            local_45 = _e58;
        }
        let _e70 = local_45;
        if (_e24 < _e70) {
            local_48 = _e24;
        } else {
            local_48 = _e70;
        }
        let _e75 = local_48;
        local_30 = _e75;
    }
    let _e80 = local_30;
    return _e80;
}

fn impl_Pixel_index(a0_10: FeLocal_fe_Pixel_5817280a_5_, a1_4: u32) -> u32 {
    return ((a0_10.y << a1_4) | a0_10.x);
}

fn impl_CohortPixel_index(a0_11: FeLocal_fe_CohortPixel_5c31bbba_6_) -> u32 {
    let _e3 = impl_Pixel_index(a0_11.pixel, 11u);
    return _e3;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_();
}

fn initial(a0_12: u32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    let _e1 = default_ge58b();
    return FeLocal_fe_NativeCheckpoint_6a22185c_1_(FeLocal_fe_NativeCheckpoint_6a22185c_1_().control, a0_12, _e1);
}

fn iteration(a0_13: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> u32 {
    return ((a0_13.control >> 14u) & 16383u);
}

fn impl_NativeCheckpoint_is_terminal(a0_14: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_5: u32) -> bool {
    var local_49: bool;
    var local_50: bool = false;
    var local_51: bool = bool();

    let _e4 = iteration(a0_14);
    if ((_e4 < a1_5) == false) {
        local_51 = true;
    } else {
        if (((a0_14.control & 268435456u) == 0u) == false) {
            local_51 = true;
        }
    }
    let _e20 = local_51;
    return _e20;
}

fn impl_trait_Pixel_default() -> FeLocal_fe_Pixel_5817280a_5_ {
    return FeLocal_fe_Pixel_5817280a_5_();
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_CohortPixel_5c31bbba_6_ {
    let _e0 = impl_trait_Pixel_default();
    return FeLocal_fe_CohortPixel_5c31bbba_6_(_e0, false);
}

fn cohort(a0_15: FeLocal_fe_RefinementSchedule_b8aa1d23_7_, a1_6: u32, fe_trapped_8: ptr<function, bool>) -> u32 {
    var local_52: u32;
    var local_53: bool = false;

    if (a0_15.phases == 0u) {
        (*fe_trapped_8) = true;
    }
    return (a1_6 % a0_15.phases);
}

fn from_i32_(a0_16: u32) -> f32 {
    return f32(bitcast<i32>(a0_16));
}

fn phase_offset(a0_17: u32, a1_7: u32, a2_2: u32) -> u32 {
    let _e3 = from_i32_(a0_17);
    let _e6 = from_i32_(a1_7);
    let _e9 = ((_e3 * 0.06711056f) + (_e6 * 0.00583715f));
    let _e10 = to_i32_(_e9);
    let _e11 = from_i32_(_e10);
    let _e14 = ((_e9 - _e11) * 52.982918f);
    let _e15 = to_i32_(_e14);
    let _e16 = from_i32_(_e15);
    let _e18 = from_i32_(a2_2);
    let _e20 = to_i32_(((_e14 - _e16) * _e18));
    return _e20;
}

fn phase_order_rect(a0_18: u32, a1_8: u32, a2_3: u32, a3_: u32, a4_: u32, fe_trapped_9: ptr<function, bool>) -> u32 {
    var local_54: u32;
    var local_55: bool = false;
    var local_56: u32 = u32();

    let _e10 = (a3_ * a4_);
    let _e11 = (a3_ != 0u);
    if (_e11 && (a4_ > (4294967295u / select(1u, a3_, _e11)))) {
    } else {
        let _e17 = phase_offset(a1_8, a2_3, _e10);
        if ((_e17 & 1u) == 0u) {
            local_56 = 1u;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_9) = true;
            } else {
                local_56 = (_e10 - 1u);
            }
        }
        let _e30 = local_56;
        let _e34 = (a0_18 * _e30);
        let _e35 = (a0_18 != 0u);
        if (_e35 && (_e30 > (4294967295u / select(1u, a0_18, _e35)))) {
        } else {
            if (_e34 > (4294967295u - _e17)) {
            } else {
                if (_e10 == 0u) {
                } else {
                    local_54 = ((_e34 + _e17) % _e10);
                    local_55 = true;
                }
                let _e51 = local_55;
                if _e51 {
                }
            }
            let _e53 = local_55;
            if _e53 {
            }
        }
        let _e55 = local_55;
        if _e55 {
        }
    }
    let _e58 = local_55;
    if _e58 {
    } else {
        (*fe_trapped_9) = true;
    }
    let _e60 = local_54;
    return _e60;
}

fn in_extent(a0_19: FeLocal_fe_Pixel_5817280a_5_, a1_9: f32) -> bool {
    var local_57: bool;
    var local_58: bool = false;
    var local_59: bool = bool();

    let _e5 = from_i32_(a0_19.x);
    if (_e5 < a1_9) {
        let _e8 = from_i32_(a0_19.y);
        if (_e8 < a1_9) {
            local_59 = true;
        }
    }
    let _e13 = local_59;
    return _e13;
}

fn at(a0_20: u32, a1_10: u32, a2_4: f32) -> FeLocal_fe_CohortPixel_5c31bbba_6_ {
    let _e3 = FeLocal_fe_Pixel_5817280a_5_(a0_20, a1_10);
    let _e4 = in_extent(_e3, a2_4);
    return FeLocal_fe_CohortPixel_5c31bbba_6_(_e3, _e4);
}

fn rect_pixel(a0_21: FeLocal_fe_RefinementSchedule_b8aa1d23_7_, a1_11: u32, a2_5: u32, a3_1: u32, a4_1: f32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_CohortPixel_5c31bbba_6_ {
    var local_60: FeLocal_fe_CohortPixel_5c31bbba_6_;
    var local_61: bool = false;
    var local_62: FeLocal_fe_CohortPixel_5c31bbba_6_;
    var local_63: bool = false;

    let _e7 = refine_steps(a0_21, fe_trapped_10);
    if ((a1_11 < _e7) == false) {
        let _e11 = impl_trait_CohortPixel_default();
        local_60 = _e11;
        local_61 = true;
    }
    let _e77 = local_61;
    if _e77 {
    } else {
        let _e16 = cohort(a0_21, a1_11, fe_trapped_10);
        let _e19 = phase_order_rect(_e16, a2_5, a3_1, a0_21.sx, a0_21.sy, fe_trapped_10);
        let _e24 = (a2_5 * a0_21.sx);
        let _e25 = (a2_5 != 0u);
        if (_e25 && (a0_21.sx > (4294967295u / select(1u, a2_5, _e25)))) {
        } else {
            if (a0_21.sx == 0u) {
            } else {
                let _e33 = (_e19 % a0_21.sx);
                if (_e24 > (4294967295u - _e33)) {
                } else {
                    let _e42 = (a3_1 * a0_21.sy);
                    let _e43 = (a3_1 != 0u);
                    if (_e43 && (a0_21.sy > (4294967295u / select(1u, a3_1, _e43)))) {
                    } else {
                        if (a0_21.sx == 0u) {
                        } else {
                            let _e51 = (_e19 / a0_21.sx);
                            if (_e42 > (4294967295u - _e51)) {
                            } else {
                                let _e56 = at((_e24 + _e33), (_e42 + _e51), a4_1);
                                local_62 = _e56;
                                local_63 = true;
                            }
                            let _e61 = local_63;
                            if _e61 {
                            }
                        }
                        let _e63 = local_63;
                        if _e63 {
                        }
                    }
                    let _e65 = local_63;
                    if _e65 {
                    }
                }
                let _e67 = local_63;
                if _e67 {
                }
            }
            let _e69 = local_63;
            if _e69 {
            }
        }
        let _e72 = local_63;
        if _e72 {
        } else {
            (*fe_trapped_10) = true;
        }
        let _e74 = local_62;
        local_60 = _e74;
    }
    let _e79 = local_60;
    return _e79;
}

fn ordered_2x2_(a0_22: u32, a1_12: u32) -> FeLocal_fe_PixelSample_d22dfa2e_24_ {
    let _e6 = from_i32_(a0_22);
    let _e9 = from_i32_((a0_22 & 1u));
    let _e13 = from_i32_(a1_12);
    let _e16 = from_i32_((a1_12 & 1u));
    return FeLocal_fe_PixelSample_d22dfa2e_24_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn impl_Pixel_sample(a0_23: FeLocal_fe_Pixel_5817280a_5_) -> FeLocal_fe_PixelSample_d22dfa2e_24_ {
    let _e3 = ordered_2x2_(a0_23.x, a0_23.y);
    return _e3;
}

fn impl_CohortPixel_sample(a0_24: FeLocal_fe_CohortPixel_5c31bbba_6_) -> FeLocal_fe_PixelSample_d22dfa2e_24_ {
    let _e2 = impl_Pixel_sample(a0_24.pixel);
    return _e2;
}

fn plane(a0_25: FeLocal_fe_PixelSample_d22dfa2e_24_, a1_13: f32) -> FeLocal_fe_PlaneSample_375c1fa3_27_ {
    return FeLocal_fe_PlaneSample_375c1fa3_27_((((a0_25.x / a1_13) * 2f) - 1f), (1f - ((a0_25.y / a1_13) * 2f)));
}

fn center_offset(a0_26: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(bitcast<f32>(a0_26.re_w2_bits), bitcast<f32>(a0_26.re_w3_bits));
}

fn scale(a0_27: FeLocal_fe_Complex_f32_87ec9249_0_, a1_14: f32) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_27.re * a1_14), (a0_27.im * a1_14));
}

fn impl_trait_Complex_one_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(1f, 0f);
}

fn eq(a0_28: FeLocal_fe_Complex_f32_87ec9249_0_, a1_15: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_64: bool;
    var local_65: bool = false;
    var local_66: bool = bool();

    if (a0_28.re == a1_15.re) {
        if (a0_28.im == a1_15.im) {
            local_66 = true;
        }
    }
    let _e13 = local_66;
    return _e13;
}

fn mul(a0_29: FeLocal_fe_Complex_f32_87ec9249_0_, a1_16: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(((a0_29.re * a1_16.re) - (a0_29.im * a1_16.im)), ((a0_29.re * a1_16.im) + (a0_29.im * a1_16.re)));
}

fn plane_offset(a0_30: FeLocal_fe_Camera_03494b0d_15_, a1_17: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_67: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_68: bool = false;
    var local_69: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();

    let _e5 = scale(a1_17, a0_30.zoom);
    let _e7 = impl_trait_Complex_one_ge58b();
    let _e8 = eq(a0_30.orientation, _e7);
    if _e8 {
        local_69 = _e5;
    } else {
        let _e10 = mul(a0_30.orientation, _e5);
        local_69 = _e10;
    }
    let _e14 = local_69;
    return _e14;
}

fn add(a0_31: FeLocal_fe_Complex_f32_87ec9249_0_, a1_18: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_31.re + a1_18.re), (a0_31.im + a1_18.im));
}

fn pixel_delta_from_reference(a1_19: u32, a2_6: FeLocal_fe_Camera_03494b0d_15_, a3_2: FeLocal_fe_PixelSample_d22dfa2e_24_, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_70: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_71: bool = false;

    let _e7 = plane(a3_2, a2_6.res);
    if (a1_19 > (4294967295u - 8194u)) {
        (*fe_trapped_11) = true;
    }
    let _e17 = orbit[i32((a1_19 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_19 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_19 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_19 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_19 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_19 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_19 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_19 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_PackedReference_e11ca04a_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e37 = plane_offset(a2_6, FeLocal_fe_Complex_f32_87ec9249_0_(_e7.u, _e7.v));
    let _e38 = add(_e33, _e37);
    return _e38;
}

fn impl_NativeCheckpoint_reference_index(a0_32: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> u32 {
    return (a0_32.control & 16383u);
}

fn decode_metadata(a0_33: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_ReferenceMetadata_782c1884_25_ {
    return FeLocal_fe_ReferenceMetadata_782c1884_25_(a0_33.re_w0_bits, a0_33.re_w1_bits);
}

fn impl_NativeCheckpoint_delta(a0_34: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return a0_34.payload;
}

fn from_continuation(a0_35: FeLocal_fe_Complex_f32_87ec9249_0_, a1_20: FeLocal_fe_Complex_f32_87ec9249_0_, a2_7: u32, a3_3: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_OrbitProgress_96185e10_3_ {
    return FeLocal_fe_OrbitProgress_96185e10_3_(a0_35.re, a0_35.im, a1_20.re, a1_20.im, a2_7, a3_3, a4_2, a5_);
}

fn impl_OrbitProgress_delta(a0_36: FeLocal_fe_OrbitProgress_96185e10_3_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_36.dz_re, a0_36.dz_im);
}

fn position(a0_37: FeLocal_fe_OrbitProgress_96185e10_3_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_37.z_re, a0_37.z_im);
}

fn progress_reference_index(a0_38: u32) -> u32 {
    return (a0_38 & 536870911u);
}

fn impl_OrbitProgress_reference_index(a0_39: FeLocal_fe_OrbitProgress_96185e10_3_) -> u32 {
    let _e2 = progress_reference_index(a0_39.reference_i);
    return _e2;
}

fn progress_is_escaped(a0_40: u32) -> bool {
    return (((a0_40 & 2147483648u) == 0u) == false);
}

fn impl_OrbitProgress_is_escaped(a0_41: FeLocal_fe_OrbitProgress_96185e10_3_) -> bool {
    let _e2 = progress_is_escaped(a0_41.reference_i);
    return _e2;
}

fn progress_is_glitched(a0_42: u32) -> bool {
    return (((a0_42 & 1073741824u) == 0u) == false);
}

fn impl_OrbitProgress_is_glitched(a0_43: FeLocal_fe_OrbitProgress_96185e10_3_) -> bool {
    let _e2 = progress_is_glitched(a0_43.reference_i);
    return _e2;
}

fn is_invalid(a0_44: FeLocal_fe_PackedReference_e11ca04a_2_) -> bool {
    var local_72: bool;
    var local_73: bool = false;
    var local_74: bool = bool();

    if (a0_44.re_w0_bits == 2143289344u) {
        local_74 = true;
    } else {
        if (a0_44.im_w0_bits == 2143289344u) {
            local_74 = true;
        }
    }
    let _e14 = local_74;
    return _e14;
}

fn head(a0_45: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(bitcast<f32>(a0_45.re_w0_bits), bitcast<f32>(a0_45.im_w0_bits));
}

fn tail(a0_46: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(bitcast<f32>(a0_46.re_w1_bits), bitcast<f32>(a0_46.im_w1_bits));
}

fn perturb(a0_47: FeLocal_fe_Complex_f32_87ec9249_0_, a1_21: FeLocal_fe_Complex_f32_87ec9249_0_, a2_8: FeLocal_fe_Complex_f32_87ec9249_0_, a3_4: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e8 = ((2f * a0_47.re) + a2_8.re);
    let _e13 = ((2f * a0_47.im) + a2_8.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(((((_e8 * a2_8.re) - (_e13 * a2_8.im)) + (2f * ((a1_21.re * a2_8.re) - (a1_21.im * a2_8.im)))) + a3_4.re), ((((_e8 * a2_8.im) + (_e13 * a2_8.re)) + (2f * ((a1_21.re * a2_8.im) + (a1_21.im * a2_8.re)))) + a3_4.im));
}

fn target_value(a0_48: FeLocal_fe_Complex_f32_87ec9249_0_, a1_22: FeLocal_fe_Complex_f32_87ec9249_0_, a2_9: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(((a0_48.re + a2_9.re) + a1_22.re), ((a0_48.im + a2_9.im) + a1_22.im));
}

fn norm_squared(a0_49: FeLocal_fe_Complex_f32_87ec9249_0_) -> f32 {
    return ((a0_49.re * a0_49.re) + (a0_49.im * a0_49.im));
}

fn pack_progress_reference(a0_50: u32, a1_23: u32, a2_10: u32) -> u32 {
    return (((a0_50 & 536870911u) | (a1_23 << 31u)) | (a2_10 << 30u));
}

fn non_finite(a0_51: f32) -> bool {
    return (((a0_51 - a0_51) == 0f) == false);
}

fn is_non_finite_complex(a0_52: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_75: bool;
    var local_76: bool = false;
    var local_77: bool = bool();

    let _e4 = non_finite(a0_52.re);
    if _e4 {
        local_77 = true;
    } else {
        let _e6 = non_finite(a0_52.im);
        if _e6 {
            local_77 = true;
        }
    }
    let _e12 = local_77;
    return _e12;
}

fn impl_trait_f32_abs(a0_53: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_53) & 2147483647u));
}

fn impl_trait_f32_max(a0_54: f32, a1_24: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_54);
    let _e3 = bitcast<u32>(a1_24);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress_step(a0_55: FeLocal_fe_OrbitProgress_96185e10_3_, a1_25: FeLocal_fe_Complex_f32_87ec9249_0_, a2_11: FeLocal_fe_PackedReference_e11ca04a_2_, a3_5: FeLocal_fe_PackedReference_e11ca04a_2_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_3_ {
    var local_78: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_79: bool = false;
    var local_80: u32 = u32();
    var local_81: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_82: bool = false;
    var local_83: u32 = u32();
    var local_84: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_85: bool = false;
    var local_86: f32 = f32();
    var local_87: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_88: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_89: u32 = u32();
    var local_90: u32 = u32();
    var local_91: u32 = u32();
    var local_92: bool = bool();
    var local_93: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_94: bool = false;

    let _e7 = impl_OrbitProgress_delta(a0_55);
    let _e8 = position(a0_55);
    let _e9 = impl_OrbitProgress_reference_index(a0_55);
    let _e10 = impl_OrbitProgress_is_escaped(a0_55);
    if _e10 {
        local_80 = 1u;
    }
    let _e16 = local_80;
    let _e17 = impl_OrbitProgress_is_glitched(a0_55);
    if _e17 {
        local_83 = 1u;
    }
    let _e28 = local_83;
    let _e30 = is_invalid(a2_11);
    if _e30 {
        local_86 = a0_55.magnitude;
        local_87 = _e8;
        local_88 = _e7;
        local_89 = 1u;
        local_90 = _e16;
        local_91 = _e9;
    } else {
        let _e31 = is_invalid(a3_5);
        if _e31 {
            local_86 = a0_55.magnitude;
            local_87 = _e8;
            local_88 = _e7;
            local_89 = 1u;
            local_90 = _e16;
            local_91 = _e9;
        } else {
            let _e33 = head(a2_11);
            let _e34 = tail(a2_11);
            let _e35 = perturb(_e33, _e34, _e7, a1_25);
            let _e36 = head(a3_5);
            let _e37 = tail(a3_5);
            let _e38 = target_value(_e36, _e37, _e35);
            let _e39 = norm_squared(_e38);
            let _e40 = norm_squared(_e35);
            if (4f < _e39) {
                let _e46 = impl_trait_f32_abs((_e39 - 4f));
                let _e48 = impl_trait_f32_max(1f, _e39);
                if (_e46 <= (0.000004f * _e48)) {
                    local_92 = true;
                }
            }
            let _e55 = local_92;
            let _e56 = is_non_finite_complex(_e35);
            if _e56 {
                local_86 = a0_55.magnitude;
                local_87 = _e8;
                local_88 = _e7;
                local_89 = 1u;
                local_90 = _e16;
                local_91 = _e9;
            } else {
                let _e57 = non_finite(_e39);
                if (_e57 | _e55) {
                    local_86 = a0_55.magnitude;
                    local_87 = _e8;
                    local_88 = _e7;
                    local_89 = 1u;
                    local_90 = _e16;
                    local_91 = _e9;
                } else {
                    if (4f < _e39) {
                        local_86 = _e39;
                        local_87 = _e38;
                        local_88 = _e35;
                        local_89 = _e28;
                        local_90 = 1u;
                        local_91 = _e9;
                    } else {
                        if (_e39 < _e40) {
                            local_86 = a0_55.magnitude;
                            local_87 = _e38;
                            local_88 = _e38;
                            local_89 = _e28;
                            local_90 = _e16;
                        } else {
                            if (_e9 > (4294967295u - 1u)) {
                                (*fe_trapped_12) = true;
                            } else {
                                local_86 = a0_55.magnitude;
                                local_87 = _e38;
                                local_88 = _e35;
                                local_89 = _e28;
                                local_90 = _e16;
                                local_91 = (_e9 + 1u);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e115 = local_86;
    let _e117 = local_87;
    let _e119 = local_88;
    let _e121 = local_89;
    let _e123 = local_90;
    let _e125 = local_91;
    let _e126 = pack_progress_reference(_e125, _e123, _e121);
    if (a0_55.iteration > (4294967295u - 1u)) {
        (*fe_trapped_12) = true;
    }
    let _e135 = from_continuation(_e119, _e117, _e126, (a0_55.iteration + 1u), a0_55.epoch, _e115);
    return _e135;
}

fn progress_is_presentable(a0_56: u32) -> bool {
    return (((a0_56 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_57: u32) -> bool {
    return (((a0_57 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_58: u32, a1_26: u32, a2_12: u32) -> bool {
    var local_95: bool;
    var local_96: bool = false;
    var local_97: bool = bool();

    if ((a1_26 < a2_12) == false) {
        local_97 = true;
    } else {
        let _e8 = progress_has_outcome(a0_58);
        if _e8 {
            local_97 = true;
        } else {
            let _e9 = progress_is_presentable(a0_58);
            if _e9 {
                local_97 = true;
            }
        }
    }
    let _e17 = local_97;
    return _e17;
}

fn impl_OrbitProgress_is_terminal(a0_59: FeLocal_fe_OrbitProgress_96185e10_3_, a1_27: u32) -> bool {
    let _e4 = progress_is_terminal(a0_59.reference_i, a0_59.iteration, a1_27);
    return _e4;
}

fn progress_outcome_flags(a0_60: u32) -> u32 {
    return (a0_60 & 3221225472u);
}

fn outcome_flags(a0_61: FeLocal_fe_OrbitProgress_96185e10_3_) -> u32 {
    let _e2 = progress_outcome_flags(a0_61.reference_i);
    return _e2;
}

fn advance(a0_62: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_28: FeLocal_fe_Complex_f32_87ec9249_0_, a2_13: FeLocal_fe_PackedReference_e11ca04a_2_, a3_6: FeLocal_fe_PackedReference_e11ca04a_2_, a4_3: u32, a5_1: u32, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_98: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_99: bool = false;
    var local_100: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_101: bool = false;
    var local_102: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();

    let _e8 = impl_NativeCheckpoint_is_terminal(a0_62, a5_1);
    if _e8 {
        local_98 = a0_62;
        local_99 = true;
    }
    let _e63 = local_99;
    if _e63 {
    } else {
        let _e14 = impl_NativeCheckpoint_delta(a0_62);
        let _e15 = default_ge58b();
        let _e16 = impl_NativeCheckpoint_reference_index(a0_62);
        let _e17 = iteration(a0_62);
        let _e20 = from_continuation(_e14, _e15, _e16, _e17, a0_62.epoch, 4f);
        let _e21 = advance_progress_step(_e20, a1_28, a2_13, a3_6, fe_trapped_13);
        let _e25 = impl_OrbitProgress_reference_index(_e21);
        let _e26 = ((_e21.iteration << 14u) | _e25);
        let _e27 = impl_OrbitProgress_is_terminal(_e21, a5_1);
        if _e27 {
            let _e28 = outcome_flags(_e21);
            local_102 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(((_e26 | _e28) | 268435456u), a0_62.epoch, FeLocal_fe_Complex_f32_87ec9249_0_(_e21.magnitude, 0f));
        } else {
            let _e37 = impl_OrbitProgress_reference_index(_e21);
            if (_e37 > (4294967295u - 1u)) {
                (*fe_trapped_13) = true;
            } else {
                if (((_e37 + 1u) < a4_3) == false) {
                    let _e51 = position(_e21);
                    local_102 = FeLocal_fe_NativeCheckpoint_6a22185c_1_((_e21.iteration << 14u), a0_62.epoch, _e51);
                } else {
                    let _e54 = impl_OrbitProgress_delta(_e21);
                    local_102 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(_e26, a0_62.epoch, _e54);
                }
            }
        }
        let _e60 = local_102;
        local_98 = _e60;
    }
    let _e65 = local_98;
    return _e65;
}

fn continue_native_pixel(a1_29: u32, a2_14: FeLocal_fe_Camera_03494b0d_15_, a3_7: FeLocal_fe_PixelSample_d22dfa2e_24_, a4_4: u32, a5_2: u32, a6_: FeLocal_fe_NativeCheckpoint_6a22185c_1_, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_103: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_104: bool = false;
    var local_105: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();
    var local_106: u32 = u32();
    var loop_result_3: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_56_: bool;

    let _e9 = pixel_delta_from_reference(a1_29, a2_14, a3_7, fe_trapped_14);
    if (a1_29 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_29 + 8194u))].re_w0_bits;
        let _e20 = orbit[i32((a1_29 + 8194u))].re_w1_bits;
        let _e22 = orbit[i32((a1_29 + 8194u))].re_w2_bits;
        let _e24 = orbit[i32((a1_29 + 8194u))].re_w3_bits;
        let _e26 = orbit[i32((a1_29 + 8194u))].im_w0_bits;
        let _e28 = orbit[i32((a1_29 + 8194u))].im_w1_bits;
        let _e30 = orbit[i32((a1_29 + 8194u))].im_w2_bits;
        let _e32 = orbit[i32((a1_29 + 8194u))].im_w3_bits;
        let _e34 = decode_metadata(FeLocal_fe_PackedReference_e11ca04a_2_(_e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32));
        local_105 = a6_;
        local_106 = 0u;
        loop {
            let _e43 = local_105;
            let _e45 = local_106;
            let _e46 = (_e45 < a5_2);
            loop_header_carry_56_ = _e46;
            if _e46 {
                let _e47 = impl_NativeCheckpoint_is_terminal(_e43, a4_4);
                if (_e47 == false) {
                } else {
                    loop_result_3 = _e43;
                    loop_did_return_3 = true;
                    break;
                }
                let _e53 = impl_NativeCheckpoint_reference_index(_e43);
                let _e55 = (a1_29 + _e53);
                if (a1_29 > (4294967295u - _e53)) {
                } else {
                    let _e61 = orbit[i32(_e55)].re_w0_bits;
                    let _e63 = orbit[i32(_e55)].re_w1_bits;
                    let _e65 = orbit[i32(_e55)].re_w2_bits;
                    let _e67 = orbit[i32(_e55)].re_w3_bits;
                    let _e69 = orbit[i32(_e55)].im_w0_bits;
                    let _e71 = orbit[i32(_e55)].im_w1_bits;
                    let _e73 = orbit[i32(_e55)].im_w2_bits;
                    let _e75 = orbit[i32(_e55)].im_w3_bits;
                    if (_e55 > (4294967295u - 1u)) {
                        (*fe_trapped_14) = true;
                        break;
                    }
                    let _e86 = orbit[i32((_e55 + 1u))].re_w0_bits;
                    let _e88 = orbit[i32((_e55 + 1u))].re_w1_bits;
                    let _e90 = orbit[i32((_e55 + 1u))].re_w2_bits;
                    let _e92 = orbit[i32((_e55 + 1u))].re_w3_bits;
                    let _e94 = orbit[i32((_e55 + 1u))].im_w0_bits;
                    let _e96 = orbit[i32((_e55 + 1u))].im_w1_bits;
                    let _e98 = orbit[i32((_e55 + 1u))].im_w2_bits;
                    let _e100 = orbit[i32((_e55 + 1u))].im_w3_bits;
                    let _e102 = advance(_e43, _e9, FeLocal_fe_PackedReference_e11ca04a_2_(_e61, _e63, _e65, _e67, _e69, _e71, _e73, _e75), FeLocal_fe_PackedReference_e11ca04a_2_(_e86, _e88, _e90, _e92, _e94, _e96, _e98, _e100), _e34.valid_samples, a4_4, fe_trapped_14);
                    local_105 = _e102;
                    local_106 = (_e45 + 1u);
                    continue;
                }
                (*fe_trapped_14) = true;
                break;
            } else {
                loop_result_3 = _e43;
                loop_did_return_3 = true;
                break;
            }
        }
        let _e113 = loop_did_return_3;
        if _e113 {
            let _e115 = loop_result_3;
            local_103 = _e115;
            local_104 = true;
        }
    }
    let _e121 = local_104;
    if _e121 {
    } else {
        (*fe_trapped_14) = true;
    }
    let _e123 = local_103;
    return _e123;
}

fn magnitude(a0_63: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> f32 {
    var local_107: f32;
    var local_108: bool = false;
    var local_109: f32 = f32();

    if (((a0_63.control & 268435456u) == 0u) == false) {
        local_109 = a0_63.payload.re;
    } else {
        local_109 = 4f;
    }
    let _e16 = local_109;
    return _e16;
}

fn with_fade_start(a0_64: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_30: f32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    let _e8 = magnitude(a0_64);
    return FeLocal_fe_NativeCheckpoint_6a22185c_1_(((a0_64.control | 268435456u) | 536870912u), a0_64.epoch, FeLocal_fe_Complex_f32_87ec9249_0_(_e8, a1_30));
}

fn present_if_terminal(a0_65: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_31: u32, a2_15: f32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_110: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_111: bool = false;
    var local_112: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();

    let _e5 = impl_NativeCheckpoint_is_terminal(a0_65, a1_31);
    if _e5 {
        let _e6 = with_fade_start(a0_65, a2_15);
        local_112 = _e6;
    } else {
        local_112 = a0_65;
    }
    let _e10 = local_112;
    return _e10;
}

fn impl_NativeCheckpoint_is_glitched(a0_66: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> bool {
    let _e2 = progress_is_glitched(a0_66.control);
    return _e2;
}

fn clamp_(a0_67: f32, a1_32: f32, a2_16: f32) -> f32 {
    var local_113: f32;
    var local_114: bool = false;
    var local_115: f32 = f32();

    if (a0_67 < a1_32) {
        local_115 = a1_32;
    } else {
        if (a2_16 < a0_67) {
            local_115 = a2_16;
        } else {
            local_115 = a0_67;
        }
    }
    let _e11 = local_115;
    return _e11;
}

fn pack_lab(a0_68: FeLocal_fe_Color_6b73191a_26_) -> u32 {
    let _e4 = clamp_(a0_68.l, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_68.a * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_68.b * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_26_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_NativeCheckpoint_is_escaped(a0_69: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> bool {
    let _e2 = progress_is_escaped(a0_69.control);
    return _e2;
}

fn impl_trait_f32_floor(a0_70: f32) -> f32 {
    return floor(a0_70);
}

fn fract_(a0_71: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_71);
    return (a0_71 - _e1);
}

fn anchor(a0_72: u32) -> FeLocal_fe_Oklch_77e78738_4_ {
    var local_116: FeLocal_fe_Oklch_77e78738_4_;
    var local_117: bool = false;
    var local_118: FeLocal_fe_Oklch_77e78738_4_ = FeLocal_fe_Oklch_77e78738_4_();

    switch a0_72 {
        case 0u: {
            local_118 = FeLocal_fe_Oklch_77e78738_4_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_118 = FeLocal_fe_Oklch_77e78738_4_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_118 = FeLocal_fe_Oklch_77e78738_4_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_118 = FeLocal_fe_Oklch_77e78738_4_(0.73f, 0.142f, 165f);
        }
        default: {
            local_118 = FeLocal_fe_Oklch_77e78738_4_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_118;
    return _e29;
}

fn hue_remainder(a0_73: f32) -> f32 {
    var local_119: f32;
    var local_120: bool = false;
    var local_121: f32;
    var local_122: bool = false;
    var local_123: f32;
    var local_124: bool = false;
    var local_125: f32 = f32();
    var local_126: f32;
    var local_127: bool = false;
    var local_128: f32 = f32();
    var local_129: u32 = u32();
    var local_130: u32 = u32();
    var loop_result_4: f32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_51_: bool;
    var local_131: f32;
    var local_132: bool = false;
    var local_133: f32 = f32();

    let _e4 = (bitcast<u32>(a0_73) & 2147483647u);
    if (_e4 < 1135869952u) {
        local_119 = a0_73;
        local_120 = true;
    }
    let _e89 = local_120;
    if _e89 {
    } else {
        let _e12 = (_e4 >> 23u);
        if (_e12 == 255u) {
            local_121 = a0_73;
            local_122 = true;
        }
        let _e84 = local_122;
        if _e84 {
        } else {
            if (a0_73 < 0f) {
                local_125 = -(a0_73);
            } else {
                local_125 = a0_73;
            }
            let _e28 = local_125;
            if (_e12 < 150u) {
                let _e31 = to_i32_(_e28);
                let _e34 = from_i32_((_e31 % 360u));
                let _e35 = from_i32_(_e31);
                local_128 = (_e34 + (_e28 - _e35));
            } else {
                local_129 = (((_e4 & 8388607u) | 8388608u) % 360u);
                local_130 = (_e12 - 150u);
                loop {
                    let _e52 = local_129;
                    let _e54 = local_130;
                    let _e56 = (0u < _e54);
                    loop_header_carry_51_ = _e56;
                    if _e56 {
                        local_129 = ((_e52 << 1u) % 360u);
                        local_130 = (_e54 - 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                let _e67 = local_129;
                let _e68 = from_i32_(_e67);
                local_128 = _e68;
            }
            let _e74 = local_128;
            if (a0_73 < 0f) {
                local_133 = -(_e74);
            } else {
                local_133 = _e74;
            }
            let _e81 = local_133;
            local_121 = _e81;
        }
        let _e86 = local_121;
        local_119 = _e86;
    }
    let _e91 = local_119;
    return _e91;
}

fn interpolate(a0_74: FeLocal_fe_Oklch_77e78738_4_, a1_33: FeLocal_fe_Oklch_77e78738_4_, a2_17: f32) -> FeLocal_fe_Oklch_77e78738_4_ {
    var local_134: FeLocal_fe_Oklch_77e78738_4_;
    var local_135: bool = false;
    var local_136: bool = bool();
    var local_137: FeLocal_fe_Oklch_77e78738_4_;
    var local_138: bool = false;
    var local_139: f32 = f32();
    var local_140: FeLocal_fe_Oklch_77e78738_4_;
    var local_141: bool = false;
    var local_142: f32 = f32();
    var local_143: FeLocal_fe_Oklch_77e78738_4_;
    var local_144: bool = false;
    var local_145: f32 = f32();
    var local_146: FeLocal_fe_Oklch_77e78738_4_;
    var local_147: bool = false;
    var local_148: f32 = f32();
    var local_149: f32 = f32();

    let _e7 = (a1_33.hue - a0_74.hue);
    if (-540f <= a0_74.hue) {
        if (a0_74.hue <= 540f) {
            if (-540f <= a1_33.hue) {
                if (a1_33.hue <= 540f) {
                    if (-540f <= _e7) {
                        if (_e7 <= 540f) {
                            local_136 = true;
                        }
                    }
                }
            }
        }
    }
    let _e29 = local_136;
    if _e29 {
        local_139 = a0_74.hue;
    } else {
        let _e32 = hue_remainder(a0_74.hue);
        local_139 = _e32;
    }
    let _e38 = local_139;
    if _e29 {
        local_142 = _e7;
    } else {
        let _e40 = hue_remainder(a1_33.hue);
        local_142 = (_e40 - _e38);
    }
    let _e47 = local_142;
    if (180f < _e47) {
        local_145 = (_e47 - 360f);
    } else {
        if (_e47 < -180f) {
            local_145 = (_e47 + 360f);
        } else {
            local_145 = _e47;
        }
    }
    let _e62 = local_145;
    if (_e29 == false) {
        if (180f < _e62) {
            local_149 = (_e62 - 360f);
        } else {
            if (_e62 < -180f) {
                local_149 = (_e62 + 360f);
            } else {
                local_149 = _e62;
            }
        }
        let _e78 = local_149;
        if (_e78 == -180f) {
            if (a0_74.hue < a1_33.hue) {
                local_148 = 180f;
            } else {
                if (_e78 == 180f) {
                    if (a1_33.hue < a0_74.hue) {
                        local_148 = -180f;
                    } else {
                        local_148 = _e78;
                    }
                } else {
                    local_148 = _e78;
                }
            }
        } else {
            if (_e78 == 180f) {
                if (a1_33.hue < a0_74.hue) {
                    local_148 = -180f;
                } else {
                    local_148 = _e78;
                }
            } else {
                local_148 = _e78;
            }
        }
    } else {
        local_148 = _e62;
    }
    let _e106 = local_148;
    return FeLocal_fe_Oklch_77e78738_4_((a0_74.l + ((a1_33.l - a0_74.l) * a2_17)), (a0_74.chroma + ((a1_33.chroma - a0_74.chroma) * a2_17)), (_e38 + (_e106 * a2_17)));
}

fn wrap_pi(a0_75: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_75 / 6.2831855f) + 0.5f));
    return (a0_75 - (6.2831855f * _e5));
}

fn sin_(a0_76: f32) -> f32 {
    let _e1 = wrap_pi(a0_76);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_77: f32) -> f32 {
    let _e3 = sin_((a0_77 + 1.5707964f));
    return _e3;
}

fn to_color(a0_78: FeLocal_fe_Oklch_77e78738_4_) -> FeLocal_fe_Color_6b73191a_26_ {
    let _e3 = (a0_78.hue * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_Color_6b73191a_26_(a0_78.l, (a0_78.chroma * _e6), (a0_78.chroma * _e9));
}

fn escape_palette(a0_79: u32, a1_34: f32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_150: u32;
    var local_151: bool = false;
    var local_152: u32 = u32();

    let _e5 = from_i32_(a0_79);
    let _e11 = fract_(((_e5 + (4f / a1_34)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_15) = true;
        } else {
            local_152 = _e29;
        }
    }
    let _e38 = local_152;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_26_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn color(a0_80: FeLocal_fe_NativeCheckpoint_6a22185c_1_, fe_trapped_16: ptr<function, bool>) -> u32 {
    var local_153: u32;
    var local_154: bool = false;
    var local_155: u32 = u32();

    let _e4 = impl_NativeCheckpoint_is_glitched(a0_80);
    if _e4 {
        let _e5 = glitch();
        local_155 = _e5;
    } else {
        let _e6 = impl_NativeCheckpoint_is_escaped(a0_80);
        if _e6 {
            let _e7 = iteration(a0_80);
            let _e8 = magnitude(a0_80);
            let _e9 = escape_palette(_e7, _e8, fe_trapped_16);
            local_155 = _e9;
        } else {
            let _e10 = interior();
            local_155 = _e10;
        }
    }
    let _e15 = local_155;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_357_: FeLocal_fe_MandelbrotViewState_c524184f_23_ = FeLocal_fe_MandelbrotViewState_c524184f_23_();
    var local_2: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_588_: bool;
    var local_3: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();

    let _e13 = params.p30_;
    let _e15 = params.p31_;
    let _e17 = params.p32_;
    let _e19 = params.p33_;
    let _e21 = params.p34_;
    let _e23 = params.p35_;
    let _e25 = params.p36_;
    let _e27 = params.p37_;
    let _e29 = params.p38_;
    let _e31 = params.p39_;
    let _e33 = params.p40_;
    let _e35 = params.p41_;
    let _e37 = params.p42_;
    let _e39 = params.p43_;
    let _e41 = params.p44_;
    let _e43 = params.p45_;
    let _e45 = params.p46_;
    let _e47 = params.p47_;
    let _e51 = params.p48_;
    let _e53 = params.p49_;
    let _e55 = params.p50_;
    let _e57 = params.p51_;
    let _e61 = params.p52_;
    let _e63 = params.p53_;
    let _e65 = params.p54_;
    let _e67 = params.p55_;
    let _e69 = params.p56_;
    let _e71 = params.p57_;
    let _e73 = params.p58_;
    let _e75 = params.p59_;
    let _e79 = params.p60_;
    let _e81 = params.p61_;
    let _e83 = params.p62_;
    let _e85 = params.p63_;
    let _e89 = params.p64_;
    let _e91 = params.p65_;
    let _e93 = params.p66_;
    let _e95 = params.p67_;
    let _e97 = params.p68_;
    let _e99 = params.p69_;
    let _e101 = params.p70_;
    let _e103 = params.p71_;
    let _e105 = params.p72_;
    let _e107 = params.p73_;
    let _e109 = params.p74_;
    let _e111 = params.p75_;
    let _e113 = params.p76_;
    let _e115 = params.p77_;
    let _e117 = params.p78_;
    let _e119 = params.p79_;
    let _e123 = params.p80_;
    let _e125 = params.p81_;
    let _e129 = params.p82_;
    let _e131 = params.p83_;
    let _e133 = params.p84_;
    let _e135 = params.p85_;
    let _e137 = params.p86_;
    let _e139 = params.p87_;
    let _e141 = params.p88_;
    let _e143 = params.p89_;
    let _e145 = params.p90_;
    let _e147 = params.p91_;
    let _e149 = params.p92_;
    let _e151 = params.p93_;
    let _e153 = params.p94_;
    let _e155 = params.p95_;
    let _e169 = FeLocal_fe_Camera_03494b0d_15_(FeLocal_fe_Complex_Coordinate_d4657101_14_(FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e13, FeLocal_fe_More_More_Last_60a5ba63_11_(_e15, FeLocal_fe_More_Last_1ac585f5_10_(_e17, FeLocal_fe_Last_eb970eb0_9_(_e19))))), FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e21, FeLocal_fe_More_More_Last_60a5ba63_11_(_e23, FeLocal_fe_More_Last_1ac585f5_10_(_e25, FeLocal_fe_Last_eb970eb0_9_(_e27)))))), _e29, _e31, FeLocal_fe_Complex_f32_87ec9249_0_(_e33, _e35));
    let _e207 = reference[i32(0u)].active_;
    let _e209 = reference[i32(0u)].active_valid;
    let _e211 = reference[i32(0u)].pending;
    let _e213 = reference[i32(0u)].index;
    let _e215 = reference[i32(0u)].zx_s;
    let _e217 = reference[i32(0u)].zy_s;
    let _e219 = reference[i32(0u)].ready_at;
    fixed_local_357_ = FeLocal_fe_MandelbrotViewState_c524184f_23_(_e169, _e37, _e39, _e41, _e43, _e45, FeLocal_fe_GestureSession_6b679731_20_(FeLocal_fe_Contacts_2_ac13bf77_18_(array<FeLocal_fe_Contact_2b5c3d26_17_, 2>(FeLocal_fe_Contact_2b5c3d26_17_((_e47 != 0u), _e51, FeLocal_fe_Vec2_f32_2772165c_16_(_e53, _e55)), FeLocal_fe_Contact_2b5c3d26_17_((_e57 != 0u), _e61, FeLocal_fe_Vec2_f32_2772165c_16_(_e63, _e65)))), FeLocal_fe_Viewport_91e53b90_19_(FeLocal_fe_Vec2_f32_2772165c_16_(_e67, _e69), FeLocal_fe_Vec2_f32_2772165c_16_(_e71, _e73)), FeLocal_fe_Contacts_2_ac13bf77_18_(array<FeLocal_fe_Contact_2b5c3d26_17_, 2>(FeLocal_fe_Contact_2b5c3d26_17_((_e75 != 0u), _e79, FeLocal_fe_Vec2_f32_2772165c_16_(_e81, _e83)), FeLocal_fe_Contact_2b5c3d26_17_((_e85 != 0u), _e89, FeLocal_fe_Vec2_f32_2772165c_16_(_e91, _e93)))), FeLocal_fe_Camera_03494b0d_15_(FeLocal_fe_Complex_Coordinate_d4657101_14_(FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e95, FeLocal_fe_More_More_Last_60a5ba63_11_(_e97, FeLocal_fe_More_Last_1ac585f5_10_(_e99, FeLocal_fe_Last_eb970eb0_9_(_e101))))), FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e103, FeLocal_fe_More_More_Last_60a5ba63_11_(_e105, FeLocal_fe_More_Last_1ac585f5_10_(_e107, FeLocal_fe_Last_eb970eb0_9_(_e109)))))), _e111, _e113, FeLocal_fe_Complex_f32_87ec9249_0_(_e115, _e117))), FeLocal_fe_BackingRequest_2bcae9f8_21_((_e119 != 0u), _e123), FeLocal_fe_CameraTrace_7ca62f00_22_((_e125 != 0u), array<u32, 14>(_e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155)));
    let _e223 = can_refine(FeLocal_fe_ReferenceControl_7d077120_8_(_e207, _e209, _e211, _e213, _e215, _e217, _e219), (&fixed_local_357_));
    if _e223 {
    } else {
        local_1 = true;
    }
    let _e313 = local_1;
    if _e313 {
    } else {
        let _e230 = cache[i32(0u)].cursor;
        let _e232 = cache[i32(0u)].epoch;
        let _e234 = cache[i32(0u)].steps;
        let _e235 = for_view(_e29, _e31, (&fe_trapped));
        let _e236 = batch(_e235, _e230, _e234, (&fe_trapped));
        local_2 = 0u;
        loop {
            let _e242 = local_2;
            let _e243 = (_e242 < _e236);
            loop_header_carry_588_ = _e243;
            if _e243 {
                if (_e230 > (4294967295u - _e242)) {
                } else {
                    let _e248 = rect_pixel(_e235, (_e230 + _e242), global_invocation_id.x, global_invocation_id.y, _e31, (&fe_trapped));
                    if _e248.active_ {
                        let _e251 = impl_CohortPixel_index(_e248);
                        let _e255 = progress_pixels[i32(_e251)].control;
                        let _e257 = progress_pixels[i32(_e251)].epoch;
                        let _e259 = progress_pixels[i32(_e251)].payload_u002e_re;
                        let _e261 = progress_pixels[i32(_e251)].payload_u002e_im;
                        if (_e257 == _e232) {
                            local_3 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(_e255, _e257, FeLocal_fe_Complex_f32_87ec9249_0_(_e259, _e261));
                        } else {
                            let _e265 = initial(_e232);
                            local_3 = _e265;
                        }
                        let _e269 = local_3;
                        let _e271 = impl_NativeCheckpoint_is_terminal(_e269, _e235.limit);
                        if _e271 {
                        } else {
                            let _e277 = (_e207 != 0u);
                            if (_e277 && (8195u > (4294967295u / select(1u, _e207, _e277)))) {
                                fe_trapped = true;
                                break;
                            } else {
                                let _e283 = impl_CohortPixel_sample(_e248);
                                let _e286 = continue_native_pixel((_e207 * 8195u), _e169, _e283, _e235.limit, _e235.quantum, _e269, (&fe_trapped));
                                let _e288 = present_if_terminal(_e286, _e235.limit, _e37);
                                progress_pixels[i32(_e251)].control = _e288.control;
                                progress_pixels[i32(_e251)].epoch = _e288.epoch;
                                progress_pixels[i32(_e251)].payload_u002e_re = _e288.payload.re;
                                progress_pixels[i32(_e251)].payload_u002e_im = _e288.payload.im;
                                let _e300 = color(_e286, (&fe_trapped));
                                native_pixels[i32(_e251)] = _e300;
                                antialiased_pixels[i32(_e251)] = _e300;
                            }
                        }
                    }
                    local_2 = (_e242 + 1u);
                    continue;
                }
                fe_trapped = true;
                break;
            } else {
                loop_did_return = true;
                break;
            }
        }
    }
    let _e324 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e324);
}
