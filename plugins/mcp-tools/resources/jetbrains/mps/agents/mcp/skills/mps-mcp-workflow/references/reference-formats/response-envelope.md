## MCP Response Envelope

Every MPS MCP tool returns a JSON envelope at the top level:

```
{
  "ok": true | false,
  "data": <payload>,         // present on ok:true; type depends on the tool
  "warnings": ["..."],       // optional; present only when non-empty
  "details": { ... },        // optional; present only when non-empty
  "error": "...",            // present on ok:false
  "code": "ERROR_CODE"       // present on ok:false when a structured error code is available
}
```

**`warnings`** appear in the envelope on a **successful response** (`ok:true`) when the tool completed but found something worth surfacing without treating it as an error. Current producers:

- **`mps_mcp_get_concept_details` partial success**: one warning per unresolved ref, alongside `details.unresolved` with suggestions.
- **`mps_mcp_get_concept_details` / `mps_mcp_search_concepts` on a language with no built runtime**: one warning per affected language whose records were read from the concept declarations (`source: "declaration"`), alongside `details.languageBuild` (and `details.languageBuilds`, the full list, when several languages are affected). A `stale` language is reported in `details` only.
- **Dry-run validation of node blueprints** (`mps_mcp_update_node`, `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_root_node_from_json`, `mps_mcp_insert_console_command_from_json`): one warning per reference target that the dry run did not resolve. Which targets those are is set out under "Dry-run response" below.

**`LANGUAGE_NOT_BUILT`** is the error `code` (`ok:false`) of a tool that needs the language runtime when the runtime cannot answer for a concept. It is not an authoring error in the blueprint: build the language, then repeat the call. It is answered by every writer before it reads a feature off the concept: `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_root_node_from_json`, `mps_mcp_create_root_node`, `mps_mcp_update_node` (ADD CHILD, SET CHILD, SET PROPERTY, SET REFERENCE), `mps_mcp_alter_nodes` MOVE_CHILD / MOVE_NODE_TO_PARENT, `mps_mcp_parse_java_and_insert` (the parent role), `mps_mcp_insert_console_command_from_json`, `mps_mcp_query_structure` GET_ASSIGNABLE_REFERENCES, and the operands of `mps_mcp_query_types`. Dry runs refuse the same way. Nodes of the language's own concepts inside quotations or patterns of its typesystem rules are blueprints too, so build the language before authoring those.

```json
{
  "ok": false,
  "code": "LANGUAGE_NOT_BUILT",
  "error": "Concept 'd112.probe.structure.Chart' at $: language 'd112.probe' has no built runtime; the blueprint cannot be validated or written until the language is built. Run mps_mcp_alter_nodes MAKE with modules:[\"<module ref>\"] and rebuild:true, then retry. A MAKE writes only generated output ...",
  "details": { "languageBuild": {
    "language": "d112.probe", "module": "<module ref>",
    "status": "no_runtime" | "concept_not_in_runtime" | "stale",
    "recovery": { "tool": "mps_mcp_alter_nodes", "operation": "MAKE",
                  "parameters": { "modules": ["<module ref>"], "rebuild": true } },
    "note": "A MAKE writes only generated output (source_gen/classes_gen) and changes no model, so it is allowed where model edits are not."
  } }
}
```

`status` is `no_runtime` (the language has no built runtime), `concept_not_in_runtime` (the concept was created after the last build) or `stale`. `stale` answers a feature that **is** declared in the structure model but missing from the built runtime, such as a property added to a built concept; the response then says so instead of "Unknown property". A feature declared nowhere keeps the "Unknown property" / "Child role not found" rejection. `recovery` is the exact call to make; `mps_mcp_get_concept_details` returns the same block as `details.languageBuild`, with a `warnings` entry, on records it read from the concept declarations.

**Dry-run response** specifically:

```json
{
  "ok": true,
  "data": { "dryRun": true, "message": "Dry run successful for ..." },
  "warnings": [
    "Dry run at $.references[0]: target 'Flour' is a name, not looked up.",
    "A dry run does not look up reference targets given by name, so every name is listed above, existing and same-batch nodes included. The write resolves names in each role's scope; check fixReferences.stillBroken in its response (or mps_mcp_check_root_node_problems)."
  ]
}
```

A dry run checks concepts, roles, properties and assignability. For references, it looks up only targets written as **persistent references**: `r:…`, `i:…`, or `Model.Root` with the model's long name. What the `warnings` list holds for each kind of target:

- **Plain name** (no prefix, no `.`): always listed as "is a name, not looked up". This includes a root that already exists in the model, a node of the same batch, and a closure's `it`, as well as a typo. The rule line is added once per response. The real write stores each name as a dynamic reference and resolves it in the role's scope once the whole batch is attached. **Do not rewrite names to node ids or dry-run again because of these warnings.**
- **Dotted string that matches no root**: listed as "matches no Model.Root …; it will very likely stay broken". Fix it before writing.
- **`r:`/`i:` reference that names no node** (a stale or invented id): listed as "names no node; the write will leave it broken". Fix it before writing.
- A persistent reference that resolves is checked for assignability and not listed.

So an empty list means that there are no plain names, no unmatched dotted names and no stale ids. It does not prove that scope resolution will succeed. For every blueprint, the reference check is `fixReferences.stillBroken` in the **real** write's response (then `mps_mcp_check_root_node_problems`). A `stillBroken` of 0 means every reference the write created resolved. `mps_mcp_update_node SET REFERENCE` has no dry run: it resolves a name immediately and fails with `NOT_FOUND` if it cannot.
