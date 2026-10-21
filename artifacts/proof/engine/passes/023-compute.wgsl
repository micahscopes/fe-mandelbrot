struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: FeLocal_fe_shader_private_layout_0_,
    f2_: FeLocal_fe_shader_private_layout_0_,
    f3_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: bool,
    f1_: FeLocal_fe_shader_private_layout_1_,
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

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
    f3_: FeLocal_fe_shader_private_layout_1_,
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

fn precision_lib_word_field_canonicalize_ga970_0909_(a0_: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_3: u32;
    var local_4: bool = false;

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
                                    local_3 = (a0_ - _e36);
                                    local_4 = true;
                                }
                                let _e48 = local_4;
                                if _e48 {
                                }
                            }
                            let _e50 = local_4;
                            if _e50 {
                            }
                        }
                        let _e52 = local_4;
                        if _e52 {
                        }
                    }
                    let _e54 = local_4;
                    if _e54 {
                    }
                }
                let _e56 = local_4;
                if _e56 {
                }
            }
            let _e58 = local_4;
            if _e58 {
            }
        }
        let _e60 = local_4;
        if _e60 {
        }
    }
    let _e63 = local_4;
    if _e63 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e65 = local_3;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_1: u32, a1_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_5: u32;
    var local_6: bool = false;

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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_0909_((_e228 + _e226), fe_trapped_2);
                                                                                                            local_5 = _e235;
                                                                                                            local_6 = true;
                                                                                                        }
                                                                                                        let _e240 = local_6;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_6;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_6;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_6;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_6;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_6;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_6;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_6;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_6;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_6;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_6;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_6;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_6;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_6;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_6;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_6;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_6;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_6;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_6;
                                if _e276 {
                                }
                            }
                            let _e278 = local_6;
                            if _e278 {
                            }
                        }
                        let _e280 = local_6;
                        if _e280 {
                        }
                    }
                    let _e282 = local_6;
                    if _e282 {
                    }
                }
                let _e284 = local_6;
                if _e284 {
                }
            }
            let _e286 = local_6;
            if _e286 {
            }
        }
        let _e288 = local_6;
        if _e288 {
        }
    }
    let _e291 = local_6;
    if _e291 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e293 = local_5;
    return _e293;
}

fn precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a0_2: u32, fe_trapped_3: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_0f9a((a0_2 % 2013265921u), 1172168163u, fe_trapped_3);
    return _e5;
}

fn from_coordinate_words(a0_3: u32, a1_1: u32, a2_: u32, a3_: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a0_3, fe_trapped_4);
    let _e6 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a1_1, fe_trapped_4);
    let _e7 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a2_, fe_trapped_4);
    let _e8 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(a3_, fe_trapped_4);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e5), FeLocal_fe_shader_private_layout_0_(_e6), FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e8));
}

fn load_ext4_at_gfa0b(a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_7: FeLocal_fe_shader_private_layout_1_;
    var local_8: bool = false;

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
                let _e31 = from_coordinate_words(_e6, _e14, _e22, _e30, fe_trapped_5);
                local_7 = _e31;
                local_8 = true;
            }
            let _e36 = local_8;
            if _e36 {
            }
        }
        let _e38 = local_8;
        if _e38 {
        }
    }
    let _e41 = local_8;
    if _e41 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e43 = local_7;
    return _e43;
}

fn load_ext4_at_g5a92_(a1_3: u32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_9: FeLocal_fe_shader_private_layout_1_;
    var local_10: bool = false;

    let _e6 = fri_scratch[i32(a1_3)];
    if (a1_3 > (4294967295u - 1u)) {
    } else {
        let _e14 = fri_scratch[i32((a1_3 + 1u))];
        if (a1_3 > (4294967295u - 2u)) {
        } else {
            let _e22 = fri_scratch[i32((a1_3 + 2u))];
            if (a1_3 > (4294967295u - 3u)) {
            } else {
                let _e30 = fri_scratch[i32((a1_3 + 3u))];
                let _e31 = from_coordinate_words(_e6, _e14, _e22, _e30, fe_trapped_6);
                local_9 = _e31;
                local_10 = true;
            }
            let _e36 = local_10;
            if _e36 {
            }
        }
        let _e38 = local_10;
        if _e38 {
        }
    }
    let _e41 = local_10;
    if _e41 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e43 = local_9;
    return _e43;
}

fn precision_lib_word_field_impl_WordField_8212_two_adic_root_ga970_e9c4_(a0_4: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    var local_11: u32;
    var local_12: bool = false;
    var local_13: u32 = u32();
    var local_14: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_11_: bool;
    var loop_header_carry_13_: bool;

    if (27u < a0_4) {
        local_11 = 0u;
        local_12 = true;
    }
    let _e39 = local_12;
    if _e39 {
    } else {
        local_13 = 1476048622u;
        local_14 = (27u - a0_4);
        loop {
            let _e18 = local_13;
            let _e20 = local_14;
            let _e22 = (_e20 == 0u);
            let _e24 = (_e22 == false);
            loop_header_carry_11_ = _e22;
            loop_header_carry_13_ = _e24;
            if _e24 {
                let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e18, _e18, fe_trapped_7);
                local_13 = _e25;
                local_14 = (_e20 - 1u);
                continue;
            } else {
                loop_result = _e18;
                loop_did_return = true;
                break;
            }
        }
        let _e36 = loop_result;
        local_11 = _e36;
    }
    let _e41 = local_11;
    return _e41;
}

fn precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_645e(a0_5: u32, a1_4: u32, fe_trapped_8: ptr<function, bool>) -> u32 {
    var local_15: u32 = u32();
    var local_16: u32 = u32();
    var local_17: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_7_: bool;
    var loop_header_carry_9_: bool;
    var local_18: u32 = u32();

    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1u, fe_trapped_8);
    local_15 = a0_5;
    local_16 = _e4;
    local_17 = a1_4;
    loop {
        let _e13 = local_15;
        let _e15 = local_16;
        let _e17 = local_17;
        let _e19 = (_e17 == 0u);
        let _e21 = (_e19 == false);
        loop_header_carry_7_ = _e19;
        loop_header_carry_9_ = _e21;
        if _e21 {
            if ((_e17 & 1u) == 1u) {
                let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e15, _e13, fe_trapped_8);
                local_18 = _e27;
            } else {
                local_18 = _e15;
            }
            let _e31 = local_18;
            let _e32 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e13, _e13, fe_trapped_8);
            local_15 = _e32;
            local_16 = _e31;
            local_17 = (_e17 >> 1u);
            continue;
        } else {
            loop_result_1 = _e15;
            loop_did_return_1 = true;
            break;
        }
    }
    let _e44 = loop_result_1;
    return _e44;
}

fn precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_3199_(a0_6: u32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(a0_6), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_());
}

fn radix2_root(a0_7: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = precision_lib_word_field_impl_WordField_8212_two_adic_root_ga970_e9c4_(a0_7, fe_trapped_9);
    let _e3 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_3199_(_e2);
    return _e3;
}

fn precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(a0_8: u32, a1_5: u32, fe_trapped_10: ptr<function, bool>) -> u32 {
    var local_19: u32;
    var local_20: bool = false;

    if (a0_8 > (4294967295u - a1_5)) {
        (*fe_trapped_10) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_0909_((a0_8 + a1_5), fe_trapped_10);
    return _e9;
}

fn precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(a0_9: u32, a1_6: u32, fe_trapped_11: ptr<function, bool>) -> u32 {
    var local_21: u32;
    var local_22: bool = false;

    let _e6 = (a0_9 + 2013265921u);
    if (a0_9 > (4294967295u - 2013265921u)) {
    } else {
        if (_e6 < a1_6) {
        } else {
            let _e11 = precision_lib_word_field_canonicalize_ga970_0909_((_e6 - a1_6), fe_trapped_11);
            local_21 = _e11;
            local_22 = true;
        }
        let _e16 = local_22;
        if _e16 {
        }
    }
    let _e19 = local_22;
    if _e19 {
    } else {
        (*fe_trapped_11) = true;
    }
    let _e21 = local_21;
    return _e21;
}

fn impl_WordField_inverse_or_zero_ga970_(a0_10: u32, fe_trapped_12: ptr<function, bool>) -> u32 {
    let _e3 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_645e(a0_10, 2013265919u, fe_trapped_12);
    return _e3;
}

fn neg(a0_11: u32, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_23: u32;
    var local_24: bool = false;

    if (2013265921u < a0_11) {
        (*fe_trapped_13) = true;
    }
    let _e7 = precision_lib_word_field_canonicalize_ga970_0909_((2013265921u - a0_11), fe_trapped_13);
    return _e7;
}

fn impl_BinomialExtension4_inverse_or_zero_ga970_(a0_12: FeLocal_fe_shader_private_layout_1_, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e11 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(11u, fe_trapped_14);
    let _e13 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1u, fe_trapped_14);
    let _e15 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1u, fe_trapped_14);
    let _e16 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e13, _e15, fe_trapped_14);
    let _e17 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f0_.f0_, a0_12.f0_.f0_, fe_trapped_14);
    let _e18 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e11, a0_12.f2_.f0_, fe_trapped_14);
    let _e19 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e18, a0_12.f2_.f0_, fe_trapped_14);
    let _e20 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e17, _e19, fe_trapped_14);
    let _e21 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e16, _e11, fe_trapped_14);
    let _e22 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e21, a0_12.f1_.f0_, fe_trapped_14);
    let _e23 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e22, a0_12.f3_.f0_, fe_trapped_14);
    let _e24 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(_e20, _e23, fe_trapped_14);
    let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e16, a0_12.f0_.f0_, fe_trapped_14);
    let _e26 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e25, a0_12.f2_.f0_, fe_trapped_14);
    let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f1_.f0_, a0_12.f1_.f0_, fe_trapped_14);
    let _e28 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(_e26, _e27, fe_trapped_14);
    let _e29 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e11, a0_12.f3_.f0_, fe_trapped_14);
    let _e30 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e29, a0_12.f3_.f0_, fe_trapped_14);
    let _e31 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(_e28, _e30, fe_trapped_14);
    let _e32 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e24, _e24, fe_trapped_14);
    let _e33 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e11, _e31, fe_trapped_14);
    let _e34 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e33, _e31, fe_trapped_14);
    let _e35 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(_e32, _e34, fe_trapped_14);
    let _e36 = impl_WordField_inverse_or_zero_ga970_(_e35, fe_trapped_14);
    let _e37 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e24, _e36, fe_trapped_14);
    let _e38 = neg(_e31, fe_trapped_14);
    let _e39 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e38, _e36, fe_trapped_14);
    let _e40 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f0_.f0_, _e37, fe_trapped_14);
    let _e41 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e11, a0_12.f2_.f0_, fe_trapped_14);
    let _e42 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e41, _e39, fe_trapped_14);
    let _e43 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e40, _e42, fe_trapped_14);
    let _e44 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f0_.f0_, _e39, fe_trapped_14);
    let _e45 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f2_.f0_, _e37, fe_trapped_14);
    let _e46 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e44, _e45, fe_trapped_14);
    let _e47 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f1_.f0_, _e37, fe_trapped_14);
    let _e48 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e11, a0_12.f3_.f0_, fe_trapped_14);
    let _e49 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e48, _e39, fe_trapped_14);
    let _e50 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e47, _e49, fe_trapped_14);
    let _e51 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f1_.f0_, _e39, fe_trapped_14);
    let _e52 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_12.f3_.f0_, _e37, fe_trapped_14);
    let _e53 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e51, _e52, fe_trapped_14);
    let _e54 = neg(_e50, fe_trapped_14);
    let _e55 = neg(_e53, fe_trapped_14);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e43), FeLocal_fe_shader_private_layout_0_(_e54), FeLocal_fe_shader_private_layout_0_(_e46), FeLocal_fe_shader_private_layout_0_(_e55));
}

fn impl_BinomialExtension4_one_ga970_(fe_trapped_15: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1u, fe_trapped_15);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e2), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_());
}

fn precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(a0_13: FeLocal_fe_shader_private_layout_1_, a1_7: FeLocal_fe_shader_private_layout_1_, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(11u, fe_trapped_16);
    let _e9 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f0_.f0_, a1_7.f0_.f0_, fe_trapped_16);
    let _e14 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f1_.f0_, a1_7.f3_.f0_, fe_trapped_16);
    let _e19 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f2_.f0_, a1_7.f2_.f0_, fe_trapped_16);
    let _e20 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e14, _e19, fe_trapped_16);
    let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f3_.f0_, a1_7.f1_.f0_, fe_trapped_16);
    let _e26 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e20, _e25, fe_trapped_16);
    let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e26, fe_trapped_16);
    let _e28 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e9, _e27, fe_trapped_16);
    let _e33 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f0_.f0_, a1_7.f1_.f0_, fe_trapped_16);
    let _e38 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f1_.f0_, a1_7.f0_.f0_, fe_trapped_16);
    let _e39 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e33, _e38, fe_trapped_16);
    let _e44 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f2_.f0_, a1_7.f3_.f0_, fe_trapped_16);
    let _e49 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f3_.f0_, a1_7.f2_.f0_, fe_trapped_16);
    let _e50 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e44, _e49, fe_trapped_16);
    let _e51 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e50, fe_trapped_16);
    let _e52 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e39, _e51, fe_trapped_16);
    let _e57 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f0_.f0_, a1_7.f2_.f0_, fe_trapped_16);
    let _e62 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f1_.f0_, a1_7.f1_.f0_, fe_trapped_16);
    let _e63 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e57, _e62, fe_trapped_16);
    let _e68 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f2_.f0_, a1_7.f0_.f0_, fe_trapped_16);
    let _e69 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e63, _e68, fe_trapped_16);
    let _e72 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, a0_13.f3_.f0_, fe_trapped_16);
    let _e75 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e72, a1_7.f3_.f0_, fe_trapped_16);
    let _e76 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e69, _e75, fe_trapped_16);
    let _e81 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f0_.f0_, a1_7.f3_.f0_, fe_trapped_16);
    let _e86 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f1_.f0_, a1_7.f2_.f0_, fe_trapped_16);
    let _e87 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e81, _e86, fe_trapped_16);
    let _e92 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f2_.f0_, a1_7.f1_.f0_, fe_trapped_16);
    let _e93 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e87, _e92, fe_trapped_16);
    let _e98 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_13.f3_.f0_, a1_7.f0_.f0_, fe_trapped_16);
    let _e99 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(_e93, _e98, fe_trapped_16);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e28), FeLocal_fe_shader_private_layout_0_(_e52), FeLocal_fe_shader_private_layout_0_(_e76), FeLocal_fe_shader_private_layout_0_(_e99));
}

fn impl_BinomialExtension4_pow_u32_ga970_(a0_14: FeLocal_fe_shader_private_layout_1_, a1_8: u32, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_25: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_26: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_27: u32 = u32();
    var loop_result_2: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_7_1: bool;
    var loop_header_carry_9_1: bool;
    var local_28: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    let _e3 = impl_BinomialExtension4_one_ga970_(fe_trapped_17);
    local_25 = a0_14;
    local_26 = _e3;
    local_27 = a1_8;
    loop {
        let _e12 = local_25;
        let _e14 = local_26;
        let _e16 = local_27;
        let _e18 = (_e16 == 0u);
        let _e20 = (_e18 == false);
        loop_header_carry_7_1 = _e18;
        loop_header_carry_9_1 = _e20;
        if _e20 {
            if ((_e16 & 1u) == 1u) {
                let _e26 = precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(_e14, _e12, fe_trapped_17);
                local_28 = _e26;
            } else {
                local_28 = _e14;
            }
            let _e30 = local_28;
            let _e31 = precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(_e12, _e12, fe_trapped_17);
            local_25 = _e31;
            local_26 = _e30;
            local_27 = (_e16 >> 1u);
            continue;
        } else {
            loop_result_2 = _e14;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e43 = loop_result_2;
    return _e43;
}

fn impl_trait_BinomialExtension4_sub_ga970_(a0_15: FeLocal_fe_shader_private_layout_1_, a1_9: FeLocal_fe_shader_private_layout_1_, fe_trapped_18: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e7 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(a0_15.f0_.f0_, a1_9.f0_.f0_, fe_trapped_18);
    let _e12 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(a0_15.f1_.f0_, a1_9.f1_.f0_, fe_trapped_18);
    let _e17 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(a0_15.f2_.f0_, a1_9.f2_.f0_, fe_trapped_18);
    let _e22 = precision_lib_word_field_impl_trait_WordField_9e9e_sub_ga970_55e2_(a0_15.f3_.f0_, a1_9.f3_.f0_, fe_trapped_18);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e12), FeLocal_fe_shader_private_layout_0_(_e17), FeLocal_fe_shader_private_layout_0_(_e22));
}

fn impl_WordField_is_zero_ga970_(a0_16: u32) -> bool {
    return (a0_16 == 0u);
}

fn impl_BinomialExtension4_is_zero_ga970_(a0_17: FeLocal_fe_shader_private_layout_1_) -> bool {
    var local_29: bool;
    var local_30: bool = false;
    var local_31: bool = bool();

    let _e5 = impl_WordField_is_zero_ga970_(a0_17.f0_.f0_);
    if _e5 {
        let _e8 = impl_WordField_is_zero_ga970_(a0_17.f1_.f0_);
        if _e8 {
            let _e11 = impl_WordField_is_zero_ga970_(a0_17.f2_.f0_);
            if _e11 {
                let _e14 = impl_WordField_is_zero_ga970_(a0_17.f3_.f0_);
                if _e14 {
                    local_31 = true;
                }
            }
        }
    }
    let _e18 = local_31;
    return _e18;
}

fn radix2_zero() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn invalid_composition_value() -> FeLocal_fe_shader_private_layout_3_ {
    let _e0 = radix2_zero();
    return FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e0);
}

fn impl_trait_BinomialExtension4_add_ga970_(a0_18: FeLocal_fe_shader_private_layout_1_, a1_10: FeLocal_fe_shader_private_layout_1_, fe_trapped_19: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e7 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(a0_18.f0_.f0_, a1_10.f0_.f0_, fe_trapped_19);
    let _e12 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(a0_18.f1_.f0_, a1_10.f1_.f0_, fe_trapped_19);
    let _e17 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(a0_18.f2_.f0_, a1_10.f2_.f0_, fe_trapped_19);
    let _e22 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_50aa(a0_18.f3_.f0_, a1_10.f3_.f0_, fe_trapped_19);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e12), FeLocal_fe_shader_private_layout_0_(_e17), FeLocal_fe_shader_private_layout_0_(_e22));
}

fn composition_value(a0_19: FeLocal_fe_shader_private_layout_1_, a1_11: FeLocal_fe_shader_private_layout_2_, fe_trapped_20: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_32: FeLocal_fe_shader_private_layout_3_;
    var local_33: bool = false;

    let _e5 = radix2_root(0u, fe_trapped_20);
    let _e7 = radix2_root(10u, fe_trapped_20);
    let _e8 = impl_BinomialExtension4_inverse_or_zero_ga970_(_e7, fe_trapped_20);
    let _e10 = impl_BinomialExtension4_pow_u32_ga970_(a0_19, 1024u, fe_trapped_20);
    let _e11 = impl_trait_BinomialExtension4_sub_ga970_(_e10, _e5, fe_trapped_20);
    let _e12 = impl_trait_BinomialExtension4_sub_ga970_(a0_19, _e5, fe_trapped_20);
    let _e13 = impl_trait_BinomialExtension4_sub_ga970_(a0_19, _e8, fe_trapped_20);
    let _e14 = impl_BinomialExtension4_is_zero_ga970_(_e11);
    if _e14 {
    } else {
        let _e15 = impl_BinomialExtension4_is_zero_ga970_(_e12);
        if _e15 {
        } else {
            let _e16 = impl_BinomialExtension4_is_zero_ga970_(_e13);
            if _e16 {
            } else {
                let _e17 = impl_BinomialExtension4_inverse_or_zero_ga970_(_e11, fe_trapped_20);
                let _e19 = precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(a1_11.f0_, _e17, fe_trapped_20);
                let _e21 = precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(a1_11.f1_, _e13, fe_trapped_20);
                let _e22 = precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(_e21, _e17, fe_trapped_20);
                let _e23 = impl_trait_BinomialExtension4_add_ga970_(_e19, _e22, fe_trapped_20);
                let _e25 = impl_BinomialExtension4_inverse_or_zero_ga970_(_e12, fe_trapped_20);
                let _e26 = precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(a1_11.f2_, _e25, fe_trapped_20);
                let _e28 = impl_BinomialExtension4_inverse_or_zero_ga970_(_e13, fe_trapped_20);
                let _e29 = precision_lib_binomial_extension_impl_trait_BinomialExtension4_38ce_mul_ga970_edcf(a1_11.f3_, _e28, fe_trapped_20);
                let _e30 = impl_trait_BinomialExtension4_add_ga970_(_e26, _e29, fe_trapped_20);
                let _e31 = impl_trait_BinomialExtension4_add_ga970_(_e23, _e30, fe_trapped_20);
                local_32 = FeLocal_fe_shader_private_layout_3_(true, _e31);
                local_33 = true;
            }
            let _e38 = local_33;
            if _e38 {
            }
        }
        let _e40 = local_33;
        if _e40 {
        }
    }
    let _e44 = local_33;
    if _e44 {
    } else {
        let _e41 = invalid_composition_value();
        local_32 = _e41;
    }
    let _e46 = local_32;
    return _e46;
}

fn coefficient_0_(a0_20: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_20.f0_.f0_;
}

fn coefficient_1_(a0_21: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_21.f1_.f0_;
}

fn coefficient_2_(a0_22: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_22.f2_.f0_;
}

fn coefficient_3_(a0_23: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_23.f3_.f0_;
}

fn store_ext4_at(a1_12: u32, a2_1: FeLocal_fe_shader_private_layout_1_, fe_trapped_21: ptr<function, bool>) {
    var local_34: u32;
    var local_35: bool = false;

    let _e5 = coefficient_0_(a2_1);
    let _e7 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e5, 1u, fe_trapped_21);
    proof[i32(a1_12)] = _e7;
    if (a1_12 > (4294967295u - 1u)) {
    } else {
        let _e15 = coefficient_1_(a2_1);
        let _e17 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e15, 1u, fe_trapped_21);
        proof[i32((a1_12 + 1u))] = _e17;
        if (a1_12 > (4294967295u - 2u)) {
        } else {
            let _e25 = coefficient_2_(a2_1);
            let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e25, 1u, fe_trapped_21);
            proof[i32((a1_12 + 2u))] = _e27;
            if (a1_12 > (4294967295u - 3u)) {
            } else {
                let _e35 = coefficient_3_(a2_1);
                let _e37 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e35, 1u, fe_trapped_21);
                proof[i32((a1_12 + 3u))] = _e37;
                local_35 = true;
            }
            let _e43 = local_35;
            if _e43 {
            }
        }
        let _e45 = local_35;
        if _e45 {
        }
    }
    let _e48 = local_35;
    if _e48 {
    } else {
        (*fe_trapped_21) = true;
    }
    return;
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();

    if (global_invocation_id.x < 4096u) {
        let _e11 = load_ext4_at_gfa0b(460271u, (&fe_trapped));
        let _e15 = (151534u + (global_invocation_id.x << 3u));
        let _e16 = load_ext4_at_g5a92_(_e15, (&fe_trapped));
        let _e19 = load_ext4_at_g5a92_((_e15 + 4u), (&fe_trapped));
        let _e24 = load_ext4_at_g5a92_((188398u + (global_invocation_id.x << 2u)), (&fe_trapped));
        let _e29 = load_ext4_at_g5a92_((204782u + (global_invocation_id.x << 2u)), (&fe_trapped));
        let _e34 = load_ext4_at_g5a92_((221166u + (global_invocation_id.x << 2u)), (&fe_trapped));
        let _e36 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(7u, (&fe_trapped));
        let _e38 = precision_lib_word_field_impl_WordField_8212_two_adic_root_ga970_e9c4_(12u, (&fe_trapped));
        let _e39 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_645e(_e38, global_invocation_id.x, (&fe_trapped));
        let _e40 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e36, _e39, (&fe_trapped));
        let _e41 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_3199_(_e40);
        let _e43 = composition_value(_e41, FeLocal_fe_shader_private_layout_2_(_e24, _e29, _e34, _e19), (&fe_trapped));
        store_ext4_at((460275u + (global_invocation_id.x << 2u)), _e43.f1_, (&fe_trapped));
        let _e53 = fri_scratch[i32((184302u + global_invocation_id.x))];
        if ((_e43.f0_ == false) | ((_e53 == 1u) == false)) {
        } else {
            local_2 = 1u;
        }
        let _e67 = local_2;
        proof[i32((476659u + global_invocation_id.x))] = _e67;
    }
    let _e80 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 4096u)) + (global_invocation_id.z * 4096u))] = u32(_e80);
}
