#### `RENAME_CONCEPT_PROPERTY`
Renames a property definition in a concept.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "oldName": "Current name of the property",
  "newName": "New name for the property"
}
```

#### `RENAME_CONCEPT_CHILD`
Renames a child definition in a concept.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "oldRole": "Current name of the child role",
  "newRole": "New name for the child role"
}
```

#### `RENAME_CONCEPT_REFERENCE`
Renames a reference definition in a concept.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "oldRole": "Current name of the reference role",
  "newRole": "New name for the reference role"
}
```
