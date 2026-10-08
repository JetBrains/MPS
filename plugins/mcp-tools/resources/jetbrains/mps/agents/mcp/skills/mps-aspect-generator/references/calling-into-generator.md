# Calling from / into the generator

Read this when: deciding where to put non-trivial code that the generator uses — behavior methods, `RulesFunctions_*`, or utility models — and how to invoke them from macros and queries.

- Concept behaviors are callable from template macros via `node.method(...)`. Keep nontrivial logic there, not in macros.
- Use `RulesFunctions_<language>` (a `ClassConcept` in the generator model) for generator-local helpers invoked from multiple templates.
- When the target is BaseLanguage: follow `mps-model-manipulation` for smodel idioms and `mps-collections-and-closures` for collections / closures idioms inside macro bodies and helper functions.

See also `utility-models.md` for the third option — plain-stereotype utility model inside the generator module — and when to pick it over a runtime solution or a behavior method.
