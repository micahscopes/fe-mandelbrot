struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: bool,
    f1_: bool,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: FeLocal_fe_shader_private_layout_0_,
    f2_: FeLocal_fe_shader_private_layout_0_,
    f3_: FeLocal_fe_shader_private_layout_0_,
    f4_: u32,
}

struct Params {
    p19_: f32,
    p20_: f32,
    p21_: f32,
    p22_: f32,
}

@group(0) @binding(0)
var<storage, read_write> proof: array<u32>;
@group(0) @binding(1)
var<storage, read_write> lde_progress: array<u32>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 876544>;

fn validate_batched_stage_grid(a1_: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_2_ {
    var local_4: FeLocal_fe_shader_private_layout_2_;
    var local_5: bool = false;
    var local_6: bool = bool();
    var local_7: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_2_;
    var loop_did_return: bool = false;
    var loop_header_carry_24_: bool;
    var local_8: bool = bool();
    var local_9: FeLocal_fe_shader_private_layout_2_;
    var local_10: bool = false;
    var local_11: u32 = u32();

    if ((a1_.f0_.f0_ < 428u) == false) {
        local_4 = FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_2_().f0_, true, 0u);
        local_5 = true;
    }
    let _e66 = local_5;
    if _e66 {
    } else {
        let _e18 = (a1_.f0_.f0_ << 11u);
        local_6 = true;
        local_7 = 0u;
        loop {
            let _e27 = local_6;
            let _e29 = local_7;
            let _e31 = (_e29 < 2048u);
            loop_header_carry_24_ = _e31;
            if _e31 {
                if _e27 {
                    let _e36 = lde_progress[i32((_e18 + _e29))];
                    if (_e36 == 12u) {
                        local_8 = true;
                    } else {
                        local_8 = false;
                    }
                } else {
                    local_8 = false;
                }
                let _e46 = local_8;
                local_6 = _e46;
                local_7 = (_e29 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e53 = local_6;
        if _e53 {
            local_11 = 2348814336u;
        }
        let _e59 = local_11;
        lde_progress[i32(_e18)] = _e59;
        local_4 = FeLocal_fe_shader_private_layout_2_(true, _e53, a1_.f0_.f0_);
    }
    let _e68 = local_4;
    return _e68;
}

@compute @workgroup_size(256, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: bool = bool();
    var local_3: u32 = u32();

    let _e34 = validate_batched_stage_grid(FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(global_invocation_id.x, global_invocation_id.y, global_invocation_id.z), FeLocal_fe_shader_private_layout_0_(local_invocation_id.x, local_invocation_id.y, local_invocation_id.z), FeLocal_fe_shader_private_layout_0_(workgroup_id.x, workgroup_id.y, workgroup_id.z), FeLocal_fe_shader_private_layout_0_(num_workgroups.x, num_workgroups.y, num_workgroups.z), local_invocation_index));
    if _e34.f0_ {
        if (459789u > (4294967295u - _e34.f2_)) {
        } else {
            let _e45 = proof[i32((459789u + _e34.f2_))];
            if (_e45 == 1u) {
                if _e34.f1_ {
                    local_2 = true;
                }
            }
            let _e52 = local_2;
            if (459789u > (4294967295u - _e34.f2_)) {
                fe_trapped = true;
            }
            if _e52 {
                local_3 = 1u;
            }
            let _e64 = local_3;
            proof[i32((459789u + _e34.f2_))] = _e64;
            local_1 = true;
        }
        let _e71 = local_1;
        if _e71 {
        } else {
            fe_trapped = true;
        }
    }
    let _e82 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 876544u)) + (global_invocation_id.z * 876544u))] = u32(_e82);
}
