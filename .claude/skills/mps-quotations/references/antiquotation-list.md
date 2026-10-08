# List Antiquotation (`ListAntiquotation`, `*(...)*`)

Replaces a list-position node with zero-or-more nodes returned by the expression. The expression must return `nlist<..>` or a compatible `Iterable` type.

## Activation constraint

The list role must contain at least one placeholder child before you can activate a list antiquotation in the editor. Type `*` inside that placeholder cell. The placeholder is replaced at runtime with zero-or-more nodes from the expression.

## Concept summary

- FQN: `jetbrains.mps.lang.quotation.structure.ListAntiquotation`
- Supertype: `NodeAttribute`, implements `AbstractAntiquotation`
- Attaches via the inherited `smodelAttribute` role on any `BaseConcept`
- Child `expression` (cardinality 1) — `Expression` → `Iterable<SNode>` / `nlist<...>`
- Optional `label` property

## Where to see it in action

See `references/antiquotations.md` — the closures-intention example combines a child antiquotation with a list antiquotation on the `parameter` role of `CompactInvokeFunctionExpression`. The expression `parent.operation:InvokeFunctionOperation.parameter` returns the list of original parameter nodes, which the runtime substitutes for the placeholder.
