---
name: mps-aspect-editor-menus-and-keymaps
description: >-
  Use when authoring the **non-layout** parts of the MPS editor aspect — what happens when the user types, presses a key, triggers completion, pastes, or invokes a context action. Covers action maps (`CellActionMapDeclaration`), cell keymaps (`CellKeyMapDeclaration`), transformation menus (`TransformationMenu_Default` / `_Named` / `_Contribution`), substitute menus (`SubstituteMenu_Default` / `SubstituteMenu` / contributions), side transforms (LEFT/RIGHT), legacy cell menus, paste wrappers and copy-paste handlers (in the actions language), completion styling, reference presentation, two-step deletion, and the editor selection API. Trigger terms: `actionMap`, `keyMap`, `delete_action_id`, `transformationMenu`, `substituteMenu`, `Ctrl+Space`, `Ctrl+Alt+B`, side transform, paste wrapper, completion styling, `PasteWrappers`, `CopyPasteHandlers`. For the **layout** side (cells, layouts, style sheets) use `mps-aspect-editor` instead.
type: reference
---

# MPS Editor Aspect — Menus, Keymaps and Actions

This skill covers the **non-layout parts** of the MPS editor aspect: everything that controls user interaction (typing, keystrokes, completion, paste, context actions). Most concepts belong to `jetbrains.mps.lang.editor.structure`; paste wrappers / node factories / copy-paste handlers live in `jetbrains.mps.lang.actions.structure`. Roots typically live in `<lang>/languageModels/editor.mps` or `actions.mps`.

**Where these roots go.** Menus / keymaps / action maps live in the **same `editor` aspect model** as the layout cell models — there is no separate aspect ID. Paste wrappers, copy-paste handlers and node factories live in the **`actions` aspect model**. Both aspect IDs (`editor`, `actions`) are case-sensitive and carry no `@` suffix — see [aspect-model-stereotypes.md](../mps-mcp-workflow/references/aspect-model-stereotypes.md).

For the **layout** side (concept editors, cell models, style sheets, editor components) see `mps-mcp-workflow` and `mps-aspect-editor`.

## Critical Directives

- **Pick the right artefact for the user-visible behaviour.** "Change what `Delete` does" → action map. "Add `Ctrl+Shift+I`" → keymap. "Offer `+` after a number" → side transform in a transformation menu. "Hide / reorder completion" → substitute menu. "Wrap pasted node" → paste wrapper. See `references/landscape.md` for the full mapping.
- **Author by convention.** Name roots `<Concept>_ActionMap`, `<Concept>_KeyMap`, `<Concept>_TransformationMenu`, `<Concept>_<Position>_SubstituteMenu`, `<Concept>_Factory`, `<Concept>Styling` for automatic discovery. MPS walks the super-concept chain to find them.
- **Use MPS MCP tools for edits.** `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`. Resolve concept names with `mps_mcp_search_concepts` / `mps_mcp_get_concept_details` — never guess concept IDs.
- **Define a substitute menu before a transformation menu.** The default `BaseConcept_TransformationMenu` already includes the substitute menu; for most "make my concept completable" tasks, only a substitute menu is required.
- **An empty default substitute menu HIDES the concept from completion.** Either remove it or fill it. See `references/substitute-menus.md` §"Empty default suppresses".
- **Side-transform items are NOT automatically in `Ctrl+Space`.** Either list `TransformationLocation_Completion` alongside `TransformationLocation_SideTransform`, or add a separate completion section.
- **Use action maps for `DELETE`/`BACKSPACE` instead of keymaps bound to `VK_DELETE`.** They integrate with two-step deletion and action inheritance.
- **`TransformationMenu` field name is `conceptDeclaration`, not `applicableConcept`.** Real role names: `sections`, `parts`, `locations`, `textFunction`. Older docs lie.
- **Contributions must live in a different language from the menu they extend.** `TransformationMenuContribution` / `SubstituteMenu_Contribution` are cross-language only.
- **Write bodies with `mps-model-manipulation` idioms.** `node.replace with(...)`, `node.parent.<role>.set(...)`, `node.children<X>.add new(...)`. Implicit params: `node`, `editorContext` (+ `model`, `scope`, `operationContext` depending on function kind).
- After edits run `mps_mcp_check_root_node_problems` and rebuild the language.
- **Trace missing completion items** with `Ctrl+Alt+B` on the offending item — MPS shows the menu → menu-part → action chain.

## Common-Path Workflow

For a typical "let the user invoke action X when they do Y" task:

1. **Pick the artefact** from the table in `references/landscape.md`.
2. **Pick the attachment concept.** Roles: `applicableConcept` (action maps, keymaps, copy/paste handlers, paste wrappers source/target); `conceptDeclaration` via `IMenu_Concept` (transformation and substitute menus).
3. **Name by convention** so MPS discovers the root automatically. Otherwise wire it explicitly from the cell (`actionMap`, `keyMap`, `transformationMenu`, `substituteMenu`, legacy `menu`).
4. **Draft JSON** using a blueprint from `references/json-blueprints.md`. Use `mps_mcp_insert_root_node_from_json`.
5. **Write the function body** with smodel + BaseLanguage. For "select the new node afterwards", use the editor selection API (`references/selection-and-deletion.md`).
6. **Rebuild the language** (`mps_mcp_alter_nodes` MAKE) so the editor sees the new concepts.
7. **Validate** with `mps_mcp_check_root_node_problems` on every touched root. Common error: unresolved action IDs (`delete_action_id` etc.) or missing imports for shared-concept parameters.
8. **Test interactively** in a sample model. For side transforms, verify the item also appears in completion (if intended).
9. **Diagnose missing items** with `Ctrl+Alt+B` on the popup item — that prints the menu chain.

## Which Menu Fires Where (Quick Reference)

| User action | Menu consulted |
|---|---|
| `Ctrl+Space` / typing into a concept-completion cell | Default `SubstituteMenu` for the link's target concept, walking DOWN sub-concepts |
| Context Assistant pops up | Sections with `TransformationLocation_ContextAssistant` |
| Context Actions Tool | Sections with `TransformationLocation_ContextActionsTool` |
| Typing `+` right of a cell | Sections with `TransformationLocation_SideTransform` location, `place.side = RIGHT` |
| Pressing `Delete` | `CellActionMapDeclaration` item with `actionId = delete_action_id`, else default |
| Arbitrary keystroke | `CellKeyMapDeclaration` items matching keystroke + caret policy |
| Copy (Ctrl+C) | `CopyPreProcessor`s for the concept |
| Paste into incompatible slot | `PasteWrappers`, then `PastePostProcessor`s |

## Related Skills

- `mps-mcp-workflow` — "MPS Concept Editor Workflow" section: scaffold, componentise, refine. Covers the **layout** side.
- `mps-aspect-editor` — overall workflow for creating and changing MPS editor definitions; cell models, layout styles, style inheritance.
- `mps-aspect-actions` — `NodeFactory` initialisation of new nodes (in the actions language, often referenced from menus).
- `mps-aspect-intentions` — Alt+Enter context actions. Intentions can be surfaced inside a transformation menu via the `intention` adapter.
- `mps-model-manipulation` — smodel operations used in execute/text/condition bodies.
- `mps-baselanguage` — BaseLanguage JSON mechanics.
- `mps-node-editing`, `mps-mcp-workflow` — concept identification / blueprint hygiene.

## Reference Index

- Open `references/landscape.md` when **choosing which artefact to build** — the master table of root concepts, attachment-point roles, file conventions, naming conventions, and the `BaseConcept_TransformationMenu` super-chain rule. Also covers the `TransformationMenu_Default` / `_Named` deprecation note (future merge into `TransformationMenuImpl`).
- Open `references/action-maps.md` when **overriding standard cell actions** (DELETE, BACKSPACE, SELECT_ALL, LEFT_TRANSFORM, RIGHT_TRANSFORM, …) — `CellActionMapDeclaration` fields, item structure, the `Not_ActionMap` example from Kaja, `BACKSPACE` auto-registration, the keyboard-deletable-annotation pattern (delete a node attribute from its label cell and reselect the host node), importing maps via `CellActionMapImport`/wildcard/by-action-id selectors, import rules (transitive, winner, no cycles, cross-language), `SELECT_ALL` customisation.
- Open `references/keymaps.md` when **binding arbitrary keystrokes to a cell** — `CellKeyMapDeclaration` fields, `everyModel` flag, `CellKeyMapItem` properties (keystroke, executeFunction, isApplicableFunction, description, caretPolicy, showInPopup, menuAlwaysShown), `CastExpression_KeyMap` template, `modifiers` string syntax (`ctrl alt shift meta`), caret-policy semantics, when to prefer an action map.
- Open `references/transformation-menus.md` when **adding items to completion / context assistant / context actions tool / side transforms** — section structure with `locations` + `parts`, the four `TransformationLocation_*` types, every menu part concept (`Action`, `Group`, `Super`, `IncludeMenu`, `IncludeSubstituteMenu`, `SubMenu`, `Parameterized`, `WrapSubstituteMenu`, `PropertyMenu`, `ReferenceMenu`, `Placeholder`), adapter parts (`intention`, `refactoring`, `plugin Action`), the `Action` blueprint with `textFunction` / `executeFunction` / `canExecuteFunction` / `features` (description text), parameterised parts with `parameterObject`, groups + variables (with the eager-evaluation gotcha), `TransformationMenuContribution` cross-language extension, cell-level attachment combining legacy `menu` + `transformationMenu`.
- Open `references/substitute-menus.md` when **controlling what nodes are creatable at an AST position** — default vs named, the five synthesised-default rules (sub-concepts, abstracts filtered, can-be-child, can-be-parent, smart-reference for 1:1), the "empty default suppresses" gotcha, all `SubstituteMenuPart_*` concepts (`AddConcept`, `Concepts`, `Subconcepts`, `Group`, `IncludeMenu`, `Parameterized`, `Action`, `Wrapper`, `ReferenceScope`, `Placeholder`), the `Statement_SubstituteMenu` JSON template, the `Wrapper` example wrapping `Expression` into `ExpressionStatement`.
- Open `references/side-transforms.md` when **converting `1` typed `+` into `1 + <hole>`** — the right-transform JSON template on `Expression`, LEFT vs RIGHT semantics, the trick to also surface items in `Ctrl+Space` (either combine locations or include the menu from a completion section).
- Open `references/legacy-cell-menus.md` when **dealing with cells that still have `menu` / `postfixHint` declarations** — property values menu, postfix hints (with the verbatim `splitByCamels` example), primary replace-child / choose-referent, replace-node (custom node concept), generic items, cell menu reference, ref-presentation cell, and the `presentation query in reference constraints` deprecation warning.
- Open `references/paste-and-copy.md` when **transforming pasted nodes or pre/post-processing copy/paste** — `PasteWrappers` (in actions language) with `sourceConcept`/`targetConcept`/`wrap` function and the `Expression → Statement` example; `CopyPasteHandlers` with `CopyPreProcessor` (mutates `copy`, not `original`) and `PastePostProcessor` (re-resolves references with the `LocalVariableReference` example); triggering order (handlers → wrappers → graft).
- Open `references/completion-styling.md` when **customising the look or priority of completion items** — `CompletionStyling` selectors (items modifying concept instances vs items creating concept instances), styling attributes (bold/italic/strike/colour/hide/priority), sort order, `ReturnStatementStyling` / `VariableReferencePriority` examples, the global "Use completion styling" toggle.
- Open `references/reference-presentation.md` when **changing how a reference looks resolved or in completion** — `ref. presentation cell` on `CellModel_RefCell`, `cell menu reference` items, the recommended modern alternative (override the referenced concept's `InlineEditorComponent` or expose a `getPresentation()` behavior method).
- Open `references/selection-and-deletion.md` when **selecting a node after a mutation or implementing two-step deletion** — the `select` operation syntax (`in:`, `cell:`, `selectionStart`, `selectionEnd`), predefined cell values (`FIRST`, `LAST`, `LAST_EDITABLE`, `MOST_RELEVANT`), the `ApproveDelete_Operation` hook, the "node not already selected / not already approved" conditions, and the rule that custom delete actions must call `node.approveDelete(editorContext)` before mutating.
- Open `references/json-blueprints.md` when **inserting any of these roots through MCP** — copy-and-edit JSON for action map, keymap, transformation menu (default + side-transform), substitute menu (default + wrapper), paste wrapper, copy-paste handlers, completion styling. Each blueprint has a comment indicating where to inject BaseLanguage statement lists.
- Open `references/wiring-tables.md` when **understanding the cell-to-aspect wiring** — the cell `menu` / `transformationMenu` / `substituteMenu` / `keyMap` / `actionMap` mapping, when both are combined vs replaced, the name-driven discovery convention.
- Open `references/real-examples.md` when **studying canonical implementations** — `jetbrains.mps.samples.Kaja` (compact action-map + substitute menu + side-transform + style sheet), `jetbrains.mps.baseLanguage` (editor.mps ≈4 MB; actions.mps with paste wrappers; intentions.mps), with the `mps_mcp_print_node` workflow for cross-checking concept and role names.
- Open `references/common-failures.md` when **a feature does not work** — concept absent from completion (empty default substitute menu); side transform inserts the character; `Delete` doesn't fire (two-step deletion not approved); keymap item never fires; paste wrapper not triggered; transformation-menu action in completion but not Context Assistant; wrong role name in JSON (`section`/`part`/`location`/`matchingTextFunction`/`applicableConcept`); stale references after refactor (use `FIX_REFERENCES`); contribution defined in same language as the menu.
