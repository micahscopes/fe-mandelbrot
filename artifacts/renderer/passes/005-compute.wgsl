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

fn max_(a0_: f32, a1_: f32) -> f32 {
    var local_2: f32;
    var local_3: bool = false;
    var local_4: f32 = f32();

    if (a1_ < a0_) {
        local_4 = a0_;
    } else {
        local_4 = a1_;
    }
    let _e8 = local_4;
    return _e8;
}

fn can_publish_initial(a0_1: FeLocal_fe_shader_private_layout_1_, a1_1: FeLocal_fe_shader_private_layout_2_, a2_: u32, a3_: u32) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    if (a0_1.f1_ == 1u) {
        if (a0_1.f2_ == 0u) {
            if (a1_1.f13_ < 0.5f) {
                let _e18 = max_(a1_1.f11_, a0_1.f6_);
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

fn as_published_initial(a0_2: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    var fixed_local_2_: FeLocal_fe_shader_private_layout_0_ = FeLocal_fe_shader_private_layout_0_();

    fixed_local_2_ = a0_2;
    fixed_local_2_.f14_ = 0u;
    fixed_local_2_.f15_ = 0u;
    fixed_local_2_.f17_ = 1u;
    let _e9 = fixed_local_2_;
    return _e9;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;

    let _e4 = params.p14_;
    let _e6 = params.p15_;
    let _e8 = params.p16_;
    let _e10 = params.p17_;
    let _e12 = params.p18_;
    let _e14 = params.p19_;
    let _e16 = params.p20_;
    let _e18 = params.p21_;
    let _e20 = params.p22_;
    let _e22 = params.p23_;
    let _e24 = params.p24_;
    let _e26 = params.p25_;
    let _e28 = params.p26_;
    let _e30 = params.p27_;
    let _e32 = params.p28_;
    let _e39 = cache[i32(0u)].x0_;
    let _e41 = cache[i32(0u)].x1_;
    let _e43 = cache[i32(0u)].x2_;
    let _e45 = cache[i32(0u)].x3_;
    let _e47 = cache[i32(0u)].y0_;
    let _e49 = cache[i32(0u)].y1_;
    let _e51 = cache[i32(0u)].y2_;
    let _e53 = cache[i32(0u)].y3_;
    let _e55 = cache[i32(0u)].zoom;
    let _e57 = cache[i32(0u)].res;
    let _e59 = cache[i32(0u)].cursor;
    let _e61 = cache[i32(0u)].aa;
    let _e63 = cache[i32(0u)].budget;
    let _e65 = cache[i32(0u)].radius;
    let _e67 = cache[i32(0u)].preview_dirty;
    let _e69 = cache[i32(0u)].blur_dirty;
    let _e71 = cache[i32(0u)].epoch;
    let _e73 = cache[i32(0u)].completed;
    let _e79 = cache[i32(2u)].epoch;
    let _e84 = reference[i32(0u)].active_;
    let _e86 = reference[i32(0u)].active_valid;
    let _e88 = reference[i32(0u)].pending;
    let _e90 = reference[i32(0u)].index;
    let _e92 = reference[i32(0u)].zx_s;
    let _e94 = reference[i32(0u)].zy_s;
    let _e96 = reference[i32(0u)].ready_at;
    let _e98 = can_publish_initial(FeLocal_fe_shader_private_layout_1_(_e84, _e86, _e88, _e90, _e92, _e94, _e96), FeLocal_fe_shader_private_layout_2_(_e4, _e6, _e8, _e10, _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32), _e71, _e79);
    if _e98 {
    } else {
        local_1 = true;
    }
    let _e142 = local_1;
    if _e142 {
    } else {
        let _e101 = as_published_initial(FeLocal_fe_shader_private_layout_0_(_e39, _e41, _e43, _e45, _e47, _e49, _e51, _e53, _e55, _e57, _e59, _e61, _e63, _e65, _e67, _e69, _e71, _e73));
        cache[i32(2u)].x0_ = _e101.f0_;
        cache[i32(2u)].x1_ = _e101.f1_;
        cache[i32(2u)].x2_ = _e101.f2_;
        cache[i32(2u)].x3_ = _e101.f3_;
        cache[i32(2u)].y0_ = _e101.f4_;
        cache[i32(2u)].y1_ = _e101.f5_;
        cache[i32(2u)].y2_ = _e101.f6_;
        cache[i32(2u)].y3_ = _e101.f7_;
        cache[i32(2u)].zoom = _e101.f8_;
        cache[i32(2u)].res = _e101.f9_;
        cache[i32(2u)].cursor = _e101.f10_;
        cache[i32(2u)].aa = _e101.f11_;
        cache[i32(2u)].budget = _e101.f12_;
        cache[i32(2u)].radius = _e101.f13_;
        cache[i32(2u)].preview_dirty = _e101.f14_;
        cache[i32(2u)].blur_dirty = _e101.f15_;
        cache[i32(2u)].epoch = _e101.f16_;
        cache[i32(2u)].completed = _e101.f17_;
    }
}
