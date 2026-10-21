struct FeLocal_fe_shader_private_layout_7_ {
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

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: FeLocal_fe_shader_private_layout_4_,
    f1_: FeLocal_fe_shader_private_layout_4_,
    f2_: FeLocal_fe_shader_private_layout_4_,
    f3_: FeLocal_fe_shader_private_layout_4_,
    f4_: u32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
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
var<storage, read_write> lde_values: array<u32>;
@group(0) @binding(2)
var<storage, read_write> fri_scratch: array<u32>;
@group(0) @binding(3)
var<storage> params: Params;
@group(0) @binding(4)
var<storage, read_write> trap: array<u32, 4096>;

fn precision_lib_word_field_canonicalize_ga970_5a0e(a0_: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_10: u32;
    var local_11: bool = false;

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
                                    local_10 = (a0_ - _e36);
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
        (*fe_trapped_1) = true;
    }
    let _e65 = local_10;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_1: u32, a1_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_12: u32;
    var local_13: bool = false;

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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_5a0e((_e228 + _e226), fe_trapped_2);
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
        (*fe_trapped_2) = true;
    }
    let _e293 = local_12;
    return _e293;
}

fn precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(a0_2: u32, fe_trapped_3: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_0f9a((a0_2 % 2013265921u), 1172168163u, fe_trapped_3);
    return _e5;
}

fn from_coordinate_words(a0_3: u32, a1_1: u32, a2_: u32, a3_: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e5 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(a0_3, fe_trapped_4);
    let _e6 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(a1_1, fe_trapped_4);
    let _e7 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(a2_, fe_trapped_4);
    let _e8 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(a3_, fe_trapped_4);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e5), FeLocal_fe_shader_private_layout_0_(_e6), FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e8));
}

fn load_ext4_at_gfa0b(a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_14: FeLocal_fe_shader_private_layout_1_;
    var local_15: bool = false;

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
                local_14 = _e31;
                local_15 = true;
            }
            let _e36 = local_15;
            if _e36 {
            }
        }
        let _e38 = local_15;
        if _e38 {
        }
    }
    let _e41 = local_15;
    if _e41 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e43 = local_14;
    return _e43;
}

fn load_ext4_at_g5a92_(a1_3: u32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_16: FeLocal_fe_shader_private_layout_1_;
    var local_17: bool = false;

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
                local_16 = _e31;
                local_17 = true;
            }
            let _e36 = local_17;
            if _e36 {
            }
        }
        let _e38 = local_17;
        if _e38 {
        }
    }
    let _e41 = local_17;
    if _e41 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e43 = local_16;
    return _e43;
}

fn precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(a0_4: u32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(a0_4), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_());
}

fn chunk_air_lde_main(a1_4: u32, a2_1: u32, a3_1: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_18: FeLocal_fe_shader_private_layout_1_;
    var local_19: bool = false;
    var local_20: FeLocal_fe_shader_private_layout_1_;
    var local_21: bool = false;

    if ((a3_1 < 17u) == false) {
        local_18 = FeLocal_fe_shader_private_layout_1_();
        local_19 = true;
    }
    let _e28 = local_19;
    if _e28 {
    } else {
        let _e15 = (a3_1 << 12u);
        if (_e15 > (4294967295u - a2_1)) {
            (*fe_trapped_7) = true;
        }
        let _e23 = lde_values[i32((_e15 + a2_1))];
        let _e24 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(_e23, fe_trapped_7);
        let _e25 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(_e24);
        local_18 = _e25;
    }
    let _e30 = local_18;
    return _e30;
}

fn radix2_zero() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn two_adic_root(a0_5: u32, fe_trapped_8: ptr<function, bool>) -> u32 {
    var local_22: u32;
    var local_23: bool = false;
    var local_24: u32 = u32();
    var local_25: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_11_: bool;
    var loop_header_carry_13_: bool;

    if (27u < a0_5) {
        local_22 = 0u;
        local_23 = true;
    }
    let _e39 = local_23;
    if _e39 {
    } else {
        local_24 = 1476048622u;
        local_25 = (27u - a0_5);
        loop {
            let _e18 = local_24;
            let _e20 = local_25;
            let _e22 = (_e20 == 0u);
            let _e24 = (_e22 == false);
            loop_header_carry_11_ = _e22;
            loop_header_carry_13_ = _e24;
            if _e24 {
                let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e18, _e18, fe_trapped_8);
                local_24 = _e25;
                local_25 = (_e20 - 1u);
                continue;
            } else {
                loop_result_2 = _e18;
                loop_did_return_2 = true;
                break;
            }
        }
        let _e36 = loop_result_2;
        local_22 = _e36;
    }
    let _e41 = local_22;
    return _e41;
}

fn radix2_root(a0_6: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = two_adic_root(a0_6, fe_trapped_9);
    let _e3 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(_e2);
    return _e3;
}

fn chunk_air_lde_auxiliary(a1_5: u32, a2_2: u32, a3_2: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_26: FeLocal_fe_shader_private_layout_1_;
    var local_27: bool = false;
    var local_28: FeLocal_fe_shader_private_layout_1_;
    var local_29: bool = false;

    if ((a3_2 < 411u) == false) {
        local_26 = FeLocal_fe_shader_private_layout_1_();
        local_27 = true;
    }
    let _e30 = local_27;
    if _e30 {
    } else {
        let _e17 = ((17u + a3_2) << 12u);
        if (_e17 > (4294967295u - a2_2)) {
            (*fe_trapped_10) = true;
        }
        let _e25 = lde_values[i32((_e17 + a2_2))];
        let _e26 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(_e25, fe_trapped_10);
        let _e27 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(_e26);
        local_26 = _e27;
    }
    let _e32 = local_26;
    return _e32;
}

fn impl_trait_WordField_sub_ga970_(a0_7: u32, a1_6: u32, fe_trapped_11: ptr<function, bool>) -> u32 {
    var local_30: u32;
    var local_31: bool = false;

    let _e6 = (a0_7 + 2013265921u);
    if (a0_7 > (4294967295u - 2013265921u)) {
    } else {
        if (_e6 < a1_6) {
        } else {
            let _e11 = precision_lib_word_field_canonicalize_ga970_5a0e((_e6 - a1_6), fe_trapped_11);
            local_30 = _e11;
            local_31 = true;
        }
        let _e16 = local_31;
        if _e16 {
        }
    }
    let _e19 = local_31;
    if _e19 {
    } else {
        (*fe_trapped_11) = true;
    }
    let _e21 = local_30;
    return _e21;
}

fn impl_trait_BinomialExtension4_sub_ga970_(a0_8: FeLocal_fe_shader_private_layout_1_, a1_7: FeLocal_fe_shader_private_layout_1_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e7 = impl_trait_WordField_sub_ga970_(a0_8.f0_.f0_, a1_7.f0_.f0_, fe_trapped_12);
    let _e12 = impl_trait_WordField_sub_ga970_(a0_8.f1_.f0_, a1_7.f1_.f0_, fe_trapped_12);
    let _e17 = impl_trait_WordField_sub_ga970_(a0_8.f2_.f0_, a1_7.f2_.f0_, fe_trapped_12);
    let _e22 = impl_trait_WordField_sub_ga970_(a0_8.f3_.f0_, a1_7.f3_.f0_, fe_trapped_12);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e12), FeLocal_fe_shader_private_layout_0_(_e17), FeLocal_fe_shader_private_layout_0_(_e22));
}

fn precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_9: u32, a1_8: u32, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_32: u32;
    var local_33: bool = false;

    if (a0_9 > (4294967295u - a1_8)) {
        (*fe_trapped_13) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_5a0e((a0_9 + a1_8), fe_trapped_13);
    return _e9;
}

fn impl_trait_BinomialExtension4_mul_ga970_(a0_10: FeLocal_fe_shader_private_layout_1_, a1_9: FeLocal_fe_shader_private_layout_1_, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(11u, fe_trapped_14);
    let _e9 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_9.f0_.f0_, fe_trapped_14);
    let _e14 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_9.f3_.f0_, fe_trapped_14);
    let _e19 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_9.f2_.f0_, fe_trapped_14);
    let _e20 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e14, _e19, fe_trapped_14);
    let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f3_.f0_, a1_9.f1_.f0_, fe_trapped_14);
    let _e26 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e20, _e25, fe_trapped_14);
    let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e26, fe_trapped_14);
    let _e28 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e9, _e27, fe_trapped_14);
    let _e33 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_9.f1_.f0_, fe_trapped_14);
    let _e38 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_9.f0_.f0_, fe_trapped_14);
    let _e39 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e33, _e38, fe_trapped_14);
    let _e44 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_9.f3_.f0_, fe_trapped_14);
    let _e49 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f3_.f0_, a1_9.f2_.f0_, fe_trapped_14);
    let _e50 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e44, _e49, fe_trapped_14);
    let _e51 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e50, fe_trapped_14);
    let _e52 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e39, _e51, fe_trapped_14);
    let _e57 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_9.f2_.f0_, fe_trapped_14);
    let _e62 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_9.f1_.f0_, fe_trapped_14);
    let _e63 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e57, _e62, fe_trapped_14);
    let _e68 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_9.f0_.f0_, fe_trapped_14);
    let _e69 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e63, _e68, fe_trapped_14);
    let _e72 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, a0_10.f3_.f0_, fe_trapped_14);
    let _e75 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e72, a1_9.f3_.f0_, fe_trapped_14);
    let _e76 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e69, _e75, fe_trapped_14);
    let _e81 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_9.f3_.f0_, fe_trapped_14);
    let _e86 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_9.f2_.f0_, fe_trapped_14);
    let _e87 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e81, _e86, fe_trapped_14);
    let _e92 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_9.f1_.f0_, fe_trapped_14);
    let _e93 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e87, _e92, fe_trapped_14);
    let _e98 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f3_.f0_, a1_9.f0_.f0_, fe_trapped_14);
    let _e99 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e93, _e98, fe_trapped_14);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e28), FeLocal_fe_shader_private_layout_0_(_e52), FeLocal_fe_shader_private_layout_0_(_e76), FeLocal_fe_shader_private_layout_0_(_e99));
}

fn bit_residual(a0_11: FeLocal_fe_shader_private_layout_1_, fe_trapped_15: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e3 = radix2_root(0u, fe_trapped_15);
    let _e4 = impl_trait_BinomialExtension4_sub_ga970_(a0_11, _e3, fe_trapped_15);
    let _e5 = impl_trait_BinomialExtension4_mul_ga970_(a0_11, _e4, fe_trapped_15);
    return _e5;
}

fn impl_trait_BinomialExtension4_add_ga970_(a0_12: FeLocal_fe_shader_private_layout_1_, a1_10: FeLocal_fe_shader_private_layout_1_, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e7 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_12.f0_.f0_, a1_10.f0_.f0_, fe_trapped_16);
    let _e12 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_12.f1_.f0_, a1_10.f1_.f0_, fe_trapped_16);
    let _e17 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_12.f2_.f0_, a1_10.f2_.f0_, fe_trapped_16);
    let _e22 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_12.f3_.f0_, a1_10.f3_.f0_, fe_trapped_16);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e12), FeLocal_fe_shader_private_layout_0_(_e17), FeLocal_fe_shader_private_layout_0_(_e22));
}

fn absorb(a0_13: FeLocal_fe_shader_private_layout_2_, a1_11: FeLocal_fe_shader_private_layout_1_, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e6 = impl_trait_BinomialExtension4_mul_ga970_(a0_13.f1_, a0_13.f0_, fe_trapped_17);
    let _e9 = impl_trait_BinomialExtension4_mul_ga970_(a0_13.f1_, a1_11, fe_trapped_17);
    let _e10 = impl_trait_BinomialExtension4_add_ga970_(a0_13.f2_, _e9, fe_trapped_17);
    return FeLocal_fe_shader_private_layout_2_(a0_13.f0_, _e6, _e10);
}

fn coefficient_0_(a0_14: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_14.f0_.f0_;
}

fn coefficient_1_(a0_15: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_15.f1_.f0_;
}

fn coefficient_2_(a0_16: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_16.f2_.f0_;
}

fn coefficient_3_(a0_17: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_17.f3_.f0_;
}

fn store_ext4_at(a1_12: u32, a2_3: FeLocal_fe_shader_private_layout_1_, fe_trapped_18: ptr<function, bool>) {
    var local_34: u32;
    var local_35: bool = false;

    let _e5 = coefficient_0_(a2_3);
    let _e7 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e5, 1u, fe_trapped_18);
    fri_scratch[i32(a1_12)] = _e7;
    if (a1_12 > (4294967295u - 1u)) {
    } else {
        let _e15 = coefficient_1_(a2_3);
        let _e17 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e15, 1u, fe_trapped_18);
        fri_scratch[i32((a1_12 + 1u))] = _e17;
        if (a1_12 > (4294967295u - 2u)) {
        } else {
            let _e25 = coefficient_2_(a2_3);
            let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e25, 1u, fe_trapped_18);
            fri_scratch[i32((a1_12 + 2u))] = _e27;
            if (a1_12 > (4294967295u - 3u)) {
            } else {
                let _e35 = coefficient_3_(a2_3);
                let _e37 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e35, 1u, fe_trapped_18);
                fri_scratch[i32((a1_12 + 3u))] = _e37;
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
        (*fe_trapped_18) = true;
    }
    return;
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_3: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_4: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_5: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_6: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_165_: bool;
    var local_7: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_8: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_9: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_130_: bool;

    if (global_invocation_id.x < 4096u) {
        let _e8 = load_ext4_at_gfa0b(460271u, (&fe_trapped));
        let _e12 = (151534u + (global_invocation_id.x << 3u));
        let _e13 = load_ext4_at_g5a92_(_e12, (&fe_trapped));
        let _e16 = load_ext4_at_g5a92_((_e12 + 4u), (&fe_trapped));
        let _e19 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 7u, (&fe_trapped));
        let _e21 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 14u, (&fe_trapped));
        let _e22 = radix2_zero();
        let _e24 = radix2_root(0u, (&fe_trapped));
        let _e25 = radix2_zero();
        local_2 = _e24;
        local_3 = _e25;
        local_4 = FeLocal_fe_shader_private_layout_2_(_e8, _e13, _e16);
        local_5 = _e22;
        local_6 = 0u;
        loop {
            let _e39 = local_2;
            let _e41 = local_3;
            let _e43 = local_4;
            let _e45 = local_5;
            let _e47 = local_6;
            let _e49 = (_e47 < 31u);
            loop_header_carry_165_ = _e49;
            if _e49 {
                let _e52 = chunk_air_lde_auxiliary(global_invocation_id.x, global_invocation_id.x, (222u + _e47), (&fe_trapped));
                let _e55 = chunk_air_lde_auxiliary(global_invocation_id.x, global_invocation_id.x, (253u + _e47), (&fe_trapped));
                let _e56 = bit_residual(_e52, (&fe_trapped));
                let _e57 = absorb(_e43, _e56, (&fe_trapped));
                let _e58 = bit_residual(_e55, (&fe_trapped));
                let _e59 = absorb(_e57, _e58, (&fe_trapped));
                let _e60 = impl_trait_BinomialExtension4_sub_ga970_(_e55, _e41, (&fe_trapped));
                let _e61 = impl_trait_BinomialExtension4_sub_ga970_(_e60, _e52, (&fe_trapped));
                let _e62 = impl_trait_BinomialExtension4_mul_ga970_(_e41, _e52, (&fe_trapped));
                let _e63 = impl_trait_BinomialExtension4_add_ga970_(_e61, _e62, (&fe_trapped));
                let _e64 = absorb(_e59, _e63, (&fe_trapped));
                let _e65 = impl_trait_BinomialExtension4_mul_ga970_(_e52, _e39, (&fe_trapped));
                let _e66 = impl_trait_BinomialExtension4_add_ga970_(_e45, _e65, (&fe_trapped));
                let _e67 = impl_trait_BinomialExtension4_add_ga970_(_e39, _e39, (&fe_trapped));
                local_2 = _e67;
                local_3 = _e55;
                local_4 = _e64;
                local_5 = _e66;
                local_6 = (_e47 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e77 = local_4;
        let _e79 = local_5;
        let _e80 = impl_trait_BinomialExtension4_sub_ga970_(_e19, _e79, (&fe_trapped));
        let _e81 = absorb(_e77, _e80, (&fe_trapped));
        let _e82 = bit_residual(_e21, (&fe_trapped));
        let _e83 = absorb(_e81, _e82, (&fe_trapped));
        let _e84 = radix2_zero();
        local_7 = _e83;
        local_8 = _e84;
        local_9 = 0u;
        loop {
            let _e94 = local_7;
            let _e96 = local_8;
            let _e98 = local_9;
            let _e100 = (_e98 < 5u);
            loop_header_carry_130_ = _e100;
            if _e100 {
                let _e105 = chunk_air_lde_auxiliary(global_invocation_id.x, global_invocation_id.x, ((222u + _e98) + 26u), (&fe_trapped));
                let _e108 = chunk_air_lde_auxiliary(global_invocation_id.x, global_invocation_id.x, (406u + _e98), (&fe_trapped));
                let _e109 = bit_residual(_e108, (&fe_trapped));
                let _e110 = absorb(_e94, _e109, (&fe_trapped));
                let _e111 = impl_trait_BinomialExtension4_sub_ga970_(_e108, _e96, (&fe_trapped));
                let _e112 = impl_trait_BinomialExtension4_sub_ga970_(_e111, _e105, (&fe_trapped));
                let _e113 = impl_trait_BinomialExtension4_mul_ga970_(_e96, _e105, (&fe_trapped));
                let _e114 = impl_trait_BinomialExtension4_add_ga970_(_e112, _e113, (&fe_trapped));
                let _e115 = absorb(_e110, _e114, (&fe_trapped));
                local_7 = _e115;
                local_8 = _e108;
                local_9 = (_e98 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e123 = local_7;
        let _e125 = local_8;
        let _e126 = impl_trait_BinomialExtension4_sub_ga970_(_e21, _e125, (&fe_trapped));
        let _e127 = absorb(_e123, _e126, (&fe_trapped));
        let _e133 = (151534u + (global_invocation_id.x << 3u));
        store_ext4_at(_e133, _e127.f1_, (&fe_trapped));
        store_ext4_at((_e133 + 4u), _e127.f2_, (&fe_trapped));
    }
    let _e146 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 4096u)) + (global_invocation_id.z * 4096u))] = u32(_e146);
}
