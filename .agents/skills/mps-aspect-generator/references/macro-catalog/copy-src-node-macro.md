## CopySrcNodeMacro (minimal, no query)

Equivalent to `$COPY_SRC$` with the implicit `node` as source:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.CopySrcNodeMacro"
}
```

With an explicit source expression (e.g. `node.body` instead of `node`), add a `sourceNodeQuery` child:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.CopySrcNodeMacro",
  "children": [
    { "role": "sourceNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList returning a single node<> */ ]}
        ]
      }
    ]}
  ]
}
```
