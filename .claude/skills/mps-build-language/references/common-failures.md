# Common Pitfalls

- **Writing the DSL as if it were Ant XML.** It is not — it is MPS nodes. Author via projectional editing or `mps_mcp_*` JSON tools, never by hand-editing the `.mps` file.
- **Forgetting `internalBaseDirectory`.** All relative paths are relative to this. Mis-setting it makes every source path wrong.
- **Declaring a module in `parts` and expecting it to appear in the output.** It won't — layout entries are what package things. If you don't reference a module in a `BuildLayout_CompileOutputOf` / `BuildMpsLayout_ModuleJars` / `BuildMpsLayout_Plugin` / group, it's not packaged.
- **Mis-syncing module dependencies.** MPS module dependencies (in `.mpl`) and build-script module dependencies (`BuildMps_ExtractedModuleDependency`) must match. Run **Reload Modules From Disk** (or the **Load required information from file** quick fix) after every `.mpl` change.
- **Missing transitive members in a `BuildMps_Group`.** All dependency-closure languages must be in the group or in a previously-declared group the plugin includes.
- **Not adding the MPS core plugin as a plugin dependency.** Every `BuildMps_IdeaPlugin` that contains languages needs `jetbrains.mps.core` or `com.intellij.modules.mps` in its `dependencies`.
- **Forgetting that build scripts don't regenerate languages.** Generate your languages first (or set *Execute a complete MPS make task*, `useMakeTask`, on the `mps` build plugin).
- **Missing artifacts location on the command line.** Running the generated `build.xml` outside MPS needs `-Dartifacts.mps=…` (or the macro, e.g. `-Dmps_home=…`) pointing at an MPS installation.
- **Setting `compiler = IntelliJ` without an `idea_home` macro.** The IntelliJ compiler (`javac2`) needs a folder macro named exactly `idea_home`, pointing at an MPS installation; otherwise leave `compiler` empty (Ant's javac). Always set `javaLevel` explicitly.
- **Hand-editing the generated `build.xml`.** Anything you change there is lost on next generation. Modify the `.mps` source instead.
