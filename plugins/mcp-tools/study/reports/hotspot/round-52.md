# Skill Script Automation Study — Round 52 (2026-11-16)

Status: targeted verification round, complete, not provisional. Purpose: verify D130 (fixed 2026-11-16 in
`a2b722a040ca` / `70887eb93d1d`, plan `plugins/mcp-tools/docs/d130-plan.md`). Scope: S30, S31, S18 and S35 (run in
that order) × opus, n = 1, effort `medium`, `bypassPermissions`, call log on, one MPS process (pid 29596) with no
restart between the cells (four different fixtures), plus `SMOKE-opus-1` as the readiness gate. **3 of 4 PASS**:
S30-opus fails one sub-item of criterion 2 that only concerns how the keyword cell is built (`observerNote`). Both
D130 checks pass. (1) The P1 guard: every non-SMOKE meta carries `otherOpenProjects: []` and
`allowSiblingProjects: false`. (2) The search-heavy cells are clean: no `search_concepts` result or name suggestion
misled a worker. D130 is archived. An off-metrics two-project cell, S18-opus-2, ran after a restart; it is not part of
the metrics (§4 H2). No remedy was implemented.

Evidence: `~/MPSProjects/mcp-study/archive/runs/r52/`. Per run there are `{worker,server}.jsonl`, `*.meta.json`,
`*-install.json`, `*-mcp/`, `*.harness.log`, `*-worker.stderr` and `*.eval.md`. SMOKE has no `eval.md` by design.
`<run-id>-blueprints/` holds every temp-file blueprint that a `json` / `childJson` argument named (39 files in the
four cells), copied before the move; none was missing. `observer/` holds the observer's test re-runs
(`s18-`, `s30-`, `s31-`, `s35-rerun.txt`), the S18-opus-2 re-run and probe (`s18-2-*.txt`), and its launch scripts.
These were copied from `/tmp/d130-study/`. `server-calllog.jsonl` is the whole call log of the window, 566 lines:
- 324 from `claude-code/2.1.325`: the four cells, both SMOKEs, and S18-opus-2's slice at offsets 178467–189614;
- 242 from `mps-study-tools-inventory/0.1`: evaluators, observer re-runs and probe, and the inventory.

`inventory.json` is the tool inventory. `analysis/` holds `metrics.csv`, `phases.csv`, `tools.json`, `chains.json`,
`errors.json`, `hotspots.md`, `navigation.json` and `families.tsv` (rows for `r49`, `r51` and this round). The
off-metrics cell is in `~/MPSProjects/mcp-study/archive/runs/r52-d130-sibling/`, with its own `analysis/` and its
blueprints. The scratch projects are in `~/MPSProjects/mcp-study/archive/workspace/r52/`, except S18-opus-2's, which
was still open at wrap-up (§4 H6). `run:step` is the 1-based `tool_use` ordinal that `show_steps.py` prints.

## 0. Harness state

- **Measured surface:** HEAD `7dc7e1f8c7f4` on `261/vaclav/fix4`, committed 09:20Z. The cells ran 09:25Z–10:23Z and
  the off-metrics cell 10:27Z–10:31Z. The working tree had only `.idea/inspectionProfiles/Project_Default.xml`,
  which is outside the measured surface.
- **Changes since round 51's `59a66531c847`:**
  - D130 P1, the harness guard (`957d03b01a58`);
  - D130 P2, the server: provenance markers, a narrow project scope, a global `all` scope, and ordering by match
    quality, then origin tier, then name (`a2b722a040ca`);
  - D130 P3, descriptions and skills (`70887eb93d1d`);
  - D142's recovery in the occupied-role rejection (`5965f2c6e715`);
  - the A20 re-pin;
  - scenario wording and criteria edits (S30 criterion 2 now accepts a vertical options list).
- **Hashes:** `skillsSha256 0fa70fe4` (round 51 `54247fbd`), guides `0b42760f` (unchanged) and inventory `2f00d851`
  (round 51 `a63960ab`) are identical in all six metas.
- **Inventory:** 55 tools, as before. Seven descriptions grew: `search_concepts` (1,450 → 1,954 B),
  `get_concept_details`, `alter_nodes`, `update_node`, `insert_root_node_from_json`, `update_root_node_from_json` and
  `model_used_language`. Description bytes went 102,852 → 105,660 and schema bytes 60,073 → 60,463 (`inventory.json`).
- **Environment:** MPS 2026.1 EAP from sources (selector `MPSSRC2026.1`, port 64343, `mpsMcpUrl` identical in every
  meta), Claude Code 2.1.325, worker `claude-opus-5-5` (transcript `init`).
- **Effort and prompts:** effort is `medium` in every meta, SMOKE included (pinned per model, gate 2a).
  `promptSha256` equals round 51's for all four cells.
- **Isolation:** `per-round`. The four cells and `SMOKE-opus-1` share `mpsPid` 29596. Runbook step 6 allows this
  because no two cells share a fixture language: S30 uses the synthesized empty project, S31 `alerts2`, S18
  `recipes-gen` and S35 `kaja-editor`. `SMOKE-opus-2` (pid 39137) gated the off-metrics cell after the restart and is
  in `$RUNS` for that reason only.
- **Consistency gate: passes.**
  - All four cells exited 0, have a non-null `taskPass`, and their `taskEvidence` names an existing `eval.md`.
  - The three hashes match across them.
  - Both SMOKEs have `serverLines` 1.
  - `server_call_surplus` is 0 in all six runs (`metrics.csv`).
- **D130 guard (check 1):** S30, S31, S18 and S35 have `otherOpenProjects: []` and `allowSiblingProjects: false`;
  both SMOKEs have `null`, as `run_worker.sh` specifies for SMOKE. This ticks P1's last item in `d130-plan.md`.
- **Evaluation:** one read-only `study-scenario-evaluator` per run, with a "Search" section in each `eval.md`. The
  observer re-ran each cell's tests from the evaluator-side client: S30 9/9, S31 17/17, S18 3/3, S35 6/6, 0
  failures (`observer/*-rerun.txt`).

## 1. Results

Token columns are the corrected M-0 sums (`input_tokens`, `output_tokens`, `cache_read`, `cache_write`), not
`*_events`. `api_stall_s` is 0 in every run (0 `api_retries`), so active wall equals `wall_s`. Skill bytes =
`skill_read_bytes` + `skill_tool_bytes`. No run compacted. Source: `analysis/metrics.csv`.

| run | pass | turns | calls | MCP | Bash | errors / retries | input | output | cache read | cache write | skill bytes (read + Skill) | compactions | USD | wall − stall s |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| S30-opus-1 | FAIL | 100 | 98 | 56 | 35 | 0 / 0 | 182 | 61,911 | 19,199,611 | 304,088 | 235,973 + 28,612 | 0 | 7.51 | 731 |
| S31-opus-1 | PASS | 159 | 157 | 105 | 46 | 2 / 2 | 244 | 89,706 | 31,489,374 | 397,548 | 132,563 + 28,612 | 0 | 11.27 | 1105 |
| S18-opus-1 | PASS | 40 | 37 | 26 | 4 | 0 / 0 | 52 | 10,671 | 2,154,360 | 102,478 | 5,063 + 43,463 | 0 | 1.46 | 125 |
| S35-opus-1 | PASS | 131 | 127 | 91 | 29 | 0 / 0 | 154 | 59,062 | 15,094,390 | 282,036 | 73,216 + 54,473 | 0 | 6.46 | 707 |
| SMOKE-opus-1 | — | 3 | 2 | 1 | 0 | 0 / 0 | 8 | 291 | 58,545 | 30,069 | 0 + 0 | 0 | 0.26 | 7 |
| SMOKE-opus-2 (gates the off-metrics cell) | — | 3 | 2 | 1 | 0 | 0 / 0 | 8 | 298 | 69,180 | 19,434 | 0 + 0 | 0 | 0.18 | 6 |
| **Σ cells** | 3/4 | 430 | 419 | 278 | 114 | 2 / 2 | | 221,350 | 67,937,735 | 1,086,150 | 446,815 + 155,160 | 0 | 26.71 | 2668 |

- **Round total:** 4 cells, 419 tool calls, 278 MCP calls, $26.71, plus $0.43 for the two SMOKEs.
- **Fixed-context floor:** both SMOKEs read 88,622 tokens (input + cache read + cache write at `result`), the same
  as round 51's median. The 2.8 KB of new description text did not move it, because the worker loads tool schemas
  lazily through `ToolSearch` (`H_toolsearch` 1–2 per cell, `families.tsv`). The inventory has 55 tools and
  105,660 description bytes (`inventory.json`).
- **Comparison with earlier rounds: not comparable.** Scenario, model, effort and `promptSha256` match round 51's
  cells, but `skillsSha256` (`54247fbd` → `0fa70fe4`) and the inventory (`a63960ab` → `2f00d851`) differ. Isolation
  differs too: round 51 restarted MPS before every cell. For context only, n = 1 per cell, round 51 first
  (`archive/runs/r51/analysis/metrics.csv`):
  - over the four cells: 438 → 419 calls, 75.8 M → 67.9 M cache read, $28.90 → $26.71, errors 7 → 2;
  - per cell, in calls: S30 136 → 98, S31 140 → 157, S18 46 → 37, S35 116 → 127.

  Nothing here is attributable to D130. The cells hardly use search (6 calls in 419), and the per-cell swings point
  both ways.
- **Search use (check 2):** `search_concepts` was called 6 times, with 0 errors and a server time of 11–51 ms each
  (`tools.json`, `server-calllog.jsonl`):
  - `S30-opus-1:70` and `:86`;
  - `S31-opus-1:84`;
  - `S35-opus-1:36`, `:91` and `:92`.

  Each returned 3–34 hits, with exact names first. There were 2 `details.unresolved` suggestion lists
  (`S30-opus-1:72`, `:84`). S18-opus-1 never searched: it took its names from the `mps-tests` references. No search
  call was repeated, and no wrong concept was written and then repaired (§2).
- **D130 markers:** none in the round's results. `containingProject` and `editableFromCurrentProject` occur once per
  transcript, and only inside the `search_concepts` tool description. No auto-widen warning appeared (0 "widened").
- **Error envelopes: 2**, both in S31, each followed by one retry:
  - `:54`, an `INVALID_JSON` from `insert_root_node_from_json` (D88);
  - `:120`, the worker's own blueprint helper raising in Bash.

  `unloaded_schema_calls`, `arg_validation_errors`, `pre_dispatch_rejections`, `welcome_rejections` and
  `modal_blocked` are 0 everywhere.

## 2. Verdicts worth keeping

- **S30-opus (FAIL, criterion 2 only):** the shared `QuestionHeader` component (#2254771883723915789) shows the
  keyword with a `CellModel_ReadOnlyModelAccessor` on `node.concept.alias`, not the lang.core alias component. That
  accessor is editable, has the id `keyword` and carries a named transformation menu. Criteria 1, 3, 4 and 5 pass,
  and Green was confirmed by the observer re-run (9 started, 9 finished, 0 failures). `observerNote`: "Criterion 2
  fails only on how the keyword cell is built (CellModel_ReadOnlyModelAccessor on node.concept.alias instead of the
  lang.core alias component); the prompt intent is met. Criterion 5 Green confirmed by the observer re-run of
  "Survey editor tests": 9 started, 9 finished, 0 failures, 0 ignored. D130: 2 search_concepts calls and 2
  concept-not-found suggestion lists, none misled the worker." The options list used the new-line-children variant,
  so the 2026-11-14 loosening was not needed.
- **S31-opus (PASS, 9 of 9 criteria, rev 8):** 17 of 17 tests in the observer re-run. Its one search
  (`:84`, four texts) returned 34 lang.editor concepts that cover everything the worker then wrote. The insert at
  `:88` was accepted first time with `fixReferences` 0/0/0.
- **S18-opus (PASS):** 3 of 3 tests. No `search_concepts`, `get_concept_details` or `query_structure` call; the
  qualified names came from `mps-tests/references/generator-test.md` and `generator-test/*.md` (`:3–5`). This cell
  does not exercise the D130 search path: it did not in round 51 either, nor in the D130 baseline cells.
- **S35-opus (PASS, 6 of 6 tests):** three searches (`:36`, `:91`, `:92`) with exact names first, and no
  concept-not-found anywhere in the run. The evaluator recorded the accepted default-menu variant for item 2, as in
  every S35 run so far.
- **The one ranking miss:** at `S30-opus-1:72`, `get_concept_details` named
  `jetbrains.mps.baseLanguage.structure.LocalVariableReference` among several refs. Its suggestions were
  `ILocalVariableElementList`, `ILocalReference`, `ILocalVariableElement`, `BaseVariableReference` and
  `IVariableReference`, not `VariableReference`. The worker wrote `VariableReference` at `:74` and the insert at
  `:75` was accepted, so it cost no batch. This is D139's ranking half, with a different list since D130's ordering.
  The name came from `paste-and-copy.md`, read at `:13` (D140).
- **Evaluator slip (not a verdict input):** S30's `eval.md` puts the accepted insert at "step 76"; it is `:75`
  (`show_steps.py`).

## 3. Hotspots

Ranked by avoidable turns (cache read per turn here ranges from 54 K in S18 to 198 K in S31; `metrics.csv`), then
by the study formula. Three instances of each family were inspected with `show_steps.py`. With four cells, n = 1,
the ranking says where the turns went in this round. It does not support a frequency claim.

| # | family | instances | avoidable turns | determinism | tier | `run:step` evidence |
|---|---|---|---|---|---|---|
| 1 | MPS checkout read for editor behaviour (D143), `X_outside_project` | 14 calls in 2 cells (S31 9, S35 5; round 51: 20 and 7) | ≈ 13 (S31 9 batches, S35 4) | 0.5: the question is fixed, the answer is not in the skills | **D** (open D143) | (a) `S31-opus-1:19` (the MPS process's arguments, to find the checkout), `:20–27` (`MATCHING_LABEL`, `SELECT_ALL`, braces), `:110` (`StyleRegistry` colours); (c) `S35-opus-1:44–46` (context assistant, transformation-menu items), `:59` (the alias component's cell id) |
| 2 | `get_concept_details` `detail: "shape"` with a small `maxInlineBytes` (1,000–2,000), so the result goes to a temp file, then the worker's own Python prints one line per role (family A + B′) | 4 in 2 cells (S30 3, S31 1; `A_tempfile_env` S30 4, round 51 8) | ≈ 4 (one per instance) | 1.0: the script is a fixed projection of the shape | P-off or S candidate, not filed: a terser shape (role, kind, target, cardinality) would save the hop, but the worker chose it deliberately and n = 2 cells | `S30-opus-1:68→69`, `:72→73`, `:84→85` (`$TMPDIR/survey/shape.py`); `S31-opus-1:85→86` (inline `python3 -c`) |
| 3 | hand-typed deep inline JSON rejected as unbalanced (D88) | 1 | 1 | 1.0 | **D** exists (D120's `blueprint.py`); the envelope routes there and works | `S31-opus-1:54→55→56` |
| 4 | worker's own blueprint helper raises | 1 | 1 | 0 | none: a slip in the worker's script | `S31-opus-1:120→121` |
| 5 | `List` ambiguous after the worker imported `java.awt` into the test model | 1 | 1–2 | 0.5 | none: the worker's own import (`:126`), fixed by qualifying | `S31-opus-1:132→133→134` |
| 6 | concept-not-found suggestion misses the concrete concept (D139 ranking, D140 source) | 1 | 0 (batched probe) | 1.0 | **S** / **D** (open D139, D140) | `S30-opus-1:13` → `:72` → `:74` |
| 7 | per-test `parse_java_and_insert` of assertions | 6 counted + 10 parallel (`hotspots.md` #7) | 0 | 0: one test body each | intended | `S31-opus-1:127–132`, `S30-opus-1:55–56` |
| 8 | skill references read by Bash (`Bash → Bash → Bash`, `D_skill_bash_fetch` 30 in 4 cells) | 35 chains | not counted | 0: choosing what to read is judgment | intended | `S30-opus-1:9–12`, `:22`, `:24`; `S18-opus-1:3–5`; `S31-opus-1:6–8` |

- **Hypotheses.**
  - *Confirmed:*
    - the P1 guard records the open-project state in every non-SMOKE meta;
    - with only the run project open, the new ranking puts exact names first in all six searches, and no worker
      was misled;
    - in the two-project setup, the markers reach the worker without changing its behaviour (§4 H2).
  - *Refuted:* none.
  - *Unmeasured:*
    - whether a worker would adopt a marked foreign language: no worker searched in the two-project cell;
    - any cost effect of D130 on search-heavy work, because 6 searches in 419 calls is too few.
- **Candidates without evidence in this round:**
  - a server change to `search_concepts` beyond D139's ranking half;
  - an online script for any family: no multi-call chain repeats across cells;
  - a template asset.

## 4. Harness findings

- **H1: the P1 guard works on a real round.** `check_open_projects.py` passed all four launches with only the run
  project open, and the metas record `otherOpenProjects: []` and `allowSiblingProjects: false`. SMOKE metas carry
  `null`, as specified. With `ALLOW_SIBLING_PROJECTS=1`, the harness log says "running beside
  /Users/vaclav/work/MPS/myMPS-fix" and the meta records the sibling (H2).
- **H2: the off-metrics two-project cell, S18-opus-2 (not in the round's metrics).**
  - Setup: MPS restarted (pid 39137), gated by `SMOKE-opus-2`, `myMPS-fix` (702 modules) open beside the run
    project. Its meta records `otherOpenProjects: [{path: /Users/vaclav/work/MPS/myMPS-fix, modules: 702, verdict:
    modules}]` and `allowSiblingProjects: true`.
  - Result: PASS, 3 of 3 tests in the observer re-run. 46 turns, 43 calls (30 MCP), 0 errors, $1.53, 145 s, against
    S18-opus-1's 40, 37, 0, $1.46 and 125 s (`archive/runs/r52-d130-sibling/analysis/metrics.csv`; n = 1).
  - Markers that reached the worker: `conceptContainingProject: MPS` and
    `conceptEditableFromCurrentProject: false` on inserted and updated roots; `addedUsedLanguageDetails` with
    `containingProject: MPS` for `jetbrains.mps.lang.test.generator` and `jetbrains.mps.lang.modelapi`
    (`S18-opus-2:26`); and the second project in `list_open_projects` (`:7`).
  - Effect: none on behaviour. No text mentions the markers, no extra call follows them, and no call targets
    `myMPS-fix` (`X_outside_project` 0).
  - Search: the worker never called `search_concepts`, so the observer probed after the run
    (`observer/s18-2-probe.txt`). `["GeneratorTest","NodesTestCase"]` with scope `all` → 4 hits marked `MPS`; scope
    `project` → 3 `lang.test.generator` hits, with no widening warning. The first scope-`all` call took 111 ms
    (`server-calllog.jsonl`). The 2026-10-29 empty result does not reproduce on this build.
  - Limit: the cell confirms the marker path and the probe confirms the search path. No worker has yet adopted a
    marked foreign language from a search.
- **H3: one MPS process for four cells was sound.** No two cells share a fixture language, so D80 cannot arise;
  there was 0 `reload_all` and no hollow descriptor. Restarting only for the two-project cell kept its sibling
  project out of the measured cells.
- **H4: evaluator read cost.** Evaluator and observer calls on the cells' projects: S31 69, S35 65, S30 57, S18 23
  (`server-calllog.jsonl`, client `mps-study-tools-inventory`). They include the observer's test re-run per cell.
  Round 51's median was 19.5 per run over all 82 cells, so only the editor cells' own round-51 counts would be a fair
  comparison; this report did not extract them. Another 16 calls went to S18-opus-2 (its evaluation plus the probe),
  9 to the harness project and 3 to `myMPS-fix`.
- **H5: blueprint snapshots.** All 39 temp-file blueprints the cells named, and the 3 of S18-opus-2, were still in
  `$TMPDIR`. They were copied to `<run-id>-blueprints/`, and `families.tsv` is byte-identical whether it resolves
  them there or at the original paths.
- **H6: MPS state at wrap-up.** MPS is up (pid 39137) with `myMPS-fix` and the S18-opus-2 scratch project open
  (`mcp_call.py mps_mcp_list_open_projects`, refused before dispatch for the harness path and therefore not logged),
  and the call log still points at `$RUNS/server-calllog.jsonl`. So S18-opus-2's workspace stays in `workspace/`,
  and the observer's closing calls will land in a fresh `$RUNS/server-calllog.jsonl` (lesson 49).

## 5. Next

- **Defects filed:** none. No product, doc or harness defect appeared that is not already on the list.
- **Archived:** **D130**, fixed and verified in this round. The row moved from `defects.md` to the end of
  `defects-archive.md` with this round's evidence. `d130-plan.md` P1's last item is ticked, and the runbook
  preflight sentence now gives the guard's current reason ("changes what `search_concepts` returns and marks results
  foreign").
- **Open rows with new evidence:**
  - **D139** (ranking half): `S30-opus-1:72`, the suggestion list changed under D130's ordering and still lacks
    `VariableReference`.
  - **D140**: `S30-opus-1:13 → :72`, the name read from `paste-and-copy.md` again; no rejected write this time.
  - **D143**: `S31-opus-1:19–27`, `:110` and `S35-opus-1:44–46`, `:59` (`X_outside_project` 9 and 5).
- **Watch rows updated:**
  - D80 not exercised: four fixtures in one process.
  - D84 and D86 not exercised: S1, S2, S4 and S6 were not run.
  - D88 seen once outside its cells (`S31-opus-1:54`), recovered in one write through `blueprint.py`. The row stays.
  - A9 absent.
- **Remedies (none implemented), unchanged from round 51:**
  - **D143**, tier D: one paragraph per cluster in the owning skills, then re-measure S31, S33, S35 and S38a.
  - **D140**, tier D: write `VariableReference` in `paste-and-copy.md`. The fix is cheap and the file was read
    again this round.
  - **D139**, tier S: an edit-distance tier, and ranking first a candidate named "the query minus a leading subtoken".
  - The §3 #2 projection is a candidate only (no filing; see the table).
- **`observerNote` → proposed `done_criteria.md` changes** (the observer edits criteria; past runs stay scored):
  - **S30, criterion 2, keyword cell:** the criterion forces the topic "component + alias cell". Either add "shown
    with the lang.core alias component" after "a question's keyword is the concept's alias" in the prompt's editor step (this re-baselines `promptSha256`), or accept a
    read-only model accessor on `node.concept.alias` inside the shared component when it is editable, carries the
    keyword's menu and the sample renders the alias. The first keeps the forced topic, so prefer it (lesson 48).
  - **S18-opus-2 (off-metrics):** its note records the experiment and needs no criteria change for S18's verdict.
    The D130 paragraphs of four criteria files are now false, though:
    - `S18/done_criteria.md:38` and `S19/done_criteria.md:38` say "a run with `allowSiblingProjects: true` in its
      meta still has the confound/it";
    - `S36/done_criteria.md:179` and `S37/done_criteria.md:130` say a `search_concepts → []` fallback is "expected
      only in a run whose meta has `allowSiblingProjects: true`".

    Proposed wording: "since 2026-11-16 a sibling project no longer hides languages; a run with
    `allowSiblingProjects: true` sees foreign markers (`containingProject`, `addedUsedLanguageDetails`); a
    `search_concepts → []` for an MPS language is a regression to file".
- **Stale script text (the observer's or the user's call; this agent does not edit scripts):**
  `scripts/run_worker.sh:28` and `:193` and `scripts/check_open_projects.py:4` and `:137` still give the old reason
  ("its languages vanish from / hides its languages from `search_concepts`"). The guard itself stays.
- **Not filed** (model slips with no doc or tool fix):
  - `S31-opus-1:120`, the worker's own helper raising;
  - `S31-opus-1:132`, an ambiguous `List` after its own `java.awt` import;
  - the S30 evaluator's step-number slip (§2).
- **Next round:** nothing is outstanding for D130. A search-adoption check needs a cell whose worker does search,
  with a sibling project, for example S30 or S35 with `ALLOW_SIBLING_PROJECTS=1`. It is optional: no user setup is
  known to need it. If a D140/D143 docs batch is made, re-measure S30, S31, S33, S35 and S38a on opus and sonnet.
