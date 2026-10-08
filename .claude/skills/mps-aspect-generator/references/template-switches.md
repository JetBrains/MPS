# Template switches

Read this when: picking between reductions on the MappingConfiguration vs. a switch, declaring or invoking a `$SWITCH$`, or wiring `extends` between switches across generator modules.

## When to use a switch vs. plain reduction rules on the MappingConfiguration

A **template switch** (`jetbrains.mps.lang.generator.structure.TemplateSwitch`) is a named dispatch table of reduction cases, referenced from a `$SWITCH$` macro on a template node or from a switch-based rule consequence. Each case is a `Reduction_MappingRule` matching a subconcept/condition; if no case matches, a default consequence fires (or, if none, the input is copied unchanged).

- **Plain reduction rules** on the MappingConfiguration fire anywhere the input appears. Use for global, always-on reductions.
- **Switch** fires only at sites that explicitly route through it (via a `$SWITCH$` macro or a switch-based consequence). Use to pick one of several alternatives based on subconcept/state at a specific point in a bigger template. Also use when alternatives must be extensible by other generators (the extending generator adds more `Reduction_MappingRule` cases to the same switch, or inherits it).

## Anatomy

Key roles on `TemplateSwitch`:

| Role | Child concept | Purpose |
|---|---|---|
| `name` (property) | string | switch name |
| `reductionMappingRule` (role) | `Reduction_MappingRule` | one case per rule; matched top-to-bottom |
| `defaultConsequence` (role) | any `RuleConsequence` | runs when no case matches |
| `nullReductionRuleConsequence` (role) | any `RuleConsequence` | runs when the source node passed to `$SWITCH$` is null |
| `modifiesModel` (property) | boolean | rarely needed |
| `extends` (ref) | another `TemplateSwitch` | inherit its cases |
| `parameter` (role) | `TemplateParameterDeclaration` | switch parameters, matching `$SWITCH$` call arguments |

Cases use the same `Reduction_MappingRule` concept as top-level reductions — full JSON example is in `references/rule-consequences.md` (`AbandonInput_RuleConsequence`).

## JSON blueprint

Minimal switch with two cases and a default:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.TemplateSwitch",
  "properties": [ { "name": "name", "value": "switch_Element" } ],
  "children": [
    { "role": "reductionMappingRule", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.Reduction_MappingRule",
        "references": [ { "role": "applicableConcept", "target": "<Element-concept-ref>" } ],
        "children": [
          { "role": "conditionFunction", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition",
              "children": [ { "role": "body", "nodes": [ /* node.name.equals("button") */ ]} ]
            }
          ]},
          { "role": "ruleConsequence", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.TemplateDeclarationReference",
              "references": [ { "role": "template", "target": "<insert_Button-ref>" } ]
            }
          ]}
        ]
      }
    ]},
    { "role": "reductionMappingRule", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.Reduction_MappingRule",
        "references": [ { "role": "applicableConcept", "target": "<Element-concept-ref>" } ],
        "children": [
          { "role": "conditionFunction", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition",
              "children": [ { "role": "body", "nodes": [ /* node.name.equals("label") */ ]} ]
            }
          ]},
          { "role": "ruleConsequence", "nodes": [
            { "concept": "jetbrains.mps.lang.generator.structure.TemplateDeclarationReference",
              "references": [ { "role": "template", "target": "<insert_Label-ref>" } ]
            }
          ]}
        ]
      }
    ]},
    { "role": "defaultConsequence", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" }
    ]},
    { "role": "nullReductionRuleConsequence", "nodes": [
      { "concept": "jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" }
    ]}
  ]
}
```

Invoke it from a `$SWITCH$` macro on a target node:

```json
{
  "concept": "jetbrains.mps.lang.generator.structure.TemplateSwitchMacro",
  "references": [ { "role": "templateSwitch", "target": "<switch_Element-ref>" } ]
}
```

Live example: `samples/generator_demo/languages/demoLang3/generator/template/main@generator.mps` holds a minimal `switch_Element` with per-`name` dispatching over XML `Element` nodes.

## Switch inheritance

If you set `extends` on a `TemplateSwitch`, the parent's cases are tried first (after which the child's cases are tried, then the child's default). This is the canonical mechanism for an extending language/generator to inject extra reductions into a host generator's switch.

**Cross-generator inheritance.** When the parent switch lives in another generator module (the common case for extension languages), you must wire up both sides before the `extends` reference will resolve:

1. On the extending generator *module* (`.mpl`): add an `extends` dependency on the parent generator module (in MPS project view → generator node → module properties → Dependencies, scope `extends`).
2. In the extending generator *model* (`template/main@generator.mps`): import the parent's `templates` model so the child can reference its `TemplateSwitch` node. Use `mps_mcp_model_dependency` with the parent generator's templates model as target.

Without both, the child switch will look syntactically correct but the `extends` reference will be broken at generation time.
