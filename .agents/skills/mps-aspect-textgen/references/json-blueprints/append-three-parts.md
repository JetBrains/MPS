## `append {&} ${node.entityName} {;} ;` — three parts (constant, node, constant)

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.AppendOperation",
  "children": [
    { "role": "part", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart",
        "properties": [{ "name": "value", "value": "&" }] },
      { "concept": "jetbrains.mps.lang.textGen.structure.NodeAppendPart",
        "children": [
          { "role": "value", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
              "children": [
                { "role": "operand", "nodes": [
                  { "concept": "jetbrains.mps.lang.textGen.structure.NodeParameter" }
                ]},
                { "role": "operation", "nodes": [
                  { "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
                    "references": [
                      { "role": "property", "target": "<entityName-property-declaration-node-ref>" }
                    ]
                  }
                ]}
              ]
            }
          ]}
        ]
      },
      { "concept": "jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart",
        "properties": [{ "name": "value", "value": ";" }] }
    ]}
  ]
}
```
