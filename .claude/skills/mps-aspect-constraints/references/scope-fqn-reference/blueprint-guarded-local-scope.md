## JSON blueprint — guarded local scope

Verbatim shape of the Calculator `if`-branch: `if (kind.isSubConceptOf(InputField) && come from outputField) { return SimpleRoleScope.forNamedElements(this, link/Calculator : inputField/); }`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.IfStatement",
  "children": [
    { "role": "condition", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.AndExpression",
        "children": [
          { "role": "leftExpression", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
              "children": [
                { "role": "operand", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                    "references": [ { "role": "variableDeclaration", "target": "<kind-param-node-ref>" } ]
                  }
                ]},
                { "role": "operation", "nodes": [
                  { "concept": "jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation",
                    "children": [
                      { "role": "conceptArgument", "nodes": [
                        { "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
                          "references": [
                            { "role": "conceptDeclaration", "target": "<target-concept-node-ref>" }
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
            { "concept": "jetbrains.mps.lang.scopes.structure.ComeFromExpression",
              "references": [
                { "role": "link", "target": "<link-declaration-node-ref>" }
              ]
            }
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
                  { "concept": "jetbrains.mps.baseLanguage.structure.StaticMethodCall",
                    "references": [
                      { "role": "classConcept", "target": "SimpleRoleScope" },
                      { "role": "baseMethodDeclaration", "target": "forNamedElements" }
                    ],
                    "children": [
                      { "role": "actualArgument", "nodes": [
                        { "concept": "jetbrains.mps.lang.behavior.structure.ThisNodeExpression" },
                        { "concept": "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression",
                          "references": [
                            { "role": "conceptDeclaration", "target": "<holder-concept-ref>" },
                            { "role": "linkDeclaration",    "target": "<containment-link-ref>" }
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

Substitute `<kind-param-node-ref>` with the persistent ref of the `kind` parameter declaration on the enclosing method (available right after the method skeleton is inserted); `<target-concept-node-ref>` with e.g. `InputField`'s `ConceptDeclaration`; `<link-declaration-node-ref>` with the containment link the request should come from (e.g. `outputField`); and `<holder-concept-ref>` / `<containment-link-ref>` with the concept and link whose children form the scope (e.g. `Calculator` / `inputField`).
