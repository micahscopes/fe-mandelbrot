struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: f32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_6_,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: FeLocal_fe_shader_private_layout_8_,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: bool,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_11_,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: array<FeLocal_fe_shader_private_layout_12_, 10>,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: FeLocal_fe_shader_private_layout_11_,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: FeLocal_fe_shader_private_layout_13_,
    f1_: FeLocal_fe_shader_private_layout_14_,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: bool,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: FeLocal_fe_shader_private_layout_10_,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: FeLocal_fe_shader_private_layout_15_,
    f7_: FeLocal_fe_shader_private_layout_16_,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: FeLocal_fe_shader_private_layout_10_,
    f1_: u32,
    f2_: f32,
    f3_: u32,
    f4_: f32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
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
var<storage, read_write> antialiased_pixels: array<u32>;
@group(0) @binding(3)
var<storage, read_write> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(4)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(5)
var<storage> params: Params;
@group(0) @binding(6)
var<storage, read_write> trap: array<u32, 65536>;

fn iteration(a0_: FeLocal_fe_shader_private_layout_2_) -> u32 {
    return ((a0_.f0_ >> 14u) & 16383u);
}

fn magnitude(a0_1: FeLocal_fe_shader_private_layout_2_) -> f32 {
    var local_3: f32;
    var local_4: bool = false;
    var local_5: f32 = f32();

    if (((a0_1.f0_ & 268435456u) == 0u) == false) {
        local_5 = a0_1.f2_.f0_;
    } else {
        local_5 = 4f;
    }
    let _e16 = local_5;
    return _e16;
}

fn progress_outcome_flags(a0_2: u32) -> u32 {
    return (a0_2 & 3221225472u);
}

fn outcome_flags(a0_3: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e2 = progress_outcome_flags(a0_3.f0_);
    return _e2;
}

fn to_oracle(a0_4: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e1 = iteration(a0_4);
    let _e2 = magnitude(a0_4);
    let _e3 = outcome_flags(a0_4);
    return FeLocal_fe_shader_private_layout_3_(_e1, _e2, _e3);
}

fn from_i32_(a0_5: u32) -> f32 {
    return f32(bitcast<i32>(a0_5));
}

fn in_extent(a0_6: FeLocal_fe_shader_private_layout_0_, a1_: f32) -> bool {
    var local_6: bool;
    var local_7: bool = false;
    var local_8: bool = bool();

    let _e5 = from_i32_(a0_6.f0_);
    if (_e5 < a1_) {
        let _e8 = from_i32_(a0_6.f1_);
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
    var loop_header_carry_595_: bool;

    let _e13 = params.p38_;
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
                loop_header_carry_595_ = _e42;
                if _e42 {
                    let _e44 = (_e40 << 16u);
                    let _e46 = (_e34 + _e44);
                    if (_e34 > (4294967295u - _e44)) {
                        fe_trapped = true;
                        break;
                    }
                    let _e55 = in_extent(FeLocal_fe_shader_private_layout_0_((_e46 & 2047u), (_e46 >> 11u)), _e13);
                    if _e55 {
                        let _e58 = antialiased_pixels[i32(_e46)];
                        snapshot_pixels[i32(_e46)] = _e58;
                        let _e64 = progress_pixels[i32(_e46)].control;
                        let _e66 = progress_pixels[i32(_e46)].epoch;
                        let _e68 = progress_pixels[i32(_e46)].payload_u002e_re;
                        let _e70 = progress_pixels[i32(_e46)].payload_u002e_im;
                        let _e73 = to_oracle(FeLocal_fe_shader_private_layout_2_(_e64, _e66, FeLocal_fe_shader_private_layout_1_(_e68, _e70)));
                        snapshot_oracle[i32(_e46)].iteration = _e73.f0_;
                        snapshot_oracle[i32(_e46)].magnitude = _e73.f1_;
                        snapshot_oracle[i32(_e46)].flags = _e73.f2_;
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
