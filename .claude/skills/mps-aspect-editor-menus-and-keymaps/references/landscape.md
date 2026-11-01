# Landscape: What Belongs Where, and How It Is Found

| Artefact | Root concept | Model | Attaches by | What it controls |
|---|---|---|---|---|
| Action map | `lang.editor.structure.CellActionMapDeclaration` | editor | a cell's `actionMap` reference | Override cell actions (DELETE, BACKSPACE, SELECT_ALL, …) |
| Cell keymap | `lang.editor.structure.CellKeyMapDeclaration` | editor | a cell's `keyMap` reference, or `everyModel=true` | Arbitrary keystrokes |
| Default transformation menu | `lang.editor.structure.TransformationMenu`, `type` = `MenuTypeDefault` | editor | `conceptDeclaration` | Side transforms, completion on existing nodes, context assistant, context actions tool |
| Named transformation menu | `TransformationMenu`, `type` = `MenuTypeNamed{name}` | editor | a cell's `transformationMenu` child, or an `include menu` part | Same, only where referenced |
| Transformation menu contribution | `lang.editor.structure.TransformationMenuContribution` | editor (another language) | `menuReference` | Extra sections for another language's menu |
| Default substitute menu | `lang.editor.structure.SubstituteMenu`, `type` = `MenuTypeDefault` | editor | `conceptDeclaration` | Which nodes completion offers for a slot of that concept |
| Named substitute menu | `SubstituteMenu`, `type` = `MenuTypeNamed{name}` | editor | an include / wrap part | Same, only where included |
| Substitute menu contribution | `lang.editor.structure.SubstituteMenu_Contribution` | editor (another language) | `menuReference` | Extra substitute parts |
| Node factories | `lang.actions.structure.NodeFactories` | actions | per-factory `applicableConcept` | Initialise new nodes (`mps-aspect-actions`) |
| Paste wrappers | `lang.actions.structure.PasteWrappers` | actions | `sourceConcept`/`targetConcept` | Convert a pasted node to the slot's concept |
| Copy-paste handlers | `lang.actions.structure.CopyPasteHandlers` | actions | per-processor `concept` | Pre-process on copy, post-process after paste |
| Completion styling | `lang.editor.structure.CompletionStyling` | editor | selectors | Look / priority of completion items |

All concept names are under `jetbrains.mps.`. A menu's kind is its `type` child, never a separate root concept.

## How each artefact is found

Nothing is discovered by its root name. A menu's root `name` is computed from its `type`: a default menu is `<Concept>_TransformationMenu` / `<Concept>_SubstituteMenu`, and a named menu takes `MenuTypeNamed.name` (e.g. BL's named `FieldDeclaration_ApplySideTransforms`). Action maps and keymaps have free names (BL: `DeleteClassifierMember`, `_ClassConcept_Final_Actions`).

- **Default menus**: looked up by concept + `MenuTypeDefault` only.
- **Inherited transformation-menu items, per location.** For a location (completion, side transform LEFT/RIGHT, …) the explicit default menu of concept `C` is used alone when it has a section for that location; otherwise the default menus of `C`'s direct super-concepts apply, up to `BaseConcept_TransformationMenu`, whose only section (completion) includes the substitute menu. So put a `superconcepts menu` part (`TransformationMenuPart_Super`) once for every location your menu covers, in any one section for that location, unless you mean to drop the inherited items there (BL `Expression_TransformationMenu`: its RIGHT-only section has none because its LEFT+RIGHT section does). A menu with only side-transform sections keeps the inherited completion: add a Completion section only to put items there.
- **Named menus** take effect only where a cell references them (`transformationMenu` child holding `TransformationMenuReference_Named{menu}`) or another menu includes them.
- **A cell's `transformationMenu`** replaces the node's default menu for the locations the attached menu covers. The default still serves the other locations. A location that only a contribution to the attached menu covers keeps the default menu.
- **The cell's own node decides.** Side transforms and completion on a cell use the menus of the node that owns the cell. The edge cell of a child (the type in `final int x`) belongs to the child: recipe in `references/side-transforms.md`.
- **Completion on an existing node vs an empty slot.** On an existing node's cell, Ctrl+Space and typing use the default *transformation* menu of that node's concept at location Completion (runtime `SUBSTITUTE`). It reaches the substitute menu only through the super chain to `BaseConcept_TransformationMenu`. An empty slot (`empty_<role>`) uses the default *substitute* menu of the link's target concept directly. So a Completion section without `superconcepts menu` (or `include substitute menu`) leaves replace-by-completion on existing nodes with no concept items, while empty slots still work. Reference cells complete from the reference scope, property cells from the property's values. Which cells offer node completion at all: a cell gets it only from the generator — the node's whole cell (select the node, e.g. with `SelectUp`), a single-cell editor, a child's empty slot, any cell with an attached `transformationMenu` (the generated code then installs `SChildSubstituteInfo` on it) or a legacy `menuDescriptor`, and the property and reference cells above. A plain constant (a keyword, `(`) inside a multi-cell editor has none, so Ctrl+Space there does nothing; attach a menu (a named one, or `TransformationMenuReference_Default` for the node's default menu) to the keyword cell when completion should work on it. Exception: when a child's editor collection is transparent (selectable, at most one visible opaque cell, e.g. `[- {name} ?%window% -]` without a window), the parent pushes its `SChildSubstituteInfo` into that cell (`EditorCell_Collection.setSubstituteInfo`). A menu attached to that cell is then ignored and the node's default transformation menu answers. So completion that must work in both shapes goes into the default menu. Ctrl+Space filters by the cell text left of the caret (`NodeSubstitutePatternEditor.getPattern()`). With the caret at the end of a keyword or after `)` that text is the pattern and may match nothing, so put the caret at the cell start or select the whole cell.
- **Action maps.** The generated cell code calls `X.setCellActions(cell, …)` for each cell whose `actionMap` names `X`. At runtime the action (DELETE, …) comes from the nearest cell on the path from the selected cell up to the root whose action *can execute*. A `canExecuteFunction` that returns false therefore falls through to the enclosing cells and finally to the editor default. That is how you make an action map conditional. Attach the map to the cell the caret is on, or to a collection around it.
- **Keymaps** are collected from every cell on the path from the selected cell up to the root, plus every `everyModel=true` keymap of the model's used languages and the languages they extend.

## Cell wiring roles (on every `EditorCellModel`)

| Role | Kind | Target |
|---|---|---|
| `transformationMenu` | child 0..1 | `ITransformationMenuReference`: `TransformationMenuReference_Named{menu}` or `TransformationMenuReference_Default{concept}` |
| `actionMap` / `keyMap` | reference 0..1 | `CellActionMapDeclaration` / `CellKeyMapDeclaration` |
| `menuDescriptor` | child 0..1 | legacy `CellMenuDescriptor`, combined with `transformationMenu` (`references/legacy-cell-menus.md`) |
| `id` | child 0..1 | `EditorCellId{name}`, needed for `approveDelete[cell: …]` / `select[cell: …]` |

`CellModel_RefNodeList` adds `elementActionMap` / `elementMenuDescriptor` for its element cells. No `substituteMenu` role: `references/substitute-menus.md` §Default vs named.
