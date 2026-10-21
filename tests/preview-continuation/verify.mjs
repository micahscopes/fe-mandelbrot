import fs from "node:fs";
import path from "node:path";

const bundleDir = path.resolve(process.argv[2]);
const wasmBytes = fs.readFileSync(path.join(bundleDir, "module.wasm"));
const { instance } = await WebAssembly.instantiate(wasmBytes, {});
const vals = instance.exports.fe_surface_initialize_v1();

const f32 = new Float32Array(vals.length);
for (let i = 0; i < vals.length; i++) f32[i] = vals[i];
const u32 = new Uint32Array(f32.buffer);

const result = {
  case_mask_bits: u32[0],
  all_passed: u32[0] === 0xff,
  cases: {
    chunked_ordinary_vs_oneshot: Boolean(u32[0] & 1),
    prefix_exhaustion_pauses_without_false_rebase: Boolean(u32[0] & 2),
    mid_orbit_cancellation_rebase_across_chunks: Boolean(u32[0] & 4),
    post_reference_escape_rebase_when_complete: Boolean(u32[0] & 8),
    early_escape_during_prefix_vs_complete: Boolean(u32[0] & 16),
    glitch_invalid_reference_and_ambiguous_escape: Boolean(u32[0] & 32),
    preview_cache_handoff_and_invalidation: Boolean(u32[0] & 64),
    deep_8192_2048_schedule_monotonic_completion: Boolean(u32[0] & 128),
  },
  chunked_z_re: { f32: f32[1], u32_hex: "0x" + u32[1].toString(16).padStart(8, "0") },
  chunked_z_im: { f32: f32[2], u32_hex: "0x" + u32[2].toString(16).padStart(8, "0") },
  paused_ref_i: u32[3],
  handoff_step: u32[4],
  deep_final_step: u32[5],
  deep_final_res: u32[6],
  deep_batches: u32[7],
};

console.log(JSON.stringify(result, null, 2));
if (u32[0] !== 0xff) {
  process.exit(1);
}
