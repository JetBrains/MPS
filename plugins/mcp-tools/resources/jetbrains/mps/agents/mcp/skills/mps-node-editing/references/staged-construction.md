# Staged Construction for Large Hierarchies

JSON blueprints > ~4KB risk truncation. For non-trivial subtrees use staged construction:

1. **Skeleton first**: insert the parent/root node with properties, references, and a minimal child skeleton (e.g. empty method bodies).
2. **Validate early**: run `mps_mcp_check_root_node_problems` on the skeleton to catch structural errors.
3. **Incremental fill**: use `mps_mcp_update_node` with `ADD`/`CHILD` to add remaining subtrees. For very large `childJson`, pass an absolute file path instead of an inline string (the parameter accepts either). The file must be inside the JVM system temp directory — `$TMPDIR` on macOS/Linux (a `/var/folders/...` path on macOS; `/tmp` is **outside** it and rejected), `%TEMP%` on Windows. Example: `f="$TMPDIR/blueprint-$$.json"`; when an agent file-writing tool (e.g. `Write`) creates it, pass the expanded absolute path. `childJson` also takes a single JSON object only — a top-level array is rejected, so add N children with N calls.
4. **Targeted updates**: use `mps_mcp_update_node` with `SET`/`CHILD` to rewrite specific subtrees.
5. **Full root updates**: use `mps_mcp_update_root_node_from_json` only for full blueprints; omitted elements will be removed.
6. **Final cleanup**: run `mps_mcp_check_root_node_problems` and use `mps_mcp_alter_nodes` with `FIX_REFERENCES` if needed.

## Forward references: the dynamic-reference escape hatch

You do **not** always have to insert a reference's target before the node that points at it. When a blueprint `target` is a plain **name** rather than an `r:`/`i:` persistent ref, the blueprint reader stores it as a **dynamic reference** that MPS resolves later by that name. This lets you author one logical unit — e.g. a `Root_MappingRule` together with the template it points at — without strictly ordering the inserts, as long as the name is unambiguous in the resolution scope. (This escape hatch is specific to the blueprint readers — `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node ADD`/`SET CHILD`, `mps_mcp_update_root_node_from_json`. `mps_mcp_update_node SET REFERENCE` differs: it resolves a plain name in the role's scope immediately and fails with `NOT_FOUND` if it cannot, rather than leaving a dynamic ref.)

- A dry-run (`dryRun: true`) reports each name that did not resolve as a `warnings` entry; a non-empty list is the set of refs that will be left dynamic on the production write.
- Once the target exists, run `mps_mcp_alter_nodes FIX_REFERENCES` to materialize the dynamic refs into persistent (`r:...`) references.
- Strict ordering (insert the target first) is only required when the name **can't** resolve on its own — duplicate names in scope, or a target identified only by node id.
