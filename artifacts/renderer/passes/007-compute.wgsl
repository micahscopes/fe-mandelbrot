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

struct FeLocal_fe_shader_private_layout_3_ {
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
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(3)
var<storage> params: Params;

fn as_published_initial(a0_: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    var fixed_local_2_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    fixed_local_2_ = a0_;
    fixed_local_2_.f14_ = 0u;
    fixed_local_2_.f15_ = 0u;
    fixed_local_2_.f17_ = 1u;
    let _e9 = fixed_local_2_;
    return _e9;
}

fn max_(a0_1: f32, a1_: f32) -> f32 {
    var local_2: f32;
    var local_3: bool = false;
    var local_4: f32 = f32();

    if (a1_ < a0_1) {
        local_4 = a0_1;
    } else {
        local_4 = a1_;
    }
    let _e8 = local_4;
    return _e8;
}

fn can_publish_initial(a0_2: FeLocal_fe_shader_private_layout_1_, a1_1: FeLocal_fe_shader_private_layout_2_, a2_: u32, a3_: u32) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    if (a0_2.f1_ == 1u) {
        if (a0_2.f2_ == 0u) {
            if (a1_1.f13_ < 0.5f) {
                let _e18 = max_(a1_1.f11_, a0_2.f6_);
                if (360f <= (a1_1.f10_ - _e18)) {
                    if ((a3_ == a2_) == false) {
                        local_7 = true;
                    }
                }
            }
        }
    }
    let _e28 = local_7;
    return _e28;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;

    let _e5 = params.p16_;
    let _e7 = params.p17_;
    let _e9 = params.p18_;
    let _e11 = params.p19_;
    let _e13 = params.p20_;
    let _e15 = params.p21_;
    let _e17 = params.p22_;
    let _e19 = params.p23_;
    let _e21 = params.p24_;
    let _e23 = params.p25_;
    let _e25 = params.p26_;
    let _e27 = params.p27_;
    let _e29 = params.p28_;
    let _e31 = params.p29_;
    let _e33 = params.p30_;
    let _e40 = cache[i32(0u)].x0_;
    let _e42 = cache[i32(0u)].x1_;
    let _e44 = cache[i32(0u)].x2_;
    let _e46 = cache[i32(0u)].x3_;
    let _e48 = cache[i32(0u)].y0_;
    let _e50 = cache[i32(0u)].y1_;
    let _e52 = cache[i32(0u)].y2_;
    let _e54 = cache[i32(0u)].y3_;
    let _e56 = cache[i32(0u)].zoom;
    let _e58 = cache[i32(0u)].res;
    let _e60 = cache[i32(0u)].cursor;
    let _e62 = cache[i32(0u)].aa;
    let _e64 = cache[i32(0u)].budget;
    let _e66 = cache[i32(0u)].radius;
    let _e68 = cache[i32(0u)].preview_dirty;
    let _e70 = cache[i32(0u)].blur_dirty;
    let _e72 = cache[i32(0u)].epoch;
    let _e74 = cache[i32(0u)].completed;
    let _e80 = cache[i32(2u)].epoch;
    let _e85 = reference[i32(0u)].active_;
    let _e87 = reference[i32(0u)].active_valid;
    let _e89 = reference[i32(0u)].pending;
    let _e91 = reference[i32(0u)].index;
    let _e93 = reference[i32(0u)].zx_s;
    let _e95 = reference[i32(0u)].zy_s;
    let _e97 = reference[i32(0u)].ready_at;
    let _e103 = preview_cache[i32(0u)].completed;
    if (_e103 == 0u) {
    } else {
        let _e106 = can_publish_initial(FeLocal_fe_shader_private_layout_1_(_e85, _e87, _e89, _e91, _e93, _e95, _e97), FeLocal_fe_shader_private_layout_2_(_e5, _e7, _e9, _e11, _e13, _e15, _e17, _e19, _e21, _e23, _e25, _e27, _e29, _e31, _e33), _e72, _e80);
        if _e106 {
            let _e107 = as_published_initial(FeLocal_fe_shader_private_layout_0_(_e40, _e42, _e44, _e46, _e48, _e50, _e52, _e54, _e56, _e58, _e60, _e62, _e64, _e66, _e68, _e70, _e72, _e74));
            cache[i32(2u)].x0_ = _e107.f0_;
            cache[i32(2u)].x1_ = _e107.f1_;
            cache[i32(2u)].x2_ = _e107.f2_;
            cache[i32(2u)].x3_ = _e107.f3_;
            cache[i32(2u)].y0_ = _e107.f4_;
            cache[i32(2u)].y1_ = _e107.f5_;
            cache[i32(2u)].y2_ = _e107.f6_;
            cache[i32(2u)].y3_ = _e107.f7_;
            cache[i32(2u)].zoom = _e107.f8_;
            cache[i32(2u)].res = _e107.f9_;
            cache[i32(2u)].cursor = _e107.f10_;
            cache[i32(2u)].aa = _e107.f11_;
            cache[i32(2u)].budget = _e107.f12_;
            cache[i32(2u)].radius = _e107.f13_;
            cache[i32(2u)].preview_dirty = _e107.f14_;
            cache[i32(2u)].blur_dirty = _e107.f15_;
            cache[i32(2u)].epoch = _e107.f16_;
            cache[i32(2u)].completed = _e107.f17_;
            local_1 = true;
        }
        let _e150 = local_1;
        if _e150 {
        }
    }
}
