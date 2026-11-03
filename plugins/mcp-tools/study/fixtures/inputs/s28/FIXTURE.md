# `shifts` fixture (S28)

**Status: built 2026-10-31.** Build through MPS MCP only, logging every call to
`FIXTURE.log`, fill *Pins*, and record the sha256 in [`../../pins.md`](../../pins.md). A rebuild mints
new ids: re-pin here and in `../../../scenarios/S28/done_criteria.md`.

The sandbox is large enough that editing shifts one by one is slower than two Console commands.
Start from a synthesized empty project opened alone.

1. `mps_mcp_create_module` language `mcp.study.shifts` (`<proj>/languages/mcp.study.shifts`, `withSandbox: true`, no generator): the
   sandbox solution and model `mcp.study.shifts.sandbox` come with it and already use the language.
2. `mps_mcp_alter_structure` CREATE_CONCEPTS (`make: true`): `Roster` (root, INamedConcept, alias
   `roster`; children `crew: Worker [0..n]`, `shifts: Shift [0..n]`; reference `lead -> Worker`
   optional); `Worker` (INamedConcept, not root); `Shift` (`day: string`; `covered: boolean`;
   reference `worker -> Worker` optional).
3. `mps_mcp_scaffold_editor` for Roster, Shift, Worker; MAKE the language (`rebuild: true`).
4. Samples (12 shifts, 7 assigned, 2 rosters without a lead): `Week1` (crew Ann, Bob; lead Ann; shifts
   Mon→Ann covered, Tue→Bob, Wed→none, Thu→Ann); `Week2` (crew Cy, Di; no lead; Thu→Di covered,
   Fri→Cy, Sat→none, Sun→none); `Week3` (crew Ed; no lead; Sun→Ed, Mon→none, Tue→Ed covered,
   Wed→none).
5. Sandbox check: 0 errors, 0 warnings. Do not make the sandbox solution (no generator). Close; tar
   `shifts/` with `classes_gen` and the standard excludes.
6. **No publication sign** in the fixture; the prompt states the status.

## Pins

Built 2026-10-31 by the observer through MPS MCP (`FIXTURE.log`, one JSON line per call). Tarball `~/MPSProjects/mcp-study/fixtures/shifts.tar.gz`, sha256 in `../../pins.md`.

- language module `c6379b0c-833a-41f2-9c4e-50ba0b8e60d3(mcp.study.shifts)`, `languageVersion` 0
- sandbox module `f46fe2f0-de14-48d0-ac10-d99441a43fb6(mcp.study.shifts.sandbox)`
- models: structure `r:1d4e6510-3756-4b29-9730-23f451aed18d(mcp.study.shifts.structure)`, editor `r:b20e097f-e8c3-4f06-9b87-be1209efd167(mcp.study.shifts.editor)`, sandbox `mcp.study.shifts.sandbox`
- editor roots: Roster `r:b20e097f-e8c3-4f06-9b87-be1209efd167(mcp.study.shifts.editor)/4092175090843373174`, Shift `r:b20e097f-e8c3-4f06-9b87-be1209efd167(mcp.study.shifts.editor)/4092175090843373215`, Worker `r:b20e097f-e8c3-4f06-9b87-be1209efd167(mcp.study.shifts.editor)/4092175090843373241`

| concept | declaration | feature | featureId | cardinality |
|---|---|---|---|---|
| Roster | `r:1d4e6510-3756-4b29-9730-23f451aed18d(mcp.study.shifts.structure)/4092175090843372288` | lead | `c6379b0c-833a-41f2-9c4e-50ba0b8e60d3/4092175090843372288/4092175090843372293` | 0..1 |
|  |  | crew | `c6379b0c-833a-41f2-9c4e-50ba0b8e60d3/4092175090843372288/4092175090843372291` | 0..n |
|  |  | shifts | `c6379b0c-833a-41f2-9c4e-50ba0b8e60d3/4092175090843372288/4092175090843372292` | 0..n |
| Shift | `r:1d4e6510-3756-4b29-9730-23f451aed18d(mcp.study.shifts.structure)/4092175090843372290` | day | `c6379b0c-833a-41f2-9c4e-50ba0b8e60d3/4092175090843372290/4092175090843372296` |  |
|  |  | covered | `c6379b0c-833a-41f2-9c4e-50ba0b8e60d3/4092175090843372290/4092175090843372297` |  |
|  |  | worker | `c6379b0c-833a-41f2-9c4e-50ba0b8e60d3/4092175090843372290/4092175090843372298` | 0..1 |
| Worker | `r:1d4e6510-3756-4b29-9730-23f451aed18d(mcp.study.shifts.structure)/4092175090843372289` | | | |

Sample nodes (sandbox model above; `role: name` → node id, values, references):

- Week1 `4092175090843401620` refs {"lead": "Ann (4092175090843401621)"}
  - crew: Ann `4092175090843401621`
  - crew: Bob `4092175090843401622`
  - shifts: Shift `4092175090843401623` {"day": "Mon", "covered": "true"} refs {"worker": "Ann (4092175090843401621)"}
  - shifts: Shift `4092175090843401624` {"day": "Tue"} refs {"worker": "Bob (4092175090843401622)"}
  - shifts: Shift `4092175090843401625` {"day": "Wed"}
  - shifts: Shift `4092175090843401626` {"day": "Thu"} refs {"worker": "Ann (4092175090843401621)"}
- Week2 `4092175090843401627`
  - crew: Cy `4092175090843401628`
  - crew: Di `4092175090843401629`
  - shifts: Shift `4092175090843401630` {"day": "Thu", "covered": "true"} refs {"worker": "Di (4092175090843401629)"}
  - shifts: Shift `4092175090843401631` {"day": "Fri"} refs {"worker": "Cy (4092175090843401628)"}
  - shifts: Shift `4092175090843401632` {"day": "Sat"}
  - shifts: Shift `4092175090843401633` {"day": "Sun"}
- Week3 `4092175090843401634`
  - crew: Ed `4092175090843401635`
  - shifts: Shift `4092175090843401636` {"day": "Sun"} refs {"worker": "Ed (4092175090843401635)"}
  - shifts: Shift `4092175090843401637` {"day": "Mon"}
  - shifts: Shift `4092175090843401638` {"day": "Tue", "covered": "true"} refs {"worker": "Ed (4092175090843401635)"}
  - shifts: Shift `4092175090843401639` {"day": "Wed"}
