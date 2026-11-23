# Solution and Model Setup

The build script lives in a **solution module** (not a language). Per-project naming convention: `<project>.build`.

## Required `.msd` Content

```xml
<dependencies>
  <dependency reexport="false">422c2909-59d6-41a9-b318-40e6256b250f(jetbrains.mps.ide.build)</dependency>
</dependencies>
<languageVersions>
  <language slang="l:798100da-4f0a-421a-b991-71f8c50ce5d2:jetbrains.mps.build" version="0" />
  <language slang="l:0cf935df-4699-4e9c-a132-fa109541cba3:jetbrains.mps.build.mps" version="8" />
</languageVersions>
```

The `jetbrains.mps.ide.build` solution (uuid `422c2909-59d6-41a9-b318-40e6256b250f`) is the catalog of well-known external dependencies — `mps`, `mpsStandalone`, the MPS plugin scripts (`mpsMakePlugin`, `mpsVcs`, …), standard MPS modules. Always import it.

## Wizard Shortcut

The **Build Solution** wizard (launched from the Project View) creates or reuses the solution and model, sets the used languages and the `jetbrains.mps.ide.build` dependency, and asks for the output: MPS plugin or standalone IDE. On its last page deselect modules that should not ship, usually sandboxes. The manual setup below is what it produces.

## Java Facet

The solution's Java facet must be `compile="mps" classes="mps"` so the generated Ant helper classes compile. A solution created with `mps_mcp_create_module` already has it; check it only when the solution was created another way (`mps_mcp_get_module_facets`).

## Model

Create one model inside the solution (conventionally `<project>.build`). Its **used languages** must include:

- `jetbrains.mps.build`
- `jetbrains.mps.build.mps` (for MPS artifacts)
- `jetbrains.mps.build.startup` for a standalone IDE (`MpsStartupScript`)
- additional languages for advanced features (workflow / tests / runner / tips / core.xml) — only when used

## Languages You Will Touch

| Language | ID | Purpose |
|---|---|---|
| `jetbrains.mps.build` | `798100da-4f0a-421a-b991-71f8c50ce5d2` | Core build DSL: `BuildProject`, macros, layouts, Java modules, selectors |
| `jetbrains.mps.build.mps` | `0cf935df-4699-4e9c-a132-fa109541cba3` | MPS-specific: `BuildMps_Language`, `BuildMps_Solution`, `BuildMps_Generator`, `BuildMps_IdeaPlugin`, `BuildMps_Group`, MPS settings |
| `jetbrains.mps.build.workflow` | `698a8d22-a104-47a0-ba8d-10e3ec237f13` | Named tasks, subtasks, raw Ant statements |
| `jetbrains.mps.build.mps.runner` | — | `run code from solution` (`BuildSolutionRunnerAspect`) |
| `jetbrains.mps.build.mps.tests` | — | `module-tests` plugin support |
| `jetbrains.mps.build.startup` | — | `MpsStartupScript` root for standalone IDEs |
| `jetbrains.mps.build.tips` | — | `MPSTipsAndTricks` roots for a custom Tips & Tricks dialog |
| `jetbrains.mps.core.xml` | — | Needed when embedding raw XML (extra `plugin.xml` elements, tips, raw Ant) |

## Finding Existing Build Scripts in This Repo

- Glob: `**/*.build/models/**/*.mps`, or grep for `BuildProject` concept.
- `mps_mcp_query_nodes` (`FIND_INSTANCES`) with `conceptRef` for `jetbrains.mps.build.structure.BuildProject`.
- Representative samples:
  - `samples/customAspect/solutions/SampleCustomAspect.build/models/SampleCustomAspect.build.mps` — small MPS-language-plugin build (language + solution + plugin + auto layout). It compiles with `compiler = IntelliJ`, which is why it also declares an `idea_home` macro and the `IDEA` layout dependency; with the default compiler only `mps` is needed.
  - `plugins/mps-build/solutions/jetbrains.mps.build.sandbox/models/build1.mps` — plain-Java multi-module build with inter-script dependencies.
  - `plugins/mps-build/solutions/mpsBuild/models/build.mps` — model `jetbrains.mps.ide.build` of module `jetbrains.mps.ide.build`: the build of MPS itself and the catalog your scripts depend on (`mps`, `mpsStandalone`, `mpsCore`, …); reference for plugin declarations, groups, test configs (see `mps-distribution-build`).
  - `samples/sampleJavaExtensions/solutions/Build` (`buildOfSampleJavaExtensions`) — the docs' JavaExtensionsSample: only the `mps` dependency, default compiler, a `jetbrains.mps.core` plugin dependency and an extra `xml` element in the synthesized `plugin.xml`. The cleanest language-plugin template.
  - The docs' robot Kaja standalone IDE is built with the wizard; `samples/robot_Kaja` holds the languages only (`languages/Kajak` is `jetbrains.mps.samples.Kaja`; the runtime solution `jetbrains.mps.samples.JavaKaja` (`solutions/JavaKajak`) references `solutions/JavaKajak/images/kaja_images.jar`). Without the wizard, follow `references/standalone-manual-recipe.md`.

## Version Control Side Effects

With MPS's VCS integration enabled, MPS stages new module and model files, and sometimes generated output (`source_gen`, the generated Ant file), in git as soon as it writes them. When a task says not to commit or not to touch the index, check `git status` afterwards and report or undo what MPS staged.
