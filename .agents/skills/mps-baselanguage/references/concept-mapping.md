# Java Syntax → MPS BaseLanguage Concept Mapping

Use this lookup when constructing JSON blueprints for BaseLanguage code. Every Java construct corresponds to one (or more) concept(s) under `jetbrains.mps.baseLanguage.structure`.

## Core Concepts Reference

| Java Syntax                | MPS Concept (BaseLanguage) | Key Roles / Properties                                               |
|:---------------------------|:---|:---------------------------------------------------------------------|
| `class` / `interface`      | `ClassConcept` / `Interface` | `name`, `member` (list of methods, fields)                           |
| `enum` / `@interface`      | `EnumClass` / `Annotation` | `name`, `enumConstant` / `method`                                    |
| `instance method`          | `InstanceMethodDeclaration` | `name`, `returnType`, `parameter`, `body` (StatementList)            |
| `static method`            | `StaticMethodDeclaration` | `name`, `returnType`, `parameter`, `body` (StatementList)            |
| `constructor`              | `ConstructorDeclaration` | `returnType` (MUST be `VoidType`), `body`                            |
| `field` (instance/static)  | `FieldDeclaration` / `StaticFieldDeclaration` | `name`, `type`                                                       |
| `int x = 5;`               | `LocalVariableDeclarationStatement` | `localVariableDeclaration` -> `LocalVariableDeclaration`             |
| `x = 5;` (assignment)      | `ExpressionStatement` | `expression` -> `AssignmentExpression` (`lValue`, `rValue`)          |
| `node1 :eq: node2`         | `NPEEqualsExpression` / `NPENotEqualsExpression` | `leftExpression`, `rightExpression`                                  |
| `if` / `while`             | `IfStatement` / `WhileStatement` | `condition`, `ifTrue` (StatementList); `else` → `ifFalseStatement` (single Statement, see note) / `body` (StatementList) |
| `for` / `foreach`          | `ForStatement` / `ForeachStatement` | `variable`, `condition`, `iteration` / `iterable`, `body`            |
| `try { ... } catch`        | `TryCatchStatement` | `body` (StatementList), `catchClause`                                |
| `return` / `throw`         | `ReturnStatement` / `ThrowStatement` | `expression` / `throwable`                                           |
| `new MyClass(...)`         | `GenericNewExpression` | `creator` -> `ClassCreator`                                          |
| `obj.method(...)`          | `DotExpression` | `operand` (expr), `operation` -> `InstanceMethodCallOperation`       |
| `ClassName.method()`       | `StaticMethodCall` | `classConcept` (ref), `baseMethodDeclaration` (ref)                  |
| `variable` (usage)         | `VariableReference` | `variableDeclaration` (ref)                                          |
| `int` / `boolean` / `void` | `IntegerType` / `BooleanType` / `VoidType` | (Primitive types)                                                    |
| `String` / `MyClass`       | `StringType` / `ClassifierType` | `classifier` (for ClassifierType)                                    |
| `new int[N]`               | `GenericNewExpression` | `creator` -> `ArrayCreator` (`componentType`, `dimensionExpression`) |
| `new T[]{a, b}`            | `GenericNewExpression` | `creator` -> `ArrayCreatorWithInitializer` (`componentType`, `initValue` 0..n) |
| `i++` / `++i`              | `PostfixIncrementExpression` / `PrefixIncrementExpression` | `expression`                                                         |
| `123` / `"..."` / `null`   | `IntegerConstant` / `StringLiteral` / `NullLiteral` | `value` (for constants/literals)                                     |
| `true` / `false`           | `BooleanConstant` | `value`                                                              |
| `this`                     | `ThisExpression` | `classConcept` (optional)                                            |
| `this()`                   | `ThisConstructorInvocation` |                                                                     |
| `super.method()`           | `SuperMethodCall` | `baseMethodDeclaration`                                                                     |
| `super()`                  | `SuperConstructorInvocation` |                                                                      |

## IfStatement — the `else` branch is **not** a StatementList

`IfStatement` is asymmetric: `ifTrue` is a `StatementList`, but the `else` branch lives in `ifFalseStatement`, whose role accepts a **single `Statement`**, not a `StatementList`. Do not place statements directly into `ifFalseStatement` or try to fill it with a `StatementList` the way you do for `ifTrue` — that fails the structural/assignability check.

- For a normal `else { ... }` block, put a **`BlockStatement`** into `ifFalseStatement` (this is the most typical concrete concept here) and add your statements to its inner `StatementList` (`BlockStatement.statements`).
- For an `else if (...)` chain use the `elsifClauses` children.

## Workflow

1. **Scope**: use `mps_mcp_get_current_editor_root_node` to find where the code belongs (e.g., method body).
2. **Concept**: map Java syntax to MPS concepts (table above).
3. **Hierarchy**: wrap `Expression` in `ExpressionStatement` for `StatementList`.
4. **Types**: use primitive types (e.g., `IntegerType`) or `ClassifierType` for classes.
5. **Operations**: use `DotExpression` for instance calls; `StaticMethodCall` for static.
6. **Insertion**: use `mps_mcp_update_node` or `mps_mcp_insert_root_node_from_json`.
7. **Validation**: check for errors via `mps_mcp_check_root_node_problems` and repair via `FIX_REFERENCES`.
