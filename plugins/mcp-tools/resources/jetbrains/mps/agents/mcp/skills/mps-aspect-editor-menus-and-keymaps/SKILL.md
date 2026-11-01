---
name: mps-aspect-editor-menus-and-keymaps
description: >-
  Use when authoring the **non-layout** parts of the MPS editor aspect — what happens when the user types, presses a key, triggers completion, pastes, or invokes a context action. Covers action maps (`CellActionMapDeclaration`), cell keymaps (`CellKeyMapDeclaration`), transformation menus (`TransformationMenu` with a default or named `type`, `TransformationMenuContribution`), substitute menus (`SubstituteMenu` default or named, `SubstituteMenuPart_Action`, contributions), side transforms (LEFT/RIGHT) and when typed text applies an item, which menu a cell consults, operator replacement that keeps operands, legacy cell menus, paste wrappers and copy-paste handlers (in the actions language), completion styling, reference presentation, two-step deletion (`approveDelete`), and the editor selection API. Trigger terms: `actionMap`, `keyMap`, `delete_action_id`, `transformationMenu`, `superconcepts menu`, `substituteMenu`, `Ctrl+Space`, `Ctrl+Alt+B`, side transform, paste wrapper, completion styling, `PasteWrappers`, `CopyPasteHandlers`. For the **layout** side (cells, layouts, style sheets) use `mps-aspect-editor` instead.
type: reference
---

# MPS Editor Aspect — Menus, Keymaps and Actions

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

This skill covers how the editor reacts to typing, keystrokes, completion, paste and context actions. Menus, keymaps and action maps are roots of `jetbrains.mps.lang.editor` in the language's **`editor`** model, next to the concept editors. Paste wrappers, copy-paste handlers and node factories are roots of `jetbrains.mps.lang.actions` in the **`actions`** model. Both aspect ids are case-sensitive, with no `@` suffix: [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md). For cells, layouts and style sheets use `mps-aspect-editor`.

## Critical Directives

- **Pick the artefact by the behaviour.** Change what `Delete` does → action map. A new shortcut → keymap. Text typed next to a cell → side transform. What Ctrl+Space offers for a slot → substitute menu. A pasted node must change concept → paste wrapper. Table: `references/landscape.md`.
- **Nothing is found by name.** A `TransformationMenu` / `SubstituteMenu` whose `type` is `MenuTypeDefault` is the default for its `conceptDeclaration`. Named menus, action maps and keymaps act only where a cell references them (`transformationMenu` child, `actionMap` / `keyMap` references) or a menu includes them. The one exception is `everyModel=true` keymaps.
- **Author menus as `TransformationMenu` / `SubstituteMenu` with a `type` child**: `MenuTypeDefault`, or `MenuTypeNamed` whose `name` property holds the menu name (a root `name` is dropped). `TransformationMenu_Default`/`_Named`, `SubstituteMenu_Default`/`_Named` and `IMenu_Default`/`_Named` are deprecated: never author them.
- **A default transformation menu replaces the inherited items for each location it has a section for.** Put `superconcepts menu` (`TransformationMenuPart_Super`) once for every location the menu covers, unless you mean to drop the inherited items there. A Completion section without it removes concept replacement on existing nodes. A menu with only side-transform sections keeps completion.
- **The cell's own node decides.** Side transforms and completion on a cell use the menus of the node owning that cell (its `transformationMenu` first). Attach a menu or map to the cell the caret is on, unless that cell is a child's only visible cell (`references/landscape.md`). The edge cell of a child belongs to the child.
- **Typing applies an item only on a unique strict match**, i.e. the typed text equals the item's text (or a `can substitute` guard accepts it with `strictly` = true) and nothing else still matches. A prefix applies nothing; the IDE's auto-popup shows the menu, and a test needs `Complete` (`references/side-transforms.md`).
- **Cells have no `substituteMenu` role.** Reach a named substitute menu through `include substitute menu` in a transformation menu. An empty default substitute menu hides its concept from completion.
- **Side-transform items are not in Ctrl+Space** unless the section also lists `TransformationLocation_Completion`, or a Completion section includes the menu with `location` set.
- **Keep data across a replacement with a `NodeFactory`** that reads `sampleNode` (`mps-aspect-actions`). Completion items call it. Hand-written bodies: `new initialized` runs the factory and also pre-fills required children; plain `new` does neither (`references/transformation-menus.md`).
- **Two-step deletion:** `if (node.approveDelete[in: editorContext, cell: <cellId>]) { return; }` before mutating. The keyword cell needs an `id` (`EditorCellId`). Use action maps, not `VK_DELETE` keymaps, for DELETE / BACKSPACE.
- **Implicit-parameter concepts differ per function kind** (`node` in a menu ≠ in an action map ≠ in a keymap ≠ in a cell query; paste functions use lang.actions concepts; `pattern` is `QueryFunctionParameter_pattern` in transformation and substitute menus). Take them from the leaf file of the artefact, or from a printed corpus root; write bodies with `mps-model-manipulation` idioms.
- **Role names:** `conceptDeclaration`, `type`, `sections`, `locations`, `parts`, `textFunction`, `executeFunction`, `canExecuteFunction`. Resolve concepts with `mps_mcp_get_concept_details`, copy shapes from printed corpus roots (`references/real-examples.md`).
- After edits, run `mps_mcp_check_root_node_problems`, then rebuild the language (`mps_mcp_alter_nodes` MAKE). In a running editor, `Ctrl+Alt+B` on a completion item shows the menu chain that produced it.

## Common-Path Workflow

1. Pick the artefact and the cell it hangs on (`references/landscape.md`).
2. Copy the blueprint (`references/json-blueprints.md`), or the shape of a corpus root, and insert it with `mps_mcp_insert_root_node_from_json`.
3. Wire it: set the cell's `transformationMenu` / `actionMap` / `keyMap`, and give the cells you select or approve an `id`.
4. Write the bodies; end them with a `select` (`references/selection-and-deletion.md`).
5. Check, make, and drive it with an `EditorTestCase` (`mps-tests`): typing, Ctrl+Space, Delete, paste.

## Which Menu Fires Where

| User action | What is consulted |
|---|---|
| Ctrl+Space / typing in an empty slot (`empty_<role>`) | Default substitute menu of the link's target concept (synthesised from sub-concepts if none) |
| Ctrl+Space / typing on an existing node | The cell's `transformationMenu`, else the node's default transformation menu: Completion sections. Only cells the generator gave completion have it (whole-node selection, child slots, property/reference cells, cells with an attached menu); a plain keyword constant has none (`references/landscape.md`) |
| Typing at a cell's LEFT/RIGHT edge | Side-transform sections of the same menus |
| Context Assistant / Context Actions tool | Sections with those locations |
| Delete / Backspace | Nearest cell up from the caret whose action can execute; DELETE doubles as BACKSPACE |
| Enter in a list (`Insert`) | Creates the link target's `defaultConcreteConcept`, else the target itself: an abstract target gives a red placeholder. Fix with `defaultConcreteConcept` (`mps-aspect-constraints`) or the list cell's `nodeFactory` (Kaja `CommandList`). Required children of the new node: `references/node-factories-and-triggers.md` in the `mps-aspect-actions` skill root after loading that companion skill from the same origin |
| Other keystroke | IDE actions first; then keymaps of every cell from the caret up, plus `everyModel` keymaps |
| Copy / Paste | `CopyPreProcessor` at copy; `PasteWrapper`, insertion, `PastePostProcessor` at paste (processors: exact concept, and a processed node's children are not visited; wrappers: exact `targetConcept`) |

## Related Skills

- `mps-aspect-editor` — cells, layouts, style sheets, editor components.
- `mps-aspect-actions` — `NodeFactory` (`sampleNode`) for nodes created by menus.
- `mps-aspect-intentions` — Alt+Enter actions, which can appear in a menu through the `intention` adapter.
- `mps-model-manipulation` — smodel in bodies; for the edit an execute body performs (`replace with`, `.set(...)`, `add new`) open only `references/property-and-mutation-ops.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.
- `mps-tests` — `EditorTestCase`; for typing / completion / deletion tests open `references/editor-test-case/menus-deletion-completion.md` in the `mps-tests` skill root after loading that companion skill from the same origin.
- `mps-node-editing`, `mps-baselanguage` — blueprint mechanics.

## Reference Index

**Start here**: `references/landscape.md` (which artefact, and how a cell finds it), then the one file for that artefact.

- `references/landscape.md` — artefact table, lookup and inheritance rules (including which cells offer node completion at all), cell wiring roles.
- `references/transformation-menus.md` — root and section shapes, parts, `include menu` (`nodeFunction`, `location`), Action part, groups, contributions, cell attachment.
- `references/side-transforms.md` — side-transform blueprint, when typing applies an item, child edge cells, all binary operators (`wrap substitute menu`), side transforms in completion.
- `references/substitute-menus.md` — default vs named, empty default, parts, `SubstituteMenuPart_Action` features, keeping operands on replacement, wrapper.
- `references/action-maps.md` — action-map index, cell-edge rules.
- `references/keymaps.md` — `CellKeyMapDeclaration`, `everyModel`, caret policy.
- `references/selection-and-deletion.md` — `select`, two-step deletion idiom and blueprint.
- `references/paste-and-copy.md` — order of copy/paste events, lookup rules, wrappers, handlers.
- `references/legacy-cell-menus.md` — `menuDescriptor` parts on old cells.
- `references/completion-styling.md` — `CompletionStyling`.
- `references/reference-presentation.md` — how a reference looks resolved or in completion.
- `references/json-blueprints.md` — where each blueprint is, insertion workflow.
- `references/real-examples.md` — BaseLanguage roots to print, how to find menus.
- `references/common-failures.md` — symptom → cause.
