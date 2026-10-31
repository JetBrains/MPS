# S25 done criteria (observer, read-only, projectPath = run project dir)

Fixture: `loans` (`../../fixtures/inputs/s25/FIXTURE.md`). `L` = `mcp.study.loans`, `S` = the sandbox
model. Pins (feature ids, node ids, `languageVersion` 0, editor root ids) come from that file.
Calls through `mcp_call.py`. Pins: the fixture file's *Pins* section (built 2026-10-31). Rehearsed and frozen 2026-10-31 (`runs-s25-s29`).

1. **Controls (steps 1, 2): no migration machinery.** `get_concept_details(Loan, detail: "full")`:
   property `remark` with the pinned `featureId` of `memo`; no `memo`, no `memo_old`, no deprecated
   property. Child `desk` `[0..1]`, target `Desk`, pinned `featureId` kept. Neither carries a
   `deprecated` entry. A delete-and-recreate (new `featureId`) fails. Recorded, not gated: whether
   the Loan editor's constant label still says `memo`.
2. **Old roles kept and deprecated (steps 3, 4): the under-application guard.** `get_concept_details`
   full: a child role with the pinned `featureId` of `copies`, still `[0..n]`, target `Copy`, and
   `deprecated: "true: since <build>: <comment>"` with a non-empty build and a comment that names the
   replacement; the same for the pinned `borrower` link, still optional. The annotation is a skill
   gate (the prompt does not ask for it). Accepted names: the old role renamed with `_old` and the
   replacement under the original or a new name, or the old role keeping its name and the replacement
   under a new one (record which). Fails: the pinned feature made mandatory in place, deleted, or
   retargeted.
3. **Replacements.** A child role of `Copy` `[1..n]` and a mandatory reference to `Member`, both with
   `featureId`s other than the pinned ones and `deprecated: "false"`.
4. **Editor switch.** `get_project_structure(startingPoint: L.editor, includeRootNodes: true)`, then
   `print_node(PLAIN TEXT)` of the Loan editor: a cell for the new copies role and one for the new
   borrower link; no cell for the deprecated roles. Any layout, scaffold-like included.
5. **Migration.** `get_project_structure(startingPoint: "mcp.study.loans.migration",
   includeRootNodes: true)`: one or two migration roots. `print_node` JSON `deep: true` on each: every
   part moves from a deprecated declaration (pinned id) to its replacement; the child move carries a
   containment-link specialization, the reference move a reference-link one. One script or one each
   (record); empty id children print as `<no sourceId> -> <no targetId>`, the expected id-free form. A class-based script that moves the same values is accepted and recorded; criterion 7
   decides. The migration model checks with 0 errors; deprecated-usage warnings are expected.
6. **Version and apply.** `get_project_structure(startingPoint: L)`: `languageVersion` = pin + number
   of scripts. `get_project_structure(startingPoint: <sandbox module>, includeDependencies: true)`: the
   sandbox's recorded version of `mcp.study.loans` equals it. `mps_mcp_run_migrations(operation:
   "CHECK", modules: [<pinned sandbox module reference>])` (the key is `modules`; an unknown key is ignored and the answer comes back unscoped): no pending language migration owned by `mcp.study.loans`
   (unrelated project-wide entries are recorded, not failed).
7. **Values.** `print_node` JSON of L-1, L-2, L-3-hold (pinned ids, unchanged): L-1 holds `BC-100` and
   `BC-101` (pinned copy ids, in that order) under the new role, its new borrower link resolves to
   Ada's pinned id, `remark` `gift`, `renewals` 1, nothing under the deprecated roles; L-2 likewise
   (`BC-200`, Bo, 0); L-3-hold has no copy and no borrower anywhere, `remark` `waiting for pickup`.
   Any Copy or Member node outside the pins fails (invented data).
8. **Checks.** `check_root_node_problems(S)`: L-1, L-2, Ada, Bo 0 errors; L-3-hold exactly two errors,
   `No child in the obligatory role` and `No reference in the obligatory role`. `check_root_node_problems`
   on `L.structure` and `L.editor`: 0 errors. No hollow descriptor in `get_concept_details(languageRefs: L)`.

Pass = 1–8. Errors: the two obligatory-role messages. Warnings, not failures: deprecated usages and
`Raw use of parameterized class` on the migration script. Record: the migration form, the naming
choice, the `build` string, whether the worker counted instances before deciding.

Process signals (`MG_*` columns of `families.py`, `../../instructions/analysis.md`): `MG_deprecate_calls` 2,
`MG_structure_deletes` 0, `MG_tighten_in_place` 0, `MG_pure_scripts` 1–2 and `MG_class_scripts` 0
(recorded), `MG_move_child` 1, `MG_move_ref` 1, `MG_sync_version` ≥ 1, `MG_run_check` ≥ 1,
`MG_run_apply` 1, `MG_runtime_stale_hits` ≤ 1 (a SYNC_VERSION before the MAKE reports it by design), `MG_console_runs` 0, `M_makes` 2–4; `G_errors` from a wrong
declaration reference of the new link right after `UPDATE_CONCEPT_CHILD` (its answer is only `true`).
