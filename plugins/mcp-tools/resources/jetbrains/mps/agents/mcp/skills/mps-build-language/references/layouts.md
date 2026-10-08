# Layouts (`BuildProject.layout`)

Exactly one `BuildLayout` node whose `children` are layout entries. Layout entries compose: a folder contains jars, a jar contains compiled modules, etc.

## Layout Concepts

| Concept | Purpose |
|---|---|
| `BuildLayout` | Root of the output spec (single node) |
| `BuildLayout_Folder` (`398223`) | A named folder |
| `BuildLayout_Zip` (`3981dG`) | A zip file — children become its contents |
| `BuildLayout_Jar` (`3981dx`) | A jar file — children are its contents |
| `BuildLayout_File` (`28jJK3`) | Copies a source file into this location |
| `BuildLayout_ImportContent` (`3ygNvl`) | Inlines the contents of another layout node referenced by id |
| `BuildLayout_CopyOfContainer` (`3_I8Xc`) | Includes the *container itself* (folder/jar) from another location |
| `BuildMpsLayout_ModuleJar` / `Saw0i` | Compiled Java classes of a declared `BuildMps_AbstractModule` or `BuildSource_JavaModule` |
| `BuildMpsLayout_Plugin` | A declared `BuildMps_IdeaPlugin`, see `references/idea-plugins.md` |
| `BuildLayout_IdeaPlugin` | Standalone IDEA-plugin layout (independent of `BuildMps_IdeaPlugin`) |
| `BuildLayout_Fileset` (`2HvfSZ`) | Generic file inclusion via a path + selectors |
| `BuildLayout_Ace`* | Additional content extractors — project-specific |

## Named Containers

`BuildLayout_Folder`, `BuildLayout_Zip`, `BuildLayout_Jar` all take a `containerName` child (role `Nbhlr`, a `BuildStringNotEmpty`) — that's the folder/jar/zip file name.

## Typical MPS-Plugin Layout (from `SampleCustomAspect.build`)

```json
{
  "concept": "jetbrains.mps.build.structure.BuildLayout",
  "children": [{
    "role": "children",
    "nodes": [{
      "concept": "jetbrains.mps.build.structure.BuildLayout_Zip",
      "children": [
        { "role": "containerName", "nodes": [ /* BuildStringNotEmpty "SampleCustomAspect.zip" */ ] },
        { "role": "children", "nodes": [{
            "concept": "jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin",
            "references": [{ "role": "plugin", "target": "SampleCustomAspect" }],
            "children": [{
              "role": "packagingType",
              "nodes": [{ "concept": "jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" }]
            }]
        }]}
      ]
    }]
  }]
}
```

## Packaging a Plain Java Module

```json
{
  "concept": "jetbrains.mps.build.structure.BuildLayout_Zip",
  "children": [
    { "role": "containerName", "nodes": [ /* "MyLib.zip" */ ] },
    { "role": "children", "nodes": [{
      "concept": "jetbrains.mps.build.structure.BuildLayout_Jar",
      "children": [
        { "role": "containerName", "nodes": [ /* "mylib.jar" */ ] },
        { "role": "children", "nodes": [{
          "concept": "jetbrains.mps.build.structure.BuildMpsLayout_ModuleJar",
          "references": [{ "role": "module", "target": "module-A" }]
        }]}
      ]
    }]}
  ]
}
```
