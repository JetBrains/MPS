# `mps_mcp_query_nodes GET_TYPE` — read a node's type-system type

> **Superseded in part by D100 (MPS-40240, 2026-10-07):** GET_TYPE no longer calls `getTypeOf` through the workbench facade. It type-checks the node's whole root in an isolated incremental session (`computeIsolated(Flags.forRoot(root).incremental())`, the check `TypesystemChecker` runs) and falls back to the one-node computation, in an isolated basic session, for commented-out code, a root over `maxRootNodes` (default 10000) nodes, or a node the root check leaves untyped. The answer carries `details.scope` (`root`/`node`) and a warning on fallback, and no longer depends on an open editor; `mps_mcp_query_types` `nodeReference` operands use the same path. The editor-session / one-node analysis below records the original design.

Status: implemented 2026-10-04 (uncommitted at the time of writing). Implementation by a second session; settled with a separate Opus reviewer over two plan rounds and two implementation rounds (recorded at the end).

## Motivation

No `plugins/mcp-tools` tool returns the type the MPS typesystem assigns to a node. `TypecheckingFacade` is used only internally — `SmodelReceiverCalls.kt:141` (`getTypeOf` for the smodel downcast decision), `AssignableReferenceService.kt:338` (`isSubtype` for candidate ranking), `JavaParseResolver.kt:510` (`runIsolated` around the resolution loop) — and nothing reaches the agent. `check_root_node_problems` runs the typesystem but reports only errors and warnings. An agent debugging an inference rule, or writing a `has type` annotation in a `NodesTestCase`, has to guess the type and see whether the checker complains.

## Why `query_nodes`, not another tool

- The node-info operations (`GET_PARENT`, `GET_ROOT`, `GET_MODEL_FOR_NODE`, `NODE_INDEX`, `SIBLINGS`, `GET_CHILD_ROLE`) share `NODE_INFO_KEYS` and dispatch through `opNodeInfoRead` (`JetBrainsMPSNodeMcpToolset.kt:285`). `GET_TYPE` is one more `nodeReference → fact about the node` read.
- `print_node` with an `includeType` flag would either type every descendant in `deep=true` (a typesystem pass per node) or silently apply to the top node only.
- `check_root_node_problems` is root-scoped and problem-oriented; a "what is the type" answer does not belong in its report.

## Design

### 1. The operation (`JetBrainsMPSNodeMcpToolset.kt`)

- Add `GET_TYPE` to `MPSQueryOperation` (`:37`).
- `queryNodesParameterKeys` (`:111`): `GET_TYPE -> NODE_INFO_KEYS`.
- Route it in **both** `when`s: the dispatch in `mps_mcp_query_nodes` (`:201-203`) sends it to `opNodeInfoRead`, and `opNodeInfoRead` (`:285`) sends it to `opGetType(node, mpsProject)`, inside the existing `executeShortReadOnEdt`. `check_root_node_problems` (`:761`) runs the full checker stack on a root under the same executor, so typing one node fits within it. Update the `opNodeInfoRead` KDoc (`:278`).
- Add `GET_TYPE` to the tool description (`:153`) and the `operation` parameter description (`:159`).

`opGetType`:

```kotlin
val type = TypecheckingFacade.getFromContext().getTypeOf(node) ?: return okJson("null")
```

No session set-up is needed: `DefaultTypecheckingController.getQueries` creates an on-demand session, and on the EDT (`executeShortReadOnEdt`) the facade hands out the `WorkbenchTypecheckingController` (`TypecheckingFacadeComponent.java:57-60`), which reuses the editor's incremental session when the root is open in an editor and otherwise runs a one-node computation. `runIsolated` is not needed for a persisted node — `JavaParseResolver` needs it because its nodes are mid-resolution.

Use `getTypeOf`, never `getInferredType`: in `LegacyTypecheckingProvider.java:127-130` `getInferredType` returns `getInequalitiesForHole(expr).getExpectedType()`, i.e. the type the *context* expects (what a `has expected type` test asserts), not the node's own type. MPS's own Show Type action (`ShowNodeType_Action.java:70`) and `NodeExplorerComponent.java:185` call `getTypeOf`.

**Output when a type exists** — a single JSON object in `data`:

| key | value |
|---|---|
| `concept` | `type.concept.name`, e.g. `IntegerType` |
| `conceptReference` | `PersistenceFacade.getInstance().asString(type.concept)`, as `nodeInfoJsonObject` emits it |
| `presentation` | `type.presentation` (`SNode.getPresentation()`, which runs the concept's behavior `getPresentation`). `PrimitiveType__BehaviorDescriptor.java:35-36` returns the alias (`int` for `IntegerType`); `ClassifierType` (`:75-91`) returns the simple name plus type parameters. Not the headless editor: `showNodeAppearance` (`:694`) needs a node in a model, and a type node has none. |
| `hasTypeVariables` | `true` when `TypesUtil.hasVariablesInside(type)` (`typesystemEngine` is already a dependency, `mcp-tools.iml:32`). **Emitted only when true**, like D89's `declared:false`. Reachable in two cases: a root node, whose type is returned unexpanded (`SimpleTypecheckingComponent.java:291-293`), and any node whose root is open in an editor — `IncrementalTypecheckingContext.getTypeOf_normalMode` (`:124-127`) returns the stored `getTypeDontCheck(node)` with no variable check. `ShowNodeType_Action` guards the same case with "Type was not fully instantiated". |
| `blueprint` | `nodeHierarchyJsonObject(type, deep = true, currentProject = mpsProject)` (`AbstractOps.kt:1537`), post-processed as below. Type trees are small (`ArrayType.componentType`, `ClassifierType.parameter`), so `deep` is right; the blueprint carries the reference links (e.g. the `ClassifierType.classifier` target's `targetReference`) an agent needs to identify the type exactly. |

**No `reference` and no `persisted` key.** A computed type is a free-floating copy except on the root branch: for a non-root node `Equations.expandNode(..., copy=true)` (`Equations.java:198`) runs `CopyUtil.copy`, even when the rule equates the type to a persisted node (`typeof_BaseVariableDeclaration` → the declaration's `type` child); for a root node `SimpleTypecheckingComponent.java:291-293` returns `getType(root)` (`NodeMaps.getType` → `getRepresentative`, no expansion), which can be the stored node itself. A reference to a copy would be unresolvable on the next call, and offering one only on the root branch would be a trap, so none is offered at all.

The raw blueprint carries the same problem at every level: `nodeHierarchyJsonObject` writes `"reference"` for each node record (`AbstractOps.kt:1561`) and for each child summary (`:1709`), and for a node with no model `SNode.getReference()` builds `SNodePointer(null, id)` (`FreeFloatNodeOwner.java:40`), which `asString` serializes as `"null/<id>"` (`SNodePointer.java:110`). No `NodeProjection` turns that key off. `opGetType` therefore walks the produced `JsonObject` and removes **every** key named `reference`, unconditionally — not by a `null/` prefix, which would keep a real `r:` reference on the root branch while the top level offers none. This is safe: only node records and child summaries write `reference`; reference-link objects use `role`/`type`/`typeReference`/`targetReference` (`:1847-1850`), which stay and point at real nodes. A small private recursive helper in the toolset; do not add a flag to the shared printer. Nothing else in the printer throws for a model-less node: `concept.sourceNode.resolve(null)` falls back to the global repository (`SModelReference.java:95`), and `ownerOf` / `addContainingProjectIfForeign` accept a null model.

The blueprint's `name` (`node.name ?: node.presentation`), `concept` and `conceptReference` repeat the top-level keys. That is intentional: the top-level keys are the quick answer, the blueprint is the exact one.

**Output when `getTypeOf` answers `null`:** `data: null` — `okJson("null")` serializes as `{"ok":true,"data":null}` (`AbstractOps.kt:273`), the same shape `GET_PARENT` gives for a root (`:301`). `null` has three meanings the tool cannot cheaply tell apart, and the docs (§2) list all of them: the node is not an expression or its concept has no inference rule (e.g. `ConceptDeclaration`: `lang.structure` has no `typeof_*` rule); the language runtime is not loaded; or the type could not be fully inferred without more context. The third depends on whether the root is open in an editor: in the one-node computation, `TargetTypeheckingComponent.typeCalculated` (`:44-49`) answers `null` for a non-root node when the expanded type still contains type variables, and `SimpleTypecheckingComponent.java:291-297` passes that through (generics, lambdas); through an open editor's incremental session the same node comes back as a partial type flagged `hasTypeVariables:true` instead, and that path can also answer `null` when `checkIfNotChecked` fails.

**Failures:** an unresolvable `nodeReference` is already `NOT_FOUND` from `opNodeInfoRead`. An exception thrown by a user-language inference rule is caught by `withMpsProject`, which catches `Throwable` and answers `ok:false` (`AbstractOps.kt:642`); no wrapper is added.

### 2. Docs

Edit the blueprints under `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, then copy each changed skill folder over `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest` fails when the three trees differ; `scripts/validate_skill_catalog.py` checks cross-skill links).

- `mps-mcp-workflow/references/mcp-tools-index.md:23`: add `GET_TYPE (the type the typesystem assigns to a node; data null when there is none)` to the operation list.
- `mps-mcp-workflow/references/analysis-tools/overview.md:12`: add `GET_TYPE` to the list, plus a short paragraph **"Reading a node's type"**: the output keys above; the type is a computed copy, so there is no `reference` to it and the blueprint's reference links are the way to identify it; `null` has the three meanings listed in §1; `hasTypeVariables:true` means the type is not fully instantiated; when the root is open in an editor the answer comes from the editor's incremental type-check session (a partially inferred type is returned with that flag), otherwise from a one-node computation (the same case answers `null`); after editing typesystem rules, rebuild the language and `mps_mcp_reload_all` before trusting the answer (`mps-mcp-workflow/SKILL.md:28` already states the reload rule — cross-reference it, do not restate it).
- `mps-aspect-typesystem/SKILL.md`, Common-Path Workflow (`:35`): one bullet — after rebuild and reload, verify an inference rule with `mps_mcp_query_nodes GET_TYPE` on a sandbox node instead of inferring the result from `check_root_node_problems`.
- `mps-tests/references/nodes-test-case.md`, next to the `has type` row (`:34`): one sentence — run `GET_TYPE` on the sandbox node first to learn the actual inferred type and its presentation.

Prose-only changes have no build gate beyond `SkillCatalogReplicationTest`.

### 3. Tests (`JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`, `query_nodes` section, next to `SIBLINGS` at `:544`)

Fixture: `createSolution()` + `createModel(solution, "<module>.code")`, then **one** `JetBrainsMPSJavaMcpToolset.mps_mcp_parse_java_and_insert` call with `featureKind:"CLASS"` and `insert.mode:"root"` for `class TypeHost { int total = 1 + 2; }` (the model-creation helpers are the ones `JetBrainsMPSJavaMcpToolsetIntegrationTest.kt:605-650` uses; that test needs three calls because it exercises child mode, this one does not). Resolve the `FieldDeclaration` `total` and the `PlusExpression` under its `initializer` with `readOnRepo`. The fixture is sound: `parse_java_and_insert` imports the used languages (`JavaParseResolver.kt:293-334`), which matters because inference rules fire only for languages in the model's scope (`TargetTypecheckingContext.getTypeOf_resolveMode` → `LanguageScopeExecutor.execWithModelScope`), and the typesystem does run in this environment — `ConceptFunctionParameterBindingIntegrationTest` already depends on `SmodelReceiverCalls.needsDowncast` → `getTypeOf`.

1. **Expression with a computed type.** `GET_TYPE` on the `PlusExpression`: `concept == "IntegerType"`, `presentation == "int"`, no `hasTypeVariables` key, `blueprint.concept == "IntegerType"`, and no `reference` key anywhere in `blueprint` (walk it).
2. **Declaration whose rule equates to a persisted node.** `GET_TYPE` on the `total` field: `concept == "IntegerType"`, and again no `reference` key in `blueprint` — the answer is a copy even though `typeof_BaseVariableDeclaration` points at the stored `type` child.
3. **Node without a type.** `GET_TYPE` on `createConceptRoot("TypeHostConcept")` (a `ConceptDeclaration`): `{"ok":true,"data":null}`. No existing test asserts the `GET_PARENT` null shape, so this is the first one.
4. **Operation lists.** `JetBrainsMPSNodeMcpToolsetIntegrationTest.kt:1976` asserts `MPSQueryOperation.entries == queries.keys`, so it must get `GET_TYPE`; `:2231` only checks that `FIND_INSTANCES` and `GET_CHILD_ROLE` are named and needs no change. Add `GET_TYPE` to the operation list in the Extended test's class header (`:33`).

The missing-`nodeReference` and invalid-JSON rejections (`:578`, `:586`) already cover `GET_TYPE` through the shared key handling; no copies.

Run `McpToolsIntegrationTestSuite` following `.agents/quality-gates.md`: check `ps aux | grep JUnitStarter` first, do not run it while another session's MPS make is in flight, and compare any single failure with the known flaky ones before blaming the change.

### 4. Out of scope

- Typing several nodes in one call, or a `print_node` flag. One node per call matches the other node-info operations.
- `IS_SUBTYPE` / `CONVERTS_TO` queries between two types. `TypecheckingFacade.isSubtype` makes them easy later, but no study run has asked for them, and with computed types being copies they would need a way to name a type (a blueprint as input), which is a design of its own.
- A typesystem trace (which rule produced the type).
- Committing: the change stays uncommitted on the current worktree until the user names the issue and branch (`2026.1` is a protected release branch; see `.agents/git.md`).

## Review rounds

### Plan round 1 (Opus reviewer, 2026-10-04) — nothing blocking

- **R1** taken: `getInferredType` returns the expected type, not the node's type; the fallback sentence is gone. The EDT controller is the Workbench one, which reuses an open editor's session.
- **R2** taken: `null` also means "not fully inferred" (type variables left); `hasTypeVariables` is emitted when true on a root.
- **R3** taken: computed types are always copies (`Equations.expandNode(copy=true)`), so `persisted`/`reference` are dropped and the blueprint's `null/<id>` node references are stripped. Nothing in the printer throws for a model-less node.
- **R4** taken: the second dispatch `when` (`:201-203`), the `opNodeInfoRead` KDoc, and the test class header.
- **R5** taken: `:1976` needs `GET_TYPE`, `:2231` does not.
- **R6** confirmed presentation (`int`); the duplication between top-level keys and the blueprint is declared intentional.
- **R7** confirmed the fixture; test 2 (the `total` field) added; the fixture description now says one parse call.
- **R8** confirmed the envelope and the `Throwable` boundary in `withMpsProject`.
- **R9** docs anchors confirmed; the editor-session note and the type-variable `null` are in the overview paragraph.

### Plan round 2 (same reviewer) — nothing blocking

- **(a)** taken: the root branch returns `getType(root)` without a copy, so a real `r:` reference could appear inside the blueprint; `reference` keys are now removed unconditionally, and "always a copy" became "a copy except on the root branch".
- **(b)** taken: `hasTypeVariables` is reachable on a root and on any node whose root is open in an editor (the incremental session returns the stored type unchecked).
- **(c)** taken: the third meaning of `null` holds for the one-node computation only; with an editor open the same case returns the partial type with the flag. Tests 1–3 run with no editor open, so their assertions stand.

### Implementation (second session) — deviations from the plan

1. **A bare type variable answers `null`.** The suite showed that `GET_TYPE` on a root `ConceptDeclaration` does not answer `null`: the root branch returns the type unexpanded, and with no rule firing the root holds a fresh `RuntimeTypeVariable` (`{"concept":"RuntimeTypeVariable","presentation":"a","hasTypeVariables":true}`). Round 1's claim that `NodeMaps.getType` answers `null` there was wrong. `opGetType` now answers `okJson("null")` when `type == null || TypesUtil.isVariable(type)`, for every node and both paths; a partially instantiated type such as `List<a>` still comes back flagged `hasTypeVariables:true`. The reviewer confirmed this: a non-root node whose type still has variables already gets `null` from `TargetTypeheckingComponent.typeCalculated:48`, `isVariable` is the first check `hasVariablesInside` applies (`TypesUtil.java:60`), and a bare variable means "unconstrained", which an agent cannot act on.
2. `mcp-tools-index.md` entry shortened to `GET_TYPE (a node's typesystem type; data null if none)`: the planned text pushed the file over `SkillReferenceLayoutTest`'s 17408 B cap (now 17397 B).
3. The `nodes-test-case.md` sentence sits after the table rather than in a cell, and notes that `GET_TYPE` gives the node's own type, not the context type `has expected type` checks.
4. The tool description gained one sentence on the output shape.

Not verified: the open-editor path (`WorkbenchTypecheckingController` reusing the incremental session), `hasTypeVariables:true` on a non-bare type, and a root typed by a stored node — the unconditional strip covers the last by construction.

### Implementation review round 1 (same reviewer) — nothing blocking

- Confirmed: `opGetType`, the unconditional `stripNodeReferences` (only node records and child summaries write `reference`; reference-link and property objects do not, and property values are primitives), EDT read access (the thread `WorkbenchTypecheckingController` requires), the three skill trees byte-identical (`cmp`), the tool description, and tests 1 and 3.
- **S1**: the overview paragraph said "never a node in a model" (wrong on the root branch) and made the bare-variable `null` root-only (it applies to every node). Relayed.
- **S2**: test 2 cannot prove "a copy" because the strip is unconditional; renamed to the declared type of a field, and the helper KDoc reworded. Relayed.
- **N1** (optional): cover the non-root "no rule → `null`" path, which test 3 no longer exercises.
- Suite: 1142 finished, 0 failed, 0 ignored on the final code (three runs; run 1 found deviations 1 and 2).

### Implementation review round 2 — settled

- **S1** taken: the overview says "a computed copy … or for a root possibly a stored node; either way no `reference` is offered", and the bare-variable `null` is its own sentence applying to every node.
- **S2** taken: test 2 is "answers the declared type of a field"; the `assertNoReferenceKey` KDoc says `GET_TYPE` strips every node record's `reference`.
- **N1** taken: test 3 also asserts `{"ok":true,"data":null}` on a non-root `PropertyDeclaration` child, which takes the no-rule path (`SimpleTypecheckingComponent:296-297`), not the bare-variable collapse.
- Suite run 4: 1142 finished, 0 failed, 0 ignored. Three skill trees byte-identical (`cmp`).
- Still unverified: the open-editor path and `hasTypeVariables:true` on a non-bare type. `plugins/mcp-tools/test_scenarios/MPS_MCP_FULL_TEST_SCENARIO` (`08_queries_and_navigation.md`, `COVERAGE_MATRIX.md`) still lists the old operation set; manual scenario docs, left for a follow-up.
