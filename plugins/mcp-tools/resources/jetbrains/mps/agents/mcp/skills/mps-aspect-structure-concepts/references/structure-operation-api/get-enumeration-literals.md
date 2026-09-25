#### `GET_ENUMERATION_LITERALS`
Returns the list of possible value-presentation pairs for an enumeration.
Returns a JSON array of objects, each having `"value"`, `"presentation"`, and `"doc"` keys.

Accepts two mutually-exclusive forms:

- **By enumeration declaration** — pass a non-null `enumerationRef` naming an `EnumerationDeclaration`, either as its node reference (`r:...`) or as its **qualified name** (`<language>.structure.<EnumName>`, `<language>.<EnumName>`, or the bare `<EnumName>`). Use this when you know the enum directly. This is also the route `mps_mcp_get_concept_details` points at for an enumeration, which it can never return itself (see `concept-details.md`) — the qualified name that failed there is accepted here verbatim.
- **By property on a host node** — omit `enumerationRef` or pass it as `null`, then pass `nodeReference` (a node whose concept has an enum-typed property) plus `propertyName`. Use this when you only have an instance.

The two forms are mutually exclusive and their failures are distinguishable: the declaration form's errors name `'enumerationRef'`, the property form's name `'nodeReference'` / `'propertyName'`.

Parameters:
```
{
  "enumerationRef": "An EnumerationDeclaration's node reference (r:...) or its qualified name. Use this OR (nodeReference + propertyName), not both.",
  "nodeReference": "Persistent reference of a node whose concept has an enumeration-typed property (SNodeReference). Pair with 'propertyName'.",
  "propertyName": "The name of the enumeration property on the concept of 'nodeReference'."
}
```
