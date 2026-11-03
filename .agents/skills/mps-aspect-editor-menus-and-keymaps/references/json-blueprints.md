# JSON Blueprint Index

> A blueprint written as JSON that holds a BaseLanguage body or nests more than ~5 node levels is generated with mps-node-editing's `scripts/blueprint.py`, not typed by hand; load the `mps-node-editing` companion skill from the same origin to run it.

Where each blueprint lives. Every blueprint shows the required roles; inject BaseLanguage statement lists where marked.

- **Transformation menu root** (default / named `type`, one section), **Action part**, **Parameterized part** — `references/transformation-menus.md`.
- **Side-transform section** with `superconcepts menu` — `references/side-transforms.md`.
- **Substitute menu** (`AddConcept` + `Subconcepts`), empty default, `SubstituteMenuPart_Action` shape — `references/substitute-menus.md`.
- **Action map** — `references/action-maps/example-delete-not-expression-and-default.md` (`RemoveNot`), `references/action-maps/example-keyboard-deletable-annotation.md`, `references/action-maps/importing-action-maps.md`.
- **`approveDelete[cell: …]` condition** — `references/selection-and-deletion.md`.
- **Cell keymap** (`CastExpression_KeyMap`) — `references/keymaps.md`.
- **Paste wrapper**, **copy-paste handlers** — `references/paste-and-copy.md`.

## Insertion workflow

1. Resolve concept names with `mps_mcp_search_concepts` / `mps_mcp_get_concept_details`. Never guess.
2. Copy the shape from a printed corpus root when one exists (`references/real-examples.md`).
3. Insert with `mps_mcp_insert_root_node_from_json`. For references between nodes of the same batch, use the target's name as placeholder.
4. Run `mps_mcp_check_root_node_problems` (unresolved action ids, cell ids, parameter concepts).
