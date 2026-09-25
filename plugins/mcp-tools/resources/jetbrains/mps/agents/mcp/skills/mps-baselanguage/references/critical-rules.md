# Critical Rules — BaseLanguage Validation

Rules that, if violated, make the AST fail structural / assignability / typesystem checks. Each one is a recurring source of error.

## Expressions and Statements
* **Expressions** must be wrapped in `ExpressionStatement` to be valid in a `StatementList`.
* **StatementList vs Single Statement**: Always check whether a role expects a `StatementList` or a single `Statement`. Most loop and branch bodies expect a `StatementList`. This applies to JSON blueprints, which never wrap for you; `mps_mcp_parse_java_and_insert` does auto-wrap `STATEMENTS` into a `StatementList`-typed role — see [parse-java-tips.md](parse-java-tips.md).
* **`IfStatement` `else` branch is a single `Statement`**: `IfStatement.ifTrue` is a `StatementList`, but the `else` branch (`IfStatement.ifFalseStatement`) accepts a **single `Statement`**, not a `StatementList`. Do not pass a `StatementList` into `ifFalseStatement` the way you do for `ifTrue` — it fails assignability. For a normal `else { ... }` block use a `BlockStatement` (the most typical concrete concept here) and put the statements in its inner `StatementList`; for `else if` use another `IfStatement` (or the `elsifClauses` children).

## Dot Expressions
* Modeled as `DotExpression` with `operand` (left) and `operation` (right).

## Anonymous Classes
* Wrap as `GenericNewExpression` → `AnonymousClassCreator` → `AnonymousClass`.

## Constructors
* Always include a `VoidType` in the `returnType` role. Wire `ClassCreator` to the constructor node via `baseMethodDeclaration`.
* **`super(...)` calls**: Use `SuperConstructorInvocation`, not `SuperMethodCall`. `SuperMethodCall` is for `super.method()` calls to overridden instance methods.

## ClassCreator
* **`ClassCreator` is minimal**: Only needs the `baseMethodDeclaration` reference (pointing to the constructor) plus `actualArgument` children. No `classifier` or other references are required.
* **Must be wrapped**: `ClassCreator` cannot stand alone as an expression — it must appear as the `creator` child of a `GenericNewExpression`. The same wrapping rule applies to every `AbstractCreator` subconcept: `ArrayCreator`, `ArrayCreatorWithInitializer`, `AnonymousClassCreator`, the collections creators, and smodel `SNodeCreator`.

## Inherited Methods
* Use the **declaring class** ref for `baseMethodDeclaration`, not the subclass.

## Method Bodies
* **Mandatory Body**: Interface and abstract methods still require an empty `StatementList` in the `body` role.

## Variable Declarations
* `LocalVariableDeclaration` must be wrapped in `LocalVariableDeclarationStatement` in method bodies.
* In `ForStatement`, use `LocalVariableDeclaration` directly in the `variable` role (no wrapper).

## Types
* **ClassifierType**: The universal concept for referring to any class, interface, enum, or annotation as a type. The `classifier` reference points to the declaration node.
* Prefer `string` (`StringType`) over `String` (`ClassifierType`) where possible.

## Field References
* **`FieldReferenceOperation`**: Uses the `fieldDeclaration` reference role, not `variableDeclaration`.

## Reference Resolution
* **Auto-Resolution**: If you provide a node's **name** as `target` in a reference, the tool resolves it in scope after insertion. Ideal for local references within the same JSON blueprint.
* **Large Blueprints Fail in Two Stages**: First, malformed JSON prevents insertion entirely. Second, structurally valid JSON can still fail concept assignability checks. Debug these separately.

## Reference Role Targets

* `ClassCreator.baseMethodDeclaration`: points to a **constructor**, not the class.
* `InstanceMethodCallOperation.baseMethodDeclaration`: points to the **method declaration**.
* **Stale Refs**: re-harvest refs after significant root rewrites as identities may change.

## Preflight for Large JSON ASTs
* Validate JSON syntax locally before calling the insert tool.
* If insertion fails with an assignability error, check the exact role path — the provided concept may not be assignable there.
* When in doubt, print an existing instance of the target construct (`mps_mcp_print_node`) before hand-authoring the subtree.
