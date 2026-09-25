## Pattern 3: Return statement — `ReturnStatement_DataFlow`

Evaluates the optional return expression, then checks whether a return-jump target exists (non-null means inside a try-finally — jump to it instead of emitting `ret`).

```json
{
  "concept": "DataFlowBuilderDeclaration",
  "references": [{"role": "conceptDeclaration", "target": "ReturnStatement"}],
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
                    },
                    {
                      "concept": "IfStatement",
                      "children": [
                        {
                          "role": "condition",
                          "nodes": [{
                            "concept": "NotEqualsExpression",
                            "children": [
                              {
                                "role": "leftExpression",
                                "nodes": [{
                                  "concept": "DotExpression",
                                  "children": [
                                    {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
                                    {"role": "operation", "nodes": [{"concept": "Node_ConceptMethodCall", "references": [{"role": "baseMethodDeclaration", "target": "getReturnJumpTarget"}]}]}
                                  ]
                                }]
                              },
                              {"role": "rightExpression", "nodes": [{"concept": "NullLiteral"}]}
                            ]
                          }]
                        },
                        {
                          "role": "ifTrue",
                          "nodes": [{
                            "concept": "StatementList",
                            "children": [
                              {
                                "role": "statement",
                                "nodes": [{
                                  "concept": "EmitJumpStatement",
                                  "children": [
                                    {
                                      "role": "jumpTo",
                                      "nodes": [{
                                        "concept": "AfterPosition",
                                        "children": [
                                          {
                                            "role": "relativeTo",
                                            "nodes": [{
                                              "concept": "DotExpression",
                                              "children": [
                                                {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
                                                {"role": "operation", "nodes": [{"concept": "Node_ConceptMethodCall", "references": [{"role": "baseMethodDeclaration", "target": "getReturnJumpTarget"}]}]}
                                              ]
                                            }]
                                          }
                                        ]
                                      }]
                                    }
                                  ]
                                }]
                              }
                            ]
                          }]
                        },
                        {
                          "role": "ifFalseStatement",
                          "nodes": [{
                            "concept": "BlockStatement",
                            "children": [
                              {
                                "role": "statements",
                                "nodes": [{
                                  "concept": "StatementList",
                                  "children": [
                                    {"role": "statement", "nodes": [{"concept": "EmitRetStatement"}]}
                                  ]
                                }]
                              }
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
