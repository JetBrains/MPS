# `fleet` fixture (S27)

**Status: built 2026-10-31.** Build through MPS MCP only, logging every call to
`FIXTURE.log`, fill *Pins*, and record the sha256 in [`../../pins.md`](../../pins.md). A rebuild mints
new ids: re-pin here and in `../../../scenarios/S27/done_criteria.md`.

Start from a synthesized empty project opened alone.

1. `mps_mcp_create_module` language `mcp.study.fleet` (`<proj>/languages/mcp.study.fleet`, `withSandbox: true`, no generator): the
   sandbox solution and model `mcp.study.fleet.sandbox` come with it and already use the language.
2. `mps_mcp_alter_structure` CREATE_CONCEPTS (`make: true`): `Vehicle` (root, INamedConcept, alias
   `vehicle`; `plate: string`; `mileage: string`; child `services: Service [0..n]`); `Service`
   (`what: string`; `cost: integer`).
3. `mps_mcp_scaffold_editor` for Vehicle and Service; MAKE the language (`rebuild: true`).
4. Samples: `V-1` (plate `AB-123`, mileage `12000 km`, service `oil`/80); `V-2` (`CD-456`, ` 8500 `);
   `V-3` (`EF-789`, `twelve thousand`); `V-4` (`GH-012`, no mileage); `V-5` (`IJ-345`, `150km`). Print
   V-2 and confirm the leading and trailing spaces survived.
5. Sandbox check: 0 errors, 0 warnings. Do not make the sandbox solution (no generator). Close; tar
   `fleet/` with `classes_gen` and the standard excludes.

## Pins

Built 2026-10-31 by the observer through MPS MCP (`FIXTURE.log`, one JSON line per call). Tarball `~/MPSProjects/mcp-study/fixtures/fleet.tar.gz`, sha256 in `../../pins.md`.

- language module `4018893d-2bbb-4736-ab1d-785480455cec(mcp.study.fleet)`, `languageVersion` 0
- sandbox module `455dc339-49c4-4802-bd41-96b1bceb01a2(mcp.study.fleet.sandbox)`
- models: structure `r:d68f9b05-2176-4909-9538-edbf5c269f1f(mcp.study.fleet.structure)`, editor `r:b872f08b-b1f3-4223-8b7f-0d3b176cf85b(mcp.study.fleet.editor)`, sandbox `mcp.study.fleet.sandbox`
- editor roots: Vehicle `r:b872f08b-b1f3-4223-8b7f-0d3b176cf85b(mcp.study.fleet.editor)/4092175090843353821`, Service `r:b872f08b-b1f3-4223-8b7f-0d3b176cf85b(mcp.study.fleet.editor)/4092175090843353846`

| concept | declaration | feature | featureId | cardinality |
|---|---|---|---|---|
| Service | `r:d68f9b05-2176-4909-9538-edbf5c269f1f(mcp.study.fleet.structure)/4092175090843353068` | what | `4018893d-2bbb-4736-ab1d-785480455cec/4092175090843353068/4092175090843353073` |  |
|  |  | cost | `4018893d-2bbb-4736-ab1d-785480455cec/4092175090843353068/4092175090843353074` |  |
| Vehicle | `r:d68f9b05-2176-4909-9538-edbf5c269f1f(mcp.study.fleet.structure)/4092175090843353067` | plate | `4018893d-2bbb-4736-ab1d-785480455cec/4092175090843353067/4092175090843353069` |  |
|  |  | mileage | `4018893d-2bbb-4736-ab1d-785480455cec/4092175090843353067/4092175090843353070` |  |
|  |  | services | `4018893d-2bbb-4736-ab1d-785480455cec/4092175090843353067/4092175090843353071` | 0..n |

Sample nodes (sandbox model above; `role: name` → node id, values, references):

- V-1 `4092175090843372282` {"plate": "AB-123", "mileage": "12000 km"}
  - services: Service `4092175090843372283` {"what": "oil", "cost": "80"}
- V-2 `4092175090843372284` {"plate": "CD-456", "mileage": " 8500 "}
- V-3 `4092175090843372285` {"plate": "EF-789", "mileage": "twelve thousand"}
- V-4 `4092175090843372286` {"plate": "GH-012"}
- V-5 `4092175090843372287` {"plate": "IJ-345", "mileage": "150km"}
