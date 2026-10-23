struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_5_,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_6_,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: FeLocal_fe_shader_private_layout_7_,
    f1_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: FeLocal_fe_shader_private_layout_8_,
    f1_: f32,
    f2_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: FeLocal_fe_shader_private_layout_7_,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: FeLocal_fe_shader_private_layout_11_,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: FeLocal_fe_shader_private_layout_12_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: FeLocal_fe_shader_private_layout_10_,
    f1_: FeLocal_fe_shader_private_layout_9_,
    f2_: f32,
    f3_: bool,
    f4_: FeLocal_fe_shader_private_layout_10_,
    f5_: bool,
    f6_: u32,
    f7_: bool,
    f8_: u32,
    f9_: FeLocal_fe_shader_private_layout_9_,
    f10_: FeLocal_fe_shader_private_layout_9_,
    f11_: FeLocal_fe_shader_private_layout_9_,
    f12_: FeLocal_fe_shader_private_layout_9_,
    f13_: FeLocal_fe_shader_private_layout_13_,
    f14_: f32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
    f1_: FeLocal_fe_shader_private_layout_9_,
    f2_: f32,
    f3_: bool,
    f4_: FeLocal_fe_shader_private_layout_9_,
    f5_: bool,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: bool,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: array<FeLocal_fe_shader_private_layout_17_, 10>,
}

struct FeLocal_fe_shader_private_layout_19_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
    f1_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_20_ {
    f0_: FeLocal_fe_shader_private_layout_18_,
    f1_: FeLocal_fe_shader_private_layout_19_,
}

struct FeLocal_fe_shader_private_layout_21_ {
    f0_: bool,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_22_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
    f1_: FeLocal_fe_shader_private_layout_14_,
    f2_: FeLocal_fe_shader_private_layout_15_,
    f3_: FeLocal_fe_shader_private_layout_16_,
    f4_: u32,
    f5_: f32,
    f6_: f32,
    f7_: f32,
    f8_: f32,
    f9_: f32,
    f10_: f32,
    f11_: f32,
    f12_: FeLocal_fe_shader_private_layout_13_,
    f13_: f32,
    f14_: f32,
    f15_: f32,
    f16_: f32,
    f17_: f32,
    f18_: FeLocal_fe_shader_private_layout_20_,
    f19_: FeLocal_fe_shader_private_layout_21_,
}

struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_23_ {
    f0_: FeLocal_fe_shader_private_layout_13_,
    f1_: u32,
    f2_: f32,
    f3_: u32,
    f4_: f32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_24_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct horizontal_element {
    l: f32,
    a: f32,
    b: f32,
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
    p42_: f32,
    p43_: f32,
    p44_: f32,
    p45_: f32,
    p46_: f32,
    p47_: f32,
    p48_: f32,
    p49_: u32,
    p50_: f32,
    p51_: f32,
    p52_: f32,
    p53_: f32,
    p54_: f32,
    p55_: f32,
    p56_: f32,
    p57_: f32,
    p58_: f32,
    p59_: f32,
    p60_: f32,
    p61_: u32,
    p62_: u32,
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
    p79_: f32,
    p80_: f32,
    p81_: f32,
    p82_: f32,
    p83_: f32,
    p84_: f32,
    p85_: f32,
    p86_: f32,
    p87_: f32,
    p88_: f32,
    p89_: u32,
    p90_: f32,
    p91_: f32,
    p92_: u32,
    p93_: u32,
    p94_: u32,
    p95_: u32,
    p96_: u32,
    p97_: u32,
    p98_: u32,
    p99_: u32,
    p100_: f32,
    p101_: f32,
    p102_: f32,
    p103_: f32,
    p104_: f32,
    p105_: f32,
    p106_: f32,
    p107_: f32,
    p108_: f32,
    p109_: f32,
    p110_: f32,
    p111_: f32,
    p112_: f32,
    p113_: f32,
    p114_: f32,
    p115_: f32,
    p116_: f32,
    p117_: f32,
    p118_: f32,
    p119_: f32,
    p120_: f32,
    p121_: f32,
    p122_: u32,
    p123_: u32,
    p124_: f32,
    p125_: f32,
    p126_: u32,
    p127_: u32,
    p128_: f32,
    p129_: f32,
    p130_: u32,
    p131_: u32,
    p132_: f32,
    p133_: f32,
    p134_: u32,
    p135_: u32,
    p136_: f32,
    p137_: f32,
    p138_: u32,
    p139_: u32,
    p140_: f32,
    p141_: f32,
    p142_: u32,
    p143_: u32,
    p144_: f32,
    p145_: f32,
    p146_: u32,
    p147_: u32,
    p148_: f32,
    p149_: f32,
    p150_: u32,
    p151_: u32,
    p152_: f32,
    p153_: f32,
    p154_: u32,
    p155_: u32,
    p156_: f32,
    p157_: f32,
    p158_: u32,
    p159_: u32,
    p160_: f32,
    p161_: f32,
    p162_: f32,
    p163_: f32,
    p164_: f32,
    p165_: f32,
    p166_: u32,
    p167_: f32,
}

@group(0) @binding(0)
var<storage, read_write> horizontal: array<horizontal_element>;
@group(0) @binding(1)
var<storage, read_write> blurred: array<blurred_element>;
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

fn display_age(a0_1: FeLocal_fe_shader_private_layout_2_, a1_1: ptr<function, FeLocal_fe_shader_private_layout_22_>) -> f32 {
    var local_5: f32;
    var local_6: bool = false;
    var local_7: f32 = f32();

    let _e5 = (*a1_1).f16_;
    if (0.5f <= _e5) {
    } else {
        if (a0_1.f2_ == 1u) {
        } else {
            let _e12 = (*a1_1).f13_;
            let _e14 = (*a1_1).f14_;
            let _e16 = max_(_e14, a0_1.f6_);
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

fn blur_sigma(a0_5: FeLocal_fe_shader_private_layout_2_, a1_4: ptr<function, FeLocal_fe_shader_private_layout_22_>) -> f32 {
    let _e2 = display_age(a0_5, a1_4);
    let _e3 = blur_radius(_e2);
    let _e8 = (*a1_4).f12_.f2_;
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

fn perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_9: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_(a0_9.f0_, a0_9.f1_, a0_9.f2_);
}

fn div_ge58b(a0_10: FeLocal_fe_shader_private_layout_0_, a1_6: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_10.f0_ / a1_6), (a0_10.f1_ / a1_6), (a0_10.f2_ / a1_6));
}

fn perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(a0_11: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_1_ {
    return FeLocal_fe_shader_private_layout_1_(a0_11.f0_, a0_11.f1_, a0_11.f2_);
}

fn impl_trait_Color_div(a0_12: FeLocal_fe_shader_private_layout_1_, a1_7: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_12);
    let _e3 = div_ge58b(_e2, a1_7);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e3);
    return _e4;
}

fn add_ge58b(a0_13: FeLocal_fe_shader_private_layout_0_, a1_8: FeLocal_fe_shader_private_layout_0_) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_13.f0_ + a1_8.f0_), (a0_13.f1_ + a1_8.f1_), (a0_13.f2_ + a1_8.f2_));
}

fn impl_trait_Color_add(a0_14: FeLocal_fe_shader_private_layout_1_, a1_9: FeLocal_fe_shader_private_layout_1_) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_14);
    let _e3 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a1_9);
    let _e4 = add_ge58b(_e2, _e3);
    let _e5 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e4);
    return _e5;
}

fn mul_ge58b(a0_15: FeLocal_fe_shader_private_layout_0_, a1_10: f32) -> FeLocal_fe_shader_private_layout_0_ {
    return FeLocal_fe_shader_private_layout_0_((a0_15.f0_ * a1_10), (a0_15.f1_ * a1_10), (a0_15.f2_ * a1_10));
}

fn impl_trait_Color_mul(a0_16: FeLocal_fe_shader_private_layout_1_, a1_11: f32) -> FeLocal_fe_shader_private_layout_1_ {
    let _e2 = perceptual_color_lib_impl_Color_4fa0_to_vec_0c7b(a0_16);
    let _e3 = mul_ge58b(_e2, a1_11);
    let _e4 = perceptual_color_lib_impl_Color_4fa0_from_vec_0f6e(_e3);
    return _e4;
}

fn gaussian(a1_12: u32, a2_2: u32, a3_: f32, a4_: bool, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_1_ {
    var local_14: FeLocal_fe_shader_private_layout_1_;
    var local_15: bool = false;
    var local_16: f32 = f32();
    var local_17: u32 = u32();
    var loop_result: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return: bool = false;
    var loop_header_carry_46_: bool;
    var local_18: f32 = f32();
    var local_19: FeLocal_fe_shader_private_layout_1_ = FeLocal_fe_shader_private_layout_1_();
    var local_20: f32 = f32();
    var local_21: f32 = f32();
    var local_22: u32 = u32();
    var loop_result_1: FeLocal_fe_shader_private_layout_1_;
    var loop_did_return_1: bool = false;
    var loop_header_carry_61_: bool;
    var loop_header_carry_63_: bool;
    var local_23: u32 = u32();
    var local_24: u32 = u32();
    var local_25: u32 = u32();
    var local_26: u32 = u32();

    let _e13 = horizontal[i32(((a2_2 << 8u) | a1_12))].l;
    let _e15 = horizontal[i32(((a2_2 << 8u) | a1_12))].a;
    let _e17 = horizontal[i32(((a2_2 << 8u) | a1_12))].b;
    let _e18 = FeLocal_fe_shader_private_layout_1_(_e13, _e15, _e17);
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
                let _e137 = horizontal[i32(((_e122 << 8u) | _e104))].l;
                let _e139 = horizontal[i32(((_e122 << 8u) | _e104))].a;
                let _e141 = horizontal[i32(((_e122 << 8u) | _e104))].b;
                let _e149 = horizontal[i32(((_e130 << 8u) | _e113))].l;
                let _e151 = horizontal[i32(((_e130 << 8u) | _e113))].a;
                let _e153 = horizontal[i32(((_e130 << 8u) | _e113))].b;
                let _e155 = impl_trait_Color_add(FeLocal_fe_shader_private_layout_1_(_e137, _e139, _e141), FeLocal_fe_shader_private_layout_1_(_e149, _e151, _e153));
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
    var fixed_local_773_: FeLocal_fe_shader_private_layout_22_ = FeLocal_fe_shader_private_layout_22_();

    let _e11 = params.p29_;
    let _e13 = params.p30_;
    let _e15 = params.p31_;
    let _e17 = params.p32_;
    let _e19 = params.p33_;
    let _e21 = params.p34_;
    let _e23 = params.p35_;
    let _e25 = params.p36_;
    let _e27 = params.p37_;
    let _e29 = params.p38_;
    let _e31 = params.p39_;
    let _e33 = params.p40_;
    let _e35 = params.p41_;
    let _e37 = params.p42_;
    let _e39 = params.p43_;
    let _e41 = params.p44_;
    let _e43 = params.p45_;
    let _e45 = params.p46_;
    let _e47 = params.p47_;
    let _e49 = params.p48_;
    let _e51 = params.p49_;
    let _e55 = params.p50_;
    let _e57 = params.p51_;
    let _e59 = params.p52_;
    let _e61 = params.p53_;
    let _e63 = params.p54_;
    let _e65 = params.p55_;
    let _e67 = params.p56_;
    let _e69 = params.p57_;
    let _e71 = params.p58_;
    let _e73 = params.p59_;
    let _e75 = params.p60_;
    let _e77 = params.p61_;
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
    let _e119 = params.p80_;
    let _e121 = params.p81_;
    let _e123 = params.p82_;
    let _e125 = params.p83_;
    let _e127 = params.p84_;
    let _e129 = params.p85_;
    let _e131 = params.p86_;
    let _e133 = params.p87_;
    let _e135 = params.p88_;
    let _e137 = params.p89_;
    let _e141 = params.p90_;
    let _e143 = params.p91_;
    let _e145 = params.p92_;
    let _e149 = params.p93_;
    let _e151 = params.p94_;
    let _e153 = params.p95_;
    let _e155 = params.p96_;
    let _e157 = params.p97_;
    let _e159 = params.p98_;
    let _e161 = params.p99_;
    let _e163 = params.p100_;
    let _e165 = params.p101_;
    let _e167 = params.p102_;
    let _e169 = params.p103_;
    let _e171 = params.p104_;
    let _e173 = params.p105_;
    let _e175 = params.p106_;
    let _e177 = params.p107_;
    let _e179 = params.p108_;
    let _e181 = params.p109_;
    let _e183 = params.p110_;
    let _e185 = params.p111_;
    let _e187 = params.p112_;
    let _e189 = params.p113_;
    let _e191 = params.p114_;
    let _e193 = params.p115_;
    let _e195 = params.p116_;
    let _e197 = params.p117_;
    let _e199 = params.p118_;
    let _e201 = params.p119_;
    let _e203 = params.p120_;
    let _e205 = params.p121_;
    let _e207 = params.p122_;
    let _e211 = params.p123_;
    let _e213 = params.p124_;
    let _e215 = params.p125_;
    let _e217 = params.p126_;
    let _e221 = params.p127_;
    let _e223 = params.p128_;
    let _e225 = params.p129_;
    let _e227 = params.p130_;
    let _e231 = params.p131_;
    let _e233 = params.p132_;
    let _e235 = params.p133_;
    let _e237 = params.p134_;
    let _e241 = params.p135_;
    let _e243 = params.p136_;
    let _e245 = params.p137_;
    let _e247 = params.p138_;
    let _e251 = params.p139_;
    let _e253 = params.p140_;
    let _e255 = params.p141_;
    let _e257 = params.p142_;
    let _e261 = params.p143_;
    let _e263 = params.p144_;
    let _e265 = params.p145_;
    let _e267 = params.p146_;
    let _e271 = params.p147_;
    let _e273 = params.p148_;
    let _e275 = params.p149_;
    let _e277 = params.p150_;
    let _e281 = params.p151_;
    let _e283 = params.p152_;
    let _e285 = params.p153_;
    let _e287 = params.p154_;
    let _e291 = params.p155_;
    let _e293 = params.p156_;
    let _e295 = params.p157_;
    let _e297 = params.p158_;
    let _e301 = params.p159_;
    let _e303 = params.p160_;
    let _e305 = params.p161_;
    let _e307 = params.p162_;
    let _e309 = params.p163_;
    let _e311 = params.p164_;
    let _e313 = params.p165_;
    let _e315 = params.p166_;
    let _e319 = params.p167_;
    let _e325 = cache[i32(0u)].blur_dirty;
    if (_e325 == 0u) {
        local_1 = true;
    }
    let _e451 = local_1;
    if _e451 {
    } else {
        let _e334 = reference[i32(0u)].active_;
        let _e336 = reference[i32(0u)].active_valid;
        let _e338 = reference[i32(0u)].pending;
        let _e340 = reference[i32(0u)].index;
        let _e342 = reference[i32(0u)].zx_s;
        let _e344 = reference[i32(0u)].zy_s;
        let _e346 = reference[i32(0u)].ready_at;
        fixed_local_773_ = FeLocal_fe_shader_private_layout_22_(FeLocal_fe_shader_private_layout_3_(_e11, _e13, _e15, _e17, _e19, _e21), FeLocal_fe_shader_private_layout_14_(FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e23, FeLocal_fe_shader_private_layout_6_(_e25, FeLocal_fe_shader_private_layout_5_(_e27, FeLocal_fe_shader_private_layout_4_(_e29)))), FeLocal_fe_shader_private_layout_7_(_e31, FeLocal_fe_shader_private_layout_6_(_e33, FeLocal_fe_shader_private_layout_5_(_e35, FeLocal_fe_shader_private_layout_4_(_e37))))), _e39, FeLocal_fe_shader_private_layout_9_(_e41, _e43)), FeLocal_fe_shader_private_layout_9_(_e45, _e47), _e49, (_e51 != 0u), FeLocal_fe_shader_private_layout_10_(FeLocal_fe_shader_private_layout_8_(FeLocal_fe_shader_private_layout_7_(_e55, FeLocal_fe_shader_private_layout_6_(_e57, FeLocal_fe_shader_private_layout_5_(_e59, FeLocal_fe_shader_private_layout_4_(_e61)))), FeLocal_fe_shader_private_layout_7_(_e63, FeLocal_fe_shader_private_layout_6_(_e65, FeLocal_fe_shader_private_layout_5_(_e67, FeLocal_fe_shader_private_layout_4_(_e69))))), _e71, FeLocal_fe_shader_private_layout_9_(_e73, _e75)), (_e77 != 0u), _e81, (_e83 != 0u), _e87, FeLocal_fe_shader_private_layout_9_(_e89, _e91), FeLocal_fe_shader_private_layout_9_(_e93, _e95), FeLocal_fe_shader_private_layout_9_(_e97, _e99), FeLocal_fe_shader_private_layout_9_(_e101, _e103), FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_7_(_e105, FeLocal_fe_shader_private_layout_6_(_e107, FeLocal_fe_shader_private_layout_5_(_e109, FeLocal_fe_shader_private_layout_4_(_e111))))), FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_7_(_e113, FeLocal_fe_shader_private_layout_6_(_e115, FeLocal_fe_shader_private_layout_5_(_e117, FeLocal_fe_shader_private_layout_4_(_e119)))))), _e121, _e123), _e125), FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_9_(_e127, _e129), FeLocal_fe_shader_private_layout_9_(_e131, _e133), _e135, (_e137 != 0u), FeLocal_fe_shader_private_layout_9_(_e141, _e143), (_e145 != 0u)), FeLocal_fe_shader_private_layout_16_(_e149, _e151, _e153, _e155, _e157, _e159), _e161, _e163, _e165, _e167, _e169, _e171, _e173, _e175, FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_7_(_e177, FeLocal_fe_shader_private_layout_6_(_e179, FeLocal_fe_shader_private_layout_5_(_e181, FeLocal_fe_shader_private_layout_4_(_e183))))), FeLocal_fe_shader_private_layout_11_(FeLocal_fe_shader_private_layout_7_(_e185, FeLocal_fe_shader_private_layout_6_(_e187, FeLocal_fe_shader_private_layout_5_(_e189, FeLocal_fe_shader_private_layout_4_(_e191)))))), _e193, _e195), _e197, _e199, _e201, _e203, _e205, FeLocal_fe_shader_private_layout_20_(FeLocal_fe_shader_private_layout_18_(array<FeLocal_fe_shader_private_layout_17_, 10>(FeLocal_fe_shader_private_layout_17_((_e207 != 0u), _e211, FeLocal_fe_shader_private_layout_9_(_e213, _e215)), FeLocal_fe_shader_private_layout_17_((_e217 != 0u), _e221, FeLocal_fe_shader_private_layout_9_(_e223, _e225)), FeLocal_fe_shader_private_layout_17_((_e227 != 0u), _e231, FeLocal_fe_shader_private_layout_9_(_e233, _e235)), FeLocal_fe_shader_private_layout_17_((_e237 != 0u), _e241, FeLocal_fe_shader_private_layout_9_(_e243, _e245)), FeLocal_fe_shader_private_layout_17_((_e247 != 0u), _e251, FeLocal_fe_shader_private_layout_9_(_e253, _e255)), FeLocal_fe_shader_private_layout_17_((_e257 != 0u), _e261, FeLocal_fe_shader_private_layout_9_(_e263, _e265)), FeLocal_fe_shader_private_layout_17_((_e267 != 0u), _e271, FeLocal_fe_shader_private_layout_9_(_e273, _e275)), FeLocal_fe_shader_private_layout_17_((_e277 != 0u), _e281, FeLocal_fe_shader_private_layout_9_(_e283, _e285)), FeLocal_fe_shader_private_layout_17_((_e287 != 0u), _e291, FeLocal_fe_shader_private_layout_9_(_e293, _e295)), FeLocal_fe_shader_private_layout_17_((_e297 != 0u), _e301, FeLocal_fe_shader_private_layout_9_(_e303, _e305)))), FeLocal_fe_shader_private_layout_19_(FeLocal_fe_shader_private_layout_9_(_e307, _e309), FeLocal_fe_shader_private_layout_9_(_e311, _e313))), FeLocal_fe_shader_private_layout_21_((_e315 != 0u), _e319));
        let _e436 = blur_sigma(FeLocal_fe_shader_private_layout_2_(_e334, _e336, _e338, _e340, _e342, _e344, _e346), (&fixed_local_773_));
        let _e441 = gaussian(global_invocation_id.x, global_invocation_id.y, _e436, true, (&fe_trapped));
        blurred[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].l = _e441.f0_;
        blurred[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].a = _e441.f1_;
        blurred[i32(((global_invocation_id.y << 8u) | global_invocation_id.x))].b = _e441.f2_;
    }
    let _e462 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 256u)) + (global_invocation_id.z * 65536u))] = u32(_e462);
}
