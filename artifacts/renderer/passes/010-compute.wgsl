struct FeLocal_fe_Last_eb970eb0_3_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_4_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_3_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_5_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_4_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_6_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_5_,
}

struct FeLocal_fe_Coordinate_bdc10f09_7_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_6_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_8_ {
    re: FeLocal_fe_Coordinate_bdc10f09_7_,
    im: FeLocal_fe_Coordinate_bdc10f09_7_,
}

struct FeLocal_fe_Complex_f32_87ec9249_9_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_10_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_8_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_9_,
}

struct FeLocal_fe_Vec2_f32_2772165c_11_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_12_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_11_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_13_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_12_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_14_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_11_,
    extent: FeLocal_fe_Vec2_f32_2772165c_11_,
}

struct FeLocal_fe_GestureSession_6b679731_15_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_13_,
    viewport: FeLocal_fe_Viewport_91e53b90_14_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_13_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_10_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_16_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_17_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_18_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_15_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_16_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_17_,
}

struct FeLocal_fe_Vec3_f32_672e823a_0_ {
    x: f32,
    y: f32,
    z: f32,
}

struct FeLocal_fe_Color_6b73191a_1_ {
    l: f32,
    a: f32,
    b: f32,
}

struct FeLocal_fe_ViewCache_da6e2ccc_19_ {
    camera: FeLocal_fe_Camera_03494b0d_10_,
    cursor: u32,
    aa: f32,
    budget: u32,
    radius: f32,
    preview_dirty: u32,
    blur_dirty: u32,
    epoch: u32,
    completed: u32,
    steps: u32,
    frame_clock: f32,
}

struct FeLocal_fe_ReferenceControl_7d077120_2_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_InvocationId_3c625d5f_20_ {
    x: u32,
    y: u32,
    z: u32,
}

struct pixels_element {
    l: f32,
    a: f32,
    b: f32,
}

struct horizontal_element {
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
    steps: u32,
    frame_clock: f32,
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
    p42_: f32,
    p43_: f32,
    p44_: f32,
    p45_: f32,
    p46_: f32,
    p47_: u32,
    p48_: u32,
    p49_: f32,
    p50_: f32,
    p51_: u32,
    p52_: u32,
    p53_: f32,
    p54_: f32,
    p55_: f32,
    p56_: f32,
    p57_: f32,
    p58_: f32,
    p59_: u32,
    p60_: u32,
    p61_: f32,
    p62_: f32,
    p63_: u32,
    p64_: u32,
    p65_: f32,
    p66_: f32,
    p67_: f32,
    p68_: f32,
    p69_: f32,
    p70_: f32,
    p71_: f32,
    p72_: f32,
    p73_: f32,
    p74_: f32,
    p75_: f32,
    p76_: f32,
    p77_: f32,
    p78_: f32,
    p79_: u32,
    p80_: f32,
    p81_: u32,
    p82_: u32,
    p83_: u32,
    p84_: u32,
    p85_: u32,
    p86_: u32,
    p87_: u32,
    p88_: u32,
    p89_: u32,
    p90_: u32,
    p91_: u32,
    p92_: u32,
    p93_: u32,
    p94_: u32,
    p95_: u32,
}

@group(0) @binding(0)
var<storage, read_write> pixels: array<pixels_element>;
@group(0) @binding(1)
var<storage, read_write> horizontal: array<horizontal_element>;
@group(0) @binding(2)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(3)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(4)
var<storage> params: Params;
@group(0) @binding(5)
var<storage, read_write> trap: array<u32, 65536>;

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

fn display_age(a0_1: FeLocal_fe_ReferenceControl_7d077120_2_, a1_1: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_18_>) -> f32 {
    var local_5: f32;
    var local_6: bool = false;
    var local_7: f32 = f32();

    let _e5 = (*a1_1).drag_active;
    if (0.5f <= _e5) {
    } else {
        if (a0_1.pending == 1u) {
        } else {
            let _e12 = (*a1_1).clock;
            let _e14 = (*a1_1).last_input;
            let _e16 = max_(_e14, a0_1.ready_at);
            let _e19 = max_(0f, (_e12 - _e16));
            local_7 = _e19;
        }
    }
    let _e22 = local_7;
    return _e22;
}

fn clamp_f(a0_2: f32, a1_2: f32, a2_: f32) -> f32 {
    var local_8: f32;
    var local_9: bool = false;
    var local_10: f32 = f32();

    if (a0_2 < a1_2) {
        local_10 = a1_2;
    } else {
        if (a2_ < a0_2) {
            local_10 = a2_;
        } else {
            local_10 = a0_2;
        }
    }
    let _e11 = local_10;
    return _e11;
}

fn progress(a0_3: f32, a1_3: f32, a2_1: f32) -> f32 {
    let _e7 = clamp_f(((a0_3 - a1_3) / a2_1), 0f, 1f);
    return ((_e7 * _e7) * (3f - (2f * _e7)));
}

fn blur_radius(a0_4: f32) -> f32 {
    let _e3 = progress(a0_4, 200f, 1600f);
    return (24f * (1f - _e3));
}

fn blur_sigma(a0_5: FeLocal_fe_ReferenceControl_7d077120_2_, a1_4: ptr<function, FeLocal_fe_MandelbrotViewState_c524184f_18_>) -> f32 {
    let _e2 = display_age(a0_5, a1_4);
    let _e3 = blur_radius(_e2);
    let _e8 = (*a1_4).camera.res;
    return ((_e3 * 192f) / _e8);
}

fn min_(a0_6: f32, a1_5: f32) -> f32 {
    var local_11: f32;
    var local_12: bool = false;
    var local_13: f32 = f32();

    if (a0_6 < a1_5) {
        local_13 = a0_6;
    } else {
        local_13 = a1_5;
    }
    let _e8 = local_13;
    return _e8;
}

fn to_i32_(a0_7: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_7)), 2147483648u, (a0_7 <= -2147483600f)), 2147483647u, (a0_7 >= 2147483600f)), (a0_7 == a0_7));
}

fn from_i32_(a0_8: u32) -> f32 {
    return f32(bitcast<i32>(a0_8));
}

fn perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_9: FeLocal_fe_Color_6b73191a_1_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_(a0_9.l, a0_9.a, a0_9.b);
}

fn div_ge58b(a0_10: FeLocal_fe_Vec3_f32_672e823a_0_, a1_6: f32) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_10.x / a1_6), (a0_10.y / a1_6), (a0_10.z / a1_6));
}

fn perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(a0_11: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Color_6b73191a_1_ {
    return FeLocal_fe_Color_6b73191a_1_(a0_11.x, a0_11.y, a0_11.z);
}

fn impl_trait_Color_div(a0_12: FeLocal_fe_Color_6b73191a_1_, a1_7: f32) -> FeLocal_fe_Color_6b73191a_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_12);
    let _e3 = div_ge58b(_e2, a1_7);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e3);
    return _e4;
}

fn add_ge58b(a0_13: FeLocal_fe_Vec3_f32_672e823a_0_, a1_8: FeLocal_fe_Vec3_f32_672e823a_0_) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_13.x + a1_8.x), (a0_13.y + a1_8.y), (a0_13.z + a1_8.z));
}

fn impl_trait_Color_add(a0_14: FeLocal_fe_Color_6b73191a_1_, a1_9: FeLocal_fe_Color_6b73191a_1_) -> FeLocal_fe_Color_6b73191a_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_14);
    let _e3 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a1_9);
    let _e4 = add_ge58b(_e2, _e3);
    let _e5 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e4);
    return _e5;
}

fn mul_ge58b(a0_15: FeLocal_fe_Vec3_f32_672e823a_0_, a1_10: f32) -> FeLocal_fe_Vec3_f32_672e823a_0_ {
    return FeLocal_fe_Vec3_f32_672e823a_0_((a0_15.x * a1_10), (a0_15.y * a1_10), (a0_15.z * a1_10));
}

fn impl_trait_Color_mul(a0_16: FeLocal_fe_Color_6b73191a_1_, a1_11: f32) -> FeLocal_fe_Color_6b73191a_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_16);
    let _e3 = mul_ge58b(_e2, a1_11);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e3);
    return _e4;
}

fn gaussian(a1_12: u32, a2_2: u32, a3_: f32, a4_: bool, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_Color_6b73191a_1_ {
    var local_14: FeLocal_fe_Color_6b73191a_1_;
    var local_15: bool = false;
    var local_16: f32 = f32();
    var local_17: u32 = u32();
    var loop_result: FeLocal_fe_Color_6b73191a_1_;
    var loop_did_return: bool = false;
    var loop_header_carry_46_: bool;
    var local_18: f32 = f32();
    var local_19: FeLocal_fe_Color_6b73191a_1_ = FeLocal_fe_Color_6b73191a_1_();
    var local_20: f32 = f32();
    var local_21: f32 = f32();
    var local_22: u32 = u32();
    var loop_result_1: FeLocal_fe_Color_6b73191a_1_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_61_: bool;
    var loop_header_carry_63_: bool;
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var local_25: u32 = u32();
    var local_26: u32 = u32();

    let _e13 = pixels[i32(((a2_2 << 8u) | a1_12))].l;
    let _e15 = pixels[i32(((a2_2 << 8u) | a1_12))].a;
    let _e17 = pixels[i32(((a2_2 << 8u) | a1_12))].b;
    let _e18 = FeLocal_fe_Color_6b73191a_1_(_e13, _e15, _e17);
    if (a3_ < 0.05f) {
        local_14 = _e18;
        local_15 = true;
    }
    let _e186 = local_15;
    if _e186 {
    } else {
        let _e25 = min_(a3_, 10f);
        let _e30 = to_i32_(((_e25 * 3f) + 0.999f));
        local_16 = (1f / (1f + (0.5f / ((_e25 * _e25) * 256f))));
        local_17 = 0u;
        loop {
            let _e47 = local_16;
            let _e49 = local_17;
            let _e51 = (_e49 < 8u);
            loop_header_carry_46_ = _e51;
            if _e51 {
                local_16 = (_e47 * _e47);
                local_17 = (_e49 + 1u);
                continue;
            } else {
                break;
            }
        }
        let _e59 = local_16;
        let _e61 = from_i32_(a1_12);
        let _e62 = from_i32_(a2_2);
        local_18 = 1f;
        local_19 = _e18;
        local_20 = _e59;
        local_21 = 1f;
        local_22 = 1u;
        loop {
            let _e78 = local_18;
            let _e80 = local_19;
            let _e82 = local_20;
            let _e84 = local_21;
            let _e86 = local_22;
            let _e89 = (bitcast<i32>(_e30) < bitcast<i32>(_e86));
            let _e91 = (_e89 == false);
            loop_header_carry_61_ = _e89;
            loop_header_carry_63_ = _e91;
            if _e91 {
                let _e93 = (_e84 * _e82);
                let _e95 = from_i32_(_e86);
                if a4_ {
                    local_23 = a1_12;
                } else {
                    let _e98 = max_(0f, (_e61 - _e95));
                    let _e99 = to_i32_(_e98);
                    local_23 = _e99;
                }
                let _e104 = local_23;
                if a4_ {
                    local_24 = a1_12;
                } else {
                    let _e107 = min_(255f, (_e61 + _e95));
                    let _e108 = to_i32_(_e107);
                    local_24 = _e108;
                }
                let _e113 = local_24;
                if a4_ {
                    let _e116 = max_(0f, (_e62 - _e95));
                    let _e117 = to_i32_(_e116);
                    local_25 = _e117;
                } else {
                    local_25 = a2_2;
                }
                let _e122 = local_25;
                if a4_ {
                    let _e125 = min_(255f, (_e62 + _e95));
                    let _e126 = to_i32_(_e125);
                    local_26 = _e126;
                } else {
                    local_26 = a2_2;
                }
                let _e130 = local_26;
                let _e137 = pixels[i32(((_e122 << 8u) | _e104))].l;
                let _e139 = pixels[i32(((_e122 << 8u) | _e104))].a;
                let _e141 = pixels[i32(((_e122 << 8u) | _e104))].b;
                let _e149 = pixels[i32(((_e130 << 8u) | _e113))].l;
                let _e151 = pixels[i32(((_e130 << 8u) | _e113))].a;
                let _e153 = pixels[i32(((_e130 << 8u) | _e113))].b;
                let _e155 = impl_trait_Color_add(FeLocal_fe_Color_6b73191a_1_(_e137, _e139, _e141), FeLocal_fe_Color_6b73191a_1_(_e149, _e151, _e153));
                let _e156 = impl_trait_Color_mul(_e155, _e93);
                let _e157 = impl_trait_Color_add(_e80, _e156);
                let _e164 = (_e86 + 1u);
                if ((((_e86 ^ _e164) & (1u ^ _e164)) & 2147483648u) != 0u) {
                } else {
                    local_18 = (_e78 + (2f * _e93));
                    local_19 = _e157;
                    local_20 = (_e82 * (_e59 * _e59));
                    local_21 = _e93;
                    local_22 = _e164;
                    continue;
                }
                (*fe_trapped_1) = true;
                break;
            } else {
                let _e176 = impl_trait_Color_div(_e80, _e78);
                loop_result_1 = _e176;
                loop_did_return_1 = true;
                break;
            }
        }
        let _e183 = loop_result_1;
        local_14 = _e183;
    }
    let _e188 = local_14;
    return _e188;
}

@compute @workgroup_size(8, 8, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_496_: FeLocal_fe_MandelbrotViewState_c524184f_18_ = FeLocal_fe_MandelbrotViewState_c524184f_18_();

    let _e11 = params.p30_;
    let _e13 = params.p31_;
    let _e15 = params.p32_;
    let _e17 = params.p33_;
    let _e19 = params.p34_;
    let _e21 = params.p35_;
    let _e23 = params.p36_;
    let _e25 = params.p37_;
    let _e27 = params.p38_;
    let _e29 = params.p39_;
    let _e31 = params.p40_;
    let _e33 = params.p41_;
    let _e35 = params.p42_;
    let _e37 = params.p43_;
    let _e39 = params.p44_;
    let _e41 = params.p45_;
    let _e43 = params.p46_;
    let _e45 = params.p47_;
    let _e49 = params.p48_;
    let _e51 = params.p49_;
    let _e53 = params.p50_;
    let _e55 = params.p51_;
    let _e59 = params.p52_;
    let _e61 = params.p53_;
    let _e63 = params.p54_;
    let _e65 = params.p55_;
    let _e67 = params.p56_;
    let _e69 = params.p57_;
    let _e71 = params.p58_;
    let _e73 = params.p59_;
    let _e77 = params.p60_;
    let _e79 = params.p61_;
    let _e81 = params.p62_;
    let _e83 = params.p63_;
    let _e87 = params.p64_;
    let _e89 = params.p65_;
    let _e91 = params.p66_;
    let _e93 = params.p67_;
    let _e95 = params.p68_;
    let _e97 = params.p69_;
    let _e99 = params.p70_;
    let _e101 = params.p71_;
    let _e103 = params.p72_;
    let _e105 = params.p73_;
    let _e107 = params.p74_;
    let _e109 = params.p75_;
    let _e111 = params.p76_;
    let _e113 = params.p77_;
    let _e115 = params.p78_;
    let _e117 = params.p79_;
    let _e121 = params.p80_;
    let _e123 = params.p81_;
    let _e127 = params.p82_;
    let _e129 = params.p83_;
    let _e131 = params.p84_;
    let _e133 = params.p85_;
    let _e135 = params.p86_;
    let _e137 = params.p87_;
    let _e139 = params.p88_;
    let _e141 = params.p89_;
    let _e143 = params.p90_;
    let _e145 = params.p91_;
    let _e147 = params.p92_;
    let _e149 = params.p93_;
    let _e151 = params.p94_;
    let _e153 = params.p95_;
    let _e159 = cache[i32(0u)].blur_dirty;
    if (_e159 == 0u) {
        local_1 = true;
    }
    let _e245 = local_1;
    if _e245 {
    } else {
        let _e168 = reference[i32(0u)].active_;
        let _e170 = reference[i32(0u)].active_valid;
        let _e172 = reference[i32(0u)].pending;
        let _e174 = reference[i32(0u)].index;
        let _e176 = reference[i32(0u)].zx_s;
        let _e178 = reference[i32(0u)].zy_s;
        let _e180 = reference[i32(0u)].ready_at;
        fixed_local_496_ = FeLocal_fe_MandelbrotViewState_c524184f_18_(FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e11, FeLocal_fe_More_More_Last_60a5ba63_5_(_e13, FeLocal_fe_More_Last_1ac585f5_4_(_e15, FeLocal_fe_Last_eb970eb0_3_(_e17))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e19, FeLocal_fe_More_More_Last_60a5ba63_5_(_e21, FeLocal_fe_More_Last_1ac585f5_4_(_e23, FeLocal_fe_Last_eb970eb0_3_(_e25)))))), _e27, _e29, FeLocal_fe_Complex_f32_87ec9249_9_(_e31, _e33)), _e35, _e37, _e39, _e41, _e43, FeLocal_fe_GestureSession_6b679731_15_(FeLocal_fe_Contacts_2_ac13bf77_13_(array<FeLocal_fe_Contact_2b5c3d26_12_, 2>(FeLocal_fe_Contact_2b5c3d26_12_((_e45 != 0u), _e49, FeLocal_fe_Vec2_f32_2772165c_11_(_e51, _e53)), FeLocal_fe_Contact_2b5c3d26_12_((_e55 != 0u), _e59, FeLocal_fe_Vec2_f32_2772165c_11_(_e61, _e63)))), FeLocal_fe_Viewport_91e53b90_14_(FeLocal_fe_Vec2_f32_2772165c_11_(_e65, _e67), FeLocal_fe_Vec2_f32_2772165c_11_(_e69, _e71)), FeLocal_fe_Contacts_2_ac13bf77_13_(array<FeLocal_fe_Contact_2b5c3d26_12_, 2>(FeLocal_fe_Contact_2b5c3d26_12_((_e73 != 0u), _e77, FeLocal_fe_Vec2_f32_2772165c_11_(_e79, _e81)), FeLocal_fe_Contact_2b5c3d26_12_((_e83 != 0u), _e87, FeLocal_fe_Vec2_f32_2772165c_11_(_e89, _e91)))), FeLocal_fe_Camera_03494b0d_10_(FeLocal_fe_Complex_Coordinate_d4657101_8_(FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e93, FeLocal_fe_More_More_Last_60a5ba63_5_(_e95, FeLocal_fe_More_Last_1ac585f5_4_(_e97, FeLocal_fe_Last_eb970eb0_3_(_e99))))), FeLocal_fe_Coordinate_bdc10f09_7_(FeLocal_fe_More_More_More_Last_e6310ae8_6_(_e101, FeLocal_fe_More_More_Last_60a5ba63_5_(_e103, FeLocal_fe_More_Last_1ac585f5_4_(_e105, FeLocal_fe_Last_eb970eb0_3_(_e107)))))), _e109, _e111, FeLocal_fe_Complex_f32_87ec9249_9_(_e113, _e115))), FeLocal_fe_BackingRequest_2bcae9f8_16_((_e117 != 0u), _e121), FeLocal_fe_CameraTrace_7ca62f00_17_((_e123 != 0u), array<u32, 14>(_e127, _e129, _e131, _e133, _e135, _e137, _e139, _e141, _e143, _e145, _e147, _e149, _e151, _e153)));
        let _e230 = blur_sigma(FeLocal_fe_ReferenceControl_7d077120_2_(_e168, _e170, _e172, _e174, _e176, _e178, _e180), (&fixed_local_496_));
        let _e235 = gaussian(global_invocation_id.x, global_invocation_id.y, _e230, false, (&fe_trapped));
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e235.l;
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e235.a;
        horizontal[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e235.b;
    }
    let _e256 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e256);
}
