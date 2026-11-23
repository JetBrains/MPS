---
name: mps-build-language
description: >-
  Use when authoring or modifying MPS Build Language scripts (`BuildProject` roots) — the declarative DSL that generates Ant `build.xml` to package MPS language plugins, plain Java modules, standalone IDE/RCP distributions, module tests, or `run code from solution` tasks. Covers build solution setup (wizard or manual), macros, project/external/Java dependencies, MPS module declarations (`BuildMps_Language` / `_Solution` / `_Generator`), groups, plugin declarations (`idea plugin` / `BuildMps_IdeaPlugin`), layouts, branding and startup scripts for standalone IDEs, MPS settings, and the workflow language. Trigger terms: `BuildProject`, `BuildMps_*`, `BuildLayout_*`, `jetbrains.mps.build`, `build.mps` solution, Build Solution wizard, `internalBaseDirectory`, `fileName`, Ant target generation, `mps_home`, `artifacts.mps`, `mpsStandalone`.
type: reference
---

# MPS Build Language

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

The **MPS Build Language** is a declarative DSL (a stack of MPS languages on top of Ant) that generates an Apache Ant `build.xml` file. It is used to package MPS language plugins (installed into MPS or an MPS-based IDE), build standalone IDE/RCP distributions, package plain Java modules, and run MPS tests or generation-diff tests. Build scripts are root nodes of concept `BuildProject` inside a regular **solution** module; pressing Make on that solution runs a generator that writes `build.xml` to disk.

## Critical Directives

- The generator writes `build.xml` — it does **not** invoke Ant. To produce artifacts you must run `ant` separately (from MPS right-click → Run, or from the command line in the generated folder).
- Build scripts are MPS nodes. Edit them via projectional editing or `mps_mcp_*` JSON tools. **Never hand-edit the `.mps` file** as if it were Ant XML.
- Declaring a module in `BuildProject.parts` **does not** cause it to be built. Only items **referenced from the `layout`** end up in the output. `parts` is declaration; `layout` is packaging.
- Build scripts **compile** languages but do **not regenerate** them. Generate languages to Java first (or enable the `mps` build plugin's full-make task) before running Ant.
- Always import `jetbrains.mps.ide.build` (`422c2909-59d6-41a9-b318-40e6256b250f`) on the build solution — it is the catalog of MPS's own build scripts (`mps`, `mpsStandalone`, plugin scripts such as `mpsMakePlugin`), the plugins they declare (`jetbrains.mps.core`, `com.intellij.modules.mps`), their modules (`JDK`, `MPS.Core`, …), and the `IDEA` external layout of the platform jars.
- After every change to a module's `.mpl` / `.msd`, re-run the **Reload Modules From Disk** intention (Alt+Enter on the `BuildProject` or any node containing module declarations; the docs call it *Load required information from file*, which is also the quick fix offered on an out-of-sync module). Build-script module dependencies must match the actual `.mpl` declarations or the chunk generator throws "class not found".
- A `BuildMps_Group` must contain the **transitive closure** of language dependencies. The editor marks missing members with red squiggles.
- Always set `internalBaseDirectory` — every relative path is resolved against it.

## Common-Path Workflow

For a typical "package an MPS language as an installable plugin" task:

1. **Create the build solution.** In MPS the **Build Solution** wizard (launched from the Project View; choose the MPS plugin output) creates the solution, model and a pre-filled script; continue at step 5 to review it. Manually: a regular solution (not language) named `<project>.build`; in its `.msd`, add a dependency on `jetbrains.mps.ide.build` and declare languages `jetbrains.mps.build` and `jetbrains.mps.build.mps`. Set Java facet `compile="mps" classes="mps"`. See `references/solution-setup.md`.
2. **Create the model** (conventionally `<project>.build`) with the same languages as used languages.
3. **Insert the `BuildProject` root** with `name`, `internalBaseDirectory` and, optionally, `fileName` (empty means `build.xml`). Use `mps_mcp_insert_root_node_from_json` with the skeleton in `references/buildproject-skeleton.md`.
4. **Add plugins to `BuildProject.plugins`:** at minimum `BuildJavaPlugin` and `BuildMPSPlugin`. Add `BuildModuleTestsPlugin` / `BuildSolutionRunnerPlugin` only when needed (see `references/plugins-and-macros.md`).
5. **Declare macros** (`mps_home`, plus version/timestamp Var macros) — see `references/plugins-and-macros.md`.
6. **Add the dependency** on the `mps` script (a `BuildProjectDependency`, artifacts at `$mps_home`) to `BuildProject.dependencies` — with the default Java compiler this is the only dependency a language plugin needs. See `references/dependencies.md`.
7. **Add parts:** one `BuildSource_JavaOptions`, then a `BuildMps_Language` / `_Solution` / `_Generator` per MPS module (enter the descriptor path, then run **Reload Modules From Disk**), wrapped in `BuildMps_Group`s. Add a `BuildMps_IdeaPlugin` (`idea plugin`, the MPS plugin declaration) whose `content` references the groups and whose `dependencies` include the MPS core plugin. See `references/mps-modules.md` and `references/mps-plugins.md`.
8. **Define the layout:** one `BuildLayout` root, typically wrapping a `BuildLayout_Zip` named `<plugin>.zip`, with one `BuildMpsLayout_Plugin` (`AutoPluginLayoutType`) per plugin. See `references/layouts.md`.
9. **Make the build solution** (Ctrl-F9 on the model) — this writes `build.xml` at `internalBaseDirectory/fileName`.
10. **Run Ant** from MPS (right-click `BuildProject` → Run) or `ant` from the folder holding the generated file; on the command line point the script at the MPS installation with `-Dartifacts.mps=/path/to/MPS` or `-Dmps_home=/path/to/MPS`. Artifacts land in `./build/artifacts`.
11. **Install** the zip through the plugin manager or by unzipping it into the MPS plugins folder — see `references/mps-plugins.md`.

For other task families: standalone IDE distributions → `references/standalone-ide.md`; plain Java packaging → `references/java-parts.md`; tests → `references/tests-and-workflow.md`.

## Disambiguation — Don't Conflate These

Four "dependency" concepts and two "aspect" concepts are routinely confused. See `references/disambiguation.md` for the full table before designing dependencies or parts. Quick rule:

- Solution `.msd` deps = what the build solution itself needs at edit time (just `jetbrains.mps.ide.build`).
- `BuildProject.dependencies` = references to other build scripts (`BuildProjectDependency` → `mps`, `mpsStandalone`, siblings) or external layouts (`BuildExternalLayoutDependency` → `IDEA`).
- `BuildSource_JavaModule.dependencies` = classpath of a plain Java module.
- `BuildMps_*.dependencies` = mirror of the actual `.mpl` / `.msd`, auto-filled by **Reload Modules From Disk**.

## Related Skills

- `mps-distribution-build` — the generated Ant pipeline (`build/mps*.xml`) that builds MPS distributions; complements this skill for bundling plain Java/Kotlin plugins into MPS.
- `mps-ide-plugin` — authoring the contents of an MPS plugin solution (actions, tool windows, keymaps). The build language packages the result.
- `mps-aspect-accessories` — module dependencies, used languages, runtime solutions, accessory models. The build script's `BuildMps_*` deps must match these.
- `mps-lang-core-xml` — needed when embedding raw XML for extra `plugin.xml` elements, tips, or `BwfAntStatement` raw Ant commands.
- `mps-tests` — `NodeTestCase` / `EditorTestCase` test models that `BuildAspect_MpsTestModules` runs.
- `mps-mcp-workflow`, `mps-node-editing` — node creation and validation conventions used by every `mps_mcp_*` example here.

## Reference Index

- Open `references/solution-setup.md` when **creating the build solution and model** — `.msd` content, Java facet settings, used languages, naming conventions, where to find existing build scripts in this repo.
- Open `references/buildproject-skeleton.md` when **inserting or modifying the `BuildProject` root** — JSON skeleton, top-level properties (`name`, `internalBaseDirectory`, `fileName`), what each top-level role (`plugins` / `macros` / `dependencies` / `parts` / `aspects` / `layout` / `scriptsDir`) holds.
- Open `references/plugins-and-macros.md` when **adding build-language plugins or macros** — `BuildJavaPlugin` / `BuildMPSPlugin` / `BuildModuleTestsPlugin` / `BuildSolutionRunnerPlugin`, `BuildFolderMacro`, `BuildVariableMacro` initializers (`InitWithString`, `InitWithDate`, `InitWithValueFromFile`, `InitWithFileContent`), `BuildString` composition.
- Open `references/dependencies.md` when **wiring inter-script dependencies** — `BuildProjectDependency` (other build scripts: `mps`, `mpsStandalone`, plugin scripts in `jetbrains.mps.ide.build`, or siblings) vs `BuildExternalLayoutDependency` (a `BuildExternalLayout` such as `IDEA`), artifacts locations and when to omit them, the `idea_home` requirement of the IntelliJ compiler.
- Open `references/mps-modules.md` when **declaring `BuildMps_Language` / `BuildMps_Solution` / `BuildMps_Generator`** — minimal JSON, child roles (`path`, `sources`, `dependencies`, `runtime`, `generator`, `sourcesKind`), dependency wiring via `BuildMps_ExtractedModuleDependency`, `compact` (editor folding), **Reload Modules From Disk** / **Load required information from file**, common target modules in `jetbrains.mps.ide.build`.
- Open `references/groups.md` when **grouping modules via `BuildMps_Group`** — group semantics, transitive-closure rule, when to nest modules inside a group vs leave them at `parts` level.
- Open `references/mps-plugins.md` when **declaring, packaging or installing an MPS plugin** — `BuildMps_IdeaPlugin` part vs `BuildMpsLayout_Plugin` layout entry, fields (`id`, `name`, `version`, `containerName`, `content`, `dependencies`), the three `plugin.xml` modes (generated by default / custom file / provided), hiding modules (`LanguageLibrary hide`, `VisibleModuleMask`), `AutoPluginLayoutType` vs `ManualPluginLayoutType`, install locations.
- Open `references/layouts.md` when **shaping the output tree** — the common layout concepts (`BuildLayout_Folder` / `_Zip` / `_Jar` / `_File` / `_Files` / `_Import` / `_ImportContent`, `BuildLayout_CompileOutputOf`, `BuildMpsLayout_ModuleJars`, `BuildMpsLayout_Plugin`), the `containerName` pattern, typical MPS-plugin layout, plain-Java packaging example.
- Open `references/java-parts.md` when **building plain Java modules or libraries** — `BuildSource_JavaOptions` properties (compiler values and the `idea_home` requirement of `IntelliJ`, javaLevel, heap, resource selectors), `BuildSource_JavaModule` with content roots and dependencies, `BuildSource_JavaLibrary` grouping, `BuildSource_JavaDependencyJar` / `_DependencyModule` / `_DependencyLibrary`.
- Open `references/mps-settings.md` when **configuring `BuildMpsAspect`** — `bootstrap` flag, `testGeneration` (a `gentest` task in the `test` target, running Test.Generating / Test.Diffing), `generationMaxHeapSizeInMb`, `excludes`.
- Open `references/tests-and-workflow.md` when **adding module tests or custom Ant statements** — `BuildAspect_MpsTestModules`, `BuildMps_TestModuleGroup`, `BuildMps_TestModule`, `BuildSolutionRunnerAspect` (`run code from solution`), the `jetbrains.mps.build.workflow` language (`BwfTask`, `BwfSubTask`, `BwfAntStatement`, `BwfTaskPart`).
- Open `references/standalone-ide.md` when **producing a standalone IDE / RCP distribution** — the wizard's two scripts, `mpsStandalone` and optional plugin dependencies, `idea branding` (`BuildMps_Branding`) and the update-checker pitfalls, `MpsStartupScript`, layout, native launchers, JBR lookup order on Windows/Linux/macOS, trust-dialog suppression, Tips and Tricks integration.
- Open `references/disambiguation.md` when **confused about "dependency" or "aspect" terms** — the four "dependency" meanings, "language aspect" vs "additional aspects" vs `parts`, `BuildMps_IdeaPlugin` vs `BuildMpsLayout_Plugin`, "use plugins" vs MPS plugins, "project structure" UI tree vs the docs' "project structure section".
- Open `references/ant-targets.md` when **debugging or extending the generated Ant build** — the targets the generator emits (`build`, `clean`, `assemble`, `fetchDependencies`, `buildDependents`, `compileJava`, `processResources`, `classes`, `test`, `check`, `generate`, `cleanSources`, `declare-mps-tasks`, `makeDependents`; plus the `gentest` task inside `test`), generation chunks, why dependency mismatches cause "class not found".
- Open `references/concept-catalog.md` when **looking up concept FQNs** — table of the commonly used concepts under `jetbrains.mps.build`, `jetbrains.mps.build.mps`, `jetbrains.mps.build.mps.tests`, `jetbrains.mps.build.mps.runner`, `jetbrains.mps.build.workflow`, `jetbrains.mps.build.startup`, `jetbrains.mps.build.tips`. For exact roles call `mps_mcp_get_concept_details` (`detail: "shape"`, `languageRefs` = the language).
- Open `references/common-failures.md` when **a build script misbehaves** — generator complains about missing dependencies; module compiles but is missing from output; "class not found" mid-generation; group missing transitive members; MPS core plugin dependency missing; `compiler=IntelliJ` without an `idea_home` macro; hand-edited `build.xml` reverted.
