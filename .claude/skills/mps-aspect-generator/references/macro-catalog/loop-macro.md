## LoopMacro

Repeats the owning target subtree once per element. Most typically used to generate node's child collections. Body returns `sequence<node<>>`:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.LoopMacro",
  "children": [
    { "role": "sourceNodesQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.states` */ ]}
        ]
      }
    ]}
  ]
}
```

Inside the looped subtree, the implicit `node` variable rebinds to the *current element* of the sequence, not the outer source.
