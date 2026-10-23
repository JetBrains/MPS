# Study scenarios

Which eval cell covers which topic. Use this file when asked to "run evals to verify changes to
skill X" (or to a tool, a skill script, or a reference file). The brief list is the human summary.
The directory is the lookup: find the skill, run the cells in its **Run** column, and do not
substitute a cell that is not listed.

How to run a cell is the `skill-optimization-study` skill (`references/harness.md`,
`references/scenarios.md`). Prompts live in [`scenarios/`](scenarios/) and are frozen — do not edit
`worker_prompt.md` to make a cell cover a new topic; add a scenario. Open defects that change how
to read a result are in [`docs-defects.md`](docs-defects.md). Fixtures are regenerated per
[`fixtures/README.md`](fixtures/README.md), not stored in git. Exception: S5 was revised on
2026-10-22 (round 39) at the user's request to add identity-preserving moves; see S5.

A pass means the worker met `done_criteria.md`. It is evidence about the skills that cell
**forces**. It is weak evidence about skills it only happens to read.

## Brief list

| id | What it does |
|---|---|
| S1 | From an empty project, build a recipes language (concepts, enums, editors, a property constraint, a no-self-reference scope, a typesystem warning, a behavior method) and three sample recipes in a solution. |
| S2 | Extend an existing statechart language with a `Guard` child, an editor that shows it, a non-blank constraint, and an "Add guard" intention, then put a guard on one sandbox transition. |
| S3 | Load 40 recipes from a CSV, wire `seeAlso` by name, and add one cookbook that references all of them. |
| S4 | Rename a property, relax a cardinality, add a required child, and write a migration that fills that child on existing recipes, then apply it with `mps_mcp_run_migrations`. |
| S5 | Find and repair twelve injected problems (dangling references, missing children, invalid property values) without deleting recoverable roots, and make two identity-preserving moves (reorder a cookbook entry, move a step to another recipe). |
| S6 | Add a generator that emits one Java class per recipe, and add the same behavior method twice: once through the Java parser, once as a JSON AST. |
| S7 | Add three node tests and one editor test, create a run configuration, and run the tests. |
| S8 | Explore an unknown statechart project and write a project-local `statechart-dsl` skill for later agents. Models must not change. |
| S9 | Run two read-only Console instance queries, read the history, recall the first command, and print the current command as text and as JSON. Models must not change. |
| S10 | Create a second empty project that opens without a migration prompt, close this one, open the new one, add a solution with one class, and leave both projects closed. Runs last. |
| S11 | Answer five type questions about the Expressions sample (a subtype, the supertypes, a variable's type and its rule, a commented-out declaration, an operand's expected type) by asking the type checker. Models must not change. |
| S12 | Make `Bool` a subtype of `Number` in the Expressions sample and prove it on a scratch sandbox model: the type error before, a new subtyping rule, one rebuild, the error gone and the side effect on `true + 1` after. |
| S13 | Fix two injected bugs in the Kaja robot language's dataflow builders (a false "Unreachable command" on every `else` branch, a missing one on a `repeat 0 times` body), rebuild once, and leave the sandbox unchanged. |
| S14 | Answer five def-use questions about one BaseLanguage method with a loop, branches and try-finally (which assignments reach which reads). Models must not change. |
| S15 | Find why the generated Java has the wrong `PORTIONS` from the generation plan and trace (keep transient models, read the step model, trace the node back to its rule), fix the generator, rebuild, re-make, and free the transient models. |
| SMOKE | Not an eval. Lists open projects and stops. Readiness check after every MPS start. |

## Directory

### By scenario

**S1 — greenfield language.** Fixture: `empty-project` (synthesized per run). Mutates the project.
Forces structure, editors, constraints (property validator and a referent scope), a non-typesystem
checking rule, one behavior method, a solution that uses the language, JSON blueprints for the
samples, and a clean make (descriptors not hollow).
Run to verify: `mps-language-aspects-overview`, `mps-aspect-structure-concepts`,
`mps-aspect-editor` (cell models, not menus), `mps-aspect-constraints` (the scope is the hard
half), `mps-aspect-typesystem`, `mps-aspect-behavior`, `mps-node-editing`, `mps-baselanguage`,
`mps-model-manipulation`, and the make/reload half of `mps-mcp-workflow`.
Heaviest skill-reading cell (H7). Does not cover intentions, migrations, generators, tests,
console, or project create/open.
Hypotheses: H1 blueprints, H2 make/scaffold, H8 stale runtime.

**S2 — extend a language you did not write.** Fixture: `statechart` (Projectxx5:
`com.example.statechart` + sandbox). Mutates the language and one sandbox transition.
Forces discovery of an existing language, adding a child concept, editing an existing editor so a
transition reads `on <event> [condition] -> <target>`, a property constraint, one intention, a
rebuild, and a sandbox edit.
Run to verify: `mps-language-analysis`, `mps-aspect-intentions` (only cell),
`mps-aspect-editor` when the change is to an existing cell model, `mps-aspect-constraints` for a
property rule rather than a scope, `mps-aspect-structure-concepts` for a child added to a concept
that already exists. The constraint function is where `parse_java_and_insert` inside a
`ConceptFunction` shows up.
Does not cover typesystem, migrations, generators, or bulk insert.
Hypotheses: H4 discovery, H7 skills.
Isolation: shares the statechart module id with S8. Restart MPS before this cell if an earlier
cell in the same process already loaded that language.

**S3 — bulk authoring.** Fixture: `recipes` (a passing S1 project with the sample Recipe and
Cookbook roots deleted; 3 Ingredients remain) plus `scenarios/S3/recipes.csv` copied into the
project dir. Mutates the samples model only.
Forces a file-backed bulk insert, name-based cross-references inside the batch, and one
aggregate root (`Cookbook` → 40 recipe refs). The catalog's intended tool is
`table_to_bulk_insert.py`; a worker that writes its own converter can still pass, so a PASS is
not evidence the script ran — check the transcript for the script name.
Run to verify: `mps-node-editing` bulk path, `scripts/table_to_bulk_insert.py` (transcript, not
just the PASS), `mps-mcp-workflow` `references/bulk-creation.md`, reference wiring after insert.
Does not author any aspect. A pass says nothing about structure, editor, or constraints docs.
Hypotheses: H3 bulk, H6 refs, H1.
Isolation: shares `mcp.study.recipes` with S5, S6, S7, and S9.

**S4 — refactor and migrate.** Fixture: a passing S1 project **with the sample Recipe and Cookbook
roots kept** (`recipes-full`, not the stripped `recipes` tarball — the prompt requires existing
recipes, and the stripped tarball makes "every Recipe has a Summary" vacuous). Mutates the
language and the samples.
Forces a property rename, a cardinality change, a new required child concept, one migration
script, and a language-version bump. The prompt also asks that the editors still show the
recipes; the done criteria do not check the editor.
Run to verify: `mps-aspect-migrations` (only cell), `mps-aspect-structure-concepts` for rename /
cardinality / new child.
The apply half runs over `mps_mcp_run_migrations` (CHECK, then APPLY; D48). It needs the
`MigrationTrigger` change of the D48 plan in the MPS build under test: without it the Migration
Assistant can still open after the language `MAKE` and block every later `mps_mcp_*` call, and a
failed "migration applied" is then the tool gap, not a docs regression. `mps_control.sh start`
passes `-Dmps.migration.assistant.auto=false`, so the wizard cannot open before the worker's first
call either.
Hypotheses: H2, H5, H8.
Isolation: same `mcp.study.recipes` module id as S3, S5, S6, S7, and S9. Restart before this
cell if any of those already loaded the language in this process (D80 includes S4; the skill's
restart list omits it).

**S5 — repair a broken model.** Fixture: `recipes-broken` (`recipes-full` plus the 12 injections
in `scenarios/S5/PROBLEMS.md`). Mutates samples only; root count must stay the same unless the
transcript says a root was unrecoverable.
Forces finding problems (`check_root_node_problems`) and the smallest repair: repoint or remove
a dangling reference, add a missing child, correct a bad property. One injected item is a
typesystem warning, not an error, and does not count against the 0-error criterion. Also forces
two moves the checker cannot see (prompt item 4, criterion 4, ids in `PROBLEMS.md`): the Omelette
entry to the front of `Weeknight Basics`, and the Crepes rest step into `Pancakes` at index 1,
both keeping their node ids.
Run to verify: the analysis-tool half of `mps-mcp-workflow` (problem check, quick fixes,
`print_node` while repairing), surgical `mps-node-editing`, `mps_mcp_alter_nodes`
MOVE_NODE_TO_PARENT (only cell; MOVE_CHILD is seen, not forced). Not a cell for authoring constraints or typesystem —
the rules are already in the fixture.
Prompt revised 2026-10-22 (round 39) to add item 4 and criterion 4. S5 passes before round 39 are
3-criterion passes and not comparable; neither are their turn, token and call totals. Each run's
meta records `promptSha256`, so split by it. The S5 baseline chains are re-captured from round 39.
Hypotheses: H5.

**S6 — generator and two ways to write behavior.** Fixture: `recipes-full` (samples kept). Mutates
the language (generator + behavior).
Forces a root mapping rule that emits, per Recipe, a Java class in package `mcp.study.generated`
with `PORTIONS` and `steps()`, a make of language and solution, and `Recipe.describe()` via
`parse_java_and_insert` plus `describe2()` as a JSON AST. Both must check clean.
Run to verify: `mps-aspect-generator` (only cell), `mps-aspect-behavior` for parsed bodies and
for a hand-written BaseLanguage AST, `mps-baselanguage`, `mps-model-manipulation`.
Criterion 2 names the fixture's `<project>/solutions/mcp.study.kitchen/source_gen/...` path since A6.
Hypotheses: H1, H2.

**S7 — tests and a run configuration.** Fixture: `recipes` (a passing S1; the sample roots are
not the subject). Mutates the project by adding `mcp.study.recipes.tests`.
Forces an `@tests` model with three `NodesTestCase` roots (constraint error, typesystem warning,
`totalMinutes()` == 15) and one `EditorTestCase`, then a JUnit run configuration executed through
the MCP run-configuration tool. The observer re-runs it: 4 tests, 0 failures.
Run to verify: `mps-tests` (only cell), `mps-run-configurations` (only cell).
Known gap, not a docs miss by itself: the tool takes one root, so four roots become four
configurations (D53). The editor-test caret check compares the annotated node, `cellId` and
`selectionStart`/`selectionEnd`, never `caretPosition`/`isLastPosition`. In `before` the caret alone places it unless the selection is non-empty
(D71, D93, docs fixed 2026-09-30, re-measure: no `CellReference` failure, no `before`-selection tree diff, no source hunt).
Hypotheses: H2, H7.

**S8 — onboard and record.** Fixture: `statechart`. Must not modify any MPS model.
Forces a full read of modules, concepts, aspects, and samples, then a project-local skill at
`.agents/skills/statechart-dsl/` laid out as `mps-dsl-memory` prescribes: frontmatter, concept
reference, a real sample node reference, JSON blueprint examples, gotchas.
Run to verify: `mps-dsl-memory` (only cell; the prompt names it), `mps-language-analysis` for
exploration rather than a targeted edit. Also the cell where a wrong `print_node` reading is
shipped into a skill other agents will trust.
Criterion 3 dry-runs every shipped blueprint since A8, after an observer MAKE of the language.
Blueprint files are read only from the system temp directory (D94, docs fixed 2026-10-01,
re-measure: no temp-directory rejection on the blueprint dry runs, no resolved temp path in the
shipped skill).
Hypotheses: H4, H7.
Isolation: shares statechart with S2; restart between them in either order. The evaluation's
observer MAKE (criterion 3) deploys the statechart runtime, so an S2 cell after S8 in the same
process starts with a deployed runtime instead of the hollow one it is written for (the D80 hazard).

**S9 — Console, read-only.** Fixture: `recipes` with Recipe and Cookbook roots deleted (3
Ingredients remain). Must not modify models.
Forces two Console commands (`#instances`, then a `where` + `select`), history including
responses, recall of the first command into the input, and printing that input as PLAIN TEXT and
as JSON.
Run to verify: `mps-console` (only cell).
Console history and the current input are session state. Evaluate before the project is closed;
after a close the evidence is gone.
Hypotheses: H1, H7.
Isolation: shares the recipes module id with S3, S5, S6, S7. May precede a language-changing
cell in the same process.

**S10 — project lifecycle.** Fixture: synthesized `empty-project`. The worker creates
`<proj>-target`, closes the current project, opens the new one, adds solution
`mcp.study.lifecycle` / model `mcp.study.lifecycle.notes` / class `Note`, and closes it.
**Runs last in a round.** It is the only cell whose worker closes and opens projects. A modal
(Migration Assistant, or New Window / This Window) blocks every later `mps_mcp_*` call, not just
this run. The worker must not shut MPS down.
Run to verify: `mps-project-management` (only cell that measures it as a worker — the observer
opens projects for every other cell, which does not count). Also `mps_mcp_close_project` and the
welcome-screen path in `mps-mcp-workflow`.
The one BaseLanguage class is not a `mps-baselanguage` eval.
Record `list_open_projects` the moment the worker exits, before reopening anything.
Hypotheses: H4, H7.

**S11 — type questions, read-only.** Fixture: `expressions` (the `samples/expressions` project,
`classes_gen` included). Must not modify models.
Forces answers from the running typesystem instead of from its rules: `IS_SUBTYPE` (`Int` <:
`Float`), `SUPERTYPES` (all four supertypes of `Int`), `EXPLAIN_TYPE` for a variable typed by a
later assignment (`E` in `Main` is `Float` through `typeof_SimpleMathAssignment`), and
`GET_EXPECTED_TYPE` for an operand slot (`Number`). One question is about a commented-out
declaration in `TypeError`: its check is `no problems found in checked nodes (1 subtree(s)
unchecked …)`, and citing that as "well-typed" fails. It replays a recorded failure (two rounds and
five `SubtypingRule` printouts for `Int <: Float`).
Run to verify: `mps_mcp_query_types` and `GET_TYPE` / `GET_EXPECTED_TYPE` routing in
`mps-mcp-workflow` (Critical Directives, `references/analysis-tools/type-queries.md`), the
`uncheckedSubtrees` reading of `check_root_node_problems`, and the type-question half of
`mps-language-analysis`.
Read the process signals in `done_criteria.md` together with the `families.py` columns
`T_rule_prints` (should be 0) and `T_type_queries`; a pass with rule printouts is the regression.
Hypotheses: H4, H7.
Isolation: the fixture copy has the module ids of `samples/expressions`, so it must open in an MPS
that has not loaded that sample — not one with the MPS checkout's own project open (it holds the
sample), and not after another cell that loaded the Expressions sample. Restart MPS before S11.
If `classes_gen` in the fixture is stale against the checkout, the cell measures a stale runtime
(the D80 hazard): make the sample before tarring it.

**S12 — typesystem authoring with a sandbox.** Fixture: `expressions`, as S11. Prompt frozen
2026-10-08 after the round-30 rehearsal (opus and sonnet both passed; `HOTSPOT_REPORT_round30.md`). The worker creates a scratch model with a `Probe` root holding
`Number n = true` and `Int i = 1.3 F`, asks the engine for the baseline error and its rule, adds a
`SubtypingRule` `Bool <: Number`, rebuilds the language once, and asks again: `IS_SUBTYPE` true,
the `Bool` error gone, the `Float`/`Int` one kept, `true + 1` now `Number` (the unintended widening a
lattice change brings). Evidence goes to `EVIDENCE.md`.
Run to verify: `mps-aspect-typesystem` Common-Path steps 4 and 9 (the sandbox recipe), the
"After changing typesystem rules" half of `references/analysis-tools/type-queries.md`, and "a MAKE
with `runtimeReady: true` is the reload" (D84).
Read the process signals together with the `families.py` columns `T_type_queries_before_make`
(should be ≥ 1), `T_rule_prints` (≤ 3), `M_makes` (1 expected, ≥ 1 required) and `M_reload_all` (0).
Making the sandbox or the scratch model fails by design (no generator for `SimpleMathWrapper`); that
failure says nothing about the language.
Hypotheses: H2, H5, H7.
Isolation: as S11 — the fixture has the module ids of `samples/expressions`, so restart MPS before
S12, also when S11 ran before it in the same process. S12 changes and builds the language, so
restart again before any later Expressions cell. The worker's MAKE writes generated files into the
run project; criterion 5 compares `.mps` files only.

**S13 — dataflow builder debugging.** Fixture: `kaja-dataflow` (`samples/robot_Kaja` with two
injected builder bugs and a `Reachability` probe script). Mutates the language's `dataFlow` model
only. The worker reads the false and missing "Unreachable command" errors, finds the guilty
`IfStatement_DataFlow` (misplaced `label elseBranch`) and `Repeat_DataFlow` (`count < 0` guard),
fixes both, rebuilds the language once, and leaves the sandbox and the `check_KajaDataflow` rule
alone. Prompt frozen 2026-10-23 after the round-40 baseline (opus PASS, 2 MAKEs, 9 builder
prints, no console probe).
Run to verify: `mps-aspect-dataflow` (only cell): builder statements, labels and positions, the
"validates but analyses wrongly" route, and the rebuild-then-check loop. Also the baseline for a
future `mps_mcp_query_dataflow` `PRINT_PROGRAM` (`dataflow-exposure-assessment.md`).
Read the process signals together with the `families.py` columns `DF_builder_prints`, `M_makes`
(each extra MAKE is one trial-and-error cycle) and `DF_console_runs` (a hand-made engine probe).
Hypotheses: H2, H5, H7.
Isolation: the fixture copy has the module ids of `samples/robot_Kaja`, and S13 builds the
language, so restart MPS before every S13 run, as before S11 and S12. It must not open next to the
MPS checkout's own project. No other cell uses Kaja.

**S14 — def-use questions, read-only.** Fixture: `flow-java` (a synthesized empty project plus
solution `flow.study` with one class, `Ledger`). Must not modify any model. Five questions about
which assignments reach which reads in `Ledger.settle`, a method with a `foreach`, nested `if`s, an
early `return`, `continue` and a `try`/`finally`. The model checks clean, so no warning gives an
answer away. The answers were read from the engine (`ReachingDefinitionsAnalyzer` /
`ReachingReadsAnalyzer`) through a console probe kept next to the criteria. Prompt frozen
2026-10-23 after the round-40 baseline (opus PASS with its own typed console probe of the engine).
Run to verify: nothing in today's catalog. This is the tool-free baseline for a future
`mps_mcp_query_dataflow` `REACHING_WRITES` / `REACHING_READS` and its skill page.
Read the process signals together with `DF_console_runs` (did the worker ask the engine at all?).
Hypotheses: H4, H7.
Isolation: `flow.study` is unique to this fixture; no restart is needed before or after S14.

**S15 — debug a misgeneration with the generation trace.** Fixture: `recipes-misgen` (`recipes-full`
plus an observer-authored, interpreted generator `map Recipe` → `RecipeClass` and the injected
defect D1, `PORTIONS` from `node.steps.size`; `scenarios/S15/DEFECT.md`). Mutates the generator's
template model only; the samples must stay as they are.
Forces `alter_nodes MAKE` with `saveTransientModels: true`, `mps_mcp_generation` `PLAN` (which step
runs the recipes generator: index 2, prefix `2_`), `TRANSIENT_MODELS` (which step model first holds
the wrong value: `@2_0`), a `TRACE` that finds the `Root_MappingRule` with `role: RULE` before the
generator is edited, the fix in the template, a language rebuild and a re-make, and freeing the
transient models. Reading the step model itself and tracing `BACKWARD` rather than `FORWARD` are not
gated (a BACKWARD trace from `@6_7` already names `@2_0`); P5 and P2 measure them. Crepes is right by coincidence (4 steps, serves 4), so the symptom is
recipe-dependent.
Run to verify: `mps-aspect-generator` `references/debugging-misgeneration.md` (only cell),
`mps_mcp_generation` (only cell), `alter_nodes MAKE saveTransientModels` and the `transientModels`
block, transient-aware reads (`get_project_structure` / `print_node` on an `i:` reference), and the
transient-model lifecycle rules (a make drops them; `NOT_EDITABLE` on writes).
Read the process signals in `done_criteria.md` together with the `families.py` columns
`M_makes_save_transient` (≥ 1), `GN_trace_before_fix` (≥ 1), `GN_template_prints_before_trace`
(≤ 1), `GN_plan`, `GN_transient_models`, `GN_transient_reads`, `GN_drop`, and `M_makes` (3 expected).
The generator is interpreted on purpose; compiled-generator tracing (coarser, no `LOOP`/`TEMPLATE`
roles) stays with `JetBrainsMPSGenerationTraceIntegrationTest`. The plan read is a DEFAULT plan;
explicit plans, checkpoints and forks are not authored or read here.
Rehearsed 2026-10-23 (`runs-s15`, effort `medium`, one MPS restart per run): `S15-opus-1` (31 tool
calls, 2 min 18 s) and `S15-sonnet-1` (27 calls, 1 min 51 s) both passed criteria 1–5 on the intended
path, every P1–P7 signal on target (`GN_trace_before_fix` 1, `GN_template_prints_before_trace` 0,
`M_makes` 3), 0 error envelopes. D2 stays held back.
Hypotheses: H2, H5, H7.
Isolation: the fixture has the `mcp.study.recipes` module id of S3–S7 and S9, so restart MPS before
S15 when one of those ran in the process; the worker rebuilds the language, so restart again before
any later recipes cell. S13 and S14 (the dataflow cells) do not use `recipes*` and need no restart for it.

**SMOKE — not a scenario.** No `done_criteria.md`, no evaluation, `pass` stays empty. One
`mps_mcp_list_open_projects` against the harness project. Use it only as the readiness gate
after a start or restart.

### By skill

**Run** = the prompt cannot pass without that skill's subject. Run these, not the whole matrix.
**Also seen** = workers spend turns here, but a pass does not prove the change. Skip it unless
the change is specifically about that incidental path.

The gate-4 default in the study skill (S1 + S3) is a pilot default. It is the wrong set for any
skill whose **Run** column is not S1 or S3.

| Skill or topic | Run | Also seen | Not this |
|---|---|---|---|
| `mps-language-aspects-overview` | S1 | | |
| `mps-aspect-structure-concepts` | S1 (create concepts, enums, children, refs), S2 (add a child to an existing concept), S4 (rename, cardinality, new concept) | | S3 only consumes the language |
| `mps-aspect-editor` | S1 (an editor per concept, not a scaffold), S2 (change an existing cell model) | | menus, keymaps, action maps, substitute menus — no cell |
| `mps-aspect-constraints` | S1 (property validator + a scope that excludes the referrer), S2 (non-blank property rule) | | S5 repairs instances; it does not author a rule |
| `mps-aspect-typesystem` | S1 (warning on a property value; non-typesystem checking), S11 (querying the compiled typesystem, its Common-Path step 0), S12 (authoring a subtyping rule and checking it on a scratch sandbox, steps 4 and 9) | | no cell authors inference or replacement rules; S12 authors one subtyping rule |
| `mps-aspect-dataflow` | S13 (fixing two builders: a label position and a guard) | | no cell authors a builder for a new concept, a custom analyzer, or a builder mode |
| `mps-aspect-behavior` | S1 (one method), S6 (parser body and JSON AST of the same method) | | |
| `mps-aspect-intentions` | S2 | | |
| `mps-aspect-migrations` | S4 | | apply half needs the D48 `MigrationTrigger` change; see S4 above |
| `mps-aspect-generator` | S6 (authoring a root mapping rule and macros), S15 (debugging a misgeneration, `references/debugging-misgeneration.md`) | | compiled-generator tracing (integration test only) |
| `mps-aspect-generation-plan` | | S15 (reads a DEFAULT plan's steps and prefixes; no plan authoring) | authoring a plan, checkpoints or forks — no cell |
| `mps-node-editing` | S1 and S6 (hand-written blueprints), S3 (bulk + aggregate root), S5 (surgical repair, identity-preserving moves), S2 and S4 and S7 (writes) | | S8 and S9 must not write |
| `mps_mcp_alter_nodes` MOVE_NODE_TO_PARENT | S5 (forced: same-model reparent into a middle index) | | cross-model moves, promotion to root, console-node moves (no cell) |
| `mps_mcp_alter_nodes` MOVE_CHILD | | S5 (the reorder; a same-parent MOVE_NODE_TO_PARENT also passes) | cross-model moves, promotion to root, console-node moves (no cell) |
| `mps-node-editing/scripts/table_to_bulk_insert.py` | S3 | | the aggregate cookbook root is outside the spec (D82) |
| `mps-baselanguage` | S6 (parser vs JSON AST), S1 and S2 (function bodies in behavior / constraints) | S7 (test bodies) | S10's one empty class is not a signal |
| `mps-model-manipulation` | S1 (checking rule, behavior, constraint code), S6 (behavior bodies; a whole method is one deep print) | | |
| `mps-language-analysis` | S2 (find the concept to extend), S8 (explore a project you have not seen), S5 (find every problem), S11 (type questions via `mps_mcp_query_types`) | S1, S6, S7 (`get_concept_details` / `shape`) | |
| `mps-dsl-memory` | S8 | | |
| `mps-tests` | S7 | | |
| `mps-run-configurations` | S7 | | |
| `mps-console` | S9 | | evaluate before close |
| `mps-project-management` | S10 | | observer opens for S1–S9 and S11–S15 do not measure this skill |
| `mps-mcp-workflow` (the skill as a whole) | pick the row below; do not run all of them | | |
| make / reload / hollow descriptors | S1, S2, S4, S6, S12 | S15 | a MAKE that returns `runtimeReady: true` is the reload (D84) |
| `mps_mcp_alter_nodes` MAKE `saveTransientModels`, the `transientModels` block | S15 | | |
| `mps_mcp_generation` (`PLAN`, `TRANSIENT_MODELS`, `TRACE`, `DROP_TRANSIENT_MODELS`) and transient-model reads | S15 | | `TRACE` on compiled generators, fork branches (integration tests only) |
| bulk insert, `references/bulk-creation.md` | S3 | S1 (a few roots, not bulk) | |
| reference formats, dry-run name warnings | S3, S1 | S5 | |
| `check_root_node_problems`, quick fixes | S5 | S1, S3 (end-of-task check only) | |
| type queries (`mps_mcp_query_types`, `GET_TYPE`, `GET_EXPECTED_TYPE`, `references/analysis-tools/type-queries.md`) and `uncheckedSubtrees` | S11 (read-only), S12 (before and after a rule change) | | |
| dataflow analysis results (reachability, reaching definitions / reads) | S13 (reachability through the checker), S14 (def-use questions; no tool answers them yet) | | |
| `print_node` / concept-details shape | S8 (a wrong reading is shipped), S5 (repair against a print) | S1, S2, S6 | |
| `scripts/mps_dump.py` | | S8, S6, S7, S1 (workers use it to orient; the prompt does not require it) | |
| discovery of an unknown project (H4) | S2, S8 | | |
| skill-reading volume (H7) | S1, S2 | S8 | S3 is the lean cell; do not use it to measure reading cost |
| JSON blueprint authoring (H1) | S1, S6 | S3 (file-backed, little authoring), S8 (ships examples) | |

### No scenario

Do not run S1 as a stand-in. Say that the catalog has no cell, and add one if the change needs
an eval (skill `references/scenarios.md`, "Adding a scenario").

- `mps-aspect-actions`
- `mps-aspect-editor-menus-and-keymaps`
- `mps-aspect-textgen`
- `mps-aspect-accessories` (S1 wires a solution to a language; that is not accessory models or a runtime solution)
- `mps-language-modularity`
- `mps-language-inheritance` (S6 and S7 sometimes walk superconcepts because `shape` omits them; that is not a cell for this skill)
- `mps-quotations`
- `mps-build-language`
- `mps-ide-plugin`
- `mps-lang-core-xml`
- `mps-distribution-build`
- non-MPS skills (`bugfix-workflow`, `actions`, `commits`, …)

### If the request is "run evals for my skill change"

1. Find the skill in **By skill**. If it is under **No scenario**, stop and say so.
2. Run the **Run** cells only, on the models the user names. One model is enough to see whether
   the changed path is taken; a second model is a variance check, not a requirement.
3. If several cells share a fixture language, restart MPS between them: S2/S8 on `statechart`,
   and any two of S3/S4/S5/S6/S7/S9/S15 on `recipes*` (S4 is in that set — it loads the same
   language; S15's worker rebuilds it). S11 and S12 each need a restart before them, and an MPS
   that has not loaded the Expressions sample. A read-only cell (S9) may precede a language-changing one in the same process; S8
   may not, because its evaluation MAKEs the language (A8). S1 and S10 are synthesized and do not
   need that restart. S13 needs a restart before every run (it builds the Kaja sample). S14 needs
   no restart. S10 runs last, and only when it is in the list.
4. Read the cell's caveats before calling a FAIL a regression (S4/D48, S9 session state).
5. The live catalog is what the run measures: `run_worker.sh` installs it and records
   `skillsSha256`. A cell run against a different catalog is not a verification of the change.
