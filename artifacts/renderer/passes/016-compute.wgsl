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
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(1)
var<storage> params: Params;

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;

    let _e6 = cache[i32(0u)].x0_;
    let _e8 = cache[i32(0u)].x1_;
    let _e10 = cache[i32(0u)].x2_;
    let _e12 = cache[i32(0u)].x3_;
    let _e14 = cache[i32(0u)].y0_;
    let _e16 = cache[i32(0u)].y1_;
    let _e18 = cache[i32(0u)].y2_;
    let _e20 = cache[i32(0u)].y3_;
    let _e22 = cache[i32(0u)].zoom;
    let _e24 = cache[i32(0u)].res;
    let _e26 = cache[i32(0u)].cursor;
    let _e28 = cache[i32(0u)].aa;
    let _e30 = cache[i32(0u)].budget;
    let _e32 = cache[i32(0u)].radius;
    let _e34 = cache[i32(0u)].preview_dirty;
    let _e36 = cache[i32(0u)].blur_dirty;
    let _e38 = cache[i32(0u)].epoch;
    let _e40 = cache[i32(0u)].completed;
    if (_e40 == 1u) {
        cache[i32(1u)].x0_ = _e6;
        cache[i32(1u)].x1_ = _e8;
        cache[i32(1u)].x2_ = _e10;
        cache[i32(1u)].x3_ = _e12;
        cache[i32(1u)].y0_ = _e14;
        cache[i32(1u)].y1_ = _e16;
        cache[i32(1u)].y2_ = _e18;
        cache[i32(1u)].y3_ = _e20;
        cache[i32(1u)].zoom = _e22;
        cache[i32(1u)].res = _e24;
        cache[i32(1u)].cursor = _e26;
        cache[i32(1u)].aa = _e28;
        cache[i32(1u)].budget = _e30;
        cache[i32(1u)].radius = _e32;
        cache[i32(1u)].preview_dirty = _e34;
        cache[i32(1u)].blur_dirty = _e36;
        cache[i32(1u)].epoch = _e38;
        cache[i32(1u)].completed = _e40;
    }
}
