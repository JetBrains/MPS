# Typesystem Common Failures

| Symptom | Cause | Fix |
|---|---|---|
| Type "undefined" on a node | No inference rule for its concept, or the rule's equation contains an unresolved term | Add/fix rule; inspect with typesystem trace in MPS UI |
| Cascade of `type undefined is not a subtype of X` | First rule failed, rest consume `undefined` | Fix the earliest failing rule |
| Subtyping not applied | `SubtypingRule` LHS/RHS pattern doesn't match the concrete types | Check pattern variables; set `isWeak=true` if you need a looser rule |
| Error message garbled for a type | Used `toString` instead of `<typeExpr>` syntax | Use `<...>` rendering |
| `ClassifierType(List<SNode>)` in a rule's return type | Java parser default — see `references/variable-declarations.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin | Replace `returnType` with MPS `ListType`/`SequenceType` |
| Rules fire too often / cycle | Unbounded recursion via subtyping | Add termination conditions; prefer `InequationReplacementRule` |
| Fix not offered in UI | Quick-fix block threw / not attached to the statement | Check the block compiles; ensure the intention/fix is wired to the statement |
| `when concrete` body never runs | The type expression never resolves to a concrete type | Check the upstream inference rules; add a fallback `error` outside the block |
| `SubstituteTypeRule` body seems ignored | Returned `null` when a substitution was expected | Ensure the condition evaluates correctly; return the actual substitute node |
