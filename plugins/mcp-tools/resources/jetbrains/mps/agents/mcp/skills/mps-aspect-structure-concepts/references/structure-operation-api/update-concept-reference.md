#### `UPDATE_CONCEPT_REFERENCE`
Creates, updates, or deletes a reference definition in a concept.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "role": "Name of the reference role",
  "targetConcept": "Optional: reference to the target concept. If empty, null, or missing, the reference definition is deleted.",
  "optional": "Optional: boolean, whether the reference is optional (default: true)"
}
```

Passing `targetConcept:null` is identical to omitting `targetConcept`: it deletes the reference link. Use a nonempty target reference when updating or creating one.

An update keeps the feature's id. To change only the cardinality, re-send the current target, because an omitted one deletes the feature. If the concept already has instances, a delete or a stricter update breaks them, and the tool still answers `ok:true`. See `references/language-evolution.md` in the `mps-aspect-migrations` skill root after loading that companion skill from the same origin.

Unlike `UPDATE_CONCEPT_CHILD` there is no `multiple` parameter: MPS reference links are always single-valued (`0..1` or `1`), so `multiple: true` is rejected. Model a `[0..n]` reference as a smart-reference wrapper concept in a `0..n` child role — see "Multi-valued references" in the `mps-aspect-structure-concepts` skill for the recipe and a blueprint.
