struct FeLocal_fe_Complex_f32_87ec9249_0_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Last_eb970eb0_2_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_3_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_2_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_4_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_3_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_5_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_4_,
}

struct FeLocal_fe_Coordinate_bdc10f09_6_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_5_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_7_ {
    re: FeLocal_fe_Coordinate_bdc10f09_6_,
    im: FeLocal_fe_Coordinate_bdc10f09_6_,
}

struct FeLocal_fe_Camera_03494b0d_8_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_7_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_0_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_9_ {
    camera: FeLocal_fe_Camera_03494b0d_8_,
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

struct FeLocal_fe_ReprojectionTap_8d436475_11_ {
    use_full: bool,
    reusable: bool,
    sx: f32,
    sy: f32,
    old_res: f32,
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
    baseline_camera: FeLocal_fe_Camera_03494b0d_8_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_18_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_19_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_20_ {
    camera: FeLocal_fe_Camera_03494b0d_8_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_17_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_18_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_19_,
}

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_21_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_1_ {
    full: FeLocal_fe_Complex_f32_87ec9249_0_,
    initial: FeLocal_fe_Complex_f32_87ec9249_0_,
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

struct FeLocal_fe_PreviewCache_6792a3e2_22_ {
    camera: FeLocal_fe_Camera_03494b0d_8_,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history: FeLocal_fe_HistoryOffsets_646326b2_1_,
    trace_clock: f32,
}

struct FeLocal_fe_TraceFrame_75ddedf8_12_ {
    clock: f32,
    offsets: FeLocal_fe_HistoryOffsets_646326b2_1_,
    view: FeLocal_fe_ViewCache_da6e2ccc_9_,
    full: FeLocal_fe_ViewCache_da6e2ccc_9_,
    initial: FeLocal_fe_ViewCache_da6e2ccc_9_,
    reference: FeLocal_fe_ReferenceControl_7d077120_10_,
    tap: FeLocal_fe_ReprojectionTap_8d436475_11_,
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
var<storage, read_write> camera_trace: array<u32>;
@group(0) @binding(1)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(2)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(3)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(4)
var<storage> params: Params;

fn to_i32_(a0_: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_)), 2147483648u, (a0_ <= -2147483600f)), 2147483647u, (a0_ >= 2147483600f)), (a0_ == a0_));
}

fn from_i32_(a0_1: u32) -> f32 {
    return f32(bitcast<i32>(a0_1));
}

fn scale(a0_2: FeLocal_fe_Complex_f32_87ec9249_0_, a1_: f32) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_2.re * a1_), (a0_2.im * a1_));
}

fn impl_trait_Complex_one_ge58b() -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(1f, 0f);
}

fn eq(a0_3: FeLocal_fe_Complex_f32_87ec9249_0_, a1_1: FeLocal_fe_Complex_f32_87ec9249_0_) -> bool {
    var local_2: bool;
    var local_3: bool = false;
    var local_4: bool = bool();

    if (a0_3.re == a1_1.re) {
        if (a0_3.im == a1_1.im) {
            local_4 = true;
        }
    }
    let _e13 = local_4;
    return _e13;
}

fn mul(a0_4: FeLocal_fe_Complex_f32_87ec9249_0_, a1_2: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(((a0_4.re * a1_2.re) - (a0_4.im * a1_2.im)), ((a0_4.re * a1_2.im) + (a0_4.im * a1_2.re)));
}

fn plane_offset(a0_5: FeLocal_fe_Camera_03494b0d_8_, a1_3: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_5: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_6: bool = false;
    var local_7: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();

    let _e5 = scale(a1_3, a0_5.zoom);
    let _e7 = impl_trait_Complex_one_ge58b();
    let _e8 = eq(a0_5.orientation, _e7);
    if _e8 {
        local_7 = _e5;
    } else {
        let _e10 = mul(a0_5.orientation, _e5);
        local_7 = _e10;
    }
    let _e14 = local_7;
    return _e14;
}

fn add(a0_6: FeLocal_fe_Complex_f32_87ec9249_0_, a1_4: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_((a0_6.re + a1_4.re), (a0_6.im + a1_4.im));
}

fn conjugate(a0_7: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    return FeLocal_fe_Complex_f32_87ec9249_0_(a0_7.re, -(a0_7.im));
}

fn norm_squared(a0_8: FeLocal_fe_Complex_f32_87ec9249_0_) -> f32 {
    return ((a0_8.re * a0_8.re) + (a0_8.im * a0_8.im));
}

fn normalized_offset(a0_9: FeLocal_fe_Camera_03494b0d_8_, a1_5: FeLocal_fe_Complex_f32_87ec9249_0_) -> FeLocal_fe_Complex_f32_87ec9249_0_ {
    var local_8: FeLocal_fe_Complex_f32_87ec9249_0_;
    var local_9: bool = false;
    var local_10: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();

    let _e5 = impl_trait_Complex_one_ge58b();
    let _e6 = eq(a0_9.orientation, _e5);
    if _e6 {
        local_10 = a1_5;
    } else {
        let _e8 = conjugate(a0_9.orientation);
        let _e9 = mul(_e8, a1_5);
        let _e11 = norm_squared(a0_9.orientation);
        let _e14 = scale(_e9, (1f / _e11));
        local_10 = _e14;
    }
    let _e18 = local_10;
    return FeLocal_fe_Complex_f32_87ec9249_0_((_e18.re / a0_9.zoom), (_e18.im / a0_9.zoom));
}

fn reproject_coarse_pixel(a0_10: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_20_>, a1_6: FeLocal_fe_ViewCache_da6e2ccc_9_, a2_: FeLocal_fe_ViewCache_da6e2ccc_9_, a3_: FeLocal_fe_HistoryOffsets_646326b2_1_, a4_: u32, a5_: u32) -> FeLocal_fe_ReprojectionTap_8d436475_11_ {
    var local_11: FeLocal_fe_ReprojectionTap_8d436475_11_;
    var local_12: bool = false;
    var local_13: bool = bool();
    var local_14: FeLocal_fe_ReprojectionTap_8d436475_11_;
    var local_15: bool = false;
    var local_16: FeLocal_fe_ViewCache_da6e2ccc_9_ = FeLocal_fe_ViewCache_da6e2ccc_9_();
    var local_17: FeLocal_fe_ReprojectionTap_8d436475_11_;
    var local_18: bool = false;
    var local_19: FeLocal_fe_ReprojectionTap_8d436475_11_;
    var local_20: bool = false;
    var local_21: FeLocal_fe_Complex_f32_87ec9249_0_ = FeLocal_fe_Complex_f32_87ec9249_0_();
    var local_22: FeLocal_fe_ReprojectionTap_8d436475_11_;
    var local_23: bool = false;
    var local_24: bool = bool();

    if (a1_6.completed == 1u) {
        if ((a1_6.epoch < a2_.epoch) == false) {
            local_13 = true;
        }
    }
    let _e21 = local_13;
    if _e21 {
        local_16 = a1_6;
    } else {
        local_16 = a2_;
    }
    let _e26 = local_16;
    if (_e26.completed == 0u) {
        local_17 = FeLocal_fe_ReprojectionTap_8d436475_11_(_e21, false, 0f, 0f, 0f);
        local_18 = true;
    }
    let _e123 = local_18;
    if _e123 {
    } else {
        if _e21 {
            local_21 = a3_.full;
        } else {
            local_21 = a3_.initial;
        }
        let _e47 = local_21;
        let _e48 = from_i32_(a4_);
        let _e55 = (*a0_10).camera.res;
        let _e59 = from_i32_(a5_);
        let _e66 = (*a0_10).camera.res;
        let _e71 = (*a0_10).camera;
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
                            local_24 = true;
                        }
                    }
                }
            }
        }
        let _e117 = local_24;
        local_17 = FeLocal_fe_ReprojectionTap_8d436475_11_(_e21, _e117, _e86, _e96, _e26.camera.res);
    }
    let _e125 = local_17;
    return _e125;
}

fn to_quad(a0_11: FeLocal_fe_More_More_More_Last_e6310ae8_5_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_21_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_21_(a0_11.lead, a0_11.tail.lead, a0_11.tail.tail.lead, a0_11.tail.tail.tail.value);
}

fn finish(a1_7: FeLocal_fe_TraceFrame_75ddedf8_12_) {
    let _e7 = to_quad(a1_7.initial.camera.center.re.value);
    let _e14 = to_quad(a1_7.initial.camera.center.im.value);
    camera_trace[i32(5u)] = bitcast<u32>(_e7.f1_);
    camera_trace[i32(6u)] = bitcast<u32>(_e14.f1_);
    camera_trace[i32(7u)] = bitcast<u32>(a1_7.offsets.initial.re);
    camera_trace[i32(8u)] = bitcast<u32>(a1_7.offsets.initial.im);
    camera_trace[i32(9u)] = ((a1_7.full.completed | (a1_7.initial.completed << 1u)) | (a1_7.view.epoch << 16u));
    camera_trace[i32(10u)] = ((a1_7.reference.active_valid | (a1_7.reference.pending << 1u)) | (a1_7.reference.index << 2u));
    camera_trace[i32(11u)] = bitcast<u32>(a1_7.tap.sx);
    camera_trace[i32(12u)] = bitcast<u32>(a1_7.tap.sy);
    camera_trace[i32(13u)] = bitcast<u32>(a1_7.clock);
    return;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;
    var fixed_local_796_: FeLocal_fe_MandelbrotViewState_c524184f_20_ = FeLocal_fe_MandelbrotViewState_c524184f_20_();

    let _e5 = params.p17_;
    let _e7 = params.p18_;
    let _e9 = params.p19_;
    let _e11 = params.p20_;
    let _e13 = params.p21_;
    let _e15 = params.p22_;
    let _e17 = params.p23_;
    let _e19 = params.p24_;
    let _e21 = params.p25_;
    let _e23 = params.p26_;
    let _e25 = params.p27_;
    let _e27 = params.p28_;
    let _e29 = params.p29_;
    let _e31 = params.p30_;
    let _e33 = params.p31_;
    let _e35 = params.p32_;
    let _e37 = params.p33_;
    let _e39 = params.p34_;
    let _e43 = params.p35_;
    let _e45 = params.p36_;
    let _e47 = params.p37_;
    let _e49 = params.p38_;
    let _e53 = params.p39_;
    let _e55 = params.p40_;
    let _e57 = params.p41_;
    let _e59 = params.p42_;
    let _e61 = params.p43_;
    let _e63 = params.p44_;
    let _e65 = params.p45_;
    let _e67 = params.p46_;
    let _e71 = params.p47_;
    let _e73 = params.p48_;
    let _e75 = params.p49_;
    let _e77 = params.p50_;
    let _e81 = params.p51_;
    let _e83 = params.p52_;
    let _e85 = params.p53_;
    let _e87 = params.p54_;
    let _e89 = params.p55_;
    let _e91 = params.p56_;
    let _e93 = params.p57_;
    let _e95 = params.p58_;
    let _e97 = params.p59_;
    let _e99 = params.p60_;
    let _e101 = params.p61_;
    let _e103 = params.p62_;
    let _e105 = params.p63_;
    let _e107 = params.p64_;
    let _e109 = params.p65_;
    let _e111 = params.p66_;
    let _e115 = params.p67_;
    let _e117 = params.p68_;
    let _e119 = (_e117 != 0u);
    let _e121 = params.p69_;
    let _e123 = params.p70_;
    let _e125 = params.p71_;
    let _e127 = params.p72_;
    let _e129 = params.p73_;
    let _e131 = params.p74_;
    let _e133 = params.p75_;
    let _e135 = params.p76_;
    let _e137 = params.p77_;
    let _e139 = params.p78_;
    let _e141 = params.p79_;
    let _e143 = params.p80_;
    let _e145 = params.p81_;
    let _e147 = params.p82_;
    if _e119 {
    } else {
        local_1 = true;
    }
    let _e422 = local_1;
    if _e422 {
    } else {
        let _e201 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e203 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e205 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e207 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        let _e209 = preview_cache[i32(0u)].trace_clock;
        let _e212 = FeLocal_fe_HistoryOffsets_646326b2_1_(FeLocal_fe_Complex_f32_87ec9249_0_(_e201, _e203), FeLocal_fe_Complex_f32_87ec9249_0_(_e205, _e207));
        let _e217 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e219 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e221 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e223 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e225 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e227 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e229 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e231 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e233 = cache[i32(0u)].camera_u002e_zoom;
        let _e235 = cache[i32(0u)].camera_u002e_res;
        let _e237 = cache[i32(0u)].camera_u002e_orientation_u002e_re;
        let _e239 = cache[i32(0u)].camera_u002e_orientation_u002e_im;
        let _e241 = cache[i32(0u)].cursor;
        let _e243 = cache[i32(0u)].aa;
        let _e245 = cache[i32(0u)].budget;
        let _e247 = cache[i32(0u)].radius;
        let _e249 = cache[i32(0u)].preview_dirty;
        let _e251 = cache[i32(0u)].blur_dirty;
        let _e253 = cache[i32(0u)].epoch;
        let _e255 = cache[i32(0u)].completed;
        let _e257 = cache[i32(0u)].steps;
        let _e259 = cache[i32(0u)].frame_clock;
        let _e278 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e280 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e282 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e284 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e286 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e288 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e290 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e292 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e294 = cache[i32(1u)].camera_u002e_zoom;
        let _e296 = cache[i32(1u)].camera_u002e_res;
        let _e298 = cache[i32(1u)].camera_u002e_orientation_u002e_re;
        let _e300 = cache[i32(1u)].camera_u002e_orientation_u002e_im;
        let _e302 = cache[i32(1u)].cursor;
        let _e304 = cache[i32(1u)].aa;
        let _e306 = cache[i32(1u)].budget;
        let _e308 = cache[i32(1u)].radius;
        let _e310 = cache[i32(1u)].preview_dirty;
        let _e312 = cache[i32(1u)].blur_dirty;
        let _e314 = cache[i32(1u)].epoch;
        let _e316 = cache[i32(1u)].completed;
        let _e318 = cache[i32(1u)].steps;
        let _e320 = cache[i32(1u)].frame_clock;
        let _e334 = FeLocal_fe_ViewCache_da6e2ccc_9_(FeLocal_fe_Camera_03494b0d_8_(FeLocal_fe_Complex_Coordinate_d4657101_7_(FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e278, FeLocal_fe_More_More_Last_60a5ba63_4_(_e280, FeLocal_fe_More_Last_1ac585f5_3_(_e282, FeLocal_fe_Last_eb970eb0_2_(_e284))))), FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e286, FeLocal_fe_More_More_Last_60a5ba63_4_(_e288, FeLocal_fe_More_Last_1ac585f5_3_(_e290, FeLocal_fe_Last_eb970eb0_2_(_e292)))))), _e294, _e296, FeLocal_fe_Complex_f32_87ec9249_0_(_e298, _e300)), _e302, _e304, _e306, _e308, _e310, _e312, _e314, _e316, _e318, _e320);
        let _e339 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e341 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e343 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e345 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e347 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e349 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e351 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e353 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e355 = cache[i32(2u)].camera_u002e_zoom;
        let _e357 = cache[i32(2u)].camera_u002e_res;
        let _e359 = cache[i32(2u)].camera_u002e_orientation_u002e_re;
        let _e361 = cache[i32(2u)].camera_u002e_orientation_u002e_im;
        let _e363 = cache[i32(2u)].cursor;
        let _e365 = cache[i32(2u)].aa;
        let _e367 = cache[i32(2u)].budget;
        let _e369 = cache[i32(2u)].radius;
        let _e371 = cache[i32(2u)].preview_dirty;
        let _e373 = cache[i32(2u)].blur_dirty;
        let _e375 = cache[i32(2u)].epoch;
        let _e377 = cache[i32(2u)].completed;
        let _e379 = cache[i32(2u)].steps;
        let _e381 = cache[i32(2u)].frame_clock;
        let _e395 = FeLocal_fe_ViewCache_da6e2ccc_9_(FeLocal_fe_Camera_03494b0d_8_(FeLocal_fe_Complex_Coordinate_d4657101_7_(FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e339, FeLocal_fe_More_More_Last_60a5ba63_4_(_e341, FeLocal_fe_More_Last_1ac585f5_3_(_e343, FeLocal_fe_Last_eb970eb0_2_(_e345))))), FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e347, FeLocal_fe_More_More_Last_60a5ba63_4_(_e349, FeLocal_fe_More_Last_1ac585f5_3_(_e351, FeLocal_fe_Last_eb970eb0_2_(_e353)))))), _e355, _e357, FeLocal_fe_Complex_f32_87ec9249_0_(_e359, _e361)), _e363, _e365, _e367, _e369, _e371, _e373, _e375, _e377, _e379, _e381);
        let _e400 = reference[i32(0u)].active_;
        let _e402 = reference[i32(0u)].active_valid;
        let _e404 = reference[i32(0u)].pending;
        let _e406 = reference[i32(0u)].index;
        let _e408 = reference[i32(0u)].zx_s;
        let _e410 = reference[i32(0u)].zy_s;
        let _e412 = reference[i32(0u)].ready_at;
        let _e416 = to_i32_((_e23 * 0.5f));
        fixed_local_796_ = FeLocal_fe_MandelbrotViewState_c524184f_20_(FeLocal_fe_Camera_03494b0d_8_(FeLocal_fe_Complex_Coordinate_d4657101_7_(FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e5, FeLocal_fe_More_More_Last_60a5ba63_4_(_e7, FeLocal_fe_More_Last_1ac585f5_3_(_e9, FeLocal_fe_Last_eb970eb0_2_(_e11))))), FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e13, FeLocal_fe_More_More_Last_60a5ba63_4_(_e15, FeLocal_fe_More_Last_1ac585f5_3_(_e17, FeLocal_fe_Last_eb970eb0_2_(_e19)))))), _e21, _e23, FeLocal_fe_Complex_f32_87ec9249_0_(_e25, _e27)), _e29, _e31, _e33, _e35, _e37, FeLocal_fe_GestureSession_6b679731_17_(FeLocal_fe_Contacts_2_ac13bf77_15_(array<FeLocal_fe_Contact_2b5c3d26_14_, 2>(FeLocal_fe_Contact_2b5c3d26_14_((_e39 != 0u), _e43, FeLocal_fe_Vec2_f32_2772165c_13_(_e45, _e47)), FeLocal_fe_Contact_2b5c3d26_14_((_e49 != 0u), _e53, FeLocal_fe_Vec2_f32_2772165c_13_(_e55, _e57)))), FeLocal_fe_Viewport_91e53b90_16_(FeLocal_fe_Vec2_f32_2772165c_13_(_e59, _e61), FeLocal_fe_Vec2_f32_2772165c_13_(_e63, _e65)), FeLocal_fe_Contacts_2_ac13bf77_15_(array<FeLocal_fe_Contact_2b5c3d26_14_, 2>(FeLocal_fe_Contact_2b5c3d26_14_((_e67 != 0u), _e71, FeLocal_fe_Vec2_f32_2772165c_13_(_e73, _e75)), FeLocal_fe_Contact_2b5c3d26_14_((_e77 != 0u), _e81, FeLocal_fe_Vec2_f32_2772165c_13_(_e83, _e85)))), FeLocal_fe_Camera_03494b0d_8_(FeLocal_fe_Complex_Coordinate_d4657101_7_(FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e87, FeLocal_fe_More_More_Last_60a5ba63_4_(_e89, FeLocal_fe_More_Last_1ac585f5_3_(_e91, FeLocal_fe_Last_eb970eb0_2_(_e93))))), FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e95, FeLocal_fe_More_More_Last_60a5ba63_4_(_e97, FeLocal_fe_More_Last_1ac585f5_3_(_e99, FeLocal_fe_Last_eb970eb0_2_(_e101)))))), _e103, _e105, FeLocal_fe_Complex_f32_87ec9249_0_(_e107, _e109))), FeLocal_fe_BackingRequest_2bcae9f8_18_((_e111 != 0u), _e115), FeLocal_fe_CameraTrace_7ca62f00_19_(_e119, array<u32, 14>(_e121, _e123, _e125, _e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147)));
        let _e419 = reproject_coarse_pixel((&fixed_local_796_), _e334, _e395, _e212, _e416, _e416);
        finish(FeLocal_fe_TraceFrame_75ddedf8_12_(_e209, _e212, FeLocal_fe_ViewCache_da6e2ccc_9_(FeLocal_fe_Camera_03494b0d_8_(FeLocal_fe_Complex_Coordinate_d4657101_7_(FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e217, FeLocal_fe_More_More_Last_60a5ba63_4_(_e219, FeLocal_fe_More_Last_1ac585f5_3_(_e221, FeLocal_fe_Last_eb970eb0_2_(_e223))))), FeLocal_fe_Coordinate_bdc10f09_6_(FeLocal_fe_More_More_More_Last_e6310ae8_5_(_e225, FeLocal_fe_More_More_Last_60a5ba63_4_(_e227, FeLocal_fe_More_Last_1ac585f5_3_(_e229, FeLocal_fe_Last_eb970eb0_2_(_e231)))))), _e233, _e235, FeLocal_fe_Complex_f32_87ec9249_0_(_e237, _e239)), _e241, _e243, _e245, _e247, _e249, _e251, _e253, _e255, _e257, _e259), _e334, _e395, FeLocal_fe_ReferenceControl_7d077120_10_(_e400, _e402, _e404, _e406, _e408, _e410, _e412), _e419));
    }
}
