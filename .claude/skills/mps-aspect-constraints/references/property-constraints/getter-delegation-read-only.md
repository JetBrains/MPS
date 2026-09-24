## Property getter delegation and read-only semantics

**Aliasing the `name` property** — the most common use of `ConstraintFunction_PropertyGetter` is to expose a different physical property as the concept's `name`. Since `INamedConcept.getName()` reads the `{name}` property, overriding its getter redirects all scope lookups, editor display, and `getName()` calls to an alternative field without renaming that field:

```
// From StateChart State_Constraints:
property {name}
  get (node)->string { node.stateName; }
  set <read-only>
```

The `set <read-only>` declaration means: **no setter exists** — direct assignment to `name` is blocked at the MPS API level. This is the correct choice when the physical storage is a different property (`stateName`) — editing the aliased name must go through the real property.

**Delegating to a behavior method** — when name computation is non-trivial, the getter calls a behavior method instead of reading a property directly:

```
property {name}
  get (node)->string { node.getDisplayName(); }
  set <read-only>
```

This keeps name logic centralised in the behavior aspect and reusable from other behavior methods. The body is a single `DotExpression` whose operation is a `ConceptMethodCall` (`jetbrains.mps.lang.behavior.structure.ConceptMethodCall`) referencing the method declaration by stable node ref.

**Overriding `shortDescription`** — controls the label shown in completion menus alongside the node's name. Override its getter to provide richer disambiguation when many nodes share the same name:

```
property {shortDescription}
  get (node)->string { "context: " + node.name; }
  set <read-only>
```

**Absent setter vs no-op setter**:
- Absent setter (`set <read-only>`) — the `NodePropertyConstraint` has no `propertySetter` child. MPS treats the property as read-only and shows an error if code tries to assign it. Use for derived / aliased properties.
- Explicit empty setter — a `ConstraintFunction_PropertySetter` is present but its `body` is an empty `StatementList`. Assignment is silently discarded. Extremely rare; almost always a mistake. Verify intent before copying this pattern.
