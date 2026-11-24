# Layouts (`BuildProject.layout`)

Exactly one `BuildLayout` node whose `children` are layout entries. Layout entries compose: a folder contains jars, a jar contains compiled modules, etc. The layout can also pull in artifacts from the scripts this one depends on.

## Layout Concepts

| Concept (editor keyword) | Purpose |
|---|---|
| `BuildLayout` | Root of the output spec (single node) |
| `BuildLayout_Folder` | A named folder |
| `BuildLayout_Zip` / `BuildLayout_Tar` | An archive — children become its contents |
| `BuildLayout_Jar` | A jar file — children are its contents |
| `BuildLayout_File` | Copies a single source file into this location |
| `BuildLayout_Files` (`files from`) | Copies files from a source `path`, filtered by selectors in `parameters` |
| `BuildLayout_Import` (`import`) | Copies a folder or file node (reference `target`) from a dependency's layout, e.g. `mpsStandalone::bin` |
| `BuildLayout_ImportContent` (`import files from`) | Copies the *contents* of a dependency's layout node (reference `target`), filtered by `selectors` — e.g. `mpsStandalone::lib` minus `branding.jar` |
| `BuildLayout_CompileOutputOf` | Compiled classes of a declared `BuildSource_CompilablePart` — a `BuildSource_JavaModule` or an MPS `BuildMps_Module` (reference `module`) |
| `BuildMpsLayout_ModuleJars` | The jar(s) of a declared `BuildMps_AbstractModule` (reference `module`) |
| `BuildMpsLayout_Plugin` (`plugin`) | A declared `BuildMps_IdeaPlugin`, see `references/mps-plugins.md` |
| `BuildMpsLayout_PluginDescriptor` (`plugin descriptor of`) | Only the generated `plugin.xml` of a declared plugin |
| `BuildLayout_EchoProperties` / `BuildLayout_EchoXml` | Writes a generated properties / XML file (e.g. the `build.number` property file of a standalone IDE) |

## Named Containers

`BuildLayout_Folder`, `BuildLayout_Zip`, `BuildLayout_Jar` all take a required `containerName` child (a `BuildStringNotEmpty`) — that's the folder/jar/zip file name.

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
          "concept": "jetbrains.mps.build.structure.BuildLayout_CompileOutputOf",
          "references": [{ "role": "module", "target": "module-A" }]
        }]}
      ]
    }]}
  ]
}
```
