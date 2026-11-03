# BuildProject Skeleton

The root concept `jetbrains.mps.build.structure.BuildProject` has seven top-level child roles (`plugins`, `macros`, `dependencies`, `parts`, `aspects`, `layout`, `scriptsDir`) and three properties. Build outwards from this skeleton.

## JSON Skeleton

```json
{
  "concept": "jetbrains.mps.build.structure.BuildProject",
  "properties": [
    { "name": "name", "value": "MyProject" },
    { "name": "internalBaseDirectory", "value": "../../" },
    { "name": "fileName", "value": "build.xml" }
  ],
  "children": [
    { "role": "plugins",      "nodes": [ /* BuildJavaPlugin, BuildMPSPlugin, BuildModuleTestsPlugin, ... */ ] },
    { "role": "macros",       "nodes": [ /* BuildFolderMacro, BuildVariableMacro */ ] },
    { "role": "dependencies", "nodes": [ /* BuildExternalLayoutDependency, BuildProjectDependency */ ] },
    { "role": "parts",        "nodes": [ /* BuildSource_JavaOptions, BuildMps_Language, BuildMps_Solution,
                                             BuildMps_Group, BuildMps_IdeaPlugin, ... */ ] },
    { "role": "aspects",      "nodes": [ /* BuildMpsAspect (mps settings), BuildAspect_MpsTestModules, ... */ ] },
    { "role": "layout",       "nodes": [
        { "concept": "jetbrains.mps.build.structure.BuildLayout", "children": [
            { "role": "children", "nodes": [ /* BuildLayout_Folder / _Zip / _Jar / _File */ ] }
          ]
        }
      ]
    }
  ]
}
```

## Top-level Properties

| Property | XML id | Purpose |
|---|---|---|
| `name` | `TrG5h` | Script name (also used as Ant project name) |
| `internalBaseDirectory` | `2DA0ip` | Base dir for all relative paths inside the script, relative to the build model's file. Commonly `../../` (model lives 2 folders deep). |
| `fileName` | `turDy` | Target `build.xml` file name; path is relative to the build model's folder. |

## Role → Concept-ID Quick Reference (for raw `.mps` XML)

| Role name | XML id | Holds |
|---|---|---|
| `plugins` | `10PD9s` | `BuildJavaPlugin`, `BuildMPSPlugin`, `BuildModuleTestsPlugin`, `BuildSolutionRunnerPlugin` |
| `macros` | `1l3spd` | `BuildFolderMacro`, `BuildVariableMacro` |
| `dependencies` | `1l3spa` | `BuildExternalLayoutDependency`, `BuildProjectDependency` |
| `parts` | `3989C9` | Everything declared (modules, groups, plugins, options…) |
| `aspects` | — | `BuildMpsAspect` (mps settings), `BuildAspect_MpsTestModules` (test modules) |
| `layout` | `1l3spN` | Exactly one `BuildLayout` |
