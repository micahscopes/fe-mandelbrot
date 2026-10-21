struct FeLocal_fe_shader_private_layout_11_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_11_,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_12_,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_13_,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: FeLocal_fe_shader_private_layout_14_,
    f1_: FeLocal_fe_shader_private_layout_14_,
}

struct FeLocal_fe_shader_private_layout_34_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_21_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_25_ {
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

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: FeLocal_fe_shader_private_layout_4_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_24_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_6_,
}

struct FeLocal_fe_shader_private_layout_23_ {
    f0_: FeLocal_fe_shader_private_layout_7_,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_29_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_26_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_30_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_28_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_31_ {
    f0_: FeLocal_fe_shader_private_layout_4_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_33_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_32_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_27_ {
    f0_: FeLocal_fe_shader_private_layout_7_,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
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
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_16_ {
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
    p29_: f32,
    p30_: f32,
}

@group(0) @binding(0)
var<storage, read_write> anchor: array<anchor_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn from_quad(a0_: f32, a1_: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_14_ {
    return FeLocal_fe_shader_private_layout_14_(a0_, FeLocal_fe_shader_private_layout_13_(a1_, FeLocal_fe_shader_private_layout_12_(a2_, FeLocal_fe_shader_private_layout_11_(a3_))));
}

fn impl_ReferenceAnchor_center(a0_1: FeLocal_fe_shader_private_layout_16_) -> FeLocal_fe_shader_private_layout_15_ {
    let _e5 = from_quad(a0_1.f0_, a0_1.f1_, a0_1.f2_, a0_1.f3_);
    let _e10 = from_quad(a0_1.f4_, a0_1.f5_, a0_1.f6_, a0_1.f7_);
    return FeLocal_fe_shader_private_layout_15_(_e5, _e10);
}

fn impl_MandelbrotViewState_center(a0_2: FeLocal_fe_shader_private_layout_10_) -> FeLocal_fe_shader_private_layout_15_ {
    let _e5 = from_quad(a0_2.f0_, a0_2.f1_, a0_2.f2_, a0_2.f3_);
    let _e10 = from_quad(a0_2.f4_, a0_2.f5_, a0_2.f6_, a0_2.f7_);
    return FeLocal_fe_shader_private_layout_15_(_e5, _e10);
}

fn to_quad(a0_3: FeLocal_fe_shader_private_layout_14_) -> FeLocal_fe_shader_private_layout_34_ {
    return FeLocal_fe_shader_private_layout_34_(a0_3.f0_, a0_3.f1_.f0_, a0_3.f1_.f1_.f0_, a0_3.f1_.f1_.f1_.f0_);
}

fn impl_trait_LimbLast_from_real(a0_4: f32) -> FeLocal_fe_shader_private_layout_21_ {
    let _e13 = select(0u, select(select(bitcast<u32>(i32(a0_4)), 2147483648u, (a0_4 <= -2147483600f)), 2147483647u, (a0_4 >= 2147483600f)), (a0_4 == a0_4));
    return FeLocal_fe_shader_private_layout_21_(FeLocal_fe_shader_private_layout_0_(_e13), ((a0_4 - f32(bitcast<i32>(_e13))) * 8192f));
}

fn from_real_g5d22_(a0_5: f32) -> FeLocal_fe_shader_private_layout_25_ {
    let _e1 = impl_trait_LimbLast_from_real(a0_5);
    let _e17 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_25_(FeLocal_fe_shader_private_layout_1_(_e17, FeLocal_fe_shader_private_layout_0_(_e1.f0_.f0_)), ((_e1.f1_ - f32(bitcast<i32>(_e17))) * 8192f));
}

fn from_real_gbb08_(a0_6: f32) -> FeLocal_fe_shader_private_layout_19_ {
    let _e1 = from_real_g5d22_(a0_6);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_19_(FeLocal_fe_shader_private_layout_2_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_gf166_(a0_7: f32) -> FeLocal_fe_shader_private_layout_22_ {
    let _e1 = from_real_gbb08_(a0_7);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_22_(FeLocal_fe_shader_private_layout_3_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_ga8f6_(a0_8: f32) -> FeLocal_fe_shader_private_layout_18_ {
    let _e1 = from_real_gf166_(a0_8);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_18_(FeLocal_fe_shader_private_layout_4_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_gf0cd(a0_9: f32) -> FeLocal_fe_shader_private_layout_24_ {
    let _e1 = from_real_ga8f6_(a0_9);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_24_(FeLocal_fe_shader_private_layout_5_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_g4f4f(a0_10: f32) -> FeLocal_fe_shader_private_layout_20_ {
    let _e1 = from_real_gf0cd(a0_10);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_20_(FeLocal_fe_shader_private_layout_6_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_real_gaaac(a0_11: f32) -> FeLocal_fe_shader_private_layout_23_ {
    let _e1 = from_real_g4f4f(a0_11);
    let _e16 = select(0u, select(select(bitcast<u32>(i32(_e1.f1_)), 2147483648u, (_e1.f1_ <= -2147483600f)), 2147483647u, (_e1.f1_ >= 2147483600f)), (_e1.f1_ == _e1.f1_));
    return FeLocal_fe_shader_private_layout_23_(FeLocal_fe_shader_private_layout_7_(_e16, _e1.f0_), ((_e1.f1_ - f32(bitcast<i32>(_e16))) * 8192f));
}

fn from_f32_(a0_12: f32) -> FeLocal_fe_shader_private_layout_8_ {
    var local_7: FeLocal_fe_shader_private_layout_8_;
    var local_8: bool = false;
    var local_9: u32 = u32();
    var local_10: FeLocal_fe_shader_private_layout_8_;
    var local_11: bool = false;
    var local_12: f32 = f32();

    if (a0_12 < 0f) {
        local_9 = 1u;
    }
    let _e10 = local_9;
    if (a0_12 < 0f) {
        local_12 = -(a0_12);
    } else {
        local_12 = a0_12;
    }
    let _e17 = local_12;
    let _e18 = from_real_gaaac(_e17);
    return FeLocal_fe_shader_private_layout_8_(_e10, _e18.f0_);
}

fn impl_trait_LimbLast_mac(a0_13: u32, a1_1: u32, a2_1: u32, a3_1: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_29_ {
    var local_13: FeLocal_fe_shader_private_layout_29_;
    var local_14: bool = false;

    let _e9 = (a1_1 * a2_1);
    let _e10 = (a1_1 != 0u);
    if (_e10 && (a2_1 > (4294967295u / select(1u, a1_1, _e10)))) {
    } else {
        let _e16 = (a0_13 + _e9);
        if (a0_13 > (4294967295u - _e9)) {
        } else {
            let _e20 = (_e16 + a3_1);
            if (_e16 > (4294967295u - a3_1)) {
            } else {
                let _e24 = (_e20 >> 13u);
                let _e29 = (_e24 * 8192u);
                let _e30 = (_e24 != 0u);
                if (_e30 && (8192u > (4294967295u / select(1u, _e24, _e30)))) {
                } else {
                    if (_e20 < _e29) {
                    } else {
                        local_13 = FeLocal_fe_shader_private_layout_29_(FeLocal_fe_shader_private_layout_0_((_e20 - _e29)), _e24);
                        local_14 = true;
                    }
                    let _e43 = local_14;
                    if _e43 {
                    }
                }
                let _e45 = local_14;
                if _e45 {
                }
            }
            let _e47 = local_14;
            if _e47 {
            }
        }
        let _e49 = local_14;
        if _e49 {
        }
    }
    let _e52 = local_14;
    if _e52 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e54 = local_13;
    return _e54;
}

fn mac_g5d22_(a0_14: FeLocal_fe_shader_private_layout_1_, a1_2: FeLocal_fe_shader_private_layout_1_, a2_2: u32, a3_2: u32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_26_ {
    var local_15: FeLocal_fe_shader_private_layout_26_;
    var local_16: bool = false;

    let _e11 = (a1_2.f0_ * a2_2);
    let _e12 = (a1_2.f0_ != 0u);
    if (_e12 && (a2_2 > (4294967295u / select(1u, a1_2.f0_, _e12)))) {
    } else {
        let _e18 = (a0_14.f0_ + _e11);
        if (a0_14.f0_ > (4294967295u - _e11)) {
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
                        let _e43 = impl_trait_LimbLast_mac(a0_14.f1_.f0_, a1_2.f1_.f0_, a2_2, _e26, fe_trapped_2);
                        local_15 = FeLocal_fe_shader_private_layout_26_(FeLocal_fe_shader_private_layout_1_((_e22 - _e31), FeLocal_fe_shader_private_layout_0_(_e43.f0_.f0_)), _e43.f1_);
                        local_16 = true;
                    }
                    let _e54 = local_16;
                    if _e54 {
                    }
                }
                let _e56 = local_16;
                if _e56 {
                }
            }
            let _e58 = local_16;
            if _e58 {
            }
        }
        let _e60 = local_16;
        if _e60 {
        }
    }
    let _e63 = local_16;
    if _e63 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e65 = local_15;
    return _e65;
}

fn mac_gbb08_(a0_15: FeLocal_fe_shader_private_layout_2_, a1_3: FeLocal_fe_shader_private_layout_2_, a2_3: u32, a3_3: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_30_ {
    var local_17: FeLocal_fe_shader_private_layout_30_;
    var local_18: bool = false;

    let _e11 = (a1_3.f0_ * a2_3);
    let _e12 = (a1_3.f0_ != 0u);
    if (_e12 && (a2_3 > (4294967295u / select(1u, a1_3.f0_, _e12)))) {
    } else {
        let _e18 = (a0_15.f0_ + _e11);
        if (a0_15.f0_ > (4294967295u - _e11)) {
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
                        let _e41 = mac_g5d22_(a0_15.f1_, a1_3.f1_, a2_3, _e26, fe_trapped_3);
                        local_17 = FeLocal_fe_shader_private_layout_30_(FeLocal_fe_shader_private_layout_2_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_18 = true;
                    }
                    let _e50 = local_18;
                    if _e50 {
                    }
                }
                let _e52 = local_18;
                if _e52 {
                }
            }
            let _e54 = local_18;
            if _e54 {
            }
        }
        let _e56 = local_18;
        if _e56 {
        }
    }
    let _e59 = local_18;
    if _e59 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e61 = local_17;
    return _e61;
}

fn mac_gf166_(a0_16: FeLocal_fe_shader_private_layout_3_, a1_4: FeLocal_fe_shader_private_layout_3_, a2_4: u32, a3_4: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_28_ {
    var local_19: FeLocal_fe_shader_private_layout_28_;
    var local_20: bool = false;

    let _e11 = (a1_4.f0_ * a2_4);
    let _e12 = (a1_4.f0_ != 0u);
    if (_e12 && (a2_4 > (4294967295u / select(1u, a1_4.f0_, _e12)))) {
    } else {
        let _e18 = (a0_16.f0_ + _e11);
        if (a0_16.f0_ > (4294967295u - _e11)) {
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
                        let _e41 = mac_gbb08_(a0_16.f1_, a1_4.f1_, a2_4, _e26, fe_trapped_4);
                        local_19 = FeLocal_fe_shader_private_layout_28_(FeLocal_fe_shader_private_layout_3_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_20 = true;
                    }
                    let _e50 = local_20;
                    if _e50 {
                    }
                }
                let _e52 = local_20;
                if _e52 {
                }
            }
            let _e54 = local_20;
            if _e54 {
            }
        }
        let _e56 = local_20;
        if _e56 {
        }
    }
    let _e59 = local_20;
    if _e59 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e61 = local_19;
    return _e61;
}

fn mac_ga8f6_(a0_17: FeLocal_fe_shader_private_layout_4_, a1_5: FeLocal_fe_shader_private_layout_4_, a2_5: u32, a3_5: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_31_ {
    var local_21: FeLocal_fe_shader_private_layout_31_;
    var local_22: bool = false;

    let _e11 = (a1_5.f0_ * a2_5);
    let _e12 = (a1_5.f0_ != 0u);
    if (_e12 && (a2_5 > (4294967295u / select(1u, a1_5.f0_, _e12)))) {
    } else {
        let _e18 = (a0_17.f0_ + _e11);
        if (a0_17.f0_ > (4294967295u - _e11)) {
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
                        let _e41 = mac_gf166_(a0_17.f1_, a1_5.f1_, a2_5, _e26, fe_trapped_5);
                        local_21 = FeLocal_fe_shader_private_layout_31_(FeLocal_fe_shader_private_layout_4_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_22 = true;
                    }
                    let _e50 = local_22;
                    if _e50 {
                    }
                }
                let _e52 = local_22;
                if _e52 {
                }
            }
            let _e54 = local_22;
            if _e54 {
            }
        }
        let _e56 = local_22;
        if _e56 {
        }
    }
    let _e59 = local_22;
    if _e59 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e61 = local_21;
    return _e61;
}

fn mac_gf0cd(a0_18: FeLocal_fe_shader_private_layout_5_, a1_6: FeLocal_fe_shader_private_layout_5_, a2_6: u32, a3_6: u32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_33_ {
    var local_23: FeLocal_fe_shader_private_layout_33_;
    var local_24: bool = false;

    let _e11 = (a1_6.f0_ * a2_6);
    let _e12 = (a1_6.f0_ != 0u);
    if (_e12 && (a2_6 > (4294967295u / select(1u, a1_6.f0_, _e12)))) {
    } else {
        let _e18 = (a0_18.f0_ + _e11);
        if (a0_18.f0_ > (4294967295u - _e11)) {
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
                        let _e41 = mac_ga8f6_(a0_18.f1_, a1_6.f1_, a2_6, _e26, fe_trapped_6);
                        local_23 = FeLocal_fe_shader_private_layout_33_(FeLocal_fe_shader_private_layout_5_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_24 = true;
                    }
                    let _e50 = local_24;
                    if _e50 {
                    }
                }
                let _e52 = local_24;
                if _e52 {
                }
            }
            let _e54 = local_24;
            if _e54 {
            }
        }
        let _e56 = local_24;
        if _e56 {
        }
    }
    let _e59 = local_24;
    if _e59 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e61 = local_23;
    return _e61;
}

fn mac_g4f4f(a0_19: FeLocal_fe_shader_private_layout_6_, a1_7: FeLocal_fe_shader_private_layout_6_, a2_7: u32, a3_7: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_32_ {
    var local_25: FeLocal_fe_shader_private_layout_32_;
    var local_26: bool = false;

    let _e11 = (a1_7.f0_ * a2_7);
    let _e12 = (a1_7.f0_ != 0u);
    if (_e12 && (a2_7 > (4294967295u / select(1u, a1_7.f0_, _e12)))) {
    } else {
        let _e18 = (a0_19.f0_ + _e11);
        if (a0_19.f0_ > (4294967295u - _e11)) {
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
                        let _e41 = mac_gf0cd(a0_19.f1_, a1_7.f1_, a2_7, _e26, fe_trapped_7);
                        local_25 = FeLocal_fe_shader_private_layout_32_(FeLocal_fe_shader_private_layout_6_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_26 = true;
                    }
                    let _e50 = local_26;
                    if _e50 {
                    }
                }
                let _e52 = local_26;
                if _e52 {
                }
            }
            let _e54 = local_26;
            if _e54 {
            }
        }
        let _e56 = local_26;
        if _e56 {
        }
    }
    let _e59 = local_26;
    if _e59 {
    } else {
        (*fe_trapped_7) = true;
    }
    let _e61 = local_25;
    return _e61;
}

fn mac_gaaac(a0_20: FeLocal_fe_shader_private_layout_7_, a1_8: FeLocal_fe_shader_private_layout_7_, a2_8: u32, a3_8: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_27_ {
    var local_27: FeLocal_fe_shader_private_layout_27_;
    var local_28: bool = false;

    let _e11 = (a1_8.f0_ * a2_8);
    let _e12 = (a1_8.f0_ != 0u);
    if (_e12 && (a2_8 > (4294967295u / select(1u, a1_8.f0_, _e12)))) {
    } else {
        let _e18 = (a0_20.f0_ + _e11);
        if (a0_20.f0_ > (4294967295u - _e11)) {
        } else {
            let _e22 = (_e18 + a3_8);
            if (_e18 > (4294967295u - a3_8)) {
            } else {
                let _e26 = (_e22 >> 13u);
                let _e31 = (_e26 * 8192u);
                let _e32 = (_e26 != 0u);
                if (_e32 && (8192u > (4294967295u / select(1u, _e26, _e32)))) {
                } else {
                    if (_e22 < _e31) {
                    } else {
                        let _e41 = mac_g4f4f(a0_20.f1_, a1_8.f1_, a2_8, _e26, fe_trapped_8);
                        local_27 = FeLocal_fe_shader_private_layout_27_(FeLocal_fe_shader_private_layout_7_((_e22 - _e31), _e41.f0_), _e41.f1_);
                        local_28 = true;
                    }
                    let _e50 = local_28;
                    if _e50 {
                    }
                }
                let _e52 = local_28;
                if _e52 {
                }
            }
            let _e54 = local_28;
            if _e54 {
            }
        }
        let _e56 = local_28;
        if _e56 {
        }
    }
    let _e59 = local_28;
    if _e59 {
    } else {
        (*fe_trapped_8) = true;
    }
    let _e61 = local_27;
    return _e61;
}

fn precision_lib_fixed_mag_add_g62af_e109_(a0_21: FeLocal_fe_shader_private_layout_7_, a1_9: FeLocal_fe_shader_private_layout_7_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    let _e5 = mac_gaaac(a0_21, a1_9, 1u, 0u, fe_trapped_9);
    return _e5.f0_;
}

fn impl_trait_LimbLast_sub_borrow(a0_22: u32, a1_10: u32, a2_9: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_29_ {
    var local_29: FeLocal_fe_shader_private_layout_29_;
    var local_30: bool = false;

    let _e7 = (a0_22 + 8192u);
    if (a0_22 > (4294967295u - 8192u)) {
    } else {
        let _e10 = (_e7 - a1_10);
        if (_e7 < a1_10) {
        } else {
            let _e12 = (_e10 - a2_9);
            if (_e10 < a2_9) {
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
                            local_29 = FeLocal_fe_shader_private_layout_29_(FeLocal_fe_shader_private_layout_0_((_e12 - _e23)), (1u - _e15));
                            local_30 = true;
                        }
                        let _e37 = local_30;
                        if _e37 {
                        }
                    }
                    let _e39 = local_30;
                    if _e39 {
                    }
                }
                let _e41 = local_30;
                if _e41 {
                }
            }
            let _e43 = local_30;
            if _e43 {
            }
        }
        let _e45 = local_30;
        if _e45 {
        }
    }
    let _e48 = local_30;
    if _e48 {
    } else {
        (*fe_trapped_10) = true;
    }
    let _e50 = local_29;
    return _e50;
}

fn sub_borrow_g5d22_(a0_23: FeLocal_fe_shader_private_layout_1_, a1_11: FeLocal_fe_shader_private_layout_1_, a2_10: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_26_ {
    var local_31: FeLocal_fe_shader_private_layout_26_;
    var local_32: bool = false;

    let _e8 = (a0_23.f0_ + 8192u);
    if (a0_23.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_11.f0_);
        if (_e8 < a1_11.f0_) {
        } else {
            let _e14 = (_e12 - a2_10);
            if (_e12 < a2_10) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e25 = impl_trait_LimbLast_sub_borrow(a0_23.f1_.f0_, a1_11.f1_.f0_, (1u - _e17), fe_trapped_11);
                    let _e33 = (_e17 * 8192u);
                    let _e34 = (_e17 != 0u);
                    if (_e34 && (8192u > (4294967295u / select(1u, _e17, _e34)))) {
                    } else {
                        if (_e14 < _e33) {
                        } else {
                            local_31 = FeLocal_fe_shader_private_layout_26_(FeLocal_fe_shader_private_layout_1_((_e14 - _e33), FeLocal_fe_shader_private_layout_0_(_e25.f0_.f0_)), _e25.f1_);
                            local_32 = true;
                        }
                        let _e48 = local_32;
                        if _e48 {
                        }
                    }
                    let _e50 = local_32;
                    if _e50 {
                    }
                }
                let _e52 = local_32;
                if _e52 {
                }
            }
            let _e54 = local_32;
            if _e54 {
            }
        }
        let _e56 = local_32;
        if _e56 {
        }
    }
    let _e59 = local_32;
    if _e59 {
    } else {
        (*fe_trapped_11) = true;
    }
    let _e61 = local_31;
    return _e61;
}

fn sub_borrow_gbb08_(a0_24: FeLocal_fe_shader_private_layout_2_, a1_12: FeLocal_fe_shader_private_layout_2_, a2_11: u32, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_30_ {
    var local_33: FeLocal_fe_shader_private_layout_30_;
    var local_34: bool = false;

    let _e8 = (a0_24.f0_ + 8192u);
    if (a0_24.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_12.f0_);
        if (_e8 < a1_12.f0_) {
        } else {
            let _e14 = (_e12 - a2_11);
            if (_e12 < a2_11) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = sub_borrow_g5d22_(a0_24.f1_, a1_12.f1_, (1u - _e17), fe_trapped_12);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_33 = FeLocal_fe_shader_private_layout_30_(FeLocal_fe_shader_private_layout_2_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_34 = true;
                        }
                        let _e44 = local_34;
                        if _e44 {
                        }
                    }
                    let _e46 = local_34;
                    if _e46 {
                    }
                }
                let _e48 = local_34;
                if _e48 {
                }
            }
            let _e50 = local_34;
            if _e50 {
            }
        }
        let _e52 = local_34;
        if _e52 {
        }
    }
    let _e55 = local_34;
    if _e55 {
    } else {
        (*fe_trapped_12) = true;
    }
    let _e57 = local_33;
    return _e57;
}

fn sub_borrow_gf166_(a0_25: FeLocal_fe_shader_private_layout_3_, a1_13: FeLocal_fe_shader_private_layout_3_, a2_12: u32, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_28_ {
    var local_35: FeLocal_fe_shader_private_layout_28_;
    var local_36: bool = false;

    let _e8 = (a0_25.f0_ + 8192u);
    if (a0_25.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_13.f0_);
        if (_e8 < a1_13.f0_) {
        } else {
            let _e14 = (_e12 - a2_12);
            if (_e12 < a2_12) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = sub_borrow_gbb08_(a0_25.f1_, a1_13.f1_, (1u - _e17), fe_trapped_13);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_35 = FeLocal_fe_shader_private_layout_28_(FeLocal_fe_shader_private_layout_3_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_36 = true;
                        }
                        let _e44 = local_36;
                        if _e44 {
                        }
                    }
                    let _e46 = local_36;
                    if _e46 {
                    }
                }
                let _e48 = local_36;
                if _e48 {
                }
            }
            let _e50 = local_36;
            if _e50 {
            }
        }
        let _e52 = local_36;
        if _e52 {
        }
    }
    let _e55 = local_36;
    if _e55 {
    } else {
        (*fe_trapped_13) = true;
    }
    let _e57 = local_35;
    return _e57;
}

fn sub_borrow_ga8f6_(a0_26: FeLocal_fe_shader_private_layout_4_, a1_14: FeLocal_fe_shader_private_layout_4_, a2_13: u32, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_31_ {
    var local_37: FeLocal_fe_shader_private_layout_31_;
    var local_38: bool = false;

    let _e8 = (a0_26.f0_ + 8192u);
    if (a0_26.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_14.f0_);
        if (_e8 < a1_14.f0_) {
        } else {
            let _e14 = (_e12 - a2_13);
            if (_e12 < a2_13) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = sub_borrow_gf166_(a0_26.f1_, a1_14.f1_, (1u - _e17), fe_trapped_14);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_37 = FeLocal_fe_shader_private_layout_31_(FeLocal_fe_shader_private_layout_4_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_38 = true;
                        }
                        let _e44 = local_38;
                        if _e44 {
                        }
                    }
                    let _e46 = local_38;
                    if _e46 {
                    }
                }
                let _e48 = local_38;
                if _e48 {
                }
            }
            let _e50 = local_38;
            if _e50 {
            }
        }
        let _e52 = local_38;
        if _e52 {
        }
    }
    let _e55 = local_38;
    if _e55 {
    } else {
        (*fe_trapped_14) = true;
    }
    let _e57 = local_37;
    return _e57;
}

fn sub_borrow_gf0cd(a0_27: FeLocal_fe_shader_private_layout_5_, a1_15: FeLocal_fe_shader_private_layout_5_, a2_14: u32, fe_trapped_15: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_33_ {
    var local_39: FeLocal_fe_shader_private_layout_33_;
    var local_40: bool = false;

    let _e8 = (a0_27.f0_ + 8192u);
    if (a0_27.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_15.f0_);
        if (_e8 < a1_15.f0_) {
        } else {
            let _e14 = (_e12 - a2_14);
            if (_e12 < a2_14) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = sub_borrow_ga8f6_(a0_27.f1_, a1_15.f1_, (1u - _e17), fe_trapped_15);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_39 = FeLocal_fe_shader_private_layout_33_(FeLocal_fe_shader_private_layout_5_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_40 = true;
                        }
                        let _e44 = local_40;
                        if _e44 {
                        }
                    }
                    let _e46 = local_40;
                    if _e46 {
                    }
                }
                let _e48 = local_40;
                if _e48 {
                }
            }
            let _e50 = local_40;
            if _e50 {
            }
        }
        let _e52 = local_40;
        if _e52 {
        }
    }
    let _e55 = local_40;
    if _e55 {
    } else {
        (*fe_trapped_15) = true;
    }
    let _e57 = local_39;
    return _e57;
}

fn sub_borrow_g4f4f(a0_28: FeLocal_fe_shader_private_layout_6_, a1_16: FeLocal_fe_shader_private_layout_6_, a2_15: u32, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_32_ {
    var local_41: FeLocal_fe_shader_private_layout_32_;
    var local_42: bool = false;

    let _e8 = (a0_28.f0_ + 8192u);
    if (a0_28.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_16.f0_);
        if (_e8 < a1_16.f0_) {
        } else {
            let _e14 = (_e12 - a2_15);
            if (_e12 < a2_15) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = sub_borrow_gf0cd(a0_28.f1_, a1_16.f1_, (1u - _e17), fe_trapped_16);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_41 = FeLocal_fe_shader_private_layout_32_(FeLocal_fe_shader_private_layout_6_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_42 = true;
                        }
                        let _e44 = local_42;
                        if _e44 {
                        }
                    }
                    let _e46 = local_42;
                    if _e46 {
                    }
                }
                let _e48 = local_42;
                if _e48 {
                }
            }
            let _e50 = local_42;
            if _e50 {
            }
        }
        let _e52 = local_42;
        if _e52 {
        }
    }
    let _e55 = local_42;
    if _e55 {
    } else {
        (*fe_trapped_16) = true;
    }
    let _e57 = local_41;
    return _e57;
}

fn precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gaaac_0092_(a0_29: FeLocal_fe_shader_private_layout_7_, a1_17: FeLocal_fe_shader_private_layout_7_, a2_16: u32, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_27_ {
    var local_43: FeLocal_fe_shader_private_layout_27_;
    var local_44: bool = false;

    let _e8 = (a0_29.f0_ + 8192u);
    if (a0_29.f0_ > (4294967295u - 8192u)) {
    } else {
        let _e12 = (_e8 - a1_17.f0_);
        if (_e8 < a1_17.f0_) {
        } else {
            let _e14 = (_e12 - a2_16);
            if (_e12 < a2_16) {
            } else {
                let _e17 = (_e14 >> 13u);
                if (1u < _e17) {
                } else {
                    let _e23 = sub_borrow_g4f4f(a0_29.f1_, a1_17.f1_, (1u - _e17), fe_trapped_17);
                    let _e30 = (_e17 * 8192u);
                    let _e31 = (_e17 != 0u);
                    if (_e31 && (8192u > (4294967295u / select(1u, _e17, _e31)))) {
                    } else {
                        if (_e14 < _e30) {
                        } else {
                            local_43 = FeLocal_fe_shader_private_layout_27_(FeLocal_fe_shader_private_layout_7_((_e14 - _e30), _e23.f0_), _e23.f1_);
                            local_44 = true;
                        }
                        let _e44 = local_44;
                        if _e44 {
                        }
                    }
                    let _e46 = local_44;
                    if _e46 {
                    }
                }
                let _e48 = local_44;
                if _e48 {
                }
            }
            let _e50 = local_44;
            if _e50 {
            }
        }
        let _e52 = local_44;
        if _e52 {
        }
    }
    let _e55 = local_44;
    if _e55 {
    } else {
        (*fe_trapped_17) = true;
    }
    let _e57 = local_43;
    return _e57;
}

fn impl_trait_LimbLast_select(a0_30: u32, a1_18: u32, a2_17: u32, a3_9: u32, fe_trapped_18: ptr<function, bool>) -> u32 {
    var local_45: u32;
    var local_46: bool = false;

    let _e9 = (a0_30 * a2_17);
    let _e10 = (a0_30 != 0u);
    if (_e10 && (a2_17 > (4294967295u / select(1u, a0_30, _e10)))) {
    } else {
        let _e18 = (a1_18 * a3_9);
        let _e19 = (a1_18 != 0u);
        if (_e19 && (a3_9 > (4294967295u / select(1u, a1_18, _e19)))) {
        } else {
            if (_e9 > (4294967295u - _e18)) {
            } else {
                local_45 = (_e9 + _e18);
                local_46 = true;
            }
            let _e32 = local_46;
            if _e32 {
            }
        }
        let _e34 = local_46;
        if _e34 {
        }
    }
    let _e37 = local_46;
    if _e37 {
    } else {
        (*fe_trapped_18) = true;
    }
    let _e39 = local_45;
    return _e39;
}

fn select_g5d22_(a0_31: u32, a1_19: u32, a2_18: FeLocal_fe_shader_private_layout_1_, a3_10: FeLocal_fe_shader_private_layout_1_, fe_trapped_19: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_47: FeLocal_fe_shader_private_layout_1_;
    var local_48: bool = false;

    let _e10 = (a0_31 * a2_18.f0_);
    let _e11 = (a0_31 != 0u);
    if (_e11 && (a2_18.f0_ > (4294967295u / select(1u, a0_31, _e11)))) {
    } else {
        let _e20 = (a1_19 * a3_10.f0_);
        let _e21 = (a1_19 != 0u);
        if (_e21 && (a3_10.f0_ > (4294967295u / select(1u, a1_19, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e34 = impl_trait_LimbLast_select(a0_31, a1_19, a2_18.f1_.f0_, a3_10.f1_.f0_, fe_trapped_19);
                local_47 = FeLocal_fe_shader_private_layout_1_((_e10 + _e20), FeLocal_fe_shader_private_layout_0_(_e34));
                local_48 = true;
            }
            let _e41 = local_48;
            if _e41 {
            }
        }
        let _e43 = local_48;
        if _e43 {
        }
    }
    let _e46 = local_48;
    if _e46 {
    } else {
        (*fe_trapped_19) = true;
    }
    let _e48 = local_47;
    return _e48;
}

fn select_gbb08_(a0_32: u32, a1_20: u32, a2_19: FeLocal_fe_shader_private_layout_2_, a3_11: FeLocal_fe_shader_private_layout_2_, fe_trapped_20: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_49: FeLocal_fe_shader_private_layout_2_;
    var local_50: bool = false;

    let _e10 = (a0_32 * a2_19.f0_);
    let _e11 = (a0_32 != 0u);
    if (_e11 && (a2_19.f0_ > (4294967295u / select(1u, a0_32, _e11)))) {
    } else {
        let _e20 = (a1_20 * a3_11.f0_);
        let _e21 = (a1_20 != 0u);
        if (_e21 && (a3_11.f0_ > (4294967295u / select(1u, a1_20, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = select_g5d22_(a0_32, a1_20, a2_19.f1_, a3_11.f1_, fe_trapped_20);
                local_49 = FeLocal_fe_shader_private_layout_2_((_e10 + _e20), _e32);
                local_50 = true;
            }
            let _e38 = local_50;
            if _e38 {
            }
        }
        let _e40 = local_50;
        if _e40 {
        }
    }
    let _e43 = local_50;
    if _e43 {
    } else {
        (*fe_trapped_20) = true;
    }
    let _e45 = local_49;
    return _e45;
}

fn select_gf166_(a0_33: u32, a1_21: u32, a2_20: FeLocal_fe_shader_private_layout_3_, a3_12: FeLocal_fe_shader_private_layout_3_, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_51: FeLocal_fe_shader_private_layout_3_;
    var local_52: bool = false;

    let _e10 = (a0_33 * a2_20.f0_);
    let _e11 = (a0_33 != 0u);
    if (_e11 && (a2_20.f0_ > (4294967295u / select(1u, a0_33, _e11)))) {
    } else {
        let _e20 = (a1_21 * a3_12.f0_);
        let _e21 = (a1_21 != 0u);
        if (_e21 && (a3_12.f0_ > (4294967295u / select(1u, a1_21, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = select_gbb08_(a0_33, a1_21, a2_20.f1_, a3_12.f1_, fe_trapped_21);
                local_51 = FeLocal_fe_shader_private_layout_3_((_e10 + _e20), _e32);
                local_52 = true;
            }
            let _e38 = local_52;
            if _e38 {
            }
        }
        let _e40 = local_52;
        if _e40 {
        }
    }
    let _e43 = local_52;
    if _e43 {
    } else {
        (*fe_trapped_21) = true;
    }
    let _e45 = local_51;
    return _e45;
}

fn select_ga8f6_(a0_34: u32, a1_22: u32, a2_21: FeLocal_fe_shader_private_layout_4_, a3_13: FeLocal_fe_shader_private_layout_4_, fe_trapped_22: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_53: FeLocal_fe_shader_private_layout_4_;
    var local_54: bool = false;

    let _e10 = (a0_34 * a2_21.f0_);
    let _e11 = (a0_34 != 0u);
    if (_e11 && (a2_21.f0_ > (4294967295u / select(1u, a0_34, _e11)))) {
    } else {
        let _e20 = (a1_22 * a3_13.f0_);
        let _e21 = (a1_22 != 0u);
        if (_e21 && (a3_13.f0_ > (4294967295u / select(1u, a1_22, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = select_gf166_(a0_34, a1_22, a2_21.f1_, a3_13.f1_, fe_trapped_22);
                local_53 = FeLocal_fe_shader_private_layout_4_((_e10 + _e20), _e32);
                local_54 = true;
            }
            let _e38 = local_54;
            if _e38 {
            }
        }
        let _e40 = local_54;
        if _e40 {
        }
    }
    let _e43 = local_54;
    if _e43 {
    } else {
        (*fe_trapped_22) = true;
    }
    let _e45 = local_53;
    return _e45;
}

fn select_gf0cd(a0_35: u32, a1_23: u32, a2_22: FeLocal_fe_shader_private_layout_5_, a3_14: FeLocal_fe_shader_private_layout_5_, fe_trapped_23: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_55: FeLocal_fe_shader_private_layout_5_;
    var local_56: bool = false;

    let _e10 = (a0_35 * a2_22.f0_);
    let _e11 = (a0_35 != 0u);
    if (_e11 && (a2_22.f0_ > (4294967295u / select(1u, a0_35, _e11)))) {
    } else {
        let _e20 = (a1_23 * a3_14.f0_);
        let _e21 = (a1_23 != 0u);
        if (_e21 && (a3_14.f0_ > (4294967295u / select(1u, a1_23, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = select_ga8f6_(a0_35, a1_23, a2_22.f1_, a3_14.f1_, fe_trapped_23);
                local_55 = FeLocal_fe_shader_private_layout_5_((_e10 + _e20), _e32);
                local_56 = true;
            }
            let _e38 = local_56;
            if _e38 {
            }
        }
        let _e40 = local_56;
        if _e40 {
        }
    }
    let _e43 = local_56;
    if _e43 {
    } else {
        (*fe_trapped_23) = true;
    }
    let _e45 = local_55;
    return _e45;
}

fn select_g4f4f(a0_36: u32, a1_24: u32, a2_23: FeLocal_fe_shader_private_layout_6_, a3_15: FeLocal_fe_shader_private_layout_6_, fe_trapped_24: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_6_ {
    var local_57: FeLocal_fe_shader_private_layout_6_;
    var local_58: bool = false;

    let _e10 = (a0_36 * a2_23.f0_);
    let _e11 = (a0_36 != 0u);
    if (_e11 && (a2_23.f0_ > (4294967295u / select(1u, a0_36, _e11)))) {
    } else {
        let _e20 = (a1_24 * a3_15.f0_);
        let _e21 = (a1_24 != 0u);
        if (_e21 && (a3_15.f0_ > (4294967295u / select(1u, a1_24, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = select_gf0cd(a0_36, a1_24, a2_23.f1_, a3_15.f1_, fe_trapped_24);
                local_57 = FeLocal_fe_shader_private_layout_6_((_e10 + _e20), _e32);
                local_58 = true;
            }
            let _e38 = local_58;
            if _e38 {
            }
        }
        let _e40 = local_58;
        if _e40 {
        }
    }
    let _e43 = local_58;
    if _e43 {
    } else {
        (*fe_trapped_24) = true;
    }
    let _e45 = local_57;
    return _e45;
}

fn precision_lib_field_impl_trait_LimbMore_0f98_select_gaaac_434d(a0_37: u32, a1_25: u32, a2_24: FeLocal_fe_shader_private_layout_7_, a3_16: FeLocal_fe_shader_private_layout_7_, fe_trapped_25: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    var local_59: FeLocal_fe_shader_private_layout_7_;
    var local_60: bool = false;

    let _e10 = (a0_37 * a2_24.f0_);
    let _e11 = (a0_37 != 0u);
    if (_e11 && (a2_24.f0_ > (4294967295u / select(1u, a0_37, _e11)))) {
    } else {
        let _e20 = (a1_25 * a3_16.f0_);
        let _e21 = (a1_25 != 0u);
        if (_e21 && (a3_16.f0_ > (4294967295u / select(1u, a1_25, _e21)))) {
        } else {
            if (_e10 > (4294967295u - _e20)) {
            } else {
                let _e32 = select_g4f4f(a0_37, a1_25, a2_24.f1_, a3_16.f1_, fe_trapped_25);
                local_59 = FeLocal_fe_shader_private_layout_7_((_e10 + _e20), _e32);
                local_60 = true;
            }
            let _e38 = local_60;
            if _e38 {
            }
        }
        let _e40 = local_60;
        if _e40 {
        }
    }
    let _e43 = local_60;
    if _e43 {
    } else {
        (*fe_trapped_25) = true;
    }
    let _e45 = local_59;
    return _e45;
}

fn precision_lib_fixed_add_g62af_1bfa(a0_38: u32, a1_26: FeLocal_fe_shader_private_layout_7_, a2_25: u32, a3_17: FeLocal_fe_shader_private_layout_7_, fe_trapped_26: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    var local_61: FeLocal_fe_shader_private_layout_8_;
    var local_62: bool = false;

    let _e6 = precision_lib_fixed_mag_add_g62af_e109_(a1_26, a3_17, fe_trapped_26);
    let _e8 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gaaac_0092_(a1_26, a3_17, 0u, fe_trapped_26);
    let _e12 = precision_lib_field_impl_trait_LimbMore_7c00_sub_borrow_gaaac_0092_(a3_17, a1_26, 0u, fe_trapped_26);
    if (1u < _e8.f1_) {
    } else {
        let _e17 = precision_lib_field_impl_trait_LimbMore_0f98_select_gaaac_434d((1u - _e8.f1_), _e8.f1_, _e8.f0_, _e12.f0_, fe_trapped_26);
        let _e19 = (1u - _e8.f1_);
        if (1u < _e8.f1_) {
        } else {
            let _e24 = (_e19 * a0_38);
            let _e25 = (_e19 != 0u);
            if (_e25 && (a0_38 > (4294967295u / select(1u, _e19, _e25)))) {
            } else {
                let _e33 = (_e8.f1_ * a2_25);
                let _e34 = (_e8.f1_ != 0u);
                if (_e34 && (a2_25 > (4294967295u / select(1u, _e8.f1_, _e34)))) {
                } else {
                    let _e40 = (_e24 + _e33);
                    if (_e24 > (4294967295u - _e33)) {
                    } else {
                        let _e44 = (a0_38 + a2_25);
                        if (a0_38 > (4294967295u - a2_25)) {
                        } else {
                            let _e51 = (2u * a0_38);
                            let _e52 = (2u != 0u);
                            if (_e52 && (a0_38 > (4294967295u / select(1u, 2u, _e52)))) {
                            } else {
                                let _e60 = (_e51 * a2_25);
                                let _e61 = (_e51 != 0u);
                                if (_e61 && (a2_25 > (4294967295u / select(1u, _e51, _e61)))) {
                                } else {
                                    let _e66 = (_e44 - _e60);
                                    if (_e44 < _e60) {
                                    } else {
                                        if (1u < _e66) {
                                        } else {
                                            let _e71 = precision_lib_field_impl_trait_LimbMore_0f98_select_gaaac_434d((1u - _e66), _e66, _e6, _e17, fe_trapped_26);
                                            let _e73 = (1u - _e66);
                                            if (1u < _e66) {
                                            } else {
                                                let _e78 = (_e73 * a0_38);
                                                let _e79 = (_e73 != 0u);
                                                if (_e79 && (a0_38 > (4294967295u / select(1u, _e73, _e79)))) {
                                                } else {
                                                    let _e87 = (_e66 * _e40);
                                                    let _e88 = (_e66 != 0u);
                                                    if (_e88 && (_e40 > (4294967295u / select(1u, _e66, _e88)))) {
                                                    } else {
                                                        if (_e78 > (4294967295u - _e87)) {
                                                        } else {
                                                            local_61 = FeLocal_fe_shader_private_layout_8_((_e78 + _e87), _e71);
                                                            local_62 = true;
                                                        }
                                                        let _e102 = local_62;
                                                        if _e102 {
                                                        }
                                                    }
                                                    let _e104 = local_62;
                                                    if _e104 {
                                                    }
                                                }
                                                let _e106 = local_62;
                                                if _e106 {
                                                }
                                            }
                                            let _e108 = local_62;
                                            if _e108 {
                                            }
                                        }
                                        let _e110 = local_62;
                                        if _e110 {
                                        }
                                    }
                                    let _e112 = local_62;
                                    if _e112 {
                                    }
                                }
                                let _e114 = local_62;
                                if _e114 {
                                }
                            }
                            let _e116 = local_62;
                            if _e116 {
                            }
                        }
                        let _e118 = local_62;
                        if _e118 {
                        }
                    }
                    let _e120 = local_62;
                    if _e120 {
                    }
                }
                let _e122 = local_62;
                if _e122 {
                }
            }
            let _e124 = local_62;
            if _e124 {
            }
        }
        let _e126 = local_62;
        if _e126 {
        }
    }
    let _e129 = local_62;
    if _e129 {
    } else {
        (*fe_trapped_26) = true;
    }
    let _e131 = local_61;
    return _e131;
}

fn from_qf_offset(a0_39: f32, a1_27: f32, a2_26: f32, a3_18: f32, a4_: f32, fe_trapped_27: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    let _e6 = from_f32_(a0_39);
    let _e9 = from_f32_(a1_27);
    let _e12 = from_f32_(a2_26);
    let _e15 = from_f32_(a3_18);
    let _e18 = from_f32_(a4_);
    let _e21 = precision_lib_fixed_add_g62af_1bfa(_e6.f0_, _e6.f1_, _e9.f0_, _e9.f1_, fe_trapped_27);
    let _e24 = precision_lib_fixed_add_g62af_1bfa(_e21.f0_, _e21.f1_, _e12.f0_, _e12.f1_, fe_trapped_27);
    let _e27 = precision_lib_fixed_add_g62af_1bfa(_e24.f0_, _e24.f1_, _e15.f0_, _e15.f1_, fe_trapped_27);
    let _e30 = precision_lib_fixed_add_g62af_1bfa(_e27.f0_, _e27.f1_, _e18.f0_, _e18.f1_, fe_trapped_27);
    return _e30;
}

fn sub(a0_40: u32, a1_28: FeLocal_fe_shader_private_layout_7_, a2_27: u32, a3_19: FeLocal_fe_shader_private_layout_7_, fe_trapped_28: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    var local_63: FeLocal_fe_shader_private_layout_8_;
    var local_64: bool = false;

    if (1u < a2_27) {
        (*fe_trapped_28) = true;
    }
    let _e10 = precision_lib_fixed_add_g62af_1bfa(a0_40, a1_28, (1u - a2_27), a3_19, fe_trapped_28);
    return _e10;
}

fn precision_lib_fixed_limb_highest_bit_1a19_(a0_41: u32) -> u32 {
    var local_65: u32;
    var local_66: bool = false;
    var local_67: u32 = u32();

    if ((a0_41 < 4096u) == false) {
        local_67 = 12u;
    } else {
        if ((a0_41 < 2048u) == false) {
            local_67 = 11u;
        } else {
            if ((a0_41 < 1024u) == false) {
                local_67 = 10u;
            } else {
                if ((a0_41 < 512u) == false) {
                    local_67 = 9u;
                } else {
                    if ((a0_41 < 256u) == false) {
                        local_67 = 8u;
                    } else {
                        if ((a0_41 < 128u) == false) {
                            local_67 = 7u;
                        } else {
                            if ((a0_41 < 64u) == false) {
                                local_67 = 6u;
                            } else {
                                if ((a0_41 < 32u) == false) {
                                    local_67 = 5u;
                                } else {
                                    if ((a0_41 < 16u) == false) {
                                        local_67 = 4u;
                                    } else {
                                        if ((a0_41 < 8u) == false) {
                                            local_67 = 3u;
                                        } else {
                                            if ((a0_41 < 4u) == false) {
                                                local_67 = 2u;
                                            } else {
                                                if ((a0_41 < 2u) == false) {
                                                    local_67 = 1u;
                                                } else {
                                                    if (a0_41 == 1u) {
                                                    } else {
                                                        local_67 = 4294967295u;
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
    let _e80 = local_67;
    return _e80;
}

fn highest_bit_g5d22_(a0_42: FeLocal_fe_shader_private_layout_1_) -> u32 {
    var local_68: u32;
    var local_69: bool = false;
    var local_70: u32 = u32();

    let _e5 = precision_lib_fixed_limb_highest_bit_1a19_(a0_42.f1_.f0_);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        local_70 = (_e5 + 13u);
    } else {
        let _e15 = precision_lib_fixed_limb_highest_bit_1a19_(a0_42.f0_);
        local_70 = _e15;
    }
    let _e19 = local_70;
    return _e19;
}

fn highest_bit_gbb08_(a0_43: FeLocal_fe_shader_private_layout_2_) -> u32 {
    var local_71: u32;
    var local_72: bool = false;
    var local_73: u32 = u32();

    let _e4 = highest_bit_g5d22_(a0_43.f1_);
    if ((bitcast<i32>(_e4) < bitcast<i32>(0u)) == false) {
        local_73 = (_e4 + 13u);
    } else {
        let _e14 = precision_lib_fixed_limb_highest_bit_1a19_(a0_43.f0_);
        local_73 = _e14;
    }
    let _e18 = local_73;
    return _e18;
}

fn highest_bit_gf166_(a0_44: FeLocal_fe_shader_private_layout_3_) -> u32 {
    var local_74: u32;
    var local_75: bool = false;
    var local_76: u32 = u32();

    let _e4 = highest_bit_gbb08_(a0_44.f1_);
    if ((bitcast<i32>(_e4) < bitcast<i32>(0u)) == false) {
        local_76 = (_e4 + 13u);
    } else {
        let _e14 = precision_lib_fixed_limb_highest_bit_1a19_(a0_44.f0_);
        local_76 = _e14;
    }
    let _e18 = local_76;
    return _e18;
}

fn highest_bit_ga8f6_(a0_45: FeLocal_fe_shader_private_layout_4_) -> u32 {
    var local_77: u32;
    var local_78: bool = false;
    var local_79: u32 = u32();

    let _e4 = highest_bit_gf166_(a0_45.f1_);
    if ((bitcast<i32>(_e4) < bitcast<i32>(0u)) == false) {
        local_79 = (_e4 + 13u);
    } else {
        let _e14 = precision_lib_fixed_limb_highest_bit_1a19_(a0_45.f0_);
        local_79 = _e14;
    }
    let _e18 = local_79;
    return _e18;
}

fn highest_bit_gf0cd(a0_46: FeLocal_fe_shader_private_layout_5_, fe_trapped_29: ptr<function, bool>) -> u32 {
    var local_80: u32;
    var local_81: bool = false;
    var local_82: u32 = u32();

    let _e5 = highest_bit_ga8f6_(a0_46.f1_);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        let _e15 = (_e5 + 13u);
        if ((((_e5 ^ _e15) & (13u ^ _e15)) & 2147483648u) != 0u) {
            (*fe_trapped_29) = true;
        } else {
            local_82 = _e15;
        }
    } else {
        let _e24 = precision_lib_fixed_limb_highest_bit_1a19_(a0_46.f0_);
        local_82 = _e24;
    }
    let _e27 = local_82;
    return _e27;
}

fn highest_bit_g4f4f(a0_47: FeLocal_fe_shader_private_layout_6_, fe_trapped_30: ptr<function, bool>) -> u32 {
    var local_83: u32;
    var local_84: bool = false;
    var local_85: u32 = u32();

    let _e5 = highest_bit_gf0cd(a0_47.f1_, fe_trapped_30);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        let _e15 = (_e5 + 13u);
        if ((((_e5 ^ _e15) & (13u ^ _e15)) & 2147483648u) != 0u) {
            (*fe_trapped_30) = true;
        } else {
            local_85 = _e15;
        }
    } else {
        let _e24 = precision_lib_fixed_limb_highest_bit_1a19_(a0_47.f0_);
        local_85 = _e24;
    }
    let _e27 = local_85;
    return _e27;
}

fn highest_bit_gaaac(a0_48: FeLocal_fe_shader_private_layout_7_, fe_trapped_31: ptr<function, bool>) -> u32 {
    var local_86: u32;
    var local_87: bool = false;
    var local_88: u32 = u32();

    let _e5 = highest_bit_g4f4f(a0_48.f1_, fe_trapped_31);
    if ((bitcast<i32>(_e5) < bitcast<i32>(0u)) == false) {
        let _e15 = (_e5 + 13u);
        if ((((_e5 ^ _e15) & (13u ^ _e15)) & 2147483648u) != 0u) {
            (*fe_trapped_31) = true;
        } else {
            local_88 = _e15;
        }
    } else {
        let _e24 = precision_lib_fixed_limb_highest_bit_1a19_(a0_48.f0_);
        local_88 = _e24;
    }
    let _e27 = local_88;
    return _e27;
}

fn fractional_bits_g5d22_(a0_49: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return 13u;
}

fn fractional_bits_gbb08_(a0_50: FeLocal_fe_shader_private_layout_2_) -> u32 {
    let _e2 = fractional_bits_g5d22_(a0_50.f1_);
    return (13u + _e2);
}

fn fractional_bits_gf166_(a0_51: FeLocal_fe_shader_private_layout_3_) -> u32 {
    let _e2 = fractional_bits_gbb08_(a0_51.f1_);
    return (13u + _e2);
}

fn fractional_bits_ga8f6_(a0_52: FeLocal_fe_shader_private_layout_4_) -> u32 {
    let _e2 = fractional_bits_gf166_(a0_52.f1_);
    return (13u + _e2);
}

fn fractional_bits_gf0cd(a0_53: FeLocal_fe_shader_private_layout_5_) -> u32 {
    let _e2 = fractional_bits_ga8f6_(a0_53.f1_);
    return (13u + _e2);
}

fn fractional_bits_g4f4f(a0_54: FeLocal_fe_shader_private_layout_6_, fe_trapped_32: ptr<function, bool>) -> u32 {
    var local_89: u32;
    var local_90: bool = false;

    let _e4 = fractional_bits_gf0cd(a0_54.f1_);
    let _e8 = (13u + _e4);
    if ((((13u ^ _e8) & (_e4 ^ _e8)) & 2147483648u) != 0u) {
        (*fe_trapped_32) = true;
    } else {
        local_89 = _e8;
        local_90 = true;
    }
    let _e19 = local_89;
    return _e19;
}

fn fractional_bits_gaaac(a0_55: FeLocal_fe_shader_private_layout_7_, fe_trapped_33: ptr<function, bool>) -> u32 {
    var local_91: u32;
    var local_92: bool = false;

    let _e4 = fractional_bits_g4f4f(a0_55.f1_, fe_trapped_33);
    let _e8 = (13u + _e4);
    if ((((13u ^ _e8) & (_e4 ^ _e8)) & 2147483648u) != 0u) {
        (*fe_trapped_33) = true;
    } else {
        local_91 = _e8;
        local_92 = true;
    }
    let _e19 = local_91;
    return _e19;
}

fn impl_trait_LimbLast_word_from(a0_56: u32, a1_29: u32) -> u32 {
    var local_93: u32;
    var local_94: bool = false;
    var local_95: u32 = u32();

    if (bitcast<i32>(a1_29) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_29) < bitcast<i32>(13u)) {
            local_95 = (a0_56 >> a1_29);
        }
    }
    let _e15 = local_95;
    return _e15;
}

fn word_from_g5d22_(a0_57: FeLocal_fe_shader_private_layout_1_, a1_30: u32) -> u32 {
    var local_96: u32;
    var local_97: bool = false;
    var local_98: u32 = u32();

    if (bitcast<i32>(a1_30) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_30) < bitcast<i32>(13u)) {
            let _e19 = impl_trait_LimbLast_word_from(a0_57.f1_.f0_, 0u);
            local_98 = ((a0_57.f0_ >> a1_30) | (_e19 << (13u - a1_30)));
        } else {
            let _e26 = impl_trait_LimbLast_word_from(a0_57.f1_.f0_, (a1_30 - 13u));
            local_98 = _e26;
        }
    }
    let _e30 = local_98;
    return _e30;
}

fn word_from_gbb08_(a0_58: FeLocal_fe_shader_private_layout_2_, a1_31: u32) -> u32 {
    var local_99: u32;
    var local_100: bool = false;
    var local_101: u32 = u32();

    if (bitcast<i32>(a1_31) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_31) < bitcast<i32>(13u)) {
            let _e18 = word_from_g5d22_(a0_58.f1_, 0u);
            local_101 = ((a0_58.f0_ >> a1_31) | (_e18 << (13u - a1_31)));
        } else {
            let _e24 = word_from_g5d22_(a0_58.f1_, (a1_31 - 13u));
            local_101 = _e24;
        }
    }
    let _e28 = local_101;
    return _e28;
}

fn word_from_gf166_(a0_59: FeLocal_fe_shader_private_layout_3_, a1_32: u32) -> u32 {
    var local_102: u32;
    var local_103: bool = false;
    var local_104: u32 = u32();

    if (bitcast<i32>(a1_32) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_32) < bitcast<i32>(13u)) {
            let _e18 = word_from_gbb08_(a0_59.f1_, 0u);
            local_104 = ((a0_59.f0_ >> a1_32) | (_e18 << (13u - a1_32)));
        } else {
            let _e24 = word_from_gbb08_(a0_59.f1_, (a1_32 - 13u));
            local_104 = _e24;
        }
    }
    let _e28 = local_104;
    return _e28;
}

fn word_from_ga8f6_(a0_60: FeLocal_fe_shader_private_layout_4_, a1_33: u32) -> u32 {
    var local_105: u32;
    var local_106: bool = false;
    var local_107: u32 = u32();

    if (bitcast<i32>(a1_33) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_33) < bitcast<i32>(13u)) {
            let _e18 = word_from_gf166_(a0_60.f1_, 0u);
            local_107 = ((a0_60.f0_ >> a1_33) | (_e18 << (13u - a1_33)));
        } else {
            let _e24 = word_from_gf166_(a0_60.f1_, (a1_33 - 13u));
            local_107 = _e24;
        }
    }
    let _e28 = local_107;
    return _e28;
}

fn word_from_gf0cd(a0_61: FeLocal_fe_shader_private_layout_5_, a1_34: u32) -> u32 {
    var local_108: u32;
    var local_109: bool = false;
    var local_110: u32 = u32();

    if (bitcast<i32>(a1_34) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_34) < bitcast<i32>(13u)) {
            let _e18 = word_from_ga8f6_(a0_61.f1_, 0u);
            local_110 = ((a0_61.f0_ >> a1_34) | (_e18 << (13u - a1_34)));
        } else {
            let _e24 = word_from_ga8f6_(a0_61.f1_, (a1_34 - 13u));
            local_110 = _e24;
        }
    }
    let _e28 = local_110;
    return _e28;
}

fn word_from_g4f4f(a0_62: FeLocal_fe_shader_private_layout_6_, a1_35: u32) -> u32 {
    var local_111: u32;
    var local_112: bool = false;
    var local_113: u32 = u32();

    if (bitcast<i32>(a1_35) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_35) < bitcast<i32>(13u)) {
            let _e18 = word_from_gf0cd(a0_62.f1_, 0u);
            local_113 = ((a0_62.f0_ >> a1_35) | (_e18 << (13u - a1_35)));
        } else {
            let _e24 = word_from_gf0cd(a0_62.f1_, (a1_35 - 13u));
            local_113 = _e24;
        }
    }
    let _e28 = local_113;
    return _e28;
}

fn word_from_gaaac(a0_63: FeLocal_fe_shader_private_layout_7_, a1_36: u32) -> u32 {
    var local_114: u32;
    var local_115: bool = false;
    var local_116: u32 = u32();

    if (bitcast<i32>(a1_36) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_36) < bitcast<i32>(13u)) {
            let _e18 = word_from_g4f4f(a0_63.f1_, 0u);
            local_116 = ((a0_63.f0_ >> a1_36) | (_e18 << (13u - a1_36)));
        } else {
            let _e24 = word_from_g4f4f(a0_63.f1_, (a1_36 - 13u));
            local_116 = _e24;
        }
    }
    let _e28 = local_116;
    return _e28;
}

fn impl_trait_LimbLast_bit_at(a0_64: u32, a1_37: u32) -> u32 {
    var local_117: u32;
    var local_118: bool = false;
    var local_119: u32 = u32();

    if (bitcast<i32>(a1_37) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_37) < bitcast<i32>(13u)) {
            local_119 = ((a0_64 >> a1_37) & 1u);
        }
    }
    let _e17 = local_119;
    return _e17;
}

fn bit_at_g5d22_(a0_65: FeLocal_fe_shader_private_layout_1_, a1_38: u32) -> u32 {
    var local_120: u32;
    var local_121: bool = false;
    var local_122: u32 = u32();

    if (bitcast<i32>(a1_38) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_38) < bitcast<i32>(13u)) {
            local_122 = ((a0_65.f0_ >> a1_38) & 1u);
        } else {
            let _e20 = impl_trait_LimbLast_bit_at(a0_65.f1_.f0_, (a1_38 - 13u));
            local_122 = _e20;
        }
    }
    let _e24 = local_122;
    return _e24;
}

fn bit_at_gbb08_(a0_66: FeLocal_fe_shader_private_layout_2_, a1_39: u32) -> u32 {
    var local_123: u32;
    var local_124: bool = false;
    var local_125: u32 = u32();

    if (bitcast<i32>(a1_39) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_39) < bitcast<i32>(13u)) {
            local_125 = ((a0_66.f0_ >> a1_39) & 1u);
        } else {
            let _e19 = bit_at_g5d22_(a0_66.f1_, (a1_39 - 13u));
            local_125 = _e19;
        }
    }
    let _e23 = local_125;
    return _e23;
}

fn bit_at_gf166_(a0_67: FeLocal_fe_shader_private_layout_3_, a1_40: u32) -> u32 {
    var local_126: u32;
    var local_127: bool = false;
    var local_128: u32 = u32();

    if (bitcast<i32>(a1_40) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_40) < bitcast<i32>(13u)) {
            local_128 = ((a0_67.f0_ >> a1_40) & 1u);
        } else {
            let _e19 = bit_at_gbb08_(a0_67.f1_, (a1_40 - 13u));
            local_128 = _e19;
        }
    }
    let _e23 = local_128;
    return _e23;
}

fn bit_at_ga8f6_(a0_68: FeLocal_fe_shader_private_layout_4_, a1_41: u32) -> u32 {
    var local_129: u32;
    var local_130: bool = false;
    var local_131: u32 = u32();

    if (bitcast<i32>(a1_41) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_41) < bitcast<i32>(13u)) {
            local_131 = ((a0_68.f0_ >> a1_41) & 1u);
        } else {
            let _e19 = bit_at_gf166_(a0_68.f1_, (a1_41 - 13u));
            local_131 = _e19;
        }
    }
    let _e23 = local_131;
    return _e23;
}

fn bit_at_gf0cd(a0_69: FeLocal_fe_shader_private_layout_5_, a1_42: u32) -> u32 {
    var local_132: u32;
    var local_133: bool = false;
    var local_134: u32 = u32();

    if (bitcast<i32>(a1_42) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_42) < bitcast<i32>(13u)) {
            local_134 = ((a0_69.f0_ >> a1_42) & 1u);
        } else {
            let _e19 = bit_at_ga8f6_(a0_69.f1_, (a1_42 - 13u));
            local_134 = _e19;
        }
    }
    let _e23 = local_134;
    return _e23;
}

fn bit_at_g4f4f(a0_70: FeLocal_fe_shader_private_layout_6_, a1_43: u32) -> u32 {
    var local_135: u32;
    var local_136: bool = false;
    var local_137: u32 = u32();

    if (bitcast<i32>(a1_43) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_43) < bitcast<i32>(13u)) {
            local_137 = ((a0_70.f0_ >> a1_43) & 1u);
        } else {
            let _e19 = bit_at_gf0cd(a0_70.f1_, (a1_43 - 13u));
            local_137 = _e19;
        }
    }
    let _e23 = local_137;
    return _e23;
}

fn bit_at_gaaac(a0_71: FeLocal_fe_shader_private_layout_7_, a1_44: u32) -> u32 {
    var local_138: u32;
    var local_139: bool = false;
    var local_140: u32 = u32();

    if (bitcast<i32>(a1_44) < bitcast<i32>(0u)) {
    } else {
        if (bitcast<i32>(a1_44) < bitcast<i32>(13u)) {
            local_140 = ((a0_71.f0_ >> a1_44) & 1u);
        } else {
            let _e19 = bit_at_g4f4f(a0_71.f1_, (a1_44 - 13u));
            local_140 = _e19;
        }
    }
    let _e23 = local_140;
    return _e23;
}

fn impl_trait_LimbLast_any_below(a0_72: u32, a1_45: u32, fe_trapped_34: ptr<function, bool>) -> u32 {
    var local_141: u32;
    var local_142: bool = false;
    var local_143: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_45)) == false) {
    } else {
        if ((bitcast<i32>(a1_45) < bitcast<i32>(13u)) == false) {
            local_143 = a0_72;
        } else {
            let _e18 = (1u << a1_45);
            if (_e18 < 1u) {
                (*fe_trapped_34) = true;
            } else {
                local_143 = (a0_72 & (_e18 - 1u));
            }
        }
    }
    let _e27 = local_143;
    return _e27;
}

fn any_below_g5d22_(a0_73: FeLocal_fe_shader_private_layout_1_, a1_46: u32, fe_trapped_35: ptr<function, bool>) -> u32 {
    var local_144: u32;
    var local_145: bool = false;
    var local_146: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_46)) == false) {
    } else {
        if ((bitcast<i32>(a1_46) < bitcast<i32>(13u)) == false) {
            let _e22 = impl_trait_LimbLast_any_below(a0_73.f1_.f0_, (a1_46 - 13u), fe_trapped_35);
            local_146 = (a0_73.f0_ | _e22);
        } else {
            let _e26 = (1u << a1_46);
            if (_e26 < 1u) {
                (*fe_trapped_35) = true;
            } else {
                local_146 = (a0_73.f0_ & (_e26 - 1u));
            }
        }
    }
    let _e35 = local_146;
    return _e35;
}

fn any_below_gbb08_(a0_74: FeLocal_fe_shader_private_layout_2_, a1_47: u32, fe_trapped_36: ptr<function, bool>) -> u32 {
    var local_147: u32;
    var local_148: bool = false;
    var local_149: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_47)) == false) {
    } else {
        if ((bitcast<i32>(a1_47) < bitcast<i32>(13u)) == false) {
            let _e21 = any_below_g5d22_(a0_74.f1_, (a1_47 - 13u), fe_trapped_36);
            local_149 = (a0_74.f0_ | _e21);
        } else {
            let _e25 = (1u << a1_47);
            if (_e25 < 1u) {
                (*fe_trapped_36) = true;
            } else {
                local_149 = (a0_74.f0_ & (_e25 - 1u));
            }
        }
    }
    let _e34 = local_149;
    return _e34;
}

fn any_below_gf166_(a0_75: FeLocal_fe_shader_private_layout_3_, a1_48: u32, fe_trapped_37: ptr<function, bool>) -> u32 {
    var local_150: u32;
    var local_151: bool = false;
    var local_152: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_48)) == false) {
    } else {
        if ((bitcast<i32>(a1_48) < bitcast<i32>(13u)) == false) {
            let _e21 = any_below_gbb08_(a0_75.f1_, (a1_48 - 13u), fe_trapped_37);
            local_152 = (a0_75.f0_ | _e21);
        } else {
            let _e25 = (1u << a1_48);
            if (_e25 < 1u) {
                (*fe_trapped_37) = true;
            } else {
                local_152 = (a0_75.f0_ & (_e25 - 1u));
            }
        }
    }
    let _e34 = local_152;
    return _e34;
}

fn any_below_ga8f6_(a0_76: FeLocal_fe_shader_private_layout_4_, a1_49: u32, fe_trapped_38: ptr<function, bool>) -> u32 {
    var local_153: u32;
    var local_154: bool = false;
    var local_155: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_49)) == false) {
    } else {
        if ((bitcast<i32>(a1_49) < bitcast<i32>(13u)) == false) {
            let _e21 = any_below_gf166_(a0_76.f1_, (a1_49 - 13u), fe_trapped_38);
            local_155 = (a0_76.f0_ | _e21);
        } else {
            let _e25 = (1u << a1_49);
            if (_e25 < 1u) {
                (*fe_trapped_38) = true;
            } else {
                local_155 = (a0_76.f0_ & (_e25 - 1u));
            }
        }
    }
    let _e34 = local_155;
    return _e34;
}

fn any_below_gf0cd(a0_77: FeLocal_fe_shader_private_layout_5_, a1_50: u32, fe_trapped_39: ptr<function, bool>) -> u32 {
    var local_156: u32;
    var local_157: bool = false;
    var local_158: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_50)) == false) {
    } else {
        if ((bitcast<i32>(a1_50) < bitcast<i32>(13u)) == false) {
            let _e21 = any_below_ga8f6_(a0_77.f1_, (a1_50 - 13u), fe_trapped_39);
            local_158 = (a0_77.f0_ | _e21);
        } else {
            let _e25 = (1u << a1_50);
            if (_e25 < 1u) {
                (*fe_trapped_39) = true;
            } else {
                local_158 = (a0_77.f0_ & (_e25 - 1u));
            }
        }
    }
    let _e34 = local_158;
    return _e34;
}

fn any_below_g4f4f(a0_78: FeLocal_fe_shader_private_layout_6_, a1_51: u32, fe_trapped_40: ptr<function, bool>) -> u32 {
    var local_159: u32;
    var local_160: bool = false;
    var local_161: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_51)) == false) {
    } else {
        if ((bitcast<i32>(a1_51) < bitcast<i32>(13u)) == false) {
            let _e21 = any_below_gf0cd(a0_78.f1_, (a1_51 - 13u), fe_trapped_40);
            local_161 = (a0_78.f0_ | _e21);
        } else {
            let _e25 = (1u << a1_51);
            if (_e25 < 1u) {
                (*fe_trapped_40) = true;
            } else {
                local_161 = (a0_78.f0_ & (_e25 - 1u));
            }
        }
    }
    let _e34 = local_161;
    return _e34;
}

fn any_below_gaaac(a0_79: FeLocal_fe_shader_private_layout_7_, a1_52: u32, fe_trapped_41: ptr<function, bool>) -> u32 {
    var local_162: u32;
    var local_163: bool = false;
    var local_164: u32 = u32();

    if ((bitcast<i32>(0u) < bitcast<i32>(a1_52)) == false) {
    } else {
        if ((bitcast<i32>(a1_52) < bitcast<i32>(13u)) == false) {
            let _e21 = any_below_g4f4f(a0_79.f1_, (a1_52 - 13u), fe_trapped_41);
            local_164 = (a0_79.f0_ | _e21);
        } else {
            let _e25 = (1u << a1_52);
            if (_e25 < 1u) {
                (*fe_trapped_41) = true;
            } else {
                local_164 = (a0_79.f0_ & (_e25 - 1u));
            }
        }
    }
    let _e34 = local_164;
    return _e34;
}

fn to_f32_bits(a0_80: u32, a1_53: FeLocal_fe_shader_private_layout_7_, fe_trapped_42: ptr<function, bool>) -> u32 {
    var local_165: u32;
    var local_166: bool = false;
    var local_167: u32 = u32();
    var local_168: u32 = u32();
    var local_169: u32 = u32();
    var local_170: u32 = u32();
    var local_171: u32 = u32();

    let _e5 = highest_bit_gaaac(a1_53, fe_trapped_42);
    if (bitcast<i32>(_e5) < bitcast<i32>(0u)) {
    } else {
        let _e10 = fractional_bits_gaaac(a1_53, fe_trapped_42);
        let _e13 = (_e5 - _e10);
        if ((((_e5 ^ _e13) & (_e5 ^ _e10)) & 2147483648u) != 0u) {
            (*fe_trapped_42) = true;
        } else {
            let _e23 = (_e13 + 127u);
            if ((((_e13 ^ _e23) & (127u ^ _e23)) & 2147483648u) != 0u) {
                (*fe_trapped_42) = true;
            } else {
                let _e32 = (_e5 - 23u);
                if (bitcast<i32>(_e32) < bitcast<i32>(0u)) {
                    let _e40 = word_from_gaaac(a1_53, 0u);
                    local_168 = (_e40 << (0u - _e32));
                } else {
                    let _e42 = word_from_gaaac(a1_53, _e32);
                    local_168 = _e42;
                }
                let _e47 = local_168;
                let _e49 = (_e5 - 24u);
                let _e50 = bit_at_gaaac(a1_53, _e49);
                let _e51 = any_below_gaaac(a1_53, _e49, fe_trapped_42);
                if (_e50 == 1u) {
                    if ((_e51 == 0u) == false) {
                        local_169 = 1u;
                    } else {
                        local_169 = (_e47 & 1u);
                    }
                }
                let _e64 = local_169;
                let _e66 = (_e47 + _e64);
                if (_e47 > (4294967295u - _e64)) {
                    (*fe_trapped_42) = true;
                } else {
                    if (_e66 == 16777216u) {
                        let _e77 = (_e23 + 1u);
                        if ((((_e23 ^ _e77) & (1u ^ _e77)) & 2147483648u) != 0u) {
                            (*fe_trapped_42) = true;
                        } else {
                            local_170 = 8388608u;
                            local_171 = _e77;
                        }
                    } else {
                        local_170 = _e66;
                        local_171 = _e23;
                    }
                    let _e90 = local_170;
                    let _e92 = local_171;
                    local_167 = (((a0_80 << 31u) | (_e92 << 23u)) | (_e90 & 8388607u));
                }
            }
        }
    }
    let _e103 = local_167;
    return _e103;
}

fn expansion_difference(a0_81: FeLocal_fe_shader_private_layout_14_, a1_54: FeLocal_fe_shader_private_layout_14_, fe_trapped_43: ptr<function, bool>) -> f32 {
    let _e3 = to_quad(a0_81);
    let _e8 = to_quad(a1_54);
    let _e14 = from_qf_offset(_e3.f0_, _e3.f1_, _e3.f2_, _e3.f3_, 0f, fe_trapped_43);
    let _e18 = from_qf_offset(_e8.f0_, _e8.f1_, _e8.f2_, _e8.f3_, 0f, fe_trapped_43);
    let _e21 = sub(_e18.f0_, _e18.f1_, _e14.f0_, _e14.f1_, fe_trapped_43);
    let _e24 = to_f32_bits(_e21.f0_, _e21.f1_, fe_trapped_43);
    return bitcast<f32>(_e24);
}

fn center_delta(a0_82: FeLocal_fe_shader_private_layout_15_, a1_55: FeLocal_fe_shader_private_layout_15_, fe_trapped_44: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_17_ {
    let _e5 = expansion_difference(a0_82.f0_, a1_55.f0_, fe_trapped_44);
    let _e8 = expansion_difference(a0_82.f1_, a1_55.f1_, fe_trapped_44);
    return FeLocal_fe_shader_private_layout_17_(_e5, _e8);
}

fn delta_from(a0_83: FeLocal_fe_shader_private_layout_16_, a1_56: FeLocal_fe_shader_private_layout_10_, fe_trapped_45: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_17_ {
    let _e3 = impl_ReferenceAnchor_center(a0_83);
    let _e4 = impl_MandelbrotViewState_center(a1_56);
    let _e5 = center_delta(_e3, _e4, fe_trapped_45);
    return _e5;
}

fn iteration_limit(a0_84: f32, fe_trapped_46: ptr<function, bool>) -> u32 {
    var local_172: u32 = u32();
    var local_173: f32 = f32();
    var local_174: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_175: u32 = u32();
    var local_176: f32 = f32();
    var local_177: u32;
    var local_178: bool = false;
    var local_179: u32 = u32();

    local_172 = 0u;
    local_173 = a0_84;
    local_174 = 0u;
    loop {
        let _e12 = local_172;
        let _e14 = local_173;
        let _e16 = local_174;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_46) = true;
                    break;
                } else {
                    local_175 = (_e12 + 1u);
                    local_176 = (_e14 * 2f);
                }
            } else {
                local_175 = _e12;
                local_176 = _e14;
            }
            let _e36 = local_175;
            let _e38 = local_176;
            local_172 = _e36;
            local_173 = _e38;
            local_174 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_172;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_46) = true;
        }
        if (8192u < _e60) {
            local_179 = 8192u;
        } else {
            local_179 = _e60;
        }
        let _e71 = local_179;
        local_177 = _e71;
        local_178 = true;
    }
    let _e77 = local_178;
    if _e77 {
    } else {
        (*fe_trapped_46) = true;
    }
    let _e79 = local_177;
    return _e79;
}

fn cancel_pending(a0_85: FeLocal_fe_shader_private_layout_9_) -> FeLocal_fe_shader_private_layout_9_ {
    var fixed_local_2_: FeLocal_fe_shader_private_layout_9_ = FeLocal_fe_shader_private_layout_9_();

    fixed_local_2_ = a0_85;
    fixed_local_2_.f2_ = 0u;
    fixed_local_2_.f3_ = 0u;
    fixed_local_2_.f4_ = 0u;
    fixed_local_2_.f5_ = 0u;
    let _e11 = fixed_local_2_;
    return _e11;
}

fn impl_trait_f32_abs(a0_86: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_86) & 2147483647u));
}

fn impl_trait_f32_max(a0_87: f32, a1_57: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_87);
    let _e3 = bitcast<u32>(a1_57);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32 = u32();
    var local_5: u32;
    var local_6: bool = false;

    let _e6 = params.p16_;
    let _e8 = params.p17_;
    let _e10 = params.p18_;
    let _e12 = params.p19_;
    let _e14 = params.p20_;
    let _e16 = params.p21_;
    let _e18 = params.p22_;
    let _e20 = params.p23_;
    let _e22 = params.p24_;
    let _e24 = params.p25_;
    let _e26 = params.p26_;
    let _e28 = params.p27_;
    let _e30 = params.p28_;
    let _e32 = params.p29_;
    let _e34 = params.p30_;
    let _e41 = reference[i32(0u)].active_;
    let _e43 = reference[i32(0u)].active_valid;
    let _e45 = reference[i32(0u)].pending;
    let _e47 = reference[i32(0u)].index;
    let _e49 = reference[i32(0u)].zx_s;
    let _e51 = reference[i32(0u)].zy_s;
    let _e53 = reference[i32(0u)].ready_at;
    let _e54 = FeLocal_fe_shader_private_layout_9_(_e41, _e43, _e45, _e47, _e49, _e51, _e53);
    if (_e45 == 0u) {
        local_1 = true;
    }
    let _e139 = local_1;
    if _e139 {
    } else {
        if (_e41 == 0u) {
            local_4 = 1u;
        }
        let _e67 = local_4;
        let _e71 = anchor[i32(_e67)].x0_;
        let _e73 = anchor[i32(_e67)].x1_;
        let _e75 = anchor[i32(_e67)].x2_;
        let _e77 = anchor[i32(_e67)].x3_;
        let _e79 = anchor[i32(_e67)].y0_;
        let _e81 = anchor[i32(_e67)].y1_;
        let _e83 = anchor[i32(_e67)].y2_;
        let _e85 = anchor[i32(_e67)].y3_;
        let _e87 = anchor[i32(_e67)].limit;
        let _e89 = anchor[i32(_e67)].generation;
        let _e91 = delta_from(FeLocal_fe_shader_private_layout_16_(_e71, _e73, _e75, _e77, _e79, _e81, _e83, _e85, _e87, _e89), FeLocal_fe_shader_private_layout_10_(_e6, _e8, _e10, _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34), (&fe_trapped));
        let _e92 = iteration_limit(_e22, (&fe_trapped));
        if (_e87 < _e92) {
            let _e94 = cancel_pending(_e54);
            reference[i32(0u)].active_ = _e94.f0_;
            reference[i32(0u)].active_valid = _e94.f1_;
            reference[i32(0u)].pending = _e94.f2_;
            reference[i32(0u)].index = _e94.f3_;
            reference[i32(0u)].zx_s = _e94.f4_;
            reference[i32(0u)].zy_s = _e94.f5_;
            reference[i32(0u)].ready_at = _e94.f6_;
        } else {
            let _e113 = impl_trait_f32_abs(_e91.f0_);
            let _e115 = impl_trait_f32_abs(_e91.f1_);
            let _e116 = impl_trait_f32_max(_e113, _e115);
            if ((_e22 * 0.5f) < _e116) {
                let _e120 = cancel_pending(_e54);
                reference[i32(0u)].active_ = _e120.f0_;
                reference[i32(0u)].active_valid = _e120.f1_;
                reference[i32(0u)].pending = _e120.f2_;
                reference[i32(0u)].index = _e120.f3_;
                reference[i32(0u)].zx_s = _e120.f4_;
                reference[i32(0u)].zy_s = _e120.f5_;
                reference[i32(0u)].ready_at = _e120.f6_;
            }
        }
    }
    let _e141 = fe_trapped;
    trap[0u] = u32(_e141);
}
