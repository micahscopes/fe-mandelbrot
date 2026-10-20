# Vendored Fe dependencies

`lib/fmath`, `lib/precision`, `lib/canonical_words`, `lib/browser_fetch` and
`lib/source_inspector` originate in https://github.com/micahscopes/fe at MB2
`51133fb1572c9e3f385855001d1f1b041ed63433`, under Apache2.0 (see LICENSE).
Dependency paths were adjusted to this workspace. The source-inspector copy
exposes its existing load helpers and capacities for the standalone Fe viewer.

The renderer and viewer were extracted from the Fe local demo-recovery branch
at `8a82c224f`, then extended here. Generated GPU/Wasm/browser adapters under
`artifacts` are emitted by the pinned Fe compiler with the supplied generic CSS
parts patch. They are not hand-edited.
