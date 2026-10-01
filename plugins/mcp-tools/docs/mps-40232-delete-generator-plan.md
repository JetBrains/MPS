# MPS-40232 — `update_module` DELETE of a language-owned generator damages its language

Revision 1 (draft for review).

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
- **Core shares item 2.** `ModuleDeleteHelper.deleteModules` (used by the IDE's Delete Module action and
  by the deprecated `DeleteGeneratorHelper`) calls `myProject.removeModule(g)` for a generator that
  `getProjectModulesWithGenerators()` lists, which is every owned generator of a project language.
  So deleting a generator in the IDE should drop its language from `modules.xml` too. Not checked
  live (it needs the UI), but the Phase 1 test below shows it.
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

### Phase 1 — core: `ProjectBase` (`core/project`)
1. **`removeModule` continuation:** after `detachModule(module, file)`, call `moduleRemoved(file)` only if
   no other loader entry still uses `file`. Add a package-private
   `ProjectModuleLoader.isTracked(IFile)` (`!myStore.select(Set.of(file)).isEmpty()`).
   Effect: removing a generator while its language stays keeps the language in the project
   descriptor. Removing the language (last entry for the file) still drops it. Fixes item 2 for
   `ModuleDeleteHelper` and every other caller, with no API change.
2. **`removeModule0(Language)`:** for each owned generator, replace the silent
   `dropIfAttached(g)` with `detachModule(g, file)` when an entry existed, so `ProjectModuleLoadingListener`s
   (`ModuleFileChangeListener`, `ChangesMonitor`) get `moduleRemoved(g, file)`. Fixes item 4 for
   every caller, including `ModuleDeleteHelper` and `ModuleFileChangeListener.update`'s own
   `removeModule0(resolved, null)` for a vanished `.mpl` (its later explicit `forget` is then a no-op).
3. Update the stale comment in `removeModule` ("We don't keep ModulePath for these") and the `addModule` FIXME.
4. **Test** in `testbench/tests/jetbrains/mps/ide/ModuleIDETests.java` (already in `PlatformTestSuite`), next to
   `revertDeletedModule0`. Create a language with `LanguageProducer`, then
   `ModuleDeleteHelper.deleteModules([generator], false, deleteFiles)` with and without `deleteFiles`, then `save()`.
   Assert:
   - the language is still in `getProjectModules()`;
   - `isProjectModule(language)` holds;
   - after a project save and `refreshProjectRecursively()`, the language is still in the project descriptor;
   - the generator is gone from `language.getModuleDescriptor().getGenerators()`.

   A second test deletes a language that has a generator, with `deleteFiles`, and asserts that no
   `have not been unregistered for the path` WARN is logged. This needs a log capture in testbench,
   which does not exist yet. If it is not cheap there, cover this case only in the mcp-tools test
   (Phase 3).

### Phase 2 — `JetBrainsMPSModuleMcpToolset.deleteModule`
Branch on the resolved module inside the existing command:
- **Non-standalone `Generator`** (`!moduleDescriptor.isStandaloneModule`):
  - Reject up front with `INVALID_REQUEST`, before anything changes:
    - the parent language is read-only (packaged): `unregisterGeneratorFromLanguage` would skip it and the generator would return;
    - the parent language cannot be resolved. Fallback instead: plain `removeModule`, no file deletion. Reviewer to pick one.
  - Before anything is removed, with `deleteFiles`, collect the generator's content-root folders, the
    `contentDirectory` of each `DefaultModelRoot`. Exclude any folder that is, or is an ancestor of, the
    language's descriptor folder or one of the language's own model roots.
  - Delegate to `ModuleDeleteHelper(mpsProject).deleteModules(listOf(generator), false, deleteFiles)`.
    It does `removeModule(g)` (which no longer drops the `.mpl` entry after Phase 1), then
    `unregisterGeneratorFromLanguage` (descriptor edit, `setModuleDescriptor`, `language.save()`),
    and with `deleteFiles` deletes the model data sources and generated artifacts.
  - With `deleteFiles`, prune empty directories bottom-up under each collected content-root folder,
    including the folder itself. User files are never deleted. A folder left non-empty is reported in
    `fileDeletionWarning` (e.g. "kept … : not empty").
  - Response: `{name, deleted:true, parentLanguage:<name>}` plus the warning when present.
- **`Language`:** keep today's flow, but call `removeModule(g)` for each owned generator right before
  `removeModule(language)`, as `rollbackModulesRegisteredSince` does. It is redundant after Phase 1.2,
  but it keeps the tool correct if the core change is reverted. Reviewer: keep or drop.
- **Everything else, including standalone generators:** unchanged.
- The project `save()` stays outside the command (MPS-40228).
- Update the `rollbackModulesRegisteredSince` KDoc and comment that say "its side effect, dropping the
  project-descriptor entry for the .mpl, is safe only because …". After Phase 1.1 that side effect is gone.

### Phase 3 — mcp-tools integration tests (`JetBrainsMPSModuleMcpToolsetIntegrationTest`)
The log check uses the existing `captureLogMessages` and `assertNoStaleModuleTracking`, extended to
fail on any SEVERE or ERROR as well.

| # | Setup | DELETE | Assert |
|---|---|---|---|
| T1 | language `withGenerator` (loader entry) | generator, no `deleteFiles` | language registered and `isProjectModule`; the project descriptor (`StandaloneMPSProject.projectDescriptor`, test-only use of the deprecated getter, or `modules.xml` after a save) still lists the `.mpl`; generator absent from the repository and from `language.moduleDescriptor.generators`; re-reading the saved `.mpl` (`ModulesMiner`) shows no generator; `language.setModuleDescriptor(language.moduleDescriptor)` does not bring it back; clean log |
| T2 | same | generator, `deleteFiles=true` | as T1, plus `.mpl` and `models/` exist and `generator/` is gone; clean log, no `fileDeletionWarning` |
| T3 | language without a generator, then `create_module(type=generator)` (no loader entry) | generator, both flags | as T1/T2 |
| T4 | T3 with an explicit generator `directory` outside the language folder | generator, `deleteFiles=true` | that folder is gone, the language folder is untouched |
| T5 | language `withGenerator` | language, `deleteFiles=true` | both unregistered, neither `isProjectModule`, no listener WARN (red today) |
| T6 | generator of a read-only language | generator | `INVALID_REQUEST`, nothing changed (only if a read-only language fixture is cheap; otherwise drop) |

Red-before-green: T1, T2 and T5 must fail on the current code. Each one is checked by running
it before the fix.

### Phase 4 — docs
- `mps_mcp_update_module` description, DELETE line: for a language-owned generator, DELETE removes it
  from its language's descriptor; `deleteFiles` removes only the generator's models, generated files,
  and empty generator folders, never the language folder.
- `mps-aspect-accessories/references/module-creation.md`: the matching sentence, in all three catalogs
  (blueprint, then copy to `.agents/skills` and `.claude/skills`; `SkillCatalogReplicationTest`).
- `test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/13_update_and_delete_modules.md`: check whether it describes
  generator deletion; update it if so.

### Phase 5 — validation
- `build_project` for the touched modules (core project, mcp-tools, testbench).
- Run the new `ModuleIDETests` cases (through `PlatformTestSuite` or a scratch suite) and the
  mcp-tools `JetBrainsMPSModuleMcpToolsetIntegrationTest`. Then run `McpToolsIntegrationTestSuite`
  (known single flaky failures: re-run before blaming the diff).
- Live: restart MPS from source and repeat the four reproduction steps above. Expected: the language
  and its `modules.xml` entry survive; the generator does not come back after a descriptor change;
  only `generator/` is removed; no listener WARN in `log/idea.log`.

## Open questions for review
1. Is a core change (Phase 1) acceptable here, or should the fix stay inside mcp-tools? A tools-only
   fix cannot remove a generator's loader entry without the `moduleRemoved(.mpl)` side effect:
   `removeModule0`/`ProjectModuleLoader` are package-private. It would have to snapshot and restore
   `StandaloneMPSProject.projectDescriptor` (deprecated for removal, and it runs `update()`), or leave a
   stale loader entry, which logs `is not found in the project repository` on every project-module
   listing.
2. Generator `deleteFiles` scope: `ModuleDeleteHelper` semantics plus empty-directory pruning (proposed),
   or force-delete the generator's content-root folder like the tool does for whole modules?
3. Orphan non-standalone generator (parent language not resolvable): reject, or `removeModule` without files?
