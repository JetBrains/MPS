## Inherited scope via `InheritedNodeScopeFactory` + `ScopeProvider`

Preferred for scopes that naturally belong to an ancestor (enclosing declaration, block, program, module). MPS walks up the containment chain from the reference until it finds a `ScopeProvider`, delegates there, and uses the returned scope for completion and validation.

Two pieces:

1. **On the constraint side** — `NodeReferentConstraint.searchScopeFactory` holds an `InheritedNodeScopeFactory` whose `kind` reference points to the **concept the scope should yield** (the scope is narrowed to nodes of that concept, or its sub-concepts).
2. **On the provider side** — a concept implements interface `jetbrains.mps.lang.core.behavior.ScopeProvider` and overrides `getScope(concept<> kind, node<> child)` in its **behavior** aspect (use `overriddenMethod` on the `ConceptMethodDeclaration`; see `mps-aspect-behavior`).

The `getScope` body receives:
- `kind` — the target concept of the reference (the `kind` from the factory, or a subconcept)
- `child` — the immediate child of `this` from whose subtree the request originated

…and returns a `Scope`. The typical body dispatches on `kind` / the originating role and either returns a locally-built scope or delegates upward.

### Verbatim example — Calculator `Calculator_Behavior.getScope`

```
public virtual Scope getScope(concept<> kind, node<> child)
  overrides ScopeProvider.getScope {
  if (kind.isSubConceptOf(InputField) && come from outputField) {
    return SimpleRoleScope.forNamedElements(this, link/Calculator : inputField/);
  }
  return parent scope;
}
```

Same body as JSON (the `body` child — a `StatementList` — of the `ConceptMethodDeclaration`). Targets are the Calculator concepts; substitute the node refs of your own concepts and links:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.IfStatement",
        "children": [
          { "role": "condition", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.AndExpression",
              "children": [
                { "role": "leftExpression", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                    "children": [
                      { "role": "operand", "nodes": [
                        { "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                          "references": [
                            { "role": "variableDeclaration", "target": "<kind-parameter-node-ref>" }
                          ]
                        }
                      ]},
                      { "role": "operation", "nodes": [
                        { "concept": "jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation",
                          "children": [
                            { "role": "conceptArgument", "nodes": [
                              { "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
                                "references": [
                                  { "role": "conceptDeclaration", "target": "<InputField-concept-node-ref>" }
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
                      { "role": "link", "target": "<outputField-link-declaration-node-ref>" }
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
                            { "role": "classConcept", "target": "<SimpleRoleScope-classifier-node-ref>" },
                            { "role": "baseMethodDeclaration", "target": "<SimpleRoleScope.forNamedElements-method-node-ref>" }
                          ],
                          "children": [
                            { "role": "actualArgument", "nodes": [
                              { "concept": "jetbrains.mps.lang.behavior.structure.ThisNodeExpression" },
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
          ]}
        ]
      }
    ]},
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
        "children": [
          { "role": "expression", "nodes": [
            { "concept": "jetbrains.mps.lang.scopes.structure.ParentScope" }
          ]}
        ]
      }
    ]}
  ]
}
```

Notes on the blueprint:
- `VariableReference.variableDeclaration` targets the `ParameterDeclaration` of `kind` on this very method — capture that node ref after inserting the method stub.
- `StaticMethodCall` resolves `SimpleRoleScope` and `forNamedElements` by reference. Stable targets: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/8401916545537277014` (`SimpleRoleScope`) and `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/7440942041679192702` (`forNamedElements`).
- `ComeFromExpression.link` and `LinkIdRefExpression.linkDeclaration` both point to `LinkDeclaration` nodes in your language's `structure` model.

Key DSL constructs used above:

| Construct | Meaning |
|---|---|
| `come from <childRole>` | True iff the scope request originated from the given containment role on `this`. Filter one provider's logic to specific sub-trees. |
| `parent scope` | Delegates to the nearest enclosing `ScopeProvider`. Desugars to `LazyParentScope(...)`. Use as the default return to keep the chain intact. |
| `kind.isSubConceptOf(C)` | Restrict by concept; use when one provider serves reference links of several target concepts. |
| `link/Calculator : inputField/` | smodel link literal — the stable, refactoring-safe way to refer to a link declaration (replaces the `LINKS.inputField$abc` form). |
| `SimpleRoleScope.forNamedElements(this, link/.../)` | Builds a scope over the children in that role, indexed by name for completion. |

Corresponding constraint (Calculator `InputFieldReference.field`):

```
link {field}
  searchScopeFactory: inherited, kind = InputField
```

Minimal `NodeReferentConstraint` blueprint with `InheritedNodeScopeFactory` — after insertion, set `applicableLink` to the link declaration and `kind` to the target concept:

```json
{
  "concept": "jetbrains.mps.lang.constraints.structure.NodeReferentConstraint",
  "references": [
    { "role": "applicableLink", "target": "<link-declaration-node-ref>" }
  ],
  "children": [
    { "role": "searchScopeFactory", "nodes": [
      { "concept": "jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory",
        "references": [
          { "role": "kind", "target": "<target-concept-node-ref>" }
        ]
      }
    ]}
  ]
}
```
