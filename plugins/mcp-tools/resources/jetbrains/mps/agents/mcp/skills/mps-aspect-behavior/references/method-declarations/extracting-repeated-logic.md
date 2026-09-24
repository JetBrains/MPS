## Extracting repeated logic into behavior methods

When the same node-handling snippet appears in several places — especially across **multiple aspects of the same concept** (editor, constraints, typesystem, checking rules, generator queries, intentions, textgen) — extract it into a behavior method and call it from every site via `node.m(...)`. This is the behavior aspect's core purpose: one body, one place to fix. When extracting, choose the modifier deliberately:

- Logic operates on a node instance (`this`, its properties/children/references) → instance method; make it `virtual` when subconcepts need to override it or the logic naturally varies per concept, otherwise non-virtual.
- Logic is invoked on a concept rather than a node (no instance available, e.g. in constraints/actions, or it's a pure utility taking nodes as parameters) → `static`; make it `virtual static` when the answer must differ per concept (dispatch on a `concept<X>` value), as baseLanguage does with `Expression.getPrecedenceLevel`.
- Logic is shared by several sibling concepts → hoist the method onto their common abstract super-concept or interface (see `inheritance-and-dispatch.md`).
