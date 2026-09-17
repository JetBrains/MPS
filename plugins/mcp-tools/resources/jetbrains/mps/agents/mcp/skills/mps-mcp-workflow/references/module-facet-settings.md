# Module Facet Settings

`mps_mcp_update_module_facet` accepts `settingsJson` in the two MPS `Memento` forms below. Parsing completes into a temporary memento before the module descriptor is replaced. Invalid JSON or an invalid shape returns `INVALID_REQUEST` with the full failing path and leaves the existing facet settings unchanged.

## Flat form

A JSON object without a structured discriminator is a flat string-to-string store. Primitive values are stringified, so `{"port": 8080, "debug": true}` stores `"8080"` and `"true"`. This includes primitive fields named `properties` or `children`; `{"properties": "value"}` remains a valid flat memento. Existing leniency for other non-primitive flat values is unchanged: they are ignored. `text` is the exception because it selects format, so a present non-primitive `text` is always rejected.

## Structured form

A `properties` object, a `children` array, or a present primitive `text` selects structured form:

```json
{
  "properties": { "port": 8080, "debug": true },
  "text": "optional text",
  "children": [
    { "type": "childType", "properties": { "key": "value" } }
  ]
}
```

- `text`, when present at any depth, must be a JSON primitive. Strings, numbers, and booleans are stringified; null, objects, and arrays are rejected. Omission is valid, and an empty string is preserved.
- In structured form, a present `properties` must be an object and a present `children` must be an array. Primitive entries inside `properties` are stringified as in flat form.
- Every child must be an object with a present, non-null primitive `type`. Numeric, boolean, and empty-string types retain their existing stringification. Children follow the same rules recursively.
- `enabled=false` ignores `settingsJson`, including malformed input, and disables the facet.
