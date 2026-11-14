# Skill Script Automation Study — Round 50 (2026-11-14)

Status: measurement round complete. Scope on request: **S1–S4 × sonnet**, n = 1 per cell, effort `medium`,
`bypassPermissions`, call log on. **4 of 4 PASS.** The only remedy written is A18, a study-doc fix (§5). It is the first
measurement of the AGENTIC VIEW surface (the `print_node` AGENTIC VIEW format and the new
`mps_mcp_get_compact_project_structure` tool) and of the slimmed agent guides. `S3-sonnet-1` is a rerun: the first
attempt aborted because the observer had not copied `recipes.csv` into the scratch project (§4 H1). One gate deviation:
no SMOKE after the S3 and S4 restarts (§4 H2).

Evidence: `~/MPSProjects/mcp-study/archive/runs/r50/`. Per run there are `{worker,server}.jsonl`, `*.meta.json`,
`*-install.json`, `*.harness.log` and `*.eval.md` (SMOKE has no `eval.md` by design). `server-calllog.jsonl` is the
whole call log of the round, evaluator and observer calls included; `inventory.json` is the tool inventory. `analysis/`
holds `metrics.csv`, `phases.csv`, `tools.json`, `chains.json`, `errors.json`, `hotspots.md`, `navigation.json` and
`families.tsv` (against `r48` for S1–S3 and `r49` for S4). The aborted first S3 attempt is in
`~/MPSProjects/mcp-study/archive/aborted-S3-missing-csv/` and was not evaluated. The scratch projects are still under
`~/MPSProjects/mcp-study/workspace/` (§4 H4); they go to `archive/workspace/r50/`. `run:step` is the 1-based
`tool_use` ordinal that `show_steps.py` prints.

## 0. Harness state

- **Measured surface:** HEAD `d2a737244e92` on `261/vaclav/fix4`; the only working-tree change is
  `.idea/inspectionProfiles/Project_Default.xml`, outside the measured surface. `skillsSha256 54247fbd`, guides
  `0b42760f`, inventory `a63960ab` (55 tools) in every meta. MPS 2026.1 EAP, build 261.25134; Claude Code 2.1.325
  (call-log `client`).
- **What changed since the comparison runs** (`r48` for S1–S3 at catalog `53ad1413`/`7074a8bb`, `r49` for S4 at
  `7074a8bb`; guides `11fb1144` in both; inventory 54 tools): 39 commits under `plugins/mcp-tools/resources` and `src`.
  The ones that touch these cells are the AGENTIC VIEW `print_node` format and the compact project structure tool
  (`a20949296e26`, `33511502bc10`, `cdc89b8e8a48`, `3a8db329da9d`, `e5ef2c5a8b9f`), the slimmed agent guides
  (`b5dc1feb179d`, `f83c80a32398`), the D137 editor-scaffold fix (`08703b3c71dd`), table input routed to
  `table_to_bulk_insert.py` (`63295f802771`), and the migrations-skill rework (`87d691684fee`, `64f45ba09293`,
  `648fae540f27`). The new tool adds 1,136 B of schema and 836 B of description. In all, schema bytes went from
  57,830 to 60,073 and description bytes from 98,037 to 102,852 (`inventory.json` of r49 and r50).
- **Effort:** sonnet `medium` in every meta (pinned per model, gate 2a). Prompts are unchanged against the comparison
  runs (`promptSha256` S1 `96376ae7`, S2 `f78fdde3`, S3 `a922898b`, S4 `8c8682bc`).
- **Isolation:** SMOKE, S1 and S2 ran in one MPS process (`mpsPid` 88553, `isolationLevel: per-round`). S1 is
  synthesized and S2 uses `statechart`, so they share no fixture language. MPS was restarted before S3 (pid 90783:
  S1 had built a `mcp.study.recipes` language in 88553) and before S4 (pid 91921: S3 and S4 both use `recipes*`). Both
  metas say `per-shared-fixture-restart`. The aborted S3 attempt ran in 90783 as well. Its copy
  (`S3-sonnet-1-20261114T0800`) was closed at 08:01:43Z, five seconds before the rerun's copy
  (`…T0801`) got its first call (`server-calllog.jsonl`), so the two copies of the fixture, which share module ids,
  were never open together.
- **Consistency gate:** passes except H2. Every non-SMOKE run has `taskPass: true` and an existing `taskEvidence`;
  every `effort` is `medium`; the skills, guides and inventory hashes are identical across all five runs; the one
  SMOKE has `serverLines 1`; `server_call_surplus` is 0 in every run (`metrics.csv`). The 34 evaluator `print_node`
  calls that answered `NOT_FOUND` (S1, 07:55–07:56Z) are only in `server-calllog.jsonl`. The run slices are cut by the
  worker's call-log offsets, so evaluator traffic reaches no slice.
- **Evaluation:** one read-only evaluator per run (`study-scenario-evaluator`). No observer re-ran anything.

## 1. Results

Token columns are the corrected M-0 sums (`input_tokens`, `output_tokens`, `cache_read`, `cache_write`), not
`*_events`. `api_stall_s` is 0 in every run, so active wall equals `wall_s`. Skill bytes = `skill_read_bytes` +
`skill_tool_bytes`. Source: `analysis/metrics.csv`.

| run | pass | turns | calls | MCP | Bash | errors / retries | input | output | cache read | cache write | skill bytes (read + Skill) | compactions | USD | wall − stall s |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| S1-sonnet-1 | PASS | 85 | 78 | 50 | 21 | 9 / 5 | 122 | 22,580 | 6,224,009 | 152,978 | 68,871 + 91,229 | 0 | 1.46 | 215 |
| S2-sonnet-1 | PASS | 56 | 51 | 36 | 7 | 0 / 0 | 68 | 14,037 | 2,766,848 | 131,076 | 45,964 + 61,773 | 0 | 0.94 | 134 |
| S3-sonnet-1 | PASS | 14 | 11 | 5 | 2 | 0 / 0 | 18 | 2,949 | 380,845 | 72,383 | 8,344 + 54,598 | 0 | 0.36 | 26 |
| S4-sonnet-1 | PASS | 41 | 38 | 28 | 6 | 0 / 0 | 52 | 10,496 | 2,127,370 | 103,532 | 25,648 + 40,761 | 0 | 0.73 | 94 |
| SMOKE-sonnet-1 | — | 3 | 2 | 1 | 0 | 0 / 0 | 8 | 216 | 58,299 | 29,946 | 0 | 0 | 0.13 | 6 |
| **Σ S1–S4** | 4/4 | 196 | 178 | 119 | 36 | 9 / 5 | | | 11,499,072 | 459,969 | | 0 | 3.49 | 469 |

- **Fixed-context floor:** SMOKE reads 88,253 tokens (input + cache read + cache write at `result`), and its first
  message creates 28,779 cache tokens. Round 48's SMOKE read 90,692 and created 29,592. The floor fell 2.4 K
  although the inventory gained a tool and 4.8 KB of descriptions, which fits the guide slimming. Cache read per turn
  ranges from 27 K (S3) to 73 K (S1).
- **Comparison with earlier rounds: not comparable.** Scenario, model, effort and prompt match the latest runs of these
  cells, but `skillsSha256` (`54247fbd` vs `53ad1413` / `7074a8bb`), `guidesSha256` (`0b42760f` vs `11fb1144`) and
  the inventory (55 vs 54 tools) differ, so the rule in `analysis.md` excludes a comparison. For context only, the
  latest runs were: r48 `S1-sonnet-2` 82 calls / 279 s / $1.82 (`S1-sonnet-1` FAILed on the pre-fix catalog);
  r48 `S2-sonnet-1` 59 / 155 / $1.00; r48 `S3-sonnet-1` 11 / 28 / $0.36; r49 `S4-sonnet-1` 41 / 103 / $0.80
  (`archive/runs/r48|r49/analysis/metrics.csv`). Nothing in this round contradicts them.
- **Error envelopes: 9, all in S1** (opus not run). `unloaded_schema_calls` is 40 of 50 MCP calls in S1, with 9
  errors. In S2 it is 1 of 36, and 0 in S3 and S4. S1 loaded six schemas at `:2` and never searched again, so every
  later tool was called blind (§3 #1). S2, S3 and S4 had zero errors.
- **The new surface in use:** `get_compact_project_structure` was called in all four cells (S1 `:21`, `:45`; S2
  `:7`, `:33`; S3 `:6`; S4 `:5`, `:34`). `print_node` AGENTIC VIEW was the default read in S2 and S4. S3 went
  CSV → `table_to_bulk_insert.py` → one 41-root insert → one check, 11 calls in 26 s.

## 2. Verdicts worth keeping

- **S1 (D137 re-measure):** the editor fix holds at sonnet `medium` for the second time (round 48 `S1-sonnet-2`, now
  `S1-sonnet-1`). Nine editor writes, `S1-sonnet-1:30–38`, fall between the scaffolds (`:15–20`) and the constraints
  skill load (`:39`). The evaluator found all four non-wrapper editors refined (Recipe `serves … difficulty …`, Step
  `step … takes … min`, Ingredient `… measured in …`, Cookbook with the value on the alias line). The "no self
  seeAlso" rule is a `canBeChild` on `RecipeRef`, not a referent scope. The criterion accepts it ("or a check"), but
  completion still offers the containing recipe (`S1-sonnet-1.eval.md`, observations).
- **S2:** a clean run, 0 envelopes. The worker checked that the intention is offered (`list_node_intentions`, `:51`)
  but did not apply it, and the criteria do not ask for that. The Transition editor shows `<no guard>` on every
  unguarded transition. It is cosmetic and not gated.
- **S3:** 40/40 CSV rows matched beyond the five rows the criterion samples. The run used the shipped
  `table_to_bulk_insert.py` (`:8`) without `--verify`, then made one insert (`:9`) and one check (`:10`).
- **S4:** the migration ran the intended path, MAKE (`migrationsPending:1`, `:31`) → CHECK (`:32`) → APPLY (`:33`). The
  Summary has no editor cell, so it does not show in the Recipe editor. This is the known S4 gap already noted in
  `scenarios.md` (round 49 `S4-sonnet-1` too). Recipe's `shortDescription` still says "servings" after the rename. Not
  gated.
- **`observerNote`, the only one, on S3:** "Earlier attempt aborted (recipes.csv not copied by observer); moved to
  archive/aborted-S3-missing-csv, this is the rerun on a fresh path." It records provenance, not a gap between the
  criteria and the prompt, so it proposes **no `done_criteria.md` change** (§5).
- **Evaluator notes that did not change a verdict:** the S1 evaluator sent 34 malformed read-only `print_node` calls
  (`NOT_FOUND`, a shell slip, nothing written). The S3 evaluator made 297 read calls to compare all 40 rows field by
  field (§4 H3).

## 3. Hotspots

`hotspots.md` lists 10 chains over 178 calls. It ranks by chars, and those leaders are each cell's intended
authoring steps. The table ranks by avoidable batches instead: each batch re-reads 27–73 K of context here. Three
instances per family were inspected with `show_steps.py`. S1 made 54 batches, about 17 of them avoidable; S2, S3 and
S4 have at most one each.

| # | family | instances | avoidable batches | determinism | tier | evidence |
|---|---|---|---|---|---|---|
| 1 | blind call of a tool whose schema was never loaded, answered with the required-parameter envelope | 8 in S1 (7 with only `projectPath`, plus 1 empty `json`) | 8 | 1.0: every envelope names the missing keys, and the next call succeeds | none: model trait (lesson 41; round 45 N7). The **D** already exists (`mps-mcp-workflow/SKILL.md:47`, "Load each tool's schema before its first call") | `S1-sonnet-1:13→14`, `:22`, `:23`, `:25→26→27`, `:47→48`, `:56→57`, `:73→74` |
| 2 | looking for a `NonTypesystemRule` warning blueprint (D66) | 1 run, 6 Bash batches | 5 | 0.5: the shape is in `json-blueprints/operator-mapping-and-examples.md` §(e), but the grep runs on the index file `json-blueprints.md` and finds nothing (`:63`, `:64`) | **D** (D66) | `S1-sonnet-1:62–67` → `:68` |
| 3 | `Bash → Bash` skill-reference reads after a `Skill` load | 16 counted occurrences | 1–2 | 0.5 | **D** (D50 family). Mostly the intended routing, `Skill → Bash` (8): `S1-sonnet-1:4→5`, `:11→12`, `:39→40` | `S1-sonnet-1:27→28` (A9 zsh glob, 1 batch), `:40→41`, `:62→67` |
| 4 | misspelled concept in a blueprint, rejected without a suggestion | 1 | 2 | 1.0: `ParenthesisedExpression` → `ParenthesizedExpression`, one letter | **S** (new **D139**) | `S1-sonnet-1:49` → `:50` `search_concepts` → `:51` `sed` → `:52` |
| 5 | parsed concept-typed loop variable fixed by hand (D77) | 1 batch, 2 calls | 1 | 1.0 | **D** (D77) | `S1-sonnet-1:57` (`for (SNode s : this.steps)`) → `:58–59` (SNodeType, SPropertyAccess) |
| 6 | `Bash → insert_root_node_from_json` (blueprint file, then insert by path) | 7 | 0 | 1.0 | intended (D120's `blueprint.py`); no remedy | `S1-sonnet-1:46→47`, `:68→69`, `:75→76`; S3 `:8→9` (`table_to_bulk_insert.py`) |
| 7 | `ToolSearch → list_open_projects` at startup | 4 | 0 | 1.0 | intended | S1 `:2→3`, S2 `:2→3`, S4 `:3→4` |

- **Hypotheses.** *Confirmed:* the D137 fix holds for sonnet (§2). The S3 table route holds (11 calls, 0 errors).
  *Refuted:* "the new compact-structure tool adds orientation calls". Every cell used it in place of a
  `get_project_structure` dump: no worker called `get_project_structure` at all. *Unmeasured:* the effect of
  the AGENTIC VIEW surface on cost. The catalog, guides and inventory all moved at once, and n = 1 (§1).
- **Candidates without evidence in this round:** none was proposed. In particular, no **S**, **P** or **T** remedy has
  a supporting instance outside S1's blind calls, and those have a docs line already.

## 4. Harness findings

- **H1: an observer slip aborted the first S3 attempt.** `recipes.csv` was not copied into
  `S3-sonnet-1-20261114T0800`. The worker found no input, made 0 MCP calls (`serverLines 0`, 18 s) and stopped. Its
  files went to `archive/aborted-S3-missing-csv/`, and the rerun used a fresh copy (`…T0801`, whose CSV the
  evaluator `cmp`-checked against `fixtures/inputs/recipes.csv`). This is an observer slip, not a skill defect.
  `run_worker.sh` does not check a scenario's input files. The cheap guard is in §5.
- **H2: no SMOKE after the S3 and S4 restarts.** Runbook step 4 makes SMOKE the readiness gate after every start or
  restart; the observer used the `mps_control.sh wait` handshake only. So the consistency check "every new `mpsPid`
  follows a SMOKE" fails for 90783 and 91921. The evidence is intact anyway: both slices are complete
  (`server_mps_calls` = `mps_calls`, surplus 0), and neither run had a pre-dispatch or Welcome-screen rejection.
- **H3: evaluator read cost.** The S3 evaluator made 297 read calls on the rerun's project (08:02–08:04Z, mostly
  JSON `print_node` on each Step and `RecipeRef` wrapper) to compare all 40 rows. The S4 evaluator read the whole
  samples model, reference targets included (`-> recipe=Pancakes#…`), with one `get_compact_project_structure`.
  `analysis.md` "Evaluating a run" → "Reading nodes" still says a JSON print shows one level, so every child needs its
  own call. Filed as **A18**. The S1 evaluator's 34 `NOT_FOUND` prints were a shell slip, with no effect on
  evidence.
- **H4: scratch projects not moved.** Step 8 needs `list_open_projects` to show each project closed, and that call was
  refused in this session. The observer said the S4 project is still open, but the call log records a successful
  `mps_mcp_close_project` on `S4-sonnet-1-20261114T0804` at 08:54:54Z (`ok: true`, client
  `mps-study-tools-inventory`). Every other scratch project was closed right after its evaluation (07:56:43, 08:00:41,
  08:01:43, 08:04:57Z). All five directories (`S1-sonnet-1-20261114T0750`, `S2-sonnet-1-20261114T0756`,
  `S3-sonnet-1-20261114T0800`, `S3-sonnet-1-20261114T0801`, `S4-sonnet-1-20261114T0804`; no `.fixture.json` files)
  stay in `workspace/` for the observer.
- **H5: `$RUNS` was moved while MPS still runs with the call log on.** `McpCallLogListener` opens the file by path on
  every call (`Files.write(…, CREATE, APPEND)`, `McpCallLogListener.kt:105`), so later calls go to a new
  `$RUNS/server-calllog.jsonl` and never into the archive. An empty `$RUNS` was recreated after the move, so the
  observer's next calls are logged there. The next round's preflight should expect those lines (lesson 49).

## 5. Next

- **Defects filed:** **D139** (S): a concept-not-found rejection gives no suggestion for a one-letter spelling variant
  (`ParenthesisedExpression`). `ConceptSuggestions` matches subtokens only, and the near-miss rule needs three or
  more of them. **A18** (harness, D): evaluators should read whole models with `get_compact_project_structure`.
- **Watch rows updated** (`defects.md`): D80, D84, D86 and D88 absent where exercised (D88 stays: S6 and S12 not run).
  A9 seen again (`S1-sonnet-1:27`). D118 and D128 not exercised. **D137 retired.** Its stated re-measure (sonnet ×
  2, clean S1) is met by round 48 `S1-sonnet-2` and this round's `S1-sonnet-1`; opus was clean in round 48
  (`S1-opus-2`).
- **Open rows with new evidence:** D66 (`S1-sonnet-1:62–67`, 5 avoidable batches: the cheapest docs fix this round),
  D77 (`S1-sonnet-1:57→58–59`).
- **Remedies (only A18 implemented):**
  - **D66, tier D**, owner skills: a warning-on-a-property `NonTypesystemRule` blueprint in
    `non-typesystem-checking.md`, plus a line in `json-blueprints.md` naming §(e) of
    `operator-mapping-and-examples.md`. Contract: no extra read between the typesystem skill load and the rule
    insert. Saving ≈ 5 batches per S1 run. Risk: none.
  - **D139, tier S**, owner `common/ConceptSuggestions.kt`: add an edit-distance tier (≤ 2 on the simple name, within
    the named language) to `Mode.REJECTION`. Saving 2 batches per instance. Risk: noisy suggestions on short names, so
    gate it on a length of at least 8.
  - **A18, tier D**, owner study docs, **done 2026-11-14** with this write-up: replace the "Reading nodes" bullet
    in `analysis.md`. Saving: about 290 evaluator calls per S3 evaluation. Risk: AGENTIC VIEW prints a reference
    as `name#id`, so the criterion's "by `targetReference`" check becomes the id.
  - **H1 guard (not filed; one slip):** `run_worker.sh` could refuse to launch when a file that the scenario's
    `worker_prompt.md` names (`recipes.csv`) is missing from the project.
- **`observerNote` → `done_criteria.md`:** no change proposed for S3; the note is provenance. A meta field for reruns
  (`rerunOf: <archived path>`) would keep `observerNote` for what `analysis.md` defines it as.
- **Sonnet blind schema calls** (40 of 50 MCP calls in S1; 1, 0, 0 in S2–S4): leave them unfiled as a model trait,
  but watch S1-sonnet. If the next S1-sonnet run shows more than 3 projectPath-only probes again, the envelope cannot
  shorten it (it already names the keys); the open question is why the `SKILL.md:47` line was ignored here and
  followed in round 48 (`unloaded_schema_calls` 1–2).
- **Not filed:** `S4-sonnet-1:21–23`, three `model_used_language` ADDs in one batch, two of them
  `providedByDevKit` (0 extra batches); `S2-sonnet-1:41` the same, once; the S1 self-reference rule as a `canBeChild`
  instead of a scope (accepted by the criterion; the D92/D64 territory, but no defect symptom).
- **Next round:** run S6 and S12 sonnet (or a full S1–S16 sonnet pass) to settle D88's row. Pair it with an opus S1–S3
  pass so the AGENTIC VIEW surface has a two-model baseline before any A/B.
