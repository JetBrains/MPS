## `append $list{node.content} ;` — list dispatch

`CollectionAppendPart` whose `list` is an `SLinkListAccess` (the multi-child containment role). Omit the optional `separator` child for no separator:

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.AppendOperation",
  "children": [
    { "role": "part", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.CollectionAppendPart",
        "children": [
          { "role": "list", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
              "children": [
                { "role": "operand", "nodes": [
                  { "concept": "jetbrains.mps.lang.textGen.structure.NodeParameter" }
                ]},
                { "role": "operation", "nodes": [
                  { "concept": "jetbrains.mps.lang.smodel.structure.SLinkListAccess",
                    "references": [
                      { "role": "link", "target": "<content-link-declaration-node-ref>" }
                    ]
                  }
                ]}
              ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```
