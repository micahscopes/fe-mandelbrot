# Renderer/job integration: final bounded source review

Astra/high, Codex collaboration harness, 2026-10-22. Read-only inspection of the evolving `private-circle-proof` worktree. No builds, execution or source edits. Parent reports passing selection, float, sliced-engine and binary-adapter probes; I did not independently execute them.

**Direction is coherent: one Fe resident owner, exact frozen selections, reusable job tape and revision-bound results. Two UI-state corrections remain in the inspected source.**

1. Suppress certification, outside-region, Unknown, invalid and step/progress readouts while a selection draft is active, and pause orbit advancement. A draft region replaces the visible committed outline, so showing the old region's certificate beside it is misleading even though the stored job remains mathematically valid. Retain the old job; cancellation exposes/resumes it only if its revision is still current. Commit creates a new selection revision and restarts. Apply this to witness drafts too for consistent interaction.
2. `PersistedView::apply_to` (`app/renderer/src/url.fe:240`) changes the camera and clears gesture membership, but does not cancel `selection.active` or recompute `SelectionDisplay`. Cancel the draft and refresh projection when applying a changed URL camera. The existing draft-camera comparison prevents a later wrong commit, but without immediate cancellation a draft can remain active under a changed view until another pointer event. Once readouts are suppressed during drafts, that can also leave the interface unnecessarily hidden/paused.

The planned separate invalid-input readout is appropriate. Code2 should not silently masquerade as arithmetic Unknown.

## Ordering and stale results

The generic runtime `_runSurfaceFrame` flushes ordinary event batches before each contact, preserving their original order. `_flushGestureFrame` appends AnimationFrame after queued user inputs. The Fe parameter transition increments the selection revision on claim/precision/step changes; contact commits increment it on new geometry. `refresh_readout` then cancels/restarts the job before exposing result flags. Consequently an old completed escape job is not relabeled as a bounded result by an ordinary claim edit, and the final frame does not advance the old statement.

Keep that invariant if begin is deferred while drawing: **do not mark `job_revision` current before actually beginning the corresponding request.** Otherwise cancellation can leave a current-looking revision with no initialized job. Merely suppressing display and pausing advance needs no new request protocol.

Camera navigation and public-view changes correctly preserve the exact region/witness and need not invalidate arithmetic. Shape is a drawing-tool setting; existing committed regions retain `region_shape`. Preserve this distinction in labels. Region replacement retaining an old witness is valid, provided containment is checked again, as the revision path does.

The job is allocated in the resident initializer; subsequent frames reuse its tape. The Engine raw-pointer admission problem was independently traced by the parent to Engine, not BinaryRegion. Keeping its internal address as u32 and constructing typed pointers at load/store is consistent with the explicit scalar-storage boundary. My earlier nested-record hypothesis is superseded by that trace.

## Final discriminating UI gates

Exercise an established certified result followed by: draft Move then Cancel; draft commit; active draft followed by claim edit then Cancel; region/witness commit and claim edit within one frame; public-view toggle during computation; URL camera change during a draft; and an old pointer Up after changing mode. Assert the displayed region, readout flags, job revision and immutable exact inputs, not only whether the page remains responsive.

Also confirm the emitted bundle preserves the initializer's tape across real event epochs and repeated jobs. The frame budget of16/4/1 steps by precision is an explicit scheduling choice, not a latency guarantee; measure long-step responsiveness before claiming it. No other stale-claim or ordering blocker found in this bounded source pass. Actual integrated browser execution and the two corrections remain acceptance gates.
