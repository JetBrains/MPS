# Encoded `propertyId` and `linkId`

Both `PropertyAntiquotation.propertyId` and `ReferenceAntiquotation.linkId` use the same persistent encoding:

```
<language-uuid>/<concept-id>/<property-or-link-id>
```

Example (the `name` property of `LocalVariableDeclaration`):

```
ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001
```

## Rule of thumb

**Let MPS fill these in.** When you type `$` in a property cell or `^` in a reference cell in the editor, MPS computes the correct ids from the surrounding context and writes them into the antiquotation node. Constructing them by hand is brittle:

- The language UUID changes if the language is recreated.
- The concept id and property/link id depend on the originals' positions in the language structure.

When inserting via MPS MCP, prefer to:

1. Insert the antiquotation through a tool that the IDE owns (e.g. an intention) so MPS sets the ids itself; or
2. Look up the live values via `mps_mcp_get_concept_details` / `mps_mcp_print_node` (`format: "AGENTIC VIEW"`) on the property/link declaration first, then assemble the encoded string.

## Companion debug properties

- `name_DebugInfo` (PropertyAntiquotation) — human-readable property name.
- `role_DebugInfo` (ReferenceAntiquotation) — human-readable link name.
- `stringValueMigrated` (PropertyAntiquotation) — `true` for modern models.

These are not used by the runtime; they help editor presentation and migrations.
