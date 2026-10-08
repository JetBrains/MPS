# Layout Areas, Context Objects, Attributes

Everything in the per-concept body is enough for a single-stream textgen. Large-file languages (Java, Kotlin, C) also need: multiple output regions composed into one file (header / imports / body), per-generation shared state (e.g. the imports set), deep attribute handling, and a shared toolbox of operations reused across several concept rules. The facilities below cover all of this.

## Text layout areas (`TextUnitLayout`)

A single output file can be composed of several named regions. The file-generating concept declares them in its `layout` child (a `TextUnitLayout`), and any `append` statement can be retargeted to a specific area. This lets a deeply-nested rule (e.g. a method call) add an import line to the header area even though its own rule runs while traversing the body.

Verbatim from `ClassConcept_TextGen` in baseLanguage:

```
text layout:
  Initial text area         BODY
    <default area>
  named text area           HEADER
    HEADER
  named text area           IMPORTS
    IMPORTS    separator: \n
  named text area           SEPARATOR
    SEPARATOR
  named text area           BODY
    BODY
```

Authoring notes:
- The **initial area** is where `append ...` writes by default.
- `append to AREA { ... }` (or equivalent per-part targeting in the Inspector) retargets a block to a named area.
- An area can be declared with a **separator** (e.g. `\n`). Every append into that area is joined with the separator, so you don't need to emit newlines between each import.
- Final file content is the concatenation of areas in declaration order: `HEADER ⟨SEPARATOR⟩ IMPORTS ⟨SEPARATOR⟩ BODY` is the `ClassConcept` pattern (the `SEPARATOR` area holds the blank line, `IMPORTS` auto-joins with `\n`).

Skeleton for a `TextUnitLayout` with one named area (substitute your own parts per the live concept details via `mps_mcp_get_concept_details jetbrains.mps.lang.textGen.structure.TextUnitLayout`):

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.TextUnitLayout",
  "children": [
    { "role": "part", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.LayoutPart",
        "properties": [{ "name": "name", "value": "IMPORTS" }] }
    ]}
  ]
}
```

Verify the exact child role names (`part` vs. `layoutPart`) and the separator property before writing the final JSON — the internal concept shape has varied between MPS versions.

## Context objects (`UnitContextDeclaration` / `UnitContextObject`)

A *context object* is a per-generation singleton accessible from every textgen body in the same top-level `ConceptTextGenDeclaration` invocation. Canonical use: an imports set that any nested rule can add to, then emitted as the `IMPORTS` layout area at the end.

- Declaration of the **context type** lives in the **base text gen component** (see `references/dispatch-and-base-component.md`) as a `UnitContextDeclaration`. Its constructor is either no-arg or takes a single argument — an instance of the concept being serialised.
- **Use** of the context in a per-concept rule: a `UnitContextObject` child on the `ConceptTextGenDeclaration` (role `contextObjects`). Gives the object a local name and a type.

Verbatim from baseLanguage `ClassConcept_TextGen`:

```
context objects :
  BaseLanguageTextGen.ctx : ClassifierUnitContext
```

Inside the textgen body the object is accessed by its name (`ctx.addImport("java.util.List")`, etc.). The `ctx` symbol is whatever local name the `UnitContextObject` gave it; `BaseLanguageTextGen` is the `LanguageTextGenDeclaration` that owns the `UnitContextDeclaration` and `ClassifierUnitContext` is the type.

## Attributes

Attributes are annotation-like child nodes that decorate a target node with extra information. During textgen, attributes of the node being serialised are processed **in reverse containment order**: for `A2(A1(N))`, textgen runs `A2`'s rule first, then `A1`'s, then `N`'s. Each attribute's textgen body is a normal `ConceptTextGenDeclaration` for the *attribute* concept; it references the decorated target with:

```
${attributed node}
```

…which is a NodeAppendPart whose value dispatches back to the target node's own textgen (or the next inner attribute, if any). Attributes whose concept has no textgen are skipped silently. Typical use: comment/annotation wrappers, conditional guards emitted around the target.

Note: the older `$ref{node.reference<target>}` syntax is **deprecated**. Use a `NodeAppendPart` over a resolved node (or over `.name` when you really want the plain name), not the `$ref{}` primitive.
