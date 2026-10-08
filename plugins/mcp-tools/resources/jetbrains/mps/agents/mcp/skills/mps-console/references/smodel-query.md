# The smodel query language (`jetbrains.mps.lang.smodel.query`)

UUID `1a8554c4-eb84-43ba-8c34-6f0d90c6e75a`. It exposes the queries the MPS Console uses so they can run in **ordinary model code** — intentions, behavior methods, generator queries, constraints, migration/refactoring scripts, plain BaseLanguage. In the console the query expressions are usable directly; outside the console they must sit inside a `with` statement that fixes the scope.

Add it to the host model's **used languages** before writing queries. The query operations build on `smodel` / `collections` / `closures`, so `.where`, `.select`, `.ofConcept<C>`, etc. compose directly on the results (see `mps-model-manipulation` and `mps-collections-and-closures`).

## The `with` statement

```
with (<scope>) {
  // queries here run over <scope>
}
```

- `WithStatement` (alias `with`): child `scope: Expression[1]`, child `stmts: StatementList[1]`, property `includeNonEditable: boolean`.
- `<scope>` may be a **model**, a **module**, a **sequence** of either, a **project** (e.g. `#project` in the console, or a `Project` instance in IDE code), or any expression of type **`SearchScope`**.
- By default the scope built by `with` includes **only editable models**, so model-mutating queries are safe. Set `includeNonEditable` (the editor offers it) to include read-only models.
- **Nested `with` is not allowed** — flatten or compute a combined scope instead.

```
// inside an intention / behavior method
with (this.model) {
  foreach c in #instances(ClassConcept) {
    info "found class: " + c.name;
  }
}
```

## The six query expressions

All extend `QueryExpression` (a BaseLanguage `Expression`) and carry an optional `parameter: QueryParameterList` (the `< … >` after the command).

| Alias | Concept | Returns | Laziness |
|---|---|---|---|
| `#nodes` | `NodesExpression` | every node in scope | lazy sequence (full iteration) |
| `#references` | `ReferencesExpression` | every reference in scope | lazy sequence |
| `#models` | `ModelsExpression` | every model in scope | lazy sequence |
| `#modules` | `ModulesExpression` | every module in scope | lazy sequence |
| `#instances(C)` | `InstancesExpression` (child `conceptArg: IRefConceptArg[1]`) | instances of concept `C` | **fast** — uses the find-usages index |
| `#usages(node)` | `UsagesExpression` (child `node: Expression[1]`) | direct references to `node` | **fast** — uses the find-usages index |

Prefer `#instances(C)` over `#nodes.ofConcept<C>()` — the former is indexed, the latter iterates the whole scope.

## Query parameters — the `< … >` after a command

`QueryParameterList` (alias `< .. >`) holds zero or more `QueryParameter`s:

| Alias | Concept | Meaning |
|---|---|---|
| `scope <ScopeParameter>` | `QueryParameterScope` (child `value: ScopeParameter[1]`) | override the scope for **this one** command |
| `exact` | `QueryParameterExact` | (on `#instances`) match the concept exactly, excluding sub-concept instances |
| `r/o+` | `QueryParameterIncludeReadOnly_old` | include read-only models (legacy / deprecated) |
| `withDependencies` | `WithDependencies` (ideCommands) | (on `#make`/`#clean`) widen the target to its dependencies |

```
#instances<exact>(BaseConcept)              // only direct BaseConcept instances
#nodes<scope global>                         // ignore the with/default scope, search whole repo
#instances<scope modules myLang>(Concept)    // restrict to one module
```

## Scope parameters (`ScopeParameter`)

Used after `scope` in a query parameter, or as the value forms a console scope. The concrete scopes come from three languages:

| Alias | Concept | Language | Scope |
|---|---|---|---|
| `project` | `ProjectScope` | base | all models of the current project |
| `editable` | `ProjectEditableScope` | base | editable project models (default) |
| `global` | `GlobalScope` | ideCommands | all modules in the repository |
| `visible` | `VisibleModulesScope` | ideCommands | visible modules in the repository |
| `models <expr>` | `ModelsScope` (child `models: Expression[1]`) | smodel.query | the listed models |
| `modules <expr>` | `ModulesScope` (child `modules: Expression[1]`) | smodel.query | the listed modules |
| `custom <expr>` | `CustomScope` (child `scope: Expression[1]`) | smodel.query | an arbitrary `? extends SearchScope` |

## `with` scope vs the `scope` parameter — they differ on read-only models

This is the subtle trap from the MPS docs:

- The scope a **`with` statement** builds **drops read-only models** (so writes are safe).
- A **`scope` query parameter** is used **as-is and keeps read-only models**.

So `#nodes` inside `with (project) { … }` and `#nodes<scope project>` are not equivalent — the second can surface nodes in read-only models. Choose `with` when you intend to mutate; choose an explicit `scope` parameter when you genuinely want everything.

## In the console plugin specifically

Queries may be written **without** a wrapping `with`. The default scope for an unspecified query is **all editable models in the current project**. Specifying `scope` explicitly enables the extra options above.

## Composing with smodel/collections

The results are ordinary `sequence<…>` values, so the full `collections` API applies:

```
with (#project) {
  #instances(Issue)
    .where({~it => it.priority == Priority.high; })
    .sortBy({~it => it.created; }, asc)
    .forEach({~it => #printNodeRef it; });
}
```

See `mps-model-manipulation` for `.ofConcept<C>` / `replace with new(C)` / `:eq:`, and `mps-collections-and-closures` for `.where` / `.select` and the closure-literal rules used in these bodies.
