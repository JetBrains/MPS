## CopySrcListMacro

List-valued sibling of `CopySrcNodeMacro`. Attached to a target node, it replicates that node once per element of the source sequence and copies each element into the slot (running reductions). Body returns `sequence<node<>>`:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.CopySrcListMacro",
  "children": [
    { "role": "sourceNodesQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.states` */ ]}
        ]
      }
    ]}
  ]
}
```

**COPY_SRCL vs. LOOP+COPY_SRC — when to use which.** They are equivalent for the simple case *"replicate this target node once per element of a source sequence and copy each element into it"*: `CopySrcListMacro(body = node.states)` produces the same output as `LoopMacro(body = node.states) + CopySrcNodeMacro()` on the same target.

Prefer `COPY_SRCL` when that is all you need — one macro, one query. Prefer `LOOP + COPY_SRC` when you need any of the extra power that `CopySrcNodeMacro.sourceNodeQuery` provides:

- **copy something other than the current element** — give `CopySrcNodeMacro` a `sourceNodeQuery` that navigates into the looped node (e.g. `node.someChildren.first` to copy a selected child instead of the looped node itself);
- **attach more macros to the same target** — the LOOP surface is a separate macro, so `PropertyMacro`/`IfMacro`/`ReferenceMacro` siblings can run inside each iteration while COPY_SRC still handles the content;
- **copy a sibling / ancestor expression** rather than a subtree of the current `node`.
