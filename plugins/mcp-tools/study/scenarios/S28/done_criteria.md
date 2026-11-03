# S28 done criteria (observer, read-only, projectPath = run project dir)

Fixture: `shifts` (`../../fixtures/inputs/s28/FIXTURE.md`). `L` = `mcp.study.shifts`, `S` = the sandbox
model, pins from that file. Pins: the fixture file's *Pins* section (built 2026-10-31). Rehearsed and frozen 2026-10-31 (`runs-s25-s29`).
Observer fact (2026-10-31): a value left under a deleted property or link reports as an error
(`… does not belong to the concept …`), and `print_node` JSON shows it with `declared:false`.

1. **Structure, nothing left over.** `get_concept_details(Shift, detail: "full")`: a child role `[0..n]`
   (any name) whose target has exactly one mandatory reference to `Worker` and no own properties or
   children (`IS_SMART_REFERENCE` true expected; recorded if false; an alias on it is recorded);
   property `date` with the pinned `featureId` of `day`; **no** reference link (neither the pinned
   `worker` nor a `worker_old`); no `covered` / `covered_old`; `deprecated: "false"` on every own feature of
   every concept of `L` (inherited `BaseConcept` features do not count). `get_concept_details(Roster)`: `lead` mandatory **with the pinned `featureId`**.
   A new `lead` next to a deprecated `lead_old` fails: that is the published route applied to a local
   language.
2. **No migration machinery: the over-application guard.** `get_project_structure(startingPoint: L)`:
   no `mcp.study.shifts.migration` model and `languageVersion` equal to the pin. `mps_mcp_run_migrations(operation: "CHECK", modules: [<pinned sandbox module reference>])`: nothing pending owned by `L`.
3. **Values.** `print_node` JSON of the 12 pinned shift ids (ids unchanged): the seven assigned shifts
   each hold exactly one wrapper whose reference resolves to the pinned worker; the five others hold
   none; `date` values unchanged; no `declared:false` entry (no orphan `covered` or `worker` value).
   Rosters: `lead` resolves to Ann (pinned), Cy (first of Week2's crew), Ed. Exactly 7 wrappers in all, and no Worker nodes
   outside the 5 pinned ones.
4. **Editor.** `print_node` PLAIN TEXT of the Shift editor: a cell for the new list and for `date`; no
   cell for the removed reference or `covered`.
5. **Checks.** `check_root_node_problems(S)`: 0 errors on every root (an orphan value under a deleted
   feature is an error). `L.structure`, `L.editor`: 0 errors. No hollow descriptor.
6. **Route, from the transcript.** At least two Console runs (`run_console_command`), at least one of
   them a command that writes (its inserted blueprint holds a `VisitAllOperation`, an
   `AssignmentExpression`, or a list add operation), and at most 2 accepted node writes on sandbox
   roots. A worker that migrated the shifts by node edits fails (the prompt forbids it).

Pass = 1–6. Errors: `does not belong to the concept` and the obligatory-role messages. Record: whether
the replaced reference was deprecated before its deletion (the skill's local route does so; the end
state cannot tell), whether the reference value was cleared in the copy command, whether `covered` was
cleared before deleting it, and the query that showed the old slot empty.

Process signals (`MG_*` columns of `families.py`): `MG_console_runs` 2–5, `MG_console_write_cmds` ≥ 2,
`MG_sandbox_node_writes` ≤ 2, `MG_structure_deletes` 2 (the only cell where > 0 is right),
`MG_tighten_in_place` 1 (`lead`), `MG_deprecate_calls` 0–1 (recorded), `MG_pure_scripts` 0,
`MG_class_scripts` 0, `MG_migration_models` 0, `MG_sync_version` 0, `MG_run_apply` 0, `M_makes` 2–4.
