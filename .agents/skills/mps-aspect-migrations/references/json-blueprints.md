# Verified Migration JSON Blueprints

Real, verified examples copied from the codebase. Use as starting templates for `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`.

> **`MigrationScript` only: the insert runs a node factory that sets `fromVersion` and bumps the language. `PureMigrationScript` has no factory — set `fromVersion` yourself and sync the version.**
>
> `MigrationScript` is an `AutoInitDSLClass`, so creating one — through the editor, through `mps_mcp_create_root_node`, *or* through `mps_mcp_insert_root_node_from_json` / `mps_mcp_update_node` — fires a factory that sets `fromVersion` to the language's current version, bumps the language version by 1, and wires the script's `superclass`.
>
> For a **`MigrationScript`**:
>
> - **Omit `fromVersion`** and let the factory fill it. A `fromVersion` in the blueprint *overrides* the factory's value (properties are applied after the factory runs), which is what you want only when reproducing an existing script verbatim — as the examples below do.
> - **Omit the `superclass` role** unless you mean to replace it. Roles the blueprint names are cleared before its children are added; roles it omits keep what the factory put there.
> - The factory's version block is guarded by `SModuleOperations.isAspect(futureModel, "migration")`. Insert into the language's real `migration` aspect model, or you get neither `fromVersion` nor the bump, with nothing reported.
>
> For a **`PureMigrationScript`** none of that applies — the concept is not an `AutoInitDSLClass` and the migration language registers no factory for it. Call `mps_mcp_update_module(moduleName = "<language>", operation = "SYNC_VERSION")` first, set the `languageVersion` it returns as `fromVersion` in the blueprint, insert, then call `SYNC_VERSION` again. `lang.script` Enhancement Scripts have no factory either, and are not migration units, so they neither carry this `fromVersion` nor affect the synced version.
>
> Either way, **verify rather than assume**: `SYNC_VERSION` is idempotent, so calling it after a `MigrationScript` insert is harmless — it should report `changed: false` and an empty `migrationProblems`; a script listed as "does not have version" means its factory never ran. A factory that *throws* is reported in the response's `warnings`, but a lightweight-DSL initializer that fails internally is swallowed and reaches only `idea.log`, so a clean envelope is not proof the initialization ran. See [form-selection.md](form-selection.md) for the two different version numbers involved.

## `MigrationScript` (lang.migration) — `MigrateReferences`

Source: `r:bfbc3842-c5ca-4fa2-826a-4befb946143a(references.migration)`.

```json
{
  "concept": "MigrationScript",
  "conceptReference": "c:90746344-04fd-4286-97d5-b46ae6a81709/8352104482584315555:jetbrains.mps.lang.migration.structure.MigrationScript",
  "reference": "r:bfbc3842-c5ca-4fa2-826a-4befb946143a(references.migration)/1233082194732574769",
  "properties": [
    {"name": "fromVersion", "value": "0"},
    {"name": "name", "value": "MigrateReferences"},
    {"name": "isStatic", "value": "true"},
    {"name": "nestedName", "value": "MigrateReferences"},
    {"name": "resolveInfo", "value": "MigrateReferences"}
  ],
  "children": [
    {
      "role": "member",
      "nodes": [
        {
          "concept": "MemberPlaceholder",
          "name": "execute after",
          "properties": [{"name": "caption", "value": "<no execute after>"}]
        },
        {
          "concept": "MemberPlaceholder",
          "name": "requires data",
          "properties": [{"name": "caption", "value": "<no required data>"}]
        },
        {
          "concept": "MemberPlaceholder",
          "name": "produces data",
          "properties": [{"name": "caption", "value": "<no produced data>"}]
        },
        {
          "concept": "StringPropertyInstance",
          "name": "description",
          "properties": [{"name": "value", "value": "migrate the references using a TransformStatement"}]
        }
      ]
    }
  ]
}
```

This example has no ordering or data-exchange declarations (all placeholders are empty). The actual migration logic lives in the auto-generated `execute()` BL method body.

## `PureMigrationScript` — `SNodeTypeCastExpression_completelyRemoved`

A script with no `part` children — used when a concept was deleted with no replacement. It just bumps the version.

Source: `r:18ddb7a1-bae8-47e8-a653-f672ff99522d(jetbrains.mps.lang.smodel.migration)`.

```json
{
  "concept": "PureMigrationScript",
  "conceptReference": "c:90746344-04fd-4286-97d5-b46ae6a81709/7431903976166443707:jetbrains.mps.lang.migration.structure.PureMigrationScript",
  "reference": "r:18ddb7a1-bae8-47e8-a653-f672ff99522d(jetbrains.mps.lang.smodel.migration)/6733348108486823194",
  "properties": [
    {"name": "fromVersion", "value": "2"},
    {"name": "name", "value": "SNodeTypeCastExpression_completelyRemoved"}
  ],
  "references": [],
  "children": []
}
```

## `PureMigrationScript` with `MoveNodeMigrationPart` — `Migrate_ParametrizedIntentions`

Migrates all nodes of concept `ParameterizedDescriptionBlock` to `DescriptionBlock`. Each `MoveNodeMigrationPart` declares `fromNode` (source concept reference) and `toNode` (destination concept reference), and `specialization` refines which sub-concept or link is being moved.

Source: `r:60b33951-511d-44e5-9c55-248ae53edb1e(jetbrains.mps.lang.intentions.migration)`.

```json
{
  "concept": "PureMigrationScript",
  "reference": "r:60b33951-511d-44e5-9c55-248ae53edb1e(jetbrains.mps.lang.intentions.migration)/3982593663455826321",
  "properties": [
    {"name": "fromVersion", "value": "0"},
    {"name": "name", "value": "Migrate_ParametrizedIntentions"}
  ],
  "children": [
    {
      "role": "part",
      "nodes": [
        {
          "concept": "MoveNodeMigrationPart",
          "reference": "r:.../3982593663455826332",
          "children": [
            {
              "role": "fromNode",
              "nodes": [{"concept": "DirectNodeReference", "references": [{"role": "target", "target": "ParameterizedDescriptionBlock", "targetReference": "r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)/1812109616120608865"}]}]
            },
            {
              "role": "toNode",
              "nodes": [{"concept": "DirectNodeReference", "references": [{"role": "target", "target": "DescriptionBlock", "targetReference": "r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)/1192794782375"}]}]
            },
            {
              "role": "specialization",
              "nodes": [{
                "concept": "MoveConcept",
                "children": [
                  {"role": "sourceId", "nodes": [{"concept": "ConceptId", "properties": [{"name": "conceptId", "value": "drmr8x8qf04h"}, {"name": "conceptName", "value": "ParameterizedDescriptionBlock"}], "children": [{"role": "languageIdentity", "nodes": [{"concept": "LanguageId", "properties": [{"name": "namespace", "value": "jetbrains.mps.lang.intentions"}, {"name": "languageId", "value": "d7a92d38-f7db-40d0-8431-763b0c3c9f20"}]}]}]}]},
                  {"role": "targetId", "nodes": [{"concept": "ConceptId", "properties": [{"name": "conceptId", "value": "f7yn7sfb"}, {"name": "conceptName", "value": "DescriptionBlock"}], "children": [{"role": "languageIdentity", "nodes": [{"concept": "LanguageId", "properties": [{"name": "namespace", "value": "jetbrains.mps.lang.intentions"}, {"name": "languageId", "value": "d7a92d38-f7db-40d0-8431-763b0c3c9f20"}]}]}]}]}
                ]
              }]
            }
          ]
        }
      ]
    }
  ]
}
```
