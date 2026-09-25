#### `IS_SUBCONCEPT_OF`
Also known as `is_assignable_to`. Indicates whether a concept is a direct or indirect subconcept of another concept or a concept interface. A subconcept is assignable where the superconcept is expected.
Returns a boolean value (`true`/`false`).

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or fully qualified concept name",
  "superConceptRef": "Persistent reference of the super-concept or interface (SAbstractConcept) or fully qualified concept name"
}
```

#### `GET_SUB_CONCEPTS`
Returns all subconcepts of the specified concept in the specified languages or in all available languages.
Returns a JSON array of concept info objects, or a path to a temporary JSON file if the data is large.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or fully qualified concept name",
  "languageRefs": "Optional list of persistent references (SLanguage) or qualified names of the languages to search in."
}
```

#### `GET_ASSIGNABLE_CONCEPTS`
Returns all non-abstract concepts that can be assigned to a particular concept. Returns all non-abstract sub-concepts of the given concept. If the provided concept is non-abstract, it will be included too.
Returns a JSON array of concept info objects, or a path to a temporary JSON file if the data is large.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or fully qualified concept name",
  "languageRefs": "Optional list of persistent references (SLanguage) or qualified names of the languages to search in."
}
```

#### `GET_ALL_SUPERCONCEPTS`
Returns a transitive closure of super concepts and interface concepts for a given concept. Returns a collection of concept info objects, or a path to a temporary JSON file if the data is large.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or fully qualified concept name"
}
```
