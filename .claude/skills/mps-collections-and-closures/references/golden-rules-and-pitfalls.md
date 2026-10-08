# Golden Rules and Common Pitfalls (collections and closures)

Read this first when a collection operation or a closure produces an error that makes no sense.

## Golden rules

- **Closure parameter needs a `type` child**: every `InferredClosureParameterDeclaration` (the `it` parameter inside `.where { it => … }`, `.translate { … }`, etc.) requires a `type` child, even though the type is intended to be inferred. Use `jetbrains.mps.baseLanguage.structure.UndefinedType` as the placeholder. Omitting it triggers a cascade of misleading errors (`"different parameter numbers"`, `"out of search scope"`, `"operation is not applicable to null"`); see the closure-literal blueprint in `references/sequence-operation-blueprints.md` and the closure rules in `references/closures-catalog.md`.
- **One closure, role `closure`**: operations taking a predicate/selector take a **single closure argument** in the `closure` role (not `parameter`). See `references/collections-catalog.md`.

## Common pitfalls (symptom → cause → fix)

| Symptom | Cause | Fix |
|---|---|---|
| `"different parameter numbers"` on a `ClosureLiteral` + `"out of search scope"` / `"operation is not applicable to null"` inside the closure body | The `InferredClosureParameterDeclaration` was inserted without its required `type` child, so closure-signature inference fails and the parameter's type stays null | Add `{ "role": "type", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.UndefinedType" }] }` to every `InferredClosureParameterDeclaration` |
| Constraint error on `.isEmpty` / `.isNotEmpty` although the surface syntax looks right | There are two unrelated `IsEmptyOperation` (and `IsNotEmptyOperation`) concepts: collections for `sequence`/`list`/`set`/`map`, BaseLanguage for `string` | Pick the FQN by the receiver's type — see "`isEmpty` / `isNotEmpty` ambiguity" in `references/collections-catalog/sequence-operations.md` |
| A `sequence<T>` is rejected where a `list<T>` is required | `list<T>` is a subtype of `sequence<T>`, not the reverse; lazy operations (`where`, `select`, `translate`, …) return `sequence<T>` | Materialize with `.toList` (`ToListOperation`), or widen the target to `sequence<T>` — see the type hierarchy in `references/collections-catalog/core-concepts-types-null-semantics.md` |
| Side effects in a closure fire twice, or not at all | Filtering/mapping operations and yielding closures are lazy; side effects fire only on consumption, and each consumption re-iterates | Materialize once (`.toList`) when the result is consumed more than once — see the lazy-vs-eager rule in `references/collections-catalog/sequence-operations.md` |
| Closure mixing `return` and `yield` does not type-check | A closure body may use **either** `return` **or** `yield`, never both; a `yield` closure returns `sequence<T>` | Pick one — see "Yield vs return" in `references/closures-catalog.md` |
| Typesystem error on `skip;` / `stop;` | `skip`/`stop` only make sense inside a closure passed to `selectMany`/`translate`/`forEach`/a sequence initializer | Use them only in the enumerated contexts — see `references/collections-catalog/control-flow-in-closures.md` |
| `NoClassDefFoundError` for `_FunctionTypes$...` at load time, not at compile time | The module that first introduces closures lacks the closures runtime (`jetbrains.mps.baseLanguage.closures.runtime`); collections code needs the `collections.runtime` solution, built on top of closures | Put the runtime on the module's classpath — see "Runtime dependency" in `references/closures-catalog.md` |
| Typesystem error about iteration protocol in a `foreach` | The BaseLanguage `ForeachStatement` was used over a `sequence<T>`; it is for Java arrays and `Iterable`s | Switch concept — see `references/foreach-statements.md` |
