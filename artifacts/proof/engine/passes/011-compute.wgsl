struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: array<FeLocal_fe_shader_private_layout_0_, 8>,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: array<u32, 141>,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: FeLocal_fe_shader_private_layout_2_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
    f1_: FeLocal_fe_shader_private_layout_9_,
    f2_: FeLocal_fe_shader_private_layout_9_,
    f3_: FeLocal_fe_shader_private_layout_9_,
    f4_: u32,
}

struct Params {
    p19_: f32,
    p20_: f32,
    p21_: f32,
    p22_: f32,
}

@group(0) @binding(0)
var<storage, read_write> proof: array<u32>;
@group(0) @binding(1)
var<storage, read_write> fri_scratch: array<u32>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 4096>;

fn zero() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn precision_lib_word_field_canonicalize_ga970_5605_(a0_: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_6: u32;
    var local_7: bool = false;

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
                                    local_6 = (a0_ - _e36);
                                    local_7 = true;
                                }
                                let _e48 = local_7;
                                if _e48 {
                                }
                            }
                            let _e50 = local_7;
                            if _e50 {
                            }
                        }
                        let _e52 = local_7;
                        if _e52 {
                        }
                    }
                    let _e54 = local_7;
                    if _e54 {
                    }
                }
                let _e56 = local_7;
                if _e56 {
                }
            }
            let _e58 = local_7;
            if _e58 {
            }
        }
        let _e60 = local_7;
        if _e60 {
        }
    }
    let _e63 = local_7;
    if _e63 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e65 = local_6;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_147b(a0_1: u32, a1_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_8: u32;
    var local_9: bool = false;

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
                                                                                                            local_8 = _e235;
                                                                                                            local_9 = true;
                                                                                                        }
                                                                                                        let _e240 = local_9;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_9;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_9;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_9;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_9;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_9;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_9;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_9;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_9;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_9;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_9;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_9;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_9;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_9;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_9;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_9;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_9;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_9;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_9;
                                if _e276 {
                                }
                            }
                            let _e278 = local_9;
                            if _e278 {
                            }
                        }
                        let _e280 = local_9;
                        if _e280 {
                        }
                    }
                    let _e282 = local_9;
                    if _e282 {
                    }
                }
                let _e284 = local_9;
                if _e284 {
                }
            }
            let _e286 = local_9;
            if _e286 {
            }
        }
        let _e288 = local_9;
        if _e288 {
        }
    }
    let _e291 = local_9;
    if _e291 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e293 = local_8;
    return _e293;
}

fn from_u32_(a0_2: u32, fe_trapped_3: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_147b((a0_2 % 2013265921u), 1172168163u, fe_trapped_3);
    return _e5;
}

fn from_u32s(a0_3: u32, a1_1: u32, a2_: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_26_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_10: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return: bool = false;
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
    local_10 = 0u;
    loop {
        let _e27 = local_10;
        let _e29 = (_e27 < 8u);
        loop_header_carry_29_ = _e29;
        if _e29 {
            let _e31 = fixed_local_8_[_e27];
            let _e32 = from_u32_(_e31, fe_trapped_4);
            fixed_local_26_.f0_[_e27].f0_ = _e32;
            local_10 = (_e27 + 1u);
            continue;
        } else {
            let _e39 = fixed_local_26_;
            loop_result = _e39;
            loop_did_return = true;
            break;
        }
    }
    let _e45 = loop_result;
    return _e45;
}

fn load_digest_at(a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_11: FeLocal_fe_shader_private_layout_1_;
    var local_12: bool = false;

    let _e6 = fri_scratch[i32(a1_2)];
    if (a1_2 > (4294967295u - 1u)) {
    } else {
        let _e14 = fri_scratch[i32((a1_2 + 1u))];
        if (a1_2 > (4294967295u - 2u)) {
        } else {
            let _e22 = fri_scratch[i32((a1_2 + 2u))];
            if (a1_2 > (4294967295u - 3u)) {
            } else {
                let _e30 = fri_scratch[i32((a1_2 + 3u))];
                if (a1_2 > (4294967295u - 4u)) {
                } else {
                    let _e38 = fri_scratch[i32((a1_2 + 4u))];
                    if (a1_2 > (4294967295u - 5u)) {
                    } else {
                        let _e46 = fri_scratch[i32((a1_2 + 5u))];
                        if (a1_2 > (4294967295u - 6u)) {
                        } else {
                            let _e54 = fri_scratch[i32((a1_2 + 6u))];
                            if (a1_2 > (4294967295u - 7u)) {
                            } else {
                                let _e62 = fri_scratch[i32((a1_2 + 7u))];
                                let _e63 = from_u32s(_e6, _e14, _e22, _e30, _e38, _e46, _e54, _e62, fe_trapped_5);
                                local_11 = _e63;
                                local_12 = true;
                            }
                            let _e68 = local_12;
                            if _e68 {
                            }
                        }
                        let _e70 = local_12;
                        if _e70 {
                        }
                    }
                    let _e72 = local_12;
                    if _e72 {
                    }
                }
                let _e74 = local_12;
                if _e74 {
                }
            }
            let _e76 = local_12;
            if _e76 {
            }
        }
        let _e78 = local_12;
        if _e78 {
        }
    }
    let _e81 = local_12;
    if _e81 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e83 = local_11;
    return _e83;
}

fn impl_Poseidon2State_field(a0_4: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_3: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_13: u32;
    var local_14: bool = false;

    if (a1_3 < 16u) {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e9 = (*a0_4).f0_[a1_3];
    return _e9;
}

fn add(a0_5: u32, a1_4: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_15: u32;
    var local_16: bool = false;

    if (a0_5 > (4294967295u - a1_4)) {
        (*fe_trapped_7) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_5605_((a0_5 + a1_4), fe_trapped_7);
    return _e9;
}

fn set_field(a0_6: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_5: u32, a2_1: u32, fe_trapped_8: ptr<function, bool>) {
    var local_17: u32;
    var local_18: bool = false;

    if (a1_5 < 16u) {
    } else {
        (*fe_trapped_8) = true;
    }
    (*a0_6).f0_[a1_5] = a2_1;
    return;
}

fn mat4_(a0_7: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_6: u32, fe_trapped_9: ptr<function, bool>) {
    var local_19: u32;
    var local_20: bool = false;

    let _e4 = impl_Poseidon2State_field(a0_7, a1_6, fe_trapped_9);
    if (a1_6 > (4294967295u - 1u)) {
    } else {
        let _e10 = impl_Poseidon2State_field(a0_7, (a1_6 + 1u), fe_trapped_9);
        if (a1_6 > (4294967295u - 2u)) {
        } else {
            let _e16 = impl_Poseidon2State_field(a0_7, (a1_6 + 2u), fe_trapped_9);
            if (a1_6 > (4294967295u - 3u)) {
            } else {
                let _e22 = impl_Poseidon2State_field(a0_7, (a1_6 + 3u), fe_trapped_9);
                let _e23 = add(_e4, _e10, fe_trapped_9);
                let _e24 = add(_e16, _e22, fe_trapped_9);
                let _e25 = add(_e23, _e24, fe_trapped_9);
                let _e26 = add(_e25, _e10, fe_trapped_9);
                let _e27 = add(_e25, _e22, fe_trapped_9);
                let _e28 = add(_e26, _e23, fe_trapped_9);
                set_field(a0_7, a1_6, _e28, fe_trapped_9);
                if (a1_6 > (4294967295u - 1u)) {
                } else {
                    let _e34 = add(_e26, _e16, fe_trapped_9);
                    let _e35 = add(_e34, _e16, fe_trapped_9);
                    set_field(a0_7, (a1_6 + 1u), _e35, fe_trapped_9);
                    if (a1_6 > (4294967295u - 2u)) {
                    } else {
                        let _e41 = add(_e27, _e24, fe_trapped_9);
                        set_field(a0_7, (a1_6 + 2u), _e41, fe_trapped_9);
                        if (a1_6 > (4294967295u - 3u)) {
                        } else {
                            let _e47 = add(_e27, _e4, fe_trapped_9);
                            let _e48 = add(_e47, _e4, fe_trapped_9);
                            set_field(a0_7, (a1_6 + 3u), _e48, fe_trapped_9);
                            local_20 = true;
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
            let _e58 = local_20;
            if _e58 {
            }
        }
        let _e60 = local_20;
        if _e60 {
        }
    }
    let _e63 = local_20;
    if _e63 {
    } else {
        (*fe_trapped_9) = true;
    }
    return;
}

fn external_linear(a0_8: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_10: ptr<function, bool>) {
    var local_21: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_48_: bool;
    var local_22: u32 = u32();

    mat4_(a0_8, 0u, fe_trapped_10);
    mat4_(a0_8, 4u, fe_trapped_10);
    mat4_(a0_8, 8u, fe_trapped_10);
    mat4_(a0_8, 12u, fe_trapped_10);
    let _e7 = impl_Poseidon2State_field(a0_8, 0u, fe_trapped_10);
    let _e9 = impl_Poseidon2State_field(a0_8, 4u, fe_trapped_10);
    let _e10 = add(_e7, _e9, fe_trapped_10);
    let _e12 = impl_Poseidon2State_field(a0_8, 8u, fe_trapped_10);
    let _e13 = add(_e10, _e12, fe_trapped_10);
    let _e15 = impl_Poseidon2State_field(a0_8, 12u, fe_trapped_10);
    let _e16 = add(_e13, _e15, fe_trapped_10);
    let _e18 = impl_Poseidon2State_field(a0_8, 1u, fe_trapped_10);
    let _e20 = impl_Poseidon2State_field(a0_8, 5u, fe_trapped_10);
    let _e21 = add(_e18, _e20, fe_trapped_10);
    let _e23 = impl_Poseidon2State_field(a0_8, 9u, fe_trapped_10);
    let _e24 = add(_e21, _e23, fe_trapped_10);
    let _e26 = impl_Poseidon2State_field(a0_8, 13u, fe_trapped_10);
    let _e27 = add(_e24, _e26, fe_trapped_10);
    let _e29 = impl_Poseidon2State_field(a0_8, 2u, fe_trapped_10);
    let _e31 = impl_Poseidon2State_field(a0_8, 6u, fe_trapped_10);
    let _e32 = add(_e29, _e31, fe_trapped_10);
    let _e34 = impl_Poseidon2State_field(a0_8, 10u, fe_trapped_10);
    let _e35 = add(_e32, _e34, fe_trapped_10);
    let _e37 = impl_Poseidon2State_field(a0_8, 14u, fe_trapped_10);
    let _e38 = add(_e35, _e37, fe_trapped_10);
    let _e40 = impl_Poseidon2State_field(a0_8, 3u, fe_trapped_10);
    let _e42 = impl_Poseidon2State_field(a0_8, 7u, fe_trapped_10);
    let _e43 = add(_e40, _e42, fe_trapped_10);
    let _e45 = impl_Poseidon2State_field(a0_8, 11u, fe_trapped_10);
    let _e46 = add(_e43, _e45, fe_trapped_10);
    let _e48 = impl_Poseidon2State_field(a0_8, 15u, fe_trapped_10);
    let _e49 = add(_e46, _e48, fe_trapped_10);
    local_21 = 0u;
    loop {
        let _e55 = local_21;
        let _e57 = (_e55 < 16u);
        loop_header_carry_48_ = _e57;
        if _e57 {
            switch (_e55 & 3u) {
                case 0u: {
                    local_22 = _e16;
                }
                case 1u: {
                    local_22 = _e27;
                }
                case 2u: {
                    local_22 = _e38;
                }
                default: {
                    local_22 = _e49;
                }
            }
            let _e66 = local_22;
            let _e67 = impl_Poseidon2State_field(a0_8, _e55, fe_trapped_10);
            let _e68 = add(_e67, _e66, fe_trapped_10);
            set_field(a0_8, _e55, _e68, fe_trapped_10);
            local_21 = (_e55 + 1u);
            continue;
        } else {
            loop_did_return_1 = true;
            break;
        }
    }
    return;
}

fn multiply(a0_9: u32, a1_7: u32, a2_2: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    let _e4 = precision_lib_word_field_montgomery_mul_ga970_147b(a1_7, a2_2, fe_trapped_11);
    return FeLocal_fe_shader_private_layout_5_(FeLocal_fe_shader_private_layout_2_(a0_9), FeLocal_fe_shader_private_layout_0_(_e4));
}

fn poseidon2_power7_plan(a0_10: u32, a1_8: u32, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_8_ {
    let _e3 = multiply(a0_10, a1_8, a1_8, fe_trapped_12);
    let _e10 = multiply(_e3.f0_.f0_, _e3.f1_.f0_, _e3.f1_.f0_, fe_trapped_12);
    let _e15 = multiply(_e10.f0_.f0_, a1_8, _e3.f1_.f0_, fe_trapped_12);
    let _e22 = multiply(_e15.f0_.f0_, _e15.f1_.f0_, _e10.f1_.f0_, fe_trapped_12);
    return FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_2_(_e22.f0_.f0_), FeLocal_fe_shader_private_layout_0_(_e22.f1_.f0_));
}

fn internal_linear(a0_11: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_13: ptr<function, bool>) {
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_4_: bool;

    local_23 = 0u;
    local_24 = 0u;
    loop {
        let _e10 = local_23;
        let _e12 = local_24;
        let _e14 = (_e12 < 16u);
        loop_header_carry_4_ = _e14;
        if _e14 {
            let _e15 = impl_Poseidon2State_field(a0_11, _e12, fe_trapped_13);
            let _e16 = add(_e10, _e15, fe_trapped_13);
            local_23 = _e16;
            local_24 = (_e12 + 1u);
            continue;
        } else {
            let _e22 = impl_Poseidon2State_field(a0_11, 0u, fe_trapped_13);
            let _e24 = precision_lib_word_field_montgomery_mul_ga970_147b(_e22, 1476395013u, fe_trapped_13);
            let _e25 = add(_e10, _e24, fe_trapped_13);
            set_field(a0_11, 0u, _e25, fe_trapped_13);
            let _e28 = impl_Poseidon2State_field(a0_11, 1u, fe_trapped_13);
            let _e30 = precision_lib_word_field_montgomery_mul_ga970_147b(_e28, 268435454u, fe_trapped_13);
            let _e31 = add(_e10, _e30, fe_trapped_13);
            set_field(a0_11, 1u, _e31, fe_trapped_13);
            let _e34 = impl_Poseidon2State_field(a0_11, 2u, fe_trapped_13);
            let _e36 = precision_lib_word_field_montgomery_mul_ga970_147b(_e34, 536870908u, fe_trapped_13);
            let _e37 = add(_e10, _e36, fe_trapped_13);
            set_field(a0_11, 2u, _e37, fe_trapped_13);
            let _e40 = impl_Poseidon2State_field(a0_11, 3u, fe_trapped_13);
            let _e42 = precision_lib_word_field_montgomery_mul_ga970_147b(_e40, 134217727u, fe_trapped_13);
            let _e43 = add(_e10, _e42, fe_trapped_13);
            set_field(a0_11, 3u, _e43, fe_trapped_13);
            let _e46 = impl_Poseidon2State_field(a0_11, 4u, fe_trapped_13);
            let _e48 = precision_lib_word_field_montgomery_mul_ga970_147b(_e46, 805306362u, fe_trapped_13);
            let _e49 = add(_e10, _e48, fe_trapped_13);
            set_field(a0_11, 4u, _e49, fe_trapped_13);
            let _e52 = impl_Poseidon2State_field(a0_11, 5u, fe_trapped_13);
            let _e54 = precision_lib_word_field_montgomery_mul_ga970_147b(_e52, 1073741816u, fe_trapped_13);
            let _e55 = add(_e10, _e54, fe_trapped_13);
            set_field(a0_11, 5u, _e55, fe_trapped_13);
            let _e58 = impl_Poseidon2State_field(a0_11, 6u, fe_trapped_13);
            let _e60 = precision_lib_word_field_montgomery_mul_ga970_147b(_e58, 1879048194u, fe_trapped_13);
            let _e61 = add(_e10, _e60, fe_trapped_13);
            set_field(a0_11, 6u, _e61, fe_trapped_13);
            let _e64 = impl_Poseidon2State_field(a0_11, 7u, fe_trapped_13);
            let _e66 = precision_lib_word_field_montgomery_mul_ga970_147b(_e64, 1207959559u, fe_trapped_13);
            let _e67 = add(_e10, _e66, fe_trapped_13);
            set_field(a0_11, 7u, _e67, fe_trapped_13);
            let _e70 = impl_Poseidon2State_field(a0_11, 8u, fe_trapped_13);
            let _e72 = precision_lib_word_field_montgomery_mul_ga970_147b(_e70, 939524105u, fe_trapped_13);
            let _e73 = add(_e10, _e72, fe_trapped_13);
            set_field(a0_11, 8u, _e73, fe_trapped_13);
            let _e76 = impl_Poseidon2State_field(a0_11, 9u, fe_trapped_13);
            let _e78 = precision_lib_word_field_montgomery_mul_ga970_147b(_e76, 16777216u, fe_trapped_13);
            let _e79 = add(_e10, _e78, fe_trapped_13);
            set_field(a0_11, 9u, _e79, fe_trapped_13);
            let _e82 = impl_Poseidon2State_field(a0_11, 10u, fe_trapped_13);
            let _e84 = precision_lib_word_field_montgomery_mul_ga970_147b(_e82, 1073741824u, fe_trapped_13);
            let _e85 = add(_e10, _e84, fe_trapped_13);
            set_field(a0_11, 10u, _e85, fe_trapped_13);
            let _e88 = impl_Poseidon2State_field(a0_11, 11u, fe_trapped_13);
            let _e90 = precision_lib_word_field_montgomery_mul_ga970_147b(_e88, 536870912u, fe_trapped_13);
            let _e91 = add(_e10, _e90, fe_trapped_13);
            set_field(a0_11, 11u, _e91, fe_trapped_13);
            let _e94 = impl_Poseidon2State_field(a0_11, 12u, fe_trapped_13);
            let _e96 = precision_lib_word_field_montgomery_mul_ga970_147b(_e94, 32u, fe_trapped_13);
            let _e97 = add(_e10, _e96, fe_trapped_13);
            set_field(a0_11, 12u, _e97, fe_trapped_13);
            let _e100 = impl_Poseidon2State_field(a0_11, 13u, fe_trapped_13);
            let _e102 = precision_lib_word_field_montgomery_mul_ga970_147b(_e100, 1996488705u, fe_trapped_13);
            let _e103 = add(_e10, _e102, fe_trapped_13);
            set_field(a0_11, 13u, _e103, fe_trapped_13);
            let _e106 = impl_Poseidon2State_field(a0_11, 14u, fe_trapped_13);
            let _e108 = precision_lib_word_field_montgomery_mul_ga970_147b(_e106, 1744830465u, fe_trapped_13);
            let _e109 = add(_e10, _e108, fe_trapped_13);
            set_field(a0_11, 14u, _e109, fe_trapped_13);
            let _e112 = impl_Poseidon2State_field(a0_11, 15u, fe_trapped_13);
            let _e114 = precision_lib_word_field_montgomery_mul_ga970_147b(_e112, 2013265889u, fe_trapped_13);
            let _e115 = add(_e10, _e114, fe_trapped_13);
            set_field(a0_11, 15u, _e115, fe_trapped_13);
            loop_did_return_2 = true;
            break;
        }
    }
    return;
}

fn poseidon2_permutation_execution(a0_12: u32, a1_9: array<u32, 16>, a2_3: ptr<function, FeLocal_fe_shader_private_layout_6_>, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    var fixed_local_8_1: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_25: u32 = u32();
    var local_26: u32 = u32();
    var local_27: u32 = u32();
    var loop_result_3: FeLocal_fe_shader_private_layout_7_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_11_: bool;
    var local_28: u32 = u32();
    var local_29: u32 = u32();
    var local_30: u32 = u32();
    var local_31: u32 = u32();
    var local_32: u32 = u32();
    var local_33: u32 = u32();
    var loop_result_4: FeLocal_fe_shader_private_layout_7_;
    var loop_did_return_4: bool = false;
    var loop_header_carry_14_: bool;
    var loop_result_5: FeLocal_fe_shader_private_layout_7_;
    var loop_did_return_5: bool = false;
    var loop_header_carry_49_: bool;
    var local_34: u32 = u32();
    var local_35: u32 = u32();
    var local_36: u32 = u32();
    var loop_result_6: FeLocal_fe_shader_private_layout_7_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_77_: bool;
    var local_37: u32 = u32();
    var local_38: u32 = u32();
    var local_39: u32 = u32();
    var loop_result_7: FeLocal_fe_shader_private_layout_7_;
    var loop_did_return_7: bool = false;
    var loop_header_carry_88_: bool;

    fixed_local_8_1 = FeLocal_fe_shader_private_layout_4_(a1_9);
    external_linear((&fixed_local_8_1), fe_trapped_14);
    local_25 = a0_12;
    local_26 = 0u;
    local_27 = 0u;
    loop {
        let _e17 = local_25;
        let _e19 = local_26;
        let _e21 = local_27;
        let _e23 = (_e21 < 4u);
        loop_header_carry_11_ = _e23;
        if _e23 {
            local_31 = _e17;
            local_32 = _e19;
            local_33 = 0u;
            loop {
                let _e36 = local_31;
                let _e38 = local_32;
                let _e40 = local_33;
                let _e42 = (_e40 < 16u);
                loop_header_carry_14_ = _e42;
                if _e42 {
                    if (_e38 < 141u) {
                    } else {
                        (*fe_trapped_14) = true;
                        break;
                    }
                    let _e48 = (*a2_3).f0_[_e38];
                    let _e49 = impl_Poseidon2State_field((&fixed_local_8_1), _e40, fe_trapped_14);
                    let _e50 = add(_e49, _e48, fe_trapped_14);
                    let _e51 = poseidon2_power7_plan(_e36, _e50, fe_trapped_14);
                    set_field((&fixed_local_8_1), _e40, _e51.f1_.f0_, fe_trapped_14);
                    local_31 = _e51.f0_.f0_;
                    local_32 = (_e38 + 1u);
                    local_33 = (_e40 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e65 = local_31;
            let _e67 = local_32;
            external_linear((&fixed_local_8_1), fe_trapped_14);
            if (_e21 > (4294967295u - 1u)) {
            } else {
                local_25 = _e65;
                local_26 = _e67;
                local_27 = (_e21 + 1u);
                continue;
            }
            (*fe_trapped_14) = true;
            break;
        } else {
            local_28 = _e17;
            local_29 = _e19;
            local_30 = 0u;
            break;
        }
    }
    let _e83 = local_25;
    let _e85 = local_26;
    local_28 = _e83;
    local_29 = _e85;
    local_30 = 0u;
    loop {
        let _e92 = local_28;
        let _e94 = local_29;
        let _e96 = local_30;
        let _e98 = (_e96 < 13u);
        loop_header_carry_49_ = _e98;
        if _e98 {
            if (_e94 < 141u) {
            } else {
                (*fe_trapped_14) = true;
                break;
            }
            let _e107 = (*a2_3).f0_[_e94];
            let _e109 = impl_Poseidon2State_field((&fixed_local_8_1), 0u, fe_trapped_14);
            let _e110 = add(_e109, _e107, fe_trapped_14);
            let _e111 = poseidon2_power7_plan(_e92, _e110, fe_trapped_14);
            set_field((&fixed_local_8_1), 0u, _e111.f1_.f0_, fe_trapped_14);
            internal_linear((&fixed_local_8_1), fe_trapped_14);
            local_28 = _e111.f0_.f0_;
            local_29 = (_e94 + 1u);
            local_30 = (_e96 + 1u);
            continue;
        } else {
            local_34 = _e94;
            local_35 = _e92;
            local_36 = 0u;
            break;
        }
    }
    let _e130 = local_28;
    let _e132 = local_29;
    local_34 = _e132;
    local_35 = _e130;
    local_36 = 0u;
    loop {
        let _e139 = local_34;
        let _e141 = local_35;
        let _e143 = local_36;
        let _e145 = (_e143 < 4u);
        loop_header_carry_77_ = _e145;
        if _e145 {
            local_37 = _e141;
            local_38 = _e139;
            local_39 = 0u;
            loop {
                let _e155 = local_37;
                let _e157 = local_38;
                let _e159 = local_39;
                let _e161 = (_e159 < 16u);
                loop_header_carry_88_ = _e161;
                if _e161 {
                    if (_e157 < 141u) {
                    } else {
                        (*fe_trapped_14) = true;
                        break;
                    }
                    let _e167 = (*a2_3).f0_[_e157];
                    let _e168 = impl_Poseidon2State_field((&fixed_local_8_1), _e159, fe_trapped_14);
                    let _e169 = add(_e168, _e167, fe_trapped_14);
                    let _e170 = poseidon2_power7_plan(_e155, _e169, fe_trapped_14);
                    set_field((&fixed_local_8_1), _e159, _e170.f1_.f0_, fe_trapped_14);
                    local_37 = _e170.f0_.f0_;
                    local_38 = (_e157 + 1u);
                    local_39 = (_e159 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e184 = local_37;
            let _e186 = local_38;
            external_linear((&fixed_local_8_1), fe_trapped_14);
            if (_e143 > (4294967295u - 1u)) {
            } else {
                local_34 = _e186;
                local_35 = _e184;
                local_36 = (_e143 + 1u);
                continue;
            }
            (*fe_trapped_14) = true;
            break;
        } else {
            let _e197 = fixed_local_8_1.f0_;
            loop_result_6 = FeLocal_fe_shader_private_layout_7_(FeLocal_fe_shader_private_layout_2_(_e141), _e197);
            loop_did_return_6 = true;
            break;
        }
    }
    let _e205 = loop_result_6;
    return _e205;
}

fn poseidon2_permutation_in_place_plan(a0_13: u32, a1_10: ptr<function, array<FeLocal_fe_shader_private_layout_0_, 16>>, fe_trapped_15: ptr<function, bool>) -> u32 {
    var fixed_local_3_: array<u32, 16> = array<u32, 16>();
    var local_40: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_37_: bool;
    var fixed_local_606_: FeLocal_fe_shader_private_layout_6_ = FeLocal_fe_shader_private_layout_6_();
    var fixed_local_611_: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var local_41: u32 = u32();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_613_: bool;

    local_40 = 0u;
    loop {
        let _e10 = local_40;
        let _e12 = (_e10 < 16u);
        loop_header_carry_37_ = _e12;
        if _e12 {
            let _e15 = (*a1_10)[_e10].f0_;
            fixed_local_3_[_e10] = _e15;
            local_40 = (_e10 + 1u);
            continue;
        } else {
            break;
        }
    }
    fixed_local_606_ = FeLocal_fe_shader_private_layout_6_(array<u32, 141>(1582131512u, 1899519471u, 1641921850u, 462688640u, 1293997949u, 1380417575u, 1932416963u, 283521298u, 1016708647u, 35751290u, 1270782647u, 851730739u, 795004022u, 929571430u, 523703523u, 1593957757u, 895976710u, 1742343460u, 917700746u, 1516725708u, 1170237629u, 785693164u, 613651155u, 352999196u, 678775274u, 1005433272u, 1704854670u, 1174551920u, 508930349u, 530338447u, 1327158816u, 1417652352u, 1153538870u, 583201050u, 397833841u, 1440603828u, 454600685u, 174490638u, 171758601u, 1998476616u, 1403697810u, 1807736944u, 450348306u, 1458895865u, 787037868u, 1063762964u, 1987002214u, 481645916u, 1231767638u, 1323639433u, 238360103u, 2012412459u, 1024945356u, 1108359895u, 1284135849u, 606928406u, 1021455954u, 719347978u, 659671051u, 769588663u, 805534062u, 592213995u, 1752728055u, 663410947u, 250494022u, 528496384u, 1472966118u, 977089650u, 1885890237u, 1094557811u, 147492661u, 664163003u, 398852570u, 336233633u, 1628648315u, 888594966u, 586791090u, 999830298u, 304461056u, 552699684u, 450698925u, 667466464u, 1736509752u, 1327760865u, 1153241151u, 816675655u, 1076172858u, 1914832527u, 1668723429u, 1365579850u, 975704528u, 1031625628u, 1393317533u, 1554700828u, 1023828605u, 1610378860u, 347744760u, 1909572073u, 739227895u, 428565985u, 633143046u, 121797685u, 94048546u, 1369350241u, 1250010422u, 114268841u, 515033604u, 49052844u, 1962329907u, 1380892638u, 1860017417u, 64711457u, 9758460u, 1681838395u, 710850601u, 1020228997u, 1414164790u, 1531515535u, 36158805u, 713604525u, 89935127u, 1870801994u, 395985906u, 1122769045u, 1760811055u, 819787042u, 134654834u, 1755145179u, 18433016u, 1701878989u, 1782339297u, 1483861396u, 962480061u, 1857590724u, 222440409u, 63223417u, 515206622u, 1348364213u, 973414686u, 1591066884u, 705852913u));
    let _e166 = fixed_local_3_;
    let _e167 = poseidon2_permutation_execution(a0_13, _e166, (&fixed_local_606_), fe_trapped_15);
    fixed_local_611_ = _e167;
    local_41 = 0u;
    loop {
        let _e175 = local_41;
        let _e177 = (_e175 < 16u);
        loop_header_carry_613_ = _e177;
        if _e177 {
            let _e180 = fixed_local_611_.f1_[_e175];
            (*a1_10)[_e175].f0_ = _e180;
            local_41 = (_e175 + 1u);
            continue;
        } else {
            let _e188 = fixed_local_611_.f0_.f0_;
            loop_result_9 = _e188;
            loop_did_return_9 = true;
            break;
        }
    }
    let _e194 = loop_result_9;
    return _e194;
}

fn compress_plan(a0_14: u32, a1_11: ptr<function, FeLocal_fe_shader_private_layout_1_>, a2_4: ptr<function, FeLocal_fe_shader_private_layout_1_>, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var fixed_local_4_: array<FeLocal_fe_shader_private_layout_0_, 16> = array<FeLocal_fe_shader_private_layout_0_, 16>();
    var local_42: u32 = u32();
    var loop_result_10: FeLocal_fe_shader_private_layout_3_;
    var loop_did_return_10: bool = false;
    var loop_header_carry_53_: bool;
    var fixed_local_87_: array<FeLocal_fe_shader_private_layout_0_, 8> = array<FeLocal_fe_shader_private_layout_0_, 8>();
    var local_43: u32 = u32();
    var loop_result_11: FeLocal_fe_shader_private_layout_3_;
    var loop_did_return_11: bool = false;
    var loop_header_carry_105_: bool;

    local_42 = 0u;
    loop {
        let _e11 = local_42;
        let _e13 = (_e11 < 8u);
        loop_header_carry_53_ = _e13;
        if _e13 {
            let _e17 = (*a1_11).f0_[_e11].f0_;
            fixed_local_4_[_e11].f0_ = _e17;
            let _e23 = (*a2_4).f0_[_e11].f0_;
            fixed_local_4_[(_e11 + 8u)].f0_ = _e23;
            local_42 = (_e11 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e32 = poseidon2_permutation_in_place_plan(a0_14, (&fixed_local_4_), fe_trapped_16);
    local_43 = 0u;
    loop {
        let _e40 = local_43;
        let _e42 = (_e40 < 8u);
        loop_header_carry_105_ = _e42;
        if _e42 {
            let _e45 = fixed_local_4_[_e40].f0_;
            fixed_local_87_[_e40].f0_ = _e45;
            local_43 = (_e40 + 1u);
            continue;
        } else {
            let _e51 = fixed_local_87_;
            loop_result_11 = FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_2_(_e32), FeLocal_fe_shader_private_layout_1_(_e51));
            loop_did_return_11 = true;
            break;
        }
    }
    let _e60 = loop_result_11;
    return _e60;
}

fn compress(a0_15: ptr<function, FeLocal_fe_shader_private_layout_1_>, a1_12: ptr<function, FeLocal_fe_shader_private_layout_1_>, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = compress_plan(0u, a0_15, a1_12, fe_trapped_17);
    return _e4.f1_;
}

fn impl_Poseidon2Digest_field(a0_16: ptr<function, FeLocal_fe_shader_private_layout_1_>, a1_13: u32) -> u32 {
    var local_44: u32;
    var local_45: bool = false;

    if ((a1_13 < 8u) == false) {
        local_44 = 0u;
        local_45 = true;
    }
    let _e17 = local_45;
    if _e17 {
    } else {
        let _e14 = (*a0_16).f0_[a1_13].f0_;
        local_44 = _e14;
    }
    let _e19 = local_44;
    return _e19;
}

fn store_digest_at_g5a92_(a1_14: u32, a2_5: ptr<function, FeLocal_fe_shader_private_layout_1_>, fe_trapped_18: ptr<function, bool>) {
    var local_46: u32 = u32();
    var loop_result_12: u32;
    var loop_did_return_12: bool = false;
    var loop_header_carry_6_: bool;

    local_46 = 0u;
    loop {
        let _e9 = local_46;
        let _e11 = (_e9 < 8u);
        loop_header_carry_6_ = _e11;
        if _e11 {
            if (a1_14 > (4294967295u - _e9)) {
                (*fe_trapped_18) = true;
                break;
            }
            let _e17 = impl_Poseidon2Digest_field(a2_5, _e9);
            let _e19 = precision_lib_word_field_montgomery_mul_ga970_147b(_e17, 1u, fe_trapped_18);
            fri_scratch[i32((a1_14 + _e9))] = _e19;
            local_46 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_12 = true;
            break;
        }
    }
    return;
}

fn store_digest_at_gfa0b(a1_15: u32, a2_6: ptr<function, FeLocal_fe_shader_private_layout_1_>, fe_trapped_19: ptr<function, bool>) {
    var local_47: u32 = u32();
    var loop_result_13: u32;
    var loop_did_return_13: bool = false;
    var loop_header_carry_6_1: bool;

    local_47 = 0u;
    loop {
        let _e9 = local_47;
        let _e11 = (_e9 < 8u);
        loop_header_carry_6_1 = _e11;
        if _e11 {
            if (a1_15 > (4294967295u - _e9)) {
                (*fe_trapped_19) = true;
                break;
            }
            let _e17 = impl_Poseidon2Digest_field(a2_6, _e9);
            let _e19 = precision_lib_word_field_montgomery_mul_ga970_147b(_e17, 1u, fe_trapped_19);
            proof[i32((a1_15 + _e9))] = _e19;
            local_47 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_13 = true;
            break;
        }
    }
    return;
}

fn tree_level_offset(a0_17: u32, a1_16: u32, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_48: u32 = u32();
    var local_49: u32 = u32();
    var local_50: u32 = u32();
    var loop_result_14: u32;
    var loop_did_return_14: bool = false;
    var loop_header_carry_6_2: bool;

    local_48 = a0_17;
    local_49 = 0u;
    local_50 = 0u;
    loop {
        let _e13 = local_48;
        let _e15 = local_49;
        let _e17 = local_50;
        let _e18 = (_e17 < a1_16);
        loop_header_carry_6_2 = _e18;
        if _e18 {
            if (_e15 > (4294967295u - _e13)) {
                (*fe_trapped_20) = true;
                break;
            }
            local_48 = (_e13 / 2u);
            local_49 = (_e15 + _e13);
            local_50 = (_e17 + 1u);
            continue;
        } else {
            loop_result_14 = _e15;
            loop_did_return_14 = true;
            break;
        }
    }
    let _e36 = loop_result_14;
    return _e36;
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: bool = bool();
    var local_3: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_123_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_124_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_4: u32 = u32();
    var fixed_local_129_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_5: u32 = u32();
    var fixed_local_140_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    if (global_invocation_id.x < 4096u) {
        let _e13 = fri_scratch[i32((147438u + global_invocation_id.x))];
        if (_e13 < 12u) {
            let _e17 = (4096u >> _e13);
            let _e19 = (_e17 / 2u);
            let _e25 = (2u != 0u);
            if (_e25 && (_e19 > (4294967295u / select(1u, 2u, _e25)))) {
            } else {
                if (global_invocation_id.x < (2u * _e19)) {
                    if (_e19 == 0u) {
                        fe_trapped = true;
                    } else {
                        let _e34 = (global_invocation_id.x / _e19);
                        let _e35 = (global_invocation_id.x % _e19);
                        let _e37 = tree_level_offset(4096u, _e13, (&fe_trapped));
                        let _e39 = (_e37 + _e17);
                        if (_e37 > (4294967295u - _e17)) {
                            fe_trapped = true;
                        } else {
                            let _e44 = (_e35 << 1u);
                            let _e46 = (_e37 + _e44);
                            if (_e37 > (4294967295u - _e44)) {
                                fe_trapped = true;
                            } else {
                                let _e54 = (_e34 * 8191u);
                                let _e55 = (_e34 != 0u);
                                if (_e55 && (8191u > (4294967295u / select(1u, _e34, _e55)))) {
                                    fe_trapped = true;
                                } else {
                                    let _e62 = (_e54 + _e46);
                                    if (_e54 > (4294967295u - _e46)) {
                                        fe_trapped = true;
                                    } else {
                                        let _e68 = (_e62 + 1u);
                                        if (_e62 > (4294967295u - 1u)) {
                                            fe_trapped = true;
                                        } else {
                                            let _e73 = (_e39 + _e35);
                                            if (_e39 > (4294967295u - _e35)) {
                                                fe_trapped = true;
                                            } else {
                                                let _e81 = (_e34 * 8191u);
                                                let _e82 = (_e34 != 0u);
                                                if (_e82 && (8191u > (4294967295u / select(1u, _e34, _e82)))) {
                                                    fe_trapped = true;
                                                } else {
                                                    let _e89 = (_e81 + _e73);
                                                    if (_e81 > (4294967295u - _e73)) {
                                                        fe_trapped = true;
                                                    } else {
                                                        if (131056u > (4294967295u - _e62)) {
                                                            fe_trapped = true;
                                                        } else {
                                                            let _e102 = fri_scratch[i32((131056u + _e62))];
                                                            if (_e102 == 1u) {
                                                                if (131056u > (4294967295u - _e68)) {
                                                                    fe_trapped = true;
                                                                } else {
                                                                    let _e113 = fri_scratch[i32((131056u + _e68))];
                                                                    if (_e113 == 1u) {
                                                                        local_2 = true;
                                                                    }
                                                                }
                                                            }
                                                            let _e120 = local_2;
                                                            if _e120 {
                                                                let _e126 = (_e62 != 0u);
                                                                if (_e126 && (8u > (4294967295u / select(1u, _e62, _e126)))) {
                                                                    fe_trapped = true;
                                                                } else {
                                                                    let _e132 = load_digest_at((_e62 * 8u), (&fe_trapped));
                                                                    let _e138 = (_e68 != 0u);
                                                                    if (_e138 && (8u > (4294967295u / select(1u, _e68, _e138)))) {
                                                                        fe_trapped = true;
                                                                    } else {
                                                                        let _e144 = load_digest_at((_e68 * 8u), (&fe_trapped));
                                                                        fixed_local_123_ = _e132;
                                                                        fixed_local_124_ = _e144;
                                                                        let _e149 = compress((&fixed_local_123_), (&fixed_local_124_), (&fe_trapped));
                                                                        local_3 = _e149;
                                                                    }
                                                                }
                                                            } else {
                                                                let _e151 = zero();
                                                                local_3 = _e151;
                                                            }
                                                            let _e155 = local_3;
                                                            if _e120 {
                                                                local_4 = 1u;
                                                            }
                                                            let _e159 = local_4;
                                                            fixed_local_129_ = _e155;
                                                            let _e167 = (_e89 != 0u);
                                                            if (_e167 && (8u > (4294967295u / select(1u, _e89, _e167)))) {
                                                                fe_trapped = true;
                                                            } else {
                                                                store_digest_at_g5a92_((_e89 * 8u), (&fixed_local_129_), (&fe_trapped));
                                                                if (131056u > (4294967295u - _e89)) {
                                                                    fe_trapped = true;
                                                                } else {
                                                                    fri_scratch[i32((131056u + _e89))] = _e159;
                                                                    if ((_e13 + 1u) == 12u) {
                                                                        if (_e34 == 0u) {
                                                                            local_5 = 460244u;
                                                                        } else {
                                                                            local_5 = 460252u;
                                                                        }
                                                                        let _e193 = local_5;
                                                                        fixed_local_140_ = _e155;
                                                                        store_digest_at_gfa0b(_e193, (&fixed_local_140_), (&fe_trapped));
                                                                        if (460260u > (4294967295u - _e34)) {
                                                                            fe_trapped = true;
                                                                        } else {
                                                                            proof[i32((460260u + _e34))] = _e159;
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
                    }
                }
                fri_scratch[i32((147438u + global_invocation_id.x))] = (_e13 + 1u);
                local_1 = true;
            }
            let _e214 = local_1;
            if _e214 {
            } else {
                fe_trapped = true;
            }
        }
        let _e216 = local_1;
        if _e216 {
        }
    }
    let _e227 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 4096u)) + (global_invocation_id.z * 4096u))] = u32(_e227);
}
