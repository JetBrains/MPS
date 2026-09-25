## Derived getter example — `Element.details_url` (ChemMastery)

Derives a URL from another property (`id`) instead of storing it. The stored `details_url` is never read directly; the getter fabricates the displayed value:

```
string id = node.id;
if (id != null) {
  return "https://www.periodni.com/" + id.toLowerCase() + ".html";
} else {
  return "";
}
```

JSON blueprint — the `body` (`StatementList`) of a `ConstraintFunction_PropertyGetter`. Uses `ConstraintsFunctionParameter_node` to reach other properties on the same node:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement",
        "children": [
          { "role": "localVariableDeclaration", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration",
              "properties": [ { "name": "name", "value": "id" } ],
              "children": [
                { "role": "type", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.StringType" }
                ]},
                { "role": "initializer", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                    "children": [
                      { "role": "operand", "nodes": [
                        { "concept": "jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" }
                      ]},
                      { "role": "operation", "nodes": [
                        { "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
                          "references": [
                            { "role": "property", "target": "<id-property-declaration-node-ref>" }
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
    ]},
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.IfStatement",
        "children": [
          { "role": "condition", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.NotEqualsExpression",
              "children": [
                { "role": "leftExpression", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                    "references": [ { "role": "variableDeclaration", "target": "<id-local-decl-node-ref>" } ]
                  }
                ]},
                { "role": "rightExpression", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.NullLiteral" }
                ]}
              ]
            }
          ]},
          { "role": "ifTrue", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
              "children": [
                { "role": "statement", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
                    "children": [
                      { "role": "expression", "nodes": [
                        { "concept": "jetbrains.mps.baseLanguage.structure.PlusExpression",
                          "children": [
                            { "role": "leftExpression", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.structure.PlusExpression",
                                "children": [
                                  { "role": "leftExpression", "nodes": [
                                    { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral",
                                      "properties": [ { "name": "value", "value": "https://www.periodni.com/" } ]
                                    }
                                  ]},
                                  { "role": "rightExpression", "nodes": [
                                    { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                                      "children": [
                                        { "role": "operand", "nodes": [
                                          { "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                                            "references": [ { "role": "variableDeclaration", "target": "<id-local-decl-node-ref>" } ]
                                          }
                                        ]},
                                        { "role": "operation", "nodes": [
                                          { "concept": "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation",
                                            "references": [
                                              { "role": "baseMethodDeclaration", "target": "java.lang.String.toLowerCase()" }
                                            ]
                                          }
                                        ]}
                                      ]
                                    }
                                  ]}
                                ]
                              }
                            ]},
                            { "role": "rightExpression", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral",
                                "properties": [ { "name": "value", "value": ".html" } ]
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
          ]},
          { "role": "ifFalseStatement", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
              "children": [
                { "role": "statement", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
                    "children": [
                      { "role": "expression", "nodes": [
                        { "concept": "jetbrains.mps.baseLanguage.structure.StringLiteral",
                          "properties": [ { "name": "value", "value": "" } ]
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
