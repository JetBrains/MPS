# S29 done criteria (observer, read-only, projectPath = run project dir)

Fixture: `loans`, S25's tarball unchanged (`../../fixtures/inputs/s25/FIXTURE.md`); it carries no
publication sign. The prompt says nothing about who uses the language and that nobody can answer
questions, so the skill's default applies: a language is published unless the user or the task says
it is local (seeing every instance in the project is no such statement). Pins: the fixture file's *Pins* section (built 2026-10-31). Rehearsed and frozen 2026-10-31 (`runs-s25-s29`).

1. **Control.** `get_concept_details(Copy, detail: "full")`: property `loanDays` with the pinned
   `featureId` of `days`; no `days`, no deprecated property; the three pinned copies keep 14, 7, 21 and
   their ids.
2. **Published route taken: the classification gate.** `get_concept_details(Loan, detail: "full")`:
   the link with the pinned `borrower` featureId still present (identify it by id: it may now be named `borrower_old`) and still optional, and a second, mandatory reference to
   `Member` with a new `featureId`. The deprecation annotation on the old link is recorded
   (`published-no-annotation` when missing), not gated, so this item measures the classification
   only. Fails, with the outcome class recorded:
   - `in-place`: the pinned link made mandatory, no second link, no migration model;
   - `console`: the pinned link deleted or kept while the values were moved by Console commands;
   - `asked`: no structural change and a final message asking who uses the language.
3. **Migration.** `mcp.study.loans.migration` with one migration root whose part moves from the pinned
   `borrower` declaration to the new link with a reference-link specialization (empty id children print as
   `<no sourceId> -> <no targetId>`, the expected form; a class-based script doing the same is accepted, recorded); `languageVersion` = pin + number of scripts; the sandbox
   module's recorded version (`get_project_structure` with the pinned sandbox module reference, `includeDependencies: true`) equals it; `mps_mcp_run_migrations(operation: "CHECK", modules: [<pinned sandbox module reference>])` (the key is `modules`; an unknown key is ignored and the answer comes back unscoped): nothing pending
   owned by the language. Migration model 0 errors (deprecated-usage warnings expected).
4. **Editor.** Loan editor (`print_node` PLAIN TEXT): a cell for the new link, none for the old one.
5. **Values and checks** (scored only when criterion 2 passes; an `in-place` run fails once, at 2). `print_node` JSON
   (the old link prints under its role name, typically `borrower_old`, the new one as `borrower`): L-1's new link resolves to Ada's pinned id, L-2's to Bo's,
   nothing under the pinned old link; L-3-hold has no borrower anywhere; loan ids unchanged; no Member
   node outside the pins. `check_root_node_problems(S)`: L-1, L-2, Ada, Bo 0 errors; L-3-hold exactly
   one error, `No reference in the obligatory role`. Structure and editor models 0 errors; no hollow
   descriptor.

Pass = 1–5. Errors vs warnings as in S25. Record: the outcome class even on a pass (`published`), the
`build` string, the migration form, and whether the final message says it assumed the language is
published (intended, not gated).

Evaluator label `MG_status_outcome`: `published` (criterion 2's outcome class). Process signals (`MG_*` columns of
`families.py`): `MG_deprecate_calls` 1, `MG_tighten_in_place` 0, `MG_structure_deletes` 0, `MG_console_runs` 0,
`MG_pure_scripts` + `MG_class_scripts` 1, `MG_move_ref` 1, `MG_sync_version` ≥ 1, `MG_run_check` ≥ 1,
`MG_run_apply` 1, `MG_publication_probe` recorded, `M_makes` 2–3. Run it in the same round as S25 and
compare the outcome only; its call totals are not a skill-cost measure.
