struct FeLocal_fe_shader_private_layout_2_ {
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

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: bool,
    f1_: u32,
    f2_: u32,
    f3_: u32,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: bool,
    f1_: u32,
    f2_: u32,
    f3_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: bool,
    f1_: bool,
    f2_: u32,
    f3_: u32,
    f4_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: bool,
    f1_: bool,
    f2_: u32,
    f3_: u32,
    f4_: FeLocal_fe_shader_private_layout_3_,
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
var<storage, read_write> trap: array<u32, 1984>;

fn load_fri_round_placement_at(a1_: u32, a2_: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_19: FeLocal_fe_shader_private_layout_2_;
    var local_20: bool = false;

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
                                                            local_19 = FeLocal_fe_shader_private_layout_2_((_e21 == 1u), _e31, _e39, _e47, _e55, _e63, _e71, _e79, _e87, _e95, _e103, _e111, _e119);
                                                            local_20 = true;
                                                        }
                                                        let _e125 = local_20;
                                                        if _e125 {
                                                        }
                                                    }
                                                    let _e127 = local_20;
                                                    if _e127 {
                                                    }
                                                }
                                                let _e129 = local_20;
                                                if _e129 {
                                                }
                                            }
                                            let _e131 = local_20;
                                            if _e131 {
                                            }
                                        }
                                        let _e133 = local_20;
                                        if _e133 {
                                        }
                                    }
                                    let _e135 = local_20;
                                    if _e135 {
                                    }
                                }
                                let _e137 = local_20;
                                if _e137 {
                                }
                            }
                            let _e139 = local_20;
                            if _e139 {
                            }
                        }
                        let _e141 = local_20;
                        if _e141 {
                        }
                    }
                    let _e143 = local_20;
                    if _e143 {
                    }
                }
                let _e145 = local_20;
                if _e145 {
                }
            }
            let _e147 = local_20;
            if _e147 {
            }
        }
        let _e149 = local_20;
        if _e149 {
        }
    }
    let _e152 = local_20;
    if _e152 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e154 = local_19;
    return _e154;
}

fn invalid_query_evaluation_placement() -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_();
}

fn finish_fri_query_evaluation_cursor(a0_: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    var local_21: FeLocal_fe_shader_private_layout_0_;
    var local_22: bool = false;
    var local_23: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    if a0_.f0_ {
        if a0_.f1_ {
            local_23 = a0_.f4_;
        } else {
            let _e6 = invalid_query_evaluation_placement();
            local_23 = _e6;
        }
    } else {
        let _e9 = invalid_query_evaluation_placement();
        local_23 = _e9;
    }
    let _e12 = local_23;
    return _e12;
}

fn fri_tree_level_offset(a0_1: u32, a1_1: u32, fe_trapped_2: ptr<function, bool>) -> u32 {
    var local_24: u32 = u32();
    var local_25: u32 = u32();
    var local_26: u32 = u32();
    var loop_result_2: u32;
    var loop_did_return_2: bool = false;
    var loop_header_carry_6_: bool;

    local_24 = a0_1;
    local_25 = 0u;
    local_26 = 0u;
    loop {
        let _e13 = local_24;
        let _e15 = local_25;
        let _e17 = local_26;
        let _e18 = (_e17 < a1_1);
        loop_header_carry_6_ = _e18;
        if _e18 {
            if (_e15 > (4294967295u - _e13)) {
                (*fe_trapped_2) = true;
                break;
            }
            local_24 = (_e13 / 2u);
            local_25 = (_e15 + _e13);
            local_26 = (_e17 + 1u);
            continue;
        } else {
            loop_result_2 = _e15;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e36 = loop_result_2;
    return _e36;
}

fn invalid_query_sibling_placement() -> FeLocal_fe_shader_private_layout_3_ {
    return FeLocal_fe_shader_private_layout_3_();
}

fn finish_fri_query_sibling_cursor(a0_2: FeLocal_fe_shader_private_layout_4_) -> FeLocal_fe_shader_private_layout_3_ {
    var local_27: FeLocal_fe_shader_private_layout_3_;
    var local_28: bool = false;
    var local_29: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();

    if a0_2.f0_ {
        if a0_2.f1_ {
            local_29 = a0_2.f4_;
        } else {
            let _e6 = invalid_query_sibling_placement();
            local_29 = _e6;
        }
    } else {
        let _e9 = invalid_query_sibling_placement();
        local_29 = _e9;
    }
    let _e12 = local_29;
    return _e12;
}

fn begin_fri_query_evaluation_cursor(a0_3: u32, a1_2: u32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = invalid_query_evaluation_placement();
    return FeLocal_fe_shader_private_layout_1_(true, false, a0_3, a1_2, _e2);
}

fn begin_fri_query_sibling_cursor(a0_4: u32, a1_3: u32) -> FeLocal_fe_shader_private_layout_4_ {
    let _e2 = invalid_query_sibling_placement();
    return FeLocal_fe_shader_private_layout_4_(true, false, a0_4, a1_3, _e2);
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_3: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_85_: bool;
    var local_4: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var fixed_local_183_: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_5: u32 = u32();
    var local_6: u32 = u32();
    var local_7: u32 = u32();
    var local_8: u32 = u32();
    var local_9: bool = bool();
    var local_10: u32 = u32();
    var local_11: u32 = u32();
    var local_12: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_13: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_143_: bool;
    var local_14: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var fixed_local_254_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_15: u32 = u32();
    var local_16: bool = bool();
    var local_17: u32 = u32();
    var local_18: u32 = u32();

    if (global_invocation_id.x < 184u) {
        let _e10 = (global_invocation_id.x / 92u);
        let _e12 = (global_invocation_id.x % 92u);
        let _e16 = (_e12 % 4u);
        if (514131u > (4294967295u - _e10)) {
        } else {
            let _e24 = proof[i32((514131u + _e10))];
            let _e25 = begin_fri_query_evaluation_cursor((_e12 / 4u), _e24);
            local_2 = _e25;
            local_3 = 0u;
            loop {
                let _e33 = local_2;
                let _e35 = local_3;
                let _e37 = (_e35 < 12u);
                loop_header_carry_85_ = _e37;
                if _e37 {
                    let _e40 = load_fri_round_placement_at(237550u, _e35, (&fe_trapped));
                    fixed_local_183_ = _e33;
                    let _e44 = fixed_local_183_.f0_;
                    if _e44 {
                        let _e46 = fixed_local_183_.f1_;
                        if _e46 {
                            let _e47 = fixed_local_183_;
                            local_4 = _e47;
                        } else {
                            if _e40.f0_ {
                                let _e50 = fixed_local_183_.f3_;
                                if (_e50 < _e40.f5_) {
                                    if (1u < _e40.f5_) {
                                        local_5 = 2u;
                                    } else {
                                        local_5 = 1u;
                                    }
                                    let _e62 = local_5;
                                    let _e64 = fixed_local_183_.f2_;
                                    if (_e64 < _e62) {
                                        if (1u < _e40.f5_) {
                                            let _e71 = fixed_local_183_.f3_;
                                            if (_e40.f11_ < 1u) {
                                                fe_trapped = true;
                                                break;
                                            } else {
                                                let _e77 = (_e71 & (_e40.f11_ - 1u));
                                                let _e79 = fixed_local_183_.f2_;
                                                let _e84 = (_e79 * _e40.f11_);
                                                let _e85 = (_e79 != 0u);
                                                if (_e85 && (_e40.f11_ > (4294967295u / select(1u, _e79, _e85)))) {
                                                    fe_trapped = true;
                                                    break;
                                                } else {
                                                    if (_e77 > (4294967295u - _e84)) {
                                                        fe_trapped = true;
                                                        break;
                                                    } else {
                                                        local_6 = (_e77 + _e84);
                                                    }
                                                }
                                            }
                                        } else {
                                            local_6 = 0u;
                                        }
                                        let _e100 = local_6;
                                        if (_e40.f6_ > (4294967295u - _e100)) {
                                            fe_trapped = true;
                                            break;
                                        } else {
                                            fixed_local_183_.f4_ = FeLocal_fe_shader_private_layout_0_(true, _e40.f1_, _e40.f2_, (_e40.f6_ + _e100));
                                            fixed_local_183_.f1_ = true;
                                            let _e114 = fixed_local_183_;
                                            local_4 = _e114;
                                        }
                                    } else {
                                        let _e117 = fixed_local_183_.f2_;
                                        if (_e117 < _e62) {
                                            fe_trapped = true;
                                            break;
                                        } else {
                                            fixed_local_183_.f2_ = (_e117 - _e62);
                                            if (1u < _e40.f5_) {
                                                let _e127 = fixed_local_183_.f3_;
                                                if (_e40.f11_ < 1u) {
                                                    fe_trapped = true;
                                                    break;
                                                } else {
                                                    local_7 = (_e127 & (_e40.f11_ - 1u));
                                                }
                                            } else {
                                                local_7 = 0u;
                                            }
                                            let _e138 = local_7;
                                            fixed_local_183_.f3_ = _e138;
                                            let _e140 = fixed_local_183_;
                                            local_4 = _e140;
                                        }
                                    }
                                } else {
                                    fixed_local_183_.f0_ = false;
                                    let _e144 = fixed_local_183_;
                                    local_4 = _e144;
                                }
                            } else {
                                fixed_local_183_.f0_ = false;
                                let _e148 = fixed_local_183_;
                                local_4 = _e148;
                            }
                        }
                    } else {
                        let _e151 = fixed_local_183_;
                        local_4 = _e151;
                    }
                    let _e154 = local_4;
                    local_2 = _e154;
                    local_3 = (_e35 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e161 = local_2;
            let _e163 = finish_fri_query_evaluation_cursor(_e161);
            if (_e10 == 0u) {
                local_8 = 480774u;
            } else {
                local_8 = 497154u;
            }
            let _e172 = local_8;
            if _e163.f0_ {
                if (_e163.f3_ < 4095u) {
                    local_9 = true;
                }
            }
            let _e181 = local_9;
            if _e181 {
                let _e187 = (_e163.f3_ * 4u);
                let _e188 = (_e163.f3_ != 0u);
                if (_e188 && (4u > (4294967295u / select(1u, _e163.f3_, _e188)))) {
                    fe_trapped = true;
                } else {
                    let _e195 = (_e172 + _e187);
                    if (_e172 > (4294967295u - _e187)) {
                        fe_trapped = true;
                    } else {
                        if (_e195 > (4294967295u - _e16)) {
                            fe_trapped = true;
                        } else {
                            let _e206 = proof[i32((_e195 + _e16))];
                            local_10 = _e206;
                        }
                    }
                }
            }
            let _e210 = local_10;
            proof[i32((514133u + global_invocation_id.x))] = _e210;
            if _e181 {
                if (_e210 < 2013265921u) {
                    local_11 = 1u;
                }
            }
            let _e222 = local_11;
            fri_scratch[i32((238731u + global_invocation_id.x))] = _e222;
            local_1 = true;
        }
        let _e229 = local_1;
        if _e229 {
        } else {
            fe_trapped = true;
        }
    } else {
        if (global_invocation_id.x < 1944u) {
            let _e233 = (global_invocation_id.x - 184u);
            let _e235 = (_e233 / 880u);
            let _e237 = (_e233 % 880u);
            let _e241 = (_e237 % 8u);
            if (514131u > (4294967295u - _e235)) {
            } else {
                let _e249 = proof[i32((514131u + _e235))];
                let _e250 = begin_fri_query_sibling_cursor((_e237 / 8u), _e249);
                local_12 = _e250;
                local_13 = 0u;
                loop {
                    let _e258 = local_12;
                    let _e260 = local_13;
                    let _e262 = (_e260 < 12u);
                    loop_header_carry_143_ = _e262;
                    if _e262 {
                        let _e265 = load_fri_round_placement_at(237550u, _e260, (&fe_trapped));
                        fixed_local_254_ = _e258;
                        let _e269 = fixed_local_254_.f0_;
                        if _e269 {
                            let _e271 = fixed_local_254_.f1_;
                            if _e271 {
                                let _e272 = fixed_local_254_;
                                local_14 = _e272;
                            } else {
                                if _e265.f0_ {
                                    let _e275 = fixed_local_254_.f3_;
                                    if (_e275 < _e265.f5_) {
                                        let _e283 = (2u * _e265.f12_);
                                        let _e284 = (2u != 0u);
                                        if (_e284 && (_e265.f12_ > (4294967295u / select(1u, 2u, _e284)))) {
                                            fe_trapped = true;
                                            break;
                                        } else {
                                            if (_e265.f12_ == 0u) {
                                                let _e294 = fixed_local_254_.f2_;
                                                if (_e294 < _e283) {
                                                    fe_trapped = true;
                                                    break;
                                                } else {
                                                    fixed_local_254_.f2_ = (_e294 - _e283);
                                                    if (1u < _e265.f5_) {
                                                        let _e304 = fixed_local_254_.f3_;
                                                        if (_e265.f11_ < 1u) {
                                                            fe_trapped = true;
                                                            break;
                                                        } else {
                                                            local_15 = (_e304 & (_e265.f11_ - 1u));
                                                        }
                                                    } else {
                                                        local_15 = 0u;
                                                    }
                                                    let _e315 = local_15;
                                                    fixed_local_254_.f3_ = _e315;
                                                    let _e317 = fixed_local_254_;
                                                    local_14 = _e317;
                                                }
                                            } else {
                                                let _e320 = fixed_local_254_.f2_;
                                                if (_e320 < _e283) {
                                                    let _e323 = fixed_local_254_.f2_;
                                                    if (_e265.f12_ == 0u) {
                                                        fe_trapped = true;
                                                        break;
                                                    } else {
                                                        let _e328 = (_e323 / _e265.f12_);
                                                        let _e330 = fixed_local_254_.f2_;
                                                        if (_e265.f12_ == 0u) {
                                                            fe_trapped = true;
                                                            break;
                                                        } else {
                                                            let _e335 = (_e330 % _e265.f12_);
                                                            let _e337 = fixed_local_254_.f3_;
                                                            if (_e265.f11_ < 1u) {
                                                                fe_trapped = true;
                                                                break;
                                                            } else {
                                                                let _e343 = (_e337 & (_e265.f11_ - 1u));
                                                                let _e348 = (_e328 * _e265.f11_);
                                                                let _e349 = (_e328 != 0u);
                                                                if (_e349 && (_e265.f11_ > (4294967295u / select(1u, _e328, _e349)))) {
                                                                    fe_trapped = true;
                                                                    break;
                                                                } else {
                                                                    if (_e343 > (4294967295u - _e348)) {
                                                                        fe_trapped = true;
                                                                        break;
                                                                    } else {
                                                                        let _e362 = fri_tree_level_offset(_e265.f5_, _e335, (&fe_trapped));
                                                                        let _e364 = (_e265.f7_ + _e362);
                                                                        if (_e265.f7_ > (4294967295u - _e362)) {
                                                                            fe_trapped = true;
                                                                            break;
                                                                        } else {
                                                                            let _e370 = (((_e343 + _e348) >> _e335) ^ 1u);
                                                                            if (_e364 > (4294967295u - _e370)) {
                                                                                fe_trapped = true;
                                                                                break;
                                                                            } else {
                                                                                fixed_local_254_.f4_ = FeLocal_fe_shader_private_layout_3_(true, _e265.f1_, _e265.f2_, (_e364 + _e370));
                                                                                fixed_local_254_.f1_ = true;
                                                                                let _e383 = fixed_local_254_;
                                                                                local_14 = _e383;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    let _e386 = fixed_local_254_.f2_;
                                                    if (_e386 < _e283) {
                                                        fe_trapped = true;
                                                        break;
                                                    } else {
                                                        fixed_local_254_.f2_ = (_e386 - _e283);
                                                        if (1u < _e265.f5_) {
                                                            let _e395 = fixed_local_254_.f3_;
                                                            if (_e265.f11_ < 1u) {
                                                                fe_trapped = true;
                                                                break;
                                                            } else {
                                                                local_15 = (_e395 & (_e265.f11_ - 1u));
                                                            }
                                                        } else {
                                                            local_15 = 0u;
                                                        }
                                                        let _e406 = local_15;
                                                        fixed_local_254_.f3_ = _e406;
                                                        let _e408 = fixed_local_254_;
                                                        local_14 = _e408;
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        fixed_local_254_.f0_ = false;
                                        let _e412 = fixed_local_254_;
                                        local_14 = _e412;
                                    }
                                } else {
                                    fixed_local_254_.f0_ = false;
                                    let _e416 = fixed_local_254_;
                                    local_14 = _e416;
                                }
                            }
                        } else {
                            let _e419 = fixed_local_254_;
                            local_14 = _e419;
                        }
                        let _e422 = local_14;
                        local_12 = _e422;
                        local_13 = (_e260 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                let _e429 = local_12;
                let _e430 = finish_fri_query_sibling_cursor(_e429);
                let _e436 = (_e235 * 8191u);
                let _e437 = (_e235 != 0u);
                if (_e437 && (8191u > (4294967295u / select(1u, _e235, _e437)))) {
                } else {
                    let _e443 = (_e436 + _e430.f3_);
                    if (_e436 > (4294967295u - _e430.f3_)) {
                    } else {
                        if _e430.f0_ {
                            if (_e430.f3_ < 8178u) {
                                if (131056u > (4294967295u - _e443)) {
                                    fe_trapped = true;
                                } else {
                                    let _e459 = fri_scratch[i32((131056u + _e443))];
                                    if (_e459 == 1u) {
                                        local_16 = true;
                                    }
                                }
                            }
                        }
                        let _e466 = local_16;
                        if _e466 {
                            let _e471 = (_e443 * 8u);
                            let _e472 = (_e443 != 0u);
                            if (_e472 && (8u > (4294967295u / select(1u, _e443, _e472)))) {
                                fe_trapped = true;
                            } else {
                                if (_e471 > (4294967295u - _e241)) {
                                    fe_trapped = true;
                                } else {
                                    let _e485 = fri_scratch[i32((_e471 + _e241))];
                                    local_17 = _e485;
                                }
                            }
                        }
                        let _e489 = local_17;
                        proof[i32((514317u + _e233))] = _e489;
                        if _e466 {
                            if (_e489 < 2013265921u) {
                                local_18 = 1u;
                            }
                        }
                        let _e501 = local_18;
                        fri_scratch[i32((238731u + global_invocation_id.x))] = _e501;
                        local_1 = true;
                    }
                    let _e507 = local_1;
                    if _e507 {
                    }
                }
                let _e509 = local_1;
                if _e509 {
                }
            }
            let _e512 = local_1;
            if _e512 {
            } else {
                fe_trapped = true;
            }
        }
        let _e516 = local_1;
        if _e516 {
        } else {
            local_1 = true;
        }
    }
    let _e527 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 1984u)) + (global_invocation_id.z * 1984u))] = u32(_e527);
}
