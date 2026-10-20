struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: f32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: f32,
    f7_: f32,
    f8_: f32,
    f9_: f32,
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: f32,
    f7_: f32,
    f8_: f32,
    f9_: f32,
    f10_: u32,
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct snapshot_oracle_element {
    iteration: u32,
    magnitude: f32,
    flags: u32,
}

struct cache_element {
    x0_: f32,
    x1_: f32,
    x2_: f32,
    x3_: f32,
    y0_: f32,
    y1_: f32,
    y2_: f32,
    y3_: f32,
    zoom: f32,
    res: f32,
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
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct Params {
    p27_: f32,
    p28_: f32,
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

fn outcome_flags(a0_: FeLocal_fe_shader_private_layout_0_) -> u32 {
    return (a0_.f4_ & 3221225472u);
}

fn to_oracle(a0_1: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e3 = outcome_flags(a0_1);
    return FeLocal_fe_shader_private_layout_1_(a0_1.f5_, a0_1.f7_, _e3);
}

fn from_i32_(a0_2: u32) -> f32 {
    return f32(bitcast<i32>(a0_2));
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_293_: bool;

    let _e13 = params.p36_;
    let _e19 = cache[i32(0u)].epoch;
    let _e21 = cache[i32(0u)].completed;
    let _e26 = cache[i32(1u)].epoch;
    if (_e21 == 0u) {
    } else {
        if (_e26 == _e19) {
            local_1 = true;
        }
        let _e102 = local_1;
        if _e102 {
        } else {
            let _e34 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
            local_2 = 0u;
            loop {
                let _e40 = local_2;
                let _e42 = (_e40 < 64u);
                loop_header_carry_293_ = _e42;
                if _e42 {
                    let _e44 = (_e40 << 16u);
                    let _e46 = (_e34 + _e44);
                    if (_e34 > (4294967295u - _e44)) {
                        fe_trapped = true;
                        break;
                    }
                    let _e54 = from_i32_((_e46 & 2047u));
                    if (_e54 < _e13) {
                        let _e56 = from_i32_((_e46 >> 11u));
                        if (_e56 < _e13) {
                            let _e60 = antialiased_pixels[i32(_e46)];
                            snapshot_pixels[i32(_e46)] = _e60;
                            let _e66 = progress_pixels[i32(_e46)].dz_re;
                            let _e68 = progress_pixels[i32(_e46)].dz_im;
                            let _e70 = progress_pixels[i32(_e46)].z_re;
                            let _e72 = progress_pixels[i32(_e46)].z_im;
                            let _e74 = progress_pixels[i32(_e46)].reference_i;
                            let _e76 = progress_pixels[i32(_e46)].iteration;
                            let _e78 = progress_pixels[i32(_e46)].epoch;
                            let _e80 = progress_pixels[i32(_e46)].magnitude;
                            let _e82 = to_oracle(FeLocal_fe_shader_private_layout_0_(_e66, _e68, _e70, _e72, _e74, _e76, _e78, _e80));
                            snapshot_oracle[i32(_e46)].iteration = _e82.f0_;
                            snapshot_oracle[i32(_e46)].magnitude = _e82.f1_;
                            snapshot_oracle[i32(_e46)].flags = _e82.f2_;
                        }
                    }
                    local_2 = (_e40 + 1u);
                    continue;
                } else {
                    loop_did_return = true;
                    break;
                }
            }
            let _e98 = loop_did_return;
            if _e98 {
                local_1 = true;
            }
        }
    }
    let _e113 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e113);
}
