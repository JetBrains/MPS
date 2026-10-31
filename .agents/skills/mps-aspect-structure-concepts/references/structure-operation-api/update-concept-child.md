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

An update keeps the feature's id. To change only the cardinality, re-send the current target, because an omitted one deletes the feature. If the concept already has instances, a delete or a stricter update breaks them, and the tool still answers `ok:true`. See `references/language-evolution.md` in the `mps-aspect-migrations` skill root after loading that companion skill from the same origin.
