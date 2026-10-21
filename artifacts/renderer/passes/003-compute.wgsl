struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_2_,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: FeLocal_fe_shader_private_layout_4_,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: f32,
    f5_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
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
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
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

struct FeLocal_fe_shader_private_layout_21_ {
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

fn from_quad(a0_2: f32, a1_: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(a0_2, FeLocal_fe_shader_private_layout_3_(a1_, FeLocal_fe_shader_private_layout_2_(a2_, FeLocal_fe_shader_private_layout_1_(a3_))));
}

fn impl_ViewCache_center(a0_3: FeLocal_fe_shader_private_layout_13_) -> FeLocal_fe_shader_private_layout_11_ {
    let _e5 = from_quad(a0_3.f0_, a0_3.f1_, a0_3.f2_, a0_3.f3_);
    let _e10 = from_quad(a0_3.f4_, a0_3.f5_, a0_3.f6_, a0_3.f7_);
    return FeLocal_fe_shader_private_layout_11_(_e5, _e10);
}

fn impl_MandelbrotViewState_center(a0_4: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_11_ {
    let _e5 = from_quad(a0_4.f0_, a0_4.f1_, a0_4.f2_, a0_4.f3_);
    let _e10 = from_quad(a0_4.f4_, a0_4.f5_, a0_4.f6_, a0_4.f7_);
    return FeLocal_fe_shader_private_layout_11_(_e5, _e10);
}

fn to_quad(a0_5: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_19_ {
    return FeLocal_fe_shader_private_layout_19_(a0_5.f0_, a0_5.f1_.f0_, a0_5.f1_.f1_.f0_, a0_5.f1_.f1_.f1_.f0_);
}

fn expansion_delta(a0_6: FeLocal_fe_shader_private_layout_4_, a1_1: FeLocal_fe_shader_private_layout_4_) -> f32 {
    let _e2 = to_quad(a0_6);
    let _e7 = to_quad(a1_1);
    return (((_e7.f0_ - _e2.f0_) + (_e7.f1_ - _e2.f1_)) + ((_e7.f2_ - _e2.f2_) + (_e7.f3_ - _e2.f3_)));
}

fn center_delta(a0_7: FeLocal_fe_shader_private_layout_11_, a1_2: FeLocal_fe_shader_private_layout_11_) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = expansion_delta(a0_7.f0_, a1_2.f0_);
    let _e7 = expansion_delta(a0_7.f1_, a1_2.f1_);
    return FeLocal_fe_shader_private_layout_5_(_e4, _e7);
}

fn delta_from(a0_8: FeLocal_fe_shader_private_layout_13_, a1_3: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_5_ {
    let _e2 = impl_ViewCache_center(a0_8);
    let _e3 = impl_MandelbrotViewState_center(a1_3);
    let _e4 = center_delta(_e2, _e3);
    return _e4;
}

fn impl_trait_f32_max(a0_9: f32, a1_4: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_9);
    let _e3 = bitcast<u32>(a1_4);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn lib_clamp(a0_10: f32, a1_5: f32, a2_1: f32) -> f32 {
    var local_23: f32;
    var local_24: bool = false;
    var local_25: f32 = f32();

    if (a0_10 < a1_5) {
        local_25 = a1_5;
    } else {
        if (a2_1 < a0_10) {
            local_25 = a2_1;
        } else {
            local_25 = a0_10;
        }
    }
    let _e11 = local_25;
    return _e11;
}

fn impl_trait_f32_floor(a0_11: f32) -> f32 {
    return floor(a0_11);
}

fn min_(a0_12: f32, a1_6: f32) -> f32 {
    var local_26: f32;
    var local_27: bool = false;
    var local_28: f32 = f32();

    if (a0_12 < a1_6) {
        local_28 = a0_12;
    } else {
        local_28 = a1_6;
    }
    let _e8 = local_28;
    return _e8;
}

fn bilinear_tap(a0_13: f32, a1_7: f32, a2_2: f32, a3_1: u32) -> FeLocal_fe_shader_private_layout_8_ {
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
    return FeLocal_fe_shader_private_layout_8_(((_e11 << a3_1) | _e10), ((_e11 << a3_1) | _e15), ((_e19 << a3_1) | _e10), ((_e19 << a3_1) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn unpack_lab(a0_14: u32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e3 = from_i32_((a0_14 & 4095u));
    let _e10 = from_i32_(((a0_14 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_14 >> 22u));
    return FeLocal_fe_shader_private_layout_9_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn to_vec(a0_15: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_15.f0_, a0_15.f1_, a0_15.f2_);
}

fn sub_ge58b(a0_16: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_16.f0_ - a1_8.f0_), (a0_16.f1_ - a1_8.f1_), (a0_16.f2_ - a1_8.f2_));
}

fn mul(a0_17: FeLocal_fe_shader_private_layout_0_, a1_9: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_17.f0_ * a1_9), (a0_17.f1_ * a1_9), (a0_17.f2_ * a1_9));
}

fn impl_trait_Vec3_add_ge58b(a0_18: FeLocal_fe_shader_private_layout_0_, a1_10: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_18.f0_ + a1_10.f0_), (a0_18.f1_ + a1_10.f1_), (a0_18.f2_ + a1_10.f2_));
}

fn interpolate_g8d60_(a0_19: FeLocal_fe_shader_private_layout_0_, a1_11: FeLocal_fe_shader_private_layout_0_, a2_3: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = sub_ge58b(a1_11, a0_19);
    let _e4 = mul(_e3, a2_3);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_19, _e4);
    return _e5;
}

fn from_vec(a0_20: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_(a0_20.f0_, a0_20.f1_, a0_20.f2_);
}

fn blend(a0_21: FeLocal_fe_shader_private_layout_9_, a1_12: FeLocal_fe_shader_private_layout_9_, a2_4: f32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e3 = to_vec(a0_21);
    let _e4 = to_vec(a1_12);
    let _e5 = interpolate_g8d60_(_e3, _e4, a2_4);
    let _e6 = from_vec(_e5);
    return _e6;
}

fn blend_corners(a0_22: FeLocal_fe_shader_private_layout_9_, a1_13: FeLocal_fe_shader_private_layout_9_, a2_5: FeLocal_fe_shader_private_layout_9_, a3_2: FeLocal_fe_shader_private_layout_9_, a4_: f32, a5_: f32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e6 = blend(a0_22, a1_13, a4_);
    let _e7 = blend(a2_5, a3_2, a4_);
    let _e8 = blend(_e6, _e7, a5_);
    return _e8;
}

fn sample_snapshot(a1_14: f32, a2_6: f32, a3_3: f32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e7 = bilinear_tap(a1_14, a2_6, (a3_3 - 1f), 11u);
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

fn sample(a1_15: f32, a2_7: f32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e5 = bilinear_tap(a1_15, a2_7, 255f, 8u);
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
    let _e48 = blend_corners(FeLocal_fe_shader_private_layout_9_(_e10, _e12, _e14), FeLocal_fe_shader_private_layout_9_(_e20, _e22, _e24), FeLocal_fe_shader_private_layout_9_(_e30, _e32, _e34), FeLocal_fe_shader_private_layout_9_(_e40, _e42, _e44), _e5.f4_, _e5.f5_);
    return _e48;
}

fn lib_image_max(a0_23: f32, a1_16: f32) -> f32 {
    var local_29: f32;
    var local_30: bool = false;
    var local_31: f32 = f32();

    if (a1_16 < a0_23) {
        local_31 = a0_23;
    } else {
        local_31 = a1_16;
    }
    let _e8 = local_31;
    return _e8;
}

fn display_age(a0_24: FeLocal_fe_shader_private_layout_16_, a1_17: FeLocal_fe_shader_private_layout_10_) -> f32 {
    var local_32: f32;
    var local_33: bool = false;
    var local_34: f32 = f32();

    if (0.5f <= a1_17.f13_) {
    } else {
        if (a0_24.f2_ == 1u) {
        } else {
            let _e13 = lib_image_max(a1_17.f11_, a0_24.f6_);
            let _e16 = lib_image_max(0f, (a1_17.f10_ - _e13));
            local_34 = _e16;
        }
    }
    let _e19 = local_34;
    return _e19;
}

fn progress(a0_25: f32, a1_18: f32, a2_8: f32) -> f32 {
    let _e7 = lib_clamp(((a0_25 - a1_18) / a2_8), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn camera(a0_26: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_12_ {
    let _e1 = impl_MandelbrotViewState_center(a0_26);
    return FeLocal_fe_shader_private_layout_12_(_e1, a0_26.f8_, a0_26.f9_);
}

fn ordered_2x2_(a0_27: u32, a1_19: u32) -> FeLocal_fe_shader_private_layout_17_ {
    let _e6 = from_i32_(a0_27);
    let _e9 = from_i32_((a0_27 & 1u));
    let _e13 = from_i32_(a1_19);
    let _e16 = from_i32_((a1_19 & 1u));
    return FeLocal_fe_shader_private_layout_17_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn iteration_limit(a0_28: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_35: u32 = u32();
    var local_36: f32 = f32();
    var local_37: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_38: u32 = u32();
    var local_39: f32 = f32();
    var local_40: u32;
    var local_41: bool = false;
    var local_42: u32 = u32();

    local_35 = 0u;
    local_36 = a0_28;
    local_37 = 0u;
    loop {
        let _e12 = local_35;
        let _e14 = local_36;
        let _e16 = local_37;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_38 = (_e12 + 1u);
                    local_39 = (_e14 * 2f);
                }
            } else {
                local_38 = _e12;
                local_39 = _e14;
            }
            let _e36 = local_38;
            let _e38 = local_39;
            local_35 = _e36;
            local_36 = _e38;
            local_37 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_35;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_42 = 8192u;
        } else {
            local_42 = _e60;
        }
        let _e71 = local_42;
        local_40 = _e71;
        local_41 = true;
    }
    let _e77 = local_41;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_40;
    return _e79;
}

fn plane(a0_29: FeLocal_fe_shader_private_layout_17_, a1_20: f32) -> FeLocal_fe_shader_private_layout_18_ {
    return FeLocal_fe_shader_private_layout_18_((((a0_29.f0_ / a1_20) * 2f) - 1f), (1f - ((a0_29.f1_ / a1_20) * 2f)));
}

fn decode(a0_30: FeLocal_fe_shader_private_layout_14_) -> FeLocal_fe_shader_private_layout_11_ {
    let _e9 = from_quad(bitcast<f32>(a0_30.f0_), bitcast<f32>(a0_30.f1_), bitcast<f32>(a0_30.f2_), bitcast<f32>(a0_30.f3_));
    let _e18 = from_quad(bitcast<f32>(a0_30.f4_), bitcast<f32>(a0_30.f5_), bitcast<f32>(a0_30.f6_), bitcast<f32>(a0_30.f7_));
    return FeLocal_fe_shader_private_layout_11_(_e9, _e18);
}

fn impl_trait_Last_negate(a0_31: f32) -> f32 {
    return -(a0_31);
}

fn negate_ge630_(a0_32: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e5 = impl_trait_Last_negate(a0_32.f1_.f0_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_32.f0_), FeLocal_fe_shader_private_layout_1_(_e5));
}

fn negate_g4419_(a0_33: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_ge630_(a0_33.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_33.f0_), _e4);
}

fn negate_ga905_(a0_34: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = negate_g4419_(a0_34.f1_);
    return FeLocal_fe_shader_private_layout_4_(-(a0_34.f0_), _e4);
}

fn precision_lib_two_sum_0836_(a0_35: f32, a1_21: f32) -> FeLocal_fe_shader_private_layout_20_ {
    let _e2 = (a0_35 + a1_21);
    let _e3 = (_e2 - a0_35);
    return FeLocal_fe_shader_private_layout_20_(_e2, ((a0_35 - (_e2 - _e3)) + (a1_21 - _e3)));
}

fn impl_trait_Last_add_corr(a0_36: f32, a1_22: f32, a2_9: f32) -> f32 {
    return ((a2_9 + a0_36) + a1_22);
}

fn add_corr_ge630_(a0_37: FeLocal_fe_shader_private_layout_2_, a1_23: FeLocal_fe_shader_private_layout_2_, a2_10: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_0836_(a0_37.f0_, a2_10);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_23.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_37.f1_.f0_, a1_23.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_0836_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_2_(_e17.f0_, FeLocal_fe_shader_private_layout_1_(_e17.f1_));
}

fn head_ge630_(a0_38: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_38.f0_;
}

fn with_head_ge630_(a0_39: FeLocal_fe_shader_private_layout_2_, a1_24: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_24, FeLocal_fe_shader_private_layout_1_(a0_39.f1_.f0_));
}

fn add_corr_g4419_(a0_40: FeLocal_fe_shader_private_layout_3_, a1_25: FeLocal_fe_shader_private_layout_3_, a2_11: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_0836_(a0_40.f0_, a2_11);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_25.f0_);
    let _e14 = add_corr_ge630_(a0_40.f1_, a1_25.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_0836_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn head_g4419_(a0_41: FeLocal_fe_shader_private_layout_3_) -> f32 {
    return a0_41.f0_;
}

fn with_head_g4419_(a0_42: FeLocal_fe_shader_private_layout_3_, a1_26: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a1_26, a0_42.f1_);
}

fn add_corr_ga905_(a0_43: FeLocal_fe_shader_private_layout_4_, a1_27: FeLocal_fe_shader_private_layout_4_, a2_12: f32) -> FeLocal_fe_shader_private_layout_4_ {
    let _e4 = precision_lib_two_sum_0836_(a0_43.f0_, a2_12);
    let _e8 = precision_lib_two_sum_0836_(_e4.f0_, a1_27.f0_);
    let _e14 = add_corr_g4419_(a0_43.f1_, a1_27.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_0836_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_4_(_e16.f0_, _e19);
}

fn sub_ga905_(a0_44: FeLocal_fe_shader_private_layout_4_, a1_28: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_4_ {
    let _e2 = negate_ga905_(a1_28);
    let _e4 = add_corr_ga905_(a0_44, _e2, 0f);
    return _e4;
}

fn sub_ge3dc(a0_45: FeLocal_fe_shader_private_layout_11_, a1_29: FeLocal_fe_shader_private_layout_11_) -> FeLocal_fe_shader_private_layout_11_ {
    let _e4 = sub_ga905_(a0_45.f0_, a1_29.f0_);
    let _e7 = sub_ga905_(a0_45.f1_, a1_29.f1_);
    return FeLocal_fe_shader_private_layout_11_(_e4, _e7);
}

fn reference_plus_delta(a0_46: f32, a1_30: f32, a2_13: f32, a3_4: f32, a4_1: f32) -> f32 {
    let _e5 = precision_lib_two_sum_0836_(a0_46, a4_1);
    let _e8 = precision_lib_two_sum_0836_(_e5.f0_, a1_30);
    let _e11 = precision_lib_two_sum_0836_(_e8.f0_, a2_13);
    let _e14 = precision_lib_two_sum_0836_(_e11.f0_, a3_4);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_47: FeLocal_fe_shader_private_layout_4_, a1_31: f32) -> f32 {
    let _e2 = to_quad(a0_47);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_31);
    return _e7;
}

fn reference_with_delta(a0_48: FeLocal_fe_shader_private_layout_11_, a1_32: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = expansion_plus_delta(a0_48.f0_, a1_32.f0_);
    let _e7 = expansion_plus_delta(a0_48.f1_, a1_32.f1_);
    return FeLocal_fe_shader_private_layout_5_(_e4, _e7);
}

fn pixel_delta_from_reference(a1_33: u32, a2_14: FeLocal_fe_shader_private_layout_12_, a3_5: FeLocal_fe_shader_private_layout_17_, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_43: FeLocal_fe_shader_private_layout_5_;
    var local_44: bool = false;

    let _e7 = plane(a3_5, a2_14.f2_);
    if (a1_33 > (4294967295u - 8193u)) {
        (*fe_trapped_2) = true;
    }
    let _e17 = orbit[i32((a1_33 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_33 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_33 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_33 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_33 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_33 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_33 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_33 + 8193u))].im_w3_bits;
    let _e33 = decode(FeLocal_fe_shader_private_layout_14_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e42 = sub_ge3dc(a2_14.f0_, _e33);
    let _e43 = reference_with_delta(_e42, FeLocal_fe_shader_private_layout_5_((_e7.f0_ * a2_14.f1_), (_e7.f1_ * a2_14.f1_)));
    return _e43;
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_();
}

fn from_continuation(a0_49: FeLocal_fe_shader_private_layout_5_, a1_34: FeLocal_fe_shader_private_layout_5_, a2_15: u32, a3_6: u32, a4_2: u32, a5_1: f32) -> FeLocal_fe_shader_private_layout_6_ {
    return FeLocal_fe_shader_private_layout_6_(a0_49.f0_, a0_49.f1_, a1_34.f0_, a1_34.f1_, a2_15, a3_6, a4_2, a5_1);
}

fn empty_progress(a0_50: u32) -> FeLocal_fe_shader_private_layout_6_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_50, 4f);
    return _e6;
}

fn progress_is_presentable(a0_51: u32) -> bool {
    return (((a0_51 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_52: FeLocal_fe_shader_private_layout_6_) -> bool {
    let _e2 = progress_is_presentable(a0_52.f4_);
    return _e2;
}

fn progress_is_glitched(a0_53: u32) -> bool {
    return (((a0_53 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_54: FeLocal_fe_shader_private_layout_6_) -> bool {
    let _e2 = progress_is_glitched(a0_54.f4_);
    return _e2;
}

fn pack_progress_reference(a0_55: u32, a1_35: u32, a2_16: u32) -> u32 {
    return (((a0_55 & 536870911u) | (a1_35 << 31u)) | (a2_16 << 30u));
}

fn perturb(a0_56: FeLocal_fe_shader_private_layout_11_, a1_36: FeLocal_fe_shader_private_layout_5_, a2_17: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = to_quad(a0_56.f0_);
    let _e10 = to_quad(a0_56.f1_);
    return FeLocal_fe_shader_private_layout_5_(((((2f * ((_e4.f0_ * a1_36.f0_) - (_e10.f0_ * a1_36.f1_))) + (2f * ((((((_e4.f1_ * a1_36.f0_) - (_e10.f1_ * a1_36.f1_)) + (_e4.f2_ * a1_36.f0_)) - (_e10.f2_ * a1_36.f1_)) + (_e4.f3_ * a1_36.f0_)) - (_e10.f3_ * a1_36.f1_)))) + ((a1_36.f0_ * a1_36.f0_) - (a1_36.f1_ * a1_36.f1_))) + a2_17.f0_), ((((2f * ((_e4.f0_ * a1_36.f1_) + (_e10.f0_ * a1_36.f0_))) + (2f * ((((((_e4.f1_ * a1_36.f1_) + (_e10.f1_ * a1_36.f0_)) + (_e4.f2_ * a1_36.f1_)) + (_e10.f2_ * a1_36.f0_)) + (_e4.f3_ * a1_36.f1_)) + (_e10.f3_ * a1_36.f0_)))) + ((2f * a1_36.f0_) * a1_36.f1_)) + a2_17.f1_));
}

fn norm_squared(a0_57: FeLocal_fe_shader_private_layout_5_) -> f32 {
    return ((a0_57.f0_ * a0_57.f0_) + (a0_57.f1_ * a0_57.f1_));
}

fn is_invalid(a0_58: FeLocal_fe_shader_private_layout_14_) -> bool {
    var local_45: bool;
    var local_46: bool = false;
    var local_47: bool = bool();

    if (a0_58.f0_ == 2143289344u) {
        local_47 = true;
    } else {
        if (a0_58.f4_ == 2143289344u) {
            local_47 = true;
        }
    }
    let _e14 = local_47;
    return _e14;
}

fn non_finite(a0_59: f32) -> bool {
    return (((a0_59 - a0_59) == 0f) == false);
}

fn is_non_finite_complex(a0_60: FeLocal_fe_shader_private_layout_5_) -> bool {
    var local_48: bool;
    var local_49: bool = false;
    var local_50: bool = bool();

    let _e4 = non_finite(a0_60.f0_);
    if _e4 {
        local_50 = true;
    } else {
        let _e6 = non_finite(a0_60.f1_);
        if _e6 {
            local_50 = true;
        }
    }
    let _e12 = local_50;
    return _e12;
}

fn impl_trait_f32_abs(a0_61: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_61) & 2147483647u));
}

fn decode_metadata(a0_62: FeLocal_fe_shader_private_layout_14_) -> FeLocal_fe_shader_private_layout_15_ {
    return FeLocal_fe_shader_private_layout_15_(a0_62.f0_, a0_62.f1_);
}

fn delta(a0_63: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_(a0_63.f0_, a0_63.f1_);
}

fn position(a0_64: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_(a0_64.f2_, a0_64.f3_);
}

fn progress_reference_index(a0_65: u32) -> u32 {
    return (a0_65 & 536870911u);
}

fn reference_index(a0_66: FeLocal_fe_shader_private_layout_6_) -> u32 {
    let _e2 = progress_reference_index(a0_66.f4_);
    return _e2;
}

fn progress_is_escaped(a0_67: u32) -> bool {
    return (((a0_67 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_68: FeLocal_fe_shader_private_layout_6_) -> bool {
    let _e2 = progress_is_escaped(a0_68.f4_);
    return _e2;
}

fn advance_progress(a1_37: u32, a2_18: FeLocal_fe_shader_private_layout_5_, a3_7: u32, a4_3: u32, a5_2: FeLocal_fe_shader_private_layout_6_, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_6_ {
    var local_51: FeLocal_fe_shader_private_layout_6_;
    var local_52: bool = false;
    var local_53: FeLocal_fe_shader_private_layout_6_ = FeLocal_fe_shader_private_layout_6_();
    var local_54: u32 = u32();
    var local_55: u32 = u32();
    var local_56: u32 = u32();
    var local_57: f32 = f32();
    var local_58: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_59: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_6_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_81_: bool;
    var local_64: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_65: u32 = u32();
    var local_66: f32 = f32();
    var local_67: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_68: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_69: u32 = u32();
    var local_70: u32 = u32();
    var local_71: u32 = u32();
    var local_72: bool = bool();

    let _e9 = is_presentable(a5_2);
    if _e9 {
        local_53 = a5_2;
    } else {
        if (a1_37 > (4294967295u - 8194u)) {
            (*fe_trapped_3) = true;
        } else {
            let _e20 = orbit[i32((a1_37 + 8194u))].re_w0_bits;
            let _e22 = orbit[i32((a1_37 + 8194u))].re_w1_bits;
            let _e24 = orbit[i32((a1_37 + 8194u))].re_w2_bits;
            let _e26 = orbit[i32((a1_37 + 8194u))].re_w3_bits;
            let _e28 = orbit[i32((a1_37 + 8194u))].im_w0_bits;
            let _e30 = orbit[i32((a1_37 + 8194u))].im_w1_bits;
            let _e32 = orbit[i32((a1_37 + 8194u))].im_w2_bits;
            let _e34 = orbit[i32((a1_37 + 8194u))].im_w3_bits;
            let _e36 = decode_metadata(FeLocal_fe_shader_private_layout_14_(_e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
            let _e38 = delta(a5_2);
            let _e39 = position(a5_2);
            let _e40 = reference_index(a5_2);
            let _e41 = is_escaped(a5_2);
            if _e41 {
                local_54 = 1u;
            }
            let _e46 = local_54;
            let _e47 = is_glitched(a5_2);
            if _e47 {
                local_55 = 1u;
            }
            let _e51 = local_55;
            local_56 = 0u;
            local_57 = a5_2.f7_;
            local_58 = _e39;
            local_59 = _e38;
            local_60 = _e51;
            local_61 = _e46;
            local_62 = _e40;
            local_63 = a5_2.f5_;
            loop {
                let _e73 = local_56;
                let _e75 = local_57;
                let _e77 = local_58;
                let _e79 = local_59;
                let _e81 = local_60;
                let _e83 = local_61;
                let _e85 = local_62;
                let _e87 = local_63;
                let _e88 = (_e87 < a3_7);
                loop_header_carry_81_ = _e88;
                if _e88 {
                    if (_e73 < a4_3) {
                        if (_e83 == 0u) {
                            if (_e81 == 0u) {
                                if (_e85 > (4294967295u - 1u)) {
                                } else {
                                    if (((_e85 + 1u) < _e36.f0_) == false) {
                                        local_64 = _e77;
                                        local_65 = 0u;
                                    } else {
                                        local_64 = _e79;
                                        local_65 = _e85;
                                    }
                                    let _e110 = local_64;
                                    let _e112 = local_65;
                                    if (a1_37 > (4294967295u - _e112)) {
                                    } else {
                                        let _e120 = orbit[i32((a1_37 + _e112))].re_w0_bits;
                                        let _e122 = orbit[i32((a1_37 + _e112))].re_w1_bits;
                                        let _e124 = orbit[i32((a1_37 + _e112))].re_w2_bits;
                                        let _e126 = orbit[i32((a1_37 + _e112))].re_w3_bits;
                                        let _e128 = orbit[i32((a1_37 + _e112))].im_w0_bits;
                                        let _e130 = orbit[i32((a1_37 + _e112))].im_w1_bits;
                                        let _e132 = orbit[i32((a1_37 + _e112))].im_w2_bits;
                                        let _e134 = orbit[i32((a1_37 + _e112))].im_w3_bits;
                                        let _e135 = FeLocal_fe_shader_private_layout_14_(_e120, _e122, _e124, _e126, _e128, _e130, _e132, _e134);
                                        let _e137 = (a1_37 + _e112);
                                        if (a1_37 > (4294967295u - _e112)) {
                                        } else {
                                            if (_e137 > (4294967295u - 1u)) {
                                            } else {
                                                let _e154 = orbit[i32((_e137 + 1u))].re_w0_bits;
                                                let _e156 = orbit[i32((_e137 + 1u))].re_w1_bits;
                                                let _e158 = orbit[i32((_e137 + 1u))].re_w2_bits;
                                                let _e160 = orbit[i32((_e137 + 1u))].re_w3_bits;
                                                let _e162 = orbit[i32((_e137 + 1u))].im_w0_bits;
                                                let _e164 = orbit[i32((_e137 + 1u))].im_w1_bits;
                                                let _e166 = orbit[i32((_e137 + 1u))].im_w2_bits;
                                                let _e168 = orbit[i32((_e137 + 1u))].im_w3_bits;
                                                let _e169 = FeLocal_fe_shader_private_layout_14_(_e154, _e156, _e158, _e160, _e162, _e164, _e166, _e168);
                                                let _e170 = is_invalid(_e135);
                                                if _e170 {
                                                    local_66 = _e75;
                                                    local_67 = _e77;
                                                    local_68 = _e110;
                                                    local_69 = 1u;
                                                    local_70 = _e83;
                                                    local_71 = _e112;
                                                } else {
                                                    let _e171 = is_invalid(_e169);
                                                    if _e171 {
                                                        local_66 = _e75;
                                                        local_67 = _e77;
                                                        local_68 = _e110;
                                                        local_69 = 1u;
                                                        local_70 = _e83;
                                                        local_71 = _e112;
                                                    } else {
                                                        let _e173 = decode(_e135);
                                                        let _e174 = decode(_e169);
                                                        let _e175 = perturb(_e173, _e110, a2_18);
                                                        let _e176 = reference_with_delta(_e174, _e175);
                                                        let _e177 = norm_squared(_e176);
                                                        let _e178 = norm_squared(_e175);
                                                        if (4f < _e177) {
                                                            let _e184 = impl_trait_f32_abs((_e177 - 4f));
                                                            let _e186 = impl_trait_f32_max(1f, _e177);
                                                            if (_e184 <= (0.000004f * _e186)) {
                                                                local_72 = true;
                                                            } else {
                                                                local_72 = false;
                                                            }
                                                        } else {
                                                            local_72 = false;
                                                        }
                                                        let _e197 = local_72;
                                                        let _e198 = is_non_finite_complex(_e175);
                                                        if _e198 {
                                                            local_66 = _e75;
                                                            local_67 = _e77;
                                                            local_68 = _e110;
                                                            local_69 = 1u;
                                                            local_70 = _e83;
                                                            local_71 = _e112;
                                                        } else {
                                                            let _e199 = non_finite(_e177);
                                                            if (_e199 | _e197) {
                                                                local_66 = _e75;
                                                                local_67 = _e77;
                                                                local_68 = _e110;
                                                                local_69 = 1u;
                                                                local_70 = _e83;
                                                                local_71 = _e112;
                                                            } else {
                                                                if (4f < _e177) {
                                                                    local_66 = _e177;
                                                                    local_67 = _e176;
                                                                    local_68 = _e175;
                                                                    local_69 = _e81;
                                                                    local_70 = 1u;
                                                                    local_71 = _e112;
                                                                } else {
                                                                    if (_e177 < _e178) {
                                                                        local_66 = _e75;
                                                                        local_67 = _e176;
                                                                        local_68 = _e176;
                                                                        local_69 = _e81;
                                                                        local_70 = _e83;
                                                                        local_71 = 0u;
                                                                    } else {
                                                                        if (_e112 > (4294967295u - 1u)) {
                                                                            (*fe_trapped_3) = true;
                                                                            break;
                                                                        } else {
                                                                            local_66 = _e75;
                                                                            local_67 = _e176;
                                                                            local_68 = _e175;
                                                                            local_69 = _e81;
                                                                            local_70 = _e83;
                                                                            local_71 = (_e112 + 1u);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                let _e258 = local_66;
                                                let _e260 = local_67;
                                                let _e262 = local_68;
                                                let _e264 = local_69;
                                                let _e266 = local_70;
                                                let _e268 = local_71;
                                                local_56 = (_e73 + 1u);
                                                local_57 = _e258;
                                                local_58 = _e260;
                                                local_59 = _e262;
                                                local_60 = _e264;
                                                local_61 = _e266;
                                                local_62 = _e268;
                                                local_63 = (_e87 + 1u);
                                                continue;
                                            }
                                        }
                                    }
                                }
                                (*fe_trapped_3) = true;
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
            let _e284 = local_57;
            let _e286 = local_58;
            let _e288 = local_59;
            let _e290 = local_60;
            let _e292 = local_61;
            let _e294 = local_62;
            let _e296 = local_63;
            let _e297 = pack_progress_reference(_e294, _e292, _e290);
            let _e299 = from_continuation(_e288, _e286, _e297, _e296, a5_2.f6_, _e284);
            local_53 = _e299;
        }
    }
    let _e303 = local_53;
    return _e303;
}

fn sample_progress(a1_38: u32, a2_19: FeLocal_fe_shader_private_layout_12_, a3_8: FeLocal_fe_shader_private_layout_17_, a4_4: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_6_ {
    var local_73: FeLocal_fe_shader_private_layout_6_;
    var local_74: bool = false;
    var local_75: FeLocal_fe_shader_private_layout_6_;
    var local_76: bool = false;
    var local_77: u32 = u32();

    let _e7 = pixel_delta_from_reference(a1_38, a2_19, a3_8, fe_trapped_4);
    if (a1_38 > (4294967295u - 8194u)) {
        (*fe_trapped_4) = true;
    }
    let _e19 = orbit[i32((a1_38 + 8194u))].re_w0_bits;
    let _e21 = orbit[i32((a1_38 + 8194u))].re_w1_bits;
    let _e23 = orbit[i32((a1_38 + 8194u))].re_w2_bits;
    let _e25 = orbit[i32((a1_38 + 8194u))].re_w3_bits;
    let _e27 = orbit[i32((a1_38 + 8194u))].im_w0_bits;
    let _e29 = orbit[i32((a1_38 + 8194u))].im_w1_bits;
    let _e31 = orbit[i32((a1_38 + 8194u))].im_w2_bits;
    let _e33 = orbit[i32((a1_38 + 8194u))].im_w3_bits;
    let _e35 = decode_metadata(FeLocal_fe_shader_private_layout_14_(_e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33));
    if (a4_4 < _e35.f1_) {
        local_77 = a4_4;
    } else {
        local_77 = _e35.f1_;
    }
    let _e42 = local_77;
    let _e44 = empty_progress(0u);
    let _e45 = advance_progress(a1_38, _e7, _e42, _e42, _e44, fe_trapped_4);
    return _e45;
}

fn pack_lab(a0_69: FeLocal_fe_shader_private_layout_9_) -> u32 {
    let _e4 = lib_clamp(a0_69.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = lib_clamp(((a0_69.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = lib_clamp(((a0_69.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_9_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn fract_(a0_70: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_70);
    return (a0_70 - _e1);
}

fn anchor(a0_71: u32) -> FeLocal_fe_shader_private_layout_7_ {
    var local_78: FeLocal_fe_shader_private_layout_7_;
    var local_79: bool = false;
    var local_80: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();

    switch a0_71 {
        case 0u: {
            local_80 = FeLocal_fe_shader_private_layout_7_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_80 = FeLocal_fe_shader_private_layout_7_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_80 = FeLocal_fe_shader_private_layout_7_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_80 = FeLocal_fe_shader_private_layout_7_(0.73f, 0.142f, 165f);
        }
        default: {
            local_80 = FeLocal_fe_shader_private_layout_7_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_80;
    return _e29;
}

fn impl_Oklch_interpolate(a0_72: FeLocal_fe_shader_private_layout_7_, a1_39: FeLocal_fe_shader_private_layout_7_, a2_20: f32) -> FeLocal_fe_shader_private_layout_7_ {
    var local_81: FeLocal_fe_shader_private_layout_7_;
    var local_82: bool = false;
    var local_83: f32 = f32();

    let _e7 = (a1_39.f2_ - a0_72.f2_);
    if (540f < _e7) {
        let _e14 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
        let _e17 = (_e7 - (360f * _e14));
        if (_e17 == -180f) {
            if (0f < _e7) {
                local_83 = 180f;
            } else {
                local_83 = _e17;
            }
        } else {
            local_83 = _e17;
        }
    } else {
        if (_e7 < -540f) {
            let _e32 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
            let _e35 = (_e7 - (360f * _e32));
            if (_e35 == -180f) {
                if (0f < _e7) {
                    local_83 = 180f;
                } else {
                    local_83 = _e35;
                }
            } else {
                local_83 = _e35;
            }
        } else {
            if (180f < _e7) {
                local_83 = (_e7 - 360f);
            } else {
                if (_e7 < -180f) {
                    local_83 = (_e7 + 360f);
                } else {
                    local_83 = _e7;
                }
            }
        }
    }
    let _e56 = local_83;
    return FeLocal_fe_shader_private_layout_7_((a0_72.f0_ + ((a1_39.f0_ - a0_72.f0_) * a2_20)), (a0_72.f1_ + ((a1_39.f1_ - a0_72.f1_) * a2_20)), (a0_72.f2_ + (_e56 * a2_20)));
}

fn wrap_pi(a0_73: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_73 / 6.2831855f) + 0.5f));
    return (a0_73 - (6.2831855f * _e5));
}

fn sin_(a0_74: f32) -> f32 {
    let _e1 = wrap_pi(a0_74);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_75: f32) -> f32 {
    let _e3 = sin_((a0_75 + 1.5707964f));
    return _e3;
}

fn to_color(a0_76: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_9_ {
    let _e3 = (a0_76.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_9_(a0_76.f0_, (a0_76.f1_ * _e6), (a0_76.f1_ * _e9));
}

fn escape_palette(a0_77: u32, a1_40: f32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_84: u32;
    var local_85: bool = false;
    var local_86: u32 = u32();

    let _e5 = from_i32_(a0_77);
    let _e11 = fract_(((_e5 + (4f / a1_40)) / 256f));
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
            local_86 = _e29;
        }
    }
    let _e38 = local_86;
    let _e39 = anchor(_e38);
    let _e40 = impl_Oklch_interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_9_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_78: FeLocal_fe_shader_private_layout_6_, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_87: u32;
    var local_88: bool = false;
    var local_89: u32 = u32();

    let _e4 = is_glitched(a0_78);
    if _e4 {
        let _e5 = glitch();
        local_89 = _e5;
    } else {
        let _e6 = is_escaped(a0_78);
        if _e6 {
            let _e9 = escape_palette(a0_78.f5_, a0_78.f7_, fe_trapped_6);
            local_89 = _e9;
        } else {
            let _e10 = interior();
            local_89 = _e10;
        }
    }
    let _e15 = local_89;
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
    var local_9: FeLocal_fe_shader_private_layout_13_ = FeLocal_fe_shader_private_layout_13_();
    var local_10: u32;
    var local_11: bool = false;
    var local_12: bool = bool();
    var local_13: u32;
    var local_14: bool = false;
    var local_15: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();
    var local_16: u32;
    var local_17: bool = false;
    var local_18: u32;
    var local_19: bool = false;
    var local_20: u32;
    var local_21: bool = false;
    var local_22: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();

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
    let _e41 = FeLocal_fe_shader_private_layout_10_(_e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39);
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
    let _e323 = local_1;
    if _e323 {
    } else {
        let _e69 = cache[i32(0u)].preview_dirty;
        if (_e69 == 0u) {
            local_3 = true;
        }
        let _e321 = local_3;
        if _e321 {
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
                local_9 = FeLocal_fe_shader_private_layout_13_(_e90, _e92, _e94, _e96, _e98, _e100, _e102, _e104, _e106, _e108, _e110, _e112, _e114, _e116, _e118, _e120, _e122, _e124);
            } else {
                local_9 = FeLocal_fe_shader_private_layout_13_(_e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148, _e150, _e152, _e154, _e156, _e158, _e160, _e162, _e164);
            }
            let _e180 = local_9;
            let _e181 = delta_from(_e180, _e41);
            let _e182 = from_i32_(_e80);
            let _e190 = from_i32_(_e85);
            let _e200 = impl_trait_f32_max(_e180.f8_, 0.000000000000000000000000001f);
            let _e212 = ((((((_e181.f0_ + (((((_e182 + 0.5f) * 2f) / _e29) - 1f) * _e27)) / _e200) + 1f) * _e180.f9_) * 0.5f) - 0.5f);
            let _e224 = ((((1f - ((_e181.f1_ + ((1f - (((_e190 + 0.5f) * 2f) / _e29)) * _e27)) / _e200)) * _e180.f9_) * 0.5f) - 0.5f);
            if (_e180.f17_ == 1u) {
                if (0f <= _e212) {
                    if (0f <= _e224) {
                        if (_e212 < (_e180.f9_ - 1f)) {
                            if (_e224 < (_e180.f9_ - 1f)) {
                                local_12 = true;
                            }
                        }
                    }
                }
            }
            let _e245 = local_12;
            if _e174 {
                let _e247 = sample_snapshot(_e212, _e224, _e180.f9_);
                local_15 = _e247;
            } else {
                let _e250 = impl_trait_f32_max(_e180.f9_, 1f);
                let _e252 = (256f / _e250);
                let _e255 = sample((_e212 * _e252), (_e224 * _e252));
                local_15 = _e255;
            }
            let _e260 = local_15;
            let _e261 = display_age(FeLocal_fe_shader_private_layout_16_(_e46, _e48, _e50, _e52, _e54, _e56, _e58), _e41);
            if _e245 {
                if (_e261 < 60f) {
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e260.f0_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e260.f1_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e260.f2_;
                    local_17 = true;
                }
                let _e278 = local_17;
                if _e278 {
                }
            }
            let _e319 = local_17;
            if _e319 {
            } else {
                let _e285 = (_e46 != 0u);
                if (_e285 && (8195u > (4294967295u / select(1u, _e46, _e285)))) {
                    fe_trapped = true;
                }
                let _e293 = camera(_e41);
                let _e294 = ordered_2x2_(_e80, _e85);
                let _e295 = iteration_limit(_e27, (&fe_trapped));
                let _e296 = sample_progress((_e46 * 8195u), _e293, _e294, _e295, (&fe_trapped));
                let _e297 = progress_color(_e296, (&fe_trapped));
                let _e298 = unpack_lab(_e297);
                if _e245 {
                    let _e301 = progress(_e261, 60f, 300f);
                    let _e302 = blend(_e260, _e298, _e301);
                    local_22 = _e302;
                } else {
                    local_22 = _e298;
                }
                let _e306 = local_22;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e306.f0_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e306.f1_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e306.f2_;
            }
        }
    }
    let _e334 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e334);
}
