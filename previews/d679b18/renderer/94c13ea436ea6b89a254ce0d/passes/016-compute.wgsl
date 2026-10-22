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
var<storage> params: Params;

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;

    let _e6 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead;
    let _e8 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead;
    let _e10 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e12 = cache[i32(0u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e14 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead;
    let _e16 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead;
    let _e18 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead;
    let _e20 = cache[i32(0u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value;
    let _e22 = cache[i32(0u)].camera_u002e_zoom;
    let _e24 = cache[i32(0u)].camera_u002e_res;
    let _e26 = cache[i32(0u)].cursor;
    let _e28 = cache[i32(0u)].aa;
    let _e30 = cache[i32(0u)].budget;
    let _e32 = cache[i32(0u)].radius;
    let _e34 = cache[i32(0u)].preview_dirty;
    let _e36 = cache[i32(0u)].blur_dirty;
    let _e38 = cache[i32(0u)].epoch;
    let _e40 = cache[i32(0u)].completed;
    if (_e40 == 1u) {
        cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_lead = _e6;
        cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_lead = _e8;
        cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e10;
        cache[i32(1u)].camera_u002e_center_u002e_re_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e12;
        cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_lead = _e14;
        cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_lead = _e16;
        cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_lead = _e18;
        cache[i32(1u)].camera_u002e_center_u002e_im_u002e_value_u002e_tail_u002e_tail_u002e_tail_u002e_value = _e20;
        cache[i32(1u)].camera_u002e_zoom = _e22;
        cache[i32(1u)].camera_u002e_res = _e24;
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
