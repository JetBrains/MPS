## Modification operations

All appear in the `operation` role of a `DotExpression`.

| Concept | ID | MPS notation |
|---|---|---|
| `LinkList_AddNewChildOperation` | `1139184414036` | `node.links.add new(C)` (ref `concept` 0..1 → ConceptDeclaration) |
| `Link_SetNewChildOperation` | `1138757581985` | `node.link.set new(C)` (ref `concept` 0..1) |
| `Node_ReplaceWithNewOperation` | `1139867745658` | `node.replace with new(C)` (ref `concept` 1) |
| `Node_ReplaceWithAnotherOperation` | `1140131837776` | `node.replace with(otherNode)` (child `replacementNode`: Expression 1) |
| `Node_CopyOperation` | `1144146199828` | `node.copy` |
| `Node_DetachOperation` | `1228341669568` | `node.detach` |
| `Property_RemoveOperation` | `1215467301810` | `node.propertyName.remove` (clears property value) |
| `Node_InsertNextSiblingOperation` | `1143224066846` | `node.insert next-sibling(other)` |
| `Node_InsertPrevSiblingOperation` | `1143224127713` | `node.insert prev-sibling(other)` |
| `Node_InsertNewNextSiblingOperation` | `1139858892567` | `node.insert new next-sibling(C)` |
| `Node_InsertNewPrevSiblingOperation` | `1143221076066` | `node.insert new prev-sibling(C)` |

### Factory-initialized (NF_*) variants

Concepts from `jetbrains.mps.lang.actions` (language `l:aee9cad2-acd4-4608-aef2-0004f6a1cdbd:jetbrains.mps.lang.actions`, virtual folder `nodeFactories`). They are structurally the same DotExpression operations as the smodel originals listed above but with a critical runtime difference: they invoke **the actions-aspect `NodeFactory`** of the created node's concept (see `mps-aspect-actions`). That factory sets up defaults, seeds mandatory children, and may carry data from a `sampleNode`. Non-`NF_` variants skip the factory — use `NF_` when a concept's newly inserted instance must behave like one created through the editor, and the plain operation when you want an uninitialised shell.

Each NF_* op also accepts an optional `<default>` / `node<>` initializer block that runs after the factory. Surface syntax uses phrases `add new initialized`, `set new initialized`, `replace with new initialized`, `insert new initialized next/prev-sibling`, etc.

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

The `<default>` placeholder inside `add new initialized(<default>)` stands for an empty initializer (the concept is inferred from the containment role), equivalent to an explicit `add new initialized(C)` call without a custom block. Verbatim example from StateChart `AddOnEntry` intention's execute body: `node.onEntry.operations.add new initialized(<default>);` — this creates a new `Operation` child and runs any `NodeFactory` defined for it in the actions aspect.

⚠ **Used-language requirement** — because the NF_* concepts live in `jetbrains.mps.lang.actions`, the *containing model* (intention, behavior, typesystem, etc.) must import that language in its **used languages**. Without the import, the `add new initialized(...)` / `set new initialized(...)` / `replace with new initialized(...)` surface syntax is not offered and pasted blueprints will produce unresolved-concept errors. Add it via `mps_mcp_model_used_language(modelReference=<model>, usedLanguage="jetbrains.mps.lang.actions", kind="language")`. The plain (non-`NF_`) smodel variants need no extra import beyond `jetbrains.mps.lang.smodel` which is already present in every code-bearing MPS model.
