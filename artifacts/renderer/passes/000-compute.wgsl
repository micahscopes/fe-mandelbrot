struct FeLocal_fe_shader_private_layout_0_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: f32,
}

struct FeLocal_fe_shader_private_layout_2_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
}

struct FeLocal_fe_shader_private_layout_1_ {
    f0_: u32,
    f1_: u32,
    f2_: u32,
    f3_: u32,
    f4_: u32,
    f5_: u32,
    f6_: u32,
    f7_: u32,
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
    p27_: f32,
    p28_: f32,
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
        let _e110 = local_1;
        if _e110 {
        } else {
            let _e24 = (global_invocation_id.x * 8u);
            let _e25 = (global_invocation_id.x != 0u);
            if (_e25 && (8u > (4294967295u / select(1u, global_invocation_id.x, _e25)))) {
            } else {
                if (16390u > (4294967295u - global_invocation_id.x)) {
                } else {
                    let _e35 = order_word(_e24);
                    if (_e24 > (4294967295u - 1u)) {
                    } else {
                        let _e41 = order_word((_e24 + 1u));
                        if (_e24 > (4294967295u - 2u)) {
                        } else {
                            let _e47 = order_word((_e24 + 2u));
                            if (_e24 > (4294967295u - 3u)) {
                            } else {
                                let _e53 = order_word((_e24 + 3u));
                                if (_e24 > (4294967295u - 4u)) {
                                } else {
                                    let _e59 = order_word((_e24 + 4u));
                                    if (_e24 > (4294967295u - 5u)) {
                                    } else {
                                        let _e65 = order_word((_e24 + 5u));
                                        if (_e24 > (4294967295u - 6u)) {
                                        } else {
                                            let _e71 = order_word((_e24 + 6u));
                                            if (_e24 > (4294967295u - 7u)) {
                                            } else {
                                                let _e77 = order_word((_e24 + 7u));
                                                orbit[i32((16390u + global_invocation_id.x))].re_w0_bits = _e35;
                                                orbit[i32((16390u + global_invocation_id.x))].re_w1_bits = _e41;
                                                orbit[i32((16390u + global_invocation_id.x))].re_w2_bits = _e47;
                                                orbit[i32((16390u + global_invocation_id.x))].re_w3_bits = _e53;
                                                orbit[i32((16390u + global_invocation_id.x))].im_w0_bits = _e59;
                                                orbit[i32((16390u + global_invocation_id.x))].im_w1_bits = _e65;
                                                orbit[i32((16390u + global_invocation_id.x))].im_w2_bits = _e71;
                                                orbit[i32((16390u + global_invocation_id.x))].im_w3_bits = _e77;
                                                local_1 = true;
                                            }
                                            let _e91 = local_1;
                                            if _e91 {
                                            }
                                        }
                                        let _e93 = local_1;
                                        if _e93 {
                                        }
                                    }
                                    let _e95 = local_1;
                                    if _e95 {
                                    }
                                }
                                let _e97 = local_1;
                                if _e97 {
                                }
                            }
                            let _e99 = local_1;
                            if _e99 {
                            }
                        }
                        let _e101 = local_1;
                        if _e101 {
                        }
                    }
                    let _e103 = local_1;
                    if _e103 {
                    }
                }
                let _e105 = local_1;
                if _e105 {
                }
            }
            let _e108 = local_1;
            if _e108 {
            } else {
                fe_trapped = true;
            }
        }
    }
    let _e121 = fe_trapped;
    trap[((global_invocation_id.x + (global_invocation_id.y * 8u)) + (global_invocation_id.z * 8u))] = u32(_e121);
}
