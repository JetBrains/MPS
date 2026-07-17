# `mps_mcp_parse_java_and_insert` — Editing Tips

The Java parser is the fastest path when the code is plain Java with no BaseLanguage extension. Use it for skeletons, method bodies, expressions, and statements.

## `parameters` JSON Schema

The tool takes a single JSON-encoded `parameters` argument. Shape:

```
{
  "code": string,                            // required, Java snippet to parse (max 50 000 chars)
  "featureKind": string,                     // required, one of:
                                             //   CLASS, NESTED_CLASS, FIELD, METHOD,
                                             //   STATEMENTS, CLASS_CONTENT, EXPRESSION
                                             //   FIELD/METHOD/NESTED_CLASS are parsed as
                                             //   class members; the kind is advisory (see Rules)
  "recovery": boolean,                       // optional, default true
  "contextNodeRef": string,                  // optional SNodeReference (r:...) used as parser
                                             //   context. REQUIRED for FIELD, METHOD,
                                             //   NESTED_CLASS, CLASS_CONTENT.
  "insert": {                                // required
    "mode": "root" | "child" | "replace" | "console",
                                             // required. "console" replaces the current MPS
                                             //   Console input command. For child/replace, if the
                                             //   parentRef/targetRef resolves to a node inside the
                                             //   current console command, it is edited in place
                                             //   without saving.
    "modelRef": string,                      // required when mode=="root" (SModelReference)
    "parentRef": string,                     // required when mode=="child" (SNodeReference)
    "targetRef": string,                     // required when mode=="replace" (SNodeReference)
    "role": string,                          // required when mode=="child" (containment role)
    "position": int,                         // optional, 0-based; -1 or absent = append.
                                             //   For a multi-cardinality child role, a value at or
                                             //   beyond the current child count is clamped to an
                                             //   append (not rejected); a negative value other than
                                             //   -1 is rejected.
                                             //   For mode=="root", only -1/absent is allowed;
                                             //   any other value is rejected (roots always append).
    "virtualPackage": string                 // optional, root insertions only
  },
  "postProcess": {                           // optional
    "importUsedLanguages": boolean,          // default true
    "resolveReferences": boolean             // default true
  }
}
```

### Rules

- `CLASS_STUB` is not supported and will be rejected.
- Root insertion always **appends**; root order cannot be controlled. Supplying a root `position` other than `-1`/absent is **rejected** with an `INVALID_REQUEST` error (it is *not* silently ignored). Use `-1` or omit `position` to append.
- `insert.mode: "console"` replaces the current MPS Console input command without executing it. `featureKind: "EXPRESSION"` is wrapped as a `BLExpression`; `featureKind: "STATEMENTS"` is wrapped as a `BLCommand` block. Other feature kinds are rejected in this mode; use `child` / `replace` with a `parentRef`/`targetRef` that resolves to a node inside the current console command for nested edits.
- For `mode: "child"` or `mode: "replace"`, if the `parentRef`/`targetRef` resolves to a node inside the current MPS Console input command, the node is edited in place without saving the model to disk. The target node must be inside the current unexecuted console input command (`mps_mcp_get_current_editor_root_node(source:"console")` + `mps_mcp_print_node` is the usual way to get fresh nested references). Console history entries and stale references from previous console interactions are rejected. Nodes outside the selected project are also rejected.
- For child insertion, the `role` name must exist on the parent concept; otherwise the call fails.
- For `child` insertion into a **single-cardinality** role (`0..1` / `1`), an existing occupant is **overwritten** (the new node replaces it) rather than appended — appending would otherwise create two children and break validation with *"Only one child is allowed in the role …"*. This matches `mps_mcp_update_node`. A multi-node input cannot fill one slot, so that case is still rejected; for single-cardinality roles `position` must be `-1`/absent or `0`.
- For `child` insertion into a **multi-cardinality** role, `position` is 0-based. A value at or beyond the current child count is **clamped to an append** — it is *not* rejected — matching common list-insert semantics (e.g. Python `list.insert(big, x)`). A negative value other than `-1` is rejected. The response's `inserted[]` entries each carry the node's **actual `index`** within the parent role, so when a `position` overshoots you can see the resulting append position. This clamp-and-report behavior is consistent across the MCP tool family — `mps_mcp_update_node` (`ADD` × `CHILD`) and `mps_mcp_alter_nodes` (`MOVE_CHILD` / `MOVE_NODE_TO_PARENT` / `COPY_NODE`) clamp the same way.
- For `replace` mode, the input must parse to exactly one top-level node; multi-node input is rejected.
- `FIELD`, `METHOD`, and `NESTED_CLASS` are all parsed as **class members** (internally as `CLASS_CONTENT`). The `featureKind` here is **advisory**: the parser accepts any class-body content for these kinds, and what may be placed where is validated against the **target containment role**, not the kind. For example `featureKind:METHOD` with a nested-class body succeeds when the target role accepts a nested class. Constrain placement via the insert target / `role`, not `featureKind`.
- Unrecognized keys in `parameters` (and in `insert` / `postProcess`) are **rejected** with an error naming the offending key. In particular **`dryRun` is not supported** by this tool (unlike `mps_mcp_update_node`); passing it fails rather than silently mutating.

## Editing Strategy

* **New class / method**: use `mps_mcp_parse_java_and_insert` for rapid skeleton / body creation.
* **Targeted changes**: use node-by-node AST editing (e.g. `mps_mcp_update_node`) to preserve surrounding structure.
* **Delete-and-recreate**: use only for roots you just created in the current session that have no incoming references.

## After Insertion

* **Reference resolution**: after insertion, call `mps_mcp_print_node` to verify references resolved correctly.
* **Dependencies**: ensure the containing models and modules of all referenced nodes are imported.
* **Type-system problems (`problems` response field)**: every success envelope (`ok:true`) carries a `problems` array. Each entry has `severity` (`error`/`warning`), `message`, and the offending node's `reference` and `concept`. It lists the problems found *within the inserted nodes' subtrees* using the same checkers as `mps_mcp_check_root_node_problems`. An **empty** array means the insert type-checks; a **non-empty** array means the insert succeeded (and, for normal project models, was persisted) but left problems you must fix (for example, a lambda whose closure type does not match the destination slot). `ok:true` does **not** by itself imply a clean model — always inspect `problems`.

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
