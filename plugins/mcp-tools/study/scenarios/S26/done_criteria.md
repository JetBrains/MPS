# S26 done criteria (observer, read-only, projectPath = run project dir)

Fixture: `tickets` (`../../fixtures/inputs/s26/FIXTURE.md`). `L` = `mcp.study.tickets`, `S` = the
sandbox model, pins from that file. Pins: the fixture file's *Pins* section (built 2026-10-31). Rehearsed and frozen 2026-10-31 (`runs-s25-s29`).
The code-free route the prompt demands (`MoveConcept` plus one `MoveProperty` per own property, empty
id children, `DirectNodeReference`s to a different-id concept) was verified by the observer on
2026-10-31: values, node ids and an incoming reference survived and the model checked clean.

1. **New concept.** `get_concept_details(TimedDiscount, detail: "full")`: extends `Perk`, not
   abstract, properties `cutoffDays` integer, `percent` integer, `label` string, `deprecated: "false"`.
   An editor root for it in `L.editor` (`print_node` PLAIN TEXT: cells for the three properties and the
   name; a scaffold is accepted and recorded).
2. **Old concept kept and deprecated: the under-application guard.** `get_concept_details(EarlyBird,
   detail: "full")` (pinned declaration id): present, extends `Perk`, **not abstract**, `cutoffDays`
   and `percent` with their pinned `featureId`s, `deprecated: "true: since <build>: <comment>"` with a
   non-empty build and a comment naming `TimedDiscount` (a skill gate). Fails: EarlyBird deleted, made
   abstract, given a `can be child` / `can be parent` constraint (print the `L.constraints` roots), or
   its properties deleted. Recorded, not gated: its `virtualPackage` (`deprecated` expected) and
   whether it was renamed.
3. **Hidden from completion.** In `L.editor`, a root of concept `SubstituteMenu` whose
   `conceptDeclaration` is the pinned EarlyBird id, whose `type` child is a `MenuTypeDefault`, and that
   has no `parts` (`print_node` JSON, `deep: true`); a single `SubstituteMenuPart_Subconcepts` part is
   also accepted. A root of the deprecated `SubstituteMenu_Default` concept fails this item.
4. **Migration, code-free.** `mcp.study.tickets.migration` holds exactly one migration root, a
   `PureMigrationScript` (`print_node` JSON `deep: true`) with one concept move from the pinned EarlyBird
   declaration to TimedDiscount and one property move per own property (`cutoffDays` → `cutoffDays`,
   `percent` → `percent`). Id children left empty, or filled with ids resolving to the same
   declarations (recorded). A class-based migration script in the model fails (prompt step 2). The
   migration model: 0 errors; deprecated-usage warnings expected.
5. **Version and apply.** `languageVersion` = pin + 1; the sandbox module's recorded version of `L`
   (`get_project_structure` with the pinned sandbox module reference, `includeDependencies: true`) equals it; `mps_mcp_run_migrations(operation: "CHECK", modules: [<pinned sandbox module reference>])` (the key is `modules`; an unknown key is ignored and the answer comes back unscoped): nothing pending owned by `L`.
6. **Instances migrated with their ids.** `query_nodes FIND_INSTANCES` `EarlyBird` `detail: "count"`
   in `S`: 0. `TimedDiscount`: 3. `print_node` JSON of the three pinned ids: each is a `TimedDiscount`
   **with its pinned node id**, `name`, `cutoffDays` and `percent` as in the fixture, `label` empty, no
   value left under the pinned EarlyBird property ids (an orphan shows as `declared:false`). `vip`
   unchanged; both event ids unchanged; perks in fixture order.
7. **References.** `print_node` JSON of the pinned highlight PerkRef: `perk` `targetReference` is the
   pinned `early7` id and resolves.
8. **Checks.** `check_root_node_problems(S)`: 0 errors and no `is an instance of deprecated concept`
   warning; `L.structure`, `L.editor`, `L.migration`: 0 errors. No hollow descriptor.

Pass = 1–8. `is an instance of deprecated concept` is a warning (it would only show that 6 failed);
deprecated-usage warnings on the migration are not errors. Record: the `build` string, part order, the
virtual package, extra deprecations (of `Perk`, `PerkRef`, `Backstage`: over-application).

Process signals (planned `MG_*` columns): `MG_deprecate_calls` 1, `MG_virtual_package_writes` 1
(recorded), `MG_substitute_menu_writes` 1, `MG_substitute_menu_legacy` 0, `MG_pure_scripts` 1,
`MG_class_scripts` 0, `MG_move_concept` 1, `MG_move_prop` 2, `MG_set_id_writes` 0,
`MG_structure_deletes` 0, `MG_sync_version` ≥ 1, `MG_run_check` ≥ 1, `MG_run_apply` 1,
`MG_runtime_stale_hits` ≤ 1 (a SYNC_VERSION before the MAKE reports it by design), `M_makes` 2–3.
