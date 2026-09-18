# Property Constraints — Validators, Setters, Getters

Never Read this file in one shot. This index is also in `SKILL.md` — prefer that so you never open this file whole.

## Contents / when to read what

This file is ~14 KB. Pick the heading, `grep -n '^## '` (exactly two hashes and a space, so `###` is not a stop), then `Read` only that range until the next `## ` line.

| Section | Read it when |
|---|---|
| Shape of `NodePropertyConstraint` | validator / setter / getter shape |
| Key concept FQNs for property constraints | validator / getter / setter wrapper FQNs |
| Validator example — `Compound.cardinality` (ChemMastery) | validator JSON blueprint |
| Derived getter example — `Element.details_url` (ChemMastery) | derived-getter JSON blueprint |
| Property getter delegation and read-only semantics | {name} alias / set read-only |
| Validator that enforces sibling uniqueness | sibling-uniqueness validator |

Open this file when defining a `NodePropertyConstraint` — picking validator vs. setter vs. getter, writing per-property bodies, aliasing the `{name}` property, declaring `set <read-only>`, or building sibling-uniqueness validators.

## Shape of `NodePropertyConstraint`

`NodePropertyConstraint`:
- `applicableProperty` — ref to the `PropertyDeclaration`
- `propertyGetter` — `ConstraintFunction_PropertyGetter` body; returns what the editor shows / callers read
- `propertySetter` — `ConstraintFunction_PropertySetter` body; receives `propertyValue` and `node`, stores transformed value (e.g. clamp, normalize, parse)
- `propertyValidator` — `ConstraintFunction_PropertyValidator` body; returns `boolean`; rejects invalid user input without storing

Available parameters inside the body (concept FQNs under `jetbrains.mps.lang.constraints.structure`):
- `node` — `ConstraintsFunctionParameter_node` — the owning node (typed)
- `propertyValue` — `ConstraintsFunctionParameter_propertyValue` — candidate value (setter/validator)

> **⚠ Watch out — naming inconsistency**: property-constraint parameters use `Constraint**s**FunctionParameter_*` (plural `Constraints`), while most placement-rule parameters in `canbe-rules.md` use the singular `ConstraintFunctionParameter_*`. The only placement-rule parameter that follows the plural form is `ConstraintsFunctionParameter_node`. Copy the FQNs exactly — a missing or extra `s` silently fails to resolve and the blueprint will be rejected.

Use setters for normalization (trim, clamp, uppercase), validators for pure acceptance checks, getters only when the stored value differs from the displayed value. The body's trailing expression is the returned value — no explicit `return` keyword is required on a validator/getter.

## Key concept FQNs for property constraints

All under `jetbrains.mps.lang.constraints.structure` unless noted:

| Surface | FQN | Notes |
|---|---|---|
| validator function wrapper | `ConstraintFunction_PropertyValidator` | Holds `body` → `StatementList`; trailing expression is the boolean result |
| getter function wrapper | `ConstraintFunction_PropertyGetter` | Holds `body`; returns the displayed value |
| setter function wrapper | `ConstraintFunction_PropertySetter` | Holds `body`; must assign `node.<prop> = propertyValue` after transforming |
| `propertyValue` | `ConstraintsFunctionParameter_propertyValue` | Candidate value inside validator/setter |
| `node` | `ConstraintsFunctionParameter_node` | Owning node inside getter/validator/setter |

## Validator example — `Compound.cardinality` (ChemMastery)

Rejects non-positive cardinalities:

```
propertyValue > 0
```

JSON blueprint — the `body` (`StatementList`) of a `ConstraintFunction_PropertyValidator`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [
    { "role": "statement", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
        "children": [
          { "role": "expression", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.GreaterThanExpression",
              "children": [
                { "role": "leftExpression", "nodes": [
                  { "concept": "jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" }
                ]},
                { "role": "rightExpression", "nodes": [
                  { "concept": "jetbrains.mps.baseLanguage.structure.IntegerConstant",
                    "properties": [ { "name": "value", "value": "0" } ]
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

Full constraint skeleton (wrap the validator body above in `NodePropertyConstraint.propertyValidator`):

```json
{
  "concept": "jetbrains.mps.lang.constraints.structure.NodePropertyConstraint",
  "references": [
    { "role": "applicableProperty", "target": "<cardinality-property-declaration-node-ref>" }
  ],
  "children": [
    { "role": "propertyValidator", "nodes": [
      { "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator",
        "children": [
          { "role": "body", "nodes": [ /* StatementList from above */ ]}
        ]
      }
    ]}
  ]
}
```

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

## Property getter delegation and read-only semantics

**Aliasing the `name` property** — the most common use of `ConstraintFunction_PropertyGetter` is to expose a different physical property as the concept's `name`. Since `INamedConcept.getName()` reads the `{name}` property, overriding its getter redirects all scope lookups, editor display, and `getName()` calls to an alternative field without renaming that field:

```
// From StateChart State_Constraints:
property {name}
  get (node)->string { node.stateName; }
  set <read-only>
```

The `set <read-only>` declaration means: **no setter exists** — direct assignment to `name` is blocked at the MPS API level. This is the correct choice when the physical storage is a different property (`stateName`) — editing the aliased name must go through the real property.

**Delegating to a behavior method** — when name computation is non-trivial, the getter calls a behavior method instead of reading a property directly:

```
property {name}
  get (node)->string { node.getDisplayName(); }
  set <read-only>
```

This keeps name logic centralised in the behavior aspect and reusable from other behavior methods. The body is a single `DotExpression` whose operation is a `ConceptMethodCall` (`jetbrains.mps.lang.behavior.structure.ConceptMethodCall`) referencing the method declaration by stable node ref.

**Overriding `shortDescription`** — controls the label shown in completion menus alongside the node's name. Override its getter to provide richer disambiguation when many nodes share the same name:

```
property {shortDescription}
  get (node)->string { "context: " + node.name; }
  set <read-only>
```

**Absent setter vs no-op setter**:
- Absent setter (`set <read-only>`) — the `NodePropertyConstraint` has no `propertySetter` child. MPS treats the property as read-only and shows an error if code tries to assign it. Use for derived / aliased properties.
- Explicit empty setter — a `ConstraintFunction_PropertySetter` is present but its `body` is an empty `StatementList`. Assignment is silently discarded. Extremely rare; almost always a mistake. Verify intent before copying this pattern.

## Validator that enforces sibling uniqueness

Property validators can reject `propertyValue` based on siblings. StateChart's `State.isInitial` allows setting the flag to `true` only if no sibling `State` already carries it:

```
propertyValue == false || node.siblings.ofConcept<State>.all({it => it.isInitial == false; });
```

This is the canonical pattern for "only one X in the collection may have flag Y set": short-circuit on the benign value (`false` / absence), otherwise run an `all({...})` over `siblings.ofConcept<Self>` (see the mps-model-manipulation skill for `Node_GetAllSiblingsOperation`, `OfConceptOperation`, `AllOperation`). Put it in `propertyValidator`, not `propertySetter` — the validator returns `false` and MPS shows an editor error without mutating the node; a setter that silently clears the flag on peers would be a larger, less obvious side effect.
