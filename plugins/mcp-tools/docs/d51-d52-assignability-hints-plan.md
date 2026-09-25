# Plan: next-step hints on concept-assignability errors (D51/D52, server side)

Status: plan only, not implemented (2026-09-25). Revised the same day after a review; its claims were
re-checked against the code and against a simulation of §2a over all 254 generated
`StructureAspectDescriptor.java` files (testbench excluded), not against a running MPS. The D51/D52
docs fixes are in a separate change; see `study/docs-defects-archive.md`.

**Verdict.** The child-role (wrapper) hint is worth building: on the evidence checked it gives exactly
one answer for every creator case seen so far (D51's `ArrayCreatorWithInitializer`, round 12's
`AnonymousClassCreator`) and a well-ranked short list for Expression→Statement, and round 12 shows the
docs fix alone does not stop this class of error (§1). The reference-role hint is worth it only in its
generic form, and only because it is cheap: D52 alone saves 2 calls, and the docs fix may remove that
error entirely. The featureId rejection (§2c) fixes a silent failure and is cheaper still. If scope has
to be cut, cut the reference hint and keep §2c.

**Adjacent bug found while planning — fixed in 80b2681a649c**, separately from the hint work. In
`AbstractNodeOps.addNodeChild` (ADD CHILD) the existing child of a single-cardinality role was deleted
*before* the assignability check ran. MPS commands do not roll back (`WorkbenchModelAccess` runs a plain
`CommandProcessor.executeCommand`), so an ADD CHILD with the wrong concept into an occupied `0..1`/`1`
role was rejected, but the old child was gone anyway. The cause was the ordering;
`executeShortCommandOnEdt` catching the `McpUserException` inside the command only decides whether the
IDE logs it. The fix moves the check (~807) above the delete (~818). Out of scope here: every rejected non-dry
instantiation also keeps what `instantiateNode` did before the throw — language imports (~178),
node-factory side effects on the model and module (~203–215), and the model imports and module
dependencies added by `ensureReferenceDependencies`.

**Second adjacent finding: the dry-run dynamic-reference warning is dead code.** `instantiateNode`
passes `allowDynamicReference = !dryRun` (~289) and the other two `applyReferenceUpdate` callers pass
`dryRun = false` (~622, ~865), so the `dryRun && allowDynamicReference` branch never runs. The `dryRun`
parameter descriptions in `JetBrainsMPSRootNodeMcpToolset.kt` (~318, ~493) still promise those
warnings. Not fixed here; §2c makes the featureId case loud on its own.

## 1. Why the current message is correct but not actionable

`AssignabilityException` (`AbstractOps.kt`) states five facts: path, actual, expected, parent, role.
It does not say what *would* fit, and the fix always lives elsewhere — another concept's containment
link, or another node's feature — so finding it takes discovery calls.

- **D51** (`S6-sonnet-1:57`): `get_concept_details` ×2 (8,413 B + 2,172 B), `ToolSearch`,
  `search_concepts` (2,022 B), `get_concept_details` (616 B), then the retry at `:63`. 5 extra calls,
  ~13 KB. With the hint, `:58` would have been the successful retry.
- **D51, round 12** (`S1-sonnet-1:73`, constraints): `AnonymousClassCreator` placed as a bare
  expression; the `GenericNewExpression.creator` wrapper was found only at `:86` after a 6-call search,
  although the worker had read the wrapped form in `computed-sequences-blueprint.md` at `:47`/`:63`. It
  loaded none of the skills the D51 docs fix touched, so more text would not have reached it. This is
  the case the hint is for.
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
   `AbstractNodeOps`; stable order, includes `E`, covers interface parents). The largest pools are
   `INamedConcept` 664, `Expression` 636 and `IOperation` 365 concepts.
2. **Scope**: keep a concept only if its language is in
   `used ∪ SLanguageHierarchy(registry, used).getExtendedLangs(silentHandler)`, where
   `used = ModelDependencyResolver(LanguageRegistry.getInstance(repo), repo).usedLanguages(model)`, or in
   {`A.language`, `E.language`, `parent.language`}. `usedLanguages` leaves extended languages out (its
   Javadoc says so), and MPS closes over them the same way in `IntentionsManager`, `KeymapHandler` and
   `CreateFromUsageUtil`. The explicit union and the silent handler are there because the hierarchy drops
   undeployed initial languages and its `DefaultErrorHandler` logs a warning on every call. The extras
   keep dry runs on fresh models working, since `instantiateNode` auto-imports languages only on non-dry
   runs. No whole-registry widening in v1.
3. **Keep `W` only if** it is a non-abstract `SConcept` with a containment link `L` that is not declared
   on `BaseConcept` (excludes `smodelAttribute`), whose target is not `BaseConcept`, and
   `A.isSubConceptOf(L.targetConcept)`. The BaseConcept-target exclusion matters: 21 links target
   BaseConcept, including `Quotation.quotedNode`, which would otherwise be suggested for anything.
4. **Completeness filter**: every other non-attribute containment link and every reference link of `W`
   must be optional. Removes `IfStatement`/`SynchronizedStatement` for Expression→Statement and
   `CastExpression`/`InstanceOfExpression` for a type placed as an expression; they point to the wrong
   fix more often than the right one. **Fallback**: only when no complete wrapper survives and at most 3
   incomplete ones do, emit those and name their missing mandatory roles. This recovers `DotExpression`
   for an `IOperation` placed as an `Expression`: `DotExpression.operation` is the only link in the 254
   descriptors that targets `IOperation`, and `operand` is mandatory. `ClassifierType`→`Expression`
   (16 incomplete) still gets no hint.
5. **Dedup**: drop `W'` when it matches only through a link inherited from an already-kept candidate
   (`L.owner != W'`) — removes `NestedNewExpression` next to `GenericNewExpression`.
6. **Rank** (lexicographic): canonical wrapper name (`W.name == L.targetConcept.name + E.name`, e.g.
   `ExpressionStatement`); `W.language` ∈ {`A.language`, `E.language`}; fewest other non-attribute
   containment links; hierarchy distance from `A` to `L.targetConcept`; name. (An earlier "`L` mandatory"
   key ranked `assert` above `return`.)
7. **Deprecation**: skip `W` when `ConceptRegistry.getInstance().getConceptProperties(W).isDeprecated()`
   (the generated `ConceptPresentation`, in memory). Applied before the caps, so the counts exclude
   deprecated concepts. Not `getDeprecationInfo`, which needs the declaration node.
8. **Caps**: up to 8 in details, 3 in text; more than 25 survivors means the pairing is too generic —
   emit no hint.
9. **Cost**: in-memory runtime descriptors only; a few ms under the lock. No concept budget:
   `getDescendants` builds the whole set before returning and the largest pool is 664, so a budget would
   bound nothing; the >25 cap already covers generic pairings.

What the simulation shows:
- D51: `GenericNewExpression.creator` is the only link that targets `AbstractCreator` — one candidate.
  The same holds for `AnonymousClassCreator` and smodel's `SNodeCreator` (both extend `AbstractCreator`,
  no interfaces); `NestedNewExpression` goes in dedup.
- Expression→Statement: 438 links target `Expression`; the completeness filter leaves
  `ExpressionStatement`, `ReturnStatement`, `ThrowStatement`, `AssertStatement`, `SwitchStatement` (its
  `case`, `defaultBlock` and `switchLabel` are optional), plus closures `YieldStatement` when closures is
  in scope. Rule 6 orders them as listed, `YieldStatement` last.
- `IOperation` (`InstanceMethodCallOperation`, `FieldReferenceOperation`, `SPropertyAccess`) into an
  `Expression` role: no complete wrapper, one incomplete — `DotExpression`, "also fill `operand`".
- No wrapper exists (`PublicVisibility` into `ReturnStatement.expression`): no hint.

### 2b. Reference-role mismatch → target candidates

Inputs: resolved target node `T`, expected concept `E`, inside `validateReferenceTarget`.

1. **`T` is an `AbstractConceptDeclaration`**: walk `T` and its super declarations breadth-first
   (`extends` / `implements.intfc` / interface `extends`), collecting `propertyDeclaration` /
   `linkDeclaration` children that are instances of `E`, skipping BaseConcept. Walks declaration
   nodes, not the runtime `SConcept`, so it works for unbuilt languages. Reuse
   `superConceptDeclarations`, `intfcTargets`, `genuineLink` from
   `java/ConceptBehaviorJavaParseAdapter.kt`, extracted to `languages/StructureDeclarations.kt` (next to
   `StructureLanguageMeta.kt`, which exists to read features off `ConceptDeclaration` nodes). For a
   `LinkDeclaration`, report cardinality and metaclass so the agent can choose `SLinkAccess` vs
   `SLinkListAccess`.
2. **Any other `T`**: descendants of `T` that are instances of `E` (DFS skipping `smodelAttribute`,
   ≤2,000 visited, keep 8), plus the nearest ancestor that is an `E` — at most 9 lines.
3. **Order and caps**: for a concept declaration, own features first in declaration order, then
   inherited by BFS level; up to 10 in text; above that, point at `mps_mcp_get_concept_details` on the
   concept `T` declares (its `sourceNode` fields). For any other `T`, the list from step 2, with no
   fallback.
4. **Scope**: not evaluated at the blueprint sites, where the owner node is detached (this includes
   D52). At SET/REFERENCE and in the staged references of `update_root_node_from_json` the owner is
   attached, and `ModelConstraints.getReferenceDescriptor(node, link).getScope()` could list in-scope
   targets without setting the reference first. Not in v1.

### 2c. featureId passed as a reference target → reject with the right ref

A `featureId` from `mps_mcp_get_concept_details` is `<languageUUID>/<conceptId>/<featureId>` for
properties, containment links and reference links alike (`serialize()` of `SPropertyId`,
`SContainmentLinkId`, `SReferenceLinkId`); the three kinds are told apart only by looking the id up on
the concept. No accepted reference form has that shape. Today `resolveReferenceTarget` returns null for
it (no `r:`/`i:`/`.`), so:
- non-dry blueprint insert: stored as a dynamic reference; the only signal is `fixReferences.stillBroken`;
- dry run: no warning (the dead branch above);
- SET/REFERENCE: a generic NOT_FOUND once scope resolution fails.

Fix: recognize the shape at the top of `resolveReferenceTarget`, which all three reference paths call
(`applyReferenceUpdate` ~403, the staging loop in `updateNodeFromBlueprint` ~563). Deserialize, find the
feature on the concept, and throw `McpInvalidReferenceException` naming its `sourceNode` reference; for
a hollow language whose concept can't be looked up, a generic "this is a featureId; pass the
declaration's `sourceNode`" message. Reject rather than resolve, as the XML-short-id check does, so the
caller learns the right form. No study record shows an agent passing a featureId (D52 passed the
concept); the priority comes from severity: the failure is silent, and before the D52 docs fix
`concept-details.md` and the tool description pointed at `featureId`.

## 3. Response shape

- `AssignabilityException` gains `hint: AssignabilityHint? = null`, with
  `AssignabilityHint(lines: List<String>, details: Map<String, Any?>)`. The message is the unchanged
  5-line body plus hint lines in the same ` - ` style; `errorDetails` is `hint.details`. Existing
  `contains(...)` assertions keep passing; `code` does not change at any site.
- Flat details keys, following the `missingParameters` convention: `wrapperCandidates` /
  `wrapperCandidatesTotal`, `targetCandidates` / `targetCandidatesTotal`. A fallback (incomplete)
  wrapper entry also carries `alsoRequired: [{role, cardinality, target}]`.

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
With several candidates: `Possible wrappers (3 of 5, all in details.wrapperCandidates): ExpressionStatement.expression, ReturnStatement.expression, ThrowStatement.throwable`, paste shape only for the first.

Fallback rendering (`IOperation` as an expression):
```
 - Wrap it: 'DotExpression' is an 'Expression' whose child role 'operation' (1, IOperation) accepts it; it also needs 'operand' (1, Expression). Replace the node at this path with:
   {"concept":"jetbrains.mps.baseLanguage.structure.DotExpression","children":[{"role":"operand","nodes":[<operand>]},{"role":"operation","nodes":[<the node at this path>]}]}
```

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
| ~808 `addNodeChild` | `update_node ADD/CHILD`, path `$` | wrapper; the check already sits above the single-role delete (fixed in 80b2681a649c, see top) |

§2c adds one check at the top of `resolveReferenceTarget`.

Out of scope: `JetBrainsMPSJavaMcpToolset.roleAssignabilityError` (parser output; the usual cause is
`featureKind`; D45 already wraps statements), and the console "cannot be used as a console command"
check (already names the fix).

## 5. Tests

New `AssignabilityHintIntegrationTest`, registered in `McpToolsIntegrationTestSuite.java` (a new class
avoids clashing with other uncommitted edits to `JetBrainsMPSNodeMcpToolsetIntegrationTest`). Dry run
unless stated:

1. D51 verbatim via `insert_root_node_from_json`: code stays `INVALID_REQUEST`; the 5 facts present;
   `wrapperCandidates[0]` is `GenericNewExpression`/`creator`; no `NestedNewExpression`. Then apply the
   suggested shape and assert `ok`. `AnonymousClassCreator` and `SNodeCreator` in the same role: one
   candidate each, `GenericNewExpression`/`creator`.
2. `IntegerConstant` via ADD CHILD into `StatementList.statement`: pin only candidate [0],
   `ExpressionStatement`; no `IfStatement`.
3. `InstanceMethodCallOperation` into `ReturnStatement.expression`: the single candidate is
   `DotExpression` with `alsoRequired` naming `operand`. `ClassifierType` into the same role: no
   `details` (covers the `CastExpression`/`InstanceOfExpression` suppression, which test 2 can't: neither
   is a `Statement`).
4. `PublicVisibility` into `ReturnStatement.expression`: message identical to today, no `details`.
5. D52 via `createConceptBehaviorRoot(implements = "jetbrains.mps.lang.core.structure.INamedConcept")`,
   then a method inserted via ADD CHILD (covers the ~801 rewrap) whose `SPropertyAccess.property` points
   at the concept: `targetCandidates` contains `…lang.core.structure)/1169194664001`; BaseConcept's
   `shortDescription` absent; an own property seeded through `CREATE_CONCEPTS` comes first.
6. Same D52 case via `update_node SET/REFERENCE` (the `toolFailure` path, code `INVALID_REFERENCE`).
7. Nested wrapper case through SET CHILD (covers the ~674 rewrap): replace a `ReturnStatement` with one
   whose `expression` is D51's `ArrayCreatorWithInitializer`; `details.wrapperCandidates` present.
8. Generic descendant case: `class A { void m() { int x = 0; } }` via `parse_java_and_insert`, then a
   `VariableReference` targeting the statement → candidate is `x`'s `LocalVariableDeclaration`.
9. featureId (§2c): a blueprint reference and a SET/REFERENCE whose target is the `featureId` that
   `get_concept_details` reports for `INamedConcept.name`, dry and non-dry: rejected, the message names
   `…lang.core.structure)/1169194664001`, nothing is stored. Codes follow the pre-existing split (§7):
   `INVALID_REQUEST` on the blueprint path, `INVALID_REFERENCE` on SET/REFERENCE.
10. Regression for the adjacent bug — fixed in 80b2681a649c, which added it to
    `JetBrainsMPSNodeMcpToolsetIntegrationTest` as `add-node-child with a non-assignable concept on
    occupied single-cardinality role keeps the existing child`: a non-dry-run ADD CHILD of a wrong
    concept into an occupied single role leaves the occupant in place. Nothing to add here.

Unit (`AbstractOpsPropertyProblemsTest`): hint lines appended; `toolFailure` puts `hint.details` into
`details`; `instantiationFailed` forwards details and warnings. That last one is the only coverage for
the console site: the headless fixture has no Console tool window
(`JetBrainsMPSConsoleMcpToolsetIntegrationTest.kt` ~21–29), and the console is resolved before
instantiation. The two existing assignability tests stay unchanged thanks to the default parameter.

Existing tests that change: none found. No integration test asserts on this message; the Java-toolset
tests assert on that toolset's own wording.

## 6. Docs follow-up and re-measurement

- Tool descriptions: no change. The rejection carries its own hint, so nothing needs announcing in
  advance, every description edit costs context in every session and moves `inventorySha256`, and
  leaving them alone keeps the hint the only server-side change being measured.
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
  scenario that forces both shapes. Round 12's S1 creator case is the natural probe, since the docs fix
  does not reach it.

## 7. Risks, open questions, size

- Constraints are not evaluated: `canBeChild`/`canBeParent` may still reject a suggested wrapper later
  in `check_root_node_problems`. Word it as "structurally accepted".
- Wrappers from unbuilt (hollow) languages are invisible to `ConceptDescendantsCache`: the hint is
  absent rather than wrong. The reference hint is unaffected (declaration-node walk); §2c falls back to
  the generic message.
- Pre-existing error-code inconsistency: nested failures return `INVALID_REQUEST`, top-level ones
  `INVALID_REFERENCE`. Not changed here; test 9's expected codes follow it.
- Console errors name paths inside the synthesized `BLCommand` wrapper (pre-existing).
- The canonical-name rule is a heuristic; the completeness filter keeps the output honest.
- `search_concepts(modelReference)` has the same missing extended-language closure
  (`JetBrainsMPSLanguageMcpToolset.kt` ~396). Not changed here.
- Merge overlap with uncommitted D49 work in `AbstractOps.kt`, `AbstractNodeOps.kt`,
  `JetBrainsMPSNodeMcpToolset.kt` and `McpIntegrationTestBase.kt`.

Size: ~240 lines `AssignabilityHints.kt`, ~40 moved to `StructureDeclarations.kt`, ~30 for §2c, ~60
changed across `AbstractOps`/`AbstractNodeOps`/RootNode/Console, ~350 of tests, docs, ~40 in
`analyze_runs.py`. Roughly 1.5 days; §2b is about 30% of it, §2c about 10%.

Critical files: `common/AbstractNodeOps.kt`, `common/AbstractOps.kt`,
`java/ConceptBehaviorJavaParseAdapter.kt`, `JetBrainsMPSRootNodeMcpToolset.kt`,
`JetBrainsMPSConsoleMcpToolset.kt`, `test/.../integration/McpToolsIntegrationTestSuite.java`.
