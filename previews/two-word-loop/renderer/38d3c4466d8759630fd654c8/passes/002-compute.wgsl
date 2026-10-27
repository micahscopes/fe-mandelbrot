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

struct FeLocal_fe_f32_f32_f32_f32_83f8ffa4_8_ {
    f0_: f32,
    f1_: f32,
    f2_: f32,
    f3_: f32,
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

struct FeLocal_fe_Vec2_f32_2772165c_9_ {
    x: f32,
    y: f32,
}

struct FeLocal_fe_Contact_2b5c3d26_10_ {
    active_: bool,
    id: u32,
    position: FeLocal_fe_Vec2_f32_2772165c_9_,
}

struct FeLocal_fe_Contacts_2_ac13bf77_11_ {
    entries: array<FeLocal_fe_Contact_2b5c3d26_10_, 2>,
}

struct FeLocal_fe_Viewport_91e53b90_12_ {
    origin: FeLocal_fe_Vec2_f32_2772165c_9_,
    extent: FeLocal_fe_Vec2_f32_2772165c_9_,
}

struct FeLocal_fe_GestureSession_6b679731_13_ {
    contacts: FeLocal_fe_Contacts_2_ac13bf77_11_,
    viewport: FeLocal_fe_Viewport_91e53b90_12_,
    baseline_contacts: FeLocal_fe_Contacts_2_ac13bf77_11_,
    baseline_camera: FeLocal_fe_Camera_03494b0d_7_,
}

struct FeLocal_fe_BackingRequest_2bcae9f8_14_ {
    fixed: bool,
    side: f32,
}

struct FeLocal_fe_CameraTrace_7ca62f00_15_ {
    enabled: bool,
    words: array<u32, 14>,
}

struct FeLocal_fe_MandelbrotViewState_c524184f_16_ {
    camera: FeLocal_fe_Camera_03494b0d_7_,
    clock: f32,
    last_input: f32,
    antialias: f32,
    drag_active: f32,
    magnification: f32,
    gesture: FeLocal_fe_GestureSession_6b679731_13_,
    backing: FeLocal_fe_BackingRequest_2bcae9f8_14_,
    trace: FeLocal_fe_CameraTrace_7ca62f00_15_,
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
var<storage, read_write> camera_trace: array<u32>;
@group(0) @binding(1)
var<storage> params: Params;

fn to_quad(a0_: FeLocal_fe_More_More_More_Last_e6310ae8_3_) -> FeLocal_fe_f32_f32_f32_f32_83f8ffa4_8_ {
    return FeLocal_fe_f32_f32_f32_f32_83f8ffa4_8_(a0_.lead, a0_.tail.lead, a0_.tail.tail.lead, a0_.tail.tail.tail.value);
}

fn begin(a1_: f32, a2_: FeLocal_fe_Camera_03494b0d_7_) {
    let _e6 = to_quad(a2_.center.re.value);
    let _e12 = to_quad(a2_.center.im.value);
    camera_trace[i32(0u)] = bitcast<u32>(a1_);
    camera_trace[i32(1u)] = bitcast<u32>(_e6.f0_);
    camera_trace[i32(2u)] = bitcast<u32>(_e6.f1_);
    camera_trace[i32(3u)] = bitcast<u32>(_e12.f0_);
    camera_trace[i32(4u)] = bitcast<u32>(_e12.f1_);
    return;
}

@compute @workgroup_size(1, 1, 1)
fn main() {
    var local: u32;
    var local_1: bool = false;

    let _e2 = params.p17_;
    let _e4 = params.p18_;
    let _e6 = params.p19_;
    let _e8 = params.p20_;
    let _e10 = params.p21_;
    let _e12 = params.p22_;
    let _e14 = params.p23_;
    let _e16 = params.p24_;
    let _e18 = params.p25_;
    let _e20 = params.p26_;
    let _e22 = params.p27_;
    let _e24 = params.p28_;
    let _e26 = params.p29_;
    let _e28 = params.p68_;
    if (_e28 != 0u) {
        begin(_e26, FeLocal_fe_Camera_03494b0d_7_(FeLocal_fe_Complex_Coordinate_d4657101_5_(FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e2, FeLocal_fe_More_More_Last_60a5ba63_2_(_e4, FeLocal_fe_More_Last_1ac585f5_1_(_e6, FeLocal_fe_Last_eb970eb0_0_(_e8))))), FeLocal_fe_Coordinate_bdc10f09_4_(FeLocal_fe_More_More_More_Last_e6310ae8_3_(_e10, FeLocal_fe_More_More_Last_60a5ba63_2_(_e12, FeLocal_fe_More_Last_1ac585f5_1_(_e14, FeLocal_fe_Last_eb970eb0_0_(_e16)))))), _e18, _e20, FeLocal_fe_Complex_f32_87ec9249_6_(_e22, _e24)));
    }
}
