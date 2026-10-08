# JSON Blueprint Index

Quick links to the canonical JSON blueprints in this skill's reference set. Each blueprint shows the minimum required roles and properties; substitute concrete concept names and inject BaseLanguage statement lists where indicated.

- **Action map** (`Not_ActionMap` example) — see `references/action-maps.md`. Override `delete_action_id` with an execute function.
- **Action map imports** — wildcard and by-action-id selectors — see `references/action-maps.md`.
- **Cell keymap** (`CastExpression_KeyMap` example) — see `references/keymaps.md`. Modifiers + keycode + execute function.
- **Transformation menu — Action part** with `outputConceptReference`, `textFunction`, `executeFunction`, and `features` (description text) — see `references/transformation-menus.md`.
- **Transformation menu — Parameterized part** with `parameterQuery` + inner `part` — see `references/transformation-menus.md`.
- **Transformation menu — Side-transform section** (right-transform on `Expression`) — see `references/side-transforms.md`.
- **Substitute menu — Default** (`Statement_SubstituteMenu` example) with `AddConcept` + `Subconcepts` parts — see `references/substitute-menus.md`.
- **Substitute menu — Wrapper** (`Expression` → `ExpressionStatement`) — see `references/substitute-menus.md`.
- **Paste wrapper** (`Expression` → `Statement`) — see `references/paste-and-copy.md`.
- **Copy-paste handlers** (`LocalVariableReference` pre + post processor) — see `references/paste-and-copy.md`.

## Insertion Workflow

1. Resolve concept names via `mps_mcp_search_concepts` or `mps_mcp_get_concept_details` — never guess.
2. Call `mps_mcp_insert_root_node_from_json` with the chosen blueprint.
3. For references between nodes created in the same batch, use the node's **name** as the target placeholder.
4. After insertion run `mps_mcp_check_root_node_problems` to surface unresolved references (especially action IDs and shared-concept parameters).
