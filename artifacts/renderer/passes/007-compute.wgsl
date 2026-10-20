struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
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

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct horizontal_element {
    l: f32,
    a: f32,
    b: f32,
}

struct blurred_element {
    l: f32,
    a: f32,
    b: f32,
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
var<storage, read_write> horizontal: array<horizontal_element>;
@group(0) @binding(1)
var<storage, read_write> blurred: array<blurred_element>;
@group(0) @binding(2)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(3)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(4)
var<storage> params: Params;
@group(0) @binding(5)
var<storage, read_write> trap: array<u32, 65536>;

fn impl_trait_f32_max(a0_: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn clamp_f(a0_1: f32, a1_1: f32, a2_: f32) -> f32 {
    var local_5: f32;
    var local_6: bool = false;
    var local_7: f32 = f32();

    if (a0_1 < a1_1) {
        local_7 = a1_1;
    } else {
        if (a2_ < a0_1) {
            local_7 = a2_;
        } else {
            local_7 = a0_1;
        }
    }
    let _e11 = local_7;
    return _e11;
}

fn progress(a0_2: f32, a1_2: f32, a2_1: f32) -> f32 {
    let _e7 = clamp_f(((a0_2 - a1_2) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_3: f32) -> f32 {
    let _e3 = progress(a0_3, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn min_(a0_4: f32, a1_3: f32) -> f32 {
    var local_8: f32;
    var local_9: bool = false;
    var local_10: f32 = f32();

    if (a0_4 < a1_3) {
        local_10 = a0_4;
    } else {
        local_10 = a1_3;
    }
    let _e8 = local_10;
    return _e8;
}

fn to_i32_(a0_5: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_5)), 2147483648u, (a0_5 <= -2147483600f)), 2147483647u, (a0_5 >= 2147483600f)), (a0_5 == a0_5));
}

fn from_i32_(a0_6: u32) -> f32 {
    return f32(bitcast<i32>(a0_6));
}

fn lib_image_max(a0_7: f32, a1_4: f32) -> f32 {
    var local_11: f32;
    var local_12: bool = false;
    var local_13: f32 = f32();

    if (a1_4 < a0_7) {
        local_13 = a0_7;
    } else {
        local_13 = a1_4;
    }
    let _e8 = local_13;
    return _e8;
}

fn gaussian(a1_5: u32, a2_2: u32, a3_: f32, a4_: bool, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_14: FeLocal_fe_shader_private_layout_0_;
    var local_15: bool = false;
    var local_16: f32 = f32();
    var local_17: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_0_;
    var loop_did_return: bool = false;
    var loop_header_carry_46_: bool;
    var local_18: f32 = f32();
    var local_19: f32 = f32();
    var local_20: f32 = f32();
    var local_21: f32 = f32();
    var local_22: f32 = f32();
    var local_23: f32 = f32();
    var local_24: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_0_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_70_: bool;
    var loop_header_carry_72_: bool;
    var local_25: u32 = u32();
    var local_26: u32 = u32();
    var local_27: u32 = u32();
    var local_28: u32 = u32();

    let _e13 = horizontal[i32(((a2_2 << 8u) | a1_5))].l;
    let _e15 = horizontal[i32(((a2_2 << 8u) | a1_5))].a;
    let _e17 = horizontal[i32(((a2_2 << 8u) | a1_5))].b;
    if (a3_ < 0.05f) {
        local_14 = FeLocal_fe_shader_private_layout_0_(_e13, _e15, _e17);
        local_15 = true;
    }
    let _e203 = local_15;
    if _e203 {
    } else {
        let _e25 = min_(a3_, 10f);
        let _e30 = to_i32_(((_e25 * 3f) + 0.999f));
        local_16 = (1f / (1f + (0.5f / ((_e25 * _e25) * 256f))));
        local_17 = 0u;
        loop {
            let _e47 = local_16;
            let _e49 = local_17;
            let _e51 = (_e49 < 8u);
            loop_header_carry_46_ = _e51;
            if _e51 {
                local_16 = (_e47 * _e47);
                local_17 = (_e49 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e59 = local_16;
        let _e61 = from_i32_(a1_5);
        let _e62 = from_i32_(a2_2);
        local_18 = _e17;
        local_19 = _e15;
        local_20 = 1f;
        local_21 = _e13;
        local_22 = _e59;
        local_23 = 1f;
        local_24 = 1u;
        loop {
            let _e82 = local_18;
            let _e84 = local_19;
            let _e86 = local_20;
            let _e88 = local_21;
            let _e90 = local_22;
            let _e92 = local_23;
            let _e94 = local_24;
            let _e97 = (bitcast<i32>(_e30) < bitcast<i32>(_e94));
            let _e99 = (_e97 == false);
            loop_header_carry_70_ = _e97;
            loop_header_carry_72_ = _e99;
            if _e99 {
                let _e101 = (_e92 * _e90);
                let _e103 = from_i32_(_e94);
                if a4_ {
                    local_25 = a1_5;
                } else {
                    let _e106 = lib_image_max(0f, (_e61 - _e103));
                    let _e107 = to_i32_(_e106);
                    local_25 = _e107;
                }
                let _e112 = local_25;
                if a4_ {
                    local_26 = a1_5;
                } else {
                    let _e115 = min_(255f, (_e61 + _e103));
                    let _e116 = to_i32_(_e115);
                    local_26 = _e116;
                }
                let _e121 = local_26;
                if a4_ {
                    let _e124 = lib_image_max(0f, (_e62 - _e103));
                    let _e125 = to_i32_(_e124);
                    local_27 = _e125;
                } else {
                    local_27 = a2_2;
                }
                let _e130 = local_27;
                if a4_ {
                    let _e133 = min_(255f, (_e62 + _e103));
                    let _e134 = to_i32_(_e133);
                    local_28 = _e134;
                } else {
                    local_28 = a2_2;
                }
                let _e138 = local_28;
                let _e145 = horizontal[i32(((_e130 << 8u) | _e112))].l;
                let _e147 = horizontal[i32(((_e130 << 8u) | _e112))].a;
                let _e149 = horizontal[i32(((_e130 << 8u) | _e112))].b;
                let _e156 = horizontal[i32(((_e138 << 8u) | _e121))].l;
                let _e158 = horizontal[i32(((_e138 << 8u) | _e121))].a;
                let _e160 = horizontal[i32(((_e138 << 8u) | _e121))].b;
                let _e176 = (_e94 + 1u);
                if ((((_e94 ^ _e176) & (1u ^ _e176)) & 2147483648u) != 0u) {
                } else {
                    local_18 = (_e82 + ((_e149 + _e160) * _e101));
                    local_19 = (_e84 + ((_e147 + _e158) * _e101));
                    local_20 = (_e86 + (2f * _e101));
                    local_21 = (_e88 + ((_e145 + _e156) * _e101));
                    local_22 = (_e90 * (_e59 * _e59));
                    local_23 = _e101;
                    local_24 = _e176;
                    continue;
                }
                (*fe_trapped_1) = true;
                break;
            } else {
                loop_result_1 = FeLocal_fe_shader_private_layout_0_((_e88 / _e86), (_e84 / _e86), (_e82 / _e86));
                loop_did_return_1 = true;
                break;
            }
        }
        let _e200 = loop_result_1;
        local_14 = _e200;
    }
    let _e205 = local_14;
    return _e205;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: f32 = f32();

    let _e11 = params.p36_;
    let _e13 = params.p37_;
    let _e15 = params.p38_;
    let _e17 = params.p40_;
    let _e23 = cache[i32(0u)].blur_dirty;
    if (_e23 == 0u) {
        local_1 = true;
    }
    let _e69 = local_1;
    if _e69 {
    } else {
        if (0.5f <= _e17) {
        } else {
            let _e36 = reference[i32(0u)].pending;
            if (_e36 == 1u) {
            } else {
                let _e43 = reference[i32(0u)].ready_at;
                let _e44 = impl_trait_f32_max(_e15, _e43);
                let _e47 = impl_trait_f32_max(0f, (_e13 - _e44));
                local_4 = _e47;
            }
        }
        let _e50 = local_4;
        let _e51 = blur_radius(_e50);
        let _e59 = gaussian(global_invocation_id.x, global_invocation_id.y, ((_e51 * 192f) / _e11), true, (&fe_trapped));
        blurred[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e59.f0_;
        blurred[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e59.f1_;
        blurred[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e59.f2_;
    }
    let _e80 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e80);
}
