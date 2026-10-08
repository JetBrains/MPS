# Plan: run language migrations over MCP without the Migration Assistant dialog (D48)

Status: analysis done (2026-10-08), nothing implemented. Defect record: D48 in
`study/docs-defects.md` (S4-sonnet-1, round 9: server calls 52-56 all `MODAL_BLOCKED`, EDT blocked
in `Dialog.show` under `MigrationTrigger.runMigration`). Scenario S4 (`study/scenarios/S4/`) is the
measurement cell; `study/scenarios.md` calls its apply half "blocked for a tool gap".

Marking: **[M]** = measured or observed; **[C]** = read from code; **[I]** = inferred, still to be
verified.

## Summary

The dialog is not a side effect of generation. It is `MigrationTrigger`, a per-project watcher in
the `mps-migration` plugin, reacting to three events that a language rebuild over MCP produces, and
answering each of them by opening the modal `MigrationWizard`. The wizard is only one of two
front-ends to the same engine: the Ant task (`MigrationWorker`) already drives `MigrationTask`
headlessly through `AntTaskExecutionUtil.migrate`, with no UI at all. Everything an agent needs is
therefore already in place except two things:

1. a way to stop `MigrationTrigger` from opening the wizard on its own while an agent drives the IDE, and
2. an MCP tool that runs the headless engine and reports what it did.

The recommended design keeps the two operations the user mentioned (build the language, run the
migrations) as **two tool calls**, because the agent must be able to see what is pending before
rewriting consumer models, and because most language rebuilds have nothing to migrate. What changes
is that the build no longer opens a dialog: it leaves a sticky "Migration required" notification
(the thing MPS already shows when a human clicks *Postpone*), and the new tool applies the
migrations when the agent asks. Section 5 lists the alternatives and why they lose.

## 1. Findings

### F1. Where the dialog comes from [C]

Model `jetbrains.mps.ide.migration` in solution `jetbrains.mps.migration.component`
(`plugins/mps-migration/migration-platform/solutions/component/`, `<compileInIDEA/>`, generated
Java committed under `source_gen/`, compiled by the IDEA module `migration-platform`). Root
`MigrationTrigger` (node `6781485246382122239`):

- `MigrationAccess.get(mpsProject)` creates one `MigrationTrigger` per project in a UI IDE and a
  no-op `HeadlessMigrationExecutor` when the application is headless, unit-test or test mode.
  Tests and the Ant worker therefore never see the trigger; the study's live MPS always does.
- Three listeners funnel into `scheduleIfNewMigrations(MigrationSetup)` → `scheduleMigration(false)`:
  - `MyLangDeployListener.afterLanguagesLoaded` — fires when the rebuilt language is redeployed;
  - `SilentModuleVersionUpdater` — fires on `moduleAdded` / `moduleChanged` / language-import changes
    of any project module, after a batched EDT command;
  - `IMakeNotificationListener.sessionClosed` → `MigrationBlock.unblockMigrationsCheck` →
    `checkMigrationIfNecessary` → `checkMigrationNeeded`, when a check was suppressed while the make
    session was open.
- `scheduleMigration(force)` runs on the EDT (`invokeLater`, `ModalityState.nonModal()`), first a
  **modal progress** `Task.Modal("Synchronizing Files...")` (save all + VFS refresh + reload flush),
  then computes `MigrationSetup` and, when something is pending and nothing was postponed, calls
  `runMigration`, which is `new MigrationWizard(project, session).showAndGet()` — the modal wizard.
  A human who cancels gets `MigrationResult.POSTPONED`: the state is stored in `myPostponedState`
  and `myNotifications.showRequired(setup)` posts the sticky "Migration required / Migrate" balloon.
  Later checks only re-open the wizard for migrations not contained in the postponed set.
- `force == true` is reserved for explicit user actions (`RunMigrationAssistant_Action`, the
  notification's *Migrate* link). It bypasses the postponed set and may show
  `Messages.showMessageDialog` ("Migration can't start").

### F2. The headless engine already exists [C]

- `AntTaskExecutionUtil.migrate(Project, haltOnPrecheckFailure, haltOnDependencyError)` (same model,
  node `8164581507603015291`) builds `MigrationSetup` in a read action, wraps it in
  `MigrationSessionImpl` with a tracing `MigrationExecutor`, and runs `MigrationTask.run(progress)`,
  overriding `error()` to log the `MigrationError` problems. It then saves the repository. The Ant
  worker loads it by reflection from the module classloader (`ModuleClassCode`) because that code
  runs outside the IDE.
- `MigrationTask.run` is the same code the wizard's `MigrationStep` executes: force save,
  descriptor version update, cleanup migrations, missing-script / not-migrated-libs / pre-check
  gates (`MigrationsMissingError`, `NotMigratedLibsError`, `PreCheckError`), project migrations,
  language migrations (`MigrationSession.nextStepModule`, dependency-ordered, in a write action
  per step via `invokeAndWait`), post-check (`PostCheckError`). It must be called **off the EDT**
  (it uses `invokeAndWait` for every write and for `saveProject`), which is exactly the thread an
  MCP tool body runs on.
- `MigrationSessionImpl(project, setup)` derives the three step flags from the setup
  (`isRepositorySaveRequired`, `importVersionsUpdateRequired`, `isMigrationRequired`); the Ant
  path forces all three to `true`. The wizard path is the one to mirror.
- `MigrationSetup(project, modules)` restricts module migrations to the given modules; the
  version-update and project-migration parts stay project-wide.
- The migrated version is read off the deployed `LanguageRuntime` by `MigrationScriptCollector`, so
  the language must have been rebuilt and reloaded (`runtimeReady:true` from `MAKE`) before a
  migration is offered. `mps_mcp_update_module SYNC_VERSION` already reports `runtimeStale` for
  this.

### F3. What the mcp-tools plugin can reach [C]

- `migration-platform.jar` is one javac over `migration-platform/sources` **and**
  `solutions/component/source_gen` (`build/mpsMigrationCore.xml:100-102`); the solution's java facet
  is `compile="ext" classes="provided"`, so the MPS module's classes are the plugin classloader's
  classes. Plugin `jetbrains.mps.ide.migration.workbench` (`plugins/mps-migration`) carries that
  jar. The IDEA module `migration-platform` is what `testbench` already depends on (`PROVIDED`).
- `mcp-tools` currently depends on neither (`plugins/mcp-tools/mcp-tools.iml`,
  `META-INF/plugin.xml` depends on `jetbrains.mps.core`, `com.intellij.modules.mps`,
  `jetbrains.mps.ide.java`, `com.intellij.mcpServer`). Both dependencies are a one-line addition
  each; the generated `build/mpsMcpTools.xml` compile classpath needs
  `${artifacts.mpsMigrationCore}/migration-platform/lib/migration-platform.jar` and the plugin
  dependency, authored in `plugins/mps-build/solutions/mpsBuild/models/build.mps` and regenerated
  (`mps-distribution-build` skill).
- `IdeaPlugin/mps-migration/src/.../PluginMigrationProblemHandler.Plug` is the precedent for IDEA-side
  code configuring the trigger: a `StartupActivity` that waits for `MigrationAccess` through
  `DynamicComponentWarden.whenAvailable`, calls `MigrationAccess.get(mpsProject)` and configures
  the returned executor, undoing it on `projectClosing`.
- The MCP server plugin publishes an application-level `ToolCallListener` topic
  (`beforeMcpToolCall` / `afterMcpToolCall`, already implemented by `McpCallLogListener`) and
  `McpServerService.isRunning()`.

### F4. Why `mps_mcp_alter_nodes MAKE` is the trigger today [C] [M]

`AbstractOps.performMake` opens a real make session (`makeService.openNewSession`) and runs
`makeService.make(...)`; the trigger blocks its checks while the session is open and runs them on
`sessionClosed`. With the language redeployed, `MigrationSetup` finds the new script (consumer
stamp 0 < language version 1) and the wizard opens on the EDT right after the MCP response is
sent, so the *next* call is the one that times out with `MODAL_BLOCKED` (D48 evidence). The
`mps_mcp_reload_all` path named in D48 reaches the same code through `afterLanguagesLoaded`.

### F5. Things the headless run must respect [C]

- A make session in progress is a block cause for the trigger ("make session is in progress");
  the tool must refuse while `makeService.isSessionActive`, like `performMake` refuses a second make.
- Languages used by project modules that are not deployed block migrations
  (`MigrationNotificationsSupport.NOT_DEPLOYED`); `MigrationNotificationsSupport.getNotDeployedUsedLanguages`
  is package-private, but the same set is a read action over
  `MigrationModuleUtil.getMigrateableModulesFromProject` minus `LanguageRegistry` content.
- `MigrationTask.runForceSave` force-saves **every** project module (`forceSaveRecursively`),
  and `runVersionsUpdate` touches every migrateable module's descriptor. On a study project this is
  milliseconds; on the MPS-on-MPS checkout it rewrites hundreds of files. The tool must say so in
  its description and `check` must report `modulesToUpdateVersions` before anyone calls `apply`.
- After a wizard run the trigger does `cleanup()` (unloads every project model so migrated content
  is re-read) and clears `myPostponedState`; `AntTaskExecutionUtil` instead calls
  `repository.saveAll()`. A headless run inside a live IDE must do both, and must expire the
  "Migration required" balloon, otherwise the trigger believes a migration is still postponed.
- `MigrationTask.run` takes seconds to minutes. It must not sit under the 20-30 s
  `withModalTimeout` budgets; only its EDT hops are modal-sensitive, and they are inside the task.
  `performMake` (which waits on `future.get()` on `Dispatchers.IO`) is the precedent for a long
  tool body with `reportToolActivity` progress.

## 2. Design

Two halves. Both are needed: A without B leaves the agent with no way to migrate; B without A still
pops the wizard right after `MAKE` and blocks B's own call.

### A. `MigrationTrigger`: a suppressible auto-start (MPS model change, `jetbrains.mps.ide.migration`)

1. Add a second set of causes next to `MigrationBlock`: **assistant suppression**. Public API on
   `MigrationTrigger`:
   - `void suppressAutoAssistant(BlockCause cause)` / `void releaseAutoAssistant(BlockCause cause)`
     (same pairing discipline as `blockMigrationsCheck`; `BlockCause` is already public).
   - `boolean isAutoAssistantSuppressed()`.
2. In `scheduleMigration(force)`, when `!force && isAutoAssistantSuppressed()`:
   - skip the `Task.Modal("Synchronizing Files...")`; compute `MigrationSetup` in a background
     read action (no EDT, no modality);
   - if something is pending: `myPostponedState.set(newState)` and
     `myNotifications.showRequired(migrationSetup)` — byte-for-byte the existing POSTPONED branch,
     so a human at the same IDE still sees the balloon and can click *Migrate* (that is `force`,
     unchanged, wizard opens, as today);
   - nothing else: no wizard, no modal progress.
   `force == true` keeps its current behaviour. The `MigrationBlock` paths (not-deployed warning,
   make-session gating) are untouched.
3. Add the headless entry point the IDE lacks, on `MigrationTrigger` so it owns the lifecycle:
   `HeadlessMigrationOutcome runMigrationsHeadless(@Nullable Collection<SModule> modules, boolean haltOnPrecheckFailure, boolean haltOnNotMigratedLibs)`.
   It blocks the checks with its own `BlockCause` for the duration (as `scheduleMigration` does),
   runs `syncRefresh()` from the calling background thread (it already uses `invokeAndWait`
   internally), builds `MigrationSetup`, returns early with `NOTHING_TO_DO` when nothing is
   pending, otherwise runs `MigrationSessionImpl(project, setup)` through `MigrationTask` with a
   collecting `error()` override and a `MigrationExecutor` wrapper that records each
   `ScriptApplied` (module, script reference, from/to version) and each `ProjectMigration`; then
   `repository.saveAll()`, `cleanup()`, `myPostponedState.set(null)`, and expires the last
   notification. `HeadlessMigrationOutcome` is a plain data holder in the same model: status
   (`FINISHED`, `FINISHED_WITH_ERRORS`, `NOTHING_TO_DO`), applied steps, `MigrationError`
   short/long message and its `IssueKindReportItem` problems. The same class can later replace
   the inlined body of `AntTaskExecutionUtil.migrate`; not part of this plan.
4. Expose the dry-run data the tool needs without duplicating `MigrationSetup` logic:
   `MigrationSetup` is already public, and `AppliedScript.caption()/scriptReference()/affectedModules()`
   and `modulesToUpdateVersions()` give everything `check` reports. One addition:
   `MigrationTrigger.getNotDeployedUsedLanguages()` made public (it is a one-line delegate today).

Where to edit: MPS MCP node tools on the `MigrationTrigger` root (`mps-baselanguage`,
`mps-model-manipulation`; memory says opus subagents for `mps_mcp_*` work), then
`check_root_node_problems` on the touched roots, regenerate the model (its Java is
`<compileInIDEA/>`, so the `source_gen` diff is part of the commit) and compile `migration-platform`
in IDEA. The running MPS only picks the change up after a restart (`mps_control.sh`), which is also
when A can be verified live (section 4).

### B. mcp-tools: who suppresses, and the tool that migrates

**B1. Suppression lifetime.** Recommended: an agent session suppresses the auto-assistant for the
project it works on, for as long as the project is open.

- A `ToolCallListener` in mcp-tools (`beforeMcpToolCall`): on the first `mps_mcp_*` call that
  resolves to an MPS project, `IStartupMigrationExecutor.getInstance(mpsProject)` and, if it is a
  `MigrationTrigger`, `suppressAutoAssistant(MCP_AGENT_CAUSE)` once per project; a
  `ProjectManagerListener.projectClosing` releases it. The project is already resolved for every
  call (`projectPath` pre-dispatch), so this is a map lookup per call.
- Why not "always, when the MCP server is enabled" (`McpServerService.isRunning()` in a
  `ProjectActivity`): an IDE that merely has the server switched on would stop auto-opening the
  wizard for a human who never uses an agent. Tying it to the first tool call matches the actual
  condition ("an agent is driving this project") and needs no setting.
- Also offer a JVM override, `-Dmps.migration.assistant.auto=false`, read by `MigrationTrigger`
  itself (treated as a permanent suppression cause). It costs three lines, lets the study's
  `mps_control.sh` guarantee the dialog cannot appear even before the first tool call (the dialog
  can already be open when a session starts, see memory `mps-model-save-pops-migration-dialog`),
  and gives any CI-driven MPS a switch. Not a Registry key: the trigger lives in an MPS model and
  the study starts MPS with VM options already.

**B2. New tool `mps_mcp_run_migrations`** (new toolset `JetBrainsMPSMigrationMcpToolset`, registered
in `plugin.xml`; its test class goes into `McpWorkspaceToolsTestSuite`, next to the module tools).

Parameters:

| name | default | meaning |
|---|---|---|
| `mode` | `check` | `check` lists what a run would do and never writes; `apply` runs it |
| `modules` | all project modules | module references/names whose language migrations to apply (`MigrationSetup(project, modules)`); version update and project migrations stay project-wide, which `check` says in `warnings` |
| `haltOnPrecheckFailure` | `true` | the two `MigrationTask` flags, same names as the Ant task |
| `haltOnDependencyError` | `true` | |

`check` answer (read action, no EDT): `pendingModuleMigrations[]` (`{script, language, fromVersion,
toVersion, affectedModules[]}` from `AppliedScript`), `pendingProjectMigrations[]`
(`{description, cleanup}`), `modulesToUpdateVersions[]`, `blockers[]` (`make session active`,
`languages not deployed: [...]`, `language runtime stale: <lang> descriptor v=N runtime v=M` from
the `SYNC_VERSION` analysis in `MigrationUnitVersions`, `project migrated by a newer MPS` from
`ProjectMigrationsRegistry.checkMigratedToNewerVersion`), `wouldForceSaveModules: <count>`, and
`nothingToDo: true` when all three lists are empty.

`apply` answer: the `check` block as `planned`, plus `status`, `applied[]` (one row per module ×
script with the stamps before/after, read from `MigrationModuleUtil.getRecordedUsedLanguageVersions`
around the run), `projectMigrationsRun[]`, `errors[]` (`{message, path}` from
`MigrationError.getProblems`, the same `IssueKindReportItem.PATH_OBJECT` rendering
`check_root_node_problems` uses), `savedRepository: true`, `modelsUnloaded: true`. A blocker in
`check` is a rejection in `apply` (`INVALID_REQUEST` naming the blocker and the fix: `MAKE` the
language, wait for the make to finish, dismiss the dialog). `apply` runs
`MigrationTrigger.runMigrationsHeadless` when the executor is a `MigrationTrigger`, and the same
sequence inline (`MigrationSetup` → `MigrationSessionImpl` → `MigrationTask` → `saveAll`) when it
is the `HeadlessMigrationExecutor`, which is what the integration tests get. The body runs on the
tool's coroutine thread with `reportToolActivity` per `MigrationTask` step (a `ProgressMonitor`
adapter), no `withModalTimeout` around the whole run.

**B3. `MAKE` tells the agent that something is pending.** After a successful make whose targets
include a language, `performMake` computes `MigrationSetup(project)` in one read action and adds
`migrationsPending: <n>` with a hint naming `mps_mcp_run_migrations mode:"check"`. This is the
one place the two operations touch, and it is a report, not an action: it is what lets an agent
discover the second step without re-reading the skill, and it costs one read action only on
language makes.

### C. Documentation

- `mps-aspect-migrations/SKILL.md` step 6: replace "run the migration on a test model" with the
  `check` → `apply` sequence, the `migrationsPending` hint, and the force-save/version-update
  footprint; new `references/run-migrations.md` with the two answer shapes. Propagate to the three
  catalogs (`.agents/skills`, `.claude/skills`, `plugins/mcp-tools/resources/.../skills`).
- `mps-mcp-workflow/references/mcp-tools-index.md`: the tool row; the `reload_all` row loses its
  implicit "may open the assistant" warning once A is in.
- `mps-project-management/SKILL.md` and `study/scenarios/S10/done_criteria.md` keep "never run a
  migration" for the S10 lifecycle cell, which is about an *inherited* Migration Assistant of a
  pasted `migration.xml`, not about a language migration the worker wrote.
- Study: `scenarios.md` S4 paragraph and `docs-defects.md` D48 status; S4 `done_criteria.md`
  criterion 3 becomes measurable; the `mps_control.sh` `start` command gets the
  `-Dmps.migration.assistant.auto=false` option.
- Memory `mps-model-save-pops-migration-dialog`: add the override and the tool as the way out.

## 3. Tests

- `JetBrainsMPSMigrationMcpToolsetIntegrationTest` in `McpWorkspaceToolsTestSuite`: fixture built in
  the test (as `JetBrainsMPSModuleMcpToolsetIntegrationTest` does for `SYNC_VERSION`): a language
  with a `MigrationScript fromVersion 0` created through the factory (so `languageVersion` is 1),
  made with `rebuild=true`, and a solution whose model uses it at stamp 0. Assertions: `check`
  lists one pending script for the one module; `apply` returns `FINISHED` with one `applied` row
  `0 → 1`, the module descriptor records version 1, the model's language import version is 1; a
  second `check` is `nothingToDo`; `apply` with a make session open is rejected; `modules`
  filtering to an unrelated module reports nothing pending and writes nothing.
- **[I]** The test environment must load the `mps-migration` plugin: `MigrationSetup` calls
  `ProjectMigrationsRegistry` and `MigrationProperties.getInstance(project)`, a project service
  registered in `migration-platform/pluginBase.xml`. `McpToolsIntegrationTestSuite` adds plugins
  by folder (`cfg.addPlugin(...)`); add `plugins/mps-migration` as
  `jetbrains.mps.ide.migration.workbench` (it `<depends>` on `jetbrains.mps.ide.modelchecker`, so
  that folder may be needed too). If the service cannot be had in the test IDE, the `apply` test
  is a live-only check and the unit tests cover the `check` projection.
- `AbstractOpsMakeTest`: a language make reports `migrationsPending` (0 on the existing fixture).
- Part A has no automatic test: `MigrationAccess` never builds a `MigrationTrigger` in test mode.
  It is verified live (section 4).

## 4. Live verification (the study is the harness)

1. Restart MPS from the branch (`mps_control.sh`), open the `recipes-full` fixture, run S4's
   worker prompt once with an opus worker. Expected: no `MODAL_BLOCKED` in the call log, the
   "Migration required" balloon after the language `MAKE` (screenshot or `idea.log`
   `Notification` line), `mps_mcp_run_migrations apply` with one applied row, S4 criteria 3 and 4
   pass. `grep MigrationTrigger.runMigration` in a thread dump stays empty.
2. Same fixture, click the balloon's *Migrate*: the wizard opens (the `force` path is unchanged).
3. Open the checkout in a second MPS without the override, make a language change by hand: the
   wizard still opens, so a human IDE without an agent is unaffected.
4. Check `idea.log` for SEVERE during the run (memory `live-mcp-verification-check-idea-log`).

## 5. Alternatives considered

| option | verdict | why |
|---|---|---|
| One MCP call that builds the language and migrates (the question's fallback) | no | The agent cannot inspect what is pending before consumer models are rewritten project-wide; most language makes have nothing to migrate; and it does not stop the dialog, because `afterLanguagesLoaded` and `moduleChanged` fire for other reasons (reload, descriptor edits, a second make). B3 keeps the discoverability benefit. |
| `MAKE` runs pending migrations when `migrate:true` is passed | later, if S4 shows the extra call matters | Needs A anyway; is a thin wrapper over B2. |
| Make the MCP EDT dispatch use `ModalityState.any()` so calls go through while the wizard is up | no | Write commands under a foreign modal dialog are what the modality system exists to prevent; the wizard would also still migrate when a human clicks through. |
| Have the mcp-tools `ToolCallListener` hold a `MigrationBlock` cause (`blockMigrationsCheck`) instead of a new suppression | no | Blocking also silences the "Migration required" balloon and the not-deployed warning, and `unblockMigrationsCheck` on project close re-runs the check, so the wizard pops at the worst moment. The postponed-state branch is the right existing behaviour to reuse. |
| Product-wide: never auto-open the wizard, always notify | out of scope here | A UX decision for the MPS team. A delivers it as a one-flag change (`-Dmps.migration.assistant.auto=false` is that behaviour), so the team can flip the default later without new code. |
| Call `AntTaskExecutionUtil.migrate` from the tool, no trigger changes | no | Does not stop the dialog (A is still needed), forces all three steps, forgets to unload models and expire the balloon, and logs errors instead of returning them. |
| Reflection through `ModuleClassCode`, no plugin dependency | no | The classes are plugin-classloader classes (F3); a compile-time dependency is cheaper and type-checked. |

## 6. Phases

0. Agree on B1 (per-project suppression on first tool call + JVM override) and the tool name.
1. Part A in the MPS model, regenerate, compile `migration-platform`, restart MPS, verify 4.2 and 4.3.
2. Part B2 + B3 in mcp-tools, with the iml/plugin.xml/build.mps dependencies and the test suite plugin.
3. Tests (section 3), `McpWorkspaceToolsTestSuite` + `McpContractAndSkillsTestSuite`.
4. Docs (section C), skill propagation, `SkillCatalogReplicationTest`.
5. Live S4 round (section 4), D48 to the archive.
