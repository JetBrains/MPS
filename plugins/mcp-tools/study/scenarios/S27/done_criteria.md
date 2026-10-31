# S27 done criteria (observer, read-only, projectPath = run project dir)

Fixture: `fleet` (`../../fixtures/inputs/s27/FIXTURE.md`). `L` = `mcp.study.fleet`, `S` = the sandbox
model, pins from that file. The APPLY answer is read from the worker transcript (`show_steps.py`), the
only non-MCP read. Pins: the fixture file's *Pins* section (built 2026-10-31). Rehearsed and frozen 2026-10-31 (`runs-s25-s29`).

1. **Old property kept and deprecated.** `get_concept_details(Vehicle, detail: "full")`: a string
   property with the pinned `featureId` of `mileage` (named `mileage_old` or still `mileage`; record),
   `deprecated: "true: since <build>: <comment>"`, non-empty build, comment naming the integer property
   (a skill gate). Fails: the pinned property retyped to integer in place, or deleted.
2. **New property.** An `integer` property with a different `featureId` and `deprecated: "false"`.
   `plate` and `services` untouched (pinned ids).
3. **Editor.** `print_node` PLAIN TEXT of the Vehicle editor: a cell for the integer property, none for
   the deprecated one.
4. **Migration script.** `mcp.study.fleet.migration` holds one or more class-based `MigrationScript`s
   (`languageVersion` grows by their number) and no declarative script that touches `mileage`
   (a move cannot convert). In the script that converts (`print_node` PLAIN TEXT and JSON `deep: true`):
   `execute` sweeps `Vehicle` instances, writes the integer property and clears the deprecated one for
   converted values; `check` is a real method (no `<no result checking>` placeholder) that returns, for
   every vehicle still holding an unconvertible text, a problem whose message contains that text: a
   `MigrateManually` creator whose message includes the old value, or any other problem built with such
   a message (record the kind). A `check` that reports only the member variant
   (`DeprecatedConceptMemberNotMigratedProblem`, whose message does not show the value) fails.
   `check_root_node_problems` on the script: 0 errors; `Raw use of parameterized class 'Problem'` and
   deprecated-usage warnings expected.
5. **Version and apply.** `languageVersion` = pin + number of scripts; the sandbox module's recorded
   version of `L` (`get_project_structure` with the pinned sandbox module reference, `includeDependencies: true`, `usedLanguages[].version`) equals it; `mps_mcp_run_migrations(operation: "CHECK", modules: [<pinned sandbox module reference>])` (the key is `modules`; an unknown key is ignored and the answer comes back unscoped): nothing pending owned by `L`.
   Transcript: **the APPLY that applied the conversion script** (not a later confirming call, which
   answers `NOTHING_TO_DO`) answered `status: "FINISHED_WITH_ERRORS"` with an `error.problems[]` entry
   whose `message` contains `twelve thousand` and whose `path` is V-3's pinned node, and no entry for
   V-1, V-2, V-4 or V-5. A `FINISHED` with no problems fails (V-3 was dropped or invented).
6. **Values.** `print_node` JSON of the five pinned ids (ids unchanged): V-1 integer 12000, deprecated
   property empty; V-2 8500 / empty; V-5 150 / empty; V-4 both empty; V-3 integer empty, deprecated
   property `twelve thousand`. An empty integer prints as absent or `""`; both are accepted. Services
   and plates unchanged.
7. **Checks.** `check_root_node_problems(S)`: 0 errors, 0 warnings (a value in a deprecated property
   gets no checker message, which is why 5 insists on the report). `L.structure`, `L.editor`,
   `L.migration`: 0 errors. No hollow descriptor.

Pass = 1–7. Record: the `build` string, the problem kind used in `check`, whether the worker tested
the migration on a copy first. A worker that converts `twelve thousand` by a word parser fails 5 and 6
(step 1 defines convertibility).

Process signals (`MG_*` columns of `families.py`): `MG_deprecate_calls` 1, `MG_class_scripts` ≥ 1,
`MG_pure_scripts` 0, `MG_check_method_writes` ≥ 1, `MG_migrate_manually_writes` ≥ 1 (0 on a pass means
another value-naming problem; record), `MG_structure_deletes` 0, `MG_sync_version` ≥ 1,
`MG_run_check` ≥ 1, `MG_run_apply` 1–2, `MG_apply_with_errors` ≥ 1, `MG_mps_migration_dumps` low
(hunting the `check` ids the skill supplies), `MG_console_runs` 0, `M_makes` 2–4.

Confirmed by `runs-s25-s29`: the sandbox's version stamp moves although APPLY ends `FINISHED_WITH_ERRORS`, and the
problem's `path` is the node (`pathKind` node). That ` 8500 ` keeps its spaces is a fixture-build fact (`FIXTURE.md` pins).
