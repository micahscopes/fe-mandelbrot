struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_0_ {
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

struct FeLocal_fe_shader_private_layout_2_ {
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
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
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
    p29_: f32,
    p30_: f32,
}

@group(0) @binding(0)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_2_) -> bool {
    var local_4: bool;
    var local_5: bool = false;
    var local_6: bool = bool();

    if (a0_.f13_ < 0.5f) {
        if (60f <= (a0_.f10_ - a0_.f11_)) {
            local_6 = true;
        }
    }
    let _e14 = local_6;
    return _e14;
}

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_1_, a1_: FeLocal_fe_shader_private_layout_2_) -> bool {
    var local_7: bool;
    var local_8: bool = false;
    var local_9: bool = bool();

    if (a0_1.f2_ == 0u) {
        if (a0_1.f1_ == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_9 = true;
            }
        }
    }
    let _e14 = local_9;
    return _e14;
}

fn iteration_limit(a0_2: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_10: u32 = u32();
    var local_11: f32 = f32();
    var local_12: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_13: u32 = u32();
    var local_14: f32 = f32();
    var local_15: u32;
    var local_16: bool = false;
    var local_17: u32 = u32();

    local_10 = 0u;
    local_11 = a0_2;
    local_12 = 0u;
    loop {
        let _e12 = local_10;
        let _e14 = local_11;
        let _e16 = local_12;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_13 = (_e12 + 1u);
                    local_14 = (_e14 * 2f);
                }
            } else {
                local_13 = _e12;
                local_14 = _e14;
            }
            let _e36 = local_13;
            let _e38 = local_14;
            local_10 = _e36;
            local_11 = _e38;
            local_12 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_10;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_17 = 8192u;
        } else {
            local_17 = _e60;
        }
        let _e71 = local_17;
        local_15 = _e71;
        local_16 = true;
    }
    let _e77 = local_16;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_15;
    return _e79;
}

fn to_i32_(a0_3: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_3)), 2147483648u, (a0_3 <= -2147483600f)), 2147483647u, (a0_3 >= 2147483600f)), (a0_3 == a0_3));
}

fn for_view(a0_4: f32, a1_1: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_3_ {
    var local_18: FeLocal_fe_shader_private_layout_3_;
    var local_19: bool = false;

    let _e4 = iteration_limit(a0_4, fe_trapped_2);
    let _e13 = to_i32_(((a1_1 + 127f) / 128f));
    let _e18 = to_i32_(((a1_1 + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_3_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn refine_steps(a0_5: FeLocal_fe_shader_private_layout_3_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_20: u32;
    var local_21: bool = false;

    let _e9 = (a0_5.f1_ != 0u);
    if (_e9 && (a0_5.f4_ > (4294967295u / select(1u, a0_5.f1_, _e9)))) {
        (*fe_trapped_3) = true;
    } else {
        local_20 = (a0_5.f1_ * a0_5.f4_);
        local_21 = true;
    }
    let _e19 = local_20;
    return _e19;
}

fn total_steps(a0_6: FeLocal_fe_shader_private_layout_3_, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_22: u32;
    var local_23: bool = false;

    let _e3 = refine_steps(a0_6, fe_trapped_4);
    let _e9 = (a0_6.f5_ * a0_6.f5_);
    let _e10 = (a0_6.f5_ != 0u);
    if (_e10 && (a0_6.f5_ > (4294967295u / select(1u, a0_6.f5_, _e10)))) {
    } else {
        if (_e3 > (4294967295u - _e9)) {
        } else {
            local_22 = (_e3 + _e9);
            local_23 = true;
        }
        let _e23 = local_23;
        if _e23 {
        }
    }
    let _e26 = local_23;
    if _e26 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e28 = local_22;
    return _e28;
}

fn advance_cursor(a0_7: FeLocal_fe_shader_private_layout_0_, a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_0_ {
    var local_24: FeLocal_fe_shader_private_layout_0_;
    var local_25: bool = false;
    var fixed_local_3_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();
    var local_26: FeLocal_fe_shader_private_layout_0_;
    var local_27: bool = false;
    var local_28: u32 = u32();

    fixed_local_3_ = a0_7;
    let _e9 = (a0_7.f10_ + 1u);
    if (a0_7.f10_ > (4294967295u - 1u)) {
        (*fe_trapped_5) = true;
    }
    fixed_local_3_.f10_ = _e9;
    if ((_e9 < a1_2) == false) {
        local_28 = 1u;
    }
    let _e22 = local_28;
    fixed_local_3_.f17_ = _e22;
    let _e24 = fixed_local_3_;
    return _e24;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;

    let _e6 = params.p16_;
    let _e8 = params.p17_;
    let _e10 = params.p18_;
    let _e12 = params.p19_;
    let _e14 = params.p20_;
    let _e16 = params.p21_;
    let _e18 = params.p22_;
    let _e20 = params.p23_;
    let _e22 = params.p24_;
    let _e24 = params.p25_;
    let _e26 = params.p26_;
    let _e28 = params.p27_;
    let _e30 = params.p28_;
    let _e32 = params.p29_;
    let _e34 = params.p30_;
    let _e41 = reference[i32(0u)].active_;
    let _e43 = reference[i32(0u)].active_valid;
    let _e45 = reference[i32(0u)].pending;
    let _e47 = reference[i32(0u)].index;
    let _e49 = reference[i32(0u)].zx_s;
    let _e51 = reference[i32(0u)].zy_s;
    let _e53 = reference[i32(0u)].ready_at;
    let _e55 = can_refine(FeLocal_fe_shader_private_layout_1_(_e41, _e43, _e45, _e47, _e49, _e51, _e53), FeLocal_fe_shader_private_layout_2_(_e6, _e8, _e10, _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34));
    if _e55 {
    } else {
        local_1 = true;
    }
    let _e147 = local_1;
    if _e147 {
    } else {
        let _e63 = cache[i32(0u)].x0_;
        let _e65 = cache[i32(0u)].x1_;
        let _e67 = cache[i32(0u)].x2_;
        let _e69 = cache[i32(0u)].x3_;
        let _e71 = cache[i32(0u)].y0_;
        let _e73 = cache[i32(0u)].y1_;
        let _e75 = cache[i32(0u)].y2_;
        let _e77 = cache[i32(0u)].y3_;
        let _e79 = cache[i32(0u)].zoom;
        let _e81 = cache[i32(0u)].res;
        let _e83 = cache[i32(0u)].cursor;
        let _e85 = cache[i32(0u)].aa;
        let _e87 = cache[i32(0u)].budget;
        let _e89 = cache[i32(0u)].radius;
        let _e91 = cache[i32(0u)].preview_dirty;
        let _e93 = cache[i32(0u)].blur_dirty;
        let _e95 = cache[i32(0u)].epoch;
        let _e97 = cache[i32(0u)].completed;
        let _e99 = for_view(_e22, _e24, (&fe_trapped));
        let _e100 = total_steps(_e99, (&fe_trapped));
        if (_e83 < _e100) {
        } else {
            local_3 = true;
        }
        let _e145 = local_3;
        if _e145 {
        } else {
            let _e104 = advance_cursor(FeLocal_fe_shader_private_layout_0_(_e63, _e65, _e67, _e69, _e71, _e73, _e75, _e77, _e79, _e81, _e83, _e85, _e87, _e89, _e91, _e93, _e95, _e97), _e100, (&fe_trapped));
            cache[i32(0u)].x0_ = _e104.f0_;
            cache[i32(0u)].x1_ = _e104.f1_;
            cache[i32(0u)].x2_ = _e104.f2_;
            cache[i32(0u)].x3_ = _e104.f3_;
            cache[i32(0u)].y0_ = _e104.f4_;
            cache[i32(0u)].y1_ = _e104.f5_;
            cache[i32(0u)].y2_ = _e104.f6_;
            cache[i32(0u)].y3_ = _e104.f7_;
            cache[i32(0u)].zoom = _e104.f8_;
            cache[i32(0u)].res = _e104.f9_;
            cache[i32(0u)].cursor = _e104.f10_;
            cache[i32(0u)].aa = _e104.f11_;
            cache[i32(0u)].budget = _e104.f12_;
            cache[i32(0u)].radius = _e104.f13_;
            cache[i32(0u)].preview_dirty = _e104.f14_;
            cache[i32(0u)].blur_dirty = _e104.f15_;
            cache[i32(0u)].epoch = _e104.f16_;
            cache[i32(0u)].completed = _e104.f17_;
        }
    }
    let _e149 = fe_trapped;
    trap[0u] = u32(_e149);
}
