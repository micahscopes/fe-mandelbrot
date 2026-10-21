struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: array<FeLocal_fe_shader_private_layout_0_, 8>,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
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

fn zero() -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_();
}

fn canonicalize(a0_: u32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_99: u32;
    var local_100: bool = false;

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
                                    local_99 = (a0_ - _e36);
                                    local_100 = true;
                                }
                                let _e48 = local_100;
                                if _e48 {
                                }
                            }
                            let _e50 = local_100;
                            if _e50 {
                            }
                        }
                        let _e52 = local_100;
                        if _e52 {
                        }
                    }
                    let _e54 = local_100;
                    if _e54 {
                    }
                }
                let _e56 = local_100;
                if _e56 {
                }
            }
            let _e58 = local_100;
            if _e58 {
            }
        }
        let _e60 = local_100;
        if _e60 {
        }
    }
    let _e63 = local_100;
    if _e63 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e65 = local_99;
    return _e65;
}

fn montgomery_mul(a0_1: u32, a1_: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_101: u32;
    var local_102: bool = false;

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
                                                                                                            let _e235 = canonicalize((_e228 + _e226), fe_trapped_2);
                                                                                                            local_101 = _e235;
                                                                                                            local_102 = true;
                                                                                                        }
                                                                                                        let _e240 = local_102;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_102;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_102;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_102;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_102;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_102;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_102;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_102;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_102;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_102;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_102;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_102;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_102;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_102;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_102;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_102;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_102;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_102;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_102;
                                if _e276 {
                                }
                            }
                            let _e278 = local_102;
                            if _e278 {
                            }
                        }
                        let _e280 = local_102;
                        if _e280 {
                        }
                    }
                    let _e282 = local_102;
                    if _e282 {
                    }
                }
                let _e284 = local_102;
                if _e284 {
                }
            }
            let _e286 = local_102;
            if _e286 {
            }
        }
        let _e288 = local_102;
        if _e288 {
        }
    }
    let _e291 = local_102;
    if _e291 {
    } else {
        (*fe_trapped_2) = true;
    }
    let _e293 = local_101;
    return _e293;
}

fn from_u32_(a0_2: u32, fe_trapped_3: ptr<function, bool>) -> u32 {
    let _e5 = montgomery_mul((a0_2 % 2013265921u), 1172168163u, fe_trapped_3);
    return _e5;
}

fn from_u32s(a0_3: u32, a1_1: u32, a2_: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_26_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_103: u32 = u32();
    var loop_result_12: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return_12: bool = false;
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
    local_103 = 0u;
    loop {
        let _e27 = local_103;
        let _e29 = (_e27 < 8u);
        loop_header_carry_29_ = _e29;
        if _e29 {
            let _e31 = fixed_local_8_[_e27];
            let _e32 = from_u32_(_e31, fe_trapped_4);
            fixed_local_26_.f0_[_e27].f0_ = _e32;
            local_103 = (_e27 + 1u);
            continue;
        } else {
            let _e39 = fixed_local_26_;
            loop_result_12 = _e39;
            loop_did_return_12 = true;
            break;
        }
    }
    let _e45 = loop_result_12;
    return _e45;
}

fn load_digest_at(a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_104: FeLocal_fe_shader_private_layout_1_;
    var local_105: bool = false;

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
                                local_104 = _e63;
                                local_105 = true;
                            }
                            let _e68 = local_105;
                            if _e68 {
                            }
                        }
                        let _e70 = local_105;
                        if _e70 {
                        }
                    }
                    let _e72 = local_105;
                    if _e72 {
                    }
                }
                let _e74 = local_105;
                if _e74 {
                }
            }
            let _e76 = local_105;
            if _e76 {
            }
        }
        let _e78 = local_105;
        if _e78 {
        }
    }
    let _e81 = local_105;
    if _e81 {
    } else {
        (*fe_trapped_5) = true;
    }
    let _e83 = local_104;
    return _e83;
}

fn equals_ga970_(a0_4: u32, a1_3: u32) -> bool {
    return (a0_4 == a1_3);
}

fn impl_Poseidon2Digest_equals(a0_5: ptr<function, FeLocal_fe_shader_private_layout_1_>, a1_4: ptr<function, FeLocal_fe_shader_private_layout_1_>) -> bool {
    var local_106: u32 = u32();
    var loop_result_13: bool;
    var loop_did_return_13: bool = false;
    var loop_header_carry_5_: bool;

    local_106 = 0u;
    loop {
        let _e7 = local_106;
        let _e9 = (_e7 < 8u);
        loop_header_carry_5_ = _e9;
        if _e9 {
            let _e13 = (*a0_5).f0_[_e7].f0_;
            let _e17 = (*a1_4).f0_[_e7].f0_;
            let _e18 = equals_ga970_(_e13, _e17);
            if (_e18 == false) {
                loop_result_13 = false;
                loop_did_return_13 = true;
                break;
            }
            local_106 = (_e7 + 1u);
            continue;
        } else {
            loop_result_13 = true;
            loop_did_return_13 = true;
            break;
        }
    }
    let _e34 = loop_result_13;
    return _e34;
}

fn packed_rgba(a0_6: u32, a1_5: u32, a2_1: u32) -> u32 {
    return (((4278190080u | (a2_1 << 16u)) | (a1_5 << 8u)) | a0_6);
}

fn status_word(a0_7: bool, a1_6: bool) -> u32 {
    var local_107: u32;
    var local_108: bool = false;
    var local_109: u32 = u32();

    if (a0_7 == false) {
        let _e9 = packed_rgba(236u, 92u, 112u);
        local_109 = _e9;
    } else {
        if a1_6 {
            let _e13 = packed_rgba(255u, 176u, 222u);
            local_109 = _e13;
        } else {
            let _e17 = packed_rgba(87u, 117u, 226u);
            local_109 = _e17;
        }
    }
    let _e22 = local_109;
    return _e22;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: bool = bool();
    var local_1: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_26_: bool;
    var local_2: bool = bool();
    var local_3: u32 = u32();
    var local_4: bool = bool();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_44_: bool;
    var local_5: bool = bool();
    var local_6: u32;
    var local_7: bool = false;
    var local_8: bool = bool();
    var fixed_local_84_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_85_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_89_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_90_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_94_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_95_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_9: u32;
    var local_10: bool = false;
    var local_11: bool = bool();
    var fixed_local_108_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_109_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_113_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_114_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_12: u32;
    var local_13: bool = false;
    var local_14: bool = bool();
    var fixed_local_123_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_124_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_15: u32;
    var local_16: bool = false;
    var local_17: bool = bool();
    var local_18: u32 = u32();
    var fixed_local_141_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_142_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_146_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_147_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_155_: bool;
    var local_19: bool = bool();
    var local_20: u32;
    var local_21: bool = false;
    var local_22: bool = bool();
    var local_23: bool = bool();
    var local_24: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_183_: bool;
    var local_25: bool = bool();
    var local_26: u32 = u32();
    var local_27: bool = bool();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_213_: bool;
    var local_28: bool = bool();
    var local_29: u32 = u32();
    var local_30: bool = bool();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_229_: bool;
    var local_31: bool = bool();
    var local_32: u32 = u32();
    var local_33: bool = bool();
    var local_34: u32 = u32();
    var loop_result_6: u32;
    var loop_did_return_6: bool = false;
    var loop_header_carry_235_: bool;
    var local_35: bool = bool();
    var loop_result_7: u32;
    var loop_did_return_7: bool = false;
    var loop_header_carry_258_: bool;
    var local_36: bool = bool();
    var local_37: u32;
    var local_38: bool = false;
    var local_39: bool = bool();
    var local_40: bool = bool();
    var local_41: u32;
    var local_42: bool = false;
    var local_43: bool = bool();
    var local_44: u32;
    var local_45: bool = false;
    var local_46: bool = bool();
    var local_47: bool = bool();
    var local_48: u32 = u32();
    var loop_result_8: u32;
    var loop_did_return_8: bool = false;
    var loop_header_carry_302_: bool;
    var local_49: bool = bool();
    var local_50: bool = bool();
    var local_51: u32 = u32();
    var local_52: bool = bool();
    var local_53: bool = bool();
    var loop_result_9: u32;
    var loop_did_return_9: bool = false;
    var loop_header_carry_328_: bool;
    var local_54: bool = bool();
    var local_55: bool = bool();
    var local_56: bool = bool();
    var local_57: u32 = u32();
    var loop_result_10: u32;
    var loop_did_return_10: bool = false;
    var loop_header_carry_356_: bool;
    var local_58: bool = bool();
    var local_59: u32 = u32();
    var local_60: bool = bool();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_376_: bool;
    var local_61: bool = bool();
    var local_62: u32;
    var local_63: bool = false;
    var local_64: bool = bool();
    var local_65: u32;
    var local_66: bool = false;
    var local_67: bool = bool();
    var local_68: bool = bool();
    var local_69: u32;
    var local_70: bool = false;
    var local_71: bool = bool();
    var local_72: u32;
    var local_73: bool = false;
    var local_74: u32 = u32();
    var local_75: u32;
    var local_76: bool = false;
    var local_77: u32 = u32();
    var local_78: u32;
    var local_79: bool = false;
    var local_80: u32 = u32();
    var local_81: u32;
    var local_82: bool = false;
    var local_83: u32 = u32();
    var local_84: u32;
    var local_85: bool = false;
    var local_86: u32 = u32();
    var local_87: u32;
    var local_88: bool = false;
    var local_89: u32 = u32();
    var local_90: u32;
    var local_91: bool = false;
    var local_92: u32 = u32();
    var local_93: u32;
    var local_94: bool = false;
    var local_95: u32 = u32();
    var local_96: u32;
    var local_97: bool = false;
    var local_98: u32 = u32();

    let _e6 = params.p6_;
    let _e8 = (0.5f <= _e6);
    let _e12 = proof[i32(459788u)];
    local = (_e12 == 1u);
    local_1 = 0u;
    loop {
        let _e22 = local;
        let _e24 = local_1;
        let _e26 = (_e24 < 1024u);
        loop_header_carry_26_ = _e26;
        if _e26 {
            let _e34 = fri_scratch[i32((237707u + _e24))];
            if (_e34 == 1u) {
                local_4 = _e22;
            } else {
                local_4 = false;
            }
            let _e41 = local_4;
            local = _e41;
            local_1 = (_e24 + 1u);
            continue;
        } else {
            local_2 = true;
            local_3 = 0u;
            break;
        }
    }
    let _e52 = local;
    local_2 = true;
    local_3 = 0u;
    loop {
        let _e59 = local_2;
        let _e61 = local_3;
        let _e63 = (_e61 < 428u);
        loop_header_carry_44_ = _e63;
        if _e63 {
            let _e69 = proof[i32((459789u + _e61))];
            if (_e69 == 1u) {
                local_5 = _e59;
            } else {
                local_5 = false;
            }
            let _e76 = local_5;
            local_2 = _e76;
            local_3 = (_e61 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e83 = local_2;
    let _e87 = load_digest_at(460217u, (&fe_trapped));
    let _e89 = load_digest_at(460225u, (&fe_trapped));
    let _e91 = load_digest_at(460233u, (&fe_trapped));
    let _e93 = load_digest_at(460244u, (&fe_trapped));
    let _e95 = load_digest_at(460252u, (&fe_trapped));
    let _e97 = load_digest_at(460262u, (&fe_trapped));
    let _e99 = load_digest_at(480755u, (&fe_trapped));
    let _e101 = load_digest_at(480763u, (&fe_trapped));
    let _e105 = proof[i32(460241u)];
    if (_e105 == 1u) {
        let _e111 = proof[i32(460242u)];
        if (_e111 == 1u) {
            let _e117 = proof[i32(460243u)];
            if (_e117 == 1u) {
                let _e120 = zero();
                fixed_local_84_ = _e87;
                fixed_local_85_ = _e120;
                let _e125 = impl_Poseidon2Digest_equals((&fixed_local_84_), (&fixed_local_85_));
                if _e125 {
                } else {
                    let _e126 = zero();
                    fixed_local_89_ = _e89;
                    fixed_local_90_ = _e126;
                    let _e131 = impl_Poseidon2Digest_equals((&fixed_local_89_), (&fixed_local_90_));
                    if _e131 {
                    } else {
                        let _e132 = zero();
                        fixed_local_94_ = _e91;
                        fixed_local_95_ = _e132;
                        let _e137 = impl_Poseidon2Digest_equals((&fixed_local_94_), (&fixed_local_95_));
                        if _e137 {
                        } else {
                            local_8 = true;
                        }
                    }
                }
            }
        }
    }
    let _e143 = local_8;
    let _e147 = proof[i32(460260u)];
    if (_e147 == 1u) {
        let _e153 = proof[i32(460261u)];
        if (_e153 == 1u) {
            let _e156 = zero();
            fixed_local_108_ = _e93;
            fixed_local_109_ = _e156;
            let _e161 = impl_Poseidon2Digest_equals((&fixed_local_108_), (&fixed_local_109_));
            if _e161 {
            } else {
                let _e162 = zero();
                fixed_local_113_ = _e95;
                fixed_local_114_ = _e162;
                let _e167 = impl_Poseidon2Digest_equals((&fixed_local_113_), (&fixed_local_114_));
                if _e167 {
                } else {
                    local_11 = true;
                }
            }
        }
    }
    let _e173 = local_11;
    let _e177 = proof[i32(460270u)];
    if (_e177 == 1u) {
        let _e180 = zero();
        fixed_local_123_ = _e97;
        fixed_local_124_ = _e180;
        let _e185 = impl_Poseidon2Digest_equals((&fixed_local_123_), (&fixed_local_124_));
        if _e185 {
        } else {
            local_14 = true;
        }
    }
    let _e192 = local_14;
    let _e196 = proof[i32(480771u)];
    if (_e196 == 1u) {
        let _e202 = proof[i32(480772u)];
        if (_e202 == 1u) {
            let _e208 = proof[i32(480773u)];
            if (_e208 == 1u) {
                let _e211 = zero();
                fixed_local_141_ = _e99;
                fixed_local_142_ = _e211;
                let _e216 = impl_Poseidon2Digest_equals((&fixed_local_141_), (&fixed_local_142_));
                if _e216 {
                    local_17 = false;
                    local_18 = 0u;
                } else {
                    let _e217 = zero();
                    fixed_local_146_ = _e101;
                    fixed_local_147_ = _e217;
                    let _e222 = impl_Poseidon2Digest_equals((&fixed_local_146_), (&fixed_local_147_));
                    if _e222 {
                        local_17 = false;
                        local_18 = 0u;
                    } else {
                        local_17 = true;
                        local_18 = 0u;
                    }
                }
            } else {
                local_17 = false;
                local_18 = 0u;
            }
        } else {
            local_17 = false;
            local_18 = 0u;
        }
    } else {
        local_17 = false;
        local_18 = 0u;
    }
    loop {
        let _e249 = local_17;
        let _e251 = local_18;
        let _e253 = (_e251 < 4096u);
        loop_header_carry_155_ = _e253;
        if _e253 {
            let _e259 = proof[i32((476659u + _e251))];
            if (_e259 == 1u) {
                local_19 = _e249;
            } else {
                local_19 = false;
            }
            let _e266 = local_19;
            local_17 = _e266;
            local_18 = (_e251 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e273 = local_17;
    if ((_e143 == false) | (_e173 == false)) {
    } else {
        if ((_e192 == false) | (_e273 == false)) {
        } else {
            local_22 = true;
        }
    }
    let _e289 = local_22;
    let _e293 = fri_scratch[i32(237706u)];
    local_23 = (_e293 == 12u);
    local_24 = 0u;
    loop {
        let _e303 = local_23;
        let _e305 = local_24;
        let _e307 = (_e305 < 24u);
        loop_header_carry_183_ = _e307;
        if _e307 {
            let _e315 = proof[i32((514030u + _e305))];
            if (_e315 == 1u) {
                let _e322 = proof[i32((514054u + _e305))];
                if (_e322 == 1u) {
                    let _e329 = proof[i32((514104u + _e305))];
                    if (_e329 == 1u) {
                        local_27 = _e303;
                    } else {
                        local_27 = false;
                    }
                } else {
                    local_27 = false;
                }
            } else {
                local_27 = false;
            }
            let _e340 = local_27;
            local_23 = _e340;
            local_24 = (_e305 + 1u);
            continue;
        } else {
            local_25 = _e303;
            local_26 = 0u;
            break;
        }
    }
    let _e350 = local_23;
    local_25 = _e350;
    local_26 = 0u;
    loop {
        let _e356 = local_25;
        let _e358 = local_26;
        let _e360 = (_e358 < 26u);
        loop_header_carry_213_ = _e360;
        if _e360 {
            let _e368 = proof[i32((514078u + _e358))];
            if (_e368 == 1u) {
                local_30 = _e356;
            } else {
                local_30 = false;
            }
            let _e375 = local_30;
            local_25 = _e375;
            local_26 = (_e358 + 1u);
            continue;
        } else {
            local_28 = _e356;
            local_29 = 0u;
            break;
        }
    }
    let _e385 = local_25;
    local_28 = _e385;
    local_29 = 0u;
    loop {
        let _e391 = local_28;
        let _e393 = local_29;
        let _e395 = (_e393 < 2u);
        loop_header_carry_229_ = _e395;
        if _e395 {
            local_33 = _e391;
            local_34 = 0u;
            loop {
                let _e405 = local_33;
                let _e407 = local_34;
                let _e409 = (_e407 < 8178u);
                loop_header_carry_235_ = _e409;
                if _e409 {
                    let _e414 = (_e393 * 8191u);
                    let _e415 = (_e393 != 0u);
                    if (_e415 && (8191u > (4294967295u / select(1u, _e393, _e415)))) {
                    } else {
                        let _e421 = (_e414 + _e407);
                        if (_e414 > (4294967295u - _e407)) {
                        } else {
                            if (131056u > (4294967295u - _e421)) {
                                fe_trapped = true;
                                break;
                            }
                            let _e433 = fri_scratch[i32((131056u + _e421))];
                            if (_e433 == 1u) {
                                local_35 = _e405;
                            } else {
                                local_35 = false;
                            }
                            let _e440 = local_35;
                            local_33 = _e440;
                            local_34 = (_e407 + 1u);
                            continue;
                        }
                    }
                    fe_trapped = true;
                    break;
                } else {
                    break;
                }
            }
            let _e448 = local_33;
            if (_e393 > (4294967295u - 1u)) {
            } else {
                local_28 = _e448;
                local_29 = (_e393 + 1u);
                continue;
            }
            fe_trapped = true;
            break;
        } else {
            local_31 = true;
            local_32 = 0u;
            break;
        }
    }
    let _e463 = local_28;
    local_31 = true;
    local_32 = 0u;
    loop {
        let _e470 = local_31;
        let _e472 = local_32;
        let _e474 = (_e472 < 16380u);
        loop_header_carry_258_ = _e474;
        if _e474 {
            let _e480 = proof[i32((480774u + _e472))];
            let _e485 = proof[i32((497154u + _e472))];
            if (_e480 == _e485) {
                local_36 = _e470;
            } else {
                local_36 = false;
            }
            let _e491 = local_36;
            local_31 = _e491;
            local_32 = (_e472 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e498 = local_31;
    if _e463 {
        if _e8 {
            local_40 = (_e498 == false);
        } else {
            local_40 = _e498;
        }
        let _e507 = local_40;
        if _e507 {
            local_39 = true;
        }
    }
    let _e513 = local_39;
    let _e517 = proof[i32(516077u)];
    if (_e517 == 1u) {
        let _e523 = proof[i32(514131u)];
        if (_e523 < 2048u) {
            local_43 = true;
        }
    }
    let _e533 = local_43;
    let _e537 = proof[i32(516078u)];
    if (_e537 == 1u) {
        let _e543 = proof[i32(514132u)];
        if (_e543 < 2048u) {
            local_46 = true;
            local_47 = _e533;
            local_48 = 0u;
        } else {
            local_46 = false;
            local_47 = _e533;
            local_48 = 0u;
        }
    } else {
        local_46 = false;
        local_47 = _e533;
        local_48 = 0u;
    }
    loop {
        let _e563 = local_46;
        let _e565 = local_47;
        let _e567 = local_48;
        let _e569 = (_e567 < 92u);
        loop_header_carry_302_ = _e569;
        if _e569 {
            let _e578 = fri_scratch[i32((238731u + _e567))];
            if (_e578 == 1u) {
                local_52 = _e565;
            } else {
                local_52 = false;
            }
            let _e586 = local_52;
            let _e591 = fri_scratch[i32((238823u + _e567))];
            if (_e591 == 1u) {
                local_53 = _e563;
            } else {
                local_53 = false;
            }
            let _e598 = local_53;
            local_46 = _e598;
            local_47 = _e586;
            local_48 = (_e567 + 1u);
            continue;
        } else {
            local_49 = _e563;
            local_50 = _e565;
            local_51 = 0u;
            break;
        }
    }
    let _e610 = local_46;
    let _e612 = local_47;
    local_49 = _e610;
    local_50 = _e612;
    local_51 = 0u;
    loop {
        let _e619 = local_49;
        let _e621 = local_50;
        let _e623 = local_51;
        let _e625 = (_e623 < 880u);
        loop_header_carry_328_ = _e625;
        if _e625 {
            let _e631 = fri_scratch[i32((238915u + _e623))];
            if (_e631 == 1u) {
                local_54 = _e621;
            } else {
                local_54 = false;
            }
            let _e639 = local_54;
            let _e644 = fri_scratch[i32((239795u + _e623))];
            if (_e644 == 1u) {
                local_55 = _e619;
            } else {
                local_55 = false;
            }
            let _e651 = local_55;
            local_49 = _e651;
            local_50 = _e639;
            local_51 = (_e623 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e659 = local_49;
    let _e661 = local_50;
    let _e665 = proof[i32(514131u)];
    let _e669 = proof[i32(514132u)];
    local_56 = (_e665 == _e669);
    local_57 = 0u;
    loop {
        let _e678 = local_56;
        let _e680 = local_57;
        let _e682 = (_e680 < 92u);
        loop_header_carry_356_ = _e682;
        if _e682 {
            let _e690 = proof[i32((514133u + _e680))];
            let _e695 = proof[i32((514225u + _e680))];
            if (_e690 == _e695) {
                local_60 = _e678;
            } else {
                local_60 = false;
            }
            let _e701 = local_60;
            local_56 = _e701;
            local_57 = (_e680 + 1u);
            continue;
        } else {
            local_58 = _e678;
            local_59 = 0u;
            break;
        }
    }
    let _e711 = local_56;
    local_58 = _e711;
    local_59 = 0u;
    loop {
        let _e717 = local_58;
        let _e719 = local_59;
        let _e721 = (_e719 < 880u);
        loop_header_carry_376_ = _e721;
        if _e721 {
            let _e727 = proof[i32((514317u + _e719))];
            let _e732 = proof[i32((515197u + _e719))];
            if (_e727 == _e732) {
                local_61 = _e717;
            } else {
                local_61 = false;
            }
            let _e738 = local_61;
            local_58 = _e738;
            local_59 = (_e719 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e745 = local_58;
    if ((_e661 == false) | (_e659 == false)) {
    } else {
        local_64 = true;
    }
    let _e758 = local_64;
    if _e758 {
        if _e8 {
            local_68 = (_e745 == false);
        } else {
            local_68 = _e745;
        }
        let _e765 = local_68;
        if _e765 {
            local_67 = true;
        }
    }
    let _e771 = local_67;
    if _e52 {
        if ((_e83 == false) | (_e289 == false)) {
        } else {
            if ((_e513 == false) | (_e771 == false)) {
            } else {
                local_71 = true;
            }
        }
    }
    let _e787 = local_71;
    if _e498 {
        local_74 = 1u;
    }
    let _e793 = local_74;
    proof[i32(514128u)] = _e793;
    if _e513 {
        local_77 = 1u;
    }
    let _e802 = local_77;
    proof[i32(514129u)] = _e802;
    let _e806 = status_word(_e513, _e8);
    proof[i32(514130u)] = _e806;
    if _e661 {
        local_80 = 1u;
    }
    let _e815 = local_80;
    proof[i32(516079u)] = _e815;
    if _e659 {
        local_83 = 1u;
    }
    let _e824 = local_83;
    proof[i32(516080u)] = _e824;
    if _e745 {
        local_86 = 1u;
    }
    let _e833 = local_86;
    proof[i32(516081u)] = _e833;
    if _e771 {
        local_89 = 1u;
    }
    let _e842 = local_89;
    proof[i32(516082u)] = _e842;
    let _e846 = status_word(_e771, _e8);
    proof[i32(516083u)] = _e846;
    if _e52 {
        local_92 = 1u;
    }
    let _e855 = local_92;
    proof[i32(516084u)] = _e855;
    if _e498 {
        local_95 = 1u;
    }
    let _e864 = local_95;
    proof[i32(516085u)] = _e864;
    if _e787 {
        local_98 = 1u;
    }
    let _e871 = local_98;
    proof[i32(516086u)] = _e871;
    let _e876 = status_word(_e52, false);
    proof[i32(516087u)] = _e876;
    let _e881 = status_word(_e83, false);
    proof[i32(516088u)] = _e881;
    let _e886 = status_word(_e289, false);
    proof[i32(516089u)] = _e886;
    let _e890 = status_word(_e787, _e8);
    proof[i32(516090u)] = _e890;
    let _e895 = fe_trapped;
    trap[0u] = u32(_e895);
}
