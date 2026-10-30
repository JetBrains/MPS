# Coverage matrix — proposed generator cells S20–S24 (revision 3)

Legend: **F** = forced and gated by a done criterion; **r** = recorded only; **X** = authored by
the observer in the `flows-gen` fixture (the worker reads/keeps/edits it); blank = not touched.
Existing cells S6/S15/S18/S19 for context. Every concept and role named was verified read-only
with `mps_mcp_get_concept_details detail="shape"` (jetbrains.mps.lang.generator,
…generationContext, jetbrains.mps.lang.pattern).

| Topic (concept / role) | S6 | S15 | S18 | S19 | S20 tariff | S21 shell | S22 recipes | S23 flows edit | S24 flows change |
|---|---|---|---|---|---|---|---|---|---|
| `Root_MappingRule` `conditionFunction` | | | | | F | | | | |
| `Root_MappingRule.keepSourceRoot` = `true_` | | | | | | | F | | |
| `Root_MappingRule.applyToConceptInheritors` | | | | | | | F (or own rule, recorded) | | |
| `Root_MappingRule.labelDeclaration` | | | | | F | F | | X (renamed, F) | X |
| `CreateRootRule` with condition, output read by `GetOutputByLabel` (label alone) | | | | | F | | | | |
| `CreateRootRule` without condition | | | | | F | | | | |
| `DropRootRule` | | | | | | | F | X | X |
| Reduction `conditionFunction` | | | | | r (optional) | | F (switch cases) | X (zero wait) | X |
| `InlineTemplate_RuleConsequence` | | | | | F (Fee) | | r | | |
| `InlineTemplateWithContext_RuleConsequence` | | | | | F (Tier if) | | | X → F (extracted) | F (Slack/Mail) |
| `InlineSwitch_RuleConsequence` + `defaultConsequence` | | | | | | F (template default) | | X → F (case added) | X (deleted with Notify) |
| `DismissTopMappingRule` + error `GeneratorMessage` | | | | | | | F (switch default) | X | |
| `AbandonInput_RuleConsequence` | | | | | | | | X (Comment, zero wait) | X |
| `PatternReduction_MappingRule`, property pattern variable used in the consequence | | | | | F | | | | |
| `Weaving_MappingRule` `contextNodeQuery` via label | | | | | | F | | X (query repointed) | F (retargeted) |
| `anchorQuery`, stable | | | | | | F (fragment label + `get output list`) | | X | F (changed, `run`) |
| `WeaveEach_RuleConsequence` + `templateCall` with arguments | | | | | | F | | | F (introduced) |
| `TemplateDeclaration.parameter` | | | | | | F (2 strings) | | | F (1 added) |
| `TemplateCallMacro` with `actualArgument` (`$CALL$`) | | | | | | F | | | |
| Several `TemplateFragment`s, same parent | | | | | | F | | | |
| `TemplateFragment.labelDeclaration` (fragment label) | | | | | | F (both fragments, one label) | | | |
| `TemplateSwitch`: `parameter`, `defaultConsequence` error, `nullInputMessage` | | | | | | | F (null msg r) | | |
| `TemplateSwitch.modifiedSwitch`, both generators in one step | | | | | | | F | | |
| `TemplateSwitchMacro` with `actualArgument` | | | | | | | F | | |
| `MappingLabelDeclaration` `sourceConcept`/`targetConcept` | | | | | F | F | F | X | X |
| Two-key label: `LabelMacro.input1`+`input2`, `sourceConcept2`, reads with `input2` | | | | | | | F | | |
| Node-macro `mappingLabel` on `LoopMacro` | | | | | F (TIER_i) | F (params) | | | |
| `LabelMacro` one key | | | | | | | | X (approversMethod) | r (run) |
| `GetOutputByLabelAndInput` | | | | | F | F | F | X | X |
| `GetOutputByLabel` (label alone) | | | | | F | | | | |
| `GetOutputByLabelAndInputAndReferenceScope` (`pick output`) | | | | | | F | | | |
| `GetOutputListByLabelAndInput` (`get output list`) | | | | | | F (anchor) | | | |
| `ReferenceMacro` node referent | | | | | F | F | F | | |
| `ReferenceMacro` **string** referent | | | | | | | | | F (`approvers`) |
| `PropertyMacro` typed values | F | F | | | F | F | F | X | X |
| `IfMacro` + `alternativeConsequence` | | | | | | F | | | |
| `LoopMacro` | F | F | | | F | F | F | X | X |
| `LoopMacro.counterVarName` (index) | | | | | F | | | | |
| `CopySrcNodeMacro` single child | | | | | F | F (arg type) | | | |
| `CopySrcListMacro` | | | | | F | | | X | X |
| `MapSrcNodeMacro` null source | | | | | F | | | | |
| `MapSrcNodeMacro` `mapperFunction` + `postMapperFunction` | | | | | F (currency) | | | | |
| `VarMacro2` | | | | | | F | | | |
| `InsertMacro` | | | | | F | | | | |
| `MappingScript` pre (`scriptKind` `pre_processing`, `modifiesModel`) | | | | | | | F | | |
| `MappingScript` post | | | | | F | | | | |
| Utility-model helper class | | | | | | | F | | |
| `GenerationContextOp_CreateUniqueName` | | | | | | F (weave-each argument) | | | |
| `GenerationContextOp_ParameterRef` (reading a template parameter) | | | | | | F | F | | F |
| `GenerationContextOp_ShowWarningMessage` (read from the MAKE response) | | | | | | F | | X → F (fires after fix) | |
| Explicit plan: two generators in one step, generator-only language engaged | | | F | | | | F | | |
| `mps_mcp_generation PLAN` read | | F | | F | | | F | | |
| EDIT: fix wrong rule order from a symptom | | | | | | | | F | |
| EDIT: add a case to an existing in-line switch | | | | | | | | F | |
| EDIT: rename a label and its uses (checked via `label` refs, not `labelName_intern`) | | | | | | | | F | |
| EDIT: extract in-line template → `TemplateDeclaration` | | | | | | | | F | |
| EDIT: delete a rule without dangling references | | | | | | | | | F (Notify rule + concept) |
| EDIT: refactor a weaving rule (anchor, per-item → weave-each, add a parameter) | | | | | | | | | F |
| EDIT: language change — split a concept, migrate samples | | | | | | | | | F |
| EDIT: language change — rename properties read by queries/$PROPERTY$ | | | | | | | | | F (id-based, cheap) |
| EDIT: extend an existing root template / rule flags | | | | | | | F | | |

Mapping priorities: forbidden; S22 fails on any `MappingPriorityRule`. Over-coverage: one label
rename (S23), one authored DismissTop error (S22; the fixture's is observer-authored), weave-each
authored once (S21) and introduced once as a refactor (S24).

## Distance from the ad-hoc exercises (A1–A5) and the demos

| Cell | Domain | Output idiom | Deliberately unlike |
|---|---|---|---|
| S20 | tariff plans | interface + implementations, per-tier constants, string-switch factory, ternary chain, upper-cased literal via mapper/post-mapper | A1 (`Class<?>[]` registry, `$IF$` describe), A2 (expression reductions) |
| S21 | shell commands | fluent/chainable API, same signature in two methods (pick), woven contributions anchored by a fragment label | A3 (getters/finders, first-member anchor), A5 (section methods, slug helper) |
| S22 | recipes (fixture) | switch case for a **sub-concept** of an extending language; kept roots followed by references; menu constants keyed per (cookbook, recipe) | A4 (override of an existing text case; registry condition) |
| S23 | approval flows | trail of strings, observer-authored generator edited | A4 (edits on the worker's own A1 output) |
| S24 | approval flows | concept split + migration, weaving refactor, name-resolved call | none of A1–A5 changed the language |

## Fixtures

| Cell | Fixture | New? | Build |
|---|---|---|---|
| S20 | `empty-project` | no | synthesized |
| S21 | `empty-project` | no | synthesized |
| S22 | `recipes-gen` | no | S18/S19's tarball |
| S23, S24 | `flows-gen` | **yes, the only one** | observer replay recipe in `S23/FIXTURE.md` (MCP calls only, interpreted generator, fixed names, D-ORDER injected, expected Java text; pins after the build, pins in `scenarios/S23/FIXTURE.md`) |

Restart rules: S22 joins the `recipes*` set (S3–S7, S9, S15, S17–S19). S23 and S24 share module
ids: restart between them, never open two `flows-gen` copies. S20/S21 mint fresh ids.

## Uncovered (no gate in S20–S24), with the reason

- `MapSrcListMacro` — the list form adds nothing a worker would not learn from `MapSrcNodeMacro`
  plus `CopySrcListMacro`; no natural site in these domains.
- `$WEAVE$` (`WeaveMacro`) — weaving from inside a template duplicates weaving rules; the skill
  documents it in `macros-rare/weave-macro.md`; a cell would repeat S21's gates.
- `$TRACE$` (`TraceMacro`) — debugging aid, no output to gate; S15 covers trace reading.
- `TemplateSwitch` null input *firing* — needs an optional child the recipes structure lacks;
  the message is authored and checked structurally in S22.
- `GenerationContextOp_RegisterLabel`, session/step/transient objects — script-internal plumbing.
- `MappingConfiguration.condition`, `ReferenceReductionRule`, `DropAttributeRule`, generator
  parameters — rare; no skill reference currently documents them in depth.
- Pattern rules with node/link pattern variables (`PatternVariableDeclaration`,
  `LinkPatternVariableDeclaration`) — S20 gates the property form; the others share the same
  `patternReductionRule` path.
- `CreateRootRule` outputs consumed by a later step; weaving into a created root — plan-shaped
  variants of what S22/S21 gate.
- Non-Java cascades, TextGen, `jetbrains.mps.core.xml` output; runtime-solution split; generator
  tests for the authored generators (S18 covers the framework).

## Sizing (opus, estimated tool calls; round-0 data: A1 110, A3 154, A5 147, A4 218)

S20 150–180 · S21 150–180 · S22 150–180 · S23 110–140 · S24 130–160. Each file names what to
drop first if a rehearsal exceeds 60 minutes. Rehearse S21 first.
