# Standalone Link and Concept Literal Expressions

These are **top-level expressions**, not DotExpression operations. They produce an `SContainmentLink` / `SReferenceLink` / `SConcept` handle without a preceding `node.` operand — useful as arguments to scope factories, smodel APIs, and behavior methods that take links or concepts by identity.

## `link/C : role/` — a containment/reference link literal

Surface form: `link/Calculator : inputField/`. Yields the link object for the `inputField` role declared on concept `Calculator`. Commonly passed to `SimpleRoleScope.forNamedElements(...)`, `SimpleRoleScope(...)`, or to APIs that need an `SContainmentLink` / `SReferenceLink`.

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression",
  "references": [
    { "role": "conceptDeclaration", "target": "<owner-concept-noderef>" },
    { "role": "linkDeclaration",    "target": "<link-declaration-noderef>" }
  ]
}
```

Both refs are required: `conceptDeclaration` pins which concept's link list is being indexed; `linkDeclaration` names the link itself. If the link is declared on a super-concept but used via a sub-concept, point `conceptDeclaration` at the sub-concept — MPS renders `link/Sub : role/` in that case.

A typical composite argument list (`(this, link/C : role/)` as passed to `SimpleRoleScope.forNamedElements`):

```json
{ "role": "actualArgument", "nodes": [
  { "concept": "jetbrains.mps.lang.behavior.structure.ThisNodeExpression" },
  { "concept": "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression",
    "references": [
      { "role": "conceptDeclaration", "target": "<owner-concept-noderef>" },
      { "role": "linkDeclaration",    "target": "<link-declaration-noderef>" }
    ]
  }
]}
```

Do **not** confuse `LinkIdRefExpression` with `OperationParm_LinkQualifier` (used as a *child of an operation* — `Node_GetReferenceOperation`; see `references/references-and-queries.md`): the latter carries only the `link` ref, not a `conceptDeclaration`.

## Concept literal `concept/C/` — also standalone, also just two refs

Surface form: `concept/Calculator/`. Produces an `SConcept` handle.

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression",
  "references": [
    { "role": "conceptDeclaration", "target": "<concept-noderef>" }
  ]
}
```

Use when a method or scope factory takes an `SConcept` argument. (For the older, interface-based argument form `RefConcept_Reference` used by `.ancestor<C>`, `isSubConceptOf(C)`, etc., see `references/smodel-concepts-catalog.md` — those live inside an operation, not as a top-level expression.)
