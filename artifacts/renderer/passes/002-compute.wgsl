struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_2_,
}

struct FeLocal_fe_shader_private_layout_22_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_24_ {
    f0_: FeLocal_fe_shader_private_layout_4_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_21_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_23_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_6_,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: FeLocal_fe_shader_private_layout_7_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: FeLocal_fe_shader_private_layout_4_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: FeLocal_fe_shader_private_layout_7_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_25_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_7_,
    f2_: u32,
    f3_: FeLocal_fe_shader_private_layout_7_,
    f4_: u32,
}

struct FeLocal_fe_shader_private_layout_26_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
}

struct FeLocal_fe_shader_private_layout_27_ {
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

struct FeLocal_fe_shader_private_layout_28_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_29_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: f32,
    f7_: f32,
    f8_: u32,
    f9_: u32,
}

struct FeLocal_fe_shader_private_layout_30_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
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

struct anchor_element {
    x0_: f32,
    x1_: f32,
    x2_: f32,
    x3_: f32,
    y0_: f32,
    y1_: f32,
    y2_: f32,
    y3_: f32,
    limit: u32,
    generation: u32,
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
    p14_: f32,
    p15_: f32,
    p16_: f32,
    p17_: f32,
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
}

@group(0) @binding(0)
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> anchor: array<anchor_element>;
@group(0) @binding(3)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(4)
var<storage, read_write> reference_words: array<u32>;
@group(0) @binding(5)
var<storage> params: Params;
@group(0) @binding(6)
var<storage, read_write> trap: array<u32, 1>;

fn iteration_limit(a0_: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_43: u32 = u32();
    var local_44: f32 = f32();
    var local_45: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_5_: bool;
    var local_46: u32 = u32();
    var local_47: f32 = f32();
    var local_48: u32;
    var local_49: bool = false;
    var local_50: u32 = u32();

    local_43 = 0u;
    local_44 = a0_;
    local_45 = 0u;
    loop {
        let _e12 = local_43;
        let _e14 = local_44;
        let _e16 = local_45;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_46 = (_e12 + 1u);
                    local_47 = (_e14 * 2f);
                }
            } else {
                local_46 = _e12;
                local_47 = _e14;
            }
            let _e36 = local_46;
            let _e38 = local_47;
            local_43 = _e36;
            local_44 = _e38;
            local_45 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_43;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_50 = 8192u;
        } else {
            local_50 = _e60;
        }
        let _e71 = local_50;
        local_48 = _e71;
        local_49 = true;
    }
    let _e77 = local_49;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_48;
    return _e79;
}

fn impl_trait_f32_max(a0_1: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_1);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn clamp_f(a0_2: f32, a1_1: f32, a2_: f32) -> f32 {
    var local_51: f32;
    var local_52: bool = false;
    var local_53: f32 = f32();

    if (a0_2 < a1_1) {
        local_53 = a1_1;
    } else {
        if (a2_ < a0_2) {
            local_53 = a2_;
        } else {
            local_53 = a0_2;
        }
    }
    let _e11 = local_53;
    return _e11;
}

fn progress(a0_3: f32, a1_2: f32, a2_1: f32) -> f32 {
    let _e7 = clamp_f(((a0_3 - a1_2) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_4: f32) -> f32 {
    let _e3 = progress(a0_4, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn impl_trait_f32_abs(a0_5: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_5) & 2147483647u));
}

fn impl_trait_LimbLast_from_real(a0_6: f32) -> FeLocal_fe_shader_private_layout_17_ {
    let _e13 = select(0u, select(select(bitcast<u32>(i32(a0_6)), 2147483648u, (a0_6 <= -2147483600f)), 2147483647u, (a0_6 >= 2147483600f)), (a0_6 == a0_6));
    return FeLocal_fe_shader_private_layout_17_(FeLocal_fe_shader_private_layout_0_(_e13), ((a0_6 - f32(bitcast<i32>(_e13))) * 8192f));
}

fn from_real_g5d22_(a0_7: f32) -> FeLocal_fe_shader_private_layout_18_ {
    let _e1 = impl_trait_LimbLast_from_real(a0_7);
    let _e17 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_18_(FeLocal_fe_shader_private_layout_1_(_e17, FeLocal_fe_shader_private_layout_0_(_e1.f0_.f0_)), ((_e1.f1_ - f32(bitcast<i32>(_e17))) * 8192f));
}

fn from_real_gbb08_(a0_8: f32) -> FeLocal_fe_shader_private_layout_19_ {
    let _e1 = from_real_g5d22_(a0_8);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_19_(FeLocal_fe_shader_private_layout_2_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_gf166_(a0_9: f32) -> FeLocal_fe_shader_private_layout_22_ {
    let _e1 = from_real_gbb08_(a0_9);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_22_(FeLocal_fe_shader_private_layout_3_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_ga8f6_(a0_10: f32) -> FeLocal_fe_shader_private_layout_24_ {
    let _e1 = from_real_gf166_(a0_10);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_24_(FeLocal_fe_shader_private_layout_4_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_gf0cd(a0_11: f32) -> FeLocal_fe_shader_private_layout_21_ {
    let _e1 = from_real_ga8f6_(a0_11);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_21_(FeLocal_fe_shader_private_layout_5_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_g4f4f(a0_12: f32) -> FeLocal_fe_shader_private_layout_23_ {
    let _e1 = from_real_gf0cd(a0_12);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_23_(FeLocal_fe_shader_private_layout_6_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_gaaac(a0_13: f32) -> FeLocal_fe_shader_private_layout_20_ {
    let _e1 = from_real_g4f4f(a0_13);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_20_(FeLocal_fe_shader_private_layout_7_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_f32_(a0_14: f32) -> FeLocal_fe_shader_private_layout_8_ {
    var local_54: FeLocal_fe_shader_private_layout_8_;
    var local_55: bool = false;
    var local_56: u32 = u32();
    var local_57: FeLocal_fe_shader_private_layout_8_;
    var local_58: bool = false;
    var local_59: f32 = f32();

    if (a0_14 < 0f) {
        local_56 = 1u;
    }
    let _e10 = local_56;
    if (a0_14 < 0f) {
        local_59 = -(a0_14);
    } else {
        local_59 = a0_14;
    }
    let _e17 = local_59;
    let _e18 = from_real_gaaac(_e17);
    return FeLocal_fe_shader_private_layout_8_(_e10, _e18.f0_);
}

fn precision_lib_field_impl_trait_LimbLast_9da0_mac_0e65_(a0_15: u32, a1_3: u32, a2_2: u32, a3_: u32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_13_ {
    var local_60: FeLocal_fe_shader_private_layout_13_;
    var local_61: bool = false;

    let _e9 = (a1_3 * a2_2);
    let _e10 = (a1_3 != 0u);
    if (_e10 && (a2_2 > (4294967295u / select(1u, a1_3, _e10)))) {
    } else {
        let _e16 = (a0_15 + _e9);
        if (a0_15 > (4294967295u - _e9)) {
        } else {
            let _e20 = (_e16 + a3_);
            if (_e16 > (4294967295u - a3_)) {
            } else {
                let _e24 = (_e20 >> 13u);
                let _e29 = (_e24 * 8192u);
                let _e30 = (_e24 != 0u);
                if (_e30 && (8192u > (4294967295u / select(1u, _e24, _e30)))) {
                } else {
                    if (_e20 < _e29) {
                    } else {
                        local_60 = FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_0_((_e20 - _e29)), _e24);
                        local_61 = true;
                    }
                    let _e43 = local_61;
                    if _e43 {
                    }
                }
                let _e45 = local_61;
                if _e45 {
                }
            }
            let _e47 = local_61;
            if _e47 {
            }
        }
        let _e49 = local_61;
        if _e49 {
        }
    }
    let _e52 = local_61;
    if _e52 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e54 = local_60;
    return _e54;
}

fn precision_lib_field_impl_trait_LimbMore_55ff_mac_g5d22_2c68_(a0_16: FeLocal_fe_shader_private_layout_1_, a1_4: FeLocal_fe_shader_private_layout_1_, a2_3: u32, a3_1: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_11_ {
    var local_62: FeLocal_fe_shader_private_layout_11_;
    var local_63: bool = false;

    let _e11 = (a1_4.f0_ * a2_3);
    let _e12 = (a1_4.f0_ != 0u);
    if (_e12 && (a2_3 > (4294967295u / select(1u, a1_4.f0_, _e12)))) {
    } else {
        let _e18 = (a0_16.f0_ + _e11);
        if (a0_16.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_1);
            if (_e18 > (4294967295u - a3_1)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e43 = precision_lib_field_impl_trait_LimbLast_9da0_mac_0e65_(a0_16.f1_.f0_, a1_4.f1_.f0_, a2_3, _e26, fe_trapped_3);
                        local_62 = FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_1_((_e22 - _e31), FeLocal_fe_shader_private_layout_0_(_e43.f0_.f0_)), _e43.f1_);
                        local_63 = true;
                    }
                    let _e54 = local_63;
                    if _e54 {
                    }
                }
                let _e56 = local_63;
                if _e56 {
                }
            }
            let _e58 = local_63;
            if _e58 {
            }
        }
        let _e60 = local_63;
        if _e60 {
        }
    }
    let _e63 = local_63;
    if _e63 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e65 = local_62;
    return _e65;
}

fn precision_lib_field_impl_trait_LimbMore_55ff_mac_gbb08_0002_(a0_17: FeLocal_fe_shader_private_layout_2_, a1_5: FeLocal_fe_shader_private_layout_2_, a2_4: u32, a3_2: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    var local_64: FeLocal_fe_shader_private_layout_9_;
    var local_65: bool = false;

    let _e11 = (a1_5.f0_ * a2_4);
    let _e12 = (a1_5.f0_ != 0u);
    if (_e12 && (a2_4 > (4294967295u / select(1u, a1_5.f0_, _e12)))) {
    } else {
        let _e18 = (a0_17.f0_ + _e11);
        if (a0_17.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_2);
            if (_e18 > (4294967295u - a3_2)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e41 = precision_lib_field_impl_trait_LimbMore_55ff_mac_g5d22_2c68_(a0_17.f1_, a1_5.f1_, a2_4, _e26, fe_trapped_4);
                        local_64 = FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_2_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_65 = true;
                    }
                    let _e50 = local_65;
                    if _e50 {
                    }
                }
                let _e52 = local_65;
                if _e52 {
                }
            }
            let _e54 = local_65;
            if _e54 {
            }
        }
        let _e56 = local_65;
        if _e56 {
        }
    }
    let _e59 = local_65;
    if _e59 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e61 = local_64;
    return _e61;
}

fn precision_lib_field_impl_trait_LimbMore_55ff_mac_gf166_4fa5_(a0_18: FeLocal_fe_shader_private_layout_3_, a1_6: FeLocal_fe_shader_private_layout_3_, a2_5: u32, a3_3: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_16_ {
    var local_66: FeLocal_fe_shader_private_layout_16_;
    var local_67: bool = false;

    let _e11 = (a1_6.f0_ * a2_5);
    let _e12 = (a1_6.f0_ != 0u);
    if (_e12 && (a2_5 > (4294967295u / select(1u, a1_6.f0_, _e12)))) {
    } else {
        let _e18 = (a0_18.f0_ + _e11);
        if (a0_18.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_3);
            if (_e18 > (4294967295u - a3_3)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e41 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gbb08_0002_(a0_18.f1_, a1_6.f1_, a2_5, _e26, fe_trapped_5);
                        local_66 = FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_3_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_67 = true;
                    }
                    let _e50 = local_67;
                    if _e50 {
                    }
                }
                let _e52 = local_67;
                if _e52 {
                }
            }
            let _e54 = local_67;
            if _e54 {
            }
        }
        let _e56 = local_67;
        if _e56 {
        }
    }
    let _e59 = local_67;
    if _e59 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e61 = local_66;
    return _e61;
}

fn precision_lib_field_impl_trait_LimbMore_55ff_mac_ga8f6_36ce(a0_19: FeLocal_fe_shader_private_layout_4_, a1_7: FeLocal_fe_shader_private_layout_4_, a2_6: u32, a3_4: u32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_15_ {
    var local_68: FeLocal_fe_shader_private_layout_15_;
    var local_69: bool = false;

    let _e11 = (a1_7.f0_ * a2_6);
    let _e12 = (a1_7.f0_ != 0u);
    if (_e12 && (a2_6 > (4294967295u / select(1u, a1_7.f0_, _e12)))) {
    } else {
        let _e18 = (a0_19.f0_ + _e11);
        if (a0_19.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_4);
            if (_e18 > (4294967295u - a3_4)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e41 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gf166_4fa5_(a0_19.f1_, a1_7.f1_, a2_6, _e26, fe_trapped_6);
                        local_68 = FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_4_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_69 = true;
                    }
                    let _e50 = local_69;
                    if _e50 {
                    }
                }
                let _e52 = local_69;
                if _e52 {
                }
            }
            let _e54 = local_69;
            if _e54 {
            }
        }
        let _e56 = local_69;
        if _e56 {
        }
    }
    let _e59 = local_69;
    if _e59 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e61 = local_68;
    return _e61;
}

fn precision_lib_field_impl_trait_LimbMore_55ff_mac_gf0cd_5403_(a0_20: FeLocal_fe_shader_private_layout_5_, a1_8: FeLocal_fe_shader_private_layout_5_, a2_7: u32, a3_5: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_12_ {
    var local_70: FeLocal_fe_shader_private_layout_12_;
    var local_71: bool = false;

    let _e11 = (a1_8.f0_ * a2_7);
    let _e12 = (a1_8.f0_ != 0u);
    if (_e12 && (a2_7 > (4294967295u / select(1u, a1_8.f0_, _e12)))) {
    } else {
        let _e18 = (a0_20.f0_ + _e11);
        if (a0_20.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_5);
            if (_e18 > (4294967295u - a3_5)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e41 = precision_lib_field_impl_trait_LimbMore_55ff_mac_ga8f6_36ce(a0_20.f1_, a1_8.f1_, a2_7, _e26, fe_trapped_7);
                        local_70 = FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_5_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_71 = true;
                    }
                    let _e50 = local_71;
                    if _e50 {
                    }
                }
                let _e52 = local_71;
                if _e52 {
                }
            }
            let _e54 = local_71;
            if _e54 {
            }
        }
        let _e56 = local_71;
        if _e56 {
        }
    }
    let _e59 = local_71;
    if _e59 {
    } else {
        (*fe_trapped_7) = true;
    }
    let _e61 = local_70;
    return _e61;
}

fn precision_lib_field_impl_trait_LimbMore_55ff_mac_g4f4f_0612_(a0_21: FeLocal_fe_shader_private_layout_6_, a1_9: FeLocal_fe_shader_private_layout_6_, a2_8: u32, a3_6: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_14_ {
    var local_72: FeLocal_fe_shader_private_layout_14_;
    var local_73: bool = false;

    let _e11 = (a1_9.f0_ * a2_8);
    let _e12 = (a1_9.f0_ != 0u);
    if (_e12 && (a2_8 > (4294967295u / select(1u, a1_9.f0_, _e12)))) {
    } else {
        let _e18 = (a0_21.f0_ + _e11);
        if (a0_21.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_6);
            if (_e18 > (4294967295u - a3_6)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e41 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gf0cd_5403_(a0_21.f1_, a1_9.f1_, a2_8, _e26, fe_trapped_8);
                        local_72 = FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_6_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_73 = true;
                    }
                    let _e50 = local_73;
                    if _e50 {
                    }
                }
                let _e52 = local_73;
                if _e52 {
                }
            }
            let _e54 = local_73;
            if _e54 {
            }
        }
        let _e56 = local_73;
        if _e56 {
        }
    }
    let _e59 = local_73;
    if _e59 {
    } else {
        (*fe_trapped_8) = true;
    }
    let _e61 = local_72;
    return _e61;
}

fn precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a0_22: FeLocal_fe_shader_private_layout_7_, a1_10: FeLocal_fe_shader_private_layout_7_, a2_9: u32, a3_7: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_74: FeLocal_fe_shader_private_layout_10_;
    var local_75: bool = false;

    let _e11 = (a1_10.f0_ * a2_9);
    let _e12 = (a1_10.f0_ != 0u);
    if (_e12 && (a2_9 > (4294967295u / select(1u, a1_10.f0_, _e12)))) {
    } else {
        let _e18 = (a0_22.f0_ + _e11);
        if (a0_22.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_7);
            if (_e18 > (4294967295u - a3_7)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e41 = precision_lib_field_impl_trait_LimbMore_55ff_mac_g4f4f_0612_(a0_22.f1_, a1_10.f1_, a2_9, _e26, fe_trapped_9);
                        local_74 = FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_7_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_75 = true;
                    }
                    let _e50 = local_75;
                    if _e50 {
                    }
                }
                let _e52 = local_75;
                if _e52 {
                }
            }
            let _e54 = local_75;
            if _e54 {
            }
        }
        let _e56 = local_75;
        if _e56 {
        }
    }
    let _e59 = local_75;
    if _e59 {
    } else {
        (*fe_trapped_9) = true;
    }
    let _e61 = local_74;
    return _e61;
}

fn mag_add_gb4b7_(a0_23: FeLocal_fe_shader_private_layout_7_, a1_11: FeLocal_fe_shader_private_layout_7_, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a0_23, a1_11, 1u, 0u, fe_trapped_10);
    return _e5.f0_;
}

fn precision_lib_field_impl_trait_LimbLast_bc35_sub_borrow_3780_(a0_24: u32, a1_12: u32, a2_10: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_13_ {
    var local_76: FeLocal_fe_shader_private_layout_13_;
    var local_77: bool = false;

    let _e7 = (a0_24 + 8192u);
    if (a0_24 > (4294967295u - 8192u)) {
    } else {
        let _e10 = (_e7 - a1_12);
        if (_e7 < a1_12) {
        } else {
            let _e12 = (_e10 - a2_10);
            if (_e10 < a2_10) {
            } else {
                let _e15 = (_e12 >> 13u);
                if (1u < _e15) {
                } else {
                    let _e23 = (_e15 * 8192u);
                    let _e24 = (_e15 != 0u);
                    if (_e24 && (8192u > (4294967295u / select(1u, _e15, _e24)))) {
                    } else {
                        if (_e12 < _e23) {
                        } else {
                            local_76 = FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_0_((_e12 - _e23)), (1u - _e15));
                            local_77 = true;
                        }
                        let _e37 = local_77;
                        if _e37 {
                        }
                    }
                    let _e39 = local_77;
                    if _e39 {
                    }
                }
                let _e41 = local_77;
                if _e41 {
                }
            }
            let _e43 = local_77;
            if _e43 {
            }
        }
        let _e45 = local_77;
        if _e45 {
        }
    }
    let _e48 = local_77;
    if _e48 {
    } else {
        (*fe_trapped_11) = true;
    }
    let _e50 = local_76;
    return _e50;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_g5d22_1039_(a0_25: FeLocal_fe_shader_private_layout_1_, a1_13: FeLocal_fe_shader_private_layout_1_, a2_11: u32, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_11_ {
    var local_78: FeLocal_fe_shader_private_layout_11_;
    var local_79: bool = false;

    let _e8 = (a0_25.f0_ + 8192u);
    if (a0_25.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_13.f0_);
        if (_e8 < a1_13.f0_) {
        } else {
            let _e14 = (_e12 - a2_11);
            if (_e12 < a2_11) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e25 = precision_lib_field_impl_trait_LimbLast_bc35_sub_borrow_3780_(a0_25.f1_.f0_, a1_13.f1_.f0_, (1u - _e17), fe_trapped_12);
                    let _e33 = (_e17 * 8192u);
                    let _e34 = (_e17 != 0u);
                    if (_e34 && (8192u > (4294967295u / select(1u, _e17, _e34)))) {
                    } else {
                        if (_e14 < _e33) {
                        } else {
                            local_78 = FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_1_((_e14 - _e33), FeLocal_fe_shader_private_layout_0_(_e25.f0_.f0_)), _e25.f1_);
                            local_79 = true;
                        }
                        let _e48 = local_79;
                        if _e48 {
                        }
                    }
                    let _e50 = local_79;
                    if _e50 {
                    }
                }
                let _e52 = local_79;
                if _e52 {
                }
            }
            let _e54 = local_79;
            if _e54 {
            }
        }
        let _e56 = local_79;
        if _e56 {
        }
    }
    let _e59 = local_79;
    if _e59 {
    } else {
        (*fe_trapped_12) = true;
    }
    let _e61 = local_78;
    return _e61;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gbb08_d55b(a0_26: FeLocal_fe_shader_private_layout_2_, a1_14: FeLocal_fe_shader_private_layout_2_, a2_12: u32, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    var local_80: FeLocal_fe_shader_private_layout_9_;
    var local_81: bool = false;

    let _e8 = (a0_26.f0_ + 8192u);
    if (a0_26.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_14.f0_);
        if (_e8 < a1_14.f0_) {
        } else {
            let _e14 = (_e12 - a2_12);
            if (_e12 < a2_12) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_g5d22_1039_(a0_26.f1_, a1_14.f1_, (1u - _e17), fe_trapped_13);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_80 = FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_2_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_81 = true;
                        }
                        let _e44 = local_81;
                        if _e44 {
                        }
                    }
                    let _e46 = local_81;
                    if _e46 {
                    }
                }
                let _e48 = local_81;
                if _e48 {
                }
            }
            let _e50 = local_81;
            if _e50 {
            }
        }
        let _e52 = local_81;
        if _e52 {
        }
    }
    let _e55 = local_81;
    if _e55 {
    } else {
        (*fe_trapped_13) = true;
    }
    let _e57 = local_80;
    return _e57;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gf166_ae0d(a0_27: FeLocal_fe_shader_private_layout_3_, a1_15: FeLocal_fe_shader_private_layout_3_, a2_13: u32, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_16_ {
    var local_82: FeLocal_fe_shader_private_layout_16_;
    var local_83: bool = false;

    let _e8 = (a0_27.f0_ + 8192u);
    if (a0_27.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_15.f0_);
        if (_e8 < a1_15.f0_) {
        } else {
            let _e14 = (_e12 - a2_13);
            if (_e12 < a2_13) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gbb08_d55b(a0_27.f1_, a1_15.f1_, (1u - _e17), fe_trapped_14);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_82 = FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_3_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_83 = true;
                        }
                        let _e44 = local_83;
                        if _e44 {
                        }
                    }
                    let _e46 = local_83;
                    if _e46 {
                    }
                }
                let _e48 = local_83;
                if _e48 {
                }
            }
            let _e50 = local_83;
            if _e50 {
            }
        }
        let _e52 = local_83;
        if _e52 {
        }
    }
    let _e55 = local_83;
    if _e55 {
    } else {
        (*fe_trapped_14) = true;
    }
    let _e57 = local_82;
    return _e57;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_ga8f6_2329_(a0_28: FeLocal_fe_shader_private_layout_4_, a1_16: FeLocal_fe_shader_private_layout_4_, a2_14: u32, fe_trapped_15: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_15_ {
    var local_84: FeLocal_fe_shader_private_layout_15_;
    var local_85: bool = false;

    let _e8 = (a0_28.f0_ + 8192u);
    if (a0_28.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_16.f0_);
        if (_e8 < a1_16.f0_) {
        } else {
            let _e14 = (_e12 - a2_14);
            if (_e12 < a2_14) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gf166_ae0d(a0_28.f1_, a1_16.f1_, (1u - _e17), fe_trapped_15);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_84 = FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_4_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_85 = true;
                        }
                        let _e44 = local_85;
                        if _e44 {
                        }
                    }
                    let _e46 = local_85;
                    if _e46 {
                    }
                }
                let _e48 = local_85;
                if _e48 {
                }
            }
            let _e50 = local_85;
            if _e50 {
            }
        }
        let _e52 = local_85;
        if _e52 {
        }
    }
    let _e55 = local_85;
    if _e55 {
    } else {
        (*fe_trapped_15) = true;
    }
    let _e57 = local_84;
    return _e57;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gf0cd_3377_(a0_29: FeLocal_fe_shader_private_layout_5_, a1_17: FeLocal_fe_shader_private_layout_5_, a2_15: u32, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_12_ {
    var local_86: FeLocal_fe_shader_private_layout_12_;
    var local_87: bool = false;

    let _e8 = (a0_29.f0_ + 8192u);
    if (a0_29.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_17.f0_);
        if (_e8 < a1_17.f0_) {
        } else {
            let _e14 = (_e12 - a2_15);
            if (_e12 < a2_15) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_ga8f6_2329_(a0_29.f1_, a1_17.f1_, (1u - _e17), fe_trapped_16);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_86 = FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_5_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_87 = true;
                        }
                        let _e44 = local_87;
                        if _e44 {
                        }
                    }
                    let _e46 = local_87;
                    if _e46 {
                    }
                }
                let _e48 = local_87;
                if _e48 {
                }
            }
            let _e50 = local_87;
            if _e50 {
            }
        }
        let _e52 = local_87;
        if _e52 {
        }
    }
    let _e55 = local_87;
    if _e55 {
    } else {
        (*fe_trapped_16) = true;
    }
    let _e57 = local_86;
    return _e57;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_g4f4f_1e4a(a0_30: FeLocal_fe_shader_private_layout_6_, a1_18: FeLocal_fe_shader_private_layout_6_, a2_16: u32, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_14_ {
    var local_88: FeLocal_fe_shader_private_layout_14_;
    var local_89: bool = false;

    let _e8 = (a0_30.f0_ + 8192u);
    if (a0_30.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_18.f0_);
        if (_e8 < a1_18.f0_) {
        } else {
            let _e14 = (_e12 - a2_16);
            if (_e12 < a2_16) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gf0cd_3377_(a0_30.f1_, a1_18.f1_, (1u - _e17), fe_trapped_17);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_88 = FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_6_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_89 = true;
                        }
                        let _e44 = local_89;
                        if _e44 {
                        }
                    }
                    let _e46 = local_89;
                    if _e46 {
                    }
                }
                let _e48 = local_89;
                if _e48 {
                }
            }
            let _e50 = local_89;
            if _e50 {
            }
        }
        let _e52 = local_89;
        if _e52 {
        }
    }
    let _e55 = local_89;
    if _e55 {
    } else {
        (*fe_trapped_17) = true;
    }
    let _e57 = local_88;
    return _e57;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gaaac_7def(a0_31: FeLocal_fe_shader_private_layout_7_, a1_19: FeLocal_fe_shader_private_layout_7_, a2_17: u32, fe_trapped_18: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_90: FeLocal_fe_shader_private_layout_10_;
    var local_91: bool = false;

    let _e8 = (a0_31.f0_ + 8192u);
    if (a0_31.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_19.f0_);
        if (_e8 < a1_19.f0_) {
        } else {
            let _e14 = (_e12 - a2_17);
            if (_e12 < a2_17) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_g4f4f_1e4a(a0_31.f1_, a1_19.f1_, (1u - _e17), fe_trapped_18);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_90 = FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_7_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_91 = true;
                        }
                        let _e44 = local_91;
                        if _e44 {
                        }
                    }
                    let _e46 = local_91;
                    if _e46 {
                    }
                }
                let _e48 = local_91;
                if _e48 {
                }
            }
            let _e50 = local_91;
            if _e50 {
            }
        }
        let _e52 = local_91;
        if _e52 {
        }
    }
    let _e55 = local_91;
    if _e55 {
    } else {
        (*fe_trapped_18) = true;
    }
    let _e57 = local_90;
    return _e57;
}

fn precision_lib_field_impl_trait_LimbLast_3b15_select_b852_(a0_32: u32, a1_20: u32, a2_18: u32, a3_8: u32, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_92: u32;
    var local_93: bool = false;

    let _e9 = (a0_32 * a2_18);
    let _e10 = (a0_32 != 0u);
    if (_e10 && (a2_18 > (4294967295u / select(1u, a0_32, _e10)))) {
    } else {
        let _e18 = (a1_20 * a3_8);
        let _e19 = (a1_20 != 0u);
        if (_e19 && (a3_8 > (4294967295u / select(1u, a1_20, _e19)))) {
        } else {
            if (_e9 > (4294967295u - _e18)) {
            } else {
                local_92 = (_e9 + _e18);
                local_93 = true;
            }
            let _e32 = local_93;
            if _e32 {
            }
        }
        let _e34 = local_93;
        if _e34 {
        }
    }
    let _e37 = local_93;
    if _e37 {
    } else {
        (*fe_trapped_19) = true;
    }
    let _e39 = local_92;
    return _e39;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_g5d22_72da(a0_33: u32, a1_21: u32, a2_19: FeLocal_fe_shader_private_layout_1_, a3_9: FeLocal_fe_shader_private_layout_1_, fe_trapped_20: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_94: FeLocal_fe_shader_private_layout_1_;
    var local_95: bool = false;

    let _e10 = (a0_33 * a2_19.f0_);
    let _e11 = (a0_33 != 0u);
    if (_e11 && (a2_19.f0_ > (4294967295u / select(1u, a0_33, _e11)))) {
    } else {
        let _e20 = (a1_21 * a3_9.f0_);
        let _e21 = (a1_21 != 0u);
        if (_e21 && (a3_9.f0_ > (4294967295u / select(1u, a1_21, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e34 = precision_lib_field_impl_trait_LimbLast_3b15_select_b852_(a0_33, a1_21, a2_19.f1_.f0_, a3_9.f1_.f0_, fe_trapped_20);
                local_94 = FeLocal_fe_shader_private_layout_1_((_e10 + _e20), FeLocal_fe_shader_private_layout_0_(_e34));
                local_95 = true;
            }
            let _e41 = local_95;
            if _e41 {
            }
        }
        let _e43 = local_95;
        if _e43 {
        }
    }
    let _e46 = local_95;
    if _e46 {
    } else {
        (*fe_trapped_20) = true;
    }
    let _e48 = local_94;
    return _e48;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_gbb08_f7de(a0_34: u32, a1_22: u32, a2_20: FeLocal_fe_shader_private_layout_2_, a3_10: FeLocal_fe_shader_private_layout_2_, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_96: FeLocal_fe_shader_private_layout_2_;
    var local_97: bool = false;

    let _e10 = (a0_34 * a2_20.f0_);
    let _e11 = (a0_34 != 0u);
    if (_e11 && (a2_20.f0_ > (4294967295u / select(1u, a0_34, _e11)))) {
    } else {
        let _e20 = (a1_22 * a3_10.f0_);
        let _e21 = (a1_22 != 0u);
        if (_e21 && (a3_10.f0_ > (4294967295u / select(1u, a1_22, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = precision_lib_field_impl_trait_LimbMore_0f98_select_g5d22_72da(a0_34, a1_22, a2_20.f1_, a3_10.f1_, fe_trapped_21);
                local_96 = FeLocal_fe_shader_private_layout_2_((_e10 + _e20), _e32);
                local_97 = true;
            }
            let _e38 = local_97;
            if _e38 {
            }
        }
        let _e40 = local_97;
        if _e40 {
        }
    }
    let _e43 = local_97;
    if _e43 {
    } else {
        (*fe_trapped_21) = true;
    }
    let _e45 = local_96;
    return _e45;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_gf166_6d56_(a0_35: u32, a1_23: u32, a2_21: FeLocal_fe_shader_private_layout_3_, a3_11: FeLocal_fe_shader_private_layout_3_, fe_trapped_22: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_98: FeLocal_fe_shader_private_layout_3_;
    var local_99: bool = false;

    let _e10 = (a0_35 * a2_21.f0_);
    let _e11 = (a0_35 != 0u);
    if (_e11 && (a2_21.f0_ > (4294967295u / select(1u, a0_35, _e11)))) {
    } else {
        let _e20 = (a1_23 * a3_11.f0_);
        let _e21 = (a1_23 != 0u);
        if (_e21 && (a3_11.f0_ > (4294967295u / select(1u, a1_23, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = precision_lib_field_impl_trait_LimbMore_0f98_select_gbb08_f7de(a0_35, a1_23, a2_21.f1_, a3_11.f1_, fe_trapped_22);
                local_98 = FeLocal_fe_shader_private_layout_3_((_e10 + _e20), _e32);
                local_99 = true;
            }
            let _e38 = local_99;
            if _e38 {
            }
        }
        let _e40 = local_99;
        if _e40 {
        }
    }
    let _e43 = local_99;
    if _e43 {
    } else {
        (*fe_trapped_22) = true;
    }
    let _e45 = local_98;
    return _e45;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_ga8f6_3daf(a0_36: u32, a1_24: u32, a2_22: FeLocal_fe_shader_private_layout_4_, a3_12: FeLocal_fe_shader_private_layout_4_, fe_trapped_23: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_100: FeLocal_fe_shader_private_layout_4_;
    var local_101: bool = false;

    let _e10 = (a0_36 * a2_22.f0_);
    let _e11 = (a0_36 != 0u);
    if (_e11 && (a2_22.f0_ > (4294967295u / select(1u, a0_36, _e11)))) {
    } else {
        let _e20 = (a1_24 * a3_12.f0_);
        let _e21 = (a1_24 != 0u);
        if (_e21 && (a3_12.f0_ > (4294967295u / select(1u, a1_24, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = precision_lib_field_impl_trait_LimbMore_0f98_select_gf166_6d56_(a0_36, a1_24, a2_22.f1_, a3_12.f1_, fe_trapped_23);
                local_100 = FeLocal_fe_shader_private_layout_4_((_e10 + _e20), _e32);
                local_101 = true;
            }
            let _e38 = local_101;
            if _e38 {
            }
        }
        let _e40 = local_101;
        if _e40 {
        }
    }
    let _e43 = local_101;
    if _e43 {
    } else {
        (*fe_trapped_23) = true;
    }
    let _e45 = local_100;
    return _e45;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_gf0cd_33e9_(a0_37: u32, a1_25: u32, a2_23: FeLocal_fe_shader_private_layout_5_, a3_13: FeLocal_fe_shader_private_layout_5_, fe_trapped_24: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_102: FeLocal_fe_shader_private_layout_5_;
    var local_103: bool = false;

    let _e10 = (a0_37 * a2_23.f0_);
    let _e11 = (a0_37 != 0u);
    if (_e11 && (a2_23.f0_ > (4294967295u / select(1u, a0_37, _e11)))) {
    } else {
        let _e20 = (a1_25 * a3_13.f0_);
        let _e21 = (a1_25 != 0u);
        if (_e21 && (a3_13.f0_ > (4294967295u / select(1u, a1_25, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = precision_lib_field_impl_trait_LimbMore_0f98_select_ga8f6_3daf(a0_37, a1_25, a2_23.f1_, a3_13.f1_, fe_trapped_24);
                local_102 = FeLocal_fe_shader_private_layout_5_((_e10 + _e20), _e32);
                local_103 = true;
            }
            let _e38 = local_103;
            if _e38 {
            }
        }
        let _e40 = local_103;
        if _e40 {
        }
    }
    let _e43 = local_103;
    if _e43 {
    } else {
        (*fe_trapped_24) = true;
    }
    let _e45 = local_102;
    return _e45;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_g4f4f_5683_(a0_38: u32, a1_26: u32, a2_24: FeLocal_fe_shader_private_layout_6_, a3_14: FeLocal_fe_shader_private_layout_6_, fe_trapped_25: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_6_ {
    var local_104: FeLocal_fe_shader_private_layout_6_;
    var local_105: bool = false;

    let _e10 = (a0_38 * a2_24.f0_);
    let _e11 = (a0_38 != 0u);
    if (_e11 && (a2_24.f0_ > (4294967295u / select(1u, a0_38, _e11)))) {
    } else {
        let _e20 = (a1_26 * a3_14.f0_);
        let _e21 = (a1_26 != 0u);
        if (_e21 && (a3_14.f0_ > (4294967295u / select(1u, a1_26, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = precision_lib_field_impl_trait_LimbMore_0f98_select_gf0cd_33e9_(a0_38, a1_26, a2_24.f1_, a3_14.f1_, fe_trapped_25);
                local_104 = FeLocal_fe_shader_private_layout_6_((_e10 + _e20), _e32);
                local_105 = true;
            }
            let _e38 = local_105;
            if _e38 {
            }
        }
        let _e40 = local_105;
        if _e40 {
        }
    }
    let _e43 = local_105;
    if _e43 {
    } else {
        (*fe_trapped_25) = true;
    }
    let _e45 = local_104;
    return _e45;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_gaaac_e7e3_(a0_39: u32, a1_27: u32, a2_25: FeLocal_fe_shader_private_layout_7_, a3_15: FeLocal_fe_shader_private_layout_7_, fe_trapped_26: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    var local_106: FeLocal_fe_shader_private_layout_7_;
    var local_107: bool = false;

    let _e10 = (a0_39 * a2_25.f0_);
    let _e11 = (a0_39 != 0u);
    if (_e11 && (a2_25.f0_ > (4294967295u / select(1u, a0_39, _e11)))) {
    } else {
        let _e20 = (a1_27 * a3_15.f0_);
        let _e21 = (a1_27 != 0u);
        if (_e21 && (a3_15.f0_ > (4294967295u / select(1u, a1_27, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = precision_lib_field_impl_trait_LimbMore_0f98_select_g4f4f_5683_(a0_39, a1_27, a2_25.f1_, a3_15.f1_, fe_trapped_26);
                local_106 = FeLocal_fe_shader_private_layout_7_((_e10 + _e20), _e32);
                local_107 = true;
            }
            let _e38 = local_107;
            if _e38 {
            }
        }
        let _e40 = local_107;
        if _e40 {
        }
    }
    let _e43 = local_107;
    if _e43 {
    } else {
        (*fe_trapped_26) = true;
    }
    let _e45 = local_106;
    return _e45;
}

fn add_g62af(a0_40: u32, a1_28: FeLocal_fe_shader_private_layout_7_, a2_26: u32, a3_16: FeLocal_fe_shader_private_layout_7_, fe_trapped_27: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    var local_108: FeLocal_fe_shader_private_layout_8_;
    var local_109: bool = false;

    let _e6 = mag_add_gb4b7_(a1_28, a3_16, fe_trapped_27);
    let _e8 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gaaac_7def(a1_28, a3_16, 0u, fe_trapped_27);
    let _e12 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gaaac_7def(a3_16, a1_28, 0u, fe_trapped_27);
    if (1u < _e8.f1_) {
    } else {
        let _e17 = precision_lib_field_impl_trait_LimbMore_0f98_select_gaaac_e7e3_((1u - _e8.f1_), _e8.f1_, _e8.f0_, _e12.f0_, fe_trapped_27);
        let _e19 = (1u - _e8.f1_);
        if (1u < _e8.f1_) {
        } else {
            let _e24 = (_e19 * a0_40);
            let _e25 = (_e19 != 0u);
            if (_e25 && (a0_40 > (4294967295u / select(1u, _e19, _e25)))) {
            } else {
                let _e33 = (_e8.f1_ * a2_26);
                let _e34 = (_e8.f1_ != 0u);
                if (_e34 && (a2_26 > (4294967295u / select(1u, _e8.f1_, _e34)))) {
                } else {
                    let _e40 = (_e24 + _e33);
                    if (_e24 > (4294967295u - _e33)) {
                    } else {
                        let _e44 = (a0_40 + a2_26);
                        if (a0_40 > (4294967295u - a2_26)) {
                        } else {
                            let _e51 = (2u * a0_40);
                            let _e52 = (2u != 0u);
                            if (_e52 && (a0_40 > (4294967295u / select(1u, 2u, _e52)))) {
                            } else {
                                let _e60 = (_e51 * a2_26);
                                let _e61 = (_e51 != 0u);
                                if (_e61 && (a2_26 > (4294967295u / select(1u, _e51, _e61)))) {
                                } else {
                                    let _e66 = (_e44 - _e60);
                                    if (_e44 < _e60) {
                                    } else {
                                        if (1u < _e66) {
                                        } else {
                                            let _e71 = precision_lib_field_impl_trait_LimbMore_0f98_select_gaaac_e7e3_((1u - _e66), _e66, _e6, _e17, fe_trapped_27);
                                            let _e73 = (1u - _e66);
                                            if (1u < _e66) {
                                            } else {
                                                let _e78 = (_e73 * a0_40);
                                                let _e79 = (_e73 != 0u);
                                                if (_e79 && (a0_40 > (4294967295u / select(1u, _e73, _e79)))) {
                                                } else {
                                                    let _e87 = (_e66 * _e40);
                                                    let _e88 = (_e66 != 0u);
                                                    if (_e88 && (_e40 > (4294967295u / select(1u, _e66, _e88)))) {
                                                    } else {
                                                        if (_e78 > (4294967295u - _e87)) {
                                                        } else {
                                                            local_108 = FeLocal_fe_shader_private_layout_8_((_e78 + _e87), _e71);
                                                            local_109 = true;
                                                        }
                                                        let _e102 = local_109;
                                                        if _e102 {
                                                        }
                                                    }
                                                    let _e104 = local_109;
                                                    if _e104 {
                                                    }
                                                }
                                                let _e106 = local_109;
                                                if _e106 {
                                                }
                                            }
                                            let _e108 = local_109;
                                            if _e108 {
                                            }
                                        }
                                        let _e110 = local_109;
                                        if _e110 {
                                        }
                                    }
                                    let _e112 = local_109;
                                    if _e112 {
                                    }
                                }
                                let _e114 = local_109;
                                if _e114 {
                                }
                            }
                            let _e116 = local_109;
                            if _e116 {
                            }
                        }
                        let _e118 = local_109;
                        if _e118 {
                        }
                    }
                    let _e120 = local_109;
                    if _e120 {
                    }
                }
                let _e122 = local_109;
                if _e122 {
                }
            }
            let _e124 = local_109;
            if _e124 {
            }
        }
        let _e126 = local_109;
        if _e126 {
        }
    }
    let _e129 = local_109;
    if _e129 {
    } else {
        (*fe_trapped_27) = true;
    }
    let _e131 = local_108;
    return _e131;
}

fn from_qf_offset(a0_41: f32, a1_29: f32, a2_27: f32, a3_17: f32, a4_: f32, fe_trapped_28: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    let _e6 = from_f32_(a0_41);
    let _e9 = from_f32_(a1_29);
    let _e12 = from_f32_(a2_27);
    let _e15 = from_f32_(a3_17);
    let _e18 = from_f32_(a4_);
    let _e21 = add_g62af(_e6.f0_, _e6.f1_, _e9.f0_, _e9.f1_, fe_trapped_28);
    let _e24 = add_g62af(_e21.f0_, _e21.f1_, _e12.f0_, _e12.f1_, fe_trapped_28);
    let _e27 = add_g62af(_e24.f0_, _e24.f1_, _e15.f0_, _e15.f1_, fe_trapped_28);
    let _e30 = add_g62af(_e27.f0_, _e27.f1_, _e18.f0_, _e18.f1_, fe_trapped_28);
    return _e30;
}

fn precision_lib_field_impl_trait_LimbMore_1318_zero_g5d22_8e25_() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn precision_lib_field_impl_trait_LimbMore_1318_zero_gbb08_c03b() -> FeLocal_fe_shader_private_layout_2_ {
    let _e0 = precision_lib_field_impl_trait_LimbMore_1318_zero_g5d22_8e25_();
    return FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_2_().f0_, _e0);
}

fn precision_lib_field_impl_trait_LimbMore_1318_zero_gf166_d6d3_() -> FeLocal_fe_shader_private_layout_3_ {
    let _e0 = precision_lib_field_impl_trait_LimbMore_1318_zero_gbb08_c03b();
    return FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e0);
}

fn precision_lib_field_impl_trait_LimbMore_1318_zero_ga8f6_2ec8_() -> FeLocal_fe_shader_private_layout_4_ {
    let _e0 = precision_lib_field_impl_trait_LimbMore_1318_zero_gf166_d6d3_();
    return FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, _e0);
}

fn precision_lib_field_impl_trait_LimbMore_1318_zero_gf0cd_0083_() -> FeLocal_fe_shader_private_layout_5_ {
    let _e0 = precision_lib_field_impl_trait_LimbMore_1318_zero_ga8f6_2ec8_();
    return FeLocal_fe_shader_private_layout_5_(FeLocal_fe_shader_private_layout_5_().f0_, _e0);
}

fn precision_lib_field_impl_trait_LimbMore_1318_zero_g4f4f_6990_() -> FeLocal_fe_shader_private_layout_6_ {
    let _e0 = precision_lib_field_impl_trait_LimbMore_1318_zero_gf0cd_0083_();
    return FeLocal_fe_shader_private_layout_6_(FeLocal_fe_shader_private_layout_6_().f0_, _e0);
}

fn precision_lib_field_impl_trait_LimbMore_1318_zero_gaaac_5754_() -> FeLocal_fe_shader_private_layout_7_ {
    let _e0 = precision_lib_field_impl_trait_LimbMore_1318_zero_g4f4f_6990_();
    return FeLocal_fe_shader_private_layout_7_(FeLocal_fe_shader_private_layout_7_().f0_, _e0);
}

fn precision_lib_field_impl_trait_LimbMore_93d2_head_g4f4f_1180_(a0_42: FeLocal_fe_shader_private_layout_6_) -> u32 {
    return a0_42.f0_;
}

fn precision_lib_field_impl_trait_LimbMore_93d2_head_gf0cd_3e88_(a0_43: FeLocal_fe_shader_private_layout_5_) -> u32 {
    return a0_43.f0_;
}

fn precision_lib_field_impl_trait_LimbMore_93d2_head_ga8f6_3960_(a0_44: FeLocal_fe_shader_private_layout_4_) -> u32 {
    return a0_44.f0_;
}

fn precision_lib_field_impl_trait_LimbMore_93d2_head_gf166_13d2_(a0_45: FeLocal_fe_shader_private_layout_3_) -> u32 {
    return a0_45.f0_;
}

fn precision_lib_field_impl_trait_LimbMore_93d2_head_gbb08_1c7d(a0_46: FeLocal_fe_shader_private_layout_2_) -> u32 {
    return a0_46.f0_;
}

fn precision_lib_field_impl_trait_LimbMore_93d2_head_g5d22_0cb0_(a0_47: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_47.f0_;
}

fn precision_lib_field_impl_trait_LimbMore_f1de_shift_append_g5d22_19f9_(a0_48: FeLocal_fe_shader_private_layout_1_, a1_30: u32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a0_48.f1_.f0_, FeLocal_fe_shader_private_layout_0_(a1_30));
}

fn precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gbb08_464f(a0_49: FeLocal_fe_shader_private_layout_2_, a1_31: u32) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = precision_lib_field_impl_trait_LimbMore_93d2_head_g5d22_0cb0_(a0_49.f1_);
    let _e5 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_g5d22_19f9_(a0_49.f1_, a1_31);
    return FeLocal_fe_shader_private_layout_2_(_e3, _e5);
}

fn precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gf166_2ed0_(a0_50: FeLocal_fe_shader_private_layout_3_, a1_32: u32) -> FeLocal_fe_shader_private_layout_3_ {
    let _e3 = precision_lib_field_impl_trait_LimbMore_93d2_head_gbb08_1c7d(a0_50.f1_);
    let _e5 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gbb08_464f(a0_50.f1_, a1_32);
    return FeLocal_fe_shader_private_layout_3_(_e3, _e5);
}

fn precision_lib_field_impl_trait_LimbMore_f1de_shift_append_ga8f6_1f22_(a0_51: FeLocal_fe_shader_private_layout_4_, a1_33: u32) -> FeLocal_fe_shader_private_layout_4_ {
    let _e3 = precision_lib_field_impl_trait_LimbMore_93d2_head_gf166_13d2_(a0_51.f1_);
    let _e5 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gf166_2ed0_(a0_51.f1_, a1_33);
    return FeLocal_fe_shader_private_layout_4_(_e3, _e5);
}

fn precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gf0cd_03f9_(a0_52: FeLocal_fe_shader_private_layout_5_, a1_34: u32) -> FeLocal_fe_shader_private_layout_5_ {
    let _e3 = precision_lib_field_impl_trait_LimbMore_93d2_head_ga8f6_3960_(a0_52.f1_);
    let _e5 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_ga8f6_1f22_(a0_52.f1_, a1_34);
    return FeLocal_fe_shader_private_layout_5_(_e3, _e5);
}

fn precision_lib_field_impl_trait_LimbMore_f1de_shift_append_g4f4f_5c6e(a0_53: FeLocal_fe_shader_private_layout_6_, a1_35: u32) -> FeLocal_fe_shader_private_layout_6_ {
    let _e3 = precision_lib_field_impl_trait_LimbMore_93d2_head_gf0cd_3e88_(a0_53.f1_);
    let _e5 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gf0cd_03f9_(a0_53.f1_, a1_35);
    return FeLocal_fe_shader_private_layout_6_(_e3, _e5);
}

fn precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(a0_54: FeLocal_fe_shader_private_layout_7_, a1_36: u32) -> FeLocal_fe_shader_private_layout_7_ {
    let _e3 = precision_lib_field_impl_trait_LimbMore_93d2_head_g4f4f_1180_(a0_54.f1_);
    let _e5 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_g4f4f_5c6e(a0_54.f1_, a1_36);
    return FeLocal_fe_shader_private_layout_7_(_e3, _e5);
}

fn fixed_magnitude_from_words(a0_55: ptr<function, array<u32, 8>>) -> FeLocal_fe_shader_private_layout_7_ {
    var local_110: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var local_111: u32 = u32();
    var loop_result_5: FeLocal_fe_shader_private_layout_7_;
    var loop_did_return_5: bool = false;
    var loop_header_carry_5_1: bool;

    let _e1 = precision_lib_field_impl_trait_LimbMore_1318_zero_gaaac_5754_();
    local_110 = _e1;
    local_111 = 0u;
    loop {
        let _e9 = local_110;
        let _e11 = local_111;
        let _e13 = (_e11 < 8u);
        loop_header_carry_5_1 = _e13;
        if _e13 {
            let _e15 = (*a0_55)[_e11];
            let _e16 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e9, _e15);
            local_110 = _e16;
            local_111 = (_e11 + 1u);
            continue;
        } else {
            loop_result_5 = _e9;
            loop_did_return_5 = true;
            break;
        }
    }
    let _e26 = loop_result_5;
    return _e26;
}

fn precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(a0_56: FeLocal_fe_shader_private_layout_7_) -> u32 {
    return a0_56.f0_;
}

fn impl_trait_LimbLast_carry_add(a0_57: u32, a1_37: u32, fe_trapped_29: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_13_ {
    var local_112: FeLocal_fe_shader_private_layout_13_;
    var local_113: bool = false;

    let _e5 = (a0_57 + a1_37);
    if (a0_57 > (4294967295u - a1_37)) {
    } else {
        let _e9 = (_e5 >> 13u);
        let _e14 = (_e9 * 8192u);
        let _e15 = (_e9 != 0u);
        if (_e15 && (8192u > (4294967295u / select(1u, _e9, _e15)))) {
        } else {
            if (_e5 < _e14) {
            } else {
                local_112 = FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_0_((_e5 - _e14)), _e9);
                local_113 = true;
            }
            let _e28 = local_113;
            if _e28 {
            }
        }
        let _e30 = local_113;
        if _e30 {
        }
    }
    let _e33 = local_113;
    if _e33 {
    } else {
        (*fe_trapped_29) = true;
    }
    let _e35 = local_112;
    return _e35;
}

fn carry_add_g5d22_(a0_58: FeLocal_fe_shader_private_layout_1_, a1_38: u32, fe_trapped_30: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_11_ {
    var local_114: FeLocal_fe_shader_private_layout_11_;
    var local_115: bool = false;

    let _e6 = (a0_58.f0_ + a1_38);
    if (a0_58.f0_ > (4294967295u - a1_38)) {
    } else {
        let _e10 = (_e6 >> 13u);
        let _e13 = impl_trait_LimbLast_carry_add(a0_58.f1_.f0_, _e10, fe_trapped_30);
        let _e21 = (_e10 * 8192u);
        let _e22 = (_e10 != 0u);
        if (_e22 && (8192u > (4294967295u / select(1u, _e10, _e22)))) {
        } else {
            if (_e6 < _e21) {
            } else {
                local_114 = FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_1_((_e6 - _e21), FeLocal_fe_shader_private_layout_0_(_e13.f0_.f0_)), _e13.f1_);
                local_115 = true;
            }
            let _e36 = local_115;
            if _e36 {
            }
        }
        let _e38 = local_115;
        if _e38 {
        }
    }
    let _e41 = local_115;
    if _e41 {
    } else {
        (*fe_trapped_30) = true;
    }
    let _e43 = local_114;
    return _e43;
}

fn carry_add_gbb08_(a0_59: FeLocal_fe_shader_private_layout_2_, a1_39: u32, fe_trapped_31: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    var local_116: FeLocal_fe_shader_private_layout_9_;
    var local_117: bool = false;

    let _e6 = (a0_59.f0_ + a1_39);
    if (a0_59.f0_ > (4294967295u - a1_39)) {
    } else {
        let _e10 = (_e6 >> 13u);
        let _e12 = carry_add_g5d22_(a0_59.f1_, _e10, fe_trapped_31);
        let _e19 = (_e10 * 8192u);
        let _e20 = (_e10 != 0u);
        if (_e20 && (8192u > (4294967295u / select(1u, _e10, _e20)))) {
        } else {
            if (_e6 < _e19) {
            } else {
                local_116 = FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_2_((_e6 - _e19), _e12.f0_), _e12.f1_);
                local_117 = true;
            }
            let _e33 = local_117;
            if _e33 {
            }
        }
        let _e35 = local_117;
        if _e35 {
        }
    }
    let _e38 = local_117;
    if _e38 {
    } else {
        (*fe_trapped_31) = true;
    }
    let _e40 = local_116;
    return _e40;
}

fn carry_add_gf166_(a0_60: FeLocal_fe_shader_private_layout_3_, a1_40: u32, fe_trapped_32: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_16_ {
    var local_118: FeLocal_fe_shader_private_layout_16_;
    var local_119: bool = false;

    let _e6 = (a0_60.f0_ + a1_40);
    if (a0_60.f0_ > (4294967295u - a1_40)) {
    } else {
        let _e10 = (_e6 >> 13u);
        let _e12 = carry_add_gbb08_(a0_60.f1_, _e10, fe_trapped_32);
        let _e19 = (_e10 * 8192u);
        let _e20 = (_e10 != 0u);
        if (_e20 && (8192u > (4294967295u / select(1u, _e10, _e20)))) {
        } else {
            if (_e6 < _e19) {
            } else {
                local_118 = FeLocal_fe_shader_private_layout_16_(FeLocal_fe_shader_private_layout_3_((_e6 - _e19), _e12.f0_), _e12.f1_);
                local_119 = true;
            }
            let _e33 = local_119;
            if _e33 {
            }
        }
        let _e35 = local_119;
        if _e35 {
        }
    }
    let _e38 = local_119;
    if _e38 {
    } else {
        (*fe_trapped_32) = true;
    }
    let _e40 = local_118;
    return _e40;
}

fn carry_add_ga8f6_(a0_61: FeLocal_fe_shader_private_layout_4_, a1_41: u32, fe_trapped_33: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_15_ {
    var local_120: FeLocal_fe_shader_private_layout_15_;
    var local_121: bool = false;

    let _e6 = (a0_61.f0_ + a1_41);
    if (a0_61.f0_ > (4294967295u - a1_41)) {
    } else {
        let _e10 = (_e6 >> 13u);
        let _e12 = carry_add_gf166_(a0_61.f1_, _e10, fe_trapped_33);
        let _e19 = (_e10 * 8192u);
        let _e20 = (_e10 != 0u);
        if (_e20 && (8192u > (4294967295u / select(1u, _e10, _e20)))) {
        } else {
            if (_e6 < _e19) {
            } else {
                local_120 = FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_4_((_e6 - _e19), _e12.f0_), _e12.f1_);
                local_121 = true;
            }
            let _e33 = local_121;
            if _e33 {
            }
        }
        let _e35 = local_121;
        if _e35 {
        }
    }
    let _e38 = local_121;
    if _e38 {
    } else {
        (*fe_trapped_33) = true;
    }
    let _e40 = local_120;
    return _e40;
}

fn carry_add_gf0cd(a0_62: FeLocal_fe_shader_private_layout_5_, a1_42: u32, fe_trapped_34: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_12_ {
    var local_122: FeLocal_fe_shader_private_layout_12_;
    var local_123: bool = false;

    let _e6 = (a0_62.f0_ + a1_42);
    if (a0_62.f0_ > (4294967295u - a1_42)) {
    } else {
        let _e10 = (_e6 >> 13u);
        let _e12 = carry_add_ga8f6_(a0_62.f1_, _e10, fe_trapped_34);
        let _e19 = (_e10 * 8192u);
        let _e20 = (_e10 != 0u);
        if (_e20 && (8192u > (4294967295u / select(1u, _e10, _e20)))) {
        } else {
            if (_e6 < _e19) {
            } else {
                local_122 = FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_5_((_e6 - _e19), _e12.f0_), _e12.f1_);
                local_123 = true;
            }
            let _e33 = local_123;
            if _e33 {
            }
        }
        let _e35 = local_123;
        if _e35 {
        }
    }
    let _e38 = local_123;
    if _e38 {
    } else {
        (*fe_trapped_34) = true;
    }
    let _e40 = local_122;
    return _e40;
}

fn carry_add_g4f4f(a0_63: FeLocal_fe_shader_private_layout_6_, a1_43: u32, fe_trapped_35: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_14_ {
    var local_124: FeLocal_fe_shader_private_layout_14_;
    var local_125: bool = false;

    let _e6 = (a0_63.f0_ + a1_43);
    if (a0_63.f0_ > (4294967295u - a1_43)) {
    } else {
        let _e10 = (_e6 >> 13u);
        let _e12 = carry_add_gf0cd(a0_63.f1_, _e10, fe_trapped_35);
        let _e19 = (_e10 * 8192u);
        let _e20 = (_e10 != 0u);
        if (_e20 && (8192u > (4294967295u / select(1u, _e10, _e20)))) {
        } else {
            if (_e6 < _e19) {
            } else {
                local_124 = FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_6_((_e6 - _e19), _e12.f0_), _e12.f1_);
                local_125 = true;
            }
            let _e33 = local_125;
            if _e33 {
            }
        }
        let _e35 = local_125;
        if _e35 {
        }
    }
    let _e38 = local_125;
    if _e38 {
    } else {
        (*fe_trapped_35) = true;
    }
    let _e40 = local_124;
    return _e40;
}

fn carry_add_gaaac(a0_64: FeLocal_fe_shader_private_layout_7_, a1_44: u32, fe_trapped_36: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_126: FeLocal_fe_shader_private_layout_10_;
    var local_127: bool = false;

    let _e6 = (a0_64.f0_ + a1_44);
    if (a0_64.f0_ > (4294967295u - a1_44)) {
    } else {
        let _e10 = (_e6 >> 13u);
        let _e12 = carry_add_g4f4f(a0_64.f1_, _e10, fe_trapped_36);
        let _e19 = (_e10 * 8192u);
        let _e20 = (_e10 != 0u);
        if (_e20 && (8192u > (4294967295u / select(1u, _e10, _e20)))) {
        } else {
            if (_e6 < _e19) {
            } else {
                local_126 = FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_7_((_e6 - _e19), _e12.f0_), _e12.f1_);
                local_127 = true;
            }
            let _e33 = local_127;
            if _e33 {
            }
        }
        let _e35 = local_127;
        if _e35 {
        }
    }
    let _e38 = local_127;
    if _e38 {
    } else {
        (*fe_trapped_36) = true;
    }
    let _e40 = local_126;
    return _e40;
}

fn rows_gb4b7_(a0_65: u32, a1_45: FeLocal_fe_shader_private_layout_7_, a2_28: FeLocal_fe_shader_private_layout_7_, a3_18: u32, fe_trapped_37: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_128: FeLocal_fe_shader_private_layout_10_;
    var local_129: bool = false;

    let _e7 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_45, a2_28, a0_65, 0u, fe_trapped_37);
    let _e12 = carry_add_gaaac(_e7.f0_, (a3_18 >> 12u), fe_trapped_37);
    if (_e7.f1_ > (4294967295u - _e12.f1_)) {
        (*fe_trapped_37) = true;
    }
    return FeLocal_fe_shader_private_layout_10_(_e12.f0_, (_e7.f1_ + _e12.f1_));
}

fn rows_g6492_(a0_66: FeLocal_fe_shader_private_layout_1_, a1_46: FeLocal_fe_shader_private_layout_7_, a2_29: FeLocal_fe_shader_private_layout_7_, a3_19: u32, fe_trapped_38: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_46, a2_29, a0_66.f0_, 0u, fe_trapped_38);
    let _e9 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e6.f0_);
    let _e10 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e6.f0_, _e6.f1_);
    let _e13 = rows_gb4b7_(a0_66.f1_.f0_, _e10, a2_29, _e9, fe_trapped_38);
    return _e13;
}

fn rows_g845f(a0_67: FeLocal_fe_shader_private_layout_2_, a1_47: FeLocal_fe_shader_private_layout_7_, a2_30: FeLocal_fe_shader_private_layout_7_, a3_20: u32, fe_trapped_39: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_47, a2_30, a0_67.f0_, 0u, fe_trapped_39);
    let _e9 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e6.f0_);
    let _e10 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e6.f0_, _e6.f1_);
    let _e12 = rows_g6492_(a0_67.f1_, _e10, a2_30, _e9, fe_trapped_39);
    return _e12;
}

fn rows_g66b2_(a0_68: FeLocal_fe_shader_private_layout_3_, a1_48: FeLocal_fe_shader_private_layout_7_, a2_31: FeLocal_fe_shader_private_layout_7_, a3_21: u32, fe_trapped_40: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_48, a2_31, a0_68.f0_, 0u, fe_trapped_40);
    let _e9 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e6.f0_);
    let _e10 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e6.f0_, _e6.f1_);
    let _e12 = rows_g845f(a0_68.f1_, _e10, a2_31, _e9, fe_trapped_40);
    return _e12;
}

fn rows_g0591_(a0_69: FeLocal_fe_shader_private_layout_4_, a1_49: FeLocal_fe_shader_private_layout_7_, a2_32: FeLocal_fe_shader_private_layout_7_, a3_22: u32, fe_trapped_41: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_49, a2_32, a0_69.f0_, 0u, fe_trapped_41);
    let _e9 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e6.f0_);
    let _e10 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e6.f0_, _e6.f1_);
    let _e12 = rows_g66b2_(a0_69.f1_, _e10, a2_32, _e9, fe_trapped_41);
    return _e12;
}

fn rows_g80fb(a0_70: FeLocal_fe_shader_private_layout_5_, a1_50: FeLocal_fe_shader_private_layout_7_, a2_33: FeLocal_fe_shader_private_layout_7_, a3_23: u32, fe_trapped_42: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_50, a2_33, a0_70.f0_, 0u, fe_trapped_42);
    let _e9 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e6.f0_);
    let _e10 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e6.f0_, _e6.f1_);
    let _e12 = rows_g0591_(a0_70.f1_, _e10, a2_33, _e9, fe_trapped_42);
    return _e12;
}

fn rows_ga030_(a0_71: FeLocal_fe_shader_private_layout_6_, a1_51: FeLocal_fe_shader_private_layout_7_, a2_34: FeLocal_fe_shader_private_layout_7_, a3_24: u32, fe_trapped_43: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_51, a2_34, a0_71.f0_, 0u, fe_trapped_43);
    let _e9 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e6.f0_);
    let _e10 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e6.f0_, _e6.f1_);
    let _e12 = rows_g80fb(a0_71.f1_, _e10, a2_34, _e9, fe_trapped_43);
    return _e12;
}

fn precision_lib_fixed_impl_trait_LimbMore_aeff_rows_gf554_13e8_(a0_72: FeLocal_fe_shader_private_layout_7_, a1_52: FeLocal_fe_shader_private_layout_7_, a2_35: FeLocal_fe_shader_private_layout_7_, a3_25: u32, fe_trapped_44: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e6 = precision_lib_field_impl_trait_LimbMore_55ff_mac_gaaac_01be(a1_52, a2_35, a0_72.f0_, 0u, fe_trapped_44);
    let _e9 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e6.f0_);
    let _e10 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e6.f0_, _e6.f1_);
    let _e12 = rows_ga030_(a0_72.f1_, _e10, a2_35, _e9, fe_trapped_44);
    return _e12;
}

fn precision_lib_fixed_mul_gc7cf_648e(a0_73: u32, a1_53: FeLocal_fe_shader_private_layout_7_, a2_36: u32, a3_26: FeLocal_fe_shader_private_layout_7_, fe_trapped_45: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    var local_130: FeLocal_fe_shader_private_layout_8_;
    var local_131: bool = false;

    let _e7 = (a0_73 + a2_36);
    if (a0_73 > (4294967295u - a2_36)) {
    } else {
        let _e14 = (2u * a0_73);
        let _e15 = (2u != 0u);
        if (_e15 && (a0_73 > (4294967295u / select(1u, 2u, _e15)))) {
        } else {
            let _e23 = (_e14 * a2_36);
            let _e24 = (_e14 != 0u);
            if (_e24 && (a2_36 > (4294967295u / select(1u, _e14, _e24)))) {
            } else {
                if (_e7 < _e23) {
                } else {
                    let _e31 = precision_lib_field_impl_trait_LimbMore_1318_zero_gaaac_5754_();
                    let _e33 = precision_lib_fixed_impl_trait_LimbMore_aeff_rows_gf554_13e8_(a3_26, _e31, a1_53, 0u, fe_trapped_45);
                    local_130 = FeLocal_fe_shader_private_layout_8_((_e7 - _e23), _e33.f0_);
                    local_131 = true;
                }
                let _e40 = local_131;
                if _e40 {
                }
            }
            let _e42 = local_131;
            if _e42 {
            }
        }
        let _e44 = local_131;
        if _e44 {
        }
    }
    let _e47 = local_131;
    if _e47 {
    } else {
        (*fe_trapped_45) = true;
    }
    let _e49 = local_130;
    return _e49;
}

fn top_g5d22_(a0_74: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_74.f1_.f0_;
}

fn top_gbb08_(a0_75: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e2 = top_g5d22_(a0_75.f1_);
    return _e2;
}

fn top_gf166_(a0_76: FeLocal_fe_shader_private_layout_3_) -> u32 {
    let _e2 = top_gbb08_(a0_76.f1_);
    return _e2;
}

fn top_ga8f6_(a0_77: FeLocal_fe_shader_private_layout_4_) -> u32 {
    let _e2 = top_gf166_(a0_77.f1_);
    return _e2;
}

fn top_gf0cd(a0_78: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e2 = top_ga8f6_(a0_78.f1_);
    return _e2;
}

fn top_g4f4f(a0_79: FeLocal_fe_shader_private_layout_6_) -> u32 {
    let _e2 = top_gf0cd(a0_79.f1_);
    return _e2;
}

fn top_gaaac(a0_80: FeLocal_fe_shader_private_layout_7_) -> u32 {
    let _e2 = top_g4f4f(a0_80.f1_);
    return _e2;
}

fn or_lower_g5d22_(a0_81: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_81.f0_;
}

fn or_lower_gbb08_(a0_82: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e3 = or_lower_g5d22_(a0_82.f1_);
    return (a0_82.f0_ | _e3);
}

fn or_lower_gf166_(a0_83: FeLocal_fe_shader_private_layout_3_) -> u32 {
    let _e3 = or_lower_gbb08_(a0_83.f1_);
    return (a0_83.f0_ | _e3);
}

fn or_lower_ga8f6_(a0_84: FeLocal_fe_shader_private_layout_4_) -> u32 {
    let _e3 = or_lower_gf166_(a0_84.f1_);
    return (a0_84.f0_ | _e3);
}

fn or_lower_gf0cd(a0_85: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e3 = or_lower_ga8f6_(a0_85.f1_);
    return (a0_85.f0_ | _e3);
}

fn or_lower_g4f4f(a0_86: FeLocal_fe_shader_private_layout_6_) -> u32 {
    let _e3 = or_lower_gf0cd(a0_86.f1_);
    return (a0_86.f0_ | _e3);
}

fn or_lower_gaaac(a0_87: FeLocal_fe_shader_private_layout_7_) -> u32 {
    let _e3 = or_lower_g4f4f(a0_87.f1_);
    return (a0_87.f0_ | _e3);
}

fn escaped(a0_88: FeLocal_fe_shader_private_layout_7_) -> u32 {
    var local_132: u32;
    var local_133: bool = false;
    var local_134: u32 = u32();

    let _e3 = top_gaaac(a0_88);
    let _e4 = or_lower_gaaac(a0_88);
    if (4u < _e3) {
        local_134 = 1u;
    } else {
        if (_e3 == 4u) {
            if ((_e4 == 0u) == false) {
                local_134 = 1u;
            }
        }
    }
    let _e18 = local_134;
    return _e18;
}

fn sub(a0_89: u32, a1_54: FeLocal_fe_shader_private_layout_7_, a2_37: u32, a3_27: FeLocal_fe_shader_private_layout_7_, fe_trapped_46: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    var local_135: FeLocal_fe_shader_private_layout_8_;
    var local_136: bool = false;

    if (1u < a2_37) {
        (*fe_trapped_46) = true;
    }
    let _e10 = add_g62af(a0_89, a1_54, (1u - a2_37), a3_27, fe_trapped_46);
    return _e10;
}

fn mandelbrot_advance8_(a0_90: u32, a1_55: FeLocal_fe_shader_private_layout_7_, a2_38: u32, a3_28: FeLocal_fe_shader_private_layout_7_, a4_1: u32, a5_: FeLocal_fe_shader_private_layout_7_, a6_: u32, a7_: FeLocal_fe_shader_private_layout_7_, fe_trapped_47: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_25_ {
    var local_137: FeLocal_fe_shader_private_layout_25_;
    var local_138: bool = false;
    var local_139: FeLocal_fe_shader_private_layout_25_ = FeLocal_fe_shader_private_layout_25_();

    let _e11 = precision_lib_fixed_mul_gc7cf_648e(a0_90, a1_55, a0_90, a1_55, fe_trapped_47);
    let _e14 = precision_lib_fixed_mul_gc7cf_648e(a2_38, a3_28, a2_38, a3_28, fe_trapped_47);
    let _e17 = add_g62af(_e11.f0_, _e11.f1_, _e14.f0_, _e14.f1_, fe_trapped_47);
    let _e19 = escaped(_e17.f1_);
    if (_e19 == 1u) {
        local_139 = FeLocal_fe_shader_private_layout_25_(a0_90, a1_55, a2_38, a3_28, 1u);
    } else {
        let _e24 = sub(_e11.f0_, _e11.f1_, _e14.f0_, _e14.f1_, fe_trapped_47);
        let _e27 = add_g62af(_e24.f0_, _e24.f1_, a4_1, a5_, fe_trapped_47);
        let _e30 = precision_lib_fixed_mul_gc7cf_648e(a0_90, a1_55, a2_38, a3_28, fe_trapped_47);
        let _e33 = add_g62af(_e30.f0_, _e30.f1_, _e30.f0_, _e30.f1_, fe_trapped_47);
        let _e36 = add_g62af(_e33.f0_, _e33.f1_, a6_, a7_, fe_trapped_47);
        local_139 = FeLocal_fe_shader_private_layout_25_(_e27.f0_, _e27.f1_, _e36.f0_, _e36.f1_, 0u);
    }
    let _e44 = local_139;
    return _e44;
}

fn precision_lib_fixed_limb_highest_bit_104a(a0_91: u32) -> u32 {
    var local_140: u32;
    var local_141: bool = false;
    var local_142: u32 = u32();

    if ((a0_91 < 4096u) == false) {
        local_142 = 12u;
    } else {
        if ((a0_91 < 2048u) == false) {
            local_142 = 11u;
        } else {
            if ((a0_91 < 1024u) == false) {
                local_142 = 10u;
            } else {
                if ((a0_91 < 512u) == false) {
                    local_142 = 9u;
                } else {
                    if ((a0_91 < 256u) == false) {
                        local_142 = 8u;
                    } else {
                        if ((a0_91 < 128u) == false) {
                            local_142 = 7u;
                        } else {
                            if ((a0_91 < 64u) == false) {
                                local_142 = 6u;
                            } else {
                                if ((a0_91 < 32u) == false) {
                                    local_142 = 5u;
                                } else {
                                    if ((a0_91 < 16u) == false) {
                                        local_142 = 4u;
                                    } else {
                                        if ((a0_91 < 8u) == false) {
                                            local_142 = 3u;
                                        } else {
                                            if ((a0_91 < 4u) == false) {
                                                local_142 = 2u;
                                            } else {
                                                if ((a0_91 < 2u) == false) {
                                                    local_142 = 1u;
                                                } else {
                                                    if (a0_91 == 1u) {
                                                    } else {
                                                        local_142 = 4294967295u;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    let _e80 = local_142;
    return _e80;
}

fn highest_bit_g5d22_(a0_92: FeLocal_fe_shader_private_layout_1_) -> u32 {
    var local_143: u32;
    var local_144: bool = false;
    var local_145: u32 = u32();

    let _e5 = precision_lib_fixed_limb_highest_bit_104a(a0_92.f1_.f0_);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        local_145 = (_e5 + 13u);
    } else {
        let _e15 = precision_lib_fixed_limb_highest_bit_104a(a0_92.f0_);
        local_145 = _e15;
    }
    let _e19 = local_145;
    return _e19;
}

fn highest_bit_gbb08_(a0_93: FeLocal_fe_shader_private_layout_2_) -> u32 {
    var local_146: u32;
    var local_147: bool = false;
    var local_148: u32 = u32();

    let _e4 = highest_bit_g5d22_(a0_93.f1_);
    if ((bitcast<i32>(_e4) < bitcast<i32>(0u)) == false) {
        local_148 = (_e4 + 13u);
    } else {
        let _e14 = precision_lib_fixed_limb_highest_bit_104a(a0_93.f0_);
        local_148 = _e14;
    }
    let _e18 = local_148;
    return _e18;
}

fn highest_bit_gf166_(a0_94: FeLocal_fe_shader_private_layout_3_) -> u32 {
    var local_149: u32;
    var local_150: bool = false;
    var local_151: u32 = u32();

    let _e4 = highest_bit_gbb08_(a0_94.f1_);
    if ((bitcast<i32>(_e4) < bitcast<i32>(0u)) == false) {
        local_151 = (_e4 + 13u);
    } else {
        let _e14 = precision_lib_fixed_limb_highest_bit_104a(a0_94.f0_);
        local_151 = _e14;
    }
    let _e18 = local_151;
    return _e18;
}

fn highest_bit_ga8f6_(a0_95: FeLocal_fe_shader_private_layout_4_) -> u32 {
    var local_152: u32;
    var local_153: bool = false;
    var local_154: u32 = u32();

    let _e4 = highest_bit_gf166_(a0_95.f1_);
    if ((bitcast<i32>(_e4) < bitcast<i32>(0u)) == false) {
        local_154 = (_e4 + 13u);
    } else {
        let _e14 = precision_lib_fixed_limb_highest_bit_104a(a0_95.f0_);
        local_154 = _e14;
    }
    let _e18 = local_154;
    return _e18;
}

fn highest_bit_gf0cd(a0_96: FeLocal_fe_shader_private_layout_5_, fe_trapped_48: ptr<function, bool>) -> u32 {
    var local_155: u32;
    var local_156: bool = false;
    var local_157: u32 = u32();

    let _e5 = highest_bit_ga8f6_(a0_96.f1_);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        let _e15 = (_e5 + 13u);
        if ((((_e5 ^ _e15) & (13u ^ _e15)) & 2147483648u) != 0u) {
            (*fe_trapped_48) = true;
        } else {
            local_157 = _e15;
        }
    } else {
        let _e24 = precision_lib_fixed_limb_highest_bit_104a(a0_96.f0_);
        local_157 = _e24;
    }
    let _e27 = local_157;
    return _e27;
}

fn highest_bit_g4f4f(a0_97: FeLocal_fe_shader_private_layout_6_, fe_trapped_49: ptr<function, bool>) -> u32 {
    var local_158: u32;
    var local_159: bool = false;
    var local_160: u32 = u32();

    let _e5 = highest_bit_gf0cd(a0_97.f1_, fe_trapped_49);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        let _e15 = (_e5 + 13u);
        if ((((_e5 ^ _e15) & (13u ^ _e15)) & 2147483648u) != 0u) {
            (*fe_trapped_49) = true;
        } else {
            local_160 = _e15;
        }
    } else {
        let _e24 = precision_lib_fixed_limb_highest_bit_104a(a0_97.f0_);
        local_160 = _e24;
    }
    let _e27 = local_160;
    return _e27;
}

fn highest_bit_gaaac(a0_98: FeLocal_fe_shader_private_layout_7_, fe_trapped_50: ptr<function, bool>) -> u32 {
    var local_161: u32;
    var local_162: bool = false;
    var local_163: u32 = u32();

    let _e5 = highest_bit_g4f4f(a0_98.f1_, fe_trapped_50);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        let _e15 = (_e5 + 13u);
        if ((((_e5 ^ _e15) & (13u ^ _e15)) & 2147483648u) != 0u) {
            (*fe_trapped_50) = true;
        } else {
            local_163 = _e15;
        }
    } else {
        let _e24 = precision_lib_fixed_limb_highest_bit_104a(a0_98.f0_);
        local_163 = _e24;
    }
    let _e27 = local_163;
    return _e27;
}

fn fractional_bits_g5d22_(a0_99: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return 13u;
}

fn fractional_bits_gbb08_(a0_100: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e2 = fractional_bits_g5d22_(a0_100.f1_);
    return (13u + _e2);
}

fn fractional_bits_gf166_(a0_101: FeLocal_fe_shader_private_layout_3_) -> u32 {
    let _e2 = fractional_bits_gbb08_(a0_101.f1_);
    return (13u + _e2);
}

fn fractional_bits_ga8f6_(a0_102: FeLocal_fe_shader_private_layout_4_) -> u32 {
    let _e2 = fractional_bits_gf166_(a0_102.f1_);
    return (13u + _e2);
}

fn fractional_bits_gf0cd(a0_103: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e2 = fractional_bits_ga8f6_(a0_103.f1_);
    return (13u + _e2);
}

fn fractional_bits_g4f4f(a0_104: FeLocal_fe_shader_private_layout_6_, fe_trapped_51: ptr<function, bool>) -> u32 {
    var local_164: u32;
    var local_165: bool = false;

    let _e4 = fractional_bits_gf0cd(a0_104.f1_);
    let _e8 = (13u + _e4);
    if ((((13u ^ _e8) & (_e4 ^ _e8)) & 2147483648u) != 0u) {
        (*fe_trapped_51) = true;
    } else {
        local_164 = _e8;
        local_165 = true;
    }
    let _e19 = local_164;
    return _e19;
}

fn fractional_bits_gaaac(a0_105: FeLocal_fe_shader_private_layout_7_, fe_trapped_52: ptr<function, bool>) -> u32 {
    var local_166: u32;
    var local_167: bool = false;

    let _e4 = fractional_bits_g4f4f(a0_105.f1_, fe_trapped_52);
    let _e8 = (13u + _e4);
    if ((((13u ^ _e8) & (_e4 ^ _e8)) & 2147483648u) != 0u) {
        (*fe_trapped_52) = true;
    } else {
        local_166 = _e8;
        local_167 = true;
    }
    let _e19 = local_166;
    return _e19;
}

fn impl_trait_LimbLast_word_from(a0_106: u32, a1_56: u32) -> u32 {
    var local_168: u32;
    var local_169: bool = false;
    var local_170: u32 = u32();

    if (bitcast<i32>(a1_56) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_56) < bitcast<i32>(13u)) {
            local_170 = (a0_106 >> a1_56);
        }
    }
    let _e15 = local_170;
    return _e15;
}

fn word_from_g5d22_(a0_107: FeLocal_fe_shader_private_layout_1_, a1_57: u32) -> u32 {
    var local_171: u32;
    var local_172: bool = false;
    var local_173: u32 = u32();

    if (bitcast<i32>(a1_57) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_57) < bitcast<i32>(13u)) {
            let _e19 = impl_trait_LimbLast_word_from(a0_107.f1_.f0_, 0u);
            local_173 = ((a0_107.f0_ >> a1_57) | (_e19 << (13u - a1_57)));
        } else {
            let _e26 = impl_trait_LimbLast_word_from(a0_107.f1_.f0_, (a1_57 - 13u));
            local_173 = _e26;
        }
    }
    let _e30 = local_173;
    return _e30;
}

fn word_from_gbb08_(a0_108: FeLocal_fe_shader_private_layout_2_, a1_58: u32) -> u32 {
    var local_174: u32;
    var local_175: bool = false;
    var local_176: u32 = u32();

    if (bitcast<i32>(a1_58) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_58) < bitcast<i32>(13u)) {
            let _e18 = word_from_g5d22_(a0_108.f1_, 0u);
            local_176 = ((a0_108.f0_ >> a1_58) | (_e18 << (13u - a1_58)));
        } else {
            let _e24 = word_from_g5d22_(a0_108.f1_, (a1_58 - 13u));
            local_176 = _e24;
        }
    }
    let _e28 = local_176;
    return _e28;
}

fn word_from_gf166_(a0_109: FeLocal_fe_shader_private_layout_3_, a1_59: u32) -> u32 {
    var local_177: u32;
    var local_178: bool = false;
    var local_179: u32 = u32();

    if (bitcast<i32>(a1_59) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_59) < bitcast<i32>(13u)) {
            let _e18 = word_from_gbb08_(a0_109.f1_, 0u);
            local_179 = ((a0_109.f0_ >> a1_59) | (_e18 << (13u - a1_59)));
        } else {
            let _e24 = word_from_gbb08_(a0_109.f1_, (a1_59 - 13u));
            local_179 = _e24;
        }
    }
    let _e28 = local_179;
    return _e28;
}

fn word_from_ga8f6_(a0_110: FeLocal_fe_shader_private_layout_4_, a1_60: u32) -> u32 {
    var local_180: u32;
    var local_181: bool = false;
    var local_182: u32 = u32();

    if (bitcast<i32>(a1_60) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_60) < bitcast<i32>(13u)) {
            let _e18 = word_from_gf166_(a0_110.f1_, 0u);
            local_182 = ((a0_110.f0_ >> a1_60) | (_e18 << (13u - a1_60)));
        } else {
            let _e24 = word_from_gf166_(a0_110.f1_, (a1_60 - 13u));
            local_182 = _e24;
        }
    }
    let _e28 = local_182;
    return _e28;
}

fn word_from_gf0cd(a0_111: FeLocal_fe_shader_private_layout_5_, a1_61: u32) -> u32 {
    var local_183: u32;
    var local_184: bool = false;
    var local_185: u32 = u32();

    if (bitcast<i32>(a1_61) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_61) < bitcast<i32>(13u)) {
            let _e18 = word_from_ga8f6_(a0_111.f1_, 0u);
            local_185 = ((a0_111.f0_ >> a1_61) | (_e18 << (13u - a1_61)));
        } else {
            let _e24 = word_from_ga8f6_(a0_111.f1_, (a1_61 - 13u));
            local_185 = _e24;
        }
    }
    let _e28 = local_185;
    return _e28;
}

fn word_from_g4f4f(a0_112: FeLocal_fe_shader_private_layout_6_, a1_62: u32) -> u32 {
    var local_186: u32;
    var local_187: bool = false;
    var local_188: u32 = u32();

    if (bitcast<i32>(a1_62) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_62) < bitcast<i32>(13u)) {
            let _e18 = word_from_gf0cd(a0_112.f1_, 0u);
            local_188 = ((a0_112.f0_ >> a1_62) | (_e18 << (13u - a1_62)));
        } else {
            let _e24 = word_from_gf0cd(a0_112.f1_, (a1_62 - 13u));
            local_188 = _e24;
        }
    }
    let _e28 = local_188;
    return _e28;
}

fn word_from_gaaac(a0_113: FeLocal_fe_shader_private_layout_7_, a1_63: u32) -> u32 {
    var local_189: u32;
    var local_190: bool = false;
    var local_191: u32 = u32();

    if (bitcast<i32>(a1_63) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_63) < bitcast<i32>(13u)) {
            let _e18 = word_from_g4f4f(a0_113.f1_, 0u);
            local_191 = ((a0_113.f0_ >> a1_63) | (_e18 << (13u - a1_63)));
        } else {
            let _e24 = word_from_g4f4f(a0_113.f1_, (a1_63 - 13u));
            local_191 = _e24;
        }
    }
    let _e28 = local_191;
    return _e28;
}

fn to_f32_quad_bits(a0_114: u32, a1_64: FeLocal_fe_shader_private_layout_7_, fe_trapped_53: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_26_ {
    var local_192: u32 = u32();
    var local_193: u32 = u32();
    var local_194: u32 = u32();
    var local_195: u32 = u32();
    var local_196: u32 = u32();
    var local_197: u32 = u32();
    var loop_result_6: FeLocal_fe_shader_private_layout_26_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_8_: bool;
    var local_198: u32 = u32();
    var local_199: u32 = u32();
    var local_200: u32 = u32();
    var local_201: u32 = u32();
    var local_202: u32 = u32();
    var local_203: u32 = u32();
    var local_204: u32 = u32();

    let _e3 = highest_bit_gaaac(a1_64, fe_trapped_53);
    let _e4 = fractional_bits_gaaac(a1_64, fe_trapped_53);
    local_192 = 0u;
    local_193 = 0u;
    local_194 = 0u;
    local_195 = 0u;
    local_196 = 0u;
    local_197 = 0u;
    loop {
        let _e25 = local_192;
        let _e27 = local_193;
        let _e29 = local_194;
        let _e31 = local_195;
        let _e33 = local_196;
        let _e35 = local_197;
        let _e37 = (_e35 < 4u);
        loop_header_carry_8_ = _e37;
        if _e37 {
            let _e40 = (_e3 - _e33);
            if ((((_e3 ^ _e40) & (_e3 ^ _e33)) & 2147483648u) != 0u) {
            } else {
                if (bitcast<i32>(_e40) < bitcast<i32>(0u)) {
                    local_198 = 0u;
                } else {
                    let _e53 = (_e40 - 23u);
                    if (bitcast<i32>(_e53) < bitcast<i32>(0u)) {
                        let _e61 = word_from_gaaac(a1_64, 0u);
                        local_199 = ((_e61 << (0u - _e53)) & 16777215u);
                    } else {
                        let _e65 = word_from_gaaac(a1_64, _e53);
                        local_199 = (_e65 & 16777215u);
                    }
                    let _e71 = local_199;
                    if (_e71 == 0u) {
                        local_198 = 0u;
                    } else {
                        let _e76 = (_e71 >> 13u);
                        if (_e76 == 0u) {
                            let _e79 = precision_lib_fixed_limb_highest_bit_104a(_e71);
                            local_200 = _e79;
                        } else {
                            let _e80 = precision_lib_fixed_limb_highest_bit_104a(_e76);
                            local_200 = (13u + _e80);
                        }
                        let _e86 = local_200;
                        let _e92 = (_e53 + _e86);
                        if ((((_e53 ^ _e92) & (_e86 ^ _e92)) & 2147483648u) != 0u) {
                            (*fe_trapped_53) = true;
                            break;
                        } else {
                            let _e101 = (_e92 - _e4);
                            if ((((_e92 ^ _e101) & (_e92 ^ _e4)) & 2147483648u) != 0u) {
                                (*fe_trapped_53) = true;
                                break;
                            } else {
                                let _e111 = (_e101 + 127u);
                                if ((((_e101 ^ _e111) & (127u ^ _e111)) & 2147483648u) != 0u) {
                                    (*fe_trapped_53) = true;
                                    break;
                                } else {
                                    local_198 = (((a0_114 << 31u) | (_e111 << 23u)) | ((_e71 << (23u - _e86)) & 8388607u));
                                }
                            }
                        }
                    }
                }
                let _e136 = local_198;
                switch _e35 {
                    case 0u: {
                        local_201 = _e25;
                        local_202 = _e27;
                        local_203 = _e29;
                        local_204 = _e136;
                    }
                    case 1u: {
                        local_201 = _e25;
                        local_202 = _e27;
                        local_203 = _e136;
                        local_204 = _e31;
                    }
                    case 2u: {
                        local_201 = _e25;
                        local_202 = _e136;
                        local_203 = _e29;
                        local_204 = _e31;
                    }
                    default: {
                        local_201 = _e136;
                        local_202 = _e27;
                        local_203 = _e29;
                        local_204 = _e31;
                    }
                }
                let _e154 = local_201;
                let _e156 = local_202;
                let _e158 = local_203;
                let _e160 = local_204;
                let _e166 = (_e33 + 24u);
                if ((((_e33 ^ _e166) & (24u ^ _e166)) & 2147483648u) != 0u) {
                } else {
                    local_192 = _e154;
                    local_193 = _e156;
                    local_194 = _e158;
                    local_195 = _e160;
                    local_196 = _e166;
                    local_197 = (_e35 + 1u);
                    continue;
                }
            }
            (*fe_trapped_53) = true;
            break;
        } else {
            loop_result_6 = FeLocal_fe_shader_private_layout_26_(_e31, _e29, _e27, _e25);
            loop_did_return_6 = true;
            break;
        }
    }
    let _e185 = loop_result_6;
    return _e185;
}

fn fixed_magnitude_to_words(a0_115: FeLocal_fe_shader_private_layout_7_) -> array<u32, 8> {
    var fixed_local_2_: array<u32, 8> = array<u32, 8>();
    var local_205: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var local_206: u32 = u32();
    var loop_result_7: array<u32, 8>;
    var loop_did_return_7: bool = false;
    var loop_header_carry_21_: bool;

    local_205 = a0_115;
    local_206 = 0u;
    loop {
        let _e10 = local_205;
        let _e12 = local_206;
        let _e14 = (_e12 < 8u);
        loop_header_carry_21_ = _e14;
        if _e14 {
            let _e15 = precision_lib_field_impl_trait_LimbMore_93d2_head_gaaac_05cb(_e10);
            fixed_local_2_[_e12] = _e15;
            let _e18 = precision_lib_field_impl_trait_LimbMore_f1de_shift_append_gaaac_197e(_e10, 0u);
            local_205 = _e18;
            local_206 = (_e12 + 1u);
            continue;
        } else {
            let _e23 = fixed_local_2_;
            loop_result_7 = _e23;
            loop_did_return_7 = true;
            break;
        }
    }
    let _e29 = loop_result_7;
    return _e29;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: f32 = f32();
    var local_3: u32;
    var local_4: bool = false;
    var local_5: f32 = f32();
    var local_6: u32;
    var local_7: bool = false;
    var local_8: bool = bool();
    var local_9: u32;
    var local_10: bool = false;
    var local_11: u32 = u32();
    var local_12: u32;
    var local_13: bool = false;
    var local_14: u32 = u32();
    var local_15: u32;
    var local_16: bool = false;
    var local_17: u32 = u32();
    var local_18: u32;
    var local_19: bool = false;
    var local_20: u32 = u32();
    var local_21: u32;
    var local_22: bool = false;
    var local_23: u32 = u32();
    var local_24: u32;
    var local_25: bool = false;
    var local_26: bool = bool();
    var local_27: u32;
    var local_28: bool = false;
    var local_29: u32;
    var local_30: bool = false;
    var local_31: u32;
    var local_32: bool = false;
    var local_33: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_1098_: bool;
    var fixed_local_1079_: array<u32, 8> = array<u32, 8>();
    var fixed_local_1088_: array<u32, 8> = array<u32, 8>();
    var local_34: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_1179_: bool;
    var local_35: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var local_36: u32 = u32();
    var local_37: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var local_38: u32 = u32();
    var local_39: u32 = u32();
    var local_40: u32 = u32();
    var local_41: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_1232_: bool;
    var fixed_local_1994_: array<u32, 8> = array<u32, 8>();
    var fixed_local_1997_: array<u32, 8> = array<u32, 8>();
    var local_42: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_2013_: bool;

    let _e9 = params.p14_;
    let _e11 = params.p15_;
    let _e13 = params.p16_;
    let _e15 = params.p17_;
    let _e17 = params.p18_;
    let _e19 = params.p19_;
    let _e21 = params.p20_;
    let _e23 = params.p21_;
    let _e25 = params.p22_;
    let _e27 = params.p23_;
    let _e29 = params.p24_;
    let _e31 = params.p25_;
    let _e33 = params.p26_;
    let _e35 = params.p27_;
    let _e42 = cache[i32(0u)].x0_;
    let _e44 = cache[i32(0u)].x1_;
    let _e46 = cache[i32(0u)].x2_;
    let _e48 = cache[i32(0u)].x3_;
    let _e50 = cache[i32(0u)].y0_;
    let _e52 = cache[i32(0u)].y1_;
    let _e54 = cache[i32(0u)].y2_;
    let _e56 = cache[i32(0u)].y3_;
    let _e58 = cache[i32(0u)].zoom;
    let _e60 = cache[i32(0u)].res;
    let _e62 = cache[i32(0u)].cursor;
    let _e64 = cache[i32(0u)].aa;
    let _e66 = cache[i32(0u)].budget;
    let _e68 = cache[i32(0u)].radius;
    let _e70 = cache[i32(0u)].epoch;
    let _e72 = cache[i32(0u)].completed;
    if (0.5f <= _e35) {
    } else {
        local_2 = (_e29 - _e31);
    }
    let _e80 = local_2;
    let _e81 = iteration_limit(_e25, (&fe_trapped));
    let _e86 = reference[i32(0u)].pending;
    let _e88 = reference[i32(0u)].ready_at;
    if (_e86 == 1u) {
    } else {
        let _e91 = impl_trait_f32_max(_e31, _e88);
        let _e94 = impl_trait_f32_max(0f, (_e29 - _e91));
        local_5 = (_e94 * (1f - _e35));
    }
    let _e102 = local_5;
    let _e103 = blur_radius(_e102);
    if (_e42 == _e9) {
        if (_e44 == _e11) {
            if (_e46 == _e13) {
                if (_e48 == _e15) {
                    if (_e50 == _e17) {
                        if (_e52 == _e19) {
                            if (_e54 == _e21) {
                                if (_e56 == _e23) {
                                    if (_e58 == _e25) {
                                        if (_e60 == _e27) {
                                            if (_e64 == _e33) {
                                                local_8 = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    let _e120 = local_8;
    if _e120 {
        if (_e66 == _e81) {
            if (360f <= _e102) {
            } else {
                local_11 = 1u;
            }
        } else {
            local_11 = 1u;
        }
    } else {
        local_11 = 1u;
    }
    let _e133 = local_11;
    if (_e133 == 0u) {
        if (_e68 == _e103) {
        } else {
            local_14 = 1u;
        }
    } else {
        local_14 = 1u;
    }
    let _e144 = local_14;
    if _e120 {
        local_17 = _e62;
    }
    let _e149 = local_17;
    if _e120 {
        local_20 = _e70;
    } else {
        if (_e70 > (4294967295u - 1u)) {
            fe_trapped = true;
        } else {
            local_20 = (_e70 + 1u);
        }
    }
    let _e161 = local_20;
    if _e120 {
        local_23 = _e72;
    }
    let _e166 = local_23;
    cache[i32(0u)].x0_ = _e9;
    cache[i32(0u)].x1_ = _e11;
    cache[i32(0u)].x2_ = _e13;
    cache[i32(0u)].x3_ = _e15;
    cache[i32(0u)].y0_ = _e17;
    cache[i32(0u)].y1_ = _e19;
    cache[i32(0u)].y2_ = _e21;
    cache[i32(0u)].y3_ = _e23;
    cache[i32(0u)].zoom = _e25;
    cache[i32(0u)].res = _e27;
    cache[i32(0u)].cursor = _e149;
    cache[i32(0u)].aa = _e33;
    cache[i32(0u)].budget = _e81;
    cache[i32(0u)].radius = _e103;
    cache[i32(0u)].preview_dirty = _e133;
    cache[i32(0u)].blur_dirty = _e144;
    cache[i32(0u)].epoch = _e161;
    cache[i32(0u)].completed = _e166;
    let _e192 = reference[i32(0u)].active_;
    let _e194 = reference[i32(0u)].active_valid;
    let _e196 = reference[i32(0u)].pending;
    let _e198 = reference[i32(0u)].index;
    let _e200 = reference[i32(0u)].zx_s;
    let _e202 = reference[i32(0u)].zy_s;
    let _e204 = reference[i32(0u)].ready_at;
    let _e208 = anchor[i32(_e192)].x0_;
    let _e210 = anchor[i32(_e192)].x1_;
    let _e212 = anchor[i32(_e192)].x2_;
    let _e214 = anchor[i32(_e192)].x3_;
    let _e216 = anchor[i32(_e192)].y0_;
    let _e218 = anchor[i32(_e192)].y1_;
    let _e220 = anchor[i32(_e192)].y2_;
    let _e222 = anchor[i32(_e192)].y3_;
    let _e224 = anchor[i32(_e192)].limit;
    let _e226 = anchor[i32(_e192)].generation;
    let _e241 = iteration_limit(_e25, (&fe_trapped));
    if (_e194 == 1u) {
        if (_e224 < _e241) {
        } else {
            let _e245 = impl_trait_f32_abs((((_e9 - _e208) + (_e11 - _e210)) + ((_e13 - _e212) + (_e15 - _e214))));
            if (_e245 <= (_e25 * 0.125f)) {
                let _e249 = impl_trait_f32_abs((((_e17 - _e216) + (_e19 - _e218)) + ((_e21 - _e220) + (_e23 - _e222))));
                if (_e249 <= (_e25 * 0.125f)) {
                    local_26 = true;
                }
            }
        }
    }
    let _e257 = local_26;
    if (((_e196 == 0u) == false) | (_e257 == false)) {
    } else {
        local_28 = true;
    }
    let _e842 = local_28;
    if _e842 {
    } else {
        if (_e194 == 1u) {
            if (_e80 < 60f) {
                local_30 = true;
            }
            let _e275 = local_30;
            if _e275 {
            }
        }
        let _e840 = local_30;
        if _e840 {
        } else {
            let _e278 = (1u - _e192);
            if (1u < _e192) {
            } else {
                let _e284 = (_e278 * 8195u);
                let _e285 = (_e278 != 0u);
                if (_e285 && (8195u > (4294967295u / select(1u, _e278, _e285)))) {
                } else {
                    if (_e196 == 0u) {
                        if (_e226 > (4294967295u - 1u)) {
                            fe_trapped = true;
                        }
                        anchor[i32(_e278)].x0_ = _e9;
                        anchor[i32(_e278)].x1_ = _e11;
                        anchor[i32(_e278)].x2_ = _e13;
                        anchor[i32(_e278)].x3_ = _e15;
                        anchor[i32(_e278)].y0_ = _e17;
                        anchor[i32(_e278)].y1_ = _e19;
                        anchor[i32(_e278)].y2_ = _e21;
                        anchor[i32(_e278)].y3_ = _e23;
                        anchor[i32(_e278)].limit = _e241;
                        anchor[i32(_e278)].generation = (_e226 + 1u);
                        local_33 = 0u;
                        loop {
                            let _e315 = local_33;
                            let _e317 = (_e315 < 16u);
                            loop_header_carry_1098_ = _e317;
                            if _e317 {
                                reference_words[i32(_e315)] = 0u;
                                local_33 = (_e315 + 1u);
                                continue;
                            } else {
                                orbit[i32(_e284)].re_w0_bits = FeLocal_fe_shader_private_layout_30_().f0_;
                                orbit[i32(_e284)].re_w1_bits = FeLocal_fe_shader_private_layout_30_().f1_;
                                orbit[i32(_e284)].re_w2_bits = FeLocal_fe_shader_private_layout_30_().f2_;
                                orbit[i32(_e284)].re_w3_bits = FeLocal_fe_shader_private_layout_30_().f3_;
                                orbit[i32(_e284)].im_w0_bits = FeLocal_fe_shader_private_layout_30_().f4_;
                                orbit[i32(_e284)].im_w1_bits = FeLocal_fe_shader_private_layout_30_().f5_;
                                orbit[i32(_e284)].im_w2_bits = FeLocal_fe_shader_private_layout_30_().f6_;
                                orbit[i32(_e284)].im_w3_bits = FeLocal_fe_shader_private_layout_30_().f7_;
                                reference[i32(0u)].active_ = _e192;
                                reference[i32(0u)].active_valid = _e194;
                                reference[i32(0u)].pending = 1u;
                                reference[i32(0u)].index = 0u;
                                reference[i32(0u)].zx_s = 0u;
                                reference[i32(0u)].zy_s = 0u;
                                reference[i32(0u)].ready_at = _e204;
                                loop_did_return = true;
                                break;
                            }
                        }
                        let _e361 = loop_did_return;
                        if _e361 {
                            local_32 = true;
                        }
                    } else {
                        let _e367 = anchor[i32(_e278)].x0_;
                        let _e369 = anchor[i32(_e278)].x1_;
                        let _e371 = anchor[i32(_e278)].x2_;
                        let _e373 = anchor[i32(_e278)].x3_;
                        let _e375 = anchor[i32(_e278)].y0_;
                        let _e377 = anchor[i32(_e278)].y1_;
                        let _e379 = anchor[i32(_e278)].y2_;
                        let _e381 = anchor[i32(_e278)].y3_;
                        let _e383 = anchor[i32(_e278)].limit;
                        let _e385 = from_qf_offset(_e367, _e369, _e371, _e373, 0f, (&fe_trapped));
                        let _e389 = from_qf_offset(_e375, _e377, _e379, _e381, 0f, (&fe_trapped));
                        local_34 = 0u;
                        loop {
                            let _e401 = local_34;
                            let _e403 = (_e401 < 8u);
                            loop_header_carry_1179_ = _e403;
                            if _e403 {
                                let _e406 = reference_words[i32(_e401)];
                                fixed_local_1079_[_e401] = _e406;
                                let _e412 = reference_words[i32((_e401 + 8u))];
                                fixed_local_1088_[_e401] = _e412;
                                local_34 = (_e401 + 1u);
                                continue;
                            } else {
                                break;
                            }
                        }
                        let _e418 = fixed_magnitude_from_words((&fixed_local_1079_));
                        let _e419 = fixed_magnitude_from_words((&fixed_local_1088_));
                        local_35 = _e419;
                        local_36 = _e202;
                        local_37 = _e418;
                        local_38 = _e200;
                        local_39 = _e198;
                        local_40 = 0u;
                        local_41 = 0u;
                        loop {
                            let _e438 = local_35;
                            let _e440 = local_36;
                            let _e442 = local_37;
                            let _e444 = local_38;
                            let _e446 = local_39;
                            let _e448 = local_40;
                            let _e450 = local_41;
                            let _e452 = (_e450 < 64u);
                            loop_header_carry_1232_ = _e452;
                            if _e452 {
                                if (_e446 < _e383) {
                                    if (_e448 == 0u) {
                                        let _e456 = mandelbrot_advance8_(_e444, _e442, _e440, _e438, _e385.f0_, _e385.f1_, _e389.f0_, _e389.f1_, (&fe_trapped));
                                        let _e462 = to_f32_quad_bits(_e456.f0_, _e456.f1_, (&fe_trapped));
                                        let _e467 = to_f32_quad_bits(_e456.f2_, _e456.f3_, (&fe_trapped));
                                        let _e473 = (_e284 + _e446);
                                        if (_e284 > (4294967295u - _e446)) {
                                        } else {
                                            if (_e473 > (4294967295u - 1u)) {
                                                fe_trapped = true;
                                                break;
                                            }
                                            orbit[i32((_e473 + 1u))].re_w0_bits = _e462.f0_;
                                            orbit[i32((_e473 + 1u))].re_w1_bits = _e462.f1_;
                                            orbit[i32((_e473 + 1u))].re_w2_bits = _e462.f2_;
                                            orbit[i32((_e473 + 1u))].re_w3_bits = _e462.f3_;
                                            orbit[i32((_e473 + 1u))].im_w0_bits = _e467.f0_;
                                            orbit[i32((_e473 + 1u))].im_w1_bits = _e467.f1_;
                                            orbit[i32((_e473 + 1u))].im_w2_bits = _e467.f2_;
                                            orbit[i32((_e473 + 1u))].im_w3_bits = _e467.f3_;
                                            local_35 = _e456.f3_;
                                            local_36 = _e456.f2_;
                                            local_37 = _e456.f1_;
                                            local_38 = _e456.f0_;
                                            local_39 = (_e446 + 1u);
                                            local_40 = _e456.f4_;
                                            local_41 = (_e450 + 1u);
                                            continue;
                                        }
                                        fe_trapped = true;
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
                        }
                        let _e506 = local_35;
                        let _e508 = local_36;
                        let _e510 = local_37;
                        let _e512 = local_38;
                        let _e514 = local_39;
                        let _e516 = local_40;
                        if (_e516 == 1u) {
                        } else {
                            if (_e514 < _e383) {
                                let _e520 = fixed_magnitude_to_words(_e510);
                                fixed_local_1994_ = _e520;
                                let _e523 = fixed_magnitude_to_words(_e506);
                                fixed_local_1997_ = _e523;
                                local_42 = 0u;
                                loop {
                                    let _e531 = local_42;
                                    let _e533 = (_e531 < 8u);
                                    loop_header_carry_2013_ = _e533;
                                    if _e533 {
                                        let _e535 = fixed_local_1994_[_e531];
                                        reference_words[i32(_e531)] = _e535;
                                        let _e541 = fixed_local_1997_[_e531];
                                        reference_words[i32((_e531 + 8u))] = _e541;
                                        local_42 = (_e531 + 1u);
                                        continue;
                                    } else {
                                        break;
                                    }
                                }
                                reference[i32(0u)].active_ = _e192;
                                reference[i32(0u)].active_valid = _e194;
                                reference[i32(0u)].pending = 1u;
                                reference[i32(0u)].index = _e514;
                                reference[i32(0u)].zx_s = _e512;
                                reference[i32(0u)].zy_s = _e508;
                                reference[i32(0u)].ready_at = _e204;
                                local_32 = true;
                            } else {
                                let _e561 = to_f32_quad_bits(_e385.f0_, _e385.f1_, (&fe_trapped));
                                let _e566 = to_f32_quad_bits(_e389.f0_, _e389.f1_, (&fe_trapped));
                                if (_e284 > (4294967295u - 8193u)) {
                                } else {
                                    orbit[i32((_e284 + 8193u))].re_w0_bits = _e561.f0_;
                                    orbit[i32((_e284 + 8193u))].re_w1_bits = _e561.f1_;
                                    orbit[i32((_e284 + 8193u))].re_w2_bits = _e561.f2_;
                                    orbit[i32((_e284 + 8193u))].re_w3_bits = _e561.f3_;
                                    orbit[i32((_e284 + 8193u))].im_w0_bits = _e566.f0_;
                                    orbit[i32((_e284 + 8193u))].im_w1_bits = _e566.f1_;
                                    orbit[i32((_e284 + 8193u))].im_w2_bits = _e566.f2_;
                                    orbit[i32((_e284 + 8193u))].im_w3_bits = _e566.f3_;
                                    if (_e284 > (4294967295u - 8194u)) {
                                    } else {
                                        if (_e514 > (4294967295u - 1u)) {
                                        } else {
                                            orbit[i32((_e284 + 8194u))].re_w0_bits = (_e514 + 1u);
                                            orbit[i32((_e284 + 8194u))].re_w1_bits = _e383;
                                            orbit[i32((_e284 + 8194u))].re_w2_bits = 0u;
                                            orbit[i32((_e284 + 8194u))].re_w3_bits = 0u;
                                            orbit[i32((_e284 + 8194u))].im_w0_bits = 0u;
                                            orbit[i32((_e284 + 8194u))].im_w1_bits = 0u;
                                            orbit[i32((_e284 + 8194u))].im_w2_bits = 0u;
                                            orbit[i32((_e284 + 8194u))].im_w3_bits = 0u;
                                            reference[i32(0u)].active_ = _e278;
                                            reference[i32(0u)].active_valid = 1u;
                                            reference[i32(0u)].pending = 0u;
                                            reference[i32(0u)].index = _e514;
                                            reference[i32(0u)].zx_s = _e512;
                                            reference[i32(0u)].zy_s = _e508;
                                            reference[i32(0u)].ready_at = _e29;
                                            let _e628 = cache[i32(0u)].x0_;
                                            let _e630 = cache[i32(0u)].x1_;
                                            let _e632 = cache[i32(0u)].x2_;
                                            let _e634 = cache[i32(0u)].x3_;
                                            let _e636 = cache[i32(0u)].y0_;
                                            let _e638 = cache[i32(0u)].y1_;
                                            let _e640 = cache[i32(0u)].y2_;
                                            let _e642 = cache[i32(0u)].y3_;
                                            let _e644 = cache[i32(0u)].zoom;
                                            let _e646 = cache[i32(0u)].res;
                                            let _e648 = cache[i32(0u)].aa;
                                            let _e650 = cache[i32(0u)].budget;
                                            let _e652 = cache[i32(0u)].radius;
                                            let _e654 = cache[i32(0u)].epoch;
                                            if (_e654 > (4294967295u - 1u)) {
                                                fe_trapped = true;
                                            }
                                            cache[i32(0u)].x0_ = _e628;
                                            cache[i32(0u)].x1_ = _e630;
                                            cache[i32(0u)].x2_ = _e632;
                                            cache[i32(0u)].x3_ = _e634;
                                            cache[i32(0u)].y0_ = _e636;
                                            cache[i32(0u)].y1_ = _e638;
                                            cache[i32(0u)].y2_ = _e640;
                                            cache[i32(0u)].y3_ = _e642;
                                            cache[i32(0u)].zoom = _e644;
                                            cache[i32(0u)].res = _e646;
                                            cache[i32(0u)].cursor = 0u;
                                            cache[i32(0u)].aa = _e648;
                                            cache[i32(0u)].budget = _e650;
                                            cache[i32(0u)].radius = _e652;
                                            cache[i32(0u)].preview_dirty = 1u;
                                            cache[i32(0u)].blur_dirty = 1u;
                                            cache[i32(0u)].epoch = (_e654 + 1u);
                                            cache[i32(0u)].completed = 0u;
                                            local_32 = true;
                                        }
                                        let _e689 = local_32;
                                        if _e689 {
                                        }
                                    }
                                    let _e691 = local_32;
                                    if _e691 {
                                    }
                                }
                                let _e694 = local_32;
                                if _e694 {
                                } else {
                                    fe_trapped = true;
                                }
                            }
                            let _e696 = local_32;
                            if _e696 {
                            }
                        }
                        let _e831 = local_32;
                        if _e831 {
                        } else {
                            let _e697 = to_f32_quad_bits(_e385.f0_, _e385.f1_, (&fe_trapped));
                            let _e702 = to_f32_quad_bits(_e389.f0_, _e389.f1_, (&fe_trapped));
                            if (_e284 > (4294967295u - 8193u)) {
                            } else {
                                orbit[i32((_e284 + 8193u))].re_w0_bits = _e697.f0_;
                                orbit[i32((_e284 + 8193u))].re_w1_bits = _e697.f1_;
                                orbit[i32((_e284 + 8193u))].re_w2_bits = _e697.f2_;
                                orbit[i32((_e284 + 8193u))].re_w3_bits = _e697.f3_;
                                orbit[i32((_e284 + 8193u))].im_w0_bits = _e702.f0_;
                                orbit[i32((_e284 + 8193u))].im_w1_bits = _e702.f1_;
                                orbit[i32((_e284 + 8193u))].im_w2_bits = _e702.f2_;
                                orbit[i32((_e284 + 8193u))].im_w3_bits = _e702.f3_;
                                if (_e284 > (4294967295u - 8194u)) {
                                } else {
                                    if (_e514 > (4294967295u - 1u)) {
                                    } else {
                                        orbit[i32((_e284 + 8194u))].re_w0_bits = (_e514 + 1u);
                                        orbit[i32((_e284 + 8194u))].re_w1_bits = _e383;
                                        orbit[i32((_e284 + 8194u))].re_w2_bits = 0u;
                                        orbit[i32((_e284 + 8194u))].re_w3_bits = 0u;
                                        orbit[i32((_e284 + 8194u))].im_w0_bits = 0u;
                                        orbit[i32((_e284 + 8194u))].im_w1_bits = 0u;
                                        orbit[i32((_e284 + 8194u))].im_w2_bits = 0u;
                                        orbit[i32((_e284 + 8194u))].im_w3_bits = 0u;
                                        reference[i32(0u)].active_ = _e278;
                                        reference[i32(0u)].active_valid = 1u;
                                        reference[i32(0u)].pending = 0u;
                                        reference[i32(0u)].index = _e514;
                                        reference[i32(0u)].zx_s = _e512;
                                        reference[i32(0u)].zy_s = _e508;
                                        reference[i32(0u)].ready_at = _e29;
                                        let _e764 = cache[i32(0u)].x0_;
                                        let _e766 = cache[i32(0u)].x1_;
                                        let _e768 = cache[i32(0u)].x2_;
                                        let _e770 = cache[i32(0u)].x3_;
                                        let _e772 = cache[i32(0u)].y0_;
                                        let _e774 = cache[i32(0u)].y1_;
                                        let _e776 = cache[i32(0u)].y2_;
                                        let _e778 = cache[i32(0u)].y3_;
                                        let _e780 = cache[i32(0u)].zoom;
                                        let _e782 = cache[i32(0u)].res;
                                        let _e784 = cache[i32(0u)].aa;
                                        let _e786 = cache[i32(0u)].budget;
                                        let _e788 = cache[i32(0u)].radius;
                                        let _e790 = cache[i32(0u)].epoch;
                                        if (_e790 > (4294967295u - 1u)) {
                                            fe_trapped = true;
                                        }
                                        cache[i32(0u)].x0_ = _e764;
                                        cache[i32(0u)].x1_ = _e766;
                                        cache[i32(0u)].x2_ = _e768;
                                        cache[i32(0u)].x3_ = _e770;
                                        cache[i32(0u)].y0_ = _e772;
                                        cache[i32(0u)].y1_ = _e774;
                                        cache[i32(0u)].y2_ = _e776;
                                        cache[i32(0u)].y3_ = _e778;
                                        cache[i32(0u)].zoom = _e780;
                                        cache[i32(0u)].res = _e782;
                                        cache[i32(0u)].cursor = 0u;
                                        cache[i32(0u)].aa = _e784;
                                        cache[i32(0u)].budget = _e786;
                                        cache[i32(0u)].radius = _e788;
                                        cache[i32(0u)].preview_dirty = 1u;
                                        cache[i32(0u)].blur_dirty = 1u;
                                        cache[i32(0u)].epoch = (_e790 + 1u);
                                        cache[i32(0u)].completed = 0u;
                                        local_32 = true;
                                    }
                                    let _e825 = local_32;
                                    if _e825 {
                                    }
                                }
                                let _e827 = local_32;
                                if _e827 {
                                }
                            }
                            let _e829 = local_32;
                            if _e829 {
                            }
                        }
                    }
                    let _e833 = local_32;
                    if _e833 {
                    }
                }
                let _e835 = local_32;
                if _e835 {
                }
            }
            let _e838 = local_32;
            if _e838 {
            } else {
                fe_trapped = true;
            }
        }
    }
    let _e844 = fe_trapped;
    trap[0u] = u32(_e844);
}
