#### `UPDATE_CONCEPT_PROPERTY`
Creates, updates, or deletes a property definition in a concept.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "propertyName": "Name of the property",
  "dataType": "Optional: data type for the property (e.g., 'string', 'integer', 'boolean', or a reference to an enumeration). If empty, null, or missing, the property is deleted."
}
```

Passing `dataType:null` is identical to omitting `dataType`: it deletes the property. Use a nonempty data type when updating or creating one.
