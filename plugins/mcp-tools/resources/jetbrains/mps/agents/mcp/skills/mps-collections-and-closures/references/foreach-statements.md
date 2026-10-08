# Two `foreach` Concepts: BaseLanguage vs Collections

MPS has **two distinct** foreach concepts. Pick the right one for the iterable you have:

| When iterating… | Use concept | Loop-var concept | Loop-var reference |
|---|---|---|---|
| `sequence<node<C>>`, `list<node<C>>`, `set<node<C>>`, or any collections sequence | `jetbrains.mps.baseLanguage.collections.structure.ForEachStatement` | `ForEachVariable` | `ForEachVariableReference` |
| A Java array or plain `java.lang.Iterable` | `jetbrains.mps.baseLanguage.structure.ForeachStatement` | `LocalVariableDeclaration` | `VariableReference` |

The **collections** variant is the idiomatic one for MPS code that works with nodes. Using the BaseLanguage variant over a `sequence<node<X>>` will usually cause a type error.

If you see a typesystem error about iteration protocol, you almost certainly picked the wrong one.

## Collections `ForEachStatement` (preferred for MPS sequences)

Role layout: `variable` → `ForEachVariable`, `inputSequence` → `Expression`, `body` → `StatementList`. The loop-variable **type is not stored on the `ForEachVariable`** — it is inferred from the `inputSequence`'s element type.

```json
{
  "concept": "jetbrains.mps.baseLanguage.collections.structure.ForEachStatement",
  "children": [
    {
      "role": "variable",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.collections.structure.ForEachVariable",
        "properties": [
          { "name": "name", "value": "myVar" },
          { "name": "resolveInfo", "value": "myVar" }
        ]
      }]
    },
    { "role": "inputSequence", "nodes": [{ "...": "<sequence-or-set-expression>" }] },
    { "role": "body",          "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }] }
  ]
}
```

**To reference the loop variable inside the body**, use `ForEachVariableReference` (not `VariableReference`):

```json
{
  "concept": "jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference",
  "references": [{ "role": "variable", "target": "<ForEachVariable-noderef>" }]
}
```

## BaseLanguage `ForeachStatement` (Java-style)

Use only when the iterable is a plain Java array or `java.lang.Iterable`, not a collections sequence. Roles: `variable` → `LocalVariableDeclaration` (with its own `type` child), `iterable` → `Expression`, `body` → `StatementList`.

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.ForeachStatement",
  "children": [
    {
      "role": "variable",
      "nodes": [{
        "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration",
        "properties": [{ "name": "name", "value": "myVar" }],
        "children": [{
          "role": "type",
          "nodes": [{
            "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
            "references": [{ "role": "concept", "target": "<concept-noderef>" }]
          }]
        }]
      }]
    },
    { "role": "iterable", "nodes": [{ "...": "<iterable-expression>" }] },
    { "role": "body",     "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }] }
  ]
}
```
