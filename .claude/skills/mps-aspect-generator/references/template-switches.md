# Template switches

Read this when: picking between reductions on the MappingConfiguration vs. a switch, declaring or invoking a `$SWITCH$`, or letting another generator override a switch case.

## When to use a switch vs. plain reduction rules on the MappingConfiguration

A **template switch** (`jetbrains.mps.lang.generator.structure.TemplateSwitch`, a root of the generator model) is a named dispatch table of reduction cases, used only where a `$SWITCH$` macro (`TemplateSwitchMacro`) names it. Each case is a `Reduction_MappingRule`; the first applicable case wins.

- **Plain reduction rules** on the MappingConfiguration fire anywhere the input is copied. Use for global, always-on reductions.
- **Switch** fires only at sites that explicitly route through it. Use to pick one of several alternatives at a specific point in a bigger template, or when other generators must be able to override the alternatives.

## Anatomy (verified shape)

| Feature | Kind | Purpose |
|---|---|---|
| `name` | property | switch name |
| `reductionMappingRule` | child `Reduction_MappingRule` [0..n] | the cases, tried top to bottom; a case has `applicableConcept`, `applyToConceptInheritors` (default **false**: set `true` when the case names a superconcept of the input), optional `conditionFunction` (`BaseMappingRule_Condition`) and `ruleConsequence` |
| `defaultConsequence` | child `RuleConsequence` [0..1] | used when no case matches; **when absent, the template code wrapped by `$SWITCH$` is used** |
| `nullInputMessage` | child `GeneratorMessage` [0..1] | message (`messageType` `info`/`warning`/`error`, `messageText`) when the `$SWITCH$` input is null; without it a null input silently produces nothing |
| `modifiedSwitch` | reference → `TemplateSwitch` [0..1] | the switch this one extends (the editor shows `extends`) |
| `parameter` | child `TemplateParameterDeclaration` [0..n] | switch parameters; every `$SWITCH$` must then pass `actualArgument`s |

A default that reports an error is a `DismissTopMappingRule` whose `generatorMessage` is a `GeneratorMessage` with `messageType` `error` (as in `demoLang1`'s switch below). The dismissal also dismisses the reduction rule whose template holds the `$SWITCH$`; the input then falls to the next rule.

## JSON blueprint

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.TemplateSwitch",
  "properties": [ { "name": "name", "value": "switch_Element" } ],
  "children": [
    { "role": "reductionMappingRule", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.Reduction_MappingRule",
        "references": [ { "role": "applicableConcept", "target": "<Element concept sourceNode>" } ],
        "children": [
          { "role": "conditionFunction", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition",
              "children": [ { "role": "body", "nodes": [ /* node.name.equals("button") */ ]} ] }
          ]},
          { "role": "ruleConsequence", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.TemplateDeclarationReference",
              "references": [ { "role": "template", "target": "<insert_Button ref>" } ] }
          ]}
        ]
      }
    ]},
    { "role": "defaultConsequence", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.DismissTopMappingRule",
        "children": [ { "role": "generatorMessage", "nodes": [
          { "concept": "jetbrains.mps.lang.generator.structure.GeneratorMessage",
            "properties": [ { "name": "messageType", "value": "error" },
                            { "name": "messageText", "value": "unsupported element" } ] }
        ]} ]
      }
    ]}
  ]
}
```

Invoke it from a `$SWITCH$` on the template node to replace. The switch is referenced through role **`template`** (the `IParameterizedTemplate` role shared with `$CALL$`), and the optional `sourceNodeQuery` re-binds the input:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.TemplateSwitchMacro",
  "references": [ { "role": "template", "target": "<switch_Element ref>" } ],
  "children": [
    { "role": "sourceNodeQuery", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery",
        "children": [ { "role": "body", "nodes": [ /* node.rootElement */ ]} ] }
    ]}
  ]
}
```

A case's consequence replaces the node carrying the `$SWITCH$`, so it must produce a node that fits that slot: on an argument expression, an expression; on a class member, a member. An inline consequence (`InlineTemplate_RuleConsequence`, child `templateNode`) is enough for small cases.

Live examples: `switch_JComponentByElementName` in `jetbrains.mps.samples.generator_demo.demoLang1` (inline cases, error default) and `switch_Element` in `demoLang5` (template-declaration cases, no default) — print them with `mps_mcp_print_node` `format: "PLAIN TEXT"`.

## Overriding a switch from another generator

A switch whose `modifiedSwitch` points at another switch extends it. A `$SWITCH$` naming the base switch or any switch extending it tries the extending switches' cases first, then the base cases. Exact-concept cases still come before cases that match through `applyToConceptInheritors`, whichever switch declares them (`references/algorithm.md`). So an extending generator overrides one case by declaring only that case. The default is the named switch's own (then the defaults of the switches *it* modifies): an extending switch's `defaultConsequence` is never used by a `$SWITCH$` that names the base switch.

The override applies only when **both generators run in the same generation step** — the switch graph is built per step. Generators run in separate steps (`references/algorithm.md`), and a generator whose language has no instances is not engaged, so give the models a generation plan whose single step holds both generators — an `ApplyGenerators` step naming both generator modules, or a `Transform` listing both languages with `individualStepPerGenerator` set to `false` (a new `Transform` gets `true` from its constructor): `references/transform-and-applygenerators.md` in the `mps-aspect-generation-plan` skill root after loading that companion skill from the same origin. Check with `mps_mcp_generation` `PLAN` that both generators share one step. Wiring:

1. The extending generator module depends on the base generator: `mps_mcp_module_dependency(operation="ADD", moduleName="<extending generator>", targetModule="<base generator>", scope="Extends")`.
2. The extending generator's template model imports the base template model (`mps_mcp_model_dependency` ADD) so `modifiedSwitch` can point at the base switch.
