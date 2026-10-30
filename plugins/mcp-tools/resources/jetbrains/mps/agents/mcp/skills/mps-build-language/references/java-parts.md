# Java Parts (`BuildJavaPlugin`)

## `BuildSource_JavaOptions`

One default options node + optional per-module overrides.

| Property | Default | Meaning |
|---|---|---|
| `generateDebugInfo` | true | Passes `debug="true"` to javac |
| `generateNoWarnings` | false | Suppresses warnings |
| `fork` | false | Runs javac in a forked process |
| `heapSize` | (none) | `-Xmx` for forked javac / MPS generator in megabytes |
| `compiler` | `Eclipse` | `Eclipse` \| `IntelliJ` \| `Javac` |
| `javaLevel` | (required) | Source/target level, e.g. `"21"` |
| `compilerOptions` (child) | — | Extra javac args (UTF-8 is added automatically if missing) |
| `generatorJvmOptions` (child) | — | JVM args for the MPS generator task |
| `copyResources` | true | Copies non-`.java` files from `source_gen` |
| `resourceSelectors` (child) | — | File-name masks identifying resources |

```json
{
  "concept": "jetbrains.mps.build.structure.BuildSource_JavaOptions",
  "properties": [
    { "name": "generateDebugInfo", "value": "true" },
    { "name": "copyResources",     "value": "true" },
    { "name": "heapSize",          "value": "1024" },
    { "name": "compiler",          "value": "IntelliJ" },
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
