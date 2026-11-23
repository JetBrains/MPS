# Disambiguation of Overloaded Terms

Agents frequently conflate four different "dependency" concepts. Keep them straight:

## Four "Dependency" Concepts

| Term | Where it lives | What it means |
|---|---|---|
| **Build solution module dependency** | `.msd` `<dependencies>` | What the *build solution itself* needs at MPS edit/generate time. Just `jetbrains.mps.ide.build`. |
| **Project dependency** (`BuildProject.dependencies`) | Inside the `BuildProject` root | A reference from *this* build script to *another* build script or to a described-only layout. Declared via `BuildProjectDependency` (→ another `BuildProject`, e.g. `mps`, `mpsStandalone` in `jetbrains.mps.ide.build`, or a sibling) or `BuildExternalLayoutDependency` (→ a `BuildExternalLayout`, e.g. `IDEA`). |
| **Java module dependency** | Inside a `BuildSource_JavaModule.content` | Classpath of a plain-Java module: jars, libraries, other Java modules. |
| **MPS module dependency** (`BuildMps_Module.dependencies`) | Inside a `BuildMps_Language` / `BuildMps_Solution` / `BuildMps_Generator` | Mirror of what the actual MPS module's `.mpl` / `.msd` declares — extracted automatically by **Reload Modules From Disk** (*Load required information from file*). The generator verifies at build time that what the script says matches what the module actually needs. |

A fifth, narrower one: **plugin dependency** (`BuildMps_IdeaPluginDependency` in `BuildMps_IdeaPlugin.dependencies`) — becomes a `<depends>` entry in the generated `plugin.xml`.

## "Aspect" Is Overloaded

| Term | Meaning |
|---|---|
| **Language aspect** | Structure / Editor / Typesystem / etc. inside a language module. Unrelated to build scripts. |
| **Project structure** (`BuildProject.parts`) | Everything buildable the script declares: Java options, Java modules and libraries, MPS modules, MPS groups, plugin declarations, branding. |
| **Additional aspects** (`BuildProject.aspects`) | Settings and integration tests: `BuildMpsAspect` (mps settings), `BuildAspect_MpsTestModules` (module tests), `BuildSolutionRunnerAspect`, `BuildCustomWorkflow`. |

## "Plugin" Is Overloaded

| Term | Meaning |
|---|---|
| **Build-language plugin** (`BuildProject.plugins`, the "use plugins" section) | A DSL extension of the build language: `java`, `mps`, `module-tests`, `mps-runner`. Not an IDE plugin. |
| **`BuildMps_IdeaPlugin`** (a *part*, keyword `idea plugin`) | Declaration of an MPS plugin being produced — a plugin for the IntelliJ platform that MPS runs on. |
| **`BuildMpsLayout_Plugin`** (a *layout entry*, keyword `plugin`) | Placement of that plugin inside the output. One declares the plugin, the other packages it. |
| **MPS plugin solution** | A solution with `jetbrains.mps.lang.plugin` models (actions, tool windows). It is *packaged into* an MPS plugin; see `mps-ide-plugin`. |

## "Project Structure" Has Two Readings

- In the docs ("project structure section"): the `parts` collection listing all buildable items (modules, plugins, groups).
- In MPS's UI: the tree of modules and solutions in your workspace. **Different thing.**

## `parts` Does Not Trigger Packaging

Declaring an item in `parts` **does not** cause it to be built. Only items **referenced from the `layout`** end up in the output. The `parts` collection is declaration; `layout` is what actually gets produced.
