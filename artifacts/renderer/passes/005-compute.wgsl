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

fn impl_trait_f32_max(a0_: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;

    let _e4 = params.p24_;
    let _e6 = params.p25_;
    let _e8 = params.p27_;
    let _e14 = cache[i32(0u)].x0_;
    let _e16 = cache[i32(0u)].x1_;
    let _e18 = cache[i32(0u)].x2_;
    let _e20 = cache[i32(0u)].x3_;
    let _e22 = cache[i32(0u)].y0_;
    let _e24 = cache[i32(0u)].y1_;
    let _e26 = cache[i32(0u)].y2_;
    let _e28 = cache[i32(0u)].y3_;
    let _e30 = cache[i32(0u)].zoom;
    let _e32 = cache[i32(0u)].res;
    let _e34 = cache[i32(0u)].cursor;
    let _e36 = cache[i32(0u)].aa;
    let _e38 = cache[i32(0u)].budget;
    let _e40 = cache[i32(0u)].radius;
    let _e42 = cache[i32(0u)].epoch;
    let _e47 = cache[i32(2u)].epoch;
    let _e52 = reference[i32(0u)].active_valid;
    let _e54 = reference[i32(0u)].pending;
    let _e56 = reference[i32(0u)].ready_at;
    if (_e52 == 0u) {
    } else {
        if (_e54 == 1u) {
        } else {
            if (0.5f <= _e8) {
            } else {
                let _e63 = impl_trait_f32_max(_e6, _e56);
                if ((_e4 - _e63) < 360f) {
                } else {
                    if (_e47 == _e42) {
                    } else {
                        cache[i32(2u)].x0_ = _e14;
                        cache[i32(2u)].x1_ = _e16;
                        cache[i32(2u)].x2_ = _e18;
                        cache[i32(2u)].x3_ = _e20;
                        cache[i32(2u)].y0_ = _e22;
                        cache[i32(2u)].y1_ = _e24;
                        cache[i32(2u)].y2_ = _e26;
                        cache[i32(2u)].y3_ = _e28;
                        cache[i32(2u)].zoom = _e30;
                        cache[i32(2u)].res = _e32;
                        cache[i32(2u)].cursor = _e34;
                        cache[i32(2u)].aa = _e36;
                        cache[i32(2u)].budget = _e38;
                        cache[i32(2u)].radius = _e40;
                        cache[i32(2u)].preview_dirty = 0u;
                        cache[i32(2u)].blur_dirty = 0u;
                        cache[i32(2u)].epoch = _e42;
                        cache[i32(2u)].completed = 1u;
                        local_1 = true;
                    }
                    let _e95 = local_1;
                    if _e95 {
                    }
                }
                let _e97 = local_1;
                if _e97 {
                }
            }
            let _e99 = local_1;
            if _e99 {
            }
        }
        let _e101 = local_1;
        if _e101 {
        }
    }
}
