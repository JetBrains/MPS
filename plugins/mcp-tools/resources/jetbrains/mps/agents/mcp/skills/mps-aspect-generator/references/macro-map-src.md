# $MAP_SRC$ / MapSrcNodeMacro

Read this when: a single macro must replace the input node, build output imperatively, post-process produced output, or register output under a label simultaneously. Also: choosing between MAP_SRC and COPY_SRC variants.

## What it does

`$MAP_SRC$` is **multi-functional** and fills roles no other macro covers. A single `MapSrcNodeMacro` can, depending on which optional children are set:

1. **mark the output sub-tree with a mapping label** (like `LabelMacro` but attached to a concrete template element);
2. **replace the current input node with a different node** before the wrapped template renders — via `sourceNodeQuery`;
3. **perform a non-template-based transformation** — via `mapperFunction`; when set, the wrapped template code is *ignored* and the function's returned `node<>` is used instead;
4. **access the produced output node for post-processing** — via `postMapperFunction`, which runs after the subtree has been generated and is handed the already-created `outputNode`.

**When it runs.** The `MAP_SRC` macro is executed at the **end of a generator micro-step** — after all node macros and property macros, but **before any reference macro** fires. That is why reference macros can safely `genContext.get output … for (<mapped input>)` and find the output produced by a `MAP_SRC` in the same step.

**List variant.** `MapSrcListMacro` (`$MAP_SRCL$`) is the same mechanism but expects a `sequence<node<>>` from its `sourceNodesQuery`/`mapperFunction`, replicating the target node once per element. Use it exactly where you would use `$COPY_SRCL$` if you needed the extra `$MAP_SRC$` hooks.

## Parameters (children roles)

| Role (MPS simple name) | Function concept | Return type | Implicit params | Purpose |
|---|---|---|---|---|
| `sourceNodeQuery` (opt) | `SourceSubstituteMacro_SourceNodeQuery` | `node<>` | `node` | Replace the input that the wrapped template renders against. |
| `mapperFunction` (opt) | `MapSrcMacro_MapperFunction` | `node<>` (the mapped output) | `node`, `genContext`, `parentOutputNode` | Build the output node imperatively. **If set, the wrapped template is ignored.** `parentOutputNode` is the already-created parent node in the output model. |
| `postMapperFunction` (opt) | `MapSrcMacro_PostMapperFunction` | `void` | `node`, `genContext`, `outputNode` | Runs after the sub-tree has been generated; mutates the produced `outputNode` in place. |
| `mappingLabel` (ref, opt) | — | — | — | Register the output under a `MappingLabelDeclaration`, like a label-writer does for whole rules. |

At least one of the four must be meaningful — otherwise `$MAP_SRC$` is a no-op.

## Example 1 — replace the input (sourceNodeQuery only)

From `jetbrains.mps.samples.generator_demo.demoLang3/4/5` (`template/main@generator.mps`): the template iterates over the current node's `attribute` children, then uses `$MAP_SRC$` to re-bind `node` to the filtered attribute before the wrapped template renders. Simplified:

```json
{ "concept": "jetbrains.mps.lang.generator.structure.MapSrcNodeMacro",
  "children": [
    { "role": "sourceNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery",
        "children": [ { "role": "body", "nodes": [ /* StatementList:
             node.attribute.where({~it => it.name.equals("enabled") }) */ ]} ]
      }
    ]}
  ]
}
```

Effect: the wrapped template is rendered with `node` bound to the filtered attribute, not to the original input.

## Example 2 — non-template transformation (mapperFunction)

Use when the output cannot be described by a target-language sample but is easy to build imperatively (e.g. the shape depends on runtime data, or you want to call a utility-model helper — see `references/utility-models.md`). The `mapperFunction` body returns an `SNode`:

```json
{ "concept": "jetbrains.mps.lang.generator.structure.MapSrcNodeMacro",
  "children": [
    { "role": "mapperFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.MapSrcMacro_MapperFunction",
        "children": [ { "role": "body", "nodes": [ /* StatementList that returns a node<>.
             Implicit params: node, genContext, parentOutputNode */ ]} ]
      }
    ]}
  ]
}
```

Because `mapperFunction` is set, MPS discards whatever template sits under the `$MAP_SRC$` and uses the returned node as the output.

## Example 3 — post-process the produced output (postMapperFunction)

Use to tweak the output sub-tree after the template has built it — e.g. add a derived attribute, adjust a property that depends on the fully-assembled node, or register the output under a secondary label:

```json
{ "concept": "jetbrains.mps.lang.generator.structure.MapSrcNodeMacro",
  "children": [
    { "role": "postMapperFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.MapSrcMacro_PostMapperFunction",
        "children": [ { "role": "body", "nodes": [ /* StatementList.
             Implicit params: node, genContext, outputNode (the already-created output) */ ]} ]
      }
    ]}
  ]
}
```

## When to use `$MAP_SRC$` vs. alternatives

| Situation | Prefer |
|---|---|
| Pass the input through unchanged, let reductions do the work | `$COPY_SRC$` |
| Iterate a sequence, copy each element with reductions | `$COPY_SRCL$` or `LoopMacro + $COPY_SRC$` |
| Switch which input node the wrapped template renders against | `$MAP_SRC$` with `sourceNodeQuery` |
| Produce output imperatively (not by a template) | `$MAP_SRC$` with `mapperFunction` |
| Inspect/adjust the produced output | `$MAP_SRC$` with `postMapperFunction` |
| Just register a label on output produced by surrounding template | `LabelMacro` (lighter), or `$MAP_SRC$` with `mappingLabel` if you already need MAP_SRC |
