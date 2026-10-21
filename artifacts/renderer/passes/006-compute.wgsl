struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
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

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
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

fn display_age(a0_1: FeLocal_fe_shader_private_layout_2_, a1_1: FeLocal_fe_shader_private_layout_3_) -> f32 {
    var local_5: f32;
    var local_6: bool = false;
    var local_7: f32 = f32();

    if (0.5f <= a1_1.f13_) {
    } else {
        if (a0_1.f2_ == 1u) {
        } else {
            let _e13 = max_(a1_1.f11_, a0_1.f6_);
            let _e16 = max_(0f, (a1_1.f10_ - _e13));
            local_7 = _e16;
        }
    }
    let _e19 = local_7;
    return _e19;
}

fn clamp_f(a0_2: f32, a1_2: f32, a2_: f32) -> f32 {
    var local_8: f32;
    var local_9: bool = false;
    var local_10: f32 = f32();

    if (a0_2 < a1_2) {
        local_10 = a1_2;
    } else {
        if (a2_ < a0_2) {
            local_10 = a2_;
        } else {
            local_10 = a0_2;
        }
    }
    let _e11 = local_10;
    return _e11;
}

fn progress(a0_3: f32, a1_3: f32, a2_1: f32) -> f32 {
    let _e7 = clamp_f(((a0_3 - a1_3) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_4: f32) -> f32 {
    let _e3 = progress(a0_4, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn blur_sigma(a0_5: FeLocal_fe_shader_private_layout_2_, a1_4: FeLocal_fe_shader_private_layout_3_) -> f32 {
    let _e2 = display_age(a0_5, a1_4);
    let _e3 = blur_radius(_e2);
    return ((_e3 * 192f) / a1_4.f9_);
}

fn min_(a0_6: f32, a1_5: f32) -> f32 {
    var local_11: f32;
    var local_12: bool = false;
    var local_13: f32 = f32();

    if (a0_6 < a1_5) {
        local_13 = a0_6;
    } else {
        local_13 = a1_5;
    }
    let _e8 = local_13;
    return _e8;
}

fn to_i32_(a0_7: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_7)), 2147483648u, (a0_7 <= -2147483600f)), 2147483647u, (a0_7 >= 2147483600f)), (a0_7 == a0_7));
}

fn from_i32_(a0_8: u32) -> f32 {
    return f32(bitcast<i32>(a0_8));
}

fn perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_9: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_9.f0_, a0_9.f1_, a0_9.f2_);
}

fn div_ge58b(a0_10: FeLocal_fe_shader_private_layout_0_, a1_6: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_10.f0_ / a1_6), (a0_10.f1_ / a1_6), (a0_10.f2_ / a1_6));
}

fn perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(a0_11: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a0_11.f0_, a0_11.f1_, a0_11.f2_);
}

fn impl_trait_Color_div(a0_12: FeLocal_fe_shader_private_layout_1_, a1_7: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_12);
    let _e3 = div_ge58b(_e2, a1_7);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e3);
    return _e4;
}

fn add_ge58b(a0_13: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_13.f0_ + a1_8.f0_), (a0_13.f1_ + a1_8.f1_), (a0_13.f2_ + a1_8.f2_));
}

fn impl_trait_Color_add(a0_14: FeLocal_fe_shader_private_layout_1_, a1_9: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_14);
    let _e3 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a1_9);
    let _e4 = add_ge58b(_e2, _e3);
    let _e5 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e4);
    return _e5;
}

fn mul_ge58b(a0_15: FeLocal_fe_shader_private_layout_0_, a1_10: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_15.f0_ * a1_10), (a0_15.f1_ * a1_10), (a0_15.f2_ * a1_10));
}

fn impl_trait_Color_mul(a0_16: FeLocal_fe_shader_private_layout_1_, a1_11: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_16);
    let _e3 = mul_ge58b(_e2, a1_11);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e3);
    return _e4;
}

fn gaussian(a1_12: u32, a2_2: u32, a3_: f32, a4_: bool, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_14: FeLocal_fe_shader_private_layout_1_;
    var local_15: bool = false;
    var local_16: f32 = f32();
    var local_17: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return: bool = false;
    var loop_header_carry_46_: bool;
    var local_18: f32 = f32();
    var local_19: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_20: f32 = f32();
    var local_21: f32 = f32();
    var local_22: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_61_: bool;
    var loop_header_carry_63_: bool;
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var local_25: u32 = u32();
    var local_26: u32 = u32();

    let _e13 = pixels[i32(((a2_2 << 8u) | a1_12))].l;
    let _e15 = pixels[i32(((a2_2 << 8u) | a1_12))].a;
    let _e17 = pixels[i32(((a2_2 << 8u) | a1_12))].b;
    let _e18 = FeLocal_fe_shader_private_layout_1_(_e13, _e15, _e17);
    if (a3_ < 0.05f) {
        local_14 = _e18;
        local_15 = true;
    }
    let _e186 = local_15;
    if _e186 {
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
        let _e61 = from_i32_(a1_12);
        let _e62 = from_i32_(a2_2);
        local_18 = 1f;
        local_19 = _e18;
        local_20 = _e59;
        local_21 = 1f;
        local_22 = 1u;
        loop {
            let _e78 = local_18;
            let _e80 = local_19;
            let _e82 = local_20;
            let _e84 = local_21;
            let _e86 = local_22;
            let _e89 = (bitcast<i32>(_e30) < bitcast<i32>(_e86));
            let _e91 = (_e89 == false);
            loop_header_carry_61_ = _e89;
            loop_header_carry_63_ = _e91;
            if _e91 {
                let _e93 = (_e84 * _e82);
                let _e95 = from_i32_(_e86);
                if a4_ {
                    local_23 = a1_12;
                } else {
                    let _e98 = max_(0f, (_e61 - _e95));
                    let _e99 = to_i32_(_e98);
                    local_23 = _e99;
                }
                let _e104 = local_23;
                if a4_ {
                    local_24 = a1_12;
                } else {
                    let _e107 = min_(255f, (_e61 + _e95));
                    let _e108 = to_i32_(_e107);
                    local_24 = _e108;
                }
                let _e113 = local_24;
                if a4_ {
                    let _e116 = max_(0f, (_e62 - _e95));
                    let _e117 = to_i32_(_e116);
                    local_25 = _e117;
                } else {
                    local_25 = a2_2;
                }
                let _e122 = local_25;
                if a4_ {
                    let _e125 = min_(255f, (_e62 + _e95));
                    let _e126 = to_i32_(_e125);
                    local_26 = _e126;
                } else {
                    local_26 = a2_2;
                }
                let _e130 = local_26;
                let _e137 = pixels[i32(((_e122 << 8u) | _e104))].l;
                let _e139 = pixels[i32(((_e122 << 8u) | _e104))].a;
                let _e141 = pixels[i32(((_e122 << 8u) | _e104))].b;
                let _e149 = pixels[i32(((_e130 << 8u) | _e113))].l;
                let _e151 = pixels[i32(((_e130 << 8u) | _e113))].a;
                let _e153 = pixels[i32(((_e130 << 8u) | _e113))].b;
                let _e155 = impl_trait_Color_add(FeLocal_fe_shader_private_layout_1_(_e137, _e139, _e141), FeLocal_fe_shader_private_layout_1_(_e149, _e151, _e153));
                let _e156 = impl_trait_Color_mul(_e155, _e93);
                let _e157 = impl_trait_Color_add(_e80, _e156);
                let _e164 = (_e86 + 1u);
                if ((((_e86 ^ _e164) & (1u ^ _e164)) & 2147483648u) != 0u) {
                } else {
                    local_18 = (_e78 + (2f * _e93));
                    local_19 = _e157;
                    local_20 = (_e82 * (_e59 * _e59));
                    local_21 = _e93;
                    local_22 = _e164;
                    continue;
                }
                (*fe_trapped_1) = true;
                break;
            } else {
                let _e176 = impl_trait_Color_div(_e80, _e78);
                loop_result_1 = _e176;
                loop_did_return_1 = true;
                break;
            }
        }
        let _e183 = loop_result_1;
        local_14 = _e183;
    }
    let _e188 = local_14;
    return _e188;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;

    let _e11 = params.p27_;
    let _e13 = params.p28_;
    let _e15 = params.p29_;
    let _e17 = params.p30_;
    let _e19 = params.p31_;
    let _e21 = params.p32_;
    let _e23 = params.p33_;
    let _e25 = params.p34_;
    let _e27 = params.p35_;
    let _e29 = params.p36_;
    let _e31 = params.p37_;
    let _e33 = params.p38_;
    let _e35 = params.p39_;
    let _e37 = params.p40_;
    let _e39 = params.p41_;
    let _e45 = cache[i32(0u)].blur_dirty;
    if (_e45 == 0u) {
        local_1 = true;
    }
    let _e84 = local_1;
    if _e84 {
    } else {
        let _e54 = reference[i32(0u)].active_;
        let _e56 = reference[i32(0u)].active_valid;
        let _e58 = reference[i32(0u)].pending;
        let _e60 = reference[i32(0u)].index;
        let _e62 = reference[i32(0u)].zx_s;
        let _e64 = reference[i32(0u)].zy_s;
        let _e66 = reference[i32(0u)].ready_at;
        let _e69 = blur_sigma(FeLocal_fe_shader_private_layout_2_(_e54, _e56, _e58, _e60, _e62, _e64, _e66), FeLocal_fe_shader_private_layout_3_(_e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39));
        let _e74 = gaussian(global_invocation_id.x, global_invocation_id.y, _e69, false, (&fe_trapped));
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e74.f0_;
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e74.f1_;
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e74.f2_;
    }
    let _e95 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e95);
}
