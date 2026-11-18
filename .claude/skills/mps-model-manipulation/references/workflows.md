# Step-by-step Workflows

Concrete recipes for the two most common edits in MPS model code, plus rules for interacting with generated source files.

## Adding a new static method to a checking-rule helper class

This covers the common pattern of adding a method to a class like `RulesFunctions_BaseLanguage`, which
already keeps `LINKS`/`CONCEPTS` constants. The constants steps below apply only to such a class;
elsewhere write `link/C : role/` / `concept/C/` (`references/design-time-identities.md`).

### Step 1 — Identify what MPS-specific types you need

Before writing the method, list every:
- Return type that is an MPS collection or node type
- Parameter type that needs a cast or smodel access
- Link/concept constant you will call `SLinkOperations.getTarget` with

### Step 2 — Ensure LINKS/CONCEPTS constants exist

Print the target class (`format: "AGENTIC VIEW"`, `nodeDepth: 1`) to find its `LINKS`/`CONCEPTS` inner class refs.
For each needed constant that does not exist, add it with `parse_java_and_insert`
(`featureKind: "FIELD"`, `contextNodeRef` = the inner class node ref).

Check the generated `.java` file of related rule classes (e.g. the rule that calls your
helper) to get the exact hex IDs for links and concepts you need.

### Step 3 — Write the Java method with placeholder types

Write the method using:
- `SNode` (or `Object`) as placeholder for any return type that should be `sequence<node<X>>`
- `LINKS.xxx` and `CONCEPTS.xxx` references for all link/concept access
- Plain Java logic for the computation

For example, if the true return type should be `sequence<node<Type>>`, write:
```java
public static java.util.List<org.jetbrains.mps.openapi.model.SNode> myMethod(SNode input) {
    // ... implementation using LINKS.xxx
}
```

### Step 4 — Insert the method with `mps_mcp_parse_java_and_insert`

```json
{
  "featureKind": "METHOD",
  "contextNodeRef": "<parent-class-node-ref>",
  "code": "... the method source ...",
  "insert": { "mode": "child", "parentRef": "<parent-class-node-ref>", "role": "member" }
}
```

Note the returned node ref for the inserted method.

### Step 5 — Fix MPS-specific return / parameter types

Print the method node (`format: "AGENTIC VIEW"`, `nodeDepth: 1`) and replace any type child that should be an MPS type:

```json
// Replace returnType child
mps_mcp_update_node(
  operation = SET,
  kind = CHILD,
  childNodeRef = "<returnType-child-ref>",
  childJson = { "concept": "...SequenceType", "children": [...] }
)
```

### Step 6 — Validate

```json
mps_mcp_check_root_node_problems(nodeReference = "<parent-class-node-ref>", onlyNodesWithProblems = true)
```

If there are errors in the new method, check:
- Any remaining `UnknownDotCall` → missing LINKS/CONCEPTS constant, or use a different API
- Any type mismatch → a type placeholder that still needs replacing

## Modifying an expression in a rule body

When you need to change how `thrownTypes` (or any result) is computed in the `ifTrue`/`ifFalse` branch of a checking rule:

### Option A — Replace via `parse_java_and_insert` with `featureKind: "EXPRESSION"`

Works if the new expression is a plain Java call (possibly referencing in-scope identifiers):

```json
{
  "featureKind": "EXPRESSION",
  "contextNodeRef": "<statement-or-nearby-node-inside-rule-body>",
  "code": "RulesFunctions_BaseLanguage.myMethod(throwStatement)",
  "insert": { "mode": "replace", "targetRef": "<old-expression-node-ref>" }
}
```

The `contextNodeRef` must be inside the same rule body so that `throwStatement` (and other
in-scope names) can be resolved. When `throwStatement` is in scope, the parser automatically
creates an `ApplicableNodeReference` for it.

### Option B — Avoid smodel expressions as method arguments

If the expression to pass as argument uses smodel syntax (`:CatchClause` casts, `.link`
access, etc.) you cannot parse it. Instead:

1. Change the method signature to accept a **wider node** (e.g. `throwStatement` instead of
   `catchClause`) and derive the narrower value inside the Java method body.
2. The method then uses `SNodeOperations.getParent`, `SNodeOperations.cast`, and `LINKS.xxx`
   constants internally — all parseable Java.

This is the preferred approach when the existing call site passes an smodel expression.

## Interaction with generated source files

Generated files in `source_gen/` (e.g. `checkThrowedByThrowIsCaught_NonTypesystemRule.java`,
`RulesFunctions_BaseLanguage.java`) are **read-only** artifacts.

- Use them to discover:
    - Exact `MetaAdapterFactory` hex IDs for links and concepts
    - How existing LINKS/CONCEPTS constants are named
    - What the runtime shape of your code will look like
- Do **not** edit them directly unless the user explicitly requests a temporary diagnostic patch.
- After model changes, re-read the generated file to confirm the code looks as intended.
