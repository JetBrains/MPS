# Inter-Script Dependencies (`BuildProject.dependencies`)

Two concepts wire a build script to other scripts or to prebuilt artifacts. Pick by what the target is: a `BuildProject` or a `BuildExternalLayout`.

## `BuildProjectDependency` (reference `script` → a `BuildProject`)

Used for MPS's own build scripts in `jetbrains.mps.ide.build` — `mps`, `mpsStandalone` and plugin scripts such as `mpsMakePlugin`, `mpsDebuggerPlugin`, `mpsExecutionPlugin`, `mpsVcs`, `mpsCore`, `mpsPlugins` are all `BuildProject` roots there — and for sibling scripts of your own.

```json
{
  "concept": "jetbrains.mps.build.structure.BuildProjectDependency",
  "references": [{ "role": "script", "target": "r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)/4301118715654192646" }],
  "children": [{
    "role": "artifacts",
    "nodes": [{
      "concept": "jetbrains.mps.build.structure.BuildSourceMacroRelativePath",
      "references": [{ "role": "macro", "target": "mps_home" }]
    }]
  }]
}
```

(`…/4301118715654192646` is the `mps` script; resolve others with `mps_mcp_search_root_node_by_name`, `scope: "all"`.)

- **Prebuilt script** (anything from `jetbrains.mps.ide.build`): set `artifacts` to the installation that holds its output — an MPS installation for `mps`; for plugin scripts the docs' standalone-IDE example uses `$mps_home/plugins`. Standalone IDE builds must point at a **generic** MPS distribution.
- **Sibling script in the same project**: omit `artifacts`; the generated `buildDependents` target builds it first.

Typical usage:
- Language plugin: depend on `mps`, artifacts at `$mps_home` — the only dependency needed with the default compiler (see `samples/sampleJavaExtensions`). When the build runs inside MPS, the current MPS instance is used by default; on the command line the generated `build.xml` needs `-Dartifacts.mps=<MPS home>` (or `-Dmps_home=…` when the location uses that macro).
- Standalone IDE: depend on `mpsStandalone` — artifacts at `$mps_home`; plugin scripts as needed — artifacts at `$mps_home/plugins`.

Dependencies of a dependency need not be listed. For those, the generator emits `${artifacts.<script>}` Ant properties that an outer tool can set.

## `BuildExternalLayoutDependency` (reference `layout` → a `BuildExternalLayout`)

Points to a layout that is described but not built by any script — in `jetbrains.mps.ide.build` that is `IDEA`, the IntelliJ platform jars.

```json
{
  "concept": "jetbrains.mps.build.structure.BuildExternalLayoutDependency",
  "references": [{ "role": "layout", "target": "r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)/7181125477683264500" }],
  "children": [{
    "role": "artifacts",
    "nodes": [{
      "concept": "jetbrains.mps.build.structure.BuildSourceMacroRelativePath",
      "references": [{ "role": "macro", "target": "idea_home" }]
    }]
  }]
}
```

A language plugin does not need it. It shows up in scripts that compile with `compiler = IntelliJ` (`BuildSource_JavaOptions`): that compiler requires a folder macro named exactly `idea_home` (typesystem error "define $idea_home macro to use IntelliJ compiler"), and such scripts — e.g. `samples/customAspect` — also depend on `IDEA` with artifacts at `$idea_home`. The generated Ant loads the compiler from `${idea_home}/lib/javac2.jar` and platform jars from `${artifacts.IDEA}/lib`, so point both at a directory with the platform's `lib/` — normally the MPS installation.

## Rule of Thumb

- Another build script (MPS's own or yours) → `BuildProjectDependency`; artifacts location for prebuilt ones, none for siblings.
- A described-only layout (`IDEA`) → `BuildExternalLayoutDependency` with an artifacts location.
