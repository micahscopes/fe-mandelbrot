struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: bool,
    f1_: bool,
    f2_: u32,
    f3_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: FeLocal_fe_shader_private_layout_0_,
    f1_: FeLocal_fe_shader_private_layout_0_,
    f2_: FeLocal_fe_shader_private_layout_0_,
    f3_: FeLocal_fe_shader_private_layout_0_,
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
var<storage, read_write> lde_inverse_values: array<u32>;
@group(0) @binding(2)
var<storage, read_write> lde_inverse_progress: array<u32>;
@group(0) @binding(3)
var<storage, read_write> lde_values: array<u32>;
@group(0) @binding(4)
var<storage, read_write> lde_progress: array<u32>;
@group(0) @binding(5)
var<storage> params: Params;
@group(0) @binding(6)
var<storage, read_write> trap: array<u32, 876544>;

fn precision_lib_word_field_canonicalize_ga970_01fb(a0_: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
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

fn precision_lib_word_field_montgomery_mul_ga970_3a48_(a0_1: u32, a1_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_01fb((_e228 + _e226), fe_trapped_2);
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
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_3a48_((a0_2 % 2013265921u), 1172168163u, fe_trapped_3);
    return _e5;
}

fn two_adic_root(a0_3: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_7: u32;
    var local_8: bool = false;
    var local_9: u32 = u32();
    var local_10: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_11_: bool;
    var loop_header_carry_13_: bool;

    if (27u < a0_3) {
        local_7 = 0u;
        local_8 = true;
    }
    let _e39 = local_8;
    if _e39 {
    } else {
        local_9 = 1476048622u;
        local_10 = (27u - a0_3);
        loop {
            let _e18 = local_9;
            let _e20 = local_10;
            let _e22 = (_e20 == 0u);
            let _e24 = (_e22 == false);
            loop_header_carry_11_ = _e22;
            loop_header_carry_13_ = _e24;
            if _e24 {
                let _e25 = precision_lib_word_field_montgomery_mul_ga970_3a48_(_e18, _e18, fe_trapped_4);
                local_9 = _e25;
                local_10 = (_e20 - 1u);
                continue;
            } else {
                loop_result = _e18;
                loop_did_return = true;
                break;
            }
        }
        let _e36 = loop_result;
        local_7 = _e36;
    }
    let _e41 = local_7;
    return _e41;
}

fn is_zero(a0_4: u32) -> bool {
    return (a0_4 == 0u);
}

fn precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_e36c(a0_5: u32, a1_1: u32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_11: u32 = u32();
    var local_12: u32 = u32();
    var local_13: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_7_: bool;
    var loop_header_carry_9_: bool;
    var local_14: u32 = u32();

    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1u, fe_trapped_5);
    local_11 = a0_5;
    local_12 = _e4;
    local_13 = a1_1;
    loop {
        let _e13 = local_11;
        let _e15 = local_12;
        let _e17 = local_13;
        let _e19 = (_e17 == 0u);
        let _e21 = (_e19 == false);
        loop_header_carry_7_ = _e19;
        loop_header_carry_9_ = _e21;
        if _e21 {
            if ((_e17 & 1u) == 1u) {
                let _e27 = precision_lib_word_field_montgomery_mul_ga970_3a48_(_e15, _e13, fe_trapped_5);
                local_14 = _e27;
            } else {
                local_14 = _e15;
            }
            let _e31 = local_14;
            let _e32 = precision_lib_word_field_montgomery_mul_ga970_3a48_(_e13, _e13, fe_trapped_5);
            local_11 = _e32;
            local_12 = _e31;
            local_13 = (_e17 >> 1u);
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

fn sub(a0_6: u32, a1_2: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_15: u32;
    var local_16: bool = false;

    let _e6 = (a0_6 + 2013265921u);
    if (a0_6 > (4294967295u - 2013265921u)) {
    } else {
        if (_e6 < a1_2) {
        } else {
            let _e11 = precision_lib_word_field_canonicalize_ga970_01fb((_e6 - a1_2), fe_trapped_6);
            local_15 = _e11;
            local_16 = true;
        }
        let _e16 = local_16;
        if _e16 {
        }
    }
    let _e19 = local_16;
    if _e19 {
    } else {
        (*fe_trapped_6) = true;
    }
    let _e21 = local_15;
    return _e21;
}

fn inverse_or_zero(a0_7: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    let _e3 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_e36c(a0_7, 2013265919u, fe_trapped_7);
    return _e3;
}

fn reverse_low_bits(a0_8: u32, a1_3: u32) -> u32 {
    var local_17: u32 = u32();
    var local_18: u32 = u32();
    var local_19: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_6_: bool;

    local_17 = a0_8;
    local_18 = 0u;
    local_19 = 0u;
    loop {
        let _e12 = local_17;
        let _e14 = local_18;
        let _e16 = local_19;
        let _e17 = (_e16 < a1_3);
        loop_header_carry_6_ = _e17;
        if _e17 {
            local_17 = (_e12 >> 1u);
            local_18 = ((_e14 << 1u) | (_e12 & 1u));
            local_19 = (_e16 + 1u);
            continue;
        } else {
            loop_result_2 = _e14;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e35 = loop_result_2;
    return _e35;
}

fn prepare_batched_coset_extension(a4_: u32, a5_: FeLocal_fe_shader_private_layout_1_, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_20: FeLocal_fe_shader_private_layout_2_;
    var local_21: bool = false;
    var local_22: FeLocal_fe_shader_private_layout_2_;
    var local_23: bool = false;
    var local_24: bool = bool();
    var local_25: u32 = u32();
    var loop_result_3: FeLocal_fe_shader_private_layout_2_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_41_: bool;
    var local_26: bool = bool();
    var local_27: bool = bool();
    var local_28: bool = bool();
    var local_29: u32 = u32();

    if ((a5_.f0_.f0_ < 876544u) == false) {
        local_20 = FeLocal_fe_shader_private_layout_2_(FeLocal_fe_shader_private_layout_2_().f0_, true, 0u, 0u);
        local_21 = true;
    }
    let _e189 = local_21;
    if _e189 {
    } else {
        let _e25 = (a5_.f0_.f0_ / 2048u);
        let _e27 = (a5_.f0_.f0_ % 2048u);
        let _e32 = (_e25 * 512u);
        let _e33 = (_e25 != 0u);
        if (_e33 && (512u > (4294967295u / select(1u, _e25, _e33)))) {
        } else {
            local_24 = true;
            local_25 = 0u;
            loop {
                let _e46 = local_24;
                let _e48 = local_25;
                let _e50 = (_e48 < 512u);
                loop_header_carry_41_ = _e50;
                if _e50 {
                    if (_e32 > (4294967295u - _e48)) {
                        (*fe_trapped_8) = true;
                        break;
                    }
                    let _e59 = lde_inverse_progress[i32((_e32 + _e48))];
                    if ((_e59 == 10u) == false) {
                        local_26 = false;
                    } else {
                        local_26 = _e46;
                    }
                    let _e68 = local_26;
                    local_24 = _e68;
                    local_25 = (_e48 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e75 = local_24;
            let _e78 = two_adic_root(0u, fe_trapped_8);
            let _e79 = is_zero(a4_);
            if (_e79 == false) {
                let _e83 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_e36c(a4_, 4096u, fe_trapped_8);
                let _e84 = sub(_e83, _e78, fe_trapped_8);
                let _e85 = is_zero(_e84);
                if (_e85 == false) {
                    local_27 = true;
                }
            }
            let _e92 = local_27;
            if ((_e75 == false) | (_e92 == false)) {
            } else {
                local_28 = true;
            }
            let _e101 = local_28;
            let _e103 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(1024u, fe_trapped_8);
            let _e104 = inverse_or_zero(_e103, fe_trapped_8);
            let _e109 = (_e25 * 1024u);
            let _e110 = (_e25 != 0u);
            if (_e110 && (1024u > (4294967295u / select(1u, _e25, _e110)))) {
            } else {
                let _e119 = (_e25 * 4096u);
                let _e120 = (_e25 != 0u);
                if (_e120 && (4096u > (4294967295u / select(1u, _e25, _e120)))) {
                } else {
                    if _e101 {
                        if (_e27 < 1024u) {
                            if (_e109 > (4294967295u - _e27)) {
                                (*fe_trapped_8) = true;
                            } else {
                                let _e137 = lde_inverse_values[i32((_e109 + _e27))];
                                let _e138 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(_e137, fe_trapped_8);
                                let _e139 = precision_lib_word_field_montgomery_mul_ga970_3a48_(_e138, _e104, fe_trapped_8);
                                let _e140 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_e36c(a4_, _e27, fe_trapped_8);
                                let _e141 = precision_lib_word_field_montgomery_mul_ga970_3a48_(_e139, _e140, fe_trapped_8);
                                local_29 = _e141;
                            }
                        }
                    }
                    let _e144 = local_29;
                    let _e146 = reverse_low_bits(_e27, 12u);
                    if (_e119 > (4294967295u - _e146)) {
                    } else {
                        let _e152 = precision_lib_word_field_montgomery_mul_ga970_3a48_(_e144, 1u, fe_trapped_8);
                        lde_values[i32((_e119 + _e146))] = _e152;
                        let _e156 = reverse_low_bits((_e27 + 2048u), 12u);
                        if (_e119 > (4294967295u - _e156)) {
                        } else {
                            let _e163 = precision_lib_word_field_montgomery_mul_ga970_3a48_(0u, 1u, fe_trapped_8);
                            lde_values[i32((_e119 + _e156))] = _e163;
                            lde_progress[i32(a5_.f0_.f0_)] = 0u;
                            local_22 = FeLocal_fe_shader_private_layout_2_(true, _e101, _e25, _e27);
                            local_23 = true;
                        }
                        let _e175 = local_23;
                        if _e175 {
                        }
                    }
                    let _e177 = local_23;
                    if _e177 {
                    }
                }
                let _e179 = local_23;
                if _e179 {
                }
            }
            let _e181 = local_23;
            if _e181 {
            }
        }
        let _e184 = local_23;
        if _e184 {
        } else {
            (*fe_trapped_8) = true;
        }
        let _e186 = local_22;
        local_20 = _e186;
    }
    let _e191 = local_20;
    return _e191;
}

@compute @workgroup_size(256, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();

    let _e30 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_298f(7u, (&fe_trapped));
    let _e36 = prepare_batched_coset_extension(_e30, FeLocal_fe_shader_private_layout_1_(FeLocal_fe_shader_private_layout_0_(global_invocation_id.x, global_invocation_id.y, global_invocation_id.z), FeLocal_fe_shader_private_layout_0_(local_invocation_id.x, local_invocation_id.y, local_invocation_id.z), FeLocal_fe_shader_private_layout_0_(workgroup_id.x, workgroup_id.y, workgroup_id.z), FeLocal_fe_shader_private_layout_0_(num_workgroups.x, num_workgroups.y, num_workgroups.z), local_invocation_index), (&fe_trapped));
    if _e36.f0_ {
        if (_e36.f3_ == 0u) {
            if (459789u > (4294967295u - _e36.f2_)) {
                fe_trapped = true;
            }
            if _e36.f1_ {
                local_2 = 1u;
            }
            let _e53 = local_2;
            proof[i32((459789u + _e36.f2_))] = _e53;
        }
    }
    let _e66 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 876544u)) + (global_invocation_id.z * 876544u))] = u32(_e66);
}
