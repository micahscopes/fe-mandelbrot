struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct Input {
    p2_: f32,
    p3_: f32,
    p4_: f32,
    p5_: f32,
}

@group(0) @binding(1)
var<storage> input: Input;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn impl_trait_f32_floor(a0_1: f32) -> f32 {
    return floor(a0_1);
}

fn wrap_pi(a0_2: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_2 / 6.2831855f) + 0.5f));
    return (a0_2 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_3: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_3) & 2147483647u));
}

fn sin_(a0_4: f32) -> f32 {
    let _e1 = wrap_pi(a0_4);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_5: f32) -> f32 {
    let _e3 = sin_((a0_5 + 1.5707964f));
    return _e3;
}

fn to_color(a0_6: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e3 = (a0_6.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_1_(a0_6.f0_, (a0_6.f1_ * _e6), (a0_6.f1_ * _e9));
}

fn clamp_(a0_7: f32, a1_: f32, a2_: f32) -> f32 {
    var local_3: f32;
    var local_4: bool = false;
    var local_5: f32 = f32();

    if (a0_7 < a1_) {
        local_5 = a1_;
    } else {
        if (a2_ < a0_7) {
            local_5 = a2_;
        } else {
            local_5 = a0_7;
        }
    }
    let _e11 = local_5;
    return _e11;
}

fn sqrt_(a0_8: f32) -> f32 {
    return sqrt(a0_8);
}

fn srgb(a0_9: f32) -> f32 {
    var local_6: f32;
    var local_7: bool = false;

    let _e4 = clamp_(a0_9, 0f, 1f);
    if (_e4 <= 0.0031308f) {
        local_6 = (12.92f * _e4);
        local_7 = true;
    }
    let _e31 = local_7;
    if _e31 {
    } else {
        let _e12 = sqrt_(_e4);
        let _e13 = sqrt_(_e12);
        let _e14 = sqrt_(_e13);
        let _e28 = clamp_(((((0.6620027f * _e12) + (0.6841221f * _e13)) - (0.3235836f * _e14)) - (0.022541147f * _e4)), 0f, 1f);
        local_6 = _e28;
    }
    let _e33 = local_6;
    return _e33;
}

fn to_i32_(a0_10: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_10)), 2147483648u, (a0_10 <= -2147483600f)), 2147483647u, (a0_10 >= 2147483600f)), (a0_10 == a0_10));
}

fn display_rgba(a0_11: FeLocal_fe_shader_private_layout_1_) -> u32 {
    let _e9 = ((a0_11.f0_ + (0.39633778f * a0_11.f1_)) + (0.21580376f * a0_11.f2_));
    let _e18 = ((a0_11.f0_ - (0.105561346f * a0_11.f1_)) - (0.06385417f * a0_11.f2_));
    let _e27 = ((a0_11.f0_ - (0.08948418f * a0_11.f1_)) - (1.2914855f * a0_11.f2_));
    let _e29 = ((_e9 * _e9) * _e9);
    let _e31 = ((_e18 * _e18) * _e18);
    let _e33 = ((_e27 * _e27) * _e27);
    let _e42 = srgb((((4.0767417f * _e29) - (3.3077116f * _e31)) + (0.23096994f * _e33)));
    let _e47 = to_i32_(((_e42 * 255f) + 0.5f));
    let _e56 = srgb((((-1.268438f * _e29) + (2.6097574f * _e31)) - (0.34131938f * _e33)));
    let _e61 = to_i32_(((_e56 * 255f) + 0.5f));
    let _e70 = srgb((((-0.0041960864f * _e29) - (0.7034186f * _e31)) + (1.7076147f * _e33)));
    let _e75 = to_i32_(((_e70 * 255f) + 0.5f));
    return ((((_e47 & 255u) | ((_e61 & 255u) << 8u)) | ((_e75 & 255u) << 16u)) | 4278190080u);
}

fn to_vec(a0_12: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_12.f0_, a0_12.f1_, a0_12.f2_);
}

fn sub(a0_13: FeLocal_fe_shader_private_layout_0_, a1_1: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_13.f0_ - a1_1.f0_), (a0_13.f1_ - a1_1.f1_), (a0_13.f2_ - a1_1.f2_));
}

fn mul(a0_14: FeLocal_fe_shader_private_layout_0_, a1_2: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_14.f0_ * a1_2), (a0_14.f1_ * a1_2), (a0_14.f2_ * a1_2));
}

fn impl_trait_Vec3_add_ge58b(a0_15: FeLocal_fe_shader_private_layout_0_, a1_3: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_15.f0_ + a1_3.f0_), (a0_15.f1_ + a1_3.f1_), (a0_15.f2_ + a1_3.f2_));
}

fn interpolate(a0_16: FeLocal_fe_shader_private_layout_0_, a1_4: FeLocal_fe_shader_private_layout_0_, a2_1: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = sub(a1_4, a0_16);
    let _e4 = mul(_e3, a2_1);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_16, _e4);
    return _e5;
}

fn from_vec(a0_17: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a0_17.f0_, a0_17.f1_, a0_17.f2_);
}

fn blend(a0_18: FeLocal_fe_shader_private_layout_1_, a1_5: FeLocal_fe_shader_private_layout_1_, a2_2: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e3 = to_vec(a0_18);
    let _e4 = to_vec(a1_5);
    let _e5 = interpolate(_e3, _e4, a2_2);
    let _e6 = from_vec(_e5);
    return _e6;
}

@vertex
fn vs_fullscreen(@builtin(vertex_index) vi: u32) -> @builtin(position) vec4<f32> {
    return vec4<f32>((f32(((vi & 1u) << 2u)) - 1f), (f32(((vi & 2u) << 1u)) - 1f), 0f, 1f);
}

@fragment
fn fs_main(@builtin(position) pos: vec4<f32>) -> @location(0) vec4<f32> {
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var fixed_local_55_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_72_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_86_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();

    let _e7 = input.p2_;
    let _e9 = input.p3_;
    let _e11 = input.p4_;
    let _e13 = input.p5_;
    let _e16 = from_i32_(u32(pos.x));
    let _e19 = ((_e16 + 0.5f) / _e13);
    let _e20 = from_i32_(u32(pos.y));
    let _e23 = ((_e20 + 0.5f) / _e13);
    let _e24 = FeLocal_fe_shader_private_layout_2_(_e11, _e9, _e7);
    if (_e23 < 0.3333333f) {
        fixed_local_55_ = _e24;
        fixed_local_55_.f2_ = (_e7 + (_e19 * 360f));
        let _e33 = fixed_local_55_;
        let _e34 = to_color(_e33);
        let _e35 = display_rgba(_e34);
        local_2 = _e35;
    } else {
        if (_e23 < 0.6666667f) {
            fixed_local_72_ = _e24;
            fixed_local_72_.f2_ = (_e7 + 140f);
            let _e43 = to_color(_e24);
            let _e44 = fixed_local_72_;
            let _e45 = to_color(_e44);
            let _e46 = blend(_e43, _e45, _e19);
            let _e47 = display_rgba(_e46);
            local_2 = _e47;
        } else {
            fixed_local_86_ = _e24;
            fixed_local_86_.f0_ = (0.15f + (0.75f * _e19));
            fixed_local_86_.f1_ = ((_e9 * (_e23 - 0.6666667f)) * 3f);
            let _e61 = fixed_local_86_;
            let _e62 = to_color(_e61);
            let _e63 = display_rgba(_e62);
            local_2 = _e63;
        }
    }
    let _e68 = local_2;
    return unpack4x8unorm(_e68);
}
