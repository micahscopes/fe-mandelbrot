struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_2_,
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
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
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

struct FeLocal_fe_shader_private_layout_7_ {
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

fn from_quad(a0_: f32, a1_: f32, a2_: f32, a3_: f32) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_(a0_, FeLocal_fe_shader_private_layout_4_(a1_, FeLocal_fe_shader_private_layout_3_(a2_, FeLocal_fe_shader_private_layout_2_(a3_))));
}

fn impl_ReferenceAnchor_center(a0_1: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_6_ {
    let _e5 = from_quad(a0_1.f0_, a0_1.f1_, a0_1.f2_, a0_1.f3_);
    let _e10 = from_quad(a0_1.f4_, a0_1.f5_, a0_1.f6_, a0_1.f7_);
    return FeLocal_fe_shader_private_layout_6_(_e5, _e10);
}

fn impl_MandelbrotViewState_center(a0_2: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_6_ {
    let _e5 = from_quad(a0_2.f0_, a0_2.f1_, a0_2.f2_, a0_2.f3_);
    let _e10 = from_quad(a0_2.f4_, a0_2.f5_, a0_2.f6_, a0_2.f7_);
    return FeLocal_fe_shader_private_layout_6_(_e5, _e10);
}

fn to_quad(a0_3: FeLocal_fe_shader_private_layout_5_) -> FeLocal_fe_shader_private_layout_9_ {
    return FeLocal_fe_shader_private_layout_9_(a0_3.f0_, a0_3.f1_.f0_, a0_3.f1_.f1_.f0_, a0_3.f1_.f1_.f1_.f0_);
}

fn expansion_delta(a0_4: FeLocal_fe_shader_private_layout_5_, a1_1: FeLocal_fe_shader_private_layout_5_) -> f32 {
    let _e2 = to_quad(a0_4);
    let _e7 = to_quad(a1_1);
    return (((_e7.f0_ - _e2.f0_) + (_e7.f1_ - _e2.f1_)) + ((_e7.f2_ - _e2.f2_) + (_e7.f3_ - _e2.f3_)));
}

fn center_delta(a0_5: FeLocal_fe_shader_private_layout_6_, a1_2: FeLocal_fe_shader_private_layout_6_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e4 = expansion_delta(a0_5.f0_, a1_2.f0_);
    let _e7 = expansion_delta(a0_5.f1_, a1_2.f1_);
    return FeLocal_fe_shader_private_layout_8_(_e4, _e7);
}

fn delta_from(a0_6: FeLocal_fe_shader_private_layout_7_, a1_3: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_8_ {
    let _e2 = impl_ReferenceAnchor_center(a0_6);
    let _e3 = impl_MandelbrotViewState_center(a1_3);
    let _e4 = center_delta(_e2, _e3);
    return _e4;
}

fn iteration_limit(a0_7: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_7: u32 = u32();
    var local_8: f32 = f32();
    var local_9: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_10: u32 = u32();
    var local_11: f32 = f32();
    var local_12: u32;
    var local_13: bool = false;
    var local_14: u32 = u32();

    local_7 = 0u;
    local_8 = a0_7;
    local_9 = 0u;
    loop {
        let _e12 = local_7;
        let _e14 = local_8;
        let _e16 = local_9;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_10 = (_e12 + 1u);
                    local_11 = (_e14 * 2f);
                }
            } else {
                local_10 = _e12;
                local_11 = _e14;
            }
            let _e36 = local_10;
            let _e38 = local_11;
            local_7 = _e36;
            local_8 = _e38;
            local_9 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_7;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_14 = 8192u;
        } else {
            local_14 = _e60;
        }
        let _e71 = local_14;
        local_12 = _e71;
        local_13 = true;
    }
    let _e77 = local_13;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_12;
    return _e79;
}

fn cancel_pending(a0_8: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    var fixed_local_2_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    fixed_local_2_ = a0_8;
    fixed_local_2_.f2_ = 0u;
    fixed_local_2_.f3_ = 0u;
    fixed_local_2_.f4_ = 0u;
    fixed_local_2_.f5_ = 0u;
    let _e11 = fixed_local_2_;
    return _e11;
}

fn impl_trait_f32_abs(a0_9: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_9) & 2147483647u));
}

fn impl_trait_f32_max(a0_10: f32, a1_4: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_10);
    let _e3 = bitcast<u32>(a1_4);
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
    let _e54 = FeLocal_fe_shader_private_layout_0_(_e41, _e43, _e45, _e47, _e49, _e51, _e53);
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
        let _e91 = delta_from(FeLocal_fe_shader_private_layout_7_(_e71, _e73, _e75, _e77, _e79, _e81, _e83, _e85, _e87, _e89), FeLocal_fe_shader_private_layout_1_(_e6, _e8, _e10, _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
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
