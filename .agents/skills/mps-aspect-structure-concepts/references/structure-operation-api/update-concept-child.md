#### `UPDATE_CONCEPT_CHILD`
Creates, updates, or deletes a child definition in a concept.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "role": "Name of the child role",
  "targetConcept": "Optional: reference to the target concept. If empty, null, or missing, the child definition is deleted.",
  "multiple": "Optional: boolean, whether multiple children are allowed (default: false)",
  "optional": "Optional: boolean, whether the child is optional (default: true)"
}
```

Passing `targetConcept:null` is identical to omitting `targetConcept`: it deletes the child link. Use a nonempty target reference when updating or creating one.
