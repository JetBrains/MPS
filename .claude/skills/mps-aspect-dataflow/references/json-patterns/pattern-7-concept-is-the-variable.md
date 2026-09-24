## Pattern 7: Concept-is-the-variable — `VariableDeclaration_DataFlow`

When the concept node **is** the variable being declared (not a reference to one), use `write node` directly (i.e., the `variable` expression is just `NodeParameter`, not a `DotExpression.link`). Then delegate to the optional initializer.

Source: `r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)/1206536952487`

Emitted sequence (outline):
1. `write node` — declares the variable slot
2. `code for node.initializer` — evaluates the initializer expression (omit if not present / guard with `if (node.initializer != null)`)

```json
[
  {
    "concept": "EmitWriteStatement",
    "children": [
      {"role": "variable", "nodes": [{"concept": "NodeParameter"}]}
    ]
  },
  {
    "concept": "EmitCodeForStatement",
    "children": [
      {"role": "codeFor", "nodes": [{"concept": "DotExpression", "children": [
        {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
        {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "initializer"}]}]}
      ]}]}
    ]
  }
]
```

Contrast with Pattern 6: there, the variable is a **reference** (`node.lValue`) obtained via a link access. Here, `node` itself IS the variable.
