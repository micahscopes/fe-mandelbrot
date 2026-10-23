# Contact geometry in Fe

A gesture is one anchored change of view, combining translation, uniform scale,
and rotation. It is not three competing event handlers.

```fe
let update = contacts.update_from(anchor_contacts, sample, viewport)
match update.gesture {
    Gesture::Motion(motion) => camera.follow(motion, viewport),
    // Membership changes establish a new anchor without moving the camera.
    _ => camera,
}
```

`Contacts<N>` stores stable identities at a compile-time capacity. `update` fits
incremental motion; `update_from` fits against a retained contact baseline. The
latter is useful when a view clamps zoom or position: intermediate pointer events
must not replace the original gesture anchor. Down, up, cancellation and lost
capture reanchor without applying terminal coordinates. Unknown moves are ignored.
Full sets ignore additional downs rather than replacing a captured identity.

`Viewport` maps CSS observations into a normalized, y-up plane. `update_in` and
`update_from` fit in that same metric, including rectangular views. Extents must
be positive. A changed frame establishes a new anchor before accepting motion.

`GestureTransform.pullback(viewport)` maps new view coordinates back to old view
coordinates. It exposes a shared `algebra::Similarity2`: a complex multiplier and
translation, with point application, ordered composition and inverse. For precise
cameras, `translation_between` retains the original anchors and computes the small
displacement first, avoiding cancellation at deep zoom. A camera can clamp its
new span before calculating this displacement.

Two contacts determine a similarity. For more contacts, the fit uses centroid,
RMS spread and the phase of identity-matched complex correlation. Nonrigid
motions are an approximate fit. When spread or correlation cannot determine an
angle, rotation is identity; spread can still determine a scale. The fit is
symmetric, but fitting arbitrary nonrigid samples is not an associative operation.
Only the resulting point maps have the usual composition laws, within floating
point error.

Camera policy, precise centers, rendering and URL persistence belong to the
application. The recognizer imports no Mandelbrot code, browser runtime, shader
scheduler, or allocation policy.
