## Pattern 8: Exit to enclosing container — `BreakStatement_DataFlow`

When a statement must jump to after an **ancestor** node (loop/switch for break, loop for continue), look up the ancestor via a behavior method, then emit `jump → AfterPosition(ancestor)`.

Source: `r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)/1206465225322`

Emitted sequence (outline):
1. BL `node<> statement = node.getLoopOrSwitch()` — behavior method finds the enclosing loop or switch
2. BL `if (statement != null)` guard (it can be null for malformed ASTs)
3. `jump → AfterPosition(statement)` — unconditionally exit the enclosing container

```json
[
  {
    "concept": "LocalVariableDeclarationStatement",
    "children": [{"role": "localVariableDeclaration", "nodes": [{
      "concept": "LocalVariableDeclaration",
      "properties": [{"name": "name", "value": "statement"}],
      "children": [
        {"role": "type", "nodes": [{"concept": "SNodeType"}]},
        {"role": "initializer", "nodes": [{
          "concept": "DotExpression",
          "children": [
            {"role": "operand", "nodes": [{"concept": "NodeParameter"}]},
            {"role": "operation", "nodes": [{"concept": "Node_ConceptMethodCall",
              "references": [{"role": "baseMethodDeclaration", "target": "getLoopOrSwitch"}]}]}
          ]
        }]}
      ]
    }]}]
  },
  {
    "concept": "IfStatement",
    "children": [
      {"role": "condition", "nodes": [{"concept": "NotEqualsExpression",
        "children": [
          {"role": "leftExpression", "nodes": [{"concept": "VariableReference",
            "references": [{"role": "variableDeclaration", "target": "statement"}]}]},
          {"role": "rightExpression", "nodes": [{"concept": "NullLiteral"}]}
        ]
      }]},
      {"role": "ifTrue", "nodes": [{"concept": "StatementList", "children": [
        {"role": "statement", "nodes": [{
          "concept": "EmitJumpStatement",
          "children": [{"role": "jumpTo", "nodes": [{
            "concept": "AfterPosition",
            "children": [{"role": "relativeTo", "nodes": [{"concept": "VariableReference",
              "references": [{"role": "variableDeclaration", "target": "statement"}]}]}]
          }]}]
        }]}
      ]}]}
    ]
  }
]
```

Key insight: `AfterPosition` can reference **any** node obtained at runtime (not just `NodeParameter`). Here it points to an ancestor node retrieved via a behavior method.
