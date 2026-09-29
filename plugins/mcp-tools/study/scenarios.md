# Study scenarios

Which eval cell covers which topic. Use this file when asked to "run evals to verify changes to
skill X" (or to a tool, a skill script, or a reference file). The brief list is the human summary.
The directory is the lookup: find the skill, run the cells in its **Run** column, and do not
substitute a cell that is not listed.

How to run a cell is the `skill-optimization-study` skill (`references/harness.md`,
`references/scenarios.md`). Prompts live in [`scenarios/`](scenarios/) and are frozen — do not edit
`worker_prompt.md` to make a cell cover a new topic; add a scenario. Open defects that change how
to read a result are in [`docs-defects.md`](docs-defects.md). Fixtures are regenerated per
[`fixtures/README.md`](fixtures/README.md), not stored in git.

A pass means the worker met `done_criteria.md`. It is evidence about the skills that cell
**forces**. It is weak evidence about skills it only happens to read.

## Brief list

| id | What it does |
|---|---|
| S1 | From an empty project, build a recipes language (concepts, enums, editors, a property constraint, a no-self-reference scope, a typesystem warning, a behavior method) and three sample recipes in a solution. |
| S2 | Extend an existing statechart language with a `Guard` child, an editor that shows it, a non-blank constraint, and an "Add guard" intention, then put a guard on one sandbox transition. |
| S3 | Load 40 recipes from a CSV, wire `seeAlso` by name, and add one cookbook that references all of them. |
| S4 | Rename a property, relax a cardinality, add a required child, and write a migration that fills that child on existing recipes. Applying the migration headlessly is still blocked (see the directory). |
| S5 | Find and repair twelve injected problems (dangling references, missing children, invalid property values) without deleting recoverable roots. |
| S6 | Add a generator that emits one Java class per recipe, and add the same behavior method twice: once through the Java parser, once as a JSON AST. |
| S7 | Add three node tests and one editor test, create a run configuration, and run the tests. |
| S8 | Explore an unknown statechart project and write a project-local `statechart-dsl` skill for later agents. Models must not change. |
| S9 | Run two read-only Console instance queries, read the history, recall the first command, and print the current command as text and as JSON. Models must not change. |
| S10 | Create a second empty project that opens without a migration prompt, close this one, open the new one, add a solution with one class, and leave both projects closed. Runs last. |
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
**Do not treat a failed "migration applied" as a docs regression.** There is still no MCP tool
that runs a pending migration headlessly (D48). `reload_all` on the version-bumped project can
open the Migration Assistant and block every later `mps_mcp_*` call for the rest of the round.
The measurable half is: script exists, version bumped, structure matches. The apply half fails
for a tool gap.
Hypotheses: H2, H5, H8.
Isolation: same `mcp.study.recipes` module id as S3, S5, S6, S7, and S9. Restart before this
cell if any of those already loaded the language in this process (D80 includes S4; the skill's
restart list omits it).

**S5 — repair a broken model.** Fixture: `recipes-broken` (`recipes-full` plus the 12 injections
in `scenarios/S5/PROBLEMS.md`). Mutates samples only; root count must stay the same unless the
transcript says a root was unrecoverable.
Forces finding problems (`check_root_node_problems`) and the smallest repair: repoint or remove
a dangling reference, add a missing child, correct a bad property. One injected item is a
typesystem warning, not an error, and does not count against the 0-error criterion.
Run to verify: the analysis-tool half of `mps-mcp-workflow` (problem check, quick fixes,
`print_node` while repairing), surgical `mps-node-editing`. Not a cell for authoring constraints
or typesystem — the rules are already in the fixture.
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
configurations (D53). The editor-test caret comparison is `cellId` + `selectionStart`/`selectionEnd`
only (D71).
Hypotheses: H2, H7.

**S8 — onboard and record.** Fixture: `statechart`. Must not modify any MPS model.
Forces a full read of modules, concepts, aspects, and samples, then a project-local skill at
`.agents/skills/statechart-dsl/` laid out as `mps-dsl-memory` prescribes: frontmatter, concept
reference, a real sample node reference, JSON blueprint examples, gotchas.
Run to verify: `mps-dsl-memory` (only cell; the prompt names it), `mps-language-analysis` for
exploration rather than a targeted edit. Also the cell where a wrong `print_node` reading is
shipped into a skill other agents will trust.
**Evaluator caveat (A8):** "blueprints parse as JSON" accepts files the server rejects. A ✔ is
not evidence the shipped blueprints insert.
Hypotheses: H4, H7.
Isolation: shares statechart with S2. A read-only cell may run before the language-changing one
in the same process; the other order needs a restart.

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
| `mps-aspect-typesystem` | S1 (warning on a property value; non-typesystem checking) | | no inference, subtyping, or replacement cell |
| `mps-aspect-behavior` | S1 (one method), S6 (parser body and JSON AST of the same method) | | |
| `mps-aspect-intentions` | S2 | | |
| `mps-aspect-migrations` | S4 | | apply-half is D48; see S4 above |
| `mps-aspect-generator` | S6 | | |
| `mps-node-editing` | S1 and S6 (hand-written blueprints), S3 (bulk + aggregate root), S5 (surgical repair), S2 and S4 and S7 (writes) | | S8 and S9 must not write |
| `mps-node-editing/scripts/table_to_bulk_insert.py` | S3 | | the aggregate cookbook root is outside the spec (D82) |
| `mps-baselanguage` | S6 (parser vs JSON AST), S1 and S2 (function bodies in behavior / constraints) | S7 (test bodies) | S10's one empty class is not a signal |
| `mps-model-manipulation` | S1 (checking rule, behavior, constraint code), S6 (behavior bodies; a whole method is one deep print) | | |
| `mps-language-analysis` | S2 (find the concept to extend), S8 (explore a project you have not seen), S5 (find every problem) | S1, S6, S7 (`get_concept_details` / `shape`) | |
| `mps-dsl-memory` | S8 | | |
| `mps-tests` | S7 | | |
| `mps-run-configurations` | S7 | | |
| `mps-console` | S9 | | evaluate before close |
| `mps-project-management` | S10 | | observer opens for S1–S9 do not measure this skill |
| `mps-mcp-workflow` (the skill as a whole) | pick the row below; do not run all ten | | |
| make / reload / hollow descriptors | S1, S2, S4, S6 | | a MAKE that returns `runtimeReady: true` is the reload (D84) |
| bulk insert, `references/bulk-creation.md` | S3 | S1 (a few roots, not bulk) | |
| reference formats, dry-run name warnings | S3, S1 | S5 | |
| `check_root_node_problems`, quick fixes | S5 | S1, S3 (end-of-task check only) | |
| `print_node` / concept-details shape | S8 (a wrong reading is shipped), S5 (repair against a print) | S1, S2, S6 | |
| `scripts/mps_dump.py` | | S8, S6, S7, S1 (workers use it to orient; the prompt does not require it) | |
| discovery of an unknown project (H4) | S2, S8 | | |
| skill-reading volume (H7) | S1, S2 | S8 | S3 is the lean cell; do not use it to measure reading cost |
| JSON blueprint authoring (H1) | S1, S6 | S3 (file-backed, little authoring), S8 (ships examples) | |

### No scenario

Do not run S1 as a stand-in. Say that the catalog has no cell, and add one if the change needs
an eval (skill `references/scenarios.md`, "Adding a scenario").

- `mps-aspect-actions`
- `mps-aspect-dataflow`
- `mps-aspect-editor-menus-and-keymaps`
- `mps-aspect-generation-plan`
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
   and any two of S3/S4/S5/S6/S7/S9 on `recipes*` (S4 is in that set — it loads the same
   language). A read-only cell (S8, S9) may precede a
   language-changing one in the same process. S1 and S10 are synthesized and do not need that
   restart. S10 runs last, and only when it is in the list.
4. Read the cell's caveats before calling a FAIL a regression (S4/D48, S8/A8, S9 session state).
5. The live catalog is what the run measures: `run_worker.sh` installs it and records
   `skillsSha256`. A cell run against a different catalog is not a verification of the change.
