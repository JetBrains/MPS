# Grouping Modules: `BuildMps_Group`

A named set of MPS modules that can be referenced as a unit (e.g. from a `BuildMps_IdeaPlugin`'s `content` or from an MPS test configuration). Each language reference needs the real language name and the path to its `.mpl`; enter the path first and run **Reload Modules From Disk** (Alt+Enter; the docs' *Load required information from file*) to fill in the name and dependencies.

```json
{
  "concept": "jetbrains.mps.build.mps.structure.BuildMps_Group",
  "properties": [{ "name": "name", "value": "MyPlugin" }],
  "children": [{
    "role": "modules",
    "nodes": [
      { "concept": "jetbrains.mps.build.mps.structure.BuildMps_Language", ... },
      { "concept": "jetbrains.mps.build.mps.structure.BuildMps_Solution", ... }
    ]
  }]
}
```

## Where to Put Modules

- Modules **nested inside a Group** are declared by that group.
- Modules outside any group are direct `parts` of the `BuildProject`.
- Choose nesting based on how you want to reference them. Groups make batch references trivial.

## Transitive-Closure Rule

A group must include the **transitive closure** of language dependencies. If Language A → B, both must be in the group. A missing language shows as a red squiggle; after adding it, rerun **Reload Modules From Disk** or apply the **Load required information from file** quick fix on the module that reported the error. The Inspector shows the dependency details of the selected module.
