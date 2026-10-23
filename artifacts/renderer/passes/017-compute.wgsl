struct FeLocal_fe_Complex_f32_87ec9249_1_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_SampleOracle_cc1ce944_3_ {
    iteration: u32,
    magnitude: f32,
    flags: u32,
}

struct FeLocal_fe_Last_eb970eb0_4_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_5_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_4_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_6_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_5_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_7_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_6_,
}

struct FeLocal_fe_Coordinate_bdc10f09_8_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_7_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_9_ {
    re: FeLocal_fe_Coordinate_bdc10f09_8_,
    im: FeLocal_fe_Coordinate_bdc10f09_8_,
}

struct FeLocal_fe_Camera_03494b0d_10_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_9_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_1_,
}

struct FeLocal_fe_Vec2_f32_2772165c_11_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_12_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_11_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_13_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_12_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_14_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_11_,
    extent: FeLocal_fe_Vec2_f32_2772165c_11_,
}

struct FeLocal_fe_GestureSession_6b679731_15_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_13_,
    viewport: FeLocal_fe_Viewport_91e53b90_14_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_13_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_10_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_16_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_17_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_18_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_15_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_16_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_17_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_19_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct FeLocal_fe_InvocationId_3c625d5f_20_ {
    x: u32,
    y: u32,
    z: u32,
}

struct FeLocal_fe_NativeCheckpoint_6a22185c_2_ {
    control: u32,
    epoch: u32,
    payload: FeLocal_fe_Complex_f32_87ec9249_1_,
}

struct FeLocal_fe_Pixel_5817280a_0_ {
    x: u32,
    y: u32,
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

struct progress_pixels_element {
    control: u32,
    epoch: u32,
    payload_u002e_re: f32,
    payload_u002e_im: f32,
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
var<storage, read_write> snapshot_oracle: array<snapshot_oracle_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> antialiased_pixels: array<u32>;
@group(0) @binding(3)
var<storage, read_write> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(4)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(5)
var<storage> params: Params;
@group(0) @binding(6)
var<storage, read_write> trap: array<u32, 65536>;

fn iteration(a0_: FeLocal_fe_NativeCheckpoint_6a22185c_2_) -> u32 {
    return ((a0_.control >> 14u) & 16383u);
}

fn magnitude(a0_1: FeLocal_fe_NativeCheckpoint_6a22185c_2_) -> f32 {
    var local_3: f32;
    var local_4: bool = false;
    var local_5: f32 = f32();

    if (((a0_1.control & 268435456u) == 0u) == false) {
        local_5 = a0_1.payload.re;
    } else {
        local_5 = 4f;
    }
    let _e16 = local_5;
    return _e16;
}

fn progress_outcome_flags(a0_2: u32) -> u32 {
    return (a0_2 & 3221225472u);
}

fn outcome_flags(a0_3: FeLocal_fe_NativeCheckpoint_6a22185c_2_) -> u32 {
    let _e2 = progress_outcome_flags(a0_3.control);
    return _e2;
}

fn to_oracle(a0_4: FeLocal_fe_NativeCheckpoint_6a22185c_2_) -> FeLocal_fe_SampleOracle_cc1ce944_3_ {
    let _e1 = iteration(a0_4);
    let _e2 = magnitude(a0_4);
    let _e3 = outcome_flags(a0_4);
    return FeLocal_fe_SampleOracle_cc1ce944_3_(_e1, _e2, _e3);
}

fn from_i32_(a0_5: u32) -> f32 {
    return f32(bitcast<i32>(a0_5));
}

fn in_extent(a0_6: FeLocal_fe_Pixel_5817280a_0_, a1_: f32) -> bool {
    var local_6: bool;
    var local_7: bool = false;
    var local_8: bool = bool();

    let _e5 = from_i32_(a0_6.x);
    if (_e5 < a1_) {
        let _e8 = from_i32_(a0_6.y);
        if (_e8 < a1_) {
            local_8 = true;
        }
    }
    let _e13 = local_8;
    return _e13;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_650_: bool;

    let _e13 = params.p39_;
    let _e19 = cache[i32(0u)].epoch;
    let _e21 = cache[i32(0u)].completed;
    let _e26 = cache[i32(1u)].epoch;
    if (_e21 == 0u) {
    } else {
        if (_e26 == _e19) {
            local_1 = true;
        }
        let _e93 = local_1;
        if _e93 {
        } else {
            let _e34 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
            local_2 = 0u;
            loop {
                let _e40 = local_2;
                let _e42 = (_e40 < 64u);
                loop_header_carry_650_ = _e42;
                if _e42 {
                    let _e44 = (_e40 << 16u);
                    let _e46 = (_e34 + _e44);
                    if (_e34 > (4294967295u - _e44)) {
                        fe_trapped = true;
                        break;
                    }
                    let _e55 = in_extent(FeLocal_fe_Pixel_5817280a_0_((_e46 & 2047u), (_e46 >> 11u)), _e13);
                    if _e55 {
                        let _e58 = antialiased_pixels[i32(_e46)];
                        snapshot_pixels[i32(_e46)] = _e58;
                        let _e64 = progress_pixels[i32(_e46)].control;
                        let _e66 = progress_pixels[i32(_e46)].epoch;
                        let _e68 = progress_pixels[i32(_e46)].payload_u002e_re;
                        let _e70 = progress_pixels[i32(_e46)].payload_u002e_im;
                        let _e73 = to_oracle(FeLocal_fe_NativeCheckpoint_6a22185c_2_(_e64, _e66, FeLocal_fe_Complex_f32_87ec9249_1_(_e68, _e70)));
                        snapshot_oracle[i32(_e46)].iteration = _e73.iteration;
                        snapshot_oracle[i32(_e46)].magnitude = _e73.magnitude;
                        snapshot_oracle[i32(_e46)].flags = _e73.flags;
                    }
                    local_2 = (_e40 + 1u);
                    continue;
                } else {
                    loop_did_return = true;
                    break;
                }
            }
            let _e89 = loop_did_return;
            if _e89 {
                local_1 = true;
            }
        }
    }
    let _e104 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e104);
}
