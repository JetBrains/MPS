# RuleConsequence catalog

Read this when: choosing what plugs into a rule's `ruleConsequence` role, replacing a rule with an inline template, dropping a node entirely, or falling over to another rule. Also covers the critical `applicableConcept` ref-form gotcha.

## RuleConsequence subconcepts

`RuleConsequence` is the abstract parent of anything that plugs into a rule's `ruleConsequence` role. Know these:

| Subconcept FQN | Effect | Children/refs |
|---|---|---|
| `TemplateDeclarationReference` | Delegate to a standalone `TemplateDeclaration` | ref `template` → TemplateDeclaration |
| `InlineTemplate_RuleConsequence` | Inline target subtree is the replacement | child `templateNode` — a target-language node |
| `InlineTemplateWithContext_RuleConsequence` | Like inline, but the template is a context subtree in which `TemplateFragment`s mark the output (e.g. a whole class as context, so a fragment on one method can reference the class's fields) | child `contentNode` — parse the context class straight into it with `mps_mcp_parse_java_and_insert` (child mode, `featureKind` `CLASS`), the same way as into a `TemplateDeclaration.contentNode` |
| `InlineSwitch_RuleConsequence` | Pick one of several consequences by condition, inline (no separate `TemplateSwitch`) | children `case` (0..n), `defaultConsequence` (1) |
| `AbandonInput_RuleConsequence` | **Drop the input node entirely**; produce nothing | (none) |
| `DismissTopMappingRule` | Fail over to the next matching rule; with none left the input is copied as is | optional child `generatorMessage` (`GeneratorMessage`: `messageType` info/warning/error, `messageText`) |

These are exactly the options offered in the `ruleConsequence` completion menu (`<in-line template>`, `<in-line template with context>`, `<in-line switch>`, `<abandon input>`, `<dismiss top rule>`), plus the plain `TemplateDeclarationReference` you get by referencing a named template.

## Example from the StateChart *sample* — `EmptyOperation` reduces to nothing (drop from the XML output):

> Adapted from the bundled `jetbrains.mps.samples.StateChart` sample (`samples/stateChart/`), **not** your project's language. `EmptyOperation` and the `org.example.statecharts.structure` model below are placeholders — substitute your own concept and structure-model ref.

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.Reduction_MappingRule",
  "references": [
    { "role": "applicableConcept",
      "target": "r:6226607e-5523-4a99-8422-428d837c9864(org.example.statecharts.structure)/<EmptyOperation-nodeId>" }
  ],
  "children": [
    { "role": "ruleConsequence", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" }
    ]}
  ]
}
```

## CRITICAL: `applicableConcept` ref form

> **`applicableConcept` always takes the structure-model node ref, never the `c:` concept ref.** All rules (`Root_MappingRule`, `Reduction_MappingRule`, `Weaving_MappingRule`, switch cases) and `TemplateDeclaration` itself expect this. The shape is `r:<structureModelUUID>(<lang>.structure)/<conceptDeclarationNodeId>` — the persistent ID of the `ConceptDeclaration` node inside the language's structure model. If you supply the `c:<langUUID>/<conceptId>` form (the form returned by `mps_mcp_get_concept_details.conceptReference` and visible in `.mps` XML), MPS will silently or noisily report `Unresolved reference: c:...`. Resolve a structure-model node ref via `mps_mcp_search_root_node_by_name` against the structure model, or by reading the concept's `sourceNode` field.

## When to use AbandonInput

Use `AbandonInput_RuleConsequence` whenever the source concept has no counterpart in the output (placeholder / no-op nodes, unused annotations, empty blocks). It is strictly stronger than "empty template": an empty template still produces a target placeholder; `AbandonInput` deletes the slot.

## When to use InlineSwitch

Use `InlineSwitch_RuleConsequence` (`<in-line switch>`) when one rule must produce **different output depending on a condition** on the source node, and you don't want to factor the alternatives out into a reusable `TemplateSwitch`. Each `case` child is an `InlineSwitch_Case` carrying a `conditionFunction` (a `BaseMappingRule_Condition` query returning boolean) and a `caseConsequence` (any `RuleConsequence` — typically an inline template); the required `defaultConsequence` (also any `RuleConsequence`) fires when no case matches. Cases are tested top-to-bottom. For dispatch logic that several rules share, prefer a standalone `TemplateSwitch` referenced via a `$SWITCH$` macro instead.
