## Direct AST Editing Tips

### Binary Expressions

* Priorities are structural; use `ParenthesizedExpression` or ensure the hierarchy is correct (e.g., multiplication is a child of addition). All same-level binary operations are left-associative: `1 + 2 + 3` is equivalent to `(1 + 2) + 3` and the AST must be built that way.
* **Pro-tip**: use `parse_java_and_insert` with placeholders (e.g. instances of `StringType`, `IntegerType`, `IntegerConstant`, `StringLiteral`) to create the skeleton, then replace them with concrete nodes.

### Java Stub References

* **Derive refs** (preferred): don't print stubs. Use the class ref and append URL-encoded signatures:
  * Constructor: `<classRef>.<init>%28java.lang.String%29`
  * Method: `<classRef>.doClick%28%29`
  * **Inherited methods**: use the **declaring class** ref (e.g. `AbstractButton` for `addActionListener`).
* **URL encoding**: `(` → `%28`, `)` → `%29`. Use fully-qualified parameter types (e.g. `java.lang.String`).
* **Signature**: omit return type suffixes (e.g. `:void`) unless confirmed via `mps_mcp_print_node`.
* **Ambiguity**: use `GET_ASSIGNABLE_REFERENCES` (mode: `completion`) for ambiguous overloads.
* For the full stub-ref decision tree, see `stub-references.md`.

### Types

* Use `string` (`StringType`) instead of `String` (`ClassifierType`) where possible.

### Compatibility

* Supports Java 7 (including generics) plus the Java 8+ syntax the MPS parser recognizes.
* **Lambdas are accepted.** A lambda expression is mapped to a `jetbrains.mps.baseLanguage.closures` `ClosureLiteral` (an expression-bodied lambda such as `() -> 42` becomes a closure whose trailing expression is its result; untyped parameters become the closures `var` type, inferred from the target). The closures language is auto-imported (when `postProcess.importUsedLanguages` is on). Like any MPS closure, a lambda only type-checks against a matching **functional-type** target — e.g. `() -> 42` fits a `{() => int}` slot but **not** an `int` slot. A mismatch is reported in the response `problems` array (see *After Insertion*), not as a parse failure.
* Constructs the parser does not recognize (e.g. records) still fail with a parse error.

## Validation

* **Errors**: fix all errors.
* **Warnings**: review before structural changes.
* **Info-level cleanup**: ignore unless requested.
