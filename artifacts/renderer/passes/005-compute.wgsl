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

struct FeLocal_fe_MandelbrotViewState_c524184f_16_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_14_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_15_,
}

struct FeLocal_fe_HistoryOffsets_646326b2_8_ {
    full: FeLocal_fe_Complex_f32_87ec9249_6_,
    initial: FeLocal_fe_Complex_f32_87ec9249_6_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_9_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history: FeLocal_fe_HistoryOffsets_646326b2_8_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_17_ {
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
    p16_: f32,
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
    p33_: u32,
    p34_: u32,
    p35_: f32,
    p36_: f32,
    p37_: u32,
    p38_: u32,
    p39_: f32,
    p40_: f32,
    p41_: f32,
    p42_: f32,
    p43_: f32,
    p44_: f32,
    p45_: u32,
    p46_: u32,
    p47_: f32,
    p48_: f32,
    p49_: u32,
    p50_: u32,
    p51_: f32,
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
    p65_: u32,
    p66_: f32,
}

@group(0) @binding(0)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage> params: Params;

fn is_input_settled(a0_: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_16_>) -> bool {
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

fn preview_is_completed(a0_1: u32, a1_: u32, a2_: u32) -> bool {
    var local_7: bool;
    var local_8: bool = false;
    var local_9: bool = bool();

    if (a0_1 == 0u) {
        if (0u < a2_) {
            if ((a1_ < a2_) == false) {
                local_9 = true;
            }
        }
    }
    let _e15 = local_9;
    return _e15;
}

fn commit_step(a0_2: FeLocal_fe_PreviewCache_6792a3e2_9_) -> FeLocal_fe_PreviewCache_6792a3e2_9_ {
    var local_10: FeLocal_fe_PreviewCache_6792a3e2_9_;
    var local_11: bool = false;
    var local_12: u32 = u32();
    var fixed_local_2_: FeLocal_fe_PreviewCache_6792a3e2_9_ = FeLocal_fe_PreviewCache_6792a3e2_9_();

    fixed_local_2_ = a0_2;
    fixed_local_2_.completed_steps = a0_2.step_target;
    let _e10 = preview_is_completed(a0_2.prefix_only, a0_2.step_target, a0_2.budget);
    if _e10 {
        local_12 = 1u;
    }
    let _e14 = local_12;
    fixed_local_2_.completed = _e14;
    let _e16 = fixed_local_2_;
    return _e16;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var fixed_local_728_: FeLocal_fe_MandelbrotViewState_c524184f_16_ = FeLocal_fe_MandelbrotViewState_c524184f_16_();

    let _e4 = params.p16_;
    let _e6 = params.p17_;
    let _e8 = params.p18_;
    let _e10 = params.p19_;
    let _e12 = params.p20_;
    let _e14 = params.p21_;
    let _e16 = params.p22_;
    let _e18 = params.p23_;
    let _e20 = params.p24_;
    let _e22 = params.p25_;
    let _e24 = params.p26_;
    let _e26 = params.p27_;
    let _e28 = params.p28_;
    let _e30 = params.p29_;
    let _e32 = params.p30_;
    let _e34 = params.p31_;
    let _e36 = params.p32_;
    let _e38 = params.p33_;
    let _e42 = params.p34_;
    let _e44 = params.p35_;
    let _e46 = params.p36_;
    let _e48 = params.p37_;
    let _e52 = params.p38_;
    let _e54 = params.p39_;
    let _e56 = params.p40_;
    let _e58 = params.p41_;
    let _e60 = params.p42_;
    let _e62 = params.p43_;
    let _e64 = params.p44_;
    let _e66 = params.p45_;
    let _e70 = params.p46_;
    let _e72 = params.p47_;
    let _e74 = params.p48_;
    let _e76 = params.p49_;
    let _e80 = params.p50_;
    let _e82 = params.p51_;
    let _e84 = params.p52_;
    let _e86 = params.p53_;
    let _e88 = params.p54_;
    let _e90 = params.p55_;
    let _e92 = params.p56_;
    let _e94 = params.p57_;
    let _e96 = params.p58_;
    let _e98 = params.p59_;
    let _e100 = params.p60_;
    let _e102 = params.p61_;
    let _e104 = params.p62_;
    let _e106 = params.p63_;
    let _e108 = params.p64_;
    let _e110 = params.p65_;
    let _e114 = params.p66_;
    let _e120 = cache[i32(0u)].preview_dirty;
    if (_e120 == 0u) {
        local_1 = true;
    }
    let _e344 = local_1;
    if _e344 {
    } else {
        let _e130 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e132 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e134 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e136 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e138 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e140 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e142 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e144 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e146 = preview_cache[i32(0u)].camera_u002e_zoom;
        let _e148 = preview_cache[i32(0u)].camera_u002e_res;
        let _e150 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_re;
        let _e152 = preview_cache[i32(0u)].camera_u002e_orientation_u002e_im;
        let _e154 = preview_cache[i32(0u)].reference_generation;
        let _e156 = preview_cache[i32(0u)].reference_bank;
        let _e158 = preview_cache[i32(0u)].prefix_only;
        let _e160 = preview_cache[i32(0u)].step_target;
        let _e162 = preview_cache[i32(0u)].completed_steps;
        let _e164 = preview_cache[i32(0u)].budget;
        let _e166 = preview_cache[i32(0u)].epoch;
        let _e168 = preview_cache[i32(0u)].completed;
        let _e170 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e172 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e174 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e176 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        if (_e168 == 1u) {
        } else {
            if (_e160 == 0u) {
                local_3 = true;
            }
            let _e342 = local_3;
            if _e342 {
            } else {
                let _e248 = cache[i32(1u)].completed;
                let _e253 = cache[i32(2u)].completed;
                fixed_local_728_ = FeLocal_fe_MandelbrotViewState_c524184f_16_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e4, FeLocal_fe_More_More_Last_60a5ba63_2_(_e6, FeLocal_fe_More_Last_1ac585f5_1_(_e8, FeLocal_fe_Last_eb970eb0_0_(_e10))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e12, FeLocal_fe_More_More_Last_60a5ba63_2_(_e14, FeLocal_fe_More_Last_1ac585f5_1_(_e16, FeLocal_fe_Last_eb970eb0_0_(_e18)))))), _e20, _e22, FeLocal_fe_Complex_f32_87ec9249_6_(_e24, _e26)), _e28, _e30, _e32, _e34, _e36, FeLocal_fe_GestureSession_6b679731_14_(FeLocal_fe_Contacts_2_ac13bf77_12_(array<FeLocal_fe_Contact_2b5c3d26_11_, 2>(FeLocal_fe_Contact_2b5c3d26_11_((_e38 != 0u), _e42, FeLocal_fe_Vec2_f32_2772165c_10_(_e44, _e46)), FeLocal_fe_Contact_2b5c3d26_11_((_e48 != 0u), _e52, FeLocal_fe_Vec2_f32_2772165c_10_(_e54, _e56)))), FeLocal_fe_Viewport_91e53b90_13_(FeLocal_fe_Vec2_f32_2772165c_10_(_e58, _e60), FeLocal_fe_Vec2_f32_2772165c_10_(_e62, _e64)), FeLocal_fe_Contacts_2_ac13bf77_12_(array<FeLocal_fe_Contact_2b5c3d26_11_, 2>(FeLocal_fe_Contact_2b5c3d26_11_((_e66 != 0u), _e70, FeLocal_fe_Vec2_f32_2772165c_10_(_e72, _e74)), FeLocal_fe_Contact_2b5c3d26_11_((_e76 != 0u), _e80, FeLocal_fe_Vec2_f32_2772165c_10_(_e82, _e84)))), FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e86, FeLocal_fe_More_More_Last_60a5ba63_2_(_e88, FeLocal_fe_More_Last_1ac585f5_1_(_e90, FeLocal_fe_Last_eb970eb0_0_(_e92))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e94, FeLocal_fe_More_More_Last_60a5ba63_2_(_e96, FeLocal_fe_More_Last_1ac585f5_1_(_e98, FeLocal_fe_Last_eb970eb0_0_(_e100)))))), _e102, _e104, FeLocal_fe_Complex_f32_87ec9249_6_(_e106, _e108))), FeLocal_fe_BackingRequest_2bcae9f8_15_((_e110 != 0u), _e114));
                let _e256 = is_input_settled((&fixed_local_728_));
                if _e256 {
                } else {
                    if (_e248 == 1u) {
                        local_3 = true;
                    } else {
                        if (_e253 == 1u) {
                            local_3 = true;
                        }
                        let _e266 = local_3;
                        if _e266 {
                        }
                    }
                    let _e268 = local_3;
                    if _e268 {
                    }
                }
                let _e340 = local_3;
                if _e340 {
                } else {
                    let _e269 = commit_step(FeLocal_fe_PreviewCache_6792a3e2_9_(FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e130, FeLocal_fe_More_More_Last_60a5ba63_2_(_e132, FeLocal_fe_More_Last_1ac585f5_1_(_e134, FeLocal_fe_Last_eb970eb0_0_(_e136))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e138, FeLocal_fe_More_More_Last_60a5ba63_2_(_e140, FeLocal_fe_More_Last_1ac585f5_1_(_e142, FeLocal_fe_Last_eb970eb0_0_(_e144)))))), _e146, _e148, FeLocal_fe_Complex_f32_87ec9249_6_(_e150, _e152)), _e154, _e156, _e158, _e160, _e162, _e164, _e166, _e168, FeLocal_fe_HistoryOffsets_646326b2_8_(FeLocal_fe_Complex_f32_87ec9249_6_(_e170, _e172), FeLocal_fe_Complex_f32_87ec9249_6_(_e174, _e176))));
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e269.camera.center.re.value.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e269.camera.center.re.value.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e269.camera.center.re.value.tail.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e269.camera.center.re.value.tail.tail.tail.value;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e269.camera.center.im.value.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e269.camera.center.im.value.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e269.camera.center.im.value.tail.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e269.camera.center.im.value.tail.tail.tail.value;
                    preview_cache[i32(0u)].camera_u002e_zoom = _e269.camera.zoom;
                    preview_cache[i32(0u)].camera_u002e_res = _e269.camera.res;
                    preview_cache[i32(0u)].camera_u002e_orientation_u002e_re = _e269.camera.orientation.re;
                    preview_cache[i32(0u)].camera_u002e_orientation_u002e_im = _e269.camera.orientation.im;
                    preview_cache[i32(0u)].reference_generation = _e269.reference_generation;
                    preview_cache[i32(0u)].reference_bank = _e269.reference_bank;
                    preview_cache[i32(0u)].prefix_only = _e269.prefix_only;
                    preview_cache[i32(0u)].step_target = _e269.step_target;
                    preview_cache[i32(0u)].completed_steps = _e269.completed_steps;
                    preview_cache[i32(0u)].budget = _e269.budget;
                    preview_cache[i32(0u)].epoch = _e269.epoch;
                    preview_cache[i32(0u)].completed = _e269.completed;
                    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e269.history.full.re;
                    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e269.history.full.im;
                    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e269.history.initial.re;
                    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e269.history.initial.im;
                    local_3 = true;
                }
            }
        }
    }
}
