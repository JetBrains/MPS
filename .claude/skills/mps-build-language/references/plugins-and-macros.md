# Plugins and Macros

## Build-Language Plugins (`BuildProject.plugins`)

These are **build-language plugins** (DSL extensions that register task concepts), not IDE plugins. Add them to the `plugins` child role.

| Concept | Qualified name | Enables |
|---|---|---|
| `BuildJavaPlugin` | `jetbrains.mps.build.structure.BuildJavaPlugin` | Java compilation, jars, libraries (`BuildSource_JavaModule`, …) |
| `BuildMPSPlugin` | `jetbrains.mps.build.mps.structure.BuildMPSPlugin` | MPS modules, groups, IDEA plugins |
| `BuildModuleTestsPlugin` | `jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin` | Node/Editor test configurations |
| `BuildSolutionRunnerPlugin` | `jetbrains.mps.build.mps.runner.structure.BuildSolutionRunnerPlugin` | `run code from solution` |

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

Named placeholder for a path. Value is supplied at **Ant time** via `-D<name>=...` or via an MPS path variable of the same name.

```json
{
  "concept": "jetbrains.mps.build.structure.BuildFolderMacro",
  "properties": [{ "name": "name", "value": "mps_home" }]
}
```

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
| `BuildVariableMacroInitWithString` | Fixed string, possibly with `${macro}` interpolations |
| `BuildVariableMacroInitWithDate` | `new Date()` formatted with a Java `SimpleDateFormat` pattern |
| `BuildVariableMacroInitWithPropertyFile` | Reads a key from a property file |
| `BuildVariableMacroInitWithFileContent` | Loads the entire file contents |

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

`BuildString` is composed of `parts`: `BuildTextStringPart` (plain text) and `BuildStringVarRef` (reference to another macro). Most places in the build language that take a "string" use `BuildString` / `BuildStringNotEmpty` — not a raw property — so they can interpolate other macros.
