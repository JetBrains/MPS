# Transformation Menus

A transformation menu is a single declarative structure that feeds **four editor surfaces** at once:

| Section location concept | Surface |
|---|---|
| `TransformationLocation_Completion` | Completion popup (Ctrl+Space, typing a substring) |
| `TransformationLocation_ContextAssistant` | Context Assistant (the floating action strip) |
| `TransformationLocation_ContextActionsTool` | Context Actions Tool window |
| `TransformationLocation_SideTransform` | Left/Right side transforms — characters typed adjacent to a cell |

The abstract root is `TransformationMenu`; the two concrete subtypes currently in use are `TransformationMenu_Default` and `TransformationMenu_Named` (deprecation note: they will be unified into `TransformationMenuImpl`). Default menus follow `<Concept>_TransformationMenu` naming. MPS discovers a default menu by walking the super-concept chain up to `BaseConcept_TransformationMenu`, which contains an `include substitute menu` for the current link — that is why defining just a **substitute menu** is usually enough to get completion.

## Root-Level Fields (Inherited from Interfaces)

`TransformationMenu` implements two interfaces that contribute its roles:

- `IMenu_Concept` contributes `conceptDeclaration` (ref, 1) → the attached concept (older docs sometimes call this `applicableConcept`; the actual role name is `conceptDeclaration`) — plus an optional `type` child of `MenuType`.
- `ITransformationMenu` contributes `sections` (child, 0..n) → `TransformationMenuSection` and `methodDeclaration` (child, 0..n) — private helper methods callable from menu parts.

`TransformationMenu_Default` adds `IMenu_Default`; `TransformationMenu_Named` adds `IMenu_Named` (which supplies the explicit `name` used to reference it).

## Sections

Each `TransformationMenuSection` has:

- `locations` (child, 1..n) — one or more of `TransformationLocation_Completion`, `TransformationLocation_ContextActionsTool`, `TransformationLocation_ContextAssistant`, `TransformationLocation_SideTransform` (the side-transform location additionally has a `place` property holding a `TransformationLocation_SideTransform_PlaceInCell`).
- `parts` (child, 0..n) — the menu parts that run in this section.

A section with multiple locations applies its parts in every listed location — handy for contributing the same items to completion **and** the context assistant.

## Menu Parts (all under `jetbrains.mps.lang.editor.structure`)

| Part concept | Purpose |
|---|---|
| `TransformationMenuPart_Action` | A single action — text, optional description, optional can-execute guard, execute function |
| `TransformationMenuPart_Group` | A named group of parts with shared variables and an optional condition |
| `TransformationMenuPart_Super` | Include the default menus of all super-concepts (not included by default) |
| `TransformationMenuPart_IncludeMenu` | Include another (default or named) transformation menu |
| `TransformationMenuPart_IncludeSubstituteMenu` | Include a default or named substitute menu as part of this menu |
| `TransformationMenuPart_SubMenu` | Nested menu |
| `TransformationMenuPart_Parameterized` | One action generated per element of a query result |
| `TransformationMenuPart_WrapSubstituteMenu` | Wrap items from a substitute menu with a handler (e.g. to mutate the inserted node) |
| `TransformationMenuPart_PropertyMenu` | Delegate to the property-value menu of a named property |
| `TransformationMenuPart_ReferenceMenu` | Delegate to a reference-scope menu for a named link |
| `TransformationMenuPart_Placeholder` | Named extension point — contributions from other languages attach here |

## Adapter Parts (from `jetbrains.mps.lang.editor.menus.extras`)

Expose existing MPS infrastructure as transformation-menu items:

- `intention` — wrap a `BaseIntentionDeclaration` subconcept so the intention appears in the menu.
- `refactoring` — wrap a `Refactoring` from `jetbrains.mps.lang.refactoring`.
- `plugin Action` — wrap an `ActionDeclaration` from `jetbrains.mps.lang.plugin`.

## `TransformationMenuPart_Action` Structure

`TransformationMenuPart_Action` extends `AbstractOutputConceptContainerTransformationMenuPart` (so it has an `outputConceptReference` child (0..1) — an `OptionalConceptReference` whose `concept` reference names the produced concept, for completion filtering) and implements `IParameterizableMenuPart` and `IExtensibleTransformationMenuPart` (so it can carry `features`). Its roles:

- `textFunction` (child, 1) of `QueryFunction_TransformationMenu_ActionLabelText` — returns the label/matching text (string).
- `canExecuteFunction` (child, 0..1) of `QueryFunction_TransformationMenu_Condition` — boolean guard.
- `executeFunction` (child, 1) of `QueryFunction_TransformationMenu_Execute` — the void action body.
- `features` (child, 0..n) of `TransformationFeature` (from `IExtensibleTransformationMenuPart`) — e.g. `TransformationFeature_DescriptionText`, `TransformationFeature_Icon`, `TransformationFeature_ActionType`. **This is how description text is attached — not via a direct role.**

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action",
  "children": [
    {
      "role": "outputConceptReference",
      "nodes": [{
        "concept": "jetbrains.mps.lang.editor.structure.OptionalConceptReference",
        "references": [
          { "role": "concept", "target": "jetbrains.mps.baseLanguage.structure.PlusExpression" }
        ]
      }]
    },
    {
      "role": "textFunction",
      "nodes": [{
        "concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText",
        "children": [{ "role": "body", "nodes": [ /* BaseLanguage: return "+"; */ ] }]
      }]
    },
    {
      "role": "executeFunction",
      "nodes": [{
        "concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute",
        "children": [{ "role": "body", "nodes": [ /* node.replace with(...); */ ] }]
      }]
    },
    {
      "role": "features",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText",
          "children": [{
            "role": "query",
            "nodes": [{
              "concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText",
              "children": [{ "role": "body", "nodes": [ /* return "plus expression"; */ ] }]
            }]
          }]
        }
      ]
    }
  ]
}
```

Implicit parameters in action-part function bodies: `node`, `editorContext`, `model`, `scope`, `operationContext` (availability depends on the function kind and the enclosing group's variables).

## Groups and Variables

`TransformationMenuPart_Group` defines:

- `variables` (child, 0..n) — computed **eagerly before** the condition is evaluated.
- `condition` (child, 0..1) — boolean function gating all parts.
- `parts` (child, 0..n) — grouped parts; each sees the group's variables.

> If you want the condition to **gate variable computation** (because a variable might be null), wrap the group in another group whose condition guards evaluation. The inner group's variables will only be computed when the outer group's condition is true.

## Parameterised Parts

`TransformationMenuPart_Parameterized` generates one item per element returned by a query. Fields:

1. `parameterType` (child, 1) — the parameter object's BaseLanguage `Type` (e.g. `StringType`, or an smodel `SNodeType` with a `concept` reference for nodes).
2. `parameterQuery` returning `list<ParamType>` given `(node, editorContext, ...)`.
3. an inner part (usually a `TransformationMenuPart_Action`) whose functions additionally see `parameterObject` bound to the current element.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Parameterized",
  "children": [
    {
      "role": "parameterType",
      "nodes": [{
        "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
        "references": [
          { "role": "concept", "target": "jetbrains.mps.baseLanguage.structure.VariableDeclaration" }
        ]
      }]
    },
    {
      "role": "parameterQuery",
      "nodes": [{
        "concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Parameter",
        "children": [{ "role": "body", "nodes": [ /* return node.ancestor<...>.descendants<VariableDeclaration>; */ ] }]
      }]
    },
    {
      "role": "part",
      "nodes": [{
        "concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action",
        "children": [ /* textFunction / executeFunction reference parameterObject */ ]
      }]
    }
  ]
}
```

## Contributions

`TransformationMenuContribution` must be defined **in a language different from the one that owns the menu being contributed to** — this is how one language extends another's menu without editing it. Fields:

- `name` — contribution name.
- `menuReference` (child, 1) of `ITransformationMenuReference` — points at the menu being extended. Use `TransformationMenuReference_Named` (role `menu` → the named menu) or `TransformationMenuReference_Default` (role `concept` → the concept whose default menu you target).
- plus `sections` and `methodDeclaration` (inherited from `ITransformationMenu`) — the sections added to the target menu.

## Cell-Level Attachment

A cell may reference its own `menu` (legacy) and `transformationMenu`. When both are specified MPS **combines** the applicable entries — it does not override. Some legacy cell-menu parts still have no transformation-menu equivalent, so combining is intentional.
