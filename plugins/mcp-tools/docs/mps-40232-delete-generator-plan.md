# MPS-40232 — `update_module` DELETE of a language-owned generator damages its language

Revision 4 (settled: Reviewer1 LGTM in round 3 once 1.5c was fixed; the round-3 non-blocking findings are applied too). Round 1 (Reviewer1): 3 blocking and 9 non-blocking findings, all adopted; the review confirmed the root-cause analysis. Round 2: 1 blocking finding (the round-1 B2 premise was wrong, because `resolveModule` is project-only) and 7 non-blocking findings, all adopted. Round 3: 1 blocking finding (1.5c could pass vacuously) and 5 non-blocking findings, all adopted.

## Live reproduction (MPS 261, started from source, `261/vaclav/MCP2` at `bf45a2caddc8`)
All four items of the report reproduce as described. Scratch languages were created with
`create_module(type=language, withGenerator=true)` under `/private/tmp/m40232p/` in the
`myMPS-fix` project, then cleaned up again.

| Step | Observed |
|---|---|
| DELETE `m40232.lang.generator`, no `deleteFiles` | `ok`. `.mps/modules.xml` no longer lists `m40232.lang.mpl`; the language stays registered; the `.mpl` still declares the generator. |
| then `update_module_facet` on the language (a `setModuleDescriptor`) | the generator is registered again (`revalidateGenerators`). |
| DELETE `m40232.lang2.generator`, `deleteFiles=true` | the whole `m40232.lang2/` folder is gone (`.mpl`, `models/`, `generator/`); `modules.xml` lost it; the language is still registered, now without files; `WARN IdeaFile - 7 listener(s) have not been unregistered for the path '/private/tmp/m40232p/m40232.lang2'`. A later DELETE of that language returns `fileDeletionWarning`. |
| DELETE language `m40232.lang3` (created `withGenerator`), `deleteFiles=true` | folder gone, generator gone, but `WARN IdeaFile - 1 listener(s) have not been unregistered for the path '/private/tmp/m40232p/m40232.lang3'`. |

## Root cause, confirmed in the code
- **Loader entries for generators.** A language-owned generator gets its own `ProjectModuleLoader`
  entry keyed to the language's `.mpl` in two ways: `LanguageProducer.create` → `project.addModule(generator)`,
  and at project open, because `ModulesMiner.fillOutcome` emits a generator handle per
  `GeneratorDescriptor` of a source `.mpl` and `loadDiscoveredModules` attaches each. So **every
  generator of a language in a project opened from disk** has one, not only freshly created ones.
  A generator added through the language descriptor (`create_module(type=generator)` →
  `setModuleDescriptor` → `revalidateGenerators` → `registerModule`) has none.
- **Item 2.** `ProjectBase.removeModule(generator)` finds that entry, and its continuation calls
  `moduleRemoved(<lang>.mpl)`. `StandaloneMPSProject.moduleRemoved` drops every project-descriptor
  entry for that file, which is the language's own entry.
- **Core shares item 2.** Two IDE paths hit it today:
  - `DeleteGenerator_Action` (mpsdevkit `actions.mps`) → `ModuleDeleteHelper.deleteModules` →
    `myProject.removeModule(g)`. Every owned generator of a project language is in
    `getProjectModulesWithGenerators()`, so this path is always taken. The action does not save the
    project, so `modules.xml` loses the language at the next save.
  - `PullGeneratorUpFromLanguage_Action` (same model, `source_gen` l.150) calls
    `myProject.removeModule(generator)` while the language stays.
  - The loss is not limited to the next open. Any `update()` in the same session reloads from
    `myProjectDescriptor` and unloads the language at once, e.g. `ModuleFileChangeListener.myMissingFileListener`.
  - `Renamer.removeFromProject` (l.576) stays correct under Phase 1.1 in either removal order;
    `renameLanguageWithSubmodules` covers it.
- **Item 3.** `deleteModule` never edits the parent `LanguageDescriptor`;
  `ModuleDeleteHelper.unregisterGeneratorFromLanguage` does.
- **Item 1.** `deleteModule` deletes `descriptorFile.parent`, which for a non-standalone generator is
  the language folder. `ModuleDeleteHelper` deletes only the generator's models and generated artifacts
  (`collectModelsAndArtifactsToDelete`).
- **Item 4.** `ProjectBase.removeModule0(language)` drops the owned generators' loader entries with
  `dropIfAttached`, which fires no `moduleRemoved(SModule, IFile)`. `ModuleFileChangeListener` keeps the
  generator tracked under the `.mpl` and never releases the listener. `ModuleDeleteHelper` has the same
  leak: it removes the language first, and the later `removeModule(g)` finds no entry.

## Plan
The fix lands in two commits: the core change with its testbench tests first, so whoever owns
`ProjectBase` can review it alone, then the MCP rework.

### Phase 0 — core YouTrack issue (not created yet)
MPS-40232 is filed under "Projectional Agent Toolkit", and YouTrack has no issue for the IDE impact.
When the plan is settled and before the core commit, file a core MPS bug.
- **Approval:** creating the issue is outward-facing, so ask the user for an explicit go-ahead at that
  point. This section existing is not approval.
- **Summary:** removing a language-owned generator from the project drops its language from
  `.mps/modules.xml`, and deleting a language leaks the `.mpl` file listener.
- **Body:**
  - the mechanism (Root cause above);
  - the two IDE paths, `DeleteGenerator_Action` → `ModuleDeleteHelper` and
    `PullGeneratorUpFromLanguage_Action`. State that they are derived from code and reproduced by
    test 1.5a, not clicked through in the UI;
  - a UI repro, labelled as expected behavior: Delete Generator without "Delete files", then Save All
    or restart, and the language is missing from the project;
  - the same-session `update()` effect;
  - the listener leak in `removeModule0(Language)`;
  - the behavior change, spelled out for core reviewers:
    - the public `ProjectBase.removeModule` (openapi `Project`) no longer drops the descriptor entry for a
      non-standalone generator whose language is still tracked;
    - `removeModule0(Language)` now fires `moduleRemoved` for owned generators;
  - bundled improvement, not part of the bug: Delete Generator now also removes the empty `generator/`
    folder, with an output-root guard (1.3);
  - history: in MPS-31650 (`d0f586ccc947`, 2020), `removeModule(g)` was the path for standalone
    generators only, so that their `.mpg` leaves `modules.xml`. 1.1 keeps that behavior by
    construction, since it skips only non-standalone generators;
  - environment: MPS 2026.1 EAP, build 261.x from source.
- **Fields:**
  - Type=Bug, set explicitly (MPS-40232 is a Task);
  - Subsystem taken from the project's schema (`get_issue_fields_schema`), not guessed;
  - Affected versions: no guessed range. The IDE path has called `removeModule` for owned generators
    since `5ca4eae8b71b` (2022-03-15, first in 2022.2.0). The current `addModule`/`attachModule` form
    dates from `c9313ed52d5e` (2026-01-08). Either check one older release branch for generator loader
    entries, or state only 2026.1 EAP;
  - the same assignee as MPS-40232;
  - link "relates to" MPS-40232.
- **Commits** (`.agents/git.md`):
  - the core commit is `core - <MPS-NNNNN> <summary>` with the new ID. `git log -- core/project` shows no
    consistent area tag, so the top-level directory name is used;
  - the MCP commit is `MPS-40232 - <summary>`, like the rest of this branch.

### Phase 1 — core (`core/project`, `core/module`)
1. **`ProjectBase.removeModule` continuation.** Before `removeModule0`, capture whether the module is a
   non-standalone `Generator` and its descriptor's source language. The continuation runs after
   `dissociateFromProjectRepo`, when the module may already be disposed.
   - Keep `detachModule(module, file)`.
   - Skip `moduleRemoved(file)` iff the module is such a generator and
     `getModuleDescriptorFile(sourceLanguage) != null`, i.e. its language is still tracked. That is the
     expression `isProjectModule` uses (`ProjectBase:268-279`), so no new loader method is needed.
   - It never blocks a language removal. A check for "any loader entry for the file" would: a stale
     generator entry arises when `Language.revalidateGenerators:236-245` unregisters a generator through
     `mrf.unregisterModule`, bypassing `ProjectBase`, and would keep a deleted language in `modules.xml`.
2. **`ProjectBase.removeModule0(Language)`.** For each owned generator that has an entry, call
   `detachModule(g, file)` **before** `dissociateFromProjectRepo(g)`; it drops the entry and fires the
   event. This matches `detachDroppedModules` ("fire event with module still attached") and replaces
   the silent `dropIfAttached`.
   - Re-entrancy checked: when `ModuleFileChangeListener.update` calls `removeModule0` from its
     `gone()` loop for a vanished `.mpl`, the call back into `MFCL.moduleRemoved` is safe.
     `Delta.gone()` is the Delta's own map, so there is no CME, and the explicit `forget` afterwards is a no-op.
   - `ChangesMonitor.moduleRemoved` (l.387) is unaffected.
   - Update the comment at `MFCL:86`: owned generators now fire, the module itself still does not.
3. **`ModuleDeleteHelper`: empty generator folders and the output-root guard.**
   - **New narrow public static helper** `generatorFoldersToPrune(Generator)`, an intentional API
     addition per `conventions.md`, so the MCP tool can report leftovers without duplicating the logic.
     - Both new helpers are annotated `@Internal` (`org.jetbrains.mps.annotations.Internal`, already used
       in `ProjectBase`): their only consumer is mcp-tools, and they must not become committed API.
     - Their javadoc says they need read access, because `getSourceRoots` asserts it.
     - It returns each non-null `FileBasedModelRoot.getContentDirectory()` of the generator. Null is
       skipped: it means an unresolved PathSpec.
     - A content root is excluded when it is, or is an ancestor of, the language's descriptor folder or
       one of the language's own model content or source roots. That happens in real projects:
       `LanguageProducer.createLanguageDescriptor` puts the language's content root at the language
       folder, and a legacy `${module}` generator resolves there too.
     - For an excluded root, the helper returns the generator's source-root folders (`getSourceRoots(kind)`,
       under read access, relative paths resolved against the content dir) and their ancestors strictly
       below the language folder.
   - **Pruning.** `deleteModules` adds the helper's result to `myLikelyEmptyDirs`, both for a deleted
     non-standalone generator and, in the language-delete branch, for each owned generator. That covers a
     generator folder outside the language folder (the T4 layout). `canDeleteDirIfEmpty` already accepts
     a tree of empty directories. The IDE's Delete Generator then also removes an empty `generator/`.
   - **Output-root guard,** inside MDH in the shared collection code (MDH:192-216), so the IDE gets it
     too. **Both branches use it:** a deleted generator, and each owned generator in the language-delete
     branch.
     - Protected set when only a generator is deleted: the language's descriptor folder, its model
       content and source roots, and its output paths.
     - Protected set in the language-delete branch: the language's descriptor folder and its model
       source roots. Its output paths may go, since the language is being deleted. The branch keeps a
       non-empty language folder (`myLikelyEmptyDirs`, not a force delete), and an owned generator with
       an output root at `${module}` would otherwise force-delete that folder, user files included.
     - Rule: a target is refused when it equals or contains a protected path, **or lies inside one of
       the language's model source roots** (e.g. `${module}/models/gen`). "Inside" does not extend to the
       descriptor folder or the content root, since every normal generator target (`generator/source_gen`)
       is inside those. Being inside a language output path is harmless, because it is regenerable.
     - MDH's exact force-delete targets: for each model, each `GenerationTargetFacet`'s
       `getOutputRoot(model)` and `getOutputCacheRoot(model)`, plus `JavaModuleFacet.getClassesGen()`.
     - A refused target (see Rule) is not deleted and is logged as a warning.
       `deleteModules` returns void; the tool reads the guard's result through the helper below.
     - The damaging case is a generator output root at `${module}`, which is the language folder.
     - To keep the decision in one place, the guard is a second public static helper,
       `protectedForceDeleteTargets(Generator)`, which `deleteModules` uses and the tool can report.
4. Update the stale comment in `removeModule` ("We don't keep ModulePath for these") and the
   `addModule` FIXME.
5. **Tests** in `ModuleIDETests`. The class is abstract; `ModuleIDETests1` and `ModuleIDETests2` run it
   under `PlatformTestSuite` (folder = name, and a generic dir), so each case runs twice. The language
   comes from `LanguageProducer`.
   - **a) Delete the generator through MDH, with and without `deleteFiles`, then `saveProjectInTest()`.**
     The assertions read the persisted state, because `getProjectModules()` and `isProjectModule(language)`
     stay true even on today's code.
     - Positive control first: after create and save, `.mps/modules.xml` (plain IDEA XML) names `<lang>.mpl`.
     - After the delete, it still does (red today).
     - `language.getModuleDescriptor().getGenerators()` no longer has the generator.
     - With `deleteFiles`: the `.mpl` and `models/` exist, and `generator/` is gone.
   - **b) Recording `ProjectModuleLoadingListener`** (`ProjectBase.addListener` is public):
     - deleting the language through MDH fires `moduleRemoved(generator, <lang>.mpl)` (red today);
     - deleting only the generator fires it for the generator and not for the language.
   - **c) Output-root guard, in two variants.** Each points the generator's output root (Java facet
     output, or a model's output root) through its descriptor at a protected path, then deletes the
     generator with `deleteFiles` through MDH:
     - **(i) The language folder.** Non-vacuous, because the `.mpl` is there: the `.mpl` and `models/`
       survive.
     - **(ii) The language's `source_gen`, with a marker file.** A fresh `LanguageProducer` language has
       no `source_gen`, so write a marker file into it first and assert that the marker exists before the
       delete (positive control) and after it.
     - **Red today:** today's MDH force-deletes the redirected target with no guard (MDH:205-214).
       Confirmed by running the test before the fix, like the others.
     - A third case for the language-delete branch: an owned generator with its output root at the
       language folder, and a marker file there that is not module content. Deleting the language with
       `deleteFiles` keeps the marker and the folder.
   - Run `ModuleIDETests1` and `ModuleIDETests2` in full, because `removeModule` sits on the rename and
     revert paths.

### Phase 2 — `JetBrainsMPSModuleMcpToolset.deleteModule` (second commit)
`resolveModule(mpsProject, name)` is project-only (`projectOnly = true`, `AbstractOps.kt:3162`; name path
over `projectModulesWithGenerators`, `:820`). A generator of a non-project language, or an orphan,
therefore never resolves and gets NOT_FOUND, both today and after the fix. MDH's
`filterOutNonProjectModulesWhenFilesKept` and the library-mutation path are unreachable through the
tool; T7 guards that gate.

Inside the existing command, branch on the resolved module:
- **Non-standalone `Generator`** (`!moduleDescriptor.isStandaloneModule`):
  - Delegate to `ModuleDeleteHelper(mpsProject).deleteModules(listOf(generator), false, deleteFiles)`.
    - It runs `removeModule(g)`, which keeps the `.mpl` entry after 1.1.
    - Then `unregisterGeneratorFromLanguage`: descriptor edit, `setModuleDescriptor`, `language.save()`.
    - With `deleteFiles`, it also deletes the data sources and artifacts (minus guarded targets) and
      prunes the empty folders (1.3).
    - Before the call, capture `generatorFoldersToPrune(g)` and `protectedForceDeleteTargets(g)`.
  - **Post-condition:** the generator is gone from the repository and from
    `parent.moduleDescriptor.generators`. This covers a read-only project language, or MDH skipping the
    descriptor edit.
    - On failure, still run the project save outside the command: the removal already happened, and
      skipping the save leaves memory and `modules.xml` out of sync.
    - Then return `INTERNAL_ERROR` naming what is left, e.g. "unregistered but still declared in
      `<lang>.mpl`; it returns on reload".
  - With `deleteFiles`, check the captured prune folders with `exists()` afterwards. Report any that
    remain, plus any guarded target, in `fileDeletionWarning` ("kept … : not empty" / "kept … : shared
    with the language").
  - Response: `{name, deleted:true, parentLanguage}` plus the warning when present.
  - Locking comment: MDH does file I/O inside the command (module saves, data-source deletes). The IDE
    does the same, and this is a deliberate exception to the tool's "o1" note. All IFile deletes stay
    inside the command's write action.
- **`Language`:** today's flow, plus `removeModule(g)` for each owned generator right before
  `removeModule(language)`, as `rollbackModulesRegisteredSince` does. This is belt and braces; test 1.5b
  exercises `removeModule0` on its own.
- **Everything else, including standalone generators:** unchanged.
- The project `save()` stays outside the command (MPS-40228).
- Update the `rollbackModulesRegisteredSince` KDoc and comment ("its side effect, dropping the
  project-descriptor entry for the .mpl, is safe only because …"). After 1.1 that side effect is gone.

### Phase 3 — mcp-tools integration tests (`JetBrainsMPSModuleMcpToolsetIntegrationTest`)
- Add an opt-in helper, `assertNoProblemsLogged(records)`. It fails on SEVERE (MPS `LOG.error` maps there;
  JUL has no ERROR) and on WARNING. It needs a `captureLogRecords` variant that keeps `record.level`,
  because `captureLogMessages` keeps only the message. Leave `assertNoStaleModuleTracking` and its 10
  call sites as they are.
- **Persisted-descriptor check:**
  - After `myProject.save()`, also call `PlatformTestUtil.saveProject(myProject.project)`;
    `saveProjectInTest` is package-private in `jetbrains.mps.ide`. Then read `.mps/modules.xml`.
  - Every test starts with a positive control: after create and save, `modules.xml` lists the `.mpl`.
  - If a test reloads through `update()` instead, match modules by reference, not by instance.
    `addModule` records `virtualFolder=null` and the descriptor stores `""`, so `update()` reports
    CHANGED_FOLDER and re-instantiates the language even on fixed code.
- Never assert `!isProjectModule(deletedGenerator)`. It stays true by design while its language is tracked.

| # | Setup | DELETE | Assert | Red today |
|---|---|---|---|---|
| T1 | language `withGenerator` (has a loader entry) | generator, no `deleteFiles` | `modules.xml` names the `.mpl`; generator gone from the repository and from `language.moduleDescriptor.generators`; the saved `.mpl` re-read through `ModulesMiner` has no generator; `language.setModuleDescriptor(language.moduleDescriptor)` does not bring it back; clean log | yes (`modules.xml`, `.mpl`, resurrection) |
| T2 | same | generator, `deleteFiles=true` | T1, plus `.mpl` and `models/` exist and `generator/` is gone; no `fileDeletionWarning` | yes |
| T3 | language without a generator, then `create_module(type=generator)` (no loader entry) | generator, both flags | T1/T2 | yes, by the resurrection and `.mpl` checks (and, with files, the language folder). The `modules.xml` check is green today: no loader entry. |
| T4 | as T3 but with an explicit generator `directory` outside the language folder | generator, `deleteFiles=true` | that folder is gone; the language folder is untouched | yes (language folder lost) |
| T5 | language `withGenerator` | language, `deleteFiles=true` | both unregistered, neither `isProjectModule`, no listener WARN | yes |
| T7 | generator of a language in a second project (not this one) | generator, `deleteFiles=true`, addressed twice: **by name** (searches only `projectModulesWithGenerators`) and **by module-reference string** (`ref.resolve` finds the foreign generator through the shared repository; only `isModuleInSelectedProject` stops it, so this path would leak if the gate were weakened) | NOT_FOUND both times; that language's descriptor and files unchanged. Cleanup of the second project removes each generator right before its language, so the log stays clean (MPS-40228). | no: a guard on the project-only gate. If someone flips that default, the MDH filter and the library mutation become reachable. |

Each "red today: yes" is confirmed by running the test before the fix.

### Phase 4 — docs
- In the `mps_mcp_update_module` DELETE line and in `mps-aspect-accessories/references/module-creation.md`
  (all three catalogs: blueprint, then copied over `.agents/skills` and `.claude/skills`;
  `SkillCatalogReplicationTest`), say that for a language-owned generator, DELETE:
  - removes it from its language's descriptor, rewriting the language's `.mpl`, even without `deleteFiles`;
  - without `deleteFiles`, leaves the generator's folder on disk, undeclared;
  - with `deleteFiles`, removes only the generator's models, its generated files and its folders once they
    are empty, never the language's folder or anything it shares with the language;
  - accepts only modules of the selected project; anything else is "not found".
- `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/13_update_and_delete_modules.md`: update it if it covers
  deleting a generator.

### Phase 5 — validation
- `build_project` for the touched modules.
- `ModuleIDETests1`, `ModuleIDETests2` (full), `JetBrainsMPSModuleMcpToolsetIntegrationTest`, then
  `McpToolsIntegrationTestSuite` (known single flaky failures: re-run before blaming the diff).
- Live, after restarting MPS from source: repeat the four reproduction steps.
  - Expected: the language and its `modules.xml` entry survive; the generator does not come back;
    only `generator/` is removed; no listener WARN in `log/idea.log`.

## Out of scope
- A language or solution DELETE with `deleteFiles` still force-deletes `descriptorFile.parent`. Two
  modules sharing a folder would both lose their files. Candidate follow-up issue.
- Related layout gap in the MCP tool: a language DELETE with `deleteFiles` leaves an owned generator's
  folder outside the language folder (the T4 layout) on disk, template models included, because only
  `descriptorFile.parent` is deleted. Same follow-up.

## Settled questions
1. **Core vs tools-only:** core (Phase 1), committed separately under its own core issue (Phase 0).
2. **Generator `deleteFiles` scope:** MDH semantics plus empty-folder pruning and an output-root guard,
   both inside MDH. No force delete.
3. **Orphan or non-project generator:** unreachable through the project-only `resolveModule`, which
   answers NOT_FOUND; T7 guards it. No precheck, no fallback branch.
