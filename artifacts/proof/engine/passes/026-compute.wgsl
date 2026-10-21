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

struct FeLocal_fe_shader_private_layout_13_ {
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

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: array<u32, 16>,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: array<u32, 141>,
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
var<storage, read_write> trap: array<u32, 64>;

fn fri_round_placement_g7510_(a0_: u32) -> FeLocal_fe_shader_private_layout_5_ {
    return FeLocal_fe_shader_private_layout_5_();
}

fn fri_round_placement_g4997_(a0_1: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_10: FeLocal_fe_shader_private_layout_5_;
    var local_11: bool = false;
    var local_12: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_1 == 0u) {
        local_12 = FeLocal_fe_shader_private_layout_5_(true, 0u, 12u, 1u, 2u, 1u, 0u, 0u, 1u, 0u, 0u, 0u, 0u);
    } else {
        let _e22 = fri_round_placement_g7510_((a0_1 - 1u));
        if (_e22.f0_ == false) {
            local_12 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_1) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 1u)) {
                        (*fe_trapped_1) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 1u)) {
                            (*fe_trapped_1) = true;
                        } else {
                            local_12 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 1u), (_e22.f7_ + 1u), _e22.f8_, (_e22.f9_ + 1u), _e22.f10_, _e22.f11_, _e22.f12_);
                        }
                    }
                }
            }
        }
    }
    let _e69 = local_12;
    return _e69;
}

fn fri_round_placement_ged23_(a0_2: u32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_13: FeLocal_fe_shader_private_layout_5_;
    var local_14: bool = false;
    var local_15: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_2 == 0u) {
        local_15 = FeLocal_fe_shader_private_layout_5_(true, 0u, 11u, 2u, 4u, 2u, 0u, 0u, 3u, 0u, 0u, 1u, 0u);
    } else {
        let _e22 = fri_round_placement_g4997_((a0_2 - 1u), fe_trapped_2);
        if (_e22.f0_ == false) {
            local_15 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_2) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 2u)) {
                    (*fe_trapped_2) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 3u)) {
                        (*fe_trapped_2) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_2) = true;
                        } else {
                            local_15 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 2u), (_e22.f7_ + 3u), _e22.f8_, (_e22.f9_ + 2u), _e22.f10_, _e22.f11_, _e22.f12_);
                        }
                    }
                }
            }
        }
    }
    let _e69 = local_15;
    return _e69;
}

fn fri_round_placement_g7118_(a0_3: u32, fe_trapped_3: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_16: FeLocal_fe_shader_private_layout_5_;
    var local_17: bool = false;
    var local_18: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_3 == 0u) {
        local_18 = FeLocal_fe_shader_private_layout_5_(true, 0u, 10u, 3u, 8u, 4u, 0u, 0u, 7u, 0u, 0u, 2u, 1u);
    } else {
        let _e22 = fri_round_placement_ged23_((a0_3 - 1u), fe_trapped_3);
        if (_e22.f0_ == false) {
            local_18 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_3) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 4u)) {
                    (*fe_trapped_3) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 7u)) {
                        (*fe_trapped_3) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_3) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 2u)) {
                                (*fe_trapped_3) = true;
                            } else {
                                local_18 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 4u), (_e22.f7_ + 7u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 2u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_18;
    return _e75;
}

fn fri_round_placement_gaefa(a0_4: u32, fe_trapped_4: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_19: FeLocal_fe_shader_private_layout_5_;
    var local_20: bool = false;
    var local_21: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_4 == 0u) {
        local_21 = FeLocal_fe_shader_private_layout_5_(true, 0u, 9u, 4u, 16u, 8u, 0u, 0u, 15u, 0u, 0u, 4u, 2u);
    } else {
        let _e22 = fri_round_placement_g7118_((a0_4 - 1u), fe_trapped_4);
        if (_e22.f0_ == false) {
            local_21 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_4) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 8u)) {
                    (*fe_trapped_4) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 15u)) {
                        (*fe_trapped_4) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_4) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 4u)) {
                                (*fe_trapped_4) = true;
                            } else {
                                local_21 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 8u), (_e22.f7_ + 15u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 4u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_21;
    return _e75;
}

fn fri_round_placement_g9905_(a0_5: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_22: FeLocal_fe_shader_private_layout_5_;
    var local_23: bool = false;
    var local_24: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_5 == 0u) {
        local_24 = FeLocal_fe_shader_private_layout_5_(true, 0u, 8u, 5u, 32u, 16u, 0u, 0u, 31u, 0u, 0u, 8u, 3u);
    } else {
        let _e22 = fri_round_placement_gaefa((a0_5 - 1u), fe_trapped_5);
        if (_e22.f0_ == false) {
            local_24 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_5) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 16u)) {
                    (*fe_trapped_5) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 31u)) {
                        (*fe_trapped_5) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_5) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 6u)) {
                                (*fe_trapped_5) = true;
                            } else {
                                local_24 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 16u), (_e22.f7_ + 31u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 6u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_24;
    return _e75;
}

fn fri_round_placement_gf3ed(a0_6: u32, fe_trapped_6: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_25: FeLocal_fe_shader_private_layout_5_;
    var local_26: bool = false;
    var local_27: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_6 == 0u) {
        local_27 = FeLocal_fe_shader_private_layout_5_(true, 0u, 7u, 6u, 64u, 32u, 0u, 0u, 63u, 0u, 0u, 16u, 4u);
    } else {
        let _e22 = fri_round_placement_g9905_((a0_6 - 1u), fe_trapped_6);
        if (_e22.f0_ == false) {
            local_27 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_6) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 32u)) {
                    (*fe_trapped_6) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 63u)) {
                        (*fe_trapped_6) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_6) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 8u)) {
                                (*fe_trapped_6) = true;
                            } else {
                                local_27 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 32u), (_e22.f7_ + 63u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 8u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_27;
    return _e75;
}

fn fri_round_placement_g1a94_(a0_7: u32, fe_trapped_7: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_28: FeLocal_fe_shader_private_layout_5_;
    var local_29: bool = false;
    var local_30: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_7 == 0u) {
        local_30 = FeLocal_fe_shader_private_layout_5_(true, 0u, 6u, 7u, 128u, 64u, 0u, 0u, 127u, 0u, 0u, 32u, 5u);
    } else {
        let _e22 = fri_round_placement_gf3ed((a0_7 - 1u), fe_trapped_7);
        if (_e22.f0_ == false) {
            local_30 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_7) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 64u)) {
                    (*fe_trapped_7) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 127u)) {
                        (*fe_trapped_7) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_7) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 10u)) {
                                (*fe_trapped_7) = true;
                            } else {
                                local_30 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 64u), (_e22.f7_ + 127u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 10u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_30;
    return _e75;
}

fn fri_round_placement_g6b84_(a0_8: u32, fe_trapped_8: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_31: FeLocal_fe_shader_private_layout_5_;
    var local_32: bool = false;
    var local_33: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_8 == 0u) {
        local_33 = FeLocal_fe_shader_private_layout_5_(true, 0u, 5u, 8u, 256u, 128u, 0u, 0u, 255u, 0u, 0u, 64u, 6u);
    } else {
        let _e22 = fri_round_placement_g1a94_((a0_8 - 1u), fe_trapped_8);
        if (_e22.f0_ == false) {
            local_33 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_8) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 128u)) {
                    (*fe_trapped_8) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 255u)) {
                        (*fe_trapped_8) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_8) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 12u)) {
                                (*fe_trapped_8) = true;
                            } else {
                                local_33 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 128u), (_e22.f7_ + 255u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 12u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_33;
    return _e75;
}

fn fri_round_placement_g23d9_(a0_9: u32, fe_trapped_9: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_34: FeLocal_fe_shader_private_layout_5_;
    var local_35: bool = false;
    var local_36: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_9 == 0u) {
        local_36 = FeLocal_fe_shader_private_layout_5_(true, 0u, 4u, 9u, 512u, 256u, 0u, 0u, 511u, 0u, 0u, 128u, 7u);
    } else {
        let _e22 = fri_round_placement_g6b84_((a0_9 - 1u), fe_trapped_9);
        if (_e22.f0_ == false) {
            local_36 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_9) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 256u)) {
                    (*fe_trapped_9) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 511u)) {
                        (*fe_trapped_9) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_9) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 14u)) {
                                (*fe_trapped_9) = true;
                            } else {
                                local_36 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 256u), (_e22.f7_ + 511u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 14u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_36;
    return _e75;
}

fn fri_round_placement_gb9a7_(a0_10: u32, fe_trapped_10: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_37: FeLocal_fe_shader_private_layout_5_;
    var local_38: bool = false;
    var local_39: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_10 == 0u) {
        local_39 = FeLocal_fe_shader_private_layout_5_(true, 0u, 3u, 10u, 1024u, 512u, 0u, 0u, 1023u, 0u, 0u, 256u, 8u);
    } else {
        let _e22 = fri_round_placement_g23d9_((a0_10 - 1u), fe_trapped_10);
        if (_e22.f0_ == false) {
            local_39 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_10) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 512u)) {
                    (*fe_trapped_10) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 1023u)) {
                        (*fe_trapped_10) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_10) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 16u)) {
                                (*fe_trapped_10) = true;
                            } else {
                                local_39 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 512u), (_e22.f7_ + 1023u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 16u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_39;
    return _e75;
}

fn fri_round_placement_gbb7d(a0_11: u32, fe_trapped_11: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_40: FeLocal_fe_shader_private_layout_5_;
    var local_41: bool = false;
    var local_42: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_11 == 0u) {
        local_42 = FeLocal_fe_shader_private_layout_5_(true, 0u, 2u, 11u, 2048u, 1024u, 0u, 0u, 2047u, 0u, 0u, 512u, 9u);
    } else {
        let _e22 = fri_round_placement_gb9a7_((a0_11 - 1u), fe_trapped_11);
        if (_e22.f0_ == false) {
            local_42 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_11) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 1024u)) {
                    (*fe_trapped_11) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 2047u)) {
                        (*fe_trapped_11) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_11) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 18u)) {
                                (*fe_trapped_11) = true;
                            } else {
                                local_42 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 1024u), (_e22.f7_ + 2047u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 18u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_42;
    return _e75;
}

fn fri_round_placement_g5649_(a0_12: u32, fe_trapped_12: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_5_ {
    var local_43: FeLocal_fe_shader_private_layout_5_;
    var local_44: bool = false;
    var local_45: FeLocal_fe_shader_private_layout_5_ = FeLocal_fe_shader_private_layout_5_();

    if (a0_12 == 0u) {
        local_45 = FeLocal_fe_shader_private_layout_5_(true, 0u, 1u, 12u, 4096u, 2048u, 0u, 0u, 4095u, 0u, 0u, 1024u, 10u);
    } else {
        let _e22 = fri_round_placement_gbb7d((a0_12 - 1u), fe_trapped_12);
        if (_e22.f0_ == false) {
            local_45 = FeLocal_fe_shader_private_layout_5_();
        } else {
            if (_e22.f1_ > (4294967295u - 1u)) {
                (*fe_trapped_12) = true;
            } else {
                if (_e22.f6_ > (4294967295u - 2048u)) {
                    (*fe_trapped_12) = true;
                } else {
                    if (_e22.f7_ > (4294967295u - 4095u)) {
                        (*fe_trapped_12) = true;
                    } else {
                        if (_e22.f9_ > (4294967295u - 2u)) {
                            (*fe_trapped_12) = true;
                        } else {
                            if (_e22.f10_ > (4294967295u - 20u)) {
                                (*fe_trapped_12) = true;
                            } else {
                                local_45 = FeLocal_fe_shader_private_layout_5_(true, (_e22.f1_ + 1u), _e22.f2_, _e22.f3_, _e22.f4_, _e22.f5_, (_e22.f6_ + 2048u), (_e22.f7_ + 4095u), _e22.f8_, (_e22.f9_ + 2u), (_e22.f10_ + 20u), _e22.f11_, _e22.f12_);
                            }
                        }
                    }
                }
            }
        }
    }
    let _e75 = local_45;
    return _e75;
}

fn store_fri_round_placement_at(a1_: u32, a2_: u32, a3_: FeLocal_fe_shader_private_layout_5_, fe_trapped_13: ptr<function, bool>) {
    var local_46: u32;
    var local_47: bool = false;
    var local_48: u32 = u32();

    let _e10 = (a2_ * 13u);
    let _e11 = (a2_ != 0u);
    if (_e11 && (13u > (4294967295u / select(1u, a2_, _e11)))) {
    } else {
        let _e17 = (a1_ + _e10);
        if (a1_ > (4294967295u - _e10)) {
        } else {
            if a3_.f0_ {
                local_48 = 1u;
            }
            let _e25 = local_48;
            fri_scratch[i32(_e17)] = _e25;
            if (_e17 > (4294967295u - 1u)) {
            } else {
                fri_scratch[i32((_e17 + 1u))] = a3_.f1_;
                if (_e17 > (4294967295u - 2u)) {
                } else {
                    fri_scratch[i32((_e17 + 2u))] = a3_.f2_;
                    if (_e17 > (4294967295u - 3u)) {
                    } else {
                        fri_scratch[i32((_e17 + 3u))] = a3_.f3_;
                        if (_e17 > (4294967295u - 4u)) {
                        } else {
                            fri_scratch[i32((_e17 + 4u))] = a3_.f4_;
                            if (_e17 > (4294967295u - 5u)) {
                            } else {
                                fri_scratch[i32((_e17 + 5u))] = a3_.f5_;
                                if (_e17 > (4294967295u - 6u)) {
                                } else {
                                    fri_scratch[i32((_e17 + 6u))] = a3_.f6_;
                                    if (_e17 > (4294967295u - 7u)) {
                                    } else {
                                        fri_scratch[i32((_e17 + 7u))] = a3_.f7_;
                                        if (_e17 > (4294967295u - 8u)) {
                                        } else {
                                            fri_scratch[i32((_e17 + 8u))] = a3_.f8_;
                                            if (_e17 > (4294967295u - 9u)) {
                                            } else {
                                                fri_scratch[i32((_e17 + 9u))] = a3_.f9_;
                                                if (_e17 > (4294967295u - 10u)) {
                                                } else {
                                                    fri_scratch[i32((_e17 + 10u))] = a3_.f10_;
                                                    if (_e17 > (4294967295u - 11u)) {
                                                    } else {
                                                        fri_scratch[i32((_e17 + 11u))] = a3_.f11_;
                                                        if (_e17 > (4294967295u - 12u)) {
                                                        } else {
                                                            fri_scratch[i32((_e17 + 12u))] = a3_.f12_;
                                                            local_47 = true;
                                                        }
                                                        let _e127 = local_47;
                                                        if _e127 {
                                                        }
                                                    }
                                                    let _e129 = local_47;
                                                    if _e129 {
                                                    }
                                                }
                                                let _e131 = local_47;
                                                if _e131 {
                                                }
                                            }
                                            let _e133 = local_47;
                                            if _e133 {
                                            }
                                        }
                                        let _e135 = local_47;
                                        if _e135 {
                                        }
                                    }
                                    let _e137 = local_47;
                                    if _e137 {
                                    }
                                }
                                let _e139 = local_47;
                                if _e139 {
                                }
                            }
                            let _e141 = local_47;
                            if _e141 {
                            }
                        }
                        let _e143 = local_47;
                        if _e143 {
                        }
                    }
                    let _e145 = local_47;
                    if _e145 {
                    }
                }
                let _e147 = local_47;
                if _e147 {
                }
            }
            let _e149 = local_47;
            if _e149 {
            }
        }
        let _e151 = local_47;
        if _e151 {
        }
    }
    let _e154 = local_47;
    if _e154 {
    } else {
        (*fe_trapped_13) = true;
    }
    return;
}

fn zero() -> FeLocal_fe_shader_private_layout_2_ {
    return FeLocal_fe_shader_private_layout_2_();
}

fn precision_lib_word_field_canonicalize_ga970_5fba(a0_13: u32, fe_trapped_14: ptr<function, bool>) -> u32 {
    var local_49: u32;
    var local_50: bool = false;

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
                                    local_49 = (a0_13 - _e36);
                                    local_50 = true;
                                }
                                let _e48 = local_50;
                                if _e48 {
                                }
                            }
                            let _e50 = local_50;
                            if _e50 {
                            }
                        }
                        let _e52 = local_50;
                        if _e52 {
                        }
                    }
                    let _e54 = local_50;
                    if _e54 {
                    }
                }
                let _e56 = local_50;
                if _e56 {
                }
            }
            let _e58 = local_50;
            if _e58 {
            }
        }
        let _e60 = local_50;
        if _e60 {
        }
    }
    let _e63 = local_50;
    if _e63 {
    } else {
        (*fe_trapped_14) = true;
    }
    let _e65 = local_49;
    return _e65;
}

fn precision_lib_word_field_montgomery_mul_ga970_0ae3_(a0_14: u32, a1_1: u32, fe_trapped_15: ptr<function, bool>) -> u32 {
    var local_51: u32;
    var local_52: bool = false;

    let _e5 = (a0_14 & 65535u);
    let _e7 = (a0_14 >> 16u);
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
                                                                                                            let _e235 = precision_lib_word_field_canonicalize_ga970_5fba((_e228 + _e226), fe_trapped_15);
                                                                                                            local_51 = _e235;
                                                                                                            local_52 = true;
                                                                                                        }
                                                                                                        let _e240 = local_52;
                                                                                                        if _e240 {
                                                                                                        }
                                                                                                    }
                                                                                                    let _e242 = local_52;
                                                                                                    if _e242 {
                                                                                                    }
                                                                                                }
                                                                                                let _e244 = local_52;
                                                                                                if _e244 {
                                                                                                }
                                                                                            }
                                                                                            let _e246 = local_52;
                                                                                            if _e246 {
                                                                                            }
                                                                                        }
                                                                                        let _e248 = local_52;
                                                                                        if _e248 {
                                                                                        }
                                                                                    }
                                                                                    let _e250 = local_52;
                                                                                    if _e250 {
                                                                                    }
                                                                                }
                                                                                let _e252 = local_52;
                                                                                if _e252 {
                                                                                }
                                                                            }
                                                                            let _e254 = local_52;
                                                                            if _e254 {
                                                                            }
                                                                        }
                                                                        let _e256 = local_52;
                                                                        if _e256 {
                                                                        }
                                                                    }
                                                                    let _e258 = local_52;
                                                                    if _e258 {
                                                                    }
                                                                }
                                                                let _e260 = local_52;
                                                                if _e260 {
                                                                }
                                                            }
                                                            let _e262 = local_52;
                                                            if _e262 {
                                                            }
                                                        }
                                                        let _e264 = local_52;
                                                        if _e264 {
                                                        }
                                                    }
                                                    let _e266 = local_52;
                                                    if _e266 {
                                                    }
                                                }
                                                let _e268 = local_52;
                                                if _e268 {
                                                }
                                            }
                                            let _e270 = local_52;
                                            if _e270 {
                                            }
                                        }
                                        let _e272 = local_52;
                                        if _e272 {
                                        }
                                    }
                                    let _e274 = local_52;
                                    if _e274 {
                                    }
                                }
                                let _e276 = local_52;
                                if _e276 {
                                }
                            }
                            let _e278 = local_52;
                            if _e278 {
                            }
                        }
                        let _e280 = local_52;
                        if _e280 {
                        }
                    }
                    let _e282 = local_52;
                    if _e282 {
                    }
                }
                let _e284 = local_52;
                if _e284 {
                }
            }
            let _e286 = local_52;
            if _e286 {
            }
        }
        let _e288 = local_52;
        if _e288 {
        }
    }
    let _e291 = local_52;
    if _e291 {
    } else {
        (*fe_trapped_15) = true;
    }
    let _e293 = local_51;
    return _e293;
}

fn from_u32_(a0_15: u32, fe_trapped_16: ptr<function, bool>) -> u32 {
    let _e5 = precision_lib_word_field_montgomery_mul_ga970_0ae3_((a0_15 % 2013265921u), 1172168163u, fe_trapped_16);
    return _e5;
}

fn from_u32s(a0_16: u32, a1_2: u32, a2_1: u32, a3_1: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32, fe_trapped_17: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var fixed_local_8_: array<u32, 8> = array<u32, 8>();
    var fixed_local_26_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_53: u32 = u32();
    var loop_result_2: FeLocal_fe_shader_private_layout_2_;
    var loop_did_return_2: bool = false;
    var loop_header_carry_29_: bool;

    fixed_local_8_[0] = a0_16;
    fixed_local_8_[1] = a1_2;
    fixed_local_8_[2] = a2_1;
    fixed_local_8_[3] = a3_1;
    fixed_local_8_[4] = a4_;
    fixed_local_8_[5] = a5_;
    fixed_local_8_[6] = a6_;
    fixed_local_8_[7] = a7_;
    let _e19 = zero();
    fixed_local_26_ = _e19;
    local_53 = 0u;
    loop {
        let _e27 = local_53;
        let _e29 = (_e27 < 8u);
        loop_header_carry_29_ = _e29;
        if _e29 {
            let _e31 = fixed_local_8_[_e27];
            let _e32 = from_u32_(_e31, fe_trapped_17);
            fixed_local_26_.f0_[_e27].f0_ = _e32;
            local_53 = (_e27 + 1u);
            continue;
        } else {
            let _e39 = fixed_local_26_;
            loop_result_2 = _e39;
            loop_did_return_2 = true;
            break;
        }
    }
    let _e45 = loop_result_2;
    return _e45;
}

fn load_digest_at(a1_3: u32, fe_trapped_18: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_54: FeLocal_fe_shader_private_layout_2_;
    var local_55: bool = false;

    let _e6 = proof[i32(a1_3)];
    if (a1_3 > (4294967295u - 1u)) {
    } else {
        let _e14 = proof[i32((a1_3 + 1u))];
        if (a1_3 > (4294967295u - 2u)) {
        } else {
            let _e22 = proof[i32((a1_3 + 2u))];
            if (a1_3 > (4294967295u - 3u)) {
            } else {
                let _e30 = proof[i32((a1_3 + 3u))];
                if (a1_3 > (4294967295u - 4u)) {
                } else {
                    let _e38 = proof[i32((a1_3 + 4u))];
                    if (a1_3 > (4294967295u - 5u)) {
                    } else {
                        let _e46 = proof[i32((a1_3 + 5u))];
                        if (a1_3 > (4294967295u - 6u)) {
                        } else {
                            let _e54 = proof[i32((a1_3 + 6u))];
                            if (a1_3 > (4294967295u - 7u)) {
                            } else {
                                let _e62 = proof[i32((a1_3 + 7u))];
                                let _e63 = from_u32s(_e6, _e14, _e22, _e30, _e38, _e46, _e54, _e62, fe_trapped_18);
                                local_54 = _e63;
                                local_55 = true;
                            }
                            let _e68 = local_55;
                            if _e68 {
                            }
                        }
                        let _e70 = local_55;
                        if _e70 {
                        }
                    }
                    let _e72 = local_55;
                    if _e72 {
                    }
                }
                let _e74 = local_55;
                if _e74 {
                }
            }
            let _e76 = local_55;
            if _e76 {
            }
        }
        let _e78 = local_55;
        if _e78 {
        }
    }
    let _e81 = local_55;
    if _e81 {
    } else {
        (*fe_trapped_18) = true;
    }
    let _e83 = local_54;
    return _e83;
}

fn begin_prefixed_tag(a0_17: u32, a1_4: u32, a2_2: u32, fe_trapped_19: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_56: FeLocal_fe_shader_private_layout_0_;
    var local_57: bool = false;
    var fixed_local_4_: array<u32, 16> = array<u32, 16>();
    var local_58: FeLocal_fe_shader_private_layout_0_;
    var local_59: bool = false;

    if ((a0_17 < 2013265921u) == false) {
        let _e11 = fixed_local_4_;
        local_56 = FeLocal_fe_shader_private_layout_0_(_e11, 2u, a2_2, 0u, 0u);
        local_57 = true;
    }
    let _e54 = local_57;
    if _e54 {
    } else {
        if ((a1_4 < 2013265921u) == false) {
        } else {
            if ((a2_2 < 2013265921u) == false) {
            } else {
                let _e28 = from_u32_(a0_17, fe_trapped_19);
                fixed_local_4_[0] = _e28;
                let _e30 = from_u32_(a1_4, fe_trapped_19);
                fixed_local_4_[1] = _e30;
                let _e32 = fixed_local_4_;
                local_58 = FeLocal_fe_shader_private_layout_0_(_e32, 2u, a2_2, 0u, 1u);
                local_59 = true;
            }
            let _e41 = local_59;
            if _e41 {
            }
        }
        let _e49 = local_59;
        if _e49 {
        } else {
            let _e42 = fixed_local_4_;
            local_58 = FeLocal_fe_shader_private_layout_0_(_e42, 2u, a2_2, 0u, 0u);
        }
        let _e51 = local_58;
        local_56 = _e51;
    }
    let _e56 = local_56;
    return _e56;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_18: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_5: u32, fe_trapped_20: ptr<function, bool>) -> u32 {
    var local_60: u32;
    var local_61: bool = false;

    if (a1_5 < 16u) {
    } else {
        (*fe_trapped_20) = true;
    }
    let _e9 = (*a0_18).f0_[a1_5];
    return _e9;
}

fn finish_scheduled(a0_19: ptr<function, FeLocal_fe_shader_private_layout_0_>, fe_trapped_21: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_62: FeLocal_fe_shader_private_layout_3_;
    var local_63: bool = false;
    var fixed_local_19_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var local_64: u32 = u32();
    var loop_result_3: FeLocal_fe_shader_private_layout_3_;
    var loop_did_return_3: bool = false;
    var loop_header_carry_55_: bool;
    var fixed_local_57_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();

    let _e4 = (*a0_19).f4_;
    if ((_e4 == 1u) == false) {
    } else {
        let _e10 = (*a0_19).f3_;
        let _e12 = (*a0_19).f2_;
        if ((_e10 == _e12) == false) {
        } else {
            let _e17 = (*a0_19).f1_;
            if ((_e17 == 0u) == false) {
            } else {
                let _e23 = (*a0_19).f0_;
                local_64 = 0u;
                loop {
                    let _e32 = local_64;
                    let _e34 = (_e32 < 8u);
                    loop_header_carry_55_ = _e34;
                    if _e34 {
                        fixed_local_57_ = FeLocal_fe_shader_private_layout_4_(_e23);
                        let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_((&fixed_local_57_), _e32, fe_trapped_21);
                        fixed_local_19_[_e32].f0_ = _e37;
                        local_64 = (_e32 + 1u);
                        continue;
                    } else {
                        let _e43 = fixed_local_19_;
                        loop_result_3 = FeLocal_fe_shader_private_layout_3_(1u, FeLocal_fe_shader_private_layout_2_(_e43));
                        loop_did_return_3 = true;
                        break;
                    }
                }
                let _e52 = loop_did_return_3;
                if _e52 {
                    let _e54 = loop_result_3;
                    local_62 = _e54;
                    local_63 = true;
                }
            }
            let _e59 = local_63;
            if _e59 {
            }
        }
        let _e61 = local_63;
        if _e61 {
        }
    }
    let _e68 = local_63;
    if _e68 {
    } else {
        let _e62 = zero();
        local_62 = FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e62);
    }
    let _e70 = local_62;
    return _e70;
}

fn require_(a0_20: ptr<function, FeLocal_fe_shader_private_layout_3_>, a1_6: bool) -> FeLocal_fe_shader_private_layout_3_ {
    var local_65: FeLocal_fe_shader_private_layout_3_;
    var local_66: bool = false;

    let _e4 = (*a0_20).f0_;
    if ((_e4 == 1u) == false) {
    } else {
        if (a1_6 == false) {
        } else {
            let _e11 = (*a0_20);
            local_65 = _e11;
            local_66 = true;
        }
        let _e16 = local_66;
        if _e16 {
        }
    }
    let _e23 = local_66;
    if _e23 {
    } else {
        let _e17 = zero();
        local_65 = FeLocal_fe_shader_private_layout_3_(FeLocal_fe_shader_private_layout_3_().f0_, _e17);
    }
    let _e25 = local_65;
    return _e25;
}

fn digest(a0_21: ptr<function, FeLocal_fe_shader_private_layout_3_>) -> FeLocal_fe_shader_private_layout_2_ {
    var local_67: FeLocal_fe_shader_private_layout_2_;
    var local_68: bool = false;

    let _e3 = (*a0_21).f0_;
    if ((_e3 == 1u) == false) {
        let _e8 = zero();
        local_67 = _e8;
        local_68 = true;
    }
    let _e16 = local_68;
    if _e16 {
    } else {
        let _e13 = (*a0_21).f1_;
        local_67 = _e13;
    }
    let _e18 = local_67;
    return _e18;
}

fn is_valid(a0_22: ptr<function, FeLocal_fe_shader_private_layout_3_>) -> bool {
    let _e2 = (*a0_22).f0_;
    return (_e2 == 1u);
}

fn impl_Poseidon2Digest_field(a0_23: ptr<function, FeLocal_fe_shader_private_layout_2_>, a1_7: u32) -> u32 {
    var local_69: u32;
    var local_70: bool = false;

    if ((a1_7 < 8u) == false) {
        local_69 = 0u;
        local_70 = true;
    }
    let _e17 = local_70;
    if _e17 {
    } else {
        let _e14 = (*a0_23).f0_[a1_7].f0_;
        local_69 = _e14;
    }
    let _e19 = local_69;
    return _e19;
}

fn add(a0_24: u32, a1_8: u32, fe_trapped_22: ptr<function, bool>) -> u32 {
    var local_71: u32;
    var local_72: bool = false;

    if (a0_24 > (4294967295u - a1_8)) {
        (*fe_trapped_22) = true;
    }
    let _e9 = precision_lib_word_field_canonicalize_ga970_5fba((a0_24 + a1_8), fe_trapped_22);
    return _e9;
}

fn poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_25: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_9: u32, a2_3: u32, fe_trapped_23: ptr<function, bool>) {
    var local_73: u32;
    var local_74: bool = false;

    if (a1_9 < 16u) {
    } else {
        (*fe_trapped_23) = true;
    }
    (*a0_25).f0_[a1_9] = a2_3;
    return;
}

fn mat4_(a0_26: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_10: u32, fe_trapped_24: ptr<function, bool>) {
    var local_75: u32;
    var local_76: bool = false;

    let _e4 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_26, a1_10, fe_trapped_24);
    if (a1_10 > (4294967295u - 1u)) {
    } else {
        let _e10 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_26, (a1_10 + 1u), fe_trapped_24);
        if (a1_10 > (4294967295u - 2u)) {
        } else {
            let _e16 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_26, (a1_10 + 2u), fe_trapped_24);
            if (a1_10 > (4294967295u - 3u)) {
            } else {
                let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_26, (a1_10 + 3u), fe_trapped_24);
                let _e23 = add(_e4, _e10, fe_trapped_24);
                let _e24 = add(_e16, _e22, fe_trapped_24);
                let _e25 = add(_e23, _e24, fe_trapped_24);
                let _e26 = add(_e25, _e10, fe_trapped_24);
                let _e27 = add(_e25, _e22, fe_trapped_24);
                let _e28 = add(_e26, _e23, fe_trapped_24);
                poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_26, a1_10, _e28, fe_trapped_24);
                if (a1_10 > (4294967295u - 1u)) {
                } else {
                    let _e34 = add(_e26, _e16, fe_trapped_24);
                    let _e35 = add(_e34, _e16, fe_trapped_24);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_26, (a1_10 + 1u), _e35, fe_trapped_24);
                    if (a1_10 > (4294967295u - 2u)) {
                    } else {
                        let _e41 = add(_e27, _e24, fe_trapped_24);
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_26, (a1_10 + 2u), _e41, fe_trapped_24);
                        if (a1_10 > (4294967295u - 3u)) {
                        } else {
                            let _e47 = add(_e27, _e4, fe_trapped_24);
                            let _e48 = add(_e47, _e4, fe_trapped_24);
                            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_26, (a1_10 + 3u), _e48, fe_trapped_24);
                            local_76 = true;
                        }
                        let _e52 = local_76;
                        if _e52 {
                        }
                    }
                    let _e54 = local_76;
                    if _e54 {
                    }
                }
                let _e56 = local_76;
                if _e56 {
                }
            }
            let _e58 = local_76;
            if _e58 {
            }
        }
        let _e60 = local_76;
        if _e60 {
        }
    }
    let _e63 = local_76;
    if _e63 {
    } else {
        (*fe_trapped_24) = true;
    }
    return;
}

fn external_linear(a0_27: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_25: ptr<function, bool>) {
    var local_77: u32 = u32();
    var loop_result_4: u32;
    var loop_did_return_4: bool = false;
    var loop_header_carry_48_: bool;
    var local_78: u32 = u32();

    mat4_(a0_27, 0u, fe_trapped_25);
    mat4_(a0_27, 4u, fe_trapped_25);
    mat4_(a0_27, 8u, fe_trapped_25);
    mat4_(a0_27, 12u, fe_trapped_25);
    let _e7 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 0u, fe_trapped_25);
    let _e9 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 4u, fe_trapped_25);
    let _e10 = add(_e7, _e9, fe_trapped_25);
    let _e12 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 8u, fe_trapped_25);
    let _e13 = add(_e10, _e12, fe_trapped_25);
    let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 12u, fe_trapped_25);
    let _e16 = add(_e13, _e15, fe_trapped_25);
    let _e18 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 1u, fe_trapped_25);
    let _e20 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 5u, fe_trapped_25);
    let _e21 = add(_e18, _e20, fe_trapped_25);
    let _e23 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 9u, fe_trapped_25);
    let _e24 = add(_e21, _e23, fe_trapped_25);
    let _e26 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 13u, fe_trapped_25);
    let _e27 = add(_e24, _e26, fe_trapped_25);
    let _e29 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 2u, fe_trapped_25);
    let _e31 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 6u, fe_trapped_25);
    let _e32 = add(_e29, _e31, fe_trapped_25);
    let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 10u, fe_trapped_25);
    let _e35 = add(_e32, _e34, fe_trapped_25);
    let _e37 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 14u, fe_trapped_25);
    let _e38 = add(_e35, _e37, fe_trapped_25);
    let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 3u, fe_trapped_25);
    let _e42 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 7u, fe_trapped_25);
    let _e43 = add(_e40, _e42, fe_trapped_25);
    let _e45 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 11u, fe_trapped_25);
    let _e46 = add(_e43, _e45, fe_trapped_25);
    let _e48 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, 15u, fe_trapped_25);
    let _e49 = add(_e46, _e48, fe_trapped_25);
    local_77 = 0u;
    loop {
        let _e55 = local_77;
        let _e57 = (_e55 < 16u);
        loop_header_carry_48_ = _e57;
        if _e57 {
            switch (_e55 & 3u) {
                case 0u: {
                    local_78 = _e16;
                }
                case 1u: {
                    local_78 = _e27;
                }
                case 2u: {
                    local_78 = _e38;
                }
                default: {
                    local_78 = _e49;
                }
            }
            let _e66 = local_78;
            let _e67 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_27, _e55, fe_trapped_25);
            let _e68 = add(_e67, _e66, fe_trapped_25);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_27, _e55, _e68, fe_trapped_25);
            local_77 = (_e55 + 1u);
            continue;
        } else {
            loop_did_return_4 = true;
            break;
        }
    }
    return;
}

fn multiply(a0_28: u32, a1_11: u32, a2_4: u32, fe_trapped_26: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_9_ {
    let _e4 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(a1_11, a2_4, fe_trapped_26);
    return FeLocal_fe_shader_private_layout_9_(FeLocal_fe_shader_private_layout_8_(a0_28), FeLocal_fe_shader_private_layout_1_(_e4));
}

fn poseidon2_power7_plan(a0_29: u32, a1_12: u32, fe_trapped_27: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_12_ {
    let _e3 = multiply(a0_29, a1_12, a1_12, fe_trapped_27);
    let _e10 = multiply(_e3.f0_.f0_, _e3.f1_.f0_, _e3.f1_.f0_, fe_trapped_27);
    let _e15 = multiply(_e10.f0_.f0_, a1_12, _e3.f1_.f0_, fe_trapped_27);
    let _e22 = multiply(_e15.f0_.f0_, _e15.f1_.f0_, _e10.f1_.f0_, fe_trapped_27);
    return FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_8_(_e22.f0_.f0_), FeLocal_fe_shader_private_layout_1_(_e22.f1_.f0_));
}

fn internal_linear(a0_30: ptr<function, FeLocal_fe_shader_private_layout_4_>, fe_trapped_28: ptr<function, bool>) {
    var local_79: u32 = u32();
    var local_80: u32 = u32();
    var loop_result_5: u32;
    var loop_did_return_5: bool = false;
    var loop_header_carry_4_: bool;

    local_79 = 0u;
    local_80 = 0u;
    loop {
        let _e10 = local_79;
        let _e12 = local_80;
        let _e14 = (_e12 < 16u);
        loop_header_carry_4_ = _e14;
        if _e14 {
            let _e15 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, _e12, fe_trapped_28);
            let _e16 = add(_e10, _e15, fe_trapped_28);
            local_79 = _e16;
            local_80 = (_e12 + 1u);
            continue;
        } else {
            let _e22 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 0u, fe_trapped_28);
            let _e24 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e22, 1476395013u, fe_trapped_28);
            let _e25 = add(_e10, _e24, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 0u, _e25, fe_trapped_28);
            let _e28 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 1u, fe_trapped_28);
            let _e30 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e28, 268435454u, fe_trapped_28);
            let _e31 = add(_e10, _e30, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 1u, _e31, fe_trapped_28);
            let _e34 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 2u, fe_trapped_28);
            let _e36 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e34, 536870908u, fe_trapped_28);
            let _e37 = add(_e10, _e36, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 2u, _e37, fe_trapped_28);
            let _e40 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 3u, fe_trapped_28);
            let _e42 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e40, 134217727u, fe_trapped_28);
            let _e43 = add(_e10, _e42, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 3u, _e43, fe_trapped_28);
            let _e46 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 4u, fe_trapped_28);
            let _e48 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e46, 805306362u, fe_trapped_28);
            let _e49 = add(_e10, _e48, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 4u, _e49, fe_trapped_28);
            let _e52 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 5u, fe_trapped_28);
            let _e54 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e52, 1073741816u, fe_trapped_28);
            let _e55 = add(_e10, _e54, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 5u, _e55, fe_trapped_28);
            let _e58 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 6u, fe_trapped_28);
            let _e60 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e58, 1879048194u, fe_trapped_28);
            let _e61 = add(_e10, _e60, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 6u, _e61, fe_trapped_28);
            let _e64 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 7u, fe_trapped_28);
            let _e66 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e64, 1207959559u, fe_trapped_28);
            let _e67 = add(_e10, _e66, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 7u, _e67, fe_trapped_28);
            let _e70 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 8u, fe_trapped_28);
            let _e72 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e70, 939524105u, fe_trapped_28);
            let _e73 = add(_e10, _e72, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 8u, _e73, fe_trapped_28);
            let _e76 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 9u, fe_trapped_28);
            let _e78 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e76, 16777216u, fe_trapped_28);
            let _e79 = add(_e10, _e78, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 9u, _e79, fe_trapped_28);
            let _e82 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 10u, fe_trapped_28);
            let _e84 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e82, 1073741824u, fe_trapped_28);
            let _e85 = add(_e10, _e84, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 10u, _e85, fe_trapped_28);
            let _e88 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 11u, fe_trapped_28);
            let _e90 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e88, 536870912u, fe_trapped_28);
            let _e91 = add(_e10, _e90, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 11u, _e91, fe_trapped_28);
            let _e94 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 12u, fe_trapped_28);
            let _e96 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e94, 32u, fe_trapped_28);
            let _e97 = add(_e10, _e96, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 12u, _e97, fe_trapped_28);
            let _e100 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 13u, fe_trapped_28);
            let _e102 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e100, 1996488705u, fe_trapped_28);
            let _e103 = add(_e10, _e102, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 13u, _e103, fe_trapped_28);
            let _e106 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 14u, fe_trapped_28);
            let _e108 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e106, 1744830465u, fe_trapped_28);
            let _e109 = add(_e10, _e108, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 14u, _e109, fe_trapped_28);
            let _e112 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_(a0_30, 15u, fe_trapped_28);
            let _e114 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e112, 2013265889u, fe_trapped_28);
            let _e115 = add(_e10, _e114, fe_trapped_28);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd(a0_30, 15u, _e115, fe_trapped_28);
            loop_did_return_5 = true;
            break;
        }
    }
    return;
}

fn poseidon2_permutation_execution(a0_31: u32, a1_13: array<u32, 16>, a2_5: ptr<function, FeLocal_fe_shader_private_layout_10_>, fe_trapped_29: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_11_ {
    var fixed_local_8_1: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_81: u32 = u32();
    var local_82: u32 = u32();
    var local_83: u32 = u32();
    var loop_result_6: FeLocal_fe_shader_private_layout_11_;
    var loop_did_return_6: bool = false;
    var loop_header_carry_11_: bool;
    var local_84: u32 = u32();
    var local_85: u32 = u32();
    var local_86: u32 = u32();
    var local_87: u32 = u32();
    var local_88: u32 = u32();
    var local_89: u32 = u32();
    var loop_result_7: FeLocal_fe_shader_private_layout_11_;
    var loop_did_return_7: bool = false;
    var loop_header_carry_14_: bool;
    var loop_result_8: FeLocal_fe_shader_private_layout_11_;
    var loop_did_return_8: bool = false;
    var loop_header_carry_49_: bool;
    var local_90: u32 = u32();
    var local_91: u32 = u32();
    var local_92: u32 = u32();
    var loop_result_9: FeLocal_fe_shader_private_layout_11_;
    var loop_did_return_9: bool = false;
    var loop_header_carry_77_: bool;
    var local_93: u32 = u32();
    var local_94: u32 = u32();
    var local_95: u32 = u32();
    var loop_result_10: FeLocal_fe_shader_private_layout_11_;
    var loop_did_return_10: bool = false;
    var loop_header_carry_88_: bool;

    fixed_local_8_1 = FeLocal_fe_shader_private_layout_4_(a1_13);
    external_linear((&fixed_local_8_1), fe_trapped_29);
    local_81 = a0_31;
    local_82 = 0u;
    local_83 = 0u;
    loop {
        let _e17 = local_81;
        let _e19 = local_82;
        let _e21 = local_83;
        let _e23 = (_e21 < 4u);
        loop_header_carry_11_ = _e23;
        if _e23 {
            local_87 = _e17;
            local_88 = _e19;
            local_89 = 0u;
            loop {
                let _e36 = local_87;
                let _e38 = local_88;
                let _e40 = local_89;
                let _e42 = (_e40 < 16u);
                loop_header_carry_14_ = _e42;
                if _e42 {
                    if (_e38 < 141u) {
                    } else {
                        (*fe_trapped_29) = true;
                        break;
                    }
                    let _e48 = (*a2_5).f0_[_e38];
                    let _e49 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_((&fixed_local_8_1), _e40, fe_trapped_29);
                    let _e50 = add(_e49, _e48, fe_trapped_29);
                    let _e51 = poseidon2_power7_plan(_e36, _e50, fe_trapped_29);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd((&fixed_local_8_1), _e40, _e51.f1_.f0_, fe_trapped_29);
                    local_87 = _e51.f0_.f0_;
                    local_88 = (_e38 + 1u);
                    local_89 = (_e40 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e65 = local_87;
            let _e67 = local_88;
            external_linear((&fixed_local_8_1), fe_trapped_29);
            if (_e21 > (4294967295u - 1u)) {
            } else {
                local_81 = _e65;
                local_82 = _e67;
                local_83 = (_e21 + 1u);
                continue;
            }
            (*fe_trapped_29) = true;
            break;
        } else {
            local_84 = _e17;
            local_85 = _e19;
            local_86 = 0u;
            break;
        }
    }
    let _e83 = local_81;
    let _e85 = local_82;
    local_84 = _e83;
    local_85 = _e85;
    local_86 = 0u;
    loop {
        let _e92 = local_84;
        let _e94 = local_85;
        let _e96 = local_86;
        let _e98 = (_e96 < 13u);
        loop_header_carry_49_ = _e98;
        if _e98 {
            if (_e94 < 141u) {
            } else {
                (*fe_trapped_29) = true;
                break;
            }
            let _e107 = (*a2_5).f0_[_e94];
            let _e109 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_((&fixed_local_8_1), 0u, fe_trapped_29);
            let _e110 = add(_e109, _e107, fe_trapped_29);
            let _e111 = poseidon2_power7_plan(_e92, _e110, fe_trapped_29);
            poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd((&fixed_local_8_1), 0u, _e111.f1_.f0_, fe_trapped_29);
            internal_linear((&fixed_local_8_1), fe_trapped_29);
            local_84 = _e111.f0_.f0_;
            local_85 = (_e94 + 1u);
            local_86 = (_e96 + 1u);
            continue;
        } else {
            local_90 = _e94;
            local_91 = _e92;
            local_92 = 0u;
            break;
        }
    }
    let _e130 = local_84;
    let _e132 = local_85;
    local_90 = _e132;
    local_91 = _e130;
    local_92 = 0u;
    loop {
        let _e139 = local_90;
        let _e141 = local_91;
        let _e143 = local_92;
        let _e145 = (_e143 < 4u);
        loop_header_carry_77_ = _e145;
        if _e145 {
            local_93 = _e141;
            local_94 = _e139;
            local_95 = 0u;
            loop {
                let _e155 = local_93;
                let _e157 = local_94;
                let _e159 = local_95;
                let _e161 = (_e159 < 16u);
                loop_header_carry_88_ = _e161;
                if _e161 {
                    if (_e157 < 141u) {
                    } else {
                        (*fe_trapped_29) = true;
                        break;
                    }
                    let _e167 = (*a2_5).f0_[_e157];
                    let _e168 = poseidon_baby_bear_lib_impl_Poseidon2State_bb49_field_7be6_((&fixed_local_8_1), _e159, fe_trapped_29);
                    let _e169 = add(_e168, _e167, fe_trapped_29);
                    let _e170 = poseidon2_power7_plan(_e155, _e169, fe_trapped_29);
                    poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd((&fixed_local_8_1), _e159, _e170.f1_.f0_, fe_trapped_29);
                    local_93 = _e170.f0_.f0_;
                    local_94 = (_e157 + 1u);
                    local_95 = (_e159 + 1u);
                    continue;
                } else {
                    break;
                }
            }
            let _e184 = local_93;
            let _e186 = local_94;
            external_linear((&fixed_local_8_1), fe_trapped_29);
            if (_e143 > (4294967295u - 1u)) {
            } else {
                local_90 = _e186;
                local_91 = _e184;
                local_92 = (_e143 + 1u);
                continue;
            }
            (*fe_trapped_29) = true;
            break;
        } else {
            let _e197 = fixed_local_8_1.f0_;
            loop_result_9 = FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_8_(_e141), _e197);
            loop_did_return_9 = true;
            break;
        }
    }
    let _e205 = loop_result_9;
    return _e205;
}

fn permute(a0_32: ptr<function, FeLocal_fe_shader_private_layout_4_>, a1_14: ptr<function, FeLocal_fe_shader_private_layout_10_>, fe_trapped_30: ptr<function, bool>) {
    let _e4 = (*a0_32).f0_;
    let _e6 = poseidon2_permutation_execution(0u, _e4, a1_14, fe_trapped_30);
    (*a0_32).f0_ = _e6.f1_;
    return;
}

fn absorb_scheduled_block(a0_33: ptr<function, FeLocal_fe_shader_private_layout_0_>, a1_15: ptr<function, array<FeLocal_fe_shader_private_layout_1_, 8>>, a2_6: u32, a3_2: bool, fe_trapped_31: ptr<function, bool>) {
    var local_96: u32;
    var local_97: bool = false;
    var local_98: u32 = u32();
    var local_99: u32;
    var local_100: bool = false;
    var local_101: bool = bool();
    var local_102: bool = bool();
    var local_103: u32 = u32();
    var fixed_local_643_: FeLocal_fe_shader_private_layout_10_ = FeLocal_fe_shader_private_layout_10_();
    var fixed_local_649_: FeLocal_fe_shader_private_layout_4_ = FeLocal_fe_shader_private_layout_4_();
    var local_104: u32 = u32();
    var loop_result_11: u32;
    var loop_did_return_11: bool = false;
    var loop_header_carry_652_: bool;
    var local_105: u32 = u32();

    let _e10 = ((8u < a2_6) == false);
    let _e12 = (*a0_33).f3_;
    let _e14 = (*a0_33).f2_;
    let _e17 = ((_e14 < _e12) == false);
    if _e17 {
        let _e19 = (*a0_33).f2_;
        let _e21 = (*a0_33).f3_;
        if (_e19 < _e21) {
            (*fe_trapped_31) = true;
        } else {
            local_98 = (_e19 - _e21);
        }
    }
    let _e28 = local_98;
    let _e33 = (*a0_33).f1_;
    let _e37 = (*a0_33).f1_;
    if (_e37 > (4294967295u - a2_6)) {
    } else {
        let _e47 = (*a0_33).f3_;
        if (_e47 > (4294967295u - a2_6)) {
        } else {
            let _e53 = (*a0_33).f2_;
            let _e56 = (*a0_33).f1_;
            if (_e56 > (4294967295u - a2_6)) {
            } else {
                if (((_e47 + a2_6) == _e53) == a3_2) {
                    if (((_e56 + a2_6) == 8u) | a3_2) {
                        local_101 = true;
                    }
                }
                let _e70 = local_101;
                let _e72 = (*a0_33).f4_;
                if (_e72 == 1u) {
                    if ((_e10 == false) | (_e17 == false)) {
                    } else {
                        if ((((_e28 < a2_6) == false) == false) | ((_e33 < 8u) == false)) {
                        } else {
                            if ((((8u < (_e37 + a2_6)) == false) == false) | (_e70 == false)) {
                            } else {
                                local_102 = true;
                            }
                        }
                    }
                }
                let _e94 = local_102;
                if _e10 {
                    local_103 = a2_6;
                } else {
                    local_103 = 8u;
                }
                let _e99 = local_103;
                fixed_local_643_ = FeLocal_fe_shader_private_layout_10_(array<u32, 141>(1582131512u, 1899519471u, 1641921850u, 462688640u, 1293997949u, 1380417575u, 1932416963u, 283521298u, 1016708647u, 35751290u, 1270782647u, 851730739u, 795004022u, 929571430u, 523703523u, 1593957757u, 895976710u, 1742343460u, 917700746u, 1516725708u, 1170237629u, 785693164u, 613651155u, 352999196u, 678775274u, 1005433272u, 1704854670u, 1174551920u, 508930349u, 530338447u, 1327158816u, 1417652352u, 1153538870u, 583201050u, 397833841u, 1440603828u, 454600685u, 174490638u, 171758601u, 1998476616u, 1403697810u, 1807736944u, 450348306u, 1458895865u, 787037868u, 1063762964u, 1987002214u, 481645916u, 1231767638u, 1323639433u, 238360103u, 2012412459u, 1024945356u, 1108359895u, 1284135849u, 606928406u, 1021455954u, 719347978u, 659671051u, 769588663u, 805534062u, 592213995u, 1752728055u, 663410947u, 250494022u, 528496384u, 1472966118u, 977089650u, 1885890237u, 1094557811u, 147492661u, 664163003u, 398852570u, 336233633u, 1628648315u, 888594966u, 586791090u, 999830298u, 304461056u, 552699684u, 450698925u, 667466464u, 1736509752u, 1327760865u, 1153241151u, 816675655u, 1076172858u, 1914832527u, 1668723429u, 1365579850u, 975704528u, 1031625628u, 1393317533u, 1554700828u, 1023828605u, 1610378860u, 347744760u, 1909572073u, 739227895u, 428565985u, 633143046u, 121797685u, 94048546u, 1369350241u, 1250010422u, 114268841u, 515033604u, 49052844u, 1962329907u, 1380892638u, 1860017417u, 64711457u, 9758460u, 1681838395u, 710850601u, 1020228997u, 1414164790u, 1531515535u, 36158805u, 713604525u, 89935127u, 1870801994u, 395985906u, 1122769045u, 1760811055u, 819787042u, 134654834u, 1755145179u, 18433016u, 1701878989u, 1782339297u, 1483861396u, 962480061u, 1857590724u, 222440409u, 63223417u, 515206622u, 1348364213u, 973414686u, 1591066884u, 705852913u));
                let _e246 = (*a0_33).f0_;
                fixed_local_649_ = FeLocal_fe_shader_private_layout_4_(_e246);
                local_104 = 0u;
                loop {
                    let _e255 = local_104;
                    let _e256 = (_e255 < _e99);
                    loop_header_carry_652_ = _e256;
                    if _e256 {
                        let _e258 = (*a0_33).f1_;
                        if (_e258 > (4294967295u - _e255)) {
                            (*fe_trapped_31) = true;
                            break;
                        }
                        let _e266 = (*a1_15)[_e255].f0_;
                        poseidon_baby_bear_lib_impl_Poseidon2State_bb49_set_field_4ddd((&fixed_local_649_), (_e258 + _e255), _e266, fe_trapped_31);
                        local_104 = (_e255 + 1u);
                        continue;
                    } else {
                        break;
                    }
                }
                permute((&fixed_local_649_), (&fixed_local_643_), fe_trapped_31);
                let _e272 = fixed_local_649_.f0_;
                (*a0_33).f0_ = _e272;
                (*a0_33).f1_ = 0u;
                let _e277 = (*a0_33).f3_;
                if (_e277 > (4294967295u - a2_6)) {
                    (*fe_trapped_31) = true;
                }
                (*a0_33).f3_ = (_e277 + a2_6);
                if _e94 {
                    local_105 = 1u;
                }
                let _e288 = local_105;
                (*a0_33).f4_ = _e288;
                local_100 = true;
            }
            let _e293 = local_100;
            if _e293 {
            }
        }
        let _e295 = local_100;
        if _e295 {
        }
    }
    let _e298 = local_100;
    if _e298 {
    } else {
        (*fe_trapped_31) = true;
    }
    return;
}

fn store_digest_at(a1_16: u32, a2_7: ptr<function, FeLocal_fe_shader_private_layout_2_>, fe_trapped_32: ptr<function, bool>) {
    var local_106: u32 = u32();
    var loop_result_12: u32;
    var loop_did_return_12: bool = false;
    var loop_header_carry_6_: bool;

    local_106 = 0u;
    loop {
        let _e9 = local_106;
        let _e11 = (_e9 < 8u);
        loop_header_carry_6_ = _e11;
        if _e11 {
            if (a1_16 > (4294967295u - _e9)) {
                (*fe_trapped_32) = true;
                break;
            }
            let _e17 = impl_Poseidon2Digest_field(a2_7, _e9);
            let _e19 = precision_lib_word_field_montgomery_mul_ga970_0ae3_(_e17, 1u, fe_trapped_32);
            proof[i32((a1_16 + _e9))] = _e19;
            local_106 = (_e9 + 1u);
            continue;
        } else {
            loop_did_return_12 = true;
            break;
        }
    }
    return;
}

@compute @workgroup_size(64, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;
    var local_4: bool = bool();
    var fixed_local_76_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_79_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var fixed_local_93_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_5: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_96_: bool;
    var local_6: u32 = u32();
    var local_7: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var fixed_local_199_: array<FeLocal_fe_shader_private_layout_1_, 8> = array<FeLocal_fe_shader_private_layout_1_, 8>();
    var local_8: u32 = u32();
    var fixed_local_203_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_205_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_207_: FeLocal_fe_shader_private_layout_3_ = FeLocal_fe_shader_private_layout_3_();
    var fixed_local_210_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();
    var local_9: u32 = u32();
    var loop_result_1: u32;
    var loop_did_return_1: bool = false;
    var loop_header_carry_216_: bool;
    var fixed_local_225_: FeLocal_fe_shader_private_layout_2_ = FeLocal_fe_shader_private_layout_2_();

    if (global_invocation_id.x < 12u) {
        let _e9 = fri_round_placement_g5649_(global_invocation_id.x, (&fe_trapped));
        store_fri_round_placement_at(237550u, global_invocation_id.x, _e9, (&fe_trapped));
    }
    if (global_invocation_id.x == 0u) {
        let _e16 = load_digest_at(460262u, (&fe_trapped));
        fixed_local_76_ = _e16;
        let _e20 = load_digest_at(480755u, (&fe_trapped));
        fixed_local_79_ = _e20;
        let _e26 = proof[i32(460270u)];
        if (_e26 == 1u) {
            let _e32 = proof[i32(480772u)];
            if (_e32 == 1u) {
                local_4 = true;
            }
        }
        let _e38 = local_4;
        let _e42 = begin_prefixed_tag(1111699507u, 16u, 16u, (&fe_trapped));
        fixed_local_93_ = _e42;
        local_5 = 0u;
        loop {
            let _e50 = local_5;
            let _e52 = (_e50 < 3u);
            loop_header_carry_96_ = _e52;
            if _e52 {
                if (_e50 == 0u) {
                    local_6 = 6u;
                } else {
                    if (_e50 == 1u) {
                        local_6 = 8u;
                    } else {
                        local_6 = 2u;
                    }
                }
                let _e66 = local_6;
                if (_e50 == 0u) {
                    let _e72 = impl_Poseidon2Digest_field((&fixed_local_76_), 0u);
                    let _e74 = impl_Poseidon2Digest_field((&fixed_local_76_), 1u);
                    let _e76 = impl_Poseidon2Digest_field((&fixed_local_76_), 2u);
                    let _e78 = impl_Poseidon2Digest_field((&fixed_local_76_), 3u);
                    let _e80 = impl_Poseidon2Digest_field((&fixed_local_76_), 4u);
                    let _e82 = impl_Poseidon2Digest_field((&fixed_local_76_), 5u);
                    local_7 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e72), FeLocal_fe_shader_private_layout_1_(_e74), FeLocal_fe_shader_private_layout_1_(_e76), FeLocal_fe_shader_private_layout_1_(_e78), FeLocal_fe_shader_private_layout_1_(_e80), FeLocal_fe_shader_private_layout_1_(_e82), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
                } else {
                    if (_e50 == 1u) {
                        let _e95 = impl_Poseidon2Digest_field((&fixed_local_76_), 6u);
                        let _e97 = impl_Poseidon2Digest_field((&fixed_local_76_), 7u);
                        let _e99 = impl_Poseidon2Digest_field((&fixed_local_79_), 0u);
                        let _e101 = impl_Poseidon2Digest_field((&fixed_local_79_), 1u);
                        let _e103 = impl_Poseidon2Digest_field((&fixed_local_79_), 2u);
                        let _e105 = impl_Poseidon2Digest_field((&fixed_local_79_), 3u);
                        let _e107 = impl_Poseidon2Digest_field((&fixed_local_79_), 4u);
                        let _e109 = impl_Poseidon2Digest_field((&fixed_local_79_), 5u);
                        local_7 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e95), FeLocal_fe_shader_private_layout_1_(_e97), FeLocal_fe_shader_private_layout_1_(_e99), FeLocal_fe_shader_private_layout_1_(_e101), FeLocal_fe_shader_private_layout_1_(_e103), FeLocal_fe_shader_private_layout_1_(_e105), FeLocal_fe_shader_private_layout_1_(_e107), FeLocal_fe_shader_private_layout_1_(_e109));
                    } else {
                        let _e120 = impl_Poseidon2Digest_field((&fixed_local_79_), 6u);
                        let _e122 = impl_Poseidon2Digest_field((&fixed_local_79_), 7u);
                        local_7 = array<FeLocal_fe_shader_private_layout_1_, 8>(FeLocal_fe_shader_private_layout_1_(_e120), FeLocal_fe_shader_private_layout_1_(_e122), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_(), FeLocal_fe_shader_private_layout_1_());
                    }
                }
                let _e136 = local_7;
                fixed_local_199_ = _e136;
                absorb_scheduled_block((&fixed_local_93_), (&fixed_local_199_), _e66, (_e50 == 2u), (&fe_trapped));
                local_5 = (_e50 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e144 = finish_scheduled((&fixed_local_93_), (&fe_trapped));
        fixed_local_203_ = _e144;
        let _e147 = require_((&fixed_local_203_), _e38);
        fixed_local_205_ = _e147;
        let _e150 = digest((&fixed_local_205_));
        fixed_local_207_ = _e147;
        let _e153 = is_valid((&fixed_local_207_));
        if _e153 {
            local_8 = 1u;
        }
        let _e157 = local_8;
        fixed_local_210_ = _e150;
        store_digest_at(480763u, (&fixed_local_210_), (&fe_trapped));
        proof[i32(480773u)] = _e157;
        local_9 = 0u;
        loop {
            let _e169 = local_9;
            let _e171 = (_e169 < 2u);
            loop_header_carry_216_ = _e171;
            if _e171 {
                let _e173 = (_e169 * 13u);
                fixed_local_225_ = _e150;
                store_digest_at((513822u + (_e173 << 3u)), (&fixed_local_225_), (&fe_trapped));
                proof[i32((514078u + _e173))] = _e157;
                local_9 = (_e169 + 1u);
                continue;
            } else {
                break;
            }
        }
        fri_scratch[i32(237706u)] = 0u;
    }
    let _e202 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 64u)) + (global_invocation_id.z * 64u))] = u32(_e202);
}
