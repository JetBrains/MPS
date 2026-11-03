# `NonDumbAwareActions` — Opting Actions Out of Dumb Mode

By default, actions generated from `ActionDeclaration` are "dumb-aware": they can run while indexing is in progress. Some actions must **not** run until indexing finishes. Declare a single `NonDumbAwareActions` root listing them:

```json
{
  "concept": "jetbrains.mps.lang.plugin.structure.NonDumbAwareActions",
  "children": [
    {
      "role": "actions",
      "nodes": [
        { "concept": "jetbrains.mps.lang.plugin.structure.ActionReference",
          "references": [ { "role": "actionDeclaration", "target": "ShowHelpForNode"     } ] },
        { "concept": "jetbrains.mps.lang.plugin.structure.ActionReference",
          "references": [ { "role": "actionDeclaration", "target": "GenerateJavaSources" } ] }
      ]
    }
  ]
}
```

One `NonDumbAwareActions` root per plugin model is enough; list every non-dumb-aware action inside it.
