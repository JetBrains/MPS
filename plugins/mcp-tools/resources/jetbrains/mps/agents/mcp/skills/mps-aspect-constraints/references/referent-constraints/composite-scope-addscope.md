### CompositeScope with dynamic addScope (Kaja `RoutineCall`)

Use when the scope must union **several different role sources** and may also grow dynamically after construction. `CompositeScope` has both a varargs constructor for a known set of scopes and an `addScope(Scope)` mutator for additional scopes added in a loop.

**Verbatim example from Kaja `RoutineCall_Constraints`, link `definition`** — covers routines defined at the Script level, inline in the script body, and in every `Library` explicitly imported via a `Require` statement:

```
CompositeScope scope = new CompositeScope(
    SimpleRoleScope.forNamedElements(contextNode.ancestor<concept = Script, +>, link/Script : definitions/),
    SimpleRoleScope.forNamedElements(contextNode.ancestor<concept = Library, +>, link/Library : definitions/),
    ListScope.forNamedElements(contextNode.ancestor<concept = Script, +>.body.commands.where({it => it.isInstanceOf(RoutineDefinition); }))
);
contextNode.ancestor<concept = Script, +>.descendants<concept = Require>.forEach({it =>
    scope.addScope(SimpleRoleScope.forNamedElements(it.library, link/Library : definitions/));
});
return scope;
```

Four things make this idiom work:
- `new CompositeScope(Scope...)` — varargs constructor; stable ctor ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/8401916545537277023`.
- `ListScope.forNamedElements(sequence<node<>>)` — static factory that wraps a computed sequence; requires every element to implement `INamedConcept` (i.e., carry a `name` property). **No anonymous subclass needed.** Stable method ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/5455284157994035599`; class ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/5455284157994035575`.
- `scope.addScope(anotherScope)` — `CompositeScope`'s mutable extension method; stable method ref: `r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)/8401916545537277126`. Called inside a `forEach` closure to fold in one sub-scope per required library.
- `.descendants<concept = Require>` — downward traversal; concept `jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation`.

Prefer `CompositeScope` + `addScope` over building a `ListScope` from a flat collection when the contributing scopes are structurally heterogeneous (different roles, different host types) or when one of them must be collected dynamically via a traversal.
