# Unified JSON Format

MPS tools use a single JSON blueprint shape for all insertions and updates:

```json
{
  "concept": "fully.qualified.ConceptName",
  "properties": [
    { "name": "propertyName", "value": "propertyValue" }
  ],
  "children": [
    {
      "role": "childRoleName",
      "nodes": [
        { "concept": "fully.qualified.ChildConcept", "properties": [...] }
      ]
    }
  ],
  "references": [
    {
      "role": "referenceRoleName",
      "target": "targetNodeNameOrRef"
    }
  ]
}
```

* **Concept**: always use the fully qualified concept name.
* **Optional sections**: `properties`, `children`, and `references` can be omitted if empty.
* **Reference resolution**: `target` accepts a persistent node reference (`r:...`) or a node **name** for auto-resolution in scope. Auto-resolution is ideal for local references within the same blueprint.
* **References inside one blueprint**: there is no local id, temp id or `"id"` key. To point at a node created in the same blueprint, give its `name` as `target`. The write resolves it in the reference's scope after the nodes exist; check `fixReferences.stillBroken` in the response. An unnamed target, or a name that is ambiguous in scope, needs a second write. Either insert the target in a write of its own, whose response carries its `reference`, or look the ref up with `mps_mcp_print_node` `format: "AGENTIC VIEW"`. Then set it with `mps_mcp_update_node` `SET` `REFERENCE`. A response holds only the ref of the write's top node, not of nodes nested in the blueprint.
* **Where plain-name references do not work**: untyped `BaseConcept`-targeted roles (`ScopesTest.checkingReference`, `ScopesExpectedNode.ref`) have no scope to resolve a plain name, and common feature names (`SPropertyAccess.property`, `SLinkAccess.link`, `SLinkListAccess.link`) collide across concepts — always pass the persistent `r:...` `sourceNode` reference for those. Conversely, when snapshotting a printed subtree to delete and re-insert later, replace `VariableReference` / `ForEachVariableReference` targets whose declarations live inside the snapshot with their plain variable `name` (never the old `targetReference` node ID, which will dangle).
* **Full-root rewrites vs cloning**: `mps_mcp_update_root_node_from_json` (`UPDATE`) preserves the root's ID only and mints fresh IDs for every child, breaking nameless intra-root references (`ApplicableNodeReference`) and incoming cross-root child references — prefer surgical `mps_mcp_update_node` edits. When cloning with `mps_mcp_alter_nodes` `COPY_NODE`, references pointing *outside* the clone (such as `ConceptBehavior.concept`) keep their original targets until you repoint them. Replaying `print_node` JSON preserves `false` even when a concept's constructor/factory initializes a boolean to `true` (`"value": "false", "isDefault": true` resets it to unset `false`); when hand-authoring a blueprint for such a concept, pass `"false"` explicitly because an omitted property keeps its factory value.
* **`StringLiteral.value` escaping**: BaseLanguage `StringLiteral.value` stores Java-escaped source text (`StringLiteral.isCorrect()` rejects raw `"` or literal newlines) — write `\\\"` inside JSON strings for an embedded quote and `\\n` for a newline escape.
* **Commenting out / restoring a node without losing IDs**: attach `jetbrains.mps.lang.core.structure.BaseCommentAttribute` via `ADD` `CHILD` in the **parent's** `smodelAttribute` role with `properties: [{"name": "linkId", "value": "<childRole featureId>"}]`, then call `mps_mcp_alter_nodes` `MOVE_NODE_TO_PARENT` to move the child into the attribute's `commentedNode` role (reverse the move and delete the attribute to restore).
* **Best practices**: avoid deprecated concepts, properties, or roles.
* **Default property values in dumps**: MPS stores nothing for an unset property. Unset string/integer properties (and unset deprecated booleans) are **omitted** from JSON dumps (`mps_mcp_print_node`, `mps_mcp_get_project_structure includeNodes`), while unset enum defaults and unset non-deprecated booleans (`"false"`) are printed with `"isDefault": true` (and `AGENTIC VIEW` prints them with `*`). Both round-trip through blueprint writes: an unedited `"isDefault": true` entry leaves the property unset (clearing any factory-initialized value), whereas editing `"value"` applies the new value. Report-style output prints omitted properties as `"value": ""`; read absent / `""` as **"holds its default"** and never copy a `""` enum value into a blueprint — omit the property instead.
* **`declared:false` and `conceptLoaded:false` entries from a printout are not re-applied**: a `declared:false` property the concept does not declare is skipped with a warning (on update its stored value stays); a `declared:false` child role or reference is rejected, and so is a node record with `conceptLoaded:false`. Build the language, or drop the entry (a full-root update then deletes what it held); a root record with `conceptLoaded:false` can only be deleted (`mps_mcp_update_root_node_from_json` operation `DELETE`), not rewritten. See `references/analysis-tools/print-node-output.md` in the `mps-mcp-workflow` skill root after loading that companion skill from the same origin.

## What the node gets besides the blueprint

Every blueprint node gets its behavior constructor and, outside a dry run, its node factories as in the editor (see "Node factories" in `SKILL.md`), then the blueprint's values. Unlike the editor, mandatory child roles the blueprint omits are not auto-filled, and a dry run runs no factories.

* **An omitted property keeps its constructor and factory value.** Leave it out to get what the editor would set.
* **Blueprint values win over the node's own constructor and factories**, but a nested child's factory runs after its parent's values are applied and may still change the parent.
* **Factories see the enclosing nodes.** A nested child's factory sees its parent chain, up through the live node that `mps_mcp_update_node` `ADD`/`SET` × `CHILD` or `mps_mcp_update_root_node_from_json` writes into. A root being inserted is not in the model yet, so factories below it see a root without a model — the same as the editor's New Root.
* **Constraints setters and getters.** `name` and non-enum property values are stored as given, bypassing constraints property setters; enum values go through them. `mps_mcp_print_node` reads properties through constraints getters, so it can show a value that is not stored (`AGENTIC VIEW` marks an unset one `*`).

## Object vs. array, and where the file may live

* `mps_mcp_insert_root_node_from_json` (`json`) accepts a **single object or a top-level array** of blueprints; an array is inserted atomically.
* `mps_mcp_update_node` (`childJson`, `ADD`/`SET` × `CHILD`) accepts a **single object only** — a top-level array fails with `Expected JsonObject but was JsonArray`. To add N children, call `ADD`/`CHILD` N times, or nest all N under the parent blueprint's `children[].nodes` and insert the parent once.
* Either parameter may be inline JSON (max 4 KB) **or an absolute file path**, and the file **must be inside the JVM system temp directory**:
  * macOS/Linux — under `$TMPDIR` (on macOS a per-user `/var/folders/...` directory). On macOS, `/tmp` and `/private/tmp` are also accepted (they are aliases).
  * Windows — under `%TEMP%`.
  * A leading `$TMPDIR`, `${TMPDIR}`, `$TEMP`, `${TEMP}`, `$TMP`, `${TMP}`, `%TEMP%`, `%TMP%`, or `%TMPDIR%` in the path is expanded by the server.
  * Shell example: `f="$TMPDIR/blueprint-$$.json"; cat > "$f" <<'JSON' … JSON` and pass `$f` (or the unexpanded `$TMPDIR/...` form).
  * An agent file-writing tool (e.g. `Write`) is fine too: write under `$TMPDIR`, or `/tmp` on macOS.
  * A deep blueprint (a BaseLanguage body, or more than ~5 node levels) is best generated with `scripts/blueprint.py` (see "Scripts" in `SKILL.md`), which writes the file there and prints its path.

## Response Envelope

All blueprint mutation tools return the standard MCP envelope:

```json
{ "ok": true, "data": { ... } }
```

On **dry-run** (`dryRun: true`) the `data` payload is:

```json
{ "dryRun": true, "message": "Dry run successful for ..." }
```

A `"warnings"` array may appear at the top level alongside `data` when the staging phase found something to surface — most commonly an unresolved reference that would become a dynamic ref on the production write:

```json
{
  "ok": true,
  "data": { "dryRun": true, "message": "..." },
  "warnings": [
    "Dry run at $.references[0]: target 'SomeName' is a name, not looked up.",
    "A dry run does not look up reference targets given by name, so every name is listed above, existing and same-batch nodes included. The write resolves names in each role's scope; check fixReferences.stillBroken in its response (or mps_mcp_check_root_node_problems)."
  ]
}
```

A name warning is not a defect: a dry run lists every name target, existing ones included. Do not rewrite names because of it. Fix only a "names no node" or "matches no Model.Root" warning, and check `fixReferences.stillBroken` after the real write. The rule and the full envelope shape are under "Dry-run response" in `references/reference-formats/response-envelope.md` in the `mps-mcp-workflow` skill root after loading that companion skill from the same origin.
