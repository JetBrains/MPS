# Generation debugging through MCP — exploration and implementation plan

YouTrack: [MPS-40316](https://youtrack.jetbrains.com/issue/MPS-40316). All work under this plan is done on behalf of MPS-40316; commits that implement it carry the ID in their subject (`mcp-tools - MPS-40316 <summary>`).

Status: exploration + plan, draft 3 (2026-10-23). All five phases (0–5) are implemented; sections 3.1–3.5 describe the design as drafted, and the implementation notes at the end of section 4 record where the code deviates. Draft 3 folds in an Opus review (approve with changes, 16 findings; log at the end). Owner decisions taken on 2026-10-23: (1) one new tool `mps_mcp_generation`, not operations on `query_nodes`/`alter_nodes`; (2) toggling the global save-transient setting around the make is acceptable, including the status-bar widget briefly showing it. All paths are relative to the repository root. Line numbers were read from this checkout (branch `261/vaclav/MPS-40315-java-import-resolution`).

## Goal

Let an agent do what the MPS UI offers for debugging generation:

1. see the **generation plan** of a model (steps, generators per step, checkpoints, forks);
2. run **make** with an explicit choice whether **transient models are kept**;
3. **browse the transient models** step by step and read a model's state after any step;
4. **trace a node backward and forward** through the steps, seeing the rules/templates/macros that produced it.

Constraint: as few new MCP tools as possible — extend existing tools, and when a new one is unavoidable make it multi-purpose.

## 1. What MPS already provides (facts)

### 1.1 Generation plan

Everything lives in the `generator-engine` module (`core/generator/generator-engine.iml`, packaged as `lib/mps-generator.jar`, always on the IDE classpath).

- `jetbrains.mps.generator.ModelGenerationPlan` (`core/generator/source/jetbrains/mps/generator/ModelGenerationPlan.java:41`): `getSteps()`, `getGenerators()`, `coversLanguage()`. Exactly three `Step` kinds: `Transform` (`:114`, `getTransformations(): List<TemplateMappingConfiguration>`, `getTemplateModels()`), `Checkpoint` (`:83`, `getName()`, `getIdentity()`, `isPersisted()`), `Fork` (`:166`, `getBranch()`, `getCondition()`). `Step` itself is an empty marker, no `describe()`.
- **Explicit plan** (devkit `@genplan` or the "Custom generation" module facet): `GenPlanExtractor` (`GenPlanExtractor.java:51`), `hasPlan(model)` (`:80`), `getPlan(model)` (`:227`, throws if there is none — call `hasPlan` first). Precedence: `CustomGenerationModuleFacet` on the owning module (`:85-119`), then imported devkits (`:129-219`, several devkit plans are merged into one composite plan with implicit forks). Diagnostics go to the `IMessageHandler` passed to the constructor as INFO messages with `SNodeReference` / `SModelReference` / `SModuleReference` hint objects.
- **Default plan** (computed from used languages and mapping priorities): `new jetbrains.mps.generator.impl.plan.GenerationPlan(model)` (`impl/plan/GenerationPlan.java:58`). Produces `Transform` steps only; exposes `getIgnoredPriorityRules()` / `getConflicts()` (`:123/:131`). It builds its `EngagedGeneratorCollector` with the deprecated global `LanguageRegistry.getInstance()` (`impl/plan/EngagedGeneratorCollector.java:62-66`), not the project registry.
- This is exactly what generation does: `GenerationSession.java:133-155` uses `options.getCustomPlan(model)` or falls back to `new GenerationPlan(model, extraLanguages)`, where `extraLanguages` come from the parameters provider (`:134-149`; nothing in the repository calls `addLanguagesEngagedOnGeneration` today, so the static recomputation matches); the Make facet installs explicit plans via `GenPlanExtractor.configurePlanFor(m)` (`languages/languageDesign/make/solutions/jetbrains.mps.make.facets/source_gen/jetbrains/mps/lang/core/plugin/Generate_Facet.java:400-415`).
- Rendering: `GenerationPartitioningUtil.toStrings(mappings)` (`impl/plan/GenerationPartitioningUtil.java:34`) gives the `"<templateModel>.*"` / `"<templateModel>.<mc>"` labels the UI shows. `EngagedGeneratorCollector` (`impl/plan/EngagedGeneratorCollector.java:46`, "public for debug/info actions") gives `getDirectlyUsedLanguages()`, `getGenerators()` and `dump(Consumer<String>)` — the "why was this generator engaged" trace.
- **The UI is the console.** "Show Generation Plan" (`plugins/mps-console/actions/source_gen/.../ShowGenerationPlan_Action.java:33`) inserts a `#showGenPlan` console command; the rendering is `PartitioningHelper` (`plugins/mps-console/lang/ideCommands/source_gen/jetbrains/mps/console/ideCommands/util/PartitioningHelper.java:45-215`) and `ShowGenPlan__BehaviorDescriptor.java:60-124`. Both are generated code of MPS modules that no `.iml` exposes, so the plugin cannot link against them; the logic is ~60 lines and is the template for a JSON renderer.
- Not printable: `ForkCondition` implementations have no `toString`. Not static: `TemplateMappingConfiguration.isApplicable()` and fork conditions are evaluated at run time, so a static plan lists MCs that generation may later drop.
- Preconditions: hold a read action; pass the project `SRepository`; undeployed languages are silently absent. Whether an explicit plan came from the module facet or from a devkit is **not exposed by any API**: it shows only in the INFO text `GenPlanExtractor` emits (`:231/:237`).

### 1.2 The "save transient models" flag

- Setting: `IGenerationSettings.isSaveTransientModels()` (`core/generator/source/jetbrains/mps/generator/IGenerationSettings.java:55`), setter on `IModifiableGenerationSettings` (`:26`), reached through the platform-wide `GenerationSettingsProvider.getGenerationSettings()` (`GenerationSettingsProvider.java:31`; a `CoreComponent`, so `mpsProject.getComponent(GenerationSettingsProvider.class)` works — the facet itself does that at `Generate_Facet.java:164/209`). The setter fires its listeners synchronously (`DefaultModifiableGenerationSettings.java:50-55`); the IDE listeners re-post to the EDT, so no lock is held across them. In the IDE the storage is the app service `GenerationSettings` (`workbench/mps-workbench/source/jetbrains/mps/ide/generator/GenerationSettings.java`, persisted in `generationSettings.xml`). The toolbar toggle and the status-bar widget both just call the global setter (`plugins/mps-make/source_gen/.../SaveTransientModelsAction.java:43-44`, `plugins/mps-make/plugin/source/.../TransientModelsWidget.java:73-74`).
- **Where make reads it** (`Generate_Facet.java`): the `configure` target's config phase copies the global value unconditionally into the facet variable (`:209-211`), and the execute phase writes it into the options builder (`:172`), overriding any `OptionsBuilder.saveTransientModels(...)` a caller passed via `GenerateFacetInitializer`. The config phase runs after `IScriptController.setup()`, so values seeded into the `IPropertiesPool` are overwritten too. **There is no per-invocation API**; the only supported knob is the global setting. The one gap is a caller `IScriptController.runConfigWithMonitor` writing the pool after `code.invoke(...)` (`workbench/mps-platform/jetbrains.mps.ide.platform/source_gen/jetbrains/mps/ide/make/WorkbenchMakeService.java:367-380` delegates that; `runJobWithMonitor` does not).
- **The make is asynchronous.** `WorkbenchMakeService.make(...)` (`:98-113`) returns a `Future` at once; the script, including the `configure` phase that reads the flag, runs later in a `Task.Backgroundable` (`:271-280`), and `done()` closes the session (`:267`) before the future completes.
- Effects of the flag at generation time: `GenerationController.java:132` creates a real `GenTraceImpl` only when it is on, else `GenerationTrace.NoOp`; `:153-154` publishes the trace. `GenerationSession.java:463/601/651/822/903` clone or discard intermediate models accordingly. With the flag off only output models and (outside test mode, capped by `numberOfModelsToKeep`) models with errors/warnings survive until the `Make.cleanup` target drops them (`Generate_Facet.java:500-508`).
- **Every make starts with `removeAllTransient()`** (`Generate_Facet.java:184`). Transient models never survive the next make, whoever triggers it.
- Unrelated knobs: `GenerationOptions.tracing(...)` / `getPerformanceTracingLevel()` is performance tracing, not the generation tracer. `GenTraceSettings` (`IGenerationSettings.java:84`: `groupByStep`, `compactTemplates`, `showEmptySteps`, `groupByChange`) affect presentation only.
- Headless: `BaseGeneratorWorker.java:40-70` mutates global settings for the other options; nothing in ant/command line exposes save-transient.

### 1.3 Transient models

- `TransientModelsProvider` (`core/generator/source/jetbrains/mps/generator/TransientModelsProvider.java`, `@AccessAsPlatformService`): one per project, obtained with `mpsProject.getComponent(TransientModelsProvider.class)` (IDE implementation `TransientModelsComponent`, registered in `workbench/mps-workbench/source/META-INF/MPSComponents.xml:47-48`). `getModules()` (`:236`, needs read access) returns the modules with published models plus the shared `checkpoints` module — this is what the project tree enumerates (`ProjectTree.java:105-112`, `TopHierarchyProjectViewNode.java:249-310`, `TransientModelsTreeNode.java`). `getTrace(SModelReference)` (`:253`). `removeAllTransient()` (`:228`).
- `TransientModelsModule` (`TransientModelsModule.java`): one per source module per make, named `<module>@transient<N>`, random module id, read-only; `getModels()` returns published models only; `TransientSModelDescriptor.getBranchSerial()` (`:401`, 0 = main branch, N = fork branch). `getTrace`/`publishTrace` (`:363-367`) are keyed by the original model's long name, so all `@N` models of one input share one trace and the last make wins.
- **Naming** (`impl/GenerationSession.java`): `foo@0` is the initial clone (`:173`); step outputs are `foo@<major+1>_<minor>` (`:705-718`), where `major` is the index into `plan.getSteps()` (checkpoint and fork steps consume an index without producing a model) and `minor` runs through pre-script clone, mapping iterations and post-script clone. **Forks** (`:377-401`): a branch restarts `major` at the fork's own index (`:273/:393`) and uses minor ≥ 101 (nested forks ≥ 201), so branch step k is named `<forkIndex+k+1>_<minor>` and **reuses the prefixes of later main-branch steps**; the FIXME at `:387` admits name collisions. Only the model reference plus `getBranchSerial()` identify a model unambiguously, never the name alone. A step that changes nothing produces no model (`:497-500`). There is no "final output" marker on the model; the output is only in `GenerationStatus.getOutputModel()` during the make.
- Checkpoint models live in the `checkpoints` module as `foo@<PlanIdentity.toPersistenceValue(checkpointName)>` (`impl/plan/CrossModelEnvironment.java:225-228`, `plan/CheckpointIdentity.java:57`) with a stable id (`:234-264`), carry model attributes `checkpoint` / `generation-plan` (`:57-60`, `isCheckpointModel` `:80`), survive makes, and are persisted to the generator caches by `CheckpointVault`. Unloading (swap-out) a transient model drops its attributes (`TransientModelsModule.java:183-186`), so `getAttribute("checkpoint")` may be null for a reloaded model. The `checkpoints` module is looked up by name in the shared repository (`TransientModelsProvider.java:155-174`), so it is **shared by all open projects**.
- Model ids are `IntegerSModelId`, so a transient model reference prints as `<moduleId>/i:<hex>(<module>@transient<N>/foo@1_0)`; node references are `i:<hex>(...)/<nodeId>`. `SModelReference.resolve(projectRepository)` works once `publishAll()` ran. A transient model does not link back to its original: the original is found by parsing `<module>@transient<N>` for the module name and using the shared long name.
- Transient node → original input node: `jetbrains.mps.textgen.trace.TracingUtil.getInputNode(node, repo)` (`core/kernel/source/jetbrains/mps/textgen/trace/TracingUtil.java:92`, user object `originalInputNode`). In-memory only, no rule information; this is what "Show Origin Node" uses.

### 1.4 Generation tracer

- The legacy tree tracer (`IGenerationTracer`, `TracerNode`, `pushRule`, …) **no longer exists**; only comments mention it. The current one is `jetbrains.mps.generator.GenerationTrace` (`core/generator/source/jetbrains/mps/generator/GenerationTrace.java:39`): `walkForward(SNode, Visitor)` / `walkBackward(SNode, Visitor)`, with `Visitor.beginStep(input, output)`, `change(inputRef, outputRef, templateRef)`, `endStep(...)`.
- Data model (`impl/GenTraceImpl.java`): a linked list of `Phase` (one per step: input/output `SModelReference`, flat list of `{inputId, outputId, templateRef}`). No kind tree: `template` is whichever generator node did the work — rule node (create-root/root-mapping/drop-root `TemplateGenerator.java:351/427/1014`, reduction `TemplateExecutionEnvironmentImpl.java:615`), template fragment (`TemplateContainer.java:84`), call site / weave (`CallSiteImpl.java:57/81`), `$LOOP$` macro in interpreted templates only (`TemplateProcessor.java:397`, FIXME: not traced for compiled templates). Deletion = `output == null`; created root = `input == null`. Copied nodes are not recorded; a node without a record falls back to the nearest recorded ancestor, resolved via the transient module's repository (`:233-269`) — so the walks need a read action, need the transient models published, and may swap unloaded models back in. The phases form one linked list across fork branches (`:107-127`), so a walk can cross branch boundaries. **What `template` actually is**, per call site: the rule node for create-root / root-mapping / drop-root / reduction (incl. template-switch cases and pattern rules); the rule node or the `TemplateCallMacro` / include macro for template-declaration calls and weaving (`RuleConsequenceProcessor.java:218`, `TemplateWeavingRuleInterpreted.java:127`, `TemplateProcessor.java:519/932`, compiled e.g. `Mapping_mc_concept_method_call.java:88`); the `callSiteNode` at `TemplateExecutionEnvironmentImpl.java:219`; and, interpreted templates only, the **parent of each template fragment** (`TemplateContainer.java:64/84`), i.e. a target-language node such as a `ClassConcept`, never a `TemplateFragment` or `TemplateDeclaration` node.
- `walkBackward` from a node of the original model returns nothing (no phase has that model as output); `walkForward` from an original-model node starts at the first phase assuming ids survive the `@0` clone (`:134-147`).
- Lifetime: exists only when the make ran with save-transient on; lives on the `TransientModelsModule`; dropped by the next make / "Remove Transient Models" / project dispose. Never persisted.
- UI (`plugins/mps-devkit/source/jetbrains/mps/ide/devkit/generator/`): `TraceBuilderUI implements GenerationTrace.Visitor` (`buildTrace`/`buildBackTrace` statics `:250/:259`, grouping/compacting per `GenTraceSettings`), `TraceNodeUI.getText` renders `[Concept] presentation (nodeId)` and the tree shows the target's model name as a second column. Only `INPUT`, `OUTPUT`, `TEMPLATE` kinds are produced. `TraceNodeUI`, `getResult()`, `GenerationTracerView` are package-private, so even with a `jetbrains.mps.ide.devkit` plugin dependency nothing is reusable; `TraceBuilderUI` is about 280 lines (visitor, grouping, compacting), of which the visitor core is small. Actions: `ShowGenerationTrace_Action` (forward, any node), `ShowGenerationTraceback_Action` (backward, transient nodes only).
- Different mechanisms, do not conflate: `jetbrains.mps.generator.trace.TraceRegistry` (binary event stream for an external client, nothing stored, no in-repo caller); `jetbrains.mps.textgen.trace.DebugInfo` / `TraceInfoCache` (output node → text position, from `trace.info`); checkpoint `CheckpointState` mapping labels (persisted, labels only).

## 2. What the plugin has today

- **One make path**: `AbstractOps.performMake(mpsProject, models, modules, rebuild)` (`plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/common/AbstractOps.kt:3958`), `MakeSession(mpsProject, handler, rebuild)` + `makeService.make(session, resources, null, null, monitor)` with a null controller. Four callers: `mps_mcp_alter_nodes MAKE` (`JetBrainsMPSNodeMcpToolset.kt:652` `opMake`, parameters `models|modules|wholeProject|rebuild`, schema at `:91`), `mps_mcp_scaffold_editor` (`JetBrainsMPSEditorMcpToolset.kt:224`), and `mps_mcp_alter_structure` twice (`JetBrainsMPSLanguageStructureMcpToolset.kt:780/813`). Other ways an agent can trigger a make: the console `#make` expression via `mps_mcp_run_console_command`, IDE run configurations, and the user's own Ctrl+F9 — all go through the same facet and all drop transient models.
- **Resolution already reaches transient models.** `resolveModelPreferringProject` / `resolveNodeReferencePreferringProject` (`AbstractOps.kt:3191/3395`) fall back to `mpsProject.repository`, where published transient models are registered. `mps_mcp_print_node` (`:1299`), `mps_mcp_query_nodes` (`:343/415`), `mps_mcp_open_node` (`JetBrainsMPSRootNodeMcpToolset.kt:48`) and `mps_mcp_check_root_node_problems` (`:969`, read path) therefore work on a transient node reference as is.
- **Write tools do not refuse transient targets properly.** `TransientSModelDescriptor extends EditableModelDescriptor` (`TransientModelsModule.java:385`), so the `model !is EditableSModel` guards (`AbstractOps.kt:752/780`, `AbstractNodeOps.kt:2502`) pass; the project-membership check then answers `crossProjectErr` (`AbstractOps.kt:1066-1072`), an `INVALID_REQUEST` that tells the agent to "pass its persistent reference" — misleading for a read-only transient model.
- **Name-based repository-wide fallbacks will hit transient copies.** `foo.structure@1_0` has long name `foo.structure`; the bare-name fallbacks in `resolveModel(repository, …)` (`AbstractOps.kt:3146`), root-name lookup (`:3327-3345`), concept lookups (`:2945/:3097`) and the data-type lookup in `JetBrainsMPSLanguageStructureMcpToolset.kt:946-962` (not even project-first) iterate `repository.modules`, which includes published transient modules. An `alter_structure` property type could bind to a transient node that the next make drops. A stereotyped model must be addressed by its full name (`foo@1_0`), which the name matcher already enforces (`:3159`). `mps_mcp_get_project_structure` lists repository modules only with `includeStubModules=true` (`JetBrainsMPSProjectMcpToolset.kt:354-358`) and resolves `startingPoint` repository-wide only in that mode (`:290-321`); nothing marks a module as transient.
- **Dependency gap (closed in phase 0).** `mcp-tools.iml` did not depend on `generator-engine` (no dependency re-exports it: `make-runtime` and `project-check` depend on it unexported), so the code reached `ModelGenerationStatusManager` by reflection. Phase 0 added the `orderEntry` and replaced the reflection with direct calls. The Ant build needed no change: `build/mpsMcpTools.xml:107` already had `lib/mps-generator.jar` on the plugin's compile classpath (generated from `plugins/mps-build/solutions/mpsBuild/models/build.mps`), and at run time the jar comes from the core plugin's `lib/` through `<depends>jetbrains.mps.core</depends>`.
- Skills already point agents at the UI: `mps-aspect-generator/references/algorithm.md:43` ("Show Generation Plan", "Save transient models"), `cookbook.md:45-47` (Generator Tracer tool), `SKILL.md:48`. The console skill documents `#showGenPlan` as an interpreted command (`mps-console/SKILL.md:38`). None of this is executable by an agent without a human reading the console/tool window.
- No bundled skill script references `mps_mcp_alter_nodes MAKE`, so extending its parameters does not trip `SkillScriptsDriftTest`.

## 3. Design

### 3.1 Tool surface

**Extend `mps_mcp_alter_nodes MAKE`** (no new tool):

- new optional parameter `saveTransientModels: boolean`. Omitted → the IDE's current setting is used, as today. `true`/`false` → applied to this make only (mechanism in 3.2).
- the result gains a `transientModels` block: `{saved: bool, droppedPrevious: bool, modules: [{module, reference, models: n}], traceAvailableFor: [<original model names>]}` — so an agent learns that its earlier transient refs are stale and where the new ones are, and a `warnings` entry when `saved=true` reminds that the next make (any tool, any user action) discards them.
- the three internal makes (`scaffold_editor`, `alter_structure`) keep the global setting, but their envelopes also carry `transientModels.droppedPrevious` so a debugging session is not silently invalidated.

**One new read-mostly tool, `mps_mcp_generation`** (operation + JSON parameters, the `JsonOrText` pattern of `query_nodes`), with these operations:

| operation | parameters | answers |
|---|---|---|
| `PLAN` | `model` (ref or full name), `ignoreExternalPlan?` | the generation plan (3.3) |
| `TRANSIENT_MODELS` | `model?` (original or transient; omitted = all) | published transient models grouped by original model and step, with references usable in `print_node` / `get_project_structure` (3.4) |
| `TRACE` | `nodeReference`, `direction: FORWARD\|BACKWARD`, `groupBy?: CHANGE\|NODE`, `compactTemplates?`, `includeEmptySteps?`, `maxChanges?` | the generation trace of a node (3.5) |
| `DROP_TRANSIENT_MODELS` | `includeCheckpoints?` (default `true`, as the UI action `RemoveTransientModels_Action.java:46` does via `removeAllTransients(true)`) | the UI's "Remove Transient Models"; frees memory. Refused while a make session is active; must run outside any MCP read action because `clearAll` takes its own write action (`TransientModelsProvider.java:69`); dropping checkpoints affects every open project (shared module, 1.3) and the envelope says so |

Why one new tool rather than four operations spread over `query_nodes` / `alter_nodes`: `PLAN` and `TRANSIENT_MODELS` are model-centric, not node-centric, so they do not fit `query_nodes`' contract or its already long description; a single `mps_mcp_generation` keeps the four generation concerns together for discovery by the generator skills, and still adds exactly one tool. The zero-new-tool alternative (operations `GENERATION_PLAN`, `TRANSIENT_MODELS`, `GENERATION_TRACE` on `query_nodes`, `DROP_TRANSIENT_MODELS` on `alter_nodes`) was considered and rejected by the owner (2026-10-23): one new tool it is.

**No tool for reading transient model content.** `print_node`, `query_nodes`, `open_node`, `check_root_node_problems` (read path) and `get_project_structure startingPoint=<transient model>` already work; 3.4 lists the small fixes that make them pleasant.

### 3.2 Per-invocation save-transient flag

Chosen mechanism: toggle the global setting around the make and restore it in `finally`:

```kotlin
val gs = GenerationSettingsProvider-from-platform.getGenerationSettings()   // IModifiableGenerationSettings
val previous = gs.isSaveTransientModels
if (requested != null && requested != previous) gs.setSaveTransientModels(requested)
try { makeService.make(...) } finally { if (...) gs.setSaveTransientModels(previous) }
```

**Placement inside `performMake` matters because the make is asynchronous (1.2):** the facet reads the flag on the background task thread, after `make()` has returned. So:
- flip only after `makeService.openNewSession(session)` returned `true` (`AbstractOps.kt:4055-4060`); session ownership is an atomic mark (`WorkbenchMakeService.java:138`) on the single app-level make service (`MPSComponents.xml:45-46`), so no other make reads the value before ours;
- do not flip on the no-input early return (`:4048`);
- keep it flipped across `future.get()` (`:4113-4115`); restore in a `finally` that also covers the `CancellationException` branch (`:4116-4120`);
- restore **before** the ClassLoaderManager reload and the 10 s language-reload latch (`:4122-4179`), so the window is as short as possible; whether this sits inside `MigrationAssistantGuard.holdingSuppression` is irrelevant.
- Residual window: `done()` closes the session (`WorkbenchMakeService.java:267`) slightly before `future.get()` returns, so a UI make started in that instant would read the flipped value. Accepted.
- This is what the UI toggle and headless workers already do; `performMake` already refuses to run when another session is active (`AbstractOps.kt:3968`).
- Side effects (owner-accepted, 2026-10-23): the status-bar `TransientModelsWidget` flips for the duration; `TransientModelsNotification.java:96-111` reads the flag at `scriptAboutToStart` (memory balloon) and at `sessionClosed` (expands the Transients folder in the Project pane), so both react to the flipped value; `GenerationSettings.getState()` would persist the flipped value if the IDE saved settings mid-make, and the restore makes the net change nil.
- Rejected: seeding the `IPropertiesPool` (overwritten by `configure`, 1.2); passing an `OptionsBuilder` via `GenerateFacetInitializer` (overwritten at `:172`); calling `GenerationFacade` directly (bypasses textgen/compile, changes make semantics).
- Follow-up (separate change, MPS language side): make `Generate_Facet.configure` honour a pool-provided `saveTransient` instead of overwriting it, so callers can pass the flag without touching global state. Requires editing the `jetbrains.mps.make.facets` solution via MPS MCP and regenerating `source_gen`.

### 3.3 `PLAN` result

Computed under a read action, mirroring `ShowGenPlan__BehaviorDescriptor`:

```
GenPlanExtractor gpe = GenPlanExtractor(repo, collectingHandler)
plan = gpe.hasPlan(model) && !ignoreExternalPlan ? gpe.getPlan(model) : GenerationPlan(model)
```

```json
{ "model": "...", "planSource": "EXPLICIT|DEFAULT", "explicitPlanOrigin": "FACET|DEVKIT|UNKNOWN", "externalPlanIgnored": false,
  "planDiagnostics": ["Devkit X has associated plan Y", ...],
  "steps": [
    {"index": 1, "kind": "TRANSFORM", "transientStereotypePrefix": "1_",
     "transformations": [{"label": "jetbrains.mps.lang.editor.generator.main.*",
                          "mappingConfiguration": "r:...", "templateModel": "...", "generatorModule": "...", "sourceLanguage": "..."}]},
    {"index": 2, "kind": "CHECKPOINT", "name": "...", "persisted": true, "checkpointModelName": "foo@<persistenceValue>"},
    {"index": 3, "kind": "FORK", "conditionPrintable": false, "branch": [ ...steps... ]}
  ],
  "generators": [{"module": "...", "alias": "...", "sourceLanguage": "...", "targetLanguages": [...]}],
  "usedLanguages": [{"language": "...", "coverage": "IN_PLAN|NOT_IN_PLAN|NO_GENERATORS|NOT_DEPLOYED"}],
  "conflicts": [...], "ignoredPriorityRules": [...],
  "engagedGeneratorTrace": ["...lines from EngagedGeneratorCollector.dump..."],
  "notes": ["Mapping configurations with an `isApplicable` condition and fork conditions are evaluated at generation time; the static plan lists all of them."] }
```

`planSource` is `hasPlan(model)`; `explicitPlanOrigin` has no API (1.1) and is derived by probing the owning module for a `CustomGenerationModuleFacet` (`ModelGenerationPlan.Provider` facet → `FACET`), else `DEVKIT` when `hasPlan` is true, never by parsing INFO text. `generators[].sourceLanguage` is `TemplateModule.getSourceLanguage().getNamespace()` (a `LanguageRuntime`, inherited from `GeneratorRuntime`).

`transientStereotypePrefix` is the link between the plan and 3.4: main-branch step `index` produces models `foo@<index>_<minor>`. For `FORK` branches the prefix is computed recursively: branch step k gets `<forkIndex+k+1>_` with minor ≥ 101 (nested: ≥ 201), and the step record carries `branch: <k-th branch>`; the same prefix can appear on the main branch, so the result also says `"prefixSharedWithMainBranch": true` where that happens (1.3).

### 3.4 `TRANSIENT_MODELS` result and read-tool fixes

Under a read action, `TransientModelsProvider.getModules()` (skip with a clear error while `makeService.isSessionActive`, as the project tree does):

```json
{ "saveTransientModelsSetting": true,
  "originals": [
    {"model": "foo", "traceAvailable": true, "transientModule": "mod@transient3",
     "models": [
       {"name": "foo@0",   "reference": "<moduleId>/i:1000(…)", "kind": "INITIAL_CLONE", "branch": 0, "roots": 12},
       {"name": "foo@1_1", "reference": "...", "kind": "STEP", "planStep": 1, "minor": 1, "branch": 0, "roots": 12},
       {"name": "foo@2_103", "reference": "...", "kind": "FORK_BRANCH", "planStep": 2, "minor": 103, "branch": 1, "roots": 3}
     ]}],
  "checkpoints": [{"name": "foo@cpName", "reference": "...", "checkpoint": "...", "generationPlan": "..."}],
  "notes": ["Models of unchanged steps do not exist.", "All transient models are discarded when the next make starts."] }
```

`kind`/`planStep`/`minor` come from parsing the stereotype, `branch` from `TransientSModelDescriptor.getBranchSerial()`; there is no API for them, and the parser must key on model reference + branch, not on the name (fork prefixes collide, 1.3); `planStep` is relative to the branch for `FORK_BRANCH` models. `originals[].model` is derived from `<module>@transient<N>` plus the long name and reported as a resolvable reference. Checkpoint attributes come from `ModelWithAttributes.getAttribute("checkpoint")` with a fallback to the stereotype when the model was unloaded and lost its attributes (1.3).

Read-tool fixes so transient content is first-class:
- `get_project_structure`: resolve `startingPoint` repository-wide when it names a transient model (`TransientSModule`/`TransientSModel` marker interfaces from `smodel`, visible today), and emit `transient: true` on such module/model records; with `includeStubModules=true` list transient modules under their own kind `transient`.
- `print_node` / `query_nodes`: nothing to change functionally; add a line to their descriptions that transient node references are accepted and that `TRACE` gives their origin.
- Write tools: add an explicit `model is jetbrains.mps.extapi.model.TransientSModel` → `NOT_EDITABLE` check to the `resolveEditable*` helpers (`AbstractOps.kt:752/780`, `AbstractNodeOps.kt:2502`), ahead of the project-membership check, with a hint naming the original model; today the answer is a misleading `crossProjectErr` (section 2). Test it.
- Name fallbacks: skip modules that are `TransientSModule` in every repository-wide name lookup (`AbstractOps.kt:3146`, `:3327-3345`, `:2945/:3097`, `JetBrainsMPSLanguageStructureMcpToolset.kt:946-962`), so a bare name never binds to a transient copy. Test with a transient copy present.

### 3.5 `TRACE` result

```
trace = TransientModelsProvider.getTrace(node.model.reference) ?: NOT_FOUND
          ("no generation trace for model X: rerun mps_mcp_alter_nodes MAKE with saveTransientModels:true")
trace.walkForward|walkBackward(node, visitor)
```

The visitor is a Kotlin port of `TraceBuilderUI`'s visitor core (the full class is ~280 lines; the grouping/compacting part is what gets ported): per step `{input, output}` model refs, changes as `(input, output) → templates`, grouping by change or by node, `compactTemplates` keeping only the most specific template per root (via `SNodeOperations.isAncestor`), empty steps dropped unless asked.

```json
{ "node": {"reference": "...", "concept": "...", "presentation": "...", "model": "foo@1_1"},
  "direction": "BACKWARD",
  "originalInputNode": {"reference": "...", "concept": "...", "presentation": "..."},   // TracingUtil.getInputNode, transient nodes only
  "steps": [
    {"input": "foo@1_0", "output": "foo@1_1",
     "changes": [
       {"input":  {"reference": "...", "concept": "...", "presentation": "..."},
        "output": {"reference": "...", "concept": "...", "presentation": "..."},
        "templates": [
          {"reference": "...", "concept": "Reduction_MappingRule", "role": "RULE", "presentation": "...",
           "templateModel": "jetbrains.mps.lang.editor.generator.main@generator", "generatorModule": "..."},
          {"reference": "...", "concept": "TemplateFragment", "role": "TEMPLATE", ...}]}]}],
  "notes": ["A transient node with no record is reported through its nearest recorded ancestor.",
            "Copied nodes have no trace entries.", "$LOOP$ and template fragments are recorded for interpreted templates only; compiled generators record rules and template calls."] }
```

`role` is derived from the template node's concept, matching what the engine actually records (1.4): `*_MappingRule` / `CreateRootRule` / `DropRootRule` / `PatternReduction_MappingRule` → `RULE`; `TemplateCallMacro` / `IncludeMacro` → `TEMPLATE_CALL`; `LoopMacro` → `LOOP`; any other node from a generator model (the fragment's parent, interpreted templates only) → `TEMPLATE`; unresolvable → `UNKNOWN`. `TemplateDeclaration` and `TemplateFragment` nodes are never recorded, so there is no role for them. This is the "which rule" information the user asked for, and it is richer than the UI's single `TEMPLATE` kind. Each template entry also carries `templateRoot` (the containing `TemplateDeclaration` or rule root, found by walking parents) so an agent can open the right root. Node-level unresolvable refs are reported as `{"reference": "...", "resolved": false}` with `<no input>` / `<no output>` for null ids, as `TraceNodeUI.getText` does. `BACKWARD` on an original-model node returns an empty `steps` plus a note (walkBackward has no phase for it).

### 3.6 Lifecycle rules the tools must state

- A make from any tool or from the UI starts by discarding all transient models and traces (`Generate_Facet.java:184`); the `transientModels.droppedPrevious` flag in every make result and a `notes` entry in `TRANSIENT_MODELS` / `TRACE` carry this.
- Traces exist only for makes run with the flag on; `TRANSIENT_MODELS` reports `traceAvailable` per original model.
- The `checkpoints` module is shared across open projects (1.3): `TRANSIENT_MODELS` lists checkpoint models of any project, says so, and `DROP_TRANSIENT_MODELS includeCheckpoints=true` affects all of them.
- The trace is keyed by the original model's long name: two models with the same long name in different modules collide (rare; note it).
- Memory: keeping transients is expensive for big models (the IDE's own balloon warns). `DROP_TRANSIENT_MODELS` is the release valve, and the skill text tells agents to make only the models they are debugging.
- `TRANSIENT_MODELS` and `TRACE` must not run while a make session is active (`makeService.isSessionActive`): refuse with a clear error rather than reading a module being torn down.

## 4. Implementation phases

**Phase 0 — dependency.** Add `<orderEntry type="module" module-name="generator-engine" />` to `plugins/mcp-tools/mcp-tools.iml`. Verify the plugin still builds through `build/mpsMcpTools.xml` (the jar is already on its classpath at `:107`). Optionally replace the two `Class.forName("...ModelGenerationStatusManager")` reflections with direct calls (small, separate commit). **Done (2026-10-23):** the `orderEntry` is in, both reflective calls are direct `ModelGenerationStatusManager` calls, and the IDEA project build is green. The Ant build was checked by inspecting the classpath (`build/mpsMcpTools.xml:107`), not by running it; no test compares `.iml` dependencies with the build script, so the TeamCity Ant build is the only gate.

**Phase 1 — MAKE flag + envelope.** `AbstractOps.performMake` gains `saveTransientModels: Boolean?`, the toggle/restore of 3.2, and the `transientModels` block (`droppedPrevious` computed from `TransientModelsProvider.getModules()` before the make **excluding `getCheckpointsModule()`**, which `removeAllTransient()` keeps (`clearAll(false)`, `TransientModelsProvider.java:68-79`); `modules`/`traceAvailableFor` after). `opMake` reaches `performMake` at `JetBrainsMPSNodeMcpToolset.kt:725`. `opMake` adds the key to `MAKE_PARAMETER_SCHEMA` (`JetBrainsMPSNodeMcpToolset.kt:91`) and the tool description. Tests in `AbstractOpsMakeTest` / `JetBrainsMPSNodeMcpToolsetExtendedIntegrationTest`.

**Phase 2 — `mps_mcp_generation` PLAN.** New toolset `JetBrainsMPSGenerationMcpToolset.kt` (register in `META-INF/plugin.xml`), a `GenerationOps` helper in `common/` with the plan renderer of 3.3. Reuses `resolveModelPreferringProject`, read-action helpers, `JsonOrText`, `rejectMissingParameters` and the operation-enum pattern of `query_nodes`. Every tool parameter gets a Kotlin default (`McpToolParameterOptionalityTest`).

**Phase 3 — TRANSIENT_MODELS + DROP + read-tool fixes** (3.4). Stereotype parser as a pure function with unit tests.

**Phase 4 — TRACE** (3.5). Visitor port, role derivation, grouping options with `GenTraceSettings` defaults.

**Phase 5 — skills and docs.** Update `mps-aspect-generator` (`SKILL.md` step 8, `references/algorithm.md`, `references/cookbook.md` "debugging misgeneration" recipe: MAKE with `saveTransientModels:true` → `TRANSIENT_MODELS` → `print_node` on the step model → `TRACE BACKWARD` on the wrong node → open the rule), `mps-aspect-generation-plan` (use `PLAN` to verify a plan instead of the UI), `mps-mcp-workflow/references/mcp-tools-index.md` (the tool index) and `analysis-tools.md`, `mps-console` (note `#showGenPlan` has an MCP equivalent). Propagate the changed skill folders to `.agents/skills/` and `.claude/skills/` (`SkillCatalogReplicationTest`), run `plugins/mcp-tools/scripts/validate_skill_catalog.py`.

Phases 1 and 2 are independent after phase 0; 3 and 4 depend on 1 (they need a make that kept transients to test against).

### Implementation notes (phases 1–4, 2026-10-23)

Phase 1 — commit `1340dd42c9b9`, independent Opus review (round 1 approve with nits, round 2 approve):
- The toggle lives in `common/SaveTransientModelsToggle.kt` (`withSaveTransientModels`); `performMake(..., saveTransientModels: Boolean? = null)` uses it as 3.2 prescribes.
- A "Nothing to make" result carries no `transientModels` block. `alter_structure` ORs `droppedPrevious` over its two makes; the smart-reference scaffold path carries the block too.
- `traceAvailableFor` probes `getTrace` per input model; the traces of a transient module cannot be enumerated.
- `droppedPrevious` is sampled before the make, so it can be `true` for a make that fails before `configure` removes anything.
- Test gaps: restore after a failed make is covered only by the helper unit test (a real make failure was impractical to force); the checkpoints exclusion was not exercised (the fixture publishes no checkpoint models); closed later, see the follow-up note after phase 5. `AbstractOpsMakeTest` is registered in `McpContractAndSkillsTestSuite`, not `McpNodeToolsTestSuite`.

Phase 2 — commit `1a77b48b7ed6`, independent Opus review (two rounds, approve with nits, all applied). `mps_mcp_generation` exposes `PLAN` only; the result differs from 3.3:
- `prefixSharedWithMainBranch` became `prefixShared`, set on every TRANSFORM step whose prefix any other step of the plan (main, sibling fork or nested branch) also writes.
- FORK steps carry `hasCondition` and `branchInputStereotypePrefix`; CHECKPOINT steps carry `plan`. `explicitPlanOrigin` is `FACET` or `DEVKIT` only; telling them apart builds the plan twice, as no API says which.
- `planDiagnostics` entries are `{kind, text, reference?}` objects. New top-level `generatable` and `planComputed`: with an undeployed used language no plan is computed (each computation would log a SEVERE per missing language) and `notDeployedLanguages` lists them; the `NOT_DEPLOYED` coverage value is dropped.
- A TRANSFORM step with no transformations ends its branch (`GenerationSession`); the result notes it.
- Corrections to 1.3: the minor number runs on through a whole branch rather than restarting per step; a fork writes its branch-input copy as `<forkIndex>_<minor+100>` and the branch's minors continue from there (101 and up, above 200 nested), not from a fixed 101. The deprecated `EngagedGeneratorCollector` constructor is at `:63-68`.
- Live check in a running MPS: `PLAN` on `jetbrains.mps.baseLanguage.scopes` returned a DEFAULT plan of 18 TRANSFORM steps and 14 generators (coverage `IN_PLAN` 10, `NO_GENERATORS` 3), with no WARN/SEVERE from the tool in `idea.log`. Explicit plans are verified by the integration test only (module-facet plan with CHECKPOINT and FORK).

Gate for both phases: the umbrella `McpToolsIntegrationTestSuite` passed except three `JetBrainsMPSJavaMcpToolsetIntegrationTest` "…directly imported model" tests, caused by a stale `languages/baseLanguage/baseLanguage.scopes/classes_gen` that predated the MPS-40315 `source_gen` (`build_project` does not compile MPS-compiled solutions). After an MPS make of that module the class passed 49/49.

Phase 3 — commit `6c05766e5679`, independent Opus review (round 1 approve with nits, 10 findings, two rebutted and accepted; round 2 approve). Logic in `common/TransientModelsOps.kt`, which also holds the shared helpers (`provider`, `isMakeSessionActive`, `refuseWhileMakeActive`, `isTransient`, `originalsOf`). Deviations from 3.4:
- `planStep` is replaced by `stereotypePrefix` + `minor`; the prefix is absolute (it matches `PLAN`'s `transientStereotypePrefix`), not branch-relative, and a branch's lowest-minor model is its input copy.
- Model records add `stereotype`, `originalModule`, `originalModelCandidates` / `originalResolved:false`, and `loaded:false` (with no `roots`) for swapped-out models; checkpoint records add `attributesAvailable:false` when the attributes were lost on unload.
- `parameters` stays required for every operation; pass `{}`.
- Transient models are addressable by reference only: every bare-name lookup skips transient modules, including full stereotyped names such as `foo@1_0`. `get_project_structure` reports kind `transient` (lowercase).
- `NOT_EDITABLE` also covers `COPY_NODE` from a transient source (the copy lands in the source's model) and the check tool's auto-applied quick fixes. The phase 1 MAKE warning no longer mentions bare names binding to transient copies.
- Live (MPS restarted from this worktree): TRANSIENT_MODELS, `get_project_structure`, `print_node` on transient content, NOT_EDITABLE refusals, bare-name binding and DROP verified, no WARN+ in `idea.log`; the review fixes landed after that restart.

Phase 4 — commit `1edef9a6c990`, independent Opus review (round 1 approve with nits, 12 findings; round 2 approve with nits, all applied). Logic in `common/GenerationTraceOps.kt`. Deviations from 1.4 / 3.5:
- There is no `IncludeMacro` concept. `TEMPLATE_CALL` covers `TemplateCallMacro`, `WeaveMacro`, `InsertCallSiteMacro` and `TemplateDeclarationReference`; `RULE` is matched by the ancestors `BaseMappingRule`, `ReductionRule`, `CreateRootRule`, `DropRootRule`, `DropAttributeRule` (the last is never traced by the engine).
- Steps add `inputReference` / `outputReference`; `templateRoot` is always present. The result adds `options`, `changesTotal`, `changesReturned`, `truncated` (counts are per entry); `maxChanges` defaults to 200. Defaults for the grouping options come from the IDE's current `GenTraceSettings`; `groupByStep` is not ported; templates are de-duplicated per change. `compactTemplates` can hide the enclosing rule, as in the UI, and the description says so.
- `originalInputNode` was absent in the live run (the UI does not use it either); tests assert it only when present.
- Fixture: roots are copied, never reduced, so the test concept extends `Statement` inside a method body. The interpreted path is covered; compiled-mode generators (no `$LOOP$` / fragment records) are not covered by a test.
- Live: MAKE `jetbrains.mps.lang.text.structure` with `saveTransientModels:true`, then TRACE FORWARD (DropRootRule→RULE, LoopMacro→LOOP, Reduction_MappingRule→RULE plus a fragment parent→TEMPLATE), BACKWARD with NODE grouping and `compactTemplates`, BACKWARD on an original node (empty steps + note), and NOT_FOUND with the recovery line; no WARN+ in `idea.log`.
- Follow-up: phase 4 now uses `TransientModelsOps.refuseWhileMakeActive`; no duplicate helper remains.

Final gate and live check on HEAD `b464d7aec354` (MPS restarted by the user after the phase 4 commit): umbrella `McpToolsIntegrationTestSuite` 1288 finished, 1 failed — `SkillCatalogReplicationTest`, caused by phase 5's blueprint edits being mid-propagation during the run, not by phases 0–4. Live: MAKE `jetbrains.mps.lang.text.structure` `rebuild:true saveTransientModels:true` kept 9 models; TRANSIENT_MODELS reported them with `loaded:false` (swapped out right after the make); COPY_NODE on a transient root → `NOT_EDITABLE` naming the original; TRACE BACKWARD on a generated class → `Root_MappingRule` as `RULE` with `templateRoot`, and `originalInputNode` present this time; no WARN+ in `idea.log`.

Phase 5 — commit `c043fcb672f7`, independent Opus review (round 1 approve with nits, all applied; round 2 approve). Skills `mps-aspect-generator` (step 8, `algorithm.md`, a cookbook pointer to the new `references/debugging-misgeneration.md`, split out to stay under the cookbook's 12288 B budget), `mps-aspect-generation-plan` (PLAN in step 8, `verification-and-discovery.md`, `authoring-checklist.md`; `checkpoints.md` corrected: the checkpoint model is `<model>@<lower-cased checkpoint name>` in the shared `checkpoints` module), `mps-mcp-workflow` (Generation section in `mcp-tools-index.md`, now 18403 B of its 18432 B allowance, plus `analysis-tools/generation.md`), `mps-console` (`#showGenPlan` → PLAN). Propagated to both catalogs; validator 33 skills / 426 Markdown files / 4 scripts; `McpContractAndSkillsTestSuite` 274/274. The recipe was walked live (PLAN on `jetbrains.mps.lang.text.structure` is EXPLICIT/DEVKIT with a persisted `DescriptorClasses` checkpoint; a trace lists only the steps that created or changed a node, not later copy-only steps). The skills tell agents to pass `compactTemplates:false` when the rule must show, since the defaults follow the IDE tracer settings.

Open follow-ups: the `Generate_Facet` pool-provided `saveTransient` (3.2, MPS-side) and a printable `ForkCondition` (risk 3, MPS core); test gaps — restore after a real failed make, compiled-mode generators in TRACE; the Ant plugin build has not been run (TeamCity is the first real check).

Follow-up, checkpoints exclusion in `droppedPrevious`: `JetBrainsMPSGenerationTransientModelsIntegrationTest` `MAKE droppedPrevious does not count the checkpoint models a make keeps` attaches a facet plan (TRANSFORM, then CHECKPOINT `cp1`) and makes with `saveTransientModels:true`. It then runs `DROP_TRANSIENT_MODELS includeCheckpoints:false` and asserts that `TransientModelsProvider.getModules()` holds only the `checkpoints` module. The next make must report `droppedPrevious:false` and must not list `checkpoints` among its `modules`; the make after that must report `true`. With the filter in `nonCheckpointTransientModules` removed, the test fails at the `droppedPrevious:false` assertion.

Restarting MPS for live checks: `mps_control.sh restart` relaunches from a capture in `$TMPDIR` that may belong to another worktree's MPS, and a fresh launch stops at a modal "Trust project" dialog. Restart by `mps_control.sh shutdown <project>` plus this worktree's IDEA `MPS` run configuration, and have the user confirm the dialog.

## 5. Tests

Integration tests sit in `plugins/mcp-tools/test/.../integration/` on `McpIntegrationTestBase` (`LanguageProducer(myProject).withGenerator(true)` already used in `JetBrainsMPSProjectMcpToolsetIntegrationTest.kt:401`). A trace needs a generator that actually reduces something, so the fixture must be a language with one concept, one reduction rule to a baseLanguage node (built via the existing blueprint tools in the test, as `JetBrainsMPSLanguageStructureMcpToolsetIntegrationTest.kt:1475` does for structure), one sandbox model using it, then a language make (which itself drops transients), then `MAKE rebuild=true saveTransientModels=true` on the sandbox. `GeneratorDescriptor.java:38` defaults `generateTemplates=false`, so a `LanguageProducer` generator runs **interpreted** and records fragment parents and `$LOOP$` that compiled MPS generators do not; assert rule-level records only, or add a compiled-mode case. Every new test class is registered in exactly one sub-suite (`SuiteRegistrationGuardTest`, `.agents/quality-gates.md:21`): the toolset integration test in `McpNodeToolsTestSuite`, the unit tests (stereotype parser, role derivation) in `McpContractAndSkillsTestSuite`. `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/06_*` validates MAKE envelopes and gets the new block. Cases:

- MAKE with the flag on/off: global setting restored afterwards (also when the make fails or is cancelled); `transientModels.saved`; models exist / do not exist; a further make reports `droppedPrevious=true` (checkpoints excluded) and the earlier references no longer resolve.
- `PLAN` for a plain model (DEFAULT, one TRANSFORM step, coverage `IN_PLAN`), for a model whose language has no generator (`NO_GENERATORS`), and for a `@genplan`-driven model (DEVKIT/FACET source, CHECKPOINT and FORK steps — the testbench has `gpfork@genplan` fixtures under `testbench/testsolutions/generator.test/models/`; reuse one or build a minimal plan model with the `mps-aspect-generation-plan` blueprints).
- `TRANSIENT_MODELS`: naming parsed into `planStep`/`minor`/`branch`, including a fork fixture; `print_node` and `get_project_structure startingPoint` on a returned reference succeed; a write tool on it fails with `NOT_EDITABLE`; a bare-name lookup with a transient copy present still binds to the original.
- `DROP_TRANSIENT_MODELS`: refused during an active make; afterwards `TRANSIENT_MODELS` is empty.
- `TRACE`: BACKWARD from an output node lists the reduction rule (`role: RULE`) and the input node; FORWARD from the sandbox node reaches the same output; BACKWARD from an original-model node returns empty steps with the note; without a trace → NOT_FOUND with the recovery line.
- Unit tests for the stereotype parser and the template-role derivation.
- Known flakiness notes: a concurrent MPS make from another session taints a suite run; run with no other JUnitStarter JVM on the machine.

## 6. Risks and open questions

1. ~~Tool-surface decision~~ — decided: one new `mps_mcp_generation` tool (3.1).
2. ~~Global-setting toggle~~ — decided: acceptable for phase 1 (3.2). The follow-up in `Generate_Facet` stays a separate MPS-side change.
3. **Fork conditions are not printable**; `PLAN` can only say a fork exists. Adding a `describe()` to `ForkCondition` is an MPS core change if wanted.
4. **Trace granularity**: the engine records rule/template/call-site nodes and (interpreted-only) `$LOOP$`; property/reference macros are not recorded. Agents get the rule and the template fragment, not every macro — same as the UI.
5. **Default plan vs. generation-time plan**: `GenerationPlan(model)` recomputes the partitioning; the plan actually used by the last make is not retained. Equal in practice, but `PLAN` should say it is computed now.
6. **Memory**: `numberOfModelsToKeep` and swap-out (`TransientModelsModule.clearUnused`) may leave a traced id unresolvable; report `resolved:false` rather than failing.
7. Other open projects share the repository; `TransientModelsProvider` is per project, so `TRANSIENT_MODELS` takes the project from `projectPath` like every other tool and lists only that project's task modules. The `checkpoints` module is the exception: it is found by name in the shared repository and belongs to every project (1.3).
8. **Transient copies in name lookups** (section 2, 3.4): until the `TransientSModule` skip lands, any bare-name fallback can bind to a transient node while transients are kept. Phase 3 fixes it; phase 1 must mention it in the MAKE warning when `saved=true`.

## Review log

Draft 3 (2026-10-23), Opus review, verdict "approve with changes", 16 findings, all folded in: blocking — toggle placement around the asynchronous make (3.2), role derivation versus what the tracer records (1.4, 3.5), write tools not refusing transient targets (2, 3.4); should-fix — fork stereotype collisions (1.3, 3.3, 3.4), `droppedPrevious` false positive from the checkpoints module (phase 1), extra UI side effects of the toggle (3.2), `DROP_TRANSIENT_MODELS` spec and shared checkpoints (3.1, 3.6, risk 7), transient copies in name lookups (2, 3.4, risk 8), test and convention gaps (5), `planSource` has no API (1.1, 3.3); nits — line numbers, checkpoint model naming, `getSourceLanguage()` type, trace walk preconditions, attribute loss on unload, deriving the original model.
