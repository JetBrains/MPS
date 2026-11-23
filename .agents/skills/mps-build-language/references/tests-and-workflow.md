# Test Configurations and Workflow Tasks

## Module Tests (`BuildModuleTestsPlugin`)

Runs `NodeTestCase`s and `EditorTestCase`s in an MPS-like environment. The actual concepts in `jetbrains.mps.build.mps.tests.structure` are `BuildAspect_MpsTestModules` (an aspect added to `BuildProject.aspects`), its optional `options` child `BuildMps_TestModules_Options`, `BuildMps_TestModules_Content`, `BuildMps_TestModuleGroup`, and `BuildMps_TestModule`. The run settings live on the options node, each as a child rather than a property: `haltonfailure`, `compressArgs`, `openTestReport` and `jvmArgs` (each a `BuildString`), `reportsDir` and `projectPath` (`BuildSourcePath`), and `requiredPlugins` (`RequiredPlugin`, reference `plugin` → a `BuildMps_IdeaPlugin`, for plugins auto-detection misses).

```json
{
  "concept": "jetbrains.mps.build.mps.tests.structure.BuildAspect_MpsTestModules",
  "properties": [
    { "name": "name", "value": "MyLangTests" }
  ],
  "children": [
    { "role": "options", "nodes": [{
      "concept": "jetbrains.mps.build.mps.tests.structure.BuildMps_TestModules_Options",
      "children": [
        { "role": "haltonfailure", "nodes": [{
          "concept": "jetbrains.mps.build.structure.BuildString",
          "children": [{ "role": "parts", "nodes": [{
            "concept": "jetbrains.mps.build.structure.BuildTextStringPart",
            "properties": [{ "name": "text", "value": "true" }]
          }]}]
        }]},
        { "role": "requiredPlugins", "nodes": [ /* RequiredPlugin, only if auto-detection fails */ ] },
        { "role": "jvmArgs",         "nodes": [ /* BuildString */ ] }
      ]
    }]},
    { "role": "modules", "nodes": [{
      "concept": "jetbrains.mps.build.mps.tests.structure.BuildMps_TestModuleGroup",
      "references": [{ "role": "group", "target": "MyLang" }]
    }]}
  ]
}
```

> Models with the `@tests` stereotype are generated into `tests_gen`, which is not compiled by default. Set `sourcesKind` on the `BuildMps_Solution` to `tests` or `sources_and_tests` (Inspector: "with tests" / "with sources and tests"; default `sources` = "with sources") — otherwise the tests are never compiled or run. Every test module group needs at least one such solution.

## `run code from solution` (mps-runner plugin)

Executes code from a solution inside an MPS environment during the build. Import `jetbrains.mps.build.mps.runner`, add `BuildSolutionRunnerPlugin` to `plugins`, then add a `BuildSolutionRunnerAspect` (keyword `run code`, reference `solution`, property `classSimpleName`) to `BuildProject.aspects`. Its `requiredPlugin` children (`RequiredPlugin` → a `BuildMps_IdeaPlugin`) enable plugins, with their dependencies, in that MPS instance.

## Workflow-Style Custom Tasks (`jetbrains.mps.build.workflow`)

For one-off Ant commands or named targets, use the workflow language. Typically used for pre/post-processing steps outside the normal DSL.

```json
{
  "concept": "jetbrains.mps.build.workflow.structure.BwfTask",
  "properties": [{ "name": "name", "value": "customCopy" }],
  "children": [{
    "role": "subTasks",
    "nodes": [{
      "concept": "jetbrains.mps.build.workflow.structure.BwfSubTask",
      "properties": [{ "name": "name", "value": "copyFiles" }],
      "children": [{
        "role": "statements",
        "nodes": [{
          "concept": "jetbrains.mps.build.workflow.structure.BwfAntStatement",
          "children": [{
            "role": "element",
            "nodes": [{
              "concept": "jetbrains.mps.core.xml.structure.XmlElement",
              "properties": [{ "name": "tagName", "value": "copy" }]
              /* ... XML attributes and children ... */
            }]
          }]
        }]
      }]
    }]
  }]
}
```

A `BwfTask` holds no statements itself: its `subTasks` (`BwfSubTask`, each with `statements` and optional `before` / `after` ordering) carry them. `BwfTaskPart` (in the `parts` of a `BuildCustomWorkflow` aspect in `BuildProject.aspects`, reference `task`) registers a task to be inserted into the generated build, optionally contributing more `subTasks`.
