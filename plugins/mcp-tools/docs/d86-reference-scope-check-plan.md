# D86 — wrong-kind reference target accepted by the blueprint writers

Status: plan, draft 3 (2026-09-30). Reviewed twice. Each round was "approve with changes" (12 findings, then 9), and every finding is folded in below (see "Review log" at the end). Nothing is implemented.

## The defect (from `study/docs-defects.md`)

A reference whose target is the wrong kind of node (`CellModel_RefNode.relationDeclaration` → a `ConceptDeclaration` instead of a `LinkDeclaration`) passes the dry run and the write with `fixReferences` 0/0/0. It fails only at MAKE ("ConceptDeclaration is not a subconcept of LinkDeclaration"). The filed remedy is **S**: "check a reference target's concept against the link's declared target concept on insert and dry run (the child-side check exists since D51/D52); return the link declaration's node ref from `UPDATE_CONCEPT_CHILD`".

## Is it still valid? Yes, but the filed remedy would not fix it

**The check the entry asks for already exists, and it passes.** `applyReferenceUpdate` (`common/AbstractNodeOps.kt:495-543`) calls `validateReferenceTarget` (`:611-623`) for every persistent target that resolves, on the dry run as well as the write, and `updateNodeFromBlueprint` stages the same call (`:826-829`). It compares the target's concept with `SReferenceLink.targetConcept`. For `relationDeclaration` that is **`jetbrains.mps.lang.core.BaseConcept`**: `CellModel_WithRole` declares `relationDeclaration → BaseConcept` in the generated `StructureAspectDescriptor.java` (`:2766`, target id `0x10802efe25a`; a second role of the same name at `:1956` has the same target). `CellModel_RefNode` / `CellModel_RefNodeList` / `CellModel_Property` do not specialize it. Every node passes.

**What narrows the role is the referent scope, and no write path consults it.**

| concept | scope of `relationDeclaration` (generated `*_Constraints.java`) |
|---|---|
| `CellModel_RefNode` | the edited concept's aggregation links with singular cardinality (`CellModel_RefNode_Constraints.java:49-52`) |
| `CellModel_RefNodeList` | the edited concept's aggregation links with multiple cardinality (`CellModel_RefNodeList_Constraints.java:50-51`) |
| `CellModel_Property` | the edited concept's property declarations (`CellModel_Property_Constraints.java:47`) |

The fix-references pass (`performFixReferences`, `:1318-1402`) sets each reference's `resolveInfo` to its target's name (`:1341-1353`) and runs `ResolverComponent.resolveScopesOnly`. `ScopeResolver` calls `setReferenceTarget` only when `scope.resolve(source, resolveInfo)` returns a node. It never nulls a target, and it repoints one only when a same-named node is in scope. `ListScope.resolve` matches case-sensitively, so `Guard` does not resolve to the link `guard`. The explicit target stays, and the counts stay 0/0/0.

**`check_root_node_problems` does catch it.** `runRootCheckers` (`common/AbstractOps.kt:2093-2112`) runs MPS's `RefScopeChecker`, which reports an out-of-scope target as an error. S2-sonnet did not check the editor root before the MAKE (`:34` checked constraints, `:48` intentions). So the write is silent, and the worker finds out only if it checks the right root. MAKE does not check scopes in general. D86 failed at MAKE only because the editor generator casts the target to `LinkDeclaration`.

**Evidence re-read (round 18, `~/MPSProjects/mcp-study/runs-r19`):**

| cell | what happened |
|---|---|
| `S2-sonnet-1` | `:8` `CREATE_CONCEPTS Guard` → `createdReferences.Guard = …/1640011959845395894` (the concept). `:9` `UPDATE_CONCEPT_CHILD role=guard` → `{"ok":true,"data":true}` (no link ref). `:19` ADD CHILD dry run of `CellModel_RefNode` with `relationDeclaration` → the **concept** ref: "Dry run successful". `:20` the write: ok, `fixReferences` 0/0/0. `:49` MAKE fails. `:50-51` print `Transition` and dig out the `guard` link ref `…/1640011959845549448`. `:52` SET REFERENCE (its response has **no** `fixReferences`, see §1). `:53` MAKE ok. That is 4 turns and one failed clean MAKE. |
| `S2-opus-1` | `:33` the same dry run with its own `Guard` concept ref: "Dry run successful". The worker noticed on its own ("Oops"), printed `Transition` at `:34`, and wrote the link ref at `:35`. That is 2 turns. |

Round 20 (S1 only) did not exercise it. D81 (`78401019be1f`) and D87 (`f5ab9e848214`) have touched `applyReferenceUpdate` / `dryRunReferenceWarning` since round 18, but no change closes the gap. The two other causes in the chain also still hold:
- `mps_mcp_update_concept_link` still ends in `okJson("true")` (`JetBrainsMPSLanguageStructureMcpToolset.kt:1393`; the property variant at `:1328`).
- `get_concept_details detail:"shape"` entries still carry no `sourceNode` (`JetBrainsMPSLanguageMcpToolset.kt:649-697`; D67 is open).

`mps-aspect-editor/references/cell-models.md:11, :13, :14` still say "set `relationDeclaration` to child link" without naming the kind of node or where its ref comes from.

This is not specific to the editor language. Any role whose declared target is broad and whose scope does the narrowing has the same hole, for example `VariableReference.variableDeclaration` (declared `VariableDeclaration`, scoped to visible declarations) or smodel `SLinkAccess.link`.

## Proposed change

### 1. Server: report out-of-scope targets on every write (S, primary)

**One helper**, `outOfScopeReferences(refs): List<OutOfScope>`, next to `performFixReferences`. It takes `(source node, link, target)` triples and returns the out-of-scope ones with their candidates. There are two callers:

- **The fix-references pass**, which the blueprint writes run after the node is attached and its imports are added: insert root (`JetBrainsMPSRootNodeMcpToolset.kt:396`), update root (`:553`), `update_node` ADD / SET CHILD (`AbstractNodeOps.kt:1089`, `:955`), and `alter_nodes FIX_REFERENCES` (`JetBrainsMPSNodeMcpToolset.kt:681`). The helper runs after `resolveScopesOnly` and the import step. It gets every reference whose target is non-null and was **not** produced by the resolver in this pass (`targetAfter == targetBefore`). A reference the pass resolved or repointed came from the scope, so it is in scope by construction.
- **SET REFERENCE directly.** `update_node_reference` (`:1106-1174`) is reached only through the triplet batch `update_node SET REFERENCE references:[[node, role, target], …]` (`JetBrainsMPSNodeMcpToolset.kt:1322-1350`); there is no public single form. `SNode.setReference(link, SNodeReference)` stores `resolveInfo = null` (`core/kernel/…/SNode.java:741-747`), so for an `r:` target `needsScopeResolution` (`:1147-1148`) is false. `performFixReference` never runs, and the item has no `fixReferences` at all (S2-sonnet `:52`).
  - After `applyReferenceUpdate` resolves a persistent target, call the helper with that one reference.
  - The item returns `fixReferences: {fixed:0, repointed:0, stillBroken:0, outOfScope:N, message}`, the same shape the name path already returns (`:1167-1169`), plus the warning in the item's `warnings`.
  - The batch concatenates the item envelopes into `data[]` and has no outer `warnings` today. It also copies each item's warnings into the outer envelope's `warnings`, prefixed `references[i]:`, so that they appear where agents read them.

**Skips.** Each one mirrors `RefScopeChecker` or removes a known false positive:
- (a) The source node or any ancestor is an `ISkipConstraintsChecking`, using `getNodeAncestor(node, ISkipConstraintsChecking, inclusion=true)` as `LanguageErrorsComponent.java:234` does. This is `RefScopeChecker`'s `SKIP_CONSTRAINTS_CONDITION` (`AbstractNodeCheckerInEditor.java:22-29`). It covers commented-out nodes (`BaseCommentAttribute`), the console `History`, and lang.text node wrappers. The walk starts at the written node, so the ancestor test is needed: the checker's own subtree skip never sees the ancestors.
- (b) The source node's model or module is null (`RefScopeChecker.java:70-75`).
- (c) **Template code in a generator template model** (`model.module is Generator && SModelStereotype.isGeneratorModel(model)`, the idiom of `GenerationSession.java:760`). A placeholder target under a reference macro (`->$`), or inside a node replaced by `$COPY_SRC$` / `$MAP_SRC$` / `$INSERT$`, is replaced at generation, and `RefScopeChecker` has no template handling.
  - In such a model, a reference is checked only when its source node has a `ConceptFunction` ancestor, i.e. it is query code. Query code is real code: an out-of-scope `VariableReference` there fails javac at MAKE.
  - Everything else in the model is skipped and left to `check_root_node_problems`. That covers template bodies and mapping-configuration rules (rule → template and mapping-label references).
  - Plain utility models in a generator module (without the generator stereotype) are checked normally.

Draft 2 had a skip (d) for default-scope references. It is **dropped**. The default scope is `FilterCommentedScope(ofNodesDefault(model, mostSpecificLinkTarget))` (`ReferenceDescriptor.java:145-149`), so after the import step a default-scope target can still be out of scope in two ways:
- a commented-out target;
- a target of a specialized link that fails the most specific target; `validateReferenceTarget` checks only the generic `link.targetConcept` (`AbstractNodeOps.kt:618`).

The saving was small anyway: with no provider, the scope is `allImportedModels` and `ModelsScope.contains` is a set lookup (`ModelsScope.java:35-38`).

**The check** otherwise follows `RefScopeChecker.checkNodeInEditor`: `ModelConstraints.getReferenceDescriptor(ref).getScope(EvaluateScopeContext())`, then `scope.contains(target)`.
- An `ErrorScope` is skipped: `check_root_node_problems` reports the scope error itself.
- The call is wrapped in `catch (Throwable)` with `rethrowIfCancellation`. A behavior `assert` (an `AssertionError`, and the tests run with `-ea`) gets past `ReferenceDescriptor.getScope`'s own `catch (Exception)`. A failure is logged at warn and the reference is skipped.
- `getScope` itself logs an ERROR for a scope provider that throws. That is accepted, because it is the same event `check_root_node_problems` would log.

**Result.**
- A new counter `outOfScope` on the `fixReferences` object (`FixReferencesResult` `:1311`, `withFixReferencesInfo` `:1409`, `aggregateFixReferencesJsonObject` `:1300`, and the `FIX_REFERENCES` envelope `JetBrainsMPSNodeMcpToolset.kt:684-689`). It is always present, like the other three, and 0 when clean.
- A message branch of its own when N > 0 (the "All references are already correctly resolved" branch `:1392` must not fire): "N reference(s) resolve but lie outside their role's search scope", joined to the fixed / repointed parts as today.
- One warning per out-of-scope reference, **capped at 5 per call** (not per root; a 40-root insert would otherwise give 200), then "… and N more (`check_root_node_problems` lists them)".
  - **Mechanism:** `FixReferencesResult` gains `outOfScopeWarnings: List<String>`, uncapped.
  - Each envelope builder concatenates them across its results and applies the cap once: insert root (whose second pass runs `performFixReferences` per root, `JetBrainsMPSRootNodeMcpToolset.kt:395-401`), ADD/SET CHILD, update root, `FIX_REFERENCES` and the SET REFERENCE batch.
  - The per-root `fixReferences.outOfScope` counts stay uncapped.

  The warning text:

  > `Reference 'relationDeclaration' of CellModel_RefNode r:…/1640011959845549458 targets 'Guard' (ConceptDeclaration), which is outside the role's search scope. check_root_node_problems reports it as an error, and a generator that relies on the role's scope fails at MAKE. In scope: guard (LinkDeclaration) r:…/1640011959845549448, event (LinkDeclaration) r:…/…225, targetState (LinkDeclaration) r:…/…226. Fix with mps_mcp_update_node SET REFERENCE.`

**Candidates**, at most 3, each as reference text, concept and ref. Matching uses `scope.getReferenceText(sourceNode, candidate)`, not `node.name`: `ModelsScope` and `ListScope` compare reference text (`ModelsScope.java:66`), and a `LinkDeclaration`'s text is its role.
1. `scope.getAvailableElements(targetName)` filtered to an exact reference-text match;
2. `getAvailableElements` with the decapitalized prefix (`guard` for `Guard`) and with the capitalized one, filtered to a case-insensitive match;
3. `getAvailableElements(null)`, in scope order.

Every step reads at most 200 elements, because a custom scope may ignore the prefix: the API only says it "filters", and nothing enforces it. The 200 caps the **output**, not the cost: `ModelsScope` and `CompositeScope` build a full list before returning (`ModelsScope.java:81-110`, `CompositeScope.java:60-66`). Steps 1 and 2 are skipped when the target has no name, because a null prefix means "everything". Duplicates are dropped. Steps 1 and 2 find the likely intended node in a large scope that the cap in step 3 would miss. If the scope is empty, the list becomes "The role's search scope is empty here; if the node's context is not built yet, re-check after the last stage." The message never mentions the declared type; the candidates' concept names show the expected kind.

**Warn, do not reject.** The reviewer agreed. The strongest case for rejecting: agents skip warnings on `ok:true` (the D68/D77 silent fix-up loops), MAKE failures are expensive, and D90 rejects bad property values. It is still not done:
- (a) A scope can depend on state the caller has not built yet. A `CellModel_RefNode` added before the editor's `conceptDeclaration` is set is a plausible staged order (not described in `staged-construction.md` today). A variable reference inserted before its declaration is another. A rejection would block these with no override.
- (b) Scope providers are language code, and some are incomplete. MPS itself keeps an out-of-scope reference and flags it.
- (c) Nested nodes can only be checked after attach, which would need a rollback. Rejecting only top-level nodes would be inconsistent.

The narrower rule that draft 1 floated ("reject when no in-scope candidate shares the target's concept or a superconcept") was dropped. It wrongly rejects a staged baseLanguage edit where only `ParameterDeclaration`s are in scope and the target is a `LocalVariableDeclaration`. If the recurrence watch shows `outOfScope` warnings being ignored, revisit.

**Cost.** One more scope computation per checked reference; `resolveScopesOnly` already computed it once. For member scopes (`MethodsScope`) that means another typecheck of the operand, on the EDT inside `executeShortCommandOnEdt`. `contains` is cheap for `ListScope`, `ModelsScope`, `ClassifiersScope` and `MethodsScope`; `CompositeScope` falls back to enumeration (`Scope.java:44`). The expensive baseLanguage roles all have custom scopes (`VariableReference` uses `fromHierarchy`; classifiers and methods use their own), so skipping default scopes would not have helped. Measure on (1) the S3 bulk insert (40 roots) and (2) a reference-heavy baseLanguage `update_root_node_from_json`, where the whole root is re-checked. If either adds more than ~10 % to the call's time, replace `resolveScopesOnly` in the pass with an own loop that computes each scope once and uses it to resolve and to check. That is a follow-up, not v1.

### 2. Server: the same check on a dry run, where the context is real (S)

A dry run does not attach, so the scope is computed from the context the node would get. `ModelConstraints.getReferenceDescriptor(contextNode, containmentLink, position, link, concept)` (`core/kernel/…/ModelConstraints.java:62-70`) exists for this; `AssignableReferenceService.kt:104` already uses it.

**Placement.** `instantiateNode` / `applyReferenceUpdate` do not know whether a node is top-level, its future parent, role or index. The check therefore runs in the callers after instantiation, on the top-level node only:
- `instantiateNode` gets an optional collector parameter for the `(link, resolved target node)` pairs it resolves. The recursive calls for children (`:442`, `:795`) do **not** forward it, so it sees only the top-level node. This is explicit, rather than keyed on `jsonPath == "$"`.
- `applyReferenceUpdate` must return the resolved `targetNode` alongside its warning string; today it returns only the warning.
- The callers use those pairs. They do not re-resolve `getReference().targetNode` on a detached node, which has no model.

The same `outOfScopeReferences` helper does the evaluation, with the skips (a)–(c) from §1. For (a) and (b) the tests apply to the future parent.

| dry-run path | references checked | context |
|---|---|---|
| `update_node` ADD CHILD (`addNodeChild`, `:1073`) | the top-level new node's | `(parent, role, position, link, newChild.concept)`. `position` is the index for `InsertIndex.At(i)`. For `Append` it is the current child count, which is semantically right: every existing declaration precedes the new node. Under `-ea`, though, a `StatementList` parent then throws an `AssertionError` (`index == 0 \|\| index < count`, `StatementList__BehaviorDescriptor.java:157`), which the `Throwable` catch turns into "skipped". A single-cardinality role uses 0. **Never -1**: `StatementList.getLocalVariableDeclarations(-1)` sees no declarations and gives a false positive. The index matters only when the parent is a `ScopeProvider` with an index form (e.g. `StatementList.statement`) and the new top-level node carries the reference directly, which is rare. Most parents fall through to the child form `Scope.getScope(parent, child, kind)` (`Scope.java:107-116`). |
| `update_node` SET CHILD with `childJson` (replace, `replaceNodeChild`, `:946`) | the top-level new node's | `(parent, role, index of the replaced child, link, concept)` |
| `update_root_node_from_json` (staging, `:810-842`) | the blueprint's **staged** targets for the root's own roles, from the staging loop (the node's current references are not what gets written, and the dry run does not apply the staged ones) | `getReferenceDescriptor(node, link)`. The root is attached. The scope sees the root's **current** children, not the blueprint's, which is acceptable for a root's own references. |
| `insert_root_node_from_json` | none | a detached root has no model |
| nested blueprint nodes (any path) | none | their ancestors are detached, and a scope that walks up (`editedConcept` in the editor constraints) would give a false positive |

On top of the §1 skips, a target is skipped when **its model is neither the source model nor imported by it**. The dry run adds no imports (`applyReferenceUpdate` `:526-528`), and an import-dependent custom scope would look out of scope until the write adds the import. Empty and error scopes are skipped as in §1.

The warning text is the §1 text with the `Dry run at <path>:` prefix that `dryRunReferenceWarning` uses (`:549-556`). It does not end in `NAME_NOT_LOOKED_UP`, so it does not trigger the D81 rule line. That covers both S2 cells: the wrong target was on the top-level node of an ADD CHILD dry run. For nested and root-insert references, the write (§1) reports it.

### 3. Server: `UPDATE_CONCEPT_*` return the declaration's ref (S, as filed, widened to all three)

`mps_mcp_update_concept_link` (`JetBrainsMPSLanguageStructureMcpToolset.kt:1331-1393`, which serves both CHILD and REFERENCE) and `mps_mcp_update_concept_property` (`:1290-1328`) change `data: true` to:

- create / update of a link: `{"role":"guard","sourceNode":"r:…/1640011959845549448","created":true}` (`created:false` when an existing link was updated);
- create / update of a property: `{"propertyName":"condition","sourceNode":"r:…","created":…}`;
- delete: `{"role":"guard","deleted":true}` (`propertyName` for a property).

`sourceNode` is the established name for a feature declaration's ref: `get_concept_details` (`JetBrainsMPSLanguageMcpToolset.kt:113`) uses it, and the featureId rejection says "a reference to that declaration takes its `sourceNode`" (`AbstractNodeOps.kt:606`). All three operations get it, because `CellModel_Property.relationDeclaration` and smodel `SPropertyAccess.property` have the same need.

**Compatibility.** Nothing depends on `data: true`:
- The UPDATE tests only call `assertOk`. `expectDataBoolean` is used only for `IS_SUBCONCEPT_OF`.
- No skill script and no test scenario reads the result.
- The `alter_structure` description and `structure-operation-api/tool-conventions.md:8` already promise `'data':{...}`, so `true` is the deviation, and this change brings it in line.

The per-operation pages (`update-concept-{child,reference,property}.md`) get a "Returns" line in the style of the other operation pages (e.g. `create-concepts.md:3`). Any per-operation result summary in `tool-conventions.md` and `mcp-tools-index.md` gets the same shape.

**Not done:** per-feature refs from `CREATE_CONCEPTS` (`createdReferences` maps concept names only). The general fix is D67 (`sourceNode` on each `shape` entry), which stays a separate entry. Note it there as the other half of D86's cause chain.

### 4. Docs (D)

- **`mps-aspect-editor/references/cell-models.md`**:
  - Rows `CellModel_Property` (`:11`), `CellModel_RefNode` (`:13`), `CellModel_RefNodeList` (`:14`): "set `relationDeclaration` to child link" becomes "set `relationDeclaration` to the child role's `LinkDeclaration`: its name (resolved in the role's scope, the simplest form) or its node ref (`data.sourceNode` from `UPDATE_CONCEPT_CHILD`, or the link's `sourceNode` from `get_concept_details`), never the target concept's ref". The property row says the same with `PropertyDeclaration`.
  - Technical Rules, one new bullet: "`relationDeclaration` is declared as `BaseConcept`; only its search scope (the edited concept's links or properties) narrows it. A wrong-kind target is written with an `outOfScope` warning and fails at MAKE."
- **The `stillBroken` advice, changed together.** `DRY_RUN_REFERENCE_RULE` (`AbstractNodeOps.kt:1982-1985`, "check fixReferences.stillBroken …") is copied verbatim in `mps-node-editing/references/json-format.md:68` and `mps-mcp-workflow/references/reference-formats/response-envelope.md:29`. All three become "check `fixReferences.stillBroken` and `outOfScope`".
- **`fixReferences` shape**: `response-envelope.md` and `mps-mcp-workflow/references/mcp-tools-index.md:36` (the summary shape) add `outOfScope` next to `fixed` / `repointed` / `stillBroken`. Each gets one sentence: what it counts, that it is a warning and not a failure, that the warning lists in-scope candidates, and that SET REFERENCE reports it per item, in `data[i].data.fixReferences`, with the item's warnings copied into the outer `warnings`.
- **Other `stillBroken` mentions**: `mps-node-editing/SKILL.md`, `references/troubleshooting.md`, `references/staged-construction.md`, `mps-mcp-workflow/references/bulk-creation.md`, and the `scripts/table_to_bulk_insert.py:19` docstring. Each "check `stillBroken`" becomes "check `stillBroken` and `outOfScope`". `staged-construction.md` also gets one sentence: an `outOfScope` warning on a stage whose scope context is not built yet is expected; re-check after the last stage.
- **Test scenarios**: `plugins/mcp-tools/test_scenarios/…/07_root_nodes_and_node_editing.md:97, :566` describe the `fixReferences` shape. Add `outOfScope`.
- **Tool descriptions**: wherever an insert / update-root / `update_node` description names `stillBroken` (`JetBrainsMPSRootNodeMcpToolset.kt:313`, `:318`, `:493`; `JetBrainsMPSNodeMcpToolset.kt:1213`), add `outOfScope`. That is about 60 chars each. There is no new parameter.

Propagate every skill edit from `plugins/mcp-tools/resources/…/skills/` to `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest`).

**Side finding, not part of D86:** `mps-aspect-editor-menus-and-keymaps/references/paste-and-copy.md:81, :94` names `LocalVariableReference`, which does not exist in this baseLanguage. Fix it separately or file it.

### 5. Tests

A new integration class `ReferenceScopeCheckIntegrationTest`, **registered in `McpToolsIntegrationTestSuite`** (there is no pattern discovery). It is a new file, so it stays clear of other sessions' test edits.

**Fixtures.**
- **Editor:** `createConceptRoot("Host", …)` with a singular child link `guard` → `Guard`, and a `Guard` concept. Insert a `ConceptEditorDeclaration` for `Host` into a model of the test language. No MAKE is needed: the scope reads structure nodes (`getConceptDeclaration` → `getAggregationLinkDeclarations`).
- **BaseLanguage:** `jetbrains.mps.baseLanguage.structure.VariableReference.variableDeclaration`, scoped by `fromHierarchy(VariableDeclaration)` in `VariableReference_Constraints.java:29`.
- **Generator** (case 9): the base class builds its language `withGenerator(false)`. Use `LanguageProducer(myProject).withGenerator(true)`, as `JetBrainsMPSProjectMcpToolsetIntegrationTest.kt:324` does, for a template model with the generator stereotype.

**Cases.**

1. **D86 exact**: ADD CHILD `CellModel_RefNode` with `relationDeclaration` → the `Guard` concept ref. Expect `ok:true`, `fixReferences.outOfScope == 1`, a warning whose first candidate is the `guard` link's ref, and the reference stored unchanged. Test the append position (no `position`).
2. **The same as a dry run**: the warning has the `Dry run at $.references[0]` prefix, nothing is written, and there is no D81 rule line. Once with `position: 1` and once appended.
3. **BaseLanguage, true positives**: a `VariableReference` to a local declared in a **different** method, and one to a local declared **later** in the same method. Both give `outOfScope == 1`.
4. **BaseLanguage, false-positive guard**: a variable declared earlier in the enclosing method gives 0 and no warning on the write. On the dry run, ADD CHILD a `VariableReference` as `ExpressionStatement.expression` (a single role, position 0). This covers the context-form descriptor, not the index rule, which is reached only through an index-form `ScopeProvider` parent (see the §2 table) and is not tested separately.
5. **Name target**: the same reference given as a name that resolves in scope gives `fixed == 1` and `outOfScope == 0`.
6. **Staged construction**: `CellModel_RefNode` under an editor whose `conceptDeclaration` is unset gives `ok:true` and the "search scope is empty" warning. No rejection. (A null operand makes the behavior methods return null, so the scope is an empty `ListScope`, not an `ErrorScope`.)
7. **SET REFERENCE** with an `r:` target that is out of scope. First a batch of one triplet: expect `data[0].data.fixReferences.outOfScope == 1`, the warning in `data[0].warnings`, and the warning in the outer `warnings` prefixed `references[0]:`. Then a batch of two triplets, one in scope and one out: expect counts 0 and 1, and exactly one outer warning, prefixed `references[1]:`.
8. **Other paths**: `update_root_node_from_json` and `alter_nodes FIX_REFERENCES` each report it. The summary response of a multi-root insert aggregates `outOfScope`, and a batch with more than 5 cases gives 5 warnings plus the "… and N more" line.
9. **Skips**:
   - a node under a `BaseCommentAttribute` gives no warning;
   - a reference in a generator template body gives no warning;
   - an out-of-scope `VariableReference` inside a template's query function (under a `ConceptFunction`) **is** reported;
   - a default-scope reference into a newly imported model gives `outOfScope == 0`, and on the dry run no warning;
   - a default-scope reference to a **commented-out** target is reported (`FilterCommentedScope`), which shows why skip (d) was dropped.
10. **`UPDATE_CONCEPT_CHILD` / `_REFERENCE` / `_PROPERTY`**: `data.sourceNode` resolves to a `LinkDeclaration` / `PropertyDeclaration` with the given role or name. `created` is true, then false on a second call. A delete returns `deleted:true`.
11. The existing tests that parse `fixReferences` still pass with the extra key. Grep `stillBroken` under `test/` and `test_scenarios/`.

Loop: a scratch suite (a clone of `McpToolsIntegrationTestSuite` with the new class plus the Node, RootNode and Structure integration classes), then the full suite once. `McpToolsIntegrationTestSuite` has known single flaky failures, so re-run before blaming the diff.

### 6. Validation and re-measure

- `build_project` on `mcp-tools`, then the scratch suite, then the full suite, as `.agents/quality-gates.md` requires. `SkillCatalogReplicationTest` covers the skill copies.
- Time the two §1 cost cases and record the numbers in this file.
- Live check in a running MPS (needs the MPS MCP server; it was not connected when this plan was written): repeat `S2-sonnet-1:19-20` on the statechart fixture and confirm that the dry-run warning and the write warning both name `guard` first.
- Re-measure S2 (both models) and S1. The recurrence-watch signature becomes: "a write or dry run whose `outOfScope > 0` (or whose warning says 'outside the role's search scope'), and the next call is a SET REFERENCE on that node (fixed in 1 turn)". A MAKE failing with "is not a subconcept of" means the fix did not take. Keep the row until one round shows the 1-turn shape or no occurrence.

## Coordination

D63 is committed (`e46966c780e9`). When draft 2 was written, the tree held only `study/docs-defects.md` (the D86 rows) and `test/…/NodeFactoryOnBlueprintPathIntegrationTest.kt` modified, the latter by another session. This plan does not touch that test. Re-check `git status` before starting, stage only this change's hunks, and re-diff shared files (`AbstractNodeOps.kt`, the skill files) if another session commits first. The D86 row already points here; on implementation, set its status to fixed and archive it as usual.

## Review log

Draft 1 → draft 2, reviewer round 1 ("approve with changes"):

1. SET REFERENCE with an `r:` target never reached the fix-references pass → the helper is called directly from `update_node_reference` (§1), with a test (§5.7).
2. `RefScopeChecker`'s `ISkipConstraintsChecking` skip, including ancestors, and its null model/module guard → skips (a) and (b).
3. "MAKE … will reject it" was false in general, and templates are placeholders → message reworded, skip (c) for generator template models.
4. The unimported-model exclusion was stated as "outside the same module" (wrong: `ModelPlusImportedScope` is model plus imports) → corrected (§2). Default-scope references are skipped as in scope by construction (skip (d)).
5. `Throwable`/`AssertionError` handling and the `position` semantics → §1 check and the §2 table.
6. Dry-run placement → the depth-0 collector in `instantiateNode`, with the check in `addNodeChild` / `replaceNodeChild`.
7. A contradicting `message` branch → own branch.
8. Cost → a baseLanguage measurement case, targeted candidate lookups before the 200 cap, and warnings capped per call.
9. Tests → `VariableReference` (not `LocalVariableReference`), the editor fixture without a MAKE (fallback dropped), and new cases 3, 7 and 9.
10. Docs list → `DRY_RUN_REFERENCE_RULE` and its two verbatim copies, `mcp-tools-index.md:36`, `table_to_bulk_insert.py:19`, and test scenario 07.
11. §3 compatibility confirmed; the tool-conventions promise of `data:{...}` noted.
12. Stale claims → coordination updated, "no change closes the gap", and staged-construction argument (a) marked as plausible and undocumented.

Draft 2 → draft 3, reviewer round 2 ("approve with changes"; round-1 findings 2, 3, 6, 7, 10, 11 and 12 confirmed resolved):

1. There is no public single SET REFERENCE form, and "top level of `data`" was not where the triplet batch puts anything → per-item `fixReferences` with `outOfScope`, the same shape as the name path, plus item warnings copied into the outer `warnings` (§1, §4, §5.7).
2. Case 4 did not exercise the `position` rule (a `VariableReference` sits under `ExpressionStatement`, which uses the child form) → the case is reworded, and the §2 table says when the index matters.
3. Skip (d) missed commented-out targets and specialized-link targets, and saved little → dropped, with a commented-out-target test (§5.9).
4. The Append `position` text contradicted itself → the §2 table row is rewritten (child count, with the assert caught as "skipped").
5. Skip (c) was too broad and had no detection rule → the `Generator` plus stereotype idiom, with query code under a `ConceptFunction` still checked, and a generator fixture.
6. Candidate lookup → matching by reference text, the cap applied to every step, the cost caveat, both prefix casings, and no prefix lookups for a nameless target.
7. The per-call cap had no mechanism → `outOfScopeWarnings` on `FixReferencesResult`, concatenated and capped by each envelope builder.
8. The collector keyed on `jsonPath` implicitly, and the update-root row checked the wrong references → the collector is a parameter the recursive calls do not forward, `applyReferenceUpdate` returns the target, and the row checks the staged targets.
9. "Returns" lines in the operation-page style (§3).

The open questions in draft 1 were answered by the review: warn (Q1, narrow reject rule dropped); every non-resolver target (Q2; round 1 excluded default scopes, and round 2 dropped that exclusion); the dry-run coverage table as is (Q3); the `sourceNode` / `created` / `deleted` shape (Q4).
