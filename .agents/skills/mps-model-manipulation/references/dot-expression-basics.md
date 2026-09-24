# DotExpression: The Universal Chaining Node

**Every smodel/collections operation on a node is expressed as a `DotExpression`.** The `operand` is the receiver and `operation` is the action.

```
DotExpression
  operand: <any expression>
  operation: <one of the operation concepts>
```

This file lists the blueprints you'll reach for most often: cardinality choice, operand casting, navigation (`.parent`, `.children`, `.ancestor<C>`, `.ancestors<C>`, `.descendants<C>` with include-self `+`), the two type-cast forms (`node:C` vs `node as C`), the two downcast bridges (`expr/` smodel→Java and `downcast expr` collections→Java interface), `.isInstanceOf` / `.isNotNull` / `.isNull` / `.behaviorMethod(args)`, and the four common sequence operations (`.where`, `.any`, `.translate`, `list.add`). The reusable closure-literal blueprint is in `closures-catalog.md`.

## Cardinality cheatsheet — `SLinkAccess` vs `SLinkListAccess`

A single concept pair covers **both** reference links and containment children — there is no separate `SChildAccess`/`SChildListAccess` in this MPS (`search_concepts` confirms only `SLinkAccess`/`SLinkListAccess` exist, and their `link` reference targets a `LinkDeclaration` that may be either a reference link or a containment link). What selects the concept is the **cardinality**, not whether the role is a reference or a child.

| Cardinality | Access concept (reference *or* child) | Result type |
|---|---|---|
| `1`, `0..1` | `SLinkAccess` | `node<Target>` |
| `0..n`, `1..n` | `SLinkListAccess` | `sequence<node<Target>>` |

Symptoms of using the singular form (`SLinkAccess`) on a list-cardinality role:
- "operation is not applicable to null"
- "access to link 'X' is not expected here"
- "The reference X is out of search scope"

None of these mention cardinality — check it explicitly when these errors appear.

## Operand must be a typed `node<X>` — cast an untyped operand

`SLinkAccess` / `SLinkListAccess` / `SPropertyAccess` all require their **operand** to be typed as `node<X>` where `X` is the concept that declares the link/property. A plain `node<>` (e.g. the result of a generic operation that loses concept information, a parameter typed loosely as `node<BaseConcept>`, or a `VariableReference` to a `ForEachVariable` whose source sequence is `sequence<node<>>`) will fail validation with the same family of errors as the cardinality mismatch above — particularly **"out of search scope"** or **"access to link 'X' is not expected here"**.

**Fix**: wrap the operand in an `SNodeTypeCastExpression` to give it the right concept type. Use `asCast=false` (the strict `:` form) when you know statically that the node is of concept `X`; use `asCast=true` (the null-safe `as` form) when the cast may legitimately miss. The `SNodeTypeCastExpression` becomes the new `operand` of the surrounding `DotExpression`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression",
      "properties": [{ "name": "asCast", "value": "false" }],
      "children": [
        { "role": "leftExpression", "nodes": [{ "...": "<untyped node<> expression>" }] },
        { "role": "conceptArgument", "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
          "references": [{ "role": "conceptDeclaration", "target": "<X-concept-noderef>" }]
        }]}
      ]
    }]},
    { "role": "operation", "nodes": [{ "...": "<SLinkAccess / SPropertyAccess / etc. on link/property of X>" }] }
  ]
}
```

See "`node as C` vs `node:C`" below for the full `SNodeTypeCastExpression` blueprint and the difference between the two cast forms.

## Navigation blueprints

### `node.linkName` — link access (cardinality `1` or `0..1`)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.SLinkAccess",
      "references": [{ "role": "link", "target": "<LinkDeclaration-noderef>" }]
    }]}
  ]
}
```

For list cardinality (`0..n` or `1..n`), use `jetbrains.mps.lang.smodel.structure.SLinkListAccess` instead — same shape, different concept. This holds whether the role is a reference link or a containment child: `SLinkAccess`/`SLinkListAccess` serve both.

### `node.parent` — direct parent (no concept filtering)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_GetParentOperation"
    }]}
  ]
}
```

`Node_GetParentOperation` is a leaf — no `parameter` child needed.

### `node.children` — all direct children (returns `sequence<node<BaseConcept>>`)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation"
    }]}
  ]
}
```

`Node_GetChildrenOperation` is a leaf — no `parameter` child. To filter or recurse, chain `.where { ... }`, `.translate { ... }`, or cast children with `as`/`:` inside a closure.

### `node.ancestor<C>` — nearest ancestor of concept C (singular, returns `node<C>` or null)

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation",
      "children": [{
        "role": "parameter",
        "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Concept",
          "children": [{
            "role": "conceptArgument",
            "nodes": [{
              "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
              "references": [{ "role": "conceptDeclaration", "target": "<concept-noderef>" }]
            }]
          }]
        }]
      }]
    }]}
  ]
}
```

### `node.ancestors<C>` — all ancestors of concept C (plural, returns `sequence<node<C>>`)

Same structure as `ancestor<C>`, but use `Node_GetAncestorsOperation` (note the **s**):

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation",
      "children": [{
        "role": "parameter",
        "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Concept",
          "children": [{
            "role": "conceptArgument",
            "nodes": [{
              "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
              "references": [{ "role": "conceptDeclaration", "target": "<concept-noderef>" }]
            }]
          }]
        }]
      }]
    }]}
  ]
}
```

**`ancestor` vs `ancestors` summary:**

| Operation | Concept | Returns | Use when |
|---|---|---|---|
| `node.ancestor<C>` | `Node_GetAncestorOperation` | `node<C>` or null | you want the nearest matching ancestor |
| `node.ancestors<C>` | `Node_GetAncestorsOperation` | `sequence<node<C>>` | you want all matching ancestors |

#### Include-self variant: `ancestor<C, +>` / `ancestors<C, +>` / `descendants<C, +>`

The surface `+` after the concept filter adds the **starting node itself** to the result (if it matches `C`). It is a **second child in the `parameter` role**, sibling to the `OperationParm_Concept`:

- concept: `jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion`
- leaf — no properties, no references, no children

Blueprint fragment — the `parameter` role of `Node_GetAncestorsOperation` with both the concept filter and the inclusion flag:

```json
{ "role": "parameter", "nodes": [
  { "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Concept",
    "children": [
      { "role": "conceptArgument", "nodes": [
        { "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
          "references": [ { "role": "conceptDeclaration", "target": "<C-concept-noderef>" } ]
        }
      ]}
    ]
  },
  { "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" }
]}
```

Applies the same way to `Node_GetAncestorOperation` (singular) and `Node_GetDescendantsOperation` — the `parameter` role accepts multiple `AbstractOperationParameter` children.

### `node.descendants<C>` — all descendants of concept C (returns `sequence<node<C>>`)

Same `parameter → OperationParm_Concept → RefConcept_Reference` structure:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation",
      "children": [{
        "role": "parameter",
        "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.OperationParm_Concept",
          "children": [{
            "role": "conceptArgument",
            "nodes": [{
              "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
              "references": [{ "role": "conceptDeclaration", "target": "<concept-noderef>" }]
            }]
          }]
        }]
      }]
    }]}
  ]
}
```

## `node as C` vs `node:C` — two forms of smodel type cast

`SNodeTypeCastExpression` covers both syntaxes. The `asCast` property controls which:

| `asCast` | MPS syntax | Semantics |
|---|---|---|
| `"true"` | `node as C` | **Null-safe**: returns `null` if node is not of concept C |
| `"false"` | `node:C` | **Strict**: asserts the node is of concept C (error if not) |

Blueprint (use `asCast=false` for the strict `:` form):

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression",
  "properties": [{ "name": "asCast", "value": "true" }],
  "children": [
    { "role": "leftExpression", "nodes": [{ "...": "<node-expression>" }] },
    { "role": "conceptArgument", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
      "references": [{ "role": "conceptDeclaration", "target": "<concept-noderef>" }]
    }]}
  ]
}
```

> **Note**: `SNodeTypeCastExpression` is a top-level expression, **not** placed inside a `DotExpression`. The `leftExpression` child is the node being cast.

## `expr /` — `SemanticDowncastExpression`: smodel type → Java API type

Used when you hold a value typed by the **smodel type system** (`node<C>`, `model<L>`, etc.) but need to call a **raw Java API method** (`SModel.getModule`, `SModel.getRepository`, etc.) that the smodel DotExpression language does not expose as an operation. The `/` suffix strips the smodel wrapper: `node<C>` → `SNode`, `model<L>` → `SModel`.

`SemanticDowncastExpression` is **always** the `operand` child of an outer `DotExpression` that calls the Java API method. The target Java type is inferred from the method call — no explicit type annotation exists on the node.

Concept: `jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression`, alias `/`, ID `1145404486709`.
Child role: `leftExpression` (cardinality 1) — the smodel-typed expression being downcast.
No properties, no references.

**Blueprint — `(expr)/.javaMethod()`** (the only confirmed usage pattern):

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    {
      "role": "operand",
      "nodes": [{
        "concept": "jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression",
        "children": [{
          "role": "leftExpression",
          "nodes": [{ "...": "<smodel-typed expression: node<C> variable, this.link, node.model, …>" }]
        }]
      }]
    },
    {
      "role": "operation",
      "nodes": [{ "...": "<InstanceMethodCallOperation or other Java API call>" }]
    }
  ]
}
```

**Verified example — `(this.model)/.getModule()`** (from `jetbrains.mps.build.mps.testManifest.behavior`):

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    {
      "role": "operand",
      "nodes": [{
        "concept": "jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression",
        "children": [{
          "role": "leftExpression",
          "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
            "children": [
              { "role": "operand",   "nodes": [{ "concept": "jetbrains.mps.lang.behavior.structure.ThisNodeExpression" }] },
              { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" }] }
            ]
          }]
        }]
      }]
    },
    {
      "role": "operation",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation",
        "references": [{ "role": "baseMethodDeclaration", "target": "8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)/~SModel.getModule%28%29" }]
      }]
    }
  ]
}
```

**`SNodeTypeCastExpression` vs `SemanticDowncastExpression`:**

| Expression | MPS syntax | Type boundary | Typical use |
|---|---|---|---|
| `SNodeTypeCastExpression` | `node as C` / `node:C` | smodel → smodel | Narrow `node<Base>` to `node<Sub>` to access sub-concept children |
| `SemanticDowncastExpression` | `expr /` | **smodel → Java API** | Obtain `SNode`/`SModel` to call Java methods not modelled as smodel operations |

## `DowncastExpression` (collections) — MPS collection type → Java interface

Alias: **`downcast`**. Used to expose a **Java interface method** (e.g. `Iterable.iterator()`, `Map.computeIfAbsent()`) on a value whose static type is an **MPS collections type** (`sequence<>`, `list<>`, `set<>`, etc.). These MPS types do not directly expose the full Java interface contract, so the downcast bridges to the specific Java interface needed.

`DowncastExpression` is **always** the `operand` child of an outer `DotExpression` that calls the Java interface method. The target Java type is inferred from that method call — no explicit type annotation exists on the node.

Concept: `jetbrains.mps.baseLanguage.collections.structure.DowncastExpression`, alias `downcast`, ID `1228228912534`.
Child role: `expression` (cardinality 1) — the MPS collection-typed expression being downcast.
No properties, no references.

**Blueprint — `(downcast expr).javaMethod()`**:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    {
      "role": "operand",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.collections.structure.DowncastExpression",
        "children": [{
          "role": "expression",
          "nodes": [{ "...": "<MPS collection-typed expression: sequence<>, list<>, set<>, …>" }]
        }]
      }]
    },
    { "role": "operation", "nodes": [{ "...": "<InstanceMethodCallOperation — Java interface method>" }] }
  ]
}
```

**Verified example 1 — `(downcast test).iterator()`** (from `jetbrains.mps.closures.test`):

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    {
      "role": "operand",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.collections.structure.DowncastExpression",
        "children": [{
          "role": "expression",
          "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
            "references": [{ "role": "variableDeclaration", "target": "<variable: sequence/list/set typed>" }]
          }]
        }]
      }]
    },
    {
      "role": "operation",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation",
        "references": [{ "role": "baseMethodDeclaration", "target": "6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)/~Iterable.iterator%28%29" }]
      }]
    }
  ]
}
```

**Verified example 2 — `(downcast lateInitParameterRefs).computeIfAbsent(index, closure)`** (from `jetbrains.mps.kotlin.stubs.smodel.metadata`):

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    {
      "role": "operand",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.collections.structure.DowncastExpression",
        "children": [{
          "role": "expression",
          "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
            "references": [{ "role": "variableDeclaration", "target": "<Map-typed variable>" }]
          }]
        }]
      }]
    },
    {
      "role": "operation",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation",
        "references": [{ "role": "baseMethodDeclaration", "target": "6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)/~Map.computeIfAbsent%28java.lang.Object,java.util.function.Function%29" }],
        "children": [
          { "role": "actualArgument", "nodes": [{ "...": "<key expression>" }] },
          { "role": "actualArgument", "nodes": [{ "...": "<ClosureLiteral>" }] }
        ]
      }]
    }
  ]
}
```

> Neither downcast concept carries an explicit target type annotation — MPS infers the Java interface from the method call in the outer `DotExpression`'s `operation` role.

## `node.isInstanceOf(C)` — runtime concept check

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation",
      "children": [{
        "role": "conceptArgument",
        "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
          "references": [{ "role": "conceptDeclaration", "target": "<concept-noderef>" }]
        }]
      }]
    }]}
  ]
}
```

## `node.isNotNull` / `node.isNull` — null checks

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation"
    }]}
  ]
}
```

For the negated check use `Node_IsNullOperation` in the `operation` slot. Commonly paired with `.prev-sibling` / `.next-sibling` to guard boundary cases (see `check_ExplicitBond` in `mps-aspect-typesystem`):

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_IsNullOperation"
    }]}
  ]
}
```

## `node.behaviorMethod(args)` — behavior method call

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall",
      "references": [{ "role": "baseMethodDeclaration", "target": "<behavior-method-noderef>" }],
      "children": [
        { "role": "actualArgument", "nodes": [{ "...": "<arg-expression>" }] }
      ]
    }]}
  ]
}
```

## `sequence.where { it => condition }` — filter

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<sequence-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.collections.structure.WhereOperation",
      "children": [{
        "role": "closure",
        "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral",
          "children": [
            {
              "role": "parameter",
              "nodes": [{
                "concept": "jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration",
                "properties": [{ "name": "name", "value": "it" }, { "name": "resolveInfo", "value": "it" }],
                "children": [{
                  "role": "type",
                  "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.UndefinedType" }]
                }]
              }]
            },
            {
              "role": "body",
              "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
                "children": [{ "role": "statement", "nodes": [{ "...": "<condition-expression-statement>" }] }]
              }]
            }
          ]
        }]
      }]
    }]}
  ]
}
```

## `sequence.any { it => predicate }` — existential check

Same structure as `where`, but use `AnyOperation` instead of `WhereOperation`.

## `sequence.translate { it => ...; yield ...; ... }` — generator-style flatMap

`.translate` builds a new `sequence<T>` from a closure that can `yield` zero or more elements per input item. This is the idiomatic way to express tree traversals that produce a flat sequence of nodes (replacement for imperative `collect`-into-list loops).

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<sequence-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.collections.structure.TranslateOperation",
      "children": [{
        "role": "closure",
        "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral",
          "children": [
            { "role": "parameter", "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration",
              "properties": [{ "name": "name", "value": "it" }, { "name": "resolveInfo", "value": "it" }],
              "children": [{
                "role": "type",
                "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.UndefinedType" }]
              }]
            }]},
            { "role": "body", "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
              "children": [
                { "role": "statement", "nodes": [{
                  "concept": "jetbrains.mps.baseLanguage.closures.structure.YieldStatement",
                  "children": [{ "role": "expression", "nodes": [{ "...": "<emitted-expression>" }] }]
                }] }
              ]
            }]}
          ]
        }]
      }]
    }]}
  ]
}
```

`YieldStatement` takes a single `expression` child (role `expression`). Multiple `yield` statements inside the same closure each emit one element; the result of `.translate` is the concatenation of all yielded elements across all inputs.

**Typical pattern** — "collect all return statements under `root`" (sketch):

```
sequence<node<ReturnStatement>> collected =
    root.children.translate { it =>
      if (it.isInstanceOf<ReturnStatement>) { yield it:ReturnStatement; }
      foreach sub in collectReturnStatements(it) { yield sub; }
    };
```

## `list.add(element)` — mutation

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<list-variable-reference>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.collections.structure.AddElementOperation",
      "children": [
        { "role": "argument", "nodes": [{ "...": "<element-expression>" }] }
      ]
    }]}
  ]
}
```
