# Transformation Menus

One menu feeds several editor surfaces, one per section location:

| Section location concept | Surface |
|---|---|
| `TransformationLocation_Completion` | Ctrl+Space / typing on an existing node's cell (runtime location `SUBSTITUTE`) |
| `TransformationLocation_SideTransform` | Text typed at the LEFT/RIGHT edge of a cell (`references/side-transforms.md`) |
| `TransformationLocation_ContextAssistant` | Context Assistant. Shown only if the editor of the selected node or an ancestor contains a `CellModel_ContextAssistant` cell (Kaja `EmptyLine`, MPS sources only) |
| `jetbrains.mps.editor.contextActionsTool.lang.menus.structure.TransformationLocation_ContextActionsTool` | Context Actions tool window |

Which menu a cell consults, and how default menus inherit per location: `references/landscape.md`.

## Root

`TransformationMenu` is concrete and rootable. `conceptDeclaration` (ref, 1) names the concept. `type` (child) is `MenuTypeDefault` or `MenuTypeNamed` with property `name`, which is where a named menu's name goes (a root-level `name` is computed and dropped on insert). Other roles: `sections` (0..n `TransformationMenuSection`) and `methodDeclaration` (helper methods).

```json
{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenu",
 "references": [{"role": "conceptDeclaration", "target": "<concept ref>"}],
 "children": [
  {"role": "type", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.MenuTypeDefault"}]},
  {"role": "sections", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuSection",
    "children": [
     {"role": "locations", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationLocation_Completion"}]},
     {"role": "parts", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super"}]}]}]}]}
```

Named variant: `{"concept": "jetbrains.mps.lang.editor.structure.MenuTypeNamed", "properties": [{"name": "name", "value": "myMenu"}]}` as the `type`.

## Sections

`TransformationMenuSection`: `locations` (1..n) and `parts` (0..n). A section with several locations serves all of them. The side-transform location holds `placeInCell` (1..n) of `TransformationLocation_SideTransform_PlaceInCellHolder` with property `placeInCell` = `LEFT` | `RIGHT`, so one location can cover both edges (`{ side transform : left, right }`).

## Parts (`jetbrains.mps.lang.editor.structure`)

| Part | Printed as | Purpose |
|---|---|---|
| `TransformationMenuPart_Action` | `action` | One item: text, optional guard, execute |
| `TransformationMenuPart_Group` | `group` | `variables`, `condition`, `parts` |
| `TransformationMenuPart_Super` | `superconcepts menu` | The default menus of the direct super-concepts for this location |
| `TransformationMenuPart_IncludeMenu` | `include named menu X for current node` | Another transformation menu, see below |
| `TransformationMenuPart_IncludeSubstituteMenu` | `include substitute menu` | A substitute menu (`menuReference` `ISubstituteMenuReference`, optional `link` ref) |
| `TransformationMenuPart_WrapSubstituteMenu` | `wrap substitute menu` | Substitute items plus a handler on the created node (`references/side-transforms.md`) |
| `TransformationMenuPart_SubMenu` | | Nested menu: `textFunction` + `items` |
| `TransformationMenuPart_Parameterized` | | One item per query result |
| `TransformationMenuPart_PropertyMenu` / `_ReferenceMenu` | | Property values / reference scope of a named feature |
| `TransformationMenuPart_Placeholder` | | Extension point for contributions |

Adapters from `jetbrains.mps.lang.editor.menus.extras`: `intention`, `refactoring`, `plugin Action`.

### `include menu`

`TransformationMenuPart_IncludeMenu` roles: `menuReference` (0..1, `TransformationMenuReference_Named{menu}` or `TransformationMenuReference_Default{concept}`), `nodeFunction` (0..1, `QueryFunction_TransformationMenu_TargetNode`, the node the included menu works on, default the current node), `location` (0..1, a `TransformationLocation`). Without `location` the included menu is queried at the current location, so including a side-transform menu from a Completion section adds nothing. Set `location` to the side-transform location to reuse those items in completion.

## `TransformationMenuPart_Action`

Roles: `textFunction` (1, `QueryFunction_TransformationMenu_ActionLabelText`, returns the label and matching text), `canExecuteFunction` (0..1, `QueryFunction_TransformationMenu_Condition`), `executeFunction` (1, `QueryFunction_TransformationMenu_Execute`), `outputConceptReference` (0..1, `OptionalConceptReference{concept}`), `features` (0..n: `TransformationFeature_DescriptionText` / `_Icon` / `_ActionType`). It has no pattern guard: matching is on the text alone (`references/side-transforms.md` §"When typing applies an item").

```json
{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action",
 "children": [
  {"role": "textFunction", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText",
    "children": [{"role": "body", "nodes": [ /* return "final"; */ ]}]}]},
  {"role": "canExecuteFunction", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition",
    "children": [{"role": "body", "nodes": [ /* return !node.isFinal; */ ]}]}]},
  {"role": "executeFunction", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute",
    "children": [{"role": "body", "nodes": [ /* node.isFinal.set(true); node.select[...]; */ ]}]}]},
  {"role": "features", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationFeature_DescriptionText",
    "children": [{"role": "query", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_DescriptionText",
      "children": [{"role": "body", "nodes": [ /* return "make final"; */ ]}]}]}]}]}]}
```

Function parameters: `node` is `QueryFunctionParameter_TransformationMenu_node`, `editorContext` is `jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext`; `pattern` is `QueryFunctionParameter_pattern`; also `model`, and in wrap handlers `createdNode` (`QueryFunctionParameter_TransformationMenu_CreatedNode`) and `targetNode` (`QueryFunctionParameter_TransformationMenu_targetNode`). Use `new initialized` / `replace with new initialized` when node factories must run (`mps-aspect-actions`); it also fills empty required children, so use plain `new` when the slots should stay empty.

## Groups and variables

`TransformationMenuPart_Group`: `variables` are computed **before** `condition` is evaluated. If a variable may fail when the condition is false, nest a second group: the outer group's condition guards the inner group's variables.

## Parameterized parts

`TransformationMenuPart_Parameterized`: `parameterType` (BaseLanguage type, e.g. `SNodeType{concept}`), `parameterQuery` (`QueryFunction_TransformationMenu_Parameter`, returns a list), `part` (usually an `Action`, whose functions also see `parameterObject`).

```json
{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Parameterized", "children": [
  {"role": "parameterType", "nodes": [{"concept": "jetbrains.mps.lang.smodel.structure.SNodeType", "references": [{"role": "concept", "target": "<C>"}]}]},
  {"role": "parameterQuery", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Parameter",
    "children": [{"role": "body", "nodes": [ /* return list */ ]}]}]},
  {"role": "part", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action", "children": [ /* text/execute use parameterObject */ ]}]}]}
```

## Contributions

`TransformationMenuContribution` (in another language than the menu, as the MPS help prescribes; the checker itself only enforces that a default menu lives in its concept's language): `menuReference` (1) to the extended menu (`TransformationMenuReference_Default{concept}` or `_Named{menu}`), plus `sections`.

## Attaching to a cell

On any cell model, set `transformationMenu` to `{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named", "references": [{"role": "menu", "target": "<TransformationMenu ref>"}]}`. The cell then uses that menu for the locations it covers and the default menu for the rest. For the covered locations the node's default menu is gone on that cell (a `superconcepts menu` does not bring it back), so add `include menu` with `TransformationMenuReference_Default{<concept>}` to keep it: BL's named `SwitchStatement_ApplySideTransforms` starts with `include default menu for current node`. A legacy `menuDescriptor` on the same cell is combined with it.
