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

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_3_ {
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

fn can_publish_initial(a0_1: FeLocal_fe_shader_private_layout_0_, a1_1: FeLocal_fe_shader_private_layout_1_, a2_: u32, a3_: u32) -> bool {
    var local_2: bool;
    var local_3: bool = false;
    var local_4: bool = bool();

    if (a0_1.f1_ == 1u) {
        if (a0_1.f2_ == 0u) {
            if (a1_1.f13_ < 0.5f) {
                let _e18 = impl_trait_f32_max(a1_1.f11_, a0_1.f6_);
                if (360f <= (a1_1.f10_ - _e18)) {
                    if ((a3_ == a2_) == false) {
                        local_4 = true;
                    }
                }
            }
        }
    }
    let _e28 = local_4;
    return _e28;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var local: u32;
    var local_1: bool = false;

    let _e10 = params.p27_;
    let _e12 = params.p28_;
    let _e14 = params.p29_;
    let _e16 = params.p30_;
    let _e18 = params.p31_;
    let _e20 = params.p32_;
    let _e22 = params.p33_;
    let _e24 = params.p34_;
    let _e26 = params.p35_;
    let _e28 = params.p36_;
    let _e30 = params.p37_;
    let _e32 = params.p38_;
    let _e34 = params.p39_;
    let _e36 = params.p40_;
    let _e38 = params.p41_;
    let _e45 = cache[i32(0u)].epoch;
    let _e50 = cache[i32(2u)].epoch;
    let _e55 = reference[i32(0u)].active_;
    let _e57 = reference[i32(0u)].active_valid;
    let _e59 = reference[i32(0u)].pending;
    let _e61 = reference[i32(0u)].index;
    let _e63 = reference[i32(0u)].zx_s;
    let _e65 = reference[i32(0u)].zy_s;
    let _e67 = reference[i32(0u)].ready_at;
    let _e69 = can_publish_initial(FeLocal_fe_shader_private_layout_0_(_e55, _e57, _e59, _e61, _e63, _e65, _e67), FeLocal_fe_shader_private_layout_1_(_e10, _e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38), _e45, _e50);
    if _e69 {
    } else {
        local_1 = true;
    }
    let _e89 = local_1;
    if _e89 {
    } else {
        let _e74 = ((global_invocation_id.y << 8u) | global_invocation_id.x);
        let _e78 = pixels[i32(_e74)].l;
        let _e80 = pixels[i32(_e74)].a;
        let _e82 = pixels[i32(_e74)].b;
        initial_pixels[i32(_e74)].l = _e78;
        initial_pixels[i32(_e74)].a = _e80;
        initial_pixels[i32(_e74)].b = _e82;
    }
}
