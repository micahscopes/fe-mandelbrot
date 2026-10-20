struct FeLocal_fe_shader_private_layout_5_ {
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

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: FeLocal_fe_shader_private_layout_3_,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_8_ {
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

struct FeLocal_fe_shader_private_layout_6_ {
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

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
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

struct FeLocal_fe_shader_private_layout_15_ {
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

fn impl_trait_f32_max(a0_2: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_2);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn lib_clamp(a0_3: f32, a1_1: f32, a2_: f32) -> f32 {
    var local_23: f32;
    var local_24: bool = false;
    var local_25: f32 = f32();

    if (a0_3 < a1_1) {
        local_25 = a1_1;
    } else {
        if (a2_ < a0_3) {
            local_25 = a2_;
        } else {
            local_25 = a0_3;
        }
    }
    let _e11 = local_25;
    return _e11;
}

fn impl_trait_f32_floor(a0_4: f32) -> f32 {
    return floor(a0_4);
}

fn min_(a0_5: f32, a1_2: f32) -> f32 {
    var local_26: f32;
    var local_27: bool = false;
    var local_28: f32 = f32();

    if (a0_5 < a1_2) {
        local_28 = a0_5;
    } else {
        local_28 = a1_2;
    }
    let _e8 = local_28;
    return _e8;
}

fn color(a0_6: u32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e3 = from_i32_((a0_6 & 4095u));
    let _e10 = from_i32_(((a0_6 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_6 >> 22u));
    return FeLocal_fe_shader_private_layout_5_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn mix_(a0_7: f32, a1_3: f32, a2_1: f32) -> f32 {
    return (a0_7 + ((a1_3 - a0_7) * a2_1));
}

fn blend(a0_8: FeLocal_fe_shader_private_layout_5_, a1_4: FeLocal_fe_shader_private_layout_5_, a2_2: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e5 = mix_(a0_8.f0_, a1_4.f0_, a2_2);
    let _e8 = mix_(a0_8.f1_, a1_4.f1_, a2_2);
    let _e11 = mix_(a0_8.f2_, a1_4.f2_, a2_2);
    return FeLocal_fe_shader_private_layout_5_(_e5, _e8, _e11);
}

fn sample_snapshot(a1_5: f32, a2_3: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e7 = lib_clamp(a1_5, 0f, (a3_ - 1f));
    let _e8 = impl_trait_f32_floor(_e7);
    let _e12 = lib_clamp(a2_3, 0f, (a3_ - 1f));
    let _e13 = impl_trait_f32_floor(_e12);
    let _e14 = to_i32_(_e8);
    let _e15 = to_i32_(_e13);
    let _e20 = min_((_e8 + 1f), (a3_ - 1f));
    let _e21 = to_i32_(_e20);
    let _e26 = min_((_e13 + 1f), (a3_ - 1f));
    let _e27 = to_i32_(_e26);
    let _e31 = lib_clamp((a1_5 - _e8), 0f, 1f);
    let _e35 = lib_clamp((a2_3 - _e13), 0f, 1f);
    let _e41 = snapshot_pixels[i32(((_e15 << 11u) | _e14))];
    let _e42 = color(_e41);
    let _e48 = snapshot_pixels[i32(((_e15 << 11u) | _e21))];
    let _e49 = color(_e48);
    let _e50 = blend(_e42, _e49, _e31);
    let _e56 = snapshot_pixels[i32(((_e27 << 11u) | _e14))];
    let _e57 = color(_e56);
    let _e63 = snapshot_pixels[i32(((_e27 << 11u) | _e21))];
    let _e64 = color(_e63);
    let _e65 = blend(_e57, _e64, _e31);
    let _e66 = blend(_e50, _e65, _e35);
    return _e66;
}

fn sample(a1_6: f32, a2_4: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e5 = lib_clamp(a1_6, 0f, 255f);
    let _e8 = lib_clamp(a2_4, 0f, 255f);
    let _e9 = impl_trait_f32_floor(_e5);
    let _e10 = impl_trait_f32_floor(_e8);
    let _e11 = to_i32_(_e9);
    let _e12 = to_i32_(_e10);
    let _e16 = min_((_e9 + 1f), 255f);
    let _e17 = to_i32_(_e16);
    let _e21 = min_((_e10 + 1f), 255f);
    let _e22 = to_i32_(_e21);
    let _e29 = initial_pixels[i32(((_e12 << 8u) | _e11))].l;
    let _e31 = initial_pixels[i32(((_e12 << 8u) | _e11))].a;
    let _e33 = initial_pixels[i32(((_e12 << 8u) | _e11))].b;
    let _e41 = initial_pixels[i32(((_e12 << 8u) | _e17))].l;
    let _e43 = initial_pixels[i32(((_e12 << 8u) | _e17))].a;
    let _e45 = initial_pixels[i32(((_e12 << 8u) | _e17))].b;
    let _e48 = blend(FeLocal_fe_shader_private_layout_5_(_e29, _e31, _e33), FeLocal_fe_shader_private_layout_5_(_e41, _e43, _e45), (_e5 - _e9));
    let _e55 = initial_pixels[i32(((_e22 << 8u) | _e11))].l;
    let _e57 = initial_pixels[i32(((_e22 << 8u) | _e11))].a;
    let _e59 = initial_pixels[i32(((_e22 << 8u) | _e11))].b;
    let _e67 = initial_pixels[i32(((_e22 << 8u) | _e17))].l;
    let _e69 = initial_pixels[i32(((_e22 << 8u) | _e17))].a;
    let _e71 = initial_pixels[i32(((_e22 << 8u) | _e17))].b;
    let _e74 = blend(FeLocal_fe_shader_private_layout_5_(_e55, _e57, _e59), FeLocal_fe_shader_private_layout_5_(_e67, _e69, _e71), (_e5 - _e9));
    let _e76 = blend(_e48, _e74, (_e8 - _e10));
    return _e76;
}

fn progress(a0_9: f32, a1_7: f32, a2_5: f32) -> f32 {
    let _e7 = lib_clamp(((a0_9 - a1_7) / a2_5), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn from_quad(a0_10: f32, a1_8: f32, a2_6: f32, a3_1: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_10, FeLocal_fe_shader_private_layout_2_(a1_8, FeLocal_fe_shader_private_layout_1_(a2_6, FeLocal_fe_shader_private_layout_0_(a3_1))));
}

fn camera(a0_11: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = from_quad(a0_11.f0_, a0_11.f1_, a0_11.f2_, a0_11.f3_);
    let _e10 = from_quad(a0_11.f4_, a0_11.f5_, a0_11.f6_, a0_11.f7_);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e10, a0_11.f8_, a0_11.f9_);
}

fn ordered_2x2_(a0_12: u32, a1_9: u32) -> FeLocal_fe_shader_private_layout_9_ {
    let _e6 = from_i32_(a0_12);
    let _e9 = from_i32_((a0_12 & 1u));
    let _e13 = from_i32_(a1_9);
    let _e16 = from_i32_((a1_9 & 1u));
    return FeLocal_fe_shader_private_layout_9_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn iteration_limit(a0_13: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_29: u32 = u32();
    var local_30: f32 = f32();
    var local_31: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_32: u32 = u32();
    var local_33: f32 = f32();
    var local_34: u32;
    var local_35: bool = false;
    var local_36: u32 = u32();

    local_29 = 0u;
    local_30 = a0_13;
    local_31 = 0u;
    loop {
        let _e12 = local_29;
        let _e14 = local_30;
        let _e16 = local_31;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_32 = (_e12 + 1u);
                    local_33 = (_e14 * 2f);
                }
            } else {
                local_32 = _e12;
                local_33 = _e14;
            }
            let _e36 = local_32;
            let _e38 = local_33;
            local_29 = _e36;
            local_30 = _e38;
            local_31 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_29;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_36 = 8192u;
        } else {
            local_36 = _e60;
        }
        let _e71 = local_36;
        local_34 = _e71;
        local_35 = true;
    }
    let _e77 = local_35;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_34;
    return _e79;
}

fn plane(a0_14: FeLocal_fe_shader_private_layout_9_, a1_10: f32) -> FeLocal_fe_shader_private_layout_11_ {
    return FeLocal_fe_shader_private_layout_11_((((a0_14.f0_ / a1_10) * 2f) - 1f), (1f - ((a0_14.f1_ / a1_10) * 2f)));
}

fn re_expansion(a0_15: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_15.f0_), bitcast<f32>(a0_15.f1_), bitcast<f32>(a0_15.f2_), bitcast<f32>(a0_15.f3_));
    return _e9;
}

fn impl_trait_Last_negate(a0_16: f32) -> f32 {
    return -(a0_16);
}

fn negate_ge630_(a0_17: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_17.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_17.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_18: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_18.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_18.f0_), _e4);
}

fn negate_ga905_(a0_19: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_19.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_19.f0_), _e4);
}

fn precision_lib_two_sum_34a0_(a0_20: f32, a1_11: f32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e2 = (a0_20 + a1_11);
    let _e3 = (_e2 - a0_20);
    return FeLocal_fe_shader_private_layout_10_(_e2, ((a0_20 - (_e2 - _e3)) + (a1_11 - _e3)));
}

fn impl_trait_Last_add_corr(a0_21: f32, a1_12: f32, a2_7: f32) -> f32 {
    return ((a2_7 + a0_21) + a1_12);
}

fn add_corr_ge630_(a0_22: FeLocal_fe_shader_private_layout_1_, a1_13: FeLocal_fe_shader_private_layout_1_, a2_8: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_22.f0_, a2_8);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_13.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_22.f1_.f0_, a1_13.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_23: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_23.f0_;
}

fn with_head_ge630_(a0_24: FeLocal_fe_shader_private_layout_1_, a1_14: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_14, FeLocal_fe_shader_private_layout_0_(a0_24.f1_.f0_));
}

fn add_corr_g4419_(a0_25: FeLocal_fe_shader_private_layout_2_, a1_15: FeLocal_fe_shader_private_layout_2_, a2_9: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_25.f0_, a2_9);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_15.f0_);
    let _e14 = add_corr_ge630_(a0_25.f1_, a1_15.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_26: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_26.f0_;
}

fn with_head_g4419_(a0_27: FeLocal_fe_shader_private_layout_2_, a1_16: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_16, a0_27.f1_);
}

fn add_corr_ga905_(a0_28: FeLocal_fe_shader_private_layout_3_, a1_17: FeLocal_fe_shader_private_layout_3_, a2_10: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_28.f0_, a2_10);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_17.f0_);
    let _e14 = add_corr_g4419_(a0_28.f1_, a1_17.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_29: FeLocal_fe_shader_private_layout_3_, a1_18: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_18);
    let _e4 = add_corr_ga905_(a0_29, _e2, 0f);
    return _e4;
}

fn im_expansion(a0_30: FeLocal_fe_shader_private_layout_8_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_30.f4_), bitcast<f32>(a0_30.f5_), bitcast<f32>(a0_30.f6_), bitcast<f32>(a0_30.f7_));
    return _e9;
}

fn to_quad(a0_31: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_12_ {
    return FeLocal_fe_shader_private_layout_12_(a0_31.f0_, a0_31.f1_.f0_, a0_31.f1_.f1_.f0_, a0_31.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_32: f32, a1_19: f32, a2_11: f32, a3_2: f32, a4_: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_32, a4_);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_19);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_11);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_2);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn pixel_delta_from_reference(a1_20: u32, a2_12: FeLocal_fe_shader_private_layout_7_, a3_3: FeLocal_fe_shader_private_layout_9_, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_37: FeLocal_fe_shader_private_layout_10_;
    var local_38: bool = false;

    let _e7 = plane(a3_3, a2_12.f3_);
    if (a1_20 > (4294967295u - 8193u)) {
        (*fe_trapped_2) = true;
    }
    let _e17 = orbit[i32((a1_20 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_20 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_20 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_20 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_20 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_20 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_20 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_20 + 8193u))].im_w3_bits;
    let _e32 = FeLocal_fe_shader_private_layout_8_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31);
    let _e34 = re_expansion(_e32);
    let _e35 = sub(a2_12.f0_, _e34);
    let _e37 = im_expansion(_e32);
    let _e38 = sub(a2_12.f1_, _e37);
    let _e39 = to_quad(_e35);
    let _e44 = to_quad(_e38);
    let _e52 = reference_plus_delta(_e39.f0_, _e39.f1_, _e39.f2_, _e39.f3_, (_e7.f0_ * a2_12.f2_));
    let _e56 = reference_plus_delta(_e44.f0_, _e44.f1_, _e44.f2_, _e44.f3_, (_e7.f1_ * a2_12.f2_));
    return FeLocal_fe_shader_private_layout_10_(_e52, _e56);
}

fn empty_progress(a0_33: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_33, 4f);
}

fn invalid_reference(a0_34: FeLocal_fe_shader_private_layout_8_) -> bool {
    var local_39: bool;
    var local_40: bool = false;
    var local_41: bool = bool();

    if (a0_34.f0_ == 2143289344u) {
        local_41 = true;
    } else {
        if (a0_34.f4_ == 2143289344u) {
            local_41 = true;
        }
    }
    let _e14 = local_41;
    return _e14;
}

fn non_finite(a0_35: f32) -> bool {
    return (((a0_35 - a0_35) == 0f) == false);
}

fn impl_trait_f32_abs(a0_36: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_36) & 2147483647u));
}

fn advance_progress(a1_21: u32, a2_13: f32, a3_4: f32, a4_1: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_42: FeLocal_fe_shader_private_layout_4_;
    var local_43: bool = false;
    var local_44: u32 = u32();
    var local_45: u32 = u32();
    var local_46: u32 = u32();
    var local_47: f32 = f32();
    var local_48: f32 = f32();
    var local_49: f32 = f32();
    var local_50: f32 = f32();
    var local_51: f32 = f32();
    var local_52: u32 = u32();
    var local_53: u32 = u32();
    var local_54: u32 = u32();
    var local_55: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_145_: bool;
    var local_56: f32 = f32();
    var local_57: f32 = f32();
    var local_58: u32 = u32();
    var local_59: f32 = f32();
    var local_60: f32 = f32();
    var local_61: f32 = f32();
    var local_62: f32 = f32();
    var local_63: f32 = f32();
    var local_64: u32 = u32();
    var local_65: u32 = u32();
    var local_66: u32 = u32();
    var local_67: bool = bool();

    if (a1_21 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_21 + 8194u))].re_w0_bits;
        if (((a6_.f4_ & 2147483648u) == 0u) == false) {
            local_44 = 1u;
        }
        let _e37 = local_44;
        if (((a6_.f4_ & 1073741824u) == 0u) == false) {
            local_45 = 1u;
        }
        let _e48 = local_45;
        local_46 = 0u;
        local_47 = a6_.f7_;
        local_48 = a6_.f3_;
        local_49 = a6_.f2_;
        local_50 = a6_.f1_;
        local_51 = a6_.f0_;
        local_52 = _e48;
        local_53 = (a6_.f4_ & 1073741823u);
        local_54 = _e37;
        local_55 = a6_.f5_;
        loop {
            let _e74 = local_46;
            let _e76 = local_47;
            let _e78 = local_48;
            let _e80 = local_49;
            let _e82 = local_50;
            let _e84 = local_51;
            let _e86 = local_52;
            let _e88 = local_53;
            let _e90 = local_54;
            let _e92 = local_55;
            let _e93 = (_e92 < a4_1);
            loop_header_carry_145_ = _e93;
            if _e93 {
                if (_e74 < a5_) {
                    if (_e90 == 0u) {
                        if (_e86 == 0u) {
                        } else {
                            loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                            loop_did_return_1 = true;
                            break;
                        }
                        if (_e88 > (4294967295u - 1u)) {
                        } else {
                            if (((_e88 + 1u) < _e18) == false) {
                                local_56 = _e78;
                                local_57 = _e80;
                                local_58 = 0u;
                            } else {
                                local_56 = _e82;
                                local_57 = _e84;
                                local_58 = _e88;
                            }
                            let _e129 = local_56;
                            let _e131 = local_57;
                            let _e133 = local_58;
                            if (a1_21 > (4294967295u - _e133)) {
                            } else {
                                let _e141 = orbit[i32((a1_21 + _e133))].re_w0_bits;
                                let _e143 = orbit[i32((a1_21 + _e133))].re_w1_bits;
                                let _e145 = orbit[i32((a1_21 + _e133))].re_w2_bits;
                                let _e147 = orbit[i32((a1_21 + _e133))].re_w3_bits;
                                let _e149 = orbit[i32((a1_21 + _e133))].im_w0_bits;
                                let _e151 = orbit[i32((a1_21 + _e133))].im_w1_bits;
                                let _e153 = orbit[i32((a1_21 + _e133))].im_w2_bits;
                                let _e155 = orbit[i32((a1_21 + _e133))].im_w3_bits;
                                let _e158 = (a1_21 + _e133);
                                if (a1_21 > (4294967295u - _e133)) {
                                } else {
                                    if (_e158 > (4294967295u - 1u)) {
                                    } else {
                                        let _e177 = orbit[i32((_e158 + 1u))].re_w0_bits;
                                        let _e179 = orbit[i32((_e158 + 1u))].re_w1_bits;
                                        let _e181 = orbit[i32((_e158 + 1u))].re_w2_bits;
                                        let _e183 = orbit[i32((_e158 + 1u))].re_w3_bits;
                                        let _e185 = orbit[i32((_e158 + 1u))].im_w0_bits;
                                        let _e187 = orbit[i32((_e158 + 1u))].im_w1_bits;
                                        let _e189 = orbit[i32((_e158 + 1u))].im_w2_bits;
                                        let _e191 = orbit[i32((_e158 + 1u))].im_w3_bits;
                                        let _e193 = invalid_reference(FeLocal_fe_shader_private_layout_8_(_e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155));
                                        if _e193 {
                                            local_59 = _e76;
                                            local_60 = _e78;
                                            local_61 = _e80;
                                            local_62 = _e129;
                                            local_63 = _e131;
                                            local_64 = 1u;
                                            local_65 = _e133;
                                            local_66 = _e90;
                                        } else {
                                            let _e194 = invalid_reference(FeLocal_fe_shader_private_layout_8_(_e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191));
                                            if _e194 {
                                                local_59 = _e76;
                                                local_60 = _e78;
                                                local_61 = _e80;
                                                local_62 = _e129;
                                                local_63 = _e131;
                                                local_64 = 1u;
                                                local_65 = _e133;
                                                local_66 = _e90;
                                            } else {
                                                let _e196 = bitcast<f32>(_e141);
                                                let _e197 = bitcast<f32>(_e143);
                                                let _e198 = bitcast<f32>(_e145);
                                                let _e199 = bitcast<f32>(_e147);
                                                let _e200 = bitcast<f32>(_e149);
                                                let _e201 = bitcast<f32>(_e151);
                                                let _e202 = bitcast<f32>(_e153);
                                                let _e203 = bitcast<f32>(_e155);
                                                let _e249 = ((((2f * ((_e196 * _e131) - (_e200 * _e129))) + (2f * ((((((_e197 * _e131) - (_e201 * _e129)) + (_e198 * _e131)) - (_e202 * _e129)) + (_e199 * _e131)) - (_e203 * _e129)))) + ((_e131 * _e131) - (_e129 * _e129))) + a2_13);
                                                let _e259 = ((((2f * ((_e196 * _e129) + (_e200 * _e131))) + (2f * ((((((_e197 * _e129) + (_e201 * _e131)) + (_e198 * _e129)) + (_e202 * _e131)) + (_e199 * _e129)) + (_e203 * _e131)))) + ((2f * _e131) * _e129)) + a3_4);
                                                let _e260 = reference_plus_delta(bitcast<f32>(_e177), bitcast<f32>(_e179), bitcast<f32>(_e181), bitcast<f32>(_e183), _e249);
                                                let _e261 = reference_plus_delta(bitcast<f32>(_e185), bitcast<f32>(_e187), bitcast<f32>(_e189), bitcast<f32>(_e191), _e259);
                                                let _e264 = ((_e260 * _e260) + (_e261 * _e261));
                                                if (4f < _e264) {
                                                    let _e273 = impl_trait_f32_abs((_e264 - 4f));
                                                    let _e275 = impl_trait_f32_max(1f, _e264);
                                                    if (_e273 <= (0.000004f * _e275)) {
                                                        local_67 = true;
                                                    } else {
                                                        local_67 = false;
                                                    }
                                                } else {
                                                    local_67 = false;
                                                }
                                                let _e286 = local_67;
                                                let _e287 = non_finite(_e249);
                                                if _e287 {
                                                    local_59 = _e76;
                                                    local_60 = _e78;
                                                    local_61 = _e80;
                                                    local_62 = _e129;
                                                    local_63 = _e131;
                                                    local_64 = 1u;
                                                    local_65 = _e133;
                                                    local_66 = _e90;
                                                } else {
                                                    let _e288 = non_finite(_e259);
                                                    if _e288 {
                                                        local_59 = _e76;
                                                        local_60 = _e78;
                                                        local_61 = _e80;
                                                        local_62 = _e129;
                                                        local_63 = _e131;
                                                        local_64 = 1u;
                                                        local_65 = _e133;
                                                        local_66 = _e90;
                                                    } else {
                                                        let _e289 = non_finite(_e264);
                                                        if (_e289 | _e286) {
                                                            local_59 = _e76;
                                                            local_60 = _e78;
                                                            local_61 = _e80;
                                                            local_62 = _e129;
                                                            local_63 = _e131;
                                                            local_64 = 1u;
                                                            local_65 = _e133;
                                                            local_66 = _e90;
                                                        } else {
                                                            if (4f < _e264) {
                                                                local_59 = _e264;
                                                                local_60 = _e261;
                                                                local_61 = _e260;
                                                                local_62 = _e259;
                                                                local_63 = _e249;
                                                                local_64 = _e86;
                                                                local_65 = _e133;
                                                                local_66 = 1u;
                                                            } else {
                                                                if (_e264 < ((_e249 * _e249) + (_e259 * _e259))) {
                                                                    local_59 = _e76;
                                                                    local_60 = _e261;
                                                                    local_61 = _e260;
                                                                    local_62 = _e261;
                                                                    local_63 = _e260;
                                                                    local_64 = _e86;
                                                                    local_65 = 0u;
                                                                    local_66 = _e90;
                                                                } else {
                                                                    if (_e133 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_3) = true;
                                                                        break;
                                                                    } else {
                                                                        local_59 = _e76;
                                                                        local_60 = _e261;
                                                                        local_61 = _e260;
                                                                        local_62 = _e259;
                                                                        local_63 = _e249;
                                                                        local_64 = _e86;
                                                                        local_65 = (_e133 + 1u);
                                                                        local_66 = _e90;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e371 = local_59;
                                        let _e373 = local_60;
                                        let _e375 = local_61;
                                        let _e377 = local_62;
                                        let _e379 = local_63;
                                        let _e381 = local_64;
                                        let _e383 = local_65;
                                        let _e385 = local_66;
                                        local_46 = (_e74 + 1u);
                                        local_47 = _e371;
                                        local_48 = _e373;
                                        local_49 = _e375;
                                        local_50 = _e377;
                                        local_51 = _e379;
                                        local_52 = _e381;
                                        local_53 = _e383;
                                        local_54 = _e385;
                                        local_55 = (_e92 + 1u);
                                        continue;
                                    }
                                }
                            }
                        }
                        (*fe_trapped_3) = true;
                        break;
                    } else {
                        loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                        loop_did_return_1 = true;
                        break;
                    }
                } else {
                    loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                    loop_did_return_1 = true;
                    break;
                }
            } else {
                loop_result_1 = FeLocal_fe_shader_private_layout_4_(_e84, _e82, _e80, _e78, ((_e88 | (_e90 << 31u)) | (_e86 << 30u)), _e92, a6_.f6_, _e76);
                loop_did_return_1 = true;
                break;
            }
        }
        let _e436 = loop_did_return_1;
        if _e436 {
            let _e438 = loop_result_1;
            local_42 = _e438;
            local_43 = true;
        }
    }
    let _e444 = local_43;
    if _e444 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e446 = local_42;
    return _e446;
}

fn sample_progress(a1_22: u32, a2_14: FeLocal_fe_shader_private_layout_7_, a3_5: FeLocal_fe_shader_private_layout_9_, a4_2: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_68: FeLocal_fe_shader_private_layout_4_;
    var local_69: bool = false;
    var local_70: FeLocal_fe_shader_private_layout_4_;
    var local_71: bool = false;
    var local_72: u32 = u32();

    let _e7 = pixel_delta_from_reference(a1_22, a2_14, a3_5, fe_trapped_4);
    if (a1_22 > (4294967295u - 8194u)) {
        (*fe_trapped_4) = true;
    }
    let _e21 = orbit[i32((a1_22 + 8194u))].re_w1_bits;
    if (a4_2 < _e21) {
        local_72 = a4_2;
    } else {
        local_72 = _e21;
    }
    let _e26 = local_72;
    let _e28 = empty_progress(0u);
    let _e29 = advance_progress(a1_22, _e7.f0_, _e7.f1_, _e26, _e26, _e28, fe_trapped_4);
    return _e29;
}

fn packed(a0_37: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e4 = lib_clamp(a0_37.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = lib_clamp(((a0_37.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = lib_clamp(((a0_37.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn fract_(a0_38: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_38);
    return (a0_38 - _e1);
}

fn anchor(a0_39: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_73: FeLocal_fe_shader_private_layout_5_;
    var local_74: bool = false;
    var local_75: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_39 {
        case 0u: {
            local_75 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_75 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_75 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_75 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_75 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_75;
    return _e29;
}

fn wrap_pi(a0_40: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_40 / 6.2831855f) + 0.5f));
    return (a0_40 - (6.2831855f * _e5));
}

fn sin_(a0_41: f32) -> f32 {
    let _e1 = wrap_pi(a0_41);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_42: f32) -> f32 {
    let _e3 = sin_((a0_42 + 1.5707964f));
    return _e3;
}

fn oklch(a0_43: f32, a1_23: f32, a2_15: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = (a2_15 * 0.017453292f);
    let _e5 = cos_(_e4);
    let _e7 = sin_(_e4);
    return FeLocal_fe_shader_private_layout_5_(a0_43, (a1_23 * _e5), (a1_23 * _e7));
}

fn escape_palette(a0_44: u32, a1_24: f32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_76: u32;
    var local_77: bool = false;
    var local_78: u32 = u32();
    var local_79: u32;
    var local_80: bool = false;
    var local_81: f32 = f32();

    let _e5 = from_i32_(a0_44);
    let _e11 = fract_(((_e5 + (4f / a1_24)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e22 = ((_e16 * _e16) * (3f - (2f * _e16)));
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_5) = true;
        } else {
            local_78 = _e29;
        }
    }
    let _e40 = local_78;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_81 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_81 = (_e44 + 360f);
        } else {
            local_81 = _e44;
        }
    }
    let _e57 = local_81;
    let _e73 = oklch((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22)), (_e23.f2_ + (_e57 * _e22)));
    let _e74 = packed(_e73);
    return _e74;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_45: FeLocal_fe_shader_private_layout_4_, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_82: u32;
    var local_83: bool = false;
    var local_84: u32 = u32();

    if (((a0_45.f4_ & 1073741824u) == 0u) == false) {
        let _e11 = glitch();
        local_84 = _e11;
    } else {
        if (((a0_45.f4_ & 2147483648u) == 0u) == false) {
            let _e21 = escape_palette(a0_45.f5_, a0_45.f7_, fe_trapped_6);
            local_84 = _e21;
        } else {
            let _e22 = interior();
            local_84 = _e22;
        }
    }
    let _e27 = local_84;
    return _e27;
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
    var local_9: FeLocal_fe_shader_private_layout_14_ = FeLocal_fe_shader_private_layout_14_();
    var local_10: u32;
    var local_11: bool = false;
    var local_12: bool = bool();
    var local_13: u32;
    var local_14: bool = false;
    var local_15: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_16: u32;
    var local_17: bool = false;
    var local_18: u32;
    var local_19: bool = false;
    var local_20: u32;
    var local_21: bool = false;
    var local_22: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

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
    let _e46 = reference[i32(0u)].active_;
    let _e48 = reference[i32(0u)].active_valid;
    let _e50 = reference[i32(0u)].pending;
    let _e52 = reference[i32(0u)].ready_at;
    if (_e48 == 0u) {
        local_1 = true;
    }
    let _e353 = local_1;
    if _e353 {
    } else {
        let _e62 = cache[i32(0u)].preview_dirty;
        if (_e62 == 0u) {
            local_3 = true;
        }
        let _e351 = local_3;
        if _e351 {
        } else {
            let _e69 = from_i32_(global_invocation_id.x);
            let _e73 = to_i32_(((_e69 * _e29) / 256f));
            let _e74 = from_i32_(global_invocation_id.y);
            let _e78 = to_i32_(((_e74 * _e29) / 256f));
            let _e83 = cache[i32(1u)].x0_;
            let _e85 = cache[i32(1u)].x1_;
            let _e87 = cache[i32(1u)].x2_;
            let _e89 = cache[i32(1u)].x3_;
            let _e91 = cache[i32(1u)].y0_;
            let _e93 = cache[i32(1u)].y1_;
            let _e95 = cache[i32(1u)].y2_;
            let _e97 = cache[i32(1u)].y3_;
            let _e99 = cache[i32(1u)].zoom;
            let _e101 = cache[i32(1u)].res;
            let _e103 = cache[i32(1u)].cursor;
            let _e105 = cache[i32(1u)].aa;
            let _e107 = cache[i32(1u)].budget;
            let _e109 = cache[i32(1u)].radius;
            let _e111 = cache[i32(1u)].preview_dirty;
            let _e113 = cache[i32(1u)].blur_dirty;
            let _e115 = cache[i32(1u)].epoch;
            let _e117 = cache[i32(1u)].completed;
            let _e123 = cache[i32(2u)].x0_;
            let _e125 = cache[i32(2u)].x1_;
            let _e127 = cache[i32(2u)].x2_;
            let _e129 = cache[i32(2u)].x3_;
            let _e131 = cache[i32(2u)].y0_;
            let _e133 = cache[i32(2u)].y1_;
            let _e135 = cache[i32(2u)].y2_;
            let _e137 = cache[i32(2u)].y3_;
            let _e139 = cache[i32(2u)].zoom;
            let _e141 = cache[i32(2u)].res;
            let _e143 = cache[i32(2u)].cursor;
            let _e145 = cache[i32(2u)].aa;
            let _e147 = cache[i32(2u)].budget;
            let _e149 = cache[i32(2u)].radius;
            let _e151 = cache[i32(2u)].preview_dirty;
            let _e153 = cache[i32(2u)].blur_dirty;
            let _e155 = cache[i32(2u)].epoch;
            let _e157 = cache[i32(2u)].completed;
            if (_e117 == 1u) {
                if (_e115 < _e155) {
                } else {
                    local_6 = true;
                }
            }
            let _e167 = local_6;
            if _e167 {
                local_9 = FeLocal_fe_shader_private_layout_14_(_e83, _e85, _e87, _e89, _e91, _e93, _e95, _e97, _e99, _e101, _e103, _e105, _e107, _e109, _e111, _e113, _e115, _e117);
            } else {
                local_9 = FeLocal_fe_shader_private_layout_14_(_e123, _e125, _e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155, _e157);
            }
            let _e173 = local_9;
            let _e196 = from_i32_(_e73);
            let _e204 = from_i32_(_e78);
            let _e216 = impl_trait_f32_max(_e173.f8_, 0.000000000000000000000000001f);
            let _e225 = (((((((((_e11 - _e173.f0_) + (_e13 - _e173.f1_)) + ((_e15 - _e173.f2_) + (_e17 - _e173.f3_))) + (((((_e196 + 0.5f) * 2f) / _e29) - 1f) * _e27)) / _e216) + 1f) * _e173.f9_) * 0.5f) - 0.5f);
            let _e230 = impl_trait_f32_max(_e173.f8_, 0.000000000000000000000000001f);
            let _e239 = ((((1f - (((((_e19 - _e173.f4_) + (_e21 - _e173.f5_)) + ((_e23 - _e173.f6_) + (_e25 - _e173.f7_))) + ((1f - (((_e204 + 0.5f) * 2f) / _e29)) * _e27)) / _e230)) * _e173.f9_) * 0.5f) - 0.5f);
            if (_e173.f17_ == 1u) {
                if (0f <= _e225) {
                    if (0f <= _e239) {
                        if (_e225 < (_e173.f9_ - 1f)) {
                            if (_e239 < (_e173.f9_ - 1f)) {
                                local_12 = true;
                            }
                        }
                    }
                }
            }
            let _e260 = local_12;
            if _e167 {
                let _e262 = sample_snapshot(_e225, _e239, _e173.f9_);
                local_15 = _e262;
            } else {
                let _e267 = impl_trait_f32_max(_e173.f9_, 1f);
                let _e273 = impl_trait_f32_max(_e173.f9_, 1f);
                let _e275 = sample(((_e225 * 256f) / _e267), ((_e239 * 256f) / _e273));
                local_15 = _e275;
            }
            let _e280 = local_15;
            let _e281 = impl_trait_f32_max(_e33, _e52);
            let _e284 = impl_trait_f32_max(0f, (_e31 - _e281));
            let _e288 = from_i32_(_e50);
            let _e291 = ((_e284 * (1f - _e37)) * (1f - _e288));
            if _e260 {
                if (_e291 < 60f) {
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e280.f0_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e280.f1_;
                    pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e280.f2_;
                    local_17 = true;
                }
                let _e308 = local_17;
                if _e308 {
                }
            }
            let _e349 = local_17;
            if _e349 {
            } else {
                let _e315 = (_e46 != 0u);
                if (_e315 && (8195u > (4294967295u / select(1u, _e46, _e315)))) {
                    fe_trapped = true;
                }
                let _e323 = camera(FeLocal_fe_shader_private_layout_6_(_e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33, _e35, _e37, _e39));
                let _e324 = ordered_2x2_(_e73, _e78);
                let _e325 = iteration_limit(_e27, (&fe_trapped));
                let _e326 = sample_progress((_e46 * 8195u), _e323, _e324, _e325, (&fe_trapped));
                let _e327 = progress_color(_e326, (&fe_trapped));
                let _e328 = color(_e327);
                if _e260 {
                    let _e331 = progress(_e291, 60f, 300f);
                    let _e332 = blend(_e280, _e328, _e331);
                    local_22 = _e332;
                } else {
                    local_22 = _e328;
                }
                let _e336 = local_22;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e336.f0_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e336.f1_;
                pixels[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e336.f2_;
            }
        }
    }
    let _e364 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e364);
}
