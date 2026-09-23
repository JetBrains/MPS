# Verified Migration JSON Blueprints

Real, verified examples copied from the codebase. Use as starting templates for `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`.

> **`insert_root_node_from_json` does not run node factories.** `MigrationScript` is an `AutoInitDSLClass`, so creating one *through the editor or through `mps_mcp_create_root_node`* fires a factory that sets `fromVersion` to the language's current version and bumps the language version for you. The JSON-blueprint insert path bypasses that factory entirely and silently — nothing is reported. When inserting a migration script from a blueprint you must therefore do both by hand:
>
> 1. put an explicit `fromVersion` property in the blueprint (the language's version *before* the bump), and
> 2. bump the language separately with `mps_mcp_update_module(moduleName = "<language>", operation = "SET_VERSION")`.
>
> Omitting either leaves `fromVersion` at its default `0` and the language version unchanged, which `MigrationsCheckUtil` flags with a quick fix that is not reachable from MCP. See [form-selection.md](form-selection.md).

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
