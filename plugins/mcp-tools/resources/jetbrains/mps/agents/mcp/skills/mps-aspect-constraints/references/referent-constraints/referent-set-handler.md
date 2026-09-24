## ReferentSetHandler: side effects on reference assignment

`ConstraintFunction_ReferentSetHandler` fires when the user picks a new referent for a reference (from completion, drag-and-drop, or programmatic `node.setReferent`). Unlike the scope (which filters what is *available*), the set handler controls *what gets stored* and may perform **side effects** — blocking the assignment, copying properties from the new referent to the referrer, or triggering auto-rename.

The set handler is the `referentSetHandler` child of `NodeReferentConstraint` (alongside `searchScopeFactory`).

**Parameters inside the body** (`ConstraintFunction_ReferentSetHandler.body → StatementList`):

| Name | Concept FQN | What it is |
|---|---|---|
| `referenceNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode` (stable c-ref: `c:3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1163200647017`) | The node that holds the reference (the referrer) |
| `oldReferentNode` | (no separate c-ref documented; verify with `mps_mcp_get_concept_details`) | The previously set target — allows diffing old vs new to decide what side effects to apply |
| `newReferentNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_newReferentNode` (stable c-ref: `c:3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1163202640154`) | The node the user just picked as the new target |

The handler body returns `void`; the trailing statement need not be an expression.

**Common patterns**:

1. **Auto-rename referrer on pick** — copies the target's name into the referrer's own name property on assignment:

   ```
   referenceNode.name = newReferentNode:TargetConcept.name;
   ```

2. **Copy multiple properties** — used when the referrer caches several fields from the target (e.g. parameter count, kind flags):

   ```
   referenceNode.paramCount = newReferentNode:Routine.paramCount;
   referenceNode.isVoid = newReferentNode:Routine.isVoid;
   ```

3. **`keeps original reference`** — aborts the assignment and preserves the existing reference. Use as a guard when the handler must conditionally reject a pick:

   ```
   if (!someCondition) {
     keeps original reference;
   }
   referenceNode.name = newReferentNode:TargetConcept.name;
   ```

   Concept: `jetbrains.mps.lang.constraints.structure.KeepOriginalReferenceStatement`. Valid only inside a `ConstraintFunction_ReferentSetHandler` body.

**Minimal blueprint** (the `referentSetHandler` child of `NodeReferentConstraint`):

```json
{
  "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSetHandler",
  "children": [
    { "role": "body", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }
    ]}
  ]
}
```

Add as the `referentSetHandler` child of the enclosing `NodeReferentConstraint`.
