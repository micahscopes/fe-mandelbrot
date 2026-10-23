struct FeLocal_fe_Last_eb970eb0_4_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_5_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_4_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_6_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_5_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_7_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_6_,
}

struct FeLocal_fe_Coordinate_bdc10f09_8_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_7_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_9_ {
    re: FeLocal_fe_Coordinate_bdc10f09_8_,
    im: FeLocal_fe_Coordinate_bdc10f09_8_,
}

struct FeLocal_fe_Complex_f32_87ec9249_10_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_11_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_9_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_10_,
}

struct FeLocal_fe_Vec2_f32_2772165c_12_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_13_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_12_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_14_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_13_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_15_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_12_,
    extent: FeLocal_fe_Vec2_f32_2772165c_12_,
}

struct FeLocal_fe_GestureSession_6b679731_16_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_14_,
    viewport: FeLocal_fe_Viewport_91e53b90_15_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_14_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_11_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_17_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_18_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_19_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_16_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_17_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_18_,
}

struct FeLocal_fe_BilinearTap_0ebfb494_1_ {
    i00_: u32,
    i10_: u32,
    i01_: u32,
    i11_: u32,
    tx: f32,
    ty: f32,
}

struct FeLocal_fe_Vec3_f32_672e823a_0_ {
    x: f32,
    y: f32,
    z: f32,
}

struct FeLocal_fe_Color_6b73191a_2_ {
    l: f32,
    a: f32,
    b: f32,
}

struct FeLocal_fe_Pixel_5817280a_21_ {
    x: u32,
    y: u32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_22_ {
    camera: FeLocal_fe_Camera_03494b0d_11_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
}

struct FeLocal_fe_ReferenceControl_7d077120_3_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_NativeCheckpoint_6a22185c_20_ {
    control: u32,
    epoch: u32,
    payload: FeLocal_fe_Complex_f32_87ec9249_10_,
}

struct blurred_element {
    l: f32,
    a: f32,
    b: f32,
}

struct cache_element {
    camera_u002e_center_u002e_re_u002e_value_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead: f32,
    camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value: f32,
    camera_u002e_zoom: f32,
    camera_u002e_res: f32,
    camera_u002e_orientation_u002e_re: f32,
    camera_u002e_orientation_u002e_im: f32,
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
    control: u32,
    epoch: u32,
    payload_u002e_re: f32,
    payload_u002e_im: f32,
}

struct Input {
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
    p31_: f32,
    p32_: f32,
    p33_: f32,
    p34_: f32,
    p35_: f32,
    p36_: u32,
    p37_: u32,
    p38_: f32,
    p39_: f32,
    p40_: u32,
    p41_: u32,
    p42_: f32,
    p43_: f32,
    p44_: f32,
    p45_: f32,
    p46_: f32,
    p47_: f32,
    p48_: u32,
    p49_: u32,
    p50_: f32,
    p51_: f32,
    p52_: u32,
    p53_: u32,
    p54_: f32,
    p55_: f32,
    p56_: f32,
    p57_: f32,
    p58_: f32,
    p59_: f32,
    p60_: f32,
    p61_: f32,
    p62_: f32,
    p63_: f32,
    p64_: f32,
    p65_: f32,
    p66_: f32,
    p67_: f32,
    p68_: u32,
    p69_: f32,
    p70_: u32,
    p71_: u32,
    p72_: u32,
    p73_: u32,
    p74_: u32,
    p75_: u32,
    p76_: u32,
    p77_: u32,
    p78_: u32,
    p79_: u32,
    p80_: u32,
    p81_: u32,
    p82_: u32,
    p83_: u32,
    p84_: u32,
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

fn index(a0_: FeLocal_fe_Pixel_5817280a_21_, a1_: u32) -> u32 {
    return ((a0_.y << a1_) | a0_.x);
}

fn max_(a0_1: f32, a1_1: f32) -> f32 {
    var local_4: f32;
    var local_5: bool = false;
    var local_6: f32 = f32();

    if (a1_1 < a0_1) {
        local_6 = a0_1;
    } else {
        local_6 = a1_1;
    }
    let _e8 = local_6;
    return _e8;
}

fn display_age(a0_2: FeLocal_fe_ReferenceControl_7d077120_3_, a1_2: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_19_>) -> f32 {
    var local_7: f32;
    var local_8: bool = false;
    var local_9: f32 = f32();

    let _e5 = (*a1_2).drag_active;
    if (0.5f <= _e5) {
    } else {
        if (a0_2.pending == 1u) {
        } else {
            let _e12 = (*a1_2).clock;
            let _e14 = (*a1_2).last_input;
            let _e16 = max_(_e14, a0_2.ready_at);
            let _e19 = max_(0f, (_e12 - _e16));
            local_9 = _e19;
        }
    }
    let _e22 = local_9;
    return _e22;
}

fn lib_clamp(a0_3: f32, a1_3: f32, a2_: f32) -> f32 {
    var local_10: f32;
    var local_11: bool = false;
    var local_12: f32 = f32();

    if (a0_3 < a1_3) {
        local_12 = a1_3;
    } else {
        if (a2_ < a0_3) {
            local_12 = a2_;
        } else {
            local_12 = a0_3;
        }
    }
    let _e11 = local_12;
    return _e11;
}

fn progress(a0_4: f32, a1_4: f32, a2_1: f32) -> f32 {
    let _e7 = lib_clamp(((a0_4 - a1_4) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn progress_is_presentable(a0_5: u32) -> bool {
    return (((a0_5 & 536870912u) == 0u) == false);
}

fn is_presentable(a0_6: FeLocal_fe_NativeCheckpoint_6a22185c_20_) -> bool {
    let _e2 = progress_is_presentable(a0_6.control);
    return _e2;
}

fn is_presentable_in(a0_7: FeLocal_fe_NativeCheckpoint_6a22185c_20_, a1_5: u32) -> bool {
    var local_13: bool;
    var local_14: bool = false;
    var local_15: bool = bool();

    if (a0_7.epoch == a1_5) {
        let _e6 = is_presentable(a0_7);
        if _e6 {
            local_15 = true;
        }
    }
    let _e10 = local_15;
    return _e10;
}

fn fade_started_at(a0_8: FeLocal_fe_NativeCheckpoint_6a22185c_20_) -> f32 {
    return a0_8.payload.im;
}

fn from_i32_(a0_9: u32) -> f32 {
    return f32(bitcast<i32>(a0_9));
}

fn impl_trait_f32_floor(a0_10: f32) -> f32 {
    return floor(a0_10);
}

fn to_i32_(a0_11: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_11)), 2147483648u, (a0_11 <= -2147483600f)), 2147483647u, (a0_11 >= 2147483600f)), (a0_11 == a0_11));
}

fn min_(a0_12: f32, a1_6: f32) -> f32 {
    var local_16: f32;
    var local_17: bool = false;
    var local_18: f32 = f32();

    if (a0_12 < a1_6) {
        local_18 = a0_12;
    } else {
        local_18 = a1_6;
    }
    let _e8 = local_18;
    return _e8;
}

fn bilinear_tap(a0_13: f32, a1_7: f32, a2_2: f32, a3_: u32) -> FeLocal_fe_BilinearTap_0ebfb494_1_ {
    let _e5 = lib_clamp(a0_13, 0f, a2_2);
    let _e7 = lib_clamp(a1_7, 0f, a2_2);
    let _e8 = impl_trait_f32_floor(_e5);
    let _e9 = impl_trait_f32_floor(_e7);
    let _e10 = to_i32_(_e8);
    let _e11 = to_i32_(_e9);
    let _e14 = min_((_e8 + 1f), a2_2);
    let _e15 = to_i32_(_e14);
    let _e18 = min_((_e9 + 1f), a2_2);
    let _e19 = to_i32_(_e18);
    return FeLocal_fe_BilinearTap_0ebfb494_1_(((_e11 << a3_) | _e10), ((_e11 << a3_) | _e15), ((_e19 << a3_) | _e10), ((_e19 << a3_) | _e15), (_e5 - _e8), (_e7 - _e9));
}

fn to_vec(a0_14: FeLocal_fe_Color_6b73191a_2_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_(a0_14.l, a0_14.a, a0_14.b);
}

fn sub(a0_15: FeLocal_fe_Vec3_f32_672e823a_0_, a1_8: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_15.x - a1_8.x), (a0_15.y - a1_8.y), (a0_15.z - a1_8.z));
}

fn mul(a0_16: FeLocal_fe_Vec3_f32_672e823a_0_, a1_9: f32) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_16.x * a1_9), (a0_16.y * a1_9), (a0_16.z * a1_9));
}

fn impl_trait_Vec3_add_ge58b(a0_17: FeLocal_fe_Vec3_f32_672e823a_0_, a1_10: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_17.x + a1_10.x), (a0_17.y + a1_10.y), (a0_17.z + a1_10.z));
}

fn interpolate(a0_18: FeLocal_fe_Vec3_f32_672e823a_0_, a1_11: FeLocal_fe_Vec3_f32_672e823a_0_, a2_3: f32) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    let _e3 = sub(a1_11, a0_18);
    let _e4 = mul(_e3, a2_3);
    let _e5 = impl_trait_Vec3_add_ge58b(a0_18, _e4);
    return _e5;
}

fn from_vec(a0_19: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Color_6b73191a_2_ {
    return FeLocal_fe_Color_6b73191a_2_(a0_19.x, a0_19.y, a0_19.z);
}

fn blend(a0_20: FeLocal_fe_Color_6b73191a_2_, a1_12: FeLocal_fe_Color_6b73191a_2_, a2_4: f32) -> FeLocal_fe_Color_6b73191a_2_ {
    let _e3 = to_vec(a0_20);
    let _e4 = to_vec(a1_12);
    let _e5 = interpolate(_e3, _e4, a2_4);
    let _e6 = from_vec(_e5);
    return _e6;
}

fn blend_corners(a0_21: FeLocal_fe_Color_6b73191a_2_, a1_13: FeLocal_fe_Color_6b73191a_2_, a2_5: FeLocal_fe_Color_6b73191a_2_, a3_1: FeLocal_fe_Color_6b73191a_2_, a4_: f32, a5_: f32) -> FeLocal_fe_Color_6b73191a_2_ {
    let _e6 = blend(a0_21, a1_13, a4_);
    let _e7 = blend(a2_5, a3_1, a4_);
    let _e8 = blend(_e6, _e7, a5_);
    return _e8;
}

fn sample(a1_14: f32, a2_6: f32) -> FeLocal_fe_Color_6b73191a_2_ {
    let _e5 = bilinear_tap(a1_14, a2_6, 255f, 8u);
    let _e10 = blurred[i32(_e5.i00_)].l;
    let _e12 = blurred[i32(_e5.i00_)].a;
    let _e14 = blurred[i32(_e5.i00_)].b;
    let _e20 = blurred[i32(_e5.i10_)].l;
    let _e22 = blurred[i32(_e5.i10_)].a;
    let _e24 = blurred[i32(_e5.i10_)].b;
    let _e30 = blurred[i32(_e5.i01_)].l;
    let _e32 = blurred[i32(_e5.i01_)].a;
    let _e34 = blurred[i32(_e5.i01_)].b;
    let _e40 = blurred[i32(_e5.i11_)].l;
    let _e42 = blurred[i32(_e5.i11_)].a;
    let _e44 = blurred[i32(_e5.i11_)].b;
    let _e48 = blend_corners(FeLocal_fe_Color_6b73191a_2_(_e10, _e12, _e14), FeLocal_fe_Color_6b73191a_2_(_e20, _e22, _e24), FeLocal_fe_Color_6b73191a_2_(_e30, _e32, _e34), FeLocal_fe_Color_6b73191a_2_(_e40, _e42, _e44), _e5.tx, _e5.ty);
    return _e48;
}

fn lattice_tap(a0_22: u32, a1_15: u32, a2_7: f32, a3_2: f32) -> FeLocal_fe_BilinearTap_0ebfb494_1_ {
    let _e4 = from_i32_(a0_22);
    let _e5 = from_i32_(a1_15);
    let _e7 = to_i32_((_e4 / a2_7));
    let _e8 = from_i32_(_e7);
    let _e9 = (_e8 * a2_7);
    let _e11 = to_i32_((_e5 / a2_7));
    let _e12 = from_i32_(_e11);
    let _e13 = (_e12 * a2_7);
    let _e14 = to_i32_(_e9);
    let _e16 = (_e14 & 2047u);
    let _e17 = to_i32_(_e13);
    let _e19 = (_e17 & 2047u);
    let _e21 = min_((_e9 + a2_7), a3_2);
    let _e22 = to_i32_(_e21);
    let _e24 = (_e22 & 2047u);
    let _e26 = min_((_e13 + a2_7), a3_2);
    let _e27 = to_i32_(_e26);
    let _e29 = (_e27 & 2047u);
    return FeLocal_fe_BilinearTap_0ebfb494_1_(((_e19 << 11u) | _e16), ((_e19 << 11u) | _e24), ((_e29 << 11u) | _e16), ((_e29 << 11u) | _e24), ((_e4 - _e9) / a2_7), ((_e5 - _e13) / a2_7));
}

fn unpack_lab(a0_23: u32) -> FeLocal_fe_Color_6b73191a_2_ {
    let _e3 = from_i32_((a0_23 & 4095u));
    let _e10 = from_i32_(((a0_23 >> 12u) & 1023u));
    let _e17 = from_i32_((a0_23 >> 22u));
    return FeLocal_fe_Color_6b73191a_2_((_e3 / 4095f), ((_e10 - 512f) / 2048f), ((_e17 - 512f) / 2048f));
}

fn sqrt_(a0_24: f32) -> f32 {
    return sqrt(a0_24);
}

fn srgb(a0_25: f32) -> f32 {
    var local_19: f32;
    var local_20: bool = false;

    let _e4 = lib_clamp(a0_25, 0f, 1f);
    if (_e4 <= 0.0031308f) {
        local_19 = (12.92f * _e4);
        local_20 = true;
    }
    let _e31 = local_20;
    if _e31 {
    } else {
        let _e12 = sqrt_(_e4);
        let _e13 = sqrt_(_e12);
        let _e14 = sqrt_(_e13);
        let _e28 = lib_clamp(((((0.6620027f * _e12) + (0.6841221f * _e13)) - (0.3235836f * _e14)) - (0.022541147f * _e4)), 0f, 1f);
        local_19 = _e28;
    }
    let _e33 = local_19;
    return _e33;
}

fn display_rgba(a0_26: FeLocal_fe_Color_6b73191a_2_) -> u32 {
    let _e9 = ((a0_26.l + (0.39633778f * a0_26.a)) + (0.21580376f * a0_26.b));
    let _e18 = ((a0_26.l - (0.105561346f * a0_26.a)) - (0.06385417f * a0_26.b));
    let _e27 = ((a0_26.l - (0.08948418f * a0_26.a)) - (1.2914855f * a0_26.b));
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

@vertex
fn vs_fullscreen(@builtin(vertex_index) vi: u32) -> @builtin(position) vec4<f32> {
    return vec4<f32>((f32(((vi & 1u) << 2u)) - 1f), (f32(((vi & 2u) << 1u)) - 1f), 0f, 1f);
}

@fragment
fn fs_main(@builtin(position) pos: vec4<f32>) -> @location(0) vec4<f32> {
    var local: u32;
    var local_1: bool = false;
    var fixed_local_450_: FeLocal_fe_MandelbrotViewState_c524184f_19_ = FeLocal_fe_MandelbrotViewState_c524184f_19_();
    var local_2: bool = bool();
    var local_3: u32 = u32();

    let _e8 = u32(pos.x);
    let _e10 = u32(pos.y);
    let _e12 = input.p19_;
    let _e14 = input.p20_;
    let _e16 = input.p21_;
    let _e18 = input.p22_;
    let _e20 = input.p23_;
    let _e22 = input.p24_;
    let _e24 = input.p25_;
    let _e26 = input.p26_;
    let _e28 = input.p27_;
    let _e30 = input.p28_;
    let _e32 = input.p29_;
    let _e34 = input.p30_;
    let _e36 = input.p31_;
    let _e38 = input.p32_;
    let _e40 = input.p33_;
    let _e42 = input.p34_;
    let _e44 = input.p35_;
    let _e46 = input.p36_;
    let _e50 = input.p37_;
    let _e52 = input.p38_;
    let _e54 = input.p39_;
    let _e56 = input.p40_;
    let _e60 = input.p41_;
    let _e62 = input.p42_;
    let _e64 = input.p43_;
    let _e66 = input.p44_;
    let _e68 = input.p45_;
    let _e70 = input.p46_;
    let _e72 = input.p47_;
    let _e74 = input.p48_;
    let _e78 = input.p49_;
    let _e80 = input.p50_;
    let _e82 = input.p51_;
    let _e84 = input.p52_;
    let _e88 = input.p53_;
    let _e90 = input.p54_;
    let _e92 = input.p55_;
    let _e94 = input.p56_;
    let _e96 = input.p57_;
    let _e98 = input.p58_;
    let _e100 = input.p59_;
    let _e102 = input.p60_;
    let _e104 = input.p61_;
    let _e106 = input.p62_;
    let _e108 = input.p63_;
    let _e110 = input.p64_;
    let _e112 = input.p65_;
    let _e114 = input.p66_;
    let _e116 = input.p67_;
    let _e118 = input.p68_;
    let _e122 = input.p69_;
    let _e124 = input.p70_;
    let _e128 = input.p71_;
    let _e130 = input.p72_;
    let _e132 = input.p73_;
    let _e134 = input.p74_;
    let _e136 = input.p75_;
    let _e138 = input.p76_;
    let _e140 = input.p77_;
    let _e142 = input.p78_;
    let _e144 = input.p79_;
    let _e146 = input.p80_;
    let _e148 = input.p81_;
    let _e150 = input.p82_;
    let _e152 = input.p83_;
    let _e154 = input.p84_;
    let _e208 = index(FeLocal_fe_Pixel_5817280a_21_((_e8 & 2047u), (_e10 & 2047u)), 11u);
    let _e213 = cache[i32(0u)].epoch;
    let _e218 = reference[i32(0u)].active_;
    let _e220 = reference[i32(0u)].active_valid;
    let _e222 = reference[i32(0u)].pending;
    let _e224 = reference[i32(0u)].index;
    let _e226 = reference[i32(0u)].zx_s;
    let _e228 = reference[i32(0u)].zy_s;
    let _e230 = reference[i32(0u)].ready_at;
    fixed_local_450_ = FeLocal_fe_MandelbrotViewState_c524184f_19_(FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e12, FeLocal_fe_More_More_Last_60a5ba63_6_(_e14, FeLocal_fe_More_Last_1ac585f5_5_(_e16, FeLocal_fe_Last_eb970eb0_4_(_e18))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e20, FeLocal_fe_More_More_Last_60a5ba63_6_(_e22, FeLocal_fe_More_Last_1ac585f5_5_(_e24, FeLocal_fe_Last_eb970eb0_4_(_e26)))))), _e28, _e30, FeLocal_fe_Complex_f32_87ec9249_10_(_e32, _e34)), _e36, _e38, _e40, _e42, _e44, FeLocal_fe_GestureSession_6b679731_16_(FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e46 != 0u), _e50, FeLocal_fe_Vec2_f32_2772165c_12_(_e52, _e54)), FeLocal_fe_Contact_2b5c3d26_13_((_e56 != 0u), _e60, FeLocal_fe_Vec2_f32_2772165c_12_(_e62, _e64)))), FeLocal_fe_Viewport_91e53b90_15_(FeLocal_fe_Vec2_f32_2772165c_12_(_e66, _e68), FeLocal_fe_Vec2_f32_2772165c_12_(_e70, _e72)), FeLocal_fe_Contacts_2_ac13bf77_14_(array<FeLocal_fe_Contact_2b5c3d26_13_, 2>(FeLocal_fe_Contact_2b5c3d26_13_((_e74 != 0u), _e78, FeLocal_fe_Vec2_f32_2772165c_12_(_e80, _e82)), FeLocal_fe_Contact_2b5c3d26_13_((_e84 != 0u), _e88, FeLocal_fe_Vec2_f32_2772165c_12_(_e90, _e92)))), FeLocal_fe_Camera_03494b0d_11_(FeLocal_fe_Complex_Coordinate_d4657101_9_(FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e94, FeLocal_fe_More_More_Last_60a5ba63_6_(_e96, FeLocal_fe_More_Last_1ac585f5_5_(_e98, FeLocal_fe_Last_eb970eb0_4_(_e100))))), FeLocal_fe_Coordinate_bdc10f09_8_(FeLocal_fe_More_More_More_Last_e6310ae8_7_(_e102, FeLocal_fe_More_More_Last_60a5ba63_6_(_e104, FeLocal_fe_More_Last_1ac585f5_5_(_e106, FeLocal_fe_Last_eb970eb0_4_(_e108)))))), _e110, _e112, FeLocal_fe_Complex_f32_87ec9249_10_(_e114, _e116))), FeLocal_fe_BackingRequest_2bcae9f8_17_((_e118 != 0u), _e122), FeLocal_fe_CameraTrace_7ca62f00_18_((_e124 != 0u), array<u32, 14>(_e128, _e130, _e132, _e134, _e136, _e138, _e140, _e142, _e144, _e146, _e148, _e150, _e152, _e154)));
    let _e234 = display_age(FeLocal_fe_ReferenceControl_7d077120_3_(_e218, _e220, _e222, _e224, _e226, _e228, _e230), (&fixed_local_450_));
    let _e237 = progress(_e234, 200f, 1600f);
    let _e241 = progress_pixels[i32(_e208)].control;
    let _e243 = progress_pixels[i32(_e208)].epoch;
    let _e245 = progress_pixels[i32(_e208)].payload_u002e_re;
    let _e247 = progress_pixels[i32(_e208)].payload_u002e_im;
    let _e249 = FeLocal_fe_NativeCheckpoint_6a22185c_20_(_e241, _e243, FeLocal_fe_Complex_f32_87ec9249_10_(_e245, _e247));
    let _e250 = is_presentable_in(_e249, _e213);
    if _e250 {
        let _e253 = antialiased_pixels[i32(_e208)];
        let _e254 = fade_started_at(_e249);
        let _e258 = progress((_e36 - _e254), 0f, 350f);
        let _e259 = (_e258 * _e237);
        if (1f <= _e259) {
            let _e262 = unpack_lab(_e253);
            let _e263 = display_rgba(_e262);
            local = _e263;
            local_1 = true;
        }
        let _e283 = local_1;
        if _e283 {
        } else {
            let _e267 = from_i32_(_e8);
            let _e271 = from_i32_(_e10);
            let _e275 = sample(((_e267 * 256f) / _e30), ((_e271 * 256f) / _e30));
            let _e276 = unpack_lab(_e253);
            let _e277 = blend(_e275, _e276, _e259);
            let _e278 = display_rgba(_e277);
            local = _e278;
            local_1 = true;
        }
    } else {
        let _e285 = from_i32_(_e8);
        let _e289 = from_i32_(_e10);
        let _e293 = sample(((_e285 * 256f) / _e30), ((_e289 * 256f) / _e30));
        let _e298 = to_i32_(((_e30 + 511f) / 512f));
        let _e299 = from_i32_(_e298);
        let _e302 = lattice_tap(_e8, _e10, _e299, (_e30 - 1f));
        let _e307 = progress_pixels[i32(_e302.i00_)].control;
        let _e309 = progress_pixels[i32(_e302.i00_)].epoch;
        let _e311 = progress_pixels[i32(_e302.i00_)].payload_u002e_re;
        let _e313 = progress_pixels[i32(_e302.i00_)].payload_u002e_im;
        let _e315 = FeLocal_fe_NativeCheckpoint_6a22185c_20_(_e307, _e309, FeLocal_fe_Complex_f32_87ec9249_10_(_e311, _e313));
        let _e320 = progress_pixels[i32(_e302.i10_)].control;
        let _e322 = progress_pixels[i32(_e302.i10_)].epoch;
        let _e324 = progress_pixels[i32(_e302.i10_)].payload_u002e_re;
        let _e326 = progress_pixels[i32(_e302.i10_)].payload_u002e_im;
        let _e328 = FeLocal_fe_NativeCheckpoint_6a22185c_20_(_e320, _e322, FeLocal_fe_Complex_f32_87ec9249_10_(_e324, _e326));
        let _e333 = progress_pixels[i32(_e302.i01_)].control;
        let _e335 = progress_pixels[i32(_e302.i01_)].epoch;
        let _e337 = progress_pixels[i32(_e302.i01_)].payload_u002e_re;
        let _e339 = progress_pixels[i32(_e302.i01_)].payload_u002e_im;
        let _e341 = FeLocal_fe_NativeCheckpoint_6a22185c_20_(_e333, _e335, FeLocal_fe_Complex_f32_87ec9249_10_(_e337, _e339));
        let _e346 = progress_pixels[i32(_e302.i11_)].control;
        let _e348 = progress_pixels[i32(_e302.i11_)].epoch;
        let _e350 = progress_pixels[i32(_e302.i11_)].payload_u002e_re;
        let _e352 = progress_pixels[i32(_e302.i11_)].payload_u002e_im;
        let _e354 = FeLocal_fe_NativeCheckpoint_6a22185c_20_(_e346, _e348, FeLocal_fe_Complex_f32_87ec9249_10_(_e350, _e352));
        let _e355 = is_presentable_in(_e315, _e213);
        if _e355 {
            let _e356 = is_presentable_in(_e328, _e213);
            if _e356 {
                let _e357 = is_presentable_in(_e341, _e213);
                if _e357 {
                    let _e358 = is_presentable_in(_e354, _e213);
                    if _e358 {
                        local_2 = true;
                    }
                }
            }
        }
        let _e363 = local_2;
        if _e363 {
            let _e367 = native_pixels[i32(_e302.i00_)];
            let _e368 = unpack_lab(_e367);
            let _e372 = native_pixels[i32(_e302.i10_)];
            let _e373 = unpack_lab(_e372);
            let _e377 = native_pixels[i32(_e302.i01_)];
            let _e378 = unpack_lab(_e377);
            let _e382 = native_pixels[i32(_e302.i11_)];
            let _e383 = unpack_lab(_e382);
            let _e386 = blend_corners(_e368, _e373, _e378, _e383, _e302.tx, _e302.ty);
            let _e387 = fade_started_at(_e315);
            let _e388 = fade_started_at(_e328);
            let _e389 = max_(_e387, _e388);
            let _e390 = fade_started_at(_e341);
            let _e391 = fade_started_at(_e354);
            let _e392 = max_(_e390, _e391);
            let _e393 = max_(_e389, _e392);
            let _e397 = progress((_e36 - _e393), 0f, 350f);
            let _e399 = blend(_e293, _e386, (_e397 * _e237));
            let _e400 = display_rgba(_e399);
            local_3 = _e400;
        } else {
            let _e401 = display_rgba(_e293);
            local_3 = _e401;
        }
        let _e405 = local_3;
        local = _e405;
        local_1 = true;
    }
    let _e410 = local;
    return unpack4x8unorm(_e410);
}
