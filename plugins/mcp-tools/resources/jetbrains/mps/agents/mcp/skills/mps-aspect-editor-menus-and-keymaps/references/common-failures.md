# Common Pitfalls

| Symptom | Likely cause |
|---|---|
| New concept does not appear in completion at all | You defined an empty default substitute menu for it. Remove it or put an explicit `SubstituteMenuPart_AddConcept`. |
| Side-transform character inserts instead of transforming | Caret is not at the expected edge of the cell. Check the cell boundaries; consider a caret-policy keymap item instead for mid-cell triggers. |
| `Delete` does not fire custom action map | Two-step deletion is on and the action doesn't call `node.approveDelete(editorContext)` before mutating. See `references/selection-and-deletion.md`. |
| `Delete` customised but `Backspace` is not | Intentional: MPS auto-registers a BACKSPACE identical to DELETE when only DELETE is present. See `references/action-maps.md`. |
| Keymap item never fires | Wrong `caretPolicy`, shadowed by a more specific cell, or keystroke modifiers do not match (`modifiers` string must contain the exact tokens: `ctrl`, `alt`, `shift`, `meta`). |
| Paste wrapper not triggered | `sourceConcept` must be the concept of the *copied* node (or a super-concept). Also check for a conflicting handler on a more specific pair. |
| Transformation menu action appears in completion but not in Context Assistant | Different **location** required — context-assistant items need their own `TransformationLocation_ContextAssistant` location in the section. |
| Wrong role name in JSON (`section`, `part`, `location`, `matchingTextFunction`, `applicableConcept` on a menu) | The real names are `sections`, `parts`, `locations`, `textFunction`; on menus the concept is referenced via `conceptDeclaration`. |
| "Reference to wrong overridden method" or stale references after a refactor | Not a menu issue — run `mps_mcp_alter_nodes` with `FIX_REFERENCES` on the affected root. |
| Default transformation menu exists but items from an extending language do not show | The extending language must use `TransformationMenuContribution` — contributions can **only** be defined from another language, not the same language as the menu. |
