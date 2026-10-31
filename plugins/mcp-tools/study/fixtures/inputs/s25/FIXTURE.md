# `loans` fixture (S25, S29)

**Status: built 2026-10-31.** Build through MPS MCP only, logging every call to
`FIXTURE.log`, and fill *Pins* below; record the tarball's sha256 in [`../../pins.md`](../../pins.md).
A rebuild mints new ids: re-pin here and in `../../../scenarios/S25/done_criteria.md` /
`../../../scenarios/S29/done_criteria.md`.

Fresh domain on purpose: the skill's own worked examples (`items_old`/`lineItems`, `Coupon`/
`PercentDiscount`, `owner_old`/`PersonRef`, `discount_old`) must not be the measured answer (lesson 19).

Start from a synthesized empty project opened alone.

1. `mps_mcp_create_module` language `mcp.study.loans` (`<proj>/languages/mcp.study.loans`, `withSandbox: true`, no generator): the
   sandbox solution and model `mcp.study.loans.sandbox` come with it and already use the language.
2. `mps_mcp_alter_structure` CREATE_CONCEPTS (one call, `make: true`):
   `Member` (root, INamedConcept, alias `member`; `email: string`); `Desk` (not root; `code: string`);
   `Copy` (not root; `barcode: string`; `days: integer`); `Loan` (root, INamedConcept, alias `loan`;
   `memo: string`; `renewals: integer`; reference `borrower -> Member` optional; children
   `copies: Copy [0..n]`, `desk: Desk [1]`).
3. `mps_mcp_scaffold_editor` for Loan, Copy, Member, Desk; MAKE the language (`rebuild: true`).
4. Samples (`insert_root_node_from_json`, after the MAKE so the concepts are in the runtime): Members
   `Ada` (`ada@example.org`), `Bo` (`bo@example.org`); Loans `L-1` (memo `gift`, renewals 1, borrower Ada,
   copies `BC-100`/14 and `BC-101`/7, desk `MAIN`), `L-2` (no memo, renewals 0, borrower Bo, copy
   `BC-200`/21, desk `EAST`), `L-3-hold` (memo `waiting for pickup`, renewals 0, no borrower, no copies,
   desk `MAIN`).
5. `check_root_node_problems` on the sandbox model: 0 errors, 0 warnings. The language has no
   generator, so do not make the sandbox solution. Close the project; tar `loans/` with `classes_gen`
   and the standard excludes.
6. **No publication sign**: no `BuildProject`, nothing read-only. S29 relies on it.

## Pins

Built 2026-10-31 by the observer through MPS MCP (`FIXTURE.log`, one JSON line per call). Tarball `~/MPSProjects/mcp-study/fixtures/loans.tar.gz`, sha256 in `../../pins.md`.

- language module `2eea0bcb-3d4d-45b9-996e-7a202cfd668c(mcp.study.loans)`, `languageVersion` 0
- sandbox module `00a9203e-223b-4ab0-969a-43103d1c65f6(mcp.study.loans.sandbox)`
- models: structure `r:56db99e2-d59d-4eb3-80e9-66a7a5c136d2(mcp.study.loans.structure)`, editor `r:16b75c9a-e45d-47b0-80ad-310b81fd7511(mcp.study.loans.editor)`, sandbox `mcp.study.loans.sandbox`
- editor roots: Loan `r:16b75c9a-e45d-47b0-80ad-310b81fd7511(mcp.study.loans.editor)/4092175090843233540`, Copy `r:16b75c9a-e45d-47b0-80ad-310b81fd7511(mcp.study.loans.editor)/4092175090843233583`, Member `r:16b75c9a-e45d-47b0-80ad-310b81fd7511(mcp.study.loans.editor)/4092175090843233596`, Desk `r:16b75c9a-e45d-47b0-80ad-310b81fd7511(mcp.study.loans.editor)/4092175090843233609`

| concept | declaration | feature | featureId | cardinality |
|---|---|---|---|---|
| Copy | `r:56db99e2-d59d-4eb3-80e9-66a7a5c136d2(mcp.study.loans.structure)/4092175090843187262` | barcode | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187262/4092175090843187267` |  |
|  |  | days | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187262/4092175090843187268` |  |
| Desk | `r:56db99e2-d59d-4eb3-80e9-66a7a5c136d2(mcp.study.loans.structure)/4092175090843187261` | code | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187261/4092175090843187266` |  |
| Loan | `r:56db99e2-d59d-4eb3-80e9-66a7a5c136d2(mcp.study.loans.structure)/4092175090843187263` | memo | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187263/4092175090843187269` |  |
|  |  | renewals | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187263/4092175090843187270` |  |
|  |  | borrower | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187263/4092175090843187273` | 0..1 |
|  |  | copies | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187263/4092175090843187271` | 0..n |
|  |  | desk | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187263/4092175090843187272` | 1 |
| Member | `r:56db99e2-d59d-4eb3-80e9-66a7a5c136d2(mcp.study.loans.structure)/4092175090843187260` | email | `2eea0bcb-3d4d-45b9-996e-7a202cfd668c/4092175090843187260/4092175090843187264` |  |

Sample nodes (sandbox model above; `role: name` → node id, values, references):

- Ada `4092175090843310402` {"email": "ada@example.org"}
- Bo `4092175090843310403` {"email": "bo@example.org"}
- L-1 `4092175090843310404` {"memo": "gift", "renewals": "1"} refs {"borrower": "Ada (4092175090843310402)"}
  - copies: Copy `4092175090843310405` {"barcode": "BC-100", "days": "14"}
  - copies: Copy `4092175090843310406` {"barcode": "BC-101", "days": "7"}
  - desk: Desk `4092175090843310407` {"code": "MAIN"}
- L-2 `4092175090843310408` {"renewals": "0"} refs {"borrower": "Bo (4092175090843310403)"}
  - copies: Copy `4092175090843310409` {"barcode": "BC-200", "days": "21"}
  - desk: Desk `4092175090843310410` {"code": "EAST"}
- L-3-hold `4092175090843310411` {"memo": "waiting for pickup", "renewals": "0"}
  - desk: Desk `4092175090843310412` {"code": "MAIN"}
