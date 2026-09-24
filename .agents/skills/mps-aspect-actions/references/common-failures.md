# Actions Aspect — Common Failures

| Symptom | Cause | Fix |
|---|---|---|
| New node always has defaults, even after replace | No `NodeFactory` exists for that concept **or any of its super-concepts/implemented interfaces** — MPS runs every factory it finds walking up that chain, so the gap is a missing factory anywhere on it, not a mismatch with a more-specific concept | Add a `NodeFactory` whose `applicableConcept` is the concept (or an ancestor of it) that needs the initialization |
| `sampleNode.<prop>` does not compile | `sampleNode` is typed as `BaseConcept` | Narrow it with `ifInstanceOf (sampleNode is <Concept> original)`, then use `original.<prop>` |
| Factory body edits take no effect at runtime | Language not rebuilt after edit | Rebuild; also check the factory's model is listed in the language's aspect models |
| NullPointer on `sampleNode.*` | Directly dereferenced `sampleNode` which may be null | Always guard with `ifInstanceOf` or `if (sampleNode != null)` |
| `enclosingNode` is null when expected | Factory fired outside a containment context (e.g. root creation) | Guard; don't rely on `enclosingNode` for required fields |
| Duplicate factories for one concept | Two `NodeFactory` children with the same `applicableConcept` | Keep one; merge bodies |
| Factory not called from generator code | `model.add root(<C()>)` and `model.add new root(C)` bypass node factories | Use an intention or rewrite to route through `add new initialized` |
| Factory not called from quotation | Quotations (`<C()>`) bypass node factories | Assign properties after quotation expansion, or use `new node<C>()` + explicit init |
| `enclosingNode` is null but parent was expected | Root-node creation or programmatic creation outside the editor; `enclosingNode` is only populated by the editor substitution mechanism | Guard with `if (enclosingNode != null)` before using it |
| `newNode.parent` returns null in the body | The node has not been attached to the model yet when the setup function runs | Use `enclosingNode` (the implicit parameter) instead of `newNode.parent` |
