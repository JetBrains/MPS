# S22 done criteria — Recipes: template switch with a parameter, a case added from an extending language, kept roots feeding a later step

**Status: drafted 2026-10-30 by a fable subagent, revised after two opus reviews; rehearsal round
46: `S22-opus-1` PASS (143 calls, 11 min; it found that a new `Transform` splits generators and
switched to `ApplyGenerators` — the skills now say so), `S22-sonnet-1` FAIL only on the label's
`sourceConcept`, which the prompt does not ask for (criterion 5 relaxed to optional typing). Round 47 (stable catalog `a7ee526d`, medium effort): `S22-sonnet-1` PASS (143 calls, 9 min), `S22-opus-1` PASS (127, 10); criteria wording fixed after the evaluators' notes. Prompt frozen 2026-10-30.**

## Fixture

`recipes-gen` (existing; S18/S19's tarball; sha256 in [`../../fixtures/pins.md`](../../fixtures/pins.md)). Language `mcp.study.recipes`,
generator `mcp.study.recipes.generator` (template model `<T>` = `…templates@generator`, root
template `RecipeClass`, one `map Recipe` rule, no label, `applyToConceptInheritors` false),
solution `mcp.study.kitchen` with `mcp.study.kitchen.samples` (`<S>`: Crepes/Pancakes/Omelette,
three Ingredients, Cookbook `Weeknight Basics`). The worker **edits** the existing generator and
adds two languages.

## Topics forced

EDITING an existing root template and rule (`applyToConceptInheritors`) · `TemplateSwitch` with
a parameter, a default that reports an error, a null-input message; `$SWITCH$` with
`actualArgument` · a **sub-concept from an extending language** handled by an extending switch
(`modifiedSwitch`, matching parameter) — requires both generators in one plan step ·
`Root_MappingRule.keepSourceRoot` `true_` with a real reason (a later step follows references
into the kept roots) · generator-only language engaged by the plan · `DropRootRule` ·
**two-key label** (`$LABEL$` `input1`+`input2`, reads with `input2`) ·
pre-processing script (`scriptKind` `pre_processing`, `modifiesModel` true) · utility-model
helper · explicit three-step plan, `mps_mcp_generation PLAN`. No priorities.

## Criteria

Observer, read-only, `projectPath` = run project dir; MPS only through `mcp_call.py` (`mps_mcp_*`).
Ids from S15 [`../../fixtures/inputs/s15/DEFECT.md`](../../fixtures/inputs/s15/DEFECT.md). Java: `cat` on disk (the IDEA file tools are not reachable) of
`solutions/mcp.study.kitchen/source_gen/mcp/study/generated/{Crepes,Pancakes,Omelette,Souffle,
BrunchMenu,WeeknightBasicsMenu}.java`; `find` for `classes_gen/mcp/study/generated/*.class` (six).
Expected texts are **computed from `<S>`** (`print_node` each Recipe and Cookbook): quick iff
`minutes <= 2`. Comparison: whitespace-normalised, `if` bodies in braces as MPS prints them,
redundant parentheses accepted, JDK names imported or qualified, a static field read printed
plain or class-qualified (`PANCAKES` or `BrunchMenu.PANCAKES`).

1. **Samples.** Difficulties as set; `ChefRecipe` root `Souffle` (concept from
   `mcp.study.recipes.pro`, `chef` "Marie", three steps); Cookbook `Brunch` referencing Pancakes
   then Omelette; no step text in `<S>` contains ` (quick)`; the seven fixture roots still present.
2. **Plan.** `mps_mcp_generation PLAN` (`detail: "steps"`) on `<S>`: explicit plan; step 1 lists
   the generators of `mcp.study.recipes` **and** `mcp.study.recipes.pro` (PLAN `detail:"steps"` shows both in
   step 1 — `ApplyGenerators` naming both, or a `Transform` with both entries and
   `individualStepPerGenerator` false; a new `Transform` defaults to `true` and splits them; `false` is not stored, so an absent value is `false`); step 2 the menu generator; step 3
   `jetbrains.mps.baseLanguage`. Plan root in a model of `mcp.study.kitchen`; attached to the
   solution (`get_module_facets`) or through a DevKit (record). Any `MappingPriorityRule` fails (`print_node` of each `MappingConfiguration` shows its `mappingPriorities`).
3. **Recipe classes.** Crepes/Pancakes/Omelette/Souffle: `PORTIONS` 4/2/1/2; `steps()` = the model
   texts with ` (quick)` iff quick (exactly: Crepes step 4, Omelette steps 1 and 3, Souffle step 2; none in Pancakes); `level()`
   as in step 7. `Souffle.java` must exist (criterion 5 gates how).
4. **Menus.** `BrunchMenu.java`: `public static final String PANCAKES = "Pancakes (2 portions)";`,
   `OMELETTE = "Omelette (1 portions)"`, `dishes()` returns `new String[]{PANCAKES, OMELETTE}`
   (field references, plain or `BrunchMenu.`-qualified, not literals). `WeeknightBasicsMenu.java`: the same for the fixture cookbook's
   references (role name is the S1 worker's), in cookbook order. No stray `Recipe`-derived
   output (`source_gen/mcp/study/generated/` holds only the expected files; `trace.info` and caches are
   not output; whether the ChefRecipe root reached step 3 is not observable without transient models).
5. **Mechanisms** (`print_node`):
   - `<T>`: `TemplateSwitch` `Level` with one `TemplateParameterDeclaration` `prefix` (string), ≥ 3
     `Reduction_MappingRule` cases on `Recipe` with `conditionFunction`s on `difficulty`,
     `defaultConsequence` = `DismissTopMappingRule` whose `GeneratorMessage` is `error` and
     contains `unknown difficulty`, `nullInputMessage` containing `no recipe`; `level()`'s literal
     carries a `TemplateSwitchMacro` with one `actualArgument`; the case literals' `$PROPERTY$`
     reads the parameter (`GenerationContextOp_ParameterRef` or `TemplateArgumentParameterExpression`);
   - the `map Recipe` rule has `keepSourceRoot` = `true_` **and** `applyToConceptInheritors` true
     (or `pro` adds its own `Root_MappingRule` for `ChefRecipe` reusing `RecipeClass` — record
     which); without either, `Souffle.java` does not exist and criterion 3 fails;
   - a `MappingScript` with `scriptKind` `pre_processing` and `modifiesModel` true, referenced
     from `preMappingScript`, calling a static method of a `ClassConcept` in a non-template model
     of the generator (or of the language's runtime/accessory); a `<= 2` typed in the script
     fails this item;
   - `mcp.study.recipes.pro`: language extends `mcp.study.recipes`; `ChefRecipe` extends `Recipe`;
     its generator module depends on `mcp.study.recipes.generator` (scope Extends expected — it shows
     under the generator's `depGenerators` in `get_project_structure` `includeDependencies`; a
     different scope is recorded, not failed here — if MPS rejects it, criterion 6 catches the
     error) and its template model imports `<T>`; a `TemplateSwitch` with `modifiedSwitch` →
     `Level`, **one** `TemplateParameterDeclaration` `prefix` (string, same name), exactly one case
     (`ChefRecipe`), no copied cases, no default;
   - `mcp.study.recipes.menu`: empty structure; generator with a `Root_MappingRule` on `Cookbook`;
     the constant field carries `$LOOP$` over the cookbook's references and a `LabelMacro`
     (`$LABEL$`) with **both** `input1` (the cookbook) and `input2` (the recipe); the label's `sourceConcept` / `sourceConcept2`
     are optional typing (record which are set; an input that needs a cast is not a reason to clear them); the `dishes()` element carries `$LOOP$`
     and a `ReferenceMacro` reading `GetOutputByLabelAndInput` with `input2` set; a `pick output`
     or a one-key label instead fails this item (record); a `DropRootRule` on `Recipe`;
     `CreateRootRule` instead of the root rule fails this item.
6. **Clean.** `check_root_node_problems`: three template models, the utility class and the plan
   model 0 errors (the `String` info entries are not problems; the module-level "generation
   target" warning is recorded, not gated).

Pass = 1–6. Accepted: cases as inline templates or template declarations; `ApplyGenerators`
steps; plan through a DevKit; the helper in a `@util`-stereotyped or plain model of the generator;
the menu class name computed in the `$PROPERTY$` or in the helper; a pro `Root_MappingRule` for
`ChefRecipe` (criterion 5, recorded); further `DropRootRule`s in the menu generator (e.g. for
Ingredient roots; record them). Not accepted: a `DropRootRule` on `Recipe` in a step-1 generator
(the kept roots must reach step 2), any `MappingPriorityRule`, extra cases in the pro switch.

Process signals: `GP_set_plan_calls` ≥ 1, `GN_plan` ≥ 1, `M_makes` ≥ 2, `reload_all` after the
rebuild (expected 0 since R1 patch item 10), `get_concept_details` on `TemplateSwitch`/
`MappingScript`/`LabelMacro`, engine-source reads 0, console Java 0.

## Isolation

Shares the `mcp.study.recipes` module ids with S3–S7, S9, S15, S17–S19: restart MPS before S22
when one of those ran in the process, and after it before any other `recipes*` cell (the worker
rebuilds the language and generator). Never open next to `recipes-misgen` or another `recipes*`
copy. The new languages mint fresh ids.

## Risks

- `map Recipe` has `applyToConceptInheritors` false in the fixture, so a `ChefRecipe` is not
  mapped at all until the worker flips the flag or adds a rule; the symptom is a missing
  `Souffle.java` (and a copied-through root), not a wrong `level()`.
- The extending switch is consulted only when both generators are in one step; without the
  plan the base HARD case handles Souffle once it is mapped — the plan is observable through
  `level()`.
- The pro generator without the Extends module dependency or with a different parameter list
  gets error-level checks on `modifiedSwitch`; criterion 5 catches it.
- The two-key label is the reason a recipe listed in two cookbooks (Pancakes, Omelette are in
  both) gets two constants: a one-key label makes `get output` fail with two outputs.
- Kept Recipe roots: without `keepSourceRoot` the Cookbook's references dangle in step 2 and the
  servings cannot be read — the observable reason for the flag.
- Null-input message never fires; checked structurally.
- Unverified until the rehearsal: that the menu generator's `DropRootRule` on `Recipe` also drops
  the `ChefRecipe` root `Souffle` (if not, Souffle reaches step 3 as a copied root; a second
  `DropRootRule` on `ChefRecipe` is then accepted and recorded).
- Size ≈ 150–180 tool calls; drop 2b (script + helper) first if a rehearsal exceeds 60 min.
