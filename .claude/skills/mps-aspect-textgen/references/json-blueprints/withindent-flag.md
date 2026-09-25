## `withIndent` flag on a `NodeAppendPart` (from `ClassConcept_TextGen`)

Body as it appears in baseLanguage (the `with indent` after `visibility` is the Inspector flag, **not** a `WithIndentOperation`):

```
append visibility with indent node.visibility ;
```

The flag is a property `withIndent` directly on `NodeAppendPart`:

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.NodeAppendPart",
  "properties": [
    { "name": "withIndent", "value": "true" }
  ],
  "children": [
    { "role": "value", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
        "children": [
          { "role": "operand", "nodes": [
            { "concept": "jetbrains.mps.lang.textGen.structure.NodeParameter" }
          ]},
          { "role": "operation", "nodes": [
            { "concept": "jetbrains.mps.lang.smodel.structure.SLinkAccess",
              "references": [
                { "role": "link", "target": "<visibility-link-declaration-node-ref>" }
              ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```
