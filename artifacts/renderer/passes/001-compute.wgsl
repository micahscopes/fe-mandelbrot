struct FeLocal_fe_shader_private_layout_0_ {
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

fn iteration_limit(a0_: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_3: u32 = u32();
    var local_4: f32 = f32();
    var local_5: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_6: u32 = u32();
    var local_7: f32 = f32();
    var local_8: u32;
    var local_9: bool = false;
    var local_10: u32 = u32();

    local_3 = 0u;
    local_4 = a0_;
    local_5 = 0u;
    loop {
        let _e12 = local_3;
        let _e14 = local_4;
        let _e16 = local_5;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_6 = (_e12 + 1u);
                    local_7 = (_e14 * 2f);
                }
            } else {
                local_6 = _e12;
                local_7 = _e14;
            }
            let _e36 = local_6;
            let _e38 = local_7;
            local_3 = _e36;
            local_4 = _e38;
            local_5 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_3;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_10 = 8192u;
        } else {
            local_10 = _e60;
        }
        let _e71 = local_10;
        local_8 = _e71;
        local_9 = true;
    }
    let _e77 = local_9;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_8;
    return _e79;
}

fn impl_trait_f32_abs(a0_1: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_1) & 2147483647u));
}

fn impl_trait_f32_max(a0_2: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_2);
    let _e3 = bitcast<u32>(a1_);
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
    let _e24 = params.p24_;
    let _e26 = params.p25_;
    let _e28 = params.p27_;
    let _e34 = reference[i32(0u)].active_;
    let _e36 = reference[i32(0u)].active_valid;
    let _e38 = reference[i32(0u)].pending;
    let _e40 = reference[i32(0u)].ready_at;
    if (_e38 == 0u) {
    } else {
        if (0.5f <= _e28) {
        } else {
            if ((_e24 - _e26) < 60f) {
                local_1 = true;
            }
            let _e130 = local_1;
            if _e130 {
            } else {
                if (_e34 == 0u) {
                    local_2 = 1u;
                }
                let _e56 = local_2;
                let _e60 = anchor[i32(_e56)].x0_;
                let _e62 = anchor[i32(_e56)].x1_;
                let _e64 = anchor[i32(_e56)].x2_;
                let _e66 = anchor[i32(_e56)].x3_;
                let _e68 = anchor[i32(_e56)].y0_;
                let _e70 = anchor[i32(_e56)].y1_;
                let _e72 = anchor[i32(_e56)].y2_;
                let _e74 = anchor[i32(_e56)].y3_;
                let _e76 = anchor[i32(_e56)].limit;
                let _e91 = iteration_limit(_e22, (&fe_trapped));
                if (_e76 < _e91) {
                    reference[i32(0u)].active_ = _e34;
                    reference[i32(0u)].active_valid = _e36;
                    reference[i32(0u)].pending = 0u;
                    reference[i32(0u)].index = 0u;
                    reference[i32(0u)].zx_s = 0u;
                    reference[i32(0u)].zy_s = 0u;
                    reference[i32(0u)].ready_at = _e40;
                } else {
                    let _e107 = impl_trait_f32_abs((((_e6 - _e60) + (_e8 - _e62)) + ((_e10 - _e64) + (_e12 - _e66))));
                    let _e108 = impl_trait_f32_abs((((_e14 - _e68) + (_e16 - _e70)) + ((_e18 - _e72) + (_e20 - _e74))));
                    let _e109 = impl_trait_f32_max(_e107, _e108);
                    if ((_e22 * 0.5f) < _e109) {
                        reference[i32(0u)].active_ = _e34;
                        reference[i32(0u)].active_valid = _e36;
                        reference[i32(0u)].pending = 0u;
                        reference[i32(0u)].index = 0u;
                        reference[i32(0u)].zx_s = 0u;
                        reference[i32(0u)].zy_s = 0u;
                        reference[i32(0u)].ready_at = _e40;
                    }
                }
                local_1 = true;
            }
        }
        let _e132 = local_1;
        if _e132 {
        }
    }
    let _e134 = fe_trapped;
    trap[0u] = u32(_e134);
}
