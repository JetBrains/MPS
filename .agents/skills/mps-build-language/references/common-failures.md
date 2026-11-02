# Common Pitfalls

- **Writing the DSL as if it were Ant XML.** It is not — it is MPS nodes. Author via projectional editing or `mps_mcp_*` JSON tools, never by hand-editing the `.mps` file.
- **Forgetting `internalBaseDirectory`.** All relative paths are relative to this. Mis-setting it makes every source path wrong.
- **Declaring a module in `parts` and expecting it to appear in the output.** It won't — layout entries are what package things. If you don't reference a module in a `BuildLayout_CompileOutputOf` / `BuildMpsLayout_ModuleJars` / `BuildMpsLayout_Plugin` / group, it's not packaged.
- **Mis-syncing module dependencies.** MPS module dependencies (in `.mpl`) and build-script module dependencies (`BuildMps_ExtractedModuleDependency`) must match. Run **Load required information from file** after every `.mpl` change.
- **Missing transitive members in a `BuildMps_Group`.** All dependency-closure languages must be in the group or in a previously-declared group the plugin includes.
- **Not adding `com.intellij.modules.mps` as an IDEA-plugin dependency.** Required for plugins that run under MPS.
- **Forgetting that build scripts don't regenerate languages.** Generate your languages first (or enable the MPS plugin's full-make task).
- **Using `compiler="Eclipse"` with Java 21+.** Prefer `IntelliJ` or `Javac` for modern Java features. Always set `javaLevel` explicitly.
- **Hand-editing the generated `build.xml`.** Anything you change there is lost on next generation. Modify the `.mps` source instead.
