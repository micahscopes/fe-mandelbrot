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

struct FeLocal_fe_Complex_f32_87ec9249_4_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_15_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_14_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_4_,
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

struct FeLocal_fe_MandelbrotViewState_c524184f_22_ {
    camera: FeLocal_fe_Camera_03494b0d_15_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_20_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_21_,
}

struct FeLocal_fe_RefinementSchedule_b8aa1d23_0_ {
    limit: u32,
    rounds: u32,
    quantum: u32,
    sx: u32,
    sy: u32,
    phases: u32,
    aa_stride: u32,
}

struct FeLocal_fe_Pixel_5817280a_1_ {
    x: u32,
    y: u32,
}

struct FeLocal_fe_CohortPixel_5c31bbba_2_ {
    pixel: FeLocal_fe_Pixel_5817280a_1_,
    active_: bool,
}

struct FeLocal_fe_Color_6b73191a_5_ {
    l: f32,
    a: f32,
    b: f32,
}

struct FeLocal_fe_u32_u32_u32_u32_d07e8e72_24_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
}

struct FeLocal_fe_PixelSample_d22dfa2e_27_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_PlaneSample_375c1fa3_28_ {
    u: f32,
    v: f32,
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

struct FeLocal_fe_OrbitProgress_96185e10_6_ {
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
    re: FeLocal_fe_More_More_More_Last_e6310ae8_12_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_12_,
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

struct FeLocal_fe_ReferenceMetadata_782c1884_26_ {
    valid_samples: u32,
    limit: u32,
}

struct FeLocal_fe_Oklch_77e78738_7_ {
    l: f32,
    chroma: f32,
    hue: f32,
}

struct FeLocal_fe_Vec3_f32_672e823a_3_ {
    x: f32,
    y: f32,
    z: f32,
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

struct FeLocal_fe_ViewCache_da6e2ccc_31_ {
    camera: FeLocal_fe_Camera_03494b0d_15_,
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

struct Params {
    p29_: f32,
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
    p58_: u32,
    p59_: u32,
    p60_: f32,
    p61_: f32,
    p62_: u32,
    p63_: u32,
    p64_: f32,
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
    p78_: u32,
    p79_: f32,
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
var<storage> params: Params;
@group(0) @binding(6)
var<storage, read_write> trap: array<u32, 65536>;

fn is_input_settled(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> bool {
    var local_6: bool;
    var local_7: bool = false;
    var local_8: bool = bool();

    let _e4 = (*a0_).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_).clock;
        let _e10 = (*a0_).last_input;
        if (60f <= (_e8 - _e10)) {
            local_8 = true;
        }
    }
    let _e17 = local_8;
    return _e17;
}

fn can_refine(a0_1: FeLocal_fe_ReferenceControl_7d077120_8_, a1_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_22_>) -> bool {
    var local_9: bool;
    var local_10: bool = false;
    var local_11: bool = bool();

    if (a0_1.pending == 0u) {
        if (a0_1.active_valid == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_11 = true;
            }
        }
    }
    let _e14 = local_11;
    return _e14;
}

fn to_i32_(a0_2: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_2)), 2147483648u, (a0_2 <= -2147483600f)), 2147483647u, (a0_2 >= 2147483600f)), (a0_2 == a0_2));
}

fn iteration_limit(a0_3: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_12: u32 = u32();
    var local_13: f32 = f32();
    var local_14: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_15: u32 = u32();
    var local_16: f32 = f32();
    var local_17: u32;
    var local_18: bool = false;
    var local_19: u32 = u32();

    local_12 = 0u;
    local_13 = a0_3;
    local_14 = 0u;
    loop {
        let _e12 = local_12;
        let _e14 = local_13;
        let _e16 = local_14;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_15 = (_e12 + 1u);
                    local_16 = (_e14 * 2f);
                }
            } else {
                local_15 = _e12;
                local_16 = _e14;
            }
            let _e36 = local_15;
            let _e38 = local_16;
            local_12 = _e36;
            local_13 = _e38;
            local_14 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_12;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_19 = 8192u;
        } else {
            local_19 = _e60;
        }
        let _e71 = local_19;
        local_17 = _e71;
        local_18 = true;
    }
    let _e77 = local_18;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_17;
    return _e79;
}

fn assert(a0_4: bool, fe_trapped_2: ptr<function, bool>) {
    var local_20: u32;
    var local_21: bool = false;

    if a0_4 {
        local_21 = true;
    } else {
        (*fe_trapped_2) = true;
    }
    return;
}

fn for_grid(a0_5: u32, a1_1: u32, a2_: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_0_ {
    var local_22: FeLocal_fe_RefinementSchedule_b8aa1d23_0_;
    var local_23: bool = false;
    var local_24: bool = bool();
    var local_25: FeLocal_fe_RefinementSchedule_b8aa1d23_0_;
    var local_26: bool = false;
    var local_27: u32 = u32();
    var loop_result_1: FeLocal_fe_RefinementSchedule_b8aa1d23_0_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_28_: u32;
    var loop_header_carry_29_: bool;

    if (0u < a0_5) {
        if ((8192u < a0_5) == false) {
            if (0u < a1_1) {
                if (0u < a2_) {
                    local_24 = true;
                }
            }
        }
    }
    let _e20 = local_24;
    assert(_e20, fe_trapped_3);
    let _e23 = (a0_5 + 128u);
    if (a0_5 > (4294967295u - 128u)) {
    } else {
        if (_e23 < 1u) {
        } else {
            local_27 = 2u;
            loop {
                let _e36 = local_27;
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
                                local_27 = (_e36 * 2u);
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
                                    loop_result_1 = FeLocal_fe_RefinementSchedule_b8aa1d23_0_(a0_5, ((_e23 - 1u) >> 7u), 128u, a1_1, a2_, (a1_1 * a2_), (a2_ * _e36));
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
                local_25 = _e96;
                local_26 = true;
            }
        }
        let _e101 = local_26;
        if _e101 {
        }
    }
    let _e104 = local_26;
    if _e104 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e106 = local_25;
    return _e106;
}

fn for_view(a0_6: f32, a1_2: f32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_0_ {
    let _e7 = to_i32_(((a1_2 + 127f) / 128f));
    let _e12 = to_i32_(((a1_2 + 255f) / 256f));
    let _e13 = iteration_limit(a0_6, fe_trapped_4);
    let _e14 = for_grid(_e13, _e7, _e12, fe_trapped_4);
    return _e14;
}

fn refine_steps(a0_7: FeLocal_fe_RefinementSchedule_b8aa1d23_0_, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_28: u32;
    var local_29: bool = false;

    let _e9 = (a0_7.rounds != 0u);
    if (_e9 && (a0_7.phases > (4294967295u / select(1u, a0_7.rounds, _e9)))) {
        (*fe_trapped_5) = true;
    } else {
        local_28 = (a0_7.rounds * a0_7.phases);
        local_29 = true;
    }
    let _e19 = local_28;
    return _e19;
}

fn impl_trait_Pixel_default() -> FeLocal_fe_Pixel_5817280a_1_ {
    return FeLocal_fe_Pixel_5817280a_1_();
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_CohortPixel_5c31bbba_2_ {
    let _e0 = impl_trait_Pixel_default();
    return FeLocal_fe_CohortPixel_5c31bbba_2_(_e0, false);
}

fn from_i32_(a0_8: u32) -> f32 {
    return f32(bitcast<i32>(a0_8));
}

fn phase_offset(a0_9: u32, a1_3: u32, a2_1: u32) -> u32 {
    let _e3 = from_i32_(a0_9);
    let _e6 = from_i32_(a1_3);
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

fn phase_order(a0_10: u32, a1_4: u32, a2_2: u32, a3_: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_30: u32;
    var local_31: bool = false;

    let _e9 = (a3_ * a3_);
    let _e10 = (a3_ != 0u);
    if (_e10 && (a3_ > (4294967295u / select(1u, a3_, _e10)))) {
    } else {
        let _e15 = phase_offset(a1_4, a2_2, _e9);
        let _e20 = (2u * a3_);
        let _e21 = (2u != 0u);
        if (_e21 && (a3_ > (4294967295u / select(1u, 2u, _e21)))) {
        } else {
            let _e28 = (_e20 + 1u);
            if (_e20 > (4294967295u - 1u)) {
            } else {
                let _e34 = (a0_10 * _e28);
                let _e35 = (a0_10 != 0u);
                if (_e35 && (_e28 > (4294967295u / select(1u, a0_10, _e35)))) {
                } else {
                    if (_e34 > (4294967295u - _e15)) {
                    } else {
                        if (_e9 == 0u) {
                        } else {
                            local_30 = ((_e34 + _e15) % _e9);
                            local_31 = true;
                        }
                        let _e51 = local_31;
                        if _e51 {
                        }
                    }
                    let _e53 = local_31;
                    if _e53 {
                    }
                }
                let _e55 = local_31;
                if _e55 {
                }
            }
            let _e57 = local_31;
            if _e57 {
            }
        }
        let _e59 = local_31;
        if _e59 {
        }
    }
    let _e62 = local_31;
    if _e62 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e64 = local_30;
    return _e64;
}

fn in_extent(a0_11: FeLocal_fe_Pixel_5817280a_1_, a1_5: f32) -> bool {
    var local_32: bool;
    var local_33: bool = false;
    var local_34: bool = bool();

    let _e5 = from_i32_(a0_11.x);
    if (_e5 < a1_5) {
        let _e8 = from_i32_(a0_11.y);
        if (_e8 < a1_5) {
            local_34 = true;
        }
    }
    let _e13 = local_34;
    return _e13;
}

fn at(a0_12: u32, a1_6: u32, a2_3: f32) -> FeLocal_fe_CohortPixel_5c31bbba_2_ {
    let _e3 = FeLocal_fe_Pixel_5817280a_1_(a0_12, a1_6);
    let _e4 = in_extent(_e3, a2_3);
    return FeLocal_fe_CohortPixel_5c31bbba_2_(_e3, _e4);
}

fn aa_pixel(a0_13: FeLocal_fe_RefinementSchedule_b8aa1d23_0_, a1_7: u32, a2_4: u32, a3_1: u32, a4_: f32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_CohortPixel_5c31bbba_2_ {
    var local_35: FeLocal_fe_CohortPixel_5c31bbba_2_;
    var local_36: bool = false;

    let _e7 = refine_steps(a0_13, fe_trapped_7);
    let _e13 = (a0_13.aa_stride * a0_13.aa_stride);
    let _e14 = (a0_13.aa_stride != 0u);
    if (_e14 && (a0_13.aa_stride > (4294967295u / select(1u, a0_13.aa_stride, _e14)))) {
    } else {
        if (a1_7 < _e7) {
        } else {
            if (_e7 > (4294967295u - _e13)) {
                (*fe_trapped_7) = true;
            } else {
                if ((a1_7 < (_e7 + _e13)) == false) {
                } else {
                    if (a1_7 < _e7) {
                        (*fe_trapped_7) = true;
                    } else {
                        let _e32 = phase_order((a1_7 - _e7), a2_4, a3_1, a0_13.aa_stride, fe_trapped_7);
                        let _e37 = (a2_4 * a0_13.aa_stride);
                        let _e38 = (a2_4 != 0u);
                        if (_e38 && (a0_13.aa_stride > (4294967295u / select(1u, a2_4, _e38)))) {
                            (*fe_trapped_7) = true;
                        } else {
                            if (a0_13.aa_stride == 0u) {
                                (*fe_trapped_7) = true;
                            } else {
                                let _e48 = (_e32 % a0_13.aa_stride);
                                if (_e37 > (4294967295u - _e48)) {
                                    (*fe_trapped_7) = true;
                                } else {
                                    let _e58 = (a3_1 * a0_13.aa_stride);
                                    let _e59 = (a3_1 != 0u);
                                    if (_e59 && (a0_13.aa_stride > (4294967295u / select(1u, a3_1, _e59)))) {
                                        (*fe_trapped_7) = true;
                                    } else {
                                        if (a0_13.aa_stride == 0u) {
                                            (*fe_trapped_7) = true;
                                        } else {
                                            let _e69 = (_e32 / a0_13.aa_stride);
                                            if (_e58 > (4294967295u - _e69)) {
                                                (*fe_trapped_7) = true;
                                            } else {
                                                let _e75 = at((_e37 + _e48), (_e58 + _e69), a4_);
                                                local_35 = _e75;
                                                local_36 = true;
                                            }
                                            let _e80 = local_36;
                                            if _e80 {
                                            }
                                        }
                                        let _e82 = local_36;
                                        if _e82 {
                                        }
                                    }
                                    let _e84 = local_36;
                                    if _e84 {
                                    }
                                }
                                let _e86 = local_36;
                                if _e86 {
                                }
                            }
                            let _e88 = local_36;
                            if _e88 {
                            }
                        }
                        let _e90 = local_36;
                        if _e90 {
                        }
                    }
                    let _e92 = local_36;
                    if _e92 {
                    }
                }
                let _e94 = local_36;
                if _e94 {
                }
            }
            let _e96 = local_36;
            if _e96 {
            }
        }
        let _e102 = local_36;
        if _e102 {
        } else {
            let _e97 = impl_trait_CohortPixel_default();
            local_35 = _e97;
            local_36 = true;
        }
    }
    let _e105 = local_36;
    if _e105 {
    } else {
        (*fe_trapped_7) = true;
    }
    let _e107 = local_35;
    return _e107;
}

fn impl_Pixel_index(a0_14: FeLocal_fe_Pixel_5817280a_1_, a1_8: u32) -> u32 {
    return ((a0_14.y << a1_8) | a0_14.x);
}

fn impl_CohortPixel_index(a0_15: FeLocal_fe_CohortPixel_5c31bbba_2_) -> u32 {
    let _e3 = impl_Pixel_index(a0_15.pixel, 11u);
    return _e3;
}

fn unpack_lab(a0_16: u32) -> FeLocal_fe_Color_6b73191a_5_ {
    let _e3 = from_i32_((a0_16 & 4095u));
    let _e10 = from_i32_(((a0_16 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_16 >> 22u));
    return FeLocal_fe_Color_6b73191a_5_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn clamped_neighbor_indices(a0_17: FeLocal_fe_Pixel_5817280a_1_, a1_9: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_u32_u32_u32_u32_d07e8e72_24_ {
    var local_37: FeLocal_fe_u32_u32_u32_u32_d07e8e72_24_;
    var local_38: bool = false;
    var local_39: u32 = u32();
    var local_40: FeLocal_fe_u32_u32_u32_u32_d07e8e72_24_;
    var local_41: bool = false;
    var local_42: u32 = u32();
    var local_43: FeLocal_fe_u32_u32_u32_u32_d07e8e72_24_;
    var local_44: bool = false;
    var local_45: u32 = u32();
    var local_46: FeLocal_fe_u32_u32_u32_u32_d07e8e72_24_;
    var local_47: bool = false;
    var local_48: u32 = u32();

    let _e7 = to_i32_((a1_9 - 1f));
    if (0u < a0_17.x) {
        if (a0_17.x < 1u) {
            (*fe_trapped_8) = true;
        } else {
            local_39 = (a0_17.x - 1u);
        }
    }
    let _e20 = local_39;
    if (a0_17.x < _e7) {
        if (a0_17.x > (4294967295u - 1u)) {
            (*fe_trapped_8) = true;
        } else {
            local_42 = (a0_17.x + 1u);
        }
    } else {
        local_42 = _e7;
    }
    let _e35 = local_42;
    if (0u < a0_17.y) {
        if (a0_17.y < 1u) {
            (*fe_trapped_8) = true;
        } else {
            local_45 = (a0_17.y - 1u);
        }
    }
    let _e48 = local_45;
    if (a0_17.y < _e7) {
        if (a0_17.y > (4294967295u - 1u)) {
            (*fe_trapped_8) = true;
        } else {
            local_48 = (a0_17.y + 1u);
        }
    } else {
        local_48 = _e7;
    }
    let _e61 = local_48;
    return FeLocal_fe_u32_u32_u32_u32_d07e8e72_24_(((a0_17.y << 11u) | _e20), ((a0_17.y << 11u) | _e35), ((_e48 << 11u) | a0_17.x), ((_e61 << 11u) | a0_17.x));
}

fn impl_trait_f32_abs(a0_18: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_18) & 2147483647u));
}

fn lib_image_max(a0_19: f32, a1_10: f32) -> f32 {
    var local_49: f32;
    var local_50: bool = false;
    var local_51: f32 = f32();

    if (a1_10 < a0_19) {
        local_51 = a0_19;
    } else {
        local_51 = a1_10;
    }
    let _e8 = local_51;
    return _e8;
}

fn contrast(a0_20: FeLocal_fe_Color_6b73191a_5_, a1_11: FeLocal_fe_Color_6b73191a_5_) -> f32 {
    let _e5 = impl_trait_f32_abs((a0_20.l - a1_11.l));
    let _e11 = impl_trait_f32_abs((a0_20.a - a1_11.a));
    let _e17 = impl_trait_f32_abs((a0_20.b - a1_11.b));
    let _e20 = lib_image_max((4f * _e11), (4f * _e17));
    let _e21 = lib_image_max((2f * _e5), _e20);
    return _e21;
}

fn impl_trait_f32_max(a0_21: f32, a1_12: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_21);
    let _e3 = bitcast<u32>(a1_12);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn ordered_2x2_(a0_22: u32, a1_13: u32) -> FeLocal_fe_PixelSample_d22dfa2e_27_ {
    let _e6 = from_i32_(a0_22);
    let _e9 = from_i32_((a0_22 & 1u));
    let _e13 = from_i32_(a1_13);
    let _e16 = from_i32_((a1_13 & 1u));
    return FeLocal_fe_PixelSample_d22dfa2e_27_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn sample(a0_23: FeLocal_fe_Pixel_5817280a_1_) -> FeLocal_fe_PixelSample_d22dfa2e_27_ {
    let _e3 = ordered_2x2_(a0_23.x, a0_23.y);
    return _e3;
}

fn impl_Pixel_offset_sample(a0_24: FeLocal_fe_Pixel_5817280a_1_, a1_14: FeLocal_fe_Vec2_f32_2772165c_16_) -> FeLocal_fe_PixelSample_d22dfa2e_27_ {
    let _e2 = sample(a0_24);
    return FeLocal_fe_PixelSample_d22dfa2e_27_((_e2.x + a1_14.x), (_e2.y + a1_14.y));
}

fn impl_CohortPixel_offset_sample(a0_25: FeLocal_fe_CohortPixel_5c31bbba_2_, a1_15: FeLocal_fe_Vec2_f32_2772165c_16_) -> FeLocal_fe_PixelSample_d22dfa2e_27_ {
    let _e3 = impl_Pixel_offset_sample(a0_25.pixel, a1_15);
    return _e3;
}

fn plane(a0_26: FeLocal_fe_PixelSample_d22dfa2e_27_, a1_16: f32) -> FeLocal_fe_PlaneSample_375c1fa3_28_ {
    return FeLocal_fe_PlaneSample_375c1fa3_28_((((a0_26.x / a1_16) * 2f) - 1f), (1f - ((a0_26.y / a1_16) * 2f)));
}

fn center_offset(a0_27: FeLocal_fe_PackedReference_e11ca04a_23_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_(bitcast<f32>(a0_27.re_w2_bits), bitcast<f32>(a0_27.re_w3_bits));
}

fn scale(a0_28: FeLocal_fe_Complex_f32_87ec9249_4_, a1_17: f32) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_((a0_28.re * a1_17), (a0_28.im * a1_17));
}

fn impl_trait_Complex_one_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_(1f, 0f);
}

fn eq(a0_29: FeLocal_fe_Complex_f32_87ec9249_4_, a1_18: FeLocal_fe_Complex_f32_87ec9249_4_) -> bool {
    var local_52: bool;
    var local_53: bool = false;
    var local_54: bool = bool();

    if (a0_29.re == a1_18.re) {
        if (a0_29.im == a1_18.im) {
            local_54 = true;
        }
    }
    let _e13 = local_54;
    return _e13;
}

fn mul(a0_30: FeLocal_fe_Complex_f32_87ec9249_4_, a1_19: FeLocal_fe_Complex_f32_87ec9249_4_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_(((a0_30.re * a1_19.re) - (a0_30.im * a1_19.im)), ((a0_30.re * a1_19.im) + (a0_30.im * a1_19.re)));
}

fn plane_offset(a0_31: FeLocal_fe_Camera_03494b0d_15_, a1_20: FeLocal_fe_Complex_f32_87ec9249_4_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    var local_55: FeLocal_fe_Complex_f32_87ec9249_4_;
    var local_56: bool = false;
    var local_57: FeLocal_fe_Complex_f32_87ec9249_4_ = FeLocal_fe_Complex_f32_87ec9249_4_();

    let _e5 = scale(a1_20, a0_31.zoom);
    let _e7 = impl_trait_Complex_one_ge58b();
    let _e8 = eq(a0_31.orientation, _e7);
    if _e8 {
        local_57 = _e5;
    } else {
        let _e10 = mul(a0_31.orientation, _e5);
        local_57 = _e10;
    }
    let _e14 = local_57;
    return _e14;
}

fn impl_trait_Complex_add_ge58b(a0_32: FeLocal_fe_Complex_f32_87ec9249_4_, a1_21: FeLocal_fe_Complex_f32_87ec9249_4_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_((a0_32.re + a1_21.re), (a0_32.im + a1_21.im));
}

fn pixel_delta_from_reference(a1_22: u32, a2_5: FeLocal_fe_Camera_03494b0d_15_, a3_2: FeLocal_fe_PixelSample_d22dfa2e_27_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    var local_58: FeLocal_fe_Complex_f32_87ec9249_4_;
    var local_59: bool = false;

    let _e7 = plane(a3_2, a2_5.res);
    if (a1_22 > (4294967295u - 8194u)) {
        (*fe_trapped_9) = true;
    }
    let _e17 = orbit[i32((a1_22 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_22 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_22 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_22 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_22 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_22 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_22 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_22 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_PackedReference_e11ca04a_23_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e37 = plane_offset(a2_5, FeLocal_fe_Complex_f32_87ec9249_4_(_e7.u, _e7.v));
    let _e38 = impl_trait_Complex_add_ge58b(_e33, _e37);
    return _e38;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_();
}

fn from_continuation(a0_33: FeLocal_fe_Complex_f32_87ec9249_4_, a1_23: FeLocal_fe_Complex_f32_87ec9249_4_, a2_6: u32, a3_3: u32, a4_1: u32, a5_: f32) -> FeLocal_fe_OrbitProgress_96185e10_6_ {
    return FeLocal_fe_OrbitProgress_96185e10_6_(a0_33.re, a0_33.im, a1_23.re, a1_23.im, a2_6, a3_3, a4_1, a5_);
}

fn empty_progress(a0_34: u32) -> FeLocal_fe_OrbitProgress_96185e10_6_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_34, 4f);
    return _e6;
}

fn progress_is_presentable(a0_35: u32) -> bool {
    return (((a0_35 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_36: FeLocal_fe_OrbitProgress_96185e10_6_) -> bool {
    let _e2 = progress_is_presentable(a0_36.reference_i);
    return _e2;
}

fn progress_is_glitched(a0_37: u32) -> bool {
    return (((a0_37 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_38: FeLocal_fe_OrbitProgress_96185e10_6_) -> bool {
    let _e2 = progress_is_glitched(a0_38.reference_i);
    return _e2;
}

fn pack_progress_reference(a0_39: u32, a1_24: u32, a2_7: u32) -> u32 {
    return (((a0_39 & 536870911u) | (a1_24 << 31u)) | (a2_7 << 30u));
}

fn from_quad(a0_40: f32, a1_25: f32, a2_8: f32, a3_4: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_12_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_12_(a0_40, FeLocal_fe_More_More_Last_60a5ba63_11_(a1_25, FeLocal_fe_More_Last_1ac585f5_10_(a2_8, FeLocal_fe_Last_eb970eb0_9_(a3_4))));
}

fn decode(a0_41: FeLocal_fe_PackedReference_e11ca04a_23_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_ {
    let _e9 = from_quad(bitcast<f32>(a0_41.re_w0_bits), bitcast<f32>(a0_41.re_w1_bits), bitcast<f32>(a0_41.re_w2_bits), bitcast<f32>(a0_41.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_41.im_w0_bits), bitcast<f32>(a0_41.im_w1_bits), bitcast<f32>(a0_41.im_w2_bits), bitcast<f32>(a0_41.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_(_e9, _e18);
}

fn to_quad(a0_42: FeLocal_fe_More_More_More_Last_e6310ae8_12_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_29_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_29_(a0_42.lead, a0_42.tail.lead, a0_42.tail.tail.lead, a0_42.tail.tail.tail.value);
}

fn perturb(a0_43: FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_, a1_26: FeLocal_fe_Complex_f32_87ec9249_4_, a2_9: FeLocal_fe_Complex_f32_87ec9249_4_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    let _e4 = to_quad(a0_43.re);
    let _e10 = to_quad(a0_43.im);
    return FeLocal_fe_Complex_f32_87ec9249_4_(((((2f * ((_e4.f0_ * a1_26.re) - (_e10.f0_ * a1_26.im))) + (2f * ((((((_e4.f1_ * a1_26.re) - (_e10.f1_ * a1_26.im)) + (_e4.f2_ * a1_26.re)) - (_e10.f2_ * a1_26.im)) + (_e4.f3_ * a1_26.re)) - (_e10.f3_ * a1_26.im)))) + ((a1_26.re * a1_26.re) - (a1_26.im * a1_26.im))) + a2_9.re), ((((2f * ((_e4.f0_ * a1_26.im) + (_e10.f0_ * a1_26.re))) + (2f * ((((((_e4.f1_ * a1_26.im) + (_e10.f1_ * a1_26.re)) + (_e4.f2_ * a1_26.im)) + (_e10.f2_ * a1_26.re)) + (_e4.f3_ * a1_26.im)) + (_e10.f3_ * a1_26.re)))) + ((2f * a1_26.re) * a1_26.im)) + a2_9.im));
}

fn two_sum(a0_44: f32, a1_27: f32) -> FeLocal_fe_f32_f32_b3478b14_30_ {
    let _e2 = (a0_44 + a1_27);
    let _e3 = (_e2 - a0_44);
    return FeLocal_fe_f32_f32_b3478b14_30_(_e2, ((a0_44 - (_e2 - _e3)) + (a1_27 - _e3)));
}

fn reference_plus_delta(a0_45: f32, a1_28: f32, a2_10: f32, a3_5: f32, a4_2: f32) -> f32 {
    let _e5 = two_sum(a0_45, a4_2);
    let _e8 = two_sum(_e5.f0_, a1_28);
    let _e11 = two_sum(_e8.f0_, a2_10);
    let _e14 = two_sum(_e11.f0_, a3_5);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_46: FeLocal_fe_More_More_More_Last_e6310ae8_12_, a1_29: f32) -> f32 {
    let _e2 = to_quad(a0_46);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_29);
    return _e7;
}

fn reference_with_delta(a0_47: FeLocal_fe_Complex_More_More_More_Last_7724c22a_25_, a1_30: FeLocal_fe_Complex_f32_87ec9249_4_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    let _e4 = expansion_plus_delta(a0_47.re, a1_30.re);
    let _e7 = expansion_plus_delta(a0_47.im, a1_30.im);
    return FeLocal_fe_Complex_f32_87ec9249_4_(_e4, _e7);
}

fn norm_squared(a0_48: FeLocal_fe_Complex_f32_87ec9249_4_) -> f32 {
    return ((a0_48.re * a0_48.re) + (a0_48.im * a0_48.im));
}

fn is_invalid(a0_49: FeLocal_fe_PackedReference_e11ca04a_23_) -> bool {
    var local_60: bool;
    var local_61: bool = false;
    var local_62: bool = bool();

    if (a0_49.re_w0_bits == 2143289344u) {
        local_62 = true;
    } else {
        if (a0_49.im_w0_bits == 2143289344u) {
            local_62 = true;
        }
    }
    let _e14 = local_62;
    return _e14;
}

fn non_finite(a0_50: f32) -> bool {
    return (((a0_50 - a0_50) == 0f) == false);
}

fn is_non_finite_complex(a0_51: FeLocal_fe_Complex_f32_87ec9249_4_) -> bool {
    var local_63: bool;
    var local_64: bool = false;
    var local_65: bool = bool();

    let _e4 = non_finite(a0_51.re);
    if _e4 {
        local_65 = true;
    } else {
        let _e6 = non_finite(a0_51.im);
        if _e6 {
            local_65 = true;
        }
    }
    let _e12 = local_65;
    return _e12;
}

fn decode_metadata(a0_52: FeLocal_fe_PackedReference_e11ca04a_23_) -> FeLocal_fe_ReferenceMetadata_782c1884_26_ {
    return FeLocal_fe_ReferenceMetadata_782c1884_26_(a0_52.re_w0_bits, a0_52.re_w1_bits);
}

fn delta(a0_53: FeLocal_fe_OrbitProgress_96185e10_6_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_(a0_53.dz_re, a0_53.dz_im);
}

fn position(a0_54: FeLocal_fe_OrbitProgress_96185e10_6_) -> FeLocal_fe_Complex_f32_87ec9249_4_ {
    return FeLocal_fe_Complex_f32_87ec9249_4_(a0_54.z_re, a0_54.z_im);
}

fn progress_reference_index(a0_55: u32) -> u32 {
    return (a0_55 & 536870911u);
}

fn reference_index(a0_56: FeLocal_fe_OrbitProgress_96185e10_6_) -> u32 {
    let _e2 = progress_reference_index(a0_56.reference_i);
    return _e2;
}

fn progress_is_escaped(a0_57: u32) -> bool {
    return (((a0_57 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_58: FeLocal_fe_OrbitProgress_96185e10_6_) -> bool {
    let _e2 = progress_is_escaped(a0_58.reference_i);
    return _e2;
}

fn advance_progress(a1_31: u32, a2_11: FeLocal_fe_Complex_f32_87ec9249_4_, a3_6: u32, a4_3: u32, a5_1: FeLocal_fe_OrbitProgress_96185e10_6_, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_6_ {
    var local_66: FeLocal_fe_OrbitProgress_96185e10_6_;
    var local_67: bool = false;
    var local_68: FeLocal_fe_OrbitProgress_96185e10_6_ = FeLocal_fe_OrbitProgress_96185e10_6_();
    var local_69: u32 = u32();
    var local_70: u32 = u32();
    var local_71: u32 = u32();
    var local_72: f32 = f32();
    var local_73: FeLocal_fe_Complex_f32_87ec9249_4_ = FeLocal_fe_Complex_f32_87ec9249_4_();
    var local_74: FeLocal_fe_Complex_f32_87ec9249_4_ = FeLocal_fe_Complex_f32_87ec9249_4_();
    var local_75: u32 = u32();
    var local_76: u32 = u32();
    var local_77: u32 = u32();
    var local_78: u32 = u32();
    var loop_result_2: FeLocal_fe_OrbitProgress_96185e10_6_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_81_: bool;
    var local_79: FeLocal_fe_Complex_f32_87ec9249_4_ = FeLocal_fe_Complex_f32_87ec9249_4_();
    var local_80: u32 = u32();
    var local_81: f32 = f32();
    var local_82: FeLocal_fe_Complex_f32_87ec9249_4_ = FeLocal_fe_Complex_f32_87ec9249_4_();
    var local_83: FeLocal_fe_Complex_f32_87ec9249_4_ = FeLocal_fe_Complex_f32_87ec9249_4_();
    var local_84: u32 = u32();
    var local_85: u32 = u32();
    var local_86: u32 = u32();
    var local_87: bool = bool();

    let _e9 = is_presentable(a5_1);
    if _e9 {
        local_68 = a5_1;
    } else {
        if (a1_31 > (4294967295u - 8194u)) {
            (*fe_trapped_10) = true;
        } else {
            let _e20 = orbit[i32((a1_31 + 8194u))].re_w0_bits;
            let _e22 = orbit[i32((a1_31 + 8194u))].re_w1_bits;
            let _e24 = orbit[i32((a1_31 + 8194u))].re_w2_bits;
            let _e26 = orbit[i32((a1_31 + 8194u))].re_w3_bits;
            let _e28 = orbit[i32((a1_31 + 8194u))].im_w0_bits;
            let _e30 = orbit[i32((a1_31 + 8194u))].im_w1_bits;
            let _e32 = orbit[i32((a1_31 + 8194u))].im_w2_bits;
            let _e34 = orbit[i32((a1_31 + 8194u))].im_w3_bits;
            let _e36 = decode_metadata(FeLocal_fe_PackedReference_e11ca04a_23_(_e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
            let _e38 = delta(a5_1);
            let _e39 = position(a5_1);
            let _e40 = reference_index(a5_1);
            let _e41 = is_escaped(a5_1);
            if _e41 {
                local_69 = 1u;
            }
            let _e46 = local_69;
            let _e47 = is_glitched(a5_1);
            if _e47 {
                local_70 = 1u;
            }
            let _e51 = local_70;
            local_71 = 0u;
            local_72 = a5_1.magnitude;
            local_73 = _e39;
            local_74 = _e38;
            local_75 = _e51;
            local_76 = _e46;
            local_77 = _e40;
            local_78 = a5_1.iteration;
            loop {
                let _e73 = local_71;
                let _e75 = local_72;
                let _e77 = local_73;
                let _e79 = local_74;
                let _e81 = local_75;
                let _e83 = local_76;
                let _e85 = local_77;
                let _e87 = local_78;
                let _e88 = (_e87 < a3_6);
                loop_header_carry_81_ = _e88;
                if _e88 {
                    if (_e73 < a4_3) {
                        if (_e83 == 0u) {
                            if (_e81 == 0u) {
                                if (_e85 > (4294967295u - 1u)) {
                                } else {
                                    if (((_e85 + 1u) < _e36.valid_samples) == false) {
                                        local_79 = _e77;
                                        local_80 = 0u;
                                    } else {
                                        local_79 = _e79;
                                        local_80 = _e85;
                                    }
                                    let _e110 = local_79;
                                    let _e112 = local_80;
                                    if (a1_31 > (4294967295u - _e112)) {
                                    } else {
                                        let _e120 = orbit[i32((a1_31 + _e112))].re_w0_bits;
                                        let _e122 = orbit[i32((a1_31 + _e112))].re_w1_bits;
                                        let _e124 = orbit[i32((a1_31 + _e112))].re_w2_bits;
                                        let _e126 = orbit[i32((a1_31 + _e112))].re_w3_bits;
                                        let _e128 = orbit[i32((a1_31 + _e112))].im_w0_bits;
                                        let _e130 = orbit[i32((a1_31 + _e112))].im_w1_bits;
                                        let _e132 = orbit[i32((a1_31 + _e112))].im_w2_bits;
                                        let _e134 = orbit[i32((a1_31 + _e112))].im_w3_bits;
                                        let _e135 = FeLocal_fe_PackedReference_e11ca04a_23_(_e120, _e122, _e124, _e126, _e128, _e130, _e132, _e134);
                                        let _e137 = (a1_31 + _e112);
                                        if (a1_31 > (4294967295u - _e112)) {
                                        } else {
                                            if (_e137 > (4294967295u - 1u)) {
                                            } else {
                                                let _e154 = orbit[i32((_e137 + 1u))].re_w0_bits;
                                                let _e156 = orbit[i32((_e137 + 1u))].re_w1_bits;
                                                let _e158 = orbit[i32((_e137 + 1u))].re_w2_bits;
                                                let _e160 = orbit[i32((_e137 + 1u))].re_w3_bits;
                                                let _e162 = orbit[i32((_e137 + 1u))].im_w0_bits;
                                                let _e164 = orbit[i32((_e137 + 1u))].im_w1_bits;
                                                let _e166 = orbit[i32((_e137 + 1u))].im_w2_bits;
                                                let _e168 = orbit[i32((_e137 + 1u))].im_w3_bits;
                                                let _e169 = FeLocal_fe_PackedReference_e11ca04a_23_(_e154, _e156, _e158, _e160, _e162, _e164, _e166, _e168);
                                                let _e170 = is_invalid(_e135);
                                                if _e170 {
                                                    local_81 = _e75;
                                                    local_82 = _e77;
                                                    local_83 = _e110;
                                                    local_84 = 1u;
                                                    local_85 = _e83;
                                                    local_86 = _e112;
                                                } else {
                                                    let _e171 = is_invalid(_e169);
                                                    if _e171 {
                                                        local_81 = _e75;
                                                        local_82 = _e77;
                                                        local_83 = _e110;
                                                        local_84 = 1u;
                                                        local_85 = _e83;
                                                        local_86 = _e112;
                                                    } else {
                                                        let _e173 = decode(_e135);
                                                        let _e174 = decode(_e169);
                                                        let _e175 = perturb(_e173, _e110, a2_11);
                                                        let _e176 = reference_with_delta(_e174, _e175);
                                                        let _e177 = norm_squared(_e176);
                                                        let _e178 = norm_squared(_e175);
                                                        if (4f < _e177) {
                                                            let _e184 = impl_trait_f32_abs((_e177 - 4f));
                                                            let _e186 = impl_trait_f32_max(1f, _e177);
                                                            if (_e184 <= (0.000004f * _e186)) {
                                                                local_87 = true;
                                                            } else {
                                                                local_87 = false;
                                                            }
                                                        } else {
                                                            local_87 = false;
                                                        }
                                                        let _e197 = local_87;
                                                        let _e198 = is_non_finite_complex(_e175);
                                                        if _e198 {
                                                            local_81 = _e75;
                                                            local_82 = _e77;
                                                            local_83 = _e110;
                                                            local_84 = 1u;
                                                            local_85 = _e83;
                                                            local_86 = _e112;
                                                        } else {
                                                            let _e199 = non_finite(_e177);
                                                            if (_e199 | _e197) {
                                                                local_81 = _e75;
                                                                local_82 = _e77;
                                                                local_83 = _e110;
                                                                local_84 = 1u;
                                                                local_85 = _e83;
                                                                local_86 = _e112;
                                                            } else {
                                                                if (4f < _e177) {
                                                                    local_81 = _e177;
                                                                    local_82 = _e176;
                                                                    local_83 = _e175;
                                                                    local_84 = _e81;
                                                                    local_85 = 1u;
                                                                    local_86 = _e112;
                                                                } else {
                                                                    if (_e177 < _e178) {
                                                                        local_81 = _e75;
                                                                        local_82 = _e176;
                                                                        local_83 = _e176;
                                                                        local_84 = _e81;
                                                                        local_85 = _e83;
                                                                        local_86 = 0u;
                                                                    } else {
                                                                        if (_e112 > (4294967295u - 1u)) {
                                                                            (*fe_trapped_10) = true;
                                                                            break;
                                                                        } else {
                                                                            local_81 = _e75;
                                                                            local_82 = _e176;
                                                                            local_83 = _e175;
                                                                            local_84 = _e81;
                                                                            local_85 = _e83;
                                                                            local_86 = (_e112 + 1u);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                let _e258 = local_81;
                                                let _e260 = local_82;
                                                let _e262 = local_83;
                                                let _e264 = local_84;
                                                let _e266 = local_85;
                                                let _e268 = local_86;
                                                local_71 = (_e73 + 1u);
                                                local_72 = _e258;
                                                local_73 = _e260;
                                                local_74 = _e262;
                                                local_75 = _e264;
                                                local_76 = _e266;
                                                local_77 = _e268;
                                                local_78 = (_e87 + 1u);
                                                continue;
                                            }
                                        }
                                    }
                                }
                                (*fe_trapped_10) = true;
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
            let _e284 = local_72;
            let _e286 = local_73;
            let _e288 = local_74;
            let _e290 = local_75;
            let _e292 = local_76;
            let _e294 = local_77;
            let _e296 = local_78;
            let _e297 = pack_progress_reference(_e294, _e292, _e290);
            let _e299 = from_continuation(_e288, _e286, _e297, _e296, a5_1.epoch, _e284);
            local_68 = _e299;
        }
    }
    let _e303 = local_68;
    return _e303;
}

fn sample_progress(a1_32: u32, a2_12: FeLocal_fe_Camera_03494b0d_15_, a3_7: FeLocal_fe_PixelSample_d22dfa2e_27_, a4_4: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_6_ {
    var local_88: FeLocal_fe_OrbitProgress_96185e10_6_;
    var local_89: bool = false;
    var local_90: FeLocal_fe_OrbitProgress_96185e10_6_;
    var local_91: bool = false;
    var local_92: u32 = u32();

    let _e7 = pixel_delta_from_reference(a1_32, a2_12, a3_7, fe_trapped_11);
    if (a1_32 > (4294967295u - 8194u)) {
        (*fe_trapped_11) = true;
    }
    let _e19 = orbit[i32((a1_32 + 8194u))].re_w0_bits;
    let _e21 = orbit[i32((a1_32 + 8194u))].re_w1_bits;
    let _e23 = orbit[i32((a1_32 + 8194u))].re_w2_bits;
    let _e25 = orbit[i32((a1_32 + 8194u))].re_w3_bits;
    let _e27 = orbit[i32((a1_32 + 8194u))].im_w0_bits;
    let _e29 = orbit[i32((a1_32 + 8194u))].im_w1_bits;
    let _e31 = orbit[i32((a1_32 + 8194u))].im_w2_bits;
    let _e33 = orbit[i32((a1_32 + 8194u))].im_w3_bits;
    let _e35 = decode_metadata(FeLocal_fe_PackedReference_e11ca04a_23_(_e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33));
    if (a4_4 < _e35.limit) {
        local_92 = a4_4;
    } else {
        local_92 = _e35.limit;
    }
    let _e42 = local_92;
    let _e44 = empty_progress(0u);
    let _e45 = advance_progress(a1_32, _e7, _e42, _e42, _e44, fe_trapped_11);
    return _e45;
}

fn clamp_(a0_59: f32, a1_33: f32, a2_13: f32) -> f32 {
    var local_93: f32;
    var local_94: bool = false;
    var local_95: f32 = f32();

    if (a0_59 < a1_33) {
        local_95 = a1_33;
    } else {
        if (a2_13 < a0_59) {
            local_95 = a2_13;
        } else {
            local_95 = a0_59;
        }
    }
    let _e11 = local_95;
    return _e11;
}

fn pack_lab(a0_60: FeLocal_fe_Color_6b73191a_5_) -> u32 {
    let _e4 = clamp_(a0_60.l, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_60.a * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_60.b * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_61: f32) -> f32 {
    return floor(a0_61);
}

fn fract_(a0_62: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_62);
    return (a0_62 - _e1);
}

fn anchor(a0_63: u32) -> FeLocal_fe_Oklch_77e78738_7_ {
    var local_96: FeLocal_fe_Oklch_77e78738_7_;
    var local_97: bool = false;
    var local_98: FeLocal_fe_Oklch_77e78738_7_ = FeLocal_fe_Oklch_77e78738_7_();

    switch a0_63 {
        case 0u: {
            local_98 = FeLocal_fe_Oklch_77e78738_7_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_98 = FeLocal_fe_Oklch_77e78738_7_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_98 = FeLocal_fe_Oklch_77e78738_7_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_98 = FeLocal_fe_Oklch_77e78738_7_(0.73f, 0.142f, 165f);
        }
        default: {
            local_98 = FeLocal_fe_Oklch_77e78738_7_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_98;
    return _e29;
}

fn hue_remainder(a0_64: f32) -> f32 {
    var local_99: f32;
    var local_100: bool = false;
    var local_101: f32;
    var local_102: bool = false;
    var local_103: f32;
    var local_104: bool = false;
    var local_105: f32 = f32();
    var local_106: f32;
    var local_107: bool = false;
    var local_108: f32 = f32();
    var local_109: u32 = u32();
    var local_110: u32 = u32();
    var loop_result_3: f32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_51_: bool;
    var local_111: f32;
    var local_112: bool = false;
    var local_113: f32 = f32();

    let _e4 = (bitcast<u32>(a0_64) & 2147483647u);
    if (_e4 < 1135869952u) {
        local_99 = a0_64;
        local_100 = true;
    }
    let _e89 = local_100;
    if _e89 {
    } else {
        let _e12 = (_e4 >> 23u);
        if (_e12 == 255u) {
            local_101 = a0_64;
            local_102 = true;
        }
        let _e84 = local_102;
        if _e84 {
        } else {
            if (a0_64 < 0f) {
                local_105 = -(a0_64);
            } else {
                local_105 = a0_64;
            }
            let _e28 = local_105;
            if (_e12 < 150u) {
                let _e31 = to_i32_(_e28);
                let _e34 = from_i32_((_e31 % 360u));
                let _e35 = from_i32_(_e31);
                local_108 = (_e34 + (_e28 - _e35));
            } else {
                local_109 = (((_e4 & 8388607u) | 8388608u) % 360u);
                local_110 = (_e12 - 150u);
                loop {
                    let _e52 = local_109;
                    let _e54 = local_110;
                    let _e56 = (0u < _e54);
                    loop_header_carry_51_ = _e56;
                    if _e56 {
                        local_109 = ((_e52 << 1u) % 360u);
                        local_110 = (_e54 - 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                let _e67 = local_109;
                let _e68 = from_i32_(_e67);
                local_108 = _e68;
            }
            let _e74 = local_108;
            if (a0_64 < 0f) {
                local_113 = -(_e74);
            } else {
                local_113 = _e74;
            }
            let _e81 = local_113;
            local_101 = _e81;
        }
        let _e86 = local_101;
        local_99 = _e86;
    }
    let _e91 = local_99;
    return _e91;
}

fn interpolate(a0_65: FeLocal_fe_Oklch_77e78738_7_, a1_34: FeLocal_fe_Oklch_77e78738_7_, a2_14: f32) -> FeLocal_fe_Oklch_77e78738_7_ {
    var local_114: FeLocal_fe_Oklch_77e78738_7_;
    var local_115: bool = false;
    var local_116: bool = bool();
    var local_117: FeLocal_fe_Oklch_77e78738_7_;
    var local_118: bool = false;
    var local_119: f32 = f32();
    var local_120: FeLocal_fe_Oklch_77e78738_7_;
    var local_121: bool = false;
    var local_122: f32 = f32();
    var local_123: FeLocal_fe_Oklch_77e78738_7_;
    var local_124: bool = false;
    var local_125: f32 = f32();
    var local_126: FeLocal_fe_Oklch_77e78738_7_;
    var local_127: bool = false;
    var local_128: f32 = f32();
    var local_129: f32 = f32();

    let _e7 = (a1_34.hue - a0_65.hue);
    if (-540f <= a0_65.hue) {
        if (a0_65.hue <= 540f) {
            if (-540f <= a1_34.hue) {
                if (a1_34.hue <= 540f) {
                    if (-540f <= _e7) {
                        if (_e7 <= 540f) {
                            local_116 = true;
                        }
                    }
                }
            }
        }
    }
    let _e29 = local_116;
    if _e29 {
        local_119 = a0_65.hue;
    } else {
        let _e32 = hue_remainder(a0_65.hue);
        local_119 = _e32;
    }
    let _e38 = local_119;
    if _e29 {
        local_122 = _e7;
    } else {
        let _e40 = hue_remainder(a1_34.hue);
        local_122 = (_e40 - _e38);
    }
    let _e47 = local_122;
    if (180f < _e47) {
        local_125 = (_e47 - 360f);
    } else {
        if (_e47 < -180f) {
            local_125 = (_e47 + 360f);
        } else {
            local_125 = _e47;
        }
    }
    let _e62 = local_125;
    if (_e29 == false) {
        if (180f < _e62) {
            local_129 = (_e62 - 360f);
        } else {
            if (_e62 < -180f) {
                local_129 = (_e62 + 360f);
            } else {
                local_129 = _e62;
            }
        }
        let _e78 = local_129;
        if (_e78 == -180f) {
            if (a0_65.hue < a1_34.hue) {
                local_128 = 180f;
            } else {
                if (_e78 == 180f) {
                    if (a1_34.hue < a0_65.hue) {
                        local_128 = -180f;
                    } else {
                        local_128 = _e78;
                    }
                } else {
                    local_128 = _e78;
                }
            }
        } else {
            if (_e78 == 180f) {
                if (a1_34.hue < a0_65.hue) {
                    local_128 = -180f;
                } else {
                    local_128 = _e78;
                }
            } else {
                local_128 = _e78;
            }
        }
    } else {
        local_128 = _e62;
    }
    let _e106 = local_128;
    return FeLocal_fe_Oklch_77e78738_7_((a0_65.l + ((a1_34.l - a0_65.l) * a2_14)), (a0_65.chroma + ((a1_34.chroma - a0_65.chroma) * a2_14)), (_e38 + (_e106 * a2_14)));
}

fn wrap_pi(a0_66: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_66 / 6.2831855f) + 0.5f));
    return (a0_66 - (6.2831855f * _e5));
}

fn sin_(a0_67: f32) -> f32 {
    let _e1 = wrap_pi(a0_67);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_68: f32) -> f32 {
    let _e3 = sin_((a0_68 + 1.5707964f));
    return _e3;
}

fn to_color(a0_69: FeLocal_fe_Oklch_77e78738_7_) -> FeLocal_fe_Color_6b73191a_5_ {
    let _e3 = (a0_69.hue * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_Color_6b73191a_5_(a0_69.l, (a0_69.chroma * _e6), (a0_69.chroma * _e9));
}

fn escape_palette(a0_70: u32, a1_35: f32, fe_trapped_12: ptr<function, bool>) -> u32 {
    var local_130: u32;
    var local_131: bool = false;
    var local_132: u32 = u32();

    let _e5 = from_i32_(a0_70);
    let _e11 = fract_(((_e5 + (4f / a1_35)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_12) = true;
        } else {
            local_132 = _e29;
        }
    }
    let _e38 = local_132;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_71: FeLocal_fe_OrbitProgress_96185e10_6_, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_133: u32;
    var local_134: bool = false;
    var local_135: u32 = u32();

    let _e4 = is_glitched(a0_71);
    if _e4 {
        let _e5 = glitch();
        local_135 = _e5;
    } else {
        let _e6 = is_escaped(a0_71);
        if _e6 {
            let _e9 = escape_palette(a0_71.iteration, a0_71.magnitude, fe_trapped_13);
            local_135 = _e9;
        } else {
            let _e10 = interior();
            local_135 = _e10;
        }
    }
    let _e15 = local_135;
    return _e15;
}

fn perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a0_72: FeLocal_fe_Color_6b73191a_5_) -> FeLocal_fe_Vec3_f32_672e823a_3_ {
    return FeLocal_fe_Vec3_f32_672e823a_3_(a0_72.l, a0_72.a, a0_72.b);
}

fn impl_trait_Vec3_add_ge58b(a0_73: FeLocal_fe_Vec3_f32_672e823a_3_, a1_36: FeLocal_fe_Vec3_f32_672e823a_3_) -> FeLocal_fe_Vec3_f32_672e823a_3_ {
    return FeLocal_fe_Vec3_f32_672e823a_3_((a0_73.x + a1_36.x), (a0_73.y + a1_36.y), (a0_73.z + a1_36.z));
}

fn perceptual_color_lib_impl_Color_4fa0_from_vec_3fb1_(a0_74: FeLocal_fe_Vec3_f32_672e823a_3_) -> FeLocal_fe_Color_6b73191a_5_ {
    return FeLocal_fe_Color_6b73191a_5_(a0_74.x, a0_74.y, a0_74.z);
}

fn impl_trait_Color_add(a0_75: FeLocal_fe_Color_6b73191a_5_, a1_37: FeLocal_fe_Color_6b73191a_5_) -> FeLocal_fe_Color_6b73191a_5_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a0_75);
    let _e3 = perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a1_37);
    let _e4 = impl_trait_Vec3_add_ge58b(_e2, _e3);
    let _e5 = perceptual_color_lib_impl_Color_4fa0_from_vec_3fb1_(_e4);
    return _e5;
}

fn div_ge58b(a0_76: FeLocal_fe_Vec3_f32_672e823a_3_, a1_38: f32) -> FeLocal_fe_Vec3_f32_672e823a_3_ {
    return FeLocal_fe_Vec3_f32_672e823a_3_((a0_76.x / a1_38), (a0_76.y / a1_38), (a0_76.z / a1_38));
}

fn impl_trait_Color_div(a0_77: FeLocal_fe_Color_6b73191a_5_, a1_39: f32) -> FeLocal_fe_Color_6b73191a_5_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_104f(a0_77);
    let _e3 = div_ge58b(_e2, a1_39);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_3fb1_(_e3);
    return _e4;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_301_: FeLocal_fe_MandelbrotViewState_c524184f_22_ = FeLocal_fe_MandelbrotViewState_c524184f_22_();
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32;
    var local_5: bool = false;

    let _e12 = params.p29_;
    let _e14 = params.p30_;
    let _e16 = params.p31_;
    let _e18 = params.p32_;
    let _e20 = params.p33_;
    let _e22 = params.p34_;
    let _e24 = params.p35_;
    let _e26 = params.p36_;
    let _e28 = params.p37_;
    let _e30 = params.p38_;
    let _e32 = params.p39_;
    let _e34 = params.p40_;
    let _e36 = params.p41_;
    let _e38 = params.p42_;
    let _e40 = params.p43_;
    let _e42 = params.p44_;
    let _e44 = params.p45_;
    let _e46 = params.p46_;
    let _e50 = params.p47_;
    let _e52 = params.p48_;
    let _e54 = params.p49_;
    let _e56 = params.p50_;
    let _e60 = params.p51_;
    let _e62 = params.p52_;
    let _e64 = params.p53_;
    let _e66 = params.p54_;
    let _e68 = params.p55_;
    let _e70 = params.p56_;
    let _e72 = params.p57_;
    let _e74 = params.p58_;
    let _e78 = params.p59_;
    let _e80 = params.p60_;
    let _e82 = params.p61_;
    let _e84 = params.p62_;
    let _e88 = params.p63_;
    let _e90 = params.p64_;
    let _e92 = params.p65_;
    let _e94 = params.p66_;
    let _e96 = params.p67_;
    let _e98 = params.p68_;
    let _e100 = params.p69_;
    let _e102 = params.p70_;
    let _e104 = params.p71_;
    let _e106 = params.p72_;
    let _e108 = params.p73_;
    let _e110 = params.p74_;
    let _e112 = params.p75_;
    let _e114 = params.p76_;
    let _e116 = params.p77_;
    let _e118 = params.p78_;
    let _e122 = params.p79_;
    let _e136 = FeLocal_fe_Camera_03494b0d_15_(FeLocal_fe_Complex_Coordinate_d4657101_14_(FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e12, FeLocal_fe_More_More_Last_60a5ba63_11_(_e14, FeLocal_fe_More_Last_1ac585f5_10_(_e16, FeLocal_fe_Last_eb970eb0_9_(_e18))))), FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e20, FeLocal_fe_More_More_Last_60a5ba63_11_(_e22, FeLocal_fe_More_Last_1ac585f5_10_(_e24, FeLocal_fe_Last_eb970eb0_9_(_e26)))))), _e28, _e30, FeLocal_fe_Complex_f32_87ec9249_4_(_e32, _e34));
    let _e172 = reference[i32(0u)].active_;
    let _e174 = reference[i32(0u)].active_valid;
    let _e176 = reference[i32(0u)].pending;
    let _e178 = reference[i32(0u)].index;
    let _e180 = reference[i32(0u)].zx_s;
    let _e182 = reference[i32(0u)].zy_s;
    let _e184 = reference[i32(0u)].ready_at;
    fixed_local_301_ = FeLocal_fe_MandelbrotViewState_c524184f_22_(_e136, _e36, _e38, _e40, _e42, _e44, FeLocal_fe_GestureSession_6b679731_20_(FeLocal_fe_Contacts_2_ac13bf77_18_(array<FeLocal_fe_Contact_2b5c3d26_17_, 2>(FeLocal_fe_Contact_2b5c3d26_17_((_e46 != 0u), _e50, FeLocal_fe_Vec2_f32_2772165c_16_(_e52, _e54)), FeLocal_fe_Contact_2b5c3d26_17_((_e56 != 0u), _e60, FeLocal_fe_Vec2_f32_2772165c_16_(_e62, _e64)))), FeLocal_fe_Viewport_91e53b90_19_(FeLocal_fe_Vec2_f32_2772165c_16_(_e66, _e68), FeLocal_fe_Vec2_f32_2772165c_16_(_e70, _e72)), FeLocal_fe_Contacts_2_ac13bf77_18_(array<FeLocal_fe_Contact_2b5c3d26_17_, 2>(FeLocal_fe_Contact_2b5c3d26_17_((_e74 != 0u), _e78, FeLocal_fe_Vec2_f32_2772165c_16_(_e80, _e82)), FeLocal_fe_Contact_2b5c3d26_17_((_e84 != 0u), _e88, FeLocal_fe_Vec2_f32_2772165c_16_(_e90, _e92)))), FeLocal_fe_Camera_03494b0d_15_(FeLocal_fe_Complex_Coordinate_d4657101_14_(FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e94, FeLocal_fe_More_More_Last_60a5ba63_11_(_e96, FeLocal_fe_More_Last_1ac585f5_10_(_e98, FeLocal_fe_Last_eb970eb0_9_(_e100))))), FeLocal_fe_Coordinate_bdc10f09_13_(FeLocal_fe_More_More_More_Last_e6310ae8_12_(_e102, FeLocal_fe_More_More_Last_60a5ba63_11_(_e104, FeLocal_fe_More_Last_1ac585f5_10_(_e106, FeLocal_fe_Last_eb970eb0_9_(_e108)))))), _e110, _e112, FeLocal_fe_Complex_f32_87ec9249_4_(_e114, _e116))), FeLocal_fe_BackingRequest_2bcae9f8_21_((_e118 != 0u), _e122));
    let _e188 = can_refine(FeLocal_fe_ReferenceControl_7d077120_8_(_e172, _e174, _e176, _e178, _e180, _e182, _e184), (&fixed_local_301_));
    if _e188 {
    } else {
        local_1 = true;
    }
    let _e278 = local_1;
    if _e278 {
    } else {
        let _e196 = cache[i32(0u)].cursor;
        let _e197 = for_view(_e28, _e30, (&fe_trapped));
        let _e198 = aa_pixel(_e197, _e196, global_invocation_id.x, global_invocation_id.y, _e30, (&fe_trapped));
        if _e198.active_ {
        } else {
            local_3 = true;
        }
        let _e276 = local_3;
        if _e276 {
        } else {
            let _e203 = impl_CohortPixel_index(_e198);
            let _e206 = native_pixels[i32(_e203)];
            let _e207 = unpack_lab(_e206);
            let _e209 = clamped_neighbor_indices(_e198.pixel, _e30, (&fe_trapped));
            let _e216 = native_pixels[i32(_e209.f0_)];
            let _e217 = unpack_lab(_e216);
            let _e218 = contrast(_e207, _e217);
            let _e221 = native_pixels[i32(_e209.f1_)];
            let _e222 = unpack_lab(_e221);
            let _e223 = contrast(_e207, _e222);
            let _e224 = impl_trait_f32_max(_e218, _e223);
            let _e227 = native_pixels[i32(_e209.f2_)];
            let _e228 = unpack_lab(_e227);
            let _e229 = contrast(_e207, _e228);
            let _e232 = native_pixels[i32(_e209.f3_)];
            let _e233 = unpack_lab(_e232);
            let _e234 = contrast(_e207, _e233);
            let _e235 = impl_trait_f32_max(_e229, _e234);
            let _e236 = impl_trait_f32_max(_e224, _e235);
            if (0.5f <= _e40) {
                if (0.12f < _e236) {
                    let _e245 = (_e172 * 8195u);
                    let _e246 = (_e172 != 0u);
                    if (_e246 && (8195u > (4294967295u / select(1u, _e172, _e246)))) {
                        fe_trapped = true;
                    }
                    let _e255 = impl_CohortPixel_offset_sample(_e198, FeLocal_fe_Vec2_f32_2772165c_16_(0.28f, -0.28f));
                    let _e257 = sample_progress(_e245, _e136, _e255, _e197.limit, (&fe_trapped));
                    let _e258 = progress_color(_e257, (&fe_trapped));
                    let _e259 = unpack_lab(_e258);
                    let _e263 = impl_CohortPixel_offset_sample(_e198, FeLocal_fe_Vec2_f32_2772165c_16_(-0.28f, 0.28f));
                    let _e265 = sample_progress(_e245, _e136, _e263, _e197.limit, (&fe_trapped));
                    let _e266 = progress_color(_e265, (&fe_trapped));
                    let _e267 = unpack_lab(_e266);
                    let _e268 = impl_trait_Color_add(_e207, _e259);
                    let _e269 = impl_trait_Color_add(_e268, _e267);
                    let _e271 = impl_trait_Color_div(_e269, 3f);
                    let _e272 = pack_lab(_e271);
                    antialiased_pixels[i32(_e203)] = _e272;
                }
            }
        }
    }
    let _e289 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e289);
}
