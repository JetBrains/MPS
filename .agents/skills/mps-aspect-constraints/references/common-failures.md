# Common Constraint Failures

Open this file when a constraint produces a wrong behavior at runtime — a setter that runs but stores nothing, an empty completion popup, a "cannot be child" error, a constraint that does not apply to a subconcept, or constraint edits that seem to vanish.

| Symptom | Cause | Fix |
|---|---|---|
| Property setter runs but value is not stored | Setter forgot to assign to `node.property = propertyValue` after transform | Assign explicitly after clamp/transform |
| Scope shows no options | `referentSearchScope` returns empty scope or wrong concept | Log size of returned scope; verify `LINKS.xxx` and concept match the link's target type |
| "cannot be child" in editor | `ConstraintFunction_CanBeAChild` returns `false`, or structure cardinality violated | Check both; structure comes first |
| Constraints don't apply to subconcepts | `ConceptConstraints` targets an exact concept; canBe blocks are inherited but property/referent constraints are not | Add separate `ConceptConstraints` for subconcepts or move the rule to the superconcept |
| Changes invisible at runtime | Language module not rebuilt / MPS still using old runtime | Rebuild the language module (`MAKE`; check `runtimeReady:true`, `rebuild:true` if stale) |
| Unresolved scope classes (`SimpleRoleScope`, `ListScope`, `CompositeScope`, …) on language build | Language module missing `Default` dependency on `jetbrains.mps.kernel` | See `references/scope-fqn-reference/required-languages-imports-dependencies.md` |
| `Scope.getScope(...)` ignores an ancestor's `getScope` method | Ancestor concept does not declare `implements ScopeProvider` in `structure` (`Scope.getScope` skips non-`ScopeProvider` nodes) | Add `jetbrains.mps.lang.core.structure.ScopeProvider` to the ancestor concept's `implements` and rebuild |
| `ScopeProvider.getScope(kind, child)` receives a test annotation (`ScopesTest`, `TestNodeAnnotation`) as `child` | `Scope.parent(n)` treats an attached `NodeAttribute` as parent when walking upward | Normalize at the top of `getScope`: `while (child != null && child.parent != this) { child = child.parent; }` |
| Inner scope returns `null` on same-name declarations, or blocks outer `ScopeProvider`s | `CompositeScope` treats duplicate names across scopes as ambiguous (`null`), and `getScope` does not climb automatically once non-null is returned | Use `HidingByNameScope` when inner declarations shadow outer ones, and delegate unhandled `kind`s via `ScopeUtils.lazyParentScope(this, kind)` |
| 3-arg `getScope(kind, link, index)` NPEs, or position-dependent reference scope fails `ScopesTest` | Callers may pass `link == null`, and `ScopesTest` passes an existing `referenceNode` (`referenceNode != null`) | Guard `link != null` before link comparisons, and compute position from `referenceNode != null ? referenceNode : contextNode` |
| Broken scope function produces zero errors in `check_root_node_problems` | Returning `null` from a custom `referentSearchScope` silently falls back to global model-plus-imports scope (`EmptyScope` restricts to nothing; `null` means unconstrained), and `RefScopeChecker` skips unresolved/absent references | Return `new EmptyScope()` (never `null`) when nothing is in scope, and pair scope rules with positive `ScopesTest` cases |
