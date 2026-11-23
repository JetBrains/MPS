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

| Property | Purpose |
|---|---|
| `name` | Script name (also used as Ant project name) |
| `internalBaseDirectory` | Base dir for all relative paths inside the script, relative to the build **solution's** directory (where its `.msd` lives). Commonly `../../` for a solution at `<project>/solutions/<name>.build`, which makes the project folder the base. The editor shows the resolved absolute path. Module descriptors must lie inside it. |
| `fileName` | Name of the generated Ant file, written into the base directory. Empty means `build.xml`; give each script its own name when several share a base directory. The generated Ant writes to `build/tmp/<name>` and `build/artifacts/<name>` under the base directory, and `clean` deletes only those, so scripts with different `name`s do not overwrite each other's output. |

## Top-level Roles

| Role | Holds |
|---|---|
| `plugins` | `BuildJavaPlugin`, `BuildMPSPlugin`, `BuildModuleTestsPlugin`, `BuildSolutionRunnerPlugin` |
| `macros` | `BuildFolderMacro`, `BuildVariableMacro` |
| `dependencies` | `BuildProjectDependency`, `BuildExternalLayoutDependency` |
| `parts` | Everything declared (modules, groups, plugins, options, branding…) |
| `aspects` | `BuildMpsAspect` (mps settings), `BuildAspect_MpsTestModules` (test modules), `BuildSolutionRunnerAspect`, `BuildCustomWorkflow` |
| `layout` | Exactly one `BuildLayout` (required) |
| `scriptsDir` | Optional `BuildRelativePath` |
