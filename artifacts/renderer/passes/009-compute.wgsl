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

struct FeLocal_fe_shader_private_layout_8_ {
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

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
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
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(3)
var<storage, read_write> native_pixels: array<u32>;
@group(0) @binding(4)
var<storage, read_write> antialiased_pixels: array<u32>;
@group(0) @binding(5)
var<storage, read_write> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 16384>;

fn to_i32_(a0_: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_)), 2147483648u, (a0_ <= -2147483600f)), 2147483647u, (a0_ >= 2147483600f)), (a0_ == a0_));
}

fn from_i32_(a0_1: u32) -> f32 {
    return f32(bitcast<i32>(a0_1));
}

fn empty_progress(a0_2: u32) -> FeLocal_fe_shader_private_layout_4_ {
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, FeLocal_fe_shader_private_layout_4_().f1_, FeLocal_fe_shader_private_layout_4_().f2_, FeLocal_fe_shader_private_layout_4_().f3_, FeLocal_fe_shader_private_layout_4_().f4_, FeLocal_fe_shader_private_layout_4_().f5_, a0_2, 4f);
}

fn iteration_limit(a0_3: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_4: u32 = u32();
    var local_5: f32 = f32();
    var local_6: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_7: u32 = u32();
    var local_8: f32 = f32();
    var local_9: u32;
    var local_10: bool = false;
    var local_11: u32 = u32();

    local_4 = 0u;
    local_5 = a0_3;
    local_6 = 0u;
    loop {
        let _e12 = local_4;
        let _e14 = local_5;
        let _e16 = local_6;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_7 = (_e12 + 1u);
                    local_8 = (_e14 * 2f);
                }
            } else {
                local_7 = _e12;
                local_8 = _e14;
            }
            let _e36 = local_7;
            let _e38 = local_8;
            local_4 = _e36;
            local_5 = _e38;
            local_6 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_4;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_11 = 8192u;
        } else {
            local_11 = _e60;
        }
        let _e71 = local_11;
        local_9 = _e71;
        local_10 = true;
    }
    let _e77 = local_10;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_9;
    return _e79;
}

fn from_quad(a0_4: f32, a1_: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_(a0_4, FeLocal_fe_shader_private_layout_2_(a1_, FeLocal_fe_shader_private_layout_1_(a2_, FeLocal_fe_shader_private_layout_0_(a3_))));
}

fn camera(a0_5: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = from_quad(a0_5.f0_, a0_5.f1_, a0_5.f2_, a0_5.f3_);
    let _e10 = from_quad(a0_5.f4_, a0_5.f5_, a0_5.f6_, a0_5.f7_);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e10, a0_5.f8_, a0_5.f9_);
}

fn ordered_2x2_(a0_6: u32, a1_1: u32) -> FeLocal_fe_shader_private_layout_8_ {
    let _e6 = from_i32_(a0_6);
    let _e9 = from_i32_((a0_6 & 1u));
    let _e13 = from_i32_(a1_1);
    let _e16 = from_i32_((a1_1 & 1u));
    return FeLocal_fe_shader_private_layout_8_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn plane(a0_7: FeLocal_fe_shader_private_layout_8_, a1_2: f32) -> FeLocal_fe_shader_private_layout_11_ {
    return FeLocal_fe_shader_private_layout_11_((((a0_7.f0_ / a1_2) * 2f) - 1f), (1f - ((a0_7.f1_ / a1_2) * 2f)));
}

fn re_expansion(a0_8: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_8.f0_), bitcast<f32>(a0_8.f1_), bitcast<f32>(a0_8.f2_), bitcast<f32>(a0_8.f3_));
    return _e9;
}

fn impl_trait_Last_negate(a0_9: f32) -> f32 {
    return -(a0_9);
}

fn negate_ge630_(a0_10: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = impl_trait_Last_negate(a0_10.f1_.f0_);
    return FeLocal_fe_shader_private_layout_1_(-(a0_10.f0_), FeLocal_fe_shader_private_layout_0_(_e5));
}

fn negate_g4419_(a0_11: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = negate_ge630_(a0_11.f1_);
    return FeLocal_fe_shader_private_layout_2_(-(a0_11.f0_), _e4);
}

fn negate_ga905_(a0_12: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = negate_g4419_(a0_12.f1_);
    return FeLocal_fe_shader_private_layout_3_(-(a0_12.f0_), _e4);
}

fn precision_lib_two_sum_34a0_(a0_13: f32, a1_3: f32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e2 = (a0_13 + a1_3);
    let _e3 = (_e2 - a0_13);
    return FeLocal_fe_shader_private_layout_10_(_e2, ((a0_13 - (_e2 - _e3)) + (a1_3 - _e3)));
}

fn impl_trait_Last_add_corr(a0_14: f32, a1_4: f32, a2_1: f32) -> f32 {
    return ((a2_1 + a0_14) + a1_4);
}

fn add_corr_ge630_(a0_15: FeLocal_fe_shader_private_layout_1_, a1_5: FeLocal_fe_shader_private_layout_1_, a2_2: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_15.f0_, a2_2);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_5.f0_);
    let _e16 = impl_trait_Last_add_corr(a0_15.f1_.f0_, a1_5.f1_.f0_, (_e4.f1_ + _e8.f1_));
    let _e17 = precision_lib_two_sum_34a0_(_e8.f0_, _e16);
    return FeLocal_fe_shader_private_layout_1_(_e17.f0_, FeLocal_fe_shader_private_layout_0_(_e17.f1_));
}

fn head_ge630_(a0_16: FeLocal_fe_shader_private_layout_1_) -> f32 {
    return a0_16.f0_;
}

fn with_head_ge630_(a0_17: FeLocal_fe_shader_private_layout_1_, a1_6: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a1_6, FeLocal_fe_shader_private_layout_0_(a0_17.f1_.f0_));
}

fn add_corr_g4419_(a0_18: FeLocal_fe_shader_private_layout_2_, a1_7: FeLocal_fe_shader_private_layout_2_, a2_3: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_18.f0_, a2_3);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_7.f0_);
    let _e14 = add_corr_ge630_(a0_18.f1_, a1_7.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_ge630_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_ge630_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_2_(_e16.f0_, _e19);
}

fn head_g4419_(a0_19: FeLocal_fe_shader_private_layout_2_) -> f32 {
    return a0_19.f0_;
}

fn with_head_g4419_(a0_20: FeLocal_fe_shader_private_layout_2_, a1_8: f32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(a1_8, a0_20.f1_);
}

fn add_corr_ga905_(a0_21: FeLocal_fe_shader_private_layout_3_, a1_9: FeLocal_fe_shader_private_layout_3_, a2_4: f32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e4 = precision_lib_two_sum_34a0_(a0_21.f0_, a2_4);
    let _e8 = precision_lib_two_sum_34a0_(_e4.f0_, a1_9.f0_);
    let _e14 = add_corr_g4419_(a0_21.f1_, a1_9.f1_, (_e4.f1_ + _e8.f1_));
    let _e15 = head_g4419_(_e14);
    let _e16 = precision_lib_two_sum_34a0_(_e8.f0_, _e15);
    let _e19 = with_head_g4419_(_e14, _e16.f1_);
    return FeLocal_fe_shader_private_layout_3_(_e16.f0_, _e19);
}

fn sub(a0_22: FeLocal_fe_shader_private_layout_3_, a1_10: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = negate_ga905_(a1_10);
    let _e4 = add_corr_ga905_(a0_22, _e2, 0f);
    return _e4;
}

fn im_expansion(a0_23: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_3_ {
    let _e9 = from_quad(bitcast<f32>(a0_23.f4_), bitcast<f32>(a0_23.f5_), bitcast<f32>(a0_23.f6_), bitcast<f32>(a0_23.f7_));
    return _e9;
}

fn to_quad(a0_24: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_12_ {
    return FeLocal_fe_shader_private_layout_12_(a0_24.f0_, a0_24.f1_.f0_, a0_24.f1_.f1_.f0_, a0_24.f1_.f1_.f1_.f0_);
}

fn reference_plus_delta(a0_25: f32, a1_11: f32, a2_5: f32, a3_1: f32, a4_: f32) -> f32 {
    let _e5 = precision_lib_two_sum_34a0_(a0_25, a4_);
    let _e8 = precision_lib_two_sum_34a0_(_e5.f0_, a1_11);
    let _e11 = precision_lib_two_sum_34a0_(_e8.f0_, a2_5);
    let _e14 = precision_lib_two_sum_34a0_(_e11.f0_, a3_1);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn pixel_delta_from_reference(a1_12: u32, a2_6: FeLocal_fe_shader_private_layout_7_, a3_2: FeLocal_fe_shader_private_layout_8_, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_12: FeLocal_fe_shader_private_layout_10_;
    var local_13: bool = false;

    let _e7 = plane(a3_2, a2_6.f3_);
    if (a1_12 > (4294967295u - 8193u)) {
        (*fe_trapped_2) = true;
    }
    let _e17 = orbit[i32((a1_12 + 8193u))].re_w0_bits;
    let _e19 = orbit[i32((a1_12 + 8193u))].re_w1_bits;
    let _e21 = orbit[i32((a1_12 + 8193u))].re_w2_bits;
    let _e23 = orbit[i32((a1_12 + 8193u))].re_w3_bits;
    let _e25 = orbit[i32((a1_12 + 8193u))].im_w0_bits;
    let _e27 = orbit[i32((a1_12 + 8193u))].im_w1_bits;
    let _e29 = orbit[i32((a1_12 + 8193u))].im_w2_bits;
    let _e31 = orbit[i32((a1_12 + 8193u))].im_w3_bits;
    let _e32 = FeLocal_fe_shader_private_layout_9_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31);
    let _e34 = re_expansion(_e32);
    let _e35 = sub(a2_6.f0_, _e34);
    let _e37 = im_expansion(_e32);
    let _e38 = sub(a2_6.f1_, _e37);
    let _e39 = to_quad(_e35);
    let _e44 = to_quad(_e38);
    let _e52 = reference_plus_delta(_e39.f0_, _e39.f1_, _e39.f2_, _e39.f3_, (_e7.f0_ * a2_6.f2_));
    let _e56 = reference_plus_delta(_e44.f0_, _e44.f1_, _e44.f2_, _e44.f3_, (_e7.f1_ * a2_6.f2_));
    return FeLocal_fe_shader_private_layout_10_(_e52, _e56);
}

fn invalid_reference(a0_26: FeLocal_fe_shader_private_layout_9_) -> bool {
    var local_14: bool;
    var local_15: bool = false;
    var local_16: bool = bool();

    if (a0_26.f0_ == 2143289344u) {
        local_16 = true;
    } else {
        if (a0_26.f4_ == 2143289344u) {
            local_16 = true;
        }
    }
    let _e14 = local_16;
    return _e14;
}

fn non_finite(a0_27: f32) -> bool {
    return (((a0_27 - a0_27) == 0f) == false);
}

fn impl_trait_f32_abs(a0_28: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_28) & 2147483647u));
}

fn impl_trait_f32_max(a0_29: f32, a1_13: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_29);
    let _e3 = bitcast<u32>(a1_13);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn advance_progress(a1_14: u32, a2_7: f32, a3_3: f32, a4_1: u32, a5_: u32, a6_: FeLocal_fe_shader_private_layout_4_, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_17: FeLocal_fe_shader_private_layout_4_;
    var local_18: bool = false;
    var local_19: u32 = u32();
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var local_22: f32 = f32();
    var local_23: f32 = f32();
    var local_24: f32 = f32();
    var local_25: f32 = f32();
    var local_26: f32 = f32();
    var local_27: u32 = u32();
    var local_28: u32 = u32();
    var local_29: u32 = u32();
    var local_30: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_145_: bool;
    var local_31: f32 = f32();
    var local_32: f32 = f32();
    var local_33: u32 = u32();
    var local_34: f32 = f32();
    var local_35: f32 = f32();
    var local_36: f32 = f32();
    var local_37: f32 = f32();
    var local_38: f32 = f32();
    var local_39: u32 = u32();
    var local_40: u32 = u32();
    var local_41: u32 = u32();
    var local_42: bool = bool();

    if (a1_14 > (4294967295u - 8194u)) {
    } else {
        let _e18 = orbit[i32((a1_14 + 8194u))].re_w0_bits;
        if (((a6_.f4_ & 2147483648u) == 0u) == false) {
            local_19 = 1u;
        }
        let _e37 = local_19;
        if (((a6_.f4_ & 1073741824u) == 0u) == false) {
            local_20 = 1u;
        }
        let _e48 = local_20;
        local_21 = 0u;
        local_22 = a6_.f7_;
        local_23 = a6_.f3_;
        local_24 = a6_.f2_;
        local_25 = a6_.f1_;
        local_26 = a6_.f0_;
        local_27 = _e48;
        local_28 = (a6_.f4_ & 1073741823u);
        local_29 = _e37;
        local_30 = a6_.f5_;
        loop {
            let _e74 = local_21;
            let _e76 = local_22;
            let _e78 = local_23;
            let _e80 = local_24;
            let _e82 = local_25;
            let _e84 = local_26;
            let _e86 = local_27;
            let _e88 = local_28;
            let _e90 = local_29;
            let _e92 = local_30;
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
                                local_31 = _e78;
                                local_32 = _e80;
                                local_33 = 0u;
                            } else {
                                local_31 = _e82;
                                local_32 = _e84;
                                local_33 = _e88;
                            }
                            let _e129 = local_31;
                            let _e131 = local_32;
                            let _e133 = local_33;
                            if (a1_14 > (4294967295u - _e133)) {
                            } else {
                                let _e141 = orbit[i32((a1_14 + _e133))].re_w0_bits;
                                let _e143 = orbit[i32((a1_14 + _e133))].re_w1_bits;
                                let _e145 = orbit[i32((a1_14 + _e133))].re_w2_bits;
                                let _e147 = orbit[i32((a1_14 + _e133))].re_w3_bits;
                                let _e149 = orbit[i32((a1_14 + _e133))].im_w0_bits;
                                let _e151 = orbit[i32((a1_14 + _e133))].im_w1_bits;
                                let _e153 = orbit[i32((a1_14 + _e133))].im_w2_bits;
                                let _e155 = orbit[i32((a1_14 + _e133))].im_w3_bits;
                                let _e158 = (a1_14 + _e133);
                                if (a1_14 > (4294967295u - _e133)) {
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
                                        let _e193 = invalid_reference(FeLocal_fe_shader_private_layout_9_(_e141, _e143, _e145, _e147, _e149, _e151, _e153, _e155));
                                        if _e193 {
                                            local_34 = _e76;
                                            local_35 = _e78;
                                            local_36 = _e80;
                                            local_37 = _e129;
                                            local_38 = _e131;
                                            local_39 = 1u;
                                            local_40 = _e133;
                                            local_41 = _e90;
                                        } else {
                                            let _e194 = invalid_reference(FeLocal_fe_shader_private_layout_9_(_e177, _e179, _e181, _e183, _e185, _e187, _e189, _e191));
                                            if _e194 {
                                                local_34 = _e76;
                                                local_35 = _e78;
                                                local_36 = _e80;
                                                local_37 = _e129;
                                                local_38 = _e131;
                                                local_39 = 1u;
                                                local_40 = _e133;
                                                local_41 = _e90;
                                            } else {
                                                let _e196 = bitcast<f32>(_e141);
                                                let _e197 = bitcast<f32>(_e143);
                                                let _e198 = bitcast<f32>(_e145);
                                                let _e199 = bitcast<f32>(_e147);
                                                let _e200 = bitcast<f32>(_e149);
                                                let _e201 = bitcast<f32>(_e151);
                                                let _e202 = bitcast<f32>(_e153);
                                                let _e203 = bitcast<f32>(_e155);
                                                let _e249 = ((((2f * ((_e196 * _e131) - (_e200 * _e129))) + (2f * ((((((_e197 * _e131) - (_e201 * _e129)) + (_e198 * _e131)) - (_e202 * _e129)) + (_e199 * _e131)) - (_e203 * _e129)))) + ((_e131 * _e131) - (_e129 * _e129))) + a2_7);
                                                let _e259 = ((((2f * ((_e196 * _e129) + (_e200 * _e131))) + (2f * ((((((_e197 * _e129) + (_e201 * _e131)) + (_e198 * _e129)) + (_e202 * _e131)) + (_e199 * _e129)) + (_e203 * _e131)))) + ((2f * _e131) * _e129)) + a3_3);
                                                let _e260 = reference_plus_delta(bitcast<f32>(_e177), bitcast<f32>(_e179), bitcast<f32>(_e181), bitcast<f32>(_e183), _e249);
                                                let _e261 = reference_plus_delta(bitcast<f32>(_e185), bitcast<f32>(_e187), bitcast<f32>(_e189), bitcast<f32>(_e191), _e259);
                                                let _e264 = ((_e260 * _e260) + (_e261 * _e261));
                                                if (4f < _e264) {
                                                    let _e273 = impl_trait_f32_abs((_e264 - 4f));
                                                    let _e275 = impl_trait_f32_max(1f, _e264);
                                                    if (_e273 <= (0.000004f * _e275)) {
                                                        local_42 = true;
                                                    } else {
                                                        local_42 = false;
                                                    }
                                                } else {
                                                    local_42 = false;
                                                }
                                                let _e286 = local_42;
                                                let _e287 = non_finite(_e249);
                                                if _e287 {
                                                    local_34 = _e76;
                                                    local_35 = _e78;
                                                    local_36 = _e80;
                                                    local_37 = _e129;
                                                    local_38 = _e131;
                                                    local_39 = 1u;
                                                    local_40 = _e133;
                                                    local_41 = _e90;
                                                } else {
                                                    let _e288 = non_finite(_e259);
                                                    if _e288 {
                                                        local_34 = _e76;
                                                        local_35 = _e78;
                                                        local_36 = _e80;
                                                        local_37 = _e129;
                                                        local_38 = _e131;
                                                        local_39 = 1u;
                                                        local_40 = _e133;
                                                        local_41 = _e90;
                                                    } else {
                                                        let _e289 = non_finite(_e264);
                                                        if (_e289 | _e286) {
                                                            local_34 = _e76;
                                                            local_35 = _e78;
                                                            local_36 = _e80;
                                                            local_37 = _e129;
                                                            local_38 = _e131;
                                                            local_39 = 1u;
                                                            local_40 = _e133;
                                                            local_41 = _e90;
                                                        } else {
                                                            if (4f < _e264) {
                                                                local_34 = _e264;
                                                                local_35 = _e261;
                                                                local_36 = _e260;
                                                                local_37 = _e259;
                                                                local_38 = _e249;
                                                                local_39 = _e86;
                                                                local_40 = _e133;
                                                                local_41 = 1u;
                                                            } else {
                                                                if (_e264 < ((_e249 * _e249) + (_e259 * _e259))) {
                                                                    local_34 = _e76;
                                                                    local_35 = _e261;
                                                                    local_36 = _e260;
                                                                    local_37 = _e261;
                                                                    local_38 = _e260;
                                                                    local_39 = _e86;
                                                                    local_40 = 0u;
                                                                    local_41 = _e90;
                                                                } else {
                                                                    if (_e133 > (4294967295u - 1u)) {
                                                                        (*fe_trapped_3) = true;
                                                                        break;
                                                                    } else {
                                                                        local_34 = _e76;
                                                                        local_35 = _e261;
                                                                        local_36 = _e260;
                                                                        local_37 = _e259;
                                                                        local_38 = _e249;
                                                                        local_39 = _e86;
                                                                        local_40 = (_e133 + 1u);
                                                                        local_41 = _e90;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        let _e371 = local_34;
                                        let _e373 = local_35;
                                        let _e375 = local_36;
                                        let _e377 = local_37;
                                        let _e379 = local_38;
                                        let _e381 = local_39;
                                        let _e383 = local_40;
                                        let _e385 = local_41;
                                        local_21 = (_e74 + 1u);
                                        local_22 = _e371;
                                        local_23 = _e373;
                                        local_24 = _e375;
                                        local_25 = _e377;
                                        local_26 = _e379;
                                        local_27 = _e381;
                                        local_28 = _e383;
                                        local_29 = _e385;
                                        local_30 = (_e92 + 1u);
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
            local_17 = _e438;
            local_18 = true;
        }
    }
    let _e444 = local_18;
    if _e444 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e446 = local_17;
    return _e446;
}

fn clamp_(a0_30: f32, a1_15: f32, a2_8: f32) -> f32 {
    var local_43: f32;
    var local_44: bool = false;
    var local_45: f32 = f32();

    if (a0_30 < a1_15) {
        local_45 = a1_15;
    } else {
        if (a2_8 < a0_30) {
            local_45 = a2_8;
        } else {
            local_45 = a0_30;
        }
    }
    let _e11 = local_45;
    return _e11;
}

fn packed(a0_31: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e4 = clamp_(a0_31.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_31.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_31.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_32: f32) -> f32 {
    return floor(a0_32);
}

fn fract_(a0_33: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_33);
    return (a0_33 - _e1);
}

fn anchor(a0_34: u32) -> FeLocal_fe_shader_private_layout_5_ {
    var local_46: FeLocal_fe_shader_private_layout_5_;
    var local_47: bool = false;
    var local_48: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    switch a0_34 {
        case 0u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.73f, 0.142f, 165f);
        }
        default: {
            local_48 = FeLocal_fe_shader_private_layout_5_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_48;
    return _e29;
}

fn wrap_pi(a0_35: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_35 / 6.2831855f) + 0.5f));
    return (a0_35 - (6.2831855f * _e5));
}

fn sin_(a0_36: f32) -> f32 {
    let _e1 = wrap_pi(a0_36);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_37: f32) -> f32 {
    let _e3 = sin_((a0_37 + 1.5707964f));
    return _e3;
}

fn oklch(a0_38: f32, a1_16: f32, a2_9: f32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = (a2_9 * 0.017453292f);
    let _e5 = cos_(_e4);
    let _e7 = sin_(_e4);
    return FeLocal_fe_shader_private_layout_5_(a0_38, (a1_16 * _e5), (a1_16 * _e7));
}

fn escape_palette(a0_39: u32, a1_17: f32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_49: u32;
    var local_50: bool = false;
    var local_51: u32 = u32();
    var local_52: u32;
    var local_53: bool = false;
    var local_54: f32 = f32();

    let _e5 = from_i32_(a0_39);
    let _e11 = fract_(((_e5 + (4f / a1_17)) / 256f));
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
            (*fe_trapped_4) = true;
        } else {
            local_51 = _e29;
        }
    }
    let _e40 = local_51;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_54 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_54 = (_e44 + 360f);
        } else {
            local_54 = _e44;
        }
    }
    let _e57 = local_54;
    let _e73 = oklch((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22)), (_e23.f2_ + (_e57 * _e22)));
    let _e74 = packed(_e73);
    return _e74;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_5_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_40: FeLocal_fe_shader_private_layout_4_, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_55: u32;
    var local_56: bool = false;
    var local_57: u32 = u32();

    if (((a0_40.f4_ & 1073741824u) == 0u) == false) {
        let _e11 = glitch();
        local_57 = _e11;
    } else {
        if (((a0_40.f4_ & 2147483648u) == 0u) == false) {
            let _e21 = escape_palette(a0_40.f5_, a0_40.f7_, fe_trapped_5);
            local_57 = _e21;
        } else {
            let _e22 = interior();
            local_57 = _e22;
        }
    }
    let _e27 = local_57;
    return _e27;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var local_3: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    let _e14 = params.p27_;
    let _e16 = params.p28_;
    let _e18 = params.p29_;
    let _e20 = params.p30_;
    let _e22 = params.p31_;
    let _e24 = params.p32_;
    let _e26 = params.p33_;
    let _e28 = params.p34_;
    let _e30 = params.p35_;
    let _e32 = params.p36_;
    let _e34 = params.p37_;
    let _e36 = params.p38_;
    let _e38 = params.p39_;
    let _e40 = params.p40_;
    let _e42 = params.p41_;
    let _e49 = reference[i32(0u)].active_;
    let _e51 = reference[i32(0u)].active_valid;
    let _e53 = reference[i32(0u)].pending;
    if (_e53 == 1u) {
    } else {
        if (_e51 == 0u) {
        } else {
            if (0.5f <= _e40) {
            } else {
                if ((_e34 - _e36) < 60f) {
                    local_1 = true;
                }
                let _e414 = local_1;
                if _e414 {
                } else {
                    let _e69 = cache[i32(0u)].cursor;
                    let _e71 = cache[i32(0u)].epoch;
                    let _e73 = cache[i32(0u)].completed;
                    if (_e69 < 16u) {
                        if (_e73 == 1u) {
                            local_1 = true;
                        }
                        let _e408 = local_1;
                        if _e408 {
                        } else {
                            let _e84 = to_i32_(((_e32 + 511f) / 512f));
                            let _e91 = (((global_invocation_id.y % 4u) << 2u) + (global_invocation_id.x % 4u));
                            let _e96 = (_e69 * 16u);
                            let _e97 = (_e69 != 0u);
                            if (_e97 && (16u > (4294967295u / select(1u, _e69, _e97)))) {
                            } else {
                                let _e103 = (_e96 + _e91);
                                if (_e96 > (4294967295u - _e91)) {
                                } else {
                                    let _e107 = (_e103 >> 5u);
                                    if (16390u > (4294967295u - _e107)) {
                                    } else {
                                        let _e117 = orbit[i32((16390u + _e107))].re_w0_bits;
                                        let _e119 = orbit[i32((16390u + _e107))].re_w1_bits;
                                        let _e121 = orbit[i32((16390u + _e107))].re_w2_bits;
                                        let _e123 = orbit[i32((16390u + _e107))].re_w3_bits;
                                        let _e125 = orbit[i32((16390u + _e107))].im_w0_bits;
                                        let _e127 = orbit[i32((16390u + _e107))].im_w1_bits;
                                        let _e129 = orbit[i32((16390u + _e107))].im_w2_bits;
                                        let _e131 = orbit[i32((16390u + _e107))].im_w3_bits;
                                        switch ((_e103 >> 2u) & 7u) {
                                            case 0u: {
                                                local_2 = _e117;
                                            }
                                            case 1u: {
                                                local_2 = _e119;
                                            }
                                            case 2u: {
                                                local_2 = _e121;
                                            }
                                            case 3u: {
                                                local_2 = _e123;
                                            }
                                            case 4u: {
                                                local_2 = _e125;
                                            }
                                            case 5u: {
                                                local_2 = _e127;
                                            }
                                            case 6u: {
                                                local_2 = _e129;
                                            }
                                            default: {
                                                local_2 = _e131;
                                            }
                                        }
                                        let _e145 = local_2;
                                        let _e147 = (_e103 & 3u);
                                        let _e153 = (_e147 != 0u);
                                        if (_e153 && (8u > (4294967295u / select(1u, _e147, _e153)))) {
                                        } else {
                                            let _e160 = ((_e145 >> (_e147 * 8u)) & 255u);
                                            let _e162 = (global_invocation_id.x / 4u);
                                            let _e164 = (global_invocation_id.y / 4u);
                                            let _e166 = (_e160 & 15u);
                                            let _e171 = (_e162 * 13u);
                                            let _e172 = (_e162 != 0u);
                                            if (_e172 && (13u > (4294967295u / select(1u, _e162, _e172)))) {
                                            } else {
                                                let _e178 = (_e166 + _e171);
                                                if (_e166 > (4294967295u - _e171)) {
                                                } else {
                                                    let _e185 = (_e164 * 7u);
                                                    let _e186 = (_e164 != 0u);
                                                    if (_e186 && (7u > (4294967295u / select(1u, _e164, _e186)))) {
                                                    } else {
                                                        if (_e178 > (4294967295u - _e185)) {
                                                        } else {
                                                            let _e196 = ((_e178 + _e185) & 15u);
                                                            let _e198 = (_e160 >> 4u);
                                                            let _e203 = (_e162 * 5u);
                                                            let _e204 = (_e162 != 0u);
                                                            if (_e204 && (5u > (4294967295u / select(1u, _e162, _e204)))) {
                                                            } else {
                                                                let _e210 = (_e198 + _e203);
                                                                if (_e198 > (4294967295u - _e203)) {
                                                                } else {
                                                                    let _e217 = (_e164 * 11u);
                                                                    let _e218 = (_e164 != 0u);
                                                                    if (_e218 && (11u > (4294967295u / select(1u, _e164, _e218)))) {
                                                                    } else {
                                                                        if (_e210 > (4294967295u - _e217)) {
                                                                        } else {
                                                                            let _e228 = ((_e210 + _e217) & 15u);
                                                                            let _e233 = (_e162 * 16u);
                                                                            let _e234 = (_e162 != 0u);
                                                                            if (_e234 && (16u > (4294967295u / select(1u, _e162, _e234)))) {
                                                                            } else {
                                                                                let _e240 = (_e233 + _e196);
                                                                                if (_e233 > (4294967295u - _e196)) {
                                                                                } else {
                                                                                    let _e246 = (_e240 * _e84);
                                                                                    let _e247 = (_e240 != 0u);
                                                                                    if (_e247 && (_e84 > (4294967295u / select(1u, _e240, _e247)))) {
                                                                                    } else {
                                                                                        let _e256 = (_e164 * 16u);
                                                                                        let _e257 = (_e164 != 0u);
                                                                                        if (_e257 && (16u > (4294967295u / select(1u, _e164, _e257)))) {
                                                                                        } else {
                                                                                            let _e263 = (_e256 + _e228);
                                                                                            if (_e256 > (4294967295u - _e228)) {
                                                                                            } else {
                                                                                                let _e269 = (_e263 * _e84);
                                                                                                let _e270 = (_e263 != 0u);
                                                                                                if (_e270 && (_e84 > (4294967295u / select(1u, _e263, _e270)))) {
                                                                                                } else {
                                                                                                    let _e275 = from_i32_(_e246);
                                                                                                    if (_e32 <= _e275) {
                                                                                                    } else {
                                                                                                        let _e277 = from_i32_(_e269);
                                                                                                        if (_e32 <= _e277) {
                                                                                                            local_1 = true;
                                                                                                        }
                                                                                                        let _e365 = local_1;
                                                                                                        if _e365 {
                                                                                                        } else {
                                                                                                            let _e283 = ((_e269 << 11u) | _e246);
                                                                                                            let _e287 = progress_pixels[i32(_e283)].dz_re;
                                                                                                            let _e289 = progress_pixels[i32(_e283)].dz_im;
                                                                                                            let _e291 = progress_pixels[i32(_e283)].z_re;
                                                                                                            let _e293 = progress_pixels[i32(_e283)].z_im;
                                                                                                            let _e295 = progress_pixels[i32(_e283)].reference_i;
                                                                                                            let _e297 = progress_pixels[i32(_e283)].iteration;
                                                                                                            let _e299 = progress_pixels[i32(_e283)].epoch;
                                                                                                            let _e301 = progress_pixels[i32(_e283)].magnitude;
                                                                                                            if (_e299 == _e71) {
                                                                                                                if ((_e295 & 536870912u) == 0u) {
                                                                                                                } else {
                                                                                                                    local_1 = true;
                                                                                                                }
                                                                                                                let _e311 = local_1;
                                                                                                                if _e311 {
                                                                                                                }
                                                                                                            }
                                                                                                            let _e363 = local_1;
                                                                                                            if _e363 {
                                                                                                            } else {
                                                                                                                if (_e299 == _e71) {
                                                                                                                    local_3 = FeLocal_fe_shader_private_layout_4_(_e287, _e289, _e291, _e293, _e295, _e297, _e299, _e301);
                                                                                                                } else {
                                                                                                                    let _e314 = empty_progress(_e71);
                                                                                                                    local_3 = _e314;
                                                                                                                }
                                                                                                                let _e318 = local_3;
                                                                                                                let _e319 = iteration_limit(_e30, (&fe_trapped));
                                                                                                                let _e324 = (_e49 * 8195u);
                                                                                                                let _e325 = (_e49 != 0u);
                                                                                                                if (_e325 && (8195u > (4294967295u / select(1u, _e49, _e325)))) {
                                                                                                                    fe_trapped = true;
                                                                                                                }
                                                                                                                let _e331 = camera(FeLocal_fe_shader_private_layout_6_(_e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40, _e42));
                                                                                                                let _e332 = ordered_2x2_(_e246, _e269);
                                                                                                                let _e333 = pixel_delta_from_reference(_e324, _e331, _e332, (&fe_trapped));
                                                                                                                let _e336 = advance_progress(_e324, _e333.f0_, _e333.f1_, _e319, _e319, _e318, (&fe_trapped));
                                                                                                                progress_pixels[i32(_e283)].dz_re = _e336.f0_;
                                                                                                                progress_pixels[i32(_e283)].dz_im = _e336.f1_;
                                                                                                                progress_pixels[i32(_e283)].z_re = _e34;
                                                                                                                progress_pixels[i32(_e283)].z_im = _e336.f3_;
                                                                                                                progress_pixels[i32(_e283)].reference_i = (_e336.f4_ | 536870912u);
                                                                                                                progress_pixels[i32(_e283)].iteration = _e336.f5_;
                                                                                                                progress_pixels[i32(_e283)].epoch = _e71;
                                                                                                                progress_pixels[i32(_e283)].magnitude = _e336.f7_;
                                                                                                                let _e355 = progress_color(_e336, (&fe_trapped));
                                                                                                                native_pixels[i32(_e283)] = _e355;
                                                                                                                antialiased_pixels[i32(_e283)] = _e355;
                                                                                                                local_1 = true;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    let _e369 = local_1;
                                                                                                    if _e369 {
                                                                                                    } else {
                                                                                                        local_1 = true;
                                                                                                    }
                                                                                                }
                                                                                                let _e371 = local_1;
                                                                                                if _e371 {
                                                                                                }
                                                                                            }
                                                                                            let _e373 = local_1;
                                                                                            if _e373 {
                                                                                            }
                                                                                        }
                                                                                        let _e375 = local_1;
                                                                                        if _e375 {
                                                                                        }
                                                                                    }
                                                                                    let _e377 = local_1;
                                                                                    if _e377 {
                                                                                    }
                                                                                }
                                                                                let _e379 = local_1;
                                                                                if _e379 {
                                                                                }
                                                                            }
                                                                            let _e381 = local_1;
                                                                            if _e381 {
                                                                            }
                                                                        }
                                                                        let _e383 = local_1;
                                                                        if _e383 {
                                                                        }
                                                                    }
                                                                    let _e385 = local_1;
                                                                    if _e385 {
                                                                    }
                                                                }
                                                                let _e387 = local_1;
                                                                if _e387 {
                                                                }
                                                            }
                                                            let _e389 = local_1;
                                                            if _e389 {
                                                            }
                                                        }
                                                        let _e391 = local_1;
                                                        if _e391 {
                                                        }
                                                    }
                                                    let _e393 = local_1;
                                                    if _e393 {
                                                    }
                                                }
                                                let _e395 = local_1;
                                                if _e395 {
                                                }
                                            }
                                            let _e397 = local_1;
                                            if _e397 {
                                            }
                                        }
                                        let _e399 = local_1;
                                        if _e399 {
                                        }
                                    }
                                    let _e401 = local_1;
                                    if _e401 {
                                    }
                                }
                                let _e403 = local_1;
                                if _e403 {
                                }
                            }
                            let _e406 = local_1;
                            if _e406 {
                            } else {
                                fe_trapped = true;
                            }
                        }
                    }
                    let _e412 = local_1;
                    if _e412 {
                    } else {
                        local_1 = true;
                    }
                }
            }
            let _e416 = local_1;
            if _e416 {
            }
        }
        let _e418 = local_1;
        if _e418 {
        }
    }
    let _e429 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 16384u))] = u32(_e429);
}
