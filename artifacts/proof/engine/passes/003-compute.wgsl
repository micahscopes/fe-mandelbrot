struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: bool,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
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
var<storage, read_write> lde_inverse_values: array<u32>;
@group(0) @binding(1)
var<storage, read_write> lde_inverse_progress: array<u32>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 219136>;

fn inactive_stage() -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_();
}

fn parallel_ntt_lib_stage_width_04fc(a0_: u32) -> u32 {
    var local_2: u32 = u32();
    var local_3: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var loop_header_carry_7_: bool;

    local_2 = 2u;
    local_3 = a0_;
    loop {
        let _e8 = local_2;
        let _e10 = local_3;
        let _e12 = (_e10 == 0u);
        let _e14 = (_e12 == false);
        loop_header_carry_5_ = _e12;
        loop_header_carry_7_ = _e14;
        if _e14 {
            local_2 = (_e8 << 1u);
            local_3 = (_e10 - 1u);
            continue;
        } else {
            loop_result = _e8;
            loop_did_return = true;
            break;
        }
    }
    let _e27 = loop_result;
    return _e27;
}

fn parallel_ntt_lib_radix2_stage_5843_(a0_1: u32, a1_: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_4: FeLocal_fe_shader_private_layout_2_;
    var local_5: bool = false;

    let _e4 = parallel_ntt_lib_stage_width_04fc(a0_1);
    if (_e4 == 0u) {
        (*fe_trapped_1) = true;
    }
    return FeLocal_fe_shader_private_layout_2_(a0_1, _e4, (_e4 >> 1u), (a1_ / _e4), (a1_ >> 1u), ((a1_ < _e4) == false));
}

fn parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_(a0_2: u32, a1_1: u32, a2_: u32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_6: FeLocal_fe_shader_private_layout_2_;
    var local_7: bool = false;

    if ((a0_2 == 0u) == false) {
        let _e9 = inactive_stage();
        local_6 = _e9;
        local_7 = true;
    }
    let _e16 = local_7;
    if _e16 {
    } else {
        let _e13 = parallel_ntt_lib_radix2_stage_5843_(a1_1, a2_, fe_trapped_2);
        local_6 = _e13;
    }
    let _e18 = local_6;
    return _e18;
}

fn stage_gdfa5_(a0_3: u32, a1_2: u32, a2_1: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    let _e4 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_(a0_3, a1_2, a2_1, fe_trapped_3);
    return _e4;
}

fn stage_g675c(a0_4: u32, a1_3: u32, a2_2: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_8: FeLocal_fe_shader_private_layout_2_;
    var local_9: bool = false;
    var local_10: FeLocal_fe_shader_private_layout_2_;
    var local_11: bool = false;

    if (a0_4 < 1u) {
        let _e7 = stage_gdfa5_(a0_4, a1_3, a2_2, fe_trapped_4);
        local_8 = _e7;
        local_9 = true;
    }
    let _e23 = local_9;
    if _e23 {
    } else {
        if (a1_3 > (4294967295u - 1u)) {
            (*fe_trapped_4) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_4 - 1u), (a1_3 + 1u), a2_2, fe_trapped_4);
        local_8 = _e20;
    }
    let _e25 = local_8;
    return _e25;
}

fn stage_g5379_(a0_5: u32, a1_4: u32, a2_3: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_12: FeLocal_fe_shader_private_layout_2_;
    var local_13: bool = false;
    var local_14: FeLocal_fe_shader_private_layout_2_;
    var local_15: bool = false;

    if (a0_5 < 2u) {
        let _e7 = stage_g675c(a0_5, a1_4, a2_3, fe_trapped_5);
        local_12 = _e7;
        local_13 = true;
    }
    let _e23 = local_13;
    if _e23 {
    } else {
        if (a1_4 > (4294967295u - 2u)) {
            (*fe_trapped_5) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_5 - 2u), (a1_4 + 2u), a2_3, fe_trapped_5);
        local_12 = _e20;
    }
    let _e25 = local_12;
    return _e25;
}

fn stage_gd7f9_(a0_6: u32, a1_5: u32, a2_4: u32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_16: FeLocal_fe_shader_private_layout_2_;
    var local_17: bool = false;
    var local_18: FeLocal_fe_shader_private_layout_2_;
    var local_19: bool = false;

    if (a0_6 < 3u) {
        let _e7 = stage_g5379_(a0_6, a1_5, a2_4, fe_trapped_6);
        local_16 = _e7;
        local_17 = true;
    }
    let _e23 = local_17;
    if _e23 {
    } else {
        if (a1_5 > (4294967295u - 3u)) {
            (*fe_trapped_6) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_6 - 3u), (a1_5 + 3u), a2_4, fe_trapped_6);
        local_16 = _e20;
    }
    let _e25 = local_16;
    return _e25;
}

fn stage_g7a5f(a0_7: u32, a1_6: u32, a2_5: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_20: FeLocal_fe_shader_private_layout_2_;
    var local_21: bool = false;
    var local_22: FeLocal_fe_shader_private_layout_2_;
    var local_23: bool = false;

    if (a0_7 < 4u) {
        let _e7 = stage_gd7f9_(a0_7, a1_6, a2_5, fe_trapped_7);
        local_20 = _e7;
        local_21 = true;
    }
    let _e23 = local_21;
    if _e23 {
    } else {
        if (a1_6 > (4294967295u - 4u)) {
            (*fe_trapped_7) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_7 - 4u), (a1_6 + 4u), a2_5, fe_trapped_7);
        local_20 = _e20;
    }
    let _e25 = local_20;
    return _e25;
}

fn stage_g622e(a0_8: u32, a1_7: u32, a2_6: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_24: FeLocal_fe_shader_private_layout_2_;
    var local_25: bool = false;
    var local_26: FeLocal_fe_shader_private_layout_2_;
    var local_27: bool = false;

    if (a0_8 < 5u) {
        let _e7 = stage_g7a5f(a0_8, a1_7, a2_6, fe_trapped_8);
        local_24 = _e7;
        local_25 = true;
    }
    let _e23 = local_25;
    if _e23 {
    } else {
        if (a1_7 > (4294967295u - 5u)) {
            (*fe_trapped_8) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_8 - 5u), (a1_7 + 5u), a2_6, fe_trapped_8);
        local_24 = _e20;
    }
    let _e25 = local_24;
    return _e25;
}

fn stage_g230e(a0_9: u32, a1_8: u32, a2_7: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_28: FeLocal_fe_shader_private_layout_2_;
    var local_29: bool = false;
    var local_30: FeLocal_fe_shader_private_layout_2_;
    var local_31: bool = false;

    if (a0_9 < 6u) {
        let _e7 = stage_g622e(a0_9, a1_8, a2_7, fe_trapped_9);
        local_28 = _e7;
        local_29 = true;
    }
    let _e23 = local_29;
    if _e23 {
    } else {
        if (a1_8 > (4294967295u - 6u)) {
            (*fe_trapped_9) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_9 - 6u), (a1_8 + 6u), a2_7, fe_trapped_9);
        local_28 = _e20;
    }
    let _e25 = local_28;
    return _e25;
}

fn stage_g1ea2_(a0_10: u32, a1_9: u32, a2_8: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_32: FeLocal_fe_shader_private_layout_2_;
    var local_33: bool = false;
    var local_34: FeLocal_fe_shader_private_layout_2_;
    var local_35: bool = false;

    if (a0_10 < 7u) {
        let _e7 = stage_g230e(a0_10, a1_9, a2_8, fe_trapped_10);
        local_32 = _e7;
        local_33 = true;
    }
    let _e23 = local_33;
    if _e23 {
    } else {
        if (a1_9 > (4294967295u - 7u)) {
            (*fe_trapped_10) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_10 - 7u), (a1_9 + 7u), a2_8, fe_trapped_10);
        local_32 = _e20;
    }
    let _e25 = local_32;
    return _e25;
}

fn stage_g34a0_(a0_11: u32, a1_10: u32, a2_9: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_36: FeLocal_fe_shader_private_layout_2_;
    var local_37: bool = false;
    var local_38: FeLocal_fe_shader_private_layout_2_;
    var local_39: bool = false;

    if (a0_11 < 8u) {
        let _e7 = stage_g1ea2_(a0_11, a1_10, a2_9, fe_trapped_11);
        local_36 = _e7;
        local_37 = true;
    }
    let _e23 = local_37;
    if _e23 {
    } else {
        if (a1_10 > (4294967295u - 8u)) {
            (*fe_trapped_11) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_11 - 8u), (a1_10 + 8u), a2_9, fe_trapped_11);
        local_36 = _e20;
    }
    let _e25 = local_36;
    return _e25;
}

fn stage_g34c8_(a0_12: u32, a1_11: u32, a2_10: u32, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_40: FeLocal_fe_shader_private_layout_2_;
    var local_41: bool = false;
    var local_42: FeLocal_fe_shader_private_layout_2_;
    var local_43: bool = false;

    if (a0_12 < 9u) {
        let _e7 = stage_g34a0_(a0_12, a1_11, a2_10, fe_trapped_12);
        local_40 = _e7;
        local_41 = true;
    }
    let _e23 = local_41;
    if _e23 {
    } else {
        if (a1_11 > (4294967295u - 9u)) {
            (*fe_trapped_12) = true;
        }
        let _e20 = parallel_ntt_lib_impl_trait_Pair_93e2_stage_0846_((a0_12 - 9u), (a1_11 + 9u), a2_10, fe_trapped_12);
        local_40 = _e20;
    }
    let _e25 = local_40;
    return _e25;
}

fn precision_lib_word_field_canonicalize_ga970_0aeb(a0_13: u32, fe_trapped_13: ptr<function, bool>) -> u32 {
    var local_44: u32;
    var local_45: bool = false;

    let _e4 = (a0_13 & 65535u);
    let _e7 = (_e4 + 65536u);
    if (_e4 > (4294967295u - 65536u)) {
    } else {
        if (_e7 < 1u) {
        } else {
            let _e14 = ((_e7 - 1u) >> 16u);
            let _e16 = (a0_13 >> 16u);
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
                                if (a0_13 < _e36) {
                                } else {
                                    local_44 = (a0_13 - _e36);
                                    local_45 = true;
                                }
                                let _e48 = local_45;
                                if _e48 {
                                }
                            }
                            let _e50 = local_45;
                            if _e50 {
                            }
                        }
                        let _e52 = local_45;
                        if _e52 {
                        }
                    }
                    let _e54 = local_45;
                    if _e54 {
                    }
                }
                let _e56 = local_45;
                if _e56 {
                }
            }
            let _e58 = local_45;
            if _e58 {
            }
        }
        let _e60 = local_45;
        if _e60 {
        }
    }
    let _e63 = local_45;
    if _e63 {
    } else {
        (*fe_trapped_13) = true;
    }
    let _e65 = local_44;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_1424_(a0_14: u32, a1_12: u32, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_46: u32;
    var local_47: bool = false;

    let _e5 = (a0_14 & 65535u);
    let _e7 = (a0_14 >> 16u);
    let _e9 = (a1_12 & 65535u);
    let _e11 = (a1_12 >> 16u);
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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_0aeb((_e228 + _e226), fe_trapped_14);
                                                                                                            local_46 = _e235;
                                                                                                            local_47 = true;
                                                                                                        }
                                                                                                        let _e240 = local_47;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_47;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_47;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_47;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_47;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_47;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_47;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_47;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_47;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_47;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_47;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_47;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_47;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_47;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_47;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_47;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_47;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_47;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_47;
                                if _e276 {
                                }
                            }
                            let _e278 = local_47;
                            if _e278 {
                            }
                        }
                        let _e280 = local_47;
                        if _e280 {
                        }
                    }
                    let _e282 = local_47;
                    if _e282 {
                    }
                }
                let _e284 = local_47;
                if _e284 {
                }
            }
            let _e286 = local_47;
            if _e286 {
            }
        }
        let _e288 = local_47;
        if _e288 {
        }
    }
    let _e291 = local_47;
    if _e291 {
    } else {
        (*fe_trapped_14) = true;
    }
    let _e293 = local_46;
    return _e293;
}

fn two_adic_root(a0_15: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_48: u32;
    var local_49: bool = false;
    var local_50: u32 = u32();
    var local_51: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_11_: bool;
    var loop_header_carry_13_: bool;

    if (27u < a0_15) {
        local_48 = 0u;
        local_49 = true;
    }
    let _e39 = local_49;
    if _e39 {
    } else {
        local_50 = 1476048622u;
        local_51 = (27u - a0_15);
        loop {
            let _e18 = local_50;
            let _e20 = local_51;
            let _e22 = (_e20 == 0u);
            let _e24 = (_e22 == false);
            loop_header_carry_11_ = _e22;
            loop_header_carry_13_ = _e24;
            if _e24 {
                let _e25 = precision_lib_word_field_montgomery_mul_ga970_1424_(_e18, _e18, fe_trapped_15);
                local_50 = _e25;
                local_51 = (_e20 - 1u);
                continue;
            } else {
                loop_result_1 = _e18;
                loop_did_return_1 = true;
                break;
            }
        }
        let _e36 = loop_result_1;
        local_48 = _e36;
    }
    let _e41 = local_48;
    return _e41;
}

fn precision_lib_word_field_impl_WordField_8212_from_u32_ga970_476d(a0_16: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_1424_((a0_16 % 2013265921u), 1172168163u, fe_trapped_16);
    return _e5;
}

fn precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_fdb7_(a0_17: u32, a1_13: u32, fe_trapped_17: ptr<function, bool>) -> u32 {
    var local_52: u32 = u32();
    var local_53: u32 = u32();
    var local_54: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_7_1: bool;
    var loop_header_carry_9_: bool;
    var local_55: u32 = u32();

    let _e4 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_476d(1u, fe_trapped_17);
    local_52 = a0_17;
    local_53 = _e4;
    local_54 = a1_13;
    loop {
        let _e13 = local_52;
        let _e15 = local_53;
        let _e17 = local_54;
        let _e19 = (_e17 == 0u);
        let _e21 = (_e19 == false);
        loop_header_carry_7_1 = _e19;
        loop_header_carry_9_ = _e21;
        if _e21 {
            if ((_e17 & 1u) == 1u) {
                let _e27 = precision_lib_word_field_montgomery_mul_ga970_1424_(_e15, _e13, fe_trapped_17);
                local_55 = _e27;
            } else {
                local_55 = _e15;
            }
            let _e31 = local_55;
            let _e32 = precision_lib_word_field_montgomery_mul_ga970_1424_(_e13, _e13, fe_trapped_17);
            local_52 = _e32;
            local_53 = _e31;
            local_54 = (_e17 >> 1u);
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

fn inverse_or_zero(a0_18: u32, fe_trapped_18: ptr<function, bool>) -> u32 {
    let _e3 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_fdb7_(a0_18, 2013265919u, fe_trapped_18);
    return _e3;
}

fn add(a0_19: u32, a1_14: u32, fe_trapped_19: ptr<function, bool>) -> u32 {
    var local_56: u32;
    var local_57: bool = false;

    if (a0_19 > (4294967295u - a1_14)) {
        (*fe_trapped_19) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_0aeb((a0_19 + a1_14), fe_trapped_19);
    return _e9;
}

fn sub(a0_20: u32, a1_15: u32, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_58: u32;
    var local_59: bool = false;

    let _e6 = (a0_20 + 2013265921u);
    if (a0_20 > (4294967295u - 2013265921u)) {
    } else {
        if (_e6 < a1_15) {
        } else {
            let _e11 = precision_lib_word_field_canonicalize_ga970_0aeb((_e6 - a1_15), fe_trapped_20);
            local_58 = _e11;
            local_59 = true;
        }
        let _e16 = local_59;
        if _e16 {
        }
    }
    let _e19 = local_59;
    if _e19 {
    } else {
        (*fe_trapped_20) = true;
    }
    let _e21 = local_58;
    return _e21;
}

@compute @workgroup_size(256, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;

    if (global_invocation_id.x < 219136u) {
        let _e10 = (global_invocation_id.x / 512u);
        let _e12 = (global_invocation_id.x % 512u);
        let _e17 = (_e10 * 1024u);
        let _e18 = (_e10 != 0u);
        if (_e18 && (1024u > (4294967295u / select(1u, _e10, _e18)))) {
        } else {
            let _e25 = lde_inverse_progress[i32(global_invocation_id.x)];
            let _e28 = stage_g34c8_(_e25, 0u, 1024u, (&fe_trapped));
            if _e28.f5_ {
                if (_e28.f4_ == 512u) {
                    if (_e28.f2_ == 0u) {
                    } else {
                        let _e36 = (_e12 / _e28.f2_);
                        if (_e28.f2_ == 0u) {
                        } else {
                            let _e40 = (_e12 % _e28.f2_);
                            let _e45 = (_e36 * _e28.f1_);
                            let _e46 = (_e36 != 0u);
                            if (_e46 && (_e28.f1_ > (4294967295u / select(1u, _e36, _e46)))) {
                            } else {
                                let _e52 = (_e17 + _e45);
                                if (_e17 > (4294967295u - _e45)) {
                                } else {
                                    let _e56 = (_e52 + _e40);
                                    if (_e52 > (4294967295u - _e40)) {
                                    } else {
                                        let _e61 = (_e56 + _e28.f2_);
                                        if (_e56 > (4294967295u - _e28.f2_)) {
                                        } else {
                                            let _e65 = two_adic_root(10u, (&fe_trapped));
                                            let _e66 = inverse_or_zero(_e65, (&fe_trapped));
                                            if (_e28.f1_ == 0u) {
                                            } else {
                                                let _e72 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_fdb7_(_e66, (1024u / _e28.f1_), (&fe_trapped));
                                                let _e73 = precision_lib_word_field_impl_WordField_8212_pow_u32_ga970_fdb7_(_e72, _e40, (&fe_trapped));
                                                let _e76 = lde_inverse_values[i32(_e56)];
                                                let _e77 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_476d(_e76, (&fe_trapped));
                                                let _e80 = lde_inverse_values[i32(_e61)];
                                                let _e81 = precision_lib_word_field_impl_WordField_8212_from_u32_ga970_476d(_e80, (&fe_trapped));
                                                let _e82 = precision_lib_word_field_montgomery_mul_ga970_1424_(_e81, _e73, (&fe_trapped));
                                                let _e83 = add(_e77, _e82, (&fe_trapped));
                                                let _e85 = precision_lib_word_field_montgomery_mul_ga970_1424_(_e83, 1u, (&fe_trapped));
                                                lde_inverse_values[i32(_e56)] = _e85;
                                                let _e88 = sub(_e77, _e82, (&fe_trapped));
                                                let _e90 = precision_lib_word_field_montgomery_mul_ga970_1424_(_e88, 1u, (&fe_trapped));
                                                lde_inverse_values[i32(_e61)] = _e90;
                                                if (_e25 > (4294967295u - 1u)) {
                                                    fe_trapped = true;
                                                }
                                                lde_inverse_progress[i32(global_invocation_id.x)] = (_e25 + 1u);
                                                local_1 = true;
                                            }
                                            let _e104 = local_1;
                                            if _e104 {
                                            }
                                        }
                                        let _e106 = local_1;
                                        if _e106 {
                                        }
                                    }
                                    let _e108 = local_1;
                                    if _e108 {
                                    }
                                }
                                let _e110 = local_1;
                                if _e110 {
                                }
                            }
                            let _e112 = local_1;
                            if _e112 {
                            }
                        }
                        let _e114 = local_1;
                        if _e114 {
                        }
                    }
                    let _e117 = local_1;
                    if _e117 {
                    } else {
                        fe_trapped = true;
                    }
                }
                let _e119 = local_1;
                if _e119 {
                }
            }
            let _e123 = local_1;
            if _e123 {
            } else {
                local_1 = true;
            }
        }
        let _e126 = local_1;
        if _e126 {
        } else {
            fe_trapped = true;
        }
    }
    let _e137 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 219136u)) + (global_invocation_id.z * 219136u))] = u32(_e137);
}
