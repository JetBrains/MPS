# Validation for modular languages

Projectional reality changes what to test. Invalid syntax usually **cannot be entered**, so parser-style syntax tests are nearly irrelevant. The seams that actually break in modular languages are **semantic**: scopes, type bridges, and generator contracts. Test those, and keep a suite of **representative example models** that language evolution and migrations must keep valid.

Use `NodesTestCase` (typesystem, constraints, scopes, generator output) and `EditorTestCase` (intentions, actions, completion) with in-model `has error` / `has type` / `ScopesTest` annotations and label-based `node<label>` cross-references. → `mps-tests`. After every structural or generator change, run the model checker over the example suite (`mps_mcp_check_root_node_problems`).

## General checklist (all kinds)

- [ ] A suite of representative example models exists and is checked after every structural/generator change.
- [ ] Cross-language references resolve and **scope** is neither too broad nor too narrow (test both visible and invisible targets).
- [ ] Types at every language seam are in the **intended** type space (no accidental duplicate-primitive mismatch).
- [ ] Generators lower everything to the base language before text generation (no leftover high-level or placeholder nodes).
- [ ] Migrations/intentions keep existing example models valid after a language change.

## Referencing

- [ ] **Visible vs. invisible targets** — positive: a widget binds to a metric of an *imported* catalog; negative: a metric of a *non-imported* catalog is **not** offered and is flagged if forced.
- [ ] **Centralized naming contracts** — the generator calls `seriesId()`/`accessorName()` behavior, not duplicated string logic (rename the source, regenerate, confirm one place changes).
- [ ] **Cross-language checks** fire (e.g. status-light→boolean metric, line-chart→numeric metric).

## Extension

- [ ] **Coexistence** — base-language and extension nodes work together in one fragment (an `unless` beside a plain `if`).
- [ ] **Type integration** — the new type is typed; overloaded operators accept it and yield the right result type (`money + money → money`; `money + int` handled or rejected).
- [ ] **Generator assimilation** — the extended construct is fully lowered to base language (no `UnlessStatement`/`SwapStatement`/placeholder survives; any weaving helper + mapping label resolved).
- [ ] **Hook ordering** — placeholder concepts are produced before, and consumed after, the right generators (generation plans or priorities explicit).
- [ ] **Upgrade path** — the intention converts old nodes to the extended form.

## Reuse

- [ ] **Core independence** — the core (`statemachine`) module has **no** dependency on any host context (assert on used/extended languages: no `Sensor`/`Output`).
- [ ] **Adapter completeness** — every abstract hook (`Guard`/`Action` + its behavior method) has a concrete adapter implementation.
- [ ] **Generated abstract API** — separated generation emits the expected abstract signatures (`guard_0`/`action_0`); the adapter subclass implements exactly those.
- [ ] **Hook IDs & priorities** — interwoven generation: placeholder IDs match between emitter and reducer; generation plans or priorities guarantee the placeholder exists before the adapter runs and is gone before text gen.

## Embedding

- [ ] **Scope narrowing** — guest constructs see only the host context (a `FactRef` sees only its rule set's facts), not the whole model.
- [ ] **Host/guest type bridges** — mixed-type conditions type-check (a host `BooleanType` fact accepted by guest `==`; result lands in the guest type space). Include negative cases (a host `NumberType` fact where a boolean is expected → error).
- [ ] **Guest pipeline reuse** — guest expressions are lowered by the shared guest→BaseLanguage transformation; the host generator handles only adapter concepts (`FactRef`).
- [ ] **Migration** — old host nodes convert to the embeddable variant via intention.

## Anti-pattern to watch for

If your tests are mostly "does this syntax parse/render," you are testing the cheap layer. Re-target them at scopes, type bridges, and generator output — that is where modular languages fail.
