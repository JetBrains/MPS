# Dispatch and Base Text Gen Component

## Exact-concept dispatch: extending concepts need their own rule

TextGen dispatch is **concept-exact**, not polymorphic. A rule on `Statement` is *not* inherited by `IfStatement`. An extending concept that wants the parent's behaviour must declare its own `ConceptTextGenDeclaration` — even an empty one — pointing at the parent's `textGenBlock` (either by calling a base-component operation, by `append ${node}` with a cast to the parent concept, or simply with a body that re-invokes the parent's operation from the base component). Without this, the extending concept's output will be silently missing.

## Base text gen component (`LanguageTextGenDeclaration`)

One `LanguageTextGenDeclaration` root per textgen model. Holds language-level, reusable textgen state:

- `UnitContextDeclaration`s — context-object types (see `references/layout-and-context-objects.md`)
- `OperationDeclaration`s — named operation helpers callable from per-concept bodies as `Component.operationName(...)`
- `UtilityMethodDeclaration`s — plain BaseLanguage methods reusable across rules

Its name is conventionally `<LanguageName>TextGen`. In baseLanguage the root is `BaseLanguageTextGen`, which is what the `context objects : BaseLanguageTextGen.ctx : ClassifierUnitContext` line references.

A language that extends another can reuse the parent's base component by declaring its own `LanguageTextGenDeclaration` that `extends` the parent's — then parent operations are available under the child component's namespace and parent context types can be referenced by name.

## Skeleton

```json
{
  "concept": "jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration",
  "properties": [{ "name": "name", "value": "MyLanguageTextGen" }],
  "children": [
    { "role": "unitContext", "nodes": [
      { "concept": "jetbrains.mps.lang.textGen.structure.UnitContextDeclaration",
        "properties": [{ "name": "name", "value": "MyUnitContext" }]
      }
    ]}
  ]
}
```

Verify the exact child roles (`unitContext` / `operations` / `utilityMethods` — versions have varied) against `mps_mcp_get_concept_details jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration` before inserting.

## Utility classes in the textGen model

The textGen model is a regular MPS model, so you can place BaseLanguage `ClassConcept` roots next to your `ConceptTextGenDeclaration`s and call their static methods from append parts. This is the standard place for **escaping**, **formatting**, and other pure string helpers.

Example: `jetbrains.mps.core.xml.textGen.XmlCharEscape` — a `ClassConcept` with static methods `escapeIdentifier`, `escapeAttributeValue`, `escapeText`, each backed by a lookup map of characters → entity references. Used verbatim throughout the xml textgen:

```
append {<} ${XmlCharEscape.escapeIdentifier(node.tagName)} ;
append ${XmlCharEscape.escapeText(node.value)} ;
append ${XmlCharEscape.escapeAttributeValue(node.text)} ;
```

`StaticMethodCall` inside a `NodeAppendPart.value` is the idiom — the helper is resolved like any other BaseLanguage class. Remember to add `jetbrains.mps.baseLanguage` (and `collections` if you use maps/lists) to the textGen model's **used languages**.
