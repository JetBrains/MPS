# Declaring MPS Modules (`BuildMps_Language` / `_Solution` / `_Generator`)

A `BuildMps_Language`, `BuildMps_Solution`, or `BuildMps_Generator` is a *declaration* of an MPS module that participates in the build. Enter the descriptor `path` on each language and solution, then run the **Reload Modules From Disk** intention (Alt+Enter on the `BuildProject`, a group, or any node containing module declarations) to auto-fill name, uuid, dependencies, runtime solutions, extended languages and referenced library jars (`BuildMps_ModuleDependencyJar`) from the descriptor on disk; it also creates each language's generator declaration. The intention is offered on a group or module, but its target node is the `BuildProject` root (`mps_mcp_apply_intention` with `jetbrains.mps.build.mps.intentions.ReloadModulesFromDisk_Intention`). When you declare several modules that depend on each other, one pass is not enough: it fills names and uuids, but dependencies between the new declarations stay as "… should be extracted into build script" errors. Apply it again until the error count stops changing (usually twice); the docs call this *Load required information from file*, which is also the name of the quick fix offered on a module whose declaration is out of sync. **Re-apply it after any dependency change.** Alternatively, the Model Checker reports out-of-sync declarations, and **Perform Quick Fixes** updates them. Declarations read the descriptor files on disk, so the modules need not be loaded in MPS.

## Common Roles (on `BuildMps_AbstractModule` / `BuildMps_Module`)

| Role | Concept | Purpose |
|---|---|---|
| `name`, `uuid` (properties) | — | Module name and id, filled from the descriptor |
| `path` | `BuildSourcePath`, usually `BuildSourceProjectRelativePath` | Path to the `.mpl` / `.msd` file; absent on a generator nested in its language (see `BuildMps_Generator` below) |
| `sources` | `BuildMps_ModuleModelRoot`, `BuildMps_ModuleResources` (child `files`) | Model roots and icon/resource folders |
| `dependencies` | `BuildMps_ExtractedModuleDependency` wrapping `BuildMps_ModuleDependencyOnModule` (reference `module`) | Other modules this one depends on |
| `runtime` | `BuildMps_ModuleSolutionRuntime` (reference `solution`) | (on `Language`) runtime solution(s) |
| `generator` | `BuildMps_Generator` | (on `Language`) the language's generator module |
| `sourcesKind` (property) | enum `sources` / `tests` / `sources_and_tests` / `none` | (on `Solution`) which roots are compiled — see `references/tests-and-workflow.md`. The enum has no stored default and Reload does not fill it. An empty value builds as `sources` (`hasSources()` treats it so), but `mps_mcp_check_root_node_problems` reports it as "Empty enumeration property"; set `sources` explicitly to keep the MCP check clean |

`compact` only folds the node in the editor (intention *Fold* / *Unfold <name>*); declarations inserted from a blueprint or in the editor get `compact = true`, those Reload creates do not. It has no effect on the build.

**Resources entry.** The wizard gives every language a `BuildMps_ModuleResources` (`resources files from <module folder> includes icons/**, resources/**`). It gives a solution one only when the solution uses `jetbrains.mps.lang.resources` or has `FileIcon` nodes. The checker reports the info "… Need resources entry …" on any language or solution declaration whose module uses `jetbrains.mps.lang.resources` and has no such entry. Apply its quick fix `jetbrains.mps.build.mps.typesystem.addModuleResources_QuickFix` with `mps_mcp_apply_intention` on that declaration. It is offered only where the info is reported, and it is not auto-applicable (`applyImmediately = false`), so `mps_mcp_check_root_node_problems` `autoApplyQuickFixes` skips it. It packages the module's own icon and resource folders; generated icons need `copyResources` (`references/java-parts.md`).

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

A language's generator module, nested under the language's `generator` child. **Do not write it yourself.** Declare the language with its `path` and leave `generator` empty. **Reload Modules From Disk** then creates the generator declaration from the `.mpl`, with `name`, `uuid`, the generator's model root and its dependencies (only while the language's `generator` is empty). A nested generator has **no** `path` of its own; it lives in its language's `.mpl`. MPS's own scripts set `path` only on standalone generators that have their own descriptor (`load from …`).

**A generator created from a JSON blueprint gets an empty `path`.** Every `BuildMps_Language`, `_Solution`, `_Generator` or `_DevKit` that a blueprint creates (`mps_mcp_update_node`, `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_root_node_from_json`) runs the node factory of `BuildMps_AbstractModule`. The factory sets `compact = true` and adds an empty `path`, a `BuildSourceProjectRelativePath` with no `compositePart`. A dry run skips node factories, so it does not show this. A language or solution blueprint replaces the empty path with its own. A generator does not, whether it is alone or inside a language blueprint's `generator` role. A rewrite of the whole `BuildProject` root with `mps_mcp_update_root_node_from_json` recreates every generator, so even the ones Reload made get the empty `path` again; edit the script with `mps_mcp_update_node` instead.

Reload keeps the empty path, and the root check and MAKE stay clean. The `generate` target decides whether it matters:

- With `useMakeTask` off, the target holds `<generate>` chunks, and those skip generators nested in a language (the build generator turns them into the language's managed generators). The empty path is harmless.
- With `useMakeTask = true`, the target holds `<mps.make>` instead, which lists every module that has a `path`. The generator appears as `<module file="${basedir}" />`, and `ant … generate` fails at once:

```
[mps.make] Exception in thread "main" java.lang.AssertionError: bad file: <base directory>
[mps.make]   at jetbrains.mps.tool.common.Script.addModuleFile(Script.java:87)
```

`ant build` alone does not run the `generate` target, so it does not fail.

- **Find it:** the editor and PLAIN TEXT hide a nested generator's `path` (they show `load from` only on standalone generators). Look in the AGENTIC VIEW: `path: BuildSourceProjectRelativePath #<id>` with `empty: children compositePart`. The generated Ant file has a `<module file="${basedir}" />` line.
- **Fix it:** delete that `path` child (`mps_mcp_update_node` `SET` `CHILD` with only `childNodeRef` = the path node), or delete the generator declaration and apply Reload again, which recreates it without `path`. Then make the build solution again, so that the Ant file loses the `<module file="${basedir}" />` line.

## `BuildMps_Solution`

Same as Language but without `generator` / `runtime` (and `accessory` / `managedGenerators`), plus `sourcesKind`; set it explicitly (`{ "name": "sourcesKind", "value": "sources" }`) — empty behaves as `sources` but fails the MCP check. Use `BuildMps_ModuleModelRoot` for each model root directory.

If the solution's descriptor references a library jar, Reload adds a `BuildMps_ModuleDependencyJar` for it, and that jar must also appear in the layout — see `references/mps-plugins.md`.

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
