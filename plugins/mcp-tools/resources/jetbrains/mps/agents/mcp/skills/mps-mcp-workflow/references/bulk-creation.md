# Bulk Node Creation and Staged Construction

## Bulk Insert (Top-Level Array)

- To insert multiple root nodes in one call, pass a **top-level JSON array** to `mps_mcp_insert_root_node_from_json`. All nodes are inserted atomically — if any node fails, the entire batch is rolled back.
- Identify the existing nodes that will be referred to by the nodes to be created.
- Include the IDs of these nodes in the JSON blueprint wherever they fit the role of target nodes.
- For nodes that are created as part of the same bulk operation, you can use their **name** as a placeholder in the `target` field. The tool will automatically resolve these "local" references once all nodes are created.
- If automatic resolution is not possible or desired, leave the target references empty and set them later with `mps_mcp_update_node` (`SET`/`REFERENCE`) once you have discovered the IDs of the newly created nodes.

### Array vs. object — the one asymmetry

- `mps_mcp_insert_root_node_from_json` (`json`) accepts **a single object or a top-level array**.
- `mps_mcp_update_node` (`childJson`, `ADD`/`SET` × `CHILD`) accepts **a single object only**. A top-level array is rejected with `Expected JsonObject but was JsonArray`.
- To add N children to an existing parent: call `ADD`/`CHILD` N times, or — when the parent is being created anyway — put all N inside the parent blueprint's `children[].nodes` array and insert the parent once.

## Print-Shallow-Then-Add-Children Workflow

Prefer **staged construction** over one giant blueprint when a subtree is large or its child node refs are needed for later edits. Single JSON blueprints over ~4 KB get truncated, and very deep trees are hard to debug.

The pattern is:

1. Insert (or create) the **outer node** with a minimal blueprint — concept, properties, and just enough children/references to make the node valid.
2. Call `mps_mcp_print_node` with `deep=false` (shallow) on the outer node to learn the **persistent refs** of its direct children and roles.
3. Fill or extend each child role with `mps_mcp_update_node`: `ADD`/`CHILD` (append a new child in a role) or `SET`/`CHILD` (swap an existing placeholder child for a real subtree).
4. Repeat the print-shallow step on any newly inserted child to drill further down — every staged call returns its own node ref.

Use this pattern whenever you would otherwise paste a node ref you have not yet seen, when the subtree might exceed the JSON size limit, or when intermediate validation (`mps_mcp_check_root_node_problems`) between layers helps localise errors.

## File inputs must live in the system temp directory

Every parameter that accepts *either* inline JSON *or* a path (`childJson`, `json`, `conceptsJson`, …) resolves the path against the **JVM system temp directory** (`java.io.tmpdir`) and rejects anything outside it:

```
Input file path '/tmp/blueprint.json' is not inside the system temp directory.
```

- macOS/Linux: write under `$TMPDIR`. On macOS `$TMPDIR` is a per-user `/var/folders/...` directory — **`/tmp` is not inside it and is rejected**.
- Windows: write under `%TEMP%`.
- Shell: `f="$TMPDIR/blueprint-$$.json"; cat > "$f" <<'JSON' … JSON` then pass `$f`.
- Writing the file with an agent file-writing tool (e.g. `Write`) works too — but the path must still be the expanded temp directory (`/var/folders/.../blueprint.json`, `%TEMP%\blueprint.json`), because the tool sees a literal path and does not expand `$TMPDIR`.
- The path must be absolute; files this toolset created itself may be deleted after reading, ordinary input files are never deleted.

