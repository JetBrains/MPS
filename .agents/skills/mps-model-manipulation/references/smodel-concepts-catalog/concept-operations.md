## Concept operations

On `concept<>` values — the receiver is a concept, not a node; produced by `node.concept`, `concept/C/`, or a `concept<>` parameter. All are `SNodeOperation` subtypes in the `operation` role of a `DotExpression`, package `jetbrains.mps.lang.smodel.structure`. The operand typed as `concept<C>` can itself be a plain `ConceptIdRefExpression` (e.g. `concept/State/.new()`) or any expression of `SConceptType`.

| Concept | ID | MPS notation | Notes |
|---|---|---|---|
| `Concept_IsExactlyOperation` | `1172326502327` | `c.isExactly(C)` | Matches `C` **only** — not sub-concepts. Also usable on a node as `node.isExactly(C)`; prefer over `isSubConceptOf` when specialised sub-concepts must not match. |
| `Concept_IsSubConceptOfOperation` | `1180031783296` | `c.isSubConceptOf(C)` | `c` is `C` or a sub-concept. |
| `Concept_IsSuperConceptOfOperation` | `1180028149140` | `c.isSuperConceptOf(C)` | `c` is `C` or a super-concept. Inverse of `isSubConceptOf`. |
| `Concept_GetDirectSuperConcepts` | `1179350041460` | `c.super-concepts/direct` | Sequence of the immediate super-concept + implemented interfaces. |
| `Concept_GetAllSuperConcepts` | `1180457458947` | `c.super-concepts/all` | Transitive closure of super-concepts (up to `BaseConcept`). |
| `Concept_GetAllSubConcepts` | `1181952871644` | `c.sub-concepts` | All known sub-concepts of `c` in the loaded languages. Useful for programmatic dispatch / menu generation. |
| `Concept_NewInstance` | `1181949435690` | `c.new()` / `new node<C>()` — see `NF_Concept_NewInstance` (`7776141288922801652`) in `jetbrains.mps.lang.actions` for the action-aspect-aware variant that runs node factories | Creates a detached node; attach it to a model/parent before use. |

All use a `conceptArgument` child of concept `RefConcept_Reference` for the parenthesised `C` parameter. Standalone `concept/C/` expressions are `ConceptIdRefExpression` (distinct from `RefConcept_Reference`, which only appears *inside* operation arguments).
