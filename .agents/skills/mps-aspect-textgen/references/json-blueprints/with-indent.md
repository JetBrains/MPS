## `with indent { ... }` from `IfStatement_TextGen`

Body as it appears in baseLanguage:

```
append \n ;
indent buffer ;
append {if (} ${node.condition} {) {} ;
with indent { append ${node.ifTrue} ; }
append \n {}} ...
```

`WithIndentOperation` holds a single `body` child of type `StatementList`:

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.WithIndentOperation",
  "children": [
    { "role": "body", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
        "children": [
          { "role": "statement", "nodes": [
            { "concept": "jetbrains.mps.lang.textGen.structure.AppendOperation",
              "children": [
                { "role": "part", "nodes": [
                  { "concept": "jetbrains.mps.lang.textGen.structure.NodeAppendPart",
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
                                  { "role": "link", "target": "<ifTrue-link-declaration-node-ref>" }
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
          ]}
        ]
      }
    ]}
  ]
}
```
