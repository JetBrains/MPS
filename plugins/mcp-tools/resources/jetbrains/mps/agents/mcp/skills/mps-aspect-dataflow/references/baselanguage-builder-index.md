# BaseLanguage Builder Reference

Builders in `r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)`. Use `mps_mcp_print_node` with `format: "AGENTIC VIEW"` on any of these nodeRefs to inspect the exact structure.

| Builder | nodeReference (decimal) | What to learn |
|---|---|---|
| `IfStatement_DataFlow` | `/1206454554507` | condition → ifjump → then → elsifClauses loop → else; `LabelPosition`; `EmitMayBeUnreachable` on the skip jump |
| `WhileStatement_DataFlow` | `/1206455216234` | `ConditionUtil.getConditionConstant`; `BeforePosition` loop-back; `EmitMayBeUnreachable` on loop-back |
| `AssignmentExpression_DataFlow` | `/1206460339989` | rValue-first ordering; `EmitWriteStatement` on a link reference |
| `ReturnStatement_DataFlow` | `/1206463017323` | `EmitRetStatement`; `getReturnJumpTarget()` for try-finally interaction |
| `BreakStatement_DataFlow` | `/1206465225322` | behavior method to find ancestor; `jump → AfterPosition(ancestor)` |
| `ContinueStatement_DataFlow` | `/1206465285674` | similar to break; jumps `before` the enclosing loop for re-evaluation |
| `VariableDeclaration_DataFlow` | `/1206536952487` | `write node` (concept IS the variable); then `code for node.initializer` |
| `VariableReference_DataFlow` | `/7074068829090025540` | Minimal `EmitReadStatement`; `node.variableDeclaration` via `SLinkAccess` |
| `BaseMethodDeclaration_DataFlow` | `/1206987602762` | Simplest delegation: just `code for node.body` |
| `TryFinallyStatement_DataFlow` | `/1206542922860` | `setReturnJumpTarget` for return-inside-finally; `DataFlowTryCatchUtil`; catch clause loop |
| `SwitchStatement_DataFlow` | `/1207558671026` | multi-branch with fall-through edges |
| `ForStatement_DataFlow` | `/1206463694662` | init → condition → body → update → loop-back |
