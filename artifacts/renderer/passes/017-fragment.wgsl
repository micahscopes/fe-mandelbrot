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

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: f32,
    f5_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_20_ {
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

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct blurred_element {
    l: f32,
    a: f32,
    b: f32,
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

struct reference_element {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
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

struct Input {
    p18_: f32,
    p19_: f32,
    p20_: f32,
    p21_: f32,
    p22_: f32,
    p23_: f32,
    p24_: f32,
    p25_: f32,
    p26_: f32,
    p27_: f32,
    p28_: f32,
    p29_: f32,
    p30_: f32,
    p31_: f32,
    p32_: f32,
    p33_: u32,
    p34_: u32,
    p35_: f32,
    p36_: f32,
    p37_: u32,
    p38_: u32,
    p39_: f32,
    p40_: f32,
    p41_: u32,
    p42_: u32,
    p43_: f32,
    p44_: f32,
    p45_: u32,
    p46_: u32,
    p47_: f32,
    p48_: f32,
    p49_: u32,
    p50_: u32,
    p51_: f32,
    p52_: f32,
    p53_: u32,
    p54_: u32,
    p55_: f32,
    p56_: f32,
    p57_: u32,
    p58_: u32,
    p59_: f32,
    p60_: f32,
    p61_: u32,
    p62_: u32,
    p63_: f32,
    p64_: f32,
    p65_: u32,
    p66_: u32,
    p67_: f32,
    p68_: f32,
    p69_: u32,
    p70_: u32,
    p71_: f32,
    p72_: f32,
    p73_: f32,
    p74_: f32,
    p75_: f32,
    p76_: f32,
    p77_: u32,
    p78_: f32,
}

@group(0) @binding(0)
var<storage> blurred: array<blurred_element>;
@group(0) @binding(1)
var<storage> cache: array<cache_element>;
@group(0) @binding(2)
var<storage> reference: array<reference_element>;
@group(0) @binding(3)
var<storage> native_pixels: array<u32>;
@group(0) @binding(4)
var<storage> antialiased_pixels: array<u32>;
@group(0) @binding(5)
var<storage> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(6)
var<storage> input: Input;

fn index(a0_: FeLocal_fe_shader_private_layout_19_, a1_: u32) -> u32 {
    return ((a0_.f1_ << a1_) | a0_.f0_);
}

fn max_(a0_1: f32, a1_1: f32) -> f32 {
    var local_4: f32;
    var local_5: bool = false;
    var local_6: f32 = f32();

    if (a1_1 < a0_1) {
        local_6 = a0_1;
    } else {
        local_6 = a1_1;
    }
    let _e8 = local_6;
    return _e8;
}

fn display_age(a0_2: FeLocal_fe_shader_private_layout_3_, a1_2: ptr<function, FeLocal_fe_shader_private_layout_17_>) -> f32 {
    var local_7: f32;
    var local_8: bool = false;
    var local_9: f32 = f32();

    let _e5 = (*a1_2).f4_;
    if (0.5f <= _e5) {
    } else {
        if (a0_2.f2_ == 1u) {
        } else {
            let _e12 = (*a1_2).f1_;
            let _e14 = (*a1_2).f2_;
            let _e16 = max_(_e14, a0_2.f6_);
            let _e19 = max_(0f, (_e12 - _e16));
            local_9 = _e19;
        }
    }
    let _e22 = local_9;
    return _e22;
}

fn lib_clamp(a0_3: f32, a1_3: f32, a2_: f32) -> f32 {
    var local_10: f32;
    var local_11: bool = false;
    var local_12: f32 = f32();

    if (a0_3 < a1_3) {
        local_12 = a1_3;
    } else {
        if (a2_ < a0_3) {
            local_12 = a2_;
        } else {
            local_12 = a0_3;
        }
    }
    let _e11 = local_12;
    return _e11;
}

fn progress(a0_4: f32, a1_4: f32, a2_1: f32) -> f32 {
    let _e7 = lib_clamp(((a0_4 - a1_4) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn progress_is_presentable(a0_5: u32) -> bool {
    return (((a0_5 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_6: FeLocal_fe_shader_private_layout_18_) -> bool {
    let _e2 = progress_is_presentable(a0_6.f4_);
    return _e2;
}

fn is_presentable_in(a0_7: FeLocal_fe_shader_private_layout_18_, a1_5: u32) -> bool {
    var local_13: bool;
    var local_14: bool = false;
    var local_15: bool = bool();

    if (a0_7.f6_ == a1_5) {
        let _e6 = is_presentable(a0_7);
        if _e6 {
            local_15 = true;
        }
    }
    let _e10 = local_15;
    return _e10;
}

fn fade_started_at(a0_8: FeLocal_fe_shader_private_layout_18_) -> f32 {
    return a0_8.f2_;
}

fn from_i32_(a0_9: u32) -> f32 {
    return f32(bitcast<i32>(a0_9));
}

fn impl_trait_f32_floor(a0_10: f32) -> f32 {
    return floor(a0_10);
}

fn to_i32_(a0_11: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_11)), 2147483648u, (a0_11 <= -2147483600f)), 2147483647u, (a0_11 >= 2147483600f)), (a0_11 == a0_11));
}

fn min_(a0_12: f32, a1_6: f32) -> f32 {
    var local_16: f32;
    var local_17: bool = false;
    var local_18: f32 = f32();

    if (a0_12 < a1_6) {
        local_18 = a0_12;
    } else {
        local_18 = a1_6;
    }
    let _e8 = local_18;
    return _e8;
}

fn bilinear_tap(a0_13: f32, a1_7: f32, a2_2: f32, a3_: u32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = lib_clamp(a0_13, 0f, a2_2);
    let _e7 = lib_clamp(a1_7, 0f, a2_2);
    let _e8 = impl_trait_f32_floor(_e5);
    let _e9 = impl_trait_f32_floor(_e7);
    let _e10 = to_i32_(_e8);
    let _e11 = to_i32_(_e9);
    let _e14 = min_((_e8 + 1f), a2_2);
    let _e15 = to_i32_(_e14);
    let _e18 = min_((_e9 + 1f), a2_2);
    let _e19 = to_i32_(_e18);
    return FeLocal_fe_shader_private_layout_1_(((_e11 << a3_) | _e10), ((_e11 << a3_) | _e15), ((_e19 << a3_) | _e10), ((_e19 << a3_) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn to_vec(a0_14: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_14.f0_, a0_14.f1_, a0_14.f2_);
}

fn sub(a0_15: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_15.f0_ - a1_8.f0_), (a0_15.f1_ - a1_8.f1_), (a0_15.f2_ - a1_8.f2_));
}

fn mul(a0_16: FeLocal_fe_shader_private_layout_0_, a1_9: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_16.f0_ * a1_9), (a0_16.f1_ * a1_9), (a0_16.f2_ * a1_9));
}

fn impl_trait_Vec3_add_ge58b(a0_17: FeLocal_fe_shader_private_layout_0_, a1_10: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_17.f0_ + a1_10.f0_), (a0_17.f1_ + a1_10.f1_), (a0_17.f2_ + a1_10.f2_));
}

fn interpolate(a0_18: FeLocal_fe_shader_private_layout_0_, a1_11: FeLocal_fe_shader_private_layout_0_, a2_3: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = sub(a1_11, a0_18);
    let _e4 = mul(_e3, a2_3);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_18, _e4);
    return _e5;
}

fn from_vec(a0_19: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a0_19.f0_, a0_19.f1_, a0_19.f2_);
}

fn blend(a0_20: FeLocal_fe_shader_private_layout_2_, a1_12: FeLocal_fe_shader_private_layout_2_, a2_4: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = to_vec(a0_20);
    let _e4 = to_vec(a1_12);
    let _e5 = interpolate(_e3, _e4, a2_4);
    let _e6 = from_vec(_e5);
    return _e6;
}

fn blend_corners(a0_21: FeLocal_fe_shader_private_layout_2_, a1_13: FeLocal_fe_shader_private_layout_2_, a2_5: FeLocal_fe_shader_private_layout_2_, a3_1: FeLocal_fe_shader_private_layout_2_, a4_: f32, a5_: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e6 = blend(a0_21, a1_13, a4_);
    let _e7 = blend(a2_5, a3_1, a4_);
    let _e8 = blend(_e6, _e7, a5_);
    return _e8;
}

fn sample(a1_14: f32, a2_6: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e5 = bilinear_tap(a1_14, a2_6, 255f, 8u);
    let _e10 = blurred[i32(_e5.f0_)].l;
    let _e12 = blurred[i32(_e5.f0_)].a;
    let _e14 = blurred[i32(_e5.f0_)].b;
    let _e20 = blurred[i32(_e5.f1_)].l;
    let _e22 = blurred[i32(_e5.f1_)].a;
    let _e24 = blurred[i32(_e5.f1_)].b;
    let _e30 = blurred[i32(_e5.f2_)].l;
    let _e32 = blurred[i32(_e5.f2_)].a;
    let _e34 = blurred[i32(_e5.f2_)].b;
    let _e40 = blurred[i32(_e5.f3_)].l;
    let _e42 = blurred[i32(_e5.f3_)].a;
    let _e44 = blurred[i32(_e5.f3_)].b;
    let _e48 = blend_corners(FeLocal_fe_shader_private_layout_2_(_e10, _e12, _e14), FeLocal_fe_shader_private_layout_2_(_e20, _e22, _e24), FeLocal_fe_shader_private_layout_2_(_e30, _e32, _e34), FeLocal_fe_shader_private_layout_2_(_e40, _e42, _e44), _e5.f4_, _e5.f5_);
    return _e48;
}

fn lattice_tap(a0_22: u32, a1_15: u32, a2_7: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = from_i32_(a0_22);
    let _e5 = from_i32_(a1_15);
    let _e7 = to_i32_((_e4 / a2_7));
    let _e8 = from_i32_(_e7);
    let _e9 = (_e8 * a2_7);
    let _e11 = to_i32_((_e5 / a2_7));
    let _e12 = from_i32_(_e11);
    let _e13 = (_e12 * a2_7);
    let _e14 = to_i32_(_e9);
    let _e16 = (_e14 & 2047u);
    let _e17 = to_i32_(_e13);
    let _e19 = (_e17 & 2047u);
    let _e21 = min_((_e9 + a2_7), a3_2);
    let _e22 = to_i32_(_e21);
    let _e24 = (_e22 & 2047u);
    let _e26 = min_((_e13 + a2_7), a3_2);
    let _e27 = to_i32_(_e26);
    let _e29 = (_e27 & 2047u);
    return FeLocal_fe_shader_private_layout_1_(((_e19 << 11u) | _e16), ((_e19 << 11u) | _e24), ((_e29 << 11u) | _e16), ((_e29 << 11u) | _e24), ((_e4 - _e9) / a2_7), ((_e5 - _e13) / a2_7));
}

fn unpack_lab(a0_23: u32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = from_i32_((a0_23 & 4095u));
    let _e10 = from_i32_(((a0_23 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_23 >> 22u));
    return FeLocal_fe_shader_private_layout_2_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn sqrt_(a0_24: f32) -> f32 {
    return sqrt(a0_24);
}

fn srgb(a0_25: f32) -> f32 {
    var local_19: f32;
    var local_20: bool = false;

    let _e4 = lib_clamp(a0_25, 0f, 1f);
    if (_e4 <= 0.0031308f) {
        local_19 = (12.92f * _e4);
        local_20 = true;
    }
    let _e31 = local_20;
    if _e31 {
    } else {
        let _e12 = sqrt_(_e4);
        let _e13 = sqrt_(_e12);
        let _e14 = sqrt_(_e13);
        let _e28 = lib_clamp(((((0.6620027f * _e12) + (0.6841221f * _e13)) - (0.3235836f * _e14)) - (0.022541147f * _e4)), 0f, 1f);
        local_19 = _e28;
    }
    let _e33 = local_19;
    return _e33;
}

fn display_rgba(a0_26: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e9 = ((a0_26.f0_ + (0.39633778f * a0_26.f1_)) + (0.21580376f * a0_26.f2_));
    let _e18 = ((a0_26.f0_ - (0.105561346f * a0_26.f1_)) - (0.06385417f * a0_26.f2_));
    let _e27 = ((a0_26.f0_ - (0.08948418f * a0_26.f1_)) - (1.2914855f * a0_26.f2_));
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

@vertex
fn vs_fullscreen(@builtin(vertex_index) vi: u32) -> @builtin(position) vec4<f32> {
    return vec4<f32>((f32(((vi & 1u) << 2u)) - 1f), (f32(((vi & 2u) << 1u)) - 1f), 0f, 1f);
}

@fragment
fn fs_main(@builtin(position) pos: vec4<f32>) -> @location(0) vec4<f32> {
    var local: u32;
    var local_1: bool = false;
    var fixed_local_412_: FeLocal_fe_shader_private_layout_17_ = FeLocal_fe_shader_private_layout_17_();
    var local_2: bool = bool();
    var local_3: u32 = u32();

    let _e8 = u32(pos.x);
    let _e10 = u32(pos.y);
    let _e12 = input.p18_;
    let _e14 = input.p19_;
    let _e16 = input.p20_;
    let _e18 = input.p21_;
    let _e20 = input.p22_;
    let _e22 = input.p23_;
    let _e24 = input.p24_;
    let _e26 = input.p25_;
    let _e28 = input.p26_;
    let _e30 = input.p27_;
    let _e32 = input.p28_;
    let _e34 = input.p29_;
    let _e36 = input.p30_;
    let _e38 = input.p31_;
    let _e40 = input.p32_;
    let _e42 = input.p33_;
    let _e46 = input.p34_;
    let _e48 = input.p35_;
    let _e50 = input.p36_;
    let _e52 = input.p37_;
    let _e56 = input.p38_;
    let _e58 = input.p39_;
    let _e60 = input.p40_;
    let _e62 = input.p41_;
    let _e66 = input.p42_;
    let _e68 = input.p43_;
    let _e70 = input.p44_;
    let _e72 = input.p45_;
    let _e76 = input.p46_;
    let _e78 = input.p47_;
    let _e80 = input.p48_;
    let _e82 = input.p49_;
    let _e86 = input.p50_;
    let _e88 = input.p51_;
    let _e90 = input.p52_;
    let _e92 = input.p53_;
    let _e96 = input.p54_;
    let _e98 = input.p55_;
    let _e100 = input.p56_;
    let _e102 = input.p57_;
    let _e106 = input.p58_;
    let _e108 = input.p59_;
    let _e110 = input.p60_;
    let _e112 = input.p61_;
    let _e116 = input.p62_;
    let _e118 = input.p63_;
    let _e120 = input.p64_;
    let _e122 = input.p65_;
    let _e126 = input.p66_;
    let _e128 = input.p67_;
    let _e130 = input.p68_;
    let _e132 = input.p69_;
    let _e136 = input.p70_;
    let _e138 = input.p71_;
    let _e140 = input.p72_;
    let _e142 = input.p73_;
    let _e144 = input.p74_;
    let _e146 = input.p75_;
    let _e148 = input.p76_;
    let _e150 = input.p77_;
    let _e154 = input.p78_;
    let _e202 = index(FeLocal_fe_shader_private_layout_19_((_e8 & 2047u), (_e10 & 2047u)), 11u);
    let _e207 = cache[i32(0u)].epoch;
    let _e212 = reference[i32(0u)].active_;
    let _e214 = reference[i32(0u)].active_valid;
    let _e216 = reference[i32(0u)].pending;
    let _e218 = reference[i32(0u)].index;
    let _e220 = reference[i32(0u)].zx_s;
    let _e222 = reference[i32(0u)].zy_s;
    let _e224 = reference[i32(0u)].ready_at;
    fixed_local_412_ = FeLocal_fe_shader_private_layout_17_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e12, FeLocal_fe_shader_private_layout_6_(_e14, FeLocal_fe_shader_private_layout_5_(_e16, FeLocal_fe_shader_private_layout_4_(_e18))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e20, FeLocal_fe_shader_private_layout_6_(_e22, FeLocal_fe_shader_private_layout_5_(_e24, FeLocal_fe_shader_private_layout_4_(_e26)))))), _e28, _e30), _e32, _e34, _e36, _e38, _e40, FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_13_(array<FeLocal_fe_shader_private_layout_12_, 10>(FeLocal_fe_shader_private_layout_12_((_e42 != 0u), _e46, FeLocal_fe_shader_private_layout_11_(_e48, _e50)), FeLocal_fe_shader_private_layout_12_((_e52 != 0u), _e56, FeLocal_fe_shader_private_layout_11_(_e58, _e60)), FeLocal_fe_shader_private_layout_12_((_e62 != 0u), _e66, FeLocal_fe_shader_private_layout_11_(_e68, _e70)), FeLocal_fe_shader_private_layout_12_((_e72 != 0u), _e76, FeLocal_fe_shader_private_layout_11_(_e78, _e80)), FeLocal_fe_shader_private_layout_12_((_e82 != 0u), _e86, FeLocal_fe_shader_private_layout_11_(_e88, _e90)), FeLocal_fe_shader_private_layout_12_((_e92 != 0u), _e96, FeLocal_fe_shader_private_layout_11_(_e98, _e100)), FeLocal_fe_shader_private_layout_12_((_e102 != 0u), _e106, FeLocal_fe_shader_private_layout_11_(_e108, _e110)), FeLocal_fe_shader_private_layout_12_((_e112 != 0u), _e116, FeLocal_fe_shader_private_layout_11_(_e118, _e120)), FeLocal_fe_shader_private_layout_12_((_e122 != 0u), _e126, FeLocal_fe_shader_private_layout_11_(_e128, _e130)), FeLocal_fe_shader_private_layout_12_((_e132 != 0u), _e136, FeLocal_fe_shader_private_layout_11_(_e138, _e140)))), FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_11_(_e142, _e144), FeLocal_fe_shader_private_layout_11_(_e146, _e148))), FeLocal_fe_shader_private_layout_16_((_e150 != 0u), _e154));
    let _e228 = display_age(FeLocal_fe_shader_private_layout_3_(_e212, _e214, _e216, _e218, _e220, _e222, _e224), (&fixed_local_412_));
    let _e231 = progress(_e228, 200f, 1600f);
    let _e235 = progress_pixels[i32(_e202)].dz_re;
    let _e237 = progress_pixels[i32(_e202)].dz_im;
    let _e239 = progress_pixels[i32(_e202)].z_re;
    let _e241 = progress_pixels[i32(_e202)].z_im;
    let _e243 = progress_pixels[i32(_e202)].reference_i;
    let _e245 = progress_pixels[i32(_e202)].iteration;
    let _e247 = progress_pixels[i32(_e202)].epoch;
    let _e249 = progress_pixels[i32(_e202)].magnitude;
    let _e250 = FeLocal_fe_shader_private_layout_18_(_e235, _e237, _e239, _e241, _e243, _e245, _e247, _e249);
    let _e251 = is_presentable_in(_e250, _e207);
    if _e251 {
        let _e254 = antialiased_pixels[i32(_e202)];
        let _e255 = fade_started_at(_e250);
        let _e259 = progress((_e32 - _e255), 0f, 350f);
        let _e260 = (_e259 * _e231);
        if (1f <= _e260) {
            let _e263 = unpack_lab(_e254);
            let _e264 = display_rgba(_e263);
            local = _e264;
            local_1 = true;
        }
        let _e284 = local_1;
        if _e284 {
        } else {
            let _e268 = from_i32_(_e8);
            let _e272 = from_i32_(_e10);
            let _e276 = sample(((_e268 * 256f) / _e30), ((_e272 * 256f) / _e30));
            let _e277 = unpack_lab(_e254);
            let _e278 = blend(_e276, _e277, _e260);
            let _e279 = display_rgba(_e278);
            local = _e279;
            local_1 = true;
        }
    } else {
        let _e286 = from_i32_(_e8);
        let _e290 = from_i32_(_e10);
        let _e294 = sample(((_e286 * 256f) / _e30), ((_e290 * 256f) / _e30));
        let _e299 = to_i32_(((_e30 + 511f) / 512f));
        let _e300 = from_i32_(_e299);
        let _e303 = lattice_tap(_e8, _e10, _e300, (_e30 - 1f));
        let _e308 = progress_pixels[i32(_e303.f0_)].dz_re;
        let _e310 = progress_pixels[i32(_e303.f0_)].dz_im;
        let _e312 = progress_pixels[i32(_e303.f0_)].z_re;
        let _e314 = progress_pixels[i32(_e303.f0_)].z_im;
        let _e316 = progress_pixels[i32(_e303.f0_)].reference_i;
        let _e318 = progress_pixels[i32(_e303.f0_)].iteration;
        let _e320 = progress_pixels[i32(_e303.f0_)].epoch;
        let _e322 = progress_pixels[i32(_e303.f0_)].magnitude;
        let _e323 = FeLocal_fe_shader_private_layout_18_(_e308, _e310, _e312, _e314, _e316, _e318, _e320, _e322);
        let _e328 = progress_pixels[i32(_e303.f1_)].dz_re;
        let _e330 = progress_pixels[i32(_e303.f1_)].dz_im;
        let _e332 = progress_pixels[i32(_e303.f1_)].z_re;
        let _e334 = progress_pixels[i32(_e303.f1_)].z_im;
        let _e336 = progress_pixels[i32(_e303.f1_)].reference_i;
        let _e338 = progress_pixels[i32(_e303.f1_)].iteration;
        let _e340 = progress_pixels[i32(_e303.f1_)].epoch;
        let _e342 = progress_pixels[i32(_e303.f1_)].magnitude;
        let _e343 = FeLocal_fe_shader_private_layout_18_(_e328, _e330, _e332, _e334, _e336, _e338, _e340, _e342);
        let _e348 = progress_pixels[i32(_e303.f2_)].dz_re;
        let _e350 = progress_pixels[i32(_e303.f2_)].dz_im;
        let _e352 = progress_pixels[i32(_e303.f2_)].z_re;
        let _e354 = progress_pixels[i32(_e303.f2_)].z_im;
        let _e356 = progress_pixels[i32(_e303.f2_)].reference_i;
        let _e358 = progress_pixels[i32(_e303.f2_)].iteration;
        let _e360 = progress_pixels[i32(_e303.f2_)].epoch;
        let _e362 = progress_pixels[i32(_e303.f2_)].magnitude;
        let _e363 = FeLocal_fe_shader_private_layout_18_(_e348, _e350, _e352, _e354, _e356, _e358, _e360, _e362);
        let _e368 = progress_pixels[i32(_e303.f3_)].dz_re;
        let _e370 = progress_pixels[i32(_e303.f3_)].dz_im;
        let _e372 = progress_pixels[i32(_e303.f3_)].z_re;
        let _e374 = progress_pixels[i32(_e303.f3_)].z_im;
        let _e376 = progress_pixels[i32(_e303.f3_)].reference_i;
        let _e378 = progress_pixels[i32(_e303.f3_)].iteration;
        let _e380 = progress_pixels[i32(_e303.f3_)].epoch;
        let _e382 = progress_pixels[i32(_e303.f3_)].magnitude;
        let _e383 = FeLocal_fe_shader_private_layout_18_(_e368, _e370, _e372, _e374, _e376, _e378, _e380, _e382);
        let _e384 = is_presentable_in(_e323, _e207);
        if _e384 {
            let _e385 = is_presentable_in(_e343, _e207);
            if _e385 {
                let _e386 = is_presentable_in(_e363, _e207);
                if _e386 {
                    let _e387 = is_presentable_in(_e383, _e207);
                    if _e387 {
                        local_2 = true;
                    }
                }
            }
        }
        let _e392 = local_2;
        if _e392 {
            let _e396 = native_pixels[i32(_e303.f0_)];
            let _e397 = unpack_lab(_e396);
            let _e401 = native_pixels[i32(_e303.f1_)];
            let _e402 = unpack_lab(_e401);
            let _e406 = native_pixels[i32(_e303.f2_)];
            let _e407 = unpack_lab(_e406);
            let _e411 = native_pixels[i32(_e303.f3_)];
            let _e412 = unpack_lab(_e411);
            let _e415 = blend_corners(_e397, _e402, _e407, _e412, _e303.f4_, _e303.f5_);
            let _e416 = fade_started_at(_e323);
            let _e417 = fade_started_at(_e343);
            let _e418 = max_(_e416, _e417);
            let _e419 = fade_started_at(_e363);
            let _e420 = fade_started_at(_e383);
            let _e421 = max_(_e419, _e420);
            let _e422 = max_(_e418, _e421);
            let _e426 = progress((_e32 - _e422), 0f, 350f);
            let _e428 = blend(_e294, _e415, (_e426 * _e231));
            let _e429 = display_rgba(_e428);
            local_3 = _e429;
        } else {
            let _e430 = display_rgba(_e294);
            local_3 = _e430;
        }
        let _e434 = local_3;
        local = _e434;
        local_1 = true;
    }
    let _e439 = local;
    return unpack4x8unorm(_e439);
}
