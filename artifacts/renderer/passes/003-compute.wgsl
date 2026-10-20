struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: f32,
    f5_: f32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_2_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: FeLocal_fe_shader_private_layout_3_,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_8_ {
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

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
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

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct orbit_element {
    re_w0_bits: u32,
    re_w1_bits: u32,
    re_w2_bits: u32,
    re_w3_bits: u32,
    im_w0_bits: u32,
    im_w1_bits: u32,
    im_w2_bits: u32,
    im_w3_bits: u32,
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
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(2)
var<storage, read_write> initial_pixels: array<initial_pixels_element>;
@group(0) @binding(3)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(4)
var<storage, read_write> reference: array<reference_element>;
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

fn delta_from(a0_2: FeLocal_fe_shader_private_layout_10_, a1_: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_11_ {
    return FeLocal_fe_shader_private_layout_11_((((a1_.f0_ - a0_2.f0_) + (a1_.f1_ - a0_2.f1_)) + ((a1_.f2_ - a0_2.f2_) + (a1_.f3_ - a0_2.f3_))), (((a1_.f4_ - a0_2.f4_) + (a1_.f5_ - a0_2.f5_)) + ((a1_.f6_ - a0_2.f6_) + (a1_.f7_ - a0_2.f7_))));
}

fn impl_trait_f32_max(a0_3: f32, a1_1: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_3);
    let _e3 = bitcast<u32>(a1_1);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn lib_clamp(a0_4: f32, a1_2: f32, a2_: f32) -> f32 {
    var local_23: f32;
    var local_24: bool = false;
    var local_25: f32 = f32();

    if (a0_4 < a1_2) {
        local_25 = a1_2;
    } else {
        if (a2_ < a0_4) {
            local_25 = a2_;
        } else {
            local_25 = a0_4;
        }
    }
    let _e11 = local_25;
    return _e11;
}

fn impl_trait_f32_floor(a0_5: f32) -> f32 {
    return floor(a0_5);
}

fn min_(a0_6: f32, a1_3: f32) -> f32 {
    var local_26: f32;
    var local_27: bool = false;
    var local_28: f32 = f32();

    if (a0_6 < a1_3) {
        local_28 = a0_6;
    } else {
        local_28 = a1_3;
    }
    let _e8 = local_28;
    return _e8;
}

fn bilinear_tap(a0_7: f32, a1_4: f32, a2_1: f32, a3_: u32) -> FeLocal_fe_shader_private_layout_6_ {
    let _e5 = lib_clamp(a0_7, 0f, a2_1);
    let _e7 = lib_clamp(a1_4, 0f, a2_1);
    let _e8 = impl_trait_f32_floor(_e5);
    let _e9 = impl_trait_f32_floor(_e7);
    let _e10 = to_i32_(_e8);
    let _e11 = to_i32_(_e9);
    let _e14 = min_((_e8 + 1f), a2_1);
    let _e15 = to_i32_(_e14);
    let _e18 = min_((_e9 + 1f), a2_1);
    let _e19 = to_i32_(_e18);
    return FeLocal_fe_shader_private_layout_6_(((_e11 << a3_) | _e10), ((_e11 << a3_) | _e15), ((_e19 << a3_) | _e10), ((_e19 << a3_) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn unpack_lab(a0_8: u32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e3 = from_i32_((a0_8 & 4095u));
    let _e10 = from_i32_(((a0_8 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_8 >> 22u));
    return FeLocal_fe_shader_private_layout_7_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn mix_(a0_9: f32, a1_5: f32, a2_2: f32) -> f32 {
    return (a0_9 + ((a1_5 - a0_9) * a2_2));
}

fn blend(a0_10: FeLocal_fe_shader_private_layout_7_, a1_6: FeLocal_fe_shader_private_layout_7_, a2_3: f32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = mix_(a0_10.f0_, a1_6.f0_, a2_3);
    let _e8 = mix_(a0_10.f1_, a1_6.f1_, a2_3);
    let _e11 = mix_(a0_10.f2_, a1_6.f2_, a2_3);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e8, _e11);
}

fn blend_corners(a0_11: FeLocal_fe_shader_private_layout_7_, a1_7: FeLocal_fe_shader_private_layout_7_, a2_4: FeLocal_fe_shader_private_layout_7_, a3_1: FeLocal_fe_shader_private_layout_7_, a4_: f32, a5_: f32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e6 = blend(a0_11, a1_7, a4_);
    let _e7 = blend(a2_4, a3_1, a4_);
    let _e8 = blend(_e6, _e7, a5_);
    return _e8;
}

fn sample_snapshot(a1_8: f32, a2_5: f32, a3_2: f32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e7 = bilinear_tap(a1_8, a2_5, (a3_2 - 1f), 11u);
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

fn sample(a1_9: f32, a2_6: f32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = bilinear_tap(a1_9, a2_6, 255f, 8u);
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
    let _e48 = blend_corners(FeLocal_fe_shader_private_layout_7_(_e10, _e12, _e14), FeLocal_fe_shader_private_layout_7_(_e20, _e22, _e24), FeLocal_fe_shader_private_layout_7_(_e30, _e32, _e34), FeLocal_fe_shader_private_layout_7_(_e40, _e42, _e44), _e5.f4_, _e5.f5_);
    return _e48;
}

fn display_age(a0_12: FeLocal_fe_shader_private_layout_12_, a1_10: FeLocal_fe_shader_private_layout_8_) -> f32 {
    var local_29: f32;
    var local_30: bool = false;
    var local_31: f32 = f32();

    if (0.5f <= a1_10.f13_) {
    } else {
        if (a0_12.f2_ == 1u) {
        } else {
            let _e13 = impl_trait_f32_max(a1_10.f11_, a0_12.f6_);
            let _e16 = impl_trait_f32_max(0f, (a1_10.f10_ - _e13));
            local_31 = _e16;
        }
    }
    let _e19 = local_31;
    return _e19;
}

fn progress(a0_13: f32, a1_11: f32, a2_7: f32) -> f32 {
    let _e7 = lib_clamp(((a0_13 - a1_11) / a2_7), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn from_quad(a0_14: f32, a1_12: f32, a2_8: f32, a3_3: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_14, FeLocal_fe_shader_private_layout_2_(a1_12, FeLocal_fe_shader_private_layout_1_(a2_8, FeLocal_fe_shader_private_layout_0_(a3_3))));
}

fn camera(a0_15: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e5 = from_quad(a0_15.f0_, a0_15.f1_, a0_15.f2_, a0_15.f3_);
    let _e10 = from_quad(a0_15.f4_, a0_15.f5_, a0_15.f6_, a0_15.f7_);
    return FeLocal_fe_shader_private_layout_9_(_e5, _e10, a0_15.f8_, a0_15.f9_);
}

fn ordered_2x2_(a0_16: u32, a1_13: u32) -> FeLocal_fe_shader_private_layout_14_ {
    let _e6 = from_i32_(a0_16);
    let _e9 = from_i32_((a0_16 & 1u));
    let _e13 = from_i32_(a1_13);
    let _e16 = from_i32_((a1_13 & 1u));
    return FeLocal_fe_shader_private_layout_14_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn iteration_limit(a0_17: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_32: u32 = u32();
    var local_33: f32 = f32();
    var local_34: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_35: u32 = u32();
    var local_36: f32 = f32();
    var local_37: u32;
    var local_38: bool = false;
    var local_39: u32 = u32();

    local_32 = 0u;
    local_33 = a0_17;
    local_34 = 0u;
    loop {
        let _e12 = local_32;
        let _e14 = local_33;
        let _e16 = local_34;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_35 = (_e12 + 1u);
                    local_36 = (_e14 * 2f);
                }
            } else {
                local_35 = _e12;
                local_36 = _e14;
            }
            let _e36 = local_35;
            let _e38 = local_36;
            local_32 = _e36;
            local_33 = _e38;
            local_34 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_32;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_39 = 8192u;
        } else {
            local_39 = _e60;
        }
        let _e71 = local_39;
        local_37 = _e71;
        local_38 = true;
    }
    let _e77 = local_38;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_37;
    return _e79;
}

fn plane(a0_18: FeLocal_fe_shader_private_layout_14_, a1_14: f32) -> FeLocal_fe_shader_private_layout_15_ {
    return FeLocal_fe_shader_private_layout_15_((((a0_18.f0_ / a1_14) * 2f) - 1f), (1f - ((a0_18.f1_ / a1_14) * 2f)));
}

fn re_expansion(a0_19: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_19.f0_), bitcast<f32>(a0_19.f1_), bitcast<f32>(a0_19.f2_), bitcast<f32>(a0_19.f3_));
    return _e9;
}

fn impl_trait_Last_negate(a0_20: f32) -> f32 {
    return -(a0_20);
}

fn negate_ge630_(a0_21: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_21.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_21.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_22: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_22.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_22.f0_), _e4);
}

fn negate_ga905_(a0_23: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_23.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_23.f0_), _e4);
}

fn precision_lib_two_sum_34a0_(a0_24: f32, a1_15: f32) -> FeLocal_fe_shader_private_layout_11_ {
    let _e2 = (a0_24 + a1_15);
    let _e3 = (_e2 - a0_24);
    return FeLocal_fe_shader_private_layout_11_(_e2, ((a0_24 - (_e2 - _e3)) + (a1_15 - _e3)));
}

fn impl_trait_Last_add_corr(a0_25: f32, a1_16: f32, a2_9: f32) -> f32 {
    return ((a2_9 + a0_25) + a1_16);
}

fn add_corr_ge630_(a0_26: FeLocal_fe_shader_private_layout_1_, a1_17: FeLocal_fe_shader_private_layout_1_, a2_10: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_26.f0_, a2_10);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_17.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_26.f1_.f0_, a1_17.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_27: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_27.f0_;
}

fn with_head_ge630_(a0_28: FeLocal_fe_shader_private_layout_1_, a1_18: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_18, FeLocal_fe_shader_private_layout_0_(a0_28.f1_.f0_));
}

fn add_corr_g4419_(a0_29: FeLocal_fe_shader_private_layout_2_, a1_19: FeLocal_fe_shader_private_layout_2_, a2_11: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_29.f0_, a2_11);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_19.f0_);
    let _e14 = add_corr_ge630_(a0_29.f1_, a1_19.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_30: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_30.f0_;
}

fn with_head_g4419_(a0_31: FeLocal_fe_shader_private_layout_2_, a1_20: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_20, a0_31.f1_);
}

fn add_corr_ga905_(a0_32: FeLocal_fe_shader_private_layout_3_, a1_21: FeLocal_fe_shader_private_layout_3_, a2_12: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_32.f0_, a2_12);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_21.f0_);
    let _e14 = add_corr_g4419_(a0_32.f1_, a1_21.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_33: FeLocal_fe_shader_private_layout_3_, a1_22: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_22);
    let _e4 = add_corr_ga905_(a0_33, _e2, 0f);
    return _e4;
}

fn im_expansion(a0_34: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_34.f4_), bitcast<f32>(a0_34.f5_), bitcast<f32>(a0_34.f6_), bitcast<f32>(a0_34.f7_));
    return _e9;
}

fn to_quad(a0_35: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_16_ {
    return FeLocal_fe_shader_private_layout_16_(a0_35.f0_, a0_35.f1_.f0_, a0_35.f1_.f1_.f0_, a0_35.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_36: f32, a1_23: f32, a2_13: f32, a3_4: f32, a4_1: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_36, a4_1);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_23);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_13);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_4);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn pixel_delta_from_reference(a1_24: u32, a2_14: FeLocal_fe_shader_private_layout_9_, a3_5: FeLocal_fe_shader_private_layout_14_, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_11_ {
    var local_40: FeLocal_fe_shader_private_layout_11_;
    var local_41: bool = false;

    let _e7 = plane(a3_5, a2_14.f3_);
    if (a1_24 > (4294967295u - 8193u)) {
        (*fe_trapped_2) = true;
    }
    let _e17 = orbit[i32((a1_24 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_24 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_24 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_24 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_24 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_24 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_24 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_24 + 8193u))].im_w3_bits;
    let _e32 = FeLocal_fe_shader_private_layout_13_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31);
    let _e34 = re_expansion(_e32);
    let _e35 = sub(a2_14.f0_, _e34);
    let _e37 = im_expansion(_e32);
    let _e38 = sub(a2_14.f1_, _e37);
    let _e39 = to_quad(_e35);
    let _e44 = to_quad(_e38);
    let _e52 = reference_plus_delta(_e39.f0_, _e39.f1_, _e39.f2_, _e39.f3_, (_e7.f0_ * a2_14.f2_));
    let _e56 = reference_plus_delta(_e44.f0_, _e44.f1_, _e44.f2_, _e44.f3_, (_e7.f1_ * a2_14.f2_));
    return FeLocal_fe_shader_private_layout_11_(_e52, _e56);
}

fn empty_progress(a0_37: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_37, 4f);
}

fn is_glitched(a0_38: FeLocal_fe_shader_private_layout_4_) -> bool {
    return (((a0_38.f4_ & 1073741824u) == 0u) == false);
}

fn invalid_reference(a0_39: FeLocal_fe_shader_private_layout_13_) -> bool {
    var local_42: bool;
    var local_43: bool = false;
    var local_44: bool = bool();

    if (a0_39.f0_ == 2143289344u) {
        local_44 = true;
    } else {
        if (a0_39.f4_ == 2143289344u) {
            local_44 = true;
        }
    }
    let _e14 = local_44;
    return _e14;
}

fn non_finite(a0_40: f32) -> bool {
    return (((a0_40 - a0_40) == 0f) == false);
}

fn impl_trait_f32_abs(a0_41: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_41) & 2147483647u));
}

fn reference_index(a0_42: FeLocal_fe_shader_private_layout_4_) -> u32 {
    return (a0_42.f4_ & 536870911u);
}

fn is_escaped(a0_43: FeLocal_fe_shader_private_layout_4_) -> bool {
    return (((a0_43.f4_ & 2147483648u) == 0u) == false);
}

fn advance_progress(a1_25: u32, a2_15: f32, a3_6: f32, a4_2: u32, a5_1: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_45: FeLocal_fe_shader_private_layout_4_;
    var local_46: bool = false;
    var local_47: u32 = u32();
    var local_48: u32 = u32();
    var local_49: u32 = u32();
    var local_50: f32 = f32();
    var local_51: f32 = f32();
    var local_52: f32 = f32();
    var local_53: f32 = f32();
    var local_54: f32 = f32();
    var local_55: u32 = u32();
    var local_56: u32 = u32();
    var local_57: u32 = u32();
    var local_58: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_113_: bool;
    var local_59: f32 = f32();
    var local_60: f32 = f32();
    var local_61: u32 = u32();
    var local_62: f32 = f32();
    var local_63: f32 = f32();
    var local_64: f32 = f32();
    var local_65: f32 = f32();
    var local_66: f32 = f32();
    var local_67: u32 = u32();
    var local_68: u32 = u32();
    var local_69: u32 = u32();
    var local_70: bool = bool();

    if (a1_25 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_25 + 8194u))].re_w0_bits;
        let _e23 = reference_index(a6_);
        let _e24 = is_escaped(a6_);
        if _e24 {
            local_47 = 1u;
        }
        let _e29 = local_47;
        let _e30 = is_glitched(a6_);
        if _e30 {
            local_48 = 1u;
        }
        let _e34 = local_48;
        local_49 = 0u;
        local_50 = a6_.f7_;
        local_51 = a6_.f3_;
        local_52 = a6_.f2_;
        local_53 = a6_.f1_;
        local_54 = a6_.f0_;
        local_55 = _e34;
        local_56 = _e23;
        local_57 = _e29;
        local_58 = a6_.f5_;
        loop {
            let _e60 = local_49;
            let _e62 = local_50;
            let _e64 = local_51;
            let _e66 = local_52;
            let _e68 = local_53;
            let _e70 = local_54;
            let _e72 = local_55;
            let _e74 = local_56;
            let _e76 = local_57;
            let _e78 = local_58;
            let _e79 = (_e78 < a4_2);
            loop_header_carry_113_ = _e79;
            if _e79 {
                if (_e60 < a5_1) {
                    if (_e76 == 0u) {
                        if (_e72 == 0u) {
                        } else {
                            loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                            loop_did_return_1 = true;
                            break;
                        }
                        if (_e74 > (4294967295u - 1u)) {
                        } else {
                            if (((_e74 + 1u) < _e18) == false) {
                                local_59 = _e64;
                                local_60 = _e66;
                                local_61 = 0u;
                            } else {
                                local_59 = _e68;
                                local_60 = _e70;
                                local_61 = _e74;
                            }
                            let _e115 = local_59;
                            let _e117 = local_60;
                            let _e119 = local_61;
                            if (a1_25 > (4294967295u - _e119)) {
                            } else {
                                let _e127 = orbit[i32((a1_25 + _e119))].re_w0_bits;
                                let _e129 = orbit[i32((a1_25 + _e119))].re_w1_bits;
                                let _e131 = orbit[i32((a1_25 + _e119))].re_w2_bits;
                                let _e133 = orbit[i32((a1_25 + _e119))].re_w3_bits;
                                let _e135 = orbit[i32((a1_25 + _e119))].im_w0_bits;
                                let _e137 = orbit[i32((a1_25 + _e119))].im_w1_bits;
                                let _e139 = orbit[i32((a1_25 + _e119))].im_w2_bits;
                                let _e141 = orbit[i32((a1_25 + _e119))].im_w3_bits;
                                let _e144 = (a1_25 + _e119);
                                if (a1_25 > (4294967295u - _e119)) {
                                } else {
                                    if (_e144 > (4294967295u - 1u)) {
                                    } else {
                                        let _e163 = orbit[i32((_e144 + 1u))].re_w0_bits;
                                        let _e165 = orbit[i32((_e144 + 1u))].re_w1_bits;
                                        let _e167 = orbit[i32((_e144 + 1u))].re_w2_bits;
                                        let _e169 = orbit[i32((_e144 + 1u))].re_w3_bits;
                                        let _e171 = orbit[i32((_e144 + 1u))].im_w0_bits;
                                        let _e173 = orbit[i32((_e144 + 1u))].im_w1_bits;
                                        let _e175 = orbit[i32((_e144 + 1u))].im_w2_bits;
                                        let _e177 = orbit[i32((_e144 + 1u))].im_w3_bits;
                                        let _e179 = invalid_reference(FeLocal_fe_shader_private_layout_13_(_e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141));
                                        if _e179 {
                                            local_62 = _e62;
                                            local_63 = _e64;
                                            local_64 = _e66;
                                            local_65 = _e115;
                                            local_66 = _e117;
                                            local_67 = 1u;
                                            local_68 = _e119;
                                            local_69 = _e76;
                                        } else {
                                            let _e180 = invalid_reference(FeLocal_fe_shader_private_layout_13_(_e163, _e165, _e167, _e169, _e171, _e173, _e175, _e177));
                                            if _e180 {
                                                local_62 = _e62;
                                                local_63 = _e64;
                                                local_64 = _e66;
                                                local_65 = _e115;
                                                local_66 = _e117;
                                                local_67 = 1u;
                                                local_68 = _e119;
                                                local_69 = _e76;
                                            } else {
                                                let _e182 = bitcast<f32>(_e127);
                                                let _e183 = bitcast<f32>(_e129);
                                                let _e184 = bitcast<f32>(_e131);
                                                let _e185 = bitcast<f32>(_e133);
                                                let _e186 = bitcast<f32>(_e135);
                                                let _e187 = bitcast<f32>(_e137);
                                                let _e188 = bitcast<f32>(_e139);
                                                let _e189 = bitcast<f32>(_e141);
                                                let _e235 = ((((2f * ((_e182 * _e117) - (_e186 * _e115))) + (2f * ((((((_e183 * _e117) - (_e187 * _e115)) + (_e184 * _e117)) - (_e188 * _e115)) + (_e185 * _e117)) - (_e189 * _e115)))) + ((_e117 * _e117) - (_e115 * _e115))) + a2_15);
                                                let _e245 = ((((2f * ((_e182 * _e115) + (_e186 * _e117))) + (2f * ((((((_e183 * _e115) + (_e187 * _e117)) + (_e184 * _e115)) + (_e188 * _e117)) + (_e185 * _e115)) + (_e189 * _e117)))) + ((2f * _e117) * _e115)) + a3_6);
                                                let _e246 = reference_plus_delta(bitcast<f32>(_e163), bitcast<f32>(_e165), bitcast<f32>(_e167), bitcast<f32>(_e169), _e235);
                                                let _e247 = reference_plus_delta(bitcast<f32>(_e171), bitcast<f32>(_e173), bitcast<f32>(_e175), bitcast<f32>(_e177), _e245);
                                                let _e250 = ((_e246 * _e246) + (_e247 * _e247));
                                                if (4f < _e250) {
                                                    let _e259 = impl_trait_f32_abs((_e250 - 4f));
                                                    let _e261 = impl_trait_f32_max(1f, _e250);
                                                    if (_e259 <= (0.000004f * _e261)) {
                                                        local_70 = true;
                                                    } else {
                                                        local_70 = false;
                                                    }
                                                } else {
                                                    local_70 = false;
                                                }
                                                let _e272 = local_70;
                                                let _e273 = non_finite(_e235);
                                                if _e273 {
                                                    local_62 = _e62;
                                                    local_63 = _e64;
                                                    local_64 = _e66;
                                                    local_65 = _e115;
                                                    local_66 = _e117;
                                                    local_67 = 1u;
                                                    local_68 = _e119;
                                                    local_69 = _e76;
                                                } else {
                                                    let _e274 = non_finite(_e245);
                                                    if _e274 {
                                                        local_62 = _e62;
                                                        local_63 = _e64;
                                                        local_64 = _e66;
                                                        local_65 = _e115;
                                                        local_66 = _e117;
                                                        local_67 = 1u;
                                                        local_68 = _e119;
                                                        local_69 = _e76;
                                                    } else {
                                                        let _e275 = non_finite(_e250);
                                                        if (_e275 | _e272) {
                                                            local_62 = _e62;
                                                            local_63 = _e64;
                                                            local_64 = _e66;
                                                            local_65 = _e115;
                                                            local_66 = _e117;
                                                            local_67 = 1u;
                                                            local_68 = _e119;
                                                            local_69 = _e76;
                                                        } else {
                                                            if (4f < _e250) {
                                                                local_62 = _e250;
                                                                local_63 = _e247;
                                                                local_64 = _e246;
                                                                local_65 = _e245;
                                                                local_66 = _e235;
                                                                local_67 = _e72;
                                                                local_68 = _e119;
                                                                local_69 = 1u;
                                                            } else {
                                                                if (_e250 < ((_e235 * _e235) + (_e245 * _e245))) {
                                                                    local_62 = _e62;
                                                                    local_63 = _e247;
                                                                    local_64 = _e246;
                                                                    local_65 = _e247;
                                                                    local_66 = _e246;
                                                                    local_67 = _e72;
                                                                    local_68 = 0u;
                                                                    local_69 = _e76;
                                                                } else {
                                                                    if (_e119 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_3) = true;
                                                                        break;
                                                                    } else {
                                                                        local_62 = _e62;
                                                                        local_63 = _e247;
                                                                        local_64 = _e246;
                                                                        local_65 = _e245;
                                                                        local_66 = _e235;
                                                                        local_67 = _e72;
                                                                        local_68 = (_e119 + 1u);
                                                                        local_69 = _e76;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e357 = local_62;
                                        let _e359 = local_63;
                                        let _e361 = local_64;
                                        let _e363 = local_65;
                                        let _e365 = local_66;
                                        let _e367 = local_67;
                                        let _e369 = local_68;
                                        let _e371 = local_69;
                                        local_49 = (_e60 + 1u);
                                        local_50 = _e357;
                                        local_51 = _e359;
                                        local_52 = _e361;
                                        local_53 = _e363;
                                        local_54 = _e365;
                                        local_55 = _e367;
                                        local_56 = _e369;
                                        local_57 = _e371;
                                        local_58 = (_e78 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_3) = true;
                        break;
                    } else {
                        loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                        loop_did_return_1 = true;
                        break;
                    }
                } else {
                    loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                    loop_did_return_1 = true;
                    break;
                }
            } else {
                loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e70, _e68, _e66, _e64, ((_e74 | (_e76 << 31u)) | (_e72 << 30u)), _e78, a6_.f6_, _e62);
                loop_did_return_1 = true;
                break;
            }
        }
        let _e422 = loop_did_return_1;
        if _e422 {
            let _e424 = loop_result_1;
            local_45 = _e424;
            local_46 = true;
        }
    }
    let _e430 = local_46;
    if _e430 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e432 = local_45;
    return _e432;
}

fn sample_progress(a1_26: u32, a2_16: FeLocal_fe_shader_private_layout_9_, a3_7: FeLocal_fe_shader_private_layout_14_, a4_3: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_71: FeLocal_fe_shader_private_layout_4_;
    var local_72: bool = false;
    var local_73: FeLocal_fe_shader_private_layout_4_;
    var local_74: bool = false;
    var local_75: u32 = u32();

    let _e7 = pixel_delta_from_reference(a1_26, a2_16, a3_7, fe_trapped_4);
    if (a1_26 > (4294967295u - 8194u)) {
        (*fe_trapped_4) = true;
    }
    let _e21 = orbit[i32((a1_26 + 8194u))].re_w1_bits;
    if (a4_3 < _e21) {
        local_75 = a4_3;
    } else {
        local_75 = _e21;
    }
    let _e26 = local_75;
    let _e28 = empty_progress(0u);
    let _e29 = advance_progress(a1_26, _e7.f0_, _e7.f1_, _e26, _e26, _e28, fe_trapped_4);
    return _e29;
}

fn pack_lab(a0_44: FeLocal_fe_shader_private_layout_7_) -> u32 {
    let _e4 = lib_clamp(a0_44.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = lib_clamp(((a0_44.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = lib_clamp(((a0_44.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_7_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn fract_(a0_45: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_45);
    return (a0_45 - _e1);
}

fn anchor(a0_46: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_76: FeLocal_fe_shader_private_layout_5_;
    var local_77: bool = false;
    var local_78: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_46 {
        case 0u: {
            local_78 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_78 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_78 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_78 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_78 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_78;
    return _e29;
}

fn interpolate(a0_47: FeLocal_fe_shader_private_layout_5_, a1_27: FeLocal_fe_shader_private_layout_5_, a2_17: f32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_79: FeLocal_fe_shader_private_layout_5_;
    var local_80: bool = false;
    var local_81: f32 = f32();

    let _e7 = (a1_27.f2_ - a0_47.f2_);
    if (180f < _e7) {
        local_81 = (_e7 - 360f);
    } else {
        if (_e7 < -180f) {
            local_81 = (_e7 + 360f);
        } else {
            local_81 = _e7;
        }
    }
    let _e20 = local_81;
    return FeLocal_fe_shader_private_layout_5_((a0_47.f0_ + ((a1_27.f0_ - a0_47.f0_) * a2_17)), (a0_47.f1_ + ((a1_27.f1_ - a0_47.f1_) * a2_17)), (a0_47.f2_ + (_e20 * a2_17)));
}

fn wrap_pi(a0_48: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_48 / 6.2831855f) + 0.5f));
    return (a0_48 - (6.2831855f * _e5));
}

fn sin_(a0_49: f32) -> f32 {
    let _e1 = wrap_pi(a0_49);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_50: f32) -> f32 {
    let _e3 = sin_((a0_50 + 1.5707964f));
    return _e3;
}

fn to_color(a0_51: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e3 = (a0_51.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_7_(a0_51.f0_, (a0_51.f1_ * _e6), (a0_51.f1_ * _e9));
}

fn escape_palette(a0_52: u32, a1_28: f32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_82: u32;
    var local_83: bool = false;
    var local_84: u32 = u32();

    let _e5 = from_i32_(a0_52);
    let _e11 = fract_(((_e5 + (4f / a1_28)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_5) = true;
        } else {
            local_84 = _e29;
        }
    }
    let _e38 = local_84;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_7_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_53: FeLocal_fe_shader_private_layout_4_, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_85: u32;
    var local_86: bool = false;
    var local_87: u32 = u32();

    let _e4 = is_glitched(a0_53);
    if _e4 {
        let _e5 = glitch();
        local_87 = _e5;
    } else {
        let _e6 = is_escaped(a0_53);
        if _e6 {
            let _e9 = escape_palette(a0_53.f5_, a0_53.f7_, fe_trapped_6);
            local_87 = _e9;
        } else {
            let _e10 = interior();
            local_87 = _e10;
        }
    }
    let _e15 = local_87;
    return _e15;
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
    var local_6: bool = bool();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: FeLocal_fe_shader_private_layout_10_ = FeLocal_fe_shader_private_layout_10_();
    var local_10: u32;
    var local_11: bool = false;
    var local_12: bool = bool();
    var local_13: u32;
    var local_14: bool = false;
    var local_15: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var local_16: u32;
    var local_17: bool = false;
    var local_18: u32;
    var local_19: bool = false;
    var local_20: u32;
    var local_21: bool = false;
    var local_22: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();

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
    let _e41 = FeLocal_fe_shader_private_layout_8_(_e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39);
    let _e46 = reference[i32(0u)].active_;
    let _e48 = reference[i32(0u)].active_valid;
    let _e50 = reference[i32(0u)].pending;
    let _e52 = reference[i32(0u)].index;
    let _e54 = reference[i32(0u)].zx_s;
    let _e56 = reference[i32(0u)].zy_s;
    let _e58 = reference[i32(0u)].ready_at;
    if (_e48 == 0u) {
        local_1 = true;
    }
    let _e331 = local_1;
    if _e331 {
    } else {
        let _e69 = cache[i32(0u)].preview_dirty;
        if (_e69 == 0u) {
            local_3 = true;
        }
        let _e329 = local_3;
        if _e329 {
        } else {
            let _e76 = from_i32_(global_invocation_id.x);
            let _e80 = to_i32_(((_e76 * _e29) / 256f));
            let _e81 = from_i32_(global_invocation_id.y);
            let _e85 = to_i32_(((_e81 * _e29) / 256f));
            let _e90 = cache[i32(1u)].x0_;
            let _e92 = cache[i32(1u)].x1_;
            let _e94 = cache[i32(1u)].x2_;
            let _e96 = cache[i32(1u)].x3_;
            let _e98 = cache[i32(1u)].y0_;
            let _e100 = cache[i32(1u)].y1_;
            let _e102 = cache[i32(1u)].y2_;
            let _e104 = cache[i32(1u)].y3_;
            let _e106 = cache[i32(1u)].zoom;
            let _e108 = cache[i32(1u)].res;
            let _e110 = cache[i32(1u)].cursor;
            let _e112 = cache[i32(1u)].aa;
            let _e114 = cache[i32(1u)].budget;
            let _e116 = cache[i32(1u)].radius;
            let _e118 = cache[i32(1u)].preview_dirty;
            let _e120 = cache[i32(1u)].blur_dirty;
            let _e122 = cache[i32(1u)].epoch;
            let _e124 = cache[i32(1u)].completed;
            let _e130 = cache[i32(2u)].x0_;
            let _e132 = cache[i32(2u)].x1_;
            let _e134 = cache[i32(2u)].x2_;
            let _e136 = cache[i32(2u)].x3_;
            let _e138 = cache[i32(2u)].y0_;
            let _e140 = cache[i32(2u)].y1_;
            let _e142 = cache[i32(2u)].y2_;
            let _e144 = cache[i32(2u)].y3_;
            let _e146 = cache[i32(2u)].zoom;
            let _e148 = cache[i32(2u)].res;
            let _e150 = cache[i32(2u)].cursor;
            let _e152 = cache[i32(2u)].aa;
            let _e154 = cache[i32(2u)].budget;
            let _e156 = cache[i32(2u)].radius;
            let _e158 = cache[i32(2u)].preview_dirty;
            let _e160 = cache[i32(2u)].blur_dirty;
            let _e162 = cache[i32(2u)].epoch;
            let _e164 = cache[i32(2u)].completed;
            if (_e124 == 1u) {
                if (_e122 < _e162) {
                } else {
                    local_6 = true;
                }
            }
            let _e174 = local_6;
            if _e174 {
                local_9 = FeLocal_fe_shader_private_layout_10_(_e90, _e92, _e94, _e96, _e98, _e100, _e102, _e104, _e106, _e108, _e110, _e112, _e114, _e116, _e118, _e120, _e122, _e124);
            } else {
                local_9 = FeLocal_fe_shader_private_layout_10_(_e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148, _e150, _e152, _e154, _e156, _e158, _e160, _e162, _e164);
            }
            let _e180 = local_9;
            let _e181 = delta_from(_e180, _e41);
            let _e184 = from_i32_(_e80);
            let _e192 = from_i32_(_e85);
            let _e204 = impl_trait_f32_max(_e180.f8_, 0.000000000000000000000000001f);
            let _e213 = ((((((_e181.f0_ + (((((_e184 + 0.5f) * 2f) / _e29) - 1f) * _e27)) / _e204) + 1f) * _e180.f9_) * 0.5f) - 0.5f);
            let _e218 = impl_trait_f32_max(_e180.f8_, 0.000000000000000000000000001f);
            let _e227 = ((((1f - ((_e181.f1_ + ((1f - (((_e192 + 0.5f) * 2f) / _e29)) * _e27)) / _e218)) * _e180.f9_) * 0.5f) - 0.5f);
            if (_e180.f17_ == 1u) {
                if (0f <= _e213) {
                    if (0f <= _e227) {
                        if (_e213 < (_e180.f9_ - 1f)) {
                            if (_e227 < (_e180.f9_ - 1f)) {
                                local_12 = true;
                            }
                        }
                    }
                }
            }
            let _e248 = local_12;
            if _e174 {
                let _e250 = sample_snapshot(_e213, _e227, _e180.f9_);
                local_15 = _e250;
            } else {
                let _e255 = impl_trait_f32_max(_e180.f9_, 1f);
                let _e261 = impl_trait_f32_max(_e180.f9_, 1f);
                let _e263 = sample(((_e213 * 256f) / _e255), ((_e227 * 256f) / _e261));
                local_15 = _e263;
            }
            let _e268 = local_15;
            let _e269 = display_age(FeLocal_fe_shader_private_layout_12_(_e46, _e48, _e50, _e52, _e54, _e56, _e58), _e41);
            if _e248 {
                if (_e269 < 60f) {
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e268.f0_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e268.f1_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e268.f2_;
                    local_17 = true;
                }
                let _e286 = local_17;
                if _e286 {
                }
            }
            let _e327 = local_17;
            if _e327 {
            } else {
                let _e293 = (_e46 != 0u);
                if (_e293 && (8195u > (4294967295u / select(1u, _e46, _e293)))) {
                    fe_trapped = true;
                }
                let _e301 = camera(_e41);
                let _e302 = ordered_2x2_(_e80, _e85);
                let _e303 = iteration_limit(_e27, (&fe_trapped));
                let _e304 = sample_progress((_e46 * 8195u), _e301, _e302, _e303, (&fe_trapped));
                let _e305 = progress_color(_e304, (&fe_trapped));
                let _e306 = unpack_lab(_e305);
                if _e248 {
                    let _e309 = progress(_e269, 60f, 300f);
                    let _e310 = blend(_e268, _e306, _e309);
                    local_22 = _e310;
                } else {
                    local_22 = _e306;
                }
                let _e314 = local_22;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e314.f0_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e314.f1_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e314.f2_;
            }
        }
    }
    let _e342 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e342);
}
