## Fragments and root template annotation

Additionally, **`TemplateFragment`** (`jetbrains.mps.lang.generator.structure.TemplateFragment`, also attached as `smodelAttribute`) marks the subtree inside a `TemplateDeclaration.contentNode` that is actually produced as the replacement — nodes outside the fragment are scaffolding. **`RootTemplateAnnotation`** is the analogous marker that turns a target-language root into a template root (carries a ref `applicableConcept`).

> **A `TemplateDeclaration` used as a reduction target requires at least one `TemplateFragment`.** Without it the rule fires but emits nothing — the matched input simply disappears from the output, which looks identical to "the rule never matched". If a refactor splits inline content into a standalone `TemplateDeclaration` and the output silently loses those elements, the missing `TemplateFragment` on the produced subtree is the first thing to check. The fragment goes on the *exact* node that should replace the input — typically the outermost element of the template's `contentNode`.

> **Multiple sibling macros on the same `smodelAttribute` slot are chained in attribute-list order, and that order is semantics.** MPS does *not* treat co-located macros as an unordered set: `TemplateNode` builds a linked list from the `smodelAttribute` children preserving their order, and `TemplateProcessor` walks that chain, each macro invoking the rest of the chain. So the order in which children sit under `smodelAttribute` determines the evaluation nesting.
>
> - **`$LOOP$` before `$IF$`** ⇒ `$IF$` is evaluated once *per iteration*, with that iteration's node as input (the condition gates each emitted element).
> - **`$IF$` before `$LOOP$`** ⇒ `$IF$` is evaluated *once*, in the outer context, gating the whole loop (false ⇒ the alternative consequence runs once if present, otherwise nothing is emitted instead of the loop).
>
> The canonical `LoopMacro` + `CopySrcNodeMacro` pair *looks* order-independent only because `$COPY_SRC$` is terminal — the pair happens to be order-insensitive in that one case. Do not generalize from it. When grafting a macro onto a node that already carries one, the JSON child `position` in the `smodelAttribute` role *is* the execution order — choose it deliberately.
