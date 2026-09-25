# Plan: run-configuration scope and persistence (D53)

Status: analysis done and all decisions made (2026-09-25); nothing implemented. D1–D4 follow the
first draft's recommendations. D5 (several nodes and models, mixed, in one call) and D6 (reject
legacy/modern mixes) were signed off the same day. §3 and §4 already include both. Defect record: D53 in
`study/docs-defects.md`, filed from round 11 (`HOTSPOT_REPORT_round11.md` §3.7). Round 11's
evidence lives in `~/MPSProjects/mcp-study/runs-r12` and `proj-r12` (the report says so at line 18).

Marking: **[M]** = measured or observed live; **[C]** = read from code; **[I]** = inferred, still
to be verified.

## Summary

D53 makes two claims. One holds and one does not.

- **Holds: the tool targets exactly one root.** `mps_mcp_create_run_configuration` cannot create a
  config for a whole model or for several test roots. The limit is in the tool, not in MPS: the
  JUnit config the tool fills in already supports model, module, project and multi-root targets.
- **Does not hold: "session-only, not written to `workspace.xml`".** The tool registers a
  permanent config. IntelliJ writes it at the next settings save. The S7 project's own
  `workspace.xml` contains all four configs, written 5 s after the evaluator's report. The
  evaluator checked the file before MPS had saved it.

The plan:

1. Correct the D53 record and the round 11 report. Do **not** document configs as session-only.
2. Let one call name any mix of test roots (`nodeReference`) and models (`modelReference`), each
   one value or an array. The result is one JUnit config and one launch (D5). One model on its
   own gets the IDE's live model config; every other set becomes a fixed list of test roots.
3. Replace the misleading `NOT_FOUND` a model reference gets today.
4. Reject configs that would mix legacy and modern tests, since MPS silently runs only one group
   (F7, D6).
5. Document the new targets, and when a config reaches disk.

## 1. Findings

### F1. One root per config: confirmed, and it is the tool's limit [C]

- The tool takes one `nodeReference: String` (`JetBrainsMPSRunConfigurationMcpToolset.kt:95`). It
  always sets run type `NODE` (`:275`) with a one-element list from `PointerUtils.nodeToCloneableList`
  (`:281`).
- `JUnitRunTypes` (`plugins/execution-configurations/junit/source_gen/.../settings/JUnitRunTypes.java`)
  has `PROJECT` (`:36`), `MODULE` (`:55`), `MODEL` (`:89`), `NODE` (`:126`, a list of test cases)
  and `METHOD` (`:161`).
- The IDE creates each of these from context (`plugins/execution-configurations/plugin/source_gen/.../JUnitTests_Producer.java`):
  - **Model** (`:147–:164`): name `Tests in '<short model name>'`, run type `MODEL`,
    `setModelRef(PersistenceRegistry.asString(model.reference))` and `setModuleRef(...)`. Returns
    null for a read-only model. The in-process flag is not touched.
  - **Several test roots** (`:338–:377`): name `<first root name>,...`, run type `NODE`,
    `setTestCases(PointerUtils.nodesToCloneableList(roots))`. It clears the in-process flag when
    any root's `canRunInProcess` is false.
  - **One root** (`:191–:229`): what the MCP tool mirrors today.
- This checkout's `workspace.xml` already holds an IDE-made model config,
  `Tests in 'structureChecks@tests'` with `myModelRef` set [M].
- A `MODEL` config collects its tests at launch, from every root of the model
  (`ModelTestCollector`, no stereotype check). Test roots added later are picked up without
  recreating the config [C].

In S7 the worker made 4 configs and ran 4 launches for one test model (server log lines 63–70,
all `ok`) [M]. With a model target that is 1 config and 1 launch.

### F2. A model reference gets a misleading NOT_FOUND [M]

Live, with a model that exists:

```
create_run_configuration(nodeReference = "r:5e77cc98-…(jetbrains.mps.lang.typesystem.structureChecks@tests)")
→ {"ok":false,"error":"Node 'r:5e77cc98-…(…structureChecks@tests)' not found","code":"NOT_FOUND"}
```

An agent reads that as "wrong reference", not "this tool does not take models".

### F3. Configs do persist; the round 11 claim is wrong [M][C]

- **Code:** `runManager.createConfiguration` + `runManager.addConfiguration` (`:170`, `:179`)
  register a permanent config (no `temporary` flag). `RunManager` state lives in
  `.mps/workspace.xml` and is written when the platform saves settings: on frame deactivation
  (default on), Save All, a normal project close, and app exit.
- **Live test (2026-09-25):**
  - Created `D53 probe` at 13:54:01. It was not on disk after 2 idle minutes.
  - Brought MPS to the front for 2 s. `workspace.xml` was rewritten at 13:55:59 and contains
    `<configuration name="D53 probe" type="JUnit Tests" …>` with no `temporary` attribute.
- **S7 itself:** `proj-r12/S7-sonnet-1/.mps/workspace.xml` has `EditorTest_TypeStepText`,
  `Test_RecipeServingsError`, `Test_StepMinutesWarning` and `Test_TotalMinutes` (lines 169, 222,
  275, 328), all with `myRunType=3` (NODE).
  - The file's mtime is 19:32:54.
  - `runs-r12/S7-sonnet-1.eval.md` was written at 19:32:49. The worker ended at 19:30:54.
  - The harness's `mps_control.sh shutdown` closes without `force`, so the close saved the
    workspace just after the evaluator had looked.
- **Where the risk really is:**
  - An MPS crash or kill before the next save.
  - `close_project(force=true)`. It calls the one-argument
    `ProjectManagerEx.forceCloseProject(project)` (`JetBrainsMPSProjectMcpToolset.kt:800`). The
    platform has a separate `saveAndForceCloseProject`, read with `javap` from `lib/app.jar`, so
    the force path does not save. That the unsaved run configs are then lost is [I]; verify in
    Phase 0.
  - Neither risk is specific to MCP: an IDE-made config has the same exposure.

### F4. Docs: one gap, one would-be error [C]

- **The gap is real.**
  - `mps-run-configurations/SKILL.md:18` says "accepts root nodes only", but only as opposed to
    non-root nodes.
  - The tool description says "targeting a root node".
  - `mps-tests/SKILL.md:39` and `references/running-tests.md:13` say "pass the test root's
    reference".
  - None of them says it takes one config per root, or that a test model with N roots needs N
    configs.
- **The proposed fix would be wrong.** D53's remedy, "document that configs are session-only",
  would contradict `classconcept-and-fallbacks.md:3` ("The persisted XML carries a node
  pointer"), which is correct.

### F5. The study evaluator checked persistence too early [M]

The evaluator grepped `workspace.xml` while MPS was still running with the project open. MPS
driven only over MCP stays in the background and never loses focus, so nothing is saved until the
harness closes the project. The same trap applies to any future "is it persisted?" criterion.

### F6. Smaller observations, not required for D53 [C]

- The test paths do not check `compileInMPS` up front. The Java paths do (`:139–:152`).
  `JUnitRunTypes.NODE.check()` / `MODEL.check()` reject such a module at launch ("Module %s must be
  compiled by MPS. Can't run tests."), so the agent learns it one call later. Not seen in the study.
- In-process runs are decided once per config (`JUnitTests_Configuration_RunProfileState.java:71`).
  A test that cannot run in process then fails as `TestSetNotToBeExecutedInProcessException`
  (`InProcessExecutionFilter.java:20`). The IDE's model producer does not guard against this; the
  list producer does.
- S7's `done_criteria.md` item 2 ("A JUnit run configuration for the model exists") asks for
  something the tool cannot create today. The evaluator accepted 4 configs instead.

### F7. A config with several tests can silently skip some of them [C]

Found while evaluating §6. It affects every config with more than one test, including the model
and list targets in §3.

- Tests from different models and modules can share one launch. Descriptor-based tests carry no
  classpath of their own (`TestDescriptorWrapper.java:90–100` passes `null`).
- Platform tests (`WithPlatformTestExecutor`) and plain tests (`DefaultTestExecutor`, its
  superclass) merge. **Legacy JUnit3 tests in compatibility mode** (`LegacyTestLauncher`) do not
  merge with either.
- **Out of process:** `TestsWithParameters.java:53–76` keeps only the tests the widest parameter
  set comprises (`TestParameters.comprises`, `TestParameters.java:113–132`). It skips the rest with
  one log warning: "All tests could not be executed together. Skipped: …".
- **In process:** `JUnitInProcessRunStarter.java:47–51` shows a Run tool window error ("Could not
  run legacy and modern tests together, some tests are skipped") and runs one group.
- Neither message reaches `execute_run_configuration`'s output [I; verify in Phase 0.4]. An agent
  would see fewer tests and no reason.
- IDE-made model and project configs behave the same way today. Compatibility mode is being phased
  out (the FIXME at `TestDescriptorWrapper.java:96`), so mixed sets should be rare. The more
  targets per config, the likelier one is.

## 2. Problems to fix

| # | Problem | Kind | Fix |
|---|---------|------|-----|
| P1 | D53's persistence claim is false, and so are round 11's §3.7, line 53 and line 216 | study record | Correct them (Phase 4) |
| P2 | Evaluators judge persistence without a save | study method | Add a study lesson and an evaluator rule (Phase 4) |
| P3 | No model or multi-root target | **S** | Any mix of roots and models in one config (Phases 1–2, per D5) |
| P4 | Model reference → misleading `NOT_FOUND` | **S** | A dedicated rejection that names the retry (Phase 1) |
| P5 | "One config per root" is not documented | **D** | Superseded by documenting the new targets (Phase 3) |
| P6 | When a config reaches disk is not documented; `force=true` close risk | **D** | One line each in the run-config docs and the `close_project` description (Phase 3) |
| P7 | S7 criterion 2 cannot be met literally | scenario | Keep it; it becomes achievable. Re-measure (Phase 5) |
| P8 | Test paths skip the `compileInMPS` gate | **S** | Gate up front with the Java-path message (Phase 2, per D4) |
| P9 | A mix of legacy and modern tests in one config loses one group silently (F7) | **S** | Reject the mix at creation and name the legacy group (Phase 2, per D6) |

## 3. Design

### 3.1 Parameters

Extend `mps_mcp_create_run_configuration`; do not add a new tool (per-turn schema cost, and one
place to look).

- `nodeReference: JsonOrText`. One root reference, as today, **or** a JSON array of test root
  references (a real array or the array written as a string).
- `modelReference: JsonOrText? = null`. **New.** One model, or a JSON array of models. Each entry is
  a model reference or a model name.
- `JsonOrText` publishes a schema identical to `String`'s (`common/JsonOrText.kt`), so the schema
  does not grow. The `McpJsonOrTextWireShapeTest` guard requires this type for any parameter that
  promises an array.
- **At least one of the two must be given; both may be (D5).** Follow the either-of rule in
  `RequiredParameter`'s KDoc: list `nodeReference` as the primary key with
  `supplied = nodeReference.text.ifBlank { modelReference?.text.orEmpty() }`, and name
  `modelReference` in `expected`.
- Add a tool-qualified near-miss key in `RequiredParameterNearMisses`:
  `mps_mcp_create_run_configuration.nodeReference` → `nodeRef`, `node`, `reference`,
  `nodeReferences`, `model`, `modelRef`, `models`, `modelReferences`, `testCases`. None of these
  may be a real parameter of the tool (`McpToolParameterOptionalityTest`).

### 3.2 Dispatch

**Resolving the targets.** Validate every entry before creating anything:

- **A `nodeReference` entry** must resolve, be in the selected project (another project's node →
  `crossProjectErr`), and be a root.
  - If the string resolves as a model instead, reject with `INVALID_REQUEST`: "'<ref>' is a model;
    pass it in `modelReference` to run all its tests" (D2, P4). Unknown references stay
    `NOT_FOUND`.
- **A `modelReference` entry** goes through `resolveModel(mpsProject, ref, projectOnly = true)`.
  - Another project's model → `crossProjectErr`.
  - A read-only model → reject (IDE parity).
  - A model with no `ITestCase` roots → reject, mirroring `MODEL.check()`'s "No tests found in
    model".
- **All entries are checked, and every failure goes into one rejection**, each with its parameter
  and index. One retry then fixes everything, as with `search_root_node_by_name`'s `models`.
  No config is created on any failure.
- An empty array is rejected.

**Choosing the config:**

| targets | config |
|---------|--------|
| one root that is not a test (`IMainClass` / `ClassConcept` with `main`), nothing else | Java Application, unchanged |
| one test root, nothing else | JUnit `NODE` with one case, unchanged |
| exactly one model, no nodes | JUnit `MODEL`, **live**: `setModelRef(PersistenceFacade.asString(model.reference))`, `setModuleRef(model.module.moduleReference.toString())` |
| anything else (several roots, several models, or roots and models together) | JUnit `NODE`, **snapshot**: `setTestCases(nodesToCloneableList(union))` |

- The **union** is the `nodeReference` roots in input order, then each model's test roots in the
  model's root order. Each root appears once, at its first position; a listed root that is also in
  a listed model counts once.
- **Any root that is not a test, in a call with more than one target, is rejected**: a Java
  Application config runs one `main`.
- **The D6 check runs on every JUnit config with more than one test root.** Collect the wrappers
  with `JUnitSettings_Configuration.getTests(mpsProject)`, and reject when `useCompatibilityMode()`
  is true for some and false for others.
  - The message names the legacy tests and says to give them a config of their own.
  - For a live `MODEL` config the check covers the roots present at creation.
  - It depends on Phase 0.4. If the flag can't be read before compilation, it becomes a docs note.
- **The D4 `compileInMPS` gate** checks each distinct module of the targets and names every
  offender.

### 3.3 In-process flag

- For every JUnit config, clear the in-process flag when any test root's `canRunInProcess` is false.
  Use the existing `invokeCanRunInProcess`, and call `setInProcessFlag` **after**
  `setJUnitRunType`: the flag is stored per run type (`JUnitSettings_Configuration.java:93–:97`).
- This departs on purpose from the IDE's model producer, which leaves the flag alone (F6). It
  matches the IDE's list producer.
- For a model, the check covers the roots present at creation time. Record that limit in the docs.

### 3.4 Names and replacement

- **One model alone:** `Tests in '<NameUtil.shortNameFromLongName(model.name.value)>'`, the IDE's
  own name. The MCP config and one from right-click → Run then share a `uniqueId`, so either
  replaces the other instead of making a duplicate.
- **A snapshot that includes at least one model:** `Tests in '<first model>',...`.
- **Several roots, no model:** the IDE's name, `<first root>,...` (D1).
- Two different snapshots with the same first element would collide and silently replace each
  other. The docs tell agents to pass `configurationName` for every snapshot.
- The replace-by-name behaviour is unchanged. Repeating a snapshot call under the same name is
  also how to refresh it after tests were added.

### 3.5 Response

Keep `{name, type, uniqueId}`. For JUnit configs, add:

- `runType`: `NODE` | `MODEL`.
- `testCaseCount`: for a live model config, taken at creation time.
- `live`: true only for the one-model `MODEL` config. False means a snapshot, which misses tests
  added later until the call is repeated.

That lets the agent confirm the target without a second call. The response carries counts, not
names, so it stays small for large targets.

### 3.6 Code placement

- All code changes go in `JetBrainsMPSRunConfigurationMcpToolset.kt`, plus one map entry in
  `RequiredParameters.kt`.
- `AbstractOps.kt` currently has uncommitted D51/D52 edits. Use its existing `resolveModel`,
  `resolveNodeReference`, `parseStringOrJsonArray(JsonOrText)` and `crossProjectErr` helpers
  without modifying it.
- The settings setters are reached by reflection, as today. mcp-tools keeps no compile-time
  dependency on execution-configurations.

Rejected alternative: drive the IDE's own `RunConfigurationProducer`s through a synthetic
`ConfigurationContext` with an `MPSPsiElement`. That would give exact parity, but it needs a
DataContext and PSI wrapper for models, and it ties the tool to producer internals.

## 4. Plan

### Phase 0: spikes (read-only, in the running MPS)

1. Run an IDE-made `MODEL` config (for example `Tests in 'structureChecks@tests'`, or one made
   from a small `@tests` model) through MPS MCP `execute_run_configuration` with
   `waitForExit: true`. Confirm that `output` reports every test (START_TEST / FINISH_TEST per
   test), that failures show up, and that `exitCode` is meaningful. The whole feature is only
   worth it if the per-test output is readable. **Gate:** if it is not, stop and rethink the
   response before Phase 1.
2. Confirm F3's force-close inference in a throwaway project: create a config, `close_project(force=true)`,
   reopen, and look for it.
3. In the integration fixture, check whether a dynamically created test root passes
   `JUnitRunTypes.X.check()` (via `findTestDescriptor`). If it does, the tool can call `check()`
   after filling in the settings and return the platform's own launch-time error up front. That
   answers D4 with code reuse instead of a copy.
4. For F7 and D6:
   - Can `JUnitSettings_Configuration.getTests(mpsProject)` (public) return the test wrappers, and
     can their `useCompatibilityMode()` be read, before the test module is compiled?
   - With a mixed set, does either skip message reach `execute_run_configuration`'s output?
   - If the flag cannot be read before compilation, P9 falls back to a docs note.

### Phase 1: P4 and parameter plumbing

1. Change `nodeReference` to `JsonOrText`, add `modelReference: JsonOrText?`, and implement the
   "at least one of" rejection and the near-miss entry (§3.1).
2. Add the model-reference detection that replaces `NOT_FOUND` (§3.2).
3. Update the `@McpDescription`s. Keep them short (per-turn schema cost). Say:
   - `nodeReference`: a root, or an array of test roots.
   - `modelReference`: a model, or an array of models.
   - Both can be combined into one JUnit config.
   - One model alone stays live; any other set is a snapshot, refreshed by repeating the call.
   - Configs are permanent and written at the next save.

### Phase 2: new targets (P3, P8, P9)

1. One "collect targets" step for both parameters: resolve, validate, expand models, dedupe, and
   gather every failure into one rejection (§3.2).
2. The choice between the live `MODEL` config and the `NODE` snapshot (§3.2), with the names in
   §3.4 and the in-process flag in §3.3.
3. The response fields (§3.5).
4. The `compileInMPS` gate (D4), per distinct module. Always for the new targets; for today's
   single-root path too if Phase 0.3 shows `check()` can be reused. Otherwise reuse
   `isCompileInMps` and the Java path's message shape.
5. The mixed legacy/modern rejection for every JUnit config with more than one test root (D6). It
   depends on Phase 0.4.

### Phase 3: docs (P5, P6)

Edit the blueprints in `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, then copy
each changed skill folder over both `.claude/skills/` and `.agents/skills/`.

- `mps-run-configurations/SKILL.md`: the Critical Directive at `:18`. Cover:
  - The targets: roots, models, or both, in one call.
  - For one test model, `modelReference` is the default choice: one config, one launch, and it
    picks up tests added later.
  - For several targets, one call instead of one config per root. Pass `configurationName`, and
    repeat the call to refresh the snapshot.
- `mps-run-configurations/references/create-and-execute.md`:
  - Call shapes for the arrays and for a mix of roots and models.
  - Live vs snapshot and the `live` flag, the default names and the collision warning.
  - The response fields.
  - One paragraph on persistence: permanent, written at the next save, lost on crash or forced
    close.
- `mps-run-configurations/references/decision-matrix.md` and `references/common-failures.md`:
  rows for the new rejections:
  - a model passed as `nodeReference`;
  - a root that is not a test among several targets;
  - a model with no tests;
  - a legacy/modern mix (D6);
  - the combined multi-entry rejection, and how to read its per-entry list.
- `mps-tests/SKILL.md:39` and `mps-tests/references/running-tests.md:13`: run a test model through
  `modelReference`, several test models or a mix in one call, and a single root only when
  iterating on one test. Legacy JUnit3-style tests need a config of their own (D6).
- `mps-mcp-workflow/references/mcp-tools-index.md:60`: one-line update.
- `mps_mcp_close_project`'s `force` description, and `mps-project-management/SKILL.md:40`
  (and the `:23` directive): say that unsaved workspace state, run configs included, is discarded, not only
  editor changes. Needs Phase 0.2.
- `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/11_run_configurations.md` and `COVERAGE_MATRIX.md`
  (`:46`, `:99`): add the one-model, multi-model, multi-root and mixed cases.

### Phase 4: study records (P1, P2)

1. `study/docs-defects.md` D53:
   - Rewrite "what is wrong" to say one root per config (confirmed) plus the misleading
     `NOT_FOUND` for a model reference.
   - Remove the persistence claim, with the F3 evidence recorded as the reason.
   - Point to this plan.
   - Set the status to "remedy chosen, see plan".
2. `study/HOTSPOT_REPORT_round11.md`: add an erratum under §3.7, and footnote the table rows at
   `:53` and `:216`. Leave the original text in place, as other reports have done.
3. Study skill `references/lessons.md`: a new lesson. A disk check for IDE state (run configs,
   workspace, settings) is only valid after a save: after harness shutdown, or after a forced focus
   switch. MPS driven over MCP never saves on its own while it runs. Add the same rule to the
   evaluator instructions in `references/harness.md`.

### Phase 5: validation

- **IDEA:** `get_file_problems` on the changed Kotlin files, then `build_project`.
- **Integration tests**, in `JetBrainsMPSRunConfigurationMcpToolsetIntegrationTest`, which is
  already in `McpToolsIntegrationTestSuite`:
  1. **One model:** a model with 2 `NodesTestCase` roots and 1 plain root → `MODEL` config. Check
     its name, `getModelRef`, run type, `testCaseCount = 2` and `live = true`. A one-element
     `modelReference` array gives the same result.
  2. **A model with no tests:** → `INVALID_REQUEST`, alone or inside a union, naming that model.
     No config is left behind.
  3. An unknown model → `NOT_FOUND`. A model from another project → the cross-project error.
  4. A model with a `canNotRunInProcess` root → in-process flag false for the `MODEL` run type.
     Same for a snapshot that contains such a root.
  5. **Several roots:** an array of 2 test roots → `NODE` with 2 cases, the `<first>,...` name
     (D1), and `live = false`. Test both a real array (through `callThroughBridge`) and the
     array-as-string form.
  6. **Several models:** 2 models → one `NODE` config holding the union of their test roots, named
     `Tests in '<first model>',...`.
  7. **A mix:** a root from model B plus model A → one `NODE` config with A's roots and the extra
     root. A listed root that is also inside a listed model is counted once.
  8. **Bad entries:**
     - A root that is not a test among several targets → `INVALID_REQUEST`.
     - A non-root or unresolvable entry → rejected, naming it.
     - Several bad entries in one call → one rejection listing each, with parameter and index, and
       no config.
  9. **Keys:**
     - Neither key → the D43 envelope naming `nodeReference` and `modelReference`.
     - `model` or `models` sent as the key → the dropped spelling is named.
     - Both keys → a union (covered by 7).
  10. A model reference in `nodeReference` → `INVALID_REQUEST` naming `modelReference`. This
      replaces today's `NOT_FOUND` for this input only.
  11. **Persistence pin:** after creation, the serialized `RunManager` state
      (`RunManagerImpl.getState()`) contains the `<configuration>` with no `temporary` attribute.
      This locks in the fact D53 got wrong.
  12. A `compileInMPS=false` test module → `INVALID_REQUEST`, on each path the gate covers (D4).
      In a union with modules from two solutions, the message names each offending module.
  13. **D6:** a model, list or mix combining a compatibility-mode test with modern ones →
      `INVALID_REQUEST` naming the legacy test. Needs Phase 0.4; otherwise this case moves to the
      docs.
  14. All existing tests still pass, including single-root naming, replacement and the D43 bridge
      tests.
- **Suites:**
  - Run the whole `McpToolsIntegrationTestSuite`; a single run-config test class has no
    environment on its own. A single failure has been flaky before, so re-run once before
    blaming the diff.
  - `SkillCatalogReplicationTest` and `plugins/mcp-tools/scripts/validate_skill_catalog.py`
    after propagating the skills.
- **Live, in the running MPS after a reload:**
  - Create a `MODEL` config for a real `@tests` model and run it with `execute_run_configuration`.
  - Create and run a 2-root config, and one that mixes a model with a root from another model.
    Check that every test shows up in the output.
  - Pass a model as `nodeReference` and check the new rejection.
  - Delete the probe configs afterwards (Run > Edit Configurations).
- **Study:** the next S7 run should create one model-level config and one launch. Record the
  inventory hash change that comes from the description edits.

## 5. Decisions

All decided on 2026-09-25. D1–D4 follow the first draft's recommendations. D5 and D6 came out of
§6 and were signed off: D5 as "yes, allow mixtures", D6 as "reject mixed configs".

| # | Question | Answer | Why |
|---|----------|--------|-----|
| D1 | Default name for several roots: the IDE's `<first>,...`, or something collision-free (for example `<first> +N`)? | **The IDE's `<first>,...`.** The docs tell agents to pass `configurationName` for lists. | The MCP config and one from multi-select → Run replace each other instead of duplicating. The docs rule covers the collision (two lists with the same first root). |
| D2 | A model reference in `nodeReference`: reject and name the retry, or accept it silently as a model target? | **Reject** with `INVALID_REQUEST`, naming `modelReference` and the exact retry. | Each parameter keeps one meaning. The cost is one retry at most, and it replaces the misleading `NOT_FOUND` (F2). |
| D3 | Add `moduleReference` (run type `MODULE`) now? | **No; a follow-up.** | Not asked for, and no study evidence. When it is wanted, it is the same mechanism (`setModuleRef`, run type `MODULE`). |
| D4 | Gate `compileInMPS` up front for JUnit paths (P8), including today's single-root path? | **Yes for the new paths** (model, several roots). The single-root path too if Phase 0.3 shows `check()` can be reused; otherwise leave it as it is. | The launch would fail for the same reason anyway, so failing at creation saves a launch. Without reuse, a hand-copied check on a tested path is not worth the behaviour change. |
| D5 | Accept several nodes **and** several models in one call (§6)? | **Yes, including mixtures** of roots and models: options N1 + M1 (§6.5). Specified in §3.1–§3.5. | One config and one launch for any set of test roots, through one code path. §6.4 has the trade-offs. |
| D6 | A set mixing legacy (compatibility-mode) and modern tests (F7): reject, warn, or allow? | **Reject**, naming the legacy tests and telling the agent to give them their own config. Fall back to a docs note if Phase 0.4 shows the flag can't be read at creation. Specified in §3.2. | MPS would skip one group, and the agent can't see why. A rejection costs one retry; a warning is easy to ignore. |

## 6. Evaluation: several nodes or several models in one call

The question: can an agent pass several nodes, or several models, to one
`mps_mcp_create_run_configuration` call? The first draft of §3 covered one model and an array of
test roots. This section weighed the rest: several models, nodes and models together, and arrays
of roots that are not tests. The outcome (§6.5) is now part of §3.

### 6.1 What MPS supports [C]

- **`NODE`** takes any list of test roots, from any models and modules. The IDE's multi-select
  producer (`JUnitTests_Producer.java:338–:377`) has no same-model restriction.
  `JUnitRunTypes.NODE.check()` checks each root's own module.
- **`MODEL`** takes exactly one model: `myModelRef` is a single string
  (`JUnitSettings_Configuration.java:196`). No run type takes a list of models. The IDE has no
  producer for a multi-selection of models either: its producer parts are project, module, model,
  node, test method, node list and method list.
- **`MODULE`** covers every model of one module. **`PROJECT`** covers the whole project.
- `MODEL`, `MODULE` and `PROJECT` collect their tests at launch (live). `NODE` stores a fixed list
  of pointers (snapshot).
- At launch, tests from several models and modules share one run. Only legacy/modern mixes
  split (F7).

### 6.2 Options

**Several nodes**

| id | option | verdict |
|----|--------|---------|
| N1 | A JSON array of test roots → one `NODE` config (already in §3) | **Adopt** |
| N2 | An array of any runnable roots → one config per root, all in one call | Reject. A Java Application config runs one `main`. One config per test root means N launches, which is what S7 paid for. No study run asked for it. |
| N3 | An array of test methods → run type `METHOD` | Out of scope. Useful later to re-run one failing test. `METHOD` and `NODE` cannot mix in one config. |

**Several models**

| id | option | for | against |
|----|--------|-----|---------|
| M1 | Union: each model contributes its test roots at creation time → one `NODE` config | One config, one launch. Reuses the N1 path. | A snapshot: tests added to a model later are missed until the call is repeated with the same name (replacement refreshes it). |
| M2 | One `MODEL` config per model, all created in one call | Every config stays live. | N configs, N launches; each out-of-process launch starts its own MPS instance. The response becomes a list. |
| M3 | A new `MODELS` run type in `execution-configurations` | Live, and one launch. | Changes an MPS plugin outside mcp-tools: `JUnitRunTypes` is generated from an MPS model, and the change also touches the persisted format and the config editor UI. |
| M4 | Map to `MODULE` when the models are all of one module's test models | Live. | Fits a special case only, and silently widens to models added later. |

### 6.3 Combining nodes and models

Nodes and models go through the same step, so allowing both in one call is free:

1. Resolve every entry.
2. Expand each model to its test roots.
3. Remove duplicates (a listed root that is also in a listed model counts once).
4. Validate, then create one `NODE` config.

The only case that stays special is one model alone, which keeps the live `MODEL` config from §3.

### 6.4 Assessment

- **Feasible, and a small increment over §3.** N1 + M1 is one code path: resolve, collect test
  roots, dedupe, validate, `setTestCases`. The per-model root scan is already needed for the
  `MODEL` path's own checks.
- **The value is fewer launches.**
  - S7 made 4 launches for one model.
  - A task with language tests and sandbox tests in two models needs 2 launches under §3 alone,
    and 1 with M1.
  - Out-of-process runs start a separate MPS instance per launch
    (`mps-tests/references/running-tests.md:6`), so launches dominate wall time.
- **The main cost is two meanings.** One model alone is live; every other target set is a
  snapshot. Mitigate:
  - Return `live: true|false` next to `runType` and `testCaseCount` (§3.5).
  - The docs say: repeat the call with the same name to refresh a snapshot.
- **Mixed legacy/modern tests (F7).** More targets per config make a mix more likely. D6 handles it
  for every path, not only this one.
- **Errors.** An array can fail on several entries at once.
  - Validate everything before creating anything.
  - Report every bad entry, with its index, in one rejection, so one retry fixes all. This follows
    `search_root_node_by_name`'s rule for `models`.
  - No config is left behind on any failure.
- **Schema cost: none.** `modelReference` becomes `JsonOrText`, which publishes the same schema as
  `String`. No new tool.
- **Size: no cap needed.** The response carries counts, not names. The persisted config holds one
  pointer per test root, the same as an IDE multi-select.
- **Cross-project and `compileInMPS`.** Every entry must be in the selected project. The D4 gate
  checks each distinct module and names every offender.

### 6.5 Outcome (D5)

Adopted N1 + M1, mixtures included. Rejected N2, M2 and M4. M3 is the route if live multi-model
configs are ever needed, but that is a change to the MPS execution plugin, not to mcp-tools.

The parameters, config choice, names and response are specified in §3.1–§3.5. The phases and tests
in §4 already include them.

## 7. Leftovers from the analysis

- A JUnit config named `D53 probe` (target `SpecializedLinkRedeclaration` in `structureChecks@tests`)
  is registered in the running MPS and saved in this checkout's `.mps/workspace.xml`, which git
  ignores. Remove it under Run > Edit Configurations.
