# Review of `MPS-40316` Generation Debugging Commits (`649dfaada05a..790492fc8fcb`)

Overall, the implementation of generation debugging (`mps_mcp_alter_nodes` `MAKE` `saveTransientModels`, `mps_mcp_generation` `PLAN` / `TRANSIENT_MODELS` / `TRACE` / `DROP_TRANSIENT_MODELS`, transient-model read/write handling, skill updates, and study scenario `S15`) is well-structured, adheres to the read-action / EDT / cancellation rules, and has strong unit and integration test coverage.

Below are the concrete findings ordered by severity across **Correctness**, **Consistency**, and **Duplication**.

---

## Validation (2026-10-23)

Each finding was checked against the code on `261/vaclav/MPS-40315-java-import-resolution`, which contains the reviewed range, and against the generator engine in `core/generator/source/jetbrains/mps/generator`. Each finding below has a **Verdict** line.

| # | Finding | Verdict | Action |
|---|---|---|---|
| 1.1 | Checkpoint filter returns empty `originals` | **Confirmed** (reproduced by a test) | Fixed |
| 1.2 | `checkpointJson` loads an unloaded checkpoint model | **Confirmed** (reproduced by a test); MPS itself never swaps checkpoint models out | Fixed |
| 1.3 | `traceAvailableFor` credits same-long-name models | **Confirmed** (reproduced by a test) | Fixed, within MPS's long-name keying |
| 2.1 | `scaffold_editor` drops `droppedPrevious` after a successful pre-make | **Confirmed** (reproduced by a test) | Fixed |
| 2.2 | Asymmetric `generationRequired` call sites | **Valid** | Fixed |
| 3.1 | `@genplan` test helpers copied | **Valid** | Refactored |
| 3.2 | `resolveDataType` duplicates the structure lookup | **Confirmed**: the copy is not project-first (reproduced by a test) | Refactored |
| 3.3 | Checkpoint-module exclusion written twice | **Valid** | Refactored |

Tests: each new test fails on the toolset as it was before the review (code at `HEAD`, run with the new tests) and passes with the fixes:
- `TRANSIENT_MODELS filtered by a checkpoint model lists its original's transient models` fails with `originals: []`.
- `TRANSIENT_MODELS lists a swapped-out checkpoint model without loading it` fails because the listing reloads the model: the entry has `roots`, not `loaded: false`.
- `MAKE traceAvailableFor names only the made models that have a trace` fails with `["test.tm.trace", "test.tm.trace@aux", "test.tm.trace"]`.
- `scaffold_editor reports the transient models its make dropped when scaffolding fails after it` fails because the error has no `details`.
- `a property type name resolves to the project's data type before a deployed one` fails because the bare name binds to `jetbrains.mps.lang.structure`'s `StaticScope`.

See "Gate" at the end for the full-suite result.

---

## 1. Correctness Findings

### 1.1. [Medium] `TRANSIENT_MODELS` filtered by a checkpoint model reference returns empty `originals`
- **Where:** `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/TransientModelsOps.kt:125-146`
- **What happens:**
  `JetBrainsMPSGenerationMcpToolset.kt:82` documents `TRANSIENT_MODELS {model? (an original model by reference or name, or a transient model by reference; omitted = all)}`, and `TransientModelsOps.isTransient` (`TransientModelsOps.kt:77`) classifies checkpoint models as transient.
  However, in `TransientModelsOps.transientModelsJson`:
  ```kotlin
  val checkpointsModule = provider.checkpointsModule
  val filterLongName = filter?.name?.longName
  val filterModuleName = filter?.module?.moduleName?.let { originalModuleName(it) ?: it }
  ```
  When `filter` is a checkpoint model (from `checkpoints[].reference`), `filter.module` is `checkpointsModule` (`moduleName == "checkpoints"`). Because `"checkpoints"` does not match `@transient\d+$`, `originalModuleName("checkpoints")` returns `null`, and the Elvis fallback `?: it` sets `filterModuleName = "checkpoints"`.
  In the subsequent loop (`TransientModelsOps.kt:139-140`), every per-make `TransientModelsModule` has `originalModule` equal to the source module name (e.g. `"my.lang"`), so `if (filterModuleName != null && originalModule != filterModuleName) continue` skips every transient module and returns `originals: []`.
- **Suggested fix:**
  Ignore `checkpointsModule` when deriving `filterModuleName`:
  ```kotlin
  val filterModuleName = filter?.module
      ?.takeIf { it !== checkpointsModule }
      ?.moduleName
      ?.let { originalModuleName(it) ?: it }
  ```

  **Verdict: confirmed.** `CrossModelEnvironment.createCheckpointModelName` gives a checkpoint model its original's long name and the checkpoint's stereotype, and `TransientModelsProvider.initCheckpointModule` names the module `checkpoints`. The filter therefore skips every per-make module. **Fixed** as suggested. Covered by `TRANSIENT_MODELS filtered by a checkpoint model lists its original's transient models`.

### 1.2. [Low] `checkpointJson` triggers model loading on unloaded checkpoint models before `addRoots` checks `model.isLoaded`
- **Where:** `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/TransientModelsOps.kt:200-220` (with `core/generator/source/jetbrains/mps/generator/TransientModelsModule.java:545-564`)
- **What happens:**
  `addRoots` (`TransientModelsOps.kt:200-203`) checks `if (!model.isLoaded) addProperty("loaded", false)` specifically to avoid pulling swapped-out transient models back into memory during a `TRANSIENT_MODELS` listing.
  However, `checkpointJson` (`TransientModelsOps.kt:211-219`) calls `attributes?.getAttribute(CHECKPOINT_ATTRIBUTE)` *before* `addRoots(model)`. Because `checkpointsModule` is a `TransientModelsModule` (`TransientModelsProvider.java:171`) whose models are `TransientSModelDescriptor`s, `getAttribute` calls `getModelHeader()` → `getSModel()` (`TransientModelsModule.java:545-564`), which forces an unloaded model to load (or throws `IllegalStateException` if swap space is absent) before `addRoots` runs.
- **Suggested fix:**
  Only query `ModelWithAttributes` when `model.isLoaded` is `true` (and report `attributesAvailable: false`, `loaded: false` when unloaded).

  **Verdict: confirmed, but MPS itself never triggers it.** MPS swaps a transient model out only in `TransientModelsModule.clearUnused`. `GenerationSession` calls that on the session's own per-make module and never on `checkpoints`, so a make never unloads a checkpoint model. Any other `SModel.unload()` does, though, and the test reproduces it that way: the old listing restored the model from the swap. **Fixed** as suggested: an unloaded checkpoint model reports `attributesAvailable: false` and `loaded: false`. The `mps_mcp_generation` description now documents `loaded:false` for checkpoint rows too, as it already did for step models. Covered by `TRANSIENT_MODELS lists a swapped-out checkpoint model without loading it`.

### 1.3. [Low] `traceAvailableFor` in `performMake` can include non-generated models that share a `longName`
- **Where:** `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/AbstractOps.kt:4083-4085, 4293`
- **What happens:**
  When `performMake` runs on modules (`expandedModules`), `inputModels` (`AbstractOps.kt:4083-4084`) collects every model in those modules, including non-generatable or stereotyped models (`<lang>@descriptor`, `<model>@genplan`, `<model>@tests`).
  After the make, `transientModelsReport` (`AbstractOps.kt:4293`) checks:
  ```kotlin
  val traced = if (provider == null) emptyList() else inputModels.filter { provider.getTrace(it) != null }.map { it.name.value }
  ```
  Because `TransientModelsModule.getTrace(SModelReference)` keys traces only by `model.getName().getLongName()` (`TransientModelsModule.java:363-365`) and `provider.getTrace` searches across all transient modules, any non-generated model in `inputModels` that shares `longName` with a generated model (e.g., `foo@genplan` alongside `foo`, or a model with the same `longName` in another module) satisfies `provider.getTrace(it) != null` and is reported in `traceAvailableFor`.
- **Suggested fix:**
  Derive `traceAvailableFor` from the published models of `nonCheckpointTransientModules(mpsProject)` (the same way `TransientModelsOps.originalJson` does at `TransientModelsOps.kt:143-145, 174`), or restrict `inputModels` to models that actually produced a transient model in their corresponding `TransientModelsModule`. Doing so from `nonCheckpointTransientModules` also removes the need to carry `inputModels` on `MakePreparation`.

  **Verdict: confirmed.** `GenerationController` publishes each input's trace into that task's transient module under `inputModel.getName().getLongName()`. `TransientModelsProvider.getTrace` asks every published module. **Fixed** with the second option, keeping `inputModels`. Deriving the list from the transient modules alone would report long names only (`GenerationSession` names every transient model `<longName>@<step>`, dropping the original's stereotype), so `foo` and `foo@tests` would become indistinguishable. Two changes:
  - `inputModels` keeps generatable models only (`GeneratableSModel.isGeneratable`).
  - The new `TransientModelsOps.traceOf` asks only the transient modules whose `<module>@transient<N>` name names the input's own module. For a transient model it asks that model's own module, and a checkpoint model keeps the repository-wide lookup. The input's module comes from its reference, or from resolving the model when the reference carries no module reference. The new test hit that case: these references had none, and a lookup by `moduleReference` alone found no trace.

  `tracedModels` (MAKE) and `mps_mcp_generation` TRACE (`GenerationTraceOps.traceJson`) both use `traceOf`, so MAKE never lists a model that TRACE then answers with another model's trace. Before, TRACE on such a node returned an empty walk instead of "no trace".

  One collision remains and only MPS can remove it. Two generatable models of one module with the same long name, such as `foo` and `foo@tests`, share one trace slot, and the last one generated wins.

  The cross-module case could not be reproduced through MAKE as described: a model of a second module listed in the same make was regenerated even after an earlier make. The test checks three things:
  - each made module's model reports its own trace;
  - the do-not-generate `@aux` sibling reports none;
  - for a same-named model of a third, unmade module, `TransientModelsProvider.getTrace` finds a trace while `traceOf` and `tracedModels` do not.

  Covered by `MAKE traceAvailableFor names only the made models that have a trace`.

---

## 2. Consistency Findings

### 2.1. [Low] `mps_mcp_scaffold_editor` drops `transientModels.droppedPrevious` when its pre-make succeeds but scaffolding later fails
- **Where:** `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSEditorMcpToolset.kt:224-237, 905-912`
- **What happens:**
  When `structureModelForMake != null`, `scaffold_editor` runs `performMake` before entering `executeShortCommandOnEdt`.
  - If `performMake` itself fails (`JetBrainsMPSEditorMcpToolset.kt:227-232`), `errJson` includes `details = dropped?.let { mapOf("transientModels" to mapOf("droppedPrevious" to it)) }.orEmpty()`.
  - If scaffolding succeeds (`JetBrainsMPSEditorMcpToolset.kt:404, 841, 855`), `addTransientModelsDropped()` attaches `transientModels`.
  - However, if `performMake` **succeeds** (so previous transient models *were* dropped) and scaffolding subsequently fails inside `executeShortCommandOnEdt` (e.g., target editor model not found/not editable at line 310, smart-reference + `includeComponents` conflict at line 380, or empty cells), lines 905-912 return the error without `droppedPreviousTransients`, leaving the caller unaware that its earlier transient models were discarded by the pre-make.

  **Verdict: confirmed.** **Fixed:** every error after the pre-make now carries `details.transientModels.droppedPrevious`. A plain message goes through `errJson(..., details)`. A pre-built envelope such as `EditableModelResolution.Err` is merged by the new `AbstractOps.withDetails`, the `details` counterpart of `withWarnings`. Covered by `scaffold_editor reports the transient models its make dropped when scaffolding fails after it`. In that test the failure after the make is the staleness gate's "has no loaded runtime" error for the fresh language, a plain-message error; the code path is the same.

### 2.2. [Nit] Asymmetric `ModelGenerationStatusManager` call sites after removing reflection
- **Where:** `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSEditorMcpToolset.kt:201-215` vs. `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/AbstractOps.kt:3684-3685`
- **What happens:**
  Commit `649dfaada05a` replaced reflective `ModelGenerationStatusManager.generationRequired` calls in both files. `AbstractOps.checkScaffoldingStaleness` (`AbstractOps.kt:3684-3685`) calls `mgsm.generationRequired(structureModel)` directly, whereas `JetBrainsMPSEditorMcpToolset.kt:203-214` kept the surrounding `try / catch (e: Exception)` and fallback from the former reflection block.

  **Verdict: valid.** The catch existed for reflective lookup failures, which a direct call cannot have. The reflective version in `AbstractOps` had deliberately rethrown a `RuntimeException` from inside `generationRequired` rather than mask it. **Fixed:** the pre-make check is now a direct call, like `checkScaffoldingStaleness`, and the unused `EditableSModel` import is gone.

---

## 3. Duplication Findings

### 3.1. [Low] ~50 lines of `@genplan` AST builder helpers and `MetaAdapterFactory` constants duplicated across two test classes
- **Where:**
  - `plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/integration/JetBrainsMPSGenerationMcpToolsetIntegrationTest.kt:35-40, 226-264`
  - `plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/integration/JetBrainsMPSGenerationTransientModelsIntegrationTest.kt:371-420`
- **What happens:**
  `JetBrainsMPSGenerationTransientModelsIntegrationTest` copies `PLAN_LANG_HI`, `PLAN_LANG_LO`, `PLAN`, `FORK`, `PLAN_STEPS`, `TRANSFORM`, `TRANSFORM_LANGUAGES`, `CHECKPOINT`, `IN_PLACE_CHECKPOINT_SPEC`, `CHECKPOINT_SPEC`, `FORK_PLAN`, `SMODEL_LANG_HI`, `SMODEL_LANG_LO`, `LANGUAGE_ID`, `LANGUAGE_ID_ID`, `LANGUAGE_ID_NAMESPACE`, and the helper methods `languageRuntime`, `concept`, `planNode`, `transformNode`, and `checkpointNode` from `JetBrainsMPSGenerationMcpToolsetIntegrationTest` (even noting `// jetbrains.mps.lang.generator.plan and smodel's LanguageId, as in JetBrainsMPSGenerationMcpToolsetIntegrationTest` at line 402).
- **Suggested fix:**
  Extract a small `internal object GenPlanTestNodes` (or shared helpers in the integration test package) so both integration tests share a single definition.

  **Verdict: valid.** **Refactored:** `integration/GenPlanTestNodes.kt` holds the metamodel handles and `planNode`, `transformNode` (now `vararg`, covering both copies' signatures), `checkpointNode` and a new `forkNode`. Only `PLAN_STEPS` is public. `languageRuntime` and `concept` moved to `McpIntegrationTestBase`, because they need the test project. In the transient-models test, the checkpoint-plan setup is now one helper, `modelWithCheckpointPlan`, shared by the old `droppedPrevious` test and the two new checkpoint tests.

### 3.2. [Low] `resolveDataType` in `JetBrainsMPSLanguageStructureMcpToolset` duplicates `AbstractOps.resolveStructureDeclarationPreferringProject`
- **Where:**
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSLanguageStructureMcpToolset.kt:944-970`
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/AbstractOps.kt:3108-3145`
- **What happens:**
  Commit `6c05766e5679` updated the two `nameLookupModules(mpsProject.repository)` loops in `resolveDataType` (`ModelName.DataTypeName` and bare `DataTypeName` in `.structure` models). Those 27 lines duplicate `AbstractOps.findStructureDeclarationInModules`, except `resolveDataType` is not project-first (`generation-debugging-plan.md:66`).
- **Suggested fix:**
  Replace lines 944-970 of `JetBrainsMPSLanguageStructureMcpToolset.kt` with a call to `resolveStructureDeclarationPreferringProject(mpsProject, type) { it.concept.isSubConceptOf(CONCEPT_DataTypeDeclaration) }`, which both removes the duplicate scan and makes `resolveDataType` project-first.

  **Verdict: confirmed.** **Refactored** as suggested. Two small differences, both improvements:
  - The shared lookup applies the data-type filter while it searches, so a same-named non-data-type root no longer hides a data type later in the model.
  - Its bare-name pass looks in languages only, the only modules with real structure models.

  - A bare name no longer matches a `*.structure` model of a solution. Such a model has no language runtime, so a data type declared there was never usable.

  The new test shows that the old scan was not project-first: a project language's enumeration `StaticScope` lost to `jetbrains.mps.lang.structure`'s. Covered by `a property type name resolves to the project's data type before a deployed one`. Only its bare-name property discriminates. The qualified one names its model, which the old scan also matched, so it only guards that the refactor still resolves the qualified form.

### 3.3. [Nit] `nonCheckpointTransientModules` logic duplicated between `AbstractOps` and `TransientModelsOps`
- **Where:**
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/AbstractOps.kt:4272-4276`
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/TransientModelsOps.kt:235-236`
- **What happens:**
  Both places independently fetch `provider.checkpointsModule` and filter `provider.modules.filter { it !== checkpoints }`. Moving `nonCheckpointModules(mpsProject)` into `TransientModelsOps` avoids repeating the checkpoint-module exclusion rule.

  **Verdict: valid.** **Refactored:** `TransientModelsOps.nonCheckpointModules(provider)` holds the rule. `dropTransientModels`, `tracedModels` and `AbstractOps.nonCheckpointTransientModules` use it; the last is now a one-line wrapper that returns an empty list when the project has no provider.

---

## Second round (2026-10-23)

A second reviewer was given the diff, not these verdicts. It found no blocking bug. Each of its points was checked:

- **The `traceAvailableFor` test did not exercise the per-module scoping**; the generatable filter alone excluded `@aux`. **Valid, fixed:** the test now also checks a same-named model of an unmade module against `TransientModelsProvider.getTrace`, `traceOf` and `tracedModels` (see 1.3).
- **TRACE still used the unscoped lookup.** **Valid, fixed:** TRACE and MAKE now share `TransientModelsOps.traceOf` (see 1.3).
- **The qualified-name half of the data-type test passes without the fix.** **Valid:** it now carries a comment that only the bare name is the project-first check (see 3.2).
- **`resolveDataType` differences:** solutions' `*.structure` models are no longer searched for bare names, and a dotted miss falls through to the bare-name pass. **Accepted:** neither changes a usable result (see 3.2).
- **Without the catch, an exception from `generationRequired` fails `scaffold_editor`** instead of triggering a make. **Accepted:** it only reads model headers and hashes, and `checkScaffoldingStaleness` already called it the same way (see 2.2).
- **The `scaffolding produced no result` branch had no `droppedPrevious`.** **Valid, fixed.**

## Gate

- Before the second round, `McpToolsIntegrationTestSuite` (full umbrella, no `MCP_TESTS`): 1314 tests, 0 failed, 0 ignored.
- After the second round, these targeted classes pass, 52 tests in all: `JetBrainsMPSGenerationTransientModelsIntegrationTest`, `JetBrainsMPSGenerationTraceIntegrationTest`, `JetBrainsMPSEditorMcpToolsetIntegrationTest` and `alter_nodes MAKE saveTransientModels keeps the transient models for this make only`.
- Full umbrella after the second round: 1314 tests, 0 failed, 0 ignored.

