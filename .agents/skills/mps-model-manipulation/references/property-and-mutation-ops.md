# Property Access and Tree Mutation Operations

Property reads/writes, the seven `SNodeCreator` / `add new` / `set new` / `replace with new` mutation operations, and the `NF_*` factory-initialized variants. All sit in the `operation` role of a `DotExpression`, except `SNodeCreator`, which is the `creator` of a `GenericNewExpression`.

## Property access and assignment

### `node.propertyName` (read) — `SPropertyAccess`

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
      "references": [{ "role": "property", "target": "<PropertyDeclaration-noderef>" }]
    }]}
  ]
}
```

`<PropertyDeclaration-noderef>` is the property's `sourceNode` from `mps_mcp_get_concept_details` on the operand's concept, not the concept's own `sourceNode` and not `featureId`. An inherited property lives in the declaring concept's model: `name` is `r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)/1169194664001`.

### `node.propertyName = value` — assignment

Wrap the `SPropertyAccess`-rooted `DotExpression` as the `lValue` of a BaseLanguage `AssignmentExpression`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.AssignmentExpression",
  "children": [
    { "role": "lValue", "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
      "children": [
        { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
        { "role": "operation", "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
          "references": [{ "role": "property", "target": "<PropertyDeclaration-noderef>" }]
        }]}
      ]
    }]},
    { "role": "rValue", "nodes": [{ "...": "<value-expression>" }] }
  ]
}
```

### `node.propertyName.remove` — clear a property

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
      "children": [
        { "role": "operand",   "nodes": [{ "...": "<node-expression>" }] },
        { "role": "operation", "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
          "references": [{ "role": "property", "target": "<PropertyDeclaration-noderef>" }]
        }]}
      ]
    }]},
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.Property_RemoveOperation"
    }]}
  ]
}
```

## Modification operations (add / set / replace / detach / copy)

All sit in the `operation` role of a `DotExpression` on the target node or link.

### `new node<C>()` — bare node factory expression

`SNodeCreator` is neither a DotExpression operation nor an `Expression`: like every `AbstractCreator` it is the `creator` child of a `GenericNewExpression`. The concept to create is carried by a `createdType` child of concept `SNodeType`:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
  "children": [{ "role": "creator", "nodes": [{
    "concept": "jetbrains.mps.lang.smodel.structure.SNodeCreator",
    "children": [{
      "role": "createdType",
      "nodes": [{
        "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
        "references": [{ "role": "concept", "target": "<ConceptDeclaration-noderef>" }]
      }]
    }]
  }]}]
}
```

Optional `prototypeNode` child (Expression) supplies a node to copy from. For **initialized** factories (`new initialized node<C>()`, which runs the concept's node factory), use `SNodeCreatorAndInitializer` from `jetbrains.mps.lang.actions` instead (a subconcept of `SNodeCreator`, wrapped the same way).

### `node.linkList.add new(C)` — create & append a child to a 0..n link

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
  "children": [
    { "role": "operand",   "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
      "children": [
        { "role": "operand",   "nodes": [{ "...": "<parent-node-expression>" }] },
        { "role": "operation", "nodes": [{
          "concept": "jetbrains.mps.lang.smodel.structure.SLinkListAccess",
          "references": [{ "role": "link", "target": "<LinkDeclaration-noderef>" }]
        }]}
      ]
    }]},
    { "role": "operation", "nodes": [{
      "concept": "jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation",
      "references": [{ "role": "concept", "target": "<ConceptDeclaration-noderef-or-omitted>" }]
    }]}
  ]
}
```

Omit the `concept` reference to default to the link's declared target concept. For `add new initialized(C)`, which runs the concept's node factory, use `NF_LinkList_AddNewChildOperation` — same shape, same `concept` reference.

### `node.link.set new(C)` — create & set a 0..1 child

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation",
  "references": [{ "role": "concept", "target": "<ConceptDeclaration-noderef>" }]
}
```

Wrap it in a `DotExpression` whose `operand` is an `SLinkAccess` on the parent node. `NF_Link_SetNewChildOperation` adds an initializer block.

### `node.replace with new(C)` — replace a node by a fresh one

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation",
  "references": [{ "role": "concept", "target": "<ConceptDeclaration-noderef>" }]
}
```

Goes in `operation` of a `DotExpression` whose operand is the node to be replaced. `NF_Node_ReplaceWithNewOperation` carries an initializer block.

### `node.replace with(otherNode)` — replace by an existing expression

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation",
  "children": [{
    "role": "replacementNode",
    "nodes": [{ "...": "<replacement-expression>" }]
  }]
}
```

### `.copy` and `.detach` — leaf operations

`node.copy`:

```json
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_CopyOperation" }
```

`node.detach`:

```json
{ "concept": "jetbrains.mps.lang.smodel.structure.Node_DetachOperation" }
```

Both are bare `operation` children of a `DotExpression` on the target node — no references, no arguments.

- `node.copy` returns a **new, detached** deep copy of the subtree rooted at `node`; the original stays exactly where it is. References pointing *inside* the copied subtree are remapped to the copy; references to nodes *outside* it still point at the original targets.
- `node.detach` unlinks `node` from its current parent **in place** (a destructive move-out, the first half of a relocation).

**Why `.copy` exists — one node, one parent.** An `SNode` occupies exactly one containment slot: it has *at most one parent*. So you cannot take a node that already lives somewhere and `add` / `set` / `insert … sibling` / `replace with(...)` it elsewhere and expect it to appear in *both* places — the containment APIs assume the supplied node is parent-less, so attaching an already-attached node either fails or silently moves it (detaching it from its old home). Whenever you need a *second, independent* instance with the same shape — duplicating a child, reusing an existing subtree as a template, seeding a new tree from an old one — copy first and insert the copy:

```
// WRONG: src already has a parent → it cannot live under two parents.
//        This moves src out of its old slot, or errors.
target.children.add(src);

// RIGHT: insert an independent duplicate; src stays put.
target.children.add(src.copy);
```

Use `.detach` (or hand the live node straight to `replace with(...)` / `insert … sibling(...)`, which relocate it) only when you genuinely want to **move** the node — i.e. it should leave its old location.

### Sibling inserts

All take a single `argument` / initializer child on the corresponding `DotExpression`:

| Concept | Adds | Notes |
|---|---|---|
| `Node_InsertNextSiblingOperation` | existing node | operand is the anchor sibling |
| `Node_InsertPrevSiblingOperation` | existing node | operand is the anchor sibling |
| `Node_InsertNewNextSiblingOperation` | fresh node via ref `concept` | like `Link_SetNewChildOperation` |
| `Node_InsertNewPrevSiblingOperation` | fresh node via ref `concept` | same |

`NF_Node_InsertNewNextSiblingOperation` / `NF_Node_InsertNewPrevSiblingOperation` add initializer blocks.

## NF_* factory-initialized variants

The plain operations above (`LinkList_AddNewChildOperation`, `Link_SetNewChildOperation`, `Node_ReplaceWithNewOperation`, `Node_InsertNewNextSiblingOperation`, `Node_InsertNewPrevSiblingOperation`, `Model_CreateNewNodeOperation`, `Model_CreateNewRootNodeOperation`, `Concept_NewInstance`) all have **factory-initialized** counterparts in `jetbrains.mps.lang.actions` (language `l:aee9cad2-acd4-4608-aef2-0004f6a1cdbd`, virtual folder `nodeFactories`).

Structurally identical to the smodel originals but with a critical runtime difference: NF_* operations invoke **the actions-aspect `NodeFactory`** of the created node's concept (see `mps-aspect-actions`). That factory sets up defaults, seeds mandatory children, and may carry data from a `sampleNode`. Non-`NF_` variants skip the factory.

| Concept | ID | Surface | Counterpart |
|---|---|---|---|
| `NF_LinkList_AddNewChildOperation` | `767145758118872833` | `node.listRole.add new initialized(C)` / `… (<default>)` | `LinkList_AddNewChildOperation` |
| `NF_Link_SetNewChildOperation` | `767145758118872830` | `node.singleRole.set new initialized(C)` | `Link_SetNewChildOperation` |
| `NF_Node_ReplaceWithNewOperation` | `767145758118872828` | `node.replace with new initialized(C)` | `Node_ReplaceWithNewOperation` |
| `NF_Node_InsertNewNextSiblingOperation` | `767145758118872824` | `node.insert new initialized next-sibling(C)` | `Node_InsertNewNextSiblingOperation` |
| `NF_Node_InsertNewPrevSiblingOperation` | `767145758118872826` | `node.insert new initialized prev-sibling(C)` | `Node_InsertNewPrevSiblingOperation` |
| `NF_Model_CreateNewNodeOperation` | `5480835971642155304` | `model.createNode initialized<C>()` | `Model_CreateNewNodeOperation` |
| `NF_Model_CreateNewRootNodeOperation` | `5480835971642160908` | `new root node initialized<C>` in `model` | `Model_CreateNewRootNodeOperation` |
| `NF_Concept_NewInstance` | `7776141288922801652` | `c.new initialized()` — detached node with factory run | `Concept_NewInstance` (in smodel) |

Each NF_* op also accepts an optional `<default>` / `node<>` initializer block that runs after the factory. Surface syntax: `add new initialized`, `set new initialized`, `replace with new initialized`, `insert new initialized next/prev-sibling`, etc.

The `<default>` placeholder inside `add new initialized(<default>)` stands for an empty initializer (the concept is inferred from the containment role), equivalent to an explicit `add new initialized(C)` call without a custom block. Verbatim example from StateChart `AddOnEntry` intention's execute body: `node.onEntry.operations.add new initialized(<default>);` — this creates a new `Operation` child and runs any `NodeFactory` defined for it in the actions aspect.

> When to use NF_* vs plain: use `NF_` when a concept's newly inserted instance must behave like one created through the editor; use the plain operation when you want an uninitialised shell.

### ⚠ Used-language requirement

Because the NF_* concepts live in `jetbrains.mps.lang.actions`, the *containing model* (intention, behavior, typesystem, etc.) must import that language in its **used languages**. Without the import, the `add new initialized(...)` / `set new initialized(...)` / `replace with new initialized(...)` surface syntax is not offered and pasted blueprints will produce unresolved-concept errors.

Add it via:

```
mps_mcp_model_used_language(modelReference=<model>, usedLanguage="jetbrains.mps.lang.actions", kind="language")
```

The plain (non-`NF_`) smodel variants need no extra import beyond `jetbrains.mps.lang.smodel` which is already present in every code-bearing MPS model.
