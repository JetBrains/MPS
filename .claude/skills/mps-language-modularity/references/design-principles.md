# Cross-cutting design principles

Lessons that apply across all four kinds — the difference between "the syntax composed" and "the languages actually work together."

## Reuse must be designed in

**After-the-fact reuse is only possible in limited cases.** Decide *early* what each concept is meant to be:

- a **final end-user node** (appears in user models, generated normally),
- a **hook point** (abstract concept / abstract behavior a host or adapter specializes),
- an **adapter** (in a separate language depending on both sides), or
- a **generator-only placeholder** (exists only to be reduced by a later generator).

Skip this classification and you can still compose *syntax* later, but not *semantics* safely. In particular, interwoven generation is essentially impossible to add cleanly to a generator that never emitted hook nodes.

## A good MPS composition style

- **Put stable contracts in behavior methods or interface concepts** — naming rules (`seriesId`), behavior contracts (`Guard.evaluate`), capability checks — in one typed place every aspect and generator calls, not duplicated as strings.
- **Expose variation points as abstract concepts / behavior hooks**, never as host-aware code in a reusable core.
- **Keep semantic lowering as model-to-model assimilation as long as possible** — reduce high-level concepts to lower-level model nodes (ultimately BaseLanguage), go to text only at the very end. Keeps transformations composable and debuggable.
- **Prefer specific reference concepts over a generic symbol reference** when contributions must stay modular — each keeps its own scope and type rules.
- **Place generator placeholder hooks deliberately** when generated code must be extended later, rather than relying on fragile post-hoc patching.

## Terminology trap: MPS "extends" ≠ the taxonomy

MPS uses *extension* broadly at the tool level: whenever one language definition uses/refers to another's concepts, you declare an `extends`/used-language relation. That **module-level wiring** is independent of the **design-level classification** — you can be doing referencing, extension, reuse, or embedding while the module says "A extends/uses B." Conflating them leads to bad choices (e.g. assuming an `extends` declaration means you must integrate syntax). Tool-level wiring → `mps-aspect-accessories`, `mps-language-inheritance`; design-level is what this skill decides.

## Annotations — the escape hatch (not a fifth kind)

Adjacent to, but **outside**, the four-way taxonomy: MPS **annotations** attach and project additional information on existing nodes **without modifying the original language definition**. Reach for them for **augmentation** — metadata, traceability, variability, tool-specific overlays — not semantics-bearing composition.

- **Use for:** attaching data/markers to nodes you don't own; cross-cutting overlays; experimentation before committing to a language change.
- **Don't** use them as a substitute for referencing/extension/reuse/embedding when the task is really composing *semantics*.
- **Declare:** `references/attributes-and-annotations.md` in the `mps-aspect-structure-concepts` skill root after loading that companion skill from the same origin; **read/attach** via `.@`: `references/attribute-access.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.

## See also

Per-kind recipes: `referencing.md`, `extension.md`, `reuse.md`, `embedding.md`. Test strategy: `validation.md`.
