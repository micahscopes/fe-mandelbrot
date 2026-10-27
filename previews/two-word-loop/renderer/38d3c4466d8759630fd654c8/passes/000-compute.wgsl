struct FeLocal_fe_PackedReference_e11ca04a_0_ {
    re_w0_bits: u32,
    re_w1_bits: u32,
    re_w2_bits: u32,
    re_w3_bits: u32,
    im_w0_bits: u32,
    im_w1_bits: u32,
    im_w2_bits: u32,
    im_w3_bits: u32,
}

struct FeLocal_fe_ReferenceControl_7d077120_1_ {
    active_: u32,
    active_valid: u32,
    pending: u32,
    index: u32,
    zx_s: u32,
    zy_s: u32,
    ready_at: f32,
}

struct FeLocal_fe_InvocationId_3c625d5f_2_ {
    x: u32,
    y: u32,
    z: u32,
}

struct orbit_element {
    re_w0_bits: u32,
    re_w1_bits: u32,
    re_w2_bits: u32,
    re_w3_bits: u32,
    im_w0_bits: u32,
    im_w1_bits: u32,
    im_w2_bits: u32,
    im_w3_bits: u32,
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
var<storage, read_write> orbit: array<orbit_element>;
@group(0) @binding(1)
var<storage, read_write> reference: array<reference_element>;
@group(0) @binding(2)
var<storage> params: Params;
@group(0) @binding(3)
var<storage, read_write> trap: array<u32, 8>;

fn order_word(a0_: u32) -> u32 {
    var local_2: u32;
    var local_3: bool = false;
    var local_4: u32 = u32();

    switch a0_ {
        case 0u: {
            local_4 = 1943330376u;
        }
        case 1u: {
            local_4 = 3928788513u;
        }
        case 2u: {
            local_4 = 2057377159u;
        }
        case 3u: {
            local_4 = 3787149511u;
        }
        case 4u: {
            local_4 = 1829590296u;
        }
        case 5u: {
            local_4 = 4148900789u;
        }
        case 6u: {
            local_4 = 2486151614u;
        }
        case 7u: {
            local_4 = 3238686979u;
        }
        case 8u: {
            local_4 = 1325361052u;
        }
        case 9u: {
            local_4 = 1407573046u;
        }
        case 10u: {
            local_4 = 2526071130u;
        }
        case 11u: {
            local_4 = 2326997505u;
        }
        case 12u: {
            local_4 = 385642472u;
        }
        case 13u: {
            local_4 = 3812732533u;
        }
        case 14u: {
            local_4 = 950561838u;
        }
        case 15u: {
            local_4 = 1754407903u;
        }
        case 16u: {
            local_4 = 1158661820u;
        }
        case 17u: {
            local_4 = 3263957308u;
        }
        case 18u: {
            local_4 = 2413491554u;
        }
        case 19u: {
            local_4 = 210305685u;
        }
        case 20u: {
            local_4 = 1698287439u;
        }
        case 21u: {
            local_4 = 3126601191u;
        }
        case 22u: {
            local_4 = 3035464241u;
        }
        case 23u: {
            local_4 = 2942937058u;
        }
        case 24u: {
            local_4 = 394140191u;
        }
        case 25u: {
            local_4 = 3679951683u;
        }
        case 26u: {
            local_4 = 2718186976u;
        }
        case 27u: {
            local_4 = 3179700439u;
        }
        case 28u: {
            local_4 = 1962545482u;
        }
        case 29u: {
            local_4 = 905877956u;
        }
        case 30u: {
            local_4 = 3357310128u;
        }
        case 31u: {
            local_4 = 1592021255u;
        }
        case 32u: {
            local_4 = 3424813127u;
        }
        case 33u: {
            local_4 = 2643710328u;
        }
        case 34u: {
            local_4 = 1530866102u;
        }
        case 35u: {
            local_4 = 3994347860u;
        }
        case 36u: {
            local_4 = 1928404394u;
        }
        case 37u: {
            local_4 = 1790015222u;
        }
        case 38u: {
            local_4 = 2667292215u;
        }
        case 39u: {
            local_4 = 3541058125u;
        }
        case 40u: {
            local_4 = 2144188715u;
        }
        case 41u: {
            local_4 = 3599475720u;
        }
        case 42u: {
            local_4 = 3227813924u;
        }
        case 43u: {
            local_4 = 3962630985u;
        }
        case 44u: {
            local_4 = 1561254273u;
        }
        case 45u: {
            local_4 = 2217192534u;
        }
        case 46u: {
            local_4 = 2535170288u;
        }
        case 47u: {
            local_4 = 3279770117u;
        }
        case 48u: {
            local_4 = 4174254681u;
        }
        case 49u: {
            local_4 = 3419781182u;
        }
        case 50u: {
            local_4 = 2070952756u;
        }
        case 51u: {
            local_4 = 1089446775u;
        }
        case 52u: {
            local_4 = 3947272729u;
        }
        case 53u: {
            local_4 = 3869241886u;
        }
        case 54u: {
            local_4 = 2909714307u;
        }
        case 55u: {
            local_4 = 2032579122u;
        }
        case 56u: {
            local_4 = 3506266956u;
        }
        case 57u: {
            local_4 = 1727309305u;
        }
        case 58u: {
            local_4 = 1629502154u;
        }
        case 59u: {
            local_4 = 321437581u;
        }
        case 60u: {
            local_4 = 1808084376u;
        }
        case 61u: {
            local_4 = 2245187805u;
        }
        case 62u: {
            local_4 = 1477140292u;
        }
        case 63u: {
            local_4 = 2433133312u;
        }
        default: {
        }
    }
    let _e132 = local_4;
    return _e132;
}

fn from_words(a0_1: u32, a1_: u32, a2_: u32, a3_: u32, a4_: u32, a5_: u32, a6_: u32, a7_: u32) -> FeLocal_fe_PackedReference_e11ca04a_0_ {
    return FeLocal_fe_PackedReference_e11ca04a_0_(a0_1, a1_, a2_, a3_, a4_, a5_, a6_, a7_);
}

fn order_block(a0_2: u32, fe_trapped_1: ptr<function, bool>) -> FeLocal_fe_PackedReference_e11ca04a_0_ {
    var local_5: FeLocal_fe_PackedReference_e11ca04a_0_;
    var local_6: bool = false;

    let _e7 = (a0_2 * 8u);
    let _e8 = (a0_2 != 0u);
    if (_e8 && (8u > (4294967295u / select(1u, a0_2, _e8)))) {
    } else {
        let _e13 = order_word(_e7);
        if (_e7 > (4294967295u - 1u)) {
        } else {
            let _e19 = order_word((_e7 + 1u));
            if (_e7 > (4294967295u - 2u)) {
            } else {
                let _e25 = order_word((_e7 + 2u));
                if (_e7 > (4294967295u - 3u)) {
                } else {
                    let _e31 = order_word((_e7 + 3u));
                    if (_e7 > (4294967295u - 4u)) {
                    } else {
                        let _e37 = order_word((_e7 + 4u));
                        if (_e7 > (4294967295u - 5u)) {
                        } else {
                            let _e43 = order_word((_e7 + 5u));
                            if (_e7 > (4294967295u - 6u)) {
                            } else {
                                let _e49 = order_word((_e7 + 6u));
                                if (_e7 > (4294967295u - 7u)) {
                                } else {
                                    let _e55 = order_word((_e7 + 7u));
                                    let _e56 = from_words(_e13, _e19, _e25, _e31, _e37, _e43, _e49, _e55);
                                    local_5 = _e56;
                                    local_6 = true;
                                }
                                let _e61 = local_6;
                                if _e61 {
                                }
                            }
                            let _e63 = local_6;
                            if _e63 {
                            }
                        }
                        let _e65 = local_6;
                        if _e65 {
                        }
                    }
                    let _e67 = local_6;
                    if _e67 {
                    }
                }
                let _e69 = local_6;
                if _e69 {
                }
            }
            let _e71 = local_6;
            if _e71 {
            }
        }
        let _e73 = local_6;
        if _e73 {
        }
    }
    let _e76 = local_6;
    if _e76 {
    } else {
        (*fe_trapped_1) = true;
    }
    let _e78 = local_5;
    return _e78;
}

@compute @workgroup_size(8, 1, 1)
fn main(@builtin(global_invocation_id) global_invocation_id: vec3<u32>, @builtin(local_invocation_id) local_invocation_id: vec3<u32>, @builtin(workgroup_id) workgroup_id: vec3<u32>, @builtin(num_workgroups) num_workgroups: vec3<u32>, @builtin(local_invocation_index) local_invocation_index: u32) {
    var fe_trapped: bool = false;
    var local: u32;
    var local_1: bool = false;

    let _e11 = reference[i32(0u)].active_valid;
    let _e13 = reference[i32(0u)].pending;
    if (_e11 == 1u) {
    } else {
        if (_e13 == 1u) {
            local_1 = true;
        }
        let _e48 = local_1;
        if _e48 {
        } else {
            if (16390u > (4294967295u - global_invocation_id.x)) {
                fe_trapped = true;
            }
            let _e26 = order_block(global_invocation_id.x, (&fe_trapped));
            orbit[i32((16390u + global_invocation_id.x))].re_w0_bits = _e26.re_w0_bits;
            orbit[i32((16390u + global_invocation_id.x))].re_w1_bits = _e26.re_w1_bits;
            orbit[i32((16390u + global_invocation_id.x))].re_w2_bits = _e26.re_w2_bits;
            orbit[i32((16390u + global_invocation_id.x))].re_w3_bits = _e26.re_w3_bits;
            orbit[i32((16390u + global_invocation_id.x))].im_w0_bits = _e26.im_w0_bits;
            orbit[i32((16390u + global_invocation_id.x))].im_w1_bits = _e26.im_w1_bits;
            orbit[i32((16390u + global_invocation_id.x))].im_w2_bits = _e26.im_w2_bits;
            orbit[i32((16390u + global_invocation_id.x))].im_w3_bits = _e26.im_w3_bits;
            local_1 = true;
        }
    }
    let _e59 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 8u)) + (global_invocation_id.z * 8u))] = u32(_e59);
}
