# Sequence Operation Blueprints: `where`, `any`, `translate`, `list.add`

A collection operation is a `DotExpression` whose `operation` is a collections `*Operation` concept (`jetbrains.mps.baseLanguage.collections.structure`) with a single `ClosureLiteral` in the `closure` role (not `parameter`); the receiver sits in `operand`. The receiver is any sequence-typed expression — for node sequences (`node.children`, `.descendants<C>`) see `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin. The full operation list is in `references/collections-catalog/sequence-operations.md`; the closure rules are in `references/closures-catalog.md`.

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
