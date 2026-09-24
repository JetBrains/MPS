## Pattern 5: While loop — `WhileStatement_DataFlow`

The actual builder evaluates the condition constant (`ConditionUtil.getConditionConstant`) for constant-false/true optimisation. Core verified sequence:

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
    "concept": "LocalVariableDeclarationStatement",
    "children": [
      {"role": "localVariableDeclaration", "nodes": [{
        "concept": "LocalVariableDeclaration",
        "properties": [{"name": "name", "value": "conditionConstant"}],
        "children": [
          {"role": "type", "nodes": [{"concept": "ClassifierType", "references": [{"role": "classifier", "target": "Boolean"}]}]},
          {"role": "initializer", "nodes": [{"concept": "StaticMethodCall",
            "references": [{"role": "baseMethodDeclaration", "target": "getConditionConstant"}]
          }]}
        ]
      }]}
    ]
  },
  {
    "concept": "IfStatement",
    "comment": "if conditionConstant != null: handle runtime-conditional or constant-true/false jump",
    "children": [
      {"role": "condition", "nodes": [{"concept": "NotEqualsExpression"}]},
      {"role": "ifFalseStatement", "nodes": [{
        "concept": "BlockStatement",
        "comment": "runtime condition: ifjump → AfterPosition(node)",
        "children": [{"role": "statements", "nodes": [{"concept": "StatementList", "children": [
          {"role": "statement", "nodes": [{
            "concept": "EmitIfJumpStatement",
            "children": [{"role": "jumpTo", "nodes": [{"concept": "AfterPosition", "children": [
              {"role": "relativeTo", "nodes": [{"concept": "NodeParameter"}]}
            ]}]}]
          }]}
        ]}]}]
      }]}
    ]
  },
  {
    "concept": "EmitCodeForStatement",
    "children": [
      {"role": "codeFor", "nodes": [{"concept": "DotExpression", "children": [
        {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
        {"role": "operation", "nodes": [{"concept": "SLinkAccess", "references": [{"role": "link", "target": "body"}]}]}
      ]}]}
    ]
  },
  {
    "concept": "EmitMayBeUnreachable",
    "children": [
      {"role": "emitStatement", "nodes": [{
        "concept": "EmitJumpStatement",
        "children": [
          {"role": "jumpTo", "nodes": [{"concept": "BeforePosition", "children": [
            {"role": "relativeTo", "nodes": [{"concept": "NodeParameter"}]}
          ]}]}
        ]
      }]}
    ]
  }
]
```

Key insight: the loop-back jump (`jump → BeforePosition(node)`) is wrapped in `EmitMayBeUnreachable` because it is unreachable when the while condition is constant `false`.
