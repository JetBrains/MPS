# Plan: module scope for `check_root_node_problems` (D63)

Status: analysis done (2026-09-25); decisions D1–D6 (§5) await sign-off; nothing implemented.
Defect record: D63 in `study/docs-defects.md`, filed from round 15 (`HOTSPOT_REPORT_round15.md` §4
item 2). Round 15's evidence is in `~/MPSProjects/mcp-study/runs-r16`; round 13's is in `runs-r14`.

Marking: **[M]** = measured or observed; **[C]** = read from code; **[I]** = inferred, still to be
verified.

## Summary

D63 makes two claims, and both hold.

- **A module reference is rejected.** The tool accepts a node, a model, or a qualified model name.
  A module gets `NOT_FOUND`, and the worker then checks the aspect models one at a time.
- **The rejection text is wrong for this caller.** It always ends "This tool has no modelReference
  parameter; retry with nodeReference set to the value you passed as modelReference", although the
  caller sent only `nodeReference`.

The plan:

1. Accept a module reference or module name in `nodeReference`. Check the module itself and every
   model it owns: a language's generators are included; stub and `@descriptor` models are
   excluded. The answer mirrors the model scope, and `perRoot=true` gives D63's
   `[{model, name, rootsChecked, errors, warnings}]`.
2. Say "no `<key>` parameter; retry with nodeReference set to …" only for a near-miss key the
   caller actually sent. The platform's raw call arguments show which keys those are.
3. Stop a module sweep before the 30 s tool timeout, instead of losing the whole result to a
   misleading `MODAL_BLOCKED`.
4. Document the module scope wherever the model scope is currently described as the widest scope.

## 1. Findings

### F1. What the worker sent, and what it cost [M]

- `runs-r16/S1-opus-1-worker.jsonl`, 13th checker call (step `:116`):
  `{"projectPath": …, "nodeReference": "8353451b-8e7a-4b53-960c-dcd5e6c2eadf(mcp.study.recipes)"}`.
  That is the language's persistent module reference. Server log callId 93: `NOT_FOUND`, 2 ms.
- Next came five model checks, callIds 94–98 (steps `:117-121`): structure (8 roots), editor (6),
  constraints (2), behavior (1), typesystem (1). All were clean, and they took 20–36 ms each. The
  record says 4 of the 5 had not changed since their last clean check.
- Round 13 (`runs-r14/S1-opus-1`, checker calls 7–12 of 12): the same final sweep, one model at a
  time, with no module attempt. So the sweep predates the misleading text. Module scope removes it
  in both rounds.

### F2. The `modelReference` sentence is unconditional [C]

- `JetBrainsMPSNodeMcpToolset.kt:903-909` emits the sentence whenever the value resolves to neither
  a node nor a model.
- The sentence is only true when the caller also sent `modelReference`. A call that sends *only*
  `modelReference` never gets this far: `nodeReference` is blank, so `rejectMissingParameters`
  (`:720-728`) answers first.
- The test at `JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest.kt:1512-1525` asserts the sentence
  for a ghost reference passed as `nodeReference`. It pins the defect in place and has to flip.

### F3. The tool body can see which keys were sent [C][M]

- `com.intellij.mcpserver.McpCallInfo.rawArguments` is a kotlinx `JsonObject`. It is reachable
  from the tool coroutine through `currentCoroutineContext().mcpCallInfoOrNull`
  (`McpCallInfoKt`, read with `javap` from `plugins/mcpserver/lib/mcpserver.jar`).
- The plugin already reads the same element: `McpCallOutcomes.kt:46` reads the call id, and
  `McpCallLogListener.kt:89-90` reads `rawArguments`. No tool body reads it yet.
- **Dropped keys stay in it [M].** In round 12 (`runs-r13/S1-sonnet-1`), the worker sent a plural
  `nodeReferences` key, which the binder drops. The call-log line for that call (callId 167) has
  `argsBytes: 283`, which is exactly the compact JSON length of the full input, dropped key
  included.
- The test stub passes an empty `rawArguments` (`McpIntegrationTestBase.kt:481` onwards).
  `callThroughBridge` (`:147-158`) has to pass its `args` there before a test can cover the
  conditional sentence.

### F4. What "the models a module owns" means in MPS [C]

- MPS's own checker (`core/kernel/kernelSolution/source_gen/jetbrains/mps/checkers/ModelCheckerBuilder.java:64-88`,
  `ModelsExtractorImpl`) checks:
  - the module, plus a `Language`'s `ownedGenerators` (on by default);
  - every model except stub models (`includeStubs` is off by default);
  - the module itself, through module checkers (`ModuleChecker` → `ValidationUtil.validateModule`).
- `LanguageDescriptorModelProvider` registers a `<lang>@descriptor` model in every non-packaged
  language (`core/project/source/jetbrains/mps/project/structure/LanguageDescriptorModelProvider.java:163`).
  So a source language's `models` includes it. MPS's extractor does not filter it out. An agent
  can neither edit it nor act on its problems.
- `ValidationUtil.validateModule` (`core/project-check/source/jetbrains/mps/project/validation/ValidationUtil.java:74-91`)
  handles DevKit, Language, Generator and Solution. It skips transient modules and throws
  `IllegalArgumentException` for any other kind.

### F5. The building blocks exist [C]

All in `common/AbstractOps.kt` unless noted:

| need | existing code |
|---|---|
| module by reference or name, project first | `resolveModulePreferringProject` (`:3063`) |
| a language plus its owned generators | `expandModules` (`:3069`) |
| every checker on one root | `runRootCheckers` (`:2004`) |
| model-level validation | `ModelValidator(host, model).validate(…)` (node toolset `:852`) |
| model report object | `modelWithProblemsJsonObject` (`:2391`) |
| per-root summary row, counts | `rootProblemSummary` (node toolset `:940`), `problemCounts` (`:1939`) |
| inline or temp-file envelope | `finalizeResult` (`:1179`) |
| near-miss spellings per parameter | `RequiredParameterNearMisses` (`common/RequiredParameters.kt:61`) |

The model branch (`JetBrainsMPSNodeMcpToolset.kt:849-901`) is one inline block. The module branch
needs its per-model part, so that part is extracted first (Phase 1).

### F6. A long sweep would be reported as a modal dialog [C][I]

- The check runs in `executeShortReadOnEdt` under `MODEL_OPERATION_TIMEOUT_MS = 30_000`
  (`AbstractOps.kt:152`), through `withModalTimeout` (`:2594`), which is `withTimeout`.
- A blocking read cannot be cancelled while it runs. So a read that overruns finishes, the timeout
  then surfaces as `McpModalBlockedException`, and the finished result is thrown away [I].
- The S1 language module takes about 0.15 s [M] (F1). A module of MPS's own size could take many
  times the 30 s budget [I]. Phase 0 measures it.

### F7. Bare names: a model can shadow a same-named module [C]

- `resolveModel`'s name match skips stereotyped models (`AbstractOps.kt`, `modelNameMatches`), so a
  bare language name does not resolve to `<lang>@descriptor`. It falls through to the module, as
  intended.
- A solution and its model often share a name (the sandbox pattern). With the order node → model
  → module, that bare name checks the model. The module's persistent reference is unambiguous.

## 2. Problems to fix

| # | problem | fix |
|---|---------|-----|
| P1 | A module reference or module name gets `NOT_FOUND` | module scope (§3.1–§3.4) |
| P2 | The `modelReference` sentence is unconditional | name only near-miss keys that were sent (§3.6) |
| P3 | Near-miss list has no `moduleReference` / `module` | extend it (§3.7) |
| P4 | Docs call the model scope the widest scope | docs (Phase 3) |
| P5 | A long module sweep is lost to `MODAL_BLOCKED` | time budget (§3.5) |
| P6 | A bare name shared by a model and a module silently checks the model | warning (§3.8) |

## 3. Design

### 3.1 Resolution

Order: node → model → module. Node and model resolution are unchanged. The module step uses
`resolveModulePreferringProject(mpsProject, value)`. It accepts the persistent form
`<uuid>(name)` and a bare module name, the project's modules first and then the repository.
Non-project modules are allowed, as they already are for models; the check only reads.

### 3.2 What is checked

- **Modules:** `expandModules(listOf(module))`, i.e. the module plus a language's owned generators
  (D2).
- **Models:** every model of those modules, except `SModelStereotype.isStubModel` and
  `isDescriptorModel` models. The module's own models come first, sorted by name, then each
  generator's.
- **Per module:** `ValidationUtil.validateModule` (D6), called only for Language, Solution,
  Generator and DevKit (F4). A DevKit owns no models, so its answer carries the warning
  "a DevKit owns no models; only the module itself was validated".
- **Per model:** exactly what the model scope runs: `ModelValidator` plus `runRootCheckers` on every
  root. Both branches call one extracted helper, so they cannot drift apart:
  `checkModel(mpsProject, model): ModelCheck(model, modelProblems, roots, rootProblems)`.

### 3.3 Parameters

- No new parameter. `nodeReference` takes the module forms too, the way it took the model forms
  under D33. That keeps the tool's own rule: everything goes under `nodeReference`.
- `autoApplyQuickFixes=true` → ignored, with a warning, as the model scope does (`:863-865`).
- `onlyNodesWithProblems` → chooses `nodes` or `tree` inside each model report.
- `perRoot` → §3.4.

### 3.4 Response (D1)

The response mirrors the model scope, one level up.

- **Clean:** `data: "no problems found"`,
  `details: {scope: "module", modelsChecked: <N>, rootsChecked: <sum>}`.
- **Problems (`perRoot=false`, the default):** `data` is the module object:
  `{name, reference, problems: [module-level problems], models: [...]}`.
  - Each `models` entry is exactly the model-scope report: `{name, reference, module, problems,
    roots: [...]}`.
  - Only models with problems are listed, as `roots` lists only roots with problems. `details` is
    the same as for a clean module.
  - A module-level problem that comes from an owned generator carries `module: <generator name>`.
- **`perRoot=true`:** `data: [{model, name, rootsChecked, errors, warnings}]` for every model, clean
  ones included. This is D63's shape.
  - `errors` and `warnings` count the model-level problems plus every root's problems. So `0`/`0`
    means the model is clean.
  - Module-level problems go to `details.moduleProblems`, with a warning to re-run with
    `perRoot=false`, as the model scope does for `modelProblems` (`:873-879`).
- Every answer goes through `finalizeResult(…, maxInlineBytes, details, warnings)`.

Example for the F1 call, clean, assuming the language owns only the five aspect models the worker
then checked [I]:

```
{"ok":true,"data":"no problems found","details":{"scope":"module","modelsChecked":5,"rootsChecked":18}}
```

### 3.5 Time budget (D4)

- `MODULE_CHECK_BUDGET_MS = 20_000`, checked between models, well inside the 30 s timeout.
- On overrun, stop after the current model:
  - add `details.truncated: true` and `details.modelsNotChecked: [<model refs>]`;
  - add the warning "Stopped after N of M models (20 s budget); check the rest by model reference".
- A truncated clean run answers `data: "no problems found in N of M models"`, never the bare
  `"no problems found"`.
- The budget is a parameter of the private body, defaulted like `withModalTimeoutOnEdt`'s
  `timeoutMs`, so a test can pass 0.
- A single model that overruns on its own is outside this fix. The model scope has the same
  exposure today.

### 3.6 The rejection text (D3)

- New `NOT_FOUND` text: "Reference '<v>' resolved to neither a node, a model, nor a module. Pass a
  node reference (r:<uuid>(model)/<node-id>), a model reference (r:<uuid>(model)) or qualified
  model name, or a module reference (<uuid>(module)) or module name in nodeReference."
- Then, once for each near-miss key the caller actually sent: "This tool has no '<key>' parameter;
  retry with nodeReference set to the value you passed as '<key>'."
- Helper in `AbstractOps`:
  ```kotlin
  protected suspend fun sentNearMisses(tool: String, parameter: String): List<String>
  ```
  It returns `RequiredParameterNearMisses.of(tool, parameter)` filtered to the keys present in
  `mcpCallInfoOrNull?.rawArguments`. It runs in the suspend tool function, before the EDT read,
  and the list is passed into the body.
- Keep the D43 missing-parameter path (`:720-728`) as it is: it is generic across tools on
  purpose. Extend its `expected` hint to name the module forms.

### 3.7 Near-miss list (P3)

`"mps_mcp_check_root_node_problems.nodeReference"` (`RequiredParameters.kt:61`) gains
`"moduleReference"` and `"module"`. With module scope, those are the next spellings agents will
guess. `McpToolParameterOptionalityTest` already enforces that no near-miss is a real parameter.

### 3.8 Shadowed module warning (D5)

A value may resolve as a model by bare name, i.e. not as a parseable persistent model reference.
If `resolveModulePreferringProject(value)` also finds a module, add this warning: "'<v>' also names
module <name>; this checked the model. Pass the module reference '<ref>' to check the whole
module." This costs one extra lookup, and only on the bare-name path.

### 3.9 Descriptions

The tool description is sent with every turn, so keep the additions short:

- **Tool description** (`:709-710`): after the model paragraph, add one sentence. "A module
  reference (`<uuid>(name)`) or module name checks the module and every model it owns (a
  language's generators included, stub and `@descriptor` models excluded) with
  `details.scope:"module"` and `modelsChecked`. Problems come back as the module object with a
  `models` array of model reports. `perRoot=true` gives `[{model, name, rootsChecked, errors,
  warnings}]` per model."
- **`nodeReference`** (`:714`): add the module forms. "There is no modelReference or
  moduleReference parameter."
- **`perRoot`** (`:718`): "Model and module references only: … per root for a model, per model for
  a module."

## 4. Plan

### Phase 0: spike (read-only, live MPS)

Wait until no other session's suite is running in this worktree.

1. Time a model-scope check on a large project model, for example the `jetbrains.mps.baseLanguage`
   structure and editor models. Extrapolate to their whole language. That settles the 20 s budget,
   or shows the budget does not matter in practice.
2. Confirm that a source language's `models` contains `<lang>@descriptor` (for example, check
   `get_project_structure` on the S1 language). See what `ModelValidator` and `runRootCheckers`
   report on it. That justifies the filter, or shows it is not needed.

F3's open question (do dropped keys stay in `rawArguments`?) is already answered offline [M].

### Phase 1: code

In `JetBrainsMPSNodeMcpToolset.kt` and `common/`:

1. Extract `checkModel` and the model-report builder out of the model branch (`:849-901`). The model
   branch keeps its exact output; the existing model-scope tests guard it.
2. Add the module branch after the model branch (§3.1–§3.5). Put the model and module scope code in
   the node toolset next to `rootProblemSummary`, not in `AbstractOps`. Only the checker uses it.
3. Add `sentNearMisses` to `AbstractOps` and use it in the new `NOT_FOUND` text (§3.6).
4. Add the shadowed-module warning (§3.8).
5. Add `moduleReference` and `module` to `RequiredParameters.kt:61`. Update the `expected` hint
   (`:725-726`).
6. Update the three descriptions (§3.9).

### Phase 2: tests

In `JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest` (model scope tests live there,
`:1455-1525`), and in `JetBrainsMPSNodeMcpToolsetIntegrationTest` for the bridge cases:

1. **Clean module**, by persistent reference: the fixture language plus one extra model
   (`createModel`) → `"no problems found"`, `scope: "module"`, `modelsChecked` equals the number of
   non-stub, non-descriptor models, and `rootsChecked` is their sum.
2. **Same, by bare module name.**
3. **Broken root** (`createConceptRoot` + `clearConceptId`, as at `:1456-1457`):
   - `data` is the module object;
   - `models` has exactly the structure model;
   - its `roots` entry has `errors ≥ 1` and a `nodes` list.
4. **`perRoot=true`:**
   - one row per model;
   - each row's keys are exactly `{model, name, rootsChecked, errors, warnings}`;
   - the broken model has errors, and the other rows are `0`/`0`.
5. **Exclusions:** no row or report names a `@descriptor` model.
6. **Language with a generator** (`LanguageProducer(...).withGenerator(true)`): the generator's
   models are checked and listed.
7. **Solution module** (`createSolution` + `createModel`) works the same way.
8. **`autoApplyQuickFixes=true` on a module:** the warning is present and nothing is mutated.
9. **Budget 0:** stops after the first model; `truncated` and `modelsNotChecked` list the rest;
   `data` is not the bare `"no problems found"`.
10. **Ghost reference** (flip `:1512-1525`): the text says "neither a node, a model, nor a module",
    names module references, and does **not** contain "no modelReference parameter".
11. **Bridge with sent keys.** First make `callThroughBridge` pass `JsonObject(args)` as
    `rawArguments` (`stubMcpCallInfo` gains that parameter). Then:
    - `{nodeReference: ghost, modelReference: X}` → the sentence names `modelReference`;
    - `{nodeReference: ghost, moduleReference: X}` → it names `moduleReference`.
12. **Missing key** (update `JetBrainsMPSNodeMcpToolsetIntegrationTest.kt:2248-2265`): only
    `moduleReference` sent → the D43 envelope naming `nodeReference`, with `moduleReference` among
    the spellings that never reach the tool. Then retry with the value under `nodeReference` → ok,
    module scope.
13. **Shadowing:** a solution `N` with a model `N`, bare `N` → model scope plus the §3.8 warning
    naming the module reference.

### Phase 3: docs

Edit the blueprints under `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`. Then
copy each changed skill folder over `.agents/skills/` and `.claude/skills/`.

| file | change |
|---|---|
| `mps-mcp-workflow/references/analysis-tools/check-root-node-problems-output.md:3-7` | accepted forms; a module paragraph with the §3.4 shapes; "a clean module means every model in it is clean — do not follow it with per-model checks" |
| `mps-mcp-workflow/references/mcp-tools-index.md:37` | add the module form and its `details` |
| `mps-mcp-workflow/references/reference-formats/request-conventions.md:20` | the model-reference column note gains "also a module reference or name: every model of the module" |
| `mps-mcp-workflow/references/node-editing-rules.md:31` | "Validate the model, not every root" gains "…and the module, not every model" |
| `mps-language-aspects-overview/SKILL.md:95` | step 1: "…or the language module, to sweep every aspect in one call" |
| `.agents/quality-gates.md:21` (repository, not a skill) | "(it also accepts a model or module reference)" |

Other sessions have uncommitted edits in `mps-mcp-workflow` (`analysis-tools/overview.md`,
`bulk-creation.md`, `intentions-and-quick-fixes.md`, for D62/D69). D63 touches other files, but
re-diff all three catalogs before propagating, and commit only D63's files.

### Phase 4: validation

- **IDEA:** `get_file_problems` on the changed Kotlin files, then `build_project`.
- **Suite:** run the whole `McpToolsIntegrationTestSuite`, which also holds
  `McpToolParameterOptionalityTest` and `SkillCatalogReplicationTest`.
  - First check that no other test JVM is running (`pgrep -f '[b]in/java.*JUnitStarter'`), and that
    no other session is making in this worktree.
  - A single failure has been flaky before, so re-run once before blaming the diff.
- **Catalog:** `plugins/mcp-tools/scripts/validate_skill_catalog.py` after propagating.
- **Live, after restarting MPS with the new plugin classes:**
  - the F1 call shape on a real language module (persistent reference, then bare name);
  - a solution;
  - a ghost reference sent with and without an extra `modelReference`.

### Phase 5: study records

- D63 → fixed, with the commit id. Archive it once the suite is green, as D58–D60 were.
- **Re-measure** in the next S1 round:
  - the final validation sweep uses at most 2 checker calls (language module and sandbox
    solution), not 5–6;
  - no `NOT_FOUND` carries the `modelReference` sentence unless that key was sent.
  - The report estimates about 5 turns saved per greenfield opus run.
- Record the `inventorySha256` change that comes from the description edits.

## 5. Decisions (pending)

| # | Question | Recommendation | Why |
|---|----------|----------------|-----|
| D1 | Response shape: always D63's per-model array, or mirror the model scope with the array under `perRoot=true` (§3.4)? | **Mirror the model scope.** | `"no problems found"` keeps its one meaning at every scope, and the skills already teach it. A module with problems returns their detail in the same call, so the agent does not need a model call per bad model. D63's array stays one flag away. |
| D2 | Does a language's check include its owned generators? | **Yes.** | That is MPS's own module check (F4). A generator's models belong to the same authoring unit, and the final sweep otherwise needs one more call per generator. |
| D3 | Make the sentence conditional through `rawArguments`, or drop it? | **Conditional**, for every near-miss key actually sent. | It is correct whenever it appears, and it keeps the one case where it helps: a caller that sent both keys, where the binder silently dropped the good value. F3 shows the data is there. Dropping the sentence is the fallback if the helper proves awkward. |
| D4 | Add the 20 s time budget with truncation? | **Yes.** | Without it, an overrun discards a finished check and blames a modal dialog (F6). The cost is one clock check per model. |
| D5 | Warn when a bare name also names a module (§3.8)? | **Yes.** | Otherwise the model silently wins. `details.scope:"model"` says so, but an agent that meant the module would not notice. |
| D6 | Run module-level validation (`validateModule`)? | **Yes.** | Missing dependencies and languages are module problems. A "module is clean" answer that skipped them would be wrong in the same way model scope was before D7. |

## 6. Not in scope

- **Several references in one call.** Round 12 saw a plural `nodeReferences` near-miss. It was not
  filed and did not recur in rounds 13–15.
- **A project-wide scope.** `alter_nodes MAKE` has `wholeProject`; nothing here asks for a check
  equivalent.
- **`autoApplyQuickFixes` at model or module scope.** It stays node-only.
- **A module hint in `print_node`'s rejection** (`unresolvedPrintNode`, `:919-937`). It already
  names the model case, and no evidence shows a module passed there.

## 7. Risks and size

- **EDT time.** The sweep runs on the EDT, as the model scope does. The budget caps a freeze at
  about 20 s. Moving the check to `executeBackgroundRead` would be a separate change. Nobody has
  checked that the typesystem checkers are safe off the EDT here.
- **Behaviour change.** Only the ghost-reference text and the value forms that used to fail
  change. Node and model answers stay byte-identical, which the existing tests pin.
- **Size.** About 120–150 lines of production Kotlin (most of it the module branch and the
  extraction), about 250 lines of tests, and 6 doc files in 3 catalogs.
