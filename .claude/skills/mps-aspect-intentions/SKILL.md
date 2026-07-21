---
name: mps-aspect-intentions
description: Use when defining or editing MPS intentions (the Alt+Enter context-action aspect) — adding `IntentionDeclaration` roots, parameterized or surround-with variants, description/isApplicable/execute blocks, child-filter functions, factory-initialized AST splicing, or debugging why an intention is not offered. Lives in the language's `intentions` model and uses `jetbrains.mps.lang.intentions`.
type: reference
---

# MPS Intentions Aspect

Intentions are user-invoked transformations shown in the Alt+Enter popup on a node. They are the canonical way to offer optional refactorings (wrap, convert, introduce, preview) alongside quick-fixes. Authoring lives in `<lang>/languageModels/intentions.mps`, language `jetbrains.mps.lang.intentions`.

## Critical Directives

- Edit intention roots through MPS MCP tools (`mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`, `mps_mcp_parse_java_and_insert`). Do not hand-edit serialized `.mps` files.
- The intentions model must list every language used in any block body as a used language. In particular, the `add new initialized(...)` surface syntax requires `jetbrains.mps.lang.actions` — add it with `mps_mcp_model_used_language(kind="language")`. Plain (non-`NF_*`) variants like `parent.role.add new(C)` do not need this import.
- Use `n as C` (MPS `SNodeTypeCastExpression` with `asCast=true`) — never a Java `(C) n` cast.
- Use `:eq:` (`NPEEqualsExpression`) instead of `==` whenever either operand might be `null`.
- The execute body runs on the EDT inside an MPS write action automatically — do not spawn threads or open dialogs that block.
- `descriptionFunction` runs every time the Alt+Enter popup opens — keep it cheap.
- After editing, validate with `mps_mcp_check_root_node_problems` on the intention root and rebuild the language before testing.

## Common-Path Workflow

1. Ensure an `intentions` model exists in the language (create with `mps_mcp_create_model` and `modelName: "<lang>.intentions"` — aspect ID `intentions`, case-sensitive, no `@` suffix; see [aspect-model-stereotypes.md](../mps-mcp-workflow/references/aspect-model-stereotypes.md)). Used languages: `jetbrains.mps.lang.intentions`; add `jetbrains.mps.lang.actions` if you will use factory-initialized splicing.
2. Insert an `IntentionDeclaration` root with `mps_mcp_insert_root_node_from_json` (see blueprint in `references/json-blueprints.md`). Set `name`, `forConcept`, and `isAvailableInChildNodes` if the popup should bubble from descendants.
3. Fill `descriptionFunction` (returns a short label String), `executeFunction` (the transformation), and optionally `isApplicableFunction` (gate predicate) and `childFilterFunction` (per-descendant filter when `isAvailableInChildNodes=true`).
4. For multiple menu entries per blueprint use `ParameterizedIntentionDeclaration` with `paramType` + `queryFunction`; use `IntentionParameter` wherever you want "the current value" inside other blocks.
5. For wrap-the-selection transforms use `SurroundWithIntentionDeclaration` and read `editorContext.getSelectedNodes()`.
6. Validate (`mps_mcp_check_root_node_problems`), rebuild the language, exercise via Alt+Enter on a sandbox instance. Headlessly: after MAKE, call `mps_mcp_list_node_intentions` on a sandbox node to confirm the intention is registered and shows the expected description, then `mps_mcp_apply_intention(nodeReference = <the entry's targetNode>, intentionId = <the entry's id>)` to smoke-test `executeFunction` (for parameterized declarations also pass the row `description`). Surround-with intentions are not covered by these tools.

## Implicit parameters available in every block

| Alias | FQN | Where |
|---|---|---|
| `node` | `jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node` | All blocks; typed as `forConcept`. In `ChildFilterFunction` this is the nearest enclosing `forConcept` ancestor. |
| `editorContext` | `jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext` | All blocks; the current `EditorContext`. |
| `childNode` | `jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_childNode` | Only inside `ChildFilterFunction`; the descendant under the cursor. |
| `parameter` (`IntentionParameter`) | `jetbrains.mps.lang.intentions.structure.IntentionParameter` | Only inside `ParameterizedIntentionDeclaration` blocks; resolves to the current queried value. |

## Related Skills

- `mps-aspect-actions` — when the intention needs factory-initialized children, the NodeFactories live there.
- `mps-aspect-constraints` — for gating that should apply everywhere (not just Alt+Enter), prefer can-be rules over `isApplicable`.
- `mps-aspect-editor-menus-and-keymaps` — when the action belongs on a substitute/transformation menu or a keystroke, not in the Alt+Enter popup.
- `mps-model-manipulation` — full smodel/baseLanguage/collections reference; covers the `NF_*` family and the dual `IsEmptyOperation`.
- `mps-node-editing` — MCP recipes for inserting children, updating references, and staged construction.
- `mps-aspect-structure-concepts` — when adding the concept that `forConcept` targets.
- `mps-quotations` — when the execute body builds a complex subtree literal.
- `mps-tests` → `EditorTestCase` — for testing that an intention is offered and produces the expected tree.

## Reference Index

- Open `references/blocks-and-parameters.md` when wiring `descriptionFunction`, `isApplicableFunction`, `executeFunction`, or `childFilterFunction`, or when you need to look up the implicit parameter concept FQNs for any of them.
- Open `references/execute-idioms.md` when writing an `executeFunction` body — typical AST-editing operations (insert sibling, isInstanceOf, asCast, list add, select-in-editor), the verbatim `WrapInParens` and `AddOnEntry` examples, the attach-an-annotation (node attribute) idiom (`forConcept = BaseConcept` + context-gated `isApplicable`, `.@role.add(...)` vs `.@Mark = ...`), and the `SelectInEditorOperation` JSON shape live there.
- Open `references/factory-initialized.md` when an `executeFunction` allocates new nodes and you want the concept's NodeFactory to seed defaults — the `NF_*` family table, the `add new initialized(<default>)` semantics, and the used-language requirement live there.
- Open `references/parameterized-intentions.md` when authoring or debugging a `ParameterizedIntentionDeclaration` — `paramType` + `queryFunction` semantics, `IntentionParameter` usage, the per-value `isApplicableFunction` filter, and the full `SetCardinalityTo` example and JSON skeleton are there.
- Open `references/surround-and-child-filter.md` when authoring a `SurroundWithIntentionDeclaration` or when configuring `isAvailableInChildNodes` + a `ChildFilterFunction` — verbatim `WrapInParens` and `AddOnEntry.childFilterFunction` walk-throughs are there.
- Open `references/json-blueprints.md` when inserting an intention root via `mps_mcp_insert_root_node_from_json` — minimal blueprints for `IntentionDeclaration`, `ParameterizedIntentionDeclaration`, and `SurroundWithIntentionDeclaration` and the validated concept-reference table.
- Open `references/common-failures.md` when an intention does not appear, fires on the wrong node, leaves the caret in the wrong place, or shows duplicates — the symptom/cause/fix table is there.
