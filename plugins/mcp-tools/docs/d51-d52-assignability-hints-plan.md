# Plan: next-step hints on concept-assignability errors (D51/D52, server side)

Status: plan only, not implemented (2026-09-25). The D51/D52 docs fixes are in a separate change; see
`study/docs-defects.md`. Candidate sets below were checked against generated
`StructureAspectDescriptor.java` sources, not against a running MPS.

**Verdict.** The child-role (wrapper) hint is worth building: on the evidence checked it gives exactly
one answer for D51 and a well-ranked short list for Expression→Statement. The reference-role hint is
worth it only in its generic form, and only because it is cheap: D52 alone saves 2 calls, and the
docs fix may remove that error entirely. If scope has to be cut, cut the reference hint.

**Adjacent bug found while planning.** In `AbstractNodeOps.addNodeChild` (ADD CHILD, ~lines 804–817)
the existing child of a single-cardinality role is deleted *before* the assignability check runs.
`executeShortCommandOnEdt` catches the `McpUserException` inside the command, so the command completes
and the deletion is committed: an ADD CHILD with the wrong concept into an occupied `0..1`/`1` role is
rejected, but the old child is gone anyway. Fix: move the check above the delete.

## 1. Why the current message is correct but not actionable

`AssignabilityException` (`AbstractOps.kt`) states five facts: path, actual, expected, parent, role.
It does not say what *would* fit, and the fix always lives elsewhere — another concept's containment
link, or another node's feature — so finding it takes discovery calls.

- **D51** (`S6-sonnet-1:57`): `get_concept_details` ×2 (8,413 B + 2,172 B), `ToolSearch`,
  `search_concepts` (2,022 B), `get_concept_details` (616 B), then the retry at `:63`. 5 extra calls,
  ~13 KB. With the hint, `:58` would have been the successful retry.
- **D52** (`:111`): `print_node` on Recipe (3,138 B), `print_node` on the `name` declaration (978 B),
  an Edit, the retry. The hint removes the 2 `print_node` calls (~4 KB); edit and retry stay. The right
  `sourceNode` had been in context since `:38`/`:55`, so the gain is smaller.

## 2. Design

New file `common/AssignabilityHints.kt`, internal functions over the open API, called only after
`isSubConceptOf` has failed (the success path pays nothing).

### 2a. Child-role mismatch → wrapper candidates

Inputs: actual concept `A`, role link `L0` with expected concept `E = L0.targetConcept`, the parent
concept, the target `SModel`.

1. **Pool**: `ConceptDescendantsCache.getInstance().getDescendants(E)` (already used in
   `AbstractNodeOps`; stable order, includes `E`, covers interface parents).
2. **Scope**: keep a concept only if its language is in
   `ModelDependencyResolver(LanguageRegistry.getInstance(repo), repo).usedLanguages(model)` or in
   {`A.language`, `E.language`, `parent.language`} (the extras keep dry runs on fresh models working,
   since `instantiateNode` auto-imports languages only on non-dry runs). No whole-registry widening in v1.
3. **Keep `W` only if** it is a non-abstract `SConcept` with a containment link `L` that is not declared
   on `BaseConcept` (excludes `smodelAttribute`), whose target is not `BaseConcept`, and
   `A.isSubConceptOf(L.targetConcept)`. The BaseConcept-target exclusion matters: 21 links target
   BaseConcept, including `Quotation.quotedNode`, which would otherwise be suggested for anything.
4. **Completeness filter**: every other non-attribute containment link and every reference link of `W`
   must be optional. Removes `CastExpression`/`InstanceOfExpression` and `IfStatement`/
   `SynchronizedStatement`, which point to the wrong fix more often than the right one.
5. **Dedup**: drop `W'` when it matches only through a link inherited from an already-kept candidate
   (`L.owner != W'`) — removes `NestedNewExpression` next to `GenericNewExpression`.
6. **Rank** (lexicographic): canonical wrapper name (`W.name == L.targetConcept.name + E.name`, e.g.
   `ExpressionStatement`); `W.language` ∈ {`A.language`, `E.language`}; `L` mandatory; hierarchy
   distance from `A` to `L.targetConcept`; name.
7. **Deprecation**: only while taking the top 8, resolve the declaration and skip deprecated ones.
8. **Caps**: up to 8 in details, 3 in text; more than 25 survivors means the pairing is too generic —
   emit no hint.
9. **Budget**: stop after 5,000 concepts. In-memory runtime descriptors only; a few ms under the lock.

What the checks show:
- D51: `GenericNewExpression.creator` is the only link that targets `AbstractCreator` — one candidate.
- Expression→Statement: 438 links target `Expression`; the completeness filter leaves
  `ExpressionStatement`, `ThrowStatement`, `ReturnStatement`, `AssertStatement`, collections
  `YieldStatement`; the canonical-name rule puts `ExpressionStatement` first.
- No wrapper exists (`PublicVisibility` into `ReturnStatement.expression`): no hint.

### 2b. Reference-role mismatch → target candidates

Inputs: resolved target node `T`, expected concept `E`, inside `validateReferenceTarget`.

1. **`T` is an `AbstractConceptDeclaration`**: walk `T` and its super declarations breadth-first
   (`extends` / `implements.intfc` / interface `extends`), collecting `propertyDeclaration` /
   `linkDeclaration` children that are instances of `E`, skipping BaseConcept. Walks declaration
   nodes, not the runtime `SConcept`, so it works for unbuilt languages. Reuse
   `superConceptDeclarations`, `intfcTargets`, `genuineLink` from
   `java/ConceptBehaviorJavaParseAdapter.kt`, extracted to `languages/StructureDeclarations.kt`. For a
   `LinkDeclaration`, report cardinality and metaclass so the agent can choose `SLinkAccess` vs
   `SLinkListAccess`.
2. **Any other `T`**: descendants of `T` that are instances of `E` (DFS skipping `smodelAttribute`,
   ≤2,000 visited, keep 8), plus the nearest ancestor that is an `E`.
3. **Order and caps**: own features first in declaration order, then inherited by BFS level; up to 10
   in text; above that, point at `mps_mcp_get_concept_details` on `T`'s concept (`sourceNode` fields).
4. **Scope is not evaluated**: the owner node is detached at this point, so the reference scope can't
   be computed.

## 3. Response shape

- `AssignabilityException` gains `hint: AssignabilityHint? = null`, with
  `AssignabilityHint(lines: List<String>, details: Map<String, Any?>)`. The message is the unchanged
  5-line body plus hint lines in the same ` - ` style; `errorDetails` is `hint.details`. Existing
  `contains(...)` assertions keep passing; `code` does not change at any site.
- Flat details keys, following the `missingParameters` convention: `wrapperCandidates` /
  `wrapperCandidatesTotal`, `targetCandidates` / `targetCandidatesTotal`.

D51 rendering (`insert_root_node_from_json`):
```
Failed to instantiate node from JSON: Concept assignability error at JSON path '$.children[2]…nodes[0]':
 - Actual concept: 'ArrayCreatorWithInitializer'
 - Expected concept(s): 'Expression'
 - Parent concept: 'ReturnStatement'
 - Role: 'expression'
 - Wrap it: 'GenericNewExpression' is an 'Expression' whose child role 'creator' (1, AbstractCreator) accepts it. Replace the node at this path with:
   {"concept":"jetbrains.mps.baseLanguage.structure.GenericNewExpression","children":[{"role":"creator","nodes":[<the node at this path>]}]}
```
```json
"details":{"wrapperCandidates":[{"concept":"jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "conceptReference":"c:f3061a53-9226-4cc5-a443-f952ceaf5816/1145552977093:jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "role":"creator","roleTarget":"jetbrains.mps.baseLanguage.structure.AbstractCreator","cardinality":"1"}],
  "wrapperCandidatesTotal":1}
```
With several candidates: `Possible wrappers (3 of 5, all in details.wrapperCandidates): ExpressionStatement.expression, ThrowStatement.throwable, ReturnStatement.expression`, paste shape only for the first.

D52 rendering:
```
 - Target 'Recipe' is a ConceptDeclaration; role 'property' wants one of its PropertyDeclarations (inherited included). Set the reference target to one of:
   servings (Recipe): r:1cb60491-…(mcp.study.recipes.structure)/<id>
   name (INamedConcept): r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/1169194664001
```
Each `targetCandidates` entry is `{name, concept, declaredIn, reference}`.

**Plumbing**: four catch-and-rewrap sites keep only `e.message` and would drop `details` —
`JetBrainsMPSRootNodeMcpToolset.kt` (~374), `AbstractNodeOps.kt` (~674, ~801),
`JetBrainsMPSConsoleMcpToolset.kt` (~116, which also drops its warnings). Replace them with one
`AbstractNodeOps` helper, `instantiationFailed(prefix, e, warnings)`, that forwards
`(e as? McpUserException)?.errorDetails`. Sites already going through `toolFailure` keep
`errorDetails` unchanged.

## 4. Throw sites

All five construct through one new factory, `assignabilityFailure(...)` in `AbstractNodeOps`.

| Site | Path | Hint |
|---|---|---|
| `AbstractNodeOps` ~328 | nested child in `instantiateNode` (every blueprint tool; the D51 site) | wrapper |
| ~453 `validateReferenceTarget` | blueprint references, staged refs in `updateNodeFromBlueprint`, `update_node SET/REFERENCE`; the D52 site | target |
| ~533 | top-level children in `update_root_node_from_json` | wrapper |
| ~679 `replaceNodeChild` | `update_node SET/CHILD`, path `$` | wrapper |
| ~810 `addNodeChild` | `update_node ADD/CHILD`, path `$` | wrapper; move the check above the single-role delete |

Out of scope: `JetBrainsMPSJavaMcpToolset.roleAssignabilityError` (parser output; the usual cause is
`featureKind`; D45 already wraps statements), and the console "cannot be used as a console command"
check (already names the fix).

## 5. Tests

New `AssignabilityHintIntegrationTest`, registered in `McpToolsIntegrationTestSuite.java` (a new class
avoids clashing with other uncommitted edits to `JetBrainsMPSNodeMcpToolsetIntegrationTest`). Dry run
unless stated:

1. D51 verbatim via `insert_root_node_from_json`: code stays `INVALID_REQUEST`; the 5 facts present;
   `wrapperCandidates[0]` is `GenericNewExpression`/`creator`; no `NestedNewExpression`. Then apply the
   suggested shape and assert `ok`.
2. `IntegerConstant` via ADD CHILD into `StatementList.statement`: first candidate `ExpressionStatement`;
   no `CastExpression`/`IfStatement`.
3. `PublicVisibility` into `ReturnStatement.expression`: message identical to today, no `details`.
4. D52 via `createConceptBehaviorRoot(implements = "jetbrains.mps.lang.core.structure.INamedConcept")`,
   then a method whose `SPropertyAccess.property` points at the concept: `targetCandidates` contains
   `…lang.core.structure)/1169194664001`; BaseConcept's `shortDescription` absent; an own property
   seeded through `CREATE_CONCEPTS` comes first.
5. Same D52 case via `update_node SET/REFERENCE` (the `toolFailure` path, code `INVALID_REFERENCE`).
6. Generic descendant case: `class A { void m() { int x = 0; } }` via `parse_java_and_insert`, then a
   `VariableReference` targeting the statement → candidate is `x`'s `LocalVariableDeclaration`.
7. Regression for the adjacent bug: a non-dry-run ADD CHILD of a wrong concept into an occupied single
   role leaves the occupant in place.

Unit (`AbstractOpsPropertyProblemsTest`): hint lines appended; `toolFailure` puts `hint.details` into
`details`. The two existing assignability tests stay unchanged thanks to the default parameter.

Existing tests that change: none found. No integration test asserts on this message; the Java-toolset
tests assert on that toolset's own wording.

## 6. Docs follow-up and re-measurement

- Tool descriptions: the "must be assignable" sentence in `JetBrainsMPSNodeMcpToolset.kt` and the
  root-node insert/update descriptions should say a rejection names complete wrappers / feature targets
  in `details.wrapperCandidates` / `details.targetCandidates`. `inventorySha256` will move.
- Skills (blueprints, then hand-propagate for `SkillCatalogReplicationTest`):
  `mps-node-editing/references/troubleshooting.md`, `mps-baselanguage/references/troubleshooting.md`,
  `mps-console/references/mcp-insertion.md` (the hint says `ExpressionStatement`; the doc keeps
  `BLExpression` as the preferred console form), `mps-mcp-workflow/references/node-editing-rules.md`.
- Re-measurement: the server call log records only `ok`/`code`, so measure from transcripts in
  `analyze_runs.py` — add `assignability_errors` (`Concept assignability error`),
  `assignability_hinted` (`"wrapperCandidates"\s*:` or `"targetCandidates"\s*:`), and
  `assignability_recovery_calls` (calls from the rejection to the next `ok` call of the same tool/kind).
  Targets: D51-class 5 → 0 extra calls; D52-class 2 → 0 lookups. The docs fixes may stop both errors
  on S6, so to measure the hint separately use an A/B arm with the pre-fix docs or a small probe
  scenario that forces both shapes.

## 7. Risks, open questions, size

- Constraints are not evaluated: `canBeChild`/`canBeParent` may still reject a suggested wrapper later
  in `check_root_node_problems`. Word it as "structurally accepted".
- Wrappers from unbuilt (hollow) languages are invisible to `ConceptDescendantsCache`: the hint is
  absent rather than wrong. The reference hint is unaffected (declaration-node walk).
- Pre-existing error-code inconsistency: nested failures return `INVALID_REQUEST`, top-level ones
  `INVALID_REFERENCE`. Not changed here.
- Console errors name paths inside the synthesized `BLCommand` wrapper (pre-existing).
- The canonical-name rule is a heuristic; the completeness filter keeps the output honest.
- **Open question**: a `featureId` passed as a reference target has no `r:`/`i:`/`.`, so
  `resolveReferenceTarget` returns null and a non-dry run silently creates a dynamic reference. The
  assignability hint can't catch this; a dedicated rejection may be worth more than the D52 hint.
- Merge overlap with uncommitted work in `AbstractOps.kt` and `JetBrainsMPSNodeMcpToolset.kt`.

Size: ~220 lines `AssignabilityHints.kt`, ~40 moved to `StructureDeclarations.kt`, ~60 changed across
`AbstractOps`/`AbstractNodeOps`/RootNode/Console, ~280 of tests, docs, ~40 in `analyze_runs.py`.
Roughly 1–1.5 days; the reference part is about 35%.

Critical files: `common/AbstractNodeOps.kt`, `common/AbstractOps.kt`,
`java/ConceptBehaviorJavaParseAdapter.kt`, `JetBrainsMPSRootNodeMcpToolset.kt`,
`test/.../integration/McpToolsIntegrationTestSuite.java`.
