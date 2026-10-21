struct FeLocal_fe_shader_private_layout_9_ {
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

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: FeLocal_fe_shader_private_layout_5_,
    f2_: FeLocal_fe_shader_private_layout_5_,
    f3_: FeLocal_fe_shader_private_layout_5_,
    f4_: u32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: FeLocal_fe_shader_private_layout_1_,
    f1_: FeLocal_fe_shader_private_layout_1_,
    f2_: FeLocal_fe_shader_private_layout_1_,
    f3_: FeLocal_fe_shader_private_layout_7_,
    f4_: FeLocal_fe_shader_private_layout_7_,
    f5_: FeLocal_fe_shader_private_layout_1_,
    f6_: FeLocal_fe_shader_private_layout_1_,
    f7_: FeLocal_fe_shader_private_layout_1_,
    f8_: FeLocal_fe_shader_private_layout_7_,
    f9_: FeLocal_fe_shader_private_layout_1_,
    f10_: FeLocal_fe_shader_private_layout_7_,
    f11_: FeLocal_fe_shader_private_layout_1_,
    f12_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_4_ {
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

fn precision_lib_word_field_canonicalize_ga970_4867_(a0_: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_8: u32;
    var local_9: bool = false;

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
                                    local_8 = (a0_ - _e36);
                                    local_9 = true;
                                }
                                let _e48 = local_9;
                                if _e48 {
                                }
                            }
                            let _e50 = local_9;
                            if _e50 {
                            }
                        }
                        let _e52 = local_9;
                        if _e52 {
                        }
                    }
                    let _e54 = local_9;
                    if _e54 {
                    }
                }
                let _e56 = local_9;
                if _e56 {
                }
            }
            let _e58 = local_9;
            if _e58 {
            }
        }
        let _e60 = local_9;
        if _e60 {
        }
    }
    let _e63 = local_9;
    if _e63 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e65 = local_8;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_1: u32, a1_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_10: u32;
    var local_11: bool = false;

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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_4867_((_e228 + _e226), fe_trapped_2);
                                                                                                            local_10 = _e235;
                                                                                                            local_11 = true;
                                                                                                        }
                                                                                                        let _e240 = local_11;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_11;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_11;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_11;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_11;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_11;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_11;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_11;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_11;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_11;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_11;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_11;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_11;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_11;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_11;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_11;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_11;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_11;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_11;
                                if _e276 {
                                }
                            }
                            let _e278 = local_11;
                            if _e278 {
                            }
                        }
                        let _e280 = local_11;
                        if _e280 {
                        }
                    }
                    let _e282 = local_11;
                    if _e282 {
                    }
                }
                let _e284 = local_11;
                if _e284 {
                }
            }
            let _e286 = local_11;
            if _e286 {
            }
        }
        let _e288 = local_11;
        if _e288 {
        }
    }
    let _e291 = local_11;
    if _e291 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e293 = local_10;
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

fn load_ext4_at(a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_12: FeLocal_fe_shader_private_layout_1_;
    var local_13: bool = false;

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
                local_12 = _e31;
                local_13 = true;
            }
            let _e36 = local_13;
            if _e36 {
            }
        }
        let _e38 = local_13;
        if _e38 {
        }
    }
    let _e41 = local_13;
    if _e41 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e43 = local_12;
    return _e43;
}

fn precision_lib_word_field_impl_WordField_8212_two_adic_root_ga970_ae9f(a0_4: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_14: u32;
    var local_15: bool = false;
    var local_16: u32 = u32();
    var local_17: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_11_: bool;
    var loop_header_carry_13_: bool;

    if (27u < a0_4) {
        local_14 = 0u;
        local_15 = true;
    }
    let _e39 = local_15;
    if _e39 {
    } else {
        local_16 = 1476048622u;
        local_17 = (27u - a0_4);
        loop {
            let _e18 = local_16;
            let _e20 = local_17;
            let _e22 = (_e20 == 0u);
            let _e24 = (_e22 == false);
            loop_header_carry_11_ = _e22;
            loop_header_carry_13_ = _e24;
            if _e24 {
                let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e18, _e18, fe_trapped_6);
                local_16 = _e25;
                local_17 = (_e20 - 1u);
                continue;
            } else {
                loop_result_1 = _e18;
                loop_did_return_1 = true;
                break;
            }
        }
        let _e36 = loop_result_1;
        local_14 = _e36;
    }
    let _e41 = local_14;
    return _e41;
}

fn precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(a0_5: u32) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(a0_5), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_(), FeLocal_fe_shader_private_layout_0_());
}

fn precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_root_ga970_1bee(a0_6: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = precision_lib_word_field_impl_WordField_8212_two_adic_root_ga970_ae9f(a0_6, fe_trapped_7);
    let _e3 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(_e2);
    return _e3;
}

fn precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_zero_ga970_3ca5_() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn new_(a0_7: FeLocal_fe_shader_private_layout_1_, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e3 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_root_ga970_1bee(0u, fe_trapped_8);
    let _e4 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_zero_ga970_3ca5_();
    return FeLocal_fe_shader_private_layout_2_(a0_7, _e3, _e4);
}

fn begin_constraint_fold(a0_8: FeLocal_fe_shader_private_layout_1_, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    let _e2 = new_(a0_8, fe_trapped_9);
    return FeLocal_fe_shader_private_layout_3_(_e2.f0_, _e2.f1_, _e2.f2_);
}

fn chunk_air_lde_main(a1_3: u32, a2_1: u32, a3_1: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
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
            (*fe_trapped_10) = true;
        }
        let _e23 = lde_values[i32((_e15 + a2_1))];
        let _e24 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(_e23, fe_trapped_10);
        let _e25 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(_e24);
        local_18 = _e25;
    }
    let _e30 = local_18;
    return _e30;
}

fn precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_9: u32, a1_4: u32, fe_trapped_11: ptr<function, bool>) -> u32 {
    var local_22: u32;
    var local_23: bool = false;

    if (a0_9 > (4294967295u - a1_4)) {
        (*fe_trapped_11) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_4867_((a0_9 + a1_4), fe_trapped_11);
    return _e9;
}

fn impl_trait_BinomialExtension4_mul_ga970_(a0_10: FeLocal_fe_shader_private_layout_1_, a1_5: FeLocal_fe_shader_private_layout_1_, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(11u, fe_trapped_12);
    let _e9 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_5.f0_.f0_, fe_trapped_12);
    let _e14 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_5.f3_.f0_, fe_trapped_12);
    let _e19 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_5.f2_.f0_, fe_trapped_12);
    let _e20 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e14, _e19, fe_trapped_12);
    let _e25 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f3_.f0_, a1_5.f1_.f0_, fe_trapped_12);
    let _e26 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e20, _e25, fe_trapped_12);
    let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e26, fe_trapped_12);
    let _e28 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e9, _e27, fe_trapped_12);
    let _e33 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_5.f1_.f0_, fe_trapped_12);
    let _e38 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_5.f0_.f0_, fe_trapped_12);
    let _e39 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e33, _e38, fe_trapped_12);
    let _e44 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_5.f3_.f0_, fe_trapped_12);
    let _e49 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f3_.f0_, a1_5.f2_.f0_, fe_trapped_12);
    let _e50 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e44, _e49, fe_trapped_12);
    let _e51 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, _e50, fe_trapped_12);
    let _e52 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e39, _e51, fe_trapped_12);
    let _e57 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_5.f2_.f0_, fe_trapped_12);
    let _e62 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_5.f1_.f0_, fe_trapped_12);
    let _e63 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e57, _e62, fe_trapped_12);
    let _e68 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_5.f0_.f0_, fe_trapped_12);
    let _e69 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e63, _e68, fe_trapped_12);
    let _e72 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e4, a0_10.f3_.f0_, fe_trapped_12);
    let _e75 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e72, a1_5.f3_.f0_, fe_trapped_12);
    let _e76 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e69, _e75, fe_trapped_12);
    let _e81 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f0_.f0_, a1_5.f3_.f0_, fe_trapped_12);
    let _e86 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f1_.f0_, a1_5.f2_.f0_, fe_trapped_12);
    let _e87 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e81, _e86, fe_trapped_12);
    let _e92 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f2_.f0_, a1_5.f1_.f0_, fe_trapped_12);
    let _e93 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e87, _e92, fe_trapped_12);
    let _e98 = precision_lib_word_field_montgomery_mul_ga970_0f9a(a0_10.f3_.f0_, a1_5.f0_.f0_, fe_trapped_12);
    let _e99 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(_e93, _e98, fe_trapped_12);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e28), FeLocal_fe_shader_private_layout_0_(_e52), FeLocal_fe_shader_private_layout_0_(_e76), FeLocal_fe_shader_private_layout_0_(_e99));
}

fn impl_trait_BinomialExtension4_add_ga970_(a0_11: FeLocal_fe_shader_private_layout_1_, a1_6: FeLocal_fe_shader_private_layout_1_, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e7 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_11.f0_.f0_, a1_6.f0_.f0_, fe_trapped_13);
    let _e12 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_11.f1_.f0_, a1_6.f1_.f0_, fe_trapped_13);
    let _e17 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_11.f2_.f0_, a1_6.f2_.f0_, fe_trapped_13);
    let _e22 = precision_lib_word_field_impl_trait_WordField_1f49_add_ga970_3b81_(a0_11.f3_.f0_, a1_6.f3_.f0_, fe_trapped_13);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e12), FeLocal_fe_shader_private_layout_0_(_e17), FeLocal_fe_shader_private_layout_0_(_e22));
}

fn natural(a0_12: u32, fe_trapped_14: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_24: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_25: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_26: u32 = u32();
    var loop_result_2: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_6_: bool;
    var loop_header_carry_8_: bool;
    var local_27: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();

    let _e2 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_zero_ga970_3ca5_();
    let _e4 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_root_ga970_1bee(0u, fe_trapped_14);
    local_24 = _e4;
    local_25 = _e2;
    local_26 = a0_12;
    loop {
        let _e13 = local_24;
        let _e15 = local_25;
        let _e17 = local_26;
        let _e19 = (_e17 == 0u);
        let _e21 = (_e19 == false);
        loop_header_carry_6_ = _e19;
        loop_header_carry_8_ = _e21;
        if _e21 {
            if ((_e17 & 1u) == 1u) {
                let _e27 = impl_trait_BinomialExtension4_add_ga970_(_e15, _e13, fe_trapped_14);
                local_27 = _e27;
            } else {
                local_27 = _e15;
            }
            let _e31 = local_27;
            let _e32 = impl_trait_BinomialExtension4_add_ga970_(_e13, _e13, fe_trapped_14);
            local_24 = _e32;
            local_25 = _e31;
            local_26 = (_e17 >> 1u);
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

fn impl_trait_WordField_sub_ga970_(a0_13: u32, a1_7: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_28: u32;
    var local_29: bool = false;

    let _e6 = (a0_13 + 2013265921u);
    if (a0_13 > (4294967295u - 2013265921u)) {
    } else {
        if (_e6 < a1_7) {
        } else {
            let _e11 = precision_lib_word_field_canonicalize_ga970_4867_((_e6 - a1_7), fe_trapped_15);
            local_28 = _e11;
            local_29 = true;
        }
        let _e16 = local_29;
        if _e16 {
        }
    }
    let _e19 = local_29;
    if _e19 {
    } else {
        (*fe_trapped_15) = true;
    }
    let _e21 = local_28;
    return _e21;
}

fn impl_trait_BinomialExtension4_sub_ga970_(a0_14: FeLocal_fe_shader_private_layout_1_, a1_8: FeLocal_fe_shader_private_layout_1_, fe_trapped_16: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e7 = impl_trait_WordField_sub_ga970_(a0_14.f0_.f0_, a1_8.f0_.f0_, fe_trapped_16);
    let _e12 = impl_trait_WordField_sub_ga970_(a0_14.f1_.f0_, a1_8.f1_.f0_, fe_trapped_16);
    let _e17 = impl_trait_WordField_sub_ga970_(a0_14.f2_.f0_, a1_8.f2_.f0_, fe_trapped_16);
    let _e22 = impl_trait_WordField_sub_ga970_(a0_14.f3_.f0_, a1_8.f3_.f0_, fe_trapped_16);
    return FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(_e7), FeLocal_fe_shader_private_layout_0_(_e12), FeLocal_fe_shader_private_layout_0_(_e17), FeLocal_fe_shader_private_layout_0_(_e22));
}

fn signed_air_value(a0_15: FeLocal_fe_shader_private_layout_1_, a1_9: FeLocal_fe_shader_private_layout_1_, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    let _e3 = impl_trait_BinomialExtension4_mul_ga970_(a0_15, a1_9, fe_trapped_17);
    let _e5 = natural(2u, fe_trapped_17);
    let _e6 = impl_trait_BinomialExtension4_mul_ga970_(_e3, _e5, fe_trapped_17);
    let _e7 = impl_trait_BinomialExtension4_sub_ga970_(a1_9, _e6, fe_trapped_17);
    return FeLocal_fe_shader_private_layout_7_(a0_15, a1_9, _e7);
}

fn mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_16: FeLocal_fe_shader_private_layout_1_, fe_trapped_18: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    let _e3 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_root_ga970_1bee(0u, fe_trapped_18);
    let _e4 = impl_trait_BinomialExtension4_sub_ga970_(a0_16, _e3, fe_trapped_18);
    let _e5 = impl_trait_BinomialExtension4_mul_ga970_(a0_16, _e4, fe_trapped_18);
    return _e5;
}

fn local_residuals(a0_17: FeLocal_fe_shader_private_layout_8_, fe_trapped_19: ptr<function, bool>) -> array<FeLocal_fe_shader_private_layout_1_, 9> {
    let _e3 = natural(4096u, fe_trapped_19);
    let _e6 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_17.f3_.f0_, fe_trapped_19);
    let _e9 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_17.f4_.f0_, fe_trapped_19);
    let _e12 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_17.f8_.f0_, fe_trapped_19);
    let _e15 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_17.f10_.f0_, fe_trapped_19);
    let _e21 = impl_trait_BinomialExtension4_mul_ga970_(a0_17.f3_.f2_, a0_17.f3_.f2_, fe_trapped_19);
    let _e22 = impl_trait_BinomialExtension4_sub_ga970_(a0_17.f5_, _e21, fe_trapped_19);
    let _e28 = impl_trait_BinomialExtension4_mul_ga970_(a0_17.f4_.f2_, a0_17.f4_.f2_, fe_trapped_19);
    let _e29 = impl_trait_BinomialExtension4_sub_ga970_(a0_17.f6_, _e28, fe_trapped_19);
    let _e32 = impl_trait_BinomialExtension4_sub_ga970_(a0_17.f7_, a0_17.f5_, fe_trapped_19);
    let _e34 = impl_trait_BinomialExtension4_sub_ga970_(_e32, a0_17.f6_, fe_trapped_19);
    let _e37 = impl_trait_BinomialExtension4_sub_ga970_(a0_17.f5_, a0_17.f6_, fe_trapped_19);
    let _e40 = impl_trait_BinomialExtension4_mul_ga970_(_e3, a0_17.f8_.f2_, fe_trapped_19);
    let _e41 = impl_trait_BinomialExtension4_sub_ga970_(_e37, _e40, fe_trapped_19);
    let _e43 = impl_trait_BinomialExtension4_sub_ga970_(_e41, a0_17.f9_, fe_trapped_19);
    let _e45 = natural(2u, fe_trapped_19);
    let _e50 = impl_trait_BinomialExtension4_mul_ga970_(a0_17.f3_.f2_, a0_17.f4_.f2_, fe_trapped_19);
    let _e51 = impl_trait_BinomialExtension4_mul_ga970_(_e45, _e50, fe_trapped_19);
    let _e54 = impl_trait_BinomialExtension4_mul_ga970_(_e3, a0_17.f10_.f2_, fe_trapped_19);
    let _e55 = impl_trait_BinomialExtension4_sub_ga970_(_e51, _e54, fe_trapped_19);
    let _e57 = impl_trait_BinomialExtension4_sub_ga970_(_e55, a0_17.f11_, fe_trapped_19);
    return array<FeLocal_fe_shader_private_layout_1_, 9>(_e6, _e9, _e12, _e15, _e22, _e29, _e34, _e43, _e57);
}

fn mandelbrot_proof_air_core_lib_impl_ConstraintFold_d019_absorb_gbd05_eedb(a0_18: FeLocal_fe_shader_private_layout_2_, a1_10: FeLocal_fe_shader_private_layout_1_, fe_trapped_20: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e6 = impl_trait_BinomialExtension4_mul_ga970_(a0_18.f1_, a0_18.f0_, fe_trapped_20);
    let _e9 = impl_trait_BinomialExtension4_mul_ga970_(a0_18.f1_, a1_10, fe_trapped_20);
    let _e10 = impl_trait_BinomialExtension4_add_ga970_(a0_18.f2_, _e9, fe_trapped_20);
    return FeLocal_fe_shader_private_layout_2_(a0_18.f0_, _e6, _e10);
}

fn absorb_residuals_g4a7e(a0_19: FeLocal_fe_shader_private_layout_2_, a1_11: ptr<function, array<FeLocal_fe_shader_private_layout_1_, 9>>, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_30: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_31: u32 = u32();
    var loop_result_3: FeLocal_fe_shader_private_layout_2_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_6_1: bool;

    local_30 = a0_19;
    local_31 = 0u;
    loop {
        let _e10 = local_30;
        let _e12 = local_31;
        let _e14 = (_e12 < 9u);
        loop_header_carry_6_1 = _e14;
        if _e14 {
            let _e16 = (*a1_11)[_e12];
            let _e17 = mandelbrot_proof_air_core_lib_impl_ConstraintFold_d019_absorb_gbd05_eedb(_e10, _e16, fe_trapped_21);
            local_30 = _e17;
            local_31 = (_e12 + 1u);
            continue;
        } else {
            loop_result_3 = _e10;
            loop_did_return_3 = true;
            break;
        }
    }
    let _e27 = loop_result_3;
    return _e27;
}

fn row_state_residuals(a0_20: FeLocal_fe_shader_private_layout_8_, fe_trapped_22: ptr<function, bool>) -> array<FeLocal_fe_shader_private_layout_1_, 5> {
    let _e3 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_root_ga970_1bee(0u, fe_trapped_22);
    let _e5 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_20.f0_, fe_trapped_22);
    let _e7 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_20.f1_, fe_trapped_22);
    let _e9 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(a0_20.f12_, fe_trapped_22);
    let _e13 = impl_trait_BinomialExtension4_mul_ga970_(a0_20.f0_, a0_20.f12_, fe_trapped_22);
    let _e14 = impl_trait_BinomialExtension4_sub_ga970_(a0_20.f1_, _e13, fe_trapped_22);
    let _e16 = impl_trait_BinomialExtension4_sub_ga970_(_e3, a0_20.f0_, fe_trapped_22);
    let _e18 = impl_trait_BinomialExtension4_sub_ga970_(a0_20.f12_, _e3, fe_trapped_22);
    let _e19 = impl_trait_BinomialExtension4_mul_ga970_(_e16, _e18, fe_trapped_22);
    return array<FeLocal_fe_shader_private_layout_1_, 5>(_e5, _e7, _e9, _e14, _e19);
}

fn absorb_residuals_g47ec(a0_21: FeLocal_fe_shader_private_layout_2_, a1_12: ptr<function, array<FeLocal_fe_shader_private_layout_1_, 5>>, fe_trapped_23: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_32: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_33: u32 = u32();
    var loop_result_4: FeLocal_fe_shader_private_layout_2_;
    var loop_did_return_4: bool = false;
    var loop_header_carry_6_2: bool;

    local_32 = a0_21;
    local_33 = 0u;
    loop {
        let _e10 = local_32;
        let _e12 = local_33;
        let _e14 = (_e12 < 5u);
        loop_header_carry_6_2 = _e14;
        if _e14 {
            let _e16 = (*a1_12)[_e12];
            let _e17 = mandelbrot_proof_air_core_lib_impl_ConstraintFold_d019_absorb_gbd05_eedb(_e10, _e16, fe_trapped_23);
            local_32 = _e17;
            local_33 = (_e12 + 1u);
            continue;
        } else {
            loop_result_4 = _e10;
            loop_did_return_4 = true;
            break;
        }
    }
    let _e27 = loop_result_4;
    return _e27;
}

fn coefficient_0_(a0_22: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_22.f0_.f0_;
}

fn coefficient_1_(a0_23: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_23.f1_.f0_;
}

fn coefficient_2_(a0_24: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_24.f2_.f0_;
}

fn coefficient_3_(a0_25: FeLocal_fe_shader_private_layout_1_) -> u32 {
    return a0_25.f3_.f0_;
}

fn store_ext4_at(a1_13: u32, a2_2: FeLocal_fe_shader_private_layout_1_, fe_trapped_24: ptr<function, bool>) {
    var local_34: u32;
    var local_35: bool = false;

    let _e5 = coefficient_0_(a2_2);
    let _e7 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e5, 1u, fe_trapped_24);
    fri_scratch[i32(a1_13)] = _e7;
    if (a1_13 > (4294967295u - 1u)) {
    } else {
        let _e15 = coefficient_1_(a2_2);
        let _e17 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e15, 1u, fe_trapped_24);
        fri_scratch[i32((a1_13 + 1u))] = _e17;
        if (a1_13 > (4294967295u - 2u)) {
        } else {
            let _e25 = coefficient_2_(a2_2);
            let _e27 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e25, 1u, fe_trapped_24);
            fri_scratch[i32((a1_13 + 2u))] = _e27;
            if (a1_13 > (4294967295u - 3u)) {
            } else {
                let _e35 = coefficient_3_(a2_2);
                let _e37 = precision_lib_word_field_montgomery_mul_ga970_0f9a(_e35, 1u, fe_trapped_24);
                fri_scratch[i32((a1_13 + 3u))] = _e37;
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
        (*fe_trapped_24) = true;
    }
    return;
}

fn chunk_air_lde_auxiliary(a1_14: u32, a2_3: u32, a3_2: u32, fe_trapped_25: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_36: FeLocal_fe_shader_private_layout_1_;
    var local_37: bool = false;
    var local_38: FeLocal_fe_shader_private_layout_1_;
    var local_39: bool = false;

    if ((a3_2 < 411u) == false) {
        local_36 = FeLocal_fe_shader_private_layout_1_();
        local_37 = true;
    }
    let _e30 = local_37;
    if _e30 {
    } else {
        let _e17 = ((17u + a3_2) << 12u);
        if (_e17 > (4294967295u - a2_3)) {
            (*fe_trapped_25) = true;
        }
        let _e25 = lde_values[i32((_e17 + a2_3))];
        let _e26 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_cd5e(_e25, fe_trapped_25);
        let _e27 = precision_lib_binomial_extension_impl_BinomialExtension4_deda_from_base_ga970_1059_(_e26);
        local_36 = _e27;
    }
    let _e32 = local_36;
    return _e32;
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_95_: array<FeLocal_fe_shader_private_layout_1_, 9> = array<FeLocal_fe_shader_private_layout_1_, 9>();
    var fixed_local_98_: array<FeLocal_fe_shader_private_layout_1_, 5> = array<FeLocal_fe_shader_private_layout_1_, 5>();
    var local_2: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_3: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_4: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_5: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_6: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_178_: bool;
    var local_7: u32 = u32();

    if (global_invocation_id.x < 4096u) {
        let _e10 = load_ext4_at(460271u, (&fe_trapped));
        let _e11 = begin_constraint_fold(_e10, (&fe_trapped));
        let _e13 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 15u, (&fe_trapped));
        let _e15 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 16u, (&fe_trapped));
        let _e17 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 0u, (&fe_trapped));
        let _e19 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 1u, (&fe_trapped));
        let _e21 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 2u, (&fe_trapped));
        let _e22 = signed_air_value(_e19, _e21, (&fe_trapped));
        let _e24 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 3u, (&fe_trapped));
        let _e26 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 4u, (&fe_trapped));
        let _e27 = signed_air_value(_e24, _e26, (&fe_trapped));
        let _e29 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 5u, (&fe_trapped));
        let _e31 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 6u, (&fe_trapped));
        let _e33 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 7u, (&fe_trapped));
        let _e35 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 8u, (&fe_trapped));
        let _e37 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 9u, (&fe_trapped));
        let _e38 = signed_air_value(_e35, _e37, (&fe_trapped));
        let _e40 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 10u, (&fe_trapped));
        let _e42 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 11u, (&fe_trapped));
        let _e44 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 12u, (&fe_trapped));
        let _e45 = signed_air_value(_e42, _e44, (&fe_trapped));
        let _e47 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 13u, (&fe_trapped));
        let _e49 = chunk_air_lde_main(global_invocation_id.x, global_invocation_id.x, 14u, (&fe_trapped));
        let _e50 = FeLocal_fe_shader_private_layout_8_(_e13, _e15, _e17, _e22, _e27, _e29, _e31, _e33, _e38, _e40, _e45, _e47, _e49);
        let _e55 = local_residuals(_e50, (&fe_trapped));
        fixed_local_95_ = _e55;
        let _e58 = absorb_residuals_g4a7e(FeLocal_fe_shader_private_layout_2_(_e11.f0_, _e11.f1_, _e11.f2_), (&fixed_local_95_), (&fe_trapped));
        let _e59 = row_state_residuals(_e50, (&fe_trapped));
        fixed_local_98_ = _e59;
        let _e62 = absorb_residuals_g47ec(_e58, (&fixed_local_98_), (&fe_trapped));
        let _e63 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_zero_ga970_3ca5_();
        let _e65 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_root_ga970_1bee(0u, (&fe_trapped));
        let _e66 = precision_lib_polynomial_impl_trait_BinomialExtension4_176d_radix2_zero_ga970_3ca5_();
        local_2 = _e65;
        local_3 = _e66;
        local_4 = _e62;
        local_5 = _e63;
        local_6 = 0u;
        loop {
            let _e80 = local_2;
            let _e82 = local_3;
            let _e84 = local_4;
            let _e86 = local_5;
            let _e88 = local_6;
            let _e90 = (_e88 < 21u);
            loop_header_carry_178_ = _e90;
            if _e90 {
                let _e91 = chunk_air_lde_auxiliary(global_invocation_id.x, global_invocation_id.x, _e88, (&fe_trapped));
                let _e94 = chunk_air_lde_auxiliary(global_invocation_id.x, global_invocation_id.x, (21u + _e88), (&fe_trapped));
                let _e95 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(_e91, (&fe_trapped));
                let _e96 = mandelbrot_proof_air_core_lib_impl_ConstraintFold_d019_absorb_gbd05_eedb(_e84, _e95, (&fe_trapped));
                let _e97 = mandelbrot_proof_air_core_lib_bit_residual_gbd05_759a(_e94, (&fe_trapped));
                let _e98 = mandelbrot_proof_air_core_lib_impl_ConstraintFold_d019_absorb_gbd05_eedb(_e96, _e97, (&fe_trapped));
                let _e99 = impl_trait_BinomialExtension4_sub_ga970_(_e94, _e82, (&fe_trapped));
                let _e100 = impl_trait_BinomialExtension4_sub_ga970_(_e99, _e91, (&fe_trapped));
                let _e101 = impl_trait_BinomialExtension4_mul_ga970_(_e82, _e91, (&fe_trapped));
                let _e102 = impl_trait_BinomialExtension4_add_ga970_(_e100, _e101, (&fe_trapped));
                let _e103 = mandelbrot_proof_air_core_lib_impl_ConstraintFold_d019_absorb_gbd05_eedb(_e98, _e102, (&fe_trapped));
                let _e104 = impl_trait_BinomialExtension4_mul_ga970_(_e91, _e80, (&fe_trapped));
                let _e105 = impl_trait_BinomialExtension4_add_ga970_(_e86, _e104, (&fe_trapped));
                let _e106 = impl_trait_BinomialExtension4_add_ga970_(_e80, _e80, (&fe_trapped));
                local_2 = _e106;
                local_3 = _e94;
                local_4 = _e103;
                local_5 = _e105;
                local_6 = (_e88 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e116 = local_4;
        let _e118 = local_5;
        let _e120 = impl_trait_BinomialExtension4_sub_ga970_(_e17, _e118, (&fe_trapped));
        let _e121 = mandelbrot_proof_air_core_lib_impl_ConstraintFold_d019_absorb_gbd05_eedb(_e116, _e120, (&fe_trapped));
        let _e127 = (151534u + (global_invocation_id.x << 3u));
        store_ext4_at(_e127, _e121.f1_, (&fe_trapped));
        store_ext4_at((_e127 + 4u), _e121.f2_, (&fe_trapped));
        let _e133 = proof[i32(480771u)];
        if (_e133 == 1u) {
            local_7 = 1u;
        }
        let _e141 = local_7;
        fri_scratch[i32((184302u + global_invocation_id.x))] = _e141;
    }
    let _e154 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 4096u)) + (global_invocation_id.z * 4096u))] = u32(_e154);
}
