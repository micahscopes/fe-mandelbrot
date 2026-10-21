struct Input {
    p8_: f32,
    p9_: f32,
    p10_: f32,
    p11_: f32,
}

@group(0) @binding(0)
var<storage> proof: array<u32>;
@group(0) @binding(1)
var<storage> input: Input;

fn from_i32_(a0_: u32) -> f32 {
    return f32(bitcast<i32>(a0_));
}

fn to_i32_(a0_1: f32) -> u32 {
    return select(0u, select(select(bitcast<u32>(i32(a0_1)), 2147483648u, (a0_1 <= -2147483600f)), 2147483647u, (a0_1 >= 2147483600f)), (a0_1 == a0_1));
}

fn wrapping_add(a0_2: u32, a1_: u32) -> u32 {
    return (a0_2 + a1_);
}

fn packed_rgba(a0_3: u32, a1_1: u32, a2_: u32) -> u32 {
    return (((4278190080u | (a2_ << 16u)) | (a1_1 << 8u)) | a0_3);
}

@vertex
fn vs_fullscreen(@builtin(vertex_index) vi: u32) -> @builtin(position) vec4<f32> {
    return vec4<f32>((f32(((vi & 1u) << 2u)) - 1f), (f32(((vi & 2u) << 1u)) - 1f), 0f, 1f);
}

@fragment
fn fs_main(@builtin(position) pos: vec4<f32>) -> @location(0) vec4<f32> {
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();
    var local_3: u32 = u32();
    var local_4: u32 = u32();
    var local_5: u32 = u32();

    let _e8 = input.p8_;
    let _e10 = input.p9_;
    let _e13 = from_i32_(u32(pos.x));
    let _e14 = (_e13 / _e10);
    let _e15 = from_i32_(u32(pos.y));
    let _e16 = (_e15 / _e10);
    let _e18 = (0.5f <= _e8);
    if (_e16 < 0.18f) {
        if (_e14 < 0.2f) {
            let _e26 = proof[i32(516087u)];
            local_2 = _e26;
        } else {
            if (_e14 < 0.4f) {
                let _e32 = proof[i32(516088u)];
                local_2 = _e32;
            } else {
                if (_e14 < 0.6f) {
                    let _e38 = proof[i32(516089u)];
                    local_2 = _e38;
                } else {
                    if (_e14 < 0.8f) {
                        let _e44 = proof[i32(514130u)];
                        local_2 = _e44;
                    } else {
                        let _e48 = proof[i32(516090u)];
                        local_2 = _e48;
                    }
                }
            }
        }
    } else {
        if (0.82f < _e16) {
            let _e59 = proof[i32(516090u)];
            local_2 = _e59;
        } else {
            let _e62 = from_i32_(16380u);
            let _e64 = to_i32_((_e14 * _e62));
            if _e18 {
                local_3 = 497154u;
            } else {
                local_3 = 480774u;
            }
            let _e71 = local_3;
            let _e72 = wrapping_add(_e71, _e64);
            let _e75 = proof[i32(_e72)];
            let _e79 = wrapping_add(54u, (_e75 & 127u));
            let _e85 = wrapping_add(42u, ((_e75 >> 8u) & 95u));
            let _e91 = wrapping_add(96u, ((_e75 >> 16u) & 127u));
            if (1f < (_e14 + _e16)) {
                local_4 = 18u;
            }
            let _e99 = local_4;
            if _e18 {
                local_5 = 26u;
            }
            let _e103 = local_5;
            let _e104 = wrapping_add(_e79, _e103);
            let _e105 = wrapping_add(_e85, _e99);
            let _e106 = packed_rgba(_e104, _e105, _e91);
            local_2 = _e106;
        }
    }
    let _e110 = local_2;
    return unpack4x8unorm(_e110);
}
