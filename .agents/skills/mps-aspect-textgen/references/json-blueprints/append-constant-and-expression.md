## `append {<} ${XmlCharEscape.escapeIdentifier(node.tagName)} ;` — constant + expression

`ConstantStringAppendPart` + `NodeAppendPart` wrapping a `StaticMethodCall`:

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.AppendOperation",
  "children": [
    { "role": "part", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart",
        "properties": [{ "name": "value", "value": "<" }] },
      { "concept": "jetbrains.mps.lang.textGen.structure.NodeAppendPart",
        "children": [
          { "role": "value", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.StaticMethodCall",
              "references": [
                { "role": "classConcept", "target": "<XmlCharEscape-class-node-ref>" },
                { "role": "baseMethodDeclaration", "target": "<escapeIdentifier-method-node-ref>" }
              ],
              "children": [
                { "role": "actualArgument", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                    "children": [
                      { "role": "operand", "nodes": [
                        { "concept": "jetbrains.mps.lang.textGen.structure.NodeParameter" }
                      ]},
                      { "role": "operation", "nodes": [
                        { "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
                          "references": [
                            { "role": "property", "target": "<tagName-property-declaration-node-ref>" }
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
