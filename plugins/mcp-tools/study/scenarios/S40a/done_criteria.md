# S40a done criteria — Kaja as an MPS plugin (observer, read-only, projectPath = run project dir)

Status: **rev 6, 2026-11-24, rehearsed; prompt frozen.** Written from an ad-hoc run on 2026-11-23 (`2026.1`
branch, MPS 261.25134 from sources, target the MPS 2026.1.2 macOS app): the agent packaged Kaja as a plugin in
about 94 tool calls, and the `mps-build-language` skill was revised from its struggle log. Rehearsed 2026-11-24
in variant G (MPS 261.25134 from sources, `dist/MPS` = the 2026.1.2 zip, `MPS-261.27258.1085`): `S40a-opus-1`
(medium) PASS in 31 tool calls, `S40a-sonnet-1` (medium) PASS in 44, both clean-room replays passed (criterion 5).
Rev 6 folds in the rehearsal's criteria defects (`../../reports/assessments/build-language.md`; evaluations in `archive/runs/s40-rehearsal-2026-11-24/`). Shared preflight,
integrity, side effects and isolation: `../coverage/build-shared-criteria.md` (regression and cost cell for the
revised skill text, not a generalisation cell).

Fixture: `kaja-build` (`../../instructions/fixtures.md`). Prerequisite: `~/MPSProjects/mcp-study/dist/`.
Size (expected tool calls): 30–50 (rehearsal: 31 and 44). About 3 minutes of worker time; the Ant run takes 10–15 s.

Traps the ad-hoc run hit, and where the skill now carries them:

| trap | forced by | skill text |
|---|---|---|
| a module's library jar (`kaja_images.jar`) must be in the plugin layout; the check is clean, MAKE fails with "No such path in local layout" | prompt item 2 ("everything they need at run time") and MAKE | `references/mps-plugins.md`, `common-failures.md` |
| concept icons are generated into `source_gen` and packaged only with `copyResources = true` (or by the MPS make task, `useMakeTask`) | prompt item 3 | `SKILL.md` step 7, `references/java-parts.md` |
| Reload Modules From Disk needs a second pass for interdependent new modules (the rehearsal: opus 7 → 6 → 0; sonnet 21 → 0 on the first pass) | "no errors" | `SKILL.md`, `references/mps-modules.md` |
| a nested `BuildMps_Generator` without `path` passes Reload, the check and MAKE; Ant then fails at once with `AssertionError: bad file` (hit by `S40a-sonnet-1`) | criterion 5 | none: the blueprint in `references/mps-modules.md` has no `path`, and `common-failures.md` has no entry (defect D145) |
| `mps_home` without `defaultPath` always warns | "no warnings" | `references/plugins-and-macros.md` |
| an empty `sourcesKind` fails the MCP check | "no errors" | `references/mps-modules.md` |
| `ant build` does not regenerate | prompt item 4 | `SKILL.md` directive, `references/ant-targets.md` |
| the `mps` dependency is a `BuildProjectDependency` | criterion 3 | `references/dependencies.md` |

## Criteria

0. **Integrity holds** (`../coverage/build-shared-criteria.md`). Preflight is a precondition, not a criterion: when it fails, the run is void and is not evaluated.
1. **The build solution.** `mps_mcp_get_project_structure` (`includeModels`, `includeDependencies`; `startingPoint`
   the **module reference** `<uuid>(Kaja.build)`, because the bare name `Kaja.build` resolves to the model and hides
   the module kind and dependencies): a Solution `Kaja.build` whose descriptor is under `solutions/Kaja.build/`
   (no MCP tool reports the descriptor path: `ls solutions/Kaja.build/*.msd`), a model
   `Kaja.build` with used languages `jetbrains.mps.build` and `jetbrains.mps.build.mps` (others allowed), and a
   module dependency on `jetbrains.mps.ide.build` (the module's, not only the model's import). One `BuildProject` root `KajaPlugin` (`mps_mcp_print_node`
   `AGENTIC VIEW`, `nodeDepth: 1`) with `fileName` `build-plugin.xml` and an `internalBaseDirectory` that
   resolves to the project folder (`../../` from the solution folder). Extra roots are recorded, not failed.
2. **Clean.** `mps_mcp_check_root_node_problems` on model `Kaja.build`: no errors and no warnings. Info messages
   (for example "Need resources entry") do not count.
3. **The script** (AGENTIC VIEW of `KajaPlugin`; print the `(+N)` nodes you need):
   - a `BuildProjectDependency` on `mps` (`r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)/4301118715654192646`);
     an additional `BuildExternalLayoutDependency` on `IDEA` is recorded (needed only with `compiler = IntelliJ`);
   - `BuildMps_Language` declarations of the three languages with their `BuildMps_Generator`s and a `BuildMps_Solution`
     `jetbrains.mps.samples.JavaKaja`, all inside the plugin's content, directly or through a group the content
     references (`BuildMps_IdeaPluginGroup`, as both rehearsal runs did); the sandbox is not inside it (declared
     outside every packaged group is recorded);
   - one `BuildMps_IdeaPlugin`: `id` `jetbrains.mps.samples.Kaja`, name `Robot Kaja`, version `1.0`, a plugin dependency
     on `jetbrains.mps.core` (`…/4973949960459588488`) or `com.intellij.modules.mps` (`…/4973949960459706697`);
   - the icons are packaged by the model, not by luck: `copyResources = true` on the `BuildSource_JavaOptions` in
     effect, `useMakeTask = true` on the script's `BuildMPSPlugin` (the MPS make task compiles into `classes_gen`
     with the resources, and the `java.compile.*` targets that `copyResources` controls are then skipped), or a
     resources entry whose files cover the language's `source_gen` icons (record the shape). The
     `addModuleResources_QuickFix` entries (`icons/**, resources/**` of the module folder) match nothing in this
     sample and do not count. If none is present, the criterion fails even when the zip holds the icons; the
     clean-room replay of criterion 5 shows whether the shape works;
   - the runtime jar is placed by the layout: a `BuildLayout_File` (or files entry) for
     `solutions/JavaKajak/images/kaja_images.jar` anywhere below the `BuildMpsLayout_Plugin` of a `Kaja.zip` layout
     entry (both rehearsal runs put it in a `lib` folder).
4. **The zip.** `<project>/build/artifacts/KajaPlugin/Kaja.zip` exists (another artifacts folder that the generated
   `build-plugin.xml` sets is accepted, record). Inspect with `unzip -l` and `unzip -p` (to stdout, nothing written):
   - exactly one jar holding `META-INF/plugin.xml` (seen as `<containerName>/lib/<containerName>.jar`; record the
     path); its `plugin.xml` has `<id>jetbrains.mps.samples.Kaja</id>`, `<name>Robot Kaja</name>`,
     `<version>1.0</version>` and an `mps.LanguageLibrary` element with `dir="/languages"` (a custom descriptor
     with an equivalent element is accepted, record). The `<depends>` lines are recorded, not graded (the
     generator always adds `com.intellij.modules.mps`);
   - module jars of `jetbrains.mps.samples.Kaja`, `…KajaAndOr`, `…KajaSceneConstruction`, their three `-generator`
     jars and `jetbrains.mps.samples.JavaKaja` (source jars optional); no `Kaja.sandbox` jar;
   - `kaja_images.jar` inside the plugin folder, and the `<library jar="…"/>` path in JavaKaja's packaged
     `META-INF/module.xml` resolves, relative to the JavaKaja jar's folder, to it;
   - the module jar of `jetbrains.mps.samples.Kaja` (not its `-src.jar`, which holds the same files) holds
     `jetbrains/mps/samples/Kaja/structure/TextIcon*.png`: six in the stock sample (`TextIcon_1`,
     `TextIcon_928359275`, their `TextIconNewUI_*` variants and those variants' `_dark` files). Only this language
     declares icons. Missing icons fail: prompt item 3.
5. **One Ant run, generating first, against `dist/`.**
   - In the transcript, or in a log file the worker sent the output to (read it, do not change it): an `ant`
     invocation on `build-plugin.xml` that ends `BUILD SUCCESSFUL` and does everything alone. Earlier
     invocations that failed are recorded, not failed, as long as the last successful one did the whole job
     (`S40a-sonnet-1` failed once on a missing generator path, then succeeded). Two separate successful
     invocations as the only route (for example `generate`, then `build`) fail: the prompt says one run.
   - `mps_home` (or `artifacts.mps`) resolves to `~/MPSProjects/mcp-study/dist/MPS` or to that symlink's target
     (`readlink`; record which), through `-D…` or the macro's `defaultPath`. A `defaultPath` relative to the
     project (both rehearsal runs: `../../dist/MPS`, which resolves only because scratches sit in
     `mcp-study/workspace/`) is accepted; record it. The packaged `build.properties` names the `dist/` build
     (`MPS-261.27258.1085` for 2026.1.2), not the MPS under test. A run against the MPS under test fails.
   - Generation is part of that run: the `generate` target named before `build`/`assemble` (the output shows
     `generate:` and `[echo] generating` before the first `java.compile.*` target), or `useMakeTask = true` on
     the script's `BuildMPSPlugin` (the skill offers both). The generated script runs `<generate>` at log level
     `warn`, so the output shows no per-module lines. The fixture's `source_gen` is already current and MPS
     rewrites only changed files, so unchanged `source_gen` mtimes do not mean the step was skipped; with
     `useMakeTask` the output shows no `javac` lines either. That is why the replay below gates.
   - **Clean-room replay (observer, after the evaluator's read-only pass, gating).** Copy the run project to
     `~/MPSProjects/mcp-study/workspace/replay-<scratch>` (same depth, so a relative `defaultPath` resolves),
     without `build/`, `.claude/` and `.agents/`; delete every `source_gen`, `source_gen.caches` and `classes_gen`
     under `languages/` and `solutions/`; run the worker's own `ant` command line from that copy (same targets and
     `-D` options, `JAVA_HOME=~/MPSProjects/mcp-study/dist/jdk`). It must end `BUILD SUCCESSFUL`, regenerate the
     Java (`find languages -path '*source_gen*' -name '*.java' | wc -l`: 183 in the stock sample) and produce a
     `Kaja.zip` whose `jetbrains.mps.samples.Kaja` module jar holds the six icons and compiled classes (282
     `.class` entries in the rehearsal). About 15 s, no MPS needed. A replay failure fails this criterion and,
     for missing icons, criterion 4. Both rehearsal runs passed it. Delete the copy afterwards.
   - `Kaja.zip` comes from the successful run (integrity, mtime).
6. **The sample is unchanged** (`../coverage/build-shared-criteria.md`).

## Process signals (record, do not gate)

- Tool calls; MPS MCP calls; `MAKE` count and failed MAKEs (a failure on "No such path in local layout" is the
  library-jar trap).
- Applications of `ReloadModulesFromDisk_Intention` and the error count after each (whether the second pass changed
  the count, or the first pass already reached 0).
- `addModuleResources_QuickFix` applications (inert here, see criterion 3).
- `check_root_node_problems` loops that end on the `mps_home` warning or on `sourcesKind`.
- Ant runs; whether a run without generation came first; Ant failures and their cause ("bad file" = generator
  `path` missing); `generate` targets vs `useMakeTask`.
- Whether the worker's summary claims more than the evidence shows (for example "regenerated `source_gen`" when
  no file changed).
- Skill files read (`mps-build-language/SKILL.md`, `references/mps-plugins.md`, `mps-modules.md`, `plugins-and-macros.md`,
  `java-parts.md`, `common-failures.md`, `ant-targets.md`); reads of MPS sources (lesson 47).
- Whether `samples/sampleJavaExtensions/solutions/Build` was printed as a template (it is not in the fixture; a read
  of it means the worker reached into the MPS checkout).
