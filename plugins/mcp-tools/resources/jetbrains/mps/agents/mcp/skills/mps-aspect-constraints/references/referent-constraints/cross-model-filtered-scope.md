### Cross-model filtered scope with `rootsIncludingImported` (Kaja `Require`)

Use when a reference should point to **root nodes in the current model and all imported models**, but must exclude entries that are already in use elsewhere (deduplication). `contextNode.model` retrieves the containing model; `model.rootsIncludingImported(Concept)` returns all root nodes of that concept from the current model plus every transitively imported model.

**Verbatim example from Kaja `Require_Constraints`, link `library`** — offer every visible `Library` root, but exclude those already referenced by other `Require` nodes in the same `Script`:

```
final sequence<node<Library>> libraries =
    contextNode.model.rootsIncludingImported(Library).where({library =>
        contextNode.ancestor<concept = Script, +>.descendants<concept = Require>
            .where({it => it != contextNode; })
            .select({it => it.library; })
            .all({it => it != library; });
    });
ListScope.forNamedElements(libraries);
```

Key constructs:
- `contextNode.model` — `DotExpression` with operation `Node_GetModelOperation` (`jetbrains.mps.lang.smodel.structure.Node_GetModelOperation`). Returns the `SModel` of the node.
- `model.rootsIncludingImported(Library)` — operation `Model_RootsIncludingImportedOperation` (`jetbrains.mps.lang.smodel.structure.Model_RootsIncludingImportedOperation`); child `conceptArgument` → `RefConcept_Reference` pointing to the concept whose roots you want.
- The `where` predicate at the outer level filters the full library list to only those not already claimed by a sibling `Require` (excluding `contextNode` itself so the current node's own slot stays open).
- `ListScope.forNamedElements(sequence<>)` — wraps the filtered sequence without an anonymous subclass.
