# Typesystem Common Failures

| Symptom | Cause | Fix |
|---|---|---|
| Type "undefined" on a node | No inference rule for its concept, or the rule's equation contains an unresolved term | Run `mps_mcp_query_types` `EXPLAIN_TYPE` on the node (the typesystem trace, headless; `includeApplyRule:true` also lists the rules applied to it) to see which rules touched it, then add/fix the rule |
| Cascade of `type undefined is not a subtype of X` | First rule failed, rest consume `undefined` | Fix the earliest failing rule |
| Subtyping not applied | The relation may already hold, or the `SubtypingRule` LHS/RHS pattern may not match the concrete types | Run `EXPLAIN_TYPE` on a sandbox node that needs the relation and read its `subtype_checked` / `subtype_by_replacement` entry's `holds` and `via` (which rules fired, or none); then `mps_mcp_query_types` `IS_SUBTYPE` (weak and strong) and `SUPERTYPES`; if the engine confirms it fails, inspect the rule's pattern variables and set `isWeak=true` if you need a looser rule |
| Error message garbled for a type | Used `toString` instead of `<typeExpr>` syntax | Use `<...>` rendering |
| `ClassifierType(List<SNode>)` in a rule's return type | Java parser default — see `references/variable-declarations.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin | Replace `returnType` with MPS `ListType`/`SequenceType` |
| Rules fire too often / cycle | Unbounded recursion via subtyping | Add termination conditions; prefer `InequationReplacementRule` |
| Fix not offered in UI | Quick-fix block threw / not attached to the statement | Check the block compiles; ensure the intention/fix is wired to the statement |
| `when concrete` body never runs | The type expression never resolves to a concrete type | Check the upstream inference rules; add a fallback `error` outside the block |
| `SubstituteTypeRule` body seems ignored | Returned `null` when a substitution was expected | Ensure the condition evaluates correctly; return the actual substitute node |
