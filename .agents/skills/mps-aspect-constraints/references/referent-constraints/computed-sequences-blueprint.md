### Computed sequences — full `body` (`StatementList`) JSON blueprint

Full `body` (`StatementList`) blueprint — the scope factory's body. The target refs marked `<...>` must be captured from your structure/scope models after you insert the containing concepts:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement",
        "children": [
          { "role": "localVariableDeclaration", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration",
              "properties": [ { "name": "name", "value": "allEventsInPath" } ],
              "children": [
                { "role": "type", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.collections.structure.SequenceType",
                    "children": [
                      { "role": "elementType", "nodes": [
                        { "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
                          "references": [ { "role": "concept", "target": "<Event-concept-node-ref>" } ]
                        }
                      ]}
                    ]
                  }
                ]},
                { "role": "initializer", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                    "children": [
                      { "role": "operand", "nodes": [
                        { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                          "children": [
                            { "role": "operand", "nodes": [
                              { "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" }
                            ]},
                            { "role": "operation", "nodes": [
                              { "concept": "jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation",
                                "children": [
                                  { "role": "parameter", "nodes": [
                                    { "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Concept",
                                      "children": [
                                        { "role": "conceptArgument", "nodes": [
                                          { "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
                                            "references": [ { "role": "conceptDeclaration", "target": "<Stateful-concept-node-ref>" } ]
                                          }
                                        ]}
                                      ]
                                    },
                                    { "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" }
                                  ]}
                                ]
                              }
                            ]}
                          ]
                        }
                      ]},
                      { "role": "operation", "nodes": [
                        { "concept": "jetbrains.mps.baseLanguage.collections.structure.SelectManyOperation",
                          "children": [
                            { "role": "closure", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral",
                                "children": [
                                  { "role": "parameter", "nodes": [
                                    { "concept": "jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration",
                                      "properties": [
                                        { "name": "name", "value": "it" },
                                        { "name": "resolveInfo", "value": "it" }
                                      ],
                                      "children": [
                                        { "role": "type", "nodes": [
                                          { "concept": "jetbrains.mps.baseLanguage.structure.UndefinedType" }
                                        ]}
                                      ]
                                    }
                                  ]},
                                  { "role": "body", "nodes": [
                                    { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
                                      "children": [
                                        { "role": "statement", "nodes": [
                                          { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
                                            "children": [
                                              { "role": "expression", "nodes": [
                                                { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                                                  "children": [
                                                    { "role": "operand", "nodes": [
                                                      { "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                                                        "references": [ { "role": "variableDeclaration", "target": "<it-closure-param-node-ref>" } ]
                                                      }
                                                    ]},
                                                    { "role": "operation", "nodes": [
                                                      { "concept": "jetbrains.mps.lang.smodel.structure.SLinkListAccess",
                                                        "references": [ { "role": "link", "target": "<availableTriggers-link-declaration-node-ref>" } ]
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
      { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
        "children": [
          { "role": "expression", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.AnonymousClassCreator",
              "children": [
                { "role": "cls", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.AnonymousClass",
                    "properties": [
                      { "name": "name", "value": "ListScope$anonymous" },
                      { "name": "nestedName", "value": "ListScope$anonymous" },
                      { "name": "nonStatic", "value": "true" }
                    ],
                    "references": [
                      { "role": "classifier", "target": "<ListScope-classifier-node-ref>" },
                      { "role": "baseMethodDeclaration", "target": "<ListScope(sequence<node<>>)-ctor-node-ref>" }
                    ],
                    "children": [
                      { "role": "member", "nodes": [
                        { "concept": "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration",
                          "properties": [ { "name": "name", "value": "getName" } ],
                          "children": [
                            { "role": "visibility", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.structure.PublicVisibility" }
                            ]},
                            { "role": "returnType", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.structure.StringType" }
                            ]},
                            { "role": "parameter", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.structure.ParameterDeclaration",
                                "properties": [ { "name": "name", "value": "child" } ],
                                "children": [
                                  { "role": "type", "nodes": [
                                    { "concept": "jetbrains.mps.lang.smodel.structure.SNodeType" }
                                  ]}
                                ]
                              }
                            ]},
                            { "role": "body", "nodes": [
                              { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
                                "children": [
                                  { "role": "statement", "nodes": [
                                    { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
                                      "children": [
                                        { "role": "expression", "nodes": [
                                          { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                                            "children": [
                                              { "role": "operand", "nodes": [
                                                { "concept": "jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression",
                                                  "properties": [ { "name": "asCast", "value": "false" } ],
                                                  "children": [
                                                    { "role": "leftExpression", "nodes": [
                                                      { "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                                                        "references": [ { "role": "variableDeclaration", "target": "<child-param-node-ref>" } ]
                                                      }
                                                    ]},
                                                    { "role": "conceptArgument", "nodes": [
                                                      { "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
                                                        "references": [ { "role": "conceptDeclaration", "target": "<Event-concept-node-ref>" } ]
                                                      }
                                                    ]}
                                                  ]
                                                }
                                              ]},
                                              { "role": "operation", "nodes": [
                                                { "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
                                                  "references": [ { "role": "property", "target": "<Event.name-property-declaration-node-ref>" } ]
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

> The closure-literal shape (correct FQNs, the obligatory `type` → `UndefinedType` child, and referencing the parameter) is documented canonically in `references/closures-catalog.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin, section *“Closure literal blueprint (reusable building block)”* (the JSON object is at lines 94–110; the `InferredClosureParameterDeclaration` shape this fix mirrors is lines 98–104).

Use this pattern whenever the imperative scope must **gather nodes from more than one place**. For the "one host, one role" shape, stick with `SimpleRoleScope.forNamedElements(host, link/.../)` — it is cheaper and name-indexed.
