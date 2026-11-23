# Declaring MPS Modules (`BuildMps_Language` / `_Solution` / `_Generator`)

A `BuildMps_Language`, `BuildMps_Solution`, or `BuildMps_Generator` is a *declaration* of an MPS module that participates in the build. Enter the descriptor `path`, then run the **Reload Modules From Disk** intention (Alt+Enter on the `BuildProject`, a group, or any node containing module declarations) to auto-fill name, uuid, dependencies, runtime solutions and extended languages from the descriptor on disk; the docs call this *Load required information from file*, which is also the name of the quick fix offered on a module whose declaration is out of sync. **Re-apply it after any dependency change.** Alternatively, the Model Checker reports out-of-sync declarations, and **Perform Quick Fixes** updates them. Declarations read the descriptor files on disk, so the modules need not be loaded in MPS.

## Common Roles (on `BuildMps_AbstractModule` / `BuildMps_Module`)

| Role | Concept | Purpose |
|---|---|---|
| `name`, `uuid` (properties) | — | Module name and id, filled from the descriptor |
| `path` | `BuildSourcePath`, usually `BuildSourceProjectRelativePath` | Path to the `.mpl` / `.msd` file |
| `sources` | `BuildMps_ModuleModelRoot`, `BuildMps_ModuleResources` (child `files`) | Model roots and icon/resource folders |
| `dependencies` | `BuildMps_ExtractedModuleDependency` wrapping `BuildMps_ModuleDependencyOnModule` (reference `module`) | Other modules this one depends on |
| `runtime` | `BuildMps_ModuleSolutionRuntime` (reference `solution`) | (on `Language`) runtime solution(s) |
| `generator` | `BuildMps_Generator` | (on `Language`) the language's generator module |
| `sourcesKind` (property) | enum `sources` (default) / `tests` / `sources_and_tests` / `none` | (on `Solution`) which roots are compiled — see `references/tests-and-workflow.md` |

`compact` only folds the node in the editor (intention *Fold* / *Unfold <name>*); new nodes get `compact = true`. It has no effect on the build.

## Minimal `BuildMps_Language`

```json
{
  "concept": "jetbrains.mps.build.mps.structure.BuildMps_Language",
  "properties": [
    { "name": "name",    "value": "com.example.mylang" },
    { "name": "uuid",    "value": "4ac0b19e-3e88-4e61-bab3-507ba2cceae8" },
    { "name": "compact", "value": "true" }
  ],
  "children": [
    {
      "role": "path",
      "nodes": [{
        "concept": "jetbrains.mps.build.structure.BuildSourceProjectRelativePath",
        "children": [{
          "role": "compositePart",
          "nodes": [{
            "concept": "jetbrains.mps.build.structure.BuildCompositePath",
            "properties": [{ "name": "head", "value": "languages" }],
            "children": [{
              "role": "tail",
              "nodes": [{
                "concept": "jetbrains.mps.build.structure.BuildCompositePath",
                "properties": [{ "name": "head", "value": "com.example.mylang" }],
                "children": [{
                  "role": "tail",
                  "nodes": [{
                    "concept": "jetbrains.mps.build.structure.BuildCompositePath",
                    "properties": [{ "name": "head", "value": "com.example.mylang.mpl" }]
                  }]
                }]
              }]
            }]
          }]
        }]
      }]
    },
    {
      "role": "sources",
      "nodes": [{
        "concept": "jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot",
        "properties": [
          { "name": "deployFolderName", "value": "models" },
          { "name": "convert2binary",   "value": "true" },
          { "name": "extracted",        "value": "true" }
        ],
        "children": [{
          "role": "location",
          "nodes": [{
            "concept": "jetbrains.mps.build.structure.BuildInputFiles",
            "children": [
              { "role": "dir", "nodes": [ /* BuildSourceProjectRelativePath to languages/.../models */ ] },
              { "role": "selectors", "nodes": [{
                "concept": "jetbrains.mps.build.structure.BuildFileIncludesSelector",
                "properties": [{ "name": "pattern", "value": "**/*.mps, **/*.mpsr, **/.model" }]
              }]}
            ]
          }]
        }]
      }]
    }
  ]
}
```

## `BuildMps_Generator`

A language's generator module, nested under the language's `generator` child:

```json
{
  "concept": "jetbrains.mps.build.mps.structure.BuildMps_Generator",
  "properties": [
    { "name": "name", "value": "com.example.mylang#12345" },
    { "name": "uuid", "value": "39b6594d-7cca-44f2-a797-b0ceaead0f42" }
  ],
  "children": [
    { "role": "dependencies", "nodes": [ /* BuildMps_ExtractedModuleDependency */ ] },
    { "role": "sources",      "nodes": [ /* BuildMps_ModuleModelRoot */ ] }
  ]
}
```

## `BuildMps_Solution`

Same as Language but without `generator` / `runtime` (and `accessory` / `managedGenerators`), plus `sourcesKind`. Use `BuildMps_ModuleModelRoot` for each model root directory.

## Dependency Wiring

Always wrap the dependency in a `BuildMps_ExtractedModuleDependency` (marker that **Reload Modules From Disk** filled this in):

```json
{
  "concept": "jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency",
  "children": [{
    "role": "dependency",
    "nodes": [{
      "concept": "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule",
      "properties": [{ "name": "reexport", "value": "false" }],
      "references": [{ "role": "module", "target": "r:...(jetbrains.mps.ide.build)/<id-of-JDK>" }]
    }]
  }]
}
```

## Common Target Modules in `jetbrains.mps.ide.build`

`JDK`, `MPS.Core`, `MPS.OpenAPI`, `MPS.IDEA`, `MPS.Platform`, `MPS.Editor`, `Annotations`, `jetbrains.mps.lang.core`, `jetbrains.mps.lang.descriptor`, `jetbrains.mps.lang.aspect`, … — `BuildMps_Solution` / `BuildMps_Language` nodes inside the scripts of `jetbrains.mps.ide.build` (e.g. `JDK` and `MPS.IDEA` in `mpsBootstrapCore`). Find one with `mps_mcp_query_nodes` `FIND_INSTANCES` (`conceptRef` `jetbrains.mps.build.mps.structure.BuildMps_AbstractModule`, `propertyFilter` on `name`).

**Cross-dependency to another module in the same script:** use a node reference to that module's id.
