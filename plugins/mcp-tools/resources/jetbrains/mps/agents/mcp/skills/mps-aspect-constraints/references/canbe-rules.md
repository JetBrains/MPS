# `canBe*` Structural-Placement Rules

Open this file when authoring `canBeChild`, `canBeParent`, `canBeAncestor`, or `canBeRoot` blocks — choosing the right block for the rule, listing each block's parameter set, traversing to the grandparent with `.parent`, or writing role-aware checks with `isInRole`.

Each block receives `node`, `parentNode`, `link`, `childConcept`, etc. and returns `boolean`.

- `ConstraintFunction_CanBeAChild` — whether `node` may appear as a child in `link` under `parentNode`
- `ConstraintFunction_CanBeAParent` — symmetric check from the parent's point of view
- `ConstraintFunction_CanBeAnAncestor` — for transitive placement rules
- `ConstraintFunction_CanBeARoot` — whether the concept may be a root node of `model`

Use these for constraints that the structure cardinalities cannot express (e.g. "only one `MainCanvas` per model", "`ReturnStatement` must be inside a method").

## `ConstraintFunction_CanBeAChild`: concrete concept FQN and parameters

The child block concept is **`ConstraintFunction_CanBeAChild`** (`jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild`). Its `body` is a `StatementList` whose trailing expression is the `boolean` result.

Implicit parameters inside the body:

| Name | Concept FQN | What it is |
|---|---|---|
| `node` | `jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node` | The candidate child node (note the extra `s` in `Constraints`) |
| `parentNode` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode` | Proposed parent |
| `link` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_link` | Containment link role |
| `childConcept` | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept` | Concept of `node` |

> **⚠ Watch out — naming inconsistency**: the `node` parameter uses `Constraint**s**FunctionParameter_node` (plural), while every other parameter in this family uses `ConstraintFunctionParameter_*` (singular). Copy the FQNs exactly — a missing or extra `s` silently fails to resolve and the blueprint will be rejected.

### canBeChild with grandparent traversal (Kaja)

The `parentNode` parameter supports normal smodel operations such as `.parent` to reach the grandparent. Kaja uses this for two concepts:

**`RoutineDefinition`** — allowed as a child only when `parentNode` is a `CommandList` inside a `Script`, or directly inside a `Library`:

```
(parentNode.isInstanceOf(CommandList) && parentNode.parent.isInstanceOf(Script)) || parentNode.isInstanceOf(Library);
```

**`Require`** — allowed only inside a `CommandList` that is a direct child of a `Script`:

```
parentNode.isInstanceOf(CommandList) && parentNode.parent.isInstanceOf(Script);
```

Both bodies are single `ExpressionStatement`s whose expression is the returned `boolean`. The `parentNode.parent` chain is a plain `DotExpression` with operation `Node_GetParentOperation` (`jetbrains.mps.lang.smodel.structure.Node_GetParentOperation`), followed by `isInstanceOf` (`Node_IsInstanceOfOperation`).

> **Reading a property on the typed parent**: `parentNode` is `node<>`, so `isInstanceOf(X)` works but `parentNode.someProp` does not — `SPropertyAccess`/`SLinkAccess` require the operand to be typed `node<X>`. Wrap with `SNodeTypeCastExpression` first: `(parentNode : X).someProp`. See `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin for the full blueprint and the `:` vs `as` cast forms.

Minimal `ConstraintFunction_CanBeAChild` blueprint:

```json
{
  "concept": "jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild",
  "children": [
    { "role": "body", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
        "children": [
          { "role": "statement", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
              "children": [
                { "role": "expression", "nodes": [ /* boolean expression */ ]}
              ]
            }
          ]}
        ]
      }
    ]}
  ]
}
```

Add this as the `canBeChild` child of the `ConceptConstraints` root.

## `ConstraintFunction_CanBeAnAncestor`: parameters

The ancestor block concept is **`ConstraintFunction_CanBeAnAncestor`** (`jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAnAncestor`). It has **3 parameters** — notably fewer than `canBeChild` (no `parentNode` or `link`):

| Name | Notes |
|---|---|
| `node` | The candidate ancestor (the concept being constrained) |
| `childNode` | The prospective descendant trying to attach below `node` |
| `childConcept` | The concept of `childNode` |

Verify exact parameter concept FQNs with `mps_mcp_search_concepts(["ConstraintFunctionParameter"])` — all `canBeAnAncestor` parameters use the same `ConstraintFunctionParameter_*` family as `canBeChild` (e.g. `ConstraintFunctionParameter_childNode`, `ConstraintFunctionParameter_childConcept`), except `node`, which uses `ConstraintsFunctionParameter_node` (note the extra `s`).

**Pattern: restrict by descendant concept** — allow the annotated concept as ancestor only when the descendant is a specific type or subtype:

```
childConcept.isSubConceptOf(AllowedChildConcept)
```

Use `isSubConceptOf` to allow `AllowedChildConcept` and all sub-concepts; use `isExactly` to allow only the exact concept (see `scope-fqn-reference.md`).

## `ConstraintFunction_CanBeAParent`: parameters

The parent block concept is **`ConstraintFunction_CanBeAParent`** (`jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent`). It is the mirror of `canBeChild` — checked from the parent's point of view. Parameters:

| Name | Notes |
|---|---|
| `node` | The candidate parent (the concept being constrained) |
| `childNode` | The child node being placed |
| `childConcept` | The concept of `childNode` |
| `link` | The containment link role |

**`isInRole` pattern** — checks whether `node` occupies a specific containment role in *its own* parent. Useful when the same concept can appear in multiple roles and the rule depends on which role it fills:

```
node.isInRole(link/ContainerConcept : specificRole/)
```

`isInRole` is `jetbrains.mps.lang.smodel.structure.Node_IsInRoleOperation`. It takes a `LinkIdRefExpression` argument (see `scope-fqn-reference.md`).

## `ConstraintFunction_CanBeARoot`: the `model` parameter

The root block concept is **`ConstraintFunction_CanBeARoot`** (`jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeARoot`). Only applicable on concepts declared as `rootable`. It has a single parameter:

| Name | Notes |
|---|---|
| `model` | The `SModel` in which the concept is about to become a root |

Typical use: limit a concept to appear as root only in models of a specific language or module. Access the model's language via `model.language` or its name via `model.modelName`.
