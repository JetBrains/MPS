# `tickets` fixture (S26)

**Status: built 2026-10-31.** Build through MPS MCP only, logging every call to
`FIXTURE.log`, fill *Pins*, and record the sha256 in [`../../pins.md`](../../pins.md). A rebuild mints
new ids: re-pin here and in `../../../scenarios/S26/done_criteria.md`.

Start from a synthesized empty project opened alone.

1. `mps_mcp_create_module` language `mcp.study.tickets` (`<proj>/languages/mcp.study.tickets`, `withSandbox: true`, no generator): the
   sandbox solution and model `mcp.study.tickets.sandbox` come with it and already use the language.
2. `mps_mcp_alter_structure` CREATE_CONCEPTS (`make: true`): `Event` (root, INamedConcept, alias
   `event`; children `perks: Perk [0..n]`, `highlight: PerkRef [0..1]`); `Perk` (abstract,
   INamedConcept); `EarlyBird` extends Perk (alias `early bird`; `cutoffDays: integer`,
   `percent: integer`); `Backstage` extends Perk (alias `backstage`; `passes: integer`); `PerkRef` (no
   alias; reference `perk -> Perk` mandatory). `query_structure IS_SMART_REFERENCE(PerkRef)` answers true.
3. `mps_mcp_scaffold_editor` for Event, EarlyBird, Backstage, PerkRef; MAKE the language (`rebuild: true`).
4. Samples: Event `Spring Gala` (perks: EarlyBird `early30` 30/15, Backstage `vip` 2, EarlyBird `early7`
   7/5; highlight → `early7`); Event `Summer Fest` (perks: EarlyBird `summerEarly` 14/10; no highlight).
5. Sandbox check: 0 errors, 0 warnings. Do not make the sandbox solution (no generator). Close; tar
   `tickets/` with `classes_gen` and the standard excludes.

## Pins

Built 2026-10-31 by the observer through MPS MCP (`FIXTURE.log`, one JSON line per call). Tarball `~/MPSProjects/mcp-study/fixtures/tickets.tar.gz`, sha256 in `../../pins.md`.

- language module `6858e141-b95c-43ba-9ce5-5792a65d9d5c(mcp.study.tickets)`, `languageVersion` 0
- sandbox module `411972ae-6245-4320-8234-e267e7323ed5(mcp.study.tickets.sandbox)`
- models: structure `r:662af532-d4e5-4987-a5c5-1f428a192ce8(mcp.study.tickets.structure)`, editor `r:8508fef9-3ebe-49eb-ae22-b423eedd2ac8(mcp.study.tickets.editor)`, sandbox `mcp.study.tickets.sandbox`
- editor roots: Event `r:8508fef9-3ebe-49eb-ae22-b423eedd2ac8(mcp.study.tickets.editor)/4092175090843311487`, EarlyBird `r:8508fef9-3ebe-49eb-ae22-b423eedd2ac8(mcp.study.tickets.editor)/4092175090843311511`, Backstage `r:8508fef9-3ebe-49eb-ae22-b423eedd2ac8(mcp.study.tickets.editor)/4092175090843311527`, PerkRef `r:8508fef9-3ebe-49eb-ae22-b423eedd2ac8(mcp.study.tickets.editor)/4092175090843311540`

| concept | declaration | feature | featureId | cardinality |
|---|---|---|---|---|
| Backstage | `r:662af532-d4e5-4987-a5c5-1f428a192ce8(mcp.study.tickets.structure)/4092175090843310416` | passes | `6858e141-b95c-43ba-9ce5-5792a65d9d5c/4092175090843310416/4092175090843310424` |  |
| EarlyBird | `r:662af532-d4e5-4987-a5c5-1f428a192ce8(mcp.study.tickets.structure)/4092175090843310415` | cutoffDays | `6858e141-b95c-43ba-9ce5-5792a65d9d5c/4092175090843310415/4092175090843310422` |  |
|  |  | percent | `6858e141-b95c-43ba-9ce5-5792a65d9d5c/4092175090843310415/4092175090843310423` |  |
| Event | `r:662af532-d4e5-4987-a5c5-1f428a192ce8(mcp.study.tickets.structure)/4092175090843310413` | perks | `6858e141-b95c-43ba-9ce5-5792a65d9d5c/4092175090843310413/4092175090843310418` | 0..n |
|  |  | highlight | `6858e141-b95c-43ba-9ce5-5792a65d9d5c/4092175090843310413/4092175090843310419` | 0..1 |
| Perk | `r:662af532-d4e5-4987-a5c5-1f428a192ce8(mcp.study.tickets.structure)/4092175090843310414` | | | |
| PerkRef | `r:662af532-d4e5-4987-a5c5-1f428a192ce8(mcp.study.tickets.structure)/4092175090843310417` | perk | `6858e141-b95c-43ba-9ce5-5792a65d9d5c/4092175090843310417/4092175090843310425` | 1 |

Sample nodes (sandbox model above; `role: name` → node id, values, references):

- Spring Gala `4092175090843353060`
  - perks: early30 `4092175090843353061` {"cutoffDays": "30", "percent": "15"}
  - perks: vip `4092175090843353062` {"passes": "2"}
  - perks: early7 `4092175090843353063` {"cutoffDays": "7", "percent": "5"}
  - highlight: PerkRef `4092175090843353064` refs {"perk": "early7 (4092175090843353063)"}
- Summer Fest `4092175090843353065`
  - perks: summerEarly `4092175090843353066` {"cutoffDays": "14", "percent": "10"}
