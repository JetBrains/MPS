## Implicit-return rule

In MPS behavior method bodies, a single `ExpressionStatement` whose expression has a type compatible with the declared `returnType` is treated as an implicit return — the expression value is returned without a `ReturnStatement`. Kaja's `CommentLine_Behavior` confirms this: both `getTextualRepresentation` (returns `String`) and `isTODOComment` (returns `boolean`) have bodies with one `ExpressionStatement`, no `ReturnStatement`.

This means `mps_mcp_parse_java_and_insert` with `featureKind: "STATEMENTS"` and code such as `"" + this.text;` will produce the correct implicit-return body. Alternatively, you can use an explicit `return expr;` (`ReturnStatement` containing the expression) — both compile correctly.

The same implicit-return rule applies to **`ClosureLiteral` bodies** used as `where` / `select` / `sort` predicates (and any other place a closure feeds a typed expression into a collections/closures operation). A `ClosureLiteral`'s `body` is a `StatementList`; a single `ExpressionStatement` whose expression matches the expected closure return type is returned implicitly — no `ReturnStatement` required. Confirmed for the `where` predicate idiom `{~it => it.target :eq: this; }`.
