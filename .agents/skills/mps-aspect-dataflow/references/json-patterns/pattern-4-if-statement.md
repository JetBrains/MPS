## Pattern 4: If-statement — `IfStatement_DataFlow` (core structure)

Simplified representation of the actual builder's core logic:

1. `code for node.condition` — delegate to condition's builder
2. `ifjump → LabelPosition(endOfTrue)` — if condition is false, skip then-branch
3. `code for node.ifTrue` — delegate to then-branch
4. Guarded by BL `if`: when there is an else or elsif, wrap skip in `EmitMayBeUnreachable { jump → AfterPosition(node) }`
5. `endOfTrue` label
6. BL `foreach` over `node.elsifClauses` → `code for elseIf`
7. BL `if (node.ifFalseStatement != null)` → `code for node.ifFalseStatement`

Key observed nodes (verified, from nodeReference `r:.../1206454554507`):

```json
[
  {
    "concept": "EmitCodeForStatement",
    "children": [
      {"role": "codeFor", "nodes": [{"concept": "DotExpression", "children": [
        {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
        {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "condition"}]}]}
      ]}]}
    ]
  },
  {
    "concept": "EmitIfJumpStatement",
    "children": [
      {"role": "jumpTo", "nodes": [{"concept": "LabelPosition", "references": [{"role": "label", "target": "endOfTrue"}]}]}
    ]
  },
  {
    "concept": "EmitCodeForStatement",
    "children": [
      {"role": "codeFor", "nodes": [{"concept": "DotExpression", "children": [
        {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
        {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "ifTrue"}]}]}
      ]}]}
    ]
  },
  {
    "concept": "EmitMayBeUnreachable",
    "children": [
      {"role": "emitStatement", "nodes": [{
        "concept": "EmitJumpStatement",
        "children": [
          {"role": "jumpTo", "nodes": [{"concept": "AfterPosition", "children": [
            {"role": "relativeTo", "nodes": [{"concept": "NodeParameter"}]}
          ]}]}
        ]
      }]}
    ]
  },
  {
    "concept": "EmitLabelStatement",
    "properties": [{"name": "name", "value": "endOfTrue"}]
  }
]
```
