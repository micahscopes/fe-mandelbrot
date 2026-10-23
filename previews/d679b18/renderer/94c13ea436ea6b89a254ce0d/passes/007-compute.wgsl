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

struct FeLocal_fe_shader_private_layout_8_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_16_ {
    f0_: f32,
    f1_: f32,
}

struct FeLocal_fe_shader_private_layout_17_ {
    f0_: FeLocal_fe_shader_private_layout_16_,
    f1_: FeLocal_fe_shader_private_layout_16_,
}

struct FeLocal_fe_shader_private_layout_18_ {
    f0_: FeLocal_fe_shader_private_layout_6_,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
    f8_: u32,
    f9_: FeLocal_fe_shader_private_layout_17_,
}

struct preview_cache_element {
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
    reference_generation: u32,
    reference_bank: u32,
    prefix_only: u32,
    step_target: u32,
    completed_steps: u32,
    budget: u32,
    epoch: u32,
    completed: u32,
    history_u002e_full_u002e_re: f32,
    history_u002e_full_u002e_im: f32,
    history_u002e_initial_u002e_re: f32,
    history_u002e_initial_u002e_im: f32,
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
var<storage, read_write> preview_cache: array<preview_cache_element>;
@group(0) @binding(1)
var<storage, read_write> cache: array<cache_element>;
@group(0) @binding(2)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(3)
var<storage> params: Params;

fn as_published_initial(a0_: FeLocal_fe_shader_private_layout_7_) -> FeLocal_fe_shader_private_layout_7_ {
    var fixed_local_2_: FeLocal_fe_shader_private_layout_7_ = FeLocal_fe_shader_private_layout_7_();

    fixed_local_2_ = a0_;
    fixed_local_2_.f5_ = 0u;
    fixed_local_2_.f6_ = 0u;
    fixed_local_2_.f8_ = 1u;
    let _e9 = fixed_local_2_;
    return _e9;
}

fn max_(a0_1: f32, a1_: f32) -> f32 {
    var local_2: f32;
    var local_3: bool = false;
    var local_4: f32 = f32();

    if (a1_ < a0_1) {
        local_4 = a0_1;
    } else {
        local_4 = a1_;
    }
    let _e8 = local_4;
    return _e8;
}

fn can_publish_initial(a0_2: FeLocal_fe_shader_private_layout_8_, a1_1: ptr<function, FeLocal_fe_shader_private_layout_15_>, a2_: u32, a3_: u32) -> bool {
    var local_5: bool;
    var local_6: bool = false;
    var local_7: bool = bool();

    if (a0_2.f1_ == 1u) {
        if (a0_2.f2_ == 0u) {
            let _e13 = (*a1_1).f4_;
            if (_e13 < 0.5f) {
                let _e17 = (*a1_1).f1_;
                let _e19 = (*a1_1).f2_;
                let _e21 = max_(_e19, a0_2.f6_);
                if (360f <= (_e17 - _e21)) {
                    if ((a3_ == a2_) == false) {
                        local_7 = true;
                    }
                }
            }
        }
    }
    let _e31 = local_7;
    return _e31;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;
    var fixed_local_737_: FeLocal_fe_shader_private_layout_15_ = FeLocal_fe_shader_private_layout_15_();

    let _e5 = params.p16_;
    let _e7 = params.p17_;
    let _e9 = params.p18_;
    let _e11 = params.p19_;
    let _e13 = params.p20_;
    let _e15 = params.p21_;
    let _e17 = params.p22_;
    let _e19 = params.p23_;
    let _e21 = params.p24_;
    let _e23 = params.p25_;
    let _e25 = params.p26_;
    let _e27 = params.p27_;
    let _e29 = params.p28_;
    let _e31 = params.p29_;
    let _e33 = params.p30_;
    let _e35 = params.p31_;
    let _e39 = params.p32_;
    let _e41 = params.p33_;
    let _e43 = params.p34_;
    let _e45 = params.p35_;
    let _e49 = params.p36_;
    let _e51 = params.p37_;
    let _e53 = params.p38_;
    let _e55 = params.p39_;
    let _e59 = params.p40_;
    let _e61 = params.p41_;
    let _e63 = params.p42_;
    let _e65 = params.p43_;
    let _e69 = params.p44_;
    let _e71 = params.p45_;
    let _e73 = params.p46_;
    let _e75 = params.p47_;
    let _e79 = params.p48_;
    let _e81 = params.p49_;
    let _e83 = params.p50_;
    let _e85 = params.p51_;
    let _e89 = params.p52_;
    let _e91 = params.p53_;
    let _e93 = params.p54_;
    let _e95 = params.p55_;
    let _e99 = params.p56_;
    let _e101 = params.p57_;
    let _e103 = params.p58_;
    let _e105 = params.p59_;
    let _e109 = params.p60_;
    let _e111 = params.p61_;
    let _e113 = params.p62_;
    let _e115 = params.p63_;
    let _e119 = params.p64_;
    let _e121 = params.p65_;
    let _e123 = params.p66_;
    let _e125 = params.p67_;
    let _e129 = params.p68_;
    let _e131 = params.p69_;
    let _e133 = params.p70_;
    let _e135 = params.p71_;
    let _e137 = params.p72_;
    let _e139 = params.p73_;
    let _e141 = params.p74_;
    let _e143 = params.p75_;
    let _e147 = params.p76_;
    let _e193 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e195 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e197 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e199 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e201 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e203 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e205 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e207 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e209 = cache[i32(0u)].camera_u002e_zoom;
    let _e211 = cache[i32(0u)].camera_u002e_res;
    let _e213 = cache[i32(0u)].cursor;
    let _e215 = cache[i32(0u)].aa;
    let _e217 = cache[i32(0u)].budget;
    let _e219 = cache[i32(0u)].radius;
    let _e221 = cache[i32(0u)].preview_dirty;
    let _e223 = cache[i32(0u)].blur_dirty;
    let _e225 = cache[i32(0u)].epoch;
    let _e227 = cache[i32(0u)].completed;
    let _e245 = cache[i32(2u)].epoch;
    let _e250 = reference[i32(0u)].active_;
    let _e252 = reference[i32(0u)].active_valid;
    let _e254 = reference[i32(0u)].pending;
    let _e256 = reference[i32(0u)].index;
    let _e258 = reference[i32(0u)].zx_s;
    let _e260 = reference[i32(0u)].zy_s;
    let _e262 = reference[i32(0u)].ready_at;
    let _e268 = preview_cache[i32(0u)].completed;
    if (_e268 == 0u) {
    } else {
        fixed_local_737_ = FeLocal_fe_shader_private_layout_15_(FeLocal_fe_shader_private_layout_6_(FeLocal_fe_shader_private_layout_5_(FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e5, FeLocal_fe_shader_private_layout_2_(_e7, FeLocal_fe_shader_private_layout_1_(_e9, FeLocal_fe_shader_private_layout_0_(_e11))))), FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e13, FeLocal_fe_shader_private_layout_2_(_e15, FeLocal_fe_shader_private_layout_1_(_e17, FeLocal_fe_shader_private_layout_0_(_e19)))))), _e21, _e23), _e25, _e27, _e29, _e31, _e33, FeLocal_fe_shader_private_layout_13_(FeLocal_fe_shader_private_layout_11_(array<FeLocal_fe_shader_private_layout_10_, 10>(FeLocal_fe_shader_private_layout_10_((_e35 != 0u), _e39, FeLocal_fe_shader_private_layout_9_(_e41, _e43)), FeLocal_fe_shader_private_layout_10_((_e45 != 0u), _e49, FeLocal_fe_shader_private_layout_9_(_e51, _e53)), FeLocal_fe_shader_private_layout_10_((_e55 != 0u), _e59, FeLocal_fe_shader_private_layout_9_(_e61, _e63)), FeLocal_fe_shader_private_layout_10_((_e65 != 0u), _e69, FeLocal_fe_shader_private_layout_9_(_e71, _e73)), FeLocal_fe_shader_private_layout_10_((_e75 != 0u), _e79, FeLocal_fe_shader_private_layout_9_(_e81, _e83)), FeLocal_fe_shader_private_layout_10_((_e85 != 0u), _e89, FeLocal_fe_shader_private_layout_9_(_e91, _e93)), FeLocal_fe_shader_private_layout_10_((_e95 != 0u), _e99, FeLocal_fe_shader_private_layout_9_(_e101, _e103)), FeLocal_fe_shader_private_layout_10_((_e105 != 0u), _e109, FeLocal_fe_shader_private_layout_9_(_e111, _e113)), FeLocal_fe_shader_private_layout_10_((_e115 != 0u), _e119, FeLocal_fe_shader_private_layout_9_(_e121, _e123)), FeLocal_fe_shader_private_layout_10_((_e125 != 0u), _e129, FeLocal_fe_shader_private_layout_9_(_e131, _e133)))), FeLocal_fe_shader_private_layout_12_(FeLocal_fe_shader_private_layout_9_(_e135, _e137), FeLocal_fe_shader_private_layout_9_(_e139, _e141))), FeLocal_fe_shader_private_layout_14_((_e143 != 0u), _e147));
        let _e273 = can_publish_initial(FeLocal_fe_shader_private_layout_8_(_e250, _e252, _e254, _e256, _e258, _e260, _e262), (&fixed_local_737_), _e225, _e245);
        if _e273 {
            let _e274 = as_published_initial(FeLocal_fe_shader_private_layout_7_(FeLocal_fe_shader_private_layout_6_(FeLocal_fe_shader_private_layout_5_(FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e193, FeLocal_fe_shader_private_layout_2_(_e195, FeLocal_fe_shader_private_layout_1_(_e197, FeLocal_fe_shader_private_layout_0_(_e199))))), FeLocal_fe_shader_private_layout_4_(FeLocal_fe_shader_private_layout_3_(_e201, FeLocal_fe_shader_private_layout_2_(_e203, FeLocal_fe_shader_private_layout_1_(_e205, FeLocal_fe_shader_private_layout_0_(_e207)))))), _e209, _e211), _e213, _e215, _e217, _e219, _e221, _e223, _e225, _e227));
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e274.f0_.f0_.f0_.f0_.f0_;
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e274.f0_.f0_.f0_.f0_.f1_.f0_;
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e274.f0_.f0_.f0_.f0_.f1_.f1_.f0_;
            cache[i32(2u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e274.f0_.f0_.f0_.f0_.f1_.f1_.f1_.f0_;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e274.f0_.f0_.f1_.f0_.f0_;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e274.f0_.f0_.f1_.f0_.f1_.f0_;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e274.f0_.f0_.f1_.f0_.f1_.f1_.f0_;
            cache[i32(2u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e274.f0_.f0_.f1_.f0_.f1_.f1_.f1_.f0_;
            cache[i32(2u)].camera_u002e_zoom = _e274.f0_.f1_;
            cache[i32(2u)].camera_u002e_res = _e274.f0_.f2_;
            cache[i32(2u)].cursor = _e274.f1_;
            cache[i32(2u)].aa = _e274.f2_;
            cache[i32(2u)].budget = _e274.f3_;
            cache[i32(2u)].radius = _e274.f4_;
            cache[i32(2u)].preview_dirty = _e274.f5_;
            cache[i32(2u)].blur_dirty = _e274.f6_;
            cache[i32(2u)].epoch = _e274.f7_;
            cache[i32(2u)].completed = _e274.f8_;
            local_1 = true;
        }
        let _e329 = local_1;
        if _e329 {
        }
    }
}
