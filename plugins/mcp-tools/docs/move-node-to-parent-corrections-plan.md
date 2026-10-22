# MOVE_NODE_TO_PARENT corrections — plan (follow-up to D99 / MOVE_CHILD)

Status: D110, 2026-10-22. Implemented and reviewed (uncommitted); archived in `../study/docs-defects-archive.md`.

## What the MOVE_CHILD change did (uncommitted, D99)

`opMoveChild` / `moveNodeChild` in `src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSNodeMcpToolset.kt`:

1. **Infer what the node already says.** Parent (`childNode.parent`) and `childRole`
   (`childNode.containmentLink`) are inferred when omitted, validated when supplied.
2. **Report the interpretation.** `details` carries `movedNode`, `parentReference`, `childRole`,
   `inferredParameters`; a lone `nodeReference` read as the child adds a `warnings` entry.
3. **Reject the ambiguous shape** instead of guessing (lone `nodeReference` + a `childRole` its own
   concept declares).
4. **Identity by reference**, not SNode wrapper `==` (`childNode.parent?.reference != parent.reference`).
5. **Precise, actionable rejections** (root passed as the child; console top-level command).
6. Docs: `@McpDescription`, `mps-node-editing/SKILL.md`, `request-conventions.md` (three catalogs),
   test scenario 07, `docs-defects*.md`.

## Does MOVE_NODE_TO_PARENT need the same?

Partly. The D99 parameter-meaning confusion does not transfer one to one: `nodeReference` always
names the node to move and `newParentRef` the target, so there is no "lone nodeReference" ambiguity,
and no study round recorded a MOVE_NODE_TO_PARENT retry. But reading `moveNodeToParent` against the
same checklist turns up real defects, two of them data-corrupting.

### Defects found (current code, `moveNodeToParent`)

| # | Kind | Problem | Effect |
|---|------|---------|--------|
| M1 | BUG, high | No cycle check. `newParentRef` == the node, or a descendant of it. `detachNode` runs first, then `insertChildBefore` throws `IllegalModelAccessException("Trying to create a cyclic tree")` (`core/kernel/source/jetbrains/mps/smodel/SNode.java` `insertChildBefore`). | The node has already been removed from its parent/model, and nothing rolls back: `executeShortCommandOnEdt` (`common/AbstractOps.kt`) catches only `McpUserException`, so the exception logs a SEVERE and becomes a generic `toolFailure`. The model is left dirty with the subtree **lost**, and the loss is persisted on the next save (any tool, or autosave). Only a manual IDE undo recovers it. The console variant: the current command node is admitted as a source, and every console target lies under it. |
| M2 | BUG, medium | No cardinality check on the target role. A `[0..1]`/`[1]` role that already holds a child gets a second one via `addChild`; `position` still goes through `resolveInsertIndex`, so `position:0` inserts before the occupant. | Malformed model (two children in a single role); editor/persistence surprises. |
| A1 | BUG, medium | A cross-model move runs no `performFixReferences` (`common/AbstractNodeOps.kt`) and updates no imports. The target model gets no model import or module dependency for references out of the moved subtree, no used languages for its concepts, and incoming references from other models keep the old model id. `addNodeChild` does call `performFixReferences`. | The subtree's references and its incoming usages break after a cross-model move. |
| A2 | BUG, low | Moving the only child out of a `[1]` role leaves the old parent invalid, without a warning. | A later model check reports it. |
| A3 | consistency | Make-root of a console node gets the generic `crossProjectErr`. The "Cannot move a node from the MPS Console" branch never runs, because the console model is an `EditableSModel`. | Misleading message; dead code. |
| M3 | BUG, medium | No concept-compatibility check: the node's concept is not checked against `containmentLink.targetConcept`. | Silently places e.g. a `PropertyDeclaration` into a `linkDeclaration` role; only a later model check reports it. |
| M4 | BUG, low | Make-root form does not check rootability of the node's concept. | Non-rootable node becomes a root; constraint error later. |
| M5 | FEATURE, low | Silently ignored keys: both `newParentRef` and `modelReference` → `modelReference` ignored; `role`/`position` with the make-root form → ignored. | Caller believes a parameter took effect. |
| M6 | FEATURE, low | `role` is always required with `newParentRef`, even when the new parent's concept has exactly one containment link the node's concept fits (the D99 "infer what is unambiguous" idea). | One avoidable rejection/retry. |
| M7 | cosmetic | The source is resolved with an inline `resolveNodeReference(mpsProject, …) ?: resolveNodeReference(repo, …)`, which is exactly what `resolveNodeReferencePreferringProject` does. Models are compared with `sourceModel != targetModel`. | Rename only, no behaviour change. Comparing by reference follows the convention MOVE_CHILD just adopted. |
| M8 | consistency | No `details` on success (MOVE_CHILD now reports `movedNode`/`parentReference`/role). | Caller cannot see the old parent / inferred role without a follow-up query. |

## Plan

All validation happens **before** `detachNode`, so every rejection leaves the model untouched
(the invariant the existing `position < -1` check already follows).

1. **Cycle guard (M1).** After resolving `newParent`, if `isSameOrDescendantOf(newParent, node)`
   (`common/AbstractNodeOps.kt`, reference-based, use it as-is), reject with `INVALID_REQUEST`:
   "Cannot move '<node>' under '<newParent>': the new parent is the node itself or one of its
   descendants." When the source is a console node, first run `moveChildConsoleError` (new in the
   MOVE_CHILD diff) so the top-level command node gets its precise message.
2. **Role (M6): no inference, a better rejection instead.** No study retry was recorded, and
   quietly picking a role is riskier for a move than for a reorder. Keep `role` required with
   `newParentRef`. When `role` is not found, list the roles that fit, so the retry takes one call.
   - The candidate predicate must be the one in `AssignabilityHints.kt` (`wrapperFor`):
     `nonAttributeLinks` plus `!isGenericLink(it) && actual.isSubConceptOf(it.targetConcept)`.
     Without it, `smodelAttribute` and BaseConcept-typed links match every node.
   - Extract that predicate into a small internal function.
   - Render the candidates with `containmentLinkInfoJsonObject` (`common/AbstractOps.kt`), which
     includes cardinality.
3. **Concept compatibility (M3).** Reuse `childAssignabilityFailure` (`common/AbstractNodeOps.kt`,
   now private; make it protected). It throws `McpUserException`, so the envelope mapping and the
   `wrapperCandidates` hints come for free. Call it before the detach.
4. **Cardinality and position (M2).**
   - If `!containmentLink.isMultiple` and the role already holds a child other than `node`, reject
     with `INVALID_REQUEST`. COPY_NODE is the precedent for rejecting a single-role write.
   - This deliberately differs from update_node ADD CHILD and parse_java child mode, which
     **overwrite** the occupant. The docs must say so.
   - For a single role, apply `addNodeChild`'s rule that only -1 and 0 are valid positions.
     Extract a tiny helper rather than copying the rule.
   - Moving the occupant onto itself is a no-op.
5. **Rootability (M4).** In the make-root form, check `isRootable(node.concept, repo)`
   (`common/AbstractOps.kt`). On failure, use `resolveRootableConcept`'s wording: "Concept 'X' is
   not a rootable concept".
6. **Conflicting and ignored keys (M5).** `ParameterKeys` has no exclusivity facility, so write
   these checks by hand.
   - Reject `newParentRef` together with `modelReference`: the two select different operations.
     Precedent: "Pass either … not both" in `JetBrainsMPSTypesMcpToolset.kt`.
   - Warn when `role` or `position` comes with the make-root form. Precedent: the check tool's
     "…ignored for a model reference" warning.
7. **Fix references after a cross-model move (A1).** Call `performFixReferences(mpsProject, node)`
   on the target after the insert, the same as `addNodeChild`. That adds the model imports and
   module dependencies, and repairs references out of the subtree.
   - Incoming usages from other models are still not updated; the IDE's `MoveNodesUtil` does that.
     Add a `warnings` entry saying so, and point to MPS's Move refactoring for a full move.
   - Report the fix-references result the same way `update_node` does.
8. **Old parent left invalid (A2).** After the detach, if the old role was `[1]` and is now
   empty, add a warning.
9. **Console message (A3).** Give a console node in make-root form a console-specific error, and
   delete the unreachable non-editable branch, or reword it for the case that really is
   non-editable.
10. **Cosmetic (M7).** Use `resolveNodeReferencePreferringProject` and compare models by
    `.reference`.
11. **Response details (M8).** Always emit `details` with `movedNode`, `previousParentReference`
    (or `previousModelReference` for a former root), `parentReference` / `modelReference` and
    `role`. The caller never supplied the previous parent, so MOVE_CHILD's "only when inferred"
    rule does not apply here. Keep `data` unchanged (`nodeInfoJsonObjectWithIndex`).

## Tests (`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`, MOVE_NODE_TO_PARENT section ~line 971)

Each rejection test also asserts the model is unchanged (node still under its old parent).

- move a node under itself; under its own child → rejected, subtree intact, no SEVERE (M1).
- move into an occupied single-valued role → rejected; into an empty one → ok; `position:1` on a
  single role → rejected (M2).
- incompatible concept into a role → rejected with assignability hints (M3).
- unknown `role` → rejected listing fitting roles, attribute/generic links excluded (M6).
- make-root of a non-rootable concept (e.g. a `PropertyDeclaration`) → rejected (M4).
- `newParentRef` + `modelReference` → rejected; make-root with `role`/`position` → ok + warning (M5).
- cross-model move of a subtree that references its source model → target imports the source
  model, no broken references; `warnings` mentions incoming usages (A1).
- moving the sole child out of a `[1]` role → ok + warning (A2).
- `details` shape on success, both forms (M8).

## Docs

`@McpDescription` of `mps_mcp_alter_nodes`, `mps-node-editing/SKILL.md` (MOVE_NODE_TO_PARENT
paragraph), `request-conventions.md` if the required-keys example changes, scenario
`07_root_nodes_and_node_editing.md`; propagate the skill folders to `.agents/skills` and
`.claude/skills` (checked by `SkillCatalogReplicationTest`). Filed as D110 in
`../study/docs-defects.md`.

## Validation

`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest` + `JetBrainsMPSNodeMcpToolsetIntegrationTest`
(the D49 missing-key tests), then `SkillCatalogReplicationTest`. See `.agents/quality-gates.md`.
