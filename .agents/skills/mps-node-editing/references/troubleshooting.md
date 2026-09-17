# Node Editing — Troubleshooting

* **`Cannot invoke "JsonElement.getAsString()" because ... is null`**: a required JSON field (like `concept` or `role`) is missing.
* **Notation mismatch**: user-provided textual code may differ from the canonical JSON structure; always map it to the structure defined by the concept.
* **`Unknown property '...'` / `Unknown child role '...'` / `Unknown reference role '...'`**: the JSON blueprint uses a property name or role name that is not defined on the specified concept. Check spelling or use `mps_mcp_get_concept_details` to verify the concept's structure.
* **`Input file path '...' is not inside the system temp directory`**: the blueprint file must live under the JVM system temp directory — `$TMPDIR` on macOS/Linux (on macOS a `/var/folders/...` path, so `/tmp` fails), `%TEMP%` on Windows. Rewrite it as `f="$TMPDIR/blueprint-$$.json"` and pass that absolute path.
* **`Expected JsonObject but was JsonArray`**: `mps_mcp_update_node` `childJson` takes a single node object; only `mps_mcp_insert_root_node_from_json` accepts a top-level array. Add N children with N `ADD`/`CHILD` calls, or nest them under the parent's blueprint.
* **`Invalid format 'text'. Allowed values: JSON, HTML, PLAIN TEXT`** (`mps_mcp_print_node`): the literal is `PLAIN TEXT`, with a space.
* **Dry-run warnings**: in dry-run mode (`dryRun: true`), if the blueprint contains references that are configured as dynamic reference links, the dry-run validates them and outputs any warnings inside a `warnings` array in the standard success envelope (e.g. dynamic-reference creation details that are skipped or cannot be created during dry-run).
