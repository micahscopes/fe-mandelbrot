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

struct FeLocal_fe_shader_private_layout_19_ {
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

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_22_ {
    f0_: bool,
    f1_: bool,
    f2_: f32,
    f3_: f32,
    f4_: f32,
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

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: f32,
    f5_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

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

struct FeLocal_fe_shader_private_layout_21_ {
    f0_: FeLocal_fe_shader_private_layout_20_,
    f1_: FeLocal_fe_shader_private_layout_20_,
}

struct FeLocal_fe_shader_private_layout_23_ {
    f0_: FeLocal_fe_shader_private_layout_10_,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
    f9_: FeLocal_fe_shader_private_layout_21_,
}

struct FeLocal_fe_shader_private_layout_24_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
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

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
}

struct initial_pixels_element {
    l: f32,
    a: f32,
    b: f32,
}

struct preview_progress_element {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct preview_cache_element {
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
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history_u002e_full_u002e_re: f32,
    history_u002e_full_u002e_im: f32,
    history_u002e_initial_u002e_re: f32,
    history_u002e_initial_u002e_im: f32,
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
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(1)
var<storage, read_write> initial_pixels: array<initial_pixels_element>;
@group(0) @binding(2)
var<storage, read_write> preview_progress: array<preview_progress_element>;
@group(0) @binding(3)
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(4)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(5)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 65536>;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn lib_image_max(a0_2: f32, a1_: f32) -> f32 {
    var local_15: f32;
    var local_16: bool = false;
    var local_17: f32 = f32();

    if (a1_ < a0_2) {
        local_17 = a0_2;
    } else {
        local_17 = a1_;
    }
    let _e8 = local_17;
    return _e8;
}

fn reproject_coarse_pixel(a0_3: ptr<function, FeLocal_fe_shader_private_layout_17_>, a1_1: FeLocal_fe_shader_private_layout_19_, a2_: FeLocal_fe_shader_private_layout_19_, a3_: FeLocal_fe_shader_private_layout_21_, a4_: u32, a5_: u32) -> FeLocal_fe_shader_private_layout_22_ {
    var local_18: FeLocal_fe_shader_private_layout_22_;
    var local_19: bool = false;
    var local_20: bool = bool();
    var local_21: FeLocal_fe_shader_private_layout_22_;
    var local_22: bool = false;
    var local_23: FeLocal_fe_shader_private_layout_19_ = FeLocal_fe_shader_private_layout_19_();
    var local_24: FeLocal_fe_shader_private_layout_22_;
    var local_25: bool = false;
    var local_26: FeLocal_fe_shader_private_layout_20_ = FeLocal_fe_shader_private_layout_20_();
    var local_27: FeLocal_fe_shader_private_layout_22_;
    var local_28: bool = false;
    var local_29: bool = bool();

    if (a1_1.f8_ == 1u) {
        if ((a1_1.f7_ < a2_.f7_) == false) {
            local_20 = true;
        }
    }
    let _e21 = local_20;
    if _e21 {
        local_23 = a1_1;
    } else {
        local_23 = a2_;
    }
    let _e27 = local_23;
    if _e21 {
        local_26 = a3_.f0_;
    } else {
        local_26 = a3_.f1_;
    }
    let _e35 = local_26;
    let _e36 = from_i32_(a4_);
    let _e43 = (*a0_3).f0_.f2_;
    let _e47 = from_i32_(a5_);
    let _e54 = (*a0_3).f0_.f2_;
    let _e61 = lib_image_max(_e27.f0_.f1_, 0.000000000000000000000000001f);
    let _e65 = (*a0_3).f0_.f1_;
    let _e77 = ((((((_e35.f0_ + (((((_e36 + 0.5f) * 2f) / _e43) - 1f) * _e65)) / _e61) + 1f) * _e27.f0_.f2_) * 0.5f) - 0.5f);
    let _e81 = (*a0_3).f0_.f1_;
    let _e93 = ((((1f - ((_e35.f1_ + ((1f - (((_e47 + 0.5f) * 2f) / _e54)) * _e81)) / _e61)) * _e27.f0_.f2_) * 0.5f) - 0.5f);
    if (_e27.f8_ == 1u) {
        if (0f <= _e77) {
            if (0f <= _e93) {
                if (_e77 < (_e27.f0_.f2_ - 1f)) {
                    if (_e93 < (_e27.f0_.f2_ - 1f)) {
                        local_29 = true;
                    }
                }
            }
        }
    }
    let _e114 = local_29;
    return FeLocal_fe_shader_private_layout_22_(_e21, _e114, _e77, _e93, _e27.f0_.f2_);
}

fn lib_clamp(a0_4: f32, a1_2: f32, a2_1: f32) -> f32 {
    var local_30: f32;
    var local_31: bool = false;
    var local_32: f32 = f32();

    if (a0_4 < a1_2) {
        local_32 = a1_2;
    } else {
        if (a2_1 < a0_4) {
            local_32 = a2_1;
        } else {
            local_32 = a0_4;
        }
    }
    let _e11 = local_32;
    return _e11;
}

fn impl_trait_f32_floor(a0_5: f32) -> f32 {
    return floor(a0_5);
}

fn min_(a0_6: f32, a1_3: f32) -> f32 {
    var local_33: f32;
    var local_34: bool = false;
    var local_35: f32 = f32();

    if (a0_6 < a1_3) {
        local_35 = a0_6;
    } else {
        local_35 = a1_3;
    }
    let _e8 = local_35;
    return _e8;
}

fn bilinear_tap(a0_7: f32, a1_4: f32, a2_2: f32, a3_1: u32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e5 = lib_clamp(a0_7, 0f, a2_2);
    let _e7 = lib_clamp(a1_4, 0f, a2_2);
    let _e8 = impl_trait_f32_floor(_e5);
    let _e9 = impl_trait_f32_floor(_e7);
    let _e10 = to_i32_(_e8);
    let _e11 = to_i32_(_e9);
    let _e14 = min_((_e8 + 1f), a2_2);
    let _e15 = to_i32_(_e14);
    let _e18 = min_((_e9 + 1f), a2_2);
    let _e19 = to_i32_(_e18);
    return FeLocal_fe_shader_private_layout_2_(((_e11 << a3_1) | _e10), ((_e11 << a3_1) | _e15), ((_e19 << a3_1) | _e10), ((_e19 << a3_1) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn unpack_lab(a0_8: u32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e3 = from_i32_((a0_8 & 4095u));
    let _e10 = from_i32_(((a0_8 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_8 >> 22u));
    return FeLocal_fe_shader_private_layout_3_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn to_vec(a0_9: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_9.f0_, a0_9.f1_, a0_9.f2_);
}

fn sub(a0_10: FeLocal_fe_shader_private_layout_0_, a1_5: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_10.f0_ - a1_5.f0_), (a0_10.f1_ - a1_5.f1_), (a0_10.f2_ - a1_5.f2_));
}

fn mul(a0_11: FeLocal_fe_shader_private_layout_0_, a1_6: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_11.f0_ * a1_6), (a0_11.f1_ * a1_6), (a0_11.f2_ * a1_6));
}

fn impl_trait_Vec3_add_ge58b(a0_12: FeLocal_fe_shader_private_layout_0_, a1_7: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_12.f0_ + a1_7.f0_), (a0_12.f1_ + a1_7.f1_), (a0_12.f2_ + a1_7.f2_));
}

fn interpolate_g8d60_(a0_13: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_, a2_3: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = sub(a1_8, a0_13);
    let _e4 = mul(_e3, a2_3);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_13, _e4);
    return _e5;
}

fn from_vec(a0_14: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_14.f0_, a0_14.f1_, a0_14.f2_);
}

fn blend(a0_15: FeLocal_fe_shader_private_layout_3_, a1_9: FeLocal_fe_shader_private_layout_3_, a2_4: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e3 = to_vec(a0_15);
    let _e4 = to_vec(a1_9);
    let _e5 = interpolate_g8d60_(_e3, _e4, a2_4);
    let _e6 = from_vec(_e5);
    return _e6;
}

fn blend_corners(a0_16: FeLocal_fe_shader_private_layout_3_, a1_10: FeLocal_fe_shader_private_layout_3_, a2_5: FeLocal_fe_shader_private_layout_3_, a3_2: FeLocal_fe_shader_private_layout_3_, a4_1: f32, a5_1: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e6 = blend(a0_16, a1_10, a4_1);
    let _e7 = blend(a2_5, a3_2, a4_1);
    let _e8 = blend(_e6, _e7, a5_1);
    return _e8;
}

fn sample_snapshot(a1_11: f32, a2_6: f32, a3_3: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e7 = bilinear_tap(a1_11, a2_6, (a3_3 - 1f), 11u);
    let _e11 = snapshot_pixels[i32(_e7.f0_)];
    let _e12 = unpack_lab(_e11);
    let _e16 = snapshot_pixels[i32(_e7.f1_)];
    let _e17 = unpack_lab(_e16);
    let _e21 = snapshot_pixels[i32(_e7.f2_)];
    let _e22 = unpack_lab(_e21);
    let _e26 = snapshot_pixels[i32(_e7.f3_)];
    let _e27 = unpack_lab(_e26);
    let _e30 = blend_corners(_e12, _e17, _e22, _e27, _e7.f4_, _e7.f5_);
    return _e30;
}

fn impl_trait_f32_max(a0_17: f32, a1_12: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_17);
    let _e3 = bitcast<u32>(a1_12);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn sample(a1_13: f32, a2_7: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e5 = bilinear_tap(a1_13, a2_7, 255f, 8u);
    let _e10 = initial_pixels[i32(_e5.f0_)].l;
    let _e12 = initial_pixels[i32(_e5.f0_)].a;
    let _e14 = initial_pixels[i32(_e5.f0_)].b;
    let _e20 = initial_pixels[i32(_e5.f1_)].l;
    let _e22 = initial_pixels[i32(_e5.f1_)].a;
    let _e24 = initial_pixels[i32(_e5.f1_)].b;
    let _e30 = initial_pixels[i32(_e5.f2_)].l;
    let _e32 = initial_pixels[i32(_e5.f2_)].a;
    let _e34 = initial_pixels[i32(_e5.f2_)].b;
    let _e40 = initial_pixels[i32(_e5.f3_)].l;
    let _e42 = initial_pixels[i32(_e5.f3_)].a;
    let _e44 = initial_pixels[i32(_e5.f3_)].b;
    let _e48 = blend_corners(FeLocal_fe_shader_private_layout_3_(_e10, _e12, _e14), FeLocal_fe_shader_private_layout_3_(_e20, _e22, _e24), FeLocal_fe_shader_private_layout_3_(_e30, _e32, _e34), FeLocal_fe_shader_private_layout_3_(_e40, _e42, _e44), _e5.f4_, _e5.f5_);
    return _e48;
}

fn is_input_settled(a0_18: ptr<function, FeLocal_fe_shader_private_layout_17_>) -> bool {
    var local_36: bool;
    var local_37: bool = false;
    var local_38: bool = bool();

    let _e4 = (*a0_18).f4_;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_18).f1_;
        let _e10 = (*a0_18).f2_;
        if (60f <= (_e8 - _e10)) {
            local_38 = true;
        }
    }
    let _e17 = local_38;
    return _e17;
}

fn progress_is_glitched(a0_19: u32) -> bool {
    return (((a0_19 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_20: FeLocal_fe_shader_private_layout_18_) -> bool {
    let _e2 = progress_is_glitched(a0_20.f4_);
    return _e2;
}

fn progress_is_escaped(a0_21: u32) -> bool {
    return (((a0_21 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_22: FeLocal_fe_shader_private_layout_18_) -> bool {
    let _e2 = progress_is_escaped(a0_22.f4_);
    return _e2;
}

fn pack_lab(a0_23: FeLocal_fe_shader_private_layout_3_) -> u32 {
    let _e4 = lib_clamp(a0_23.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = lib_clamp(((a0_23.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = lib_clamp(((a0_23.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_3_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn fract_(a0_24: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_24);
    return (a0_24 - _e1);
}

fn anchor(a0_25: u32) -> FeLocal_fe_shader_private_layout_1_ {
    var local_39: FeLocal_fe_shader_private_layout_1_;
    var local_40: bool = false;
    var local_41: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    switch a0_25 {
        case 0u: {
            local_41 = FeLocal_fe_shader_private_layout_1_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_41 = FeLocal_fe_shader_private_layout_1_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_41 = FeLocal_fe_shader_private_layout_1_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_41 = FeLocal_fe_shader_private_layout_1_(0.73f, 0.142f, 165f);
        }
        default: {
            local_41 = FeLocal_fe_shader_private_layout_1_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_41;
    return _e29;
}

fn impl_Oklch_interpolate(a0_26: FeLocal_fe_shader_private_layout_1_, a1_14: FeLocal_fe_shader_private_layout_1_, a2_8: f32) -> FeLocal_fe_shader_private_layout_1_ {
    var local_42: FeLocal_fe_shader_private_layout_1_;
    var local_43: bool = false;
    var local_44: f32 = f32();

    let _e7 = (a1_14.f2_ - a0_26.f2_);
    if (540f < _e7) {
        let _e14 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
        let _e17 = (_e7 - (360f * _e14));
        if (_e17 == -180f) {
            if (0f < _e7) {
                local_44 = 180f;
            } else {
                local_44 = _e17;
            }
        } else {
            local_44 = _e17;
        }
    } else {
        if (_e7 < -540f) {
            let _e32 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
            let _e35 = (_e7 - (360f * _e32));
            if (_e35 == -180f) {
                if (0f < _e7) {
                    local_44 = 180f;
                } else {
                    local_44 = _e35;
                }
            } else {
                local_44 = _e35;
            }
        } else {
            if (180f < _e7) {
                local_44 = (_e7 - 360f);
            } else {
                if (_e7 < -180f) {
                    local_44 = (_e7 + 360f);
                } else {
                    local_44 = _e7;
                }
            }
        }
    }
    let _e56 = local_44;
    return FeLocal_fe_shader_private_layout_1_((a0_26.f0_ + ((a1_14.f0_ - a0_26.f0_) * a2_8)), (a0_26.f1_ + ((a1_14.f1_ - a0_26.f1_) * a2_8)), (a0_26.f2_ + (_e56 * a2_8)));
}

fn wrap_pi(a0_27: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_27 / 6.2831855f) + 0.5f));
    return (a0_27 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_28: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_28) & 2147483647u));
}

fn sin_(a0_29: f32) -> f32 {
    let _e1 = wrap_pi(a0_29);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_30: f32) -> f32 {
    let _e3 = sin_((a0_30 + 1.5707964f));
    return _e3;
}

fn to_color(a0_31: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e3 = (a0_31.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_3_(a0_31.f0_, (a0_31.f1_ * _e6), (a0_31.f1_ * _e9));
}

fn escape_palette(a0_32: u32, a1_15: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_45: u32;
    var local_46: bool = false;
    var local_47: u32 = u32();

    let _e5 = from_i32_(a0_32);
    let _e11 = fract_(((_e5 + (4f / a1_15)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_1) = true;
        } else {
            local_47 = _e29;
        }
    }
    let _e38 = local_47;
    let _e39 = anchor(_e38);
    let _e40 = impl_Oklch_interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_3_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_33: FeLocal_fe_shader_private_layout_18_, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_48: u32;
    var local_49: bool = false;
    var local_50: u32 = u32();

    let _e4 = is_glitched(a0_33);
    if _e4 {
        let _e5 = glitch();
        local_50 = _e5;
    } else {
        let _e6 = is_escaped(a0_33);
        if _e6 {
            let _e9 = escape_palette(a0_33.f5_, a0_33.f7_, fe_trapped_2);
            local_50 = _e9;
        } else {
            let _e10 = interior();
            local_50 = _e10;
        }
    }
    let _e15 = local_50;
    return _e15;
}

fn input_age(a0_34: ptr<function, FeLocal_fe_shader_private_layout_17_>) -> f32 {
    var local_51: f32;
    var local_52: bool = false;
    var local_53: f32 = f32();

    let _e4 = (*a0_34).f4_;
    if (0.5f <= _e4) {
    } else {
        let _e8 = (*a0_34).f1_;
        let _e10 = (*a0_34).f2_;
        local_53 = (_e8 - _e10);
    }
    let _e14 = local_53;
    return _e14;
}

fn progress(a0_35: f32, a1_16: f32, a2_9: f32) -> f32 {
    let _e7 = lib_clamp(((a0_35 - a1_16) / a2_9), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn impl_trait_Color_default() -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_();
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32;
    var local_5: bool = false;
    var local_6: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_807_: FeLocal_fe_shader_private_layout_17_ = FeLocal_fe_shader_private_layout_17_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: bool = bool();
    var fixed_local_863_: FeLocal_fe_shader_private_layout_17_ = FeLocal_fe_shader_private_layout_17_();
    var local_10: u32;
    var local_11: bool = false;
    var local_12: bool = bool();
    var local_13: bool = bool();
    var local_14: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_1121_: FeLocal_fe_shader_private_layout_17_ = FeLocal_fe_shader_private_layout_17_();

    let _e12 = params.p29_;
    let _e14 = params.p30_;
    let _e16 = params.p31_;
    let _e18 = params.p32_;
    let _e20 = params.p33_;
    let _e22 = params.p34_;
    let _e24 = params.p35_;
    let _e26 = params.p36_;
    let _e28 = params.p37_;
    let _e30 = params.p38_;
    let _e32 = params.p39_;
    let _e34 = params.p40_;
    let _e36 = params.p41_;
    let _e38 = params.p42_;
    let _e40 = params.p43_;
    let _e42 = params.p44_;
    let _e46 = params.p45_;
    let _e48 = params.p46_;
    let _e50 = params.p47_;
    let _e52 = params.p48_;
    let _e56 = params.p49_;
    let _e58 = params.p50_;
    let _e60 = params.p51_;
    let _e62 = params.p52_;
    let _e66 = params.p53_;
    let _e68 = params.p54_;
    let _e70 = params.p55_;
    let _e72 = params.p56_;
    let _e76 = params.p57_;
    let _e78 = params.p58_;
    let _e80 = params.p59_;
    let _e82 = params.p60_;
    let _e86 = params.p61_;
    let _e88 = params.p62_;
    let _e90 = params.p63_;
    let _e92 = params.p64_;
    let _e96 = params.p65_;
    let _e98 = params.p66_;
    let _e100 = params.p67_;
    let _e102 = params.p68_;
    let _e106 = params.p69_;
    let _e108 = params.p70_;
    let _e110 = params.p71_;
    let _e112 = params.p72_;
    let _e116 = params.p73_;
    let _e118 = params.p74_;
    let _e120 = params.p75_;
    let _e122 = params.p76_;
    let _e126 = params.p77_;
    let _e128 = params.p78_;
    let _e130 = params.p79_;
    let _e132 = params.p80_;
    let _e136 = params.p81_;
    let _e138 = params.p82_;
    let _e140 = params.p83_;
    let _e142 = params.p84_;
    let _e144 = params.p85_;
    let _e146 = params.p86_;
    let _e148 = params.p87_;
    let _e150 = params.p88_;
    let _e154 = params.p89_;
    let _e160 = cache[i32(0u)].preview_dirty;
    if (_e160 == 0u) {
        local_1 = true;
    }
    let _e498 = local_1;
    if _e498 {
    } else {
        let _e170 = preview_cache[i32(0u)].prefix_only;
        let _e172 = preview_cache[i32(0u)].step_target;
        let _e174 = preview_cache[i32(0u)].budget;
        let _e176 = preview_cache[i32(0u)].epoch;
        let _e178 = preview_cache[i32(0u)].history_u002e_full_u002e_re;
        let _e180 = preview_cache[i32(0u)].history_u002e_full_u002e_im;
        let _e182 = preview_cache[i32(0u)].history_u002e_initial_u002e_re;
        let _e184 = preview_cache[i32(0u)].history_u002e_initial_u002e_im;
        if (_e172 == 0u) {
            local_3 = true;
        }
        let _e496 = local_3;
        if _e496 {
        } else {
            let _e233 = FeLocal_fe_shader_private_layout_17_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e12, FeLocal_fe_shader_private_layout_6_(_e14, FeLocal_fe_shader_private_layout_5_(_e16, FeLocal_fe_shader_private_layout_4_(_e18))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e20, FeLocal_fe_shader_private_layout_6_(_e22, FeLocal_fe_shader_private_layout_5_(_e24, FeLocal_fe_shader_private_layout_4_(_e26)))))), _e28, _e30), _e32, _e34, _e36, _e38, _e40, FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_13_(array<FeLocal_fe_shader_private_layout_12_, 10>(FeLocal_fe_shader_private_layout_12_((_e42 != 0u), _e46, FeLocal_fe_shader_private_layout_11_(_e48, _e50)), FeLocal_fe_shader_private_layout_12_((_e52 != 0u), _e56, FeLocal_fe_shader_private_layout_11_(_e58, _e60)), FeLocal_fe_shader_private_layout_12_((_e62 != 0u), _e66, FeLocal_fe_shader_private_layout_11_(_e68, _e70)), FeLocal_fe_shader_private_layout_12_((_e72 != 0u), _e76, FeLocal_fe_shader_private_layout_11_(_e78, _e80)), FeLocal_fe_shader_private_layout_12_((_e82 != 0u), _e86, FeLocal_fe_shader_private_layout_11_(_e88, _e90)), FeLocal_fe_shader_private_layout_12_((_e92 != 0u), _e96, FeLocal_fe_shader_private_layout_11_(_e98, _e100)), FeLocal_fe_shader_private_layout_12_((_e102 != 0u), _e106, FeLocal_fe_shader_private_layout_11_(_e108, _e110)), FeLocal_fe_shader_private_layout_12_((_e112 != 0u), _e116, FeLocal_fe_shader_private_layout_11_(_e118, _e120)), FeLocal_fe_shader_private_layout_12_((_e122 != 0u), _e126, FeLocal_fe_shader_private_layout_11_(_e128, _e130)), FeLocal_fe_shader_private_layout_12_((_e132 != 0u), _e136, FeLocal_fe_shader_private_layout_11_(_e138, _e140)))), FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_11_(_e142, _e144), FeLocal_fe_shader_private_layout_11_(_e146, _e148))), FeLocal_fe_shader_private_layout_16_((_e150 != 0u), _e154));
            let _e236 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
            let _e237 = from_i32_(global_invocation_id.x);
            let _e241 = to_i32_(((_e237 * _e30) / 256f));
            let _e242 = from_i32_(global_invocation_id.y);
            let _e246 = to_i32_(((_e242 * _e30) / 256f));
            let _e251 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
            let _e253 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
            let _e255 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e257 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e259 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
            let _e261 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
            let _e263 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e265 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e267 = cache[i32(1u)].camera_u002e_zoom;
            let _e269 = cache[i32(1u)].camera_u002e_res;
            let _e271 = cache[i32(1u)].cursor;
            let _e273 = cache[i32(1u)].aa;
            let _e275 = cache[i32(1u)].budget;
            let _e277 = cache[i32(1u)].radius;
            let _e279 = cache[i32(1u)].preview_dirty;
            let _e281 = cache[i32(1u)].blur_dirty;
            let _e283 = cache[i32(1u)].epoch;
            let _e285 = cache[i32(1u)].completed;
            let _e303 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
            let _e305 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
            let _e307 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e309 = cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e311 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
            let _e313 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
            let _e315 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
            let _e317 = cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
            let _e319 = cache[i32(2u)].camera_u002e_zoom;
            let _e321 = cache[i32(2u)].camera_u002e_res;
            let _e323 = cache[i32(2u)].cursor;
            let _e325 = cache[i32(2u)].aa;
            let _e327 = cache[i32(2u)].budget;
            let _e329 = cache[i32(2u)].radius;
            let _e331 = cache[i32(2u)].preview_dirty;
            let _e333 = cache[i32(2u)].blur_dirty;
            let _e335 = cache[i32(2u)].epoch;
            let _e337 = cache[i32(2u)].completed;
            fixed_local_807_ = _e233;
            let _e353 = reproject_coarse_pixel((&fixed_local_807_), FeLocal_fe_shader_private_layout_19_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e251, FeLocal_fe_shader_private_layout_6_(_e253, FeLocal_fe_shader_private_layout_5_(_e255, FeLocal_fe_shader_private_layout_4_(_e257))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e259, FeLocal_fe_shader_private_layout_6_(_e261, FeLocal_fe_shader_private_layout_5_(_e263, FeLocal_fe_shader_private_layout_4_(_e265)))))), _e267, _e269), _e271, _e273, _e275, _e277, _e279, _e281, _e283, _e285), FeLocal_fe_shader_private_layout_19_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e303, FeLocal_fe_shader_private_layout_6_(_e305, FeLocal_fe_shader_private_layout_5_(_e307, FeLocal_fe_shader_private_layout_4_(_e309))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e311, FeLocal_fe_shader_private_layout_6_(_e313, FeLocal_fe_shader_private_layout_5_(_e315, FeLocal_fe_shader_private_layout_4_(_e317)))))), _e319, _e321), _e323, _e325, _e327, _e329, _e331, _e333, _e335, _e337), FeLocal_fe_shader_private_layout_21_(FeLocal_fe_shader_private_layout_20_(_e178, _e180), FeLocal_fe_shader_private_layout_20_(_e182, _e184)), _e241, _e246);
            if _e353.f0_ {
                let _e358 = sample_snapshot(_e353.f2_, _e353.f3_, _e353.f4_);
                local_6 = _e358;
            } else {
                let _e361 = impl_trait_f32_max(_e353.f4_, 1f);
                let _e363 = (256f / _e361);
                let _e368 = sample((_e353.f2_ * _e363), (_e353.f3_ * _e363));
                local_6 = _e368;
            }
            let _e374 = local_6;
            if _e353.f1_ {
                fixed_local_863_ = _e233;
                let _e378 = is_input_settled((&fixed_local_863_));
                local_9 = (_e378 == false);
            }
            let _e384 = local_9;
            if _e384 {
                pixels[i32(_e236)].l = _e374.f0_;
                pixels[i32(_e236)].a = _e374.f1_;
                pixels[i32(_e236)].b = _e374.f2_;
            } else {
                let _e397 = preview_progress[i32(_e236)].dz_re;
                let _e399 = preview_progress[i32(_e236)].dz_im;
                let _e401 = preview_progress[i32(_e236)].z_re;
                let _e403 = preview_progress[i32(_e236)].z_im;
                let _e405 = preview_progress[i32(_e236)].reference_i;
                let _e407 = preview_progress[i32(_e236)].iteration;
                let _e409 = preview_progress[i32(_e236)].epoch;
                let _e411 = preview_progress[i32(_e236)].magnitude;
                let _e412 = FeLocal_fe_shader_private_layout_18_(_e397, _e399, _e401, _e403, _e405, _e407, _e409, _e411);
                if (_e409 == _e176) {
                    let _e414 = is_escaped(_e412);
                    if _e414 {
                        let _e415 = is_glitched(_e412);
                        if _e415 {
                        } else {
                            local_12 = true;
                        }
                    }
                }
                let _e420 = local_12;
                if (_e409 == _e176) {
                    let _e422 = is_escaped(_e412);
                    if _e422 {
                    } else {
                        let _e423 = is_glitched(_e412);
                        if _e423 {
                        } else {
                            if (_e170 == 0u) {
                                if (_e407 < _e174) {
                                } else {
                                    local_13 = true;
                                }
                            }
                        }
                    }
                }
                let _e430 = local_13;
                if (_e420 | _e430) {
                    let _e433 = progress_color(_e412, (&fe_trapped));
                    let _e434 = unpack_lab(_e433);
                    if _e353.f1_ {
                        fixed_local_1121_ = _e233;
                        let _e438 = input_age((&fixed_local_1121_));
                        let _e441 = progress(_e438, 60f, 300f);
                        let _e442 = blend(_e374, _e434, _e441);
                        local_14 = _e442;
                    } else {
                        local_14 = _e434;
                    }
                    let _e446 = local_14;
                    pixels[i32(_e236)].l = _e446.f0_;
                    pixels[i32(_e236)].a = _e446.f1_;
                    pixels[i32(_e236)].b = _e446.f2_;
                } else {
                    if _e353.f1_ {
                        pixels[i32(_e236)].l = _e374.f0_;
                        pixels[i32(_e236)].a = _e374.f1_;
                        pixels[i32(_e236)].b = _e374.f2_;
                    } else {
                        if (_e170 == 0u) {
                            let _e466 = is_glitched(_e412);
                            if _e466 {
                                let _e467 = interior();
                                let _e468 = unpack_lab(_e467);
                                pixels[i32(_e236)].l = _e468.f0_;
                                pixels[i32(_e236)].a = _e468.f1_;
                                pixels[i32(_e236)].b = _e468.f2_;
                            } else {
                                let _e477 = impl_trait_Color_default();
                                pixels[i32(_e236)].l = _e477.f0_;
                                pixels[i32(_e236)].a = _e477.f1_;
                                pixels[i32(_e236)].b = _e477.f2_;
                            }
                        } else {
                            let _e486 = impl_trait_Color_default();
                            pixels[i32(_e236)].l = _e486.f0_;
                            pixels[i32(_e236)].a = _e486.f1_;
                            pixels[i32(_e236)].b = _e486.f2_;
                        }
                    }
                }
            }
        }
    }
    let _e509 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e509);
}
