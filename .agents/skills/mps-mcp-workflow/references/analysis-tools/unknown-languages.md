## Additional Skills — Handling Unknown MPS Languages

- Consult the companion-skill table at the top of `SKILL.md` for available focused guidance.
- Explicitly load the `mps-baselanguage` companion skill as soon as you need to write any code in BaseLanguage or Java, preserving the current skill's server origin as described in `SKILL.md`.
- Load the `mps-aspect-structure-concepts` skill as soon as you need to define or change a language or its concepts.
- Before starting unfamiliar DSL work, check `.agents/skills/*-dsl/` for a generated project-local DSL skill and use it before re-exploring the language. After a session where you discovered new DSL facts, load `mps-dsl-memory` to create or refresh the relevant generated DSL skill.
