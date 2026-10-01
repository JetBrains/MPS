# MPS-40228 — `create_module` fails near the filesystem root and leaves a half-created module

Revision 3 (settled: reviewer LGTM after three rounds; Phase 3 deferred in round 2). The implementation departs from it in two places, both found in code review:
- **Phase 2's MacrosFactory probe became an explicit depth rule** (root `/`, fewer than three name elements). The probe accepted `/sol`, and `/work/sol` when `/work` does not exist: for a folder that is not in the VFS, `IdeaFile.getParent()` slices the path string down to `getFile("")`, which throws `PathFormatException` instead of `PathResolutionException`. The rule does not retire itself, so Phase 5 must remove it.
- **`CreatedPaths` records an existing target recursively.** It is capped at 10,000 entries; past the cap it falls back to an uncapped first level, and rollback stays on that level. This way files added inside a pre-existing subfolder, such as an empty `models/`, are removed too. Targets that cannot be listed are reported as leftovers. Root-cause comment posted on the issue: `#focus=Comments-27-14474835.0-0`.

## What the report says
`mps_mcp_create_module(type=solution, directory=/tmp/verify_e46966c_sol)` returned `INTERNAL_ERROR`
and still left the module registered and `/tmp/verify_e46966c_sol/models` on disk. The report guessed
the macOS `/tmp` → `/private/tmp` symlink was to blame.

## Findings
1. **The trigger is path depth, not the symlink.** From `log/idea.log`, the failing chain is:

   `SolutionProducer.create:45` → `Solution.save:71` → `AbstractModule.save:337` (shrinks the
   output root, `${module}/source_gen`) → `PathSpec.shrink` → `MacroHelperImpl.shrinkPath` →
   `MacrosFactory$ModuleMacros.shrink` → `Macros.shrink(path, prefix)` → `FileUtil.getRelativePath`,
   which throws `PathResolutionException`.

   `ModuleMacros.shrink` offers `${module}/..` (`MacrosFactory.java:145-149`) and
   `${module}/../..` (`:151-161`). Every absolute path "starts with" `/` (`Macros.java:85`), but
   `"/".split("/")` is empty, so `getRelativePath` finds no common element (`FileUtil.java:492-504`).
   - A module folder at `/<mod>` fails through the parent alternative. One at `/<a>/<mod>` fails
     through the grandparent alternative. Three or more levels works.
   - This is a known FIXME from `cef002796f03` (2023), which also names `CloneModule_Test`.
   - Windows is not affected: `"C:/".split("/")` gives `["C:"]`.
   - **Devkit** is most likely unaffected. `save()` applies `ModuleMacros` to every module through
     `MacrosFactory.forModule` (`PersistenceContextImpl.java:34`), but a devkit has no output root,
     model roots or facets to shrink.
   - **Generator** is unaffected: a language-owned generator's anchor is the parent `.mpl`, so an
     explicit near-root generator `directory` never hits the bug.
   - The UI "New Solution" wizard uses the same producer and fails the same way.
2. **The producers register modules before saving them.**
   - `SolutionProducer.create` and `DevkitProducer.create` call `addModule` and then `save()`.
   - `LanguageProducer.create` calls `addModule(language)` (`:74`) and `addModule(generator)`.
   - `LanguageAndSolutionsProducer` then creates the runtime and sandbox solutions as siblings,
     at `moduleDir.getParent()/<name>.runtime|.sandbox`.
   - A throw after an `addModule` leaves registered modules behind.
   - The `models` directory from the report is created by `SolutionProducer.createSolutionDescriptor`
     (`:73`), not by the tool.
3. **The tool neither rolls back nor reports the cause.**
   - The solution, devkit and language branches catch only ISE and IAE, and rethrow them as
     `McpInvalidRequestException` *without* a rollback.
   - Any other `RuntimeException` escapes `executeCommand`.
   - Apart from the near-root case, two failures reproduce today on every OS and leave modules
     registered:
     - (a) `type=language, withGenerator=true` into an existing directory that already contains
       `generator/`. `LanguageProducer:83` throws IAE after `addModule(language)`.
     - (b) `type=language, withRuntime=true` when `<parent>/<name>.runtime/models` is non-empty.
       `SolutionProducer:70` throws ISE after the language and its generator are registered and
       saved.
     These are the main reason for Phase 1: Phase 2 stops the near-root case before it reaches the
     producer.
   - **The SEVERE log entries have two sources:**
     - One escaping exception is logged at two nested `ActionDispatcher.dispatch` levels
       (`ActionDispatcher.java:91-95`). That happens for every `RuntimeException`, including
       today's `McpInvalidRequestException` collision path.
     - A third entry comes from `SilentModuleVersionUpdater.ModuleBatchUpdater`, which saves the
       still-registered module after the command.
     Catching inside the command and rolling back inside the same command removes all three.
4. **The directory is created before the producer runs.** `fs.getFile(dir).mkdirs()`
   (`JetBrainsMPSModuleMcpToolset.kt:373`) can create several ancestor levels. Nothing removes them,
   and the return value is ignored.
5. **The VFS can lag behind the disk.** `IdeaFile.exists()` and `getChildren()` read the VFS without
   a refresh (`IdeaFile.java:207-219, 340-343, 656-668`). A folder an agent just created with
   `mkdir -p` can therefore look missing. Any "did this call create it?" bookkeeping must use
   java.nio.
6. **Restricting to the project root was considered and rejected.**
   - It doesn't fix the defect: `/workspace/sol` inside a project at `/workspace` still fails, and
     `/private/tmp/x` works today.
   - MPS allows modules outside the project directory, and scratch workflows rely on that.
   - Where the MPS project is a subdirectory of the repository (mbeddr's `tools/BigProject`),
     modules outside the project directory are normal and under VCS.
   - A non-blocking "not portable" warning was planned instead and then deferred. See the section
     below.

## Plan

### Phase 0 — confirm the rule (live MPS or a scratch test)
- A solution at `/tmp/<x>` fails, while `/tmp/<a>/<x>` and a `createTempDirectory` path one level
  deeper both work.
- A devkit at `/tmp/<x>` is expected to work. If it fails, add devkit to Phase 2's scope, with a
  `.msd` probe anchor as below.
- Clean up with `update_module DELETE deleteFiles=true`.

### Phase 1 — failure-atomic creation (`JetBrainsMPSModuleMcpToolset`)
1. **Take the snapshot before the `mkdirs()` at `:373`,** inside `executeCommand`:
   - `modulesBefore` is the set of `moduleReference`s in `mpsProject.projectModulesWithGenerators`.
   - `CreatedPaths` is a small `internal` class, so test 4 can use it. It records its state **with java.nio** (`Files.exists`,
     `Files.list`) on the normalized `fs.getFile(dir).path`:
     - If `dir` is missing, it records the topmost missing ancestor. Rollback deletes that path
       recursively.
     - If `dir` exists, it records its current child names. Rollback deletes only children added
       since, which covers `models/`, `source_gen/`, the new descriptor, `generator/` and aspect
       folders. A descriptor that already existed is never touched.
     - For `type=language` with `withRuntime` or `withSandbox`, it records the sibling folders
       `<parent>/<name>.runtime` and `.sandbox` the same way.
   - **Deletion** goes through the VFS inside the command's write action. For each recorded path
     that nio says still exists, call `LocalFileSystem.getInstance().refreshAndFindFileByNioFile(p)`,
     then `fs.getFile(p.toString()).delete()`. Wrap each path in `runCatching`, and return the paths
     that could not be removed.
2. **Catch every failure** around the three producer branches:
   `catch (t: Throwable) { rollback(); rethrowIfCancellation(t); if (t is Error) throw t; ... }`.
   Rollback runs before a rethrow, so an `AssertionError` under `-ea` doesn't leak state either.
   The unsupported-type check moves ahead of `mkdirs()`, so an unknown `type` creates nothing.
   - **`rollbackModulesRegisteredSince(mpsProject, modulesBefore)`:**
     - takes the diff of `projectModulesWithGenerators` against `modulesBefore`;
     - sorts generators first;
     - calls `rollbackSingleModule(module, deleteDescriptor = false)` on each, leaving file removal
       to `CreatedPaths`;
     - re-diffs afterwards and returns the modules that are still registered.
   - **Then** run `CreatedPaths.rollback()`, then `mpsProject.save()`.
   - **Error, not throw:** set `error` plus a new `errorCode` variable instead of throwing out of
     the command. ISE and IAE keep their message and become `INVALID_REQUEST`. Anything else becomes
     `INTERNAL_ERROR` with `Failed to create <type> '<name>': <SimpleClassName>: <message>.`
   - **Honest result sentence:** the message ends with `No module or file was left behind.` only
     when both leftover lists are empty. Otherwise it names the leftovers, e.g. `Still registered:
     …; not removed: …; remove them with mps_mcp_update_module DELETE deleteFiles=true.`
   - `finalError` goes through `errJson(finalError, errorCode)`.
3. **Harden `rollbackSingleModule`:**
   - Add a `deleteDescriptor: Boolean = true` parameter. The facet path keeps the default.
   - Wrap the generator branch's `parent.save()` (`:1301`) in `runCatching`. Otherwise a parent
     language whose save is exactly what failed throws again and skips the `removeModule` safety
     belt.
4. **The facet rollback path** is otherwise unchanged.

### Phase 2 — upfront directory checks (before `executeCommand`, next to the `facets` checks)
1. **Reject a directory that is not absolute** with `INVALID_REQUEST`. The check is `!Paths.get(dir).isAbsolute`, and an `InvalidPathException` from `Paths.get` maps to `INVALID_REQUEST` too.
   Today it ends up as a `PathFormatException` and `INTERNAL_ERROR`. This applies to every kind
   except a generator with an empty `dir`.
2. **Reject a directory that is an existing regular file.** Check with `Files.isRegularFile`, the
   same way as the generator branch at `:476`. Today the call returns ok with a module that cannot
   be saved.
3. **Near-root probe** for `type` in {`solution`, `language`}:
   - Let `normDir = fs.getFile(dir).path`.
   - Call `MacrosFactory.forModuleFile(fs.getFile(normDir).findChild("probe.msd")).shrinkPath("$normDir/source_gen")`.
     The anchor is fixed; only its folder matters (`getAnchorFolder`, `:166-172`). That avoids
     `name` quirks and the missing `.devkit` support.
   - **Only `FileUtil.PathResolutionException` means reject.** Any other exception means the probe
     is inconclusive, and creation proceeds (Phase 1 then covers it).
   - The probe only reads `PathMacros` and does plain VFS path lookups. It has no side effects and
     needs no read action.
   - Once core is fixed (Phase 5) the probe passes without a code change.
   - **Message:** `Module directory '<normDir>' is too close to the filesystem root: MPS cannot
     record module paths for a module folder fewer than three levels below '/' (MPS-40228). Use a
     directory at least three levels deep, e.g. '<example>'.` The example is
     `Paths.get(normDir).resolve(name)`, and `.resolve(name)` again while it is still shallower
     than three levels, so `/x` never renders as `//name/name`.
   - A user path variable whose value is `/` would make every directory fail this probe. That case
     is rare, and it breaks MPS core too, so it is only documented here.

### Phase 3 — tests
**Fixture rule:** the producers read the VFS without a refresh (`LanguageProducer:79`,
`SolutionProducer:66`). So every fixture a *producer* has to see is created with java.io and then
refreshed, with `LocalFileSystem.getInstance().refreshAndFindFileByNioFile(root)` and a recursive
`VfsUtil.markDirtyAndRefresh(false, true, true, vf)`. The "the VFS hasn't seen it" property is
tested only in test 4, which does not go through a producer.

In `JetBrainsMPSModuleMcpToolsetIntegrationTest`:
1. **`solution directly under tmp is rejected before anything is created`** (Unix only:
   `assumeFalse(SystemInfo.isWindows)`):
   - `directory = "/tmp/mcp40228-<nanoTime>"`;
   - expect `INVALID_REQUEST` mentioning MPS-40228;
   - expect no new module in `projectModulesWithGenerators`;
   - expect `Files.exists(dir)` to be false.
2. **`language withGenerator into a directory that already has generator/ leaves nothing behind`**
   (finding 3a, all OSes):
   - `dir = freshPathInProject(...)`, with a pre-created and refreshed `generator/` and `keep.txt`;
   - expect `INVALID_REQUEST`;
   - expect the module set to be unchanged;
   - expect the nio listing of `dir` to equal the pre-call listing;
3. **`language withRuntime into an occupied runtime folder rolls back language and generator`**
   (finding 3b):
   - pre-create and refresh `<parent>/<name>.runtime/models/x.txt`; pass `withGenerator=true`;
   - expect `INVALID_REQUEST`;
   - expect no `<name>`, `<name>.generator` or `<name>.runtime` module;
   - expect the language `dir` to be gone and `models/x.txt` to survive.
4. **`CreatedPaths keeps an ancestor the VFS has not seen and removes what was created`** (the round-1
   blocker, tested directly on the internal class, inside `executeCommand`, because `IdeaFile.delete` needs
   the write action):
   - (a) Create `root/p` with java.io only, without a refresh. Snapshot `root/p/m`, call
     `fs.getFile("root/p/m/x").mkdirs()`, then roll back. Expect `p` to exist and `p/m` to be gone.
   - (b) Take an existing `dir` holding `keep.txt`, whether or not the VFS has seen it. Snapshot,
     add `models/` through `IFile.mkdirs`, then roll back. Expect `keep.txt` to remain and
     `models/` to be gone.
5. **`non-absolute and regular-file directory are rejected upfront`:** `directory="rel/dir"`, and a
   `directory` that points to a pre-created file. Both expect `INVALID_REQUEST` and no new module.
6. **Registration:** `McpToolsIntegrationTestSuite` already runs this class, so no suite change is
   needed.

### Phase 4 — docs
- **Tool description and the `directory` parameter:** add the following.
  - `directory` must be absolute and must not be a file.
  - `directory` must be at least three levels below `/` on Unix-like systems (MPS-40228).
  - A failed call rolls back what it registered and created, and says what it could not remove.
- **`mps-aspect-accessories/references/module-creation.md`:** add the same points to the blueprint,
  copy it to `.agents/skills/` and `.claude/skills/`, and keep `SkillCatalogReplicationTest` green.

### Phase 5 — core follow-up (separate YouTrack issue, core owner)
- **Fix:** in `ModuleMacros.shrink`, skip the `${module}/..` and `${module}/../..` alternatives when
  that ancestor is the filesystem root (`getParent() == null`).
  - This keeps today's output for paths outside the module (absolute, not `${module}/../../opt/x`).
  - The rejected option is changing `Macros.shrink` itself: that would make `${module}/../../…`
    the only alternative for such paths.
- **Tests:** extend `CloneModule_Test` with a module at `/tmp/<x>` on Unix, and add a
  `MacrosFactory` unit test.
- **Effect on Phase 2:** remove the depth rule in `rejectUnusableModuleDirectory` in the same change.

## Revision 4 — live-review follow-up: a rolled-back generator stays in the project's module loader

Status: implemented, not committed.
- **Review rounds:**
  - Round 1: 2 SHOULD, 5 NIT.
  - Round 2: 2 SHOULD. The facet catch now rolls back before any rethrow, and both leak tests
    assert the log first, so the red run shows that the log check catches the leak on its own.
- **Red, intermediate and green**, each a scratch suite with only this test class:
  - **Red** (today's rollback): the three leak tests fail. The log checks capture both the SEVERE
    "is not found in the project repository" and the WARN "1 listener(s) have not been
    unregistered", and the facet test also gets no error code.
  - **Intermediate** (languages first only): the SEVERE is gone, but the listener WARN remains in
    all three. This shows that the `removeModule(owned generator)` step is what the WARN check
    covers.
  - **Green:** the full fix.

### What the live review found
A reviewer ran `create_module(type=language, withGenerator=true, withRuntime=true)` with
`<parent>/<name>.runtime/models` already non-empty.
- **What looked right:** the call returned `INVALID_REQUEST … No module or file was left behind.`,
  the disk was clean, and `.mps/modules.xml` was unchanged.
- **What was wrong:** the generator `<name>.generator` stayed in `ProjectBase`'s
  `ProjectModuleLoader`. From then on, every project-module listing logs
  `SEVERE … Module <ref>(<name>.generator) is not found in the project repository`
  (`ProjectBase.getProjectModules`, `ProjectBase.java:256`), until MPS restarts. The running IDE
  had logged it 200 times.
- **A leaked file listener:** when the folder was then deleted, `IdeaFile.delete` warned
  `1 listener(s) have not been unregistered for the path …/lang` (`log/idea.log:29269`).
- **A second, older hole:** a facet-attachment failure after a successful producer still goes
  through `rollbackPartialCreation`. That path removes no model or generator folders, so a retry
  then fails on the leftover `generator/`.

### Findings (checked against the code; confirmed by review)
1. **How the generator gets its loader entry.** `LanguageProducer.create` calls
   `myProject.addModule(generator)` (`LanguageProducer.java:90-92`). `ProjectBase.addModule` then
   attaches a loader entry keyed by the generator's reference, whose descriptor file is the
   language's `.mpl` (`ProjectBase.java:155`), and fires `moduleLoaded(generator, .mpl)`.
   - Loader entries are created only by `addModule` and by project loading
     (`ProjectModuleLoader.loadDiscoveredModules`).
   - A generator that the generator branch creates through `Language.revalidateGenerators` is only
     registered with the repository. It has no loader entry.
2. **Why the generator-first rollback leaks it.**
   - `rollbackModulesRegisteredSince` sorts generators first. `rollbackSingleModule(Generator)`
     removes the generator from the parent descriptor and calls `setModuleDescriptor`.
   - That runs `revalidateGenerators`, which unregisters the generator from the repository only
     (`Language.java:236-245`).
   - The `removeModule` safety belt, the one call that would drop the loader entry, is then
     skipped, because `repository.getModule(...)` already returns null.
3. **Why removing the language afterwards doesn't catch it.** `removeModule(language)` drops the
   loader entries of the language's owned generators (`ProjectBase.removeModule0`,
   `ProjectBase.java:223-229`). "Owned" is `getOwnedGenerators()`, the descriptor's generators
   that are also attached (`Language.java:305`). Both conditions are now false for that
   generator, so its loader entry survives.
4. **`removeModule(generator)` is safe only when its language is removed in the same rollback.**
   - Its continuation calls `moduleRemoved(<language>.mpl)`.
   - `StandaloneMPSProject.moduleRemoved` drops every project-descriptor entry with that file
     (`StandaloneMPSProject.java:244-252`). That is the language's own `modules.xml` entry.
5. **Rolling the language back first still leaks the file listener.**
   - `removeModule0` drops owned generators with `dropIfAttached`, which fires no event
     (`ProjectModuleLoader.java:401-407`).
   - `ModuleFileChangeListener` releases its listener on the `.mpl` only after a `moduleRemoved`
     for every module it tracks under that file (`ModuleFileChangeListener.java:154-160`).
   - The generator never gets that event, so the listener stays. `IdeaFile.delete` then logs the
     WARN above.
   - The next `moduleLoaded` for the same path adds no listener
     (`ModuleFileChangeListener.java:141-151`). A retry at the same path therefore stops
     noticing external changes to its `.mpl` until restart.
6. **The facet-failure path has the same leak and no file cleanup.** It calls
   `rollbackPartialCreation` with the companions in the order runtime, sandbox, generators, so the
   generators still come before the language. It removes only descriptors. It can be reached
   whenever `setModuleDescriptor` or `save` throws after the facets have been validated upfront,
   for example when a facet factory's `create` throws (`AbstractModule.java:536-544` does not
   catch).
7. **The existing test misses it.** `rollbackPartialCreation with companions …` exercises finding
   2 today and passes, because it only checks `repository.getModule(...) == null`. Its later
   `projectModules` call already logs the SEVERE, through JUL, without failing the test.
8. **The leftover check can't see a leak that exists only in the loader.**
   `getProjectModules` drops unresolved entries after logging them (`ProjectBase.java:247-257`).
   That is why the reviewer's run claimed "No module or file was left behind."

### Proposal
1. **Rollback order in `rollbackModulesRegisteredSince`.**
   - First, for each language in the rolled-back set: call `mpsProject.removeModule(g)` for each
     of its owned generators, then remove the language itself.
     - Each generator gets its own `moduleRemoved` event, so the file tracker lets go of the
       `.mpl`.
     - The `moduleRemoved(.mpl)` side effect only drops the entry of the language that is
       removed in the same step.
   - Then solutions and devkits.
   - Then the remaining generators, i.e. those whose language survives, through today's
     descriptor edit. In our flows these come from the generator branch and have no loader entry.
   - Modules that are no longer in the repository are skipped.
2. **Honest leftover check.** A rolled-back module counts as left over when either holds:
   - it is still in the repository;
   - `mpsProject.isProjectModule(it)` is still true, for a non-generator, or for a generator whose
     language was rolled back too. Otherwise `isProjectModule`'s second clause is true by design
     while the language survives.
3. **The facet-failure path uses the same rollback.**
   - Both sites call `rollbackFailedCreation(mpsProject, modulesBefore, createdPaths)` and append
     its sentence to the error.
   - `modulesBefore` is computed before the `when` for every kind. `var createdPaths: CreatedPaths?`
     is declared there too and set in the `else` branch.
   - Facets are rejected upfront for devkits and generators, so this path only runs for solutions
     and languages, and `createdPaths` is always set there.
   - Error code: an `McpUserException` keeps its own code. Anything else is `INTERNAL_ERROR` and is
     logged with its stack trace, because this is an unexpected failure, not a collision.
4. **Delete `rollbackPartialCreation`, which has no production caller left.**
   - Also delete `rollbackSingleModule`'s `deleteDescriptor` parameter and its descriptor-delete
     block, which would become dead.
   - Move the generator strategy and the write-access contract from the old KDoc onto the
     remaining helpers.
   - `rollbackModulesRegisteredSince` becomes `internal`.
5. **Tests** (`JetBrainsMPSModuleMcpToolsetIntegrationTest`).
   - **Retarget the three `rollbackPartialCreation` tests** to `rollbackModulesRegisteredSince`,
     each with a snapshot taken before the create:
     - (a) **Solution:** it is unregistered and `!isProjectModule`; the folder is cleaned in
       `finally`.
     - (b) **Generator of the surviving fixture language:** the parent stays registered, its
       `.mpl` survives, and the generator is unregistered. There is no `isProjectModule` check,
       because clause 2 stays true there.
     - (c) **Language with generator, runtime and sandbox:** all are unregistered and
       `!isProjectModule` for each captured module. The folders are deleted through the MPS file
       system, and the captured log must hold neither "is not found in the project repository"
       nor "have not been unregistered for the path".
   - **End to end, `withRuntime into an occupied runtime folder`:** this is the reviewer's
     scenario. An `SRepositoryListener` captures the modules registered during the call; a
     synchronized list filtered by name prefix, removed in `finally`. Assert `!isProjectModule`
     for each, and the same two log checks around the call and a later project-module listing.
   - **New end-to-end test, facet attachment fails:**
     - register a `FacetFactory` whose `create` throws, under a unique type, with
       `FacetsFacade.addFactory`, and remove it in `finally`;
     - create a language `withGenerator=true` with `facets=[that type]`;
     - expect `INTERNAL_ERROR`, the "No module or file was left behind." sentence, no new module,
       and no folder;
     - then, without the facet, retry the same name and directory `withGenerator=true`; it must
       succeed. Clean up with DELETE `deleteFiles=true`.
6. **Docs.** The tool description and `module-creation.md` (all three catalogs) say that rollback
   also covers a failed facet attachment.
7. **Validation.**
   - **Red, then green:** use a scratch suite that runs only
     `JetBrainsMPSModuleMcpToolsetIntegrationTest`. For the red run, only make
     `rollbackModulesRegisteredSince` internal. Test (c), the end-to-end test and the facet test
     must fail on today's code; then apply the fix and see them pass.
   - **Full suite:** then the whole `McpToolsIntegrationTestSuite`, and `SkillCatalogReplicationTest`.
   - **Live, after an MPS restart:** in the reviewer's scenario there must be no "is not found in
     the project repository" SEVERE and no "have not been unregistered" WARN, and a retry at the
     same path must succeed.

### Out of scope
- **`rollbackGeneratorCreation`** (the generator branch) keeps its descriptor-first order, because
  its generator has no loader entry.
- **Descriptor overwrites:** `SolutionProducer` overwrites an existing `.msd` without checking. The
  old path deleted it on rollback; now it stays. A retry works either way.
- **The finding-4 hazard is live in `update_module DELETE`**, to be reported separately.
  `deleteModule` calls `mpsProject.removeModule(m)` for a language-owned generator
  (`JetBrainsMPSModuleMcpToolset.kt:992`). If that generator has a loader entry (project-loaded, or
  created by LanguageProducer), this drops the language's `modules.xml` entry. Not reproduced;
  `ModuleDeleteHelper.java:131` has the same pattern.

## Deferred — "not portable" warning for modules outside the project
This was planned as Phase 3 and dropped in review round 2. It is not part of MPS-40228.
- **Wrong condition:** a predicate based only on MPS (`forProjectFile(...).shrinkPath` with no
  macro) is wrong in two ways:
  - It fires for every module inside the project, because `$PROJECT_DIR$` is not recognised by
    `containsMacro`, which checks only for a `${` prefix.
  - It ignores the platform's own collapsing. Sibling layouts like `samples/agreement` store
    `$PROJECT_DIR$/../…`, which `ProjectMacros.shrink` cannot produce.
- **What a follow-up would need:** apply `PathMacroManager.getInstance(project).collapsePath` after
  the MPS shrink, and verify it against a real `modules.xml`. It would also have to use
  `MPSProject.getProjectFile()` and exclude generators (they have no entry in `modules.xml`).

## Validation
- Build `mcp-tools` in IDEA, then run the `McpToolsIntegrationTestSuite` run configuration and grep
  its log for the new test names. That suite has known single flaky failures, so re-run before
  blaming the diff.
- Live check against a running MPS:
  - repeat the original call and expect a clean `INVALID_REQUEST`;
  - check that `.mps/modules.xml` is unchanged and nothing is left under `/tmp`;
  - check that no SEVERE `PathResolutionException` appears in `log/idea.log`;
  - repeat test 2's case live: the producer's own `LOG.error` ("Generator file for … already
    exists") is still expected, but the `ActionDispatcher` and `SilentModuleVersionUpdater` SEVERE
    entries must be gone, and the module must not be registered.

## Risks / open points
- **VCS auto-staging:** for a module *inside* the repo, MPS VCS integration may auto-stage files
  that the rollback then deletes. Check `git status` in the live check, and document the result
  rather than touching the index.
- **Deleting inside the write action:** the same command already refreshes synchronously under
  write (`mkdirs` → `IdeaFile.createDirectories`, `IdeaFile.java:297-305`). The rollback
  refreshes each path and then calls `fs.getFile(path).delete()`. It does not call a raw
  `VirtualFile.delete`, because `IdeaFile.delete` uses `MPSSavingRequestor` and clears MPS file
  listeners for the subtree (`:351`, `:380-393`).
