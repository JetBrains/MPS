# Java Parts (`BuildJavaPlugin`)

## `BuildSource_JavaOptions`

One default options node + optional per-module overrides.

| Property | Default | Meaning |
|---|---|---|
| `optionsName` | (empty) | Name of a non-default options node, so modules can pick it |
| `generateDebugInfo` | true (set by the node factory) | Passes `debug="true"` to javac |
| `noWarnings` | false | *generate no warnings* — suppresses warnings |
| `fork` | false | Runs javac in a forked process |
| `heapSize` | (none) | *maximum heap size (MB)* for javac |
| `compiler` | empty = `<default compiler>` (Ant's javac) | `modern` \| `IntelliJ` \| `jikes` \| `gcj`. `IntelliJ` uses the platform's `javac2` task and **requires a folder macro named `idea_home`** — see `references/dependencies.md` |
| `javaLevel` | (empty) | *java compliance level*, e.g. `"21"`; set it explicitly |
| `compilerOptions` | (empty) | *java compiler options* — extra javac args (string; UTF-8 encoding is added if missing) |
| `generatorJvmOptions` | (empty) | *generator jvm options* — JVM args for the generate task (string) |
| `copyResources` | false | Copies non-`.java` files from `source_gen` into the class output. **Set it to `true` for language plugins**: MPS generates concept icons (`TextIcon*.png` next to the structure aspect) into `source_gen`, and with `false` they are missing from the jar while the check stays clean. The checker's "Need resources entry" quick fix only adds the module's own `icons/**, resources/**` folders and does not cover this. With `useMakeTask = true` the setting has no effect unless the run sets `-Dforce.java.compile=true`: the `java.compile.*` targets it controls are skipped, and the MPS make task's `classes_gen` already holds the icons |
| `resourceSelectors` (child) | — | *resource patterns* — file masks identifying resources |

```json
{
  "concept": "jetbrains.mps.build.structure.BuildSource_JavaOptions",
  "properties": [
    { "name": "generateDebugInfo", "value": "true" },
    { "name": "copyResources",     "value": "true" },
    { "name": "heapSize",          "value": "1024" },
    { "name": "javaLevel",         "value": "21" }
  ],
  "children": [{
    "role": "resourceSelectors",
    "nodes": [{
      "concept": "jetbrains.mps.build.structure.BuildFileIncludesSelector",
      "properties": [{ "name": "pattern", "value": "**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.svg, **/*.txt, **/*.ico, **/*.zip, **/*.info" }]
    }]
  }]
}
```

## `BuildSource_JavaModule`

A plain Java module. Children: `sources` (0..n `BuildSource_JavaSources`, usually a `BuildSource_JavaContentRoot` with a `basePath` and `BuildSource_JavaContentFolder`s of `kind` `source` / `test` / `excluded`; resources go in a `BuildSource_JavaResources` sibling), `dependencies` (jars / modules / libraries), optional `options` and `outputFolder`.

```json
{
  "concept": "jetbrains.mps.build.structure.BuildSource_JavaModule",
  "properties": [{ "name": "name", "value": "module-A" }],
  "children": [
    {
      "role": "sources",
      "nodes": [{
        "concept": "jetbrains.mps.build.structure.BuildSource_JavaContentRoot",
        "children": [
          { "role": "basePath", "nodes": [ /* BuildSourcePath, e.g. BuildSourceMacroRelativePath */ ] },
          { "role": "folders",  "nodes": [{
              "concept": "jetbrains.mps.build.structure.BuildSource_JavaContentFolder",
              "properties": [
                { "name": "kind",         "value": "source" },
                { "name": "relativePath", "value": "src" }
              ]
          }]}
        ]
      }]
    },
    {
      "role": "dependencies",
      "nodes": [
        {
          "concept": "jetbrains.mps.build.structure.BuildSource_JavaDependencyJar",
          "properties": [{ "name": "reexport", "value": "true" }],
          "children": [{ "role": "jar", "nodes": [ /* BuildSource_JavaJar path */ ] }]
        },
        {
          "concept": "jetbrains.mps.build.structure.BuildSource_JavaDependencyModule",
          "references": [{ "role": "module", "target": "module-B" }]
        }
      ]
    }
  ]
}
```

## `BuildSource_JavaLibrary` (Grouping)

A `BuildSource_JavaLibrary` part lets you define a named bag of jars / class folders referenced by name from multiple modules. Its `elements` child (0..n) usually holds `BuildSource_JavaLibraryCP` nodes whose `classpath` child is a `BuildSource_JavaCP`: `BuildSource_JavaJars`, `BuildSource_JavaClassFolder` or `BuildSource_JavaLibraryExternalJar`. Referenced from modules via `BuildSource_JavaDependencyLibrary` (reference `library`).
