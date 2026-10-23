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

struct FeLocal_fe_Camera_03494b0d_14_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_13_,
    zoom: f32,
    res: f32,
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

struct FeLocal_fe_Contacts_10_9aa61bf4_17_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_16_, 10>,
}

struct FeLocal_fe_Viewport_91e53b90_18_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_15_,
    extent: FeLocal_fe_Vec2_f32_2772165c_15_,
}

struct FeLocal_fe_GestureSession_6b679731_19_ {
    contacts: FeLocal_fe_Contacts_10_9aa61bf4_17_,
    viewport: FeLocal_fe_Viewport_91e53b90_18_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_20_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_21_ {
    camera: FeLocal_fe_Camera_03494b0d_14_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_19_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_20_,
}

struct FeLocal_fe_RefinementSchedule_b8aa1d23_22_ {
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

struct FeLocal_fe_Complex_f32_87ec9249_0_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    control: u32,
    epoch: u32,
    payload: FeLocal_fe_Complex_f32_87ec9249_0_,
}

struct FeLocal_fe_PixelSample_d22dfa2e_23_ {
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

struct FeLocal_fe_Complex_More_More_More_Last_7724c22a_24_ {
    re: FeLocal_fe_More_More_More_Last_e6310ae8_11_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_11_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_28_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_f32_f32_b3478b14_29_ {
    f0_: f32,
    f1_: f32,
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

struct FeLocal_fe_ReferenceControl_7d077120_7_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_30_ {
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

struct FeLocal_fe_InvocationId_3c625d5f_31_ {
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
    p44_: u32,
    p45_: u32,
    p46_: f32,
    p47_: f32,
    p48_: u32,
    p49_: u32,
    p50_: f32,
    p51_: f32,
    p52_: u32,
    p53_: u32,
    p54_: f32,
    p55_: f32,
    p56_: u32,
    p57_: u32,
    p58_: f32,
    p59_: f32,
    p60_: u32,
    p61_: u32,
    p62_: f32,
    p63_: f32,
    p64_: u32,
    p65_: u32,
    p66_: f32,
    p67_: f32,
    p68_: u32,
    p69_: u32,
    p70_: f32,
    p71_: f32,
    p72_: u32,
    p73_: u32,
    p74_: f32,
    p75_: f32,
    p76_: u32,
    p77_: u32,
    p78_: f32,
    p79_: f32,
    p80_: u32,
    p81_: u32,
    p82_: f32,
    p83_: f32,
    p84_: f32,
    p85_: f32,
    p86_: f32,
    p87_: f32,
    p88_: u32,
    p89_: f32,
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

fn is_input_settled(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_21_>) -> bool {
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

fn can_refine(a0_1: FeLocal_fe_ReferenceControl_7d077120_7_, a1_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_21_>) -> bool {
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

fn for_grid(a0_5: u32, a1_1: u32, a2_: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_22_ {
    var local_27: FeLocal_fe_RefinementSchedule_b8aa1d23_22_;
    var local_28: bool = false;
    var local_29: bool = bool();
    var local_30: FeLocal_fe_RefinementSchedule_b8aa1d23_22_;
    var local_31: bool = false;
    var local_32: u32 = u32();
    var loop_result_1: FeLocal_fe_RefinementSchedule_b8aa1d23_22_;
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
                                    loop_result_1 = FeLocal_fe_RefinementSchedule_b8aa1d23_22_(a0_5, ((_e23 - 1u) >> 7u), 128u, a1_1, a2_, (a1_1 * a2_), (a2_ * _e36));
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

fn for_view(a0_6: f32, a1_2: f32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_22_ {
    let _e7 = to_i32_(((a1_2 + 127f) / 128f));
    let _e12 = to_i32_(((a1_2 + 255f) / 256f));
    let _e13 = iteration_limit(a0_6, fe_trapped_4);
    let _e14 = for_grid(_e13, _e7, _e12, fe_trapped_4);
    return _e14;
}

fn refine_steps(a0_7: FeLocal_fe_RefinementSchedule_b8aa1d23_22_, fe_trapped_5: ptr<function, bool>) -> u32 {
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

fn cohort(a0_8: FeLocal_fe_RefinementSchedule_b8aa1d23_22_, a1_3: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
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

fn rect_pixel(a0_14: FeLocal_fe_RefinementSchedule_b8aa1d23_22_, a1_8: u32, a2_4: u32, a3_1: u32, a4_1: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_CohortPixel_5c31bbba_6_ {
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

fn ordered_2x2_(a0_20: u32, a1_11: u32) -> FeLocal_fe_PixelSample_d22dfa2e_23_ {
    let _e6 = from_i32_(a0_20);
    let _e9 = from_i32_((a0_20 & 1u));
    let _e13 = from_i32_(a1_11);
    let _e16 = from_i32_((a1_11 & 1u));
    return FeLocal_fe_PixelSample_d22dfa2e_23_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn impl_Pixel_sample(a0_21: FeLocal_fe_Pixel_5817280a_5_) -> FeLocal_fe_PixelSample_d22dfa2e_23_ {
    let _e3 = ordered_2x2_(a0_21.x, a0_21.y);
    return _e3;
}

fn impl_CohortPixel_sample(a0_22: FeLocal_fe_CohortPixel_5c31bbba_6_) -> FeLocal_fe_PixelSample_d22dfa2e_23_ {
    let _e2 = impl_Pixel_sample(a0_22.pixel);
    return _e2;
}

fn plane(a0_23: FeLocal_fe_PixelSample_d22dfa2e_23_, a1_12: f32) -> FeLocal_fe_PlaneSample_375c1fa3_27_ {
    return FeLocal_fe_PlaneSample_375c1fa3_27_((((a0_23.x / a1_12) * 2f) - 1f), (1f - ((a0_23.y / a1_12) * 2f)));
}

fn center_offset(a0_24: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(bitcast<f32>(a0_24.re_w2_bits), bitcast<f32>(a0_24.re_w3_bits));
}

fn add(a0_25: FeLocal_fe_Complex_f32_87ec9249_0_, a1_13: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_25.re + a1_13.re), (a0_25.im + a1_13.im));
}

fn pixel_delta_from_reference(a1_14: u32, a2_5: FeLocal_fe_Camera_03494b0d_14_, a3_2: FeLocal_fe_PixelSample_d22dfa2e_23_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_50: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_51: bool = false;

    let _e7 = plane(a3_2, a2_5.res);
    if (a1_14 > (4294967295u - 8194u)) {
        (*fe_trapped_9) = true;
    }
    let _e17 = orbit[i32((a1_14 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_14 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_14 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_14 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_14 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_14 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_14 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_14 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_PackedReference_e11ca04a_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e41 = add(_e33, FeLocal_fe_Complex_f32_87ec9249_0_((_e7.u * a2_5.zoom), (_e7.v * a2_5.zoom)));
    return _e41;
}

fn impl_NativeCheckpoint_reference_index(a0_26: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> u32 {
    return (a0_26.control & 16383u);
}

fn decode_metadata(a0_27: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_ReferenceMetadata_782c1884_25_ {
    return FeLocal_fe_ReferenceMetadata_782c1884_25_(a0_27.re_w0_bits, a0_27.re_w1_bits);
}

fn impl_NativeCheckpoint_delta(a0_28: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return a0_28.payload;
}

fn from_continuation(a0_29: FeLocal_fe_Complex_f32_87ec9249_0_, a1_15: FeLocal_fe_Complex_f32_87ec9249_0_, a2_6: u32, a3_3: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_OrbitProgress_96185e10_3_ {
    return FeLocal_fe_OrbitProgress_96185e10_3_(a0_29.re, a0_29.im, a1_15.re, a1_15.im, a2_6, a3_3, a4_2, a5_);
}

fn impl_OrbitProgress_delta(a0_30: FeLocal_fe_OrbitProgress_96185e10_3_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_30.dz_re, a0_30.dz_im);
}

fn position(a0_31: FeLocal_fe_OrbitProgress_96185e10_3_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_31.z_re, a0_31.z_im);
}

fn progress_reference_index(a0_32: u32) -> u32 {
    return (a0_32 & 536870911u);
}

fn impl_OrbitProgress_reference_index(a0_33: FeLocal_fe_OrbitProgress_96185e10_3_) -> u32 {
    let _e2 = progress_reference_index(a0_33.reference_i);
    return _e2;
}

fn progress_is_escaped(a0_34: u32) -> bool {
    return (((a0_34 & 2147483648u) == 0u) == false);
}

fn impl_OrbitProgress_is_escaped(a0_35: FeLocal_fe_OrbitProgress_96185e10_3_) -> bool {
    let _e2 = progress_is_escaped(a0_35.reference_i);
    return _e2;
}

fn progress_is_glitched(a0_36: u32) -> bool {
    return (((a0_36 & 1073741824u) == 0u) == false);
}

fn impl_OrbitProgress_is_glitched(a0_37: FeLocal_fe_OrbitProgress_96185e10_3_) -> bool {
    let _e2 = progress_is_glitched(a0_37.reference_i);
    return _e2;
}

fn is_invalid(a0_38: FeLocal_fe_PackedReference_e11ca04a_2_) -> bool {
    var local_52: bool;
    var local_53: bool = false;
    var local_54: bool = bool();

    if (a0_38.re_w0_bits == 2143289344u) {
        local_54 = true;
    } else {
        if (a0_38.im_w0_bits == 2143289344u) {
            local_54 = true;
        }
    }
    let _e14 = local_54;
    return _e14;
}

fn from_quad(a0_39: f32, a1_16: f32, a2_7: f32, a3_4: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_11_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_11_(a0_39, FeLocal_fe_More_More_Last_60a5ba63_10_(a1_16, FeLocal_fe_More_Last_1ac585f5_9_(a2_7, FeLocal_fe_Last_eb970eb0_8_(a3_4))));
}

fn decode(a0_40: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_24_ {
    let _e9 = from_quad(bitcast<f32>(a0_40.re_w0_bits), bitcast<f32>(a0_40.re_w1_bits), bitcast<f32>(a0_40.re_w2_bits), bitcast<f32>(a0_40.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_40.im_w0_bits), bitcast<f32>(a0_40.im_w1_bits), bitcast<f32>(a0_40.im_w2_bits), bitcast<f32>(a0_40.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_24_(_e9, _e18);
}

fn to_quad(a0_41: FeLocal_fe_More_More_More_Last_e6310ae8_11_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_28_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_28_(a0_41.lead, a0_41.tail.lead, a0_41.tail.tail.lead, a0_41.tail.tail.tail.value);
}

fn perturb(a0_42: FeLocal_fe_Complex_More_More_More_Last_7724c22a_24_, a1_17: FeLocal_fe_Complex_f32_87ec9249_0_, a2_8: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = to_quad(a0_42.re);
    let _e10 = to_quad(a0_42.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(((((2f * ((_e4.f0_ * a1_17.re) - (_e10.f0_ * a1_17.im))) + (2f * ((((((_e4.f1_ * a1_17.re) - (_e10.f1_ * a1_17.im)) + (_e4.f2_ * a1_17.re)) - (_e10.f2_ * a1_17.im)) + (_e4.f3_ * a1_17.re)) - (_e10.f3_ * a1_17.im)))) + ((a1_17.re * a1_17.re) - (a1_17.im * a1_17.im))) + a2_8.re), ((((2f * ((_e4.f0_ * a1_17.im) + (_e10.f0_ * a1_17.re))) + (2f * ((((((_e4.f1_ * a1_17.im) + (_e10.f1_ * a1_17.re)) + (_e4.f2_ * a1_17.im)) + (_e10.f2_ * a1_17.re)) + (_e4.f3_ * a1_17.im)) + (_e10.f3_ * a1_17.re)))) + ((2f * a1_17.re) * a1_17.im)) + a2_8.im));
}

fn two_sum(a0_43: f32, a1_18: f32) -> FeLocal_fe_f32_f32_b3478b14_29_ {
    let _e2 = (a0_43 + a1_18);
    let _e3 = (_e2 - a0_43);
    return FeLocal_fe_f32_f32_b3478b14_29_(_e2, ((a0_43 - (_e2 - _e3)) + (a1_18 - _e3)));
}

fn reference_plus_delta(a0_44: f32, a1_19: f32, a2_9: f32, a3_5: f32, a4_3: f32) -> f32 {
    let _e5 = two_sum(a0_44, a4_3);
    let _e8 = two_sum(_e5.f0_, a1_19);
    let _e11 = two_sum(_e8.f0_, a2_9);
    let _e14 = two_sum(_e11.f0_, a3_5);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_45: FeLocal_fe_More_More_More_Last_e6310ae8_11_, a1_20: f32) -> f32 {
    let _e2 = to_quad(a0_45);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_20);
    return _e7;
}

fn reference_with_delta(a0_46: FeLocal_fe_Complex_More_More_More_Last_7724c22a_24_, a1_21: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = expansion_plus_delta(a0_46.re, a1_21.re);
    let _e7 = expansion_plus_delta(a0_46.im, a1_21.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(_e4, _e7);
}

fn norm_squared(a0_47: FeLocal_fe_Complex_f32_87ec9249_0_) -> f32 {
    return ((a0_47.re * a0_47.re) + (a0_47.im * a0_47.im));
}

fn pack_progress_reference(a0_48: u32, a1_22: u32, a2_10: u32) -> u32 {
    return (((a0_48 & 536870911u) | (a1_22 << 31u)) | (a2_10 << 30u));
}

fn non_finite(a0_49: f32) -> bool {
    return (((a0_49 - a0_49) == 0f) == false);
}

fn is_non_finite_complex(a0_50: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_55: bool;
    var local_56: bool = false;
    var local_57: bool = bool();

    let _e4 = non_finite(a0_50.re);
    if _e4 {
        local_57 = true;
    } else {
        let _e6 = non_finite(a0_50.im);
        if _e6 {
            local_57 = true;
        }
    }
    let _e12 = local_57;
    return _e12;
}

fn impl_trait_f32_abs(a0_51: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_51) & 2147483647u));
}

fn impl_trait_f32_max(a0_52: f32, a1_23: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_52);
    let _e3 = bitcast<u32>(a1_23);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress_step(a0_53: FeLocal_fe_OrbitProgress_96185e10_3_, a1_24: FeLocal_fe_Complex_f32_87ec9249_0_, a2_11: FeLocal_fe_PackedReference_e11ca04a_2_, a3_6: FeLocal_fe_PackedReference_e11ca04a_2_, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_3_ {
    var local_58: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_59: bool = false;
    var local_60: u32 = u32();
    var local_61: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_62: bool = false;
    var local_63: u32 = u32();
    var local_64: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_65: bool = false;
    var local_66: f32 = f32();
    var local_67: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_68: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_69: u32 = u32();
    var local_70: u32 = u32();
    var local_71: u32 = u32();
    var local_72: bool = bool();
    var local_73: FeLocal_fe_OrbitProgress_96185e10_3_;
    var local_74: bool = false;

    let _e7 = impl_OrbitProgress_delta(a0_53);
    let _e8 = position(a0_53);
    let _e9 = impl_OrbitProgress_reference_index(a0_53);
    let _e10 = impl_OrbitProgress_is_escaped(a0_53);
    if _e10 {
        local_60 = 1u;
    }
    let _e16 = local_60;
    let _e17 = impl_OrbitProgress_is_glitched(a0_53);
    if _e17 {
        local_63 = 1u;
    }
    let _e28 = local_63;
    let _e30 = is_invalid(a2_11);
    if _e30 {
        local_66 = a0_53.magnitude;
        local_67 = _e8;
        local_68 = _e7;
        local_69 = 1u;
        local_70 = _e16;
        local_71 = _e9;
    } else {
        let _e31 = is_invalid(a3_6);
        if _e31 {
            local_66 = a0_53.magnitude;
            local_67 = _e8;
            local_68 = _e7;
            local_69 = 1u;
            local_70 = _e16;
            local_71 = _e9;
        } else {
            let _e33 = decode(a2_11);
            let _e34 = decode(a3_6);
            let _e35 = perturb(_e33, _e7, a1_24);
            let _e36 = reference_with_delta(_e34, _e35);
            let _e37 = norm_squared(_e36);
            let _e38 = norm_squared(_e35);
            if (4f < _e37) {
                let _e44 = impl_trait_f32_abs((_e37 - 4f));
                let _e46 = impl_trait_f32_max(1f, _e37);
                if (_e44 <= (0.000004f * _e46)) {
                    local_72 = true;
                }
            }
            let _e53 = local_72;
            let _e54 = is_non_finite_complex(_e35);
            if _e54 {
                local_66 = a0_53.magnitude;
                local_67 = _e8;
                local_68 = _e7;
                local_69 = 1u;
                local_70 = _e16;
                local_71 = _e9;
            } else {
                let _e55 = non_finite(_e37);
                if (_e55 | _e53) {
                    local_66 = a0_53.magnitude;
                    local_67 = _e8;
                    local_68 = _e7;
                    local_69 = 1u;
                    local_70 = _e16;
                    local_71 = _e9;
                } else {
                    if (4f < _e37) {
                        local_66 = _e37;
                        local_67 = _e36;
                        local_68 = _e35;
                        local_69 = _e28;
                        local_70 = 1u;
                        local_71 = _e9;
                    } else {
                        if (_e37 < _e38) {
                            local_66 = a0_53.magnitude;
                            local_67 = _e36;
                            local_68 = _e36;
                            local_69 = _e28;
                            local_70 = _e16;
                        } else {
                            if (_e9 > (4294967295u - 1u)) {
                                (*fe_trapped_10) = true;
                            } else {
                                local_66 = a0_53.magnitude;
                                local_67 = _e36;
                                local_68 = _e35;
                                local_69 = _e28;
                                local_70 = _e16;
                                local_71 = (_e9 + 1u);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e113 = local_66;
    let _e115 = local_67;
    let _e117 = local_68;
    let _e119 = local_69;
    let _e121 = local_70;
    let _e123 = local_71;
    let _e124 = pack_progress_reference(_e123, _e121, _e119);
    if (a0_53.iteration > (4294967295u - 1u)) {
        (*fe_trapped_10) = true;
    }
    let _e133 = from_continuation(_e117, _e115, _e124, (a0_53.iteration + 1u), a0_53.epoch, _e113);
    return _e133;
}

fn progress_is_presentable(a0_54: u32) -> bool {
    return (((a0_54 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_55: u32) -> bool {
    return (((a0_55 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_56: u32, a1_25: u32, a2_12: u32) -> bool {
    var local_75: bool;
    var local_76: bool = false;
    var local_77: bool = bool();

    if ((a1_25 < a2_12) == false) {
        local_77 = true;
    } else {
        let _e8 = progress_has_outcome(a0_56);
        if _e8 {
            local_77 = true;
        } else {
            let _e9 = progress_is_presentable(a0_56);
            if _e9 {
                local_77 = true;
            }
        }
    }
    let _e17 = local_77;
    return _e17;
}

fn impl_OrbitProgress_is_terminal(a0_57: FeLocal_fe_OrbitProgress_96185e10_3_, a1_26: u32) -> bool {
    let _e4 = progress_is_terminal(a0_57.reference_i, a0_57.iteration, a1_26);
    return _e4;
}

fn progress_outcome_flags(a0_58: u32) -> u32 {
    return (a0_58 & 3221225472u);
}

fn outcome_flags(a0_59: FeLocal_fe_OrbitProgress_96185e10_3_) -> u32 {
    let _e2 = progress_outcome_flags(a0_59.reference_i);
    return _e2;
}

fn advance(a0_60: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_27: FeLocal_fe_Complex_f32_87ec9249_0_, a2_13: FeLocal_fe_PackedReference_e11ca04a_2_, a3_7: FeLocal_fe_PackedReference_e11ca04a_2_, a4_4: u32, a5_1: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_78: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_79: bool = false;
    var local_80: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_81: bool = false;
    var local_82: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();

    let _e8 = impl_NativeCheckpoint_is_terminal(a0_60, a5_1);
    if _e8 {
        local_78 = a0_60;
        local_79 = true;
    }
    let _e63 = local_79;
    if _e63 {
    } else {
        let _e14 = impl_NativeCheckpoint_delta(a0_60);
        let _e15 = default_ge58b();
        let _e16 = impl_NativeCheckpoint_reference_index(a0_60);
        let _e17 = iteration(a0_60);
        let _e20 = from_continuation(_e14, _e15, _e16, _e17, a0_60.epoch, 4f);
        let _e21 = advance_progress_step(_e20, a1_27, a2_13, a3_7, fe_trapped_11);
        let _e25 = impl_OrbitProgress_reference_index(_e21);
        let _e26 = ((_e21.iteration << 14u) | _e25);
        let _e27 = impl_OrbitProgress_is_terminal(_e21, a5_1);
        if _e27 {
            let _e28 = outcome_flags(_e21);
            local_82 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(((_e26 | _e28) | 268435456u), a0_60.epoch, FeLocal_fe_Complex_f32_87ec9249_0_(_e21.magnitude, 0f));
        } else {
            let _e37 = impl_OrbitProgress_reference_index(_e21);
            if (_e37 > (4294967295u - 1u)) {
                (*fe_trapped_11) = true;
            } else {
                if (((_e37 + 1u) < a4_4) == false) {
                    let _e51 = position(_e21);
                    local_82 = FeLocal_fe_NativeCheckpoint_6a22185c_1_((_e21.iteration << 14u), a0_60.epoch, _e51);
                } else {
                    let _e54 = impl_OrbitProgress_delta(_e21);
                    local_82 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(_e26, a0_60.epoch, _e54);
                }
            }
        }
        let _e60 = local_82;
        local_78 = _e60;
    }
    let _e65 = local_78;
    return _e65;
}

fn continue_native_pixel(a1_28: u32, a2_14: FeLocal_fe_Camera_03494b0d_14_, a3_8: FeLocal_fe_PixelSample_d22dfa2e_23_, a4_5: u32, a5_2: u32, a6_: FeLocal_fe_NativeCheckpoint_6a22185c_1_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_83: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_84: bool = false;
    var local_85: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();
    var local_86: u32 = u32();
    var loop_result_2: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_56_: bool;

    let _e9 = pixel_delta_from_reference(a1_28, a2_14, a3_8, fe_trapped_12);
    if (a1_28 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_28 + 8194u))].re_w0_bits;
        let _e20 = orbit[i32((a1_28 + 8194u))].re_w1_bits;
        let _e22 = orbit[i32((a1_28 + 8194u))].re_w2_bits;
        let _e24 = orbit[i32((a1_28 + 8194u))].re_w3_bits;
        let _e26 = orbit[i32((a1_28 + 8194u))].im_w0_bits;
        let _e28 = orbit[i32((a1_28 + 8194u))].im_w1_bits;
        let _e30 = orbit[i32((a1_28 + 8194u))].im_w2_bits;
        let _e32 = orbit[i32((a1_28 + 8194u))].im_w3_bits;
        let _e34 = decode_metadata(FeLocal_fe_PackedReference_e11ca04a_2_(_e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32));
        local_85 = a6_;
        local_86 = 0u;
        loop {
            let _e43 = local_85;
            let _e45 = local_86;
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
                let _e55 = (a1_28 + _e53);
                if (a1_28 > (4294967295u - _e53)) {
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
                    local_85 = _e102;
                    local_86 = (_e45 + 1u);
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
            local_83 = _e115;
            local_84 = true;
        }
    }
    let _e121 = local_84;
    if _e121 {
    } else {
        (*fe_trapped_12) = true;
    }
    let _e123 = local_83;
    return _e123;
}

fn magnitude(a0_61: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> f32 {
    var local_87: f32;
    var local_88: bool = false;
    var local_89: f32 = f32();

    if (((a0_61.control & 268435456u) == 0u) == false) {
        local_89 = a0_61.payload.re;
    } else {
        local_89 = 4f;
    }
    let _e16 = local_89;
    return _e16;
}

fn with_fade_start(a0_62: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_29: f32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    let _e8 = magnitude(a0_62);
    return FeLocal_fe_NativeCheckpoint_6a22185c_1_(((a0_62.control | 268435456u) | 536870912u), a0_62.epoch, FeLocal_fe_Complex_f32_87ec9249_0_(_e8, a1_29));
}

fn present_if_terminal(a0_63: FeLocal_fe_NativeCheckpoint_6a22185c_1_, a1_30: u32, a2_15: f32) -> FeLocal_fe_NativeCheckpoint_6a22185c_1_ {
    var local_90: FeLocal_fe_NativeCheckpoint_6a22185c_1_;
    var local_91: bool = false;
    var local_92: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();

    let _e5 = impl_NativeCheckpoint_is_terminal(a0_63, a1_30);
    if _e5 {
        let _e6 = with_fade_start(a0_63, a2_15);
        local_92 = _e6;
    } else {
        local_92 = a0_63;
    }
    let _e10 = local_92;
    return _e10;
}

fn impl_NativeCheckpoint_is_glitched(a0_64: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> bool {
    let _e2 = progress_is_glitched(a0_64.control);
    return _e2;
}

fn clamp_(a0_65: f32, a1_31: f32, a2_16: f32) -> f32 {
    var local_93: f32;
    var local_94: bool = false;
    var local_95: f32 = f32();

    if (a0_65 < a1_31) {
        local_95 = a1_31;
    } else {
        if (a2_16 < a0_65) {
            local_95 = a2_16;
        } else {
            local_95 = a0_65;
        }
    }
    let _e11 = local_95;
    return _e11;
}

fn pack_lab(a0_66: FeLocal_fe_Color_6b73191a_26_) -> u32 {
    let _e4 = clamp_(a0_66.l, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_66.a * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_66.b * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_26_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_NativeCheckpoint_is_escaped(a0_67: FeLocal_fe_NativeCheckpoint_6a22185c_1_) -> bool {
    let _e2 = progress_is_escaped(a0_67.control);
    return _e2;
}

fn impl_trait_f32_floor(a0_68: f32) -> f32 {
    return floor(a0_68);
}

fn fract_(a0_69: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_69);
    return (a0_69 - _e1);
}

fn anchor(a0_70: u32) -> FeLocal_fe_Oklch_77e78738_4_ {
    var local_96: FeLocal_fe_Oklch_77e78738_4_;
    var local_97: bool = false;
    var local_98: FeLocal_fe_Oklch_77e78738_4_ = FeLocal_fe_Oklch_77e78738_4_();

    switch a0_70 {
        case 0u: {
            local_98 = FeLocal_fe_Oklch_77e78738_4_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_98 = FeLocal_fe_Oklch_77e78738_4_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_98 = FeLocal_fe_Oklch_77e78738_4_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_98 = FeLocal_fe_Oklch_77e78738_4_(0.73f, 0.142f, 165f);
        }
        default: {
            local_98 = FeLocal_fe_Oklch_77e78738_4_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_98;
    return _e29;
}

fn hue_remainder(a0_71: f32) -> f32 {
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

    let _e4 = (bitcast<u32>(a0_71) & 2147483647u);
    if (_e4 < 1135869952u) {
        local_99 = a0_71;
        local_100 = true;
    }
    let _e89 = local_100;
    if _e89 {
    } else {
        let _e12 = (_e4 >> 23u);
        if (_e12 == 255u) {
            local_101 = a0_71;
            local_102 = true;
        }
        let _e84 = local_102;
        if _e84 {
        } else {
            if (a0_71 < 0f) {
                local_105 = -(a0_71);
            } else {
                local_105 = a0_71;
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
            if (a0_71 < 0f) {
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

fn interpolate(a0_72: FeLocal_fe_Oklch_77e78738_4_, a1_32: FeLocal_fe_Oklch_77e78738_4_, a2_17: f32) -> FeLocal_fe_Oklch_77e78738_4_ {
    var local_114: FeLocal_fe_Oklch_77e78738_4_;
    var local_115: bool = false;
    var local_116: bool = bool();
    var local_117: FeLocal_fe_Oklch_77e78738_4_;
    var local_118: bool = false;
    var local_119: f32 = f32();
    var local_120: FeLocal_fe_Oklch_77e78738_4_;
    var local_121: bool = false;
    var local_122: f32 = f32();
    var local_123: FeLocal_fe_Oklch_77e78738_4_;
    var local_124: bool = false;
    var local_125: f32 = f32();
    var local_126: FeLocal_fe_Oklch_77e78738_4_;
    var local_127: bool = false;
    var local_128: f32 = f32();
    var local_129: f32 = f32();

    let _e7 = (a1_32.hue - a0_72.hue);
    if (-540f <= a0_72.hue) {
        if (a0_72.hue <= 540f) {
            if (-540f <= a1_32.hue) {
                if (a1_32.hue <= 540f) {
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
        local_119 = a0_72.hue;
    } else {
        let _e32 = hue_remainder(a0_72.hue);
        local_119 = _e32;
    }
    let _e38 = local_119;
    if _e29 {
        local_122 = _e7;
    } else {
        let _e40 = hue_remainder(a1_32.hue);
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
            if (a0_72.hue < a1_32.hue) {
                local_128 = 180f;
            } else {
                if (_e78 == 180f) {
                    if (a1_32.hue < a0_72.hue) {
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
                if (a1_32.hue < a0_72.hue) {
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
    return FeLocal_fe_Oklch_77e78738_4_((a0_72.l + ((a1_32.l - a0_72.l) * a2_17)), (a0_72.chroma + ((a1_32.chroma - a0_72.chroma) * a2_17)), (_e38 + (_e106 * a2_17)));
}

fn wrap_pi(a0_73: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_73 / 6.2831855f) + 0.5f));
    return (a0_73 - (6.2831855f * _e5));
}

fn sin_(a0_74: f32) -> f32 {
    let _e1 = wrap_pi(a0_74);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_75: f32) -> f32 {
    let _e3 = sin_((a0_75 + 1.5707964f));
    return _e3;
}

fn to_color(a0_76: FeLocal_fe_Oklch_77e78738_4_) -> FeLocal_fe_Color_6b73191a_26_ {
    let _e3 = (a0_76.hue * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_Color_6b73191a_26_(a0_76.l, (a0_76.chroma * _e6), (a0_76.chroma * _e9));
}

fn escape_palette(a0_77: u32, a1_33: f32, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_130: u32;
    var local_131: bool = false;
    var local_132: u32 = u32();

    let _e5 = from_i32_(a0_77);
    let _e11 = fract_(((_e5 + (4f / a1_33)) / 256f));
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
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_26_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn color(a0_78: FeLocal_fe_NativeCheckpoint_6a22185c_1_, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_133: u32;
    var local_134: bool = false;
    var local_135: u32 = u32();

    let _e4 = impl_NativeCheckpoint_is_glitched(a0_78);
    if _e4 {
        let _e5 = glitch();
        local_135 = _e5;
    } else {
        let _e6 = impl_NativeCheckpoint_is_escaped(a0_78);
        if _e6 {
            let _e7 = iteration(a0_78);
            let _e8 = magnitude(a0_78);
            let _e9 = escape_palette(_e7, _e8, fe_trapped_14);
            local_135 = _e9;
        } else {
            let _e10 = interior();
            local_135 = _e10;
        }
    }
    let _e15 = local_135;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_325_: FeLocal_fe_MandelbrotViewState_c524184f_21_ = FeLocal_fe_MandelbrotViewState_c524184f_21_();
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32;
    var local_5: bool = false;
    var local_6: FeLocal_fe_NativeCheckpoint_6a22185c_1_ = FeLocal_fe_NativeCheckpoint_6a22185c_1_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: u32;
    var local_10: bool = false;

    let _e13 = params.p29_;
    let _e15 = params.p30_;
    let _e17 = params.p31_;
    let _e19 = params.p32_;
    let _e21 = params.p33_;
    let _e23 = params.p34_;
    let _e25 = params.p35_;
    let _e27 = params.p36_;
    let _e29 = params.p37_;
    let _e31 = params.p38_;
    let _e33 = params.p39_;
    let _e35 = params.p40_;
    let _e37 = params.p41_;
    let _e39 = params.p42_;
    let _e41 = params.p43_;
    let _e43 = params.p44_;
    let _e47 = params.p45_;
    let _e49 = params.p46_;
    let _e51 = params.p47_;
    let _e53 = params.p48_;
    let _e57 = params.p49_;
    let _e59 = params.p50_;
    let _e61 = params.p51_;
    let _e63 = params.p52_;
    let _e67 = params.p53_;
    let _e69 = params.p54_;
    let _e71 = params.p55_;
    let _e73 = params.p56_;
    let _e77 = params.p57_;
    let _e79 = params.p58_;
    let _e81 = params.p59_;
    let _e83 = params.p60_;
    let _e87 = params.p61_;
    let _e89 = params.p62_;
    let _e91 = params.p63_;
    let _e93 = params.p64_;
    let _e97 = params.p65_;
    let _e99 = params.p66_;
    let _e101 = params.p67_;
    let _e103 = params.p68_;
    let _e107 = params.p69_;
    let _e109 = params.p70_;
    let _e111 = params.p71_;
    let _e113 = params.p72_;
    let _e117 = params.p73_;
    let _e119 = params.p74_;
    let _e121 = params.p75_;
    let _e123 = params.p76_;
    let _e127 = params.p77_;
    let _e129 = params.p78_;
    let _e131 = params.p79_;
    let _e133 = params.p80_;
    let _e137 = params.p81_;
    let _e139 = params.p82_;
    let _e141 = params.p83_;
    let _e143 = params.p84_;
    let _e145 = params.p85_;
    let _e147 = params.p86_;
    let _e149 = params.p87_;
    let _e151 = params.p88_;
    let _e155 = params.p89_;
    let _e168 = FeLocal_fe_Camera_03494b0d_14_(FeLocal_fe_Complex_Coordinate_d4657101_13_(FeLocal_fe_Coordinate_bdc10f09_12_(FeLocal_fe_More_More_More_Last_e6310ae8_11_(_e13, FeLocal_fe_More_More_Last_60a5ba63_10_(_e15, FeLocal_fe_More_Last_1ac585f5_9_(_e17, FeLocal_fe_Last_eb970eb0_8_(_e19))))), FeLocal_fe_Coordinate_bdc10f09_12_(FeLocal_fe_More_More_More_Last_e6310ae8_11_(_e21, FeLocal_fe_More_More_Last_60a5ba63_10_(_e23, FeLocal_fe_More_Last_1ac585f5_9_(_e25, FeLocal_fe_Last_eb970eb0_8_(_e27)))))), _e29, _e31);
    let _e201 = reference[i32(0u)].active_;
    let _e203 = reference[i32(0u)].active_valid;
    let _e205 = reference[i32(0u)].pending;
    let _e207 = reference[i32(0u)].index;
    let _e209 = reference[i32(0u)].zx_s;
    let _e211 = reference[i32(0u)].zy_s;
    let _e213 = reference[i32(0u)].ready_at;
    fixed_local_325_ = FeLocal_fe_MandelbrotViewState_c524184f_21_(_e168, _e33, _e35, _e37, _e39, _e41, FeLocal_fe_GestureSession_6b679731_19_(FeLocal_fe_Contacts_10_9aa61bf4_17_(array<FeLocal_fe_Contact_2b5c3d26_16_, 10>(FeLocal_fe_Contact_2b5c3d26_16_((_e43 != 0u), _e47, FeLocal_fe_Vec2_f32_2772165c_15_(_e49, _e51)), FeLocal_fe_Contact_2b5c3d26_16_((_e53 != 0u), _e57, FeLocal_fe_Vec2_f32_2772165c_15_(_e59, _e61)), FeLocal_fe_Contact_2b5c3d26_16_((_e63 != 0u), _e67, FeLocal_fe_Vec2_f32_2772165c_15_(_e69, _e71)), FeLocal_fe_Contact_2b5c3d26_16_((_e73 != 0u), _e77, FeLocal_fe_Vec2_f32_2772165c_15_(_e79, _e81)), FeLocal_fe_Contact_2b5c3d26_16_((_e83 != 0u), _e87, FeLocal_fe_Vec2_f32_2772165c_15_(_e89, _e91)), FeLocal_fe_Contact_2b5c3d26_16_((_e93 != 0u), _e97, FeLocal_fe_Vec2_f32_2772165c_15_(_e99, _e101)), FeLocal_fe_Contact_2b5c3d26_16_((_e103 != 0u), _e107, FeLocal_fe_Vec2_f32_2772165c_15_(_e109, _e111)), FeLocal_fe_Contact_2b5c3d26_16_((_e113 != 0u), _e117, FeLocal_fe_Vec2_f32_2772165c_15_(_e119, _e121)), FeLocal_fe_Contact_2b5c3d26_16_((_e123 != 0u), _e127, FeLocal_fe_Vec2_f32_2772165c_15_(_e129, _e131)), FeLocal_fe_Contact_2b5c3d26_16_((_e133 != 0u), _e137, FeLocal_fe_Vec2_f32_2772165c_15_(_e139, _e141)))), FeLocal_fe_Viewport_91e53b90_18_(FeLocal_fe_Vec2_f32_2772165c_15_(_e143, _e145), FeLocal_fe_Vec2_f32_2772165c_15_(_e147, _e149))), FeLocal_fe_BackingRequest_2bcae9f8_20_((_e151 != 0u), _e155));
    let _e217 = can_refine(FeLocal_fe_ReferenceControl_7d077120_7_(_e201, _e203, _e205, _e207, _e209, _e211, _e213), (&fixed_local_325_));
    if _e217 {
    } else {
        local_1 = true;
    }
    let _e298 = local_1;
    if _e298 {
    } else {
        let _e225 = cache[i32(0u)].cursor;
        let _e227 = cache[i32(0u)].epoch;
        let _e228 = for_view(_e29, _e31, (&fe_trapped));
        let _e229 = rect_pixel(_e228, _e225, global_invocation_id.x, global_invocation_id.y, _e31, (&fe_trapped));
        if _e229.active_ {
        } else {
            local_3 = true;
        }
        let _e296 = local_3;
        if _e296 {
        } else {
            let _e235 = impl_CohortPixel_index(_e229);
            let _e239 = progress_pixels[i32(_e235)].control;
            let _e241 = progress_pixels[i32(_e235)].epoch;
            let _e243 = progress_pixels[i32(_e235)].payload_u002e_re;
            let _e245 = progress_pixels[i32(_e235)].payload_u002e_im;
            if (_e241 == _e227) {
                local_6 = FeLocal_fe_NativeCheckpoint_6a22185c_1_(_e239, _e241, FeLocal_fe_Complex_f32_87ec9249_0_(_e243, _e245));
            } else {
                let _e249 = initial(_e227);
                local_6 = _e249;
            }
            let _e254 = local_6;
            let _e256 = impl_NativeCheckpoint_is_terminal(_e254, _e228.limit);
            if _e256 {
                local_8 = true;
            }
            let _e294 = local_8;
            if _e294 {
            } else {
                let _e265 = (_e201 != 0u);
                if (_e265 && (8195u > (4294967295u / select(1u, _e201, _e265)))) {
                    fe_trapped = true;
                }
                let _e271 = impl_CohortPixel_sample(_e229);
                let _e274 = continue_native_pixel((_e201 * 8195u), _e168, _e271, _e228.limit, _e228.quantum, _e254, (&fe_trapped));
                let _e276 = present_if_terminal(_e274, _e228.limit, _e33);
                progress_pixels[i32(_e235)].control = _e276.control;
                progress_pixels[i32(_e235)].epoch = _e276.epoch;
                progress_pixels[i32(_e235)].payload_u002e_re = _e276.payload.re;
                progress_pixels[i32(_e235)].payload_u002e_im = _e276.payload.im;
                let _e288 = color(_e274, (&fe_trapped));
                native_pixels[i32(_e235)] = _e288;
                antialiased_pixels[i32(_e235)] = _e288;
            }
        }
    }
    let _e309 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e309);
}
