struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: FeLocal_fe_shader_private_layout_2_,
    f2_: FeLocal_fe_shader_private_layout_2_,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: FeLocal_fe_shader_private_layout_2_,
    f7_: u32,
    f8_: FeLocal_fe_shader_private_layout_2_,
    f9_: u32,
    f10_: u32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_3_,
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
var<storage, read_write> proof: array<u32>;
@group(0) @binding(1)
var<storage, read_write> fri_scratch: array<u32>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1024>;

fn load_main_trace_row(a1_: u32, a2_: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_4_ {
    var local_7: FeLocal_fe_shader_private_layout_4_;
    var local_8: bool = false;

    if (a1_ > (4294967295u - a2_)) {
    } else {
        let _e11 = proof[i32((a1_ + a2_))];
        let _e14 = (a1_ + 1024u);
        if (a1_ > (4294967295u - 1024u)) {
        } else {
            if (_e14 > (4294967295u - a2_)) {
            } else {
                let _e23 = proof[i32((_e14 + a2_))];
                let _e26 = (a1_ + 2048u);
                if (a1_ > (4294967295u - 2048u)) {
                } else {
                    if (_e26 > (4294967295u - a2_)) {
                    } else {
                        let _e35 = proof[i32((_e26 + a2_))];
                        let _e38 = (a1_ + 3072u);
                        if (a1_ > (4294967295u - 3072u)) {
                        } else {
                            if (_e38 > (4294967295u - a2_)) {
                            } else {
                                let _e47 = proof[i32((_e38 + a2_))];
                                let _e50 = (a1_ + 4096u);
                                if (a1_ > (4294967295u - 4096u)) {
                                } else {
                                    if (_e50 > (4294967295u - a2_)) {
                                    } else {
                                        let _e59 = proof[i32((_e50 + a2_))];
                                        let _e62 = (a1_ + 5120u);
                                        if (a1_ > (4294967295u - 5120u)) {
                                        } else {
                                            if (_e62 > (4294967295u - a2_)) {
                                            } else {
                                                let _e71 = proof[i32((_e62 + a2_))];
                                                let _e74 = (a1_ + 6144u);
                                                if (a1_ > (4294967295u - 6144u)) {
                                                } else {
                                                    if (_e74 > (4294967295u - a2_)) {
                                                    } else {
                                                        let _e83 = proof[i32((_e74 + a2_))];
                                                        let _e86 = (a1_ + 7168u);
                                                        if (a1_ > (4294967295u - 7168u)) {
                                                        } else {
                                                            if (_e86 > (4294967295u - a2_)) {
                                                            } else {
                                                                let _e95 = proof[i32((_e86 + a2_))];
                                                                let _e98 = (a1_ + 8192u);
                                                                if (a1_ > (4294967295u - 8192u)) {
                                                                } else {
                                                                    if (_e98 > (4294967295u - a2_)) {
                                                                    } else {
                                                                        let _e107 = proof[i32((_e98 + a2_))];
                                                                        let _e110 = (a1_ + 9216u);
                                                                        if (a1_ > (4294967295u - 9216u)) {
                                                                        } else {
                                                                            if (_e110 > (4294967295u - a2_)) {
                                                                            } else {
                                                                                let _e119 = proof[i32((_e110 + a2_))];
                                                                                let _e122 = (a1_ + 10240u);
                                                                                if (a1_ > (4294967295u - 10240u)) {
                                                                                } else {
                                                                                    if (_e122 > (4294967295u - a2_)) {
                                                                                    } else {
                                                                                        let _e131 = proof[i32((_e122 + a2_))];
                                                                                        let _e134 = (a1_ + 11264u);
                                                                                        if (a1_ > (4294967295u - 11264u)) {
                                                                                        } else {
                                                                                            if (_e134 > (4294967295u - a2_)) {
                                                                                            } else {
                                                                                                let _e143 = proof[i32((_e134 + a2_))];
                                                                                                let _e146 = (a1_ + 12288u);
                                                                                                if (a1_ > (4294967295u - 12288u)) {
                                                                                                } else {
                                                                                                    if (_e146 > (4294967295u - a2_)) {
                                                                                                    } else {
                                                                                                        let _e155 = proof[i32((_e146 + a2_))];
                                                                                                        let _e158 = (a1_ + 13312u);
                                                                                                        if (a1_ > (4294967295u - 13312u)) {
                                                                                                        } else {
                                                                                                            if (_e158 > (4294967295u - a2_)) {
                                                                                                            } else {
                                                                                                                let _e167 = proof[i32((_e158 + a2_))];
                                                                                                                let _e170 = (a1_ + 14336u);
                                                                                                                if (a1_ > (4294967295u - 14336u)) {
                                                                                                                } else {
                                                                                                                    if (_e170 > (4294967295u - a2_)) {
                                                                                                                    } else {
                                                                                                                        let _e179 = proof[i32((_e170 + a2_))];
                                                                                                                        let _e182 = (a1_ + 15360u);
                                                                                                                        if (a1_ > (4294967295u - 15360u)) {
                                                                                                                        } else {
                                                                                                                            if (_e182 > (4294967295u - a2_)) {
                                                                                                                            } else {
                                                                                                                                let _e191 = proof[i32((_e182 + a2_))];
                                                                                                                                let _e194 = (a1_ + 16384u);
                                                                                                                                if (a1_ > (4294967295u - 16384u)) {
                                                                                                                                } else {
                                                                                                                                    if (_e194 > (4294967295u - a2_)) {
                                                                                                                                    } else {
                                                                                                                                        let _e203 = proof[i32((_e194 + a2_))];
                                                                                                                                        local_7 = FeLocal_fe_shader_private_layout_4_(_e191, _e203, FeLocal_fe_shader_private_layout_3_(_e11, FeLocal_fe_shader_private_layout_2_(_e23, _e35), FeLocal_fe_shader_private_layout_2_(_e47, _e59), _e71, _e83, _e95, FeLocal_fe_shader_private_layout_2_(_e107, _e119), _e131, FeLocal_fe_shader_private_layout_2_(_e143, _e155), _e167, _e179));
                                                                                                                                        local_8 = true;
                                                                                                                                    }
                                                                                                                                    let _e214 = local_8;
                                                                                                                                    if _e214 {
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                let _e216 = local_8;
                                                                                                                                if _e216 {
                                                                                                                                }
                                                                                                                            }
                                                                                                                            let _e218 = local_8;
                                                                                                                            if _e218 {
                                                                                                                            }
                                                                                                                        }
                                                                                                                        let _e220 = local_8;
                                                                                                                        if _e220 {
                                                                                                                        }
                                                                                                                    }
                                                                                                                    let _e222 = local_8;
                                                                                                                    if _e222 {
                                                                                                                    }
                                                                                                                }
                                                                                                                let _e224 = local_8;
                                                                                                                if _e224 {
                                                                                                                }
                                                                                                            }
                                                                                                            let _e226 = local_8;
                                                                                                            if _e226 {
                                                                                                            }
                                                                                                        }
                                                                                                        let _e228 = local_8;
                                                                                                        if _e228 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e230 = local_8;
                                                                                                    if _e230 {
                                                                                                    }
                                                                                                }
                                                                                                let _e232 = local_8;
                                                                                                if _e232 {
                                                                                                }
                                                                                            }
                                                                                            let _e234 = local_8;
                                                                                            if _e234 {
                                                                                            }
                                                                                        }
                                                                                        let _e236 = local_8;
                                                                                        if _e236 {
                                                                                        }
                                                                                    }
                                                                                    let _e238 = local_8;
                                                                                    if _e238 {
                                                                                    }
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
    let _e279 = local_8;
    if _e279 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e281 = local_7;
    return _e281;
}

fn serialized_value_range_bit(a0_: u32, a1_1: u32, a2_1: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_9: u32;
    var local_10: bool = false;
    var local_11: u32;
    var local_12: bool = false;
    var local_13: u32;
    var local_14: bool = false;
    var local_15: u32 = u32();

    if (a2_1 < a1_1) {
        local_9 = ((a0_ >> a2_1) & 1u);
        local_10 = true;
    }
    let _e31 = local_10;
    if _e31 {
    } else {
        let _e13 = (a2_1 - a1_1);
        if (31u < _e13) {
            (*fe_trapped_2) = true;
        }
        if (((a0_ << (31u - _e13)) == 0u) == false) {
            local_15 = 1u;
        }
        let _e28 = local_15;
        local_9 = _e28;
    }
    let _e33 = local_9;
    return _e33;
}

fn encoded_auxiliary_row_bit_direct(a0_1: FeLocal_fe_shader_private_layout_3_, a1_2: u32, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_16: u32;
    var local_17: bool = false;
    var local_18: u32;
    var local_19: bool = false;
    var local_20: u32;
    var local_21: bool = false;
    var local_22: u32;
    var local_23: bool = false;
    var local_24: u32;
    var local_25: bool = false;
    var local_26: u32;
    var local_27: bool = false;
    var local_28: u32;
    var local_29: bool = false;
    var local_30: u32;
    var local_31: bool = false;
    var local_32: u32;
    var local_33: bool = false;
    var local_34: u32;
    var local_35: bool = false;
    var local_36: u32;
    var local_37: bool = false;

    if ((a1_2 < 411u) == false) {
        local_16 = 0u;
        local_17 = true;
    }
    let _e185 = local_17;
    if _e185 {
    } else {
        if (a1_2 < 42u) {
            let _e17 = serialized_value_range_bit(a0_1.f0_, 21u, a1_2, fe_trapped_3);
            local_18 = _e17;
            local_19 = true;
        }
        let _e180 = local_19;
        if _e180 {
        } else {
            let _e23 = (a1_2 - 42u);
            if (_e23 < 30u) {
                let _e29 = serialized_value_range_bit(a0_1.f1_.f1_, 15u, _e23, fe_trapped_3);
                local_20 = _e29;
                local_21 = true;
            }
            let _e175 = local_21;
            if _e175 {
            } else {
                let _e35 = (_e23 - 30u);
                if (_e35 < 30u) {
                    let _e41 = serialized_value_range_bit(a0_1.f2_.f1_, 15u, _e35, fe_trapped_3);
                    local_22 = _e41;
                    local_23 = true;
                }
                let _e170 = local_23;
                if _e170 {
                } else {
                    let _e47 = (_e35 - 30u);
                    if (_e47 < 60u) {
                        let _e52 = serialized_value_range_bit(a0_1.f3_, 30u, _e47, fe_trapped_3);
                        local_24 = _e52;
                        local_25 = true;
                    }
                    let _e165 = local_25;
                    if _e165 {
                    } else {
                        let _e58 = (_e47 - 60u);
                        if (_e58 < 60u) {
                            let _e63 = serialized_value_range_bit(a0_1.f4_, 30u, _e58, fe_trapped_3);
                            local_26 = _e63;
                            local_27 = true;
                        }
                        let _e160 = local_27;
                        if _e160 {
                        } else {
                            let _e69 = (_e58 - 60u);
                            if (_e69 < 62u) {
                                let _e74 = serialized_value_range_bit(a0_1.f5_, 31u, _e69, fe_trapped_3);
                                local_28 = _e74;
                                local_29 = true;
                            }
                            let _e155 = local_29;
                            if _e155 {
                            } else {
                                let _e80 = (_e69 - 62u);
                                if (_e80 < 36u) {
                                    let _e86 = serialized_value_range_bit(a0_1.f6_.f1_, 18u, _e80, fe_trapped_3);
                                    local_30 = _e86;
                                    local_31 = true;
                                }
                                let _e150 = local_31;
                                if _e150 {
                                } else {
                                    let _e92 = (_e80 - 36u);
                                    if (_e92 < 24u) {
                                        let _e97 = serialized_value_range_bit(a0_1.f7_, 12u, _e92, fe_trapped_3);
                                        local_32 = _e97;
                                        local_33 = true;
                                    }
                                    let _e145 = local_33;
                                    if _e145 {
                                    } else {
                                        let _e103 = (_e92 - 24u);
                                        if (_e103 < 38u) {
                                            let _e109 = serialized_value_range_bit(a0_1.f8_.f1_, 19u, _e103, fe_trapped_3);
                                            local_34 = _e109;
                                            local_35 = true;
                                        }
                                        let _e140 = local_35;
                                        if _e140 {
                                        } else {
                                            let _e115 = (_e103 - 38u);
                                            if (_e115 < 24u) {
                                                let _e120 = serialized_value_range_bit(a0_1.f9_, 12u, _e115, fe_trapped_3);
                                                local_36 = _e120;
                                                local_37 = true;
                                            }
                                            let _e135 = local_37;
                                            if _e135 {
                                            } else {
                                                let _e132 = serialized_value_range_bit((a0_1.f5_ >> 26u), 5u, (5u + (_e115 - 24u)), fe_trapped_3);
                                                local_36 = _e132;
                                            }
                                            let _e137 = local_36;
                                            local_34 = _e137;
                                        }
                                        let _e142 = local_34;
                                        local_32 = _e142;
                                    }
                                    let _e147 = local_32;
                                    local_30 = _e147;
                                }
                                let _e152 = local_30;
                                local_28 = _e152;
                            }
                            let _e157 = local_28;
                            local_26 = _e157;
                        }
                        let _e162 = local_26;
                        local_24 = _e162;
                    }
                    let _e167 = local_24;
                    local_22 = _e167;
                }
                let _e172 = local_22;
                local_20 = _e172;
            }
            let _e177 = local_20;
            local_18 = _e177;
        }
        let _e182 = local_18;
        local_16 = _e182;
    }
    let _e187 = local_16;
    return _e187;
}

fn encoded_proof_row_width(a0_2: u32) -> u32 {
    var local_38: u32;
    var local_39: bool = false;
    var local_40: u32 = u32();

    switch a0_2 {
        case 0u: {
            local_40 = 21u;
        }
        case 1u: {
            local_40 = 1u;
        }
        case 2u: {
            local_40 = 15u;
        }
        case 3u: {
            local_40 = 1u;
        }
        case 4u: {
            local_40 = 15u;
        }
        case 5u: {
            local_40 = 30u;
        }
        case 6u: {
            local_40 = 30u;
        }
        case 7u: {
            local_40 = 31u;
        }
        case 8u: {
            local_40 = 1u;
        }
        case 9u: {
            local_40 = 18u;
        }
        case 10u: {
            local_40 = 12u;
        }
        case 11u: {
            local_40 = 1u;
        }
        case 12u: {
            local_40 = 19u;
        }
        case 13u: {
            local_40 = 12u;
        }
        case 14u: {
            local_40 = 1u;
        }
        case 15u: {
            local_40 = 1u;
        }
        case 16u: {
            local_40 = 1u;
        }
        default: {
        }
    }
    let _e38 = local_40;
    return _e38;
}

fn encoded_proof_row_word(a0_3: FeLocal_fe_shader_private_layout_4_, a1_3: u32) -> u32 {
    var local_41: u32;
    var local_42: bool = false;
    var local_43: u32 = u32();

    switch a1_3 {
        case 0u: {
            local_43 = a0_3.f2_.f0_;
        }
        case 1u: {
            local_43 = a0_3.f2_.f1_.f0_;
        }
        case 2u: {
            local_43 = a0_3.f2_.f1_.f1_;
        }
        case 3u: {
            local_43 = a0_3.f2_.f2_.f0_;
        }
        case 4u: {
            local_43 = a0_3.f2_.f2_.f1_;
        }
        case 5u: {
            local_43 = a0_3.f2_.f3_;
        }
        case 6u: {
            local_43 = a0_3.f2_.f4_;
        }
        case 7u: {
            local_43 = a0_3.f2_.f5_;
        }
        case 8u: {
            local_43 = a0_3.f2_.f6_.f0_;
        }
        case 9u: {
            local_43 = a0_3.f2_.f6_.f1_;
        }
        case 10u: {
            local_43 = a0_3.f2_.f7_;
        }
        case 11u: {
            local_43 = a0_3.f2_.f8_.f0_;
        }
        case 12u: {
            local_43 = a0_3.f2_.f8_.f1_;
        }
        case 13u: {
            local_43 = a0_3.f2_.f9_;
        }
        case 14u: {
            local_43 = a0_3.f2_.f10_;
        }
        case 15u: {
            local_43 = a0_3.f0_;
        }
        case 16u: {
            local_43 = a0_3.f1_;
        }
        default: {
        }
    }
    let _e62 = local_43;
    return _e62;
}

fn low_mask(a0_4: u32, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_44: u32;
    var local_45: bool = false;
    var local_46: u32 = u32();

    if (a0_4 == 0u) {
    } else {
        let _e7 = (1u << a0_4);
        if (_e7 < 1u) {
            (*fe_trapped_4) = true;
        } else {
            local_46 = (_e7 - 1u);
        }
    }
    let _e14 = local_46;
    return _e14;
}

fn encoded_row_field_direct(a0_5: FeLocal_fe_shader_private_layout_4_, a1_4: u32, fe_trapped_5: ptr<function, bool>) -> u32 {
    var local_47: u32;
    var local_48: bool = false;
    var local_49: u32;
    var local_50: bool = false;
    var local_51: u32 = u32();
    var local_52: u32 = u32();
    var local_53: u32 = u32();
    var local_54: u32 = u32();
    var loop_result_3: u32;
    var loop_did_return_3: bool = false;
    var loop_header_carry_22_: bool;
    var local_55: u32 = u32();
    var local_56: u32 = u32();
    var local_57: u32 = u32();

    if ((a1_4 < 7u) == false) {
        local_47 = 0u;
        local_48 = true;
    }
    let _e99 = local_48;
    if _e99 {
    } else {
        let _e15 = (a1_4 * 30u);
        if ((_e15 + 30u) < 210u) {
            local_51 = (_e15 + 30u);
        } else {
            local_51 = 210u;
        }
        let _e26 = local_51;
        local_52 = 0u;
        local_53 = 0u;
        local_54 = 0u;
        loop {
            let _e38 = local_52;
            let _e40 = local_53;
            let _e42 = local_54;
            let _e44 = (_e42 < 17u);
            loop_header_carry_22_ = _e44;
            if _e44 {
                let _e45 = encoded_proof_row_width(_e42);
                let _e47 = (_e40 + _e45);
                if (_e40 > (4294967295u - _e45)) {
                } else {
                    if (_e15 < _e47) {
                        if (_e40 < _e26) {
                            if (_e15 < _e40) {
                                local_56 = _e40;
                            } else {
                                local_56 = _e15;
                            }
                            let _e59 = local_56;
                            if (_e47 < _e26) {
                                local_57 = _e47;
                            } else {
                                local_57 = _e26;
                            }
                            let _e64 = local_57;
                            if (_e64 < _e59) {
                                (*fe_trapped_5) = true;
                                break;
                            } else {
                                if (_e59 < _e40) {
                                    (*fe_trapped_5) = true;
                                    break;
                                } else {
                                    if (_e59 < _e15) {
                                        (*fe_trapped_5) = true;
                                        break;
                                    } else {
                                        let _e74 = encoded_proof_row_word(a0_5, _e42);
                                        let _e76 = low_mask((_e64 - _e59), fe_trapped_5);
                                        local_55 = (_e38 | (((_e74 >> (_e59 - _e40)) & _e76) << (_e59 - _e15)));
                                    }
                                }
                            }
                        } else {
                            local_55 = _e38;
                        }
                    } else {
                        local_55 = _e38;
                    }
                    let _e84 = local_55;
                    local_52 = _e84;
                    local_53 = _e47;
                    local_54 = (_e42 + 1u);
                    continue;
                }
                (*fe_trapped_5) = true;
                break;
            } else {
                loop_result_3 = _e38;
                loop_did_return_3 = true;
                break;
            }
        }
        let _e96 = loop_result_3;
        local_47 = _e96;
    }
    let _e101 = local_47;
    return _e101;
}

fn encoded_auxiliary_field_direct(a0_6: FeLocal_fe_shader_private_layout_4_, a1_5: u32, fe_trapped_6: ptr<function, bool>) -> u32 {
    var local_58: u32;
    var local_59: bool = false;
    var local_60: u32;
    var local_61: bool = false;
    var local_62: u32 = u32();
    var local_63: u32 = u32();
    var local_64: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_23_: bool;

    if ((a1_5 < 14u) == false) {
        local_58 = 0u;
        local_59 = true;
    }
    let _e57 = local_59;
    if _e57 {
    } else {
        let _e15 = (a1_5 * 30u);
        if ((_e15 + 30u) < 411u) {
            local_62 = (_e15 + 30u);
        } else {
            local_62 = 411u;
        }
        let _e26 = local_62;
        local_63 = 0u;
        local_64 = _e15;
        loop {
            let _e34 = local_63;
            let _e36 = local_64;
            let _e37 = (_e36 < _e26);
            loop_header_carry_23_ = _e37;
            if _e37 {
                let _e39 = encoded_auxiliary_row_bit_direct(a0_6.f2_, _e36, fe_trapped_6);
                if (_e36 < _e15) {
                    (*fe_trapped_6) = true;
                    break;
                }
                local_63 = (_e34 | (_e39 << (_e36 - _e15)));
                local_64 = (_e36 + 1u);
                continue;
            } else {
                loop_result_4 = _e34;
                loop_did_return_4 = true;
                break;
            }
        }
        let _e54 = loop_result_4;
        local_58 = _e54;
    }
    let _e59 = local_58;
    return _e59;
}

fn encoded_word_is_valid(a0_7: u32, a1_6: u32) -> bool {
    var local_65: bool;
    var local_66: bool = false;
    var local_67: bool = bool();

    if ((32u < a1_6) == false) {
        if (a1_6 == 32u) {
            local_67 = true;
        } else {
            if ((a0_7 >> a1_6) == 0u) {
                local_67 = true;
            }
        }
    }
    let _e18 = local_67;
    return _e18;
}

fn encoded_row_fields_are_valid(a0_8: FeLocal_fe_shader_private_layout_4_) -> bool {
    var local_68: bool = bool();
    var local_69: u32 = u32();
    var loop_result_5: bool;
    var loop_did_return_5: bool = false;
    var loop_header_carry_5_: bool;
    var local_70: bool = bool();

    local_68 = true;
    local_69 = 0u;
    loop {
        let _e9 = local_68;
        let _e11 = local_69;
        let _e13 = (_e11 < 17u);
        loop_header_carry_5_ = _e13;
        if _e13 {
            if _e9 {
                let _e15 = encoded_proof_row_word(a0_8, _e11);
                let _e16 = encoded_proof_row_width(_e11);
                let _e17 = encoded_word_is_valid(_e15, _e16);
                if _e17 {
                    local_70 = true;
                } else {
                    local_70 = false;
                }
            } else {
                local_70 = false;
            }
            let _e25 = local_70;
            local_68 = _e25;
            local_69 = (_e11 + 1u);
            continue;
        } else {
            loop_result_5 = _e9;
            loop_did_return_5 = true;
            break;
        }
    }
    let _e35 = loop_result_5;
    return _e35;
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_75_: bool;
    var local_3: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_91_: bool;
    var local_4: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_106_: bool;
    var local_5: bool = bool();
    var local_6: u32 = u32();

    if (global_invocation_id.x < 1024u) {
        let _e10 = load_main_trace_row(0u, global_invocation_id.x, (&fe_trapped));
        local_2 = 0u;
        loop {
            let _e16 = local_2;
            let _e18 = (_e16 < 411u);
            loop_header_carry_75_ = _e18;
            if _e18 {
                let _e26 = encoded_auxiliary_row_bit_direct(_e10.f2_, _e16, (&fe_trapped));
                proof[i32((((17u + _e16) << 10u) + global_invocation_id.x))] = _e26;
                local_2 = (_e16 + 1u);
                continue;
            } else {
                local_3 = 0u;
                break;
            }
        }
        local_3 = 0u;
        loop {
            let _e39 = local_3;
            let _e41 = (_e39 < 7u);
            loop_header_carry_91_ = _e41;
            if _e41 {
                let _e48 = encoded_row_field_direct(_e10, _e39, (&fe_trapped));
                proof[i32(((438272u + (global_invocation_id.x * 7u)) + _e39))] = _e48;
                local_3 = (_e39 + 1u);
                continue;
            } else {
                local_4 = 0u;
                break;
            }
        }
        local_4 = 0u;
        loop {
            let _e61 = local_4;
            let _e63 = (_e61 < 14u);
            loop_header_carry_106_ = _e63;
            if _e63 {
                let _e69 = encoded_auxiliary_field_direct(_e10, _e61, (&fe_trapped));
                proof[i32(((445440u + (global_invocation_id.x * 14u)) + _e61))] = _e69;
                local_4 = (_e61 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e77 = encoded_row_fields_are_valid(_e10);
        if _e77 {
            let _e78 = encoded_row_fields_are_valid(_e10);
            if _e78 {
                local_5 = true;
            }
        }
        let _e83 = local_5;
        if _e83 {
            local_6 = 1u;
        }
        let _e89 = local_6;
        fri_scratch[i32((237707u + global_invocation_id.x))] = _e89;
    }
    let _e102 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 1024u)) + (global_invocation_id.z * 1024u))] = u32(_e102);
}
