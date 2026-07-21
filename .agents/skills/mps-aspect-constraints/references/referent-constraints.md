# Reference (Referent) Constraints

Open this file when defining a `NodeReferentConstraint` — choosing between imperative reference-side scopes and ancestor-supplied `InheritedNodeScopeFactory`, attaching a `referentSetHandler`, or configuring concept-level `Default Scope`.

A reference's **scope** is the set of nodes the editor offers as completion and against which MPS validates the stored target. Without any constraint MPS falls back to a default scope: *all nodes of the reference's target concept in the current model plus all imported models*. For anything narrower, choose one of two approaches.

`NodeReferentConstraint` children:
- `applicableLink` — ref to the `LinkDeclaration` of the reference role (historic name `applicableReferent`; the current concept uses `applicableLink`)
- `searchScopeFactory` — holds either a declarative `InheritedNodeScopeFactory` (see [§ Inherited scope](#inherited-scope-via-inheritednodescopefactory--scopeprovider)) **or** an imperative `ConstraintFunction_ReferentSearchScope_Scope` (see [§ Imperative reference-side scope](#imperative-reference-side-scope))
- `referentSetHandler` / `referentValidator` — optional advanced hooks for rewriting the stored target or rejecting assignments

## Imperative reference-side scope

Put the scope-building code directly in the constraint. Low-ceremony, but the logic lives on the *referrer* side and tends to be copy-pasted across references. Use this form when the scope has no natural "owner" ancestor, or when computing it requires information only available at the reference site.

The `searchScopeFactory` child is a `ConstraintFunction_ReferentSearchScope_Scope` whose `body` is a `StatementList`. Available parameters inside the body:

| Name | Notes |
|---|---|
| `contextNode` | The node in which the reference lives (the referrer or its future parent during completion). Concept: `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode`. **Always available**, even during node creation before the node is placed. |
| `referenceNode` | The node actually holding the link — may be `null` during creation before placement. Use `contextNode` for traversal; check `referenceNode != null` before using it directly. |
| `containmentLink` | The containment link role the future node will occupy in its parent. |
| `linkTarget` | The current target node of the reference, if one is already set. |
| `position` | Integer index for ordered roles (rarely needed). |

The body's final expression is the returned `Scope` (no explicit `return` keyword is required; the whole body is treated as an expression-returning function).

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

### Computed sequences: `ListScope` with anonymous `getName`

Use `ListScope` instead of `SimpleRoleScope` when the scope's contents are not the children of one host in one role, but a **computed sequence** gathered from multiple places (ancestors, imported models, filtering, union). `ListScope(sequence<node<>>)` wraps any sequence into a `Scope`, but by default it does **not** name its elements — completion will show nothing useful and name-based resolution will fail. Override `getName(node<> child)` in an anonymous subclass to fix that.

**Verbatim example from StateChart `Transition_Constraints`, link `trigger`** — pick up every `Event` declared on any enclosing `Stateful` ancestor (the transition itself, its containing state, and the containing chart), then name each by its `name` property:

```
sequence<node<Event>> allEventsInPath =
    contextNode.ancestors<concept = Stateful, +>.selectMany({it => it.availableTriggers; });
new ListScope(allEventsInPath) {
  public string getName(node<> child) {
    child:Event.name;
  }
};
```

Three things make this idiom work:
- `ancestors<concept = Stateful, +>` — the `+` after the concept filter means **include self**. It is a second child in the `parameter` role, concept `jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion` (a leaf with no properties/children), sitting next to the `OperationParm_Concept`. Without `+` the starting node is excluded. See the mps-model-manipulation skill for the full smodel reference.
- `.selectMany({it => it.availableTriggers;})` — flattens a `sequence<Stateful>` into a `sequence<Event>` by concatenating each ancestor's `availableTriggers` children. The child-role access (`SLinkListAccess`) returns a sequence directly, so `selectMany` is the right combinator (not `select`, which would yield a sequence-of-sequences).
- The anonymous subclass — `AnonymousClassCreator` wrapping an `AnonymousClass` whose `classifier` ref targets `ListScope` and whose `baseMethodDeclaration` targets the `ListScope(sequence<node<>>)` constructor; its single `member` is an `InstanceMethodDeclaration` named `getName` returning a `string` and casting `child:Event` to read `.name`. (`child:C` is an `SNodeTypeCastExpression` with `asCast=false`.)

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

> The closure-literal shape (correct FQNs, the obligatory `type` → `UndefinedType` child, and referencing the parameter) is documented canonically in `mps-model-manipulation/references/closures-catalog.md`, section *“Closure literal blueprint (reusable building block)”* (the JSON object is at lines 94–110; the `InferredClosureParameterDeclaration` shape this fix mirrors is lines 98–104).

Use this pattern whenever the imperative scope must **gather nodes from more than one place**. For the "one host, one role" shape, stick with `SimpleRoleScope.forNamedElements(host, link/.../)` — it is cheaper and name-indexed.

### CompositeScope with dynamic addScope (Kaja `RoutineCall`)

Use when the scope must union **several different role sources** and may also grow dynamically after construction. `CompositeScope` has both a varargs constructor for a known set of scopes and an `addScope(Scope)` mutator for additional scopes added in a loop.

**Verbatim example from Kaja `RoutineCall_Constraints`, link `definition`** — covers routines defined at the Script level, inline in the script body, and in every `Library` explicitly imported via a `Require` statement:

```
CompositeScope scope = new CompositeScope(
    SimpleRoleScope.forNamedElements(contextNode.ancestor<concept = Script, +>, link/Script : definitions/),
    SimpleRoleScope.forNamedElements(contextNode.ancestor<concept = Library, +>, link/Library : definitions/),
    ListScope.forNamedElements(contextNode.ancestor<concept = Script, +>.body.commands.where({it => it.isInstanceOf(RoutineDefinition); }))
);
contextNode.ancestor<concept = Script, +>.descendants<concept = Require>.forEach({it =>
    scope.addScope(SimpleRoleScope.forNamedElements(it.library, link/Library : definitions/));
});
return scope;
```

Four things make this idiom work:
- `new CompositeScope(Scope...)` — varargs constructor; stable ctor ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/8401916545537277023`.
- `ListScope.forNamedElements(sequence<node<>>)` — static factory that wraps a computed sequence; requires every element to implement `INamedConcept` (i.e., carry a `name` property). **No anonymous subclass needed.** Stable method ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/5455284157994035599`; class ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/5455284157994035575`.
- `scope.addScope(anotherScope)` — `CompositeScope`'s mutable extension method; stable method ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/8401916545537277126`. Called inside a `forEach` closure to fold in one sub-scope per required library.
- `.descendants<concept = Require>` — downward traversal; concept `jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation`.

Prefer `CompositeScope` + `addScope` over building a `ListScope` from a flat collection when the contributing scopes are structurally heterogeneous (different roles, different host types) or when one of them must be collected dynamically via a traversal.

### Cross-model filtered scope with `rootsIncludingImported` (Kaja `Require`)

Use when a reference should point to **root nodes in the current model and all imported models**, but must exclude entries that are already in use elsewhere (deduplication). `contextNode.model` retrieves the containing model; `model.rootsIncludingImported(Concept)` returns all root nodes of that concept from the current model plus every transitively imported model.

**Verbatim example from Kaja `Require_Constraints`, link `library`** — offer every visible `Library` root, but exclude those already referenced by other `Require` nodes in the same `Script`:

```
final sequence<node<Library>> libraries =
    contextNode.model.rootsIncludingImported(Library).where({library =>
        contextNode.ancestor<concept = Script, +>.descendants<concept = Require>
            .where({it => it != contextNode; })
            .select({it => it.library; })
            .all({it => it != library; });
    });
ListScope.forNamedElements(libraries);
```

Key constructs:
- `contextNode.model` — `DotExpression` with operation `Node_GetModelOperation` (`jetbrains.mps.lang.smodel.structure.Node_GetModelOperation`). Returns the `SModel` of the node.
- `model.rootsIncludingImported(Library)` — operation `Model_RootsIncludingImportedOperation` (`jetbrains.mps.lang.smodel.structure.Model_RootsIncludingImportedOperation`); child `conceptArgument` → `RefConcept_Reference` pointing to the concept whose roots you want.
- The `where` predicate at the outer level filters the full library list to only those not already claimed by a sibling `Require` (excluding `contextNode` itself so the current node's own slot stays open).
- `ListScope.forNamedElements(sequence<>)` — wraps the filtered sequence without an anonymous subclass.

### Meta-level scope: offering structure declarations (`LinkDeclaration` referents)

Use when a reference targets a **structure declaration** of another language — e.g. an annotation
concept that names a containment role of its host via a `link : LinkDeclaration` reference (see
`mps-aspect-structure-concepts/references/attributes-and-annotations.md` §"Choosing the kind").
The scope is built from the *host concept's own declarations*, reached through
`node.conceptNode` and the structure-language behavior methods.

**Verbatim example from `jetbrains.mps.lang.test` `UnorderedChildrenMark_Constraints`, link `link`** —
offer only the host node's multi-valued containment roles:

```
ListScope.forResolvableElements(
    referenceNode.parent.conceptNode.getAggregationLinkDeclarations()
        .where({it => !it.isSingular(); }).toList);
```

Key pieces:
- `referenceNode.parent` — for a node attribute (annotation) the parent **is the host node** being
  attributed; for an ordinary child, it is the containing node.
- `.conceptNode` — smodel operation yielding the node's concept **declaration node** (in the
  language's `structure` model), which is what a `LinkDeclaration`-targeting reference must offer.
- `getAggregationLinkDeclarations()` — behavior method on `AbstractConceptDeclaration`
  (`jetbrains.mps.lang.structure.behavior`) returning all containment `LinkDeclaration`s including
  inherited ones; `getLinkDeclarations()` / `getPropertyDeclarations()` are the analogous calls for
  references and properties. `isSingular()` on `LinkDeclaration` filters cardinality (`0..1`/`1` vs
  `0..n`/`1..n`).
- `ListScope.forResolvableElements(list)` — names elements via their resolve info, which works for
  declarations (whose "name" is the role); see `scope-helpers.md`.
- The model authoring such references must be able to *see* the language under test's structure —
  usually already true because the model imports that language for its regular content.

For a reference to a `PropertyDeclaration`, the analogous body iterates
`getPropertyDeclarations()`. Precedent in the MPS codebase: `jetbrains.mps.lang.smodel`'s
`LinkRefExpression_Constraints` solves the same problem for `link/C : role/` literals.

Verbatim JSON of the scope-factory `body` (`StatementList`), extracted from the live constraint.
All targets below are **stable refs** into MPS's own models and can be used as-is:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [{ "role": "statement", "nodes": [{
    "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
    "children": [{ "role": "expression", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.StaticMethodCall",
      "references": [
        { "role": "classConcept",          "target": "r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/5455284157994035575" },
        { "role": "baseMethodDeclaration", "target": "r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/3812912149866273308" }
      ],
      "children": [{ "role": "actualArgument", "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
        "children": [
          { "role": "operand", "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
            "children": [
              { "role": "operand", "nodes": [{
                "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                "children": [
                  { "role": "operand", "nodes": [{
                    "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                    "children": [
                      { "role": "operand", "nodes": [{
                        "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                        "children": [
                          { "role": "operand",   "nodes": [{ "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" }]},
                          { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" }]}
                        ]}]},
                      { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" }]}
                    ]}]},
                  { "role": "operation", "nodes": [{
                    "concept": "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall",
                    "references": [{ "role": "baseMethodDeclaration",
                      "target": "r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)/1213877394521" }] }]}
                ]}]},
              { "role": "operation", "nodes": [{
                "concept": "jetbrains.mps.baseLanguage.collections.structure.WhereOperation",
                "children": [{ "role": "closure", "nodes": [{
                  "concept": "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral",
                  "children": [
                    { "role": "parameter", "nodes": [{
                      "concept": "jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration",
                      "properties": [{ "name": "name", "value": "it" }, { "name": "resolveInfo", "value": "it" }],
                      "children": [{ "role": "type", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.UndefinedType" }]}] }]},
                    { "role": "body", "nodes": [{
                      "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
                      "children": [{ "role": "statement", "nodes": [{
                        "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
                        "children": [{ "role": "expression", "nodes": [{
                          "concept": "jetbrains.mps.baseLanguage.structure.NotExpression",
                          "children": [{ "role": "expression", "nodes": [{
                            "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
                            "children": [
                              { "role": "operand", "nodes": [{
                                "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                                "references": [{ "role": "variableDeclaration", "target": "<it-closure-param-node-ref>" }] }]},
                              { "role": "operation", "nodes": [{
                                "concept": "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall",
                                "references": [{ "role": "baseMethodDeclaration",
                                  "target": "r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)/1213877254557" }] }]}
                            ]}]}]
                        }]}]
                      }]}]
                    }]}
                  ]}]}]
              }]}
            ]}]},
          { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.collections.structure.ToListOperation" }]}
        ]
      }]}]
    }]}]
  }]}]
}
```

Key FQNs (verified against the live node):

| Surface | Concept / target |
|---|---|
| `.conceptNode` | `jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation` (no children) |
| `.getAggregationLinkDeclarations()` / `.isSingular()` | `jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall` with `baseMethodDeclaration` → the behavior method in `jetbrains.mps.lang.structure.behavior` (stable refs above) |
| `ListScope.forResolvableElements` | class `r:...(jetbrains.mps.scope)/5455284157994035575`, method `r:...(jetbrains.mps.scope)/3812912149866273308` |
| `referenceNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode` |

The closure-literal shape (obligatory `type` → `UndefinedType`, `resolveInfo`) follows
`mps-model-manipulation/references/closures-catalog.md`.

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

## Choosing between the two approaches

Pick **inherited** when:
- The same scope serves many reference links in the language.
- The scope's content naturally lives on an ancestor (enclosing block, program, module).
- Multiple providers contribute overlapping scopes along the chain — `parent scope` composes them cleanly.

Pick **imperative reference scope** when:
- The scope is tiny and highly local to one reference.
- No reasonable ancestor would own it.

Any language that grows beyond a handful of references should gravitate to the inherited form.

## ReferentSetHandler: side effects on reference assignment

`ConstraintFunction_ReferentSetHandler` fires when the user picks a new referent for a reference (from completion, drag-and-drop, or programmatic `node.setReferent`). Unlike the scope (which filters what is *available*), the set handler controls *what gets stored* and may perform **side effects** — blocking the assignment, copying properties from the new referent to the referrer, or triggering auto-rename.

The set handler is the `referentSetHandler` child of `NodeReferentConstraint` (alongside `searchScopeFactory`).

**Parameters inside the body** (`ConstraintFunction_ReferentSetHandler.body → StatementList`):

| Name | Concept FQN | What it is |
|---|---|---|
| `referenceNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode` (stable c-ref: `c:3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1163200647017`) | The node that holds the reference (the referrer) |
| `oldReferentNode` | (no separate c-ref documented; verify with `mps_mcp_get_concept_details`) | The previously set target — allows diffing old vs new to decide what side effects to apply |
| `newReferentNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_newReferentNode` (stable c-ref: `c:3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1163202640154`) | The node the user just picked as the new target |

The handler body returns `void`; the trailing statement need not be an expression.

**Common patterns**:

1. **Auto-rename referrer on pick** — copies the target's name into the referrer's own name property on assignment:

   ```
   referenceNode.name = newReferentNode:TargetConcept.name;
   ```

2. **Copy multiple properties** — used when the referrer caches several fields from the target (e.g. parameter count, kind flags):

   ```
   referenceNode.paramCount = newReferentNode:Routine.paramCount;
   referenceNode.isVoid = newReferentNode:Routine.isVoid;
   ```

3. **`keeps original reference`** — aborts the assignment and preserves the existing reference. Use as a guard when the handler must conditionally reject a pick:

   ```
   if (!someCondition) {
     keeps original reference;
   }
   referenceNode.name = newReferentNode:TargetConcept.name;
   ```

   Concept: `jetbrains.mps.lang.constraints.structure.KeepOriginalReferenceStatement`. Valid only inside a `ConstraintFunction_ReferentSetHandler` body.

**Minimal blueprint** (the `referentSetHandler` child of `NodeReferentConstraint`):

```json
{
  "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSetHandler",
  "children": [
    { "role": "body", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }
    ]}
  ]
}
```

Add as the `referentSetHandler` child of the enclosing `NodeReferentConstraint`.

## Default Scope (concept-level, not reference-level)

**Default Scope** is a top-level constraint block on `ConceptConstraints` (not under a `NodeReferentConstraint`) that restricts all reference links pointing *to* this concept when those links have no explicit scope defined. It is the complement of the per-reference scope: per-reference scope controls what is offered from the *referrer* side; default scope controls what is offered from the *target concept* side.

Use default scope when:
- Every reference to this concept should see the same narrow set (e.g. only nodes in the same module).
- You don't want to repeat the same scope body on every referrer.

The block accepts a `scope` function (same parameters as the reference scope: `referenceNode`, `contextNode`, `containmentLink`, `linkTarget`, `position`) and a `presentation` function (deprecated — use the Editor aspect instead). If no default scope is defined and no per-reference scope is defined, MPS falls back to the global scope (all visible instances of the concept in imported models).
