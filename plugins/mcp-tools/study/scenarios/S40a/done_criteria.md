# S40a done criteria — Kaja as an MPS plugin (observer, read-only, projectPath = run project dir)

Status: **draft rev 5, 2026-11-23 (after Fable reviews 1–4; `dist/` variants). Not rehearsed, prompt not frozen.** Written from an
ad-hoc run on 2026-11-23 (`2026.1` branch, MPS 261.25134 from sources, target the MPS 2026.1.2 macOS app):
the agent packaged Kaja as a plugin in about 94 tool calls, and the `mps-build-language` skill was revised
from its struggle log. Shared preflight, integrity, side effects and isolation: `../coverage/build-shared-criteria.md`
(regression and cost cell for the revised skill text, not a generalisation cell).

Fixture: `kaja-build` (`../../instructions/fixtures.md`). Prerequisite: `~/MPSProjects/mcp-study/dist/`.
Size (expected tool calls): 60–95, to be confirmed at the rehearsal.

Traps the ad-hoc run hit, and where the skill now carries them:

| trap | forced by | skill text |
|---|---|---|
| a module's library jar (`kaja_images.jar`) must be in the plugin layout; the check is clean, MAKE fails with "No such path in local layout" | prompt item 2 ("everything they need at run time") and MAKE | `references/mps-plugins.md`, `common-failures.md` |
| concept icons are generated into `source_gen` and packaged only with `copyResources = true` | prompt item 3 | `SKILL.md` step 7, `references/java-parts.md` |
| Reload Modules From Disk needs a second pass for interdependent new modules | "no errors" | `SKILL.md`, `references/mps-modules.md` |
| `mps_home` without `defaultPath` always warns | "no warnings" | `references/plugins-and-macros.md` |
| an empty `sourcesKind` fails the MCP check | "no errors" | `references/mps-modules.md` |
| `ant build` does not regenerate | prompt item 4 | `SKILL.md` directive, `references/ant-targets.md` |
| the `mps` dependency is a `BuildProjectDependency` | criterion 3 | `references/dependencies.md` |

## Criteria

0. **Integrity holds** (`../coverage/build-shared-criteria.md`). Preflight is a precondition, not a criterion: when it fails, the run is void and is not evaluated.
1. **The build solution.** `mps_mcp_get_project_structure` (`startingPoint` `Kaja.build`, `includeModels`,
   `includeDependencies`): a Solution `Kaja.build` whose descriptor is under `solutions/Kaja.build/`, a model
   `Kaja.build` with used languages `jetbrains.mps.build` and `jetbrains.mps.build.mps` (others allowed), and a
   module dependency on `jetbrains.mps.ide.build`. One `BuildProject` root `KajaPlugin` (`mps_mcp_print_node`
   `AGENTIC VIEW`, `nodeDepth: 1`) with `fileName` `build-plugin.xml` and an `internalBaseDirectory` that
   resolves to the project folder (`../../` from the solution folder). Extra roots are recorded, not failed.
2. **Clean.** `mps_mcp_check_root_node_problems` on model `Kaja.build`: no errors and no warnings. Info messages
   (for example "Need resources entry") do not count.
3. **The script** (AGENTIC VIEW of `KajaPlugin`; print the `(+N)` nodes you need):
   - a `BuildProjectDependency` on `mps` (`r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)/4301118715654192646`);
     an additional `BuildExternalLayoutDependency` on `IDEA` is recorded (needed only with `compiler = IntelliJ`);
   - `BuildMps_Language` declarations of the three languages with their `BuildMps_Generator`s and a `BuildMps_Solution`
     `jetbrains.mps.samples.JavaKaja`, all inside the plugin's content; the sandbox is not inside it (declared
     outside every packaged group is recorded);
   - one `BuildMps_IdeaPlugin`: `id` `jetbrains.mps.samples.Kaja`, name `Robot Kaja`, version `1.0`, a plugin dependency
     on `jetbrains.mps.core` (`…/4973949960459588488`) or `com.intellij.modules.mps` (`…/4973949960459706697`);
   - the icons are packaged by the model, not by luck: `copyResources = true` on the `BuildSource_JavaOptions` in
     effect, or a resources entry whose files cover the language's `source_gen` icons (record the shape). If neither
     is present, the criterion fails even when the zip holds the icons;
   - the runtime jar is placed by the layout: a `BuildLayout_File` (or files entry) for
     `solutions/JavaKajak/images/kaja_images.jar` below the `BuildMpsLayout_Plugin` of a `Kaja.zip` layout entry.
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
   - the jar of `jetbrains.mps.samples.Kaja` holds `jetbrains/mps/samples/Kaja/structure/TextIcon*.png` (six in the
     stock sample). Missing icons fail: prompt item 3.
5. **One Ant run, generating first, against `dist/`.** In the transcript: one `ant` invocation on `build-plugin.xml`
   that ends `BUILD SUCCESSFUL`, with `mps_home` (or `artifacts.mps`) resolving to `~/MPSProjects/mcp-study/dist/MPS` or to that symlink's target (`readlink`; record which)
   (through `-D…` or the macro's `defaultPath`), whose output shows generation of the Kaja modules before their
   `javac` steps: the `generate` target named before `build`/`assemble`, or `useMakeTask = true` on the script's
   `BuildMPSPlugin` (the skill offers both). `Kaja.zip` comes from that run (integrity, mtime). Earlier failed or
   partial runs are recorded. A run against the MPS under test, or two separate invocations as the only route,
   fails (the prompt says one run).
6. **The sample is unchanged** (`../coverage/build-shared-criteria.md`).

## Process signals (record, do not gate)

- Tool calls; MPS MCP calls; `MAKE` count and failed MAKEs (a failure on "No such path in local layout" is the
  library-jar trap).
- Applications of `ReloadModulesFromDisk_Intention` and the error count after each.
- `check_root_node_problems` loops that end on the `mps_home` warning or on `sourcesKind`.
- Ant runs; whether a run without generation came first.
- Skill files read (`mps-build-language/SKILL.md`, `references/mps-plugins.md`, `mps-modules.md`, `plugins-and-macros.md`,
  `java-parts.md`, `common-failures.md`, `ant-targets.md`); reads of MPS sources (lesson 47).
- Whether `samples/sampleJavaExtensions/solutions/Build` was printed as a template (it is not in the fixture; a read
  of it means the worker reached into the MPS checkout).
