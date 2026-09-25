# TextGen JSON Blueprints and Validated Concept Reference

> Verified via `mps_mcp_get_concept_details` and `mps_mcp_print_node` against a running MPS. Re-verify with the MCP before inserting if your MPS version differs.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| `append {<} ${XmlCharEscape.escapeIdentifier(node.tagName)} ;` — constant + expression | `references/json-blueprints/append-constant-and-expression.md` |
| `append {&} ${node.entityName} {;} ;` — three parts (constant, node, constant) | `references/json-blueprints/append-three-parts.md` |
| `append $list{node.content} ;` — list dispatch | `references/json-blueprints/append-list-dispatch.md` |
| `with indent { ... }` from `IfStatement_TextGen` | `references/json-blueprints/with-indent.md` |
| `increase depth` / `decrease depth` from `BlockStatement_TextGen` | `references/json-blueprints/increase-decrease-depth.md` |
| `withIndent` flag on a `NodeAppendPart` (from `ClassConcept_TextGen`) | `references/json-blueprints/withindent-flag.md` |
| Validated concept reference (from xml textgen) | `references/json-blueprints/validated-concept-reference.md` |
| Minimal file-generating-concept blueprint | `references/json-blueprints/minimal-file-generating-concept.md` |
