# S15 done criteria (observer, read-only, projectPath = run project dir)

**Prompt frozen 2026-10-23** (`promptSha256` `5d46c0a39e73…`) after the rehearsal in `runs-s15`:
`S15-opus-1` and `S15-sonnet-1` both passed criteria 1–5 on the intended path, with every pinned
value below matched by both left-behind states and every P1–P7 signal on target
(`S15-*.eval.md`). The "Done when" line does not repeat step 4's "Free the transient models";
criterion 5 checks it anyway, and both workers freed them. Moving it into "Done when" would change
the frozen prompt, so it was left as rehearsed.

Fixture: `recipes-misgen.tar.gz` (`../../fixtures/README.md`): `recipes-full` plus an
observer-authored, interpreted generator for `mcp.study.recipes` and one injected defect, D1: the
`PORTIONS` property macro reads `node.steps.size` instead of `node.servings`. Authoring, ids and the
tool walk the pins come from: `DEFECT.md` (calls: `DEFECT.log`), run live on 2026-10-23 (MPS
2026.1, build 261.25134).

The gap this cell measures: no cell made a worker keep transient models, read a generation step's
output or trace a node back to its rule. It forces `alter_nodes MAKE saveTransientModels`,
`mps_mcp_generation` `PLAN` / `TRANSIENT_MODELS` / `TRACE` / `DROP_TRANSIENT_MODELS`, transient-model
reads, and the recipe `mps-aspect-generator/references/debugging-misgeneration.md`.

References (`<T>` = template model `r:98539ed4-bf63-4715-a114-6d1e7a8ca01d(mcp.study.recipes.generator.templates@generator)`,
`<S>` = samples model `r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da(mcp.study.kitchen.samples)`):

| what | pinned value |
|---|---|
| plan of `<S>` | `planSource: DEFAULT`, 6 `TRANSFORM` steps; the recipes generator (`mcp.study.recipes.generator.templates.*`) is step **`index` 2, `transientStereotypePrefix` `2_`**; `usedLanguages` `mcp.study.recipes` `coverage: IN_PLAN` |
| step models of a `saveTransientModels` make | `mcp.study.kitchen.samples@0`, `@2_0`, `@6_5`, `@6_7` (final); the classes and the wrong `PORTIONS` first appear in **`mcp.study.kitchen.samples@2_0`** |
| `TRACE BACKWARD` from a wrong `PORTIONS` initializer | one change `@0` → `@2_0`, Recipe → `ClassConcept`; template entry `Root_MappingRule` **`map Recipe`** `<T>/4956319657763003572`, **`role: RULE`**, `templateRoot` **`main`** (`MappingConfiguration` `<T>/12157282221657534`); no `TEMPLATE` entry |
| the rule's template | `ClassConcept` `RecipeClass` `<T>/4956319657762963862`; `PORTIONS` initializer `…/4956319657762963866`, its `$PROPERTY$` `…/4956319657762978650` |
| sample roots | Ingredients `Flour` `<S>/12157282221949750`, `Milk` `…751`, `Egg` `…752`; Recipes `Crepes` `…753` (serves 4, 4 steps), `Pancakes` `…763` (serves 2, 3 steps), `Omelette` `…772` (serves 1, 3 steps); Cookbook `Weeknight Basics` `…781` |

The transient module (`mcp.study.kitchen@transient<n>`), its uuid and the transient node ids change
with every make; pin nothing on them. Minors depend on the plan, so accept any `@2_<minor>` as the
step-2 model. The observer does not MAKE: the worker's last build is what is measured.

1. **Generator fixed.** `mps_mcp_print_node` (JSON, `deep: true`) of `RecipeClass`
   `<T>/4956319657762963862`: the `PORTIONS` initializer's `$PROPERTY$` query reads the recipe's
   `servings` (`node.servings`; equivalent: through a behavior method or a variable, any query whose
   value is `servings`), and the `StringLiteral` in `steps()` still carries `$LOOP$` over
   `node.steps` followed by `$PROPERTY$` `node.text`. A fix that replaces the template or the rule
   passes when criterion 2 holds and a single root mapping rule for Recipe remains; record it.
   `mps_mcp_check_root_node_problems` on `<T>`: 0 errors. `generator/source_gen/mcp/study/recipes/generator/Generator.java`
   still extends `TemplateModuleInterpreted2` (interpreted; a flip to compiled changes what TRACE
   can show — note it, it fails nothing).
2. **Generated Java right.** `grep` in `<project>/solutions/mcp.study.kitchen/source_gen/mcp/study/generated/`:
   exactly `Crepes.java`, `Pancakes.java`, `Omelette.java`, with `PORTIONS = 4`, `= 2` and `= 1`, and
   `steps()` returning, in order, Crepes' four step texts and the three of each other recipe (table
   in `DEFECT.md`). `Crepes` with 4 was already right with the defect; a `Pancakes` 2 and `Omelette` 1
   prove the fix.
3. **`EVIDENCE.md`** names, in any form:
   - the plan step: index `2` and prefix `2_` (from `PLAN`; "step 2" alone, without the prefix, is
     half — record it, it passes when the transient model below carries the prefix);
   - the transient model where the wrong value first appears: `mcp.study.kitchen.samples@2_<minor>`
     (`@2_0` in the walk). Naming only the final `@6_<minor>` model, or `@0`, fails;
   - the rule: the `Root_MappingRule` `map Recipe` (by presentation, node id, or "the root mapping
     rule for Recipe in `main`") as the producing rule (the trace's `role: RULE` entry; quoting the
     role is not required), with its template root: `main` (the trace's `templateRoot` field) or
     `RecipeClass` (the root template the rule's `template` reference names; the prompt's "template
     root" reads either way, and both are right). Naming only
     the template `RecipeClass`, only a macro, or a baseLanguage generator rule as the producer
     fails;
   - the fix, and the corrected `PORTIONS` lines.
   A claim with no `TRACE` that found a step (an ok envelope with a step that has `changes`, or a
   temp-file answer that does) before the first
   accepted write to `<T>` in the transcript (P2) rests on reading the generator and fails this
   criterion. A rejected write attempt before the trace does not count as that write; a TRACE BACKWARD
   from a node of `<S>` (no steps) does not count as tracing.
4. **Samples unchanged.** `mps_mcp_get_project_structure(startingPoint=<S>, includeRootNodes=true)`
   lists exactly the seven roots above, by id; `mps_mcp_print_node` (PLAIN TEXT) of the three
   Recipes shows the `servings` and steps of the table (a worker that edits a recipe to make the
   numbers match fails here); `check_root_node_problems(<S>, perRoot=true)`: 0 errors, 0 warnings, as
   in the fixture. The `.mps` files that differ from the fixture are
   `languages/mcp.study.recipes/generator/templates/mcp.study.recipes.generator.templates@generator.mps`
   only. Module descriptors (`.mpl`, `.msd`), `.mps/` directory files MPS rewrites on opening, and
   generated `source_gen*` / `classes_gen` output do not count. Note: the `NOT_EDITABLE` refusal on a
   transient node tells the worker to "Edit the original model 'mcp.study.kitchen.samples'"; a
   worker who follows it literally fails this criterion, and the transcript shows why.
5. **Transients freed.** On the left-behind MPS, `mps_mcp_generation TRANSIENT_MODELS {}` lists no
   `originals` entry for `mcp.study.kitchen.samples`. A `DROP_TRANSIENT_MODELS` and a final make
   without the flag both pass (a make discards the previous transient models; with the IDE's Save
   Transient Models setting off, `saveTransientModelsSetting: false` in every `TRANSIENT_MODELS` answer
   of the walk and both rehearsals, it keeps none; if a left-behind MPS reports `true`, a flag-less make
   keeps models and only a DROP passes). `checkpoints` entries
   (`checkpoints/mcp.study.recipes.*@descriptorclasses`, from the language rebuild) are fine.

Pass = criteria 1–5 hold.

Caveats to state with a result:
- **Lifecycle.** Every make drops the transient models and traces first (`droppedPrevious: true`).
  A worker that rebuilds the language before tracing gets `NOT_FOUND`; that is the lifecycle rule,
  not a tool defect. Re-making with the flag and tracing then passes; record the extra make.
- **`compactTemplates`.** It defaults to the IDE tracer setting (`false` in the walk). A trace that
  shows only an inner template and no `RULE` is a docs signal (the recipe says to pass
  `compactTemplates: false`), not a FAIL when `EVIDENCE.md` still names the rule.
- **No `originalInputNode` requirement.** The trace may omit it; the change's `input` node is enough.
- **Reported through the class.** The `PORTIONS` initializer has no trace record of its own (property
  macros are never recorded); TRACE reports the change through the enclosing class. A worker who
  reads that as "the trace does not cover `PORTIONS`" and then studies the template is following the
  recipe's step 5, not bypassing the trace.

## Process signals (transcript and `families.py` row; reported separately from the pass)

- **P1 kept transients.** `M_makes_save_transient` ≥ 1 (MAKEs the envelope accepted).
- **P2 traced before editing.** `GN_trace_before_fix` ≥ 1 (TRACE calls that found a step before the
  first accepted write to a `@generator` model), with `GN_trace_backward` ≥ 1.
- **P3 trace, not template study.** `GN_template_prints_before_trace` ≤ 1: one orientation print
  allowed; more means the worker read the generator to guess the producer first.
- **P4 plan asked.** `GN_plan` ≥ 1.
- **P5 step models read.** `GN_transient_models` ≥ 1 and `GN_transient_reads` ≥ 1 (a `print_node`,
  `get_project_structure`, `query_nodes` (also a `FIND_INSTANCES` scoped to it) or
  `check_root_node_problems` on a transient step model or node; checkpoint and `@descriptor` models do
  not count).
- **P6 freed.** `GN_drop` ≥ 1, or criterion 5 met by a flag-less final make.
- **P7 build count.** `M_makes` 3 in the routed path: the samples with the flag, the language
  rebuild, the samples again (4 when the prompt's step-1 make ran without the flag and a second make
  kept the transients). `M_reload_all` 0.
