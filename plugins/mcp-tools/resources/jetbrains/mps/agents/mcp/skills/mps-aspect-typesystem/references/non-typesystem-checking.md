# Non-Typesystem Checking Rules (`NonTypesystemRule`)

Use when you need to **report problems** but not contribute to type inference. Examples: "variable not read", "throw type not caught".

## Fields

- `applicableNode` — the concept the rule runs on. Holds a `ConceptReference` (the concrete subconcept of the abstract `ApplicableNodeCondition`) placed DIRECTLY in the role — there is no `ApplicableNodeCondition` wrapper and no nesting. Its `concept` reference is the applicable concept; its `name` property is the variable bound in the body.
- `overrides` — if true, suppresses inherited non-typesystem rules from superconcepts
- `body` — imperative BaseLanguage that calls reporters:
  - `error "msg" -> nodeToReport;`
  - `warning "msg" -> nodeToReport;`
  - `info "msg" -> nodeToReport;` — an `info` alone does not make `mps_mcp_check_root_node_problems` unclean; it is listed in `details.infoMessages` on every verdict and report

## `isStrongSubtype(typeof(expr) :<< expectedType)`

Tests whether the current type of `expr` is a *strict* subtype of `expectedType` (proper subtype, not equal). Example:

```
checking rule CheckExcessTypeCasts {
  applicable for concept = CastExpression as expr
  do {
    if (isStrongSubtype(expr.expression.type :<< expr.type)) {
      info "Typecast expression is superfluous" -> expr;
    }
  }
}
```

## FQN and concept ref

- FQN: `jetbrains.mps.lang.typesystem.structure.NonTypesystemRule`
- Concept ref: `c:7a5dda62-9140-4668-ab76-d5ed1746f2b2/1195214364922`
- Key children: `applicableNode`, `body`
- Key property: `overrides`
