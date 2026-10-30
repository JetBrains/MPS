# Reference Operations and Node Queries

Reference-side operations on `SReference` objects (`.target`, `.link`, `.resolveInfo`, …) and node-side query operations that are not direct navigation (`.siblings`, `.containingRoot`, `.isExactly(C)`, `seq.ofConcept<C>`, enum operations).

## Reference-side operations

References on a node are distinct from the nodes they point to. These four are the non-deprecated accessors:

### `node.reference/C : role/` — get the `SReference` for a role

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_GetReferenceOperation",
      "children": [{
        "role": "linkQualifier",
        "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier",
          "children": [{ "role": "linkQualifier", "nodes": [{
            "concept": "jetbrains.mps.lang.smodel.structure.LinkRefQualifier",
            "references": [{ "role": "link", "target": "<LinkDeclaration-noderef>" }]
          }]}]
        }]
      }]
    }]}
  ]
}
```

### `node.references` — all outgoing references (sequence)

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation"
}
```

### `ref.target` / `ref.link` / `ref.resolveInfo` / `ref.isDynamic` — leaf ops on `SReference`

```text
{ "concept": "jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Reference_ContainingLinkOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Reference_IsDynamic" }
```

> Do **not** recommend `.linkDeclaration` or `.role` — both are deprecated. Use `.link` and `.link.name` (behavior call on the link) instead.

## Query operations

### `.siblings` / `.next-sibling` / `.prev-sibling` / `.next-siblings` / `.prev-siblings`

All are leaf operations — no parameter or child. Drop the concept into the `operation` role of a `DotExpression`:

```text
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetAllSiblingsOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingsOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingsOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_HasNextSiblingOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_HasPrevSiblingOperation" }
```

The plural `next-siblings` / `prev-siblings` return `sequence<node<BaseConcept>>` from the anchor onward (or toward the start of the list).

### `.containingRoot`, `.containingLink`, `.model`, `.index`

All leaf operations:

```text
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_ContainingLinkOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" }
```

`.containingLink` returns the containment link the node occupies in its parent (replaces the deprecated `.role`).

### `.isExactly(C)` — exact concept match (no subtyping)

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation",
  "children": [{
    "role": "conceptArgument",
    "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
      "references": [{ "role": "conceptDeclaration", "target": "<ConceptDeclaration-noderef>" }]
    }]
  }]
}
```

Contrast with `Node_IsInstanceOfOperation` which also matches subconcepts.

### `seq.ofConcept<C>` — filter a sequence to nodes of a specific concept

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.OfConceptOperation",
  "children": [{
    "role": "requestedConcept",
    "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
      "references": [{ "role": "concept", "target": "<ConceptDeclaration-noderef>" }]
    }]
  }]
}
```

Confirm the child role (`requestedConcept` in current MPS; older sources used `conceptArgument`) with `mps_mcp_get_concept_details` before emitting the blueprint.

### `seq.ofAspect<aspect>` — filter by MPS aspect

Concept lives in `jetbrains.mps.lang.slanguage`:

```json
{
  "concept": "jetbrains.mps.lang.slanguage.structure.OfAspectOperation"
}
```

Search the concept for its parameter role before use.

### Enum operations

`enumValue.is/Member/`, `.name`, `.presentation` are leaf operations (on a property of enumerated type or an `enummember<E>`):

```text
{
  "concept": "jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation",
  "children": [{ "role": "member", "nodes": [
    { "concept": "jetbrains.mps.lang.smodel.structure.EnumMemberReference",
      "references": [{ "role": "decl", "target": "<EnumerationMember-noderef>" }] }
  ]}]
}
{ "concept": "jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" }
{ "concept": "jetbrains.mps.lang.smodel.structure.EnumMember_PresentationOperation" }
```

A direct reference to an enum member value (for assignment or comparison) uses:

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.EnumMemberReference",
  "references": [{ "role": "decl", "target": "<EnumerationMember-noderef>" }]
}
```
