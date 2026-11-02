# Layout Areas, Context Objects, Attributes

Everything in the per-concept body is enough for a single-stream textgen. Large-file languages (Java, Kotlin, C) also need: multiple output regions composed into one file (header / imports / body), per-generation shared state (e.g. the imports set), deep attribute handling, and a shared toolbox of operations reused across several concept rules. The facilities below cover all of this.

## Text layout areas (`TextUnitLayout`)

A single output file can be composed of several named regions. The file-generating concept declares them in its `layout` child (a `TextUnitLayout`), and any `append` statement can be retargeted to a specific area. This lets a deeply-nested rule (e.g. a method call) add an import line to the header area even though its own rule runs while traversing the body.

The layout of `ClassConcept_TextGen` in baseLanguage, as the editor shows it:

```
Initial text area BODY
HEADER
  << ... >>
IMPORTS
  << ... >>
SEPARATOR
  << ... >>
BODY
  << ... >>
```

Authoring notes:
- Each area is a `LayoutPart` (property `name`, optional `nested` `LayoutPart` children) in the layout's `parts` child (1..n); the layout's `active` reference names the **initial area**, where `append ...` writes by default.
- `append to AREA { ... }` (the `AppendOperation` `textArea` reference, or equivalent per-part targeting in the Inspector) retargets a block to a named area.
- A `LayoutPart` has no separator property: whatever is appended to an area must emit its own newlines.
- Final file content is the concatenation of areas in declaration order: `HEADER`, `IMPORTS`, `SEPARATOR`, `BODY` is the `ClassConcept` pattern (the `SEPARATOR` area holds the blank line between the imports and the class).

Skeleton for a `TextUnitLayout` with two areas, `BODY` initial (the `active` reference must name a `LayoutPart` of the same layout, so insert the parts first and set it afterwards, or point it at the inserted node's reference):

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.TextUnitLayout",
  "references": [
    { "role": "active", "target": "<ref of the BODY LayoutPart>" }
  ],
  "children": [
    { "role": "parts", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.LayoutPart",
        "properties": [{ "name": "name", "value": "IMPORTS" }] },
      { "concept": "jetbrains.mps.lang.textGen.structure.LayoutPart",
        "properties": [{ "name": "name", "value": "BODY" }] }
    ]}
  ]
}
```

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
