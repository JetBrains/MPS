# Golden Rules and Common Pitfalls

Read this first when an error message looks weird or you're about to write your first DotExpression chain.

## Golden rules

- **Node Equality**: When comparing nodes for equality, ALWAYS use the `:eq:` and `:ne:` operators (`NPEEqualsExpression` / `NPENotEqualsExpression`). Never use `==` or `equals()`, as they can cause `NullPointerException`s or compare incorrectly in MPS.
- **Closure parameter needs a `type` child** (`UndefinedType`): the rule and its error cascade are in `references/golden-rules-and-pitfalls.md` in the `mps-collections-and-closures` skill root after loading that companion skill from the same origin.

## Background: two worlds in one model

A checking rule or behavior method uses:

| Layer | Language | Generated Java | Examples |
|---|---|---|---|
| Core statements / expressions | BaseLanguage | plain Java | `if`, `for`, local variables, assignments, static calls |
| Node / link access | `smodel` | `SLinkOperations.getTarget(node, link)` | `node.link`, `node:Concept`, `.parent:C` |
| Typed collections | `collections` | `ListSequence`, `SetSequence`, `Sequence` | `sequence<node<T>>`, `list<node<T>>`, `hashset<>` |
| Lambda / closure | `closures` | anonymous class or lambda | `(x) -> ...`, generator-style iterators |

The MPS **type system** tracks these separately: `sequence<node<Type>>` is an MPS
`SequenceType` containing an `SNodeType`, which is entirely different from
`java.util.List<SNode>`, even though both generate to `Iterable<SNode>`.

The **Java parser** inside `mps_mcp_parse_java_and_insert` understands plain Java plus the
Java 8+ syntax MPS recognizes — most notably **lambdas, which it maps to
`baseLanguage.closures` closures** (auto-importing that language). It cannot produce
`SequenceType`, `SNodeType`, `SLinkAccess`, `Node_ConceptMethodCall`,
`ApplicableNodeReference`, or other MPS-specific concept nodes. A lambda only type-checks
against a matching functional-type target; a mismatch is reported in the insert response's
`problems` array, not as a parse error.

## Common pitfalls (symptom → cause → fix)

| Symptom | Cause | Fix |
|---|---|---|
| `UnknownDotCall` for `SLinkOperations.getTarget` | Inline `MetaAdapterFactory.getContainmentLink` argument could not be resolved | Use `LINKS.xxx` constant instead of inline MetaAdapterFactory call |
| `UnknownDotCall` for `MetaAdapterFactory.getContainmentLink` | Java parser can't match the `(long,long,long,long,String)` overload in this context | Never call getContainmentLink in method bodies; always use LINKS/CONCEPTS constants |
| `type undefined is not a subtype of SNode` (cascade) | A preceding unresolved call returned `undefined` type | Fix the first `UnknownDotCall` and the cascade disappears |
| `type List<SNode> is not a subtype of sequence<node<Type>>` | Method return type was parsed as Java `List<SNode>` instead of MPS `SequenceType` | Replace the `returnType` child after parsing using `mps_mcp_update_node` |
| `StaticMethodCall` inserts as root node (not into tree) | `parse_java_and_insert` with `mode: "replace"` silently failed to find the target | Verify the target node ref is correct and still in the tree; check that the parent still exists |
| Smodel expression (e.g. `:CatchClause` cast) cannot be passed as argument | Java parser has no syntax for smodel casts | Change method signature to accept wider node and compute cast inside the method |
| `access to link 'X' is not expected here` / `out of search scope` despite correct cardinality | Operand typed as `node<>` rather than `node<X>` (e.g. `ForEachVariable` over `sequence<node<>>`, loosely-typed parameter) | Wrap operand in `SNodeTypeCastExpression` to typed `node<X>` — see "Operand must be a typed `node<X>`" in `references/dot-expression-basics.md` |
| Warning: "Prefer explicit node presentation" | `+` string concatenation with an SNode argument | Pre-existing warning in `RulesFunctions_BaseLanguage`; not introduced by your changes |
| `"different parameter numbers"` on a `ClosureLiteral`, or any other collections / closures error | A collections or closures rule, not an smodel one | Open `references/golden-rules-and-pitfalls.md` in the `mps-collections-and-closures` skill root after loading that companion skill from the same origin |
