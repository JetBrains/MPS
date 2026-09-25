## Default Scope (concept-level, not reference-level)

**Default Scope** is a top-level constraint block on `ConceptConstraints` (not under a `NodeReferentConstraint`) that restricts all reference links pointing *to* this concept when those links have no explicit scope defined. It is the complement of the per-reference scope: per-reference scope controls what is offered from the *referrer* side; default scope controls what is offered from the *target concept* side.

Use default scope when:
- Every reference to this concept should see the same narrow set (e.g. only nodes in the same module).
- You don't want to repeat the same scope body on every referrer.

The block accepts a `scope` function (same parameters as the reference scope: `referenceNode`, `contextNode`, `containmentLink`, `linkTarget`, `position`) and a `presentation` function (deprecated — use the Editor aspect instead). If no default scope is defined and no per-reference scope is defined, MPS falls back to the global scope (all visible instances of the concept in imported models).
