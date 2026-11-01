# Common Pitfalls

| Symptom | Likely cause |
|---|---|
| Check warns "instance of deprecated concept" on a menu | The root is one of the deprecated menu concepts. Recreate as `TransformationMenu`/`SubstituteMenu` with a `type` child, move the sections, re-point references, delete the old root (`mps_mcp_update_root_node_from_json` DELETE). |
| A named menu prints as `named menu <no name>` | The name was set on the root. It belongs on `MenuTypeNamed.name`. |
| Concept missing from completion everywhere | An empty default substitute menu for it (`references/substitute-menus.md`). |
| Completion on an empty slot works, replacing an existing node offers no concepts | That concept's default transformation menu has a Completion section without `superconcepts menu` / `include substitute menu` (`references/landscape.md`). |
| Inherited side transforms (or completion items) vanished after adding a default menu | Your menu has a section for that location without `superconcepts menu`. |
| Side transform never offered on the cell you typed at | The cell belongs to a child node (e.g. the last cell of the type), whose menus are consulted (`references/side-transforms.md`), or the caret is not at the cell edge. |
| Typing the item's text opens the menu instead of applying it | Another item still prefix-matches, or the typed text is only a prefix: typing applies an item only on a unique strict match (`references/side-transforms.md`). |
| First letter already fires the item and the label shows the typed text | A text function that echoes `pattern`. Return the fixed text, or move to a substitute action with `can substitute`. |
| Custom DELETE ignores two-step deletion, or highlights the whole node | Missing `if (node.approveDelete[in: editorContext, cell: <id>]) { return; }`, or no `cell:` / no `EditorCellId` on the keyword cell (`references/selection-and-deletion.md`). |
| Action map / keymap never fires | Not referenced from the cell under the caret or an enclosing cell (names are not discovered), `canExecuteFunction` false, wrong `caretPolicy`, `modifiers` not one of the exact values (`ctrl+alt`, not `ctrl alt`), or an IDE action owns the chord (`references/keymaps.md`). |
| `Delete` customised but `Backspace` is not | Intentional: DELETE is reused for BACKSPACE unless `backspace_action_id` is defined. |
| Paste wrapper not triggered | Its `targetConcept` must equal the slot's target concept (a super-concept does not match); `sourceConcept` may be a super-concept of the pasted node (`references/paste-and-copy.md`). |
| Copy pre-processor / paste post-processor not called | They match the exact concept only, and are not called for children of a node that has its own processor. |
| Pasted reference points nowhere | The wrapper set it to `sourceNode`, the detached clipboard copy. Re-bind in a `PastePostProcessor`. |
| Fields lost when completion replaces a node | No `NodeFactory` reading `sampleNode` (`references/substitute-menus.md` §"Keeping data"). |
| Item in completion but not in Context Assistant | Each surface needs its own location in the section, and the assistant appears only where an editor up the tree has a `CellModel_ContextAssistant` cell. |
| Wrong role name in JSON (`section`, `part`, `location`, `matchingTextFunction`, `applicableConcept` on a menu, `substituteMenu` on a cell) | Real names: `sections`, `parts`, `locations`, `textFunction`, `conceptDeclaration`; cells have `transformationMenu` (child) only. |
| Stale references after a refactor | Run `mps_mcp_alter_nodes` `FIX_REFERENCES` on the root. |
| "Default menu for a concept can only be defined in the concept's language" | Another language adds items through a `TransformationMenuContribution` / `SubstituteMenu_Contribution`, not a second default menu. |
