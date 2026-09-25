#### `LIST_CONCEPT_ASPECTS`
Finds and groups all aspect root nodes (Editor, Constraints, etc.) for a concept and optionally its superconcepts across languages.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "includeInherited": "Optional: boolean, whether to include aspects from superconcepts and interfaces (default: false)"
}
```
