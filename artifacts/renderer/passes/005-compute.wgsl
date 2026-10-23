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

struct FeLocal_fe_Camera_03494b0d_6_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_5_,
    zoom: f32,
    res: f32,
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

struct FeLocal_fe_Contacts_10_9aa61bf4_12_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_11_, 10>,
}

struct FeLocal_fe_Viewport_91e53b90_13_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_10_,
    extent: FeLocal_fe_Vec2_f32_2772165c_10_,
}

struct FeLocal_fe_GestureSession_6b679731_14_ {
    contacts: FeLocal_fe_Contacts_10_9aa61bf4_12_,
    viewport: FeLocal_fe_Viewport_91e53b90_13_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_15_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_16_ {
    camera: FeLocal_fe_Camera_03494b0d_6_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_14_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_15_,
}

struct FeLocal_fe_Complex_f32_87ec9249_7_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_8_ {
    full: FeLocal_fe_Complex_f32_87ec9249_7_,
    initial: FeLocal_fe_Complex_f32_87ec9249_7_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_9_ {
    camera: FeLocal_fe_Camera_03494b0d_6_,
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
    camera: FeLocal_fe_Camera_03494b0d_6_,
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
    p31_: u32,
    p32_: u32,
    p33_: f32,
    p34_: f32,
    p35_: u32,
    p36_: u32,
    p37_: f32,
    p38_: f32,
    p39_: u32,
    p40_: u32,
    p41_: f32,
    p42_: f32,
    p43_: u32,
    p44_: u32,
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
    p55_: u32,
    p56_: u32,
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
    p67_: u32,
    p68_: u32,
    p69_: f32,
    p70_: f32,
    p71_: f32,
    p72_: f32,
    p73_: f32,
    p74_: f32,
    p75_: u32,
    p76_: f32,
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
    var fixed_local_710_: FeLocal_fe_MandelbrotViewState_c524184f_16_ = FeLocal_fe_MandelbrotViewState_c524184f_16_();

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
    let _e38 = params.p32_;
    let _e40 = params.p33_;
    let _e42 = params.p34_;
    let _e44 = params.p35_;
    let _e48 = params.p36_;
    let _e50 = params.p37_;
    let _e52 = params.p38_;
    let _e54 = params.p39_;
    let _e58 = params.p40_;
    let _e60 = params.p41_;
    let _e62 = params.p42_;
    let _e64 = params.p43_;
    let _e68 = params.p44_;
    let _e70 = params.p45_;
    let _e72 = params.p46_;
    let _e74 = params.p47_;
    let _e78 = params.p48_;
    let _e80 = params.p49_;
    let _e82 = params.p50_;
    let _e84 = params.p51_;
    let _e88 = params.p52_;
    let _e90 = params.p53_;
    let _e92 = params.p54_;
    let _e94 = params.p55_;
    let _e98 = params.p56_;
    let _e100 = params.p57_;
    let _e102 = params.p58_;
    let _e104 = params.p59_;
    let _e108 = params.p60_;
    let _e110 = params.p61_;
    let _e112 = params.p62_;
    let _e114 = params.p63_;
    let _e118 = params.p64_;
    let _e120 = params.p65_;
    let _e122 = params.p66_;
    let _e124 = params.p67_;
    let _e128 = params.p68_;
    let _e130 = params.p69_;
    let _e132 = params.p70_;
    let _e134 = params.p71_;
    let _e136 = params.p72_;
    let _e138 = params.p73_;
    let _e140 = params.p74_;
    let _e142 = params.p75_;
    let _e146 = params.p76_;
    let _e152 = cache[i32(0u)].preview_dirty;
    if (_e152 == 0u) {
        local_1 = true;
    }
    let _e362 = local_1;
    if _e362 {
    } else {
        let _e162 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e164 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e166 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e168 = preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e170 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e172 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e174 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e176 = preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e178 = preview_cache[i32(0u)].camera_u002e_zoom;
        let _e180 = preview_cache[i32(0u)].camera_u002e_res;
        let _e182 = preview_cache[i32(0u)].reference_generation;
        let _e184 = preview_cache[i32(0u)].reference_bank;
        let _e186 = preview_cache[i32(0u)].prefix_only;
        let _e188 = preview_cache[i32(0u)].step_target;
        let _e190 = preview_cache[i32(0u)].completed_steps;
        let _e192 = preview_cache[i32(0u)].budget;
        let _e194 = preview_cache[i32(0u)].epoch;
        let _e196 = preview_cache[i32(0u)].completed;
        let _e198 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e200 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e202 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e204 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        if (_e196 == 1u) {
        } else {
            if (_e188 == 0u) {
                local_3 = true;
            }
            let _e360 = local_3;
            if _e360 {
            } else {
                let _e271 = cache[i32(1u)].completed;
                let _e276 = cache[i32(2u)].completed;
                fixed_local_710_ = FeLocal_fe_MandelbrotViewState_c524184f_16_(FeLocal_fe_Camera_03494b0d_6_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e4, FeLocal_fe_More_More_Last_60a5ba63_2_(_e6, FeLocal_fe_More_Last_1ac585f5_1_(_e8, FeLocal_fe_Last_eb970eb0_0_(_e10))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e12, FeLocal_fe_More_More_Last_60a5ba63_2_(_e14, FeLocal_fe_More_Last_1ac585f5_1_(_e16, FeLocal_fe_Last_eb970eb0_0_(_e18)))))), _e20, _e22), _e24, _e26, _e28, _e30, _e32, FeLocal_fe_GestureSession_6b679731_14_(FeLocal_fe_Contacts_10_9aa61bf4_12_(array<FeLocal_fe_Contact_2b5c3d26_11_, 10>(FeLocal_fe_Contact_2b5c3d26_11_((_e34 != 0u), _e38, FeLocal_fe_Vec2_f32_2772165c_10_(_e40, _e42)), FeLocal_fe_Contact_2b5c3d26_11_((_e44 != 0u), _e48, FeLocal_fe_Vec2_f32_2772165c_10_(_e50, _e52)), FeLocal_fe_Contact_2b5c3d26_11_((_e54 != 0u), _e58, FeLocal_fe_Vec2_f32_2772165c_10_(_e60, _e62)), FeLocal_fe_Contact_2b5c3d26_11_((_e64 != 0u), _e68, FeLocal_fe_Vec2_f32_2772165c_10_(_e70, _e72)), FeLocal_fe_Contact_2b5c3d26_11_((_e74 != 0u), _e78, FeLocal_fe_Vec2_f32_2772165c_10_(_e80, _e82)), FeLocal_fe_Contact_2b5c3d26_11_((_e84 != 0u), _e88, FeLocal_fe_Vec2_f32_2772165c_10_(_e90, _e92)), FeLocal_fe_Contact_2b5c3d26_11_((_e94 != 0u), _e98, FeLocal_fe_Vec2_f32_2772165c_10_(_e100, _e102)), FeLocal_fe_Contact_2b5c3d26_11_((_e104 != 0u), _e108, FeLocal_fe_Vec2_f32_2772165c_10_(_e110, _e112)), FeLocal_fe_Contact_2b5c3d26_11_((_e114 != 0u), _e118, FeLocal_fe_Vec2_f32_2772165c_10_(_e120, _e122)), FeLocal_fe_Contact_2b5c3d26_11_((_e124 != 0u), _e128, FeLocal_fe_Vec2_f32_2772165c_10_(_e130, _e132)))), FeLocal_fe_Viewport_91e53b90_13_(FeLocal_fe_Vec2_f32_2772165c_10_(_e134, _e136), FeLocal_fe_Vec2_f32_2772165c_10_(_e138, _e140))), FeLocal_fe_BackingRequest_2bcae9f8_15_((_e142 != 0u), _e146));
                let _e279 = is_input_settled((&fixed_local_710_));
                if _e279 {
                } else {
                    if (_e271 == 1u) {
                        local_3 = true;
                    } else {
                        if (_e276 == 1u) {
                            local_3 = true;
                        }
                        let _e289 = local_3;
                        if _e289 {
                        }
                    }
                    let _e291 = local_3;
                    if _e291 {
                    }
                }
                let _e358 = local_3;
                if _e358 {
                } else {
                    let _e292 = commit_step(FeLocal_fe_PreviewCache_6792a3e2_9_(FeLocal_fe_Camera_03494b0d_6_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e162, FeLocal_fe_More_More_Last_60a5ba63_2_(_e164, FeLocal_fe_More_Last_1ac585f5_1_(_e166, FeLocal_fe_Last_eb970eb0_0_(_e168))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e170, FeLocal_fe_More_More_Last_60a5ba63_2_(_e172, FeLocal_fe_More_Last_1ac585f5_1_(_e174, FeLocal_fe_Last_eb970eb0_0_(_e176)))))), _e178, _e180), _e182, _e184, _e186, _e188, _e190, _e192, _e194, _e196, FeLocal_fe_HistoryOffsets_646326b2_8_(FeLocal_fe_Complex_f32_87ec9249_7_(_e198, _e200), FeLocal_fe_Complex_f32_87ec9249_7_(_e202, _e204))));
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e292.camera.center.re.value.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e292.camera.center.re.value.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e292.camera.center.re.value.tail.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e292.camera.center.re.value.tail.tail.tail.value;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e292.camera.center.im.value.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e292.camera.center.im.value.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e292.camera.center.im.value.tail.tail.lead;
                    preview_cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e292.camera.center.im.value.tail.tail.tail.value;
                    preview_cache[i32(0u)].camera_u002e_zoom = _e292.camera.zoom;
                    preview_cache[i32(0u)].camera_u002e_res = _e292.camera.res;
                    preview_cache[i32(0u)].reference_generation = _e292.reference_generation;
                    preview_cache[i32(0u)].reference_bank = _e292.reference_bank;
                    preview_cache[i32(0u)].prefix_only = _e292.prefix_only;
                    preview_cache[i32(0u)].step_target = _e292.step_target;
                    preview_cache[i32(0u)].completed_steps = _e292.completed_steps;
                    preview_cache[i32(0u)].budget = _e292.budget;
                    preview_cache[i32(0u)].epoch = _e292.epoch;
                    preview_cache[i32(0u)].completed = _e292.completed;
                    preview_cache[i32(0u)].history_u002e_full_u002e_re = _e292.history.full.re;
                    preview_cache[i32(0u)].history_u002e_full_u002e_im = _e292.history.full.im;
                    preview_cache[i32(0u)].history_u002e_initial_u002e_re = _e292.history.initial.re;
                    preview_cache[i32(0u)].history_u002e_initial_u002e_im = _e292.history.initial.im;
                    local_3 = true;
                }
            }
        }
    }
}
