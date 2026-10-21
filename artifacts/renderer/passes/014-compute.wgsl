struct FeLocal_fe_shader_private_layout_0_ {
    f0_: f32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_0_,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_1_,
}

struct FeLocal_fe_shader_private_layout_3_ {
    f0_: f32,
    f1_: FeLocal_fe_shader_private_layout_2_,
}

struct FeLocal_fe_shader_private_layout_4_ {
    f0_: FeLocal_fe_shader_private_layout_3_,
}

struct FeLocal_fe_shader_private_layout_5_ {
    f0_: FeLocal_fe_shader_private_layout_4_,
    f1_: FeLocal_fe_shader_private_layout_4_,
}

struct FeLocal_fe_shader_private_layout_6_ {
    f0_: FeLocal_fe_shader_private_layout_5_,
    f1_: f32,
    f2_: f32,
}

struct FeLocal_fe_shader_private_layout_9_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_10_ {
    f0_: bool,
    f1_: u32,
    f2_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_11_ {
    f0_: array<FeLocal_fe_shader_private_layout_10_, 10>,
}

struct FeLocal_fe_shader_private_layout_12_ {
    f0_: FeLocal_fe_shader_private_layout_9_,
    f1_: FeLocal_fe_shader_private_layout_9_,
}

struct FeLocal_fe_shader_private_layout_13_ {
    f0_: FeLocal_fe_shader_private_layout_11_,
    f1_: FeLocal_fe_shader_private_layout_12_,
}

struct FeLocal_fe_shader_private_layout_14_ {
    f0_: bool,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_15_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: f32,
    f2_: f32,
    f3_: f32,
    f4_: f32,
    f5_: f32,
    f6_: FeLocal_fe_shader_private_layout_13_,
    f7_: FeLocal_fe_shader_private_layout_14_,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
}

struct FeLocal_fe_shader_private_layout_7_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: u32,
    f2_: f32,
    f3_: u32,
    f4_: f32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
}

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
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
    p31_: u32,
    p32_: u32,
    p33_: f32,
    p34_: f32,
    p35_: u32,
    p36_: u32,
    p37_: f32,
    p38_: f32,
    p39_: u32,
    p40_: u32,
    p41_: f32,
    p42_: f32,
    p43_: u32,
    p44_: u32,
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
    p55_: u32,
    p56_: u32,
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
    p67_: u32,
    p68_: u32,
    p69_: f32,
    p70_: f32,
    p71_: f32,
    p72_: f32,
    p73_: f32,
    p74_: f32,
    p75_: u32,
    p76_: f32,
}

@group(0) @binding(0)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 1>;

fn is_input_settled(a0_: ptr<function, FeLocal_fe_shader_private_layout_15_>) -> bool {
    var local_4: bool;
    var local_5: bool = false;
    var local_6: bool = bool();

    let _e4 = (*a0_).f4_;
    if (_e4 < 0.5f) {
        let _e8 = (*a0_).f1_;
        let _e10 = (*a0_).f2_;
        if (60f <= (_e8 - _e10)) {
            local_6 = true;
        }
    }
    let _e17 = local_6;
    return _e17;
}

fn can_refine(a0_1: FeLocal_fe_shader_private_layout_8_, a1_: ptr<function, FeLocal_fe_shader_private_layout_15_>) -> bool {
    var local_7: bool;
    var local_8: bool = false;
    var local_9: bool = bool();

    if (a0_1.f2_ == 0u) {
        if (a0_1.f1_ == 1u) {
            let _e10 = is_input_settled(a1_);
            if _e10 {
                local_9 = true;
            }
        }
    }
    let _e14 = local_9;
    return _e14;
}

fn iteration_limit(a0_2: f32, fe_trapped_1: ptr<function, bool>) -> u32 {
    var local_10: u32 = u32();
    var local_11: f32 = f32();
    var local_12: u32 = u32();
    var loop_result: u32;
    var loop_did_return: bool = false;
    var loop_header_carry_5_: bool;
    var local_13: u32 = u32();
    var local_14: f32 = f32();
    var local_15: u32;
    var local_16: bool = false;
    var local_17: u32 = u32();

    local_10 = 0u;
    local_11 = a0_2;
    local_12 = 0u;
    loop {
        let _e12 = local_10;
        let _e14 = local_11;
        let _e16 = local_12;
        let _e18 = (_e16 < 96u);
        loop_header_carry_5_ = _e18;
        if _e18 {
            if (_e14 < 1f) {
                if (_e12 > (4294967295u - 1u)) {
                    (*fe_trapped_1) = true;
                    break;
                } else {
                    local_13 = (_e12 + 1u);
                    local_14 = (_e14 * 2f);
                }
            } else {
                local_13 = _e12;
                local_14 = _e14;
            }
            let _e36 = local_13;
            let _e38 = local_14;
            local_10 = _e36;
            local_11 = _e38;
            local_12 = (_e16 + 1u);
            continue;
        } else {
            break;
        }
    }
    let _e46 = local_10;
    let _e52 = (_e46 * 64u);
    let _e53 = (_e46 != 0u);
    if (_e53 && (64u > (4294967295u / select(1u, _e46, _e53)))) {
    } else {
        let _e60 = (256u + _e52);
        if (256u > (4294967295u - _e52)) {
            (*fe_trapped_1) = true;
        }
        if (8192u < _e60) {
            local_17 = 8192u;
        } else {
            local_17 = _e60;
        }
        let _e71 = local_17;
        local_15 = _e71;
        local_16 = true;
    }
    let _e77 = local_16;
    if _e77 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e79 = local_15;
    return _e79;
}

fn to_i32_(a0_3: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_3)), 2147483648u, (a0_3 <= -2147483600f)), 2147483647u, (a0_3 >= 2147483600f)), (a0_3 == a0_3));
}

fn for_view(a0_4: f32, a1_1: f32, fe_trapped_2: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_16_ {
    var local_18: FeLocal_fe_shader_private_layout_16_;
    var local_19: bool = false;

    let _e4 = iteration_limit(a0_4, fe_trapped_2);
    let _e13 = to_i32_(((a1_1 + 127f) / 128f));
    let _e18 = to_i32_(((a1_1 + 255f) / 256f));
    let _e23 = (_e13 != 0u);
    if (_e23 && (_e18 > (4294967295u / select(1u, _e13, _e23)))) {
        (*fe_trapped_2) = true;
    }
    return FeLocal_fe_shader_private_layout_16_(_e4, ((_e4 + 2047u) / 2048u), _e13, _e18, (_e13 * _e18), _e18);
}

fn refine_steps(a0_5: FeLocal_fe_shader_private_layout_16_, fe_trapped_3: ptr<function, bool>) -> u32 {
    var local_20: u32;
    var local_21: bool = false;

    let _e9 = (a0_5.f1_ != 0u);
    if (_e9 && (a0_5.f4_ > (4294967295u / select(1u, a0_5.f1_, _e9)))) {
        (*fe_trapped_3) = true;
    } else {
        local_20 = (a0_5.f1_ * a0_5.f4_);
        local_21 = true;
    }
    let _e19 = local_20;
    return _e19;
}

fn total_steps(a0_6: FeLocal_fe_shader_private_layout_16_, fe_trapped_4: ptr<function, bool>) -> u32 {
    var local_22: u32;
    var local_23: bool = false;

    let _e3 = refine_steps(a0_6, fe_trapped_4);
    let _e9 = (a0_6.f5_ * a0_6.f5_);
    let _e10 = (a0_6.f5_ != 0u);
    if (_e10 && (a0_6.f5_ > (4294967295u / select(1u, a0_6.f5_, _e10)))) {
    } else {
        if (_e3 > (4294967295u - _e9)) {
        } else {
            local_22 = (_e3 + _e9);
            local_23 = true;
        }
        let _e23 = local_23;
        if _e23 {
        }
    }
    let _e26 = local_23;
    if _e26 {
    } else {
        (*fe_trapped_4) = true;
    }
    let _e28 = local_22;
    return _e28;
}

fn advance_cursor(a0_7: FeLocal_fe_shader_private_layout_7_, a1_2: u32, fe_trapped_5: ptr<function, bool>) -> FeLocal_fe_shader_private_layout_7_ {
    var local_24: FeLocal_fe_shader_private_layout_7_;
    var local_25: bool = false;
    var fixed_local_3_: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();
    var local_26: FeLocal_fe_shader_private_layout_7_;
    var local_27: bool = false;
    var local_28: u32 = u32();

    fixed_local_3_ = a0_7;
    let _e9 = (a0_7.f1_ + 1u);
    if (a0_7.f1_ > (4294967295u - 1u)) {
        (*fe_trapped_5) = true;
    }
    fixed_local_3_.f1_ = _e9;
    if ((_e9 < a1_2) == false) {
        local_28 = 1u;
    }
    let _e22 = local_28;
    fixed_local_3_.f8_ = _e22;
    let _e24 = fixed_local_3_;
    return _e24;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;
    var fixed_local_312_: FeLocal_fe_shader_private_layout_15_ = FeLocal_fe_shader_private_layout_15_();
    var local_2: u32;
    var local_3: bool = false;

    let _e6 = params.p16_;
    let _e8 = params.p17_;
    let _e10 = params.p18_;
    let _e12 = params.p19_;
    let _e14 = params.p20_;
    let _e16 = params.p21_;
    let _e18 = params.p22_;
    let _e20 = params.p23_;
    let _e22 = params.p24_;
    let _e24 = params.p25_;
    let _e26 = params.p26_;
    let _e28 = params.p27_;
    let _e30 = params.p28_;
    let _e32 = params.p29_;
    let _e34 = params.p30_;
    let _e36 = params.p31_;
    let _e40 = params.p32_;
    let _e42 = params.p33_;
    let _e44 = params.p34_;
    let _e46 = params.p35_;
    let _e50 = params.p36_;
    let _e52 = params.p37_;
    let _e54 = params.p38_;
    let _e56 = params.p39_;
    let _e60 = params.p40_;
    let _e62 = params.p41_;
    let _e64 = params.p42_;
    let _e66 = params.p43_;
    let _e70 = params.p44_;
    let _e72 = params.p45_;
    let _e74 = params.p46_;
    let _e76 = params.p47_;
    let _e80 = params.p48_;
    let _e82 = params.p49_;
    let _e84 = params.p50_;
    let _e86 = params.p51_;
    let _e90 = params.p52_;
    let _e92 = params.p53_;
    let _e94 = params.p54_;
    let _e96 = params.p55_;
    let _e100 = params.p56_;
    let _e102 = params.p57_;
    let _e104 = params.p58_;
    let _e106 = params.p59_;
    let _e110 = params.p60_;
    let _e112 = params.p61_;
    let _e114 = params.p62_;
    let _e116 = params.p63_;
    let _e120 = params.p64_;
    let _e122 = params.p65_;
    let _e124 = params.p66_;
    let _e126 = params.p67_;
    let _e130 = params.p68_;
    let _e132 = params.p69_;
    let _e134 = params.p70_;
    let _e136 = params.p71_;
    let _e138 = params.p72_;
    let _e140 = params.p73_;
    let _e142 = params.p74_;
    let _e144 = params.p75_;
    let _e148 = params.p76_;
    let _e194 = reference[i32(0u)].active_;
    let _e196 = reference[i32(0u)].active_valid;
    let _e198 = reference[i32(0u)].pending;
    let _e200 = reference[i32(0u)].index;
    let _e202 = reference[i32(0u)].zx_s;
    let _e204 = reference[i32(0u)].zy_s;
    let _e206 = reference[i32(0u)].ready_at;
    fixed_local_312_ = FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_6_(FeLocal_fe_shader_private_layout_5_(FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e6, FeLocal_fe_shader_private_layout_2_(_e8, FeLocal_fe_shader_private_layout_1_(_e10, FeLocal_fe_shader_private_layout_0_(_e12))))), FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e14, FeLocal_fe_shader_private_layout_2_(_e16, FeLocal_fe_shader_private_layout_1_(_e18, FeLocal_fe_shader_private_layout_0_(_e20)))))), _e22, _e24), _e26, _e28, _e30, _e32, _e34, FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_11_(array<FeLocal_fe_shader_private_layout_10_, 10>(FeLocal_fe_shader_private_layout_10_((_e36 != 0u), _e40, FeLocal_fe_shader_private_layout_9_(_e42, _e44)), FeLocal_fe_shader_private_layout_10_((_e46 != 0u), _e50, FeLocal_fe_shader_private_layout_9_(_e52, _e54)), FeLocal_fe_shader_private_layout_10_((_e56 != 0u), _e60, FeLocal_fe_shader_private_layout_9_(_e62, _e64)), FeLocal_fe_shader_private_layout_10_((_e66 != 0u), _e70, FeLocal_fe_shader_private_layout_9_(_e72, _e74)), FeLocal_fe_shader_private_layout_10_((_e76 != 0u), _e80, FeLocal_fe_shader_private_layout_9_(_e82, _e84)), FeLocal_fe_shader_private_layout_10_((_e86 != 0u), _e90, FeLocal_fe_shader_private_layout_9_(_e92, _e94)), FeLocal_fe_shader_private_layout_10_((_e96 != 0u), _e100, FeLocal_fe_shader_private_layout_9_(_e102, _e104)), FeLocal_fe_shader_private_layout_10_((_e106 != 0u), _e110, FeLocal_fe_shader_private_layout_9_(_e112, _e114)), FeLocal_fe_shader_private_layout_10_((_e116 != 0u), _e120, FeLocal_fe_shader_private_layout_9_(_e122, _e124)), FeLocal_fe_shader_private_layout_10_((_e126 != 0u), _e130, FeLocal_fe_shader_private_layout_9_(_e132, _e134)))), FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_9_(_e136, _e138), FeLocal_fe_shader_private_layout_9_(_e140, _e142))), FeLocal_fe_shader_private_layout_14_((_e144 != 0u), _e148));
    let _e210 = can_refine(FeLocal_fe_shader_private_layout_8_(_e194, _e196, _e198, _e200, _e202, _e204, _e206), (&fixed_local_312_));
    if _e210 {
    } else {
        local_1 = true;
    }
    let _e326 = local_1;
    if _e326 {
    } else {
        let _e218 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
        let _e220 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
        let _e222 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e224 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e226 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
        let _e228 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
        let _e230 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
        let _e232 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
        let _e234 = cache[i32(0u)].camera_u002e_zoom;
        let _e236 = cache[i32(0u)].camera_u002e_res;
        let _e238 = cache[i32(0u)].cursor;
        let _e240 = cache[i32(0u)].aa;
        let _e242 = cache[i32(0u)].budget;
        let _e244 = cache[i32(0u)].radius;
        let _e246 = cache[i32(0u)].preview_dirty;
        let _e248 = cache[i32(0u)].blur_dirty;
        let _e250 = cache[i32(0u)].epoch;
        let _e252 = cache[i32(0u)].completed;
        let _e266 = for_view(_e22, _e24, (&fe_trapped));
        let _e267 = total_steps(_e266, (&fe_trapped));
        if (_e238 < _e267) {
        } else {
            local_3 = true;
        }
        let _e324 = local_3;
        if _e324 {
        } else {
            let _e271 = advance_cursor(FeLocal_fe_shader_private_layout_7_(FeLocal_fe_shader_private_layout_6_(FeLocal_fe_shader_private_layout_5_(FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e218, FeLocal_fe_shader_private_layout_2_(_e220, FeLocal_fe_shader_private_layout_1_(_e222, FeLocal_fe_shader_private_layout_0_(_e224))))), FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e226, FeLocal_fe_shader_private_layout_2_(_e228, FeLocal_fe_shader_private_layout_1_(_e230, FeLocal_fe_shader_private_layout_0_(_e232)))))), _e234, _e236), _e238, _e240, _e242, _e244, _e246, _e248, _e250, _e252), _e267, (&fe_trapped));
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e271.f0_.f0_.f0_.f0_.f0_;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e271.f0_.f0_.f0_.f0_.f1_.f0_;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e271.f0_.f0_.f0_.f0_.f1_.f1_.f0_;
            cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e271.f0_.f0_.f0_.f0_.f1_.f1_.f1_.f0_;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e271.f0_.f0_.f1_.f0_.f0_;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e271.f0_.f0_.f1_.f0_.f1_.f0_;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e271.f0_.f0_.f1_.f0_.f1_.f1_.f0_;
            cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e271.f0_.f0_.f1_.f0_.f1_.f1_.f1_.f0_;
            cache[i32(0u)].camera_u002e_zoom = _e271.f0_.f1_;
            cache[i32(0u)].camera_u002e_res = _e271.f0_.f2_;
            cache[i32(0u)].cursor = _e271.f1_;
            cache[i32(0u)].aa = _e271.f2_;
            cache[i32(0u)].budget = _e271.f3_;
            cache[i32(0u)].radius = _e271.f4_;
            cache[i32(0u)].preview_dirty = _e271.f5_;
            cache[i32(0u)].blur_dirty = _e271.f6_;
            cache[i32(0u)].epoch = _e271.f7_;
            cache[i32(0u)].completed = _e271.f8_;
        }
    }
    let _e328 = fe_trapped;
    trap[0u] = u32(_e328);
}
