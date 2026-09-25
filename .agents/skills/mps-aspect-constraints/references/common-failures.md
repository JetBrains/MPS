# Common Constraint Failures

Open this file when a constraint produces a wrong behavior at runtime — a setter that runs but stores nothing, an empty completion popup, a "cannot be child" error, a constraint that does not apply to a subconcept, or constraint edits that seem to vanish.

| Symptom | Cause | Fix |
|---|---|---|
| Property setter runs but value is not stored | Setter forgot to assign to `node.property = propertyValue` after transform | Assign explicitly after clamp/transform |
| Scope shows no options | `referentSearchScope` returns empty scope or wrong concept | Log size of returned scope; verify `LINKS.xxx` and concept match the link's target type |
| "cannot be child" in editor | `ConstraintFunction_CanBeAChild` returns `false`, or structure cardinality violated | Check both; structure comes first |
| Constraints don't apply to subconcepts | `ConceptConstraints` targets an exact concept; canBe blocks are inherited but property/referent constraints are not | Add separate `ConceptConstraints` for subconcepts or move the rule to the superconcept |
| Changes invisible at runtime | Language module not rebuilt / MPS still using old runtime | Rebuild the language module; `mps_mcp_reload_all` |
| Unresolved scope classes (`SimpleRoleScope`, `ListScope`, `CompositeScope`, …) on language build | Language module missing `Default` dependency on `jetbrains.mps.kernel` | See `references/scope-fqn-reference/required-languages-imports-dependencies.md` |
