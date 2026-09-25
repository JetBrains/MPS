# Verified Dataflow Builder JSON Patterns

All examples are taken from real builders in this project. JSON uses short concept names; the qualified names are `jetbrains.mps.lang.dataFlow.structure.<Name>` for dataflow concepts, `jetbrains.mps.baseLanguage.structure.<Name>` for BL, and `jetbrains.mps.lang.smodel.structure.<Name>` for smodel.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Pattern 1: Variable read — `VariableReference_DataFlow` | `references/json-patterns/pattern-1-variable-read.md` |
| Pattern 2: Minimal delegation — single-child `code for` | `references/json-patterns/pattern-2-minimal-delegation.md` |
| Pattern 3: Return statement — `ReturnStatement_DataFlow` | `references/json-patterns/pattern-3-return-statement.md` |
| Pattern 4: If-statement — `IfStatement_DataFlow` (core structure) | `references/json-patterns/pattern-4-if-statement.md` |
| Pattern 5: While loop — `WhileStatement_DataFlow` | `references/json-patterns/pattern-5-while-loop.md` |
| Pattern 6: Assignment — `AssignmentExpression_DataFlow` (core) | `references/json-patterns/pattern-6-assignment.md` |
| Pattern 7: Concept-is-the-variable — `VariableDeclaration_DataFlow` | `references/json-patterns/pattern-7-concept-is-the-variable.md` |
| Pattern 8: Exit to enclosing container — `BreakStatement_DataFlow` | `references/json-patterns/pattern-8-exit-to-enclosing-container.md` |
| Pattern 9: Inverted condition — `UnlessStatement_DataFlow` (sample language) | `references/json-patterns/pattern-9-inverted-condition.md` |
