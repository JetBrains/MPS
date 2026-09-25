---
name: mps-node-editing
description: Add, update, or delete MPS nodes using JSON blueprints — covers the unified blueprint format, staged construction for large subtrees, validation, and reference repair. Use whenever creating, editing, or restructuring nodes in any MPS model (structure, editor, behavior, generator, application code, etc.).
type: reference
---

# MPS Node Editing

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

The core workflow for mutating MPS nodes through MCP tools. JSON blueprints describe the node hierarchy you want; the tools resolve concepts, references, and used languages on insert.

## Critical Directives

- **Always use the fully qualified concept name** in the `concept` field — it is unambiguous and does not require a `conceptReference`.
- **Resolve before editing** — call `mps_mcp_get_current_editor_root_node` (for the user's focus) or `mps_mcp_search_root_node_by_name` (by name) to lock onto the target. Don't guess refs.
- **Prefer surgical edits** — `mps_mcp_update_node` (`ADD`/`CHILD` or `SET`/`CHILD`) preserves persistent IDs. `mps_mcp_update_root_node_from_json` rewrites the entire root and is wasteful when only one subtree changed.
- **Don't delete-and-reinsert** to make a small change — deletion destroys persistent IDs and breaks incoming references.
- **Cloning an existing node? Use `mps_mcp_alter_nodes` `COPY_NODE`, not a JSON blueprint.** It clones the subtree natively — correct concept, properties, refs, nested structure — as the next sibling (multi-child role) or new root, then tweak with `mps_mcp_update_node`. Reserve JSON blueprints for nodes with no close match to copy from.
- **Validate frequently** — call `mps_mcp_check_root_node_problems` immediately after inserting or modifying a complex node. `"ok": true` from insert does not mean the AST is semantically valid.
- **A blueprint is not the whole node** — the concept's node factory runs first and may add properties, children, and references your JSON never mentions. Do not re-do its work by hand, and do not assume an inserted node contains exactly what you wrote. See "Node factories" below.

## `mps_mcp_update_node` — Unified Node-Mutation Tool

All child, property, and reference operations on existing nodes go through `mps_mcp_update_node`. The operation is selected via `operation` (`ADD`/`SET`) × `kind` (`CHILD`/`PROPERTY`/`REFERENCE`). **There is no `DELETE` operation** — deletion is a `SET`: omit `childJson` to delete a child, or pass an explicit `null` as a triplet's value to clear a property or reference. A *shortened* triplet is rejected (`Invalid property triplet: expected at least 3 elements`, and the `reference` equivalent), so the null has to be written out.

| operation × kind        | Required parameters                                           | Notes |
|-------------------------|---------------------------------------------------------------|-------|
| `ADD` × `CHILD`         | `nodeReference` (parent), `childRole`, `childJson`            | Optional `position` (0-based; null/-1 = append) and `dryRun`. A `position` ≥ the current child count clamps to an append; a negative value other than -1 is rejected. The response's `data.index` reports the actual landing index. |
| `SET` × `CHILD`         | `childNodeRef` (+ `childJson` to replace)                     | Replaces an existing child; preserves its position in the role. Optional `dryRun`. **Omit `childJson` to delete the child** — `mps_mcp_update_node` offers no other way to delete one (a whole-root rewrite via `mps_mcp_update_root_node_from_json` can also drop children). |
| `SET` × `PROPERTY`      | `properties` = `[[nodeRef, propertyName, value], …]`          | Batch operation; returns per-row results. A row whose `value` is an explicit `null` deletes that property; a two-element row is rejected, not treated as a delete. |
| `SET` × `REFERENCE`     | `references` = `[[nodeRef, role, targetRefOrName], …]`        | Batch operation; `targetRefOrName` accepts an `r:...` ref or a plain name. A plain name is resolved within the reference role's search scope; if it cannot be resolved the call fails (`NOT_FOUND`), preserves the previous reference value, and stores no dangling reference. A row whose `targetRefOrName` is an explicit `null` deletes that reference; a two-element row is rejected, not treated as a delete. |

`ADD` × `PROPERTY` and `ADD` × `REFERENCE` are not valid combinations and return an error envelope. So does any other `operation` value, `DELETE` included.

`mps_mcp_update_node` (PROPERTY / REFERENCE / CHILD) and `mps_mcp_alter_nodes` MOVE_CHILD / MOVE_NODE_TO_PARENT / COPY_NODE also work on nodes inside the **current MPS Console input command** — pass the node's normal persistent reference; no extra parameter is needed. The node must be inside the current unexecuted console input (not history/stale). MOVE_NODE_TO_PARENT only relocates a node *within* the current console command — moving a node between the console and a project model, or making a console node a root, is refused. Edits to console nodes skip disk-persistence and refresh the console's imports instead. Nodes outside the selected project are rejected as before.

For project models, `MOVE_NODE_TO_PARENT` has two intentional forms. Supply a non-null `newParentRef` and `role` to reparent the node. To promote it to a root, omit `newParentRef` and supply `modelReference`. Do not send `"newParentRef": null`: explicit null is rejected so it cannot accidentally select the promotion form.

`childJson` accepts the blueprint as real JSON, as that JSON written as a string (max 4 KB), **or** as an absolute path to a file containing it. Use the file form for large blueprints to avoid MCP-transport truncation.

Where a documented null means something, how you express it depends on where it sits. For `SET` × `CHILD`, the null is the `childJson` *parameter*: express it by **omitting the parameter** or sending an unquoted JSON null. For `SET` × `PROPERTY`/`REFERENCE` the null is the third *element* of a triplet, so it must be written out as an unquoted JSON null — omitting the `properties`/`references` parameter is rejected as missing, and a two-element row is rejected as a malformed triplet, not read as a delete. In neither case is the 4-character string `"null"` the null form — for `childJson` it is rejected as `Input is the string 'null', not a JSON object/array or a file path`.

## Prerequisites

- Load the `mps-language-analysis` skill if you do not yet know what concepts the model uses.
- Resolve the target node (unless creating a brand-new root):
    - `mps_mcp_get_current_editor_root_node` for the user's focus.
    - `mps_mcp_search_root_node_by_name` for a known name.
- Resolve required languages and concepts:
    - Check used languages of the current model via `mps_mcp_get_project_structure`.
    - Get concept details using `mps_mcp_get_concept_details` for specific languages.
    - Use `mps_mcp_search_concepts` for discovery.

## Common Workflow

1. **Identify** the target node (existing) or parent model (new root).
2. **Choose the right tool**: `mps_mcp_create_root_node` / `mps_mcp_insert_root_node_from_json` for new roots; `mps_mcp_update_node` (`ADD`/`SET` × `CHILD`/`PROPERTY`/`REFERENCE`) for surgical edits; `mps_mcp_update_root_node_from_json` only for full-root rewrites.
3. **Author the JSON** following the unified blueprint format.
4. **Insert** with `dryRun: true` first if the blueprint is large. Check the response: an empty `warnings` array means staging was clean. A "did not resolve" warning means the target is not in the model yet, and the production write will store a dynamic reference for it. That is expected for a name defined by another root of the same batch, which the real insert resolves, so a dry run adds nothing for a batch whose references point at each other; check `fixReferences.stillBroken` after the real insert instead. Any other listed target will stay broken, so resolve it first.
5. **Validate** with `mps_mcp_check_root_node_problems`. Reported problems may carry a `quickFixes` array; apply one with `mps_mcp_apply_intention`, or pass `autoApplyQuickFixes=true` for one-shot repair of the auto-applicable ones.
6. **Repair** broken refs with `mps_mcp_alter_nodes FIX_REFERENCES` if validation surfaces resolvable-but-unresolved targets.

## Related Skills

- **`mps-aspect-structure-concepts`** — defines what concepts exist and what roles they expose.
- **`mps-aspect-actions`** — node factories: what a concept initializes on creation, before your blueprint is applied.
- **`mps-baselanguage`** — when the nodes you edit are BaseLanguage / Java.
- **`mps-quotations`** — embedding inline node literals inside model code.
- **`mps-language-analysis`** — exploring an unfamiliar language before editing.
- **`mps-model-manipulation`** — when the edit also requires navigating the tree from model code (`.ancestor<C>`, `.descendants<C>`, siblings, containingRoot); open only `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.

## JSON Input — File-Path Semantics

The tools that accept a node JSON blueprint (`mps_mcp_update_node` for `ADD`/`SET` × `CHILD`, `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_root_node_from_json`) all use the same `childJson` / `json` parameter convention:

- The parameter can be **either** the JSON itself (max 4 KB) — sent as real JSON or as that JSON written as a string, both equivalent — **or** an absolute path to a local file containing it.
- `mps_mcp_insert_root_node_from_json` and `mps_mcp_update_root_node_from_json` additionally accept a **top-level array** for a bulk insert, which `mps_mcp_update_node`'s `childJson` does not — it takes a single object (or a file path).
- Files may contain either a **raw node blueprint** or the **full MCP response envelope** produced by `mps_mcp_print_node`; in the latter case the `data` field is used.
- **Ordinary input files are never deleted.** Only temporary JSON files created by this toolset may be cleaned up after reading (and only when `dryRun=false`).
- Very large JSON inputs may be truncated by the MCP transport before the tool reads them. If that happens, insert a smaller blueprint first and add children in follow-up calls with `mps_mcp_update_node` (`ADD`/`CHILD` or `SET`/`CHILD`), or pass the JSON as a file path instead of an inline string. See `references/staged-construction.md` for the recommended pattern.

## Node factories

Many concepts ship a **node factory** (the language's `actions` aspect) that initializes a freshly
created node. It fires *before* your blueprint is applied, and it may set properties, add children,
wire references, and reach outside the node entirely: add a used language or model import, add a
module dependency, or bump the language's version. Factories are inherited, so a concept gets the
factories of its super-concepts **and** its implemented interfaces.

A factory runs for every node that is newly **created**, and not for a node that already exists:

| Tool | Factory runs for |
|---|---|
| the editor, `mps_mcp_create_root_node` | the new node |
| `mps_mcp_insert_root_node_from_json` | each new root and every nested blueprint child |
| `mps_mcp_update_node` `ADD` × `CHILD`, `SET` × `CHILD` with a `childJson` | the new child and its nested children |
| `mps_mcp_insert_console_command_from_json` | the new command node and its children |
| `mps_mcp_update_root_node_from_json` | **only the staged children** — the root itself already exists, so nothing runs for it |
| `mps_mcp_update_node` `SET` × `CHILD` with no `childJson` (a delete) | nothing |

How a blueprint composes with the factory:

| Blueprint says | Result |
|---|---|
| nothing about a property | the factory's value stands |
| a property the factory also set | **your value wins** (properties are applied after the factory) |
| nothing about a child role | the factory's children in that role stand |
| a child role | that role is **cleared first**, then filled from your blueprint |
| nothing about a reference role | the factory's target stands |
| a reference role | **your target wins** |

Practical consequences:

- **Do not hand-write what the factory already does.** Duplicating a factory side effect is how
  double-counting bugs appear — e.g. a `MigrationScript`'s or `PureMigrationScript`'s
  language-version bump (see the `mps-aspect-migrations` skill).
- **Name a role only to override it.** Listing a role you meant to leave alone silently discards
  the factory's contribution to it.
- **Mandatory roles are not auto-filled.** The blueprint paths deliberately skip MPS's
  "create default child for every 1-cardinality role" step, so a role you omit stays empty and
  `mps_mcp_check_root_node_problems` will report it. That is intentional: the blueprint stays exact.
- **`dryRun: true` does not run factories at all** — their side effects land on the model and module
  and nothing rolls them back. A dry run therefore validates the blueprint, not the final node.
- **Factory side effects survive a failed call.** They are applied while the blueprint is being
  built, before anything is attached, and no tool rolls them back. If a batch insert fails on its
  third root, the first two roots are not inserted but whatever their factories wrote to the model
  and module — imports, module dependencies, a language-version bump — stays. Re-read the affected
  state instead of assuming a failed call changed nothing. A stray language-version bump is undone in
  one call: `mps_mcp_update_module(operation="SYNC_VERSION")` re-derives the version from the
  scripts that actually exist.
- **A factory that *throws* is reported; one that swallows its own exception is not.** A throw
  becomes a `warnings` entry naming the concept, and the node is still created — treat its
  factory-initialized state as absent. But a factory that catches internally reports nothing and
  the envelope looks clean. That is the norm for `AutoInitDSLClass` concepts (`MigrationScript`
  among them), whose initializer runs behind its own `catch` and surfaces only in `idea.log`. For
  those, verify the state the factory was supposed to set rather than trusting `ok: true`.

To see whether a concept has a factory at all, use
`mps_mcp_query_structure(operation = "LIST_CONCEPT_ASPECTS", …)` — it reports which aspect models
declare something for the concept, including `actions`. (`mps_mcp_get_concept_details` does **not**
list aspects.) The `mps-aspect-actions` skill covers authoring and reading factories.

## Reference Index

- Open `references/json-format.md` when you need the unified JSON blueprint shape — concept/properties/children/references layout, optional-section rules, and reference-resolution semantics (`r:...` vs name auto-resolution).
- Open `references/staged-construction.md` when the subtree is large (>~4 KB) or its child refs are needed for later edits — the skeleton → validate → incremental-fill → targeted-update → cleanup pattern.
- Open `references/troubleshooting.md` when an insert call fails with `JsonElement.getAsString()` errors or when the JSON shape diverges from the user's textual notation.

## Scripts

`scripts/table_to_bulk_insert.py` — turns a CSV (or JSON rows) plus a small JSON mapping spec
into the top-level-array blueprint `mps_mcp_insert_root_node_from_json` accepts, written to a
file under the system temp directory, and prints `{path, roots, children, references}`. Covers
typed properties (`int`, enum literals), split-column child lists, and reference-wrapper
children whose targets are written as names for the tool to resolve after the batch lands.

```
python3 scripts/table_to_bulk_insert.py courses.csv courses.map.json
{"children":183,"path":"/var/folders/.../bulk_insert-courses-1234.json","references":65,"roots":40}
```

Then `mps_mcp_insert_root_node_from_json(modelReference=…, json="<that path>")` and read
`fixReferences.stillBroken` in its response. Skip the `dryRun=true` call, or ignore its "did
not resolve" warnings for names the table itself defines: a dry run cannot see roots of the
same batch, and the real insert resolves them.

To check the inserted model against the table, dump it once and run the same script with
`--verify`. That replaces a hand-written comparison script:

```
mps_mcp_get_project_structure(startingPoint=<model>, includeNodes=true, nodeDepth=1)
python3 scripts/table_to_bulk_insert.py courses.csv courses.map.json --verify <dumpFile>
row 7 (Conducting): lessons[2].minutes: expected '10', got '12'
{"differences":1,"extraRoots":0,"matched":39,"mismatched":1,"missing":0,"rows":40}
```

It pairs rows with roots by the spec's `nameColumn`, and compares every property, child and
reference target the spec produces. It exits 0 when every row matches and 1 on any
difference.

Run `--help` for the full mapping-spec reference, `--list-tools` for the tools and parameters
it depends on; `scripts/examples/` holds a 40-row `courses.csv` with its matching
`courses.map.json`. This usage block plus `--help` are the contract: there is no need to read
the script source or the examples first.

No `python3` (typically Windows): author the array by hand as described in
`references/json-format.md` — one object per row, `properties` entries omitted for empty cells
so the MPS default applies, one child role per list column, and one wrapper child per
reference with `{"role": …, "target": "<name>"}` — write it to a file under `$TMPDIR`
(or `/tmp` on macOS) and pass that path. Prefer `--limit`-sized batches, or the
staged construction in `references/staged-construction.md`, over one oversized blueprint.
