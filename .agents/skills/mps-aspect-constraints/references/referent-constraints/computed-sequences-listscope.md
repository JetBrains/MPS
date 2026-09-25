### Computed sequences: `ListScope` with anonymous `getName`

Use `ListScope` instead of `SimpleRoleScope` when the scope's contents are not the children of one host in one role, but a **computed sequence** gathered from multiple places (ancestors, imported models, filtering, union). `ListScope(sequence<node<>>)` wraps any sequence into a `Scope`, but by default it does **not** name its elements — completion will show nothing useful and name-based resolution will fail. Override `getName(node<> child)` in an anonymous subclass to fix that.

**Verbatim example from StateChart `Transition_Constraints`, link `trigger`** — pick up every `Event` declared on any enclosing `Stateful` ancestor (the transition itself, its containing state, and the containing chart), then name each by its `name` property:

```
sequence<node<Event>> allEventsInPath =
    contextNode.ancestors<concept = Stateful, +>.selectMany({it => it.availableTriggers; });
new ListScope(allEventsInPath) {
  public string getName(node<> child) {
    child:Event.name;
  }
};
```

Three things make this idiom work:
- `ancestors<concept = Stateful, +>` — the `+` after the concept filter means **include self**. It is a second child in the `parameter` role, concept `jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion` (a leaf with no properties/children), sitting next to the `OperationParm_Concept`. Without `+` the starting node is excluded. See the mps-model-manipulation skill for the full smodel reference.
- `.selectMany({it => it.availableTriggers;})` — flattens a `sequence<Stateful>` into a `sequence<Event>` by concatenating each ancestor's `availableTriggers` children. The child-role access (`SLinkListAccess`) returns a sequence directly, so `selectMany` is the right combinator (not `select`, which would yield a sequence-of-sequences).
- The anonymous subclass — `AnonymousClassCreator` wrapping an `AnonymousClass` whose `classifier` ref targets `ListScope` and whose `baseMethodDeclaration` targets the `ListScope(sequence<node<>>)` constructor; its single `member` is an `InstanceMethodDeclaration` named `getName` returning a `string` and casting `child:Event` to read `.name`. (`child:C` is an `SNodeTypeCastExpression` with `asCast=false`.)
