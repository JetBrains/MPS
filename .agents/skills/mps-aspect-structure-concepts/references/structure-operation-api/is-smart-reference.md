#### `IS_SMART_REFERENCE`
Checks whether a concept is a smart reference concept (either explicitly annotated with `SmartReferenceAttribute` or implicitly qualifying as one).
A concept is an implicit smart reference if it is non-abstract, has no concept alias, declares no own properties and no own containment links, and has exactly one own reference link, which must be mandatory and must not specialize an inherited link (features inherited from `BaseConcept` do not count as "own"; the specialization check is skipped for a compiled or stub language, whose link declaration cannot be resolved). An explicit `SmartReferenceAttribute` short-circuits all of those checks.
Returns a JSON object with `'isSmartReference': boolean`, and when true, `'characteristicReferenceName': string` with the name of the characteristic reference link.

Parameters:
```
{
  "conceptRef": "Fully qualified concept name (e.g. 'my.lang.structure.MyConcept') or persistent node reference to the concept's declaration root node"
}
```
