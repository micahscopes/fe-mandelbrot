struct FeLocal_fe_Last_eb970eb0_8_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_9_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_8_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_10_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_9_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_11_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_10_,
}

struct FeLocal_fe_Coordinate_bdc10f09_12_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_11_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_13_ {
    re: FeLocal_fe_Coordinate_bdc10f09_12_,
    im: FeLocal_fe_Coordinate_bdc10f09_12_,
}

struct FeLocal_fe_Complex_f32_87ec9249_0_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_14_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_13_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_0_,
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

struct FeLocal_fe_RefinementSchedule_b8aa1d23_23_ {
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

struct FeLocal_fe_CohortPixel_5c31bbba_6_ {
    pixel: FeLocal_fe_Pixel_5817280a_5_,
    active_: bool,
}

struct FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    control: u32,
    epoch: u32,
    payload: FeLocal_fe_Complex_f32_87ec9249_0_,
}

struct FeLocal_fe_PixelSample_d22dfa2e_24_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_PlaneSample_375c1fa3_28_ {
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

struct FeLocal_fe_ReferenceMetadata_782c1884_26_ {
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

struct FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_ {
    re: FeLocal_fe_More_More_More_Last_e6310ae8_11_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_11_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_29_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_f32_f32_b3478b14_30_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_Color_6b73191a_27_ {
    l: f32,
    a: f32,
    b: f32,
}

struct FeLocal_fe_Oklch_77e78738_4_ {
    l: f32,
    chroma: f32,
    hue: f32,
}

struct FeLocal_fe_ReferenceControl_7d077120_7_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_31_ {
    camera: FeLocal_fe_Camera_03494b0d_14_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct FeLocal_fe_InvocationId_3c625d5f_32_ {
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

fn is_input_settled(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> bool {
    var local_11: bool;
    var local_12: bool = false;
    var local_13: bool = bool();

    let _e4 = (*a0_).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_).clock;
        let _e10 = (*a0_).last_input;
        if (60f <= (_e8 - _e10)) {
            local_13 = true;
        }
    }
    let _e17 = local_13;
    return _e17;
}

fn can_refine(a0_1: FeLocal_fe_ReferenceControl_7d077120_7_, a1_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> bool {
    var local_14: bool;
    var local_15: bool = false;
    var local_16: bool = bool();

    if (a0_1.pending == 0u) {
        if (a0_1.active_valid == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_16 = true;
            }
        }
    }
    let _e14 = local_16;
    return _e14;
}

fn to_i32_(a0_2: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_2)), 2147483648u, (a0_2 <= -2147483600f)), 2147483647u, (a0_2 >= 2147483600f)), (a0_2 == a0_2));
}

fn iteration_limit(a0_3: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_17: u32 = u32();
    var local_18: f32 = f32();
    var local_19: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_20: u32 = u32();
    var local_21: f32 = f32();
    var local_22: u32;
    var local_23: bool = false;
    var local_24: u32 = u32();

    local_17 = 0u;
    local_18 = a0_3;
    local_19 = 0u;
    loop {
        let _e12 = local_17;
        let _e14 = local_18;
        let _e16 = local_19;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_20 = (_e12 + 1u);
                    local_21 = (_e14 * 2f);
                }
            } else {
                local_20 = _e12;
                local_21 = _e14;
            }
            let _e36 = local_20;
            let _e38 = local_21;
            local_17 = _e36;
            local_18 = _e38;
            local_19 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_17;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_24 = 8192u;
        } else {
            local_24 = _e60;
        }
        let _e71 = local_24;
        local_22 = _e71;
        local_23 = true;
    }
    let _e77 = local_23;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_22;
    return _e79;
}

fn assert(a0_4: bool, fe_trapped_2: ptr<function, bool>) {
    var local_25: u32;
    var local_26: bool = false;

    if a0_4 {
        local_26 = true;
    } else {
        (*fe_trapped_2) = true;
    }
    return;
}

fn for_grid(a0_5: u32, a1_1: u32, a2_: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_23_ {
    var local_27: FeLocal_fe_RefinementSchedule_b8aa1d23_23_;
    var local_28: bool = false;
    var local_29: bool = bool();
    var local_30: FeLocal_fe_RefinementSchedule_b8aa1d23_23_;
    var local_31: bool = false;
    var local_32: u32 = u32();
    var loop_result_1: FeLocal_fe_RefinementSchedule_b8aa1d23_23_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_28_: u32;
    var loop_header_carry_29_: bool;

    if (0u < a0_5) {
        if ((8192u < a0_5) == false) {
            if (0u < a1_1) {
                if (0u < a2_) {
                    local_29 = true;
                }
            }
        }
    }
    let _e20 = local_29;
    assert(_e20, fe_trapped_3);
    let _e23 = (a0_5 + 128u);
    if (a0_5 > (4294967295u - 128u)) {
    } else {
        if (_e23 < 1u) {
        } else {
            local_32 = 2u;
            loop {
                let _e36 = local_32;
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
                                local_32 = (_e36 * 2u);
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
                                    loop_result_1 = FeLocal_fe_RefinementSchedule_b8aa1d23_23_(a0_5, ((_e23 - 1u) >> 7u), 128u, a1_1, a2_, (a1_1 * a2_), (a2_ * _e36));
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
                local_30 = _e96;
                local_31 = true;
            }
        }
        let _e101 = local_31;
        if _e101 {
        }
    }
    let _e104 = local_31;
    if _e104 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e106 = local_30;
    return _e106;
}

fn for_view(a0_6: f32, a1_2: f32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_23_ {
    let _e7 = to_i32_(((a1_2 + 127f) / 128f));
    let _e12 = to_i32_(((a1_2 + 255f) / 256f));
    let _e13 = iteration_limit(a0_6, fe_trapped_4);
    let _e14 = for_grid(_e13, _e7, _e12, fe_trapped_4);
    return _e14;
}

fn refine_steps(a0_7: FeLocal_fe_RefinementSchedule_b8aa1d23_23_, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_33: u32;
    var local_34: bool = false;

    let _e9 = (a0_7.rounds != 0u);
    if (_e9 && (a0_7.phases > (4294967295u / select(1u, a0_7.rounds, _e9)))) {
        (*fe_trapped_5) = true;
    } else {
        local_33 = (a0_7.rounds * a0_7.phases);
        local_34 = true;
    }
    let _e19 = local_33;
    return _e19;
}

fn impl_trait_Pixel_default() -> FeLocal_fe_Pixel_5817280a_5_ {
    return FeLocal_fe_Pixel_5817280a_5_();
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_CohortPixel_5c31bbba_6_ {
    let _e0 = impl_trait_Pixel_default();
    return FeLocal_fe_CohortPixel_5c31bbba_6_(_e0, false);
}

fn cohort(a0_8: FeLocal_fe_RefinementSchedule_b8aa1d23_23_, a1_3: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_35: u32;
    var local_36: bool = false;

    if (a0_8.phases == 0u) {
        (*fe_trapped_6) = true;
    }
    return (a1_3 % a0_8.phases);
}

fn from_i32_(a0_9: u32) -> f32 {
    return f32(bitcast<i32>(a0_9));
}

fn phase_offset(a0_10: u32, a1_4: u32, a2_1: u32) -> u32 {
    let _e3 = from_i32_(a0_10);
    let _e6 = from_i32_(a1_4);
    let _e9 = ((_e3 * 0.06711056f) + (_e6 * 0.00583715f));
    let _e10 = to_i32_(_e9);
    let _e11 = from_i32_(_e10);
    let _e14 = ((_e9 - _e11) * 52.982918f);
    let _e15 = to_i32_(_e14);
    let _e16 = from_i32_(_e15);
    let _e18 = from_i32_(a2_1);
    let _e20 = to_i32_(((_e14 - _e16) * _e18));
    return _e20;
}

fn phase_order_rect(a0_11: u32, a1_5: u32, a2_2: u32, a3_: u32, a4_: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_37: u32;
    var local_38: bool = false;
    var local_39: u32 = u32();

    let _e10 = (a3_ * a4_);
    let _e11 = (a3_ != 0u);
    if (_e11 && (a4_ > (4294967295u / select(1u, a3_, _e11)))) {
    } else {
        let _e17 = phase_offset(a1_5, a2_2, _e10);
        if ((_e17 & 1u) == 0u) {
            local_39 = 1u;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_7) = true;
            } else {
                local_39 = (_e10 - 1u);
            }
        }
        let _e30 = local_39;
        let _e34 = (a0_11 * _e30);
        let _e35 = (a0_11 != 0u);
        if (_e35 && (_e30 > (4294967295u / select(1u, a0_11, _e35)))) {
        } else {
            if (_e34 > (4294967295u - _e17)) {
            } else {
                if (_e10 == 0u) {
                } else {
                    local_37 = ((_e34 + _e17) % _e10);
                    local_38 = true;
                }
                let _e51 = local_38;
                if _e51 {
                }
            }
            let _e53 = local_38;
            if _e53 {
            }
        }
        let _e55 = local_38;
        if _e55 {
        }
    }
    let _e58 = local_38;
    if _e58 {
    } else {
        (*fe_trapped_7) = true;
    }
    let _e60 = local_37;
    return _e60;
}

fn in_extent(a0_12: FeLocal_fe_Pixel_5817280a_5_, a1_6: f32) -> bool {
    var local_40: bool;
    var local_41: bool = false;
    var local_42: bool = bool();

    let _e5 = from_i32_(a0_12.x);
    if (_e5 < a1_6) {
        let _e8 = from_i32_(a0_12.y);
        if (_e8 < a1_6) {
            local_42 = true;
        }
    }
    let _e13 = local_42;
    return _e13;
}

fn at(a0_13: u32, a1_7: u32, a2_3: f32) -> FeLocal_fe_CohortPixel_5c31bbba_6_ {
    let _e3 = FeLocal_fe_Pixel_5817280a_5_(a0_13, a1_7);
    let _e4 = in_extent(_e3, a2_3);
    return FeLocal_fe_CohortPixel_5c31bbba_6_(_e3, _e4);
}

fn rect_pixel(a0_14: FeLocal_fe_RefinementSchedule_b8aa1d23_23_, a1_8: u32, a2_4: u32, a3_1: u32, a4_1: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_CohortPixel_5c31bbba_6_ {
    var local_43: FeLocal_fe_CohortPixel_5c31bbba_6_;
    var local_44: bool = false;
    var local_45: FeLocal_fe_CohortPixel_5c31bbba_6_;
    var local_46: bool = false;

    let _e7 = refine_steps(a0_14, fe_trapped_8);
    if ((a1_8 < _e7) == false) {
        let _e11 = impl_trait_CohortPixel_default();
        local_43 = _e11;
        local_44 = true;
    }
    let _e77 = local_44;
    if _e77 {
    } else {
        let _e16 = cohort(a0_14, a1_8, fe_trapped_8);
        let _e19 = phase_order_rect(_e16, a2_4, a3_1, a0_14.sx, a0_14.sy, fe_trapped_8);
        let _e24 = (a2_4 * a0_14.sx);
        let _e25 = (a2_4 != 0u);
        if (_e25 && (a0_14.sx > (4294967295u / select(1u, a2_4, _e25)))) {
        } else {
            if (a0_14.sx == 0u) {
            } else {
                let _e33 = (_e19 % a0_14.sx);
                if (_e24 > (4294967295u - _e33)) {
                } else {
                    let _e42 = (a3_1 * a0_14.sy);
                    let _e43 = (a3_1 != 0u);
                    if (_e43 && (a0_14.sy > (4294967295u / select(1u, a3_1, _e43)))) {
                    } else {
                        if (a0_14.sx == 0u) {
                        } else {
                            let _e51 = (_e19 / a0_14.sx);
                            if (_e42 > (4294967295u - _e51)) {
                            } else {
                                let _e56 = at((_e24 + _e33), (_e42 + _e51), a4_1);
                                local_45 = _e56;
                                local_46 = true;
                            }
                            let _e61 = local_46;
                            if _e61 {
                            }
                        }
                        let _e63 = local_46;
                        if _e63 {
                        }
                    }
                    let _e65 = local_46;
                    if _e65 {
                    }
                }
                let _e67 = local_46;
                if _e67 {
                }
            }
            let _e69 = local_46;
            if _e69 {
            }
        }
        let _e72 = local_46;
        if _e72 {
        } else {
            (*fe_trapped_8) = true;
        }
        let _e74 = local_45;
        local_43 = _e74;
    }
    let _e79 = local_43;
    return _e79;
}

fn impl_Pixel_index(a0_15: FeLocal_fe_Pixel_5817280a_5_, a1_9: u32) -> u32 {
    return ((a0_15.y << a1_9) | a0_15.x);
}

fn impl_CohortPixel_index(a0_16: FeLocal_fe_CohortPixel_5c31bbba_6_) -> u32 {
    let _e3 = impl_Pixel_index(a0_16.pixel, 11u);
    return _e3;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_();
}

fn initial(a0_17: u32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    let _e1 = default_ge58b();
    return FeLocal_fe_NativeCheckpoint_6a22185c_1_(FeLocal_fe_NativeCheckpoint_6a22185c_1_().control, a0_17, _e1);
}

fn iteration(a0_18: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> u32 {
    return ((a0_18.control >> 14u) & 16383u);
}

fn impl_NativeCheckpoint_is_terminal(a0_19: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_10: u32) -> bool {
    var local_47: bool;
    var local_48: bool = false;
    var local_49: bool = bool();

    let _e4 = iteration(a0_19);
    if ((_e4 < a1_10) == false) {
        local_49 = true;
    } else {
        if (((a0_19.control & 268435456u) == 0u) == false) {
            local_49 = true;
        }
    }
    let _e20 = local_49;
    return _e20;
}

fn ordered_2x2_(a0_20: u32, a1_11: u32) -> FeLocal_fe_PixelSample_d22dfa2e_24_ {
    let _e6 = from_i32_(a0_20);
    let _e9 = from_i32_((a0_20 & 1u));
    let _e13 = from_i32_(a1_11);
    let _e16 = from_i32_((a1_11 & 1u));
    return FeLocal_fe_PixelSample_d22dfa2e_24_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn impl_Pixel_sample(a0_21: FeLocal_fe_Pixel_5817280a_5_) -> FeLocal_fe_PixelSample_d22dfa2e_24_ {
    let _e3 = ordered_2x2_(a0_21.x, a0_21.y);
    return _e3;
}

fn impl_CohortPixel_sample(a0_22: FeLocal_fe_CohortPixel_5c31bbba_6_) -> FeLocal_fe_PixelSample_d22dfa2e_24_ {
    let _e2 = impl_Pixel_sample(a0_22.pixel);
    return _e2;
}

fn plane(a0_23: FeLocal_fe_PixelSample_d22dfa2e_24_, a1_12: f32) -> FeLocal_fe_PlaneSample_375c1fa3_28_ {
    return FeLocal_fe_PlaneSample_375c1fa3_28_((((a0_23.x / a1_12) * 2f) - 1f), (1f - ((a0_23.y / a1_12) * 2f)));
}

fn center_offset(a0_24: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(bitcast<f32>(a0_24.re_w2_bits), bitcast<f32>(a0_24.re_w3_bits));
}

fn scale(a0_25: FeLocal_fe_Complex_f32_87ec9249_0_, a1_13: f32) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_25.re * a1_13), (a0_25.im * a1_13));
}

fn impl_trait_Complex_one_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(1f, 0f);
}

fn eq(a0_26: FeLocal_fe_Complex_f32_87ec9249_0_, a1_14: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_50: bool;
    var local_51: bool = false;
    var local_52: bool = bool();

    if (a0_26.re == a1_14.re) {
        if (a0_26.im == a1_14.im) {
            local_52 = true;
        }
    }
    let _e13 = local_52;
    return _e13;
}

fn mul(a0_27: FeLocal_fe_Complex_f32_87ec9249_0_, a1_15: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(((a0_27.re * a1_15.re) - (a0_27.im * a1_15.im)), ((a0_27.re * a1_15.im) + (a0_27.im * a1_15.re)));
}

fn plane_offset(a0_28: FeLocal_fe_Camera_03494b0d_14_, a1_16: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_53: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_54: bool = false;
    var local_55: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();

    let _e5 = scale(a1_16, a0_28.zoom);
    let _e7 = impl_trait_Complex_one_ge58b();
    let _e8 = eq(a0_28.orientation, _e7);
    if _e8 {
        local_55 = _e5;
    } else {
        let _e10 = mul(a0_28.orientation, _e5);
        local_55 = _e10;
    }
    let _e14 = local_55;
    return _e14;
}

fn add(a0_29: FeLocal_fe_Complex_f32_87ec9249_0_, a1_17: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_29.re + a1_17.re), (a0_29.im + a1_17.im));
}

fn pixel_delta_from_reference(a1_18: u32, a2_5: FeLocal_fe_Camera_03494b0d_14_, a3_2: FeLocal_fe_PixelSample_d22dfa2e_24_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_56: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_57: bool = false;

    let _e7 = plane(a3_2, a2_5.res);
    if (a1_18 > (4294967295u - 8194u)) {
        (*fe_trapped_9) = true;
    }
    let _e17 = orbit[i32((a1_18 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_18 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_18 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_18 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_18 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_18 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_18 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_18 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_PackedReference_e11ca04a_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e37 = plane_offset(a2_5, FeLocal_fe_Complex_f32_87ec9249_0_(_e7.u, _e7.v));
    let _e38 = add(_e33, _e37);
    return _e38;
}

fn impl_NativeCheckpoint_reference_index(a0_30: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> u32 {
    return (a0_30.control & 16383u);
}

fn decode_metadata(a0_31: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_ReferenceMetadata_782c1884_26_ {
    return FeLocal_fe_ReferenceMetadata_782c1884_26_(a0_31.re_w0_bits, a0_31.re_w1_bits);
}

fn impl_NativeCheckpoint_delta(a0_32: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return a0_32.payload;
}

fn from_continuation(a0_33: FeLocal_fe_Complex_f32_87ec9249_0_, a1_19: FeLocal_fe_Complex_f32_87ec9249_0_, a2_6: u32, a3_3: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_OrbitProgress_96185e10_3_ {
    return FeLocal_fe_OrbitProgress_96185e10_3_(a0_33.re, a0_33.im, a1_19.re, a1_19.im, a2_6, a3_3, a4_2, a5_);
}

fn impl_OrbitProgress_delta(a0_34: FeLocal_fe_OrbitProgress_96185e10_3_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_34.dz_re, a0_34.dz_im);
}

fn position(a0_35: FeLocal_fe_OrbitProgress_96185e10_3_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_35.z_re, a0_35.z_im);
}

fn progress_reference_index(a0_36: u32) -> u32 {
    return (a0_36 & 536870911u);
}

fn impl_OrbitProgress_reference_index(a0_37: FeLocal_fe_OrbitProgress_96185e10_3_) -> u32 {
    let _e2 = progress_reference_index(a0_37.reference_i);
    return _e2;
}

fn progress_is_escaped(a0_38: u32) -> bool {
    return (((a0_38 & 2147483648u) == 0u) == false);
}

fn impl_OrbitProgress_is_escaped(a0_39: FeLocal_fe_OrbitProgress_96185e10_3_) -> bool {
    let _e2 = progress_is_escaped(a0_39.reference_i);
    return _e2;
}

fn progress_is_glitched(a0_40: u32) -> bool {
    return (((a0_40 & 1073741824u) == 0u) == false);
}

fn impl_OrbitProgress_is_glitched(a0_41: FeLocal_fe_OrbitProgress_96185e10_3_) -> bool {
    let _e2 = progress_is_glitched(a0_41.reference_i);
    return _e2;
}

fn is_invalid(a0_42: FeLocal_fe_PackedReference_e11ca04a_2_) -> bool {
    var local_58: bool;
    var local_59: bool = false;
    var local_60: bool = bool();

    if (a0_42.re_w0_bits == 2143289344u) {
        local_60 = true;
    } else {
        if (a0_42.im_w0_bits == 2143289344u) {
            local_60 = true;
        }
    }
    let _e14 = local_60;
    return _e14;
}

fn from_quad(a0_43: f32, a1_20: f32, a2_7: f32, a3_4: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_11_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_11_(a0_43, FeLocal_fe_More_More_Last_60a5ba63_10_(a1_20, FeLocal_fe_More_Last_1ac585f5_9_(a2_7, FeLocal_fe_Last_eb970eb0_8_(a3_4))));
}

fn decode(a0_44: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_ {
    let _e9 = from_quad(bitcast<f32>(a0_44.re_w0_bits), bitcast<f32>(a0_44.re_w1_bits), bitcast<f32>(a0_44.re_w2_bits), bitcast<f32>(a0_44.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_44.im_w0_bits), bitcast<f32>(a0_44.im_w1_bits), bitcast<f32>(a0_44.im_w2_bits), bitcast<f32>(a0_44.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_(_e9, _e18);
}

fn to_quad(a0_45: FeLocal_fe_More_More_More_Last_e6310ae8_11_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_29_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_29_(a0_45.lead, a0_45.tail.lead, a0_45.tail.tail.lead, a0_45.tail.tail.tail.value);
}

fn perturb(a0_46: FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_, a1_21: FeLocal_fe_Complex_f32_87ec9249_0_, a2_8: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = to_quad(a0_46.re);
    let _e10 = to_quad(a0_46.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(((((2f * ((_e4.f0_ * a1_21.re) - (_e10.f0_ * a1_21.im))) + (2f * ((((((_e4.f1_ * a1_21.re) - (_e10.f1_ * a1_21.im)) + (_e4.f2_ * a1_21.re)) - (_e10.f2_ * a1_21.im)) + (_e4.f3_ * a1_21.re)) - (_e10.f3_ * a1_21.im)))) + ((a1_21.re * a1_21.re) - (a1_21.im * a1_21.im))) + a2_8.re), ((((2f * ((_e4.f0_ * a1_21.im) + (_e10.f0_ * a1_21.re))) + (2f * ((((((_e4.f1_ * a1_21.im) + (_e10.f1_ * a1_21.re)) + (_e4.f2_ * a1_21.im)) + (_e10.f2_ * a1_21.re)) + (_e4.f3_ * a1_21.im)) + (_e10.f3_ * a1_21.re)))) + ((2f * a1_21.re) * a1_21.im)) + a2_8.im));
}

fn two_sum(a0_47: f32, a1_22: f32) -> FeLocal_fe_f32_f32_b3478b14_30_ {
    let _e2 = (a0_47 + a1_22);
    let _e3 = (_e2 - a0_47);
    return FeLocal_fe_f32_f32_b3478b14_30_(_e2, ((a0_47 - (_e2 - _e3)) + (a1_22 - _e3)));
}

fn reference_plus_delta(a0_48: f32, a1_23: f32, a2_9: f32, a3_5: f32, a4_3: f32) -> f32 {
    let _e5 = two_sum(a0_48, a4_3);
    let _e8 = two_sum(_e5.f0_, a1_23);
    let _e11 = two_sum(_e8.f0_, a2_9);
    let _e14 = two_sum(_e11.f0_, a3_5);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_49: FeLocal_fe_More_More_More_Last_e6310ae8_11_, a1_24: f32) -> f32 {
    let _e2 = to_quad(a0_49);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_24);
    return _e7;
}

fn reference_with_delta(a0_50: FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_, a1_25: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = expansion_plus_delta(a0_50.re, a1_25.re);
    let _e7 = expansion_plus_delta(a0_50.im, a1_25.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(_e4, _e7);
}

fn norm_squared(a0_51: FeLocal_fe_Complex_f32_87ec9249_0_) -> f32 {
    return ((a0_51.re * a0_51.re) + (a0_51.im * a0_51.im));
}

fn pack_progress_reference(a0_52: u32, a1_26: u32, a2_10: u32) -> u32 {
    return (((a0_52 & 536870911u) | (a1_26 << 31u)) | (a2_10 << 30u));
}

fn non_finite(a0_53: f32) -> bool {
    return (((a0_53 - a0_53) == 0f) == false);
}

fn is_non_finite_complex(a0_54: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_61: bool;
    var local_62: bool = false;
    var local_63: bool = bool();

    let _e4 = non_finite(a0_54.re);
    if _e4 {
        local_63 = true;
    } else {
        let _e6 = non_finite(a0_54.im);
        if _e6 {
            local_63 = true;
        }
    }
    let _e12 = local_63;
    return _e12;
}

fn impl_trait_f32_abs(a0_55: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_55) & 2147483647u));
}

fn impl_trait_f32_max(a0_56: f32, a1_27: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_56);
    let _e3 = bitcast<u32>(a1_27);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress_step(a0_57: FeLocal_fe_OrbitProgress_96185e10_3_, a1_28: FeLocal_fe_Complex_f32_87ec9249_0_, a2_11: FeLocal_fe_PackedReference_e11ca04a_2_, a3_6: FeLocal_fe_PackedReference_e11ca04a_2_, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_3_ {
    var local_64: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_65: bool = false;
    var local_66: u32 = u32();
    var local_67: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_68: bool = false;
    var local_69: u32 = u32();
    var local_70: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_71: bool = false;
    var local_72: f32 = f32();
    var local_73: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_74: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_75: u32 = u32();
    var local_76: u32 = u32();
    var local_77: u32 = u32();
    var local_78: bool = bool();
    var local_79: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_80: bool = false;

    let _e7 = impl_OrbitProgress_delta(a0_57);
    let _e8 = position(a0_57);
    let _e9 = impl_OrbitProgress_reference_index(a0_57);
    let _e10 = impl_OrbitProgress_is_escaped(a0_57);
    if _e10 {
        local_66 = 1u;
    }
    let _e16 = local_66;
    let _e17 = impl_OrbitProgress_is_glitched(a0_57);
    if _e17 {
        local_69 = 1u;
    }
    let _e28 = local_69;
    let _e30 = is_invalid(a2_11);
    if _e30 {
        local_72 = a0_57.magnitude;
        local_73 = _e8;
        local_74 = _e7;
        local_75 = 1u;
        local_76 = _e16;
        local_77 = _e9;
    } else {
        let _e31 = is_invalid(a3_6);
        if _e31 {
            local_72 = a0_57.magnitude;
            local_73 = _e8;
            local_74 = _e7;
            local_75 = 1u;
            local_76 = _e16;
            local_77 = _e9;
        } else {
            let _e33 = decode(a2_11);
            let _e34 = decode(a3_6);
            let _e35 = perturb(_e33, _e7, a1_28);
            let _e36 = reference_with_delta(_e34, _e35);
            let _e37 = norm_squared(_e36);
            let _e38 = norm_squared(_e35);
            if (4f < _e37) {
                let _e44 = impl_trait_f32_abs((_e37 - 4f));
                let _e46 = impl_trait_f32_max(1f, _e37);
                if (_e44 <= (0.000004f * _e46)) {
                    local_78 = true;
                }
            }
            let _e53 = local_78;
            let _e54 = is_non_finite_complex(_e35);
            if _e54 {
                local_72 = a0_57.magnitude;
                local_73 = _e8;
                local_74 = _e7;
                local_75 = 1u;
                local_76 = _e16;
                local_77 = _e9;
            } else {
                let _e55 = non_finite(_e37);
                if (_e55 | _e53) {
                    local_72 = a0_57.magnitude;
                    local_73 = _e8;
                    local_74 = _e7;
                    local_75 = 1u;
                    local_76 = _e16;
                    local_77 = _e9;
                } else {
                    if (4f < _e37) {
                        local_72 = _e37;
                        local_73 = _e36;
                        local_74 = _e35;
                        local_75 = _e28;
                        local_76 = 1u;
                        local_77 = _e9;
                    } else {
                        if (_e37 < _e38) {
                            local_72 = a0_57.magnitude;
                            local_73 = _e36;
                            local_74 = _e36;
                            local_75 = _e28;
                            local_76 = _e16;
                        } else {
                            if (_e9 > (4294967295u - 1u)) {
                                (*fe_trapped_10) = true;
                            } else {
                                local_72 = a0_57.magnitude;
                                local_73 = _e36;
                                local_74 = _e35;
                                local_75 = _e28;
                                local_76 = _e16;
                                local_77 = (_e9 + 1u);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e113 = local_72;
    let _e115 = local_73;
    let _e117 = local_74;
    let _e119 = local_75;
    let _e121 = local_76;
    let _e123 = local_77;
    let _e124 = pack_progress_reference(_e123, _e121, _e119);
    if (a0_57.iteration > (4294967295u - 1u)) {
        (*fe_trapped_10) = true;
    }
    let _e133 = from_continuation(_e117, _e115, _e124, (a0_57.iteration + 1u), a0_57.epoch, _e113);
    return _e133;
}

fn progress_is_presentable(a0_58: u32) -> bool {
    return (((a0_58 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_59: u32) -> bool {
    return (((a0_59 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_60: u32, a1_29: u32, a2_12: u32) -> bool {
    var local_81: bool;
    var local_82: bool = false;
    var local_83: bool = bool();

    if ((a1_29 < a2_12) == false) {
        local_83 = true;
    } else {
        let _e8 = progress_has_outcome(a0_60);
        if _e8 {
            local_83 = true;
        } else {
            let _e9 = progress_is_presentable(a0_60);
            if _e9 {
                local_83 = true;
            }
        }
    }
    let _e17 = local_83;
    return _e17;
}

fn impl_OrbitProgress_is_terminal(a0_61: FeLocal_fe_OrbitProgress_96185e10_3_, a1_30: u32) -> bool {
    let _e4 = progress_is_terminal(a0_61.reference_i, a0_61.iteration, a1_30);
    return _e4;
}

fn progress_outcome_flags(a0_62: u32) -> u32 {
    return (a0_62 & 3221225472u);
}

fn outcome_flags(a0_63: FeLocal_fe_OrbitProgress_96185e10_3_) -> u32 {
    let _e2 = progress_outcome_flags(a0_63.reference_i);
    return _e2;
}

fn advance(a0_64: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_31: FeLocal_fe_Complex_f32_87ec9249_0_, a2_13: FeLocal_fe_PackedReference_e11ca04a_2_, a3_7: FeLocal_fe_PackedReference_e11ca04a_2_, a4_4: u32, a5_1: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_84: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_85: bool = false;
    var local_86: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_87: bool = false;
    var local_88: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();

    let _e8 = impl_NativeCheckpoint_is_terminal(a0_64, a5_1);
    if _e8 {
        local_84 = a0_64;
        local_85 = true;
    }
    let _e63 = local_85;
    if _e63 {
    } else {
        let _e14 = impl_NativeCheckpoint_delta(a0_64);
        let _e15 = default_ge58b();
        let _e16 = impl_NativeCheckpoint_reference_index(a0_64);
        let _e17 = iteration(a0_64);
        let _e20 = from_continuation(_e14, _e15, _e16, _e17, a0_64.epoch, 4f);
        let _e21 = advance_progress_step(_e20, a1_31, a2_13, a3_7, fe_trapped_11);
        let _e25 = impl_OrbitProgress_reference_index(_e21);
        let _e26 = ((_e21.iteration << 14u) | _e25);
        let _e27 = impl_OrbitProgress_is_terminal(_e21, a5_1);
        if _e27 {
            let _e28 = outcome_flags(_e21);
            local_88 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(((_e26 | _e28) | 268435456u), a0_64.epoch, FeLocal_fe_Complex_f32_87ec9249_0_(_e21.magnitude, 0f));
        } else {
            let _e37 = impl_OrbitProgress_reference_index(_e21);
            if (_e37 > (4294967295u - 1u)) {
                (*fe_trapped_11) = true;
            } else {
                if (((_e37 + 1u) < a4_4) == false) {
                    let _e51 = position(_e21);
                    local_88 = FeLocal_fe_NativeCheckpoint_6a22185c_1_((_e21.iteration << 14u), a0_64.epoch, _e51);
                } else {
                    let _e54 = impl_OrbitProgress_delta(_e21);
                    local_88 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(_e26, a0_64.epoch, _e54);
                }
            }
        }
        let _e60 = local_88;
        local_84 = _e60;
    }
    let _e65 = local_84;
    return _e65;
}

fn continue_native_pixel(a1_32: u32, a2_14: FeLocal_fe_Camera_03494b0d_14_, a3_8: FeLocal_fe_PixelSample_d22dfa2e_24_, a4_5: u32, a5_2: u32, a6_: FeLocal_fe_NativeCheckpoint_6a22185c_1_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_89: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_90: bool = false;
    var local_91: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();
    var local_92: u32 = u32();
    var loop_result_2: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_56_: bool;

    let _e9 = pixel_delta_from_reference(a1_32, a2_14, a3_8, fe_trapped_12);
    if (a1_32 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_32 + 8194u))].re_w0_bits;
        let _e20 = orbit[i32((a1_32 + 8194u))].re_w1_bits;
        let _e22 = orbit[i32((a1_32 + 8194u))].re_w2_bits;
        let _e24 = orbit[i32((a1_32 + 8194u))].re_w3_bits;
        let _e26 = orbit[i32((a1_32 + 8194u))].im_w0_bits;
        let _e28 = orbit[i32((a1_32 + 8194u))].im_w1_bits;
        let _e30 = orbit[i32((a1_32 + 8194u))].im_w2_bits;
        let _e32 = orbit[i32((a1_32 + 8194u))].im_w3_bits;
        let _e34 = decode_metadata(FeLocal_fe_PackedReference_e11ca04a_2_(_e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32));
        local_91 = a6_;
        local_92 = 0u;
        loop {
            let _e43 = local_91;
            let _e45 = local_92;
            let _e46 = (_e45 < a5_2);
            loop_header_carry_56_ = _e46;
            if _e46 {
                let _e47 = impl_NativeCheckpoint_is_terminal(_e43, a4_5);
                if (_e47 == false) {
                } else {
                    loop_result_2 = _e43;
                    loop_did_return_2 = true;
                    break;
                }
                let _e53 = impl_NativeCheckpoint_reference_index(_e43);
                let _e55 = (a1_32 + _e53);
                if (a1_32 > (4294967295u - _e53)) {
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
                        (*fe_trapped_12) = true;
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
                    let _e102 = advance(_e43, _e9, FeLocal_fe_PackedReference_e11ca04a_2_(_e61, _e63, _e65, _e67, _e69, _e71, _e73, _e75), FeLocal_fe_PackedReference_e11ca04a_2_(_e86, _e88, _e90, _e92, _e94, _e96, _e98, _e100), _e34.valid_samples, a4_5, fe_trapped_12);
                    local_91 = _e102;
                    local_92 = (_e45 + 1u);
                    continue;
                }
                (*fe_trapped_12) = true;
                break;
            } else {
                loop_result_2 = _e43;
                loop_did_return_2 = true;
                break;
            }
        }
        let _e113 = loop_did_return_2;
        if _e113 {
            let _e115 = loop_result_2;
            local_89 = _e115;
            local_90 = true;
        }
    }
    let _e121 = local_90;
    if _e121 {
    } else {
        (*fe_trapped_12) = true;
    }
    let _e123 = local_89;
    return _e123;
}

fn magnitude(a0_65: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> f32 {
    var local_93: f32;
    var local_94: bool = false;
    var local_95: f32 = f32();

    if (((a0_65.control & 268435456u) == 0u) == false) {
        local_95 = a0_65.payload.re;
    } else {
        local_95 = 4f;
    }
    let _e16 = local_95;
    return _e16;
}

fn with_fade_start(a0_66: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_33: f32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    let _e8 = magnitude(a0_66);
    return FeLocal_fe_NativeCheckpoint_6a22185c_1_(((a0_66.control | 268435456u) | 536870912u), a0_66.epoch, FeLocal_fe_Complex_f32_87ec9249_0_(_e8, a1_33));
}

fn present_if_terminal(a0_67: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_34: u32, a2_15: f32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_96: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_97: bool = false;
    var local_98: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();

    let _e5 = impl_NativeCheckpoint_is_terminal(a0_67, a1_34);
    if _e5 {
        let _e6 = with_fade_start(a0_67, a2_15);
        local_98 = _e6;
    } else {
        local_98 = a0_67;
    }
    let _e10 = local_98;
    return _e10;
}

fn impl_NativeCheckpoint_is_glitched(a0_68: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> bool {
    let _e2 = progress_is_glitched(a0_68.control);
    return _e2;
}

fn clamp_(a0_69: f32, a1_35: f32, a2_16: f32) -> f32 {
    var local_99: f32;
    var local_100: bool = false;
    var local_101: f32 = f32();

    if (a0_69 < a1_35) {
        local_101 = a1_35;
    } else {
        if (a2_16 < a0_69) {
            local_101 = a2_16;
        } else {
            local_101 = a0_69;
        }
    }
    let _e11 = local_101;
    return _e11;
}

fn pack_lab(a0_70: FeLocal_fe_Color_6b73191a_27_) -> u32 {
    let _e4 = clamp_(a0_70.l, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_70.a * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_70.b * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_27_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_NativeCheckpoint_is_escaped(a0_71: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> bool {
    let _e2 = progress_is_escaped(a0_71.control);
    return _e2;
}

fn impl_trait_f32_floor(a0_72: f32) -> f32 {
    return floor(a0_72);
}

fn fract_(a0_73: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_73);
    return (a0_73 - _e1);
}

fn anchor(a0_74: u32) -> FeLocal_fe_Oklch_77e78738_4_ {
    var local_102: FeLocal_fe_Oklch_77e78738_4_;
    var local_103: bool = false;
    var local_104: FeLocal_fe_Oklch_77e78738_4_ = FeLocal_fe_Oklch_77e78738_4_();

    switch a0_74 {
        case 0u: {
            local_104 = FeLocal_fe_Oklch_77e78738_4_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_104 = FeLocal_fe_Oklch_77e78738_4_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_104 = FeLocal_fe_Oklch_77e78738_4_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_104 = FeLocal_fe_Oklch_77e78738_4_(0.73f, 0.142f, 165f);
        }
        default: {
            local_104 = FeLocal_fe_Oklch_77e78738_4_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_104;
    return _e29;
}

fn hue_remainder(a0_75: f32) -> f32 {
    var local_105: f32;
    var local_106: bool = false;
    var local_107: f32;
    var local_108: bool = false;
    var local_109: f32;
    var local_110: bool = false;
    var local_111: f32 = f32();
    var local_112: f32;
    var local_113: bool = false;
    var local_114: f32 = f32();
    var local_115: u32 = u32();
    var local_116: u32 = u32();
    var loop_result_3: f32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_51_: bool;
    var local_117: f32;
    var local_118: bool = false;
    var local_119: f32 = f32();

    let _e4 = (bitcast<u32>(a0_75) & 2147483647u);
    if (_e4 < 1135869952u) {
        local_105 = a0_75;
        local_106 = true;
    }
    let _e89 = local_106;
    if _e89 {
    } else {
        let _e12 = (_e4 >> 23u);
        if (_e12 == 255u) {
            local_107 = a0_75;
            local_108 = true;
        }
        let _e84 = local_108;
        if _e84 {
        } else {
            if (a0_75 < 0f) {
                local_111 = -(a0_75);
            } else {
                local_111 = a0_75;
            }
            let _e28 = local_111;
            if (_e12 < 150u) {
                let _e31 = to_i32_(_e28);
                let _e34 = from_i32_((_e31 % 360u));
                let _e35 = from_i32_(_e31);
                local_114 = (_e34 + (_e28 - _e35));
            } else {
                local_115 = (((_e4 & 8388607u) | 8388608u) % 360u);
                local_116 = (_e12 - 150u);
                loop {
                    let _e52 = local_115;
                    let _e54 = local_116;
                    let _e56 = (0u < _e54);
                    loop_header_carry_51_ = _e56;
                    if _e56 {
                        local_115 = ((_e52 << 1u) % 360u);
                        local_116 = (_e54 - 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                let _e67 = local_115;
                let _e68 = from_i32_(_e67);
                local_114 = _e68;
            }
            let _e74 = local_114;
            if (a0_75 < 0f) {
                local_119 = -(_e74);
            } else {
                local_119 = _e74;
            }
            let _e81 = local_119;
            local_107 = _e81;
        }
        let _e86 = local_107;
        local_105 = _e86;
    }
    let _e91 = local_105;
    return _e91;
}

fn interpolate(a0_76: FeLocal_fe_Oklch_77e78738_4_, a1_36: FeLocal_fe_Oklch_77e78738_4_, a2_17: f32) -> FeLocal_fe_Oklch_77e78738_4_ {
    var local_120: FeLocal_fe_Oklch_77e78738_4_;
    var local_121: bool = false;
    var local_122: bool = bool();
    var local_123: FeLocal_fe_Oklch_77e78738_4_;
    var local_124: bool = false;
    var local_125: f32 = f32();
    var local_126: FeLocal_fe_Oklch_77e78738_4_;
    var local_127: bool = false;
    var local_128: f32 = f32();
    var local_129: FeLocal_fe_Oklch_77e78738_4_;
    var local_130: bool = false;
    var local_131: f32 = f32();
    var local_132: FeLocal_fe_Oklch_77e78738_4_;
    var local_133: bool = false;
    var local_134: f32 = f32();
    var local_135: f32 = f32();

    let _e7 = (a1_36.hue - a0_76.hue);
    if (-540f <= a0_76.hue) {
        if (a0_76.hue <= 540f) {
            if (-540f <= a1_36.hue) {
                if (a1_36.hue <= 540f) {
                    if (-540f <= _e7) {
                        if (_e7 <= 540f) {
                            local_122 = true;
                        }
                    }
                }
            }
        }
    }
    let _e29 = local_122;
    if _e29 {
        local_125 = a0_76.hue;
    } else {
        let _e32 = hue_remainder(a0_76.hue);
        local_125 = _e32;
    }
    let _e38 = local_125;
    if _e29 {
        local_128 = _e7;
    } else {
        let _e40 = hue_remainder(a1_36.hue);
        local_128 = (_e40 - _e38);
    }
    let _e47 = local_128;
    if (180f < _e47) {
        local_131 = (_e47 - 360f);
    } else {
        if (_e47 < -180f) {
            local_131 = (_e47 + 360f);
        } else {
            local_131 = _e47;
        }
    }
    let _e62 = local_131;
    if (_e29 == false) {
        if (180f < _e62) {
            local_135 = (_e62 - 360f);
        } else {
            if (_e62 < -180f) {
                local_135 = (_e62 + 360f);
            } else {
                local_135 = _e62;
            }
        }
        let _e78 = local_135;
        if (_e78 == -180f) {
            if (a0_76.hue < a1_36.hue) {
                local_134 = 180f;
            } else {
                if (_e78 == 180f) {
                    if (a1_36.hue < a0_76.hue) {
                        local_134 = -180f;
                    } else {
                        local_134 = _e78;
                    }
                } else {
                    local_134 = _e78;
                }
            }
        } else {
            if (_e78 == 180f) {
                if (a1_36.hue < a0_76.hue) {
                    local_134 = -180f;
                } else {
                    local_134 = _e78;
                }
            } else {
                local_134 = _e78;
            }
        }
    } else {
        local_134 = _e62;
    }
    let _e106 = local_134;
    return FeLocal_fe_Oklch_77e78738_4_((a0_76.l + ((a1_36.l - a0_76.l) * a2_17)), (a0_76.chroma + ((a1_36.chroma - a0_76.chroma) * a2_17)), (_e38 + (_e106 * a2_17)));
}

fn wrap_pi(a0_77: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_77 / 6.2831855f) + 0.5f));
    return (a0_77 - (6.2831855f * _e5));
}

fn sin_(a0_78: f32) -> f32 {
    let _e1 = wrap_pi(a0_78);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_79: f32) -> f32 {
    let _e3 = sin_((a0_79 + 1.5707964f));
    return _e3;
}

fn to_color(a0_80: FeLocal_fe_Oklch_77e78738_4_) -> FeLocal_fe_Color_6b73191a_27_ {
    let _e3 = (a0_80.hue * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_Color_6b73191a_27_(a0_80.l, (a0_80.chroma * _e6), (a0_80.chroma * _e9));
}

fn escape_palette(a0_81: u32, a1_37: f32, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_136: u32;
    var local_137: bool = false;
    var local_138: u32 = u32();

    let _e5 = from_i32_(a0_81);
    let _e11 = fract_(((_e5 + (4f / a1_37)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_13) = true;
        } else {
            local_138 = _e29;
        }
    }
    let _e38 = local_138;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_27_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn color(a0_82: FeLocal_fe_NativeCheckpoint_6a22185c_1_, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_139: u32;
    var local_140: bool = false;
    var local_141: u32 = u32();

    let _e4 = impl_NativeCheckpoint_is_glitched(a0_82);
    if _e4 {
        let _e5 = glitch();
        local_141 = _e5;
    } else {
        let _e6 = impl_NativeCheckpoint_is_escaped(a0_82);
        if _e6 {
            let _e7 = iteration(a0_82);
            let _e8 = magnitude(a0_82);
            let _e9 = escape_palette(_e7, _e8, fe_trapped_14);
            local_141 = _e9;
        } else {
            let _e10 = interior();
            local_141 = _e10;
        }
    }
    let _e15 = local_141;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_357_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32;
    var local_5: bool = false;
    var local_6: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: u32;
    var local_10: bool = false;

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
    let _e169 = FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_13_(FeLocal_fe_Coordinate_bdc10f09_12_(FeLocal_fe_More_More_More_Last_e6310ae8_11_(_e13, FeLocal_fe_More_More_Last_60a5ba63_10_(_e15, FeLocal_fe_More_Last_1ac585f5_9_(_e17, FeLocal_fe_Last_eb970eb0_8_(_e19))))), FeLocal_fe_Coordinate_bdc10f09_12_(FeLocal_fe_More_More_More_Last_e6310ae8_11_(_e21, FeLocal_fe_More_More_Last_60a5ba63_10_(_e23, FeLocal_fe_More_Last_1ac585f5_9_(_e25, FeLocal_fe_Last_eb970eb0_8_(_e27)))))), _e29, _e31, FeLocal_fe_Complex_f32_87ec9249_0_(_e33, _e35));
    let _e207 = reference[i32(0u)].active_;
    let _e209 = reference[i32(0u)].active_valid;
    let _e211 = reference[i32(0u)].pending;
    let _e213 = reference[i32(0u)].index;
    let _e215 = reference[i32(0u)].zx_s;
    let _e217 = reference[i32(0u)].zy_s;
    let _e219 = reference[i32(0u)].ready_at;
    fixed_local_357_ = FeLocal_fe_MandelbrotViewState_c524184f_22_(_e169, _e37, _e39, _e41, _e43, _e45, FeLocal_fe_GestureSession_6b679731_19_(FeLocal_fe_Contacts_2_ac13bf77_17_(array<FeLocal_fe_Contact_2b5c3d26_16_, 2>(FeLocal_fe_Contact_2b5c3d26_16_((_e47 != 0u), _e51, FeLocal_fe_Vec2_f32_2772165c_15_(_e53, _e55)), FeLocal_fe_Contact_2b5c3d26_16_((_e57 != 0u), _e61, FeLocal_fe_Vec2_f32_2772165c_15_(_e63, _e65)))), FeLocal_fe_Viewport_91e53b90_18_(FeLocal_fe_Vec2_f32_2772165c_15_(_e67, _e69), FeLocal_fe_Vec2_f32_2772165c_15_(_e71, _e73)), FeLocal_fe_Contacts_2_ac13bf77_17_(array<FeLocal_fe_Contact_2b5c3d26_16_, 2>(FeLocal_fe_Contact_2b5c3d26_16_((_e75 != 0u), _e79, FeLocal_fe_Vec2_f32_2772165c_15_(_e81, _e83)), FeLocal_fe_Contact_2b5c3d26_16_((_e85 != 0u), _e89, FeLocal_fe_Vec2_f32_2772165c_15_(_e91, _e93)))), FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_13_(FeLocal_fe_Coordinate_bdc10f09_12_(FeLocal_fe_More_More_More_Last_e6310ae8_11_(_e95, FeLocal_fe_More_More_Last_60a5ba63_10_(_e97, FeLocal_fe_More_Last_1ac585f5_9_(_e99, FeLocal_fe_Last_eb970eb0_8_(_e101))))), FeLocal_fe_Coordinate_bdc10f09_12_(FeLocal_fe_More_More_More_Last_e6310ae8_11_(_e103, FeLocal_fe_More_More_Last_60a5ba63_10_(_e105, FeLocal_fe_More_Last_1ac585f5_9_(_e107, FeLocal_fe_Last_eb970eb0_8_(_e109)))))), _e111, _e113, FeLocal_fe_Complex_f32_87ec9249_0_(_e115, _e117))), FeLocal_fe_BackingRequest_2bcae9f8_20_((_e119 != 0u), _e123), FeLocal_fe_CameraTrace_7ca62f00_21_((_e125 != 0u), array<u32, 14>(_e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155)));
    let _e223 = can_refine(FeLocal_fe_ReferenceControl_7d077120_7_(_e207, _e209, _e211, _e213, _e215, _e217, _e219), (&fixed_local_357_));
    if _e223 {
    } else {
        local_1 = true;
    }
    let _e304 = local_1;
    if _e304 {
    } else {
        let _e231 = cache[i32(0u)].cursor;
        let _e233 = cache[i32(0u)].epoch;
        let _e234 = for_view(_e29, _e31, (&fe_trapped));
        let _e235 = rect_pixel(_e234, _e231, global_invocation_id.x, global_invocation_id.y, _e31, (&fe_trapped));
        if _e235.active_ {
        } else {
            local_3 = true;
        }
        let _e302 = local_3;
        if _e302 {
        } else {
            let _e241 = impl_CohortPixel_index(_e235);
            let _e245 = progress_pixels[i32(_e241)].control;
            let _e247 = progress_pixels[i32(_e241)].epoch;
            let _e249 = progress_pixels[i32(_e241)].payload_u002e_re;
            let _e251 = progress_pixels[i32(_e241)].payload_u002e_im;
            if (_e247 == _e233) {
                local_6 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(_e245, _e247, FeLocal_fe_Complex_f32_87ec9249_0_(_e249, _e251));
            } else {
                let _e255 = initial(_e233);
                local_6 = _e255;
            }
            let _e260 = local_6;
            let _e262 = impl_NativeCheckpoint_is_terminal(_e260, _e234.limit);
            if _e262 {
                local_8 = true;
            }
            let _e300 = local_8;
            if _e300 {
            } else {
                let _e271 = (_e207 != 0u);
                if (_e271 && (8195u > (4294967295u / select(1u, _e207, _e271)))) {
                    fe_trapped = true;
                }
                let _e277 = impl_CohortPixel_sample(_e235);
                let _e280 = continue_native_pixel((_e207 * 8195u), _e169, _e277, _e234.limit, _e234.quantum, _e260, (&fe_trapped));
                let _e282 = present_if_terminal(_e280, _e234.limit, _e37);
                progress_pixels[i32(_e241)].control = _e282.control;
                progress_pixels[i32(_e241)].epoch = _e282.epoch;
                progress_pixels[i32(_e241)].payload_u002e_re = _e282.payload.re;
                progress_pixels[i32(_e241)].payload_u002e_im = _e282.payload.im;
                let _e294 = color(_e280, (&fe_trapped));
                native_pixels[i32(_e241)] = _e294;
                antialiased_pixels[i32(_e241)] = _e294;
            }
        }
    }
    let _e315 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e315);
}
