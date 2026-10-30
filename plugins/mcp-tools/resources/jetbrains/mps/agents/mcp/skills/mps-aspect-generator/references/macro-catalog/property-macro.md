## PropertyMacro

Overrides the owning target node's property. The `propertyId` property (or the legacy `name_DebugInfo`) identifies which property; the body is a `PropertyMacro_GetPropertyValue` returning the target property's type.

**`propertyId` is an encoded three-segment string, not a node reference.** The format is:

```
<language-uuid>/<concept-id>/<property-id>
```

Example — the literal value for the `name` property of `INamedConcept` (used wherever a generator computes a `name`):

```
ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001
```

> ⚠️ **Do not pass an `r:.../<id>` node reference here.** `propertyId` is a plain `string` property, not a reference role, and the write path does not validate it. A wrong value (node ref, short id, just the property id, a name like `"name"`) is accepted on write. **Run `mps_mcp_check_root_node_problems` after setting it** — the check now decodes `propertyId` (and `linkId` for `ReferenceMacro`) and reports a malformed, blank, or non-resolving value as a structure-level error pointing at the offending macro. If you skip the check, a wrong value surfaces only at generation time as a generic "an error occurred" failure with no useful pointer back to the macro and no autofix.
>
> Copy it from `properties[].featureId` of `mps_mcp_get_concept_details` on the owning node's concept (an inherited property carries its declaring concept's id, as in the `name` example above). See `references/property-and-reference-ids.md` in the `mps-quotations` skill root after loading that companion skill from the same origin for the same encoding documented from the antiquotation side.

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.PropertyMacro",
  "properties": [
    { "name": "propertyId", "value": "ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" },
    { "name": "name_DebugInfo", "value": "name" }
  ],
  "children": [
    { "role": "propertyValueFunction", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue",
        "children": [
          { "role": "body", "nodes": [ /* StatementList — e.g. `node.name` */ ]}
        ]
      }
    ]}
  ]
}
```

`name_DebugInfo` is optional but recommended — it is the human-readable property name MPS shows in the editor and uses for migrations; it does not affect runtime behavior.

The body returns a value of the target property's type: a `boolean` for `BooleanConstant.value`, an `int` for `IntegerConstant.value`, a `string` for names and string literals. Convert a string property of the input there (`Boolean.parseBoolean(node.value)`, `Integer.parseInt(node.value)`) — the value is computed at generation time, the output holds the literal.
