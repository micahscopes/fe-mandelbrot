struct FeLocal_fe_Last_eb970eb0_6_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_7_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_6_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_8_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_7_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_9_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_8_,
}

struct FeLocal_fe_Coordinate_bdc10f09_10_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_9_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_11_ {
    re: FeLocal_fe_Coordinate_bdc10f09_10_,
    im: FeLocal_fe_Coordinate_bdc10f09_10_,
}

struct FeLocal_fe_Camera_03494b0d_12_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_11_,
    zoom: f32,
    res: f32,
}

struct FeLocal_fe_Vec2_f32_2772165c_14_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_15_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_14_,
}

struct FeLocal_fe_Contacts_10_9aa61bf4_16_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_15_, 10>,
}

struct FeLocal_fe_Viewport_91e53b90_17_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_14_,
    extent: FeLocal_fe_Vec2_f32_2772165c_14_,
}

struct FeLocal_fe_GestureSession_6b679731_18_ {
    contacts: FeLocal_fe_Contacts_10_9aa61bf4_16_,
    viewport: FeLocal_fe_Viewport_91e53b90_17_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_19_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_20_ {
    camera: FeLocal_fe_Camera_03494b0d_12_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_18_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_19_,
}

struct FeLocal_fe_RefinementSchedule_b8aa1d23_3_ {
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

struct FeLocal_fe_Complex_f32_87ec9249_4_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_NativeCheckpoint_6a22185c_5_ {
    control: u32,
    epoch: u32,
    payload: FeLocal_fe_Complex_f32_87ec9249_4_,
}

struct FeLocal_fe_Color_6b73191a_21_ {
    l: f32,
    a: f32,
    b: f32,
}

struct FeLocal_fe_Oklch_77e78738_0_ {
    l: f32,
    chroma: f32,
    hue: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_22_ {
    camera: FeLocal_fe_Camera_03494b0d_12_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct FeLocal_fe_InvocationId_3c625d5f_23_ {
    x: u32,
    y: u32,
    z: u32,
}

struct FeLocal_fe_SampleOracle_cc1ce944_13_ {
    iteration: u32,
    magnitude: f32,
    flags: u32,
}

struct snapshot_oracle_element {
    iteration: u32,
    magnitude: f32,
    flags: u32,
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
var<storage, read_write> snapshot_oracle: array<snapshot_oracle_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> native_pixels: array<u32>;
@group(0) @binding(3)
var<storage, read_write> antialiased_pixels: array<u32>;
@group(0) @binding(4)
var<storage, read_write> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(5)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 32768>;

fn is_input_settled(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_20_>) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    let _e4 = (*a0_).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_).clock;
        let _e10 = (*a0_).last_input;
        if (60f <= (_e8 - _e10)) {
            local_7 = true;
        }
    }
    let _e17 = local_7;
    return _e17;
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn iteration_limit(a0_2: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
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
    local_9 = a0_2;
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
                    (*fe_trapped_1) = true;
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
            (*fe_trapped_1) = true;
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
        (*fe_trapped_1) = true;
    }
    let _e79 = local_13;
    return _e79;
}

fn assert(a0_3: bool, fe_trapped_2: ptr<function, bool>) {
    var local_16: u32;
    var local_17: bool = false;

    if a0_3 {
        local_17 = true;
    } else {
        (*fe_trapped_2) = true;
    }
    return;
}

fn for_grid(a0_4: u32, a1_: u32, a2_: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_3_ {
    var local_18: FeLocal_fe_RefinementSchedule_b8aa1d23_3_;
    var local_19: bool = false;
    var local_20: bool = bool();
    var local_21: FeLocal_fe_RefinementSchedule_b8aa1d23_3_;
    var local_22: bool = false;
    var local_23: u32 = u32();
    var loop_result_1: FeLocal_fe_RefinementSchedule_b8aa1d23_3_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_28_: u32;
    var loop_header_carry_29_: bool;

    if (0u < a0_4) {
        if ((8192u < a0_4) == false) {
            if (0u < a1_) {
                if (0u < a2_) {
                    local_20 = true;
                }
            }
        }
    }
    let _e20 = local_20;
    assert(_e20, fe_trapped_3);
    let _e23 = (a0_4 + 128u);
    if (a0_4 > (4294967295u - 128u)) {
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
                        if ((_e40 * 128u) < a0_4) {
                            let _e62 = (_e36 != 0u);
                            if (_e62 && (2u > (4294967295u / select(1u, _e36, _e62)))) {
                                break;
                            } else {
                                local_23 = (_e36 * 2u);
                                continue;
                            }
                        } else {
                            let _e72 = (a1_ != 0u);
                            if (_e72 && (a2_ > (4294967295u / select(1u, a1_, _e72)))) {
                                break;
                            } else {
                                let _e81 = (a2_ != 0u);
                                if (_e81 && (_e36 > (4294967295u / select(1u, a2_, _e81)))) {
                                    break;
                                } else {
                                    loop_result_1 = FeLocal_fe_RefinementSchedule_b8aa1d23_3_(a0_4, ((_e23 - 1u) >> 7u), 128u, a1_, a2_, (a1_ * a2_), (a2_ * _e36));
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
        (*fe_trapped_3) = true;
    }
    let _e106 = local_21;
    return _e106;
}

fn for_view(a0_5: f32, a1_1: f32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_RefinementSchedule_b8aa1d23_3_ {
    let _e7 = to_i32_(((a1_1 + 127f) / 128f));
    let _e12 = to_i32_(((a1_1 + 255f) / 256f));
    let _e13 = iteration_limit(a0_5, fe_trapped_4);
    let _e14 = for_grid(_e13, _e7, _e12, fe_trapped_4);
    return _e14;
}

fn impl_trait_Last_eq(a0_6: f32, a1_2: f32) -> bool {
    return (a0_6 == a1_2);
}

fn eq_ge630_(a0_7: FeLocal_fe_More_Last_1ac585f5_7_, a1_3: FeLocal_fe_More_Last_1ac585f5_7_) -> bool {
    var local_24: bool;
    var local_25: bool = false;
    var local_26: bool = bool();

    if (a0_7.lead == a1_3.lead) {
        let _e11 = impl_trait_Last_eq(a0_7.tail.value, a1_3.tail.value);
        if _e11 {
            local_26 = true;
        }
    }
    let _e15 = local_26;
    return _e15;
}

fn eq_g4419_(a0_8: FeLocal_fe_More_More_Last_60a5ba63_8_, a1_4: FeLocal_fe_More_More_Last_60a5ba63_8_) -> bool {
    var local_27: bool;
    var local_28: bool = false;
    var local_29: bool = bool();

    if (a0_8.lead == a1_4.lead) {
        let _e9 = eq_ge630_(a0_8.tail, a1_4.tail);
        if _e9 {
            local_29 = true;
        }
    }
    let _e13 = local_29;
    return _e13;
}

fn eq_ga905_(a0_9: FeLocal_fe_More_More_More_Last_e6310ae8_9_, a1_5: FeLocal_fe_More_More_More_Last_e6310ae8_9_) -> bool {
    var local_30: bool;
    var local_31: bool = false;
    var local_32: bool = bool();

    if (a0_9.lead == a1_5.lead) {
        let _e9 = eq_g4419_(a0_9.tail, a1_5.tail);
        if _e9 {
            local_32 = true;
        }
    }
    let _e13 = local_32;
    return _e13;
}

fn impl_trait_Coordinate_eq(a0_10: FeLocal_fe_Coordinate_bdc10f09_10_, a1_6: FeLocal_fe_Coordinate_bdc10f09_10_) -> bool {
    var local_33: bool;
    var local_34: bool = false;
    var local_35: bool = bool();

    let _e6 = eq_ga905_(a0_10.value, a1_6.value);
    if _e6 {
        local_35 = true;
    }
    let _e10 = local_35;
    return _e10;
}

fn eq_ge0da(a0_11: FeLocal_fe_Complex_Coordinate_d4657101_11_, a1_7: FeLocal_fe_Complex_Coordinate_d4657101_11_) -> bool {
    var local_36: bool;
    var local_37: bool = false;
    var local_38: bool = bool();

    let _e6 = impl_trait_Coordinate_eq(a0_11.re, a1_7.re);
    if _e6 {
        let _e9 = impl_trait_Coordinate_eq(a0_11.im, a1_7.im);
        if _e9 {
            local_38 = true;
        }
    }
    let _e13 = local_38;
    return _e13;
}

fn impl_trait_Camera_eq(a0_12: FeLocal_fe_Camera_03494b0d_12_, a1_8: FeLocal_fe_Camera_03494b0d_12_) -> bool {
    var local_39: bool;
    var local_40: bool = false;
    var local_41: bool = bool();

    let _e6 = eq_ge0da(a0_12.center, a1_8.center);
    if _e6 {
        if (a0_12.zoom == a1_8.zoom) {
            if (a0_12.res == a1_8.res) {
                local_41 = true;
            }
        }
    }
    let _e16 = local_41;
    return _e16;
}

fn same_camera(a0_13: FeLocal_fe_ViewCache_da6e2ccc_22_, a1_9: FeLocal_fe_ViewCache_da6e2ccc_22_) -> bool {
    let _e4 = impl_trait_Camera_eq(a0_13.camera, a1_9.camera);
    return _e4;
}

fn refine_steps(a0_14: FeLocal_fe_RefinementSchedule_b8aa1d23_3_, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_42: u32;
    var local_43: bool = false;

    let _e9 = (a0_14.rounds != 0u);
    if (_e9 && (a0_14.phases > (4294967295u / select(1u, a0_14.rounds, _e9)))) {
        (*fe_trapped_5) = true;
    } else {
        local_42 = (a0_14.rounds * a0_14.phases);
        local_43 = true;
    }
    let _e19 = local_42;
    return _e19;
}

fn impl_trait_Pixel_default() -> FeLocal_fe_Pixel_5817280a_1_ {
    return FeLocal_fe_Pixel_5817280a_1_();
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_CohortPixel_5c31bbba_2_ {
    let _e0 = impl_trait_Pixel_default();
    return FeLocal_fe_CohortPixel_5c31bbba_2_(_e0, false);
}

fn cohort(a0_15: FeLocal_fe_RefinementSchedule_b8aa1d23_3_, a1_10: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_44: u32;
    var local_45: bool = false;

    if (a0_15.phases == 0u) {
        (*fe_trapped_6) = true;
    }
    return (a1_10 % a0_15.phases);
}

fn from_i32_(a0_16: u32) -> f32 {
    return f32(bitcast<i32>(a0_16));
}

fn phase_offset(a0_17: u32, a1_11: u32, a2_1: u32) -> u32 {
    let _e3 = from_i32_(a0_17);
    let _e6 = from_i32_(a1_11);
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

fn phase_order_rect(a0_18: u32, a1_12: u32, a2_2: u32, a3_: u32, a4_: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_46: u32;
    var local_47: bool = false;
    var local_48: u32 = u32();

    let _e10 = (a3_ * a4_);
    let _e11 = (a3_ != 0u);
    if (_e11 && (a4_ > (4294967295u / select(1u, a3_, _e11)))) {
    } else {
        let _e17 = phase_offset(a1_12, a2_2, _e10);
        if ((_e17 & 1u) == 0u) {
            local_48 = 1u;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_7) = true;
            } else {
                local_48 = (_e10 - 1u);
            }
        }
        let _e30 = local_48;
        let _e34 = (a0_18 * _e30);
        let _e35 = (a0_18 != 0u);
        if (_e35 && (_e30 > (4294967295u / select(1u, a0_18, _e35)))) {
        } else {
            if (_e34 > (4294967295u - _e17)) {
            } else {
                if (_e10 == 0u) {
                } else {
                    local_46 = ((_e34 + _e17) % _e10);
                    local_47 = true;
                }
                let _e51 = local_47;
                if _e51 {
                }
            }
            let _e53 = local_47;
            if _e53 {
            }
        }
        let _e55 = local_47;
        if _e55 {
        }
    }
    let _e58 = local_47;
    if _e58 {
    } else {
        (*fe_trapped_7) = true;
    }
    let _e60 = local_46;
    return _e60;
}

fn in_extent(a0_19: FeLocal_fe_Pixel_5817280a_1_, a1_13: f32) -> bool {
    var local_49: bool;
    var local_50: bool = false;
    var local_51: bool = bool();

    let _e5 = from_i32_(a0_19.x);
    if (_e5 < a1_13) {
        let _e8 = from_i32_(a0_19.y);
        if (_e8 < a1_13) {
            local_51 = true;
        }
    }
    let _e13 = local_51;
    return _e13;
}

fn at(a0_20: u32, a1_14: u32, a2_3: f32) -> FeLocal_fe_CohortPixel_5c31bbba_2_ {
    let _e3 = FeLocal_fe_Pixel_5817280a_1_(a0_20, a1_14);
    let _e4 = in_extent(_e3, a2_3);
    return FeLocal_fe_CohortPixel_5c31bbba_2_(_e3, _e4);
}

fn rect_pixel(a0_21: FeLocal_fe_RefinementSchedule_b8aa1d23_3_, a1_15: u32, a2_4: u32, a3_1: u32, a4_1: f32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_CohortPixel_5c31bbba_2_ {
    var local_52: FeLocal_fe_CohortPixel_5c31bbba_2_;
    var local_53: bool = false;
    var local_54: FeLocal_fe_CohortPixel_5c31bbba_2_;
    var local_55: bool = false;

    let _e7 = refine_steps(a0_21, fe_trapped_8);
    if ((a1_15 < _e7) == false) {
        let _e11 = impl_trait_CohortPixel_default();
        local_52 = _e11;
        local_53 = true;
    }
    let _e77 = local_53;
    if _e77 {
    } else {
        let _e16 = cohort(a0_21, a1_15, fe_trapped_8);
        let _e19 = phase_order_rect(_e16, a2_4, a3_1, a0_21.sx, a0_21.sy, fe_trapped_8);
        let _e24 = (a2_4 * a0_21.sx);
        let _e25 = (a2_4 != 0u);
        if (_e25 && (a0_21.sx > (4294967295u / select(1u, a2_4, _e25)))) {
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
                                local_54 = _e56;
                                local_55 = true;
                            }
                            let _e61 = local_55;
                            if _e61 {
                            }
                        }
                        let _e63 = local_55;
                        if _e63 {
                        }
                    }
                    let _e65 = local_55;
                    if _e65 {
                    }
                }
                let _e67 = local_55;
                if _e67 {
                }
            }
            let _e69 = local_55;
            if _e69 {
            }
        }
        let _e72 = local_55;
        if _e72 {
        } else {
            (*fe_trapped_8) = true;
        }
        let _e74 = local_54;
        local_52 = _e74;
    }
    let _e79 = local_52;
    return _e79;
}

fn impl_Pixel_index(a0_22: FeLocal_fe_Pixel_5817280a_1_, a1_16: u32) -> u32 {
    return ((a0_22.y << a1_16) | a0_22.x);
}

fn impl_CohortPixel_index(a0_23: FeLocal_fe_CohortPixel_5c31bbba_2_) -> u32 {
    let _e3 = impl_Pixel_index(a0_23.pixel, 11u);
    return _e3;
}

fn progress_is_presentable(a0_24: u32) -> bool {
    return (((a0_24 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_25: FeLocal_fe_NativeCheckpoint_6a22185c_5_) -> bool {
    let _e2 = progress_is_presentable(a0_25.control);
    return _e2;
}

fn is_presentable_in(a0_26: FeLocal_fe_NativeCheckpoint_6a22185c_5_, a1_17: u32) -> bool {
    var local_56: bool;
    var local_57: bool = false;
    var local_58: bool = bool();

    if (a0_26.epoch == a1_17) {
        let _e6 = is_presentable(a0_26);
        if _e6 {
            local_58 = true;
        }
    }
    let _e10 = local_58;
    return _e10;
}

fn oracle_is_glitched(a0_27: u32) -> bool {
    return (((a0_27 & 1073741824u) == 0u) == false);
}

fn oracle_is_usable(a0_28: u32) -> bool {
    let _e1 = oracle_is_glitched(a0_28);
    return (_e1 == false);
}

fn is_usable(a0_29: FeLocal_fe_SampleOracle_cc1ce944_13_) -> bool {
    let _e2 = oracle_is_usable(a0_29.flags);
    return _e2;
}

fn progress_outcome_flags(a0_30: u32) -> u32 {
    return (a0_30 & 3221225472u);
}

fn from_oracle(a0_31: FeLocal_fe_SampleOracle_cc1ce944_13_, a1_18: u32, a2_5: f32) -> FeLocal_fe_NativeCheckpoint_6a22185c_5_ {
    let _e7 = progress_outcome_flags(a0_31.flags);
    return FeLocal_fe_NativeCheckpoint_6a22185c_5_(((((a0_31.iteration << 14u) | _e7) | 268435456u) | 536870912u), a1_18, FeLocal_fe_Complex_f32_87ec9249_4_(a0_31.magnitude, a2_5));
}

fn is_glitched(a0_32: FeLocal_fe_NativeCheckpoint_6a22185c_5_) -> bool {
    let _e2 = oracle_is_glitched(a0_32.control);
    return _e2;
}

fn clamp_(a0_33: f32, a1_19: f32, a2_6: f32) -> f32 {
    var local_59: f32;
    var local_60: bool = false;
    var local_61: f32 = f32();

    if (a0_33 < a1_19) {
        local_61 = a1_19;
    } else {
        if (a2_6 < a0_33) {
            local_61 = a2_6;
        } else {
            local_61 = a0_33;
        }
    }
    let _e11 = local_61;
    return _e11;
}

fn pack_lab(a0_34: FeLocal_fe_Color_6b73191a_21_) -> u32 {
    let _e4 = clamp_(a0_34.l, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_34.a * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_34.b * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_21_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn progress_is_escaped(a0_35: u32) -> bool {
    return (((a0_35 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_36: FeLocal_fe_NativeCheckpoint_6a22185c_5_) -> bool {
    let _e2 = progress_is_escaped(a0_36.control);
    return _e2;
}

fn iteration(a0_37: FeLocal_fe_NativeCheckpoint_6a22185c_5_) -> u32 {
    return ((a0_37.control >> 14u) & 16383u);
}

fn magnitude(a0_38: FeLocal_fe_NativeCheckpoint_6a22185c_5_) -> f32 {
    var local_62: f32;
    var local_63: bool = false;
    var local_64: f32 = f32();

    if (((a0_38.control & 268435456u) == 0u) == false) {
        local_64 = a0_38.payload.re;
    } else {
        local_64 = 4f;
    }
    let _e16 = local_64;
    return _e16;
}

fn impl_trait_f32_floor(a0_39: f32) -> f32 {
    return floor(a0_39);
}

fn fract_(a0_40: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_40);
    return (a0_40 - _e1);
}

fn anchor(a0_41: u32) -> FeLocal_fe_Oklch_77e78738_0_ {
    var local_65: FeLocal_fe_Oklch_77e78738_0_;
    var local_66: bool = false;
    var local_67: FeLocal_fe_Oklch_77e78738_0_ = FeLocal_fe_Oklch_77e78738_0_();

    switch a0_41 {
        case 0u: {
            local_67 = FeLocal_fe_Oklch_77e78738_0_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_67 = FeLocal_fe_Oklch_77e78738_0_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_67 = FeLocal_fe_Oklch_77e78738_0_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_67 = FeLocal_fe_Oklch_77e78738_0_(0.73f, 0.142f, 165f);
        }
        default: {
            local_67 = FeLocal_fe_Oklch_77e78738_0_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_67;
    return _e29;
}

fn hue_remainder(a0_42: f32) -> f32 {
    var local_68: f32;
    var local_69: bool = false;
    var local_70: f32;
    var local_71: bool = false;
    var local_72: f32;
    var local_73: bool = false;
    var local_74: f32 = f32();
    var local_75: f32;
    var local_76: bool = false;
    var local_77: f32 = f32();
    var local_78: u32 = u32();
    var local_79: u32 = u32();
    var loop_result_2: f32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_51_: bool;
    var local_80: f32;
    var local_81: bool = false;
    var local_82: f32 = f32();

    let _e4 = (bitcast<u32>(a0_42) & 2147483647u);
    if (_e4 < 1135869952u) {
        local_68 = a0_42;
        local_69 = true;
    }
    let _e89 = local_69;
    if _e89 {
    } else {
        let _e12 = (_e4 >> 23u);
        if (_e12 == 255u) {
            local_70 = a0_42;
            local_71 = true;
        }
        let _e84 = local_71;
        if _e84 {
        } else {
            if (a0_42 < 0f) {
                local_74 = -(a0_42);
            } else {
                local_74 = a0_42;
            }
            let _e28 = local_74;
            if (_e12 < 150u) {
                let _e31 = to_i32_(_e28);
                let _e34 = from_i32_((_e31 % 360u));
                let _e35 = from_i32_(_e31);
                local_77 = (_e34 + (_e28 - _e35));
            } else {
                local_78 = (((_e4 & 8388607u) | 8388608u) % 360u);
                local_79 = (_e12 - 150u);
                loop {
                    let _e52 = local_78;
                    let _e54 = local_79;
                    let _e56 = (0u < _e54);
                    loop_header_carry_51_ = _e56;
                    if _e56 {
                        local_78 = ((_e52 << 1u) % 360u);
                        local_79 = (_e54 - 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                let _e67 = local_78;
                let _e68 = from_i32_(_e67);
                local_77 = _e68;
            }
            let _e74 = local_77;
            if (a0_42 < 0f) {
                local_82 = -(_e74);
            } else {
                local_82 = _e74;
            }
            let _e81 = local_82;
            local_70 = _e81;
        }
        let _e86 = local_70;
        local_68 = _e86;
    }
    let _e91 = local_68;
    return _e91;
}

fn interpolate(a0_43: FeLocal_fe_Oklch_77e78738_0_, a1_20: FeLocal_fe_Oklch_77e78738_0_, a2_7: f32) -> FeLocal_fe_Oklch_77e78738_0_ {
    var local_83: FeLocal_fe_Oklch_77e78738_0_;
    var local_84: bool = false;
    var local_85: bool = bool();
    var local_86: FeLocal_fe_Oklch_77e78738_0_;
    var local_87: bool = false;
    var local_88: f32 = f32();
    var local_89: FeLocal_fe_Oklch_77e78738_0_;
    var local_90: bool = false;
    var local_91: f32 = f32();
    var local_92: FeLocal_fe_Oklch_77e78738_0_;
    var local_93: bool = false;
    var local_94: f32 = f32();
    var local_95: FeLocal_fe_Oklch_77e78738_0_;
    var local_96: bool = false;
    var local_97: f32 = f32();
    var local_98: f32 = f32();

    let _e7 = (a1_20.hue - a0_43.hue);
    if (-540f <= a0_43.hue) {
        if (a0_43.hue <= 540f) {
            if (-540f <= a1_20.hue) {
                if (a1_20.hue <= 540f) {
                    if (-540f <= _e7) {
                        if (_e7 <= 540f) {
                            local_85 = true;
                        }
                    }
                }
            }
        }
    }
    let _e29 = local_85;
    if _e29 {
        local_88 = a0_43.hue;
    } else {
        let _e32 = hue_remainder(a0_43.hue);
        local_88 = _e32;
    }
    let _e38 = local_88;
    if _e29 {
        local_91 = _e7;
    } else {
        let _e40 = hue_remainder(a1_20.hue);
        local_91 = (_e40 - _e38);
    }
    let _e47 = local_91;
    if (180f < _e47) {
        local_94 = (_e47 - 360f);
    } else {
        if (_e47 < -180f) {
            local_94 = (_e47 + 360f);
        } else {
            local_94 = _e47;
        }
    }
    let _e62 = local_94;
    if (_e29 == false) {
        if (180f < _e62) {
            local_98 = (_e62 - 360f);
        } else {
            if (_e62 < -180f) {
                local_98 = (_e62 + 360f);
            } else {
                local_98 = _e62;
            }
        }
        let _e78 = local_98;
        if (_e78 == -180f) {
            if (a0_43.hue < a1_20.hue) {
                local_97 = 180f;
            } else {
                if (_e78 == 180f) {
                    if (a1_20.hue < a0_43.hue) {
                        local_97 = -180f;
                    } else {
                        local_97 = _e78;
                    }
                } else {
                    local_97 = _e78;
                }
            }
        } else {
            if (_e78 == 180f) {
                if (a1_20.hue < a0_43.hue) {
                    local_97 = -180f;
                } else {
                    local_97 = _e78;
                }
            } else {
                local_97 = _e78;
            }
        }
    } else {
        local_97 = _e62;
    }
    let _e106 = local_97;
    return FeLocal_fe_Oklch_77e78738_0_((a0_43.l + ((a1_20.l - a0_43.l) * a2_7)), (a0_43.chroma + ((a1_20.chroma - a0_43.chroma) * a2_7)), (_e38 + (_e106 * a2_7)));
}

fn wrap_pi(a0_44: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_44 / 6.2831855f) + 0.5f));
    return (a0_44 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_45: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_45) & 2147483647u));
}

fn sin_(a0_46: f32) -> f32 {
    let _e1 = wrap_pi(a0_46);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_47: f32) -> f32 {
    let _e3 = sin_((a0_47 + 1.5707964f));
    return _e3;
}

fn to_color(a0_48: FeLocal_fe_Oklch_77e78738_0_) -> FeLocal_fe_Color_6b73191a_21_ {
    let _e3 = (a0_48.hue * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_Color_6b73191a_21_(a0_48.l, (a0_48.chroma * _e6), (a0_48.chroma * _e9));
}

fn escape_palette(a0_49: u32, a1_21: f32, fe_trapped_9: ptr<function, bool>) -> u32 {
    var local_99: u32;
    var local_100: bool = false;
    var local_101: u32 = u32();

    let _e5 = from_i32_(a0_49);
    let _e11 = fract_(((_e5 + (4f / a1_21)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_9) = true;
        } else {
            local_101 = _e29;
        }
    }
    let _e38 = local_101;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_21_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn color(a0_50: FeLocal_fe_NativeCheckpoint_6a22185c_5_, fe_trapped_10: ptr<function, bool>) -> u32 {
    var local_102: u32;
    var local_103: bool = false;
    var local_104: u32 = u32();

    let _e4 = is_glitched(a0_50);
    if _e4 {
        let _e5 = glitch();
        local_104 = _e5;
    } else {
        let _e6 = is_escaped(a0_50);
        if _e6 {
            let _e7 = iteration(a0_50);
            let _e8 = magnitude(a0_50);
            let _e9 = escape_palette(_e7, _e8, fe_trapped_10);
            local_104 = _e9;
        } else {
            let _e10 = interior();
            local_104 = _e10;
        }
    }
    let _e15 = local_104;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_301_: FeLocal_fe_MandelbrotViewState_c524184f_20_ = FeLocal_fe_MandelbrotViewState_c524184f_20_();
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32 = u32();

    let _e14 = params.p29_;
    let _e16 = params.p30_;
    let _e18 = params.p31_;
    let _e20 = params.p32_;
    let _e22 = params.p33_;
    let _e24 = params.p34_;
    let _e26 = params.p35_;
    let _e28 = params.p36_;
    let _e30 = params.p37_;
    let _e32 = params.p38_;
    let _e34 = params.p39_;
    let _e36 = params.p40_;
    let _e38 = params.p41_;
    let _e40 = params.p42_;
    let _e42 = params.p43_;
    let _e44 = params.p44_;
    let _e48 = params.p45_;
    let _e50 = params.p46_;
    let _e52 = params.p47_;
    let _e54 = params.p48_;
    let _e58 = params.p49_;
    let _e60 = params.p50_;
    let _e62 = params.p51_;
    let _e64 = params.p52_;
    let _e68 = params.p53_;
    let _e70 = params.p54_;
    let _e72 = params.p55_;
    let _e74 = params.p56_;
    let _e78 = params.p57_;
    let _e80 = params.p58_;
    let _e82 = params.p59_;
    let _e84 = params.p60_;
    let _e88 = params.p61_;
    let _e90 = params.p62_;
    let _e92 = params.p63_;
    let _e94 = params.p64_;
    let _e98 = params.p65_;
    let _e100 = params.p66_;
    let _e102 = params.p67_;
    let _e104 = params.p68_;
    let _e108 = params.p69_;
    let _e110 = params.p70_;
    let _e112 = params.p71_;
    let _e114 = params.p72_;
    let _e118 = params.p73_;
    let _e120 = params.p74_;
    let _e122 = params.p75_;
    let _e124 = params.p76_;
    let _e128 = params.p77_;
    let _e130 = params.p78_;
    let _e132 = params.p79_;
    let _e134 = params.p80_;
    let _e138 = params.p81_;
    let _e140 = params.p82_;
    let _e142 = params.p83_;
    let _e144 = params.p84_;
    let _e146 = params.p85_;
    let _e148 = params.p86_;
    let _e150 = params.p87_;
    let _e152 = params.p88_;
    let _e156 = params.p89_;
    fixed_local_301_ = FeLocal_fe_MandelbrotViewState_c524184f_20_(FeLocal_fe_Camera_03494b0d_12_(FeLocal_fe_Complex_Coordinate_d4657101_11_(FeLocal_fe_Coordinate_bdc10f09_10_(FeLocal_fe_More_More_More_Last_e6310ae8_9_(_e14, FeLocal_fe_More_More_Last_60a5ba63_8_(_e16, FeLocal_fe_More_Last_1ac585f5_7_(_e18, FeLocal_fe_Last_eb970eb0_6_(_e20))))), FeLocal_fe_Coordinate_bdc10f09_10_(FeLocal_fe_More_More_More_Last_e6310ae8_9_(_e22, FeLocal_fe_More_More_Last_60a5ba63_8_(_e24, FeLocal_fe_More_Last_1ac585f5_7_(_e26, FeLocal_fe_Last_eb970eb0_6_(_e28)))))), _e30, _e32), _e34, _e36, _e38, _e40, _e42, FeLocal_fe_GestureSession_6b679731_18_(FeLocal_fe_Contacts_10_9aa61bf4_16_(array<FeLocal_fe_Contact_2b5c3d26_15_, 10>(FeLocal_fe_Contact_2b5c3d26_15_((_e44 != 0u), _e48, FeLocal_fe_Vec2_f32_2772165c_14_(_e50, _e52)), FeLocal_fe_Contact_2b5c3d26_15_((_e54 != 0u), _e58, FeLocal_fe_Vec2_f32_2772165c_14_(_e60, _e62)), FeLocal_fe_Contact_2b5c3d26_15_((_e64 != 0u), _e68, FeLocal_fe_Vec2_f32_2772165c_14_(_e70, _e72)), FeLocal_fe_Contact_2b5c3d26_15_((_e74 != 0u), _e78, FeLocal_fe_Vec2_f32_2772165c_14_(_e80, _e82)), FeLocal_fe_Contact_2b5c3d26_15_((_e84 != 0u), _e88, FeLocal_fe_Vec2_f32_2772165c_14_(_e90, _e92)), FeLocal_fe_Contact_2b5c3d26_15_((_e94 != 0u), _e98, FeLocal_fe_Vec2_f32_2772165c_14_(_e100, _e102)), FeLocal_fe_Contact_2b5c3d26_15_((_e104 != 0u), _e108, FeLocal_fe_Vec2_f32_2772165c_14_(_e110, _e112)), FeLocal_fe_Contact_2b5c3d26_15_((_e114 != 0u), _e118, FeLocal_fe_Vec2_f32_2772165c_14_(_e120, _e122)), FeLocal_fe_Contact_2b5c3d26_15_((_e124 != 0u), _e128, FeLocal_fe_Vec2_f32_2772165c_14_(_e130, _e132)), FeLocal_fe_Contact_2b5c3d26_15_((_e134 != 0u), _e138, FeLocal_fe_Vec2_f32_2772165c_14_(_e140, _e142)))), FeLocal_fe_Viewport_91e53b90_17_(FeLocal_fe_Vec2_f32_2772165c_14_(_e144, _e146), FeLocal_fe_Vec2_f32_2772165c_14_(_e148, _e150))), FeLocal_fe_BackingRequest_2bcae9f8_19_((_e152 != 0u), _e156));
    let _e200 = is_input_settled((&fixed_local_301_));
    if _e200 {
    } else {
        local_1 = true;
    }
    let _e389 = local_1;
    if _e389 {
    } else {
        let _e208 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e210 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e212 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e214 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e216 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e218 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e220 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e222 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e224 = cache[i32(0u)].camera_u002e_zoom;
        let _e226 = cache[i32(0u)].camera_u002e_res;
        let _e228 = cache[i32(0u)].cursor;
        let _e230 = cache[i32(0u)].aa;
        let _e232 = cache[i32(0u)].budget;
        let _e234 = cache[i32(0u)].radius;
        let _e236 = cache[i32(0u)].preview_dirty;
        let _e238 = cache[i32(0u)].blur_dirty;
        let _e240 = cache[i32(0u)].epoch;
        let _e242 = cache[i32(0u)].completed;
        let _e260 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e262 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e264 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e266 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e268 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e270 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e272 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e274 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e276 = cache[i32(1u)].camera_u002e_zoom;
        let _e278 = cache[i32(1u)].camera_u002e_res;
        let _e280 = cache[i32(1u)].cursor;
        let _e282 = cache[i32(1u)].aa;
        let _e284 = cache[i32(1u)].budget;
        let _e286 = cache[i32(1u)].radius;
        let _e288 = cache[i32(1u)].preview_dirty;
        let _e290 = cache[i32(1u)].blur_dirty;
        let _e292 = cache[i32(1u)].epoch;
        let _e294 = cache[i32(1u)].completed;
        let _e308 = for_view(_e30, _e32, (&fe_trapped));
        if (_e294 == 0u) {
        } else {
            if (_e284 < _e308.limit) {
                local_3 = true;
            }
            let _e387 = local_3;
            if _e387 {
            } else {
                let _e315 = same_camera(FeLocal_fe_ViewCache_da6e2ccc_22_(FeLocal_fe_Camera_03494b0d_12_(FeLocal_fe_Complex_Coordinate_d4657101_11_(FeLocal_fe_Coordinate_bdc10f09_10_(FeLocal_fe_More_More_More_Last_e6310ae8_9_(_e260, FeLocal_fe_More_More_Last_60a5ba63_8_(_e262, FeLocal_fe_More_Last_1ac585f5_7_(_e264, FeLocal_fe_Last_eb970eb0_6_(_e266))))), FeLocal_fe_Coordinate_bdc10f09_10_(FeLocal_fe_More_More_More_Last_e6310ae8_9_(_e268, FeLocal_fe_More_More_Last_60a5ba63_8_(_e270, FeLocal_fe_More_Last_1ac585f5_7_(_e272, FeLocal_fe_Last_eb970eb0_6_(_e274)))))), _e276, _e278), _e280, _e282, _e284, _e286, _e288, _e290, _e292, _e294), FeLocal_fe_ViewCache_da6e2ccc_22_(FeLocal_fe_Camera_03494b0d_12_(FeLocal_fe_Complex_Coordinate_d4657101_11_(FeLocal_fe_Coordinate_bdc10f09_10_(FeLocal_fe_More_More_More_Last_e6310ae8_9_(_e208, FeLocal_fe_More_More_Last_60a5ba63_8_(_e210, FeLocal_fe_More_Last_1ac585f5_7_(_e212, FeLocal_fe_Last_eb970eb0_6_(_e214))))), FeLocal_fe_Coordinate_bdc10f09_10_(FeLocal_fe_More_More_More_Last_e6310ae8_9_(_e216, FeLocal_fe_More_More_Last_60a5ba63_8_(_e218, FeLocal_fe_More_Last_1ac585f5_7_(_e220, FeLocal_fe_Last_eb970eb0_6_(_e222)))))), _e224, _e226), _e228, _e230, _e232, _e234, _e236, _e238, _e240, _e242));
                if _e315 {
                } else {
                    local_3 = true;
                }
                let _e385 = local_3;
                if _e385 {
                } else {
                    let _e318 = rect_pixel(_e308, _e228, global_invocation_id.x, global_invocation_id.y, _e32, (&fe_trapped));
                    if _e318.active_ {
                    } else {
                        local_3 = true;
                    }
                    let _e383 = local_3;
                    if _e383 {
                    } else {
                        let _e322 = impl_CohortPixel_index(_e318);
                        let _e326 = progress_pixels[i32(_e322)].control;
                        let _e328 = progress_pixels[i32(_e322)].epoch;
                        let _e330 = progress_pixels[i32(_e322)].payload_u002e_re;
                        let _e332 = progress_pixels[i32(_e322)].payload_u002e_im;
                        let _e335 = is_presentable_in(FeLocal_fe_NativeCheckpoint_6a22185c_5_(_e326, _e328, FeLocal_fe_Complex_f32_87ec9249_4_(_e330, _e332)), _e240);
                        if _e335 {
                            local_3 = true;
                        }
                        let _e381 = local_3;
                        if _e381 {
                        } else {
                            let _e341 = snapshot_oracle[i32(_e322)].iteration;
                            let _e343 = snapshot_oracle[i32(_e322)].magnitude;
                            let _e345 = snapshot_oracle[i32(_e322)].flags;
                            let _e346 = FeLocal_fe_SampleOracle_cc1ce944_13_(_e341, _e343, _e345);
                            let _e347 = is_usable(_e346);
                            if _e347 {
                            } else {
                                local_3 = true;
                            }
                            let _e379 = local_3;
                            if _e379 {
                            } else {
                                let _e351 = from_oracle(_e346, _e240, _e34);
                                let _e352 = color(_e351, (&fe_trapped));
                                progress_pixels[i32(_e322)].control = _e351.control;
                                progress_pixels[i32(_e322)].epoch = _e351.epoch;
                                progress_pixels[i32(_e322)].payload_u002e_re = _e351.payload.re;
                                progress_pixels[i32(_e322)].payload_u002e_im = _e351.payload.im;
                                native_pixels[i32(_e322)] = _e352;
                                if (_e282 == _e38) {
                                    let _e369 = snapshot_pixels[i32(_e322)];
                                    local_4 = _e369;
                                } else {
                                    local_4 = _e352;
                                }
                                let _e373 = local_4;
                                antialiased_pixels[i32(_e322)] = _e373;
                                local_3 = true;
                            }
                        }
                    }
                }
            }
        }
    }
    let _e400 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e400);
}
