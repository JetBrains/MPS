# Other Roots Hosted in the Actions Aspect

The actions language defines two further rootable concepts:

| Concept | Purpose |
|---|---|
| `jetbrains.mps.lang.actions.structure.CopyPasteHandlers` | Per-concept copy pre-processors and paste post-processors (strip data on copy, re-resolve references after paste). |
| `jetbrains.mps.lang.actions.structure.PasteWrappers` | Convert a pasted node to the concept the target slot requires. |

`CopyPasteHandlers` concept ref: `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/5948027493682789918`.

Order of events, lookup rules (exact concept for processors, exact `targetConcept` for wrappers) and blueprints: `references/paste-and-copy.md` in the `mps-aspect-editor-menus-and-keymaps` skill root after loading that companion skill from the same origin.
