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

struct FeLocal_fe_Complex_f32_87ec9249_0_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_9_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_8_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_0_,
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

struct FeLocal_fe_Contacts_2_ac13bf77_15_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_14_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_16_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_13_,
    extent: FeLocal_fe_Vec2_f32_2772165c_13_,
}

struct FeLocal_fe_GestureSession_6b679731_17_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_15_,
    viewport: FeLocal_fe_Viewport_91e53b90_16_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_15_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_9_,
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

fn scale(a0_3: FeLocal_fe_Complex_f32_87ec9249_0_, a1_: f32) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_3.re * a1_), (a0_3.im * a1_));
}

fn impl_trait_Complex_one_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(1f, 0f);
}

fn eq(a0_4: FeLocal_fe_Complex_f32_87ec9249_0_, a1_1: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_9: bool;
    var local_10: bool = false;
    var local_11: bool = bool();

    if (a0_4.re == a1_1.re) {
        if (a0_4.im == a1_1.im) {
            local_11 = true;
        }
    }
    let _e13 = local_11;
    return _e13;
}

fn mul(a0_5: FeLocal_fe_Complex_f32_87ec9249_0_, a1_2: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(((a0_5.re * a1_2.re) - (a0_5.im * a1_2.im)), ((a0_5.re * a1_2.im) + (a0_5.im * a1_2.re)));
}

fn plane_offset(a0_6: FeLocal_fe_Camera_03494b0d_9_, a1_3: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_12: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_13: bool = false;
    var local_14: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();

    let _e5 = scale(a1_3, a0_6.zoom);
    let _e7 = impl_trait_Complex_one_ge58b();
    let _e8 = eq(a0_6.orientation, _e7);
    if _e8 {
        local_14 = _e5;
    } else {
        let _e10 = mul(a0_6.orientation, _e5);
        local_14 = _e10;
    }
    let _e14 = local_14;
    return _e14;
}

fn add(a0_7: FeLocal_fe_Complex_f32_87ec9249_0_, a1_4: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_7.re + a1_4.re), (a0_7.im + a1_4.im));
}

fn conjugate(a0_8: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_8.re, -(a0_8.im));
}

fn norm_squared(a0_9: FeLocal_fe_Complex_f32_87ec9249_0_) -> f32 {
    return ((a0_9.re * a0_9.re) + (a0_9.im * a0_9.im));
}

fn normalized_offset(a0_10: FeLocal_fe_Camera_03494b0d_9_, a1_5: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_15: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_16: bool = false;
    var local_17: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();

    let _e5 = impl_trait_Complex_one_ge58b();
    let _e6 = eq(a0_10.orientation, _e5);
    if _e6 {
        local_17 = a1_5;
    } else {
        let _e8 = conjugate(a0_10.orientation);
        let _e9 = mul(_e8, a1_5);
        let _e11 = norm_squared(a0_10.orientation);
        let _e14 = scale(_e9, (1f / _e11));
        local_17 = _e14;
    }
    let _e18 = local_17;
    return FeLocal_fe_Complex_f32_87ec9249_0_((_e18.re / a0_10.zoom), (_e18.im / a0_10.zoom));
}

fn reproject_coarse_pixel(a0_11: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a1_6: FeLocal_fe_ViewCache_da6e2ccc_22_, a2_: FeLocal_fe_ViewCache_da6e2ccc_22_, a3_: FeLocal_fe_HistoryOffsets_646326b2_23_, a4_: u32, a5_: u32) -> FeLocal_fe_ReprojectionTap_8d436475_24_ {
    var local_18: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_19: bool = false;
    var local_20: bool = bool();
    var local_21: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_22: bool = false;
    var local_23: FeLocal_fe_ViewCache_da6e2ccc_22_ = FeLocal_fe_ViewCache_da6e2ccc_22_();
    var local_24: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_25: bool = false;
    var local_26: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_27: bool = false;
    var local_28: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_29: FeLocal_fe_ReprojectionTap_8d436475_24_;
    var local_30: bool = false;
    var local_31: bool = bool();

    if (a1_6.completed == 1u) {
        if ((a1_6.epoch < a2_.epoch) == false) {
            local_20 = true;
        }
    }
    let _e21 = local_20;
    if _e21 {
        local_23 = a1_6;
    } else {
        local_23 = a2_;
    }
    let _e26 = local_23;
    if (_e26.completed == 0u) {
        local_24 = FeLocal_fe_ReprojectionTap_8d436475_24_(_e21, false, 0f, 0f, 0f);
        local_25 = true;
    }
    let _e123 = local_25;
    if _e123 {
    } else {
        if _e21 {
            local_28 = a3_.full;
        } else {
            local_28 = a3_.initial;
        }
        let _e47 = local_28;
        let _e48 = from_i32_(a4_);
        let _e55 = (*a0_11).camera.res;
        let _e59 = from_i32_(a5_);
        let _e66 = (*a0_11).camera.res;
        let _e71 = (*a0_11).camera;
        let _e73 = plane_offset(_e71, FeLocal_fe_Complex_f32_87ec9249_0_(((((_e48 + 0.5f) * 2f) / _e55) - 1f), (1f - (((_e59 + 0.5f) * 2f) / _e66))));
        let _e75 = add(_e47, _e73);
        let _e76 = normalized_offset(_e26.camera, _e75);
        let _e86 = ((((_e76.re + 1f) * _e26.camera.res) * 0.5f) - 0.5f);
        let _e96 = ((((1f - _e76.im) * _e26.camera.res) * 0.5f) - 0.5f);
        if (_e26.completed == 1u) {
            if (0f <= _e86) {
                if (0f <= _e96) {
                    if (_e86 < (_e26.camera.res - 1f)) {
                        if (_e96 < (_e26.camera.res - 1f)) {
                            local_31 = true;
                        }
                    }
                }
            }
        }
        let _e117 = local_31;
        local_24 = FeLocal_fe_ReprojectionTap_8d436475_24_(_e21, _e117, _e86, _e96, _e26.camera.res);
    }
    let _e125 = local_24;
    return _e125;
}

fn default_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_();
}

fn from_continuation(a0_12: FeLocal_fe_Complex_f32_87ec9249_0_, a1_7: FeLocal_fe_Complex_f32_87ec9249_0_, a2_1: u32, a3_1: u32, a4_1: u32, a5_1: f32) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    return FeLocal_fe_OrbitProgress_96185e10_1_(a0_12.re, a0_12.im, a1_7.re, a1_7.im, a2_1, a3_1, a4_1, a5_1);
}

fn empty_progress(a0_13: u32) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_13, 4f);
    return _e6;
}

fn progress_is_presentable(a0_14: u32) -> bool {
    return (((a0_14 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_15: u32) -> bool {
    return (((a0_15 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_16: u32, a1_8: u32, a2_2: u32) -> bool {
    var local_32: bool;
    var local_33: bool = false;
    var local_34: bool = bool();

    if ((a1_8 < a2_2) == false) {
        local_34 = true;
    } else {
        let _e8 = progress_has_outcome(a0_16);
        if _e8 {
            local_34 = true;
        } else {
            let _e9 = progress_is_presentable(a0_16);
            if _e9 {
                local_34 = true;
            }
        }
    }
    let _e17 = local_34;
    return _e17;
}

fn is_terminal(a0_17: FeLocal_fe_OrbitProgress_96185e10_1_, a1_9: u32) -> bool {
    let _e4 = progress_is_terminal(a0_17.reference_i, a0_17.iteration, a1_9);
    return _e4;
}

fn ordered_2x2_(a0_18: u32, a1_10: u32) -> FeLocal_fe_PixelSample_d22dfa2e_10_ {
    let _e6 = from_i32_(a0_18);
    let _e9 = from_i32_((a0_18 & 1u));
    let _e13 = from_i32_(a1_10);
    let _e16 = from_i32_((a1_10 & 1u));
    return FeLocal_fe_PixelSample_d22dfa2e_10_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_19: FeLocal_fe_PixelSample_d22dfa2e_10_, a1_11: f32) -> FeLocal_fe_PlaneSample_375c1fa3_20_ {
    return FeLocal_fe_PlaneSample_375c1fa3_20_((((a0_19.x / a1_11) * 2f) - 1f), (1f - ((a0_19.y / a1_11) * 2f)));
}

fn center_offset(a0_20: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(bitcast<f32>(a0_20.re_w2_bits), bitcast<f32>(a0_20.re_w3_bits));
}

fn pixel_delta_from_reference(a1_12: u32, a2_3: FeLocal_fe_Camera_03494b0d_9_, a3_2: FeLocal_fe_PixelSample_d22dfa2e_10_, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_35: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_36: bool = false;

    let _e7 = plane(a3_2, a2_3.res);
    if (a1_12 > (4294967295u - 8194u)) {
        (*fe_trapped_1) = true;
    }
    let _e17 = orbit[i32((a1_12 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_12 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_12 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_12 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_12 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_12 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_12 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_12 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_PackedReference_e11ca04a_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e37 = plane_offset(a2_3, FeLocal_fe_Complex_f32_87ec9249_0_(_e7.u, _e7.v));
    let _e38 = add(_e33, _e37);
    return _e38;
}

fn progress_reference_index(a0_21: u32) -> u32 {
    return (a0_21 & 536870911u);
}

fn resolve_prefix_step(a0_22: u32, a1_13: u32, a2_4: u32, a3_3: u32, a4_2: bool, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_PrefixIndices_5eda682b_25_ {
    var local_37: FeLocal_fe_PrefixIndices_5eda682b_25_;
    var local_38: bool = false;
    var local_39: u32 = u32();
    var local_40: FeLocal_fe_PrefixIndices_5eda682b_25_;
    var local_41: bool = false;
    var local_42: u32 = u32();
    var local_43: FeLocal_fe_PrefixIndices_5eda682b_25_;
    var local_44: bool = false;
    var local_45: FeLocal_fe_PrefixIndices_5eda682b_25_ = FeLocal_fe_PrefixIndices_5eda682b_25_();

    if (0u < a3_3) {
        local_39 = (a3_3 - 1u);
    }
    let _e16 = local_39;
    if a4_2 {
        if (_e16 < a2_4) {
            local_42 = _e16;
        } else {
            local_42 = a2_4;
        }
    } else {
        local_42 = a2_4;
    }
    let _e24 = local_42;
    let _e25 = progress_reference_index(a0_22);
    let _e26 = progress_is_terminal(a0_22, a1_13, _e24);
    if _e26 {
        local_45 = FeLocal_fe_PrefixIndices_5eda682b_25_(FeLocal_fe_PrefixIndices_5eda682b_25_().active_, FeLocal_fe_PrefixIndices_5eda682b_25_().rebases, _e25);
    } else {
        if (_e25 > (4294967295u - 1u)) {
            (*fe_trapped_2) = true;
        } else {
            if (((_e25 + 1u) < a3_3) == false) {
                if a4_2 {
                    local_45 = FeLocal_fe_PrefixIndices_5eda682b_25_(FeLocal_fe_PrefixIndices_5eda682b_25_().active_, FeLocal_fe_PrefixIndices_5eda682b_25_().rebases, _e25);
                } else {
                    if (a3_3 < 2u) {
                        local_45 = FeLocal_fe_PrefixIndices_5eda682b_25_(FeLocal_fe_PrefixIndices_5eda682b_25_().active_, FeLocal_fe_PrefixIndices_5eda682b_25_().rebases, _e25);
                    } else {
                        local_45 = FeLocal_fe_PrefixIndices_5eda682b_25_(true, true, 0u);
                    }
                }
            } else {
                local_45 = FeLocal_fe_PrefixIndices_5eda682b_25_(true, false, _e25);
            }
        }
    }
    let _e63 = local_45;
    return _e63;
}

fn position(a0_23: FeLocal_fe_OrbitProgress_96185e10_1_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_23.z_re, a0_23.z_im);
}

fn prepare_reference_step(a0_24: FeLocal_fe_OrbitProgress_96185e10_1_, a1_14: u32, a2_5: u32, a3_4: bool, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_PrefixStep_df7621f4_21_ {
    var local_46: FeLocal_fe_PrefixStep_df7621f4_21_;
    var local_47: bool = false;
    var local_48: FeLocal_fe_PrefixStep_df7621f4_21_ = FeLocal_fe_PrefixStep_df7621f4_21_();

    let _e9 = resolve_prefix_step(a0_24.reference_i, a0_24.iteration, a1_14, a2_5, a3_4, fe_trapped_3);
    if (_e9.active_ == false) {
        local_48 = FeLocal_fe_PrefixStep_df7621f4_21_(FeLocal_fe_PrefixStep_df7621f4_21_().active_, a0_24);
    } else {
        if _e9.rebases {
            let _e17 = position(a0_24);
            let _e22 = from_continuation(_e17, _e17, 0u, a0_24.iteration, a0_24.epoch, a0_24.magnitude);
            local_48 = FeLocal_fe_PrefixStep_df7621f4_21_(true, _e22);
        } else {
            local_48 = FeLocal_fe_PrefixStep_df7621f4_21_(true, a0_24);
        }
    }
    let _e31 = local_48;
    return _e31;
}

fn reference_index(a0_25: FeLocal_fe_OrbitProgress_96185e10_1_) -> u32 {
    let _e2 = progress_reference_index(a0_25.reference_i);
    return _e2;
}

fn decode_metadata(a0_26: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_ReferenceMetadata_782c1884_12_ {
    return FeLocal_fe_ReferenceMetadata_782c1884_12_(a0_26.re_w0_bits, a0_26.re_w1_bits);
}

fn delta(a0_27: FeLocal_fe_OrbitProgress_96185e10_1_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_27.dz_re, a0_27.dz_im);
}

fn progress_is_escaped(a0_28: u32) -> bool {
    return (((a0_28 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_29: FeLocal_fe_OrbitProgress_96185e10_1_) -> bool {
    let _e2 = progress_is_escaped(a0_29.reference_i);
    return _e2;
}

fn progress_is_glitched(a0_30: u32) -> bool {
    return (((a0_30 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_31: FeLocal_fe_OrbitProgress_96185e10_1_) -> bool {
    let _e2 = progress_is_glitched(a0_31.reference_i);
    return _e2;
}

fn is_invalid(a0_32: FeLocal_fe_PackedReference_e11ca04a_2_) -> bool {
    var local_49: bool;
    var local_50: bool = false;
    var local_51: bool = bool();

    if (a0_32.re_w0_bits == 2143289344u) {
        local_51 = true;
    } else {
        if (a0_32.im_w0_bits == 2143289344u) {
            local_51 = true;
        }
    }
    let _e14 = local_51;
    return _e14;
}

fn from_quad(a0_33: f32, a1_15: f32, a2_6: f32, a3_5: f32) -> FeLocal_fe_More_More_More_Last_e6310ae8_6_ {
    return FeLocal_fe_More_More_More_Last_e6310ae8_6_(a0_33, FeLocal_fe_More_More_Last_60a5ba63_5_(a1_15, FeLocal_fe_More_Last_1ac585f5_4_(a2_6, FeLocal_fe_Last_eb970eb0_3_(a3_5))));
}

fn decode(a0_34: FeLocal_fe_PackedReference_e11ca04a_2_) -> FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_ {
    let _e9 = from_quad(bitcast<f32>(a0_34.re_w0_bits), bitcast<f32>(a0_34.re_w1_bits), bitcast<f32>(a0_34.re_w2_bits), bitcast<f32>(a0_34.re_w3_bits));
    let _e18 = from_quad(bitcast<f32>(a0_34.im_w0_bits), bitcast<f32>(a0_34.im_w1_bits), bitcast<f32>(a0_34.im_w2_bits), bitcast<f32>(a0_34.im_w3_bits));
    return FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_(_e9, _e18);
}

fn to_quad(a0_35: FeLocal_fe_More_More_More_Last_e6310ae8_6_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_26_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_26_(a0_35.lead, a0_35.tail.lead, a0_35.tail.tail.lead, a0_35.tail.tail.tail.value);
}

fn perturb(a0_36: FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_, a1_16: FeLocal_fe_Complex_f32_87ec9249_0_, a2_7: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = to_quad(a0_36.re);
    let _e10 = to_quad(a0_36.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(((((2f * ((_e4.f0_ * a1_16.re) - (_e10.f0_ * a1_16.im))) + (2f * ((((((_e4.f1_ * a1_16.re) - (_e10.f1_ * a1_16.im)) + (_e4.f2_ * a1_16.re)) - (_e10.f2_ * a1_16.im)) + (_e4.f3_ * a1_16.re)) - (_e10.f3_ * a1_16.im)))) + ((a1_16.re * a1_16.re) - (a1_16.im * a1_16.im))) + a2_7.re), ((((2f * ((_e4.f0_ * a1_16.im) + (_e10.f0_ * a1_16.re))) + (2f * ((((((_e4.f1_ * a1_16.im) + (_e10.f1_ * a1_16.re)) + (_e4.f2_ * a1_16.im)) + (_e10.f2_ * a1_16.re)) + (_e4.f3_ * a1_16.im)) + (_e10.f3_ * a1_16.re)))) + ((2f * a1_16.re) * a1_16.im)) + a2_7.im));
}

fn two_sum(a0_37: f32, a1_17: f32) -> FeLocal_fe_f32_f32_b3478b14_27_ {
    let _e2 = (a0_37 + a1_17);
    let _e3 = (_e2 - a0_37);
    return FeLocal_fe_f32_f32_b3478b14_27_(_e2, ((a0_37 - (_e2 - _e3)) + (a1_17 - _e3)));
}

fn reference_plus_delta(a0_38: f32, a1_18: f32, a2_8: f32, a3_6: f32, a4_3: f32) -> f32 {
    let _e5 = two_sum(a0_38, a4_3);
    let _e8 = two_sum(_e5.f0_, a1_18);
    let _e11 = two_sum(_e8.f0_, a2_8);
    let _e14 = two_sum(_e11.f0_, a3_6);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_39: FeLocal_fe_More_More_More_Last_e6310ae8_6_, a1_19: f32) -> f32 {
    let _e2 = to_quad(a0_39);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_19);
    return _e7;
}

fn reference_with_delta(a0_40: FeLocal_fe_Complex_More_More_More_Last_7724c22a_11_, a1_20: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    let _e4 = expansion_plus_delta(a0_40.re, a1_20.re);
    let _e7 = expansion_plus_delta(a0_40.im, a1_20.im);
    return FeLocal_fe_Complex_f32_87ec9249_0_(_e4, _e7);
}

fn pack_progress_reference(a0_41: u32, a1_21: u32, a2_9: u32) -> u32 {
    return (((a0_41 & 536870911u) | (a1_21 << 31u)) | (a2_9 << 30u));
}

fn non_finite(a0_42: f32) -> bool {
    return (((a0_42 - a0_42) == 0f) == false);
}

fn is_non_finite_complex(a0_43: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_52: bool;
    var local_53: bool = false;
    var local_54: bool = bool();

    let _e4 = non_finite(a0_43.re);
    if _e4 {
        local_54 = true;
    } else {
        let _e6 = non_finite(a0_43.im);
        if _e6 {
            local_54 = true;
        }
    }
    let _e12 = local_54;
    return _e12;
}

fn impl_trait_f32_abs(a0_44: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_44) & 2147483647u));
}

fn impl_trait_f32_max(a0_45: f32, a1_22: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_45);
    let _e3 = bitcast<u32>(a1_22);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress_step(a0_46: FeLocal_fe_OrbitProgress_96185e10_1_, a1_23: FeLocal_fe_Complex_f32_87ec9249_0_, a2_10: FeLocal_fe_PackedReference_e11ca04a_2_, a3_7: FeLocal_fe_PackedReference_e11ca04a_2_, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    var local_55: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_56: bool = false;
    var local_57: u32 = u32();
    var local_58: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_59: bool = false;
    var local_60: u32 = u32();
    var local_61: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_62: bool = false;
    var local_63: f32 = f32();
    var local_64: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_65: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_66: u32 = u32();
    var local_67: u32 = u32();
    var local_68: u32 = u32();
    var local_69: bool = bool();
    var local_70: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_71: bool = false;

    let _e7 = delta(a0_46);
    let _e8 = position(a0_46);
    let _e9 = reference_index(a0_46);
    let _e10 = is_escaped(a0_46);
    if _e10 {
        local_57 = 1u;
    }
    let _e16 = local_57;
    let _e17 = is_glitched(a0_46);
    if _e17 {
        local_60 = 1u;
    }
    let _e28 = local_60;
    let _e30 = is_invalid(a2_10);
    if _e30 {
        local_63 = a0_46.magnitude;
        local_64 = _e8;
        local_65 = _e7;
        local_66 = 1u;
        local_67 = _e16;
        local_68 = _e9;
    } else {
        let _e31 = is_invalid(a3_7);
        if _e31 {
            local_63 = a0_46.magnitude;
            local_64 = _e8;
            local_65 = _e7;
            local_66 = 1u;
            local_67 = _e16;
            local_68 = _e9;
        } else {
            let _e33 = decode(a2_10);
            let _e34 = decode(a3_7);
            let _e35 = perturb(_e33, _e7, a1_23);
            let _e36 = reference_with_delta(_e34, _e35);
            let _e37 = norm_squared(_e36);
            let _e38 = norm_squared(_e35);
            if (4f < _e37) {
                let _e44 = impl_trait_f32_abs((_e37 - 4f));
                let _e46 = impl_trait_f32_max(1f, _e37);
                if (_e44 <= (0.000004f * _e46)) {
                    local_69 = true;
                }
            }
            let _e53 = local_69;
            let _e54 = is_non_finite_complex(_e35);
            if _e54 {
                local_63 = a0_46.magnitude;
                local_64 = _e8;
                local_65 = _e7;
                local_66 = 1u;
                local_67 = _e16;
                local_68 = _e9;
            } else {
                let _e55 = non_finite(_e37);
                if (_e55 | _e53) {
                    local_63 = a0_46.magnitude;
                    local_64 = _e8;
                    local_65 = _e7;
                    local_66 = 1u;
                    local_67 = _e16;
                    local_68 = _e9;
                } else {
                    if (4f < _e37) {
                        local_63 = _e37;
                        local_64 = _e36;
                        local_65 = _e35;
                        local_66 = _e28;
                        local_67 = 1u;
                        local_68 = _e9;
                    } else {
                        if (_e37 < _e38) {
                            local_63 = a0_46.magnitude;
                            local_64 = _e36;
                            local_65 = _e36;
                            local_66 = _e28;
                            local_67 = _e16;
                        } else {
                            if (_e9 > (4294967295u - 1u)) {
                                (*fe_trapped_4) = true;
                            } else {
                                local_63 = a0_46.magnitude;
                                local_64 = _e36;
                                local_65 = _e35;
                                local_66 = _e28;
                                local_67 = _e16;
                                local_68 = (_e9 + 1u);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e113 = local_63;
    let _e115 = local_64;
    let _e117 = local_65;
    let _e119 = local_66;
    let _e121 = local_67;
    let _e123 = local_68;
    let _e124 = pack_progress_reference(_e123, _e121, _e119);
    if (a0_46.iteration > (4294967295u - 1u)) {
        (*fe_trapped_4) = true;
    }
    let _e133 = from_continuation(_e117, _e115, _e124, (a0_46.iteration + 1u), a0_46.epoch, _e113);
    return _e133;
}

fn advance_preview_progress(a1_24: u32, a2_11: FeLocal_fe_Complex_f32_87ec9249_0_, a3_8: u32, a4_4: u32, a5_2: bool, a6_: FeLocal_fe_OrbitProgress_96185e10_1_, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_OrbitProgress_96185e10_1_ {
    var local_72: FeLocal_fe_OrbitProgress_96185e10_1_;
    var local_73: bool = false;
    var local_74: FeLocal_fe_OrbitProgress_96185e10_1_ = FeLocal_fe_OrbitProgress_96185e10_1_();
    var local_75: u32 = u32();
    var loop_result: FeLocal_fe_OrbitProgress_96185e10_1_;
    var loop_did_return: bool = false;
    var loop_header_carry_53_: bool;

    if (a1_24 > (4294967295u - 8194u)) {
    } else {
        let _e17 = orbit[i32((a1_24 + 8194u))].re_w0_bits;
        let _e19 = orbit[i32((a1_24 + 8194u))].re_w1_bits;
        let _e21 = orbit[i32((a1_24 + 8194u))].re_w2_bits;
        let _e23 = orbit[i32((a1_24 + 8194u))].re_w3_bits;
        let _e25 = orbit[i32((a1_24 + 8194u))].im_w0_bits;
        let _e27 = orbit[i32((a1_24 + 8194u))].im_w1_bits;
        let _e29 = orbit[i32((a1_24 + 8194u))].im_w2_bits;
        let _e31 = orbit[i32((a1_24 + 8194u))].im_w3_bits;
        let _e33 = decode_metadata(FeLocal_fe_PackedReference_e11ca04a_2_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
        local_74 = a6_;
        local_75 = 0u;
        loop {
            let _e42 = local_74;
            let _e44 = local_75;
            let _e45 = (_e44 < a4_4);
            loop_header_carry_53_ = _e45;
            if _e45 {
                let _e46 = prepare_reference_step(_e42, a3_8, _e33.valid_samples, a5_2, fe_trapped_5);
                if (_e46.active_ == false) {
                    local_74 = _e42;
                    local_75 = a4_4;
                    continue;
                }
                let _e53 = reference_index(_e46.progress);
                if (a1_24 > (4294967295u - _e53)) {
                } else {
                    let _e61 = orbit[i32((a1_24 + _e53))].re_w0_bits;
                    let _e63 = orbit[i32((a1_24 + _e53))].re_w1_bits;
                    let _e65 = orbit[i32((a1_24 + _e53))].re_w2_bits;
                    let _e67 = orbit[i32((a1_24 + _e53))].re_w3_bits;
                    let _e69 = orbit[i32((a1_24 + _e53))].im_w0_bits;
                    let _e71 = orbit[i32((a1_24 + _e53))].im_w1_bits;
                    let _e73 = orbit[i32((a1_24 + _e53))].im_w2_bits;
                    let _e75 = orbit[i32((a1_24 + _e53))].im_w3_bits;
                    let _e78 = (a1_24 + _e53);
                    if (a1_24 > (4294967295u - _e53)) {
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
                        local_74 = _e106;
                        local_75 = (_e44 + 1u);
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
            local_72 = _e119;
            local_73 = true;
        }
    }
    let _e125 = local_73;
    if _e125 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e127 = local_72;
    return _e127;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var fixed_local_650_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var fixed_local_875_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
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
    let _e43 = params.p45_;
    let _e45 = params.p46_;
    let _e49 = params.p47_;
    let _e51 = params.p48_;
    let _e53 = params.p49_;
    let _e55 = params.p50_;
    let _e59 = params.p51_;
    let _e61 = params.p52_;
    let _e63 = params.p53_;
    let _e65 = params.p54_;
    let _e67 = params.p55_;
    let _e69 = params.p56_;
    let _e71 = params.p57_;
    let _e73 = params.p58_;
    let _e77 = params.p59_;
    let _e79 = params.p60_;
    let _e81 = params.p61_;
    let _e83 = params.p62_;
    let _e87 = params.p63_;
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
    let _e121 = params.p79_;
    let _e127 = cache[i32(0u)].preview_dirty;
    if (_e127 == 0u) {
        local_1 = true;
    }
    let _e448 = local_1;
    if _e448 {
    } else {
        let _e137 = preview_cache[i32(0u)].reference_bank;
        let _e139 = preview_cache[i32(0u)].prefix_only;
        let _e141 = preview_cache[i32(0u)].step_target;
        let _e143 = preview_cache[i32(0u)].budget;
        let _e145 = preview_cache[i32(0u)].epoch;
        let _e147 = preview_cache[i32(0u)].completed;
        let _e149 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e151 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e153 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e155 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        if (_e147 == 1u) {
        } else {
            if (_e141 == 0u) {
                local_3 = true;
            }
            let _e446 = local_3;
            if _e446 {
            } else {
                let _e177 = FeLocal_fe_Camera_03494b0d_9_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e11, FeLocal_fe_More_More_Last_60a5ba63_5_(_e13, FeLocal_fe_More_Last_1ac585f5_4_(_e15, FeLocal_fe_Last_eb970eb0_3_(_e17))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e19, FeLocal_fe_More_More_Last_60a5ba63_5_(_e21, FeLocal_fe_More_Last_1ac585f5_4_(_e23, FeLocal_fe_Last_eb970eb0_3_(_e25)))))), _e27, _e29, FeLocal_fe_Complex_f32_87ec9249_0_(_e31, _e33));
                let _e208 = FeLocal_fe_MandelbrotViewState_c524184f_19_(_e177, _e35, _e37, _e39, _e41, _e43, FeLocal_fe_GestureSession_6b679731_17_(FeLocal_fe_Contacts_2_ac13bf77_15_(array<FeLocal_fe_Contact_2b5c3d26_14_, 2>(FeLocal_fe_Contact_2b5c3d26_14_((_e45 != 0u), _e49, FeLocal_fe_Vec2_f32_2772165c_13_(_e51, _e53)), FeLocal_fe_Contact_2b5c3d26_14_((_e55 != 0u), _e59, FeLocal_fe_Vec2_f32_2772165c_13_(_e61, _e63)))), FeLocal_fe_Viewport_91e53b90_16_(FeLocal_fe_Vec2_f32_2772165c_13_(_e65, _e67), FeLocal_fe_Vec2_f32_2772165c_13_(_e69, _e71)), FeLocal_fe_Contacts_2_ac13bf77_15_(array<FeLocal_fe_Contact_2b5c3d26_14_, 2>(FeLocal_fe_Contact_2b5c3d26_14_((_e73 != 0u), _e77, FeLocal_fe_Vec2_f32_2772165c_13_(_e79, _e81)), FeLocal_fe_Contact_2b5c3d26_14_((_e83 != 0u), _e87, FeLocal_fe_Vec2_f32_2772165c_13_(_e89, _e91)))), FeLocal_fe_Camera_03494b0d_9_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e93, FeLocal_fe_More_More_Last_60a5ba63_5_(_e95, FeLocal_fe_More_Last_1ac585f5_4_(_e97, FeLocal_fe_Last_eb970eb0_3_(_e99))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e101, FeLocal_fe_More_More_Last_60a5ba63_5_(_e103, FeLocal_fe_More_Last_1ac585f5_4_(_e105, FeLocal_fe_Last_eb970eb0_3_(_e107)))))), _e109, _e111, FeLocal_fe_Complex_f32_87ec9249_0_(_e113, _e115))), FeLocal_fe_BackingRequest_2bcae9f8_18_((_e117 != 0u), _e121));
                let _e209 = from_i32_(global_invocation_id.x);
                let _e213 = to_i32_(((_e209 * _e29) / 256f));
                let _e214 = from_i32_(global_invocation_id.y);
                let _e218 = to_i32_(((_e214 * _e29) / 256f));
                fixed_local_650_ = _e208;
                let _e221 = is_input_settled((&fixed_local_650_));
                if _e221 {
                } else {
                    let _e226 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
                    let _e228 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
                    let _e230 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e232 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e234 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
                    let _e236 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
                    let _e238 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e240 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e242 = cache[i32(1u)].camera_u002e_zoom;
                    let _e244 = cache[i32(1u)].camera_u002e_res;
                    let _e246 = cache[i32(1u)].camera_u002e_orientation_u002e_re;
                    let _e248 = cache[i32(1u)].camera_u002e_orientation_u002e_im;
                    let _e250 = cache[i32(1u)].cursor;
                    let _e252 = cache[i32(1u)].aa;
                    let _e254 = cache[i32(1u)].budget;
                    let _e256 = cache[i32(1u)].radius;
                    let _e258 = cache[i32(1u)].preview_dirty;
                    let _e260 = cache[i32(1u)].blur_dirty;
                    let _e262 = cache[i32(1u)].epoch;
                    let _e264 = cache[i32(1u)].completed;
                    let _e283 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
                    let _e285 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
                    let _e287 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e289 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e291 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
                    let _e293 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
                    let _e295 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
                    let _e297 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
                    let _e299 = cache[i32(2u)].camera_u002e_zoom;
                    let _e301 = cache[i32(2u)].camera_u002e_res;
                    let _e303 = cache[i32(2u)].camera_u002e_orientation_u002e_re;
                    let _e305 = cache[i32(2u)].camera_u002e_orientation_u002e_im;
                    let _e307 = cache[i32(2u)].cursor;
                    let _e309 = cache[i32(2u)].aa;
                    let _e311 = cache[i32(2u)].budget;
                    let _e313 = cache[i32(2u)].radius;
                    let _e315 = cache[i32(2u)].preview_dirty;
                    let _e317 = cache[i32(2u)].blur_dirty;
                    let _e319 = cache[i32(2u)].epoch;
                    let _e321 = cache[i32(2u)].completed;
                    fixed_local_875_ = _e208;
                    let _e338 = reproject_coarse_pixel((&fixed_local_875_), FeLocal_fe_ViewCache_da6e2ccc_22_(FeLocal_fe_Camera_03494b0d_9_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e226, FeLocal_fe_More_More_Last_60a5ba63_5_(_e228, FeLocal_fe_More_Last_1ac585f5_4_(_e230, FeLocal_fe_Last_eb970eb0_3_(_e232))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e234, FeLocal_fe_More_More_Last_60a5ba63_5_(_e236, FeLocal_fe_More_Last_1ac585f5_4_(_e238, FeLocal_fe_Last_eb970eb0_3_(_e240)))))), _e242, _e244, FeLocal_fe_Complex_f32_87ec9249_0_(_e246, _e248)), _e250, _e252, _e254, _e256, _e258, _e260, _e262, _e264), FeLocal_fe_ViewCache_da6e2ccc_22_(FeLocal_fe_Camera_03494b0d_9_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e283, FeLocal_fe_More_More_Last_60a5ba63_5_(_e285, FeLocal_fe_More_Last_1ac585f5_4_(_e287, FeLocal_fe_Last_eb970eb0_3_(_e289))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e291, FeLocal_fe_More_More_Last_60a5ba63_5_(_e293, FeLocal_fe_More_Last_1ac585f5_4_(_e295, FeLocal_fe_Last_eb970eb0_3_(_e297)))))), _e299, _e301, FeLocal_fe_Complex_f32_87ec9249_0_(_e303, _e305)), _e307, _e309, _e311, _e313, _e315, _e317, _e319, _e321), FeLocal_fe_HistoryOffsets_646326b2_23_(FeLocal_fe_Complex_f32_87ec9249_0_(_e149, _e151), FeLocal_fe_Complex_f32_87ec9249_0_(_e153, _e155)), _e213, _e218);
                    if _e338.reusable {
                        local_3 = true;
                    }
                    let _e343 = local_3;
                    if _e343 {
                    }
                }
                let _e444 = local_3;
                if _e444 {
                } else {
                    let _e347 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
                    let _e351 = preview_progress[i32(_e347)].dz_re;
                    let _e353 = preview_progress[i32(_e347)].dz_im;
                    let _e355 = preview_progress[i32(_e347)].z_re;
                    let _e357 = preview_progress[i32(_e347)].z_im;
                    let _e359 = preview_progress[i32(_e347)].reference_i;
                    let _e361 = preview_progress[i32(_e347)].iteration;
                    let _e363 = preview_progress[i32(_e347)].epoch;
                    let _e365 = preview_progress[i32(_e347)].magnitude;
                    if (_e363 == _e145) {
                        local_4 = FeLocal_fe_OrbitProgress_96185e10_1_(_e351, _e353, _e355, _e357, _e359, _e361, _e363, _e365);
                    } else {
                        let _e368 = empty_progress(_e145);
                        local_4 = _e368;
                    }
                    let _e373 = local_4;
                    let _e374 = is_terminal(_e373, _e143);
                    if _e374 {
                        local_5 = true;
                    } else {
                        local_5 = ((_e373.iteration < _e141) == false);
                    }
                    let _e383 = local_5;
                    if _e383 {
                        if (_e363 == _e145) {
                        } else {
                            preview_progress[i32(_e347)].dz_re = _e373.dz_re;
                            preview_progress[i32(_e347)].dz_im = _e373.dz_im;
                            preview_progress[i32(_e347)].z_re = _e373.z_re;
                            preview_progress[i32(_e347)].z_im = _e373.z_im;
                            preview_progress[i32(_e347)].reference_i = _e373.reference_i;
                            preview_progress[i32(_e347)].iteration = _e373.iteration;
                            preview_progress[i32(_e347)].epoch = _e373.epoch;
                            preview_progress[i32(_e347)].magnitude = _e373.magnitude;
                        }
                        local_3 = true;
                    } else {
                        let _e409 = (_e137 * 8195u);
                        let _e410 = (_e137 != 0u);
                        if (_e410 && (8195u > (4294967295u / select(1u, _e137, _e410)))) {
                            fe_trapped = true;
                        }
                        let _e416 = ordered_2x2_(_e213, _e218);
                        let _e419 = pixel_delta_from_reference(_e409, _e177, _e416, (&fe_trapped));
                        let _e420 = advance_preview_progress(_e409, _e419, _e141, _e141, (_e139 == 1u), _e373, (&fe_trapped));
                        preview_progress[i32(_e347)].dz_re = _e420.dz_re;
                        preview_progress[i32(_e347)].dz_im = _e420.dz_im;
                        preview_progress[i32(_e347)].z_re = _e420.z_re;
                        preview_progress[i32(_e347)].z_im = _e420.z_im;
                        preview_progress[i32(_e347)].reference_i = _e420.reference_i;
                        preview_progress[i32(_e347)].iteration = _e420.iteration;
                        preview_progress[i32(_e347)].epoch = _e420.epoch;
                        preview_progress[i32(_e347)].magnitude = _e420.magnitude;
                        local_3 = true;
                    }
                    let _e442 = local_3;
                    if _e442 {
                    }
                }
            }
        }
    }
    let _e459 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e459);
}
