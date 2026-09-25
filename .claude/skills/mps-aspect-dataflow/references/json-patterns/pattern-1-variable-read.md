## Pattern 1: Variable read — `VariableReference_DataFlow`

The simplest possible builder: a variable reference emits a single read.
Source: `r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)/7074068829090025540`

```json
{
  "concept": "DataFlowBuilderDeclaration",
  "properties": {"name": "VariableReference_DataFlow"},
  "references": [{"role": "conceptDeclaration", "target": "VariableReference"}],
  "children": [
    {
      "role": "builderBlock",
      "nodes": [{
        "concept": "BuilderBlock",
        "children": [
          {
            "role": "body",
            "nodes": [{
              "concept": "StatementList",
              "children": [
                {
                  "role": "statement",
                  "nodes": [
                    {
                      "concept": "EmitReadStatement",
                      "children": [
                        {
                          "role": "variable",
                          "nodes": [{
                            "concept": "DotExpression",
                            "children": [
                              {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
                              {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "variableDeclaration"}]}]}
                            ]
                          }]
                        }
                      ]
                    }
                  ]
                }
              ]
            }]
          }
        ]
      }]
    }
  ]
}
```
