struct FeLocal_fe_Complex_f32_87ec9249_1_ {
    re: f32,
    im: f32,
}

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

struct FeLocal_fe_Coordinate_bdc10f09_9_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_8_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_10_ {
    re: FeLocal_fe_Coordinate_bdc10f09_9_,
    im: FeLocal_fe_Coordinate_bdc10f09_9_,
}

struct FeLocal_fe_Camera_03494b0d_11_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_10_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_1_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_21_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
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

struct FeLocal_fe_ReprojectionTap_8d436475_23_ {
    use_full: bool,
    reusable: bool,
    sx: f32,
    sy: f32,
    old_res: f32,
}

struct FeLocal_fe_Vec2_f32_2772165c_12_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_13_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_12_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_14_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_13_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_15_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_12_,
    extent: FeLocal_fe_Vec2_f32_2772165c_12_,
}

struct FeLocal_fe_GestureSession_6b679731_16_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_14_,
    viewport: FeLocal_fe_Viewport_91e53b90_15_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_14_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_11_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_17_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_18_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_19_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_16_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_17_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_18_,
}

struct FeLocal_fe_BilinearTap_0ebfb494_3_ {
    i00_: u32,
    i10_: u32,
    i01_: u32,
    i11_: u32,
    tx: f32,
    ty: f32,
}

struct FeLocal_fe_Color_6b73191a_4_ {
    l: f32,
    a: f32,
    b: f32,
}

struct FeLocal_fe_Vec3_f32_672e823a_0_ {
    x: f32,
    y: f32,
    z: f32,
}

struct FeLocal_fe_Oklch_77e78738_2_ {
    l: f32,
    chroma: f32,
    hue: f32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_22_ {
    full: FeLocal_fe_Complex_f32_87ec9249_1_,
    initial: FeLocal_fe_Complex_f32_87ec9249_1_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_24_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history: FeLocal_fe_HistoryOffsets_646326b2_22_,
    trace_clock: f32,
}

struct FeLocal_fe_InvocationId_3c625d5f_25_ {
    x: u32,
    y: u32,
    z: u32,
}

struct FeLocal_fe_OrbitProgress_96185e10_20_ {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
}

struct initial_pixels_element {
    l: f32,
    a: f32,
    b: f32,
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
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(1)
var<storage, read_write> initial_pixels: array<initial_pixels_element>;
@group(0) @binding(2)
var<storage, read_write> preview_progress: array<preview_progress_element>;
@group(0) @binding(3)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(4)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(5)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 65536>;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn impl_Complex_scale_ge58b(a0_2: FeLocal_fe_Complex_f32_87ec9249_1_, a1_: f32) -> FeLocal_fe_Complex_f32_87ec9249_1_ {
    return FeLocal_fe_Complex_f32_87ec9249_1_((a0_2.re * a1_), (a0_2.im * a1_));
}

fn impl_trait_Complex_one_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_1_ {
    return FeLocal_fe_Complex_f32_87ec9249_1_(1f, 0f);
}

fn eq(a0_3: FeLocal_fe_Complex_f32_87ec9249_1_, a1_1: FeLocal_fe_Complex_f32_87ec9249_1_) -> bool {
    var local_15: bool;
    var local_16: bool = false;
    var local_17: bool = bool();

    if (a0_3.re == a1_1.re) {
        if (a0_3.im == a1_1.im) {
            local_17 = true;
        }
    }
    let _e13 = local_17;
    return _e13;
}

fn impl_trait_Complex_mul_ge58b(a0_4: FeLocal_fe_Complex_f32_87ec9249_1_, a1_2: FeLocal_fe_Complex_f32_87ec9249_1_) -> FeLocal_fe_Complex_f32_87ec9249_1_ {
    return FeLocal_fe_Complex_f32_87ec9249_1_(((a0_4.re * a1_2.re) - (a0_4.im * a1_2.im)), ((a0_4.re * a1_2.im) + (a0_4.im * a1_2.re)));
}

fn plane_offset(a0_5: FeLocal_fe_Camera_03494b0d_11_, a1_3: FeLocal_fe_Complex_f32_87ec9249_1_) -> FeLocal_fe_Complex_f32_87ec9249_1_ {
    var local_18: FeLocal_fe_Complex_f32_87ec9249_1_;
    var local_19: bool = false;
    var local_20: FeLocal_fe_Complex_f32_87ec9249_1_ = FeLocal_fe_Complex_f32_87ec9249_1_();

    let _e5 = impl_Complex_scale_ge58b(a1_3, a0_5.zoom);
    let _e7 = impl_trait_Complex_one_ge58b();
    let _e8 = eq(a0_5.orientation, _e7);
    if _e8 {
        local_20 = _e5;
    } else {
        let _e10 = impl_trait_Complex_mul_ge58b(a0_5.orientation, _e5);
        local_20 = _e10;
    }
    let _e14 = local_20;
    return _e14;
}

fn impl_trait_Complex_add_ge58b(a0_6: FeLocal_fe_Complex_f32_87ec9249_1_, a1_4: FeLocal_fe_Complex_f32_87ec9249_1_) -> FeLocal_fe_Complex_f32_87ec9249_1_ {
    return FeLocal_fe_Complex_f32_87ec9249_1_((a0_6.re + a1_4.re), (a0_6.im + a1_4.im));
}

fn conjugate(a0_7: FeLocal_fe_Complex_f32_87ec9249_1_) -> FeLocal_fe_Complex_f32_87ec9249_1_ {
    return FeLocal_fe_Complex_f32_87ec9249_1_(a0_7.re, -(a0_7.im));
}

fn norm_squared(a0_8: FeLocal_fe_Complex_f32_87ec9249_1_) -> f32 {
    return ((a0_8.re * a0_8.re) + (a0_8.im * a0_8.im));
}

fn normalized_offset(a0_9: FeLocal_fe_Camera_03494b0d_11_, a1_5: FeLocal_fe_Complex_f32_87ec9249_1_) -> FeLocal_fe_Complex_f32_87ec9249_1_ {
    var local_21: FeLocal_fe_Complex_f32_87ec9249_1_;
    var local_22: bool = false;
    var local_23: FeLocal_fe_Complex_f32_87ec9249_1_ = FeLocal_fe_Complex_f32_87ec9249_1_();

    let _e5 = impl_trait_Complex_one_ge58b();
    let _e6 = eq(a0_9.orientation, _e5);
    if _e6 {
        local_23 = a1_5;
    } else {
        let _e8 = conjugate(a0_9.orientation);
        let _e9 = impl_trait_Complex_mul_ge58b(_e8, a1_5);
        let _e11 = norm_squared(a0_9.orientation);
        let _e14 = impl_Complex_scale_ge58b(_e9, (1f / _e11));
        local_23 = _e14;
    }
    let _e18 = local_23;
    return FeLocal_fe_Complex_f32_87ec9249_1_((_e18.re / a0_9.zoom), (_e18.im / a0_9.zoom));
}

fn reproject_coarse_pixel(a0_10: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>, a1_6: FeLocal_fe_ViewCache_da6e2ccc_21_, a2_: FeLocal_fe_ViewCache_da6e2ccc_21_, a3_: FeLocal_fe_HistoryOffsets_646326b2_22_, a4_: u32, a5_: u32) -> FeLocal_fe_ReprojectionTap_8d436475_23_ {
    var local_24: FeLocal_fe_ReprojectionTap_8d436475_23_;
    var local_25: bool = false;
    var local_26: bool = bool();
    var local_27: FeLocal_fe_ReprojectionTap_8d436475_23_;
    var local_28: bool = false;
    var local_29: FeLocal_fe_ViewCache_da6e2ccc_21_ = FeLocal_fe_ViewCache_da6e2ccc_21_();
    var local_30: FeLocal_fe_ReprojectionTap_8d436475_23_;
    var local_31: bool = false;
    var local_32: FeLocal_fe_ReprojectionTap_8d436475_23_;
    var local_33: bool = false;
    var local_34: FeLocal_fe_Complex_f32_87ec9249_1_ = FeLocal_fe_Complex_f32_87ec9249_1_();
    var local_35: FeLocal_fe_ReprojectionTap_8d436475_23_;
    var local_36: bool = false;
    var local_37: bool = bool();

    if (a1_6.completed == 1u) {
        if ((a1_6.epoch < a2_.epoch) == false) {
            local_26 = true;
        }
    }
    let _e21 = local_26;
    if _e21 {
        local_29 = a1_6;
    } else {
        local_29 = a2_;
    }
    let _e26 = local_29;
    if (_e26.completed == 0u) {
        local_30 = FeLocal_fe_ReprojectionTap_8d436475_23_(_e21, false, 0f, 0f, 0f);
        local_31 = true;
    }
    let _e123 = local_31;
    if _e123 {
    } else {
        if _e21 {
            local_34 = a3_.full;
        } else {
            local_34 = a3_.initial;
        }
        let _e47 = local_34;
        let _e48 = from_i32_(a4_);
        let _e55 = (*a0_10).camera.res;
        let _e59 = from_i32_(a5_);
        let _e66 = (*a0_10).camera.res;
        let _e71 = (*a0_10).camera;
        let _e73 = plane_offset(_e71, FeLocal_fe_Complex_f32_87ec9249_1_(((((_e48 + 0.5f) * 2f) / _e55) - 1f), (1f - (((_e59 + 0.5f) * 2f) / _e66))));
        let _e75 = impl_trait_Complex_add_ge58b(_e47, _e73);
        let _e76 = normalized_offset(_e26.camera, _e75);
        let _e86 = ((((_e76.re + 1f) * _e26.camera.res) * 0.5f) - 0.5f);
        let _e96 = ((((1f - _e76.im) * _e26.camera.res) * 0.5f) - 0.5f);
        if (_e26.completed == 1u) {
            if (0f <= _e86) {
                if (0f <= _e96) {
                    if (_e86 < (_e26.camera.res - 1f)) {
                        if (_e96 < (_e26.camera.res - 1f)) {
                            local_37 = true;
                        }
                    }
                }
            }
        }
        let _e117 = local_37;
        local_30 = FeLocal_fe_ReprojectionTap_8d436475_23_(_e21, _e117, _e86, _e96, _e26.camera.res);
    }
    let _e125 = local_30;
    return _e125;
}

fn lib_clamp(a0_11: f32, a1_7: f32, a2_1: f32) -> f32 {
    var local_38: f32;
    var local_39: bool = false;
    var local_40: f32 = f32();

    if (a0_11 < a1_7) {
        local_40 = a1_7;
    } else {
        if (a2_1 < a0_11) {
            local_40 = a2_1;
        } else {
            local_40 = a0_11;
        }
    }
    let _e11 = local_40;
    return _e11;
}

fn impl_trait_f32_floor(a0_12: f32) -> f32 {
    return floor(a0_12);
}

fn min_(a0_13: f32, a1_8: f32) -> f32 {
    var local_41: f32;
    var local_42: bool = false;
    var local_43: f32 = f32();

    if (a0_13 < a1_8) {
        local_43 = a0_13;
    } else {
        local_43 = a1_8;
    }
    let _e8 = local_43;
    return _e8;
}

fn bilinear_tap(a0_14: f32, a1_9: f32, a2_2: f32, a3_1: u32) -> FeLocal_fe_BilinearTap_0ebfb494_3_ {
    let _e5 = lib_clamp(a0_14, 0f, a2_2);
    let _e7 = lib_clamp(a1_9, 0f, a2_2);
    let _e8 = impl_trait_f32_floor(_e5);
    let _e9 = impl_trait_f32_floor(_e7);
    let _e10 = to_i32_(_e8);
    let _e11 = to_i32_(_e9);
    let _e14 = min_((_e8 + 1f), a2_2);
    let _e15 = to_i32_(_e14);
    let _e18 = min_((_e9 + 1f), a2_2);
    let _e19 = to_i32_(_e18);
    return FeLocal_fe_BilinearTap_0ebfb494_3_(((_e11 << a3_1) | _e10), ((_e11 << a3_1) | _e15), ((_e19 << a3_1) | _e10), ((_e19 << a3_1) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn unpack_lab(a0_15: u32) -> FeLocal_fe_Color_6b73191a_4_ {
    let _e3 = from_i32_((a0_15 & 4095u));
    let _e10 = from_i32_(((a0_15 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_15 >> 22u));
    return FeLocal_fe_Color_6b73191a_4_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn to_vec(a0_16: FeLocal_fe_Color_6b73191a_4_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_(a0_16.l, a0_16.a, a0_16.b);
}

fn sub(a0_17: FeLocal_fe_Vec3_f32_672e823a_0_, a1_10: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_17.x - a1_10.x), (a0_17.y - a1_10.y), (a0_17.z - a1_10.z));
}

fn impl_trait_Vec3_mul_ge58b(a0_18: FeLocal_fe_Vec3_f32_672e823a_0_, a1_11: f32) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_18.x * a1_11), (a0_18.y * a1_11), (a0_18.z * a1_11));
}

fn impl_trait_Vec3_add_ge58b(a0_19: FeLocal_fe_Vec3_f32_672e823a_0_, a1_12: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_19.x + a1_12.x), (a0_19.y + a1_12.y), (a0_19.z + a1_12.z));
}

fn interpolate_g8d60_(a0_20: FeLocal_fe_Vec3_f32_672e823a_0_, a1_13: FeLocal_fe_Vec3_f32_672e823a_0_, a2_3: f32) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    let _e3 = sub(a1_13, a0_20);
    let _e4 = impl_trait_Vec3_mul_ge58b(_e3, a2_3);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_20, _e4);
    return _e5;
}

fn from_vec(a0_21: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Color_6b73191a_4_ {
    return FeLocal_fe_Color_6b73191a_4_(a0_21.x, a0_21.y, a0_21.z);
}

fn blend(a0_22: FeLocal_fe_Color_6b73191a_4_, a1_14: FeLocal_fe_Color_6b73191a_4_, a2_4: f32) -> FeLocal_fe_Color_6b73191a_4_ {
    let _e3 = to_vec(a0_22);
    let _e4 = to_vec(a1_14);
    let _e5 = interpolate_g8d60_(_e3, _e4, a2_4);
    let _e6 = from_vec(_e5);
    return _e6;
}

fn blend_corners(a0_23: FeLocal_fe_Color_6b73191a_4_, a1_15: FeLocal_fe_Color_6b73191a_4_, a2_5: FeLocal_fe_Color_6b73191a_4_, a3_2: FeLocal_fe_Color_6b73191a_4_, a4_1: f32, a5_1: f32) -> FeLocal_fe_Color_6b73191a_4_ {
    let _e6 = blend(a0_23, a1_15, a4_1);
    let _e7 = blend(a2_5, a3_2, a4_1);
    let _e8 = blend(_e6, _e7, a5_1);
    return _e8;
}

fn sample_snapshot(a1_16: f32, a2_6: f32, a3_3: f32) -> FeLocal_fe_Color_6b73191a_4_ {
    let _e7 = bilinear_tap(a1_16, a2_6, (a3_3 - 1f), 11u);
    let _e11 = snapshot_pixels[i32(_e7.i00_)];
    let _e12 = unpack_lab(_e11);
    let _e16 = snapshot_pixels[i32(_e7.i10_)];
    let _e17 = unpack_lab(_e16);
    let _e21 = snapshot_pixels[i32(_e7.i01_)];
    let _e22 = unpack_lab(_e21);
    let _e26 = snapshot_pixels[i32(_e7.i11_)];
    let _e27 = unpack_lab(_e26);
    let _e30 = blend_corners(_e12, _e17, _e22, _e27, _e7.tx, _e7.ty);
    return _e30;
}

fn impl_trait_f32_max(a0_24: f32, a1_17: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_24);
    let _e3 = bitcast<u32>(a1_17);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn sample(a1_18: f32, a2_7: f32) -> FeLocal_fe_Color_6b73191a_4_ {
    let _e5 = bilinear_tap(a1_18, a2_7, 255f, 8u);
    let _e10 = initial_pixels[i32(_e5.i00_)].l;
    let _e12 = initial_pixels[i32(_e5.i00_)].a;
    let _e14 = initial_pixels[i32(_e5.i00_)].b;
    let _e20 = initial_pixels[i32(_e5.i10_)].l;
    let _e22 = initial_pixels[i32(_e5.i10_)].a;
    let _e24 = initial_pixels[i32(_e5.i10_)].b;
    let _e30 = initial_pixels[i32(_e5.i01_)].l;
    let _e32 = initial_pixels[i32(_e5.i01_)].a;
    let _e34 = initial_pixels[i32(_e5.i01_)].b;
    let _e40 = initial_pixels[i32(_e5.i11_)].l;
    let _e42 = initial_pixels[i32(_e5.i11_)].a;
    let _e44 = initial_pixels[i32(_e5.i11_)].b;
    let _e48 = blend_corners(FeLocal_fe_Color_6b73191a_4_(_e10, _e12, _e14), FeLocal_fe_Color_6b73191a_4_(_e20, _e22, _e24), FeLocal_fe_Color_6b73191a_4_(_e30, _e32, _e34), FeLocal_fe_Color_6b73191a_4_(_e40, _e42, _e44), _e5.tx, _e5.ty);
    return _e48;
}

fn is_input_settled(a0_25: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> bool {
    var local_44: bool;
    var local_45: bool = false;
    var local_46: bool = bool();

    let _e4 = (*a0_25).drag_active;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_25).clock;
        let _e10 = (*a0_25).last_input;
        if (60f <= (_e8 - _e10)) {
            local_46 = true;
        }
    }
    let _e17 = local_46;
    return _e17;
}

fn progress_is_glitched(a0_26: u32) -> bool {
    return (((a0_26 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_27: FeLocal_fe_OrbitProgress_96185e10_20_) -> bool {
    let _e2 = progress_is_glitched(a0_27.reference_i);
    return _e2;
}

fn progress_is_escaped(a0_28: u32) -> bool {
    return (((a0_28 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_29: FeLocal_fe_OrbitProgress_96185e10_20_) -> bool {
    let _e2 = progress_is_escaped(a0_29.reference_i);
    return _e2;
}

fn pack_lab(a0_30: FeLocal_fe_Color_6b73191a_4_) -> u32 {
    let _e4 = lib_clamp(a0_30.l, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = lib_clamp(((a0_30.a * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = lib_clamp(((a0_30.b * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_4_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn fract_(a0_31: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_31);
    return (a0_31 - _e1);
}

fn anchor(a0_32: u32) -> FeLocal_fe_Oklch_77e78738_2_ {
    var local_47: FeLocal_fe_Oklch_77e78738_2_;
    var local_48: bool = false;
    var local_49: FeLocal_fe_Oklch_77e78738_2_ = FeLocal_fe_Oklch_77e78738_2_();

    switch a0_32 {
        case 0u: {
            local_49 = FeLocal_fe_Oklch_77e78738_2_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_49 = FeLocal_fe_Oklch_77e78738_2_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_49 = FeLocal_fe_Oklch_77e78738_2_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_49 = FeLocal_fe_Oklch_77e78738_2_(0.73f, 0.142f, 165f);
        }
        default: {
            local_49 = FeLocal_fe_Oklch_77e78738_2_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_49;
    return _e29;
}

fn hue_remainder(a0_33: f32) -> f32 {
    var local_50: f32;
    var local_51: bool = false;
    var local_52: f32;
    var local_53: bool = false;
    var local_54: f32;
    var local_55: bool = false;
    var local_56: f32 = f32();
    var local_57: f32;
    var local_58: bool = false;
    var local_59: f32 = f32();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var loop_result: f32;
    var loop_did_return: bool = false;
    var loop_header_carry_51_: bool;
    var local_62: f32;
    var local_63: bool = false;
    var local_64: f32 = f32();

    let _e4 = (bitcast<u32>(a0_33) & 2147483647u);
    if (_e4 < 1135869952u) {
        local_50 = a0_33;
        local_51 = true;
    }
    let _e89 = local_51;
    if _e89 {
    } else {
        let _e12 = (_e4 >> 23u);
        if (_e12 == 255u) {
            local_52 = a0_33;
            local_53 = true;
        }
        let _e84 = local_53;
        if _e84 {
        } else {
            if (a0_33 < 0f) {
                local_56 = -(a0_33);
            } else {
                local_56 = a0_33;
            }
            let _e28 = local_56;
            if (_e12 < 150u) {
                let _e31 = to_i32_(_e28);
                let _e34 = from_i32_((_e31 % 360u));
                let _e35 = from_i32_(_e31);
                local_59 = (_e34 + (_e28 - _e35));
            } else {
                local_60 = (((_e4 & 8388607u) | 8388608u) % 360u);
                local_61 = (_e12 - 150u);
                loop {
                    let _e52 = local_60;
                    let _e54 = local_61;
                    let _e56 = (0u < _e54);
                    loop_header_carry_51_ = _e56;
                    if _e56 {
                        local_60 = ((_e52 << 1u) % 360u);
                        local_61 = (_e54 - 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                let _e67 = local_60;
                let _e68 = from_i32_(_e67);
                local_59 = _e68;
            }
            let _e74 = local_59;
            if (a0_33 < 0f) {
                local_64 = -(_e74);
            } else {
                local_64 = _e74;
            }
            let _e81 = local_64;
            local_52 = _e81;
        }
        let _e86 = local_52;
        local_50 = _e86;
    }
    let _e91 = local_50;
    return _e91;
}

fn impl_Oklch_interpolate(a0_34: FeLocal_fe_Oklch_77e78738_2_, a1_19: FeLocal_fe_Oklch_77e78738_2_, a2_8: f32) -> FeLocal_fe_Oklch_77e78738_2_ {
    var local_65: FeLocal_fe_Oklch_77e78738_2_;
    var local_66: bool = false;
    var local_67: bool = bool();
    var local_68: FeLocal_fe_Oklch_77e78738_2_;
    var local_69: bool = false;
    var local_70: f32 = f32();
    var local_71: FeLocal_fe_Oklch_77e78738_2_;
    var local_72: bool = false;
    var local_73: f32 = f32();
    var local_74: FeLocal_fe_Oklch_77e78738_2_;
    var local_75: bool = false;
    var local_76: f32 = f32();
    var local_77: FeLocal_fe_Oklch_77e78738_2_;
    var local_78: bool = false;
    var local_79: f32 = f32();
    var local_80: f32 = f32();

    let _e7 = (a1_19.hue - a0_34.hue);
    if (-540f <= a0_34.hue) {
        if (a0_34.hue <= 540f) {
            if (-540f <= a1_19.hue) {
                if (a1_19.hue <= 540f) {
                    if (-540f <= _e7) {
                        if (_e7 <= 540f) {
                            local_67 = true;
                        }
                    }
                }
            }
        }
    }
    let _e29 = local_67;
    if _e29 {
        local_70 = a0_34.hue;
    } else {
        let _e32 = hue_remainder(a0_34.hue);
        local_70 = _e32;
    }
    let _e38 = local_70;
    if _e29 {
        local_73 = _e7;
    } else {
        let _e40 = hue_remainder(a1_19.hue);
        local_73 = (_e40 - _e38);
    }
    let _e47 = local_73;
    if (180f < _e47) {
        local_76 = (_e47 - 360f);
    } else {
        if (_e47 < -180f) {
            local_76 = (_e47 + 360f);
        } else {
            local_76 = _e47;
        }
    }
    let _e62 = local_76;
    if (_e29 == false) {
        if (180f < _e62) {
            local_80 = (_e62 - 360f);
        } else {
            if (_e62 < -180f) {
                local_80 = (_e62 + 360f);
            } else {
                local_80 = _e62;
            }
        }
        let _e78 = local_80;
        if (_e78 == -180f) {
            if (a0_34.hue < a1_19.hue) {
                local_79 = 180f;
            } else {
                if (_e78 == 180f) {
                    if (a1_19.hue < a0_34.hue) {
                        local_79 = -180f;
                    } else {
                        local_79 = _e78;
                    }
                } else {
                    local_79 = _e78;
                }
            }
        } else {
            if (_e78 == 180f) {
                if (a1_19.hue < a0_34.hue) {
                    local_79 = -180f;
                } else {
                    local_79 = _e78;
                }
            } else {
                local_79 = _e78;
            }
        }
    } else {
        local_79 = _e62;
    }
    let _e106 = local_79;
    return FeLocal_fe_Oklch_77e78738_2_((a0_34.l + ((a1_19.l - a0_34.l) * a2_8)), (a0_34.chroma + ((a1_19.chroma - a0_34.chroma) * a2_8)), (_e38 + (_e106 * a2_8)));
}

fn wrap_pi(a0_35: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_35 / 6.2831855f) + 0.5f));
    return (a0_35 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_36: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_36) & 2147483647u));
}

fn sin_(a0_37: f32) -> f32 {
    let _e1 = wrap_pi(a0_37);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_38: f32) -> f32 {
    let _e3 = sin_((a0_38 + 1.5707964f));
    return _e3;
}

fn to_color(a0_39: FeLocal_fe_Oklch_77e78738_2_) -> FeLocal_fe_Color_6b73191a_4_ {
    let _e3 = (a0_39.hue * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_Color_6b73191a_4_(a0_39.l, (a0_39.chroma * _e6), (a0_39.chroma * _e9));
}

fn escape_palette(a0_40: u32, a1_20: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_81: u32;
    var local_82: bool = false;
    var local_83: u32 = u32();

    let _e5 = from_i32_(a0_40);
    let _e11 = fract_(((_e5 + (4f / a1_20)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_1) = true;
        } else {
            local_83 = _e29;
        }
    }
    let _e38 = local_83;
    let _e39 = anchor(_e38);
    let _e40 = impl_Oklch_interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_Color_6b73191a_4_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_41: FeLocal_fe_OrbitProgress_96185e10_20_, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_84: u32;
    var local_85: bool = false;
    var local_86: u32 = u32();

    let _e4 = is_glitched(a0_41);
    if _e4 {
        let _e5 = glitch();
        local_86 = _e5;
    } else {
        let _e6 = is_escaped(a0_41);
        if _e6 {
            let _e9 = escape_palette(a0_41.iteration, a0_41.magnitude, fe_trapped_2);
            local_86 = _e9;
        } else {
            let _e10 = interior();
            local_86 = _e10;
        }
    }
    let _e15 = local_86;
    return _e15;
}

fn input_age(a0_42: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> f32 {
    var local_87: f32;
    var local_88: bool = false;
    var local_89: f32 = f32();

    let _e4 = (*a0_42).drag_active;
    if (0.5f <= _e4) {
    } else {
        let _e8 = (*a0_42).clock;
        let _e10 = (*a0_42).last_input;
        local_89 = (_e8 - _e10);
    }
    let _e14 = local_89;
    return _e14;
}

fn progress(a0_43: f32, a1_21: f32, a2_9: f32) -> f32 {
    let _e7 = lib_clamp(((a0_43 - a1_21) / a2_9), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn impl_trait_Color_default() -> FeLocal_fe_Color_6b73191a_4_ {
    return FeLocal_fe_Color_6b73191a_4_();
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32;
    var local_5: bool = false;
    var local_6: FeLocal_fe_Color_6b73191a_4_ = FeLocal_fe_Color_6b73191a_4_();
    var fixed_local_906_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: bool = bool();
    var fixed_local_962_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var local_10: u32;
    var local_11: bool = false;
    var local_12: bool = bool();
    var local_13: bool = bool();
    var local_14: FeLocal_fe_Color_6b73191a_4_ = FeLocal_fe_Color_6b73191a_4_();
    var fixed_local_1236_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();

    let _e12 = params.p30_;
    let _e14 = params.p31_;
    let _e16 = params.p32_;
    let _e18 = params.p33_;
    let _e20 = params.p34_;
    let _e22 = params.p35_;
    let _e24 = params.p36_;
    let _e26 = params.p37_;
    let _e28 = params.p38_;
    let _e30 = params.p39_;
    let _e32 = params.p40_;
    let _e34 = params.p41_;
    let _e36 = params.p42_;
    let _e38 = params.p43_;
    let _e40 = params.p44_;
    let _e42 = params.p45_;
    let _e44 = params.p46_;
    let _e46 = params.p47_;
    let _e50 = params.p48_;
    let _e52 = params.p49_;
    let _e54 = params.p50_;
    let _e56 = params.p51_;
    let _e60 = params.p52_;
    let _e62 = params.p53_;
    let _e64 = params.p54_;
    let _e66 = params.p55_;
    let _e68 = params.p56_;
    let _e70 = params.p57_;
    let _e72 = params.p58_;
    let _e74 = params.p59_;
    let _e78 = params.p60_;
    let _e80 = params.p61_;
    let _e82 = params.p62_;
    let _e84 = params.p63_;
    let _e88 = params.p64_;
    let _e90 = params.p65_;
    let _e92 = params.p66_;
    let _e94 = params.p67_;
    let _e96 = params.p68_;
    let _e98 = params.p69_;
    let _e100 = params.p70_;
    let _e102 = params.p71_;
    let _e104 = params.p72_;
    let _e106 = params.p73_;
    let _e108 = params.p74_;
    let _e110 = params.p75_;
    let _e112 = params.p76_;
    let _e114 = params.p77_;
    let _e116 = params.p78_;
    let _e118 = params.p79_;
    let _e122 = params.p80_;
    let _e124 = params.p81_;
    let _e128 = params.p82_;
    let _e130 = params.p83_;
    let _e132 = params.p84_;
    let _e134 = params.p85_;
    let _e136 = params.p86_;
    let _e138 = params.p87_;
    let _e140 = params.p88_;
    let _e142 = params.p89_;
    let _e144 = params.p90_;
    let _e146 = params.p91_;
    let _e148 = params.p92_;
    let _e150 = params.p93_;
    let _e152 = params.p94_;
    let _e154 = params.p95_;
    let _e160 = cache[i32(0u)].preview_dirty;
    if (_e160 == 0u) {
        local_1 = true;
    }
    let _e522 = local_1;
    if _e522 {
    } else {
        let _e170 = preview_cache[i32(0u)].prefix_only;
        let _e172 = preview_cache[i32(0u)].step_target;
        let _e174 = preview_cache[i32(0u)].budget;
        let _e176 = preview_cache[i32(0u)].epoch;
        let _e178 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e180 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e182 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e184 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        if (_e172 == 0u) {
            local_3 = true;
        }
        let _e520 = local_3;
        if _e520 {
        } else {
            let _e239 = FeLocal_fe_MandelbrotViewState_c524184f_19_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_10_(FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e12, FeLocal_fe_More_More_Last_60a5ba63_7_(_e14, FeLocal_fe_More_Last_1ac585f5_6_(_e16, FeLocal_fe_Last_eb970eb0_5_(_e18))))), FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e20, FeLocal_fe_More_More_Last_60a5ba63_7_(_e22, FeLocal_fe_More_Last_1ac585f5_6_(_e24, FeLocal_fe_Last_eb970eb0_5_(_e26)))))), _e28, _e30, FeLocal_fe_Complex_f32_87ec9249_1_(_e32, _e34)), _e36, _e38, _e40, _e42, _e44, FeLocal_fe_GestureSession_6b679731_16_(FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e46 != 0u), _e50, FeLocal_fe_Vec2_f32_2772165c_12_(_e52, _e54)), FeLocal_fe_Contact_2b5c3d26_13_((_e56 != 0u), _e60, FeLocal_fe_Vec2_f32_2772165c_12_(_e62, _e64)))), FeLocal_fe_Viewport_91e53b90_15_(FeLocal_fe_Vec2_f32_2772165c_12_(_e66, _e68), FeLocal_fe_Vec2_f32_2772165c_12_(_e70, _e72)), FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e74 != 0u), _e78, FeLocal_fe_Vec2_f32_2772165c_12_(_e80, _e82)), FeLocal_fe_Contact_2b5c3d26_13_((_e84 != 0u), _e88, FeLocal_fe_Vec2_f32_2772165c_12_(_e90, _e92)))), FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_10_(FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e94, FeLocal_fe_More_More_Last_60a5ba63_7_(_e96, FeLocal_fe_More_Last_1ac585f5_6_(_e98, FeLocal_fe_Last_eb970eb0_5_(_e100))))), FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e102, FeLocal_fe_More_More_Last_60a5ba63_7_(_e104, FeLocal_fe_More_Last_1ac585f5_6_(_e106, FeLocal_fe_Last_eb970eb0_5_(_e108)))))), _e110, _e112, FeLocal_fe_Complex_f32_87ec9249_1_(_e114, _e116))), FeLocal_fe_BackingRequest_2bcae9f8_17_((_e118 != 0u), _e122), FeLocal_fe_CameraTrace_7ca62f00_18_((_e124 != 0u), array<u32, 14>(_e128, _e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148, _e150, _e152, _e154)));
            let _e242 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
            let _e243 = from_i32_(global_invocation_id.x);
            let _e247 = to_i32_(((_e243 * _e30) / 256f));
            let _e248 = from_i32_(global_invocation_id.y);
            let _e252 = to_i32_(((_e248 * _e30) / 256f));
            let _e257 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
            let _e259 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
            let _e261 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e263 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e265 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
            let _e267 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
            let _e269 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e271 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e273 = cache[i32(1u)].camera_u002e_zoom;
            let _e275 = cache[i32(1u)].camera_u002e_res;
            let _e277 = cache[i32(1u)].camera_u002e_orientation_u002e_re;
            let _e279 = cache[i32(1u)].camera_u002e_orientation_u002e_im;
            let _e281 = cache[i32(1u)].cursor;
            let _e283 = cache[i32(1u)].aa;
            let _e285 = cache[i32(1u)].budget;
            let _e287 = cache[i32(1u)].radius;
            let _e289 = cache[i32(1u)].preview_dirty;
            let _e291 = cache[i32(1u)].blur_dirty;
            let _e293 = cache[i32(1u)].epoch;
            let _e295 = cache[i32(1u)].completed;
            let _e297 = cache[i32(1u)].steps;
            let _e299 = cache[i32(1u)].frame_clock;
            let _e318 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
            let _e320 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
            let _e322 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e324 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e326 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
            let _e328 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
            let _e330 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e332 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e334 = cache[i32(2u)].camera_u002e_zoom;
            let _e336 = cache[i32(2u)].camera_u002e_res;
            let _e338 = cache[i32(2u)].camera_u002e_orientation_u002e_re;
            let _e340 = cache[i32(2u)].camera_u002e_orientation_u002e_im;
            let _e342 = cache[i32(2u)].cursor;
            let _e344 = cache[i32(2u)].aa;
            let _e346 = cache[i32(2u)].budget;
            let _e348 = cache[i32(2u)].radius;
            let _e350 = cache[i32(2u)].preview_dirty;
            let _e352 = cache[i32(2u)].blur_dirty;
            let _e354 = cache[i32(2u)].epoch;
            let _e356 = cache[i32(2u)].completed;
            let _e358 = cache[i32(2u)].steps;
            let _e360 = cache[i32(2u)].frame_clock;
            fixed_local_906_ = _e239;
            let _e377 = reproject_coarse_pixel((&fixed_local_906_), FeLocal_fe_ViewCache_da6e2ccc_21_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_10_(FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e257, FeLocal_fe_More_More_Last_60a5ba63_7_(_e259, FeLocal_fe_More_Last_1ac585f5_6_(_e261, FeLocal_fe_Last_eb970eb0_5_(_e263))))), FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e265, FeLocal_fe_More_More_Last_60a5ba63_7_(_e267, FeLocal_fe_More_Last_1ac585f5_6_(_e269, FeLocal_fe_Last_eb970eb0_5_(_e271)))))), _e273, _e275, FeLocal_fe_Complex_f32_87ec9249_1_(_e277, _e279)), _e281, _e283, _e285, _e287, _e289, _e291, _e293, _e295, _e297, _e299), FeLocal_fe_ViewCache_da6e2ccc_21_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_10_(FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e318, FeLocal_fe_More_More_Last_60a5ba63_7_(_e320, FeLocal_fe_More_Last_1ac585f5_6_(_e322, FeLocal_fe_Last_eb970eb0_5_(_e324))))), FeLocal_fe_Coordinate_bdc10f09_9_(FeLocal_fe_More_More_More_Last_e6310ae8_8_(_e326, FeLocal_fe_More_More_Last_60a5ba63_7_(_e328, FeLocal_fe_More_Last_1ac585f5_6_(_e330, FeLocal_fe_Last_eb970eb0_5_(_e332)))))), _e334, _e336, FeLocal_fe_Complex_f32_87ec9249_1_(_e338, _e340)), _e342, _e344, _e346, _e348, _e350, _e352, _e354, _e356, _e358, _e360), FeLocal_fe_HistoryOffsets_646326b2_22_(FeLocal_fe_Complex_f32_87ec9249_1_(_e178, _e180), FeLocal_fe_Complex_f32_87ec9249_1_(_e182, _e184)), _e247, _e252);
            if _e377.use_full {
                let _e382 = sample_snapshot(_e377.sx, _e377.sy, _e377.old_res);
                local_6 = _e382;
            } else {
                let _e385 = impl_trait_f32_max(_e377.old_res, 1f);
                let _e387 = (256f / _e385);
                let _e392 = sample((_e377.sx * _e387), (_e377.sy * _e387));
                local_6 = _e392;
            }
            let _e398 = local_6;
            if _e377.reusable {
                fixed_local_962_ = _e239;
                let _e402 = is_input_settled((&fixed_local_962_));
                local_9 = (_e402 == false);
            }
            let _e408 = local_9;
            if _e408 {
                pixels[i32(_e242)].l = _e398.l;
                pixels[i32(_e242)].a = _e398.a;
                pixels[i32(_e242)].b = _e398.b;
            } else {
                let _e421 = preview_progress[i32(_e242)].dz_re;
                let _e423 = preview_progress[i32(_e242)].dz_im;
                let _e425 = preview_progress[i32(_e242)].z_re;
                let _e427 = preview_progress[i32(_e242)].z_im;
                let _e429 = preview_progress[i32(_e242)].reference_i;
                let _e431 = preview_progress[i32(_e242)].iteration;
                let _e433 = preview_progress[i32(_e242)].epoch;
                let _e435 = preview_progress[i32(_e242)].magnitude;
                let _e436 = FeLocal_fe_OrbitProgress_96185e10_20_(_e421, _e423, _e425, _e427, _e429, _e431, _e433, _e435);
                if (_e433 == _e176) {
                    let _e438 = is_escaped(_e436);
                    if _e438 {
                        let _e439 = is_glitched(_e436);
                        if _e439 {
                        } else {
                            local_12 = true;
                        }
                    }
                }
                let _e444 = local_12;
                if (_e433 == _e176) {
                    let _e446 = is_escaped(_e436);
                    if _e446 {
                    } else {
                        let _e447 = is_glitched(_e436);
                        if _e447 {
                        } else {
                            if (_e170 == 0u) {
                                if (_e431 < _e174) {
                                } else {
                                    local_13 = true;
                                }
                            }
                        }
                    }
                }
                let _e454 = local_13;
                if (_e444 | _e454) {
                    let _e457 = progress_color(_e436, (&fe_trapped));
                    let _e458 = unpack_lab(_e457);
                    if _e377.reusable {
                        fixed_local_1236_ = _e239;
                        let _e462 = input_age((&fixed_local_1236_));
                        let _e465 = progress(_e462, 60f, 300f);
                        let _e466 = blend(_e398, _e458, _e465);
                        local_14 = _e466;
                    } else {
                        local_14 = _e458;
                    }
                    let _e470 = local_14;
                    pixels[i32(_e242)].l = _e470.l;
                    pixels[i32(_e242)].a = _e470.a;
                    pixels[i32(_e242)].b = _e470.b;
                } else {
                    if _e377.reusable {
                        pixels[i32(_e242)].l = _e398.l;
                        pixels[i32(_e242)].a = _e398.a;
                        pixels[i32(_e242)].b = _e398.b;
                    } else {
                        if (_e170 == 0u) {
                            let _e490 = is_glitched(_e436);
                            if _e490 {
                                let _e491 = interior();
                                let _e492 = unpack_lab(_e491);
                                pixels[i32(_e242)].l = _e492.l;
                                pixels[i32(_e242)].a = _e492.a;
                                pixels[i32(_e242)].b = _e492.b;
                            } else {
                                let _e501 = impl_trait_Color_default();
                                pixels[i32(_e242)].l = _e501.l;
                                pixels[i32(_e242)].a = _e501.a;
                                pixels[i32(_e242)].b = _e501.b;
                            }
                        } else {
                            let _e510 = impl_trait_Color_default();
                            pixels[i32(_e242)].l = _e510.l;
                            pixels[i32(_e242)].a = _e510.a;
                            pixels[i32(_e242)].b = _e510.b;
                        }
                    }
                }
            }
        }
    }
    let _e533 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e533);
}
