struct FeLocal_fe_shader_private_layout_6_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_6_,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_8_,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: FeLocal_fe_shader_private_layout_10_,
    f1_: FeLocal_fe_shader_private_layout_10_,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: bool,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_13_,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: array<FeLocal_fe_shader_private_layout_14_, 10>,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: FeLocal_fe_shader_private_layout_13_,
    f1_: FeLocal_fe_shader_private_layout_13_,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: FeLocal_fe_shader_private_layout_15_,
    f1_: FeLocal_fe_shader_private_layout_16_,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: bool,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: FeLocal_fe_shader_private_layout_12_,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: FeLocal_fe_shader_private_layout_17_,
    f7_: FeLocal_fe_shader_private_layout_18_,
}

struct FeLocal_fe_shader_private_layout_24_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: bool,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_25_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_21_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_26_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
}

struct FeLocal_fe_shader_private_layout_22_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
    f1_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_27_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_28_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_23_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_29_ {
    f0_: FeLocal_fe_shader_private_layout_12_,
    f1_: u32,
    f2_: f32,
    f3_: u32,
    f4_: f32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
}

struct FeLocal_fe_shader_private_layout_30_ {
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
var<storage, read_write> trap: array<u32, 32768>;

fn is_input_settled(a0_: ptr<function, FeLocal_fe_shader_private_layout_19_>) -> bool {
    var local_14: bool;
    var local_15: bool = false;
    var local_16: bool = bool();

    let _e4 = (*a0_).f4_;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_).f1_;
        let _e10 = (*a0_).f2_;
        if (60f <= (_e8 - _e10)) {
            local_16 = true;
        }
    }
    let _e17 = local_16;
    return _e17;
}

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_5_, a1_: ptr<function, FeLocal_fe_shader_private_layout_19_>) -> bool {
    var local_17: bool;
    var local_18: bool = false;
    var local_19: bool = bool();

    if (a0_1.f2_ == 0u) {
        if (a0_1.f1_ == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_19 = true;
            }
        }
    }
    let _e14 = local_19;
    return _e14;
}

fn iteration_limit(a0_2: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_20: u32 = u32();
    var local_21: f32 = f32();
    var local_22: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_23: u32 = u32();
    var local_24: f32 = f32();
    var local_25: u32;
    var local_26: bool = false;
    var local_27: u32 = u32();

    local_20 = 0u;
    local_21 = a0_2;
    local_22 = 0u;
    loop {
        let _e12 = local_20;
        let _e14 = local_21;
        let _e16 = local_22;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_23 = (_e12 + 1u);
                    local_24 = (_e14 * 2f);
                }
            } else {
                local_23 = _e12;
                local_24 = _e14;
            }
            let _e36 = local_23;
            let _e38 = local_24;
            local_20 = _e36;
            local_21 = _e38;
            local_22 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_20;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_27 = 8192u;
        } else {
            local_27 = _e60;
        }
        let _e71 = local_27;
        local_25 = _e71;
        local_26 = true;
    }
    let _e77 = local_26;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_25;
    return _e79;
}

fn to_i32_(a0_3: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_3)), 2147483648u, (a0_3 <= -2147483600f)), 2147483647u, (a0_3 >= 2147483600f)), (a0_3 == a0_3));
}

fn for_view(a0_4: f32, a1_1: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_24_ {
    var local_28: FeLocal_fe_shader_private_layout_24_;
    var local_29: bool = false;

    let _e4 = iteration_limit(a0_4, fe_trapped_2);
    let _e13 = to_i32_(((a1_1 + 127f) / 128f));
    let _e18 = to_i32_(((a1_1 + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_24_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn refine_steps(a0_5: FeLocal_fe_shader_private_layout_24_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_30: u32;
    var local_31: bool = false;

    let _e9 = (a0_5.f1_ != 0u);
    if (_e9 && (a0_5.f4_ > (4294967295u / select(1u, a0_5.f1_, _e9)))) {
        (*fe_trapped_3) = true;
    } else {
        local_30 = (a0_5.f1_ * a0_5.f4_);
        local_31 = true;
    }
    let _e19 = local_30;
    return _e19;
}

fn impl_trait_Pixel_default() -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_();
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_shader_private_layout_4_ {
    let _e0 = impl_trait_Pixel_default();
    return FeLocal_fe_shader_private_layout_4_(_e0, false);
}

fn from_i32_(a0_6: u32) -> f32 {
    return f32(bitcast<i32>(a0_6));
}

fn phase_offset(a0_7: u32, a1_2: u32, a2_: u32) -> u32 {
    let _e3 = from_i32_(a0_7);
    let _e6 = from_i32_(a1_2);
    let _e9 = ((_e3 * 0.06711056f) + (_e6 * 0.00583715f));
    let _e10 = to_i32_(_e9);
    let _e11 = from_i32_(_e10);
    let _e14 = ((_e9 - _e11) * 52.982918f);
    let _e15 = to_i32_(_e14);
    let _e16 = from_i32_(_e15);
    let _e18 = from_i32_(a2_);
    let _e20 = to_i32_(((_e14 - _e16) * _e18));
    return _e20;
}

fn phase_order_rect(a0_8: u32, a1_3: u32, a2_1: u32, a3_: u32, a4_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_32: u32;
    var local_33: bool = false;
    var local_34: u32 = u32();

    let _e10 = (a3_ * a4_);
    let _e11 = (a3_ != 0u);
    if (_e11 && (a4_ > (4294967295u / select(1u, a3_, _e11)))) {
    } else {
        let _e17 = phase_offset(a1_3, a2_1, _e10);
        if ((_e17 & 1u) == 0u) {
            local_34 = 1u;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_4) = true;
            } else {
                local_34 = (_e10 - 1u);
            }
        }
        let _e30 = local_34;
        let _e34 = (a0_8 * _e30);
        let _e35 = (a0_8 != 0u);
        if (_e35 && (_e30 > (4294967295u / select(1u, a0_8, _e35)))) {
        } else {
            if (_e34 > (4294967295u - _e17)) {
            } else {
                if (_e10 == 0u) {
                } else {
                    local_32 = ((_e34 + _e17) % _e10);
                    local_33 = true;
                }
                let _e51 = local_33;
                if _e51 {
                }
            }
            let _e53 = local_33;
            if _e53 {
            }
        }
        let _e55 = local_33;
        if _e55 {
        }
    }
    let _e58 = local_33;
    if _e58 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e60 = local_32;
    return _e60;
}

fn in_extent(a0_9: FeLocal_fe_shader_private_layout_3_, a1_4: f32) -> bool {
    var local_35: bool;
    var local_36: bool = false;
    var local_37: bool = bool();

    let _e5 = from_i32_(a0_9.f0_);
    if (_e5 < a1_4) {
        let _e8 = from_i32_(a0_9.f1_);
        if (_e8 < a1_4) {
            local_37 = true;
        }
    }
    let _e13 = local_37;
    return _e13;
}

fn at(a0_10: u32, a1_5: u32, a2_2: f32) -> FeLocal_fe_shader_private_layout_4_ {
    let _e3 = FeLocal_fe_shader_private_layout_3_(a0_10, a1_5);
    let _e4 = in_extent(_e3, a2_2);
    return FeLocal_fe_shader_private_layout_4_(_e3, _e4);
}

fn rect_pixel(a0_11: FeLocal_fe_shader_private_layout_24_, a1_6: u32, a2_3: u32, a3_1: u32, a4_1: f32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_38: FeLocal_fe_shader_private_layout_4_;
    var local_39: bool = false;
    var local_40: FeLocal_fe_shader_private_layout_4_;
    var local_41: bool = false;

    let _e7 = refine_steps(a0_11, fe_trapped_5);
    if ((a1_6 < _e7) == false) {
        let _e11 = impl_trait_CohortPixel_default();
        local_38 = _e11;
        local_39 = true;
    }
    let _e82 = local_39;
    if _e82 {
    } else {
        if (a0_11.f1_ == 0u) {
        } else {
            let _e22 = phase_order_rect((a1_6 / a0_11.f1_), a2_3, a3_1, a0_11.f2_, a0_11.f3_, fe_trapped_5);
            let _e27 = (a2_3 * a0_11.f2_);
            let _e28 = (a2_3 != 0u);
            if (_e28 && (a0_11.f2_ > (4294967295u / select(1u, a2_3, _e28)))) {
            } else {
                if (a0_11.f2_ == 0u) {
                } else {
                    let _e36 = (_e22 % a0_11.f2_);
                    if (_e27 > (4294967295u - _e36)) {
                    } else {
                        let _e45 = (a3_1 * a0_11.f3_);
                        let _e46 = (a3_1 != 0u);
                        if (_e46 && (a0_11.f3_ > (4294967295u / select(1u, a3_1, _e46)))) {
                        } else {
                            if (a0_11.f2_ == 0u) {
                            } else {
                                let _e54 = (_e22 / a0_11.f2_);
                                if (_e45 > (4294967295u - _e54)) {
                                } else {
                                    let _e59 = at((_e27 + _e36), (_e45 + _e54), a4_1);
                                    local_40 = _e59;
                                    local_41 = true;
                                }
                                let _e64 = local_41;
                                if _e64 {
                                }
                            }
                            let _e66 = local_41;
                            if _e66 {
                            }
                        }
                        let _e68 = local_41;
                        if _e68 {
                        }
                    }
                    let _e70 = local_41;
                    if _e70 {
                    }
                }
                let _e72 = local_41;
                if _e72 {
                }
            }
            let _e74 = local_41;
            if _e74 {
            }
        }
        let _e77 = local_41;
        if _e77 {
        } else {
            (*fe_trapped_5) = true;
        }
        let _e79 = local_40;
        local_38 = _e79;
    }
    let _e84 = local_38;
    return _e84;
}

fn impl_Pixel_index(a0_12: FeLocal_fe_shader_private_layout_3_, a1_7: u32) -> u32 {
    return ((a0_12.f1_ << a1_7) | a0_12.f0_);
}

fn impl_CohortPixel_index(a0_13: FeLocal_fe_shader_private_layout_4_) -> u32 {
    let _e3 = impl_Pixel_index(a0_13.f0_, 11u);
    return _e3;
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_();
}

fn from_continuation(a0_14: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_, a2_4: u32, a3_2: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a0_14.f0_, a0_14.f1_, a1_8.f0_, a1_8.f1_, a2_4, a3_2, a4_2, a5_);
}

fn empty_progress(a0_15: u32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e1 = default_ge58b();
    let _e2 = default_ge58b();
    let _e6 = from_continuation(_e1, _e2, 0u, 0u, a0_15, 4f);
    return _e6;
}

fn progress_is_presentable(a0_16: u32) -> bool {
    return (((a0_16 & 536870912u) == 0u) == false);
}

fn progress_has_outcome(a0_17: u32) -> bool {
    return (((a0_17 & 3221225472u) == 0u) == false);
}

fn progress_is_terminal(a0_18: u32, a1_9: u32, a2_5: u32) -> bool {
    var local_42: bool;
    var local_43: bool = false;
    var local_44: bool = bool();

    if ((a1_9 < a2_5) == false) {
        local_44 = true;
    } else {
        let _e8 = progress_has_outcome(a0_18);
        if _e8 {
            local_44 = true;
        } else {
            let _e9 = progress_is_presentable(a0_18);
            if _e9 {
                local_44 = true;
            }
        }
    }
    let _e17 = local_44;
    return _e17;
}

fn is_terminal(a0_19: FeLocal_fe_shader_private_layout_1_, a1_10: u32) -> bool {
    let _e4 = progress_is_terminal(a0_19.f4_, a0_19.f5_, a1_10);
    return _e4;
}

fn progress_with_presentable(a0_20: u32) -> u32 {
    return (a0_20 | 536870912u);
}

fn with_fade_start(a0_21: FeLocal_fe_shader_private_layout_1_, a1_11: f32) -> FeLocal_fe_shader_private_layout_1_ {
    var fixed_local_3_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    fixed_local_3_ = a0_21;
    fixed_local_3_.f2_ = a1_11;
    let _e6 = progress_with_presentable(a0_21.f4_);
    fixed_local_3_.f4_ = _e6;
    let _e8 = fixed_local_3_;
    return _e8;
}

fn progress_is_glitched(a0_22: u32) -> bool {
    return (((a0_22 & 1073741824u) == 0u) == false);
}

fn is_glitched(a0_23: FeLocal_fe_shader_private_layout_1_) -> bool {
    let _e2 = progress_is_glitched(a0_23.f4_);
    return _e2;
}

fn clamp_(a0_24: f32, a1_12: f32, a2_6: f32) -> f32 {
    var local_45: f32;
    var local_46: bool = false;
    var local_47: f32 = f32();

    if (a0_24 < a1_12) {
        local_47 = a1_12;
    } else {
        if (a2_6 < a0_24) {
            local_47 = a2_6;
        } else {
            local_47 = a0_24;
        }
    }
    let _e11 = local_47;
    return _e11;
}

fn pack_lab(a0_25: FeLocal_fe_shader_private_layout_25_) -> u32 {
    let _e4 = clamp_(a0_25.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_25.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_25.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_25_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn progress_is_escaped(a0_26: u32) -> bool {
    return (((a0_26 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_27: FeLocal_fe_shader_private_layout_1_) -> bool {
    let _e2 = progress_is_escaped(a0_27.f4_);
    return _e2;
}

fn impl_trait_f32_floor(a0_28: f32) -> f32 {
    return floor(a0_28);
}

fn fract_(a0_29: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_29);
    return (a0_29 - _e1);
}

fn anchor(a0_30: u32) -> FeLocal_fe_shader_private_layout_2_ {
    var local_48: FeLocal_fe_shader_private_layout_2_;
    var local_49: bool = false;
    var local_50: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();

    switch a0_30 {
        case 0u: {
            local_50 = FeLocal_fe_shader_private_layout_2_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_50 = FeLocal_fe_shader_private_layout_2_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_50 = FeLocal_fe_shader_private_layout_2_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_50 = FeLocal_fe_shader_private_layout_2_(0.73f, 0.142f, 165f);
        }
        default: {
            local_50 = FeLocal_fe_shader_private_layout_2_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_50;
    return _e29;
}

fn interpolate(a0_31: FeLocal_fe_shader_private_layout_2_, a1_13: FeLocal_fe_shader_private_layout_2_, a2_7: f32) -> FeLocal_fe_shader_private_layout_2_ {
    var local_51: FeLocal_fe_shader_private_layout_2_;
    var local_52: bool = false;
    var local_53: f32 = f32();

    let _e7 = (a1_13.f2_ - a0_31.f2_);
    if (540f < _e7) {
        let _e14 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
        let _e17 = (_e7 - (360f * _e14));
        if (_e17 == -180f) {
            if (0f < _e7) {
                local_53 = 180f;
            } else {
                local_53 = _e17;
            }
        } else {
            local_53 = _e17;
        }
    } else {
        if (_e7 < -540f) {
            let _e32 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
            let _e35 = (_e7 - (360f * _e32));
            if (_e35 == -180f) {
                if (0f < _e7) {
                    local_53 = 180f;
                } else {
                    local_53 = _e35;
                }
            } else {
                local_53 = _e35;
            }
        } else {
            if (180f < _e7) {
                local_53 = (_e7 - 360f);
            } else {
                if (_e7 < -180f) {
                    local_53 = (_e7 + 360f);
                } else {
                    local_53 = _e7;
                }
            }
        }
    }
    let _e56 = local_53;
    return FeLocal_fe_shader_private_layout_2_((a0_31.f0_ + ((a1_13.f0_ - a0_31.f0_) * a2_7)), (a0_31.f1_ + ((a1_13.f1_ - a0_31.f1_) * a2_7)), (a0_31.f2_ + (_e56 * a2_7)));
}

fn wrap_pi(a0_32: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_32 / 6.2831855f) + 0.5f));
    return (a0_32 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_33: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_33) & 2147483647u));
}

fn sin_(a0_34: f32) -> f32 {
    let _e1 = wrap_pi(a0_34);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_35: f32) -> f32 {
    let _e3 = sin_((a0_35 + 1.5707964f));
    return _e3;
}

fn to_color(a0_36: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_25_ {
    let _e3 = (a0_36.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_25_(a0_36.f0_, (a0_36.f1_ * _e6), (a0_36.f1_ * _e9));
}

fn escape_palette(a0_37: u32, a1_14: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_54: u32;
    var local_55: bool = false;
    var local_56: u32 = u32();

    let _e5 = from_i32_(a0_37);
    let _e11 = fract_(((_e5 + (4f / a1_14)) / 256f));
    let _e13 = (_e11 * 5f);
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e16 = (_e13 - _e15);
    let _e23 = anchor(_e14);
    if (_e14 == 4u) {
    } else {
        let _e29 = (_e14 + 1u);
        if ((((_e14 ^ _e29) & (1u ^ _e29)) & 2147483648u) != 0u) {
            (*fe_trapped_6) = true;
        } else {
            local_56 = _e29;
        }
    }
    let _e38 = local_56;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_25_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_38: FeLocal_fe_shader_private_layout_1_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_57: u32;
    var local_58: bool = false;
    var local_59: u32 = u32();

    let _e4 = is_glitched(a0_38);
    if _e4 {
        let _e5 = glitch();
        local_59 = _e5;
    } else {
        let _e6 = is_escaped(a0_38);
        if _e6 {
            let _e9 = escape_palette(a0_38.f5_, a0_38.f7_, fe_trapped_7);
            local_59 = _e9;
        } else {
            let _e10 = interior();
            local_59 = _e10;
        }
    }
    let _e15 = local_59;
    return _e15;
}

fn ordered_2x2_(a0_39: u32, a1_15: u32) -> FeLocal_fe_shader_private_layout_21_ {
    let _e6 = from_i32_(a0_39);
    let _e9 = from_i32_((a0_39 & 1u));
    let _e13 = from_i32_(a1_15);
    let _e16 = from_i32_((a1_15 & 1u));
    return FeLocal_fe_shader_private_layout_21_(((_e6 + 0.375f) + (0.25f * _e9)), ((_e13 + 0.375f) + (0.25f * _e16)));
}

fn impl_Pixel_sample(a0_40: FeLocal_fe_shader_private_layout_3_) -> FeLocal_fe_shader_private_layout_21_ {
    let _e3 = ordered_2x2_(a0_40.f0_, a0_40.f1_);
    return _e3;
}

fn impl_CohortPixel_sample(a0_41: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_21_ {
    let _e2 = impl_Pixel_sample(a0_41.f0_);
    return _e2;
}

fn plane(a0_42: FeLocal_fe_shader_private_layout_21_, a1_16: f32) -> FeLocal_fe_shader_private_layout_26_ {
    return FeLocal_fe_shader_private_layout_26_((((a0_42.f0_ / a1_16) * 2f) - 1f), (1f - ((a0_42.f1_ / a1_16) * 2f)));
}

fn center_offset(a0_43: FeLocal_fe_shader_private_layout_20_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(bitcast<f32>(a0_43.f2_), bitcast<f32>(a0_43.f3_));
}

fn add(a0_44: FeLocal_fe_shader_private_layout_0_, a1_17: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_44.f0_ + a1_17.f0_), (a0_44.f1_ + a1_17.f1_));
}

fn pixel_delta_from_reference(a1_18: u32, a2_8: FeLocal_fe_shader_private_layout_12_, a3_3: FeLocal_fe_shader_private_layout_21_, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_60: FeLocal_fe_shader_private_layout_0_;
    var local_61: bool = false;

    let _e7 = plane(a3_3, a2_8.f2_);
    if (a1_18 > (4294967295u - 8194u)) {
        (*fe_trapped_8) = true;
    }
    let _e17 = orbit[i32((a1_18 + 8194u))].re_w0_bits;
    let _e19 = orbit[i32((a1_18 + 8194u))].re_w1_bits;
    let _e21 = orbit[i32((a1_18 + 8194u))].re_w2_bits;
    let _e23 = orbit[i32((a1_18 + 8194u))].re_w3_bits;
    let _e25 = orbit[i32((a1_18 + 8194u))].im_w0_bits;
    let _e27 = orbit[i32((a1_18 + 8194u))].im_w1_bits;
    let _e29 = orbit[i32((a1_18 + 8194u))].im_w2_bits;
    let _e31 = orbit[i32((a1_18 + 8194u))].im_w3_bits;
    let _e33 = center_offset(FeLocal_fe_shader_private_layout_20_(_e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31));
    let _e41 = add(_e33, FeLocal_fe_shader_private_layout_0_((_e7.f0_ * a2_8.f1_), (_e7.f1_ * a2_8.f1_)));
    return _e41;
}

fn is_presentable(a0_45: FeLocal_fe_shader_private_layout_1_) -> bool {
    let _e2 = progress_is_presentable(a0_45.f4_);
    return _e2;
}

fn pack_progress_reference(a0_46: u32, a1_19: u32, a2_9: u32) -> u32 {
    return (((a0_46 & 536870911u) | (a1_19 << 31u)) | (a2_9 << 30u));
}

fn from_quad(a0_47: f32, a1_20: f32, a2_10: f32, a3_4: f32) -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_(a0_47, FeLocal_fe_shader_private_layout_8_(a1_20, FeLocal_fe_shader_private_layout_7_(a2_10, FeLocal_fe_shader_private_layout_6_(a3_4))));
}

fn decode(a0_48: FeLocal_fe_shader_private_layout_20_) -> FeLocal_fe_shader_private_layout_22_ {
    let _e9 = from_quad(bitcast<f32>(a0_48.f0_), bitcast<f32>(a0_48.f1_), bitcast<f32>(a0_48.f2_), bitcast<f32>(a0_48.f3_));
    let _e18 = from_quad(bitcast<f32>(a0_48.f4_), bitcast<f32>(a0_48.f5_), bitcast<f32>(a0_48.f6_), bitcast<f32>(a0_48.f7_));
    return FeLocal_fe_shader_private_layout_22_(_e9, _e18);
}

fn to_quad(a0_49: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_27_ {
    return FeLocal_fe_shader_private_layout_27_(a0_49.f0_, a0_49.f1_.f0_, a0_49.f1_.f1_.f0_, a0_49.f1_.f1_.f1_.f0_);
}

fn perturb(a0_50: FeLocal_fe_shader_private_layout_22_, a1_21: FeLocal_fe_shader_private_layout_0_, a2_11: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    let _e4 = to_quad(a0_50.f0_);
    let _e10 = to_quad(a0_50.f1_);
    return FeLocal_fe_shader_private_layout_0_(((((2f * ((_e4.f0_ * a1_21.f0_) - (_e10.f0_ * a1_21.f1_))) + (2f * ((((((_e4.f1_ * a1_21.f0_) - (_e10.f1_ * a1_21.f1_)) + (_e4.f2_ * a1_21.f0_)) - (_e10.f2_ * a1_21.f1_)) + (_e4.f3_ * a1_21.f0_)) - (_e10.f3_ * a1_21.f1_)))) + ((a1_21.f0_ * a1_21.f0_) - (a1_21.f1_ * a1_21.f1_))) + a2_11.f0_), ((((2f * ((_e4.f0_ * a1_21.f1_) + (_e10.f0_ * a1_21.f0_))) + (2f * ((((((_e4.f1_ * a1_21.f1_) + (_e10.f1_ * a1_21.f0_)) + (_e4.f2_ * a1_21.f1_)) + (_e10.f2_ * a1_21.f0_)) + (_e4.f3_ * a1_21.f1_)) + (_e10.f3_ * a1_21.f0_)))) + ((2f * a1_21.f0_) * a1_21.f1_)) + a2_11.f1_));
}

fn two_sum(a0_51: f32, a1_22: f32) -> FeLocal_fe_shader_private_layout_28_ {
    let _e2 = (a0_51 + a1_22);
    let _e3 = (_e2 - a0_51);
    return FeLocal_fe_shader_private_layout_28_(_e2, ((a0_51 - (_e2 - _e3)) + (a1_22 - _e3)));
}

fn reference_plus_delta(a0_52: f32, a1_23: f32, a2_12: f32, a3_5: f32, a4_3: f32) -> f32 {
    let _e5 = two_sum(a0_52, a4_3);
    let _e8 = two_sum(_e5.f0_, a1_23);
    let _e11 = two_sum(_e8.f0_, a2_12);
    let _e14 = two_sum(_e11.f0_, a3_5);
    return (_e14.f0_ + (((_e14.f1_ + _e11.f1_) + _e8.f1_) + _e5.f1_));
}

fn expansion_plus_delta(a0_53: FeLocal_fe_shader_private_layout_9_, a1_24: f32) -> f32 {
    let _e2 = to_quad(a0_53);
    let _e7 = reference_plus_delta(_e2.f0_, _e2.f1_, _e2.f2_, _e2.f3_, a1_24);
    return _e7;
}

fn reference_with_delta(a0_54: FeLocal_fe_shader_private_layout_22_, a1_25: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    let _e4 = expansion_plus_delta(a0_54.f0_, a1_25.f0_);
    let _e7 = expansion_plus_delta(a0_54.f1_, a1_25.f1_);
    return FeLocal_fe_shader_private_layout_0_(_e4, _e7);
}

fn norm_squared(a0_55: FeLocal_fe_shader_private_layout_0_) -> f32 {
    return ((a0_55.f0_ * a0_55.f0_) + (a0_55.f1_ * a0_55.f1_));
}

fn is_invalid(a0_56: FeLocal_fe_shader_private_layout_20_) -> bool {
    var local_62: bool;
    var local_63: bool = false;
    var local_64: bool = bool();

    if (a0_56.f0_ == 2143289344u) {
        local_64 = true;
    } else {
        if (a0_56.f4_ == 2143289344u) {
            local_64 = true;
        }
    }
    let _e14 = local_64;
    return _e14;
}

fn non_finite(a0_57: f32) -> bool {
    return (((a0_57 - a0_57) == 0f) == false);
}

fn is_non_finite_complex(a0_58: FeLocal_fe_shader_private_layout_0_) -> bool {
    var local_65: bool;
    var local_66: bool = false;
    var local_67: bool = bool();

    let _e4 = non_finite(a0_58.f0_);
    if _e4 {
        local_67 = true;
    } else {
        let _e6 = non_finite(a0_58.f1_);
        if _e6 {
            local_67 = true;
        }
    }
    let _e12 = local_67;
    return _e12;
}

fn impl_trait_f32_max(a0_59: f32, a1_26: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_59);
    let _e3 = bitcast<u32>(a1_26);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn decode_metadata(a0_60: FeLocal_fe_shader_private_layout_20_) -> FeLocal_fe_shader_private_layout_23_ {
    return FeLocal_fe_shader_private_layout_23_(a0_60.f0_, a0_60.f1_);
}

fn delta(a0_61: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_61.f0_, a0_61.f1_);
}

fn position(a0_62: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_62.f2_, a0_62.f3_);
}

fn progress_reference_index(a0_63: u32) -> u32 {
    return (a0_63 & 536870911u);
}

fn reference_index(a0_64: FeLocal_fe_shader_private_layout_1_) -> u32 {
    let _e2 = progress_reference_index(a0_64.f4_);
    return _e2;
}

fn advance_progress(a1_27: u32, a2_13: FeLocal_fe_shader_private_layout_0_, a3_6: u32, a4_4: u32, a5_1: FeLocal_fe_shader_private_layout_1_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_68: FeLocal_fe_shader_private_layout_1_;
    var local_69: bool = false;
    var local_70: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_71: u32 = u32();
    var local_72: u32 = u32();
    var local_73: u32 = u32();
    var local_74: f32 = f32();
    var local_75: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_76: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_77: u32 = u32();
    var local_78: u32 = u32();
    var local_79: u32 = u32();
    var local_80: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_81_: bool;
    var local_81: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_82: u32 = u32();
    var local_83: f32 = f32();
    var local_84: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_85: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_86: u32 = u32();
    var local_87: u32 = u32();
    var local_88: u32 = u32();
    var local_89: bool = bool();

    let _e9 = is_presentable(a5_1);
    if _e9 {
        local_70 = a5_1;
    } else {
        if (a1_27 > (4294967295u - 8194u)) {
            (*fe_trapped_9) = true;
        } else {
            let _e20 = orbit[i32((a1_27 + 8194u))].re_w0_bits;
            let _e22 = orbit[i32((a1_27 + 8194u))].re_w1_bits;
            let _e24 = orbit[i32((a1_27 + 8194u))].re_w2_bits;
            let _e26 = orbit[i32((a1_27 + 8194u))].re_w3_bits;
            let _e28 = orbit[i32((a1_27 + 8194u))].im_w0_bits;
            let _e30 = orbit[i32((a1_27 + 8194u))].im_w1_bits;
            let _e32 = orbit[i32((a1_27 + 8194u))].im_w2_bits;
            let _e34 = orbit[i32((a1_27 + 8194u))].im_w3_bits;
            let _e36 = decode_metadata(FeLocal_fe_shader_private_layout_20_(_e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
            let _e38 = delta(a5_1);
            let _e39 = position(a5_1);
            let _e40 = reference_index(a5_1);
            let _e41 = is_escaped(a5_1);
            if _e41 {
                local_71 = 1u;
            }
            let _e46 = local_71;
            let _e47 = is_glitched(a5_1);
            if _e47 {
                local_72 = 1u;
            }
            let _e51 = local_72;
            local_73 = 0u;
            local_74 = a5_1.f7_;
            local_75 = _e39;
            local_76 = _e38;
            local_77 = _e51;
            local_78 = _e46;
            local_79 = _e40;
            local_80 = a5_1.f5_;
            loop {
                let _e73 = local_73;
                let _e75 = local_74;
                let _e77 = local_75;
                let _e79 = local_76;
                let _e81 = local_77;
                let _e83 = local_78;
                let _e85 = local_79;
                let _e87 = local_80;
                let _e88 = (_e87 < a3_6);
                loop_header_carry_81_ = _e88;
                if _e88 {
                    if (_e73 < a4_4) {
                        if (_e83 == 0u) {
                            if (_e81 == 0u) {
                                if (_e85 > (4294967295u - 1u)) {
                                } else {
                                    if (((_e85 + 1u) < _e36.f0_) == false) {
                                        local_81 = _e77;
                                        local_82 = 0u;
                                    } else {
                                        local_81 = _e79;
                                        local_82 = _e85;
                                    }
                                    let _e110 = local_81;
                                    let _e112 = local_82;
                                    if (a1_27 > (4294967295u - _e112)) {
                                    } else {
                                        let _e120 = orbit[i32((a1_27 + _e112))].re_w0_bits;
                                        let _e122 = orbit[i32((a1_27 + _e112))].re_w1_bits;
                                        let _e124 = orbit[i32((a1_27 + _e112))].re_w2_bits;
                                        let _e126 = orbit[i32((a1_27 + _e112))].re_w3_bits;
                                        let _e128 = orbit[i32((a1_27 + _e112))].im_w0_bits;
                                        let _e130 = orbit[i32((a1_27 + _e112))].im_w1_bits;
                                        let _e132 = orbit[i32((a1_27 + _e112))].im_w2_bits;
                                        let _e134 = orbit[i32((a1_27 + _e112))].im_w3_bits;
                                        let _e135 = FeLocal_fe_shader_private_layout_20_(_e120, _e122, _e124, _e126, _e128, _e130, _e132, _e134);
                                        let _e137 = (a1_27 + _e112);
                                        if (a1_27 > (4294967295u - _e112)) {
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
                                                let _e169 = FeLocal_fe_shader_private_layout_20_(_e154, _e156, _e158, _e160, _e162, _e164, _e166, _e168);
                                                let _e170 = is_invalid(_e135);
                                                if _e170 {
                                                    local_83 = _e75;
                                                    local_84 = _e77;
                                                    local_85 = _e110;
                                                    local_86 = 1u;
                                                    local_87 = _e83;
                                                    local_88 = _e112;
                                                } else {
                                                    let _e171 = is_invalid(_e169);
                                                    if _e171 {
                                                        local_83 = _e75;
                                                        local_84 = _e77;
                                                        local_85 = _e110;
                                                        local_86 = 1u;
                                                        local_87 = _e83;
                                                        local_88 = _e112;
                                                    } else {
                                                        let _e173 = decode(_e135);
                                                        let _e174 = decode(_e169);
                                                        let _e175 = perturb(_e173, _e110, a2_13);
                                                        let _e176 = reference_with_delta(_e174, _e175);
                                                        let _e177 = norm_squared(_e176);
                                                        let _e178 = norm_squared(_e175);
                                                        if (4f < _e177) {
                                                            let _e184 = impl_trait_f32_abs((_e177 - 4f));
                                                            let _e186 = impl_trait_f32_max(1f, _e177);
                                                            if (_e184 <= (0.000004f * _e186)) {
                                                                local_89 = true;
                                                            } else {
                                                                local_89 = false;
                                                            }
                                                        } else {
                                                            local_89 = false;
                                                        }
                                                        let _e197 = local_89;
                                                        let _e198 = is_non_finite_complex(_e175);
                                                        if _e198 {
                                                            local_83 = _e75;
                                                            local_84 = _e77;
                                                            local_85 = _e110;
                                                            local_86 = 1u;
                                                            local_87 = _e83;
                                                            local_88 = _e112;
                                                        } else {
                                                            let _e199 = non_finite(_e177);
                                                            if (_e199 | _e197) {
                                                                local_83 = _e75;
                                                                local_84 = _e77;
                                                                local_85 = _e110;
                                                                local_86 = 1u;
                                                                local_87 = _e83;
                                                                local_88 = _e112;
                                                            } else {
                                                                if (4f < _e177) {
                                                                    local_83 = _e177;
                                                                    local_84 = _e176;
                                                                    local_85 = _e175;
                                                                    local_86 = _e81;
                                                                    local_87 = 1u;
                                                                    local_88 = _e112;
                                                                } else {
                                                                    if (_e177 < _e178) {
                                                                        local_83 = _e75;
                                                                        local_84 = _e176;
                                                                        local_85 = _e176;
                                                                        local_86 = _e81;
                                                                        local_87 = _e83;
                                                                        local_88 = 0u;
                                                                    } else {
                                                                        if (_e112 > (4294967295u - 1u)) {
                                                                            (*fe_trapped_9) = true;
                                                                            break;
                                                                        } else {
                                                                            local_83 = _e75;
                                                                            local_84 = _e176;
                                                                            local_85 = _e175;
                                                                            local_86 = _e81;
                                                                            local_87 = _e83;
                                                                            local_88 = (_e112 + 1u);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                let _e258 = local_83;
                                                let _e260 = local_84;
                                                let _e262 = local_85;
                                                let _e264 = local_86;
                                                let _e266 = local_87;
                                                let _e268 = local_88;
                                                local_73 = (_e73 + 1u);
                                                local_74 = _e258;
                                                local_75 = _e260;
                                                local_76 = _e262;
                                                local_77 = _e264;
                                                local_78 = _e266;
                                                local_79 = _e268;
                                                local_80 = (_e87 + 1u);
                                                continue;
                                            }
                                        }
                                    }
                                }
                                (*fe_trapped_9) = true;
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
            let _e284 = local_74;
            let _e286 = local_75;
            let _e288 = local_76;
            let _e290 = local_77;
            let _e292 = local_78;
            let _e294 = local_79;
            let _e296 = local_80;
            let _e297 = pack_progress_reference(_e294, _e292, _e290);
            let _e299 = from_continuation(_e288, _e286, _e297, _e296, a5_1.f6_, _e284);
            local_70 = _e299;
        }
    }
    let _e303 = local_70;
    return _e303;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_325_: FeLocal_fe_shader_private_layout_19_ = FeLocal_fe_shader_private_layout_19_();
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32;
    var local_5: bool = false;
    var local_6: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_7: u32;
    var local_8: bool = false;
    var local_9: u32;
    var local_10: bool = false;
    var local_11: u32;
    var local_12: bool = false;
    var local_13: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    let _e13 = params.p29_;
    let _e15 = params.p30_;
    let _e17 = params.p31_;
    let _e19 = params.p32_;
    let _e21 = params.p33_;
    let _e23 = params.p34_;
    let _e25 = params.p35_;
    let _e27 = params.p36_;
    let _e29 = params.p37_;
    let _e31 = params.p38_;
    let _e33 = params.p39_;
    let _e35 = params.p40_;
    let _e37 = params.p41_;
    let _e39 = params.p42_;
    let _e41 = params.p43_;
    let _e43 = params.p44_;
    let _e47 = params.p45_;
    let _e49 = params.p46_;
    let _e51 = params.p47_;
    let _e53 = params.p48_;
    let _e57 = params.p49_;
    let _e59 = params.p50_;
    let _e61 = params.p51_;
    let _e63 = params.p52_;
    let _e67 = params.p53_;
    let _e69 = params.p54_;
    let _e71 = params.p55_;
    let _e73 = params.p56_;
    let _e77 = params.p57_;
    let _e79 = params.p58_;
    let _e81 = params.p59_;
    let _e83 = params.p60_;
    let _e87 = params.p61_;
    let _e89 = params.p62_;
    let _e91 = params.p63_;
    let _e93 = params.p64_;
    let _e97 = params.p65_;
    let _e99 = params.p66_;
    let _e101 = params.p67_;
    let _e103 = params.p68_;
    let _e107 = params.p69_;
    let _e109 = params.p70_;
    let _e111 = params.p71_;
    let _e113 = params.p72_;
    let _e117 = params.p73_;
    let _e119 = params.p74_;
    let _e121 = params.p75_;
    let _e123 = params.p76_;
    let _e127 = params.p77_;
    let _e129 = params.p78_;
    let _e131 = params.p79_;
    let _e133 = params.p80_;
    let _e137 = params.p81_;
    let _e139 = params.p82_;
    let _e141 = params.p83_;
    let _e143 = params.p84_;
    let _e145 = params.p85_;
    let _e147 = params.p86_;
    let _e149 = params.p87_;
    let _e151 = params.p88_;
    let _e155 = params.p89_;
    let _e168 = FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(_e13, FeLocal_fe_shader_private_layout_8_(_e15, FeLocal_fe_shader_private_layout_7_(_e17, FeLocal_fe_shader_private_layout_6_(_e19))))), FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(_e21, FeLocal_fe_shader_private_layout_8_(_e23, FeLocal_fe_shader_private_layout_7_(_e25, FeLocal_fe_shader_private_layout_6_(_e27)))))), _e29, _e31);
    let _e201 = reference[i32(0u)].active_;
    let _e203 = reference[i32(0u)].active_valid;
    let _e205 = reference[i32(0u)].pending;
    let _e207 = reference[i32(0u)].index;
    let _e209 = reference[i32(0u)].zx_s;
    let _e211 = reference[i32(0u)].zy_s;
    let _e213 = reference[i32(0u)].ready_at;
    fixed_local_325_ = FeLocal_fe_shader_private_layout_19_(_e168, _e33, _e35, _e37, _e39, _e41, FeLocal_fe_shader_private_layout_17_(FeLocal_fe_shader_private_layout_15_(array<FeLocal_fe_shader_private_layout_14_, 10>(FeLocal_fe_shader_private_layout_14_((_e43 != 0u), _e47, FeLocal_fe_shader_private_layout_13_(_e49, _e51)), FeLocal_fe_shader_private_layout_14_((_e53 != 0u), _e57, FeLocal_fe_shader_private_layout_13_(_e59, _e61)), FeLocal_fe_shader_private_layout_14_((_e63 != 0u), _e67, FeLocal_fe_shader_private_layout_13_(_e69, _e71)), FeLocal_fe_shader_private_layout_14_((_e73 != 0u), _e77, FeLocal_fe_shader_private_layout_13_(_e79, _e81)), FeLocal_fe_shader_private_layout_14_((_e83 != 0u), _e87, FeLocal_fe_shader_private_layout_13_(_e89, _e91)), FeLocal_fe_shader_private_layout_14_((_e93 != 0u), _e97, FeLocal_fe_shader_private_layout_13_(_e99, _e101)), FeLocal_fe_shader_private_layout_14_((_e103 != 0u), _e107, FeLocal_fe_shader_private_layout_13_(_e109, _e111)), FeLocal_fe_shader_private_layout_14_((_e113 != 0u), _e117, FeLocal_fe_shader_private_layout_13_(_e119, _e121)), FeLocal_fe_shader_private_layout_14_((_e123 != 0u), _e127, FeLocal_fe_shader_private_layout_13_(_e129, _e131)), FeLocal_fe_shader_private_layout_14_((_e133 != 0u), _e137, FeLocal_fe_shader_private_layout_13_(_e139, _e141)))), FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_13_(_e143, _e145), FeLocal_fe_shader_private_layout_13_(_e147, _e149))), FeLocal_fe_shader_private_layout_18_((_e151 != 0u), _e155));
    let _e217 = can_refine(FeLocal_fe_shader_private_layout_5_(_e201, _e203, _e205, _e207, _e209, _e211, _e213), (&fixed_local_325_));
    if _e217 {
    } else {
        local_1 = true;
    }
    let _e320 = local_1;
    if _e320 {
    } else {
        let _e225 = cache[i32(0u)].cursor;
        let _e227 = cache[i32(0u)].epoch;
        let _e228 = for_view(_e29, _e31, (&fe_trapped));
        let _e229 = rect_pixel(_e228, _e225, global_invocation_id.x, global_invocation_id.y, _e31, (&fe_trapped));
        if _e229.f1_ {
        } else {
            local_3 = true;
        }
        let _e318 = local_3;
        if _e318 {
        } else {
            let _e235 = impl_CohortPixel_index(_e229);
            let _e239 = progress_pixels[i32(_e235)].dz_re;
            let _e241 = progress_pixels[i32(_e235)].dz_im;
            let _e243 = progress_pixels[i32(_e235)].z_re;
            let _e245 = progress_pixels[i32(_e235)].z_im;
            let _e247 = progress_pixels[i32(_e235)].reference_i;
            let _e249 = progress_pixels[i32(_e235)].iteration;
            let _e251 = progress_pixels[i32(_e235)].epoch;
            let _e253 = progress_pixels[i32(_e235)].magnitude;
            if (_e251 == _e227) {
                local_6 = FeLocal_fe_shader_private_layout_1_(_e239, _e241, _e243, _e245, _e247, _e249, _e251, _e253);
            } else {
                let _e256 = empty_progress(_e227);
                local_6 = _e256;
            }
            let _e261 = local_6;
            let _e263 = is_terminal(_e261, _e228.f0_);
            if _e263 {
                local_8 = true;
            }
            let _e316 = local_8;
            if _e316 {
            } else {
                let _e271 = (_e201 * 8195u);
                let _e272 = (_e201 != 0u);
                if (_e272 && (8195u > (4294967295u / select(1u, _e201, _e272)))) {
                    fe_trapped = true;
                }
                let _e280 = impl_CohortPixel_sample(_e229);
                let _e282 = pixel_delta_from_reference(_e271, _e168, _e280, (&fe_trapped));
                let _e284 = advance_progress(_e271, _e282, _e228.f0_, 2048u, _e261, (&fe_trapped));
                let _e286 = is_terminal(_e284, _e228.f0_);
                if _e286 {
                    let _e287 = with_fade_start(_e284, _e33);
                    local_13 = _e287;
                } else {
                    local_13 = _e284;
                }
                let _e291 = local_13;
                progress_pixels[i32(_e235)].dz_re = _e291.f0_;
                progress_pixels[i32(_e235)].dz_im = _e291.f1_;
                progress_pixels[i32(_e235)].z_re = _e291.f2_;
                progress_pixels[i32(_e235)].z_im = _e291.f3_;
                progress_pixels[i32(_e235)].reference_i = _e291.f4_;
                progress_pixels[i32(_e235)].iteration = _e291.f5_;
                progress_pixels[i32(_e235)].epoch = _e291.f6_;
                progress_pixels[i32(_e235)].magnitude = _e291.f7_;
                let _e310 = progress_color(_e284, (&fe_trapped));
                native_pixels[i32(_e235)] = _e310;
                antialiased_pixels[i32(_e235)] = _e310;
            }
        }
    }
    let _e331 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e331);
}
