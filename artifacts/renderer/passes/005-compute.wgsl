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
    f11_: u32,
    f12_: u32,
    f13_: u32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
    f18_: f32,
    f19_: f32,
    f20_: f32,
    f21_: f32,
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
    f10_: u32,
    f11_: f32,
    f12_: u32,
    f13_: f32,
    f14_: u32,
    f15_: u32,
    f16_: u32,
    f17_: u32,
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
    f10_: f32,
    f11_: f32,
    f12_: f32,
    f13_: f32,
    f14_: f32,
}

struct preview_cache_element {
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
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history_full_re: f32,
    history_full_im: f32,
    history_initial_re: f32,
    history_initial_im: f32,
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
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage> params: Params;

fn is_input_settled(a0_: FeLocal_fe_shader_private_layout_1_) -> bool {
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

fn preview_is_completed(a0_1: u32, a1_: u32, a2_: u32) -> bool {
    var local_7: bool;
    var local_8: bool = false;
    var local_9: bool = bool();

    if (a0_1 == 0u) {
        if (0u < a2_) {
            if ((a1_ < a2_) == false) {
                local_9 = true;
            }
        }
    }
    let _e15 = local_9;
    return _e15;
}

fn commit_step(a0_2: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    var local_10: FeLocal_fe_shader_private_layout_0_;
    var local_11: bool = false;
    var local_12: u32 = u32();
    var fixed_local_2_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    fixed_local_2_ = a0_2;
    fixed_local_2_.f14_ = a0_2.f13_;
    let _e10 = preview_is_completed(a0_2.f12_, a0_2.f13_, a0_2.f15_);
    if _e10 {
        local_12 = 1u;
    }
    let _e14 = local_12;
    fixed_local_2_.f17_ = _e14;
    let _e16 = fixed_local_2_;
    return _e16;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;
    var local_2: u32;
    var local_3: bool = false;

    let _e4 = params.p16_;
    let _e6 = params.p17_;
    let _e8 = params.p18_;
    let _e10 = params.p19_;
    let _e12 = params.p20_;
    let _e14 = params.p21_;
    let _e16 = params.p22_;
    let _e18 = params.p23_;
    let _e20 = params.p24_;
    let _e22 = params.p25_;
    let _e24 = params.p26_;
    let _e26 = params.p27_;
    let _e28 = params.p28_;
    let _e30 = params.p29_;
    let _e32 = params.p30_;
    let _e38 = cache[i32(0u)].preview_dirty;
    if (_e38 == 0u) {
        local_1 = true;
    }
    let _e177 = local_1;
    if _e177 {
    } else {
        let _e48 = preview_cache[i32(0u)].x0_;
        let _e50 = preview_cache[i32(0u)].x1_;
        let _e52 = preview_cache[i32(0u)].x2_;
        let _e54 = preview_cache[i32(0u)].x3_;
        let _e56 = preview_cache[i32(0u)].y0_;
        let _e58 = preview_cache[i32(0u)].y1_;
        let _e60 = preview_cache[i32(0u)].y2_;
        let _e62 = preview_cache[i32(0u)].y3_;
        let _e64 = preview_cache[i32(0u)].zoom;
        let _e66 = preview_cache[i32(0u)].res;
        let _e68 = preview_cache[i32(0u)].reference_generation;
        let _e70 = preview_cache[i32(0u)].reference_bank;
        let _e72 = preview_cache[i32(0u)].prefix_only;
        let _e74 = preview_cache[i32(0u)].step_target;
        let _e76 = preview_cache[i32(0u)].completed_steps;
        let _e78 = preview_cache[i32(0u)].budget;
        let _e80 = preview_cache[i32(0u)].epoch;
        let _e82 = preview_cache[i32(0u)].completed;
        let _e84 = preview_cache[i32(0u)].history_full_re;
        let _e86 = preview_cache[i32(0u)].history_full_im;
        let _e88 = preview_cache[i32(0u)].history_initial_re;
        let _e90 = preview_cache[i32(0u)].history_initial_im;
        if (_e82 == 1u) {
        } else {
            if (_e74 == 0u) {
                local_3 = true;
            }
            let _e175 = local_3;
            if _e175 {
            } else {
                let _e103 = cache[i32(1u)].completed;
                let _e108 = cache[i32(2u)].completed;
                let _e109 = is_input_settled(FeLocal_fe_shader_private_layout_1_(_e4, _e6, _e8, _e10, _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32));
                if _e109 {
                } else {
                    if (_e103 == 1u) {
                        local_3 = true;
                    } else {
                        if (_e108 == 1u) {
                            local_3 = true;
                        }
                        let _e119 = local_3;
                        if _e119 {
                        }
                    }
                    let _e121 = local_3;
                    if _e121 {
                    }
                }
                let _e173 = local_3;
                if _e173 {
                } else {
                    let _e122 = commit_step(FeLocal_fe_shader_private_layout_0_(_e48, _e50, _e52, _e54, _e56, _e58, _e60, _e62, _e64, _e66, _e68, _e70, _e72, _e74, _e76, _e78, _e80, _e82, _e84, _e86, _e88, _e90));
                    preview_cache[i32(0u)].x0_ = _e122.f0_;
                    preview_cache[i32(0u)].x1_ = _e122.f1_;
                    preview_cache[i32(0u)].x2_ = _e122.f2_;
                    preview_cache[i32(0u)].x3_ = _e122.f3_;
                    preview_cache[i32(0u)].y0_ = _e122.f4_;
                    preview_cache[i32(0u)].y1_ = _e122.f5_;
                    preview_cache[i32(0u)].y2_ = _e122.f6_;
                    preview_cache[i32(0u)].y3_ = _e122.f7_;
                    preview_cache[i32(0u)].zoom = _e122.f8_;
                    preview_cache[i32(0u)].res = _e122.f9_;
                    preview_cache[i32(0u)].reference_generation = _e122.f10_;
                    preview_cache[i32(0u)].reference_bank = _e122.f11_;
                    preview_cache[i32(0u)].prefix_only = _e122.f12_;
                    preview_cache[i32(0u)].step_target = _e122.f13_;
                    preview_cache[i32(0u)].completed_steps = _e122.f14_;
                    preview_cache[i32(0u)].budget = _e122.f15_;
                    preview_cache[i32(0u)].epoch = _e122.f16_;
                    preview_cache[i32(0u)].completed = _e122.f17_;
                    preview_cache[i32(0u)].history_full_re = _e122.f18_;
                    preview_cache[i32(0u)].history_full_im = _e122.f19_;
                    preview_cache[i32(0u)].history_initial_re = _e122.f20_;
                    preview_cache[i32(0u)].history_initial_im = _e122.f21_;
                    local_3 = true;
                }
            }
        }
    }
}
