#### `LIST_CONCEPT_ASPECTS`
Finds the aspect root nodes (editor, constraints, behavior, typesystem rules, generator templates, …) of a concept, grouped by model, and optionally those of its superconcepts and interfaces.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or its root node, or fully qualified concept name",
  "includeInherited": "Optional: boolean, also list the aspects of every superconcept and interface, besides the concept's own (default: false)"
}
```

Returns a JSON array, one entry per model: `{aspectModel: {fullyQualifiedName, reference, module}, rootNodes: [root]}`. Each root is `{name, fullyQualifiedName?, reference, concept, relation, pattern?, targetsConcept: {name, fullyQualifiedName, reference}}`.

Read `relation` first:

- **`appliesTo`** — the root is *for* that concept: the concept's editor, constraints or behavior root, a typesystem rule whose applicable node is the concept, a generator template, switch or mapping configuration with a rule for it. This is MPS's own answer (`IConceptAspect.getBaseConceptCollection()`, which the concept editor's aspect tabs use), plus the second condition of a `ComparisonRule` (`anotherNode`) or `InequationReplacementRule` (`supertypeNode`) and an `OverloadedOpRulesContainer` rule whose `operationConcept` lists the concept. The match is exact: a rule for a superconcept is not listed for the subconcept unless you pass `includeInherited`.
- **`mentions`** — the root only references the concept's declaration somewhere (a quoted type, `conceptNode/X/` or `concept/X/` in a rule body, a link target). Roots that are never `appliesTo` land here: `TypesystemQuickFix`, `VariableConvertersContainer`, `StyleSheet`, `TransformationMenuContribution`, VCS hints.

`pattern: true` marks a typesystem rule matched through a `PatternCondition`: it applies only to instances of the quoted shape, not to every instance of the concept. Such a rule holds no reference to the declaration, so a reference search never finds it; only the `appliesTo` lookup does.

`targetsConcept` (`fullyQualifiedName` is `<language>.structure.<Name>`) is the concept the root was found through — the queried one, or with `includeInherited` the superconcept or interface it is for. A root found through several keeps the first, preferring `appliesTo`; the queried concept comes first, then its supers breadth-first; a concept that extends nothing extends `BaseConcept`, as at runtime.

Scope and limits:

- Only the concept's own language is searched: its aspect models for both relations, and the template models of its generators for `appliesTo` only (templates quote concepts throughout, so their mentions are not listed). A rule or editor for the concept in an *extending* language never appears.
- With `includeInherited`, a generator rule for a superconcept is listed whether or not its `applyToConceptInheritors` lets it reach the queried concept.
- The concept's language need not be built: the lookup reads the declaration nodes. A root that cannot say what it is for — its own language is not built, or its behavior throws — is named in `warnings`; in an aspect model it is still listed where it mentions the concept, in a generator model not at all.
