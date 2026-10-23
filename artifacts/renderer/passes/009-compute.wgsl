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

struct FeLocal_fe_ReferenceControl_7d077120_9_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_18_ {
    full: FeLocal_fe_Complex_f32_87ec9249_6_,
    initial: FeLocal_fe_Complex_f32_87ec9249_6_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_19_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history: FeLocal_fe_HistoryOffsets_646326b2_18_,
    trace_clock: f32,
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
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(3)
var<storage> params: Params;

fn as_published_initial(a0_: FeLocal_fe_ViewCache_da6e2ccc_8_) -> FeLocal_fe_ViewCache_da6e2ccc_8_ {
    var fixed_local_2_: FeLocal_fe_ViewCache_da6e2ccc_8_ = FeLocal_fe_ViewCache_da6e2ccc_8_();

    fixed_local_2_ = a0_;
    fixed_local_2_.preview_dirty = 0u;
    fixed_local_2_.blur_dirty = 0u;
    fixed_local_2_.completed = 1u;
    let _e9 = fixed_local_2_;
    return _e9;
}

fn max_(a0_1: f32, a1_: f32) -> f32 {
    var local_2: f32;
    var local_3: bool = false;
    var local_4: f32 = f32();

    if (a1_ < a0_1) {
        local_4 = a0_1;
    } else {
        local_4 = a1_;
    }
    let _e8 = local_4;
    return _e8;
}

fn can_publish_initial(a0_2: FeLocal_fe_ReferenceControl_7d077120_9_, a1_1: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_17_>, a2_: u32, a3_: u32) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    if (a0_2.active_valid == 1u) {
        if (a0_2.pending == 0u) {
            let _e13 = (*a1_1).drag_active;
            if (_e13 < 0.5f) {
                let _e17 = (*a1_1).clock;
                let _e19 = (*a1_1).last_input;
                let _e21 = max_(_e19, a0_2.ready_at);
                if (360f <= (_e17 - _e21)) {
                    if ((a3_ == a2_) == false) {
                        local_7 = true;
                    }
                }
            }
        }
    }
    let _e31 = local_7;
    return _e31;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;
    var fixed_local_810_: FeLocal_fe_MandelbrotViewState_c524184f_17_ = FeLocal_fe_MandelbrotViewState_c524184f_17_();

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
    let _e199 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e201 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e203 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e205 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e207 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e209 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e211 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e213 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e215 = cache[i32(0u)].camera_u002e_zoom;
    let _e217 = cache[i32(0u)].camera_u002e_res;
    let _e219 = cache[i32(0u)].camera_u002e_orientation_u002e_re;
    let _e221 = cache[i32(0u)].camera_u002e_orientation_u002e_im;
    let _e223 = cache[i32(0u)].cursor;
    let _e225 = cache[i32(0u)].aa;
    let _e227 = cache[i32(0u)].budget;
    let _e229 = cache[i32(0u)].radius;
    let _e231 = cache[i32(0u)].preview_dirty;
    let _e233 = cache[i32(0u)].blur_dirty;
    let _e235 = cache[i32(0u)].epoch;
    let _e237 = cache[i32(0u)].completed;
    let _e256 = cache[i32(2u)].epoch;
    let _e261 = reference[i32(0u)].active_;
    let _e263 = reference[i32(0u)].active_valid;
    let _e265 = reference[i32(0u)].pending;
    let _e267 = reference[i32(0u)].index;
    let _e269 = reference[i32(0u)].zx_s;
    let _e271 = reference[i32(0u)].zy_s;
    let _e273 = reference[i32(0u)].ready_at;
    let _e279 = preview_cache[i32(0u)].completed;
    if (_e279 == 0u) {
    } else {
        fixed_local_810_ = FeLocal_fe_MandelbrotViewState_c524184f_17_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e5, FeLocal_fe_More_More_Last_60a5ba63_2_(_e7, FeLocal_fe_More_Last_1ac585f5_1_(_e9, FeLocal_fe_Last_eb970eb0_0_(_e11))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e13, FeLocal_fe_More_More_Last_60a5ba63_2_(_e15, FeLocal_fe_More_Last_1ac585f5_1_(_e17, FeLocal_fe_Last_eb970eb0_0_(_e19)))))), _e21, _e23, FeLocal_fe_Complex_f32_87ec9249_6_(_e25, _e27)), _e29, _e31, _e33, _e35, _e37, FeLocal_fe_GestureSession_6b679731_14_(FeLocal_fe_Contacts_2_ac13bf77_12_(array<FeLocal_fe_Contact_2b5c3d26_11_, 2>(FeLocal_fe_Contact_2b5c3d26_11_((_e39 != 0u), _e43, FeLocal_fe_Vec2_f32_2772165c_10_(_e45, _e47)), FeLocal_fe_Contact_2b5c3d26_11_((_e49 != 0u), _e53, FeLocal_fe_Vec2_f32_2772165c_10_(_e55, _e57)))), FeLocal_fe_Viewport_91e53b90_13_(FeLocal_fe_Vec2_f32_2772165c_10_(_e59, _e61), FeLocal_fe_Vec2_f32_2772165c_10_(_e63, _e65)), FeLocal_fe_Contacts_2_ac13bf77_12_(array<FeLocal_fe_Contact_2b5c3d26_11_, 2>(FeLocal_fe_Contact_2b5c3d26_11_((_e67 != 0u), _e71, FeLocal_fe_Vec2_f32_2772165c_10_(_e73, _e75)), FeLocal_fe_Contact_2b5c3d26_11_((_e77 != 0u), _e81, FeLocal_fe_Vec2_f32_2772165c_10_(_e83, _e85)))), FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e87, FeLocal_fe_More_More_Last_60a5ba63_2_(_e89, FeLocal_fe_More_Last_1ac585f5_1_(_e91, FeLocal_fe_Last_eb970eb0_0_(_e93))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e95, FeLocal_fe_More_More_Last_60a5ba63_2_(_e97, FeLocal_fe_More_Last_1ac585f5_1_(_e99, FeLocal_fe_Last_eb970eb0_0_(_e101)))))), _e103, _e105, FeLocal_fe_Complex_f32_87ec9249_6_(_e107, _e109))), FeLocal_fe_BackingRequest_2bcae9f8_15_((_e111 != 0u), _e115), FeLocal_fe_CameraTrace_7ca62f00_16_((_e117 != 0u), array<u32, 14>(_e121, _e123, _e125, _e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147)));
        let _e284 = can_publish_initial(FeLocal_fe_ReferenceControl_7d077120_9_(_e261, _e263, _e265, _e267, _e269, _e271, _e273), (&fixed_local_810_), _e235, _e256);
        if _e284 {
            let _e285 = as_published_initial(FeLocal_fe_ViewCache_da6e2ccc_8_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e199, FeLocal_fe_More_More_Last_60a5ba63_2_(_e201, FeLocal_fe_More_Last_1ac585f5_1_(_e203, FeLocal_fe_Last_eb970eb0_0_(_e205))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e207, FeLocal_fe_More_More_Last_60a5ba63_2_(_e209, FeLocal_fe_More_Last_1ac585f5_1_(_e211, FeLocal_fe_Last_eb970eb0_0_(_e213)))))), _e215, _e217, FeLocal_fe_Complex_f32_87ec9249_6_(_e219, _e221)), _e223, _e225, _e227, _e229, _e231, _e233, _e235, _e237));
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e285.camera.center.re.value.lead;
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e285.camera.center.re.value.tail.lead;
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e285.camera.center.re.value.tail.tail.lead;
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e285.camera.center.re.value.tail.tail.tail.value;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e285.camera.center.im.value.lead;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e285.camera.center.im.value.tail.lead;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e285.camera.center.im.value.tail.tail.lead;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e285.camera.center.im.value.tail.tail.tail.value;
            cache[i32(2u)].camera_u002e_zoom = _e285.camera.zoom;
            cache[i32(2u)].camera_u002e_res = _e285.camera.res;
            cache[i32(2u)].camera_u002e_orientation_u002e_re = _e285.camera.orientation.re;
            cache[i32(2u)].camera_u002e_orientation_u002e_im = _e285.camera.orientation.im;
            cache[i32(2u)].cursor = _e285.cursor;
            cache[i32(2u)].aa = _e285.aa;
            cache[i32(2u)].budget = _e285.budget;
            cache[i32(2u)].radius = _e285.radius;
            cache[i32(2u)].preview_dirty = _e285.preview_dirty;
            cache[i32(2u)].blur_dirty = _e285.blur_dirty;
            cache[i32(2u)].epoch = _e285.epoch;
            cache[i32(2u)].completed = _e285.completed;
            local_1 = true;
        }
        let _e345 = local_1;
        if _e345 {
        }
    }
}
