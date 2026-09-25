# Scope Helper Classes and DSL Cache Constructs

Open this file when picking the right `jetbrains.mps.scope` helper class for a scope body, combining a local `ListScope` with `HidingByNameScope` over `parent scope`, or using the `for model` / `visible roots` / `visible nodes` caches.

> **Module-dependency prerequisite.** Every helper class below is defined in model `jetbrains.mps.scope`, which ships inside solution `jetbrains.mps.kernel` (uuid `2d3c70e9-aab2-4870-8d8d-6036800e4103`). The language module that owns the constraints (or behavior) model must declare a `Default` dependency on `jetbrains.mps.kernel`, otherwise these classes are absent from the compile classpath. `mps_mcp_model_dependency` wires the module dependency automatically when it imports `jetbrains.mps.scope`; if you imported the model some other way, add the module dependency explicitly with `mps_mcp_module_dependency`. See `references/scope-fqn-reference/required-languages-imports-dependencies.md`.

## Scope helper classes

From `jetbrains.mps.scope` (auto-imported in `getScope` bodies and constraint scope blocks):

| Class | Purpose |
|---|---|
| `EmptyScope` | Contains nothing. |
| `ListScope` | Wraps an explicit `list<node<>>` or any `sequence<node<>>`. Static factory `ListScope.forNamedElements(sequence<>)` (method ref `r:.../5455284157994035599`, class ref `r:.../5455284157994035575`) returns a name-indexed scope when every element implements `INamedConcept` — no anonymous subclass required. Use the anonymous subclass approach (see `references/referent-constraints/computed-sequences-listscope.md`) only when elements do not carry a `name` property or you need a custom naming strategy. |
| `SimpleRoleScope` | Children of a host node in a given containment role; `forNamedElements(host, link/.../)` optimises name-keyed lookup. |
| `CompositeScope` | Union of several scopes (e.g. locals + fields + globals). |
| `FilteringScope` / `FilteringByNameScope` | Wrap a scope with a predicate / name blacklist. |
| `DelegatingScope` | Base for custom scope variants that mostly forward to a delegate. |
| `ModelsScope` | All nodes of a given concept across an explicit set of models. |
| `ModelPlusImportedScope` | Default-style scope: one model plus everything it imports. |
| `ListScope.forResolvableElements(sequence<>)` | For nodes implementing `IResolveInfo` (i.e. they have a `getResolvingName()` behavior method) rather than `INamedConcept`. Name lookup uses `IResolveInfo.getResolvingName()`. Stable method ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/3812912149866273308`. |
| `Scopes.forConcepts(node<>)` | Returns a `Scope` of all concept declarations visible from the given node's containing model. Used in structure-language constraints where a reference points to a `ConceptDeclaration`. Stable class ref: `r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)/7158114823470894537`; stable method ref: `r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)/5773544763888585191`. |
| `HidingByNameScope` (from `jetbrains.mps.lang.scopes.runtime`) | Overlays an inner scope on top of a fallback: names defined in the inner scope hide same-named elements in the fallback. 4-arg ctor: `(namedKind: concept<INamedConcept>, scopeKind: concept<>, inner: Scope, fallback: Scope)`. Typical pairing: local `ListScope` with a custom `getName(node<>)` over `parent scope`, e.g. `new HidingByNameScope(concept/State/, concept/State/, myStates, parent scope)`. |

## Combined idiom — `ListScope` + anonymous `getName` + `HidingByNameScope` over `parent scope`

Verbatim from StateChart `Stateful_Behavior.getScope`:

```
ListScope myStates = new ListScope(this.states) {
  public string getName(node<> child)  { child:State.name; }
};
return new HidingByNameScope(concept/State/, concept/State/, myStates, parent scope);
```

Use this whenever a concept owns a role (`this.states`) that should locally shadow same-named nodes from the enclosing scope chain. The anonymous class overriding `ListScope.getName` is a standard BaseLanguage `GenericNewExpression` + `AnonymousClassCreator` + `AnonymousClass`; its child `ConceptMethodDeclaration`-like method is a plain BaseLanguage `InstanceMethodDeclaration` whose body's trailing expression is `child:State.name` — i.e. `SNodeTypeCastExpression` (`asCast=false`) on the parameter, followed by an `SPropertyAccess` for `name`. `concept/State/` is a standalone `ConceptIdRefExpression` (see `scope-fqn-reference.md`).

## Scope DSL: caching and invalidation

Inside `getScope` / scope blocks, three constructs cache expensive scope calculations (invalidated automatically on model change):

- `for model [factory, key]` — cache a scope per containing model, keyed by `key`.
- `visible roots [Concept]` — cached set of root nodes of `Concept` visible from the current model (current + imported).
- `visible nodes [Concept]` — cached set of all nodes of `Concept` visible from the current model.

Use these when the same scope would otherwise be recomputed on every keystroke in a large project.
