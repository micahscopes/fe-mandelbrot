struct FeLocal_fe_shader_private_layout_3_ {
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
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
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
var<storage, read_write> anchor: array<anchor_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_2_) -> bool {
    var local_3: bool;
    var local_4: bool = false;
    var local_5: bool = bool();

    if (a0_.f13_ < 0.5f) {
        if (60f <= (a0_.f10_ - a0_.f11_)) {
            local_5 = true;
        }
    }
    let _e14 = local_5;
    return _e14;
}

fn delta_from(a0_1: FeLocal_fe_shader_private_layout_1_, a1_: FeLocal_fe_shader_private_layout_2_) -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_((((a1_.f0_ - a0_1.f0_) + (a1_.f1_ - a0_1.f1_)) + ((a1_.f2_ - a0_1.f2_) + (a1_.f3_ - a0_1.f3_))), (((a1_.f4_ - a0_1.f4_) + (a1_.f5_ - a0_1.f5_)) + ((a1_.f6_ - a0_1.f6_) + (a1_.f7_ - a0_1.f7_))));
}

fn iteration_limit(a0_2: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_6: u32 = u32();
    var local_7: f32 = f32();
    var local_8: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_9: u32 = u32();
    var local_10: f32 = f32();
    var local_11: u32;
    var local_12: bool = false;
    var local_13: u32 = u32();

    local_6 = 0u;
    local_7 = a0_2;
    local_8 = 0u;
    loop {
        let _e12 = local_6;
        let _e14 = local_7;
        let _e16 = local_8;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_9 = (_e12 + 1u);
                    local_10 = (_e14 * 2f);
                }
            } else {
                local_9 = _e12;
                local_10 = _e14;
            }
            let _e36 = local_9;
            let _e38 = local_10;
            local_6 = _e36;
            local_7 = _e38;
            local_8 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_6;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_13 = 8192u;
        } else {
            local_13 = _e60;
        }
        let _e71 = local_13;
        local_11 = _e71;
        local_12 = true;
    }
    let _e77 = local_12;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_11;
    return _e79;
}

fn cancel_pending(a0_3: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    var fixed_local_2_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    fixed_local_2_ = a0_3;
    fixed_local_2_.f2_ = 0u;
    fixed_local_2_.f3_ = 0u;
    fixed_local_2_.f4_ = 0u;
    fixed_local_2_.f5_ = 0u;
    let _e11 = fixed_local_2_;
    return _e11;
}

fn impl_trait_f32_abs(a0_4: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_4) & 2147483647u));
}

fn impl_trait_f32_max(a0_5: f32, a1_1: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_5);
    let _e3 = bitcast<u32>(a1_1);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();

    let _e6 = params.p14_;
    let _e8 = params.p15_;
    let _e10 = params.p16_;
    let _e12 = params.p17_;
    let _e14 = params.p18_;
    let _e16 = params.p19_;
    let _e18 = params.p20_;
    let _e20 = params.p21_;
    let _e22 = params.p22_;
    let _e24 = params.p23_;
    let _e26 = params.p24_;
    let _e28 = params.p25_;
    let _e30 = params.p26_;
    let _e32 = params.p27_;
    let _e34 = params.p28_;
    let _e36 = FeLocal_fe_shader_private_layout_2_(_e6, _e8, _e10, _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34);
    let _e41 = reference[i32(0u)].active_;
    let _e43 = reference[i32(0u)].active_valid;
    let _e45 = reference[i32(0u)].pending;
    let _e47 = reference[i32(0u)].index;
    let _e49 = reference[i32(0u)].zx_s;
    let _e51 = reference[i32(0u)].zy_s;
    let _e53 = reference[i32(0u)].ready_at;
    let _e54 = FeLocal_fe_shader_private_layout_0_(_e41, _e43, _e45, _e47, _e49, _e51, _e53);
    if (_e45 == 0u) {
    } else {
        let _e57 = is_input_settled(_e36);
        if _e57 {
        } else {
            local_1 = true;
        }
        let _e140 = local_1;
        if _e140 {
        } else {
            if (_e41 == 0u) {
                local_2 = 1u;
            }
            let _e66 = local_2;
            let _e70 = anchor[i32(_e66)].x0_;
            let _e72 = anchor[i32(_e66)].x1_;
            let _e74 = anchor[i32(_e66)].x2_;
            let _e76 = anchor[i32(_e66)].x3_;
            let _e78 = anchor[i32(_e66)].y0_;
            let _e80 = anchor[i32(_e66)].y1_;
            let _e82 = anchor[i32(_e66)].y2_;
            let _e84 = anchor[i32(_e66)].y3_;
            let _e86 = anchor[i32(_e66)].limit;
            let _e88 = anchor[i32(_e66)].generation;
            let _e90 = delta_from(FeLocal_fe_shader_private_layout_1_(_e70, _e72, _e74, _e76, _e78, _e80, _e82, _e84, _e86, _e88), _e36);
            let _e93 = iteration_limit(_e22, (&fe_trapped));
            if (_e86 < _e93) {
                let _e95 = cancel_pending(_e54);
                reference[i32(0u)].active_ = _e95.f0_;
                reference[i32(0u)].active_valid = _e95.f1_;
                reference[i32(0u)].pending = _e95.f2_;
                reference[i32(0u)].index = _e95.f3_;
                reference[i32(0u)].zx_s = _e95.f4_;
                reference[i32(0u)].zy_s = _e95.f5_;
                reference[i32(0u)].ready_at = _e95.f6_;
            } else {
                let _e113 = impl_trait_f32_abs(_e90.f0_);
                let _e114 = impl_trait_f32_abs(_e90.f1_);
                let _e115 = impl_trait_f32_max(_e113, _e114);
                if ((_e22 * 0.5f) < _e115) {
                    let _e119 = cancel_pending(_e54);
                    reference[i32(0u)].active_ = _e119.f0_;
                    reference[i32(0u)].active_valid = _e119.f1_;
                    reference[i32(0u)].pending = _e119.f2_;
                    reference[i32(0u)].index = _e119.f3_;
                    reference[i32(0u)].zx_s = _e119.f4_;
                    reference[i32(0u)].zy_s = _e119.f5_;
                    reference[i32(0u)].ready_at = _e119.f6_;
                }
            }
            local_1 = true;
        }
    }
    let _e142 = fe_trapped;
    trap[0u] = u32(_e142);
}
