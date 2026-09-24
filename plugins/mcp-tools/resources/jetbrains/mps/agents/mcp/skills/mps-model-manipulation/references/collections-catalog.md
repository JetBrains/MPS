# Collections Language — Full Catalog

Language id: `l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections`. Concept refs start with `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/...`. Runtime: `collections.runtime` solution; built on top of closures.

Most operations on collection-typed expressions parse to a `DotExpression` whose `operation` is a specific `*Operation` concept from this language. Operations taking a predicate/selector take a **single closure argument** in the `closure` role (not `parameter`).

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Core concepts | `references/collections-catalog/core-concepts-types-null-semantics.md` |
| Creators (all wrapped in `GenericNewExpression`) | `references/collections-catalog/creators.md` |
| Sequence operations (most common) | `references/collections-catalog/sequence-operations.md` |
| List mutators | `references/collections-catalog/list-mutators.md` |
| Set & map operations | `references/collections-catalog/set-and-map-operations.md` |
| Control flow within closures | `references/collections-catalog/control-flow-in-closures.md` |
| Iteration: pick the right `foreach` | `references/collections-catalog/iteration-foreach.md` |
| Sorted collections | `references/collections-catalog/sorted-collections.md` |
| Iterator and modifying_iterator | `references/collections-catalog/iterators.md` |
| Concept IDs | `references/collections-catalog/concept-ids.md` |
