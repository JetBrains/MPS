A rename keeps the feature's id, so existing values, editor cells and code that use the feature follow it. Only literal label text, such as an editor's `title:` constant, still shows the old name. No migration is needed.

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
