## Imperative reference-side scope

Put the scope-building code directly in the constraint. Low-ceremony, but the logic lives on the *referrer* side and tends to be copy-pasted across references. Use this form when the scope has no natural "owner" ancestor, or when computing it requires information only available at the reference site.

The `searchScopeFactory` child is a `ConstraintFunction_ReferentSearchScope_Scope` whose `body` is a `StatementList`. Available parameters inside the body:

| Name | Notes |
|---|---|
| `contextNode` | The node in which the reference lives (the referrer or its future parent during completion). Concept: `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode`. **Always available**, even during node creation before the node is placed. |
| `referenceNode` | The node actually holding the link — may be `null` during creation before placement. Use `contextNode` for traversal; check `referenceNode != null` before using it directly. |
| `containmentLink` | The containment link role the future node will occupy in its parent. |
| `linkTarget` | The current target node of the reference, if one is already set. |
| `position` | Integer index for ordered roles (rarely needed). |

The body's final expression is the returned `Scope` (no explicit `return` keyword is required; the whole body is treated as an expression-returning function).
