struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: f32,
    f7_: f32,
    f8_: f32,
    f9_: f32,
    f10_: u32,
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
}

struct cache_element {
    x0_: f32,
    x1_: f32,
    x2_: f32,
    x3_: f32,
    y0_: f32,
    y1_: f32,
    y2_: f32,
    y3_: f32,
    zoom: f32,
    res: f32,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct reference_element {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct Params {
    p14_: f32,
    p15_: f32,
    p16_: f32,
    p17_: f32,
    p18_: f32,
    p19_: f32,
    p20_: f32,
    p21_: f32,
    p22_: f32,
    p23_: f32,
    p24_: f32,
    p25_: f32,
    p26_: f32,
    p27_: f32,
    p28_: f32,
}

@group(0) @binding(0)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn to_i32_(a0_: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_)), 2147483648u, (a0_ <= -2147483600f)), 2147483647u, (a0_ >= 2147483600f)), (a0_ == a0_));
}

fn iteration_limit(a0_1: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_3: u32 = u32();
    var local_4: f32 = f32();
    var local_5: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_6: u32 = u32();
    var local_7: f32 = f32();
    var local_8: u32;
    var local_9: bool = false;
    var local_10: u32 = u32();

    local_3 = 0u;
    local_4 = a0_1;
    local_5 = 0u;
    loop {
        let _e12 = local_3;
        let _e14 = local_4;
        let _e16 = local_5;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_6 = (_e12 + 1u);
                    local_7 = (_e14 * 2f);
                }
            } else {
                local_6 = _e12;
                local_7 = _e14;
            }
            let _e36 = local_6;
            let _e38 = local_7;
            local_3 = _e36;
            local_4 = _e38;
            local_5 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_3;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_10 = 8192u;
        } else {
            local_10 = _e60;
        }
        let _e71 = local_10;
        local_8 = _e71;
        local_9 = true;
    }
    let _e77 = local_9;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_8;
    return _e79;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();

    let _e6 = params.p22_;
    let _e8 = params.p23_;
    let _e10 = params.p24_;
    let _e12 = params.p25_;
    let _e14 = params.p27_;
    let _e20 = reference[i32(0u)].active_valid;
    let _e22 = reference[i32(0u)].pending;
    if (_e22 == 1u) {
    } else {
        if (_e20 == 0u) {
        } else {
            if (0.5f <= _e14) {
            } else {
                if ((_e10 - _e12) < 60f) {
                    local_1 = true;
                }
                let _e172 = local_1;
                if _e172 {
                } else {
                    let _e38 = cache[i32(0u)].x0_;
                    let _e40 = cache[i32(0u)].x1_;
                    let _e42 = cache[i32(0u)].x2_;
                    let _e44 = cache[i32(0u)].x3_;
                    let _e46 = cache[i32(0u)].y0_;
                    let _e48 = cache[i32(0u)].y1_;
                    let _e50 = cache[i32(0u)].y2_;
                    let _e52 = cache[i32(0u)].y3_;
                    let _e54 = cache[i32(0u)].zoom;
                    let _e56 = cache[i32(0u)].res;
                    let _e58 = cache[i32(0u)].cursor;
                    let _e60 = cache[i32(0u)].aa;
                    let _e62 = cache[i32(0u)].budget;
                    let _e64 = cache[i32(0u)].radius;
                    let _e66 = cache[i32(0u)].preview_dirty;
                    let _e68 = cache[i32(0u)].blur_dirty;
                    let _e70 = cache[i32(0u)].epoch;
                    let _e75 = to_i32_(((_e8 + 127f) / 128f));
                    let _e80 = to_i32_(((_e8 + 255f) / 256f));
                    let _e85 = to_i32_(((_e8 + 255f) / 256f));
                    let _e86 = iteration_limit(_e6, (&fe_trapped));
                    let _e90 = ((_e86 + 2047u) / 2048u);
                    let _e94 = (_e90 * _e75);
                    let _e95 = (_e90 != 0u);
                    if (_e95 && (_e75 > (4294967295u / select(1u, _e90, _e95)))) {
                    } else {
                        let _e103 = (_e94 * _e80);
                        let _e104 = (_e94 != 0u);
                        if (_e104 && (_e80 > (4294967295u / select(1u, _e94, _e104)))) {
                        } else {
                            let _e112 = (_e85 * _e85);
                            let _e113 = (_e85 != 0u);
                            if (_e113 && (_e85 > (4294967295u / select(1u, _e85, _e113)))) {
                            } else {
                                let _e119 = (_e103 + _e112);
                                if (_e103 > (4294967295u - _e112)) {
                                } else {
                                    let _e124 = (_e58 + 1u);
                                    if (_e58 > (4294967295u - 1u)) {
                                        fe_trapped = true;
                                    }
                                    if (_e58 < _e119) {
                                    } else {
                                        local_1 = true;
                                    }
                                    let _e161 = local_1;
                                    if _e161 {
                                    } else {
                                        if (_e124 < _e119) {
                                        } else {
                                            local_2 = 1u;
                                        }
                                        let _e136 = local_2;
                                        cache[i32(0u)].x0_ = _e38;
                                        cache[i32(0u)].x1_ = _e40;
                                        cache[i32(0u)].x2_ = _e42;
                                        cache[i32(0u)].x3_ = _e44;
                                        cache[i32(0u)].y0_ = _e46;
                                        cache[i32(0u)].y1_ = _e48;
                                        cache[i32(0u)].y2_ = _e50;
                                        cache[i32(0u)].y3_ = _e52;
                                        cache[i32(0u)].zoom = _e54;
                                        cache[i32(0u)].res = _e56;
                                        cache[i32(0u)].cursor = _e124;
                                        cache[i32(0u)].aa = _e60;
                                        cache[i32(0u)].budget = _e62;
                                        cache[i32(0u)].radius = _e64;
                                        cache[i32(0u)].preview_dirty = _e66;
                                        cache[i32(0u)].blur_dirty = _e68;
                                        cache[i32(0u)].epoch = _e70;
                                        cache[i32(0u)].completed = _e136;
                                        local_1 = true;
                                    }
                                }
                                let _e163 = local_1;
                                if _e163 {
                                }
                            }
                            let _e165 = local_1;
                            if _e165 {
                            }
                        }
                        let _e167 = local_1;
                        if _e167 {
                        }
                    }
                    let _e170 = local_1;
                    if _e170 {
                    } else {
                        fe_trapped = true;
                    }
                }
            }
            let _e174 = local_1;
            if _e174 {
            }
        }
        let _e176 = local_1;
        if _e176 {
        }
    }
    let _e178 = fe_trapped;
    trap[0u] = u32(_e178);
}
