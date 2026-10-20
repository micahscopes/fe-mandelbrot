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

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
}

struct initial_pixels_element {
    l: f32,
    a: f32,
    b: f32,
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
    p27_: f32,
    p28_: f32,
    p29_: f32,
    p30_: f32,
    p31_: f32,
    p32_: f32,
    p33_: f32,
    p34_: f32,
    p35_: f32,
    p36_: f32,
    p37_: f32,
    p38_: f32,
    p39_: f32,
    p40_: f32,
    p41_: f32,
}

@group(0) @binding(0)
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(1)
var<storage, read_write> initial_pixels: array<initial_pixels_element>;
@group(0) @binding(2)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(3)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(4)
var<storage> params: Params;

fn impl_trait_f32_max(a0_: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var local: u32;
    var local_1: bool = false;

    let _e10 = params.p37_;
    let _e12 = params.p38_;
    let _e14 = params.p40_;
    let _e20 = cache[i32(0u)].epoch;
    let _e25 = cache[i32(2u)].epoch;
    let _e30 = reference[i32(0u)].active_valid;
    let _e32 = reference[i32(0u)].pending;
    let _e34 = reference[i32(0u)].ready_at;
    if (_e30 == 0u) {
    } else {
        if (_e32 == 1u) {
        } else {
            if (0.5f <= _e14) {
            } else {
                let _e41 = impl_trait_f32_max(_e12, _e34);
                if ((_e10 - _e41) < 360f) {
                } else {
                    if (_e25 == _e20) {
                    } else {
                        let _e48 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
                        let _e52 = pixels[i32(_e48)].l;
                        let _e54 = pixels[i32(_e48)].a;
                        let _e56 = pixels[i32(_e48)].b;
                        initial_pixels[i32(_e48)].l = _e52;
                        initial_pixels[i32(_e48)].a = _e54;
                        initial_pixels[i32(_e48)].b = _e56;
                        local_1 = true;
                    }
                    let _e65 = local_1;
                    if _e65 {
                    }
                }
                let _e67 = local_1;
                if _e67 {
                }
            }
            let _e69 = local_1;
            if _e69 {
            }
        }
        let _e71 = local_1;
        if _e71 {
        }
    }
}
