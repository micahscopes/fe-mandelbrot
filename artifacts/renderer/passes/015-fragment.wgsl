struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
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

struct FeLocal_fe_shader_private_layout_4_ {
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
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: f32,
}

struct blurred_element {
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

struct progress_pixels_element {
    dz_re: f32,
    dz_im: f32,
    z_re: f32,
    z_im: f32,
    reference_i: u32,
    iteration: u32,
    epoch: u32,
    magnitude: f32,
}

struct Input {
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
var<storage> blurred: array<blurred_element>;
@group(0) @binding(1)
var<storage> cache: array<cache_element>;
@group(0) @binding(2)
var<storage> reference: array<reference_element>;
@group(0) @binding(3)
var<storage> native_pixels: array<u32>;
@group(0) @binding(4)
var<storage> antialiased_pixels: array<u32>;
@group(0) @binding(5)
var<storage> progress_pixels: array<progress_pixels_element>;
@group(0) @binding(6)
var<storage> input: Input;

fn impl_trait_f32_max(a0_: f32, a1_: f32) -> f32 {
    let _e2 = bitcast<u32>(a0_);
    let _e3 = bitcast<u32>(a1_);
    return bitcast<f32>(select(select(_e3, _e2, ((_e2 ^ ((0u - (_e2 >> 31u)) | 2147483648u)) > (_e3 ^ ((0u - (_e3 >> 31u)) | 2147483648u)))), 2143289344u, (((_e2 & 2147483647u) > 2139095040u) || ((_e3 & 2147483647u) > 2139095040u))));
}

fn display_age(a0_1: FeLocal_fe_shader_private_layout_1_, a1_1: FeLocal_fe_shader_private_layout_2_) -> f32 {
    var local_4: f32;
    var local_5: bool = false;
    var local_6: f32 = f32();

    if (0.5f <= a1_1.f13_) {
    } else {
        if (a0_1.f2_ == 1u) {
        } else {
            let _e13 = impl_trait_f32_max(a1_1.f11_, a0_1.f6_);
            let _e16 = impl_trait_f32_max(0f, (a1_1.f10_ - _e13));
            local_6 = _e16;
        }
    }
    let _e19 = local_6;
    return _e19;
}

fn lib_clamp(a0_2: f32, a1_2: f32, a2_: f32) -> f32 {
    var local_7: f32;
    var local_8: bool = false;
    var local_9: f32 = f32();

    if (a0_2 < a1_2) {
        local_9 = a1_2;
    } else {
        if (a2_ < a0_2) {
            local_9 = a2_;
        } else {
            local_9 = a0_2;
        }
    }
    let _e11 = local_9;
    return _e11;
}

fn progress(a0_3: f32, a1_3: f32, a2_1: f32) -> f32 {
    let _e7 = lib_clamp(((a0_3 - a1_3) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn is_presentable(a0_4: FeLocal_fe_shader_private_layout_3_) -> bool {
    return (((a0_4.f4_ & 536870912u) == 0u) == false);
}

fn is_presentable_in(a0_5: FeLocal_fe_shader_private_layout_3_, a1_4: u32) -> bool {
    var local_10: bool;
    var local_11: bool = false;
    var local_12: bool = bool();

    if (a0_5.f6_ == a1_4) {
        let _e6 = is_presentable(a0_5);
        if _e6 {
            local_12 = true;
        }
    }
    let _e10 = local_12;
    return _e10;
}

fn fade_started_at(a0_6: FeLocal_fe_shader_private_layout_3_) -> f32 {
    return a0_6.f2_;
}

fn from_i32_(a0_7: u32) -> f32 {
    return f32(bitcast<i32>(a0_7));
}

fn impl_trait_f32_floor(a0_8: f32) -> f32 {
    return floor(a0_8);
}

fn to_i32_(a0_9: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_9)), 2147483648u, (a0_9 <= -2147483600f)), 2147483647u, (a0_9 >= 2147483600f)), (a0_9 == a0_9));
}

fn min_(a0_10: f32, a1_5: f32) -> f32 {
    var local_13: f32;
    var local_14: bool = false;
    var local_15: f32 = f32();

    if (a0_10 < a1_5) {
        local_15 = a0_10;
    } else {
        local_15 = a1_5;
    }
    let _e8 = local_15;
    return _e8;
}

fn mix_(a0_11: f32, a1_6: f32, a2_2: f32) -> f32 {
    return (a0_11 + ((a1_6 - a0_11) * a2_2));
}

fn blend(a0_12: FeLocal_fe_shader_private_layout_0_, a1_7: FeLocal_fe_shader_private_layout_0_, a2_3: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e5 = mix_(a0_12.f0_, a1_7.f0_, a2_3);
    let _e8 = mix_(a0_12.f1_, a1_7.f1_, a2_3);
    let _e11 = mix_(a0_12.f2_, a1_7.f2_, a2_3);
    return FeLocal_fe_shader_private_layout_0_(_e5, _e8, _e11);
}

fn sample(a1_8: f32, a2_4: f32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e5 = lib_clamp(a1_8, 0f, 255f);
    let _e8 = lib_clamp(a2_4, 0f, 255f);
    let _e9 = impl_trait_f32_floor(_e5);
    let _e10 = impl_trait_f32_floor(_e8);
    let _e11 = to_i32_(_e9);
    let _e12 = to_i32_(_e10);
    let _e16 = min_((_e9 + 1f), 255f);
    let _e17 = to_i32_(_e16);
    let _e21 = min_((_e10 + 1f), 255f);
    let _e22 = to_i32_(_e21);
    let _e29 = blurred[i32(((_e12 << 8u) | _e11))].l;
    let _e31 = blurred[i32(((_e12 << 8u) | _e11))].a;
    let _e33 = blurred[i32(((_e12 << 8u) | _e11))].b;
    let _e41 = blurred[i32(((_e12 << 8u) | _e17))].l;
    let _e43 = blurred[i32(((_e12 << 8u) | _e17))].a;
    let _e45 = blurred[i32(((_e12 << 8u) | _e17))].b;
    let _e48 = blend(FeLocal_fe_shader_private_layout_0_(_e29, _e31, _e33), FeLocal_fe_shader_private_layout_0_(_e41, _e43, _e45), (_e5 - _e9));
    let _e55 = blurred[i32(((_e22 << 8u) | _e11))].l;
    let _e57 = blurred[i32(((_e22 << 8u) | _e11))].a;
    let _e59 = blurred[i32(((_e22 << 8u) | _e11))].b;
    let _e67 = blurred[i32(((_e22 << 8u) | _e17))].l;
    let _e69 = blurred[i32(((_e22 << 8u) | _e17))].a;
    let _e71 = blurred[i32(((_e22 << 8u) | _e17))].b;
    let _e74 = blend(FeLocal_fe_shader_private_layout_0_(_e55, _e57, _e59), FeLocal_fe_shader_private_layout_0_(_e67, _e69, _e71), (_e5 - _e9));
    let _e76 = blend(_e48, _e74, (_e8 - _e10));
    return _e76;
}

fn color(a0_13: u32) -> FeLocal_fe_shader_private_layout_0_ {
    let _e3 = from_i32_((a0_13 & 4095u));
    let _e10 = from_i32_(((a0_13 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_13 >> 22u));
    return FeLocal_fe_shader_private_layout_0_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn sqrt_(a0_14: f32) -> f32 {
    return sqrt(a0_14);
}

fn srgb(a0_15: f32) -> f32 {
    var local_16: f32;
    var local_17: bool = false;

    let _e4 = lib_clamp(a0_15, 0f, 1f);
    if (_e4 <= 0.0031308f) {
        local_16 = (12.92f * _e4);
        local_17 = true;
    }
    let _e31 = local_17;
    if _e31 {
    } else {
        let _e12 = sqrt_(_e4);
        let _e13 = sqrt_(_e12);
        let _e14 = sqrt_(_e13);
        let _e28 = lib_clamp(((((0.6620027f * _e12) + (0.6841221f * _e13)) - (0.3235836f * _e14)) - (0.022541147f * _e4)), 0f, 1f);
        local_16 = _e28;
    }
    let _e33 = local_16;
    return _e33;
}

fn rgba(a0_16: FeLocal_fe_shader_private_layout_0_) -> u32 {
    let _e9 = ((a0_16.f0_ + (0.39633778f * a0_16.f1_)) + (0.21580376f * a0_16.f2_));
    let _e18 = ((a0_16.f0_ - (0.105561346f * a0_16.f1_)) - (0.06385417f * a0_16.f2_));
    let _e27 = ((a0_16.f0_ - (0.08948418f * a0_16.f1_)) - (1.2914855f * a0_16.f2_));
    let _e29 = ((_e9 * _e9) * _e9);
    let _e31 = ((_e18 * _e18) * _e18);
    let _e33 = ((_e27 * _e27) * _e27);
    let _e42 = srgb((((4.0767417f * _e29) - (3.3077116f * _e31)) + (0.23096994f * _e33)));
    let _e47 = to_i32_(((_e42 * 255f) + 0.5f));
    let _e56 = srgb((((-1.268438f * _e29) + (2.6097574f * _e31)) - (0.34131938f * _e33)));
    let _e61 = to_i32_(((_e56 * 255f) + 0.5f));
    let _e70 = srgb((((-0.0041960864f * _e29) - (0.7034186f * _e31)) + (1.7076147f * _e33)));
    let _e75 = to_i32_(((_e70 * 255f) + 0.5f));
    return ((((_e47 & 255u) | ((_e61 & 255u) << 8u)) | ((_e75 & 255u) << 16u)) | 4278190080u);
}

fn lib_image_max(a0_17: f32, a1_9: f32) -> f32 {
    var local_18: f32;
    var local_19: bool = false;
    var local_20: f32 = f32();

    if (a1_9 < a0_17) {
        local_20 = a0_17;
    } else {
        local_20 = a1_9;
    }
    let _e8 = local_20;
    return _e8;
}

@vertex
fn vs_fullscreen(@builtin(vertex_index) vi: u32) -> @builtin(position) vec4<f32> {
    return vec4<f32>((f32(((vi & 1u) << 2u)) - 1f), (f32(((vi & 2u) << 1u)) - 1f), 0f, 1f);
}

@fragment
fn fs_main(@builtin(position) pos: vec4<f32>) -> @location(0) vec4<f32> {
    var local: u32;
    var local_1: bool = false;
    var local_2: bool = bool();
    var local_3: u32 = u32();

    let _e8 = u32(pos.x);
    let _e10 = u32(pos.y);
    let _e12 = input.p16_;
    let _e14 = input.p17_;
    let _e16 = input.p18_;
    let _e18 = input.p19_;
    let _e20 = input.p20_;
    let _e22 = input.p21_;
    let _e24 = input.p22_;
    let _e26 = input.p23_;
    let _e28 = input.p24_;
    let _e30 = input.p25_;
    let _e32 = input.p26_;
    let _e34 = input.p27_;
    let _e36 = input.p28_;
    let _e38 = input.p29_;
    let _e40 = input.p30_;
    let _e49 = (((_e10 & 2047u) << 11u) | (_e8 & 2047u));
    let _e54 = cache[i32(0u)].epoch;
    let _e59 = reference[i32(0u)].active_;
    let _e61 = reference[i32(0u)].active_valid;
    let _e63 = reference[i32(0u)].pending;
    let _e65 = reference[i32(0u)].index;
    let _e67 = reference[i32(0u)].zx_s;
    let _e69 = reference[i32(0u)].zy_s;
    let _e71 = reference[i32(0u)].ready_at;
    let _e73 = display_age(FeLocal_fe_shader_private_layout_1_(_e59, _e61, _e63, _e65, _e67, _e69, _e71), FeLocal_fe_shader_private_layout_2_(_e12, _e14, _e16, _e18, _e20, _e22, _e24, _e26, _e28, _e30, _e32, _e34, _e36, _e38, _e40));
    let _e76 = progress(_e73, 200f, 1600f);
    let _e80 = progress_pixels[i32(_e49)].dz_re;
    let _e82 = progress_pixels[i32(_e49)].dz_im;
    let _e84 = progress_pixels[i32(_e49)].z_re;
    let _e86 = progress_pixels[i32(_e49)].z_im;
    let _e88 = progress_pixels[i32(_e49)].reference_i;
    let _e90 = progress_pixels[i32(_e49)].iteration;
    let _e92 = progress_pixels[i32(_e49)].epoch;
    let _e94 = progress_pixels[i32(_e49)].magnitude;
    let _e95 = FeLocal_fe_shader_private_layout_3_(_e80, _e82, _e84, _e86, _e88, _e90, _e92, _e94);
    let _e96 = is_presentable_in(_e95, _e54);
    if _e96 {
        let _e99 = antialiased_pixels[i32(_e49)];
        let _e100 = fade_started_at(_e95);
        let _e104 = progress((_e32 - _e100), 0f, 350f);
        let _e105 = (_e104 * _e76);
        if (1f <= _e105) {
            let _e108 = color(_e99);
            let _e109 = rgba(_e108);
            local = _e109;
            local_1 = true;
        }
        let _e129 = local_1;
        if _e129 {
        } else {
            let _e113 = from_i32_(_e8);
            let _e117 = from_i32_(_e10);
            let _e121 = sample(((_e113 * 256f) / _e30), ((_e117 * 256f) / _e30));
            let _e122 = color(_e99);
            let _e123 = blend(_e121, _e122, _e105);
            let _e124 = rgba(_e123);
            local = _e124;
            local_1 = true;
        }
    } else {
        let _e131 = from_i32_(_e8);
        let _e135 = from_i32_(_e10);
        let _e139 = sample(((_e131 * 256f) / _e30), ((_e135 * 256f) / _e30));
        let _e144 = to_i32_(((_e30 + 511f) / 512f));
        let _e145 = from_i32_(_e144);
        let _e146 = from_i32_(_e8);
        let _e147 = from_i32_(_e10);
        let _e149 = to_i32_((_e146 / _e145));
        let _e150 = from_i32_(_e149);
        let _e151 = (_e150 * _e145);
        let _e153 = to_i32_((_e147 / _e145));
        let _e154 = from_i32_(_e153);
        let _e155 = (_e154 * _e145);
        let _e156 = to_i32_(_e151);
        let _e158 = (_e156 & 2047u);
        let _e159 = to_i32_(_e155);
        let _e161 = (_e159 & 2047u);
        let _e165 = min_((_e151 + _e145), (_e30 - 1f));
        let _e166 = to_i32_(_e165);
        let _e168 = (_e166 & 2047u);
        let _e172 = min_((_e155 + _e145), (_e30 - 1f));
        let _e173 = to_i32_(_e172);
        let _e175 = (_e173 & 2047u);
        let _e182 = progress_pixels[i32(((_e161 << 11u) | _e158))].dz_re;
        let _e184 = progress_pixels[i32(((_e161 << 11u) | _e158))].dz_im;
        let _e186 = progress_pixels[i32(((_e161 << 11u) | _e158))].z_re;
        let _e188 = progress_pixels[i32(((_e161 << 11u) | _e158))].z_im;
        let _e190 = progress_pixels[i32(((_e161 << 11u) | _e158))].reference_i;
        let _e192 = progress_pixels[i32(((_e161 << 11u) | _e158))].iteration;
        let _e194 = progress_pixels[i32(((_e161 << 11u) | _e158))].epoch;
        let _e196 = progress_pixels[i32(((_e161 << 11u) | _e158))].magnitude;
        let _e197 = FeLocal_fe_shader_private_layout_3_(_e182, _e184, _e186, _e188, _e190, _e192, _e194, _e196);
        let _e204 = progress_pixels[i32(((_e161 << 11u) | _e168))].dz_re;
        let _e206 = progress_pixels[i32(((_e161 << 11u) | _e168))].dz_im;
        let _e208 = progress_pixels[i32(((_e161 << 11u) | _e168))].z_re;
        let _e210 = progress_pixels[i32(((_e161 << 11u) | _e168))].z_im;
        let _e212 = progress_pixels[i32(((_e161 << 11u) | _e168))].reference_i;
        let _e214 = progress_pixels[i32(((_e161 << 11u) | _e168))].iteration;
        let _e216 = progress_pixels[i32(((_e161 << 11u) | _e168))].epoch;
        let _e218 = progress_pixels[i32(((_e161 << 11u) | _e168))].magnitude;
        let _e219 = FeLocal_fe_shader_private_layout_3_(_e204, _e206, _e208, _e210, _e212, _e214, _e216, _e218);
        let _e226 = progress_pixels[i32(((_e175 << 11u) | _e158))].dz_re;
        let _e228 = progress_pixels[i32(((_e175 << 11u) | _e158))].dz_im;
        let _e230 = progress_pixels[i32(((_e175 << 11u) | _e158))].z_re;
        let _e232 = progress_pixels[i32(((_e175 << 11u) | _e158))].z_im;
        let _e234 = progress_pixels[i32(((_e175 << 11u) | _e158))].reference_i;
        let _e236 = progress_pixels[i32(((_e175 << 11u) | _e158))].iteration;
        let _e238 = progress_pixels[i32(((_e175 << 11u) | _e158))].epoch;
        let _e240 = progress_pixels[i32(((_e175 << 11u) | _e158))].magnitude;
        let _e241 = FeLocal_fe_shader_private_layout_3_(_e226, _e228, _e230, _e232, _e234, _e236, _e238, _e240);
        let _e248 = progress_pixels[i32(((_e175 << 11u) | _e168))].dz_re;
        let _e250 = progress_pixels[i32(((_e175 << 11u) | _e168))].dz_im;
        let _e252 = progress_pixels[i32(((_e175 << 11u) | _e168))].z_re;
        let _e254 = progress_pixels[i32(((_e175 << 11u) | _e168))].z_im;
        let _e256 = progress_pixels[i32(((_e175 << 11u) | _e168))].reference_i;
        let _e258 = progress_pixels[i32(((_e175 << 11u) | _e168))].iteration;
        let _e260 = progress_pixels[i32(((_e175 << 11u) | _e168))].epoch;
        let _e262 = progress_pixels[i32(((_e175 << 11u) | _e168))].magnitude;
        let _e263 = FeLocal_fe_shader_private_layout_3_(_e248, _e250, _e252, _e254, _e256, _e258, _e260, _e262);
        let _e264 = is_presentable_in(_e197, _e54);
        if _e264 {
            let _e265 = is_presentable_in(_e219, _e54);
            if _e265 {
                let _e266 = is_presentable_in(_e241, _e54);
                if _e266 {
                    let _e267 = is_presentable_in(_e263, _e54);
                    if _e267 {
                        local_2 = true;
                    }
                }
            }
        }
        let _e272 = local_2;
        if _e272 {
            let _e274 = ((_e146 - _e151) / _e145);
            let _e282 = native_pixels[i32(((_e161 << 11u) | _e158))];
            let _e283 = color(_e282);
            let _e289 = native_pixels[i32(((_e161 << 11u) | _e168))];
            let _e290 = color(_e289);
            let _e291 = blend(_e283, _e290, _e274);
            let _e297 = native_pixels[i32(((_e175 << 11u) | _e158))];
            let _e298 = color(_e297);
            let _e304 = native_pixels[i32(((_e175 << 11u) | _e168))];
            let _e305 = color(_e304);
            let _e306 = blend(_e298, _e305, _e274);
            let _e307 = fade_started_at(_e197);
            let _e308 = fade_started_at(_e219);
            let _e309 = lib_image_max(_e307, _e308);
            let _e310 = fade_started_at(_e241);
            let _e311 = fade_started_at(_e263);
            let _e312 = lib_image_max(_e310, _e311);
            let _e313 = lib_image_max(_e309, _e312);
            let _e315 = blend(_e291, _e306, ((_e147 - _e155) / _e145));
            let _e318 = progress((_e32 - _e313), 0f, 350f);
            let _e320 = blend(_e139, _e315, (_e318 * _e76));
            let _e321 = rgba(_e320);
            local_3 = _e321;
        } else {
            let _e322 = rgba(_e139);
            local_3 = _e322;
        }
        let _e326 = local_3;
        local = _e326;
        local_1 = true;
    }
    let _e331 = local;
    return unpack4x8unorm(_e331);
}
