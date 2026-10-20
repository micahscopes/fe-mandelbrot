struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_3_ {
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

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: f32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: u32,
    f1_: u32,
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

fn same_camera(a0_: FeLocal_fe_shader_private_layout_2_, a1_: FeLocal_fe_shader_private_layout_2_) -> bool {
    var local_3: bool;
    var local_4: bool = false;
    var local_5: bool = bool();

    if (a0_.f0_ == a1_.f0_) {
        if (a0_.f1_ == a1_.f1_) {
            if (a0_.f2_ == a1_.f2_) {
                if (a0_.f3_ == a1_.f3_) {
                    if (a0_.f4_ == a1_.f4_) {
                        if (a0_.f5_ == a1_.f5_) {
                            if (a0_.f6_ == a1_.f6_) {
                                if (a0_.f7_ == a1_.f7_) {
                                    if (a0_.f8_ == a1_.f8_) {
                                        if (a0_.f9_ == a1_.f9_) {
                                            local_5 = true;
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
    let _e37 = local_5;
    return _e37;
}

fn iteration_limit(a0_1: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
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
    local_7 = a0_1;
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

fn to_i32_(a0_2: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_2)), 2147483648u, (a0_2 <= -2147483600f)), 2147483647u, (a0_2 >= 2147483600f)), (a0_2 == a0_2));
}

fn from_i32_(a0_3: u32) -> f32 {
    return f32(bitcast<i32>(a0_3));
}

fn clamp_(a0_4: f32, a1_1: f32, a2_: f32) -> f32 {
    var local_14: f32;
    var local_15: bool = false;
    var local_16: f32 = f32();

    if (a0_4 < a1_1) {
        local_16 = a1_1;
    } else {
        if (a2_ < a0_4) {
            local_16 = a2_;
        } else {
            local_16 = a0_4;
        }
    }
    let _e11 = local_16;
    return _e11;
}

fn packed(a0_5: FeLocal_fe_shader_private_layout_0_) -> u32 {
    let _e4 = clamp_(a0_5.f0_, 0f, 1f);
    let _e9 = to_i32_(((_e4 * 4095f) + 0.5f));
    let _e17 = clamp_(((a0_5.f1_ * 2048f) + 512f), 0f, 1023f);
    let _e20 = to_i32_((_e17 + 0.5f));
    let _e28 = clamp_(((a0_5.f2_ * 2048f) + 512f), 0f, 1023f);
    let _e31 = to_i32_((_e28 + 0.5f));
    return (((_e9 & 4095u) | ((_e20 & 1023u) << 12u)) | (_e31 << 22u));
}

fn glitch() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_0_(0.72f, 0.18f, -0.09f));
    return _e4;
}

fn impl_trait_f32_floor(a0_6: f32) -> f32 {
    return floor(a0_6);
}

fn fract_(a0_7: f32) -> f32 {
    let _e1 = impl_trait_f32_floor(a0_7);
    return (a0_7 - _e1);
}

fn anchor(a0_8: u32) -> FeLocal_fe_shader_private_layout_0_ {
    var local_17: FeLocal_fe_shader_private_layout_0_;
    var local_18: bool = false;
    var local_19: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    switch a0_8 {
        case 0u: {
            local_19 = FeLocal_fe_shader_private_layout_0_(0.58f, 0.215f, 275f);
        }
        case 1u: {
            local_19 = FeLocal_fe_shader_private_layout_0_(0.65f, 0.24f, 335f);
        }
        case 2u: {
            local_19 = FeLocal_fe_shader_private_layout_0_(0.78f, 0.155f, 65f);
        }
        case 3u: {
            local_19 = FeLocal_fe_shader_private_layout_0_(0.73f, 0.142f, 165f);
        }
        default: {
            local_19 = FeLocal_fe_shader_private_layout_0_(0.65f, 0.127f, 235f);
        }
    }
    let _e29 = local_19;
    return _e29;
}

fn wrap_pi(a0_9: f32) -> f32 {
    let _e5 = impl_trait_f32_floor(((a0_9 / 6.2831855f) + 0.5f));
    return (a0_9 - (6.2831855f * _e5));
}

fn impl_trait_f32_abs(a0_10: f32) -> f32 {
    return bitcast<f32>((bitcast<u32>(a0_10) & 2147483647u));
}

fn sin_(a0_11: f32) -> f32 {
    let _e1 = wrap_pi(a0_11);
    let _e6 = impl_trait_f32_abs(_e1);
    let _e8 = ((1.2732395f * _e1) - ((0.40528473f * _e1) * _e6));
    let _e9 = impl_trait_f32_abs(_e8);
    return ((0.225f * ((_e8 * _e9) - _e8)) + _e8);
}

fn cos_(a0_12: f32) -> f32 {
    let _e3 = sin_((a0_12 + 1.5707964f));
    return _e3;
}

fn oklch(a0_13: f32, a1_2: f32, a2_1: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e4 = (a2_1 * 0.017453292f);
    let _e5 = cos_(_e4);
    let _e7 = sin_(_e4);
    return FeLocal_fe_shader_private_layout_0_(a0_13, (a1_2 * _e5), (a1_2 * _e7));
}

fn escape_palette(a0_14: u32, a1_3: f32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_20: u32;
    var local_21: bool = false;
    var local_22: u32 = u32();
    var local_23: u32;
    var local_24: bool = false;
    var local_25: f32 = f32();

    let _e5 = from_i32_(a0_14);
    let _e11 = fract_(((_e5 + (4f / a1_3)) / 256f));
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
            (*fe_trapped_2) = true;
        } else {
            local_22 = _e29;
        }
    }
    let _e40 = local_22;
    let _e41 = anchor(_e40);
    let _e44 = (_e41.f2_ - _e23.f2_);
    if (180f < _e44) {
        local_25 = (_e44 - 360f);
    } else {
        if (_e44 < -180f) {
            local_25 = (_e44 + 360f);
        } else {
            local_25 = _e44;
        }
    }
    let _e57 = local_25;
    let _e73 = oklch((_e23.f0_ + ((_e41.f0_ - _e23.f0_) * _e22)), (_e23.f1_ + ((_e41.f1_ - _e23.f1_) * _e22)), (_e23.f2_ + (_e57 * _e22)));
    let _e74 = packed(_e73);
    return _e74;
}

fn interior() -> u32 {
    let _e4 = packed(FeLocal_fe_shader_private_layout_0_(0.14f, 0.008f, -0.018f));
    return _e4;
}

fn progress_color(a0_15: FeLocal_fe_shader_private_layout_1_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_26: u32;
    var local_27: bool = false;
    var local_28: u32 = u32();

    if (((a0_15.f4_ & 1073741824u) == 0u) == false) {
        let _e11 = glitch();
        local_28 = _e11;
    } else {
        if (((a0_15.f4_ & 2147483648u) == 0u) == false) {
            let _e21 = escape_palette(a0_15.f5_, a0_15.f7_, fe_trapped_3);
            local_28 = _e21;
        } else {
            let _e22 = interior();
            local_28 = _e22;
        }
    }
    let _e27 = local_28;
    return _e27;
}

fn phase_order_rect(a0_16: u32, a1_4: u32, a2_2: u32, a3_: u32, a4_: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_29: u32;
    var local_30: bool = false;
    var local_31: u32 = u32();

    let _e7 = from_i32_(a1_4);
    let _e10 = from_i32_(a2_2);
    let _e13 = ((_e7 * 0.06711056f) + (_e10 * 0.00583715f));
    let _e14 = to_i32_(_e13);
    let _e15 = from_i32_(_e14);
    let _e18 = ((_e13 - _e15) * 52.982918f);
    let _e19 = to_i32_(_e18);
    let _e20 = from_i32_(_e19);
    let _e25 = (a3_ * a4_);
    let _e26 = (a3_ != 0u);
    if (_e26 && (a4_ > (4294967295u / select(1u, a3_, _e26)))) {
    } else {
        let _e32 = from_i32_(_e25);
        let _e34 = to_i32_(((_e18 - _e20) * _e32));
        if ((_e34 & 1u) == 0u) {
            local_31 = 1u;
        } else {
            if (_e25 < 1u) {
                (*fe_trapped_4) = true;
            } else {
                local_31 = (_e25 - 1u);
            }
        }
        let _e47 = local_31;
        let _e51 = (a0_16 * _e47);
        let _e52 = (a0_16 != 0u);
        if (_e52 && (_e47 > (4294967295u / select(1u, a0_16, _e52)))) {
        } else {
            if (_e51 > (4294967295u - _e34)) {
            } else {
                if (_e25 == 0u) {
                } else {
                    local_29 = ((_e51 + _e34) % _e25);
                    local_30 = true;
                }
                let _e68 = local_30;
                if _e68 {
                }
            }
            let _e70 = local_30;
            if _e70 {
            }
        }
        let _e72 = local_30;
        if _e72 {
        }
    }
    let _e75 = local_30;
    if _e75 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e77 = local_29;
    return _e77;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();

    let _e14 = params.p35_;
    let _e16 = params.p36_;
    let _e18 = params.p37_;
    let _e20 = params.p38_;
    let _e22 = params.p39_;
    let _e24 = params.p40_;
    if (0.5f <= _e24) {
    } else {
        if ((_e18 - _e20) < 60f) {
            local_1 = true;
        }
        let _e300 = local_1;
        if _e300 {
        } else {
            let _e37 = cache[i32(0u)].x0_;
            let _e39 = cache[i32(0u)].x1_;
            let _e41 = cache[i32(0u)].x2_;
            let _e43 = cache[i32(0u)].x3_;
            let _e45 = cache[i32(0u)].y0_;
            let _e47 = cache[i32(0u)].y1_;
            let _e49 = cache[i32(0u)].y2_;
            let _e51 = cache[i32(0u)].y3_;
            let _e53 = cache[i32(0u)].zoom;
            let _e55 = cache[i32(0u)].res;
            let _e57 = cache[i32(0u)].cursor;
            let _e59 = cache[i32(0u)].aa;
            let _e61 = cache[i32(0u)].budget;
            let _e63 = cache[i32(0u)].radius;
            let _e65 = cache[i32(0u)].preview_dirty;
            let _e67 = cache[i32(0u)].blur_dirty;
            let _e69 = cache[i32(0u)].epoch;
            let _e71 = cache[i32(0u)].completed;
            let _e77 = cache[i32(1u)].x0_;
            let _e79 = cache[i32(1u)].x1_;
            let _e81 = cache[i32(1u)].x2_;
            let _e83 = cache[i32(1u)].x3_;
            let _e85 = cache[i32(1u)].y0_;
            let _e87 = cache[i32(1u)].y1_;
            let _e89 = cache[i32(1u)].y2_;
            let _e91 = cache[i32(1u)].y3_;
            let _e93 = cache[i32(1u)].zoom;
            let _e95 = cache[i32(1u)].res;
            let _e97 = cache[i32(1u)].cursor;
            let _e99 = cache[i32(1u)].aa;
            let _e101 = cache[i32(1u)].budget;
            let _e103 = cache[i32(1u)].radius;
            let _e105 = cache[i32(1u)].preview_dirty;
            let _e107 = cache[i32(1u)].blur_dirty;
            let _e109 = cache[i32(1u)].epoch;
            let _e111 = cache[i32(1u)].completed;
            if (_e111 == 0u) {
            } else {
                let _e115 = iteration_limit(_e14, (&fe_trapped));
                if (_e101 < _e115) {
                    local_1 = true;
                }
                let _e294 = local_1;
                if _e294 {
                } else {
                    let _e119 = same_camera(FeLocal_fe_shader_private_layout_2_(_e77, _e79, _e81, _e83, _e85, _e87, _e89, _e91, _e93, _e95, _e97, _e99, _e101, _e103, _e105, _e107, _e109, _e111), FeLocal_fe_shader_private_layout_2_(_e37, _e39, _e41, _e43, _e45, _e47, _e49, _e51, _e53, _e55, _e57, _e59, _e61, _e63, _e65, _e67, _e69, _e71));
                    if _e119 {
                    } else {
                        local_1 = true;
                    }
                    let _e292 = local_1;
                    if _e292 {
                    } else {
                        let _e126 = to_i32_(((_e16 + 127f) / 128f));
                        let _e131 = to_i32_(((_e16 + 255f) / 256f));
                        let _e135 = (_e126 * _e131);
                        let _e136 = (_e126 != 0u);
                        if (_e136 && (_e131 > (4294967295u / select(1u, _e126, _e136)))) {
                        } else {
                            let _e141 = iteration_limit(_e14, (&fe_trapped));
                            let _e145 = ((_e141 + 2047u) / 2048u);
                            let _e150 = (_e145 != 0u);
                            if (_e150 && (_e135 > (4294967295u / select(1u, _e145, _e150)))) {
                            } else {
                                if (_e57 < (_e145 * _e135)) {
                                } else {
                                    local_1 = true;
                                }
                                let _e285 = local_1;
                                if _e285 {
                                } else {
                                    if (_e145 == 0u) {
                                    } else {
                                        let _e161 = phase_order_rect((_e57 / _e145), global_invocation_id.x, global_invocation_id.y, _e126, _e131, (&fe_trapped));
                                        let _e165 = (global_invocation_id.x * _e126);
                                        let _e166 = (global_invocation_id.x != 0u);
                                        if (_e166 && (_e126 > (4294967295u / select(1u, global_invocation_id.x, _e166)))) {
                                        } else {
                                            if (_e126 == 0u) {
                                            } else {
                                                let _e173 = (_e161 % _e126);
                                                let _e175 = (_e165 + _e173);
                                                if (_e165 > (4294967295u - _e173)) {
                                                } else {
                                                    let _e181 = (global_invocation_id.y * _e131);
                                                    let _e182 = (global_invocation_id.y != 0u);
                                                    if (_e182 && (_e131 > (4294967295u / select(1u, global_invocation_id.y, _e182)))) {
                                                    } else {
                                                        let _e187 = (_e161 / _e126);
                                                        let _e189 = (_e181 + _e187);
                                                        if (_e181 > (4294967295u - _e187)) {
                                                            fe_trapped = true;
                                                        }
                                                        let _e193 = from_i32_(_e175);
                                                        if (_e16 <= _e193) {
                                                        } else {
                                                            let _e195 = from_i32_(_e189);
                                                            if (_e16 <= _e195) {
                                                                local_1 = true;
                                                            }
                                                            let _e269 = local_1;
                                                            if _e269 {
                                                            } else {
                                                                let _e201 = ((_e189 << 11u) | _e175);
                                                                let _e205 = progress_pixels[i32(_e201)].reference_i;
                                                                let _e207 = progress_pixels[i32(_e201)].epoch;
                                                                if (_e207 == _e69) {
                                                                    if ((_e205 & 536870912u) == 0u) {
                                                                    } else {
                                                                        local_1 = true;
                                                                    }
                                                                    let _e216 = local_1;
                                                                    if _e216 {
                                                                    }
                                                                }
                                                                let _e267 = local_1;
                                                                if _e267 {
                                                                } else {
                                                                    let _e220 = snapshot_oracle[i32(_e201)].iteration;
                                                                    let _e222 = snapshot_oracle[i32(_e201)].magnitude;
                                                                    let _e224 = snapshot_oracle[i32(_e201)].flags;
                                                                    if ((_e224 & 1073741824u) == 0u) {
                                                                    } else {
                                                                        local_1 = true;
                                                                    }
                                                                    let _e265 = local_1;
                                                                    if _e265 {
                                                                    } else {
                                                                        let _e233 = (_e224 | 536870912u);
                                                                        let _e239 = progress_color(FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_1_().f0_, FeLocal_fe_shader_private_layout_1_().f1_, _e18, 0f, _e233, _e220, _e69, _e222), (&fe_trapped));
                                                                        progress_pixels[i32(_e201)].dz_re = FeLocal_fe_shader_private_layout_1_().f0_;
                                                                        progress_pixels[i32(_e201)].dz_im = FeLocal_fe_shader_private_layout_1_().f1_;
                                                                        progress_pixels[i32(_e201)].z_re = _e18;
                                                                        progress_pixels[i32(_e201)].z_im = 0f;
                                                                        progress_pixels[i32(_e201)].reference_i = _e233;
                                                                        progress_pixels[i32(_e201)].iteration = _e220;
                                                                        progress_pixels[i32(_e201)].epoch = _e69;
                                                                        progress_pixels[i32(_e201)].magnitude = _e222;
                                                                        native_pixels[i32(_e201)] = _e239;
                                                                        if (_e99 == _e22) {
                                                                            let _e255 = snapshot_pixels[i32(_e201)];
                                                                            local_2 = _e255;
                                                                        } else {
                                                                            local_2 = _e239;
                                                                        }
                                                                        let _e259 = local_2;
                                                                        antialiased_pixels[i32(_e201)] = _e259;
                                                                        local_1 = true;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        let _e273 = local_1;
                                                        if _e273 {
                                                        } else {
                                                            local_1 = true;
                                                        }
                                                    }
                                                    let _e275 = local_1;
                                                    if _e275 {
                                                    }
                                                }
                                                let _e277 = local_1;
                                                if _e277 {
                                                }
                                            }
                                            let _e279 = local_1;
                                            if _e279 {
                                            }
                                        }
                                        let _e281 = local_1;
                                        if _e281 {
                                        }
                                    }
                                    let _e283 = local_1;
                                    if _e283 {
                                    }
                                }
                            }
                            let _e287 = local_1;
                            if _e287 {
                            }
                        }
                        let _e290 = local_1;
                        if _e290 {
                        } else {
                            fe_trapped = true;
                        }
                    }
                }
            }
            let _e298 = local_1;
            if _e298 {
            } else {
                local_1 = true;
            }
        }
    }
    let _e311 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 128u)) + (global_invocation_id.z * 32768u))] = u32(_e311);
}
