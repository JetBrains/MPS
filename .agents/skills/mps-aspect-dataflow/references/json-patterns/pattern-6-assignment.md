## Pattern 6: Assignment — `AssignmentExpression_DataFlow` (core)

Evaluates rValue first, then emits a write for the lValue variable:

```json
[
  {
    "concept": "EmitCodeForStatement",
    "children": [
      {"role": "codeFor", "nodes": [{"concept": "DotExpression", "children": [
        {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
        {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "rValue"}]}]}
      ]}]}
    ]
  },
  {
    "concept": "EmitWriteStatement",
    "children": [
      {"role": "variable", "nodes": [{"concept": "DotExpression", "children": [
        {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
        {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "lValue"}]}]}
      ]}]}
    ]
  }
]
```
