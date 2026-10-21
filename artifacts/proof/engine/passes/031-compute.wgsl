struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: array<FeLocal_fe_shader_private_layout_1_, 8>,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: array<u32, 16>,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_2_,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: array<u32, 141>,
}

struct Params {
    p6_: f32,
    p7_: f32,
    p8_: f32,
    p9_: f32,
}

@group(0) @binding(0)
var<storage, read_write> proof: array<u32>;
@group(0) @binding(1)
var<storage> params: Params;
@group(0) @binding(2)
var<storage, read_write> trap: array<u32, 1>;

fn zero() -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_();
}

fn precision_lib_word_field_canonicalize_ga970_5605_(a0_: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_5: u32;
    var local_6: bool = false;

    let _e4 = (a0_ & 65535u);
    let _e7 = (_e4 + 65536u);
    if (_e4 > (4294967295u - 65536u)) {
    } else {
        if (_e7 < 1u) {
        } else {
            let _e14 = ((_e7 - 1u) >> 16u);
            let _e16 = (a0_ >> 16u);
            let _e19 = (_e16 + 65536u);
            if (_e16 > (4294967295u - 65536u)) {
            } else {
                let _e23 = (_e19 - 30720u);
                if (_e19 < 30720u) {
                } else {
                    let _e26 = (1u - _e14);
                    if (1u < _e14) {
                    } else {
                        if (_e23 < _e26) {
                        } else {
                            let _e31 = ((_e23 - _e26) >> 16u);
                            let _e36 = (_e31 * 2013265921u);
                            let _e37 = (_e31 != 0u);
                            if (_e37 && (2013265921u > (4294967295u / select(1u, _e31, _e37)))) {
                            } else {
                                if (a0_ < _e36) {
                                } else {
                                    local_5 = (a0_ - _e36);
                                    local_6 = true;
                                }
                                let _e48 = local_6;
                                if _e48 {
                                }
                            }
                            let _e50 = local_6;
                            if _e50 {
                            }
                        }
                        let _e52 = local_6;
                        if _e52 {
                        }
                    }
                    let _e54 = local_6;
                    if _e54 {
                    }
                }
                let _e56 = local_6;
                if _e56 {
                }
            }
            let _e58 = local_6;
            if _e58 {
            }
        }
        let _e60 = local_6;
        if _e60 {
        }
    }
    let _e63 = local_6;
    if _e63 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e65 = local_5;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_147b(a0_1: u32, a1_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_7: u32;
    var local_8: bool = false;

    let _e5 = (a0_1 & 65535u);
    let _e7 = (a0_1 >> 16u);
    let _e9 = (a1_ & 65535u);
    let _e11 = (a1_ >> 16u);
    let _e15 = (_e5 * _e9);
    let _e16 = (_e5 != 0u);
    if (_e16 && (_e9 > (4294967295u / select(1u, _e5, _e16)))) {
    } else {
        let _e24 = (_e5 * _e11);
        let _e25 = (_e5 != 0u);
        if (_e25 && (_e11 > (4294967295u / select(1u, _e5, _e25)))) {
        } else {
            let _e33 = (_e7 * _e9);
            let _e34 = (_e7 != 0u);
            if (_e34 && (_e9 > (4294967295u / select(1u, _e7, _e34)))) {
            } else {
                let _e42 = (_e7 * _e11);
                let _e43 = (_e7 != 0u);
                if (_e43 && (_e11 > (4294967295u / select(1u, _e7, _e43)))) {
                } else {
                    let _e49 = (_e15 >> 16u);
                    let _e51 = (_e24 & 65535u);
                    let _e53 = (_e49 + _e51);
                    if (_e49 > (4294967295u - _e51)) {
                    } else {
                        let _e57 = (_e33 & 65535u);
                        let _e59 = (_e53 + _e57);
                        if (_e53 > (4294967295u - _e57)) {
                        } else {
                            let _e66 = ((_e15 & 65535u) | (_e59 << 16u));
                            let _e68 = (_e24 >> 16u);
                            let _e70 = (_e42 + _e68);
                            if (_e42 > (4294967295u - _e68)) {
                            } else {
                                let _e74 = (_e33 >> 16u);
                                let _e76 = (_e70 + _e74);
                                if (_e70 > (4294967295u - _e74)) {
                                } else {
                                    let _e80 = (_e59 >> 16u);
                                    let _e82 = (_e76 + _e80);
                                    if (_e76 > (4294967295u - _e80)) {
                                    } else {
                                        let _e86 = (_e66 & 65535u);
                                        let _e88 = (_e66 >> 16u);
                                        let _e93 = (_e86 * 65535u);
                                        let _e94 = (_e86 != 0u);
                                        if (_e94 && (65535u > (4294967295u / select(1u, _e86, _e94)))) {
                                        } else {
                                            let _e100 = (_e93 >> 16u);
                                            let _e106 = (_e86 != 0u);
                                            if (_e106 && (30719u > (4294967295u / select(1u, _e86, _e106)))) {
                                            } else {
                                                let _e112 = ((_e86 * 30719u) & 65535u);
                                                let _e114 = (_e100 + _e112);
                                                if (_e100 > (4294967295u - _e112)) {
                                                } else {
                                                    let _e122 = (_e88 != 0u);
                                                    if (_e122 && (65535u > (4294967295u / select(1u, _e88, _e122)))) {
                                                    } else {
                                                        let _e128 = ((_e88 * 65535u) & 65535u);
                                                        if (_e114 > (4294967295u - _e128)) {
                                                        } else {
                                                            let _e139 = ((_e93 & 65535u) | (((_e114 + _e128) & 65535u) << 16u));
                                                            let _e141 = (_e139 & 65535u);
                                                            let _e143 = (_e139 >> 16u);
                                                            let _e148 = (_e141 * 30720u);
                                                            let _e149 = (_e141 != 0u);
                                                            if (_e149 && (30720u > (4294967295u / select(1u, _e141, _e149)))) {
                                                            } else {
                                                                let _e158 = (_e143 * 30720u);
                                                                let _e159 = (_e143 != 0u);
                                                                if (_e159 && (30720u > (4294967295u / select(1u, _e143, _e159)))) {
                                                                } else {
                                                                    let _e165 = (_e141 >> 16u);
                                                                    let _e167 = (_e148 & 65535u);
                                                                    let _e169 = (_e165 + _e167);
                                                                    if (_e165 > (4294967295u - _e167)) {
                                                                    } else {
                                                                        let _e173 = (_e143 & 65535u);
                                                                        let _e175 = (_e169 + _e173);
                                                                        if (_e169 > (4294967295u - _e173)) {
                                                                        } else {
                                                                            let _e184 = ((_e141 & 65535u) | ((_e175 & 65535u) << 16u));
                                                                            let _e186 = (_e148 >> 16u);
                                                                            let _e188 = (_e158 + _e186);
                                                                            if (_e158 > (4294967295u - _e186)) {
                                                                            } else {
                                                                                let _e192 = (_e143 >> 16u);
                                                                                let _e194 = (_e188 + _e192);
                                                                                if (_e188 > (4294967295u - _e192)) {
                                                                                } else {
                                                                                    let _e198 = (_e175 >> 16u);
                                                                                    let _e200 = (_e194 + _e198);
                                                                                    if (_e194 > (4294967295u - _e198)) {
                                                                                    } else {
                                                                                        let _e204 = (_e66 & 65535u);
                                                                                        let _e206 = (_e184 & 65535u);
                                                                                        if (_e204 > (4294967295u - _e206)) {
                                                                                        } else {
                                                                                            let _e212 = (_e66 >> 16u);
                                                                                            let _e214 = (_e184 >> 16u);
                                                                                            let _e216 = (_e212 + _e214);
                                                                                            if (_e212 > (4294967295u - _e214)) {
                                                                                            } else {
                                                                                                let _e220 = ((_e204 + _e206) >> 16u);
                                                                                                if (_e216 > (4294967295u - _e220)) {
                                                                                                } else {
                                                                                                    let _e226 = ((_e216 + _e220) >> 16u);
                                                                                                    let _e228 = (_e82 + _e200);
                                                                                                    if (_e82 > (4294967295u - _e200)) {
                                                                                                    } else {
                                                                                                        if (_e228 > (4294967295u - _e226)) {
                                                                                                        } else {
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_5605_((_e228 + _e226), fe_trapped_2);
                                                                                                            local_7 = _e235;
                                                                                                            local_8 = true;
                                                                                                        }
                                                                                                        let _e240 = local_8;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_8;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_8;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_8;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_8;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_8;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_8;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_8;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_8;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_8;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_8;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_8;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_8;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_8;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_8;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_8;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_8;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_8;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_8;
                                if _e276 {
                                }
                            }
                            let _e278 = local_8;
                            if _e278 {
                            }
                        }
                        let _e280 = local_8;
                        if _e280 {
                        }
                    }
                    let _e282 = local_8;
                    if _e282 {
                    }
                }
                let _e284 = local_8;
                if _e284 {
                }
            }
            let _e286 = local_8;
            if _e286 {
            }
        }
        let _e288 = local_8;
        if _e288 {
        }
    }
    let _e291 = local_8;
    if _e291 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e293 = local_7;
    return _e293;
}

fn from_u32_(a0_2: u32, fe_trapped_3: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_147b((a0_2 % 2013265921u), 1172168163u, fe_trapped_3);
    return _e5;
}

fn from_u32s(a0_3: u32, a1_1: u32, a2_: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_26_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_9: u32 = u32();
    var loop_result_2: FeLocal_fe_shader_private_layout_2_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_29_: bool;

    fixed_local_8_[0] = a0_3;
    fixed_local_8_[1] = a1_1;
    fixed_local_8_[2] = a2_;
    fixed_local_8_[3] = a3_;
    fixed_local_8_[4] = a4_;
    fixed_local_8_[5] = a5_;
    fixed_local_8_[6] = a6_;
    fixed_local_8_[7] = a7_;
    let _e19 = zero();
    fixed_local_26_ = _e19;
    local_9 = 0u;
    loop {
        let _e27 = local_9;
        let _e29 = (_e27 < 8u);
        loop_header_carry_29_ = _e29;
        if _e29 {
            let _e31 = fixed_local_8_[_e27];
            let _e32 = from_u32_(_e31, fe_trapped_4);
            fixed_local_26_.f0_[_e27].f0_ = _e32;
            local_9 = (_e27 + 1u);
            continue;
        } else {
            let _e39 = fixed_local_26_;
            loop_result_2 = _e39;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e45 = loop_result_2;
    return _e45;
}

fn load_digest_at(a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_10: FeLocal_fe_shader_private_layout_2_;
    var local_11: bool = false;

    let _e6 = proof[i32(a1_2)];
    if (a1_2 > (4294967295u - 1u)) {
    } else {
        let _e14 = proof[i32((a1_2 + 1u))];
        if (a1_2 > (4294967295u - 2u)) {
        } else {
            let _e22 = proof[i32((a1_2 + 2u))];
            if (a1_2 > (4294967295u - 3u)) {
            } else {
                let _e30 = proof[i32((a1_2 + 3u))];
                if (a1_2 > (4294967295u - 4u)) {
                } else {
                    let _e38 = proof[i32((a1_2 + 4u))];
                    if (a1_2 > (4294967295u - 5u)) {
                    } else {
                        let _e46 = proof[i32((a1_2 + 5u))];
                        if (a1_2 > (4294967295u - 6u)) {
                        } else {
                            let _e54 = proof[i32((a1_2 + 6u))];
                            if (a1_2 > (4294967295u - 7u)) {
                            } else {
                                let _e62 = proof[i32((a1_2 + 7u))];
                                let _e63 = from_u32s(_e6, _e14, _e22, _e30, _e38, _e46, _e54, _e62, fe_trapped_5);
                                local_10 = _e63;
                                local_11 = true;
                            }
                            let _e68 = local_11;
                            if _e68 {
                            }
                        }
                        let _e70 = local_11;
                        if _e70 {
                        }
                    }
                    let _e72 = local_11;
                    if _e72 {
                    }
                }
                let _e74 = local_11;
                if _e74 {
                }
            }
            let _e76 = local_11;
            if _e76 {
            }
        }
        let _e78 = local_11;
        if _e78 {
        }
    }
    let _e81 = local_11;
    if _e81 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e83 = local_10;
    return _e83;
}

fn begin_prefixed_tag(a0_4: u32, a1_3: u32, a2_1: u32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_12: FeLocal_fe_shader_private_layout_0_;
    var local_13: bool = false;
    var fixed_local_4_: array<u32, 16> = array<u32, 16>();
    var local_14: FeLocal_fe_shader_private_layout_0_;
    var local_15: bool = false;

    if ((a0_4 < 2013265921u) == false) {
        let _e11 = fixed_local_4_;
        local_12 = FeLocal_fe_shader_private_layout_0_(_e11, 2u, a2_1, 0u, 0u);
        local_13 = true;
    }
    let _e54 = local_13;
    if _e54 {
    } else {
        if ((a1_3 < 2013265921u) == false) {
        } else {
            if ((a2_1 < 2013265921u) == false) {
            } else {
                let _e28 = from_u32_(a0_4, fe_trapped_6);
                fixed_local_4_[0] = _e28;
                let _e30 = from_u32_(a1_3, fe_trapped_6);
                fixed_local_4_[1] = _e30;
                let _e32 = fixed_local_4_;
                local_14 = FeLocal_fe_shader_private_layout_0_(_e32, 2u, a2_1, 0u, 1u);
                local_15 = true;
            }
            let _e41 = local_15;
            if _e41 {
            }
        }
        let _e49 = local_15;
        if _e49 {
        } else {
            let _e42 = fixed_local_4_;
            local_14 = FeLocal_fe_shader_private_layout_0_(_e42, 2u, a2_1, 0u, 0u);
        }
        let _e51 = local_14;
        local_12 = _e51;
    }
    let _e56 = local_12;
    return _e56;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_5: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_4: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_16: u32;
    var local_17: bool = false;

    if (a1_4 < 16u) {
    } else {
        (*fe_trapped_7) = true;
    }
    let _e9 = (*a0_5).f0_[a1_4];
    return _e9;
}

fn finish_scheduled(a0_6: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_18: FeLocal_fe_shader_private_layout_3_;
    var local_19: bool = false;
    var fixed_local_19_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var local_20: u32 = u32();
    var loop_result_3: FeLocal_fe_shader_private_layout_3_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_55_: bool;
    var fixed_local_57_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    let _e4 = (*a0_6).f4_;
    if ((_e4 == 1u) == false) {
    } else {
        let _e10 = (*a0_6).f3_;
        let _e12 = (*a0_6).f2_;
        if ((_e10 == _e12) == false) {
        } else {
            let _e17 = (*a0_6).f1_;
            if ((_e17 == 0u) == false) {
            } else {
                let _e23 = (*a0_6).f0_;
                local_20 = 0u;
                loop {
                    let _e32 = local_20;
                    let _e34 = (_e32 < 8u);
                    loop_header_carry_55_ = _e34;
                    if _e34 {
                        fixed_local_57_ = FeLocal_fe_shader_private_layout_4_(_e23);
                        let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_57_), _e32, fe_trapped_8);
                        fixed_local_19_[_e32].f0_ = _e37;
                        local_20 = (_e32 + 1u);
                        continue;
                    } else {
                        let _e43 = fixed_local_19_;
                        loop_result_3 = FeLocal_fe_shader_private_layout_3_(1u, FeLocal_fe_shader_private_layout_2_(_e43));
                        loop_did_return_3 = true;
                        break;
                    }
                }
                let _e52 = loop_did_return_3;
                if _e52 {
                    let _e54 = loop_result_3;
                    local_18 = _e54;
                    local_19 = true;
                }
            }
            let _e59 = local_19;
            if _e59 {
            }
        }
        let _e61 = local_19;
        if _e61 {
        }
    }
    let _e68 = local_19;
    if _e68 {
    } else {
        let _e62 = zero();
        local_18 = FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e62);
    }
    let _e70 = local_18;
    return _e70;
}

fn require_(a0_7: ptr<function, FeLocal_fe_shader_private_layout_3_>, a1_5: bool) -> FeLocal_fe_shader_private_layout_3_ {
    var local_21: FeLocal_fe_shader_private_layout_3_;
    var local_22: bool = false;

    let _e4 = (*a0_7).f0_;
    if ((_e4 == 1u) == false) {
    } else {
        if (a1_5 == false) {
        } else {
            let _e11 = (*a0_7);
            local_21 = _e11;
            local_22 = true;
        }
        let _e16 = local_22;
        if _e16 {
        }
    }
    let _e23 = local_22;
    if _e23 {
    } else {
        let _e17 = zero();
        local_21 = FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e17);
    }
    let _e25 = local_21;
    return _e25;
}

fn digest(a0_8: ptr<function, FeLocal_fe_shader_private_layout_3_>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_23: FeLocal_fe_shader_private_layout_2_;
    var local_24: bool = false;

    let _e3 = (*a0_8).f0_;
    if ((_e3 == 1u) == false) {
        let _e8 = zero();
        local_23 = _e8;
        local_24 = true;
    }
    let _e16 = local_24;
    if _e16 {
    } else {
        let _e13 = (*a0_8).f1_;
        local_23 = _e13;
    }
    let _e18 = local_23;
    return _e18;
}

fn impl_Poseidon2Digest_field(a0_9: ptr<function, FeLocal_fe_shader_private_layout_2_>, a1_6: u32) -> u32 {
    var local_25: u32;
    var local_26: bool = false;

    if ((a1_6 < 8u) == false) {
        local_25 = 0u;
        local_26 = true;
    }
    let _e17 = local_26;
    if _e17 {
    } else {
        let _e14 = (*a0_9).f0_[a1_6].f0_;
        local_25 = _e14;
    }
    let _e19 = local_25;
    return _e19;
}

fn is_valid(a0_10: ptr<function, FeLocal_fe_shader_private_layout_3_>) -> bool {
    let _e2 = (*a0_10).f0_;
    return (_e2 == 1u);
}

fn add(a0_11: u32, a1_7: u32, fe_trapped_9: ptr<function, bool>) -> u32 {
    var local_27: u32;
    var local_28: bool = false;

    if (a0_11 > (4294967295u - a1_7)) {
        (*fe_trapped_9) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_5605_((a0_11 + a1_7), fe_trapped_9);
    return _e9;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_12: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_8: u32, a2_2: u32, fe_trapped_10: ptr<function, bool>) {
    var local_29: u32;
    var local_30: bool = false;

    if (a1_8 < 16u) {
    } else {
        (*fe_trapped_10) = true;
    }
    (*a0_12).f0_[a1_8] = a2_2;
    return;
}

fn mat4_(a0_13: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_9: u32, fe_trapped_11: ptr<function, bool>) {
    var local_31: u32;
    var local_32: bool = false;

    let _e4 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_13, a1_9, fe_trapped_11);
    if (a1_9 > (4294967295u - 1u)) {
    } else {
        let _e10 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_13, (a1_9 + 1u), fe_trapped_11);
        if (a1_9 > (4294967295u - 2u)) {
        } else {
            let _e16 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_13, (a1_9 + 2u), fe_trapped_11);
            if (a1_9 > (4294967295u - 3u)) {
            } else {
                let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_13, (a1_9 + 3u), fe_trapped_11);
                let _e23 = add(_e4, _e10, fe_trapped_11);
                let _e24 = add(_e16, _e22, fe_trapped_11);
                let _e25 = add(_e23, _e24, fe_trapped_11);
                let _e26 = add(_e25, _e10, fe_trapped_11);
                let _e27 = add(_e25, _e22, fe_trapped_11);
                let _e28 = add(_e26, _e23, fe_trapped_11);
                poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_13, a1_9, _e28, fe_trapped_11);
                if (a1_9 > (4294967295u - 1u)) {
                } else {
                    let _e34 = add(_e26, _e16, fe_trapped_11);
                    let _e35 = add(_e34, _e16, fe_trapped_11);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_13, (a1_9 + 1u), _e35, fe_trapped_11);
                    if (a1_9 > (4294967295u - 2u)) {
                    } else {
                        let _e41 = add(_e27, _e24, fe_trapped_11);
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_13, (a1_9 + 2u), _e41, fe_trapped_11);
                        if (a1_9 > (4294967295u - 3u)) {
                        } else {
                            let _e47 = add(_e27, _e4, fe_trapped_11);
                            let _e48 = add(_e47, _e4, fe_trapped_11);
                            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_13, (a1_9 + 3u), _e48, fe_trapped_11);
                            local_32 = true;
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
            let _e58 = local_32;
            if _e58 {
            }
        }
        let _e60 = local_32;
        if _e60 {
        }
    }
    let _e63 = local_32;
    if _e63 {
    } else {
        (*fe_trapped_11) = true;
    }
    return;
}

fn external_linear(a0_14: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_12: ptr<function, bool>) {
    var local_33: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_48_: bool;
    var local_34: u32 = u32();

    mat4_(a0_14, 0u, fe_trapped_12);
    mat4_(a0_14, 4u, fe_trapped_12);
    mat4_(a0_14, 8u, fe_trapped_12);
    mat4_(a0_14, 12u, fe_trapped_12);
    let _e7 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 0u, fe_trapped_12);
    let _e9 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 4u, fe_trapped_12);
    let _e10 = add(_e7, _e9, fe_trapped_12);
    let _e12 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 8u, fe_trapped_12);
    let _e13 = add(_e10, _e12, fe_trapped_12);
    let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 12u, fe_trapped_12);
    let _e16 = add(_e13, _e15, fe_trapped_12);
    let _e18 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 1u, fe_trapped_12);
    let _e20 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 5u, fe_trapped_12);
    let _e21 = add(_e18, _e20, fe_trapped_12);
    let _e23 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 9u, fe_trapped_12);
    let _e24 = add(_e21, _e23, fe_trapped_12);
    let _e26 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 13u, fe_trapped_12);
    let _e27 = add(_e24, _e26, fe_trapped_12);
    let _e29 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 2u, fe_trapped_12);
    let _e31 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 6u, fe_trapped_12);
    let _e32 = add(_e29, _e31, fe_trapped_12);
    let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 10u, fe_trapped_12);
    let _e35 = add(_e32, _e34, fe_trapped_12);
    let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 14u, fe_trapped_12);
    let _e38 = add(_e35, _e37, fe_trapped_12);
    let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 3u, fe_trapped_12);
    let _e42 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 7u, fe_trapped_12);
    let _e43 = add(_e40, _e42, fe_trapped_12);
    let _e45 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 11u, fe_trapped_12);
    let _e46 = add(_e43, _e45, fe_trapped_12);
    let _e48 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, 15u, fe_trapped_12);
    let _e49 = add(_e46, _e48, fe_trapped_12);
    local_33 = 0u;
    loop {
        let _e55 = local_33;
        let _e57 = (_e55 < 16u);
        loop_header_carry_48_ = _e57;
        if _e57 {
            switch (_e55 & 3u) {
                case 0u: {
                    local_34 = _e16;
                }
                case 1u: {
                    local_34 = _e27;
                }
                case 2u: {
                    local_34 = _e38;
                }
                default: {
                    local_34 = _e49;
                }
            }
            let _e66 = local_34;
            let _e67 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_14, _e55, fe_trapped_12);
            let _e68 = add(_e67, _e66, fe_trapped_12);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_14, _e55, _e68, fe_trapped_12);
            local_33 = (_e55 + 1u);
            continue;
        } else {
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn multiply(a0_15: u32, a1_10: u32, a2_3: u32, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_6_ {
    let _e4 = precision_lib_word_field_montgomery_mul_ga970_147b(a1_10, a2_3, fe_trapped_13);
    return FeLocal_fe_shader_private_layout_6_(FeLocal_fe_shader_private_layout_5_(a0_15), FeLocal_fe_shader_private_layout_1_(_e4));
}

fn poseidon2_power7_plan(a0_16: u32, a1_11: u32, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    let _e3 = multiply(a0_16, a1_11, a1_11, fe_trapped_14);
    let _e10 = multiply(_e3.f0_.f0_, _e3.f1_.f0_, _e3.f1_.f0_, fe_trapped_14);
    let _e15 = multiply(_e10.f0_.f0_, a1_11, _e3.f1_.f0_, fe_trapped_14);
    let _e22 = multiply(_e15.f0_.f0_, _e15.f1_.f0_, _e10.f1_.f0_, fe_trapped_14);
    return FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_5_(_e22.f0_.f0_), FeLocal_fe_shader_private_layout_1_(_e22.f1_.f0_));
}

fn internal_linear(a0_17: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_15: ptr<function, bool>) {
    var local_35: u32 = u32();
    var local_36: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_4_: bool;

    local_35 = 0u;
    local_36 = 0u;
    loop {
        let _e10 = local_35;
        let _e12 = local_36;
        let _e14 = (_e12 < 16u);
        loop_header_carry_4_ = _e14;
        if _e14 {
            let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, _e12, fe_trapped_15);
            let _e16 = add(_e10, _e15, fe_trapped_15);
            local_35 = _e16;
            local_36 = (_e12 + 1u);
            continue;
        } else {
            let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 0u, fe_trapped_15);
            let _e24 = precision_lib_word_field_montgomery_mul_ga970_147b(_e22, 1476395013u, fe_trapped_15);
            let _e25 = add(_e10, _e24, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 0u, _e25, fe_trapped_15);
            let _e28 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 1u, fe_trapped_15);
            let _e30 = precision_lib_word_field_montgomery_mul_ga970_147b(_e28, 268435454u, fe_trapped_15);
            let _e31 = add(_e10, _e30, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 1u, _e31, fe_trapped_15);
            let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 2u, fe_trapped_15);
            let _e36 = precision_lib_word_field_montgomery_mul_ga970_147b(_e34, 536870908u, fe_trapped_15);
            let _e37 = add(_e10, _e36, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 2u, _e37, fe_trapped_15);
            let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 3u, fe_trapped_15);
            let _e42 = precision_lib_word_field_montgomery_mul_ga970_147b(_e40, 134217727u, fe_trapped_15);
            let _e43 = add(_e10, _e42, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 3u, _e43, fe_trapped_15);
            let _e46 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 4u, fe_trapped_15);
            let _e48 = precision_lib_word_field_montgomery_mul_ga970_147b(_e46, 805306362u, fe_trapped_15);
            let _e49 = add(_e10, _e48, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 4u, _e49, fe_trapped_15);
            let _e52 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 5u, fe_trapped_15);
            let _e54 = precision_lib_word_field_montgomery_mul_ga970_147b(_e52, 1073741816u, fe_trapped_15);
            let _e55 = add(_e10, _e54, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 5u, _e55, fe_trapped_15);
            let _e58 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 6u, fe_trapped_15);
            let _e60 = precision_lib_word_field_montgomery_mul_ga970_147b(_e58, 1879048194u, fe_trapped_15);
            let _e61 = add(_e10, _e60, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 6u, _e61, fe_trapped_15);
            let _e64 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 7u, fe_trapped_15);
            let _e66 = precision_lib_word_field_montgomery_mul_ga970_147b(_e64, 1207959559u, fe_trapped_15);
            let _e67 = add(_e10, _e66, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 7u, _e67, fe_trapped_15);
            let _e70 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 8u, fe_trapped_15);
            let _e72 = precision_lib_word_field_montgomery_mul_ga970_147b(_e70, 939524105u, fe_trapped_15);
            let _e73 = add(_e10, _e72, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 8u, _e73, fe_trapped_15);
            let _e76 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 9u, fe_trapped_15);
            let _e78 = precision_lib_word_field_montgomery_mul_ga970_147b(_e76, 16777216u, fe_trapped_15);
            let _e79 = add(_e10, _e78, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 9u, _e79, fe_trapped_15);
            let _e82 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 10u, fe_trapped_15);
            let _e84 = precision_lib_word_field_montgomery_mul_ga970_147b(_e82, 1073741824u, fe_trapped_15);
            let _e85 = add(_e10, _e84, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 10u, _e85, fe_trapped_15);
            let _e88 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 11u, fe_trapped_15);
            let _e90 = precision_lib_word_field_montgomery_mul_ga970_147b(_e88, 536870912u, fe_trapped_15);
            let _e91 = add(_e10, _e90, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 11u, _e91, fe_trapped_15);
            let _e94 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 12u, fe_trapped_15);
            let _e96 = precision_lib_word_field_montgomery_mul_ga970_147b(_e94, 32u, fe_trapped_15);
            let _e97 = add(_e10, _e96, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 12u, _e97, fe_trapped_15);
            let _e100 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 13u, fe_trapped_15);
            let _e102 = precision_lib_word_field_montgomery_mul_ga970_147b(_e100, 1996488705u, fe_trapped_15);
            let _e103 = add(_e10, _e102, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 13u, _e103, fe_trapped_15);
            let _e106 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 14u, fe_trapped_15);
            let _e108 = precision_lib_word_field_montgomery_mul_ga970_147b(_e106, 1744830465u, fe_trapped_15);
            let _e109 = add(_e10, _e108, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 14u, _e109, fe_trapped_15);
            let _e112 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_17, 15u, fe_trapped_15);
            let _e114 = precision_lib_word_field_montgomery_mul_ga970_147b(_e112, 2013265889u, fe_trapped_15);
            let _e115 = add(_e10, _e114, fe_trapped_15);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_17, 15u, _e115, fe_trapped_15);
            loop_did_return_5 = true;
            break;
        }
    }
    return;
}

fn poseidon2_permutation_execution(a0_18: u32, a1_12: array<u32, 16>, a2_4: ptr<function, FeLocal_fe_shader_private_layout_7_>, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    var fixed_local_8_1: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_37: u32 = u32();
    var local_38: u32 = u32();
    var local_39: u32 = u32();
    var loop_result_6: FeLocal_fe_shader_private_layout_8_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_11_: bool;
    var local_40: u32 = u32();
    var local_41: u32 = u32();
    var local_42: u32 = u32();
    var local_43: u32 = u32();
    var local_44: u32 = u32();
    var local_45: u32 = u32();
    var loop_result_7: FeLocal_fe_shader_private_layout_8_;
    var loop_did_return_7: bool = false;
    var loop_header_carry_14_: bool;
    var loop_result_8: FeLocal_fe_shader_private_layout_8_;
    var loop_did_return_8: bool = false;
    var loop_header_carry_49_: bool;
    var local_46: u32 = u32();
    var local_47: u32 = u32();
    var local_48: u32 = u32();
    var loop_result_9: FeLocal_fe_shader_private_layout_8_;
    var loop_did_return_9: bool = false;
    var loop_header_carry_77_: bool;
    var local_49: u32 = u32();
    var local_50: u32 = u32();
    var local_51: u32 = u32();
    var loop_result_10: FeLocal_fe_shader_private_layout_8_;
    var loop_did_return_10: bool = false;
    var loop_header_carry_88_: bool;

    fixed_local_8_1 = FeLocal_fe_shader_private_layout_4_(a1_12);
    external_linear((&fixed_local_8_1), fe_trapped_16);
    local_37 = a0_18;
    local_38 = 0u;
    local_39 = 0u;
    loop {
        let _e17 = local_37;
        let _e19 = local_38;
        let _e21 = local_39;
        let _e23 = (_e21 < 4u);
        loop_header_carry_11_ = _e23;
        if _e23 {
            local_43 = _e17;
            local_44 = _e19;
            local_45 = 0u;
            loop {
                let _e36 = local_43;
                let _e38 = local_44;
                let _e40 = local_45;
                let _e42 = (_e40 < 16u);
                loop_header_carry_14_ = _e42;
                if _e42 {
                    if (_e38 < 141u) {
                    } else {
                        (*fe_trapped_16) = true;
                        break;
                    }
                    let _e48 = (*a2_4).f0_[_e38];
                    let _e49 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_1), _e40, fe_trapped_16);
                    let _e50 = add(_e49, _e48, fe_trapped_16);
                    let _e51 = poseidon2_power7_plan(_e36, _e50, fe_trapped_16);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_1), _e40, _e51.f1_.f0_, fe_trapped_16);
                    local_43 = _e51.f0_.f0_;
                    local_44 = (_e38 + 1u);
                    local_45 = (_e40 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e65 = local_43;
            let _e67 = local_44;
            external_linear((&fixed_local_8_1), fe_trapped_16);
            if (_e21 > (4294967295u - 1u)) {
            } else {
                local_37 = _e65;
                local_38 = _e67;
                local_39 = (_e21 + 1u);
                continue;
            }
            (*fe_trapped_16) = true;
            break;
        } else {
            local_40 = _e17;
            local_41 = _e19;
            local_42 = 0u;
            break;
        }
    }
    let _e83 = local_37;
    let _e85 = local_38;
    local_40 = _e83;
    local_41 = _e85;
    local_42 = 0u;
    loop {
        let _e92 = local_40;
        let _e94 = local_41;
        let _e96 = local_42;
        let _e98 = (_e96 < 13u);
        loop_header_carry_49_ = _e98;
        if _e98 {
            if (_e94 < 141u) {
            } else {
                (*fe_trapped_16) = true;
                break;
            }
            let _e107 = (*a2_4).f0_[_e94];
            let _e109 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_1), 0u, fe_trapped_16);
            let _e110 = add(_e109, _e107, fe_trapped_16);
            let _e111 = poseidon2_power7_plan(_e92, _e110, fe_trapped_16);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_1), 0u, _e111.f1_.f0_, fe_trapped_16);
            internal_linear((&fixed_local_8_1), fe_trapped_16);
            local_40 = _e111.f0_.f0_;
            local_41 = (_e94 + 1u);
            local_42 = (_e96 + 1u);
            continue;
        } else {
            local_46 = _e94;
            local_47 = _e92;
            local_48 = 0u;
            break;
        }
    }
    let _e130 = local_40;
    let _e132 = local_41;
    local_46 = _e132;
    local_47 = _e130;
    local_48 = 0u;
    loop {
        let _e139 = local_46;
        let _e141 = local_47;
        let _e143 = local_48;
        let _e145 = (_e143 < 4u);
        loop_header_carry_77_ = _e145;
        if _e145 {
            local_49 = _e141;
            local_50 = _e139;
            local_51 = 0u;
            loop {
                let _e155 = local_49;
                let _e157 = local_50;
                let _e159 = local_51;
                let _e161 = (_e159 < 16u);
                loop_header_carry_88_ = _e161;
                if _e161 {
                    if (_e157 < 141u) {
                    } else {
                        (*fe_trapped_16) = true;
                        break;
                    }
                    let _e167 = (*a2_4).f0_[_e157];
                    let _e168 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_1), _e159, fe_trapped_16);
                    let _e169 = add(_e168, _e167, fe_trapped_16);
                    let _e170 = poseidon2_power7_plan(_e155, _e169, fe_trapped_16);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_1), _e159, _e170.f1_.f0_, fe_trapped_16);
                    local_49 = _e170.f0_.f0_;
                    local_50 = (_e157 + 1u);
                    local_51 = (_e159 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e184 = local_49;
            let _e186 = local_50;
            external_linear((&fixed_local_8_1), fe_trapped_16);
            if (_e143 > (4294967295u - 1u)) {
            } else {
                local_46 = _e186;
                local_47 = _e184;
                local_48 = (_e143 + 1u);
                continue;
            }
            (*fe_trapped_16) = true;
            break;
        } else {
            let _e197 = fixed_local_8_1.f0_;
            loop_result_9 = FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_5_(_e141), _e197);
            loop_did_return_9 = true;
            break;
        }
    }
    let _e205 = loop_result_9;
    return _e205;
}

fn permute(a0_19: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_13: ptr<function, FeLocal_fe_shader_private_layout_7_>, fe_trapped_17: ptr<function, bool>) {
    let _e4 = (*a0_19).f0_;
    let _e6 = poseidon2_permutation_execution(0u, _e4, a1_13, fe_trapped_17);
    (*a0_19).f0_ = _e6.f1_;
    return;
}

fn absorb_scheduled_block(a0_20: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_14: ptr<function, array<FeLocal_fe_shader_private_layout_1_, 8>>, a2_5: u32, a3_1: bool, fe_trapped_18: ptr<function, bool>) {
    var local_52: u32;
    var local_53: bool = false;
    var local_54: u32 = u32();
    var local_55: u32;
    var local_56: bool = false;
    var local_57: bool = bool();
    var local_58: bool = bool();
    var local_59: u32 = u32();
    var fixed_local_643_: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var fixed_local_649_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_60: u32 = u32();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_652_: bool;
    var local_61: u32 = u32();

    let _e10 = ((8u < a2_5) == false);
    let _e12 = (*a0_20).f3_;
    let _e14 = (*a0_20).f2_;
    let _e17 = ((_e14 < _e12) == false);
    if _e17 {
        let _e19 = (*a0_20).f2_;
        let _e21 = (*a0_20).f3_;
        if (_e19 < _e21) {
            (*fe_trapped_18) = true;
        } else {
            local_54 = (_e19 - _e21);
        }
    }
    let _e28 = local_54;
    let _e33 = (*a0_20).f1_;
    let _e37 = (*a0_20).f1_;
    if (_e37 > (4294967295u - a2_5)) {
    } else {
        let _e47 = (*a0_20).f3_;
        if (_e47 > (4294967295u - a2_5)) {
        } else {
            let _e53 = (*a0_20).f2_;
            let _e56 = (*a0_20).f1_;
            if (_e56 > (4294967295u - a2_5)) {
            } else {
                if (((_e47 + a2_5) == _e53) == a3_1) {
                    if (((_e56 + a2_5) == 8u) | a3_1) {
                        local_57 = true;
                    }
                }
                let _e70 = local_57;
                let _e72 = (*a0_20).f4_;
                if (_e72 == 1u) {
                    if ((_e10 == false) | (_e17 == false)) {
                    } else {
                        if ((((_e28 < a2_5) == false) == false) | ((_e33 < 8u) == false)) {
                        } else {
                            if ((((8u < (_e37 + a2_5)) == false) == false) | (_e70 == false)) {
                            } else {
                                local_58 = true;
                            }
                        }
                    }
                }
                let _e94 = local_58;
                if _e10 {
                    local_59 = a2_5;
                } else {
                    local_59 = 8u;
                }
                let _e99 = local_59;
                fixed_local_643_ = FeLocal_fe_shader_private_layout_7_(array<u32, 141>(1582131512u, 1899519471u, 1641921850u, 462688640u, 1293997949u, 1380417575u, 1932416963u, 283521298u, 1016708647u, 35751290u, 1270782647u, 851730739u, 795004022u, 929571430u, 523703523u, 1593957757u, 895976710u, 1742343460u, 917700746u, 1516725708u, 1170237629u, 785693164u, 613651155u, 352999196u, 678775274u, 1005433272u, 1704854670u, 1174551920u, 508930349u, 530338447u, 1327158816u, 1417652352u, 1153538870u, 583201050u, 397833841u, 1440603828u, 454600685u, 174490638u, 171758601u, 1998476616u, 1403697810u, 1807736944u, 450348306u, 1458895865u, 787037868u, 1063762964u, 1987002214u, 481645916u, 1231767638u, 1323639433u, 238360103u, 2012412459u, 1024945356u, 1108359895u, 1284135849u, 606928406u, 1021455954u, 719347978u, 659671051u, 769588663u, 805534062u, 592213995u, 1752728055u, 663410947u, 250494022u, 528496384u, 1472966118u, 977089650u, 1885890237u, 1094557811u, 147492661u, 664163003u, 398852570u, 336233633u, 1628648315u, 888594966u, 586791090u, 999830298u, 304461056u, 552699684u, 450698925u, 667466464u, 1736509752u, 1327760865u, 1153241151u, 816675655u, 1076172858u, 1914832527u, 1668723429u, 1365579850u, 975704528u, 1031625628u, 1393317533u, 1554700828u, 1023828605u, 1610378860u, 347744760u, 1909572073u, 739227895u, 428565985u, 633143046u, 121797685u, 94048546u, 1369350241u, 1250010422u, 114268841u, 515033604u, 49052844u, 1962329907u, 1380892638u, 1860017417u, 64711457u, 9758460u, 1681838395u, 710850601u, 1020228997u, 1414164790u, 1531515535u, 36158805u, 713604525u, 89935127u, 1870801994u, 395985906u, 1122769045u, 1760811055u, 819787042u, 134654834u, 1755145179u, 18433016u, 1701878989u, 1782339297u, 1483861396u, 962480061u, 1857590724u, 222440409u, 63223417u, 515206622u, 1348364213u, 973414686u, 1591066884u, 705852913u));
                let _e246 = (*a0_20).f0_;
                fixed_local_649_ = FeLocal_fe_shader_private_layout_4_(_e246);
                local_60 = 0u;
                loop {
                    let _e255 = local_60;
                    let _e256 = (_e255 < _e99);
                    loop_header_carry_652_ = _e256;
                    if _e256 {
                        let _e258 = (*a0_20).f1_;
                        if (_e258 > (4294967295u - _e255)) {
                            (*fe_trapped_18) = true;
                            break;
                        }
                        let _e266 = (*a1_14)[_e255].f0_;
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_649_), (_e258 + _e255), _e266, fe_trapped_18);
                        local_60 = (_e255 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                permute((&fixed_local_649_), (&fixed_local_643_), fe_trapped_18);
                let _e272 = fixed_local_649_.f0_;
                (*a0_20).f0_ = _e272;
                (*a0_20).f1_ = 0u;
                let _e277 = (*a0_20).f3_;
                if (_e277 > (4294967295u - a2_5)) {
                    (*fe_trapped_18) = true;
                }
                (*a0_20).f3_ = (_e277 + a2_5);
                if _e94 {
                    local_61 = 1u;
                }
                let _e288 = local_61;
                (*a0_20).f4_ = _e288;
                local_56 = true;
            }
            let _e293 = local_56;
            if _e293 {
            }
        }
        let _e295 = local_56;
        if _e295 {
        }
    }
    let _e298 = local_56;
    if _e298 {
    } else {
        (*fe_trapped_18) = true;
    }
    return;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_15_: bool;
    var fixed_local_29_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_40_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_1: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_43_: bool;
    var local_2: u32 = u32();
    var local_3: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var fixed_local_113_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var local_4: u32 = u32();
    var fixed_local_117_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_119_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_121_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_133_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();

    local = 0u;
    loop {
        let _e8 = local;
        let _e10 = (_e8 < 2u);
        loop_header_carry_15_ = _e10;
        if _e10 {
            let _e14 = ((_e8 * 13u) + 12u);
            let _e19 = load_digest_at((513822u + (_e14 << 3u)), (&fe_trapped));
            fixed_local_29_ = _e19;
            let _e26 = proof[i32((514078u + _e14))];
            let _e32 = begin_prefixed_tag(1179725874u, 9u, 9u, (&fe_trapped));
            fixed_local_40_ = _e32;
            local_1 = 0u;
            loop {
                let _e40 = local_1;
                let _e42 = (_e40 < 2u);
                loop_header_carry_43_ = _e42;
                if _e42 {
                    if (_e40 == 0u) {
                        local_2 = 6u;
                    } else {
                        local_2 = 3u;
                    }
                    let _e52 = local_2;
                    if (_e40 == 0u) {
                        let _e58 = impl_Poseidon2Digest_field((&fixed_local_29_), 0u);
                        let _e60 = impl_Poseidon2Digest_field((&fixed_local_29_), 1u);
                        let _e62 = impl_Poseidon2Digest_field((&fixed_local_29_), 2u);
                        let _e64 = impl_Poseidon2Digest_field((&fixed_local_29_), 3u);
                        let _e66 = impl_Poseidon2Digest_field((&fixed_local_29_), 4u);
                        let _e68 = impl_Poseidon2Digest_field((&fixed_local_29_), 5u);
                        local_3 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e58), FeLocal_fe_shader_private_layout_1_(_e60), FeLocal_fe_shader_private_layout_1_(_e62), FeLocal_fe_shader_private_layout_1_(_e64), FeLocal_fe_shader_private_layout_1_(_e66), FeLocal_fe_shader_private_layout_1_(_e68), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
                    } else {
                        let _e79 = impl_Poseidon2Digest_field((&fixed_local_29_), 6u);
                        let _e81 = impl_Poseidon2Digest_field((&fixed_local_29_), 7u);
                        let _e83 = from_u32_(1u, (&fe_trapped));
                        local_3 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e79), FeLocal_fe_shader_private_layout_1_(_e81), FeLocal_fe_shader_private_layout_1_(_e83), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
                    }
                    let _e96 = local_3;
                    fixed_local_113_ = _e96;
                    absorb_scheduled_block((&fixed_local_40_), (&fixed_local_113_), _e52, (_e40 == 1u), (&fe_trapped));
                    local_1 = (_e40 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e104 = finish_scheduled((&fixed_local_40_), (&fe_trapped));
            fixed_local_117_ = _e104;
            let _e107 = require_((&fixed_local_117_), (_e26 == 1u));
            fixed_local_119_ = _e107;
            let _e110 = digest((&fixed_local_119_));
            fixed_local_121_ = _e110;
            let _e114 = impl_Poseidon2Digest_field((&fixed_local_121_), 0u);
            let _e116 = precision_lib_word_field_montgomery_mul_ga970_147b(_e114, 1u, (&fe_trapped));
            proof[i32((514131u + _e8))] = (_e116 & 2047u);
            fixed_local_133_ = _e107;
            let _e127 = is_valid((&fixed_local_133_));
            if _e127 {
                local_4 = 1u;
            } else {
                local_4 = 0u;
            }
            let _e133 = local_4;
            proof[i32((516077u + _e8))] = _e133;
            local = (_e8 + 1u);
            continue;
        } else {
            loop_did_return = true;
            break;
        }
    }
    let _e143 = fe_trapped;
    trap[0u] = u32(_e143);
}
