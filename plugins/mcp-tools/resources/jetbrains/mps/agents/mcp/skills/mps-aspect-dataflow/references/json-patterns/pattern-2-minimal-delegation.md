## Pattern 2: Minimal delegation — single-child `code for`

Nodes with no branching delegate dataflow to their single expression child (e.g., `ExpressionStatement`).
Source: `r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)/1206459413245`

```json
{
  "concept": "DataFlowBuilderDeclaration",
  "references": [{"role": "conceptDeclaration", "target": "ExpressionStatement"}],
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
                      "concept": "EmitCodeForStatement",
                      "children": [
                        {
                          "role": "codeFor",
                          "nodes": [{
                            "concept": "DotExpression",
                            "children": [
                              {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
                              {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "expression"}]}]}
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
