struct FeLocal_fe_Last_eb970eb0_3_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_4_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_3_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_5_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_4_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_6_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_5_,
}

struct FeLocal_fe_Coordinate_bdc10f09_7_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_6_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_8_ {
    re: FeLocal_fe_Coordinate_bdc10f09_7_,
    im: FeLocal_fe_Coordinate_bdc10f09_7_,
}

struct FeLocal_fe_Camera_03494b0d_9_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_8_,
    zoom: f32,
    res: f32,
}

struct FeLocal_fe_Vec2_f32_2772165c_13_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_14_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_13_,
}

struct FeLocal_fe_Contacts_10_9aa61bf4_15_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_14_, 10>,
}

struct FeLocal_fe_Viewport_91e53b90_16_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_13_,
    extent: FeLocal_fe_Vec2_f32_2772165c_13_,
}

struct FeLocal_fe_GestureSession_6b679731_17_ {
    contacts: FeLocal_fe_Contacts_10_9aa61bf4_15_,
    viewport: FeLocal_fe_Viewport_91e53b90_16_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_18_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_19_ {
    camera: FeLocal_fe_Camera_03494b0d_9_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_17_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_18_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_22_ {
    camera: FeLocal_fe_Camera_03494b0d_9_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct FeLocal_fe_Complex_f32_87ec9249_0_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_ReprojectionTap_8d436475_24_ {
    use_full: bool,
    reusable: bool,
    sx: f32,
    sy: f32,
    old_res: f32,
}

struct FeLocal_fe_OrbitProgress_96185e10_1_ {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct FeLocal_fe_PixelSample_d22dfa2e_10_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_PlaneSample_375c1fa3_20_ {
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

struct FeLocal_fe_PrefixIndices_5eda682b_25_ {
    active_: bool,
    rebases: bool,
    reference_i: u32,
}

struct FeLocal_fe_PrefixStep_df7621f4_21_ {
    active_: bool,
    progress: FeLocal_fe_OrbitProgress_96185e10_1_,
}

struct FeLocal_fe_ReferenceMetadata_782c1884_12_ {
    valid_samples: u32,
    limit: u32,
}

struct FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_ {
    re: FeLocal_fe_More_More_More_Last_e6310ae8_6_,
    im: FeLocal_fe_More_More_More_Last_e6310ae8_6_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_26_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_f32_f32_b3478b14_27_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_23_ {
    full: FeLocal_fe_Complex_f32_87ec9249_0_,
    initial: FeLocal_fe_Complex_f32_87ec9249_0_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_28_ {
    camera: FeLocal_fe_Camera_03494b0d_9_,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history: FeLocal_fe_HistoryOffsets_646326b2_23_,
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

struct preview_progress_element {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
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
var<storage, read_write> preview_progress: array<preview_progress_element>;
@group(0) @binding(2)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(3)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(4)
var<storage> params: Params;
@group(0) @binding(5)
var<storage, read_write> trap: array<u32, 65536>;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn is_input_settled(a0_2: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> bool {
    var local_6: bool;
    var local_7: bool = false;
    var local_8: bool = bool();

    let _e4 = (*a0_2).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_2).clock;
        let _e10 = (*a0_2).last_input;
        if (60f <= (_e8 - _e10)) {
            local_8 = true;
        }
    }
    let _e17 = local_8;
    return _e17;
}

fn lib_image_max(a0_3: f32, a1_: f32) -> f32 {
    var local_9: f32;
    var local_10: bool = false;
    var local_11: f32 = f32();

    if (a1_ < a0_3) {
        local_11 = a0_3;
    } else {
        local_11 = a1_;
    }
    let _e8 = local_11;
    return _e8;
}

fn reproject_coarse_pixel(a0_4: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a1_1: FeLocal_fe_ViewCache_da6e2ccc_22_, a2_: FeLocal_fe_ViewCache_da6e2ccc_22_, a3_: FeLocal_fe_HistoryOffsets_646326b2_23_, a4_: u32, a5_: u32) -> FeLocal_fe_ReprojectionTap_8d436475_24_ {
    var local_12: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_13: bool = false;
    var local_14: bool = bool();
    var local_15: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_16: bool = false;
    var local_17: FeLocal_fe_ViewCache_da6e2ccc_22_ = FeLocal_fe_ViewCache_da6e2ccc_22_();
    var local_18: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_19: bool = false;
    var local_20: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_21: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_22: bool = false;
    var local_23: bool = bool();

    if (a1_1.completed == 1u) {
        if ((a1_1.epoch < a2_.epoch) == false) {
            local_14 = true;
        }
    }
    let _e21 = local_14;
    if _e21 {
        local_17 = a1_1;
    } else {
        local_17 = a2_;
    }
    let _e27 = local_17;
    if _e21 {
        local_20 = a3_.full;
    } else {
        local_20 = a3_.initial;
    }
    let _e35 = local_20;
    let _e36 = from_i32_(a4_);
    let _e43 = (*a0_4).camera.res;
    let _e47 = from_i32_(a5_);
    let _e54 = (*a0_4).camera.res;
    let _e61 = lib_image_max(_e27.camera.zoom, 0.000000000000000000000000001f);
    let _e65 = (*a0_4).camera.zoom;
    let _e77 = ((((((_e35.re + (((((_e36 + 0.5f) * 2f) / _e43) - 1f) * _e65)) / _e61) + 1f) * _e27.camera.res) * 0.5f) - 0.5f);
    let _e81 = (*a0_4).camera.zoom;
    let _e93 = ((((1f - ((_e35.im + ((1f - (((_e47 + 0.5f) * 2f) / _e54)) * _e81)) / _e61)) * _e27.camera.res) * 0.5f) - 0.5f);
    if (_e27.completed == 1u) {
        if (0f <= _e77) {
            if (0f <= _e93) {
                if (_e77 < (_e27.camera.res - 1f)) {
                    if (_e93 < (_e27.camera.res - 1f)) {
                        local_23 = true;
                    }
                }
            }
        }
    }
    let _e114 = local_23;
    return FeLocal_fe_ReprojectionTap_8d436475_24_(_e21, _e114, _e77, _e93, _e27.camera.res);
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_();
}

fn from_continuation(a0_5: FeLocal_fe_Complex_f32_87ec9249_0_, a1_2: FeLocal_fe_Complex_f32_87ec9249_0_, a2_1: u32, a3_1: u32, a4_1: u32, a5_1: f32) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    return FeLocal_fe_OrbitProgress_96185e10_1_(a0_5.re, a0_5.im, a1_2.re, a1_2.im, a2_1, a3_1, a4_1, a5_1);
}

fn empty_progress(a0_6: u32) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_6, 4f);
    return _e6;
}

fn progress_is_presentable(a0_7: u32) -> bool {
    return (((a0_7 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_8: u32) -> bool {
    return (((a0_8 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_9: u32, a1_3: u32, a2_2: u32) -> bool {
    var local_24: bool;
    var local_25: bool = false;
    var local_26: bool = bool();

    if ((a1_3 < a2_2) == false) {
        local_26 = true;
    } else {
        let _e8 = progress_has_outcome(a0_9);
        if _e8 {
            local_26 = true;
        } else {
            let _e9 = progress_is_presentable(a0_9);
            if _e9 {
                local_26 = true;
            }
        }
    }
    let _e17 = local_26;
    return _e17;
}

fn is_terminal(a0_10: FeLocal_fe_OrbitProgress_96185e10_1_, a1_4: u32) -> bool {
    let _e4 = progress_is_terminal(a0_10.reference_i, a0_10.iteration, a1_4);
    return _e4;
}

fn ordered_2x2_(a0_11: u32, a1_5: u32) -> FeLocal_fe_PixelSample_d22dfa2e_10_ {
    let _e6 = from_i32_(a0_11);
    let _e9 = from_i32_((a0_11 & 1u));
    let _e13 = from_i32_(a1_5);
    let _e16 = from_i32_((a1_5 & 1u));
    return FeLocal_fe_PixelSample_d22dfa2e_10_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_12: FeLocal_fe_PixelSample_d22dfa2e_10_, a1_6: f32) -> FeLocal_fe_PlaneSample_375c1fa3_20_ {
    return FeLocal_fe_PlaneSample_375c1fa3_20_((((a0_12.x / a1_6) * 2f) - 1f), (1f - ((a0_12.y / a1_6) * 2f)));
}

fn center_offset(a0_13: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(bitcast<f32>(a0_13.re_w2_bits), bitcast<f32>(a0_13.re_w3_bits));
}

fn add(a0_14: FeLocal_fe_Complex_f32_87ec9249_0_, a1_7: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_14.re + a1_7.re), (a0_14.im + a1_7.im));
}

fn pixel_delta_from_reference(a1_8: u32, a2_3: FeLocal_fe_Camera_03494b0d_9_, a3_2: FeLocal_fe_PixelSample_d22dfa2e_10_, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_27: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_28: bool = false;

    let _e7 = plane(a3_2, a2_3.res);
    if (a1_8 > (4294967295u - 8194u)) {
        (*fe_trapped_1) = true;
    }
    let _e17 = orbit[i32((a1_8 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_8 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_8 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_8 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_8 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_8 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_8 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_8 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_PackedReference_e11ca04a_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e41 = add(_e33, FeLocal_fe_Complex_f32_87ec9249_0_((_e7.u * a2_3.zoom), (_e7.v * a2_3.zoom)));
    return _e41;
}

fn progress_reference_index(a0_15: u32) -> u32 {
    return (a0_15 & 536870911u);
}

fn resolve_prefix_step(a0_16: u32, a1_9: u32, a2_4: u32, a3_3: u32, a4_2: bool, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_PrefixIndices_5eda682b_25_ {
    var local_29: FeLocal_fe_PrefixIndices_5eda682b_25_;
    var local_30: bool = false;
    var local_31: u32 = u32();
    var local_32: FeLocal_fe_PrefixIndices_5eda682b_25_;
    var local_33: bool = false;
    var local_34: u32 = u32();
    var local_35: FeLocal_fe_PrefixIndices_5eda682b_25_;
    var local_36: bool = false;
    var local_37: FeLocal_fe_PrefixIndices_5eda682b_25_ = FeLocal_fe_PrefixIndices_5eda682b_25_();

    if (0u < a3_3) {
        local_31 = (a3_3 - 1u);
    }
    let _e16 = local_31;
    if a4_2 {
        if (_e16 < a2_4) {
            local_34 = _e16;
        } else {
            local_34 = a2_4;
        }
    } else {
        local_34 = a2_4;
    }
    let _e24 = local_34;
    let _e25 = progress_reference_index(a0_16);
    let _e26 = progress_is_terminal(a0_16, a1_9, _e24);
    if _e26 {
        local_37 = FeLocal_fe_PrefixIndices_5eda682b_25_(FeLocal_fe_PrefixIndices_5eda682b_25_().active_, FeLocal_fe_PrefixIndices_5eda682b_25_().rebases, _e25);
    } else {
        if (_e25 > (4294967295u - 1u)) {
            (*fe_trapped_2) = true;
        } else {
            if (((_e25 + 1u) < a3_3) == false) {
                if a4_2 {
                    local_37 = FeLocal_fe_PrefixIndices_5eda682b_25_(FeLocal_fe_PrefixIndices_5eda682b_25_().active_, FeLocal_fe_PrefixIndices_5eda682b_25_().rebases, _e25);
                } else {
                    if (a3_3 < 2u) {
                        local_37 = FeLocal_fe_PrefixIndices_5eda682b_25_(FeLocal_fe_PrefixIndices_5eda682b_25_().active_, FeLocal_fe_PrefixIndices_5eda682b_25_().rebases, _e25);
                    } else {
                        local_37 = FeLocal_fe_PrefixIndices_5eda682b_25_(true, true, 0u);
                    }
                }
            } else {
                local_37 = FeLocal_fe_PrefixIndices_5eda682b_25_(true, false, _e25);
            }
        }
    }
    let _e63 = local_37;
    return _e63;
}

fn position(a0_17: FeLocal_fe_OrbitProgress_96185e10_1_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_17.z_re, a0_17.z_im);
}

fn prepare_reference_step(a0_18: FeLocal_fe_OrbitProgress_96185e10_1_, a1_10: u32, a2_5: u32, a3_4: bool, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_PrefixStep_df7621f4_21_ {
    var local_38: FeLocal_fe_PrefixStep_df7621f4_21_;
    var local_39: bool = false;
    var local_40: FeLocal_fe_PrefixStep_df7621f4_21_ = FeLocal_fe_PrefixStep_df7621f4_21_();

    let _e9 = resolve_prefix_step(a0_18.reference_i, a0_18.iteration, a1_10, a2_5, a3_4, fe_trapped_3);
    if (_e9.active_ == false) {
        local_40 = FeLocal_fe_PrefixStep_df7621f4_21_(FeLocal_fe_PrefixStep_df7621f4_21_().active_, a0_18);
    } else {
        if _e9.rebases {
            let _e17 = position(a0_18);
            let _e22 = from_continuation(_e17, _e17, 0u, a0_18.iteration, a0_18.epoch, a0_18.magnitude);
            local_40 = FeLocal_fe_PrefixStep_df7621f4_21_(true, _e22);
        } else {
            local_40 = FeLocal_fe_PrefixStep_df7621f4_21_(true, a0_18);
        }
    }
    let _e31 = local_40;
    return _e31;
}

fn reference_index(a0_19: FeLocal_fe_OrbitProgress_96185e10_1_) -> u32 {
    let _e2 = progress_reference_index(a0_19.reference_i);
    return _e2;
}

fn decode_metadata(a0_20: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_ReferenceMetadata_782c1884_12_ {
    return FeLocal_fe_ReferenceMetadata_782c1884_12_(a0_20.re_w0_bits, a0_20.re_w1_bits);
}

fn delta(a0_21: FeLocal_fe_OrbitProgress_96185e10_1_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_21.dz_re, a0_21.dz_im);
}

fn progress_is_escaped(a0_22: u32) -> bool {
    return (((a0_22 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_23: FeLocal_fe_OrbitProgress_96185e10_1_) -> bool {
    let _e2 = progress_is_escaped(a0_23.reference_i);
    return _e2;
}

fn progress_is_glitched(a0_24: u32) -> bool {
    return (((a0_24 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_25: FeLocal_fe_OrbitProgress_96185e10_1_) -> bool {
    let _e2 = progress_is_glitched(a0_25.reference_i);
    return _e2;
}

fn is_invalid(a0_26: FeLocal_fe_PackedReference_e11ca04a_2_) -> bool {
    var local_41: bool;
    var local_42: bool = false;
    var local_43: bool = bool();

    if (a0_26.re_w0_bits == 2143289344u) {
        local_43 = true;
    } else {
        if (a0_26.im_w0_bits == 2143289344u) {
            local_43 = true;
        }
    }
    let _e14 = local_43;
    return _e14;
}

fn from_quad(a0_27: f32, a1_11: f32, a2_6: f32, a3_5: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_6_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_6_(a0_27, FeLocal_fe_More_More_Last_60a5ba63_5_(a1_11, FeLocal_fe_More_Last_1ac585f5_4_(a2_6, FeLocal_fe_Last_eb970eb0_3_(a3_5))));
}

fn decode(a0_28: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_ {
    let _e9 = from_quad(bitcast<f32>(a0_28.re_w0_bits), bitcast<f32>(a0_28.re_w1_bits), bitcast<f32>(a0_28.re_w2_bits), bitcast<f32>(a0_28.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_28.im_w0_bits), bitcast<f32>(a0_28.im_w1_bits), bitcast<f32>(a0_28.im_w2_bits), bitcast<f32>(a0_28.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_(_e9, _e18);
}

fn to_quad(a0_29: FeLocal_fe_More_More_More_Last_e6310ae8_6_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_26_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_26_(a0_29.lead, a0_29.tail.lead, a0_29.tail.tail.lead, a0_29.tail.tail.tail.value);
}

fn perturb(a0_30: FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_, a1_12: FeLocal_fe_Complex_f32_87ec9249_0_, a2_7: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = to_quad(a0_30.re);
    let _e10 = to_quad(a0_30.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(((((2f * ((_e4.f0_ * a1_12.re) - (_e10.f0_ * a1_12.im))) + (2f * ((((((_e4.f1_ * a1_12.re) - (_e10.f1_ * a1_12.im)) + (_e4.f2_ * a1_12.re)) - (_e10.f2_ * a1_12.im)) + (_e4.f3_ * a1_12.re)) - (_e10.f3_ * a1_12.im)))) + ((a1_12.re * a1_12.re) - (a1_12.im * a1_12.im))) + a2_7.re), ((((2f * ((_e4.f0_ * a1_12.im) + (_e10.f0_ * a1_12.re))) + (2f * ((((((_e4.f1_ * a1_12.im) + (_e10.f1_ * a1_12.re)) + (_e4.f2_ * a1_12.im)) + (_e10.f2_ * a1_12.re)) + (_e4.f3_ * a1_12.im)) + (_e10.f3_ * a1_12.re)))) + ((2f * a1_12.re) * a1_12.im)) + a2_7.im));
}

fn two_sum(a0_31: f32, a1_13: f32) -> FeLocal_fe_f32_f32_b3478b14_27_ {
    let _e2 = (a0_31 + a1_13);
    let _e3 = (_e2 - a0_31);
    return FeLocal_fe_f32_f32_b3478b14_27_(_e2, ((a0_31 - (_e2 - _e3)) + (a1_13 - _e3)));
}

fn reference_plus_delta(a0_32: f32, a1_14: f32, a2_8: f32, a3_6: f32, a4_3: f32) -> f32 {
    let _e5 = two_sum(a0_32, a4_3);
    let _e8 = two_sum(_e5.f0_, a1_14);
    let _e11 = two_sum(_e8.f0_, a2_8);
    let _e14 = two_sum(_e11.f0_, a3_6);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_33: FeLocal_fe_More_More_More_Last_e6310ae8_6_, a1_15: f32) -> f32 {
    let _e2 = to_quad(a0_33);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_15);
    return _e7;
}

fn reference_with_delta(a0_34: FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_, a1_16: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = expansion_plus_delta(a0_34.re, a1_16.re);
    let _e7 = expansion_plus_delta(a0_34.im, a1_16.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(_e4, _e7);
}

fn norm_squared(a0_35: FeLocal_fe_Complex_f32_87ec9249_0_) -> f32 {
    return ((a0_35.re * a0_35.re) + (a0_35.im * a0_35.im));
}

fn pack_progress_reference(a0_36: u32, a1_17: u32, a2_9: u32) -> u32 {
    return (((a0_36 & 536870911u) | (a1_17 << 31u)) | (a2_9 << 30u));
}

fn non_finite(a0_37: f32) -> bool {
    return (((a0_37 - a0_37) == 0f) == false);
}

fn is_non_finite_complex(a0_38: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_44: bool;
    var local_45: bool = false;
    var local_46: bool = bool();

    let _e4 = non_finite(a0_38.re);
    if _e4 {
        local_46 = true;
    } else {
        let _e6 = non_finite(a0_38.im);
        if _e6 {
            local_46 = true;
        }
    }
    let _e12 = local_46;
    return _e12;
}

fn impl_trait_f32_abs(a0_39: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_39) & 2147483647u));
}

fn impl_trait_f32_max(a0_40: f32, a1_18: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_40);
    let _e3 = bitcast<u32>(a1_18);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress_step(a0_41: FeLocal_fe_OrbitProgress_96185e10_1_, a1_19: FeLocal_fe_Complex_f32_87ec9249_0_, a2_10: FeLocal_fe_PackedReference_e11ca04a_2_, a3_7: FeLocal_fe_PackedReference_e11ca04a_2_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    var local_47: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_48: bool = false;
    var local_49: u32 = u32();
    var local_50: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_51: bool = false;
    var local_52: u32 = u32();
    var local_53: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_54: bool = false;
    var local_55: f32 = f32();
    var local_56: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_57: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: bool = bool();
    var local_62: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_63: bool = false;

    let _e7 = delta(a0_41);
    let _e8 = position(a0_41);
    let _e9 = reference_index(a0_41);
    let _e10 = is_escaped(a0_41);
    if _e10 {
        local_49 = 1u;
    }
    let _e16 = local_49;
    let _e17 = is_glitched(a0_41);
    if _e17 {
        local_52 = 1u;
    }
    let _e28 = local_52;
    let _e30 = is_invalid(a2_10);
    if _e30 {
        local_55 = a0_41.magnitude;
        local_56 = _e8;
        local_57 = _e7;
        local_58 = 1u;
        local_59 = _e16;
        local_60 = _e9;
    } else {
        let _e31 = is_invalid(a3_7);
        if _e31 {
            local_55 = a0_41.magnitude;
            local_56 = _e8;
            local_57 = _e7;
            local_58 = 1u;
            local_59 = _e16;
            local_60 = _e9;
        } else {
            let _e33 = decode(a2_10);
            let _e34 = decode(a3_7);
            let _e35 = perturb(_e33, _e7, a1_19);
            let _e36 = reference_with_delta(_e34, _e35);
            let _e37 = norm_squared(_e36);
            let _e38 = norm_squared(_e35);
            if (4f < _e37) {
                let _e44 = impl_trait_f32_abs((_e37 - 4f));
                let _e46 = impl_trait_f32_max(1f, _e37);
                if (_e44 <= (0.000004f * _e46)) {
                    local_61 = true;
                }
            }
            let _e53 = local_61;
            let _e54 = is_non_finite_complex(_e35);
            if _e54 {
                local_55 = a0_41.magnitude;
                local_56 = _e8;
                local_57 = _e7;
                local_58 = 1u;
                local_59 = _e16;
                local_60 = _e9;
            } else {
                let _e55 = non_finite(_e37);
                if (_e55 | _e53) {
                    local_55 = a0_41.magnitude;
                    local_56 = _e8;
                    local_57 = _e7;
                    local_58 = 1u;
                    local_59 = _e16;
                    local_60 = _e9;
                } else {
                    if (4f < _e37) {
                        local_55 = _e37;
                        local_56 = _e36;
                        local_57 = _e35;
                        local_58 = _e28;
                        local_59 = 1u;
                        local_60 = _e9;
                    } else {
                        if (_e37 < _e38) {
                            local_55 = a0_41.magnitude;
                            local_56 = _e36;
                            local_57 = _e36;
                            local_58 = _e28;
                            local_59 = _e16;
                        } else {
                            if (_e9 > (4294967295u - 1u)) {
                                (*fe_trapped_4) = true;
                            } else {
                                local_55 = a0_41.magnitude;
                                local_56 = _e36;
                                local_57 = _e35;
                                local_58 = _e28;
                                local_59 = _e16;
                                local_60 = (_e9 + 1u);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e113 = local_55;
    let _e115 = local_56;
    let _e117 = local_57;
    let _e119 = local_58;
    let _e121 = local_59;
    let _e123 = local_60;
    let _e124 = pack_progress_reference(_e123, _e121, _e119);
    if (a0_41.iteration > (4294967295u - 1u)) {
        (*fe_trapped_4) = true;
    }
    let _e133 = from_continuation(_e117, _e115, _e124, (a0_41.iteration + 1u), a0_41.epoch, _e113);
    return _e133;
}

fn advance_preview_progress(a1_20: u32, a2_11: FeLocal_fe_Complex_f32_87ec9249_0_, a3_8: u32, a4_4: u32, a5_2: bool, a6_: FeLocal_fe_OrbitProgress_96185e10_1_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    var local_64: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_65: bool = false;
    var local_66: FeLocal_fe_OrbitProgress_96185e10_1_ = FeLocal_fe_OrbitProgress_96185e10_1_();
    var local_67: u32 = u32();
    var loop_result: FeLocal_fe_OrbitProgress_96185e10_1_;
    var loop_did_return: bool = false;
    var loop_header_carry_53_: bool;

    if (a1_20 > (4294967295u - 8194u)) {
    } else {
        let _e17 = orbit[i32((a1_20 + 8194u))].re_w0_bits;
        let _e19 = orbit[i32((a1_20 + 8194u))].re_w1_bits;
        let _e21 = orbit[i32((a1_20 + 8194u))].re_w2_bits;
        let _e23 = orbit[i32((a1_20 + 8194u))].re_w3_bits;
        let _e25 = orbit[i32((a1_20 + 8194u))].im_w0_bits;
        let _e27 = orbit[i32((a1_20 + 8194u))].im_w1_bits;
        let _e29 = orbit[i32((a1_20 + 8194u))].im_w2_bits;
        let _e31 = orbit[i32((a1_20 + 8194u))].im_w3_bits;
        let _e33 = decode_metadata(FeLocal_fe_PackedReference_e11ca04a_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
        local_66 = a6_;
        local_67 = 0u;
        loop {
            let _e42 = local_66;
            let _e44 = local_67;
            let _e45 = (_e44 < a4_4);
            loop_header_carry_53_ = _e45;
            if _e45 {
                let _e46 = prepare_reference_step(_e42, a3_8, _e33.valid_samples, a5_2, fe_trapped_5);
                if (_e46.active_ == false) {
                    local_66 = _e42;
                    local_67 = a4_4;
                    continue;
                }
                let _e53 = reference_index(_e46.progress);
                if (a1_20 > (4294967295u - _e53)) {
                } else {
                    let _e61 = orbit[i32((a1_20 + _e53))].re_w0_bits;
                    let _e63 = orbit[i32((a1_20 + _e53))].re_w1_bits;
                    let _e65 = orbit[i32((a1_20 + _e53))].re_w2_bits;
                    let _e67 = orbit[i32((a1_20 + _e53))].re_w3_bits;
                    let _e69 = orbit[i32((a1_20 + _e53))].im_w0_bits;
                    let _e71 = orbit[i32((a1_20 + _e53))].im_w1_bits;
                    let _e73 = orbit[i32((a1_20 + _e53))].im_w2_bits;
                    let _e75 = orbit[i32((a1_20 + _e53))].im_w3_bits;
                    let _e78 = (a1_20 + _e53);
                    if (a1_20 > (4294967295u - _e53)) {
                    } else {
                        if (_e78 > (4294967295u - 1u)) {
                            (*fe_trapped_5) = true;
                            break;
                        }
                        let _e90 = orbit[i32((_e78 + 1u))].re_w0_bits;
                        let _e92 = orbit[i32((_e78 + 1u))].re_w1_bits;
                        let _e94 = orbit[i32((_e78 + 1u))].re_w2_bits;
                        let _e96 = orbit[i32((_e78 + 1u))].re_w3_bits;
                        let _e98 = orbit[i32((_e78 + 1u))].im_w0_bits;
                        let _e100 = orbit[i32((_e78 + 1u))].im_w1_bits;
                        let _e102 = orbit[i32((_e78 + 1u))].im_w2_bits;
                        let _e104 = orbit[i32((_e78 + 1u))].im_w3_bits;
                        let _e106 = advance_progress_step(_e46.progress, a2_11, FeLocal_fe_PackedReference_e11ca04a_2_(_e61, _e63, _e65, _e67, _e69, _e71, _e73, _e75), FeLocal_fe_PackedReference_e11ca04a_2_(_e90, _e92, _e94, _e96, _e98, _e100, _e102, _e104), fe_trapped_5);
                        local_66 = _e106;
                        local_67 = (_e44 + 1u);
                        continue;
                    }
                }
                (*fe_trapped_5) = true;
                break;
            } else {
                loop_result = _e42;
                loop_did_return = true;
                break;
            }
        }
        let _e117 = loop_did_return;
        if _e117 {
            let _e119 = loop_result;
            local_64 = _e119;
            local_65 = true;
        }
    }
    let _e125 = local_65;
    if _e125 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e127 = local_64;
    return _e127;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var fixed_local_642_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var fixed_local_848_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var local_4: FeLocal_fe_OrbitProgress_96185e10_1_ = FeLocal_fe_OrbitProgress_96185e10_1_();
    var local_5: bool = bool();

    let _e11 = params.p29_;
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
    let _e45 = params.p45_;
    let _e47 = params.p46_;
    let _e49 = params.p47_;
    let _e51 = params.p48_;
    let _e55 = params.p49_;
    let _e57 = params.p50_;
    let _e59 = params.p51_;
    let _e61 = params.p52_;
    let _e65 = params.p53_;
    let _e67 = params.p54_;
    let _e69 = params.p55_;
    let _e71 = params.p56_;
    let _e75 = params.p57_;
    let _e77 = params.p58_;
    let _e79 = params.p59_;
    let _e81 = params.p60_;
    let _e85 = params.p61_;
    let _e87 = params.p62_;
    let _e89 = params.p63_;
    let _e91 = params.p64_;
    let _e95 = params.p65_;
    let _e97 = params.p66_;
    let _e99 = params.p67_;
    let _e101 = params.p68_;
    let _e105 = params.p69_;
    let _e107 = params.p70_;
    let _e109 = params.p71_;
    let _e111 = params.p72_;
    let _e115 = params.p73_;
    let _e117 = params.p74_;
    let _e119 = params.p75_;
    let _e121 = params.p76_;
    let _e125 = params.p77_;
    let _e127 = params.p78_;
    let _e129 = params.p79_;
    let _e131 = params.p80_;
    let _e135 = params.p81_;
    let _e137 = params.p82_;
    let _e139 = params.p83_;
    let _e141 = params.p84_;
    let _e143 = params.p85_;
    let _e145 = params.p86_;
    let _e147 = params.p87_;
    let _e149 = params.p88_;
    let _e153 = params.p89_;
    let _e159 = cache[i32(0u)].preview_dirty;
    if (_e159 == 0u) {
        local_1 = true;
    }
    let _e466 = local_1;
    if _e466 {
    } else {
        let _e169 = preview_cache[i32(0u)].reference_bank;
        let _e171 = preview_cache[i32(0u)].prefix_only;
        let _e173 = preview_cache[i32(0u)].step_target;
        let _e175 = preview_cache[i32(0u)].budget;
        let _e177 = preview_cache[i32(0u)].epoch;
        let _e179 = preview_cache[i32(0u)].completed;
        let _e181 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e183 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e185 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e187 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        if (_e179 == 1u) {
        } else {
            if (_e173 == 0u) {
                local_3 = true;
            }
            let _e464 = local_3;
            if _e464 {
            } else {
                let _e208 = FeLocal_fe_Camera_03494b0d_9_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e11, FeLocal_fe_More_More_Last_60a5ba63_5_(_e13, FeLocal_fe_More_Last_1ac585f5_4_(_e15, FeLocal_fe_Last_eb970eb0_3_(_e17))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e19, FeLocal_fe_More_More_Last_60a5ba63_5_(_e21, FeLocal_fe_More_Last_1ac585f5_4_(_e23, FeLocal_fe_Last_eb970eb0_3_(_e25)))))), _e27, _e29);
                let _e236 = FeLocal_fe_MandelbrotViewState_c524184f_19_(_e208, _e31, _e33, _e35, _e37, _e39, FeLocal_fe_GestureSession_6b679731_17_(FeLocal_fe_Contacts_10_9aa61bf4_15_(array<FeLocal_fe_Contact_2b5c3d26_14_, 10>(FeLocal_fe_Contact_2b5c3d26_14_((_e41 != 0u), _e45, FeLocal_fe_Vec2_f32_2772165c_13_(_e47, _e49)), FeLocal_fe_Contact_2b5c3d26_14_((_e51 != 0u), _e55, FeLocal_fe_Vec2_f32_2772165c_13_(_e57, _e59)), FeLocal_fe_Contact_2b5c3d26_14_((_e61 != 0u), _e65, FeLocal_fe_Vec2_f32_2772165c_13_(_e67, _e69)), FeLocal_fe_Contact_2b5c3d26_14_((_e71 != 0u), _e75, FeLocal_fe_Vec2_f32_2772165c_13_(_e77, _e79)), FeLocal_fe_Contact_2b5c3d26_14_((_e81 != 0u), _e85, FeLocal_fe_Vec2_f32_2772165c_13_(_e87, _e89)), FeLocal_fe_Contact_2b5c3d26_14_((_e91 != 0u), _e95, FeLocal_fe_Vec2_f32_2772165c_13_(_e97, _e99)), FeLocal_fe_Contact_2b5c3d26_14_((_e101 != 0u), _e105, FeLocal_fe_Vec2_f32_2772165c_13_(_e107, _e109)), FeLocal_fe_Contact_2b5c3d26_14_((_e111 != 0u), _e115, FeLocal_fe_Vec2_f32_2772165c_13_(_e117, _e119)), FeLocal_fe_Contact_2b5c3d26_14_((_e121 != 0u), _e125, FeLocal_fe_Vec2_f32_2772165c_13_(_e127, _e129)), FeLocal_fe_Contact_2b5c3d26_14_((_e131 != 0u), _e135, FeLocal_fe_Vec2_f32_2772165c_13_(_e137, _e139)))), FeLocal_fe_Viewport_91e53b90_16_(FeLocal_fe_Vec2_f32_2772165c_13_(_e141, _e143), FeLocal_fe_Vec2_f32_2772165c_13_(_e145, _e147))), FeLocal_fe_BackingRequest_2bcae9f8_18_((_e149 != 0u), _e153));
                let _e237 = from_i32_(global_invocation_id.x);
                let _e241 = to_i32_(((_e237 * _e29) / 256f));
                let _e242 = from_i32_(global_invocation_id.y);
                let _e246 = to_i32_(((_e242 * _e29) / 256f));
                fixed_local_642_ = _e236;
                let _e249 = is_input_settled((&fixed_local_642_));
                if _e249 {
                } else {
                    let _e254 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
                    let _e256 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
                    let _e258 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e260 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e262 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
                    let _e264 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
                    let _e266 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e268 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e270 = cache[i32(1u)].camera_u002e_zoom;
                    let _e272 = cache[i32(1u)].camera_u002e_res;
                    let _e274 = cache[i32(1u)].cursor;
                    let _e276 = cache[i32(1u)].aa;
                    let _e278 = cache[i32(1u)].budget;
                    let _e280 = cache[i32(1u)].radius;
                    let _e282 = cache[i32(1u)].preview_dirty;
                    let _e284 = cache[i32(1u)].blur_dirty;
                    let _e286 = cache[i32(1u)].epoch;
                    let _e288 = cache[i32(1u)].completed;
                    let _e306 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
                    let _e308 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
                    let _e310 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e312 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e314 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
                    let _e316 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
                    let _e318 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e320 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e322 = cache[i32(2u)].camera_u002e_zoom;
                    let _e324 = cache[i32(2u)].camera_u002e_res;
                    let _e326 = cache[i32(2u)].cursor;
                    let _e328 = cache[i32(2u)].aa;
                    let _e330 = cache[i32(2u)].budget;
                    let _e332 = cache[i32(2u)].radius;
                    let _e334 = cache[i32(2u)].preview_dirty;
                    let _e336 = cache[i32(2u)].blur_dirty;
                    let _e338 = cache[i32(2u)].epoch;
                    let _e340 = cache[i32(2u)].completed;
                    fixed_local_848_ = _e236;
                    let _e356 = reproject_coarse_pixel((&fixed_local_848_), FeLocal_fe_ViewCache_da6e2ccc_22_(FeLocal_fe_Camera_03494b0d_9_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e254, FeLocal_fe_More_More_Last_60a5ba63_5_(_e256, FeLocal_fe_More_Last_1ac585f5_4_(_e258, FeLocal_fe_Last_eb970eb0_3_(_e260))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e262, FeLocal_fe_More_More_Last_60a5ba63_5_(_e264, FeLocal_fe_More_Last_1ac585f5_4_(_e266, FeLocal_fe_Last_eb970eb0_3_(_e268)))))), _e270, _e272), _e274, _e276, _e278, _e280, _e282, _e284, _e286, _e288), FeLocal_fe_ViewCache_da6e2ccc_22_(FeLocal_fe_Camera_03494b0d_9_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e306, FeLocal_fe_More_More_Last_60a5ba63_5_(_e308, FeLocal_fe_More_Last_1ac585f5_4_(_e310, FeLocal_fe_Last_eb970eb0_3_(_e312))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e314, FeLocal_fe_More_More_Last_60a5ba63_5_(_e316, FeLocal_fe_More_Last_1ac585f5_4_(_e318, FeLocal_fe_Last_eb970eb0_3_(_e320)))))), _e322, _e324), _e326, _e328, _e330, _e332, _e334, _e336, _e338, _e340), FeLocal_fe_HistoryOffsets_646326b2_23_(FeLocal_fe_Complex_f32_87ec9249_0_(_e181, _e183), FeLocal_fe_Complex_f32_87ec9249_0_(_e185, _e187)), _e241, _e246);
                    if _e356.reusable {
                        local_3 = true;
                    }
                    let _e361 = local_3;
                    if _e361 {
                    }
                }
                let _e462 = local_3;
                if _e462 {
                } else {
                    let _e365 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
                    let _e369 = preview_progress[i32(_e365)].dz_re;
                    let _e371 = preview_progress[i32(_e365)].dz_im;
                    let _e373 = preview_progress[i32(_e365)].z_re;
                    let _e375 = preview_progress[i32(_e365)].z_im;
                    let _e377 = preview_progress[i32(_e365)].reference_i;
                    let _e379 = preview_progress[i32(_e365)].iteration;
                    let _e381 = preview_progress[i32(_e365)].epoch;
                    let _e383 = preview_progress[i32(_e365)].magnitude;
                    if (_e381 == _e177) {
                        local_4 = FeLocal_fe_OrbitProgress_96185e10_1_(_e369, _e371, _e373, _e375, _e377, _e379, _e381, _e383);
                    } else {
                        let _e386 = empty_progress(_e177);
                        local_4 = _e386;
                    }
                    let _e391 = local_4;
                    let _e392 = is_terminal(_e391, _e175);
                    if _e392 {
                        local_5 = true;
                    } else {
                        local_5 = ((_e391.iteration < _e173) == false);
                    }
                    let _e401 = local_5;
                    if _e401 {
                        if (_e381 == _e177) {
                        } else {
                            preview_progress[i32(_e365)].dz_re = _e391.dz_re;
                            preview_progress[i32(_e365)].dz_im = _e391.dz_im;
                            preview_progress[i32(_e365)].z_re = _e391.z_re;
                            preview_progress[i32(_e365)].z_im = _e391.z_im;
                            preview_progress[i32(_e365)].reference_i = _e391.reference_i;
                            preview_progress[i32(_e365)].iteration = _e391.iteration;
                            preview_progress[i32(_e365)].epoch = _e391.epoch;
                            preview_progress[i32(_e365)].magnitude = _e391.magnitude;
                        }
                        local_3 = true;
                    } else {
                        let _e427 = (_e169 * 8195u);
                        let _e428 = (_e169 != 0u);
                        if (_e428 && (8195u > (4294967295u / select(1u, _e169, _e428)))) {
                            fe_trapped = true;
                        }
                        let _e434 = ordered_2x2_(_e241, _e246);
                        let _e437 = pixel_delta_from_reference(_e427, _e208, _e434, (&fe_trapped));
                        let _e438 = advance_preview_progress(_e427, _e437, _e173, _e173, (_e171 == 1u), _e391, (&fe_trapped));
                        preview_progress[i32(_e365)].dz_re = _e438.dz_re;
                        preview_progress[i32(_e365)].dz_im = _e438.dz_im;
                        preview_progress[i32(_e365)].z_re = _e438.z_re;
                        preview_progress[i32(_e365)].z_im = _e438.z_im;
                        preview_progress[i32(_e365)].reference_i = _e438.reference_i;
                        preview_progress[i32(_e365)].iteration = _e438.iteration;
                        preview_progress[i32(_e365)].epoch = _e438.epoch;
                        preview_progress[i32(_e365)].magnitude = _e438.magnitude;
                        local_3 = true;
                    }
                    let _e460 = local_3;
                    if _e460 {
                    }
                }
            }
        }
    }
    let _e477 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e477);
}
