# Factory-Aware Insertion (`add new initialized(...)`)

When `execute` adds a child whose concept has a **NodeFactory** defined in the actions aspect, prefer the `NF_*` ("factory-initialized") variants of the splice operations. They allocate the node, run the registered factory to seed defaults/mandatory children, and insert into the AST in one step.

## The `NF_*` family

| Surface | Concept (FQN under `jetbrains.mps.lang.actions.structure`) | Counterpart without factory |
|---|---|---|
| `parent.listRole.add new initialized(C)` / `... (<default>)` | `NF_LinkList_AddNewChildOperation` | `LinkList_AddNewChildOperation` |
| `parent.singleRole.set new initialized(C)` | `NF_Link_SetNewChildOperation` | `Link_SetNewChildOperation` |
| `target.replace with new initialized(C)` | `NF_Node_ReplaceWithNewOperation` | `Node_ReplaceWithNewOperation` |
| `n.insert new initialized next-sibling(C)` | `NF_Node_InsertNewNextSiblingOperation` | `Node_InsertNewNextSiblingOperation` |
| `n.insert new initialized prev-sibling(C)` | `NF_Node_InsertNewPrevSiblingOperation` | `Node_InsertNewPrevSiblingOperation` |
| `model.createNode initialized<C>()` | `NF_Model_CreateNewNodeOperation` | `Model_CreateNewNodeOperation` |
| `new root node initialized<C> in model` | `NF_Model_CreateNewRootNodeOperation` | `Model_CreateNewRootNodeOperation` |
| `c.new initialized()` (detached) | `NF_Concept_NewInstance` | `Concept_NewInstance` |

`<default>` inside `add new initialized(<default>)` is an empty initializer placeholder: the concept is inferred from the containment role and no extra init block runs beyond the node factory. Use it when the factory already does everything you need. See `references/property-and-mutation-ops.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin for the full smodel/NF_* operation table and `references/collections-catalog.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin for the collections-vs-baseLanguage `IsEmptyOperation` disambiguation.

## Used-language requirement

The `NF_*` concepts live in `jetbrains.mps.lang.actions`. The **intentions model** must list that language in its *used languages* or the `add new initialized(...)` surface syntax won't resolve and blueprints will fail with unresolved-concept errors. Add it with:

```
mps_mcp_model_used_language(modelReference=<intentions-model>, usedLanguage="jetbrains.mps.lang.actions", kind="language")
```

The plain (non-`NF_`) smodel variants like `parent.listRole.add new(C)` need no extra import.

## Verbatim example — StateChart `AddOnEntry.execute`

```
node.onEntry.operations.add new initialized(<default>);
```

Contrast with the non-factory form `node.onEntry.operations.add new(C)` / `... .add(new node<C>())`, which inserts an uninitialised shell — use it only when you want to bypass the concept's factory.

## When to choose which

| Need | Pick |
|---|---|
| Insert a node and let the language's NodeFactory seed defaults/mandatory children | `NF_*` variant |
| Insert a "blank" shell and assign all fields manually | plain `Node_/LinkList_/Model_*` variant |
| Build a quotation/generator output (factories don't fire) | `new node<C>()` and explicit init (see `references/node-factories-and-triggers.md` in the `mps-aspect-actions` skill root after loading that companion skill from the same origin "When factories do NOT fire") |
