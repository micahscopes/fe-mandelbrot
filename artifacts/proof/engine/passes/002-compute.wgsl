struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
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
var<storage, read_write> lde_inverse_values: array<u32>;
@group(0) @binding(2)
var<storage, read_write> lde_inverse_progress: array<u32>;
@group(0) @binding(3)
var<storage> params: Params;
@group(0) @binding(4)
var<storage, read_write> trap: array<u32, 219136>;

fn reverse_low_bits(a0_: u32, a1_: u32) -> u32 {
    var local_2: u32 = u32();
    var local_3: u32 = u32();
    var local_4: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_6_: bool;

    local_2 = a0_;
    local_3 = 0u;
    local_4 = 0u;
    loop {
        let _e12 = local_2;
        let _e14 = local_3;
        let _e16 = local_4;
        let _e17 = (_e16 < a1_);
        loop_header_carry_6_ = _e17;
        if _e17 {
            local_2 = (_e12 >> 1u);
            local_3 = ((_e14 << 1u) | (_e12 & 1u));
            local_4 = (_e16 + 1u);
            continue;
        } else {
            loop_result = _e14;
            loop_did_return = true;
            break;
        }
    }
    let _e35 = loop_result;
    return _e35;
}

@compute @workgroup_size(256, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;

    if (global_invocation_id.x < 219136u) {
        let _e11 = (global_invocation_id.x / 512u);
        let _e13 = (global_invocation_id.x % 512u);
        let _e18 = (_e11 * 1024u);
        let _e19 = (_e11 != 0u);
        if (_e19 && (1024u > (4294967295u / select(1u, _e11, _e19)))) {
        } else {
            let _e28 = (_e11 * 1024u);
            let _e29 = (_e11 != 0u);
            if (_e29 && (1024u > (4294967295u / select(1u, _e11, _e29)))) {
            } else {
                let _e35 = (_e13 + 512u);
                let _e37 = reverse_low_bits(_e13, 10u);
                if (_e28 > (4294967295u - _e37)) {
                } else {
                    if (_e18 > (4294967295u - _e13)) {
                    } else {
                        let _e48 = proof[i32((_e18 + _e13))];
                        lde_inverse_values[i32((_e28 + _e37))] = _e48;
                        let _e52 = reverse_low_bits(_e35, 10u);
                        if (_e28 > (4294967295u - _e52)) {
                        } else {
                            if (_e18 > (4294967295u - _e35)) {
                                fe_trapped = true;
                            }
                            let _e64 = proof[i32((_e18 + _e35))];
                            lde_inverse_values[i32((_e28 + _e52))] = _e64;
                            lde_inverse_progress[i32(global_invocation_id.x)] = 0u;
                            local_1 = true;
                        }
                        let _e73 = local_1;
                        if _e73 {
                        }
                    }
                    let _e75 = local_1;
                    if _e75 {
                    }
                }
                let _e77 = local_1;
                if _e77 {
                }
            }
            let _e79 = local_1;
            if _e79 {
            }
        }
        let _e82 = local_1;
        if _e82 {
        } else {
            fe_trapped = true;
        }
    }
    let _e93 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 219136u)) + (global_invocation_id.z * 219136u))] = u32(_e93);
}
