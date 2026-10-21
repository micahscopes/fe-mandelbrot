struct FeLocal_fe_shader_private_layout_5_ {
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

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: array<FeLocal_fe_shader_private_layout_1_, 8>,
}

struct FeLocal_fe_shader_private_layout_11_ {
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

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_8_ {
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
var<storage, read_write> fri_scratch: array<u32>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn load_fri_round_placement_at(a1_: u32, a2_: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_10: FeLocal_fe_shader_private_layout_5_;
    var local_11: bool = false;

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
                                                            local_10 = FeLocal_fe_shader_private_layout_5_((_e21 == 1u), _e31, _e39, _e47, _e55, _e63, _e71, _e79, _e87, _e95, _e103, _e111, _e119);
                                                            local_11 = true;
                                                        }
                                                        let _e125 = local_11;
                                                        if _e125 {
                                                        }
                                                    }
                                                    let _e127 = local_11;
                                                    if _e127 {
                                                    }
                                                }
                                                let _e129 = local_11;
                                                if _e129 {
                                                }
                                            }
                                            let _e131 = local_11;
                                            if _e131 {
                                            }
                                        }
                                        let _e133 = local_11;
                                        if _e133 {
                                        }
                                    }
                                    let _e135 = local_11;
                                    if _e135 {
                                    }
                                }
                                let _e137 = local_11;
                                if _e137 {
                                }
                            }
                            let _e139 = local_11;
                            if _e139 {
                            }
                        }
                        let _e141 = local_11;
                        if _e141 {
                        }
                    }
                    let _e143 = local_11;
                    if _e143 {
                    }
                }
                let _e145 = local_11;
                if _e145 {
                }
            }
            let _e147 = local_11;
            if _e147 {
            }
        }
        let _e149 = local_11;
        if _e149 {
        }
    }
    let _e152 = local_11;
    if _e152 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e154 = local_10;
    return _e154;
}

fn chunk_layer_tree_nodes(a0_: u32, a1_1: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_12: u32;
    var local_13: bool = false;
    var local_14: u32 = u32();

    if ((1u < a0_) == false) {
    } else {
        let _e13 = (2u * a0_);
        let _e14 = (2u != 0u);
        if (_e14 && (a0_ > (4294967295u / select(1u, 2u, _e14)))) {
            (*fe_trapped_2) = true;
        } else {
            let _e21 = (_e13 - 2u);
            if (_e13 < 2u) {
                (*fe_trapped_2) = true;
            } else {
                if (_e21 < a1_1) {
                    (*fe_trapped_2) = true;
                } else {
                    local_14 = (_e21 - a1_1);
                }
            }
        }
    }
    let _e29 = local_14;
    return _e29;
}

fn chunk_folded_evaluations(a0_1: u32) -> u32 {
    var local_15: u32;
    var local_16: bool = false;
    var local_17: u32 = u32();

    if (a0_1 == 0u) {
    } else {
        local_17 = (a0_1 - 1u);
    }
    let _e9 = local_17;
    return _e9;
}

fn fri_placement_is_valid(a0_2: FeLocal_fe_shader_private_layout_5_, a1_2: u32, a2_1: u32, a3_: u32, fe_trapped_3: ptr<function, bool>) -> bool {
    var local_18: bool;
    var local_19: bool = false;
    var local_20: bool = bool();

    if a0_2.f0_ {
        if (a0_2.f1_ == a1_2) {
            if (a1_2 > (4294967295u - 1u)) {
                (*fe_trapped_3) = true;
            } else {
                if (a0_2.f2_ == (a1_2 + 1u)) {
                    if (0u < a0_2.f5_) {
                        let _e28 = (2u != 0u);
                        if (_e28 && (a0_2.f5_ > (4294967295u / select(1u, 2u, _e28)))) {
                            (*fe_trapped_3) = true;
                        } else {
                            if (a0_2.f4_ == (2u * a0_2.f5_)) {
                                if (a0_2.f6_ > (4294967295u - a0_2.f5_)) {
                                    (*fe_trapped_3) = true;
                                } else {
                                    let _e42 = chunk_folded_evaluations(a2_1);
                                    if ((_e42 < (a0_2.f6_ + a0_2.f5_)) == false) {
                                        let _e52 = (2u * a0_2.f5_);
                                        let _e53 = (2u != 0u);
                                        if (_e53 && (a0_2.f5_ > (4294967295u / select(1u, 2u, _e53)))) {
                                            (*fe_trapped_3) = true;
                                        } else {
                                            if (_e52 < 1u) {
                                                (*fe_trapped_3) = true;
                                            } else {
                                                if (a0_2.f8_ == (_e52 - 1u)) {
                                                    if (a0_2.f7_ > (4294967295u - a0_2.f8_)) {
                                                        (*fe_trapped_3) = true;
                                                    } else {
                                                        let _e71 = chunk_layer_tree_nodes(a2_1, a3_, fe_trapped_3);
                                                        if ((_e71 < (a0_2.f7_ + a0_2.f8_)) == false) {
                                                            local_20 = true;
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
    let _e78 = local_20;
    return _e78;
}

fn impl_Poseidon2Digest_field(a0_3: ptr<function, FeLocal_fe_shader_private_layout_2_>, a1_3: u32) -> u32 {
    var local_21: u32;
    var local_22: bool = false;

    if ((a1_3 < 8u) == false) {
        local_21 = 0u;
        local_22 = true;
    }
    let _e17 = local_22;
    if _e17 {
    } else {
        let _e14 = (*a0_3).f0_[a1_3].f0_;
        local_21 = _e14;
    }
    let _e19 = local_21;
    return _e19;
}

fn precision_lib_word_field_canonicalize_ga970_5605_(a0_4: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_23: u32;
    var local_24: bool = false;

    let _e4 = (a0_4 & 65535u);
    let _e7 = (_e4 + 65536u);
    if (_e4 > (4294967295u - 65536u)) {
    } else {
        if (_e7 < 1u) {
        } else {
            let _e14 = ((_e7 - 1u) >> 16u);
            let _e16 = (a0_4 >> 16u);
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
                                if (a0_4 < _e36) {
                                } else {
                                    local_23 = (a0_4 - _e36);
                                    local_24 = true;
                                }
                                let _e48 = local_24;
                                if _e48 {
                                }
                            }
                            let _e50 = local_24;
                            if _e50 {
                            }
                        }
                        let _e52 = local_24;
                        if _e52 {
                        }
                    }
                    let _e54 = local_24;
                    if _e54 {
                    }
                }
                let _e56 = local_24;
                if _e56 {
                }
            }
            let _e58 = local_24;
            if _e58 {
            }
        }
        let _e60 = local_24;
        if _e60 {
        }
    }
    let _e63 = local_24;
    if _e63 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e65 = local_23;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_147b(a0_5: u32, a1_4: u32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_25: u32;
    var local_26: bool = false;

    let _e5 = (a0_5 & 65535u);
    let _e7 = (a0_5 >> 16u);
    let _e9 = (a1_4 & 65535u);
    let _e11 = (a1_4 >> 16u);
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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_5605_((_e228 + _e226), fe_trapped_5);
                                                                                                            local_25 = _e235;
                                                                                                            local_26 = true;
                                                                                                        }
                                                                                                        let _e240 = local_26;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_26;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_26;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_26;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_26;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_26;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_26;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_26;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_26;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_26;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_26;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_26;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_26;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_26;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_26;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_26;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_26;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_26;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_26;
                                if _e276 {
                                }
                            }
                            let _e278 = local_26;
                            if _e278 {
                            }
                        }
                        let _e280 = local_26;
                        if _e280 {
                        }
                    }
                    let _e282 = local_26;
                    if _e282 {
                    }
                }
                let _e284 = local_26;
                if _e284 {
                }
            }
            let _e286 = local_26;
            if _e286 {
            }
        }
        let _e288 = local_26;
        if _e288 {
        }
    }
    let _e291 = local_26;
    if _e291 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e293 = local_25;
    return _e293;
}

fn store_digest_at(a1_5: u32, a2_2: ptr<function, FeLocal_fe_shader_private_layout_2_>, fe_trapped_6: ptr<function, bool>) {
    var local_27: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_6_: bool;

    local_27 = 0u;
    loop {
        let _e9 = local_27;
        let _e11 = (_e9 < 8u);
        loop_header_carry_6_ = _e11;
        if _e11 {
            if (a1_5 > (4294967295u - _e9)) {
                (*fe_trapped_6) = true;
                break;
            }
            let _e17 = impl_Poseidon2Digest_field(a2_2, _e9);
            let _e19 = precision_lib_word_field_montgomery_mul_ga970_147b(_e17, 1u, fe_trapped_6);
            proof[i32((a1_5 + _e9))] = _e19;
            local_27 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_2 = true;
            break;
        }
    }
    return;
}

fn zero() -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_();
}

fn from_u32_(a0_6: u32, fe_trapped_7: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_147b((a0_6 % 2013265921u), 1172168163u, fe_trapped_7);
    return _e5;
}

fn from_u32s(a0_7: u32, a1_6: u32, a2_3: u32, a3_1: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_26_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_28: u32 = u32();
    var loop_result_3: FeLocal_fe_shader_private_layout_2_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_29_: bool;

    fixed_local_8_[0] = a0_7;
    fixed_local_8_[1] = a1_6;
    fixed_local_8_[2] = a2_3;
    fixed_local_8_[3] = a3_1;
    fixed_local_8_[4] = a4_;
    fixed_local_8_[5] = a5_;
    fixed_local_8_[6] = a6_;
    fixed_local_8_[7] = a7_;
    let _e19 = zero();
    fixed_local_26_ = _e19;
    local_28 = 0u;
    loop {
        let _e27 = local_28;
        let _e29 = (_e27 < 8u);
        loop_header_carry_29_ = _e29;
        if _e29 {
            let _e31 = fixed_local_8_[_e27];
            let _e32 = from_u32_(_e31, fe_trapped_8);
            fixed_local_26_.f0_[_e27].f0_ = _e32;
            local_28 = (_e27 + 1u);
            continue;
        } else {
            let _e39 = fixed_local_26_;
            loop_result_3 = _e39;
            loop_did_return_3 = true;
            break;
        }
    }
    let _e45 = loop_result_3;
    return _e45;
}

fn load_digest_at_gfa0b(a1_7: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_29: FeLocal_fe_shader_private_layout_2_;
    var local_30: bool = false;

    let _e6 = proof[i32(a1_7)];
    if (a1_7 > (4294967295u - 1u)) {
    } else {
        let _e14 = proof[i32((a1_7 + 1u))];
        if (a1_7 > (4294967295u - 2u)) {
        } else {
            let _e22 = proof[i32((a1_7 + 2u))];
            if (a1_7 > (4294967295u - 3u)) {
            } else {
                let _e30 = proof[i32((a1_7 + 3u))];
                if (a1_7 > (4294967295u - 4u)) {
                } else {
                    let _e38 = proof[i32((a1_7 + 4u))];
                    if (a1_7 > (4294967295u - 5u)) {
                    } else {
                        let _e46 = proof[i32((a1_7 + 5u))];
                        if (a1_7 > (4294967295u - 6u)) {
                        } else {
                            let _e54 = proof[i32((a1_7 + 6u))];
                            if (a1_7 > (4294967295u - 7u)) {
                            } else {
                                let _e62 = proof[i32((a1_7 + 7u))];
                                let _e63 = from_u32s(_e6, _e14, _e22, _e30, _e38, _e46, _e54, _e62, fe_trapped_9);
                                local_29 = _e63;
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
                let _e74 = local_30;
                if _e74 {
                }
            }
            let _e76 = local_30;
            if _e76 {
            }
        }
        let _e78 = local_30;
        if _e78 {
        }
    }
    let _e81 = local_30;
    if _e81 {
    } else {
        (*fe_trapped_9) = true;
    }
    let _e83 = local_29;
    return _e83;
}

fn protocol_round_tag(a0_8: u32, a1_8: u32, fe_trapped_10: ptr<function, bool>) -> u32 {
    var local_31: u32;
    var local_32: bool = false;

    let _e5 = (a1_8 / 10u);
    let _e10 = (_e5 * 10u);
    let _e11 = (_e5 != 0u);
    if (_e11 && (10u > (4294967295u / select(1u, _e5, _e11)))) {
    } else {
        let _e16 = (a1_8 - _e10);
        if (a1_8 < _e10) {
        } else {
            if (48u > (4294967295u - _e5)) {
            } else {
                if (48u > (4294967295u - _e16)) {
                } else {
                    local_31 = ((a0_8 | ((48u + _e5) << 8u)) | (48u + _e16));
                    local_32 = true;
                }
                let _e36 = local_32;
                if _e36 {
                }
            }
            let _e38 = local_32;
            if _e38 {
            }
        }
        let _e40 = local_32;
        if _e40 {
        }
    }
    let _e43 = local_32;
    if _e43 {
    } else {
        (*fe_trapped_10) = true;
    }
    let _e45 = local_31;
    return _e45;
}

fn begin_prefixed_tag(a0_9: u32, a1_9: u32, a2_4: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_33: FeLocal_fe_shader_private_layout_0_;
    var local_34: bool = false;
    var fixed_local_4_: array<u32, 16> = array<u32, 16>();
    var local_35: FeLocal_fe_shader_private_layout_0_;
    var local_36: bool = false;

    if ((a0_9 < 2013265921u) == false) {
        let _e11 = fixed_local_4_;
        local_33 = FeLocal_fe_shader_private_layout_0_(_e11, 2u, a2_4, 0u, 0u);
        local_34 = true;
    }
    let _e54 = local_34;
    if _e54 {
    } else {
        if ((a1_9 < 2013265921u) == false) {
        } else {
            if ((a2_4 < 2013265921u) == false) {
            } else {
                let _e28 = from_u32_(a0_9, fe_trapped_11);
                fixed_local_4_[0] = _e28;
                let _e30 = from_u32_(a1_9, fe_trapped_11);
                fixed_local_4_[1] = _e30;
                let _e32 = fixed_local_4_;
                local_35 = FeLocal_fe_shader_private_layout_0_(_e32, 2u, a2_4, 0u, 1u);
                local_36 = true;
            }
            let _e41 = local_36;
            if _e41 {
            }
        }
        let _e49 = local_36;
        if _e49 {
        } else {
            let _e42 = fixed_local_4_;
            local_35 = FeLocal_fe_shader_private_layout_0_(_e42, 2u, a2_4, 0u, 0u);
        }
        let _e51 = local_35;
        local_33 = _e51;
    }
    let _e56 = local_33;
    return _e56;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_10: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_10: u32, fe_trapped_12: ptr<function, bool>) -> u32 {
    var local_37: u32;
    var local_38: bool = false;

    if (a1_10 < 16u) {
    } else {
        (*fe_trapped_12) = true;
    }
    let _e9 = (*a0_10).f0_[a1_10];
    return _e9;
}

fn finish_scheduled(a0_11: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_13: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_39: FeLocal_fe_shader_private_layout_3_;
    var local_40: bool = false;
    var fixed_local_19_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var local_41: u32 = u32();
    var loop_result_4: FeLocal_fe_shader_private_layout_3_;
    var loop_did_return_4: bool = false;
    var loop_header_carry_55_: bool;
    var fixed_local_57_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    let _e4 = (*a0_11).f4_;
    if ((_e4 == 1u) == false) {
    } else {
        let _e10 = (*a0_11).f3_;
        let _e12 = (*a0_11).f2_;
        if ((_e10 == _e12) == false) {
        } else {
            let _e17 = (*a0_11).f1_;
            if ((_e17 == 0u) == false) {
            } else {
                let _e23 = (*a0_11).f0_;
                local_41 = 0u;
                loop {
                    let _e32 = local_41;
                    let _e34 = (_e32 < 8u);
                    loop_header_carry_55_ = _e34;
                    if _e34 {
                        fixed_local_57_ = FeLocal_fe_shader_private_layout_4_(_e23);
                        let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_57_), _e32, fe_trapped_13);
                        fixed_local_19_[_e32].f0_ = _e37;
                        local_41 = (_e32 + 1u);
                        continue;
                    } else {
                        let _e43 = fixed_local_19_;
                        loop_result_4 = FeLocal_fe_shader_private_layout_3_(1u, FeLocal_fe_shader_private_layout_2_(_e43));
                        loop_did_return_4 = true;
                        break;
                    }
                }
                let _e52 = loop_did_return_4;
                if _e52 {
                    let _e54 = loop_result_4;
                    local_39 = _e54;
                    local_40 = true;
                }
            }
            let _e59 = local_40;
            if _e59 {
            }
        }
        let _e61 = local_40;
        if _e61 {
        }
    }
    let _e68 = local_40;
    if _e68 {
    } else {
        let _e62 = zero();
        local_39 = FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e62);
    }
    let _e70 = local_39;
    return _e70;
}

fn require_(a0_12: ptr<function, FeLocal_fe_shader_private_layout_3_>, a1_11: bool) -> FeLocal_fe_shader_private_layout_3_ {
    var local_42: FeLocal_fe_shader_private_layout_3_;
    var local_43: bool = false;

    let _e4 = (*a0_12).f0_;
    if ((_e4 == 1u) == false) {
    } else {
        if (a1_11 == false) {
        } else {
            let _e11 = (*a0_12);
            local_42 = _e11;
            local_43 = true;
        }
        let _e16 = local_43;
        if _e16 {
        }
    }
    let _e23 = local_43;
    if _e23 {
    } else {
        let _e17 = zero();
        local_42 = FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e17);
    }
    let _e25 = local_42;
    return _e25;
}

fn add(a0_13: u32, a1_12: u32, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_44: u32;
    var local_45: bool = false;

    if (a0_13 > (4294967295u - a1_12)) {
        (*fe_trapped_14) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_5605_((a0_13 + a1_12), fe_trapped_14);
    return _e9;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_14: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_13: u32, a2_5: u32, fe_trapped_15: ptr<function, bool>) {
    var local_46: u32;
    var local_47: bool = false;

    if (a1_13 < 16u) {
    } else {
        (*fe_trapped_15) = true;
    }
    (*a0_14).f0_[a1_13] = a2_5;
    return;
}

fn mat4_(a0_15: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_14: u32, fe_trapped_16: ptr<function, bool>) {
    var local_48: u32;
    var local_49: bool = false;

    let _e4 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_15, a1_14, fe_trapped_16);
    if (a1_14 > (4294967295u - 1u)) {
    } else {
        let _e10 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_15, (a1_14 + 1u), fe_trapped_16);
        if (a1_14 > (4294967295u - 2u)) {
        } else {
            let _e16 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_15, (a1_14 + 2u), fe_trapped_16);
            if (a1_14 > (4294967295u - 3u)) {
            } else {
                let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_15, (a1_14 + 3u), fe_trapped_16);
                let _e23 = add(_e4, _e10, fe_trapped_16);
                let _e24 = add(_e16, _e22, fe_trapped_16);
                let _e25 = add(_e23, _e24, fe_trapped_16);
                let _e26 = add(_e25, _e10, fe_trapped_16);
                let _e27 = add(_e25, _e22, fe_trapped_16);
                let _e28 = add(_e26, _e23, fe_trapped_16);
                poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_15, a1_14, _e28, fe_trapped_16);
                if (a1_14 > (4294967295u - 1u)) {
                } else {
                    let _e34 = add(_e26, _e16, fe_trapped_16);
                    let _e35 = add(_e34, _e16, fe_trapped_16);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_15, (a1_14 + 1u), _e35, fe_trapped_16);
                    if (a1_14 > (4294967295u - 2u)) {
                    } else {
                        let _e41 = add(_e27, _e24, fe_trapped_16);
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_15, (a1_14 + 2u), _e41, fe_trapped_16);
                        if (a1_14 > (4294967295u - 3u)) {
                        } else {
                            let _e47 = add(_e27, _e4, fe_trapped_16);
                            let _e48 = add(_e47, _e4, fe_trapped_16);
                            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_15, (a1_14 + 3u), _e48, fe_trapped_16);
                            local_49 = true;
                        }
                        let _e52 = local_49;
                        if _e52 {
                        }
                    }
                    let _e54 = local_49;
                    if _e54 {
                    }
                }
                let _e56 = local_49;
                if _e56 {
                }
            }
            let _e58 = local_49;
            if _e58 {
            }
        }
        let _e60 = local_49;
        if _e60 {
        }
    }
    let _e63 = local_49;
    if _e63 {
    } else {
        (*fe_trapped_16) = true;
    }
    return;
}

fn external_linear(a0_16: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_17: ptr<function, bool>) {
    var local_50: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_48_: bool;
    var local_51: u32 = u32();

    mat4_(a0_16, 0u, fe_trapped_17);
    mat4_(a0_16, 4u, fe_trapped_17);
    mat4_(a0_16, 8u, fe_trapped_17);
    mat4_(a0_16, 12u, fe_trapped_17);
    let _e7 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 0u, fe_trapped_17);
    let _e9 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 4u, fe_trapped_17);
    let _e10 = add(_e7, _e9, fe_trapped_17);
    let _e12 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 8u, fe_trapped_17);
    let _e13 = add(_e10, _e12, fe_trapped_17);
    let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 12u, fe_trapped_17);
    let _e16 = add(_e13, _e15, fe_trapped_17);
    let _e18 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 1u, fe_trapped_17);
    let _e20 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 5u, fe_trapped_17);
    let _e21 = add(_e18, _e20, fe_trapped_17);
    let _e23 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 9u, fe_trapped_17);
    let _e24 = add(_e21, _e23, fe_trapped_17);
    let _e26 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 13u, fe_trapped_17);
    let _e27 = add(_e24, _e26, fe_trapped_17);
    let _e29 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 2u, fe_trapped_17);
    let _e31 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 6u, fe_trapped_17);
    let _e32 = add(_e29, _e31, fe_trapped_17);
    let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 10u, fe_trapped_17);
    let _e35 = add(_e32, _e34, fe_trapped_17);
    let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 14u, fe_trapped_17);
    let _e38 = add(_e35, _e37, fe_trapped_17);
    let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 3u, fe_trapped_17);
    let _e42 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 7u, fe_trapped_17);
    let _e43 = add(_e40, _e42, fe_trapped_17);
    let _e45 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 11u, fe_trapped_17);
    let _e46 = add(_e43, _e45, fe_trapped_17);
    let _e48 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, 15u, fe_trapped_17);
    let _e49 = add(_e46, _e48, fe_trapped_17);
    local_50 = 0u;
    loop {
        let _e55 = local_50;
        let _e57 = (_e55 < 16u);
        loop_header_carry_48_ = _e57;
        if _e57 {
            switch (_e55 & 3u) {
                case 0u: {
                    local_51 = _e16;
                }
                case 1u: {
                    local_51 = _e27;
                }
                case 2u: {
                    local_51 = _e38;
                }
                default: {
                    local_51 = _e49;
                }
            }
            let _e66 = local_51;
            let _e67 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_16, _e55, fe_trapped_17);
            let _e68 = add(_e67, _e66, fe_trapped_17);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_16, _e55, _e68, fe_trapped_17);
            local_50 = (_e55 + 1u);
            continue;
        } else {
            loop_did_return_5 = true;
            break;
        }
    }
    return;
}

fn multiply(a0_17: u32, a1_15: u32, a2_6: u32, fe_trapped_18: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    let _e4 = precision_lib_word_field_montgomery_mul_ga970_147b(a1_15, a2_6, fe_trapped_18);
    return FeLocal_fe_shader_private_layout_7_(FeLocal_fe_shader_private_layout_6_(a0_17), FeLocal_fe_shader_private_layout_1_(_e4));
}

fn poseidon2_power7_plan(a0_18: u32, a1_16: u32, fe_trapped_19: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_10_ {
    let _e3 = multiply(a0_18, a1_16, a1_16, fe_trapped_19);
    let _e10 = multiply(_e3.f0_.f0_, _e3.f1_.f0_, _e3.f1_.f0_, fe_trapped_19);
    let _e15 = multiply(_e10.f0_.f0_, a1_16, _e3.f1_.f0_, fe_trapped_19);
    let _e22 = multiply(_e15.f0_.f0_, _e15.f1_.f0_, _e10.f1_.f0_, fe_trapped_19);
    return FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_6_(_e22.f0_.f0_), FeLocal_fe_shader_private_layout_1_(_e22.f1_.f0_));
}

fn internal_linear(a0_19: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_20: ptr<function, bool>) {
    var local_52: u32 = u32();
    var local_53: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_4_: bool;

    local_52 = 0u;
    local_53 = 0u;
    loop {
        let _e10 = local_52;
        let _e12 = local_53;
        let _e14 = (_e12 < 16u);
        loop_header_carry_4_ = _e14;
        if _e14 {
            let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, _e12, fe_trapped_20);
            let _e16 = add(_e10, _e15, fe_trapped_20);
            local_52 = _e16;
            local_53 = (_e12 + 1u);
            continue;
        } else {
            let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 0u, fe_trapped_20);
            let _e24 = precision_lib_word_field_montgomery_mul_ga970_147b(_e22, 1476395013u, fe_trapped_20);
            let _e25 = add(_e10, _e24, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 0u, _e25, fe_trapped_20);
            let _e28 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 1u, fe_trapped_20);
            let _e30 = precision_lib_word_field_montgomery_mul_ga970_147b(_e28, 268435454u, fe_trapped_20);
            let _e31 = add(_e10, _e30, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 1u, _e31, fe_trapped_20);
            let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 2u, fe_trapped_20);
            let _e36 = precision_lib_word_field_montgomery_mul_ga970_147b(_e34, 536870908u, fe_trapped_20);
            let _e37 = add(_e10, _e36, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 2u, _e37, fe_trapped_20);
            let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 3u, fe_trapped_20);
            let _e42 = precision_lib_word_field_montgomery_mul_ga970_147b(_e40, 134217727u, fe_trapped_20);
            let _e43 = add(_e10, _e42, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 3u, _e43, fe_trapped_20);
            let _e46 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 4u, fe_trapped_20);
            let _e48 = precision_lib_word_field_montgomery_mul_ga970_147b(_e46, 805306362u, fe_trapped_20);
            let _e49 = add(_e10, _e48, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 4u, _e49, fe_trapped_20);
            let _e52 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 5u, fe_trapped_20);
            let _e54 = precision_lib_word_field_montgomery_mul_ga970_147b(_e52, 1073741816u, fe_trapped_20);
            let _e55 = add(_e10, _e54, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 5u, _e55, fe_trapped_20);
            let _e58 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 6u, fe_trapped_20);
            let _e60 = precision_lib_word_field_montgomery_mul_ga970_147b(_e58, 1879048194u, fe_trapped_20);
            let _e61 = add(_e10, _e60, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 6u, _e61, fe_trapped_20);
            let _e64 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 7u, fe_trapped_20);
            let _e66 = precision_lib_word_field_montgomery_mul_ga970_147b(_e64, 1207959559u, fe_trapped_20);
            let _e67 = add(_e10, _e66, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 7u, _e67, fe_trapped_20);
            let _e70 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 8u, fe_trapped_20);
            let _e72 = precision_lib_word_field_montgomery_mul_ga970_147b(_e70, 939524105u, fe_trapped_20);
            let _e73 = add(_e10, _e72, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 8u, _e73, fe_trapped_20);
            let _e76 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 9u, fe_trapped_20);
            let _e78 = precision_lib_word_field_montgomery_mul_ga970_147b(_e76, 16777216u, fe_trapped_20);
            let _e79 = add(_e10, _e78, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 9u, _e79, fe_trapped_20);
            let _e82 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 10u, fe_trapped_20);
            let _e84 = precision_lib_word_field_montgomery_mul_ga970_147b(_e82, 1073741824u, fe_trapped_20);
            let _e85 = add(_e10, _e84, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 10u, _e85, fe_trapped_20);
            let _e88 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 11u, fe_trapped_20);
            let _e90 = precision_lib_word_field_montgomery_mul_ga970_147b(_e88, 536870912u, fe_trapped_20);
            let _e91 = add(_e10, _e90, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 11u, _e91, fe_trapped_20);
            let _e94 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 12u, fe_trapped_20);
            let _e96 = precision_lib_word_field_montgomery_mul_ga970_147b(_e94, 32u, fe_trapped_20);
            let _e97 = add(_e10, _e96, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 12u, _e97, fe_trapped_20);
            let _e100 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 13u, fe_trapped_20);
            let _e102 = precision_lib_word_field_montgomery_mul_ga970_147b(_e100, 1996488705u, fe_trapped_20);
            let _e103 = add(_e10, _e102, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 13u, _e103, fe_trapped_20);
            let _e106 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 14u, fe_trapped_20);
            let _e108 = precision_lib_word_field_montgomery_mul_ga970_147b(_e106, 1744830465u, fe_trapped_20);
            let _e109 = add(_e10, _e108, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 14u, _e109, fe_trapped_20);
            let _e112 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_(a0_19, 15u, fe_trapped_20);
            let _e114 = precision_lib_word_field_montgomery_mul_ga970_147b(_e112, 2013265889u, fe_trapped_20);
            let _e115 = add(_e10, _e114, fe_trapped_20);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_(a0_19, 15u, _e115, fe_trapped_20);
            loop_did_return_6 = true;
            break;
        }
    }
    return;
}

fn poseidon2_permutation_execution(a0_20: u32, a1_17: array<u32, 16>, a2_7: ptr<function, FeLocal_fe_shader_private_layout_8_>, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    var fixed_local_8_1: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_54: u32 = u32();
    var local_55: u32 = u32();
    var local_56: u32 = u32();
    var loop_result_7: FeLocal_fe_shader_private_layout_9_;
    var loop_did_return_7: bool = false;
    var loop_header_carry_11_: bool;
    var local_57: u32 = u32();
    var local_58: u32 = u32();
    var local_59: u32 = u32();
    var local_60: u32 = u32();
    var local_61: u32 = u32();
    var local_62: u32 = u32();
    var loop_result_8: FeLocal_fe_shader_private_layout_9_;
    var loop_did_return_8: bool = false;
    var loop_header_carry_14_: bool;
    var loop_result_9: FeLocal_fe_shader_private_layout_9_;
    var loop_did_return_9: bool = false;
    var loop_header_carry_49_: bool;
    var local_63: u32 = u32();
    var local_64: u32 = u32();
    var local_65: u32 = u32();
    var loop_result_10: FeLocal_fe_shader_private_layout_9_;
    var loop_did_return_10: bool = false;
    var loop_header_carry_77_: bool;
    var local_66: u32 = u32();
    var local_67: u32 = u32();
    var local_68: u32 = u32();
    var loop_result_11: FeLocal_fe_shader_private_layout_9_;
    var loop_did_return_11: bool = false;
    var loop_header_carry_88_: bool;

    fixed_local_8_1 = FeLocal_fe_shader_private_layout_4_(a1_17);
    external_linear((&fixed_local_8_1), fe_trapped_21);
    local_54 = a0_20;
    local_55 = 0u;
    local_56 = 0u;
    loop {
        let _e17 = local_54;
        let _e19 = local_55;
        let _e21 = local_56;
        let _e23 = (_e21 < 4u);
        loop_header_carry_11_ = _e23;
        if _e23 {
            local_60 = _e17;
            local_61 = _e19;
            local_62 = 0u;
            loop {
                let _e36 = local_60;
                let _e38 = local_61;
                let _e40 = local_62;
                let _e42 = (_e40 < 16u);
                loop_header_carry_14_ = _e42;
                if _e42 {
                    if (_e38 < 141u) {
                    } else {
                        (*fe_trapped_21) = true;
                        break;
                    }
                    let _e48 = (*a2_7).f0_[_e38];
                    let _e49 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_1), _e40, fe_trapped_21);
                    let _e50 = add(_e49, _e48, fe_trapped_21);
                    let _e51 = poseidon2_power7_plan(_e36, _e50, fe_trapped_21);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_1), _e40, _e51.f1_.f0_, fe_trapped_21);
                    local_60 = _e51.f0_.f0_;
                    local_61 = (_e38 + 1u);
                    local_62 = (_e40 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e65 = local_60;
            let _e67 = local_61;
            external_linear((&fixed_local_8_1), fe_trapped_21);
            if (_e21 > (4294967295u - 1u)) {
            } else {
                local_54 = _e65;
                local_55 = _e67;
                local_56 = (_e21 + 1u);
                continue;
            }
            (*fe_trapped_21) = true;
            break;
        } else {
            local_57 = _e17;
            local_58 = _e19;
            local_59 = 0u;
            break;
        }
    }
    let _e83 = local_54;
    let _e85 = local_55;
    local_57 = _e83;
    local_58 = _e85;
    local_59 = 0u;
    loop {
        let _e92 = local_57;
        let _e94 = local_58;
        let _e96 = local_59;
        let _e98 = (_e96 < 13u);
        loop_header_carry_49_ = _e98;
        if _e98 {
            if (_e94 < 141u) {
            } else {
                (*fe_trapped_21) = true;
                break;
            }
            let _e107 = (*a2_7).f0_[_e94];
            let _e109 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_1), 0u, fe_trapped_21);
            let _e110 = add(_e109, _e107, fe_trapped_21);
            let _e111 = poseidon2_power7_plan(_e92, _e110, fe_trapped_21);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_1), 0u, _e111.f1_.f0_, fe_trapped_21);
            internal_linear((&fixed_local_8_1), fe_trapped_21);
            local_57 = _e111.f0_.f0_;
            local_58 = (_e94 + 1u);
            local_59 = (_e96 + 1u);
            continue;
        } else {
            local_63 = _e94;
            local_64 = _e92;
            local_65 = 0u;
            break;
        }
    }
    let _e130 = local_57;
    let _e132 = local_58;
    local_63 = _e132;
    local_64 = _e130;
    local_65 = 0u;
    loop {
        let _e139 = local_63;
        let _e141 = local_64;
        let _e143 = local_65;
        let _e145 = (_e143 < 4u);
        loop_header_carry_77_ = _e145;
        if _e145 {
            local_66 = _e141;
            local_67 = _e139;
            local_68 = 0u;
            loop {
                let _e155 = local_66;
                let _e157 = local_67;
                let _e159 = local_68;
                let _e161 = (_e159 < 16u);
                loop_header_carry_88_ = _e161;
                if _e161 {
                    if (_e157 < 141u) {
                    } else {
                        (*fe_trapped_21) = true;
                        break;
                    }
                    let _e167 = (*a2_7).f0_[_e157];
                    let _e168 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_11a6_((&fixed_local_8_1), _e159, fe_trapped_21);
                    let _e169 = add(_e168, _e167, fe_trapped_21);
                    let _e170 = poseidon2_power7_plan(_e155, _e169, fe_trapped_21);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_8_1), _e159, _e170.f1_.f0_, fe_trapped_21);
                    local_66 = _e170.f0_.f0_;
                    local_67 = (_e157 + 1u);
                    local_68 = (_e159 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e184 = local_66;
            let _e186 = local_67;
            external_linear((&fixed_local_8_1), fe_trapped_21);
            if (_e143 > (4294967295u - 1u)) {
            } else {
                local_63 = _e186;
                local_64 = _e184;
                local_65 = (_e143 + 1u);
                continue;
            }
            (*fe_trapped_21) = true;
            break;
        } else {
            let _e197 = fixed_local_8_1.f0_;
            loop_result_10 = FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_6_(_e141), _e197);
            loop_did_return_10 = true;
            break;
        }
    }
    let _e205 = loop_result_10;
    return _e205;
}

fn permute(a0_21: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_18: ptr<function, FeLocal_fe_shader_private_layout_8_>, fe_trapped_22: ptr<function, bool>) {
    let _e4 = (*a0_21).f0_;
    let _e6 = poseidon2_permutation_execution(0u, _e4, a1_18, fe_trapped_22);
    (*a0_21).f0_ = _e6.f1_;
    return;
}

fn absorb_scheduled_block(a0_22: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_19: ptr<function, array<FeLocal_fe_shader_private_layout_1_, 8>>, a2_8: u32, a3_2: bool, fe_trapped_23: ptr<function, bool>) {
    var local_69: u32;
    var local_70: bool = false;
    var local_71: u32 = u32();
    var local_72: u32;
    var local_73: bool = false;
    var local_74: bool = bool();
    var local_75: bool = bool();
    var local_76: u32 = u32();
    var fixed_local_643_: FeLocal_fe_shader_private_layout_8_ = FeLocal_fe_shader_private_layout_8_();
    var fixed_local_649_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_77: u32 = u32();
    var loop_result_12: u32;
    var loop_did_return_12: bool = false;
    var loop_header_carry_652_: bool;
    var local_78: u32 = u32();

    let _e10 = ((8u < a2_8) == false);
    let _e12 = (*a0_22).f3_;
    let _e14 = (*a0_22).f2_;
    let _e17 = ((_e14 < _e12) == false);
    if _e17 {
        let _e19 = (*a0_22).f2_;
        let _e21 = (*a0_22).f3_;
        if (_e19 < _e21) {
            (*fe_trapped_23) = true;
        } else {
            local_71 = (_e19 - _e21);
        }
    }
    let _e28 = local_71;
    let _e33 = (*a0_22).f1_;
    let _e37 = (*a0_22).f1_;
    if (_e37 > (4294967295u - a2_8)) {
    } else {
        let _e47 = (*a0_22).f3_;
        if (_e47 > (4294967295u - a2_8)) {
        } else {
            let _e53 = (*a0_22).f2_;
            let _e56 = (*a0_22).f1_;
            if (_e56 > (4294967295u - a2_8)) {
            } else {
                if (((_e47 + a2_8) == _e53) == a3_2) {
                    if (((_e56 + a2_8) == 8u) | a3_2) {
                        local_74 = true;
                    }
                }
                let _e70 = local_74;
                let _e72 = (*a0_22).f4_;
                if (_e72 == 1u) {
                    if ((_e10 == false) | (_e17 == false)) {
                    } else {
                        if ((((_e28 < a2_8) == false) == false) | ((_e33 < 8u) == false)) {
                        } else {
                            if ((((8u < (_e37 + a2_8)) == false) == false) | (_e70 == false)) {
                            } else {
                                local_75 = true;
                            }
                        }
                    }
                }
                let _e94 = local_75;
                if _e10 {
                    local_76 = a2_8;
                } else {
                    local_76 = 8u;
                }
                let _e99 = local_76;
                fixed_local_643_ = FeLocal_fe_shader_private_layout_8_(array<u32, 141>(1582131512u, 1899519471u, 1641921850u, 462688640u, 1293997949u, 1380417575u, 1932416963u, 283521298u, 1016708647u, 35751290u, 1270782647u, 851730739u, 795004022u, 929571430u, 523703523u, 1593957757u, 895976710u, 1742343460u, 917700746u, 1516725708u, 1170237629u, 785693164u, 613651155u, 352999196u, 678775274u, 1005433272u, 1704854670u, 1174551920u, 508930349u, 530338447u, 1327158816u, 1417652352u, 1153538870u, 583201050u, 397833841u, 1440603828u, 454600685u, 174490638u, 171758601u, 1998476616u, 1403697810u, 1807736944u, 450348306u, 1458895865u, 787037868u, 1063762964u, 1987002214u, 481645916u, 1231767638u, 1323639433u, 238360103u, 2012412459u, 1024945356u, 1108359895u, 1284135849u, 606928406u, 1021455954u, 719347978u, 659671051u, 769588663u, 805534062u, 592213995u, 1752728055u, 663410947u, 250494022u, 528496384u, 1472966118u, 977089650u, 1885890237u, 1094557811u, 147492661u, 664163003u, 398852570u, 336233633u, 1628648315u, 888594966u, 586791090u, 999830298u, 304461056u, 552699684u, 450698925u, 667466464u, 1736509752u, 1327760865u, 1153241151u, 816675655u, 1076172858u, 1914832527u, 1668723429u, 1365579850u, 975704528u, 1031625628u, 1393317533u, 1554700828u, 1023828605u, 1610378860u, 347744760u, 1909572073u, 739227895u, 428565985u, 633143046u, 121797685u, 94048546u, 1369350241u, 1250010422u, 114268841u, 515033604u, 49052844u, 1962329907u, 1380892638u, 1860017417u, 64711457u, 9758460u, 1681838395u, 710850601u, 1020228997u, 1414164790u, 1531515535u, 36158805u, 713604525u, 89935127u, 1870801994u, 395985906u, 1122769045u, 1760811055u, 819787042u, 134654834u, 1755145179u, 18433016u, 1701878989u, 1782339297u, 1483861396u, 962480061u, 1857590724u, 222440409u, 63223417u, 515206622u, 1348364213u, 973414686u, 1591066884u, 705852913u));
                let _e246 = (*a0_22).f0_;
                fixed_local_649_ = FeLocal_fe_shader_private_layout_4_(_e246);
                local_77 = 0u;
                loop {
                    let _e255 = local_77;
                    let _e256 = (_e255 < _e99);
                    loop_header_carry_652_ = _e256;
                    if _e256 {
                        let _e258 = (*a0_22).f1_;
                        if (_e258 > (4294967295u - _e255)) {
                            (*fe_trapped_23) = true;
                            break;
                        }
                        let _e266 = (*a1_19)[_e255].f0_;
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_83b7_((&fixed_local_649_), (_e258 + _e255), _e266, fe_trapped_23);
                        local_77 = (_e255 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                permute((&fixed_local_649_), (&fixed_local_643_), fe_trapped_23);
                let _e272 = fixed_local_649_.f0_;
                (*a0_22).f0_ = _e272;
                (*a0_22).f1_ = 0u;
                let _e277 = (*a0_22).f3_;
                if (_e277 > (4294967295u - a2_8)) {
                    (*fe_trapped_23) = true;
                }
                (*a0_22).f3_ = (_e277 + a2_8);
                if _e94 {
                    local_78 = 1u;
                }
                let _e288 = local_78;
                (*a0_22).f4_ = _e288;
                local_73 = true;
            }
            let _e293 = local_73;
            if _e293 {
            }
        }
        let _e295 = local_73;
        if _e295 {
        }
    }
    let _e298 = local_73;
    if _e298 {
    } else {
        (*fe_trapped_23) = true;
    }
    return;
}

fn load_digest_at_g5a92_(a1_20: u32, fe_trapped_24: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_79: FeLocal_fe_shader_private_layout_2_;
    var local_80: bool = false;

    let _e6 = fri_scratch[i32(a1_20)];
    if (a1_20 > (4294967295u - 1u)) {
    } else {
        let _e14 = fri_scratch[i32((a1_20 + 1u))];
        if (a1_20 > (4294967295u - 2u)) {
        } else {
            let _e22 = fri_scratch[i32((a1_20 + 2u))];
            if (a1_20 > (4294967295u - 3u)) {
            } else {
                let _e30 = fri_scratch[i32((a1_20 + 3u))];
                if (a1_20 > (4294967295u - 4u)) {
                } else {
                    let _e38 = fri_scratch[i32((a1_20 + 4u))];
                    if (a1_20 > (4294967295u - 5u)) {
                    } else {
                        let _e46 = fri_scratch[i32((a1_20 + 5u))];
                        if (a1_20 > (4294967295u - 6u)) {
                        } else {
                            let _e54 = fri_scratch[i32((a1_20 + 6u))];
                            if (a1_20 > (4294967295u - 7u)) {
                            } else {
                                let _e62 = fri_scratch[i32((a1_20 + 7u))];
                                let _e63 = from_u32s(_e6, _e14, _e22, _e30, _e38, _e46, _e54, _e62, fe_trapped_24);
                                local_79 = _e63;
                                local_80 = true;
                            }
                            let _e68 = local_80;
                            if _e68 {
                            }
                        }
                        let _e70 = local_80;
                        if _e70 {
                        }
                    }
                    let _e72 = local_80;
                    if _e72 {
                    }
                }
                let _e74 = local_80;
                if _e74 {
                }
            }
            let _e76 = local_80;
            if _e76 {
            }
        }
        let _e78 = local_80;
        if _e78 {
        }
    }
    let _e81 = local_80;
    if _e81 {
    } else {
        (*fe_trapped_24) = true;
    }
    let _e83 = local_79;
    return _e83;
}

fn is_valid(a0_23: ptr<function, FeLocal_fe_shader_private_layout_3_>) -> bool {
    let _e2 = (*a0_23).f0_;
    return (_e2 == 1u);
}

fn digest(a0_24: ptr<function, FeLocal_fe_shader_private_layout_3_>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_81: FeLocal_fe_shader_private_layout_2_;
    var local_82: bool = false;

    let _e3 = (*a0_24).f0_;
    if ((_e3 == 1u) == false) {
        let _e8 = zero();
        local_81 = _e8;
        local_82 = true;
    }
    let _e16 = local_82;
    if _e16 {
    } else {
        let _e13 = (*a0_24).f1_;
        local_81 = _e13;
    }
    let _e18 = local_81;
    return _e18;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_27_: bool;
    var local_3: bool = bool();
    var fixed_local_43_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_4: u32 = u32();
    var local_5: bool = bool();
    var fixed_local_77_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_90_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_6: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_94_: bool;
    var local_7: u32 = u32();
    var local_8: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var fixed_local_196_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var fixed_local_200_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var local_9: u32 = u32();
    var fixed_local_204_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_211_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_213_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();

    let _e8 = fri_scratch[i32(237706u)];
    if (_e8 < 12u) {
        let _e12 = load_fri_round_placement_at(237550u, _e8, (&fe_trapped));
        let _e15 = fri_placement_is_valid(_e12, _e8, 4096u, 12u, (&fe_trapped));
        local_2 = 0u;
        loop {
            let _e21 = local_2;
            let _e23 = (_e21 < 2u);
            loop_header_carry_27_ = _e23;
            if _e23 {
                let _e27 = (_e12.f8_ - 1u);
                if (_e12.f8_ < 1u) {
                } else {
                    let _e30 = (_e21 * 8191u);
                    let _e32 = (_e30 + _e12.f7_);
                    if (_e30 > (4294967295u - _e12.f7_)) {
                    } else {
                        let _e36 = (_e32 + _e27);
                        if (_e32 > (4294967295u - _e27)) {
                        } else {
                            let _e44 = (_e36 != 0u);
                            if (_e44 && (8u > (4294967295u / select(1u, _e36, _e44)))) {
                                fe_trapped = true;
                                break;
                            }
                            let _e51 = load_digest_at_g5a92_((_e36 * 8u), (&fe_trapped));
                            fixed_local_43_ = _e51;
                            if _e15 {
                                if (131056u > (4294967295u - _e36)) {
                                    fe_trapped = true;
                                    break;
                                } else {
                                    let _e62 = fri_scratch[i32((131056u + _e36))];
                                    if (_e62 == 1u) {
                                        local_3 = true;
                                    } else {
                                        local_3 = false;
                                    }
                                }
                            } else {
                                local_3 = false;
                            }
                            let _e73 = local_3;
                            let _e76 = ((_e21 * 12u) + _e8);
                            store_digest_at((513630u + (_e76 << 3u)), (&fixed_local_43_), (&fe_trapped));
                            if _e73 {
                                local_4 = 1u;
                            } else {
                                local_4 = 0u;
                            }
                            let _e89 = local_4;
                            proof[i32((514054u + _e76))] = _e89;
                            let _e94 = ((_e21 * 13u) + _e8);
                            let _e99 = load_digest_at_gfa0b((513822u + (_e94 << 3u)), (&fe_trapped));
                            fixed_local_77_ = _e99;
                            if _e73 {
                                let _e106 = proof[i32((514078u + _e94))];
                                if (_e106 == 1u) {
                                    local_5 = true;
                                } else {
                                    local_5 = false;
                                }
                            } else {
                                local_5 = false;
                            }
                            let _e116 = local_5;
                            let _e119 = protocol_round_tag(1179910144u, _e12.f2_, (&fe_trapped));
                            let _e122 = begin_prefixed_tag(_e119, 16u, 16u, (&fe_trapped));
                            fixed_local_90_ = _e122;
                            local_6 = 0u;
                            loop {
                                let _e130 = local_6;
                                let _e132 = (_e130 < 3u);
                                loop_header_carry_94_ = _e132;
                                if _e132 {
                                    if (_e130 == 0u) {
                                        local_7 = 6u;
                                    } else {
                                        if (_e130 == 1u) {
                                            local_7 = 8u;
                                        } else {
                                            local_7 = 2u;
                                        }
                                    }
                                    let _e146 = local_7;
                                    if (_e130 == 0u) {
                                        let _e152 = impl_Poseidon2Digest_field((&fixed_local_77_), 0u);
                                        let _e154 = impl_Poseidon2Digest_field((&fixed_local_77_), 1u);
                                        let _e156 = impl_Poseidon2Digest_field((&fixed_local_77_), 2u);
                                        let _e158 = impl_Poseidon2Digest_field((&fixed_local_77_), 3u);
                                        let _e160 = impl_Poseidon2Digest_field((&fixed_local_77_), 4u);
                                        let _e162 = impl_Poseidon2Digest_field((&fixed_local_77_), 5u);
                                        local_8 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e152), FeLocal_fe_shader_private_layout_1_(_e154), FeLocal_fe_shader_private_layout_1_(_e156), FeLocal_fe_shader_private_layout_1_(_e158), FeLocal_fe_shader_private_layout_1_(_e160), FeLocal_fe_shader_private_layout_1_(_e162), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
                                    } else {
                                        if (_e130 == 1u) {
                                            let _e175 = impl_Poseidon2Digest_field((&fixed_local_77_), 6u);
                                            let _e177 = impl_Poseidon2Digest_field((&fixed_local_77_), 7u);
                                            let _e179 = impl_Poseidon2Digest_field((&fixed_local_43_), 0u);
                                            let _e181 = impl_Poseidon2Digest_field((&fixed_local_43_), 1u);
                                            let _e183 = impl_Poseidon2Digest_field((&fixed_local_43_), 2u);
                                            let _e185 = impl_Poseidon2Digest_field((&fixed_local_43_), 3u);
                                            let _e187 = impl_Poseidon2Digest_field((&fixed_local_43_), 4u);
                                            let _e189 = impl_Poseidon2Digest_field((&fixed_local_43_), 5u);
                                            local_8 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e175), FeLocal_fe_shader_private_layout_1_(_e177), FeLocal_fe_shader_private_layout_1_(_e179), FeLocal_fe_shader_private_layout_1_(_e181), FeLocal_fe_shader_private_layout_1_(_e183), FeLocal_fe_shader_private_layout_1_(_e185), FeLocal_fe_shader_private_layout_1_(_e187), FeLocal_fe_shader_private_layout_1_(_e189));
                                        } else {
                                            let _e200 = impl_Poseidon2Digest_field((&fixed_local_43_), 6u);
                                            let _e202 = impl_Poseidon2Digest_field((&fixed_local_43_), 7u);
                                            local_8 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e200), FeLocal_fe_shader_private_layout_1_(_e202), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
                                        }
                                    }
                                    let _e216 = local_8;
                                    fixed_local_196_ = _e216;
                                    absorb_scheduled_block((&fixed_local_90_), (&fixed_local_196_), _e146, (_e130 == 2u), (&fe_trapped));
                                    local_6 = (_e130 + 1u);
                                    continue;
                                } else {
                                    break;
                                }
                            }
                            let _e223 = finish_scheduled((&fixed_local_90_), (&fe_trapped));
                            fixed_local_200_ = _e223;
                            let _e226 = require_((&fixed_local_200_), _e116);
                            let _e229 = (_e94 + 1u);
                            if (_e94 > (4294967295u - 1u)) {
                            } else {
                                fixed_local_204_ = _e226;
                                let _e235 = is_valid((&fixed_local_204_));
                                if _e235 {
                                    local_9 = 1u;
                                } else {
                                    local_9 = 0u;
                                }
                                let _e241 = local_9;
                                let _e246 = (_e229 * 8u);
                                let _e247 = (_e229 != 0u);
                                if (_e247 && (8u > (4294967295u / select(1u, _e229, _e247)))) {
                                } else {
                                    if (513822u > (4294967295u - _e246)) {
                                    } else {
                                        fixed_local_211_ = _e226;
                                        let _e259 = digest((&fixed_local_211_));
                                        fixed_local_213_ = _e259;
                                        store_digest_at((513822u + _e246), (&fixed_local_213_), (&fe_trapped));
                                        if (514078u > (4294967295u - _e229)) {
                                        } else {
                                            proof[i32((514078u + _e229))] = _e241;
                                            if (514104u > (4294967295u - _e76)) {
                                            } else {
                                                proof[i32((514104u + _e76))] = _e241;
                                                if (_e21 > (4294967295u - 1u)) {
                                                } else {
                                                    local_2 = (_e21 + 1u);
                                                    continue;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                fe_trapped = true;
                break;
            } else {
                break;
            }
        }
        fri_scratch[i32(237706u)] = (_e8 + 1u);
    }
    let _e290 = fe_trapped;
    trap[0u] = u32(_e290);
}
