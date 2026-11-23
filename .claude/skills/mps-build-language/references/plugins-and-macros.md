# Plugins and Macros

## Build-Language Plugins (`BuildProject.plugins`)

These are **build-language plugins** (DSL extensions that register task concepts), not IDE plugins. Add them to the `plugins` child role.

| Concept | Qualified name | Enables |
|---|---|---|
| `BuildJavaPlugin` | `jetbrains.mps.build.structure.BuildJavaPlugin` | Java compilation, jars, libraries (`BuildSource_JavaModule`, …) |
| `BuildMPSPlugin` | `jetbrains.mps.build.mps.structure.BuildMPSPlugin` | MPS modules, groups, MPS plugin declarations (`idea plugin`), branding. Property `useMakeTask` (*Execute a complete MPS make task* in the Inspector) makes the build regenerate languages first |
| `BuildModuleTestsPlugin` (`module-tests`) | `jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin` | Node/Editor test configurations |
| `BuildSolutionRunnerPlugin` (`mps-runner`) | `jetbrains.mps.build.mps.runner.structure.BuildSolutionRunnerPlugin` | `run code from solution` |

Minimum for an MPS language plugin: add both `BuildJavaPlugin` and `BuildMPSPlugin`.

```json
{ "role": "plugins", "nodes": [
    { "concept": "jetbrains.mps.build.structure.BuildJavaPlugin" },
    { "concept": "jetbrains.mps.build.mps.structure.BuildMPSPlugin" }
]}
```

## Macros (`BuildProject.macros`)

Two flavors. **Folder macros** represent filesystem folders; **Var macros** are computed string values.

### `BuildFolderMacro`

Named placeholder for a path, optionally with a `defaultPath` relative to the base directory. With no default, the value comes from the MPS path variable of the same name (Settings → Path Variables) or at **Ant time** via `-D<name>=...`; `-D` overrides the default too.

```json
{
  "concept": "jetbrains.mps.build.structure.BuildFolderMacro",
  "properties": [{ "name": "name", "value": "mps_home" }]
}
```

An `mps_home` **without** `defaultPath` always gets the warning "mps_home macro should point to the unzipped generic MPS distribution" (rule `check_BuildFolderMacro`); the wizard creates it that way too. To keep the check clean, add a `defaultPath` pointing at an MPS installation, relative to the base directory as `samples/sampleJavaExtensions` does:

```json
{
  "concept": "jetbrains.mps.build.structure.BuildFolderMacro",
  "properties": [{ "name": "name", "value": "mps_home" }],
  "children": [{
    "role": "defaultPath",
    "nodes": [{
      "concept": "jetbrains.mps.build.structure.BuildSourceProjectRelativePath",
      "children": [{ "role": "compositePart", "nodes": [{
        "concept": "jetbrains.mps.build.structure.BuildCompositePath",
        "properties": [{ "name": "head", "value": ".." }],
        "children": [{ "role": "tail", "nodes": [{
          "concept": "jetbrains.mps.build.structure.BuildCompositePath",
          "properties": [{ "name": "head", "value": "MPS" }]
        }]}]
      }]}]
    }]
  }]
}
```

Such a default is machine-specific; for a shared script either keep the warning or document the expected location.

Reference it inside a path with `BuildSourceMacroRelativePath`:

```json
{
  "concept": "jetbrains.mps.build.structure.BuildSourceMacroRelativePath",
  "references": [{ "role": "macro", "target": "mps_home" }]
}
```

In the generated `build.xml` this becomes an Ant property. The user runs `ant -Dmps_home=/path/to/MPS.app/Contents`. If not supplied, MPS uses its internal path variable.

### `BuildVariableMacro` (Var macro)

Holds a computed string. Has one optional `initialValue` child (a `BuildVariableMacroInit*`).

| Initializer | What it does |
|---|---|
| `BuildVariableMacroInitWithString` (`string`) | Fixed string, possibly with `${macro}` interpolations |
| `BuildVariableMacroInitWithDate` (`date`) | Current date formatted with a Java date `pattern` such as `yyyyMMdd` |
| `BuildVariableMacroInitWithValueFromFile` (`load property file`) | Reads the value from a property file (`fileName`) |
| `BuildVariableMacroInitWithFileContent` (`load file`) | Loads the entire file contents (`fileName`) |

A Var macro without an initializer can also be set later, from Path Variables or with `ant -D<name>=…`.

```json
{
  "concept": "jetbrains.mps.build.structure.BuildVariableMacro",
  "properties": [{ "name": "name", "value": "version" }],
  "children": [{
    "role": "initialValue",
    "nodes": [{
      "concept": "jetbrains.mps.build.structure.BuildVariableMacroInitWithString",
      "children": [{
        "role": "value",
        "nodes": [{
          "concept": "jetbrains.mps.build.structure.BuildString",
          "children": [{
            "role": "parts",
            "nodes": [{
              "concept": "jetbrains.mps.build.structure.BuildTextStringPart",
              "properties": [{ "name": "text", "value": "1.0" }]
            }]
          }]
        }]
      }]
    }]
  }]
}
```

## `BuildString` Composition

`BuildString` is composed of `parts`: `BuildTextStringPart` (plain text) and `BuildVarRefStringPart` (reference `macro` → another macro). Set `macro` by node reference (`r:…/<macro id>`, e.g. with `mps_mcp_update_node` SET REFERENCE after inserting the macros): a plain name such as `"version"` can stay unresolved, because dependency scripts in scope declare macros of the same name. Most places in the build language that take a "string" use `BuildString` / `BuildStringNotEmpty` — not a raw property — so they can interpolate other macros.
