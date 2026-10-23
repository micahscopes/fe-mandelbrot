struct FeLocal_fe_Last_eb970eb0_1_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_2_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_1_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_3_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_2_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_4_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_3_,
}

struct FeLocal_fe_Coordinate_bdc10f09_5_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_4_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_6_ {
    re: FeLocal_fe_Coordinate_bdc10f09_5_,
    im: FeLocal_fe_Coordinate_bdc10f09_5_,
}

struct FeLocal_fe_Complex_f32_87ec9249_7_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_8_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_6_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_7_,
}

struct FeLocal_fe_Vec2_f32_2772165c_9_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_10_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_9_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_11_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_10_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_12_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_9_,
    extent: FeLocal_fe_Vec2_f32_2772165c_9_,
}

struct FeLocal_fe_GestureSession_6b679731_13_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_11_,
    viewport: FeLocal_fe_Viewport_91e53b90_12_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_11_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_8_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_14_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_15_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_16_ {
    camera: FeLocal_fe_Camera_03494b0d_8_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_13_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_14_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_15_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_17_ {
    camera: FeLocal_fe_Camera_03494b0d_8_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct FeLocal_fe_ReferenceControl_7d077120_0_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_HistoryOffsets_646326b2_18_ {
    full: FeLocal_fe_Complex_f32_87ec9249_7_,
    initial: FeLocal_fe_Complex_f32_87ec9249_7_,
}

struct FeLocal_fe_PreviewCache_6792a3e2_19_ {
    camera: FeLocal_fe_Camera_03494b0d_8_,
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

struct FeLocal_fe_InvocationId_3c625d5f_21_ {
    x: u32,
    y: u32,
    z: u32,
}

struct FeLocal_fe_Color_6b73191a_20_ {
    l: f32,
    a: f32,
    b: f32,
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
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(3)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(4)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(5)
var<storage> params: Params;

fn max_(a0_: f32, a1_: f32) -> f32 {
    var local_2: f32;
    var local_3: bool = false;
    var local_4: f32 = f32();

    if (a1_ < a0_) {
        local_4 = a0_;
    } else {
        local_4 = a1_;
    }
    let _e8 = local_4;
    return _e8;
}

fn can_publish_initial(a0_1: FeLocal_fe_ReferenceControl_7d077120_0_, a1_1: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_16_>, a2_: u32, a3_: u32) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    if (a0_1.active_valid == 1u) {
        if (a0_1.pending == 0u) {
            let _e13 = (*a1_1).drag_active;
            if (_e13 < 0.5f) {
                let _e17 = (*a1_1).clock;
                let _e19 = (*a1_1).last_input;
                let _e21 = max_(_e19, a0_1.ready_at);
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

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var local: u32;
    var local_1: bool = false;
    var fixed_local_815_: FeLocal_fe_MandelbrotViewState_c524184f_16_ = FeLocal_fe_MandelbrotViewState_c524184f_16_();

    let _e11 = params.p30_;
    let _e13 = params.p31_;
    let _e15 = params.p32_;
    let _e17 = params.p33_;
    let _e19 = params.p34_;
    let _e21 = params.p35_;
    let _e23 = params.p36_;
    let _e25 = params.p37_;
    let _e27 = params.p38_;
    let _e29 = params.p39_;
    let _e31 = params.p40_;
    let _e33 = params.p41_;
    let _e35 = params.p42_;
    let _e37 = params.p43_;
    let _e39 = params.p44_;
    let _e41 = params.p45_;
    let _e43 = params.p46_;
    let _e45 = params.p47_;
    let _e49 = params.p48_;
    let _e51 = params.p49_;
    let _e53 = params.p50_;
    let _e55 = params.p51_;
    let _e59 = params.p52_;
    let _e61 = params.p53_;
    let _e63 = params.p54_;
    let _e65 = params.p55_;
    let _e67 = params.p56_;
    let _e69 = params.p57_;
    let _e71 = params.p58_;
    let _e73 = params.p59_;
    let _e77 = params.p60_;
    let _e79 = params.p61_;
    let _e81 = params.p62_;
    let _e83 = params.p63_;
    let _e87 = params.p64_;
    let _e89 = params.p65_;
    let _e91 = params.p66_;
    let _e93 = params.p67_;
    let _e95 = params.p68_;
    let _e97 = params.p69_;
    let _e99 = params.p70_;
    let _e101 = params.p71_;
    let _e103 = params.p72_;
    let _e105 = params.p73_;
    let _e107 = params.p74_;
    let _e109 = params.p75_;
    let _e111 = params.p76_;
    let _e113 = params.p77_;
    let _e115 = params.p78_;
    let _e117 = params.p79_;
    let _e121 = params.p80_;
    let _e123 = params.p81_;
    let _e127 = params.p82_;
    let _e129 = params.p83_;
    let _e131 = params.p84_;
    let _e133 = params.p85_;
    let _e135 = params.p86_;
    let _e137 = params.p87_;
    let _e139 = params.p88_;
    let _e141 = params.p89_;
    let _e143 = params.p90_;
    let _e145 = params.p91_;
    let _e147 = params.p92_;
    let _e149 = params.p93_;
    let _e151 = params.p94_;
    let _e153 = params.p95_;
    let _e205 = cache[i32(0u)].epoch;
    let _e210 = cache[i32(2u)].epoch;
    let _e215 = reference[i32(0u)].active_;
    let _e217 = reference[i32(0u)].active_valid;
    let _e219 = reference[i32(0u)].pending;
    let _e221 = reference[i32(0u)].index;
    let _e223 = reference[i32(0u)].zx_s;
    let _e225 = reference[i32(0u)].zy_s;
    let _e227 = reference[i32(0u)].ready_at;
    let _e233 = preview_cache[i32(0u)].completed;
    if (_e233 == 0u) {
    } else {
        fixed_local_815_ = FeLocal_fe_MandelbrotViewState_c524184f_16_(FeLocal_fe_Camera_03494b0d_8_(FeLocal_fe_Complex_Coordinate_d4657101_6_(FeLocal_fe_Coordinate_bdc10f09_5_(FeLocal_fe_More_More_More_Last_e6310ae8_4_(_e11, FeLocal_fe_More_More_Last_60a5ba63_3_(_e13, FeLocal_fe_More_Last_1ac585f5_2_(_e15, FeLocal_fe_Last_eb970eb0_1_(_e17))))), FeLocal_fe_Coordinate_bdc10f09_5_(FeLocal_fe_More_More_More_Last_e6310ae8_4_(_e19, FeLocal_fe_More_More_Last_60a5ba63_3_(_e21, FeLocal_fe_More_Last_1ac585f5_2_(_e23, FeLocal_fe_Last_eb970eb0_1_(_e25)))))), _e27, _e29, FeLocal_fe_Complex_f32_87ec9249_7_(_e31, _e33)), _e35, _e37, _e39, _e41, _e43, FeLocal_fe_GestureSession_6b679731_13_(FeLocal_fe_Contacts_2_ac13bf77_11_(array<FeLocal_fe_Contact_2b5c3d26_10_, 2>(FeLocal_fe_Contact_2b5c3d26_10_((_e45 != 0u), _e49, FeLocal_fe_Vec2_f32_2772165c_9_(_e51, _e53)), FeLocal_fe_Contact_2b5c3d26_10_((_e55 != 0u), _e59, FeLocal_fe_Vec2_f32_2772165c_9_(_e61, _e63)))), FeLocal_fe_Viewport_91e53b90_12_(FeLocal_fe_Vec2_f32_2772165c_9_(_e65, _e67), FeLocal_fe_Vec2_f32_2772165c_9_(_e69, _e71)), FeLocal_fe_Contacts_2_ac13bf77_11_(array<FeLocal_fe_Contact_2b5c3d26_10_, 2>(FeLocal_fe_Contact_2b5c3d26_10_((_e73 != 0u), _e77, FeLocal_fe_Vec2_f32_2772165c_9_(_e79, _e81)), FeLocal_fe_Contact_2b5c3d26_10_((_e83 != 0u), _e87, FeLocal_fe_Vec2_f32_2772165c_9_(_e89, _e91)))), FeLocal_fe_Camera_03494b0d_8_(FeLocal_fe_Complex_Coordinate_d4657101_6_(FeLocal_fe_Coordinate_bdc10f09_5_(FeLocal_fe_More_More_More_Last_e6310ae8_4_(_e93, FeLocal_fe_More_More_Last_60a5ba63_3_(_e95, FeLocal_fe_More_Last_1ac585f5_2_(_e97, FeLocal_fe_Last_eb970eb0_1_(_e99))))), FeLocal_fe_Coordinate_bdc10f09_5_(FeLocal_fe_More_More_More_Last_e6310ae8_4_(_e101, FeLocal_fe_More_More_Last_60a5ba63_3_(_e103, FeLocal_fe_More_Last_1ac585f5_2_(_e105, FeLocal_fe_Last_eb970eb0_1_(_e107)))))), _e109, _e111, FeLocal_fe_Complex_f32_87ec9249_7_(_e113, _e115))), FeLocal_fe_BackingRequest_2bcae9f8_14_((_e117 != 0u), _e121), FeLocal_fe_CameraTrace_7ca62f00_15_((_e123 != 0u), array<u32, 14>(_e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151, _e153)));
        let _e238 = can_publish_initial(FeLocal_fe_ReferenceControl_7d077120_0_(_e215, _e217, _e219, _e221, _e223, _e225, _e227), (&fixed_local_815_), _e205, _e210);
        if _e238 {
            let _e241 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
            let _e245 = pixels[i32(_e241)].l;
            let _e247 = pixels[i32(_e241)].a;
            let _e249 = pixels[i32(_e241)].b;
            initial_pixels[i32(_e241)].l = _e245;
            initial_pixels[i32(_e241)].a = _e247;
            initial_pixels[i32(_e241)].b = _e249;
            local_1 = true;
        }
        let _e258 = local_1;
        if _e258 {
        }
    }
}
