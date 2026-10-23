struct Input {
    p2_: u32,
    p3_: f32,
    p4_: f32,
    p5_: u32,
}

@group(0) @binding(1)
var<storage> input: Input;

@vertex
fn vs_fullscreen(@builtin(vertex_index) vi: u32) -> @builtin(position) vec4<f32> {
    return vec4<f32>((f32(((vi & 1u) << 2u)) - 1f), (f32(((vi & 2u) << 1u)) - 1f), 0f, 1f);
}

@fragment
fn fs_main(@builtin(position) pos: vec4<f32>) -> @location(0) vec4<f32> {
    var local: u32;
    var local_1: bool = false;
    var local_2: u32 = u32();

    let _e2 = input.p3_;
    if (0.5f < _e2) {
        local_2 = 4278255360u;
    } else {
        local_2 = 4278190335u;
    }
    let _e12 = local_2;
    return unpack4x8unorm(_e12);
}
