struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: u32,
    f4_: f32,
    f5_: u32,
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
    f10_: u32,
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
    iteration: u32,
    magnitude: f32,
    flags: u32,
}

struct horizontal_element {
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
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(1)
var<storage, read_write> horizontal: array<horizontal_element>;
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

fn lab(a0_4: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_4.f0_, a0_4.f1_, a0_4.f2_);
}

fn min_(a0_5: f32, a1_3: f32) -> f32 {
    var local_8: f32;
    var local_9: bool = false;
    var local_10: f32 = f32();

    if (a0_5 < a1_3) {
        local_10 = a0_5;
    } else {
        local_10 = a1_3;
    }
    let _e8 = local_10;
    return _e8;
}

fn to_i32_(a0_6: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_6)), 2147483648u, (a0_6 <= -2147483600f)), 2147483647u, (a0_6 >= 2147483600f)), (a0_6 == a0_6));
}

fn from_i32_(a0_7: u32) -> f32 {
    return f32(bitcast<i32>(a0_7));
}

fn lib_image_max(a0_8: f32, a1_4: f32) -> f32 {
    var local_11: f32;
    var local_12: bool = false;
    var local_13: f32 = f32();

    if (a1_4 < a0_8) {
        local_13 = a0_8;
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
    var loop_header_carry_59_: bool;
    var local_18: f32 = f32();
    var local_19: f32 = f32();
    var local_20: f32 = f32();
    var local_21: f32 = f32();
    var local_22: f32 = f32();
    var local_23: f32 = f32();
    var local_24: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_0_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_83_: bool;
    var loop_header_carry_85_: bool;
    var local_25: u32 = u32();
    var local_26: u32 = u32();
    var local_27: u32 = u32();
    var local_28: u32 = u32();

    let _e13 = pixels[i32(((a2_2 << 8u) | a1_5))].l;
    let _e15 = pixels[i32(((a2_2 << 8u) | a1_5))].a;
    let _e17 = pixels[i32(((a2_2 << 8u) | a1_5))].b;
    let _e19 = pixels[i32(((a2_2 << 8u) | a1_5))].iteration;
    let _e21 = pixels[i32(((a2_2 << 8u) | a1_5))].magnitude;
    let _e23 = pixels[i32(((a2_2 << 8u) | a1_5))].flags;
    let _e25 = lab(FeLocal_fe_shader_private_layout_1_(_e13, _e15, _e17, _e19, _e21, _e23));
    if (a3_ < 0.05f) {
        local_14 = _e25;
        local_15 = true;
    }
    let _e235 = local_15;
    if _e235 {
    } else {
        let _e32 = min_(a3_, 10f);
        let _e37 = to_i32_(((_e32 * 3f) + 0.999f));
        local_16 = (1f / (1f + (0.5f / ((_e32 * _e32) * 256f))));
        local_17 = 0u;
        loop {
            let _e54 = local_16;
            let _e56 = local_17;
            let _e58 = (_e56 < 8u);
            loop_header_carry_59_ = _e58;
            if _e58 {
                local_16 = (_e54 * _e54);
                local_17 = (_e56 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e66 = local_16;
        let _e71 = from_i32_(a1_5);
        let _e72 = from_i32_(a2_2);
        local_18 = _e25.f2_;
        local_19 = _e25.f1_;
        local_20 = 1f;
        local_21 = _e25.f0_;
        local_22 = _e66;
        local_23 = 1f;
        local_24 = 1u;
        loop {
            let _e92 = local_18;
            let _e94 = local_19;
            let _e96 = local_20;
            let _e98 = local_21;
            let _e100 = local_22;
            let _e102 = local_23;
            let _e104 = local_24;
            let _e107 = (bitcast<i32>(_e37) < bitcast<i32>(_e104));
            let _e109 = (_e107 == false);
            loop_header_carry_83_ = _e107;
            loop_header_carry_85_ = _e109;
            if _e109 {
                let _e111 = (_e102 * _e100);
                let _e113 = from_i32_(_e104);
                if a4_ {
                    local_25 = a1_5;
                } else {
                    let _e116 = lib_image_max(0f, (_e71 - _e113));
                    let _e117 = to_i32_(_e116);
                    local_25 = _e117;
                }
                let _e122 = local_25;
                if a4_ {
                    local_26 = a1_5;
                } else {
                    let _e125 = min_(255f, (_e71 + _e113));
                    let _e126 = to_i32_(_e125);
                    local_26 = _e126;
                }
                let _e131 = local_26;
                if a4_ {
                    let _e134 = lib_image_max(0f, (_e72 - _e113));
                    let _e135 = to_i32_(_e134);
                    local_27 = _e135;
                } else {
                    local_27 = a2_2;
                }
                let _e140 = local_27;
                if a4_ {
                    let _e143 = min_(255f, (_e72 + _e113));
                    let _e144 = to_i32_(_e143);
                    local_28 = _e144;
                } else {
                    local_28 = a2_2;
                }
                let _e148 = local_28;
                let _e155 = pixels[i32(((_e140 << 8u) | _e122))].l;
                let _e157 = pixels[i32(((_e140 << 8u) | _e122))].a;
                let _e159 = pixels[i32(((_e140 << 8u) | _e122))].b;
                let _e161 = pixels[i32(((_e140 << 8u) | _e122))].iteration;
                let _e163 = pixels[i32(((_e140 << 8u) | _e122))].magnitude;
                let _e165 = pixels[i32(((_e140 << 8u) | _e122))].flags;
                let _e167 = lab(FeLocal_fe_shader_private_layout_1_(_e155, _e157, _e159, _e161, _e163, _e165));
                let _e174 = pixels[i32(((_e148 << 8u) | _e131))].l;
                let _e176 = pixels[i32(((_e148 << 8u) | _e131))].a;
                let _e178 = pixels[i32(((_e148 << 8u) | _e131))].b;
                let _e180 = pixels[i32(((_e148 << 8u) | _e131))].iteration;
                let _e182 = pixels[i32(((_e148 << 8u) | _e131))].magnitude;
                let _e184 = pixels[i32(((_e148 << 8u) | _e131))].flags;
                let _e186 = lab(FeLocal_fe_shader_private_layout_1_(_e174, _e176, _e178, _e180, _e182, _e184));
                let _e208 = (_e104 + 1u);
                if ((((_e104 ^ _e208) & (1u ^ _e208)) & 2147483648u) != 0u) {
                } else {
                    local_18 = (_e92 + ((_e167.f2_ + _e186.f2_) * _e111));
                    local_19 = (_e94 + ((_e167.f1_ + _e186.f1_) * _e111));
                    local_20 = (_e96 + (2f * _e111));
                    local_21 = (_e98 + ((_e167.f0_ + _e186.f0_) * _e111));
                    local_22 = (_e100 * (_e66 * _e66));
                    local_23 = _e111;
                    local_24 = _e208;
                    continue;
                }
                (*fe_trapped_1) = true;
                break;
            } else {
                loop_result_1 = FeLocal_fe_shader_private_layout_0_((_e98 / _e96), (_e94 / _e96), (_e92 / _e96));
                loop_did_return_1 = true;
                break;
            }
        }
        let _e232 = loop_result_1;
        local_14 = _e232;
    }
    let _e237 = local_14;
    return _e237;
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
        let _e59 = gaussian(global_invocation_id.x, global_invocation_id.y, ((_e51 * 192f) / _e11), false, (&fe_trapped));
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e59.f0_;
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e59.f1_;
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e59.f2_;
    }
    let _e80 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e80);
}
