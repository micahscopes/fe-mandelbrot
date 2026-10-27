struct FeLocal_fe_Last_eb970eb0_0_ {
    value: f32,
}

struct FeLocal_fe_More_Last_1ac585f5_1_ {
    lead: f32,
    tail: FeLocal_fe_Last_eb970eb0_0_,
}

struct FeLocal_fe_More_More_Last_60a5ba63_2_ {
    lead: f32,
    tail: FeLocal_fe_More_Last_1ac585f5_1_,
}

struct FeLocal_fe_More_More_More_Last_e6310ae8_3_ {
    lead: f32,
    tail: FeLocal_fe_More_More_Last_60a5ba63_2_,
}

struct FeLocal_fe_Coordinate_bdc10f09_4_ {
    value: FeLocal_fe_More_More_More_Last_e6310ae8_3_,
}

struct FeLocal_fe_Complex_Coordinate_d4657101_5_ {
    re: FeLocal_fe_Coordinate_bdc10f09_4_,
    im: FeLocal_fe_Coordinate_bdc10f09_4_,
}

struct FeLocal_fe_Complex_f32_87ec9249_6_ {
    re: f32,
    im: f32,
}

struct FeLocal_fe_Camera_03494b0d_7_ {
    center: FeLocal_fe_Complex_Coordinate_d4657101_5_,
    zoom: f32,
    res: f32,
    orientation: FeLocal_fe_Complex_f32_87ec9249_6_,
}

struct FeLocal_fe_ViewCache_da6e2ccc_8_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
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

struct Params {
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
    p31_: f32,
    p32_: f32,
    p33_: f32,
    p34_: u32,
    p35_: u32,
    p36_: f32,
    p37_: f32,
    p38_: u32,
    p39_: u32,
    p40_: f32,
    p41_: f32,
    p42_: f32,
    p43_: f32,
    p44_: f32,
    p45_: f32,
    p46_: u32,
    p47_: u32,
    p48_: f32,
    p49_: f32,
    p50_: u32,
    p51_: u32,
    p52_: f32,
    p53_: f32,
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
    p66_: u32,
    p67_: f32,
    p68_: u32,
    p69_: u32,
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
    let _e26 = cache[i32(0u)].camera_u002e_orientation_u002e_re;
    let _e28 = cache[i32(0u)].camera_u002e_orientation_u002e_im;
    let _e30 = cache[i32(0u)].cursor;
    let _e32 = cache[i32(0u)].aa;
    let _e34 = cache[i32(0u)].budget;
    let _e36 = cache[i32(0u)].radius;
    let _e38 = cache[i32(0u)].preview_dirty;
    let _e40 = cache[i32(0u)].blur_dirty;
    let _e42 = cache[i32(0u)].epoch;
    let _e44 = cache[i32(0u)].completed;
    let _e46 = cache[i32(0u)].steps;
    let _e48 = cache[i32(0u)].frame_clock;
    if (_e44 == 1u) {
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
        cache[i32(1u)].camera_u002e_orientation_u002e_re = _e26;
        cache[i32(1u)].camera_u002e_orientation_u002e_im = _e28;
        cache[i32(1u)].cursor = _e30;
        cache[i32(1u)].aa = _e32;
        cache[i32(1u)].budget = _e34;
        cache[i32(1u)].radius = _e36;
        cache[i32(1u)].preview_dirty = _e38;
        cache[i32(1u)].blur_dirty = _e40;
        cache[i32(1u)].epoch = _e42;
        cache[i32(1u)].completed = _e44;
        cache[i32(1u)].steps = _e46;
        cache[i32(1u)].frame_clock = _e48;
    }
}
