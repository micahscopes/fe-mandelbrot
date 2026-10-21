struct FeLocal_fe_shader_private_layout_10_ {
    f0_: bool,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
    f9_: u32,
    f10_: u32,
    f11_: u32,
    f12_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
    f3_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: array<u32, 16>,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: array<u32, 141>,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: array<FeLocal_fe_shader_private_layout_1_, 8>,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: FeLocal_fe_shader_private_layout_6_,
    f2_: FeLocal_fe_shader_private_layout_6_,
    f3_: FeLocal_fe_shader_private_layout_6_,
    f4_: u32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
    f9_: u32,
    f10_: u32,
    f11_: u32,
    f12_: u32,
    f13_: u32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
    f18_: u32,
    f19_: u32,
    f20_: u32,
    f21_: u32,
    f22_: u32,
    f23_: u32,
    f24_: u32,
    f25_: u32,
    f26_: u32,
    f27_: u32,
    f28_: u32,
    f29_: u32,
    f30_: u32,
    f31_: u32,
    f32_: u32,
    f33_: u32,
    f34_: u32,
    f35_: u32,
    f36_: u32,
    f37_: u32,
    f38_: u32,
    f39_: u32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
    f9_: u32,
    f10_: u32,
    f11_: u32,
    f12_: u32,
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

fn load_fri_round_placement_at(a1_: u32, a2_: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    var local_8: FeLocal_fe_shader_private_layout_10_;
    var local_9: bool = false;

    let _e9 = (a2_ * 13u);
    let _e10 = (a2_ != 0u);
    if (_e10 && (13u > (4294967295u / select(1u, a2_, _e10)))) {
    } else {
        let _e16 = (a1_ + _e9);
        if (a1_ > (4294967295u - _e9)) {
        } else {
            let _e21 = fri_scratch[i32(_e16)];
            if (_e16 > (4294967295u - 1u)) {
            } else {
                let _e31 = fri_scratch[i32((_e16 + 1u))];
                if (_e16 > (4294967295u - 2u)) {
                } else {
                    let _e39 = fri_scratch[i32((_e16 + 2u))];
                    if (_e16 > (4294967295u - 3u)) {
                    } else {
                        let _e47 = fri_scratch[i32((_e16 + 3u))];
                        if (_e16 > (4294967295u - 4u)) {
                        } else {
                            let _e55 = fri_scratch[i32((_e16 + 4u))];
                            if (_e16 > (4294967295u - 5u)) {
                            } else {
                                let _e63 = fri_scratch[i32((_e16 + 5u))];
                                if (_e16 > (4294967295u - 6u)) {
                                } else {
                                    let _e71 = fri_scratch[i32((_e16 + 6u))];
                                    if (_e16 > (4294967295u - 7u)) {
                                    } else {
                                        let _e79 = fri_scratch[i32((_e16 + 7u))];
                                        if (_e16 > (4294967295u - 8u)) {
                                        } else {
                                            let _e87 = fri_scratch[i32((_e16 + 8u))];
                                            if (_e16 > (4294967295u - 9u)) {
                                            } else {
                                                let _e95 = fri_scratch[i32((_e16 + 9u))];
                                                if (_e16 > (4294967295u - 10u)) {
                                                } else {
                                                    let _e103 = fri_scratch[i32((_e16 + 10u))];
                                                    if (_e16 > (4294967295u - 11u)) {
                                                    } else {
                                                        let _e111 = fri_scratch[i32((_e16 + 11u))];
                                                        if (_e16 > (4294967295u - 12u)) {
                                                        } else {
                                                            let _e119 = fri_scratch[i32((_e16 + 12u))];
                                                            local_8 = FeLocal_fe_shader_private_layout_10_((_e21 == 1u), _e31, _e39, _e47, _e55, _e63, _e71, _e79, _e87, _e95, _e103, _e111, _e119);
                                                            local_9 = true;
                                                        }
                                                        let _e125 = local_9;
                                                        if _e125 {
                                                        }
                                                    }
                                                    let _e127 = local_9;
                                                    if _e127 {
                                                    }
                                                }
                                                let _e129 = local_9;
                                                if _e129 {
                                                }
                                            }
                                            let _e131 = local_9;
                                            if _e131 {
                                            }
                                        }
                                        let _e133 = local_9;
                                        if _e133 {
                                        }
                                    }
                                    let _e135 = local_9;
                                    if _e135 {
                                    }
                                }
                                let _e137 = local_9;
                                if _e137 {
                                }
                            }
                            let _e139 = local_9;
                            if _e139 {
                            }
                        }
                        let _e141 = local_9;
                        if _e141 {
                        }
                    }
                    let _e143 = local_9;
                    if _e143 {
                    }
                }
                let _e145 = local_9;
                if _e145 {
                }
            }
            let _e147 = local_9;
            if _e147 {
            }
        }
        let _e149 = local_9;
        if _e149 {
        }
    }
    let _e152 = local_9;
    if _e152 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e154 = local_8;
    return _e154;
}

fn coefficient_0_(a0_: FeLocal_fe_shader_private_layout_2_) -> u32 {
    return a0_.f0_.f0_;
}

fn coefficient_1_(a0_1: FeLocal_fe_shader_private_layout_2_) -> u32 {
    return a0_1.f1_.f0_;
}

fn precision_lib_word_field_canonicalize_ga970_0909_(a0_2: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_10: u32;
    var local_11: bool = false;

    let _e4 = (a0_2 & 65535u);
    let _e7 = (_e4 + 65536u);
    if (_e4 > (4294967295u - 65536u)) {
    } else {
        if (_e7 < 1u) {
        } else {
            let _e14 = ((_e7 - 1u) >> 16u);
            let _e16 = (a0_2 >> 16u);
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
                                if (a0_2 < _e36) {
                                } else {
                                    local_10 = (a0_2 - _e36);
                                    local_11 = true;
                                }
                                let _e48 = local_11;
                                if _e48 {
                                }
                            }
                            let _e50 = local_11;
                            if _e50 {
                            }
                        }
                        let _e52 = local_11;
                        if _e52 {
                        }
                    }
                    let _e54 = local_11;
                    if _e54 {
                    }
                }
                let _e56 = local_11;
                if _e56 {
                }
            }
            let _e58 = local_11;
            if _e58 {
            }
        }
        let _e60 = local_11;
        if _e60 {
        }
    }
    let _e63 = local_11;
    if _e63 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e65 = local_10;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_3: u32, a1_1: u32, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_12: u32;
    var local_13: bool = false;

    let _e5 = (a0_3 & 65535u);
    let _e7 = (a0_3 >> 16u);
    let _e9 = (a1_1 & 65535u);
    let _e11 = (a1_1 >> 16u);
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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_0909_((_e228 + _e226), fe_trapped_3);
                                                                                                            local_12 = _e235;
                                                                                                            local_13 = true;
                                                                                                        }
                                                                                                        let _e240 = local_13;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_13;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_13;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_13;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_13;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_13;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_13;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_13;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_13;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_13;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_13;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_13;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_13;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_13;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_13;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_13;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_13;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_13;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_13;
                                if _e276 {
                                }
                            }
                            let _e278 = local_13;
                            if _e278 {
                            }
                        }
                        let _e280 = local_13;
                        if _e280 {
                        }
                    }
                    let _e282 = local_13;
                    if _e282 {
                    }
                }
                let _e284 = local_13;
                if _e284 {
                }
            }
            let _e286 = local_13;
            if _e286 {
            }
        }
        let _e288 = local_13;
        if _e288 {
        }
    }
    let _e291 = local_13;
    if _e291 {
    } else {
        (*fe_trapped_3) = true;
    }
    let _e293 = local_12;
    return _e293;
}

fn precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a0_4: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_0f9a((a0_4 % 2013265921u), 1172168163u, fe_trapped_4);
    return _e5;
}

fn precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(a0_5: u32, a1_2: u32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_14: u32;
    var local_15: bool = false;

    if (a0_5 > (4294967295u - a1_2)) {
        (*fe_trapped_5) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_0909_((a0_5 + a1_2), fe_trapped_5);
    return _e9;
}

fn coefficient_2_(a0_6: FeLocal_fe_shader_private_layout_2_) -> u32 {
    return a0_6.f2_.f0_;
}

fn coefficient_3_(a0_7: FeLocal_fe_shader_private_layout_2_) -> u32 {
    return a0_7.f3_.f0_;
}

fn from_coordinate_fields(a0_8: u32, a1_3: u32, a2_1: u32, a3_: u32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_1_(a0_8), FeLocal_fe_shader_private_layout_1_(a1_3), FeLocal_fe_shader_private_layout_1_(a2_1), FeLocal_fe_shader_private_layout_1_(a3_));
}

fn two_adic_root(a0_9: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_16: u32;
    var local_17: bool = false;
    var local_18: u32 = u32();
    var local_19: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_11_: bool;
    var loop_header_carry_13_: bool;

    if (27u < a0_9) {
        local_16 = 0u;
        local_17 = true;
    }
    let _e39 = local_17;
    if _e39 {
    } else {
        local_18 = 1476048622u;
        local_19 = (27u - a0_9);
        loop {
            let _e18 = local_18;
            let _e20 = local_19;
            let _e22 = (_e20 == 0u);
            let _e24 = (_e22 == false);
            loop_header_carry_11_ = _e22;
            loop_header_carry_13_ = _e24;
            if _e24 {
                let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e18, _e18, fe_trapped_6);
                local_18 = _e25;
                local_19 = (_e20 - 1u);
                continue;
            } else {
                loop_result = _e18;
                loop_did_return = true;
                break;
            }
        }
        let _e36 = loop_result;
        local_16 = _e36;
    }
    let _e41 = local_16;
    return _e41;
}

fn fri_shift(a0_10: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_20: u32 = u32();
    var local_21: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_6_: bool;

    let _e3 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(7u, fe_trapped_7);
    local_20 = _e3;
    local_21 = 0u;
    loop {
        let _e11 = local_20;
        let _e13 = local_21;
        let _e14 = (_e13 < a0_10);
        loop_header_carry_6_ = _e14;
        if _e14 {
            let _e15 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e11, _e11, fe_trapped_7);
            local_20 = _e15;
            local_21 = (_e13 + 1u);
            continue;
        } else {
            loop_result_1 = _e11;
            loop_did_return_1 = true;
            break;
        }
    }
    let _e25 = loop_result_1;
    return _e25;
}

fn precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_1ab9_(a0_11: u32, a1_4: u32, fe_trapped_8: ptr<function, bool>) -> u32 {
    var local_22: u32 = u32();
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_7_: bool;
    var loop_header_carry_9_: bool;
    var local_25: u32 = u32();

    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1u, fe_trapped_8);
    local_22 = a0_11;
    local_23 = _e4;
    local_24 = a1_4;
    loop {
        let _e13 = local_22;
        let _e15 = local_23;
        let _e17 = local_24;
        let _e19 = (_e17 == 0u);
        let _e21 = (_e19 == false);
        loop_header_carry_7_ = _e19;
        loop_header_carry_9_ = _e21;
        if _e21 {
            if ((_e17 & 1u) == 1u) {
                let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e15, _e13, fe_trapped_8);
                local_25 = _e27;
            } else {
                local_25 = _e15;
            }
            let _e31 = local_25;
            let _e32 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e13, _e13, fe_trapped_8);
            local_22 = _e32;
            local_23 = _e31;
            local_24 = (_e17 >> 1u);
            continue;
        } else {
            loop_result_2 = _e15;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e44 = loop_result_2;
    return _e44;
}

fn inverse_or_zero(a0_12: u32, fe_trapped_9: ptr<function, bool>) -> u32 {
    let _e3 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_1ab9_(a0_12, 2013265919u, fe_trapped_9);
    return _e3;
}

fn from_base(a0_13: u32) -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_1_(a0_13), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
}

fn impl_trait_BinomialExtension4_add_ga970_(a0_14: FeLocal_fe_shader_private_layout_2_, a1_5: FeLocal_fe_shader_private_layout_2_, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e7 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(a0_14.f0_.f0_, a1_5.f0_.f0_, fe_trapped_10);
    let _e12 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(a0_14.f1_.f0_, a1_5.f1_.f0_, fe_trapped_10);
    let _e17 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(a0_14.f2_.f0_, a1_5.f2_.f0_, fe_trapped_10);
    let _e22 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(a0_14.f3_.f0_, a1_5.f3_.f0_, fe_trapped_10);
    return FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_1_(_e7), FeLocal_fe_shader_private_layout_1_(_e12), FeLocal_fe_shader_private_layout_1_(_e17), FeLocal_fe_shader_private_layout_1_(_e22));
}

fn impl_trait_BinomialExtension4_mul_ga970_(a0_15: FeLocal_fe_shader_private_layout_2_, a1_6: FeLocal_fe_shader_private_layout_2_, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(11u, fe_trapped_11);
    let _e9 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f0_.f0_, a1_6.f0_.f0_, fe_trapped_11);
    let _e14 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f1_.f0_, a1_6.f3_.f0_, fe_trapped_11);
    let _e19 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f2_.f0_, a1_6.f2_.f0_, fe_trapped_11);
    let _e20 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e14, _e19, fe_trapped_11);
    let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f3_.f0_, a1_6.f1_.f0_, fe_trapped_11);
    let _e26 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e20, _e25, fe_trapped_11);
    let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e26, fe_trapped_11);
    let _e28 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e9, _e27, fe_trapped_11);
    let _e33 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f0_.f0_, a1_6.f1_.f0_, fe_trapped_11);
    let _e38 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f1_.f0_, a1_6.f0_.f0_, fe_trapped_11);
    let _e39 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e33, _e38, fe_trapped_11);
    let _e44 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f2_.f0_, a1_6.f3_.f0_, fe_trapped_11);
    let _e49 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f3_.f0_, a1_6.f2_.f0_, fe_trapped_11);
    let _e50 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e44, _e49, fe_trapped_11);
    let _e51 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e50, fe_trapped_11);
    let _e52 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e39, _e51, fe_trapped_11);
    let _e57 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f0_.f0_, a1_6.f2_.f0_, fe_trapped_11);
    let _e62 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f1_.f0_, a1_6.f1_.f0_, fe_trapped_11);
    let _e63 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e57, _e62, fe_trapped_11);
    let _e68 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f2_.f0_, a1_6.f0_.f0_, fe_trapped_11);
    let _e69 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e63, _e68, fe_trapped_11);
    let _e72 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, a0_15.f3_.f0_, fe_trapped_11);
    let _e75 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e72, a1_6.f3_.f0_, fe_trapped_11);
    let _e76 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e69, _e75, fe_trapped_11);
    let _e81 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f0_.f0_, a1_6.f3_.f0_, fe_trapped_11);
    let _e86 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f1_.f0_, a1_6.f2_.f0_, fe_trapped_11);
    let _e87 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e81, _e86, fe_trapped_11);
    let _e92 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f2_.f0_, a1_6.f1_.f0_, fe_trapped_11);
    let _e93 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e87, _e92, fe_trapped_11);
    let _e98 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_15.f3_.f0_, a1_6.f0_.f0_, fe_trapped_11);
    let _e99 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e93, _e98, fe_trapped_11);
    return FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_1_(_e28), FeLocal_fe_shader_private_layout_1_(_e52), FeLocal_fe_shader_private_layout_1_(_e76), FeLocal_fe_shader_private_layout_1_(_e99));
}

fn impl_trait_WordField_sub_ga970_(a0_16: u32, a1_7: u32, fe_trapped_12: ptr<function, bool>) -> u32 {
    var local_26: u32;
    var local_27: bool = false;

    let _e6 = (a0_16 + 2013265921u);
    if (a0_16 > (4294967295u - 2013265921u)) {
    } else {
        if (_e6 < a1_7) {
        } else {
            let _e11 = precision_lib_word_field_canonicalize_ga970_0909_((_e6 - a1_7), fe_trapped_12);
            local_26 = _e11;
            local_27 = true;
        }
        let _e16 = local_27;
        if _e16 {
        }
    }
    let _e19 = local_27;
    if _e19 {
    } else {
        (*fe_trapped_12) = true;
    }
    let _e21 = local_26;
    return _e21;
}

fn impl_trait_BinomialExtension4_sub_ga970_(a0_17: FeLocal_fe_shader_private_layout_2_, a1_8: FeLocal_fe_shader_private_layout_2_, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e7 = impl_trait_WordField_sub_ga970_(a0_17.f0_.f0_, a1_8.f0_.f0_, fe_trapped_13);
    let _e12 = impl_trait_WordField_sub_ga970_(a0_17.f1_.f0_, a1_8.f1_.f0_, fe_trapped_13);
    let _e17 = impl_trait_WordField_sub_ga970_(a0_17.f2_.f0_, a1_8.f2_.f0_, fe_trapped_13);
    let _e22 = impl_trait_WordField_sub_ga970_(a0_17.f3_.f0_, a1_8.f3_.f0_, fe_trapped_13);
    return FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_1_(_e7), FeLocal_fe_shader_private_layout_1_(_e12), FeLocal_fe_shader_private_layout_1_(_e17), FeLocal_fe_shader_private_layout_1_(_e22));
}

fn fold_fri_pair_value_at_point(a0_18: FeLocal_fe_shader_private_layout_2_, a1_9: FeLocal_fe_shader_private_layout_2_, a2_2: FeLocal_fe_shader_private_layout_2_, a3_1: u32, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e6 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(2u, fe_trapped_14);
    let _e7 = inverse_or_zero(_e6, fe_trapped_14);
    let _e8 = from_base(_e7);
    let _e9 = impl_trait_BinomialExtension4_add_ga970_(a0_18, a1_9, fe_trapped_14);
    let _e10 = impl_trait_BinomialExtension4_mul_ga970_(_e9, _e8, fe_trapped_14);
    let _e11 = impl_trait_BinomialExtension4_sub_ga970_(a0_18, a1_9, fe_trapped_14);
    let _e12 = impl_trait_BinomialExtension4_mul_ga970_(_e11, _e8, fe_trapped_14);
    let _e13 = inverse_or_zero(a3_1, fe_trapped_14);
    let _e14 = from_base(_e13);
    let _e15 = impl_trait_BinomialExtension4_mul_ga970_(_e12, _e14, fe_trapped_14);
    let _e16 = impl_trait_BinomialExtension4_mul_ga970_(a2_2, _e15, fe_trapped_14);
    let _e17 = impl_trait_BinomialExtension4_add_ga970_(_e10, _e16, fe_trapped_14);
    return _e17;
}

fn chunk_layer_tree_nodes(a0_19: u32, a1_10: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_28: u32;
    var local_29: bool = false;
    var local_30: u32 = u32();

    if ((1u < a0_19) == false) {
    } else {
        let _e13 = (2u * a0_19);
        let _e14 = (2u != 0u);
        if (_e14 && (a0_19 > (4294967295u / select(1u, 2u, _e14)))) {
            (*fe_trapped_15) = true;
        } else {
            let _e21 = (_e13 - 2u);
            if (_e13 < 2u) {
                (*fe_trapped_15) = true;
            } else {
                if (_e21 < a1_10) {
                    (*fe_trapped_15) = true;
                } else {
                    local_30 = (_e21 - a1_10);
                }
            }
        }
    }
    let _e29 = local_30;
    return _e29;
}

fn chunk_folded_evaluations(a0_20: u32) -> u32 {
    var local_31: u32;
    var local_32: bool = false;
    var local_33: u32 = u32();

    if (a0_20 == 0u) {
    } else {
        local_33 = (a0_20 - 1u);
    }
    let _e9 = local_33;
    return _e9;
}

fn fri_placement_is_valid(a0_21: FeLocal_fe_shader_private_layout_10_, a1_11: u32, a2_3: u32, a3_2: u32, fe_trapped_16: ptr<function, bool>) -> bool {
    var local_34: bool;
    var local_35: bool = false;
    var local_36: bool = bool();

    if a0_21.f0_ {
        if (a0_21.f1_ == a1_11) {
            if (a1_11 > (4294967295u - 1u)) {
                (*fe_trapped_16) = true;
            } else {
                if (a0_21.f2_ == (a1_11 + 1u)) {
                    if (0u < a0_21.f5_) {
                        let _e28 = (2u != 0u);
                        if (_e28 && (a0_21.f5_ > (4294967295u / select(1u, 2u, _e28)))) {
                            (*fe_trapped_16) = true;
                        } else {
                            if (a0_21.f4_ == (2u * a0_21.f5_)) {
                                if (a0_21.f6_ > (4294967295u - a0_21.f5_)) {
                                    (*fe_trapped_16) = true;
                                } else {
                                    let _e42 = chunk_folded_evaluations(a2_3);
                                    if ((_e42 < (a0_21.f6_ + a0_21.f5_)) == false) {
                                        let _e52 = (2u * a0_21.f5_);
                                        let _e53 = (2u != 0u);
                                        if (_e53 && (a0_21.f5_ > (4294967295u / select(1u, 2u, _e53)))) {
                                            (*fe_trapped_16) = true;
                                        } else {
                                            if (_e52 < 1u) {
                                                (*fe_trapped_16) = true;
                                            } else {
                                                if (a0_21.f8_ == (_e52 - 1u)) {
                                                    if (a0_21.f7_ > (4294967295u - a0_21.f8_)) {
                                                        (*fe_trapped_16) = true;
                                                    } else {
                                                        let _e71 = chunk_layer_tree_nodes(a2_3, a3_2, fe_trapped_16);
                                                        if ((_e71 < (a0_21.f7_ + a0_21.f8_)) == false) {
                                                            local_36 = true;
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
    let _e78 = local_36;
    return _e78;
}

fn from_coordinate_words(a0_22: u32, a1_12: u32, a2_4: u32, a3_3: u32, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e5 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a0_22, fe_trapped_17);
    let _e6 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a1_12, fe_trapped_17);
    let _e7 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a2_4, fe_trapped_17);
    let _e8 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a3_3, fe_trapped_17);
    return FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_1_(_e5), FeLocal_fe_shader_private_layout_1_(_e6), FeLocal_fe_shader_private_layout_1_(_e7), FeLocal_fe_shader_private_layout_1_(_e8));
}

fn load_ext4_at(a1_13: u32, fe_trapped_18: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_37: FeLocal_fe_shader_private_layout_2_;
    var local_38: bool = false;

    let _e6 = proof[i32(a1_13)];
    if (a1_13 > (4294967295u - 1u)) {
    } else {
        let _e14 = proof[i32((a1_13 + 1u))];
        if (a1_13 > (4294967295u - 2u)) {
        } else {
            let _e22 = proof[i32((a1_13 + 2u))];
            if (a1_13 > (4294967295u - 3u)) {
            } else {
                let _e30 = proof[i32((a1_13 + 3u))];
                let _e31 = from_coordinate_words(_e6, _e14, _e22, _e30, fe_trapped_18);
                local_37 = _e31;
                local_38 = true;
            }
            let _e36 = local_38;
            if _e36 {
            }
        }
        let _e38 = local_38;
        if _e38 {
        }
    }
    let _e41 = local_38;
    if _e41 {
    } else {
        (*fe_trapped_18) = true;
    }
    let _e43 = local_37;
    return _e43;
}

fn store_ext4_at(a1_14: u32, a2_5: FeLocal_fe_shader_private_layout_2_, fe_trapped_19: ptr<function, bool>) {
    var local_39: u32;
    var local_40: bool = false;

    let _e5 = coefficient_0_(a2_5);
    let _e7 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e5, 1u, fe_trapped_19);
    proof[i32(a1_14)] = _e7;
    if (a1_14 > (4294967295u - 1u)) {
    } else {
        let _e15 = coefficient_1_(a2_5);
        let _e17 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e15, 1u, fe_trapped_19);
        proof[i32((a1_14 + 1u))] = _e17;
        if (a1_14 > (4294967295u - 2u)) {
        } else {
            let _e25 = coefficient_2_(a2_5);
            let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e25, 1u, fe_trapped_19);
            proof[i32((a1_14 + 2u))] = _e27;
            if (a1_14 > (4294967295u - 3u)) {
            } else {
                let _e35 = coefficient_3_(a2_5);
                let _e37 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e35, 1u, fe_trapped_19);
                proof[i32((a1_14 + 3u))] = _e37;
                local_40 = true;
            }
            let _e43 = local_40;
            if _e43 {
            }
        }
        let _e45 = local_40;
        if _e45 {
        }
    }
    let _e48 = local_40;
    if _e48 {
    } else {
        (*fe_trapped_19) = true;
    }
    return;
}

fn protocol_round_tag(a0_23: u32, a1_15: u32, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_41: u32;
    var local_42: bool = false;

    let _e5 = (a1_15 / 10u);
    let _e10 = (_e5 * 10u);
    let _e11 = (_e5 != 0u);
    if (_e11 && (10u > (4294967295u / select(1u, _e5, _e11)))) {
    } else {
        let _e16 = (a1_15 - _e10);
        if (a1_15 < _e10) {
        } else {
            if (48u > (4294967295u - _e5)) {
            } else {
                if (48u > (4294967295u - _e16)) {
                } else {
                    local_41 = ((a0_23 | ((48u + _e5) << 8u)) | (48u + _e16));
                    local_42 = true;
                }
                let _e36 = local_42;
                if _e36 {
                }
            }
            let _e38 = local_42;
            if _e38 {
            }
        }
        let _e40 = local_42;
        if _e40 {
        }
    }
    let _e43 = local_42;
    if _e43 {
    } else {
        (*fe_trapped_20) = true;
    }
    let _e45 = local_41;
    return _e45;
}

fn begin_prefixed_tag(a0_24: u32, a1_16: u32, a2_6: u32, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_43: FeLocal_fe_shader_private_layout_0_;
    var local_44: bool = false;
    var fixed_local_4_: array<u32, 16> = array<u32, 16>();
    var local_45: FeLocal_fe_shader_private_layout_0_;
    var local_46: bool = false;

    if ((a0_24 < 2013265921u) == false) {
        let _e11 = fixed_local_4_;
        local_43 = FeLocal_fe_shader_private_layout_0_(_e11, 2u, a2_6, 0u, 0u);
        local_44 = true;
    }
    let _e54 = local_44;
    if _e54 {
    } else {
        if ((a1_16 < 2013265921u) == false) {
        } else {
            if ((a2_6 < 2013265921u) == false) {
            } else {
                let _e28 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a0_24, fe_trapped_21);
                fixed_local_4_[0] = _e28;
                let _e30 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a1_16, fe_trapped_21);
                fixed_local_4_[1] = _e30;
                let _e32 = fixed_local_4_;
                local_45 = FeLocal_fe_shader_private_layout_0_(_e32, 2u, a2_6, 0u, 1u);
                local_46 = true;
            }
            let _e41 = local_46;
            if _e41 {
            }
        }
        let _e49 = local_46;
        if _e49 {
        } else {
            let _e42 = fixed_local_4_;
            local_45 = FeLocal_fe_shader_private_layout_0_(_e42, 2u, a2_6, 0u, 0u);
        }
        let _e51 = local_45;
        local_43 = _e51;
    }
    let _e56 = local_43;
    return _e56;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_25: ptr<function, FeLocal_fe_shader_private_layout_5_>, a1_17: u32, fe_trapped_22: ptr<function, bool>) -> u32 {
    var local_47: u32;
    var local_48: bool = false;

    if (a1_17 < 16u) {
    } else {
        (*fe_trapped_22) = true;
    }
    let _e9 = (*a0_25).f0_[a1_17];
    return _e9;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_26: ptr<function, FeLocal_fe_shader_private_layout_5_>, a1_18: u32, a2_7: u32, fe_trapped_23: ptr<function, bool>) {
    var local_49: u32;
    var local_50: bool = false;

    if (a1_18 < 16u) {
    } else {
        (*fe_trapped_23) = true;
    }
    (*a0_26).f0_[a1_18] = a2_7;
    return;
}

fn mat4_(a0_27: ptr<function, FeLocal_fe_shader_private_layout_5_>, a1_19: u32, fe_trapped_24: ptr<function, bool>) {
    var local_51: u32;
    var local_52: bool = false;

    let _e4 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_27, a1_19, fe_trapped_24);
    if (a1_19 > (4294967295u - 1u)) {
    } else {
        let _e10 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_27, (a1_19 + 1u), fe_trapped_24);
        if (a1_19 > (4294967295u - 2u)) {
        } else {
            let _e16 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_27, (a1_19 + 2u), fe_trapped_24);
            if (a1_19 > (4294967295u - 3u)) {
            } else {
                let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_27, (a1_19 + 3u), fe_trapped_24);
                let _e23 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e4, _e10, fe_trapped_24);
                let _e24 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e16, _e22, fe_trapped_24);
                let _e25 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e23, _e24, fe_trapped_24);
                let _e26 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e25, _e10, fe_trapped_24);
                let _e27 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e25, _e22, fe_trapped_24);
                let _e28 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e26, _e23, fe_trapped_24);
                poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_27, a1_19, _e28, fe_trapped_24);
                if (a1_19 > (4294967295u - 1u)) {
                } else {
                    let _e34 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e26, _e16, fe_trapped_24);
                    let _e35 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e34, _e16, fe_trapped_24);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_27, (a1_19 + 1u), _e35, fe_trapped_24);
                    if (a1_19 > (4294967295u - 2u)) {
                    } else {
                        let _e41 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e27, _e24, fe_trapped_24);
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_27, (a1_19 + 2u), _e41, fe_trapped_24);
                        if (a1_19 > (4294967295u - 3u)) {
                        } else {
                            let _e47 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e27, _e4, fe_trapped_24);
                            let _e48 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e47, _e4, fe_trapped_24);
                            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_27, (a1_19 + 3u), _e48, fe_trapped_24);
                            local_52 = true;
                        }
                        let _e52 = local_52;
                        if _e52 {
                        }
                    }
                    let _e54 = local_52;
                    if _e54 {
                    }
                }
                let _e56 = local_52;
                if _e56 {
                }
            }
            let _e58 = local_52;
            if _e58 {
            }
        }
        let _e60 = local_52;
        if _e60 {
        }
    }
    let _e63 = local_52;
    if _e63 {
    } else {
        (*fe_trapped_24) = true;
    }
    return;
}

fn external_linear(a0_28: ptr<function, FeLocal_fe_shader_private_layout_5_>, fe_trapped_25: ptr<function, bool>) {
    var local_53: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_48_: bool;
    var local_54: u32 = u32();

    mat4_(a0_28, 0u, fe_trapped_25);
    mat4_(a0_28, 4u, fe_trapped_25);
    mat4_(a0_28, 8u, fe_trapped_25);
    mat4_(a0_28, 12u, fe_trapped_25);
    let _e7 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 0u, fe_trapped_25);
    let _e9 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 4u, fe_trapped_25);
    let _e10 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e7, _e9, fe_trapped_25);
    let _e12 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 8u, fe_trapped_25);
    let _e13 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e12, fe_trapped_25);
    let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 12u, fe_trapped_25);
    let _e16 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e13, _e15, fe_trapped_25);
    let _e18 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 1u, fe_trapped_25);
    let _e20 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 5u, fe_trapped_25);
    let _e21 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e18, _e20, fe_trapped_25);
    let _e23 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 9u, fe_trapped_25);
    let _e24 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e21, _e23, fe_trapped_25);
    let _e26 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 13u, fe_trapped_25);
    let _e27 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e24, _e26, fe_trapped_25);
    let _e29 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 2u, fe_trapped_25);
    let _e31 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 6u, fe_trapped_25);
    let _e32 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e29, _e31, fe_trapped_25);
    let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 10u, fe_trapped_25);
    let _e35 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e32, _e34, fe_trapped_25);
    let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 14u, fe_trapped_25);
    let _e38 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e35, _e37, fe_trapped_25);
    let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 3u, fe_trapped_25);
    let _e42 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 7u, fe_trapped_25);
    let _e43 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e40, _e42, fe_trapped_25);
    let _e45 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 11u, fe_trapped_25);
    let _e46 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e43, _e45, fe_trapped_25);
    let _e48 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, 15u, fe_trapped_25);
    let _e49 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e46, _e48, fe_trapped_25);
    local_53 = 0u;
    loop {
        let _e55 = local_53;
        let _e57 = (_e55 < 16u);
        loop_header_carry_48_ = _e57;
        if _e57 {
            switch (_e55 & 3u) {
                case 0u: {
                    local_54 = _e16;
                }
                case 1u: {
                    local_54 = _e27;
                }
                case 2u: {
                    local_54 = _e38;
                }
                default: {
                    local_54 = _e49;
                }
            }
            let _e66 = local_54;
            let _e67 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_28, _e55, fe_trapped_25);
            let _e68 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e67, _e66, fe_trapped_25);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_28, _e55, _e68, fe_trapped_25);
            local_53 = (_e55 + 1u);
            continue;
        } else {
            loop_did_return_3 = true;
            break;
        }
    }
    return;
}

fn multiply(a0_29: u32, a1_20: u32, a2_8: u32, fe_trapped_26: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_12_ {
    let _e4 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a1_20, a2_8, fe_trapped_26);
    return FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_11_(a0_29), FeLocal_fe_shader_private_layout_1_(_e4));
}

fn poseidon2_power7_plan(a0_30: u32, a1_21: u32, fe_trapped_27: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_15_ {
    let _e3 = multiply(a0_30, a1_21, a1_21, fe_trapped_27);
    let _e10 = multiply(_e3.f0_.f0_, _e3.f1_.f0_, _e3.f1_.f0_, fe_trapped_27);
    let _e15 = multiply(_e10.f0_.f0_, a1_21, _e3.f1_.f0_, fe_trapped_27);
    let _e22 = multiply(_e15.f0_.f0_, _e15.f1_.f0_, _e10.f1_.f0_, fe_trapped_27);
    return FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_11_(_e22.f0_.f0_), FeLocal_fe_shader_private_layout_1_(_e22.f1_.f0_));
}

fn internal_linear(a0_31: ptr<function, FeLocal_fe_shader_private_layout_5_>, fe_trapped_28: ptr<function, bool>) {
    var local_55: u32 = u32();
    var local_56: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_4_: bool;

    local_55 = 0u;
    local_56 = 0u;
    loop {
        let _e10 = local_55;
        let _e12 = local_56;
        let _e14 = (_e12 < 16u);
        loop_header_carry_4_ = _e14;
        if _e14 {
            let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, _e12, fe_trapped_28);
            let _e16 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e15, fe_trapped_28);
            local_55 = _e16;
            local_56 = (_e12 + 1u);
            continue;
        } else {
            let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 0u, fe_trapped_28);
            let _e24 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e22, 1476395013u, fe_trapped_28);
            let _e25 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e24, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 0u, _e25, fe_trapped_28);
            let _e28 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 1u, fe_trapped_28);
            let _e30 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e28, 268435454u, fe_trapped_28);
            let _e31 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e30, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 1u, _e31, fe_trapped_28);
            let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 2u, fe_trapped_28);
            let _e36 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e34, 536870908u, fe_trapped_28);
            let _e37 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e36, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 2u, _e37, fe_trapped_28);
            let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 3u, fe_trapped_28);
            let _e42 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e40, 134217727u, fe_trapped_28);
            let _e43 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e42, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 3u, _e43, fe_trapped_28);
            let _e46 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 4u, fe_trapped_28);
            let _e48 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e46, 805306362u, fe_trapped_28);
            let _e49 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e48, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 4u, _e49, fe_trapped_28);
            let _e52 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 5u, fe_trapped_28);
            let _e54 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e52, 1073741816u, fe_trapped_28);
            let _e55 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e54, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 5u, _e55, fe_trapped_28);
            let _e58 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 6u, fe_trapped_28);
            let _e60 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e58, 1879048194u, fe_trapped_28);
            let _e61 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e60, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 6u, _e61, fe_trapped_28);
            let _e64 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 7u, fe_trapped_28);
            let _e66 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e64, 1207959559u, fe_trapped_28);
            let _e67 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e66, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 7u, _e67, fe_trapped_28);
            let _e70 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 8u, fe_trapped_28);
            let _e72 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e70, 939524105u, fe_trapped_28);
            let _e73 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e72, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 8u, _e73, fe_trapped_28);
            let _e76 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 9u, fe_trapped_28);
            let _e78 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e76, 16777216u, fe_trapped_28);
            let _e79 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e78, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 9u, _e79, fe_trapped_28);
            let _e82 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 10u, fe_trapped_28);
            let _e84 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e82, 1073741824u, fe_trapped_28);
            let _e85 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e84, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 10u, _e85, fe_trapped_28);
            let _e88 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 11u, fe_trapped_28);
            let _e90 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e88, 536870912u, fe_trapped_28);
            let _e91 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e90, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 11u, _e91, fe_trapped_28);
            let _e94 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 12u, fe_trapped_28);
            let _e96 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e94, 32u, fe_trapped_28);
            let _e97 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e96, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 12u, _e97, fe_trapped_28);
            let _e100 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 13u, fe_trapped_28);
            let _e102 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e100, 1996488705u, fe_trapped_28);
            let _e103 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e102, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 13u, _e103, fe_trapped_28);
            let _e106 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 14u, fe_trapped_28);
            let _e108 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e106, 1744830465u, fe_trapped_28);
            let _e109 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e108, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 14u, _e109, fe_trapped_28);
            let _e112 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_31, 15u, fe_trapped_28);
            let _e114 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e112, 2013265889u, fe_trapped_28);
            let _e115 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e10, _e114, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_31, 15u, _e115, fe_trapped_28);
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn poseidon2_permutation_execution(a0_32: u32, a1_22: array<u32, 16>, a2_9: ptr<function, FeLocal_fe_shader_private_layout_13_>, fe_trapped_29: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_14_ {
    var fixed_local_8_: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_57: u32 = u32();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var loop_result_5: FeLocal_fe_shader_private_layout_14_;
    var loop_did_return_5: bool = false;
    var loop_header_carry_11_1: bool;
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var local_64: u32 = u32();
    var local_65: u32 = u32();
    var loop_result_6: FeLocal_fe_shader_private_layout_14_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_14_: bool;
    var loop_result_7: FeLocal_fe_shader_private_layout_14_;
    var loop_did_return_7: bool = false;
    var loop_header_carry_49_: bool;
    var local_66: u32 = u32();
    var local_67: u32 = u32();
    var local_68: u32 = u32();
    var loop_result_8: FeLocal_fe_shader_private_layout_14_;
    var loop_did_return_8: bool = false;
    var loop_header_carry_77_: bool;
    var local_69: u32 = u32();
    var local_70: u32 = u32();
    var local_71: u32 = u32();
    var loop_result_9: FeLocal_fe_shader_private_layout_14_;
    var loop_did_return_9: bool = false;
    var loop_header_carry_88_: bool;

    fixed_local_8_ = FeLocal_fe_shader_private_layout_5_(a1_22);
    external_linear((&fixed_local_8_), fe_trapped_29);
    local_57 = a0_32;
    local_58 = 0u;
    local_59 = 0u;
    loop {
        let _e17 = local_57;
        let _e19 = local_58;
        let _e21 = local_59;
        let _e23 = (_e21 < 4u);
        loop_header_carry_11_1 = _e23;
        if _e23 {
            local_63 = _e17;
            local_64 = _e19;
            local_65 = 0u;
            loop {
                let _e36 = local_63;
                let _e38 = local_64;
                let _e40 = local_65;
                let _e42 = (_e40 < 16u);
                loop_header_carry_14_ = _e42;
                if _e42 {
                    if (_e38 < 141u) {
                    } else {
                        (*fe_trapped_29) = true;
                        break;
                    }
                    let _e48 = (*a2_9).f0_[_e38];
                    let _e49 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_), _e40, fe_trapped_29);
                    let _e50 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e49, _e48, fe_trapped_29);
                    let _e51 = poseidon2_power7_plan(_e36, _e50, fe_trapped_29);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_), _e40, _e51.f1_.f0_, fe_trapped_29);
                    local_63 = _e51.f0_.f0_;
                    local_64 = (_e38 + 1u);
                    local_65 = (_e40 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e65 = local_63;
            let _e67 = local_64;
            external_linear((&fixed_local_8_), fe_trapped_29);
            if (_e21 > (4294967295u - 1u)) {
            } else {
                local_57 = _e65;
                local_58 = _e67;
                local_59 = (_e21 + 1u);
                continue;
            }
            (*fe_trapped_29) = true;
            break;
        } else {
            local_60 = _e17;
            local_61 = _e19;
            local_62 = 0u;
            break;
        }
    }
    let _e83 = local_57;
    let _e85 = local_58;
    local_60 = _e83;
    local_61 = _e85;
    local_62 = 0u;
    loop {
        let _e92 = local_60;
        let _e94 = local_61;
        let _e96 = local_62;
        let _e98 = (_e96 < 13u);
        loop_header_carry_49_ = _e98;
        if _e98 {
            if (_e94 < 141u) {
            } else {
                (*fe_trapped_29) = true;
                break;
            }
            let _e107 = (*a2_9).f0_[_e94];
            let _e109 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_), 0u, fe_trapped_29);
            let _e110 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e109, _e107, fe_trapped_29);
            let _e111 = poseidon2_power7_plan(_e92, _e110, fe_trapped_29);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_), 0u, _e111.f1_.f0_, fe_trapped_29);
            internal_linear((&fixed_local_8_), fe_trapped_29);
            local_60 = _e111.f0_.f0_;
            local_61 = (_e94 + 1u);
            local_62 = (_e96 + 1u);
            continue;
        } else {
            local_66 = _e94;
            local_67 = _e92;
            local_68 = 0u;
            break;
        }
    }
    let _e130 = local_60;
    let _e132 = local_61;
    local_66 = _e132;
    local_67 = _e130;
    local_68 = 0u;
    loop {
        let _e139 = local_66;
        let _e141 = local_67;
        let _e143 = local_68;
        let _e145 = (_e143 < 4u);
        loop_header_carry_77_ = _e145;
        if _e145 {
            local_69 = _e141;
            local_70 = _e139;
            local_71 = 0u;
            loop {
                let _e155 = local_69;
                let _e157 = local_70;
                let _e159 = local_71;
                let _e161 = (_e159 < 16u);
                loop_header_carry_88_ = _e161;
                if _e161 {
                    if (_e157 < 141u) {
                    } else {
                        (*fe_trapped_29) = true;
                        break;
                    }
                    let _e167 = (*a2_9).f0_[_e157];
                    let _e168 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_), _e159, fe_trapped_29);
                    let _e169 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e168, _e167, fe_trapped_29);
                    let _e170 = poseidon2_power7_plan(_e155, _e169, fe_trapped_29);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_), _e159, _e170.f1_.f0_, fe_trapped_29);
                    local_69 = _e170.f0_.f0_;
                    local_70 = (_e157 + 1u);
                    local_71 = (_e159 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e184 = local_69;
            let _e186 = local_70;
            external_linear((&fixed_local_8_), fe_trapped_29);
            if (_e143 > (4294967295u - 1u)) {
            } else {
                local_66 = _e186;
                local_67 = _e184;
                local_68 = (_e143 + 1u);
                continue;
            }
            (*fe_trapped_29) = true;
            break;
        } else {
            let _e197 = fixed_local_8_.f0_;
            loop_result_8 = FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_11_(_e141), _e197);
            loop_did_return_8 = true;
            break;
        }
    }
    let _e205 = loop_result_8;
    return _e205;
}

fn permute(a0_33: ptr<function, FeLocal_fe_shader_private_layout_5_>, a1_23: ptr<function, FeLocal_fe_shader_private_layout_13_>, fe_trapped_30: ptr<function, bool>) {
    let _e4 = (*a0_33).f0_;
    let _e6 = poseidon2_permutation_execution(0u, _e4, a1_23, fe_trapped_30);
    (*a0_33).f0_ = _e6.f1_;
    return;
}

fn absorb_scheduled_block(a0_34: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_24: ptr<function, array<FeLocal_fe_shader_private_layout_1_, 8>>, a2_10: u32, a3_4: bool, fe_trapped_31: ptr<function, bool>) {
    var local_72: u32;
    var local_73: bool = false;
    var local_74: u32 = u32();
    var local_75: u32;
    var local_76: bool = false;
    var local_77: bool = bool();
    var local_78: bool = bool();
    var local_79: u32 = u32();
    var fixed_local_643_: FeLocal_fe_shader_private_layout_13_ = FeLocal_fe_shader_private_layout_13_();
    var fixed_local_649_: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();
    var local_80: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_652_: bool;
    var local_81: u32 = u32();

    let _e10 = ((8u < a2_10) == false);
    let _e12 = (*a0_34).f3_;
    let _e14 = (*a0_34).f2_;
    let _e17 = ((_e14 < _e12) == false);
    if _e17 {
        let _e19 = (*a0_34).f2_;
        let _e21 = (*a0_34).f3_;
        if (_e19 < _e21) {
            (*fe_trapped_31) = true;
        } else {
            local_74 = (_e19 - _e21);
        }
    }
    let _e28 = local_74;
    let _e33 = (*a0_34).f1_;
    let _e37 = (*a0_34).f1_;
    if (_e37 > (4294967295u - a2_10)) {
    } else {
        let _e47 = (*a0_34).f3_;
        if (_e47 > (4294967295u - a2_10)) {
        } else {
            let _e53 = (*a0_34).f2_;
            let _e56 = (*a0_34).f1_;
            if (_e56 > (4294967295u - a2_10)) {
            } else {
                if (((_e47 + a2_10) == _e53) == a3_4) {
                    if (((_e56 + a2_10) == 8u) | a3_4) {
                        local_77 = true;
                    }
                }
                let _e70 = local_77;
                let _e72 = (*a0_34).f4_;
                if (_e72 == 1u) {
                    if ((_e10 == false) | (_e17 == false)) {
                    } else {
                        if ((((_e28 < a2_10) == false) == false) | ((_e33 < 8u) == false)) {
                        } else {
                            if ((((8u < (_e37 + a2_10)) == false) == false) | (_e70 == false)) {
                            } else {
                                local_78 = true;
                            }
                        }
                    }
                }
                let _e94 = local_78;
                if _e10 {
                    local_79 = a2_10;
                } else {
                    local_79 = 8u;
                }
                let _e99 = local_79;
                fixed_local_643_ = FeLocal_fe_shader_private_layout_13_(array<u32, 141>(1582131512u, 1899519471u, 1641921850u, 462688640u, 1293997949u, 1380417575u, 1932416963u, 283521298u, 1016708647u, 35751290u, 1270782647u, 851730739u, 795004022u, 929571430u, 523703523u, 1593957757u, 895976710u, 1742343460u, 917700746u, 1516725708u, 1170237629u, 785693164u, 613651155u, 352999196u, 678775274u, 1005433272u, 1704854670u, 1174551920u, 508930349u, 530338447u, 1327158816u, 1417652352u, 1153538870u, 583201050u, 397833841u, 1440603828u, 454600685u, 174490638u, 171758601u, 1998476616u, 1403697810u, 1807736944u, 450348306u, 1458895865u, 787037868u, 1063762964u, 1987002214u, 481645916u, 1231767638u, 1323639433u, 238360103u, 2012412459u, 1024945356u, 1108359895u, 1284135849u, 606928406u, 1021455954u, 719347978u, 659671051u, 769588663u, 805534062u, 592213995u, 1752728055u, 663410947u, 250494022u, 528496384u, 1472966118u, 977089650u, 1885890237u, 1094557811u, 147492661u, 664163003u, 398852570u, 336233633u, 1628648315u, 888594966u, 586791090u, 999830298u, 304461056u, 552699684u, 450698925u, 667466464u, 1736509752u, 1327760865u, 1153241151u, 816675655u, 1076172858u, 1914832527u, 1668723429u, 1365579850u, 975704528u, 1031625628u, 1393317533u, 1554700828u, 1023828605u, 1610378860u, 347744760u, 1909572073u, 739227895u, 428565985u, 633143046u, 121797685u, 94048546u, 1369350241u, 1250010422u, 114268841u, 515033604u, 49052844u, 1962329907u, 1380892638u, 1860017417u, 64711457u, 9758460u, 1681838395u, 710850601u, 1020228997u, 1414164790u, 1531515535u, 36158805u, 713604525u, 89935127u, 1870801994u, 395985906u, 1122769045u, 1760811055u, 819787042u, 134654834u, 1755145179u, 18433016u, 1701878989u, 1782339297u, 1483861396u, 962480061u, 1857590724u, 222440409u, 63223417u, 515206622u, 1348364213u, 973414686u, 1591066884u, 705852913u));
                let _e246 = (*a0_34).f0_;
                fixed_local_649_ = FeLocal_fe_shader_private_layout_5_(_e246);
                local_80 = 0u;
                loop {
                    let _e255 = local_80;
                    let _e256 = (_e255 < _e99);
                    loop_header_carry_652_ = _e256;
                    if _e256 {
                        let _e258 = (*a0_34).f1_;
                        if (_e258 > (4294967295u - _e255)) {
                            (*fe_trapped_31) = true;
                            break;
                        }
                        let _e266 = (*a1_24)[_e255].f0_;
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_649_), (_e258 + _e255), _e266, fe_trapped_31);
                        local_80 = (_e255 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                permute((&fixed_local_649_), (&fixed_local_643_), fe_trapped_31);
                let _e272 = fixed_local_649_.f0_;
                (*a0_34).f0_ = _e272;
                (*a0_34).f1_ = 0u;
                let _e277 = (*a0_34).f3_;
                if (_e277 > (4294967295u - a2_10)) {
                    (*fe_trapped_31) = true;
                }
                (*a0_34).f3_ = (_e277 + a2_10);
                if _e94 {
                    local_81 = 1u;
                }
                let _e288 = local_81;
                (*a0_34).f4_ = _e288;
                local_76 = true;
            }
            let _e293 = local_76;
            if _e293 {
            }
        }
        let _e295 = local_76;
        if _e295 {
        }
    }
    let _e298 = local_76;
    if _e298 {
    } else {
        (*fe_trapped_31) = true;
    }
    return;
}

fn zero() -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_();
}

fn finish_scheduled(a0_35: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_32: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_82: FeLocal_fe_shader_private_layout_4_;
    var local_83: bool = false;
    var fixed_local_19_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var local_84: u32 = u32();
    var loop_result_11: FeLocal_fe_shader_private_layout_4_;
    var loop_did_return_11: bool = false;
    var loop_header_carry_55_: bool;
    var fixed_local_57_: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    let _e4 = (*a0_35).f4_;
    if ((_e4 == 1u) == false) {
    } else {
        let _e10 = (*a0_35).f3_;
        let _e12 = (*a0_35).f2_;
        if ((_e10 == _e12) == false) {
        } else {
            let _e17 = (*a0_35).f1_;
            if ((_e17 == 0u) == false) {
            } else {
                let _e23 = (*a0_35).f0_;
                local_84 = 0u;
                loop {
                    let _e32 = local_84;
                    let _e34 = (_e32 < 8u);
                    loop_header_carry_55_ = _e34;
                    if _e34 {
                        fixed_local_57_ = FeLocal_fe_shader_private_layout_5_(_e23);
                        let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_57_), _e32, fe_trapped_32);
                        fixed_local_19_[_e32].f0_ = _e37;
                        local_84 = (_e32 + 1u);
                        continue;
                    } else {
                        let _e43 = fixed_local_19_;
                        loop_result_11 = FeLocal_fe_shader_private_layout_4_(1u, FeLocal_fe_shader_private_layout_3_(_e43));
                        loop_did_return_11 = true;
                        break;
                    }
                }
                let _e52 = loop_did_return_11;
                if _e52 {
                    let _e54 = loop_result_11;
                    local_82 = _e54;
                    local_83 = true;
                }
            }
            let _e59 = local_83;
            if _e59 {
            }
        }
        let _e61 = local_83;
        if _e61 {
        }
    }
    let _e68 = local_83;
    if _e68 {
    } else {
        let _e62 = zero();
        local_82 = FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, _e62);
    }
    let _e70 = local_82;
    return _e70;
}

fn require_(a0_36: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_25: bool) -> FeLocal_fe_shader_private_layout_4_ {
    var local_85: FeLocal_fe_shader_private_layout_4_;
    var local_86: bool = false;

    let _e4 = (*a0_36).f0_;
    if ((_e4 == 1u) == false) {
    } else {
        if (a1_25 == false) {
        } else {
            let _e11 = (*a0_36);
            local_85 = _e11;
            local_86 = true;
        }
        let _e16 = local_86;
        if _e16 {
        }
    }
    let _e23 = local_86;
    if _e23 {
    } else {
        let _e17 = zero();
        local_85 = FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_4_().f0_, _e17);
    }
    let _e25 = local_85;
    return _e25;
}

fn chunk_tree_stride_nodes(a0_37: u32, fe_trapped_33: ptr<function, bool>) -> u32 {
    var local_87: u32;
    var local_88: bool = false;
    var local_89: u32 = u32();

    if (a0_37 == 0u) {
    } else {
        let _e10 = (2u * a0_37);
        let _e11 = (2u != 0u);
        if (_e11 && (a0_37 > (4294967295u / select(1u, 2u, _e11)))) {
            (*fe_trapped_33) = true;
        } else {
            if (_e10 < 1u) {
                (*fe_trapped_33) = true;
            } else {
                local_89 = (_e10 - 1u);
            }
        }
    }
    let _e23 = local_89;
    return _e23;
}

fn digest(a0_38: ptr<function, FeLocal_fe_shader_private_layout_4_>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_90: FeLocal_fe_shader_private_layout_3_;
    var local_91: bool = false;

    let _e3 = (*a0_38).f0_;
    if ((_e3 == 1u) == false) {
        let _e8 = zero();
        local_90 = _e8;
        local_91 = true;
    }
    let _e16 = local_91;
    if _e16 {
    } else {
        let _e13 = (*a0_38).f1_;
        local_90 = _e13;
    }
    let _e18 = local_90;
    return _e18;
}

fn impl_Poseidon2Digest_field(a0_39: ptr<function, FeLocal_fe_shader_private_layout_3_>, a1_26: u32) -> u32 {
    var local_92: u32;
    var local_93: bool = false;

    if ((a1_26 < 8u) == false) {
        local_92 = 0u;
        local_93 = true;
    }
    let _e17 = local_93;
    if _e17 {
    } else {
        let _e14 = (*a0_39).f0_[a1_26].f0_;
        local_92 = _e14;
    }
    let _e19 = local_92;
    return _e19;
}

fn store_digest_at(a1_27: u32, a2_11: ptr<function, FeLocal_fe_shader_private_layout_3_>, fe_trapped_34: ptr<function, bool>) {
    var local_94: u32 = u32();
    var loop_result_12: u32;
    var loop_did_return_12: bool = false;
    var loop_header_carry_6_1: bool;

    local_94 = 0u;
    loop {
        let _e9 = local_94;
        let _e11 = (_e9 < 8u);
        loop_header_carry_6_1 = _e11;
        if _e11 {
            if (a1_27 > (4294967295u - _e9)) {
                (*fe_trapped_34) = true;
                break;
            }
            let _e17 = impl_Poseidon2Digest_field(a2_11, _e9);
            let _e19 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e17, 1u, fe_trapped_34);
            fri_scratch[i32((a1_27 + _e9))] = _e19;
            local_94 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_12 = true;
            break;
        }
    }
    return;
}

fn is_valid(a0_40: ptr<function, FeLocal_fe_shader_private_layout_4_>) -> bool {
    let _e2 = (*a0_40).f0_;
    return (_e2 == 1u);
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var local_3: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_4: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_5: bool = bool();
    var local_6: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_333_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var fixed_local_363_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var fixed_local_365_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var fixed_local_376_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var fixed_local_378_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var local_7: u32 = u32();
    var fixed_local_382_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    let _e8 = params.p19_;
    let _e23 = fri_scratch[i32(237706u)];
    if (_e23 < 12u) {
        let _e26 = load_fri_round_placement_at(237550u, _e23, (&fe_trapped));
        let _e33 = (2u != 0u);
        if (_e33 && (_e26.f5_ > (4294967295u / select(1u, 2u, _e33)))) {
        } else {
            if (global_invocation_id.x < (2u * _e26.f5_)) {
                if (147438u > (4294967295u - global_invocation_id.x)) {
                } else {
                    fri_scratch[i32((147438u + global_invocation_id.x))] = 0u;
                    let _e48 = fri_placement_is_valid(_e26, _e23, 4096u, 12u, (&fe_trapped));
                    if (_e26.f5_ == 0u) {
                    } else {
                        let _e52 = (global_invocation_id.x / _e26.f5_);
                        let _e53 = (global_invocation_id.x % _e26.f5_);
                        if (_e52 == 0u) {
                            local_2 = 480774u;
                        } else {
                            local_2 = 497154u;
                        }
                        let _e61 = local_2;
                        if (_e23 == 0u) {
                            let _e68 = (_e53 * 4u);
                            let _e69 = (_e53 != 0u);
                            if (_e69 && (4u > (4294967295u / select(1u, _e53, _e69)))) {
                                fe_trapped = true;
                            } else {
                                if (460275u > (4294967295u - _e68)) {
                                    fe_trapped = true;
                                } else {
                                    let _e80 = load_ext4_at((460275u + _e68), (&fe_trapped));
                                    let _e82 = (_e53 + _e26.f5_);
                                    if (_e53 > (4294967295u - _e26.f5_)) {
                                        fe_trapped = true;
                                    } else {
                                        let _e90 = (_e82 * 4u);
                                        let _e91 = (_e82 != 0u);
                                        if (_e91 && (4u > (4294967295u / select(1u, _e82, _e91)))) {
                                            fe_trapped = true;
                                        } else {
                                            if (460275u > (4294967295u - _e90)) {
                                                fe_trapped = true;
                                            } else {
                                                let _e102 = load_ext4_at((460275u + _e90), (&fe_trapped));
                                                if (_e52 == 1u) {
                                                    if (0.5f <= _e8) {
                                                        if (_e53 == 1u) {
                                                            let _e109 = coefficient_0_(_e80);
                                                            let _e110 = coefficient_1_(_e80);
                                                            let _e112 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1u, (&fe_trapped));
                                                            let _e113 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_5c64_(_e110, _e112, (&fe_trapped));
                                                            let _e114 = coefficient_2_(_e80);
                                                            let _e115 = coefficient_3_(_e80);
                                                            let _e116 = from_coordinate_fields(_e109, _e113, _e114, _e115);
                                                            local_3 = _e102;
                                                            local_4 = _e116;
                                                        } else {
                                                            local_3 = _e102;
                                                            local_4 = _e80;
                                                        }
                                                    } else {
                                                        local_3 = _e102;
                                                        local_4 = _e80;
                                                    }
                                                } else {
                                                    local_3 = _e102;
                                                    local_4 = _e80;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            let _e127 = (_e26.f6_ - _e26.f4_);
                            if (_e26.f6_ < _e26.f4_) {
                                fe_trapped = true;
                            } else {
                                let _e131 = (_e127 + _e53);
                                if (_e127 > (4294967295u - _e53)) {
                                    fe_trapped = true;
                                } else {
                                    let _e139 = (_e131 * 4u);
                                    let _e140 = (_e131 != 0u);
                                    if (_e140 && (4u > (4294967295u / select(1u, _e131, _e140)))) {
                                        fe_trapped = true;
                                    } else {
                                        if (_e61 > (4294967295u - _e139)) {
                                            fe_trapped = true;
                                        } else {
                                            let _e151 = load_ext4_at((_e61 + _e139), (&fe_trapped));
                                            let _e153 = (_e127 + _e53);
                                            if (_e127 > (4294967295u - _e53)) {
                                                fe_trapped = true;
                                            } else {
                                                let _e158 = (_e153 + _e26.f5_);
                                                if (_e153 > (4294967295u - _e26.f5_)) {
                                                    fe_trapped = true;
                                                } else {
                                                    let _e166 = (_e158 * 4u);
                                                    let _e167 = (_e158 != 0u);
                                                    if (_e167 && (4u > (4294967295u / select(1u, _e158, _e167)))) {
                                                        fe_trapped = true;
                                                    } else {
                                                        if (_e61 > (4294967295u - _e166)) {
                                                            fe_trapped = true;
                                                        } else {
                                                            let _e178 = load_ext4_at((_e61 + _e166), (&fe_trapped));
                                                            local_3 = _e178;
                                                            local_4 = _e151;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        let _e182 = local_3;
                        let _e184 = local_4;
                        let _e189 = (_e52 * 12u);
                        let _e190 = (_e52 != 0u);
                        if (_e190 && (12u > (4294967295u / select(1u, _e52, _e190)))) {
                        } else {
                            let _e196 = (_e189 + _e23);
                            if (_e189 > (4294967295u - _e23)) {
                            } else {
                                let _e203 = (_e196 * 4u);
                                let _e204 = (_e196 != 0u);
                                if (_e204 && (4u > (4294967295u / select(1u, _e196, _e204)))) {
                                } else {
                                    if (513534u > (4294967295u - _e203)) {
                                    } else {
                                        let _e214 = load_ext4_at((513534u + _e203), (&fe_trapped));
                                        if _e48 {
                                            if (514030u > (4294967295u - _e196)) {
                                                fe_trapped = true;
                                            } else {
                                                let _e222 = proof[i32((514030u + _e196))];
                                                if (_e222 == 1u) {
                                                    local_5 = true;
                                                }
                                            }
                                        }
                                        let _e229 = local_5;
                                        if _e229 {
                                            let _e231 = two_adic_root(_e26.f3_, (&fe_trapped));
                                            let _e232 = fri_shift(_e23, (&fe_trapped));
                                            let _e233 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_1ab9_(_e231, _e53, (&fe_trapped));
                                            let _e234 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e232, _e233, (&fe_trapped));
                                            let _e235 = fold_fri_pair_value_at_point(_e184, _e182, _e214, _e234, (&fe_trapped));
                                            local_6 = _e235;
                                        } else {
                                            local_6 = FeLocal_fe_shader_private_layout_2_();
                                        }
                                        let _e240 = local_6;
                                        let _e243 = (_e26.f6_ + _e53);
                                        if (_e26.f6_ > (4294967295u - _e53)) {
                                        } else {
                                            let _e250 = (_e243 * 4u);
                                            let _e251 = (_e243 != 0u);
                                            if (_e251 && (4u > (4294967295u / select(1u, _e243, _e251)))) {
                                            } else {
                                                if (_e61 > (4294967295u - _e250)) {
                                                } else {
                                                    store_ext4_at((_e61 + _e250), _e240, (&fe_trapped));
                                                    let _e262 = protocol_round_tag(1179779072u, _e26.f2_, (&fe_trapped));
                                                    let _e265 = begin_prefixed_tag(_e262, 4u, 4u, (&fe_trapped));
                                                    fixed_local_333_ = _e265;
                                                    let _e268 = coefficient_0_(_e240);
                                                    let _e269 = coefficient_1_(_e240);
                                                    let _e270 = coefficient_2_(_e240);
                                                    let _e271 = coefficient_3_(_e240);
                                                    fixed_local_363_ = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e268), FeLocal_fe_shader_private_layout_1_(_e269), FeLocal_fe_shader_private_layout_1_(_e270), FeLocal_fe_shader_private_layout_1_(_e271), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
                                                    absorb_scheduled_block((&fixed_local_333_), (&fixed_local_363_), 4u, true, (&fe_trapped));
                                                    let _e285 = finish_scheduled((&fixed_local_333_), (&fe_trapped));
                                                    fixed_local_365_ = _e285;
                                                    let _e288 = require_((&fixed_local_365_), _e229);
                                                    let _e290 = chunk_tree_stride_nodes(4096u, (&fe_trapped));
                                                    let _e295 = (_e52 * _e290);
                                                    let _e296 = (_e52 != 0u);
                                                    if (_e296 && (_e290 > (4294967295u / select(1u, _e52, _e296)))) {
                                                    } else {
                                                        let _e302 = (_e295 + _e26.f7_);
                                                        if (_e295 > (4294967295u - _e26.f7_)) {
                                                        } else {
                                                            let _e306 = (_e302 + _e53);
                                                            if (_e302 > (4294967295u - _e53)) {
                                                            } else {
                                                                fixed_local_376_ = _e288;
                                                                let _e311 = digest((&fixed_local_376_));
                                                                fixed_local_378_ = _e311;
                                                                let _e318 = (_e306 * 8u);
                                                                let _e319 = (_e306 != 0u);
                                                                if (_e319 && (8u > (4294967295u / select(1u, _e306, _e319)))) {
                                                                } else {
                                                                    if (FeLocal_fe_shader_private_layout_9_().f0_ > (4294967295u - _e318)) {
                                                                        fe_trapped = true;
                                                                    }
                                                                    store_digest_at((FeLocal_fe_shader_private_layout_9_().f0_ + _e318), (&fixed_local_378_), (&fe_trapped));
                                                                    if (131056u > (4294967295u - _e306)) {
                                                                        fe_trapped = true;
                                                                    }
                                                                    fixed_local_382_ = _e288;
                                                                    let _e337 = is_valid((&fixed_local_382_));
                                                                    if _e337 {
                                                                        local_7 = 1u;
                                                                    }
                                                                    let _e341 = local_7;
                                                                    fri_scratch[i32((131056u + _e306))] = _e341;
                                                                    local_1 = true;
                                                                }
                                                                let _e348 = local_1;
                                                                if _e348 {
                                                                } else {
                                                                    fe_trapped = true;
                                                                }
                                                            }
                                                            let _e350 = local_1;
                                                            if _e350 {
                                                            }
                                                        }
                                                        let _e352 = local_1;
                                                        if _e352 {
                                                        }
                                                    }
                                                    let _e354 = local_1;
                                                    if _e354 {
                                                    }
                                                }
                                                let _e356 = local_1;
                                                if _e356 {
                                                }
                                            }
                                            let _e358 = local_1;
                                            if _e358 {
                                            }
                                        }
                                        let _e360 = local_1;
                                        if _e360 {
                                        }
                                    }
                                    let _e362 = local_1;
                                    if _e362 {
                                    }
                                }
                                let _e364 = local_1;
                                if _e364 {
                                }
                            }
                            let _e366 = local_1;
                            if _e366 {
                            }
                        }
                        let _e368 = local_1;
                        if _e368 {
                        }
                    }
                    let _e370 = local_1;
                    if _e370 {
                    }
                }
                let _e373 = local_1;
                if _e373 {
                } else {
                    fe_trapped = true;
                }
            }
            let _e377 = local_1;
            if _e377 {
            } else {
                local_1 = true;
            }
        }
        let _e380 = local_1;
        if _e380 {
        } else {
            fe_trapped = true;
        }
    }
    let _e391 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 4096u)) + (global_invocation_id.z * 4096u))] = u32(_e391);
}
