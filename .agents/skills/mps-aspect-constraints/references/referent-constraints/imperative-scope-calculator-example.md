### Verbatim example — Calculator `InputFieldReference_Constraints`, link `field`

```
SimpleRoleScope.forNamedElements(contextNode.ancestor<concept = Calculator>, link/Calculator : inputField/);
```

This walks up from the referrer to its enclosing `Calculator`, then scopes completion to that `Calculator`'s `inputField` children, indexed by name.

Same body as JSON (the `body` child of `ConstraintFunction_ReferentSearchScope_Scope`). Substitute your own link-declaration and concept-declaration node refs:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
        "children": [
          { "role": "expression", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.StaticMethodCall",
              "references": [
                { "role": "classConcept", "target": "<SimpleRoleScope-classifier-node-ref>" },
                { "role": "baseMethodDeclaration", "target": "<SimpleRoleScope.forNamedElements-method-node-ref>" }
              ],
              "children": [
                { "role": "actualArgument", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                    "children": [
                      { "role": "operand", "nodes": [
                        { "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" }
                      ]},
                      { "role": "operation", "nodes": [
                        { "concept": "jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation",
                          "children": [
                            { "role": "parameter", "nodes": [
                              { "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Concept",
                                "children": [
                                  { "role": "conceptArgument", "nodes": [
                                    { "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
                                      "references": [
                                        { "role": "conceptDeclaration", "target": "<Calculator-concept-node-ref>" }
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
                  },
                  { "concept": "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression",
                    "references": [
                      { "role": "conceptDeclaration", "target": "<Calculator-concept-node-ref>" },
                      { "role": "linkDeclaration", "target": "<inputField-link-declaration-node-ref>" }
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

Key new concepts used above (all from `jetbrains.mps.lang.constraints` and `jetbrains.mps.lang.smodel`; see `scope-fqn-reference.md` for the full FQN table):

| Construct | FQN | Notes |
|---|---|---|
| `contextNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode` | Implicit parameter of scope/validator constraint functions; no properties or children |
| `.ancestor<concept = X>` | `jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation` + child `parameter` of concept `jetbrains.mps.lang.smodel.structure.OperationParm_Concept` | The concept filter is wrapped in an `OperationParm_Concept` whose `conceptArgument` is a `RefConcept_Reference` |
| `link/C : role/` | `jetbrains.mps.lang.smodel.structure.LinkIdRefExpression` | Two references: `conceptDeclaration` (owner) and `linkDeclaration` (the link) |
| `ConstraintFunction_ReferentSearchScope_Scope` | `jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope` | The imperative scope-factory concept itself; lives under `NodeReferentConstraint.searchScopeFactory` |
