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

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: bool,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_14_,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: array<FeLocal_fe_shader_private_layout_15_, 10>,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: FeLocal_fe_shader_private_layout_14_,
    f1_: FeLocal_fe_shader_private_layout_14_,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: FeLocal_fe_shader_private_layout_16_,
    f1_: FeLocal_fe_shader_private_layout_17_,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: bool,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: FeLocal_fe_shader_private_layout_10_,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: FeLocal_fe_shader_private_layout_18_,
    f7_: FeLocal_fe_shader_private_layout_19_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: bool,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_21_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_22_ {
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

struct FeLocal_fe_shader_private_layout_23_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: u32,
    f1_: f32,
    f2_: u32,
}

struct snapshot_oracle_element {
    iteration: u32,
    magnitude: f32,
    flags: u32,
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
var<storage, read_write> snapshot_oracle: array<snapshot_oracle_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> native_pixels: array<u32>;
@group(0) @binding(3)
var<storage, read_write> antialiased_pixels: array<u32>;
@group(0) @binding(4)
var<storage, read_write> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(5)
var<storage, read_write> snapshot_pixels: array<u32>;
@group(0) @binding(6)
var<storage> params: Params;
@group(0) @binding(7)
var<storage, read_write> trap: array<u32, 32768>;

fn is_input_settled(a0_: ptr<function, FeLocal_fe_shader_private_layout_20_>) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    let _e4 = (*a0_).f4_;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_).f1_;
        let _e10 = (*a0_).f2_;
        if (60f <= (_e8 - _e10)) {
            local_7 = true;
        }
    }
    let _e17 = local_7;
    return _e17;
}

fn iteration_limit(a0_1: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_8: u32 = u32();
    var local_9: f32 = f32();
    var local_10: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_11: u32 = u32();
    var local_12: f32 = f32();
    var local_13: u32;
    var local_14: bool = false;
    var local_15: u32 = u32();

    local_8 = 0u;
    local_9 = a0_1;
    local_10 = 0u;
    loop {
        let _e12 = local_8;
        let _e14 = local_9;
        let _e16 = local_10;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_11 = (_e12 + 1u);
                    local_12 = (_e14 * 2f);
                }
            } else {
                local_11 = _e12;
                local_12 = _e14;
            }
            let _e36 = local_11;
            let _e38 = local_12;
            local_8 = _e36;
            local_9 = _e38;
            local_10 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_8;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_15 = 8192u;
        } else {
            local_15 = _e60;
        }
        let _e71 = local_15;
        local_13 = _e71;
        local_14 = true;
    }
    let _e77 = local_14;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_13;
    return _e79;
}

fn to_i32_(a0_2: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_2)), 2147483648u, (a0_2 <= -2147483600f)), 2147483647u, (a0_2 >= 2147483600f)), (a0_2 == a0_2));
}

fn for_view(a0_3: f32, a1_: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_11_ {
    var local_16: FeLocal_fe_shader_private_layout_11_;
    var local_17: bool = false;

    let _e4 = iteration_limit(a0_3, fe_trapped_2);
    let _e13 = to_i32_(((a1_ + 127f) / 128f));
    let _e18 = to_i32_(((a1_ + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_11_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn impl_trait_Last_eq(a0_4: f32, a1_1: f32) -> bool {
    return (a0_4 == a1_1);
}

fn eq_ge630_(a0_5: FeLocal_fe_shader_private_layout_5_, a1_2: FeLocal_fe_shader_private_layout_5_) -> bool {
    var local_18: bool;
    var local_19: bool = false;
    var local_20: bool = bool();

    if (a0_5.f0_ == a1_2.f0_) {
        let _e11 = impl_trait_Last_eq(a0_5.f1_.f0_, a1_2.f1_.f0_);
        if _e11 {
            local_20 = true;
        }
    }
    let _e15 = local_20;
    return _e15;
}

fn eq_g4419_(a0_6: FeLocal_fe_shader_private_layout_6_, a1_3: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_21: bool;
    var local_22: bool = false;
    var local_23: bool = bool();

    if (a0_6.f0_ == a1_3.f0_) {
        let _e9 = eq_ge630_(a0_6.f1_, a1_3.f1_);
        if _e9 {
            local_23 = true;
        }
    }
    let _e13 = local_23;
    return _e13;
}

fn eq_ga905_(a0_7: FeLocal_fe_shader_private_layout_7_, a1_4: FeLocal_fe_shader_private_layout_7_) -> bool {
    var local_24: bool;
    var local_25: bool = false;
    var local_26: bool = bool();

    if (a0_7.f0_ == a1_4.f0_) {
        let _e9 = eq_g4419_(a0_7.f1_, a1_4.f1_);
        if _e9 {
            local_26 = true;
        }
    }
    let _e13 = local_26;
    return _e13;
}

fn impl_trait_Coordinate_eq(a0_8: FeLocal_fe_shader_private_layout_8_, a1_5: FeLocal_fe_shader_private_layout_8_) -> bool {
    var local_27: bool;
    var local_28: bool = false;
    var local_29: bool = bool();

    let _e6 = eq_ga905_(a0_8.f0_, a1_5.f0_);
    if _e6 {
        local_29 = true;
    }
    let _e10 = local_29;
    return _e10;
}

fn eq_ge0da(a0_9: FeLocal_fe_shader_private_layout_9_, a1_6: FeLocal_fe_shader_private_layout_9_) -> bool {
    var local_30: bool;
    var local_31: bool = false;
    var local_32: bool = bool();

    let _e6 = impl_trait_Coordinate_eq(a0_9.f0_, a1_6.f0_);
    if _e6 {
        let _e9 = impl_trait_Coordinate_eq(a0_9.f1_, a1_6.f1_);
        if _e9 {
            local_32 = true;
        }
    }
    let _e13 = local_32;
    return _e13;
}

fn impl_trait_Camera_eq(a0_10: FeLocal_fe_shader_private_layout_10_, a1_7: FeLocal_fe_shader_private_layout_10_) -> bool {
    var local_33: bool;
    var local_34: bool = false;
    var local_35: bool = bool();

    let _e6 = eq_ge0da(a0_10.f0_, a1_7.f0_);
    if _e6 {
        if (a0_10.f1_ == a1_7.f1_) {
            if (a0_10.f2_ == a1_7.f2_) {
                local_35 = true;
            }
        }
    }
    let _e16 = local_35;
    return _e16;
}

fn same_camera(a0_11: FeLocal_fe_shader_private_layout_22_, a1_8: FeLocal_fe_shader_private_layout_22_) -> bool {
    let _e4 = impl_trait_Camera_eq(a0_11.f0_, a1_8.f0_);
    return _e4;
}

fn refine_steps(a0_12: FeLocal_fe_shader_private_layout_11_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_36: u32;
    var local_37: bool = false;

    let _e9 = (a0_12.f1_ != 0u);
    if (_e9 && (a0_12.f4_ > (4294967295u / select(1u, a0_12.f1_, _e9)))) {
        (*fe_trapped_3) = true;
    } else {
        local_36 = (a0_12.f1_ * a0_12.f4_);
        local_37 = true;
    }
    let _e19 = local_36;
    return _e19;
}

fn impl_trait_Pixel_default() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_shader_private_layout_2_ {
    let _e0 = impl_trait_Pixel_default();
    return FeLocal_fe_shader_private_layout_2_(_e0, false);
}

fn from_i32_(a0_13: u32) -> f32 {
    return f32(bitcast<i32>(a0_13));
}

fn phase_offset(a0_14: u32, a1_9: u32, a2_: u32) -> u32 {
    let _e3 = from_i32_(a0_14);
    let _e6 = from_i32_(a1_9);
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

fn phase_order_rect(a0_15: u32, a1_10: u32, a2_1: u32, a3_: u32, a4_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_38: u32;
    var local_39: bool = false;
    var local_40: u32 = u32();

    let _e10 = (a3_ * a4_);
    let _e11 = (a3_ != 0u);
    if (_e11 && (a4_ > (4294967295u / select(1u, a3_, _e11)))) {
    } else {
        let _e17 = phase_offset(a1_10, a2_1, _e10);
        if ((_e17 & 1u) == 0u) {
            local_40 = 1u;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_4) = true;
            } else {
                local_40 = (_e10 - 1u);
            }
        }
        let _e30 = local_40;
        let _e34 = (a0_15 * _e30);
        let _e35 = (a0_15 != 0u);
        if (_e35 && (_e30 > (4294967295u / select(1u, a0_15, _e35)))) {
        } else {
            if (_e34 > (4294967295u - _e17)) {
            } else {
                if (_e10 == 0u) {
                } else {
                    local_38 = ((_e34 + _e17) % _e10);
                    local_39 = true;
                }
                let _e51 = local_39;
                if _e51 {
                }
            }
            let _e53 = local_39;
            if _e53 {
            }
        }
        let _e55 = local_39;
        if _e55 {
        }
    }
    let _e58 = local_39;
    if _e58 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e60 = local_38;
    return _e60;
}

fn in_extent(a0_16: FeLocal_fe_shader_private_layout_1_, a1_11: f32) -> bool {
    var local_41: bool;
    var local_42: bool = false;
    var local_43: bool = bool();

    let _e5 = from_i32_(a0_16.f0_);
    if (_e5 < a1_11) {
        let _e8 = from_i32_(a0_16.f1_);
        if (_e8 < a1_11) {
            local_43 = true;
        }
    }
    let _e13 = local_43;
    return _e13;
}

fn at(a0_17: u32, a1_12: u32, a2_2: f32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = FeLocal_fe_shader_private_layout_1_(a0_17, a1_12);
    let _e4 = in_extent(_e3, a2_2);
    return FeLocal_fe_shader_private_layout_2_(_e3, _e4);
}

fn rect_pixel(a0_18: FeLocal_fe_shader_private_layout_11_, a1_13: u32, a2_3: u32, a3_1: u32, a4_1: f32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_44: FeLocal_fe_shader_private_layout_2_;
    var local_45: bool = false;
    var local_46: FeLocal_fe_shader_private_layout_2_;
    var local_47: bool = false;

    let _e7 = refine_steps(a0_18, fe_trapped_5);
    if ((a1_13 < _e7) == false) {
        let _e11 = impl_trait_CohortPixel_default();
        local_44 = _e11;
        local_45 = true;
    }
    let _e82 = local_45;
    if _e82 {
    } else {
        if (a0_18.f1_ == 0u) {
        } else {
            let _e22 = phase_order_rect((a1_13 / a0_18.f1_), a2_3, a3_1, a0_18.f2_, a0_18.f3_, fe_trapped_5);
            let _e27 = (a2_3 * a0_18.f2_);
            let _e28 = (a2_3 != 0u);
            if (_e28 && (a0_18.f2_ > (4294967295u / select(1u, a2_3, _e28)))) {
            } else {
                if (a0_18.f2_ == 0u) {
                } else {
                    let _e36 = (_e22 % a0_18.f2_);
                    if (_e27 > (4294967295u - _e36)) {
                    } else {
                        let _e45 = (a3_1 * a0_18.f3_);
                        let _e46 = (a3_1 != 0u);
                        if (_e46 && (a0_18.f3_ > (4294967295u / select(1u, a3_1, _e46)))) {
                        } else {
                            if (a0_18.f2_ == 0u) {
                            } else {
                                let _e54 = (_e22 / a0_18.f2_);
                                if (_e45 > (4294967295u - _e54)) {
                                } else {
                                    let _e59 = at((_e27 + _e36), (_e45 + _e54), a4_1);
                                    local_46 = _e59;
                                    local_47 = true;
                                }
                                let _e64 = local_47;
                                if _e64 {
                                }
                            }
                            let _e66 = local_47;
                            if _e66 {
                            }
                        }
                        let _e68 = local_47;
                        if _e68 {
                        }
                    }
                    let _e70 = local_47;
                    if _e70 {
                    }
                }
                let _e72 = local_47;
                if _e72 {
                }
            }
            let _e74 = local_47;
            if _e74 {
            }
        }
        let _e77 = local_47;
        if _e77 {
        } else {
            (*fe_trapped_5) = true;
        }
        let _e79 = local_46;
        local_44 = _e79;
    }
    let _e84 = local_44;
    return _e84;
}

fn impl_Pixel_index(a0_19: FeLocal_fe_shader_private_layout_1_, a1_14: u32) -> u32 {
    return ((a0_19.f1_ << a1_14) | a0_19.f0_);
}

fn impl_CohortPixel_index(a0_20: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e3 = impl_Pixel_index(a0_20.f0_, 11u);
    return _e3;
}

fn progress_is_presentable(a0_21: u32) -> bool {
    return (((a0_21 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_22: FeLocal_fe_shader_private_layout_12_) -> bool {
    let _e2 = progress_is_presentable(a0_22.f4_);
    return _e2;
}

fn is_presentable_in(a0_23: FeLocal_fe_shader_private_layout_12_, a1_15: u32) -> bool {
    var local_48: bool;
    var local_49: bool = false;
    var local_50: bool = bool();

    if (a0_23.f6_ == a1_15) {
        let _e6 = is_presentable(a0_23);
        if _e6 {
            local_50 = true;
        }
    }
    let _e10 = local_50;
    return _e10;
}

fn oracle_is_glitched(a0_24: u32) -> bool {
    return (((a0_24 & 1073741824u) == 0u) == false);
}

fn oracle_is_usable(a0_25: u32) -> bool {
    let _e1 = oracle_is_glitched(a0_25);
    return (_e1 == false);
}

fn is_usable(a0_26: FeLocal_fe_shader_private_layout_13_) -> bool {
    let _e2 = oracle_is_usable(a0_26.f2_);
    return _e2;
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_();
}

fn from_continuation(a0_27: FeLocal_fe_shader_private_layout_3_, a1_16: FeLocal_fe_shader_private_layout_3_, a2_4: u32, a3_2: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_shader_private_layout_12_ {
    return FeLocal_fe_shader_private_layout_12_(a0_27.f0_, a0_27.f1_, a1_16.f0_, a1_16.f1_, a2_4, a3_2, a4_2, a5_);
}

fn progress_with_presentable(a0_28: u32) -> u32 {
    return (a0_28 | 536870912u);
}

fn with_fade_start(a0_29: FeLocal_fe_shader_private_layout_12_, a1_17: f32) -> FeLocal_fe_shader_private_layout_12_ {
    var fixed_local_3_: FeLocal_fe_shader_private_layout_12_ = FeLocal_fe_shader_private_layout_12_();

    fixed_local_3_ = a0_29;
    fixed_local_3_.f2_ = a1_17;
    let _e6 = progress_with_presentable(a0_29.f4_);
    fixed_local_3_.f4_ = _e6;
    let _e8 = fixed_local_3_;
    return _e8;
}

fn from_oracle(a0_30: FeLocal_fe_shader_private_layout_13_, a1_18: u32, a2_5: f32) -> FeLocal_fe_shader_private_layout_12_ {
    let _e3 = default_ge58b();
    let _e4 = default_ge58b();
    let _e8 = from_continuation(_e3, _e4, a0_30.f2_, a0_30.f0_, a1_18, a0_30.f1_);
    let _e9 = with_fade_start(_e8, a2_5);
    return _e9;
}

fn is_glitched(a0_31: FeLocal_fe_shader_private_layout_12_) -> bool {
    let _e2 = oracle_is_glitched(a0_31.f4_);
    return _e2;
}

fn clamp_(a0_32: f32, a1_19: f32, a2_6: f32) -> f32 {
    var local_51: f32;
    var local_52: bool = false;
    var local_53: f32 = f32();

    if (a0_32 < a1_19) {
        local_53 = a1_19;
    } else {
        if (a2_6 < a0_32) {
            local_53 = a2_6;
        } else {
            local_53 = a0_32;
        }
    }
    let _e11 = local_53;
    return _e11;
}

fn pack_lab(a0_33: FeLocal_fe_shader_private_layout_21_) -> u32 {
    let _e4 = clamp_(a0_33.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_33.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_33.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_21_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn progress_is_escaped(a0_34: u32) -> bool {
    return (((a0_34 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_35: FeLocal_fe_shader_private_layout_12_) -> bool {
    let _e2 = progress_is_escaped(a0_35.f4_);
    return _e2;
}

fn impl_trait_f32_floor(a0_36: f32) -> f32 {
    return floor(a0_36);
}

fn fract_(a0_37: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_37);
    return (a0_37 - _e1);
}

fn anchor(a0_38: u32) -> FeLocal_fe_shader_private_layout_0_ {
    var local_54: FeLocal_fe_shader_private_layout_0_;
    var local_55: bool = false;
    var local_56: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    switch a0_38 {
        case 0u: {
            local_56 = FeLocal_fe_shader_private_layout_0_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_56 = FeLocal_fe_shader_private_layout_0_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_56 = FeLocal_fe_shader_private_layout_0_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_56 = FeLocal_fe_shader_private_layout_0_(0.73f, 0.142f, 165f);
        }
        default: {
            local_56 = FeLocal_fe_shader_private_layout_0_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_56;
    return _e29;
}

fn interpolate(a0_39: FeLocal_fe_shader_private_layout_0_, a1_20: FeLocal_fe_shader_private_layout_0_, a2_7: f32) -> FeLocal_fe_shader_private_layout_0_ {
    var local_57: FeLocal_fe_shader_private_layout_0_;
    var local_58: bool = false;
    var local_59: f32 = f32();

    let _e7 = (a1_20.f2_ - a0_39.f2_);
    if (540f < _e7) {
        let _e14 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
        let _e17 = (_e7 - (360f * _e14));
        if (_e17 == -180f) {
            if (0f < _e7) {
                local_59 = 180f;
            } else {
                local_59 = _e17;
            }
        } else {
            local_59 = _e17;
        }
    } else {
        if (_e7 < -540f) {
            let _e32 = impl_trait_f32_floor(((_e7 + 180f) / 360f));
            let _e35 = (_e7 - (360f * _e32));
            if (_e35 == -180f) {
                if (0f < _e7) {
                    local_59 = 180f;
                } else {
                    local_59 = _e35;
                }
            } else {
                local_59 = _e35;
            }
        } else {
            if (180f < _e7) {
                local_59 = (_e7 - 360f);
            } else {
                if (_e7 < -180f) {
                    local_59 = (_e7 + 360f);
                } else {
                    local_59 = _e7;
                }
            }
        }
    }
    let _e56 = local_59;
    return FeLocal_fe_shader_private_layout_0_((a0_39.f0_ + ((a1_20.f0_ - a0_39.f0_) * a2_7)), (a0_39.f1_ + ((a1_20.f1_ - a0_39.f1_) * a2_7)), (a0_39.f2_ + (_e56 * a2_7)));
}

fn wrap_pi(a0_40: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_40 / 6.2831855f) + 0.5f));
    return (a0_40 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_41: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_41) & 2147483647u));
}

fn sin_(a0_42: f32) -> f32 {
    let _e1 = wrap_pi(a0_42);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_43: f32) -> f32 {
    let _e3 = sin_((a0_43 + 1.5707964f));
    return _e3;
}

fn to_color(a0_44: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_21_ {
    let _e3 = (a0_44.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_21_(a0_44.f0_, (a0_44.f1_ * _e6), (a0_44.f1_ * _e9));
}

fn escape_palette(a0_45: u32, a1_21: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_60: u32;
    var local_61: bool = false;
    var local_62: u32 = u32();

    let _e5 = from_i32_(a0_45);
    let _e11 = fract_(((_e5 + (4f / a1_21)) / 256f));
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
            local_62 = _e29;
        }
    }
    let _e38 = local_62;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_21_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_46: FeLocal_fe_shader_private_layout_12_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_63: u32;
    var local_64: bool = false;
    var local_65: u32 = u32();

    let _e4 = is_glitched(a0_46);
    if _e4 {
        let _e5 = glitch();
        local_65 = _e5;
    } else {
        let _e6 = is_escaped(a0_46);
        if _e6 {
            let _e9 = escape_palette(a0_46.f5_, a0_46.f7_, fe_trapped_7);
            local_65 = _e9;
        } else {
            let _e10 = interior();
            local_65 = _e10;
        }
    }
    let _e15 = local_65;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_301_: FeLocal_fe_shader_private_layout_20_ = FeLocal_fe_shader_private_layout_20_();
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32 = u32();

    let _e14 = params.p29_;
    let _e16 = params.p30_;
    let _e18 = params.p31_;
    let _e20 = params.p32_;
    let _e22 = params.p33_;
    let _e24 = params.p34_;
    let _e26 = params.p35_;
    let _e28 = params.p36_;
    let _e30 = params.p37_;
    let _e32 = params.p38_;
    let _e34 = params.p39_;
    let _e36 = params.p40_;
    let _e38 = params.p41_;
    let _e40 = params.p42_;
    let _e42 = params.p43_;
    let _e44 = params.p44_;
    let _e48 = params.p45_;
    let _e50 = params.p46_;
    let _e52 = params.p47_;
    let _e54 = params.p48_;
    let _e58 = params.p49_;
    let _e60 = params.p50_;
    let _e62 = params.p51_;
    let _e64 = params.p52_;
    let _e68 = params.p53_;
    let _e70 = params.p54_;
    let _e72 = params.p55_;
    let _e74 = params.p56_;
    let _e78 = params.p57_;
    let _e80 = params.p58_;
    let _e82 = params.p59_;
    let _e84 = params.p60_;
    let _e88 = params.p61_;
    let _e90 = params.p62_;
    let _e92 = params.p63_;
    let _e94 = params.p64_;
    let _e98 = params.p65_;
    let _e100 = params.p66_;
    let _e102 = params.p67_;
    let _e104 = params.p68_;
    let _e108 = params.p69_;
    let _e110 = params.p70_;
    let _e112 = params.p71_;
    let _e114 = params.p72_;
    let _e118 = params.p73_;
    let _e120 = params.p74_;
    let _e122 = params.p75_;
    let _e124 = params.p76_;
    let _e128 = params.p77_;
    let _e130 = params.p78_;
    let _e132 = params.p79_;
    let _e134 = params.p80_;
    let _e138 = params.p81_;
    let _e140 = params.p82_;
    let _e142 = params.p83_;
    let _e144 = params.p84_;
    let _e146 = params.p85_;
    let _e148 = params.p86_;
    let _e150 = params.p87_;
    let _e152 = params.p88_;
    let _e156 = params.p89_;
    fixed_local_301_ = FeLocal_fe_shader_private_layout_20_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e14, FeLocal_fe_shader_private_layout_6_(_e16, FeLocal_fe_shader_private_layout_5_(_e18, FeLocal_fe_shader_private_layout_4_(_e20))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e22, FeLocal_fe_shader_private_layout_6_(_e24, FeLocal_fe_shader_private_layout_5_(_e26, FeLocal_fe_shader_private_layout_4_(_e28)))))), _e30, _e32), _e34, _e36, _e38, _e40, _e42, FeLocal_fe_shader_private_layout_18_(FeLocal_fe_shader_private_layout_16_(array<FeLocal_fe_shader_private_layout_15_, 10>(FeLocal_fe_shader_private_layout_15_((_e44 != 0u), _e48, FeLocal_fe_shader_private_layout_14_(_e50, _e52)), FeLocal_fe_shader_private_layout_15_((_e54 != 0u), _e58, FeLocal_fe_shader_private_layout_14_(_e60, _e62)), FeLocal_fe_shader_private_layout_15_((_e64 != 0u), _e68, FeLocal_fe_shader_private_layout_14_(_e70, _e72)), FeLocal_fe_shader_private_layout_15_((_e74 != 0u), _e78, FeLocal_fe_shader_private_layout_14_(_e80, _e82)), FeLocal_fe_shader_private_layout_15_((_e84 != 0u), _e88, FeLocal_fe_shader_private_layout_14_(_e90, _e92)), FeLocal_fe_shader_private_layout_15_((_e94 != 0u), _e98, FeLocal_fe_shader_private_layout_14_(_e100, _e102)), FeLocal_fe_shader_private_layout_15_((_e104 != 0u), _e108, FeLocal_fe_shader_private_layout_14_(_e110, _e112)), FeLocal_fe_shader_private_layout_15_((_e114 != 0u), _e118, FeLocal_fe_shader_private_layout_14_(_e120, _e122)), FeLocal_fe_shader_private_layout_15_((_e124 != 0u), _e128, FeLocal_fe_shader_private_layout_14_(_e130, _e132)), FeLocal_fe_shader_private_layout_15_((_e134 != 0u), _e138, FeLocal_fe_shader_private_layout_14_(_e140, _e142)))), FeLocal_fe_shader_private_layout_17_(FeLocal_fe_shader_private_layout_14_(_e144, _e146), FeLocal_fe_shader_private_layout_14_(_e148, _e150))), FeLocal_fe_shader_private_layout_19_((_e152 != 0u), _e156));
    let _e200 = is_input_settled((&fixed_local_301_));
    if _e200 {
    } else {
        local_1 = true;
    }
    let _e403 = local_1;
    if _e403 {
    } else {
        let _e208 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e210 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e212 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e214 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e216 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e218 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e220 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e222 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e224 = cache[i32(0u)].camera_u002e_zoom;
        let _e226 = cache[i32(0u)].camera_u002e_res;
        let _e228 = cache[i32(0u)].cursor;
        let _e230 = cache[i32(0u)].aa;
        let _e232 = cache[i32(0u)].budget;
        let _e234 = cache[i32(0u)].radius;
        let _e236 = cache[i32(0u)].preview_dirty;
        let _e238 = cache[i32(0u)].blur_dirty;
        let _e240 = cache[i32(0u)].epoch;
        let _e242 = cache[i32(0u)].completed;
        let _e260 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e262 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e264 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e266 = cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e268 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e270 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e272 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e274 = cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e276 = cache[i32(1u)].camera_u002e_zoom;
        let _e278 = cache[i32(1u)].camera_u002e_res;
        let _e280 = cache[i32(1u)].cursor;
        let _e282 = cache[i32(1u)].aa;
        let _e284 = cache[i32(1u)].budget;
        let _e286 = cache[i32(1u)].radius;
        let _e288 = cache[i32(1u)].preview_dirty;
        let _e290 = cache[i32(1u)].blur_dirty;
        let _e292 = cache[i32(1u)].epoch;
        let _e294 = cache[i32(1u)].completed;
        let _e308 = for_view(_e30, _e32, (&fe_trapped));
        if (_e294 == 0u) {
        } else {
            if (_e284 < _e308.f0_) {
                local_3 = true;
            }
            let _e401 = local_3;
            if _e401 {
            } else {
                let _e315 = same_camera(FeLocal_fe_shader_private_layout_22_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e260, FeLocal_fe_shader_private_layout_6_(_e262, FeLocal_fe_shader_private_layout_5_(_e264, FeLocal_fe_shader_private_layout_4_(_e266))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e268, FeLocal_fe_shader_private_layout_6_(_e270, FeLocal_fe_shader_private_layout_5_(_e272, FeLocal_fe_shader_private_layout_4_(_e274)))))), _e276, _e278), _e280, _e282, _e284, _e286, _e288, _e290, _e292, _e294), FeLocal_fe_shader_private_layout_22_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e208, FeLocal_fe_shader_private_layout_6_(_e210, FeLocal_fe_shader_private_layout_5_(_e212, FeLocal_fe_shader_private_layout_4_(_e214))))), FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e216, FeLocal_fe_shader_private_layout_6_(_e218, FeLocal_fe_shader_private_layout_5_(_e220, FeLocal_fe_shader_private_layout_4_(_e222)))))), _e224, _e226), _e228, _e230, _e232, _e234, _e236, _e238, _e240, _e242));
                if _e315 {
                } else {
                    local_3 = true;
                }
                let _e399 = local_3;
                if _e399 {
                } else {
                    let _e318 = rect_pixel(_e308, _e228, global_invocation_id.x, global_invocation_id.y, _e32, (&fe_trapped));
                    if _e318.f1_ {
                    } else {
                        local_3 = true;
                    }
                    let _e397 = local_3;
                    if _e397 {
                    } else {
                        let _e322 = impl_CohortPixel_index(_e318);
                        let _e326 = progress_pixels[i32(_e322)].dz_re;
                        let _e328 = progress_pixels[i32(_e322)].dz_im;
                        let _e330 = progress_pixels[i32(_e322)].z_re;
                        let _e332 = progress_pixels[i32(_e322)].z_im;
                        let _e334 = progress_pixels[i32(_e322)].reference_i;
                        let _e336 = progress_pixels[i32(_e322)].iteration;
                        let _e338 = progress_pixels[i32(_e322)].epoch;
                        let _e340 = progress_pixels[i32(_e322)].magnitude;
                        let _e342 = is_presentable_in(FeLocal_fe_shader_private_layout_12_(_e326, _e328, _e330, _e332, _e334, _e336, _e338, _e340), _e240);
                        if _e342 {
                            local_3 = true;
                        }
                        let _e395 = local_3;
                        if _e395 {
                        } else {
                            let _e348 = snapshot_oracle[i32(_e322)].iteration;
                            let _e350 = snapshot_oracle[i32(_e322)].magnitude;
                            let _e352 = snapshot_oracle[i32(_e322)].flags;
                            let _e353 = FeLocal_fe_shader_private_layout_13_(_e348, _e350, _e352);
                            let _e354 = is_usable(_e353);
                            if _e354 {
                            } else {
                                local_3 = true;
                            }
                            let _e393 = local_3;
                            if _e393 {
                            } else {
                                let _e358 = from_oracle(_e353, _e240, _e34);
                                let _e359 = progress_color(_e358, (&fe_trapped));
                                progress_pixels[i32(_e322)].dz_re = _e358.f0_;
                                progress_pixels[i32(_e322)].dz_im = _e358.f1_;
                                progress_pixels[i32(_e322)].z_re = _e358.f2_;
                                progress_pixels[i32(_e322)].z_im = _e358.f3_;
                                progress_pixels[i32(_e322)].reference_i = _e358.f4_;
                                progress_pixels[i32(_e322)].iteration = _e358.f5_;
                                progress_pixels[i32(_e322)].epoch = _e358.f6_;
                                progress_pixels[i32(_e322)].magnitude = _e358.f7_;
                                native_pixels[i32(_e322)] = _e359;
                                if (_e282 == _e38) {
                                    let _e383 = snapshot_pixels[i32(_e322)];
                                    local_4 = _e383;
                                } else {
                                    local_4 = _e359;
                                }
                                let _e387 = local_4;
                                antialiased_pixels[i32(_e322)] = _e387;
                                local_3 = true;
                            }
                        }
                    }
                }
            }
        }
    }
    let _e414 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e414);
}
