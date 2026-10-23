# Review of Today's `MPS-40318` Commits (2026-10-23)

## Commits Reviewed
- `337b86b161e8` — `mcp-tools - MPS-40318 dataflow study scenarios S13 and S14 with a round-40 baseline`
- `7e141944e64f` — `mcp-tools - MPS-40318 mps_mcp_query_dataflow: dataflow programs and def-use chains`
- `b730c4b8e6e8` — `mcp-tools - MPS-40318 study cell S16: a dataflow builder bug that reads as correct text`
- `a4123fb6fc67` — `mcp-tools - MPS-40318 query_dataflow lists every unreachable instruction`
- `bf97e9a95d8a` — `mcp-tools - MPS-40318 dataflow study round 41: query_dataflow before and after`

### Overview
These commits introduce:
- `mps_mcp_query_dataflow` (`PRINT_PROGRAM`, `REACHING_WRITES`, `REACHING_READS`) in `JetBrainsMPSDataflowMcpToolset.kt`, backed by the reflective runtime façade `DataflowRuntime.kt` and additional metamodel handles in `BaseLanguageMeta.kt`.
- Unit and integration tests (`JetBrainsMPSDataflowMcpToolsetIntegrationTest.kt`, `DataflowBuilderFrameTest.kt`, `SkillDataflowQueryRoutingTest.kt`) and manual test scenario steps (`10.25`–`10.27`).
- Skill documentation (`dataflow-queries.md`, `mps-aspect-dataflow/SKILL.md`, and routing/index updates replicated cleanly across all three skill catalogs).
- Study scenarios `S13`, `S14`, and `S16`, `families.py` counters (`DF_*`), `DISALLOWED_TOOLS` support in `run_worker.sh`, and Round 40/41 evaluation notes in `dataflow-exposure-assessment.md`.

Overall, the implementation is clean, well-structured, and closely aligned with `JetBrainsMPSTypesMcpToolset.kt`. Below are the findings across **Correctness**, **Consistency**, and **Duplication**.

---

## Validation (2026-10-23)

Each finding was checked against the code on `261/vaclav/MPS-40318`, the generated BaseLanguage builders and the structure descriptor (`languages/baseLanguage/baseLanguage/source_gen/jetbrains/mps/baseLanguage/{dataFlow,structure}`). Each finding below has a **Verdict** line.

| # | Finding | Verdict | Action |
|---|---|---|---|
| 1.1 | Initializer node defaults to the class | **Confirmed** (reproduced by a test) | Fixed |
| 1.2 | `Closure` node treated as its own root | **Confirmed** (reproduced by a test; the real node is regexp's `ReplaceBlock`) | Fixed |
| 2.1 | Stale `unreachable` bullet in the assessment | **Confirmed** | Fixed |
| 2.2 | Pre-tool text in `scenarios.md` | **Confirmed**, plus one more stale line | Fixed |
| 2.3 | `McpLedger` bookkeeping in `test_scenarios/` | **Confirmed** | Fixed |
| 3.1 | Rule-reference fallback duplicated | **Valid** | Refactored |
| 3.2 | Aspect root lookup duplicated | **Valid** | Refactored |
| 3.3 | Node summary JSON duplicated | **Partly valid**: the shapes differ | Not changed |
| 3.4 | Inline subtree checks | **Valid** | Refactored (dataflow toolset) |
| 3.5 | Control-flow rethrow diverges | **Not a defect**: the divergence is deliberate | Not changed |
| 3.6 | Routing test helpers copied | **Valid** | Refactored |

Tests: the new tests in `JetBrainsMPSDataflowMcpToolsetIntegrationTest` (`an initializer node is its own default program root`, `a ReplaceBlock closure node defaults to the enclosing body`, `a field and a node in its initializer default to the field`) each fail on the toolset as it was before the review: root `ClassConcept` with `size: 1` for the initializer and the field, and root `ReplaceBlock` for the closure. They pass with the fixes. See "Second round" at the end for the full-suite results.

---

## 1. Correctness

### What works well
- **Reflective runtime access (`DataflowRuntime.kt`):** Loading `jetbrains.mps.dataFlow.runtime` via `ClassLoaderManager.getClassLoader(module)` and resolving `Class`/`Method` handles per call avoids stale reflection handles across language reloads. Building the program via `LanguageRegistry.withAvailableExtensions(MPSProgramFactory.class, ...)` inside `executeBackgroundRead` matches the IDE devkit actions without requiring the EDT.
- **Def-use and partial-program semantics (`DataflowRuntime.kt:125-146`, `JetBrainsMPSDataflowMcpToolset.kt:254-263, 389-395`):**
  - `reachingReads` queries `ReachingReadsAnalyzer` at `instructions[write].successors` rather than at `write` itself (where the write's own variable reads have already been killed), matching `InlineVariableRefactoring.optimizeAssignment`.
  - `outsideVariables` accurately distinguishes variables declared outside `root` that are written on entry from an outside source (such as `ParameterDeclaration` writes emitted by `StatementList_DataFlow` when `root` is a method body) from true uninitialized outer variables (fields, enclosing locals, loop variables when `root` is the loop body).
- **Builder failure handling (`DataflowRuntime.kt:66-73, 195-199`, `JetBrainsMPSDataflowMcpToolset.kt:228-247, 401-419`):** Unwrapping `InvocationTargetException`, rethrowing cancellation/control-flow/VM errors, surfacing builder exceptions as `data.builderFailure`, and detecting `LinkageError` (excluding `ExceptionInInitializerError`) to warn about rebuilding with `MAKE` is well handled.
- **Unreachable instructions fix (`a4123fb6fc67`):** Returning all `Program.getUnreachableInstructions()` indices in `unreachable` while keeping `mayBeUnreachable: true` per instruction fixes the mismatch found in Round 41 where Kaja's `check_KajaDataflow` reports unreachable instructions that BaseLanguage's `DataFlowUtil.getUnreachableNodes` ignores.

### Edge cases & minor issues
1. **`defaultProgramRoot` when `node` is a `StaticInitializer` or `InstanceInitializer` (`JetBrainsMPSDataflowMcpToolset.kt:441-459`):**
   ```kotlin
   val buildsItsBody = node.concept.isSubConceptOf(BaseLanguageMeta.baseMethodDeclarationConcept) ||
       node.concept.isSubConceptOf(BaseLanguageMeta.conceptFunctionConcept)
   for (ancestor in generateSequence(if (buildsItsBody) node else node.parent) { it.parent }) { ... }
   ```
   Both `StaticInitializer_DataFlow` and `InstanceInitializer_DataFlow` delegate directly to their `statementList` child (just as `BaseMethodDeclaration_DataFlow` and `ConceptFunction_DataFlow` delegate to `body`). Because `buildsItsBody` does not include `staticInitializerConcept` or `instanceInitializerConcept`, passing a `StaticInitializer` or `InstanceInitializer` node itself to `REACHING_WRITES` / `REACHING_READS` starts the ancestor walk at `node.parent` (`ClassConcept`) and falls back to `node.containingRoot` (`ClassConcept`), which has no dataflow builder and produces an empty `0: end` program.

   **Verdict: confirmed.** Neither initializer implements `IMethodLike` (their parents are `ClassifierMember`, `IStatementListContainer` and a core interface), and BaseLanguage has no `ClassConcept_DataFlow`. A test reproduced it: root `ClassConcept`, `size: 1`, no writes. **Fixed:** `buildsItsBody` now includes both initializer concepts, so an initializer node is its own root, like a method. The KDoc, the `@McpDescription`, `dataflow-queries.md` (all three catalogs) and the assessment's "facts settled" bullet now say so. Covered by `an initializer node is its own default program root`.
2. **`defaultProgramRoot` when `node` is a legacy `jetbrains.mps.baseLanguage.structure.Closure` (`JetBrainsMPSDataflowMcpToolset.kt:443-444`):**
   In BaseLanguage, `Closure` (`0x10c63f4f3f3L`, whose builder `Closure_DataFlow` only emits reads of external variables referenced in the closure, just like `closures.ClosureLiteral`) is a subconcept of `ConceptFunction`. Because `buildsItsBody` checks `node.concept.isSubConceptOf(BaseLanguageMeta.conceptFunctionConcept)` without `!node.concept.isSubConceptOf(BaseLanguageMeta.closureConcept)` (compare `ConceptFunctionParameterBinder.kt:142-143`, which explicitly guards against `BaseLanguageMeta.closureConcept`), a legacy `Closure` node is treated as `buildsItsBody = true` instead of defaulting to its enclosing body as documented.

   **Verdict: confirmed.** `Closure`'s descriptor has `super_(… 0x108bbca0f48L)` (`ConceptFunction`), and `Closure_DataFlow.build` emits only `emitRead` for `getVariablesReferencedInClosure`. `Closure` itself is abstract (`class_(false, true, false)`). Its one concrete subconcept is regexp's `ReplaceBlock`, the block of `replace with /…/ { … }`, which has no builder of its own and inherits `Closure_DataFlow`: `MPSProgramBuilder.build` walks `getAllSuperConcepts`. **Fixed:** the `ConceptFunction` clause excludes `closureConcept`, so a `ReplaceBlock` node, like a `ClosureLiteral` node, gets the enclosing body. A node inside the block's body was already handled correctly and is unchanged. Covered by `a ReplaceBlock closure node defaults to the enclosing body`. That test builds a `ReplaceBlock` whose body reads the method's `total` and checks three things: the root is the method body, there is no `builderFailure`, and the block's own captured read is reached by `total`'s writes.

---

## 2. Consistency

1. **Contradictory bullet left in `plugins/mcp-tools/study/dataflow-exposure-assessment.md` (`lines 386-389` vs `lines 425-429`):**
   - Commit `a4123fb6fc67` changed `unreachable()` so it no longer filters out `mayBeUnreachable` or source-less instructions, and `bf97e9a95d8a` documented that fix under Step 3 (`lines 425-429`: *"The tool now lists every unreachable instruction with the flag per instruction"*).
   - However, the Step 2 status note at `lines 386-389` still describes the pre-`a4123fb6fc67` behavior as current:
     > *"The shipped reachability check skips instructions marked `mayBeUnreachable` … and those without a source. `unreachable` filters the same way, or a builder author chases a phantom."*

   **Verdict: confirmed. Fixed:** the bullet now says the first tool filtered this way, that round 41 showed Kaja's check does not, and that since `a4123fb6fc67` `unreachable` lists every unreachable instruction with the flag on each one. The same section's "not covered by a test" bullet no longer lists the initializer and closure defaults, which are now tested. Only the `ClosureLiteral` default is still untested.
2. **Pre-tool descriptions left in `plugins/mcp-tools/study/scenarios.md` (`lines 234-235, 250-252, 349-350, 385`):**
   - `lines 234-235` (`S13`): still says *"Also the baseline for a future `mps_mcp_query_dataflow` `PRINT_PROGRAM`"*.
   - `lines 250-252` (`S14`): still says *"Run to verify: nothing in today's catalog. This is the tool-free baseline for a future `mps_mcp_query_dataflow` `REACHING_WRITES` / `REACHING_READS` and its skill page. Read the process signals together with `DF_console_runs`"*, omitting `DF_reaching_queries` and contradicting the table at `line 349`.
   - `lines 349-350`: the "By skill" table has both the new row added in `b730c4b8e6e8` (`line 349`: `dataflow queries (mps_mcp_query_dataflow, ...)`) and the obsolete pre-tool row from `337b86b161e8` (`line 350`: `dataflow analysis results (...) | S13 (...), S14 (def-use questions; no tool answers them yet)`).
   - `line 385`: the restart summary says *"S13 needs a restart before every run (it builds the Kaja sample)"* without mentioning `S16`, which uses the same Kaja module IDs (`line 297`).

   **Verdict: confirmed, and incomplete.** S13's isolation note also still ended *"No other cell uses Kaja."*, which S16 contradicts. **Fixed:** S13 and S14 now describe round 40 as their tool-free baseline and round 41 as the run with the tool. S14 names `DF_reaching_queries`, and S13 names `DF_program_prints`. S13's "(only cell)" became "(with S16)", matching the By skill row. The obsolete By skill row is removed, S13's isolation note points at S16, and the restart summary covers S13 and S16.
3. **Missing `McpLedger` bookkeeping in `plugins/mcp-tools/test_scenarios/`:**
   - Step `10.25` in `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/10_baselanguage_parse_java.md` creates a persistent class root `McpLedger` in `mcp.test.sandbox.other` (`line 832`: *"`McpLedger` stays in the model (final-state policy)"*) and captures `{{DF_METHOD_REF}}`, `{{DF_BODY_REF}}`, `{{DF_INNER_IF_REF}}`, `{{DF_FEE_ZERO_REF}}`, and `{{DF_FEE_READ_REF}}`.
   - Those additions are not reflected in:
     - `10_baselanguage_parse_java.md` `line 1` (title only mentions `parse_java_and_insert, and type queries`), `line 3` (*Captured-value contract* omits the `{{DF_*}}` intra-part placeholders), and `lines 16-22` (intro summary stops at Step `10.24`).
     - `MPS_MCP_FULL_TEST_SCENARIO.md` §5 table (`lines 169-171`, which lists `McpRunnable`, `McpTypeHost`, and `McpTypeError`, but not `McpLedger`).
     - `14_finalize_report.md` Step `14.01` (`line 29`, which expects `mcp.test.sandbox.other` to contain `McpRunnable`, `McpTypeHost`, and `McpTypeError`, omitting `McpLedger`) and Step `14.02` (`line 44`, which still says *"lists all 40"* tools instead of `42`).

   **Verdict: confirmed.** `COVERAGE_MATRIX.md` already says "all 42". The "40" in 14.02 was already stale before this branch: it missed `clear_console` (MPS-40319) as well as `query_dataflow`. **Fixed:** part 10's title, captured-value contract and intro now cover 10.25–10.27 and the `{{DF_*}}` refs. `McpLedger` is in the §5 table and in 14.01, and 14.02 says 42.

---

## 3. Duplication

1. **Rule-reference JSON wrapper (`JetBrainsMPSDataflowMcpToolset.kt:374-382` vs `JetBrainsMPSTypesMcpToolset.kt:523-530`):**
   Both toolsets wrap `AbstractOps.ruleJsonObject(statement: SNodeReference, root: SNode?)` with the exact same fallback object `{rule: null, ruleReference: null, statement: ...}` when parsing the node reference fails. Moving a string/nullable-pointer overload into `AbstractOps` would avoid duplicating the fallback shape.

   **Verdict: valid.** The two wrappers parse differently (a `<model>/<node>` string versus a model id and a node id), but the resolve-to-root step and the fallback shape are identical. **Refactored:** `AbstractOps.ruleJsonObject(statement: SNodeReference?, unparsed: String, repository: SRepository)` holds both, and each toolset keeps only its own parsing.
2. **Generated aspect class → root node lookup (`JetBrainsMPSDataflowMcpToolset.kt:421-432` vs `JetBrainsMPSTypesMcpToolset.kt:869-879`):**
   `Query.builderRoot` and `TypeTrace.runtimeRuleJson` use the same `ModuleRepositoryFacade(repository).getModulesByName(modelName.removeSuffix(".$aspect")).asSequence().filterIsInstance<Language>().flatMap { it.models.asSequence() }.filter { it.name.longName == modelName }.flatMap { it.rootNodes.asSequence() }` traversal to find the aspect root node for a compiled class in `<language>.<aspect>.*`.

   **Verdict: valid.** **Refactored:** `aspectModelRoots(repository, modelName, aspect)` in the new `common/NodeNavigation.kt`. Each caller keeps its own matching rule (a builder by presentation, a rule by concept and name).
3. **Node summary JSON (`JetBrainsMPSDataflowMcpToolset.kt:464-472` vs `GenerationTraceOps.kt:293-298, 351-355`):**
   Both construct `{reference, concept, presentation}` `JsonObject`s for `SNode`s; a small shared helper in `common/` would keep this wire shape in a single place.

   **Verdict: partly valid; not changed.** The three key names match, but the shapes do not. `GenerationTraceOps.nodeJson` adds `model` and assumes an attached node. The dataflow `nodeJson` returns `null` for a detached node's `reference`, `JsonNull` for no node, and a string for a non-`SNode` variable, which a builder may use. `templateRoot` (`GenerationTraceOps.kt:351-355`) is the three keys inline. A shared helper would need flags for every difference, so this was left alone.
4. **Subtree containment checks (`JetBrainsMPSDataflowMcpToolset.kt:179, 284, 390, 456` and `GenerationTraceOps.kt:341-342`):**
   `generateSequence(node) { it.parent }.any { it == root }` (and `.none { it == root }`) is written inline four times in `JetBrainsMPSDataflowMcpToolset.kt` alone. A small `SNode.isInSubtreeOf(root: SNode)` extension in `common/` would remove the repetition and make `defaultProgramRoot`, `outsideVariables`, and `reaching` easier to read.

   **Verdict: valid.** **Refactored:** `SNode.isInSubtreeOf(root)` (inclusive) in `common/NodeNavigation.kt` replaces all four dataflow sites. `GenerationTraceOps.isAncestor` is a *strict* ancestor test with different semantics, so it was not touched. Neither were the similar private helpers in `java/` (`SmodelReceiverCalls.isAncestor`, `ConceptFunctionParameterBinder.isUnderAny`), which are outside this review's commits.
5. **Control-flow exception rethrow (`DataflowRuntime.kt:195-199` vs `JetBrainsMPSTypesMcpToolset.kt:643-648` vs `AbstractOps.kt:476-480`):**
   `DataflowRuntime.rethrowIfControlFlow` checks `ProcessCanceledException || ControlFlowException || CancellationException || VirtualMachineError`, while `JetBrainsMPSTypesMcpToolset.tryOrNull` checks the first three. Centralizing `rethrowIfControlFlow` in `common/` would prevent subtle divergence.

   **Verdict: not a defect; not changed.** The difference is intended. `tryOrNull`'s KDoc says it returns null for *"a rule's `StackOverflowError` or `LinkageError`"*, and `StackOverflowError` is a `VirtualMachineError`, so a shared helper that rethrows `VirtualMachineError` would break that contract. `AbstractOps.rethrowIfCancellation` covers yet another set: it only rethrows `CancellationException`. These are three policies, not one policy copied three times. A shared helper would need the `VirtualMachineError` choice as a parameter, which only names the difference. Side note: because of the dataflow choice, a builder that recurses without bound comes back as `INTERNAL_ERROR` rather than as `builderFailure`. That is a design decision, recorded here and left unchanged.
6. **Routing test helpers (`SkillDataflowQueryRoutingTest.kt:89-114` vs `SkillTypeQueryRoutingTest.kt:126-155`):**
   `toolDescription`, `read`, `criticalDirectives`, and `assertNamesAll` in `SkillDataflowQueryRoutingTest` are copied verbatim from `SkillTypeQueryRoutingTest`. Extracting them into `SkillCatalogCheckout` (or a small shared test helper) would keep the markdown section slicing and reflection lookup in one place.

   **Verdict: valid.** (`toolDescription` was not quite verbatim: the dataflow copy hard-coded its toolset.) **Refactored:** the four helpers moved to `unit/SkillRoutingDocs.kt`. `SkillCatalogCheckout` stays about locating catalogs. Both routing tests import the helpers, and both still pass.

---

## Second round (2026-10-23): independent review of the fixes

A second reviewer, who was given the code rather than these verdicts, read `f206245954c6` and `888355fce0c8`. It found no correctness bug in either commit and confirmed the refactor is behavior-preserving. Each of its findings was checked and all were acted on:

1. **The Closure test asserted too little.** It checked only `program.root` and `program.defaulted`, which a `builderFailure` answer also carries. Its node was an instance of the abstract `Closure`, and its body was empty, so nothing was built. **Fixed:** the test now builds a concrete `ReplaceBlock` that captures `total`, and asserts no `builderFailure`, `scope: node`, and a captured read that `total`'s writes reach. The initializer test also asserts no `builderFailure`. While this test was being written, it caught a fixture slip: the block had been attached under the wrong role, so its builder never ran. It was attached to the right slot before the commit.
2. **The docs named a node that cannot exist.** **Fixed:** the `@McpDescription`, the KDoc, `dataflow-queries.md` (all three catalogs) and the assessment now name `ClosureLiteral` and regexp's `ReplaceBlock`. They describe `Closure` as abstract, and they say that only a ConceptFunction *other than a closure* is its own root.
3. **`COVERAGE_MATRIX.md:13`** still said "Rows 37–41 were added". **Fixed:** it now says 37–42.
4. **Fields had the same "only `end`" defect as 1.1, and it predates this branch.** A field node, or a node in its initializer, fell back to the class. **Fixed:** a `FieldDeclaration` or `StaticFieldDeclaration` is its own root, and so is the nearest field above a node, because `VariableDeclaration_DataFlow` writes the field and builds its initializer. The field is only a fallback. `AnonymousClassCreator_DataFlow` builds an anonymous class's fields inside the program of the body around the class, so a field of an anonymous class in a method keeps that body as its root, and the method's locals and parameters stay visible. A first version made every field its own root; this was caught before the commit. A local declaration still has its body as root, since only the two field concepts match. The docs now say that a field's write has no value and comes before its initializer, while a local declaration without an initializer emits no write. Covered by `a field and a node in its initializer default to the field`, which also checks the anonymous-class case: the read of the parameter `k` in `new Object() { int f = k + 1; }` gets the method's body and the parameter's write.
5. **A shadowed `concept` and an over-long comment in `defaultProgramRoot`.** **Fixed:** the root decision moved into `isOwnProgramRoot` / `isField` with KDoc.
6. **The review document sat at the repo root.** **Fixed:** it moved here.

Tests: on the toolset as it was before the review, both new tests fail. The field test gets root `ClassConcept` with `size: 1`, and the `ReplaceBlock` test gets the block itself as root. The full `McpToolsIntegrationTestSuite` (no `MCP_TESTS` filter) passed after the first round (1308 tests) and after the second (1309 tests: 0 failed, 0 ignored).
