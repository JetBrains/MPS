# Substitute Menus

Substitute menus control **what nodes may be created at a given AST position**. They power the concept-completion popup; side transforms and transformation menus delegate to them via `include substitute menu`.

## Default vs Named

- **Default substitute menu** for a concept `C`: `SubstituteMenu_Default` with `conceptDeclaration = C`. Applies to any position whose declared target concept is `C`. Conventionally named `<C>_SubstituteMenu`.
- **Named substitute menu** (`SubstituteMenu`, a concrete rootable type implementing `IMenu_Concept + ISubstituteMenu`): must be referenced explicitly — from a `CellModel_RefCell` as its `substituteMenu`, or from another menu via `include substitute menu`.

Both carry (via `ISubstituteMenu`): `parts` (child, 0..n) of `SubstituteMenuPart`, and `methodDeclaration` (0..n).

## Default Behaviour When No Default Substitute Menu Is Defined

If you do **not** define a default substitute menu for concept `C`, MPS synthesises one:

1. All enabled sub-concepts of `C` are included.
2. Abstract concepts are excluded.
3. Concepts whose **`can be a child`** constraint fails are excluded.
4. Concepts whose **parent's `can be a parent`** constraint fails are excluded.
5. For a **1:1 reference** that happens to be in place of the parent concept, a **smart-reference** completion item is added (lets the user type a name that creates-and-references in one step).

## "Empty Default" Suppresses the Concept

If you **define** a default substitute menu for `C` and leave it empty, `C` itself (and its sub-concepts, unless they redeclare their own menu) will **not appear** in the completion menu at all. This is a deliberate way to hide abstract or internal concepts from users.

## Menu Parts for Substitute Menus

| Part concept | Purpose |
|---|---|
| `SubstituteMenuPart_AddConcept` | Add one concept as a completion option |
| `SubstituteMenuPart_Concepts` | Add a list of concepts computed by a query |
| `SubstituteMenuPart_Subconcepts` | Include the default substitute menus of the sub-concepts of the menu's own concept — no concept reference; optional `filter` query (`QueryFunction_SubstituteMenu_FilterConcepts`) |
| `SubstituteMenuPart_Group` | Grouping + condition (same shape as the transformation-menu group) |
| `SubstituteMenuPart_IncludeMenu` | Include another substitute menu (named or default), via a `menuReference` of `ISubstituteMenuReference` |
| `SubstituteMenuPart_Parameterized` | One item per query result — roles `parameterQuery` + inner `part` |
| `SubstituteMenuPart_Action` | Arbitrary substitute action (custom matching text + creation handler) |
| `SubstituteMenuPart_Wrapper` | Wrap another substitute menu, mutating each produced node — what older docs called "WrapSubstituteMenu" |
| `SubstituteMenuPart_ReferenceScope` | Produce smart-reference items from a scope |
| `SubstituteMenuPart_Placeholder` | Named extension point for cross-language contributions |

## JSON Template — Offer a Concept

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.SubstituteMenu_Default",
  "properties": [{ "name": "name", "value": "Statement_SubstituteMenu" }],
  "references": [
    { "role": "conceptDeclaration", "target": "jetbrains.mps.baseLanguage.structure.Statement" }
  ],
  "children": [{
    "role": "parts",
    "nodes": [
      {
        "concept": "jetbrains.mps.lang.editor.structure.SubstituteMenuPart_AddConcept",
        "references": [
          { "role": "concept", "target": "jetbrains.mps.baseLanguage.structure.IfStatement" }
        ]
      },
      {
        "concept": "jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts"
      }
    ]
  }]
}
```

Use `SubstituteMenuPart_Action` when you need a non-trivial handler (post-creation wiring, dialog, scope query). The action carries `createOutputNode` (returns the new node) and optional `matchingText`, `descriptionText`, `postProcess` functions.

## `SubstituteMenuPart_Wrapper` (wrap-substitute-menu)

Takes an inner menu (the `reference` child: `SubstituteMenuReference_Default` with a `concept` reference, or `SubstituteMenuReference_Named` with a `menu` reference) and wraps the nodes it produces. Useful when the surrounding context requires the produced node to be further wrapped — for example, wrapping an `Expression` into an `ExpressionStatement` when the surrounding concept expects a `Statement`.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Wrapper",
  "children": [
    {
      "role": "reference",
      "nodes": [{
        "concept": "jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default",
        "references": [
          { "role": "concept", "target": "jetbrains.mps.baseLanguage.structure.Expression" }
        ]
      }]
    },
    {
      "role": "handler",
      "nodes": [{
        "concept": "jetbrains.mps.lang.editor.structure.QueryFunction_SubstituteMenu_WrapperHandler",
        "children": [{ "role": "body", "nodes": [
          /* BaseLanguage:
             node<ExpressionStatement> result = new node<ExpressionStatement>();
             result.expression.set(nodeToWrap);
             return result; */
        ]}]
      }]
    }
  ]
}
```

The inner function sees `nodeToWrap` bound to the node produced by the wrapped substitute action.
