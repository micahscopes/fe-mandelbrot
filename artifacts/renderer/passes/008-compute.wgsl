struct FeLocal_fe_shader_private_layout_9_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_3_,
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
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: FeLocal_fe_shader_private_layout_6_,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: bool,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct FeLocal_fe_shader_private_layout_13_ {
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

struct FeLocal_fe_shader_private_layout_2_ {
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

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_11_ {
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

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_12_) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    if (a0_.f13_ < 0.5f) {
        if (60f <= (a0_.f10_ - a0_.f11_)) {
            local_7 = true;
        }
    }
    let _e14 = local_7;
    return _e14;
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

fn for_view(a0_3: f32, a1_: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    var local_16: FeLocal_fe_shader_private_layout_9_;
    var local_17: bool = false;

    let _e4 = iteration_limit(a0_3, fe_trapped_2);
    let _e13 = to_i32_(((a1_ + 127f) / 128f));
    let _e18 = to_i32_(((a1_ + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_9_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn from_quad(a0_4: f32, a1_1: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_6_ {
    return FeLocal_fe_shader_private_layout_6_(a0_4, FeLocal_fe_shader_private_layout_5_(a1_1, FeLocal_fe_shader_private_layout_4_(a2_, FeLocal_fe_shader_private_layout_3_(a3_))));
}

fn center(a0_5: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = from_quad(a0_5.f0_, a0_5.f1_, a0_5.f2_, a0_5.f3_);
    let _e10 = from_quad(a0_5.f4_, a0_5.f5_, a0_5.f6_, a0_5.f7_);
    return FeLocal_fe_shader_private_layout_7_(_e5, _e10);
}

fn impl_trait_Last_eq(a0_6: f32, a1_2: f32) -> bool {
    return (a0_6 == a1_2);
}

fn eq_ge630_(a0_7: FeLocal_fe_shader_private_layout_4_, a1_3: FeLocal_fe_shader_private_layout_4_) -> bool {
    var local_18: bool;
    var local_19: bool = false;
    var local_20: bool = bool();

    if (a0_7.f0_ == a1_3.f0_) {
        let _e11 = impl_trait_Last_eq(a0_7.f1_.f0_, a1_3.f1_.f0_);
        if _e11 {
            local_20 = true;
        }
    }
    let _e15 = local_20;
    return _e15;
}

fn eq_g4419_(a0_8: FeLocal_fe_shader_private_layout_5_, a1_4: FeLocal_fe_shader_private_layout_5_) -> bool {
    var local_21: bool;
    var local_22: bool = false;
    var local_23: bool = bool();

    if (a0_8.f0_ == a1_4.f0_) {
        let _e9 = eq_ge630_(a0_8.f1_, a1_4.f1_);
        if _e9 {
            local_23 = true;
        }
    }
    let _e13 = local_23;
    return _e13;
}

fn eq_ga905_(a0_9: FeLocal_fe_shader_private_layout_6_, a1_5: FeLocal_fe_shader_private_layout_6_) -> bool {
    var local_24: bool;
    var local_25: bool = false;
    var local_26: bool = bool();

    if (a0_9.f0_ == a1_5.f0_) {
        let _e9 = eq_g4419_(a0_9.f1_, a1_5.f1_);
        if _e9 {
            local_26 = true;
        }
    }
    let _e13 = local_26;
    return _e13;
}

fn eq_ge3dc(a0_10: FeLocal_fe_shader_private_layout_7_, a1_6: FeLocal_fe_shader_private_layout_7_) -> bool {
    var local_27: bool;
    var local_28: bool = false;
    var local_29: bool = bool();

    let _e6 = eq_ga905_(a0_10.f0_, a1_6.f0_);
    if _e6 {
        let _e9 = eq_ga905_(a0_10.f1_, a1_6.f1_);
        if _e9 {
            local_29 = true;
        }
    }
    let _e13 = local_29;
    return _e13;
}

fn same_camera(a0_11: FeLocal_fe_shader_private_layout_2_, a1_7: FeLocal_fe_shader_private_layout_2_) -> bool {
    var local_30: bool;
    var local_31: bool = false;
    var local_32: bool = bool();

    let _e4 = center(a0_11);
    let _e5 = center(a1_7);
    let _e6 = eq_ge3dc(_e4, _e5);
    if _e6 {
        if (a0_11.f8_ == a1_7.f8_) {
            if (a0_11.f9_ == a1_7.f9_) {
                local_32 = true;
            }
        }
    }
    let _e16 = local_32;
    return _e16;
}

fn refine_steps(a0_12: FeLocal_fe_shader_private_layout_9_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_33: u32;
    var local_34: bool = false;

    let _e9 = (a0_12.f1_ != 0u);
    if (_e9 && (a0_12.f4_ > (4294967295u / select(1u, a0_12.f1_, _e9)))) {
        (*fe_trapped_3) = true;
    } else {
        local_33 = (a0_12.f1_ * a0_12.f4_);
        local_34 = true;
    }
    let _e19 = local_33;
    return _e19;
}

fn impl_trait_CohortPixel_default() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn from_i32_(a0_13: u32) -> f32 {
    return f32(bitcast<i32>(a0_13));
}

fn phase_offset(a0_14: u32, a1_8: u32, a2_1: u32) -> u32 {
    let _e3 = from_i32_(a0_14);
    let _e6 = from_i32_(a1_8);
    let _e9 = ((_e3 * 0.06711056f) + (_e6 * 0.00583715f));
    let _e10 = to_i32_(_e9);
    let _e11 = from_i32_(_e10);
    let _e14 = ((_e9 - _e11) * 52.982918f);
    let _e15 = to_i32_(_e14);
    let _e16 = from_i32_(_e15);
    let _e18 = from_i32_(a2_1);
    let _e20 = to_i32_(((_e14 - _e16) * _e18));
    return _e20;
}

fn phase_order_rect(a0_15: u32, a1_9: u32, a2_2: u32, a3_1: u32, a4_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_35: u32;
    var local_36: bool = false;
    var local_37: u32 = u32();

    let _e10 = (a3_1 * a4_);
    let _e11 = (a3_1 != 0u);
    if (_e11 && (a4_ > (4294967295u / select(1u, a3_1, _e11)))) {
    } else {
        let _e17 = phase_offset(a1_9, a2_2, _e10);
        if ((_e17 & 1u) == 0u) {
            local_37 = 1u;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_4) = true;
            } else {
                local_37 = (_e10 - 1u);
            }
        }
        let _e30 = local_37;
        let _e34 = (a0_15 * _e30);
        let _e35 = (a0_15 != 0u);
        if (_e35 && (_e30 > (4294967295u / select(1u, a0_15, _e35)))) {
        } else {
            if (_e34 > (4294967295u - _e17)) {
            } else {
                if (_e10 == 0u) {
                } else {
                    local_35 = ((_e34 + _e17) % _e10);
                    local_36 = true;
                }
                let _e51 = local_36;
                if _e51 {
                }
            }
            let _e53 = local_36;
            if _e53 {
            }
        }
        let _e55 = local_36;
        if _e55 {
        }
    }
    let _e58 = local_36;
    if _e58 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e60 = local_35;
    return _e60;
}

fn at(a0_16: u32, a1_10: u32, a2_3: f32) -> FeLocal_fe_shader_private_layout_1_ {
    var local_38: FeLocal_fe_shader_private_layout_1_;
    var local_39: bool = false;
    var local_40: bool = bool();

    let _e5 = from_i32_(a0_16);
    if (_e5 < a2_3) {
        let _e7 = from_i32_(a1_10);
        if (_e7 < a2_3) {
            local_40 = true;
        }
    }
    let _e12 = local_40;
    return FeLocal_fe_shader_private_layout_1_(a0_16, a1_10, ((a1_10 << 11u) | a0_16), _e12);
}

fn rect_pixel(a0_17: FeLocal_fe_shader_private_layout_9_, a1_11: u32, a2_4: u32, a3_2: u32, a4_1: f32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_41: FeLocal_fe_shader_private_layout_1_;
    var local_42: bool = false;
    var local_43: FeLocal_fe_shader_private_layout_1_;
    var local_44: bool = false;

    let _e7 = refine_steps(a0_17, fe_trapped_5);
    if ((a1_11 < _e7) == false) {
        let _e11 = impl_trait_CohortPixel_default();
        local_41 = _e11;
        local_42 = true;
    }
    let _e82 = local_42;
    if _e82 {
    } else {
        if (a0_17.f1_ == 0u) {
        } else {
            let _e22 = phase_order_rect((a1_11 / a0_17.f1_), a2_4, a3_2, a0_17.f2_, a0_17.f3_, fe_trapped_5);
            let _e27 = (a2_4 * a0_17.f2_);
            let _e28 = (a2_4 != 0u);
            if (_e28 && (a0_17.f2_ > (4294967295u / select(1u, a2_4, _e28)))) {
            } else {
                if (a0_17.f2_ == 0u) {
                } else {
                    let _e36 = (_e22 % a0_17.f2_);
                    if (_e27 > (4294967295u - _e36)) {
                    } else {
                        let _e45 = (a3_2 * a0_17.f3_);
                        let _e46 = (a3_2 != 0u);
                        if (_e46 && (a0_17.f3_ > (4294967295u / select(1u, a3_2, _e46)))) {
                        } else {
                            if (a0_17.f2_ == 0u) {
                            } else {
                                let _e54 = (_e22 / a0_17.f2_);
                                if (_e45 > (4294967295u - _e54)) {
                                } else {
                                    let _e59 = at((_e27 + _e36), (_e45 + _e54), a4_1);
                                    local_43 = _e59;
                                    local_44 = true;
                                }
                                let _e64 = local_44;
                                if _e64 {
                                }
                            }
                            let _e66 = local_44;
                            if _e66 {
                            }
                        }
                        let _e68 = local_44;
                        if _e68 {
                        }
                    }
                    let _e70 = local_44;
                    if _e70 {
                    }
                }
                let _e72 = local_44;
                if _e72 {
                }
            }
            let _e74 = local_44;
            if _e74 {
            }
        }
        let _e77 = local_44;
        if _e77 {
        } else {
            (*fe_trapped_5) = true;
        }
        let _e79 = local_43;
        local_41 = _e79;
    }
    let _e84 = local_41;
    return _e84;
}

fn progress_is_presentable(a0_18: u32) -> bool {
    return (((a0_18 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_19: FeLocal_fe_shader_private_layout_10_) -> bool {
    let _e2 = progress_is_presentable(a0_19.f4_);
    return _e2;
}

fn is_presentable_in(a0_20: FeLocal_fe_shader_private_layout_10_, a1_12: u32) -> bool {
    var local_45: bool;
    var local_46: bool = false;
    var local_47: bool = bool();

    if (a0_20.f6_ == a1_12) {
        let _e6 = is_presentable(a0_20);
        if _e6 {
            local_47 = true;
        }
    }
    let _e10 = local_47;
    return _e10;
}

fn oracle_is_glitched(a0_21: u32) -> bool {
    return (((a0_21 & 1073741824u) == 0u) == false);
}

fn oracle_is_usable(a0_22: u32) -> bool {
    let _e1 = oracle_is_glitched(a0_22);
    return (_e1 == false);
}

fn is_usable(a0_23: FeLocal_fe_shader_private_layout_11_) -> bool {
    let _e2 = oracle_is_usable(a0_23.f2_);
    return _e2;
}

fn default_ge58b() -> FeLocal_fe_shader_private_layout_8_ {
    return FeLocal_fe_shader_private_layout_8_();
}

fn from_continuation(a0_24: FeLocal_fe_shader_private_layout_8_, a1_13: FeLocal_fe_shader_private_layout_8_, a2_5: u32, a3_3: u32, a4_2: u32, a5_: f32) -> FeLocal_fe_shader_private_layout_10_ {
    return FeLocal_fe_shader_private_layout_10_(a0_24.f0_, a0_24.f1_, a1_13.f0_, a1_13.f1_, a2_5, a3_3, a4_2, a5_);
}

fn progress_with_presentable(a0_25: u32) -> u32 {
    return (a0_25 | 536870912u);
}

fn with_fade_start(a0_26: FeLocal_fe_shader_private_layout_10_, a1_14: f32) -> FeLocal_fe_shader_private_layout_10_ {
    var fixed_local_3_: FeLocal_fe_shader_private_layout_10_ = FeLocal_fe_shader_private_layout_10_();

    fixed_local_3_ = a0_26;
    fixed_local_3_.f2_ = a1_14;
    let _e6 = progress_with_presentable(a0_26.f4_);
    fixed_local_3_.f4_ = _e6;
    let _e8 = fixed_local_3_;
    return _e8;
}

fn from_oracle(a0_27: FeLocal_fe_shader_private_layout_11_, a1_15: u32, a2_6: f32) -> FeLocal_fe_shader_private_layout_10_ {
    let _e3 = default_ge58b();
    let _e4 = default_ge58b();
    let _e8 = from_continuation(_e3, _e4, a0_27.f2_, a0_27.f0_, a1_15, a0_27.f1_);
    let _e9 = with_fade_start(_e8, a2_6);
    return _e9;
}

fn is_glitched(a0_28: FeLocal_fe_shader_private_layout_10_) -> bool {
    let _e2 = oracle_is_glitched(a0_28.f4_);
    return _e2;
}

fn clamp_(a0_29: f32, a1_16: f32, a2_7: f32) -> f32 {
    var local_48: f32;
    var local_49: bool = false;
    var local_50: f32 = f32();

    if (a0_29 < a1_16) {
        local_50 = a1_16;
    } else {
        if (a2_7 < a0_29) {
            local_50 = a2_7;
        } else {
            local_50 = a0_29;
        }
    }
    let _e11 = local_50;
    return _e11;
}

fn pack_lab(a0_30: FeLocal_fe_shader_private_layout_13_) -> u32 {
    let _e4 = clamp_(a0_30.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_30.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_30.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_13_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn progress_is_escaped(a0_31: u32) -> bool {
    return (((a0_31 & 2147483648u) == 0u) == false);
}

fn is_escaped(a0_32: FeLocal_fe_shader_private_layout_10_) -> bool {
    let _e2 = progress_is_escaped(a0_32.f4_);
    return _e2;
}

fn impl_trait_f32_floor(a0_33: f32) -> f32 {
    return floor(a0_33);
}

fn fract_(a0_34: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_34);
    return (a0_34 - _e1);
}

fn anchor(a0_35: u32) -> FeLocal_fe_shader_private_layout_0_ {
    var local_51: FeLocal_fe_shader_private_layout_0_;
    var local_52: bool = false;
    var local_53: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    switch a0_35 {
        case 0u: {
            local_53 = FeLocal_fe_shader_private_layout_0_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_53 = FeLocal_fe_shader_private_layout_0_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_53 = FeLocal_fe_shader_private_layout_0_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_53 = FeLocal_fe_shader_private_layout_0_(0.73f, 0.142f, 165f);
        }
        default: {
            local_53 = FeLocal_fe_shader_private_layout_0_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_53;
    return _e29;
}

fn interpolate(a0_36: FeLocal_fe_shader_private_layout_0_, a1_17: FeLocal_fe_shader_private_layout_0_, a2_8: f32) -> FeLocal_fe_shader_private_layout_0_ {
    var local_54: FeLocal_fe_shader_private_layout_0_;
    var local_55: bool = false;
    var local_56: f32 = f32();

    let _e7 = (a1_17.f2_ - a0_36.f2_);
    if (180f < _e7) {
        local_56 = (_e7 - 360f);
    } else {
        if (_e7 < -180f) {
            local_56 = (_e7 + 360f);
        } else {
            local_56 = _e7;
        }
    }
    let _e20 = local_56;
    return FeLocal_fe_shader_private_layout_0_((a0_36.f0_ + ((a1_17.f0_ - a0_36.f0_) * a2_8)), (a0_36.f1_ + ((a1_17.f1_ - a0_36.f1_) * a2_8)), (a0_36.f2_ + (_e20 * a2_8)));
}

fn wrap_pi(a0_37: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_37 / 6.2831855f) + 0.5f));
    return (a0_37 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_38: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_38) & 2147483647u));
}

fn sin_(a0_39: f32) -> f32 {
    let _e1 = wrap_pi(a0_39);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_40: f32) -> f32 {
    let _e3 = sin_((a0_40 + 1.5707964f));
    return _e3;
}

fn to_color(a0_41: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_13_ {
    let _e3 = (a0_41.f2_ * 0.017453292f);
    let _e6 = cos_(_e3);
    let _e9 = sin_(_e3);
    return FeLocal_fe_shader_private_layout_13_(a0_41.f0_, (a0_41.f1_ * _e6), (a0_41.f1_ * _e9));
}

fn escape_palette(a0_42: u32, a1_18: f32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_57: u32;
    var local_58: bool = false;
    var local_59: u32 = u32();

    let _e5 = from_i32_(a0_42);
    let _e11 = fract_(((_e5 + (4f / a1_18)) / 256f));
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
            local_59 = _e29;
        }
    }
    let _e38 = local_59;
    let _e39 = anchor(_e38);
    let _e40 = interpolate(_e23, _e39, ((_e16 * _e16) * (3f - (2f * _e16))));
    let _e41 = to_color(_e40);
    let _e42 = pack_lab(_e41);
    return _e42;
}

fn interior() -> u32 {
    let _e4 = pack_lab(FeLocal_fe_shader_private_layout_13_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_43: FeLocal_fe_shader_private_layout_10_, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_60: u32;
    var local_61: bool = false;
    var local_62: u32 = u32();

    let _e4 = is_glitched(a0_43);
    if _e4 {
        let _e5 = glitch();
        local_62 = _e5;
    } else {
        let _e6 = is_escaped(a0_43);
        if _e6 {
            let _e9 = escape_palette(a0_43.f5_, a0_43.f7_, fe_trapped_7);
            local_62 = _e9;
        } else {
            let _e10 = interior();
            local_62 = _e10;
        }
    }
    let _e15 = local_62;
    return _e15;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32 = u32();

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
    let _e45 = is_input_settled(FeLocal_fe_shader_private_layout_12_(_e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40, _e42));
    if _e45 {
    } else {
        local_1 = true;
    }
    let _e229 = local_1;
    if _e229 {
    } else {
        let _e53 = cache[i32(0u)].x0_;
        let _e55 = cache[i32(0u)].x1_;
        let _e57 = cache[i32(0u)].x2_;
        let _e59 = cache[i32(0u)].x3_;
        let _e61 = cache[i32(0u)].y0_;
        let _e63 = cache[i32(0u)].y1_;
        let _e65 = cache[i32(0u)].y2_;
        let _e67 = cache[i32(0u)].y3_;
        let _e69 = cache[i32(0u)].zoom;
        let _e71 = cache[i32(0u)].res;
        let _e73 = cache[i32(0u)].cursor;
        let _e75 = cache[i32(0u)].aa;
        let _e77 = cache[i32(0u)].budget;
        let _e79 = cache[i32(0u)].radius;
        let _e81 = cache[i32(0u)].preview_dirty;
        let _e83 = cache[i32(0u)].blur_dirty;
        let _e85 = cache[i32(0u)].epoch;
        let _e87 = cache[i32(0u)].completed;
        let _e93 = cache[i32(1u)].x0_;
        let _e95 = cache[i32(1u)].x1_;
        let _e97 = cache[i32(1u)].x2_;
        let _e99 = cache[i32(1u)].x3_;
        let _e101 = cache[i32(1u)].y0_;
        let _e103 = cache[i32(1u)].y1_;
        let _e105 = cache[i32(1u)].y2_;
        let _e107 = cache[i32(1u)].y3_;
        let _e109 = cache[i32(1u)].zoom;
        let _e111 = cache[i32(1u)].res;
        let _e113 = cache[i32(1u)].cursor;
        let _e115 = cache[i32(1u)].aa;
        let _e117 = cache[i32(1u)].budget;
        let _e119 = cache[i32(1u)].radius;
        let _e121 = cache[i32(1u)].preview_dirty;
        let _e123 = cache[i32(1u)].blur_dirty;
        let _e125 = cache[i32(1u)].epoch;
        let _e127 = cache[i32(1u)].completed;
        let _e129 = for_view(_e30, _e32, (&fe_trapped));
        if (_e127 == 0u) {
        } else {
            if (_e117 < _e129.f0_) {
                local_3 = true;
            }
            let _e227 = local_3;
            if _e227 {
            } else {
                let _e136 = same_camera(FeLocal_fe_shader_private_layout_2_(_e93, _e95, _e97, _e99, _e101, _e103, _e105, _e107, _e109, _e111, _e113, _e115, _e117, _e119, _e121, _e123, _e125, _e127), FeLocal_fe_shader_private_layout_2_(_e53, _e55, _e57, _e59, _e61, _e63, _e65, _e67, _e69, _e71, _e73, _e75, _e77, _e79, _e81, _e83, _e85, _e87));
                if _e136 {
                } else {
                    local_3 = true;
                }
                let _e225 = local_3;
                if _e225 {
                } else {
                    let _e139 = rect_pixel(_e129, _e73, global_invocation_id.x, global_invocation_id.y, _e32, (&fe_trapped));
                    if _e139.f3_ {
                    } else {
                        local_3 = true;
                    }
                    let _e223 = local_3;
                    if _e223 {
                    } else {
                        let _e147 = progress_pixels[i32(_e139.f2_)].dz_re;
                        let _e149 = progress_pixels[i32(_e139.f2_)].dz_im;
                        let _e151 = progress_pixels[i32(_e139.f2_)].z_re;
                        let _e153 = progress_pixels[i32(_e139.f2_)].z_im;
                        let _e155 = progress_pixels[i32(_e139.f2_)].reference_i;
                        let _e157 = progress_pixels[i32(_e139.f2_)].iteration;
                        let _e159 = progress_pixels[i32(_e139.f2_)].epoch;
                        let _e161 = progress_pixels[i32(_e139.f2_)].magnitude;
                        let _e163 = is_presentable_in(FeLocal_fe_shader_private_layout_10_(_e147, _e149, _e151, _e153, _e155, _e157, _e159, _e161), _e85);
                        if _e163 {
                            local_3 = true;
                        }
                        let _e221 = local_3;
                        if _e221 {
                        } else {
                            let _e170 = snapshot_oracle[i32(_e139.f2_)].iteration;
                            let _e172 = snapshot_oracle[i32(_e139.f2_)].magnitude;
                            let _e174 = snapshot_oracle[i32(_e139.f2_)].flags;
                            let _e175 = FeLocal_fe_shader_private_layout_11_(_e170, _e172, _e174);
                            let _e176 = is_usable(_e175);
                            if _e176 {
                            } else {
                                local_3 = true;
                            }
                            let _e219 = local_3;
                            if _e219 {
                            } else {
                                let _e180 = from_oracle(_e175, _e85, _e34);
                                let _e181 = progress_color(_e180, (&fe_trapped));
                                progress_pixels[i32(_e139.f2_)].dz_re = _e180.f0_;
                                progress_pixels[i32(_e139.f2_)].dz_im = _e180.f1_;
                                progress_pixels[i32(_e139.f2_)].z_re = _e180.f2_;
                                progress_pixels[i32(_e139.f2_)].z_im = _e180.f3_;
                                progress_pixels[i32(_e139.f2_)].reference_i = _e180.f4_;
                                progress_pixels[i32(_e139.f2_)].iteration = _e180.f5_;
                                progress_pixels[i32(_e139.f2_)].epoch = _e180.f6_;
                                progress_pixels[i32(_e139.f2_)].magnitude = _e180.f7_;
                                native_pixels[i32(_e139.f2_)] = _e181;
                                if (_e115 == _e38) {
                                    let _e208 = snapshot_pixels[i32(_e139.f2_)];
                                    local_4 = _e208;
                                } else {
                                    local_4 = _e181;
                                }
                                let _e212 = local_4;
                                antialiased_pixels[i32(_e139.f2_)] = _e212;
                                local_3 = true;
                            }
                        }
                    }
                }
            }
        }
    }
    let _e240 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e240);
}
