# `downcast expr` — `DowncastExpression`

A collection operation is a `DotExpression` whose `operation` is a collections `*Operation` concept (`jetbrains.mps.baseLanguage.collections.structure`) with a single `ClosureLiteral` in the `closure` role (not `parameter`); the receiver sits in `operand`. `downcast` is the one collections concept that is not an operation: it wraps a collection-typed `operand` so the outer `DotExpression` can call a Java interface method on it. For the smodel-side bridge (`expr /`, `SemanticDowncastExpression`) see `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.

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
