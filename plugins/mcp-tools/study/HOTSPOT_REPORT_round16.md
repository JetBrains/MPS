# Skill Script Automation Study — Round 16 (2026-09-25)

Status: measurement round complete. Scope on request: **S5, S6, S7, S8, S9, S10** × **opus + sonnet**
= 12 cells, plus one SMOKE. All 12 cells **PASS**. The round measures the committed HEAD `f576e7d5fad5`
(D62 inline intention listings, D69 bulk-insert routing, D51/D52 assignability hints, D58 `mps_dump`
kind checks). No code or docs remedy was made in this round. Nothing was pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r17/{SMOKE-opus-1,S5..S10-{opus,sonnet}-1}-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `S10-*.leftbehind.txt`, and `analysis/` (with the reviewer's `review.md`
and `families.py`). As in round 15, the directory suffix is one ahead of the round number. Citations
use `run:step`, the 1-based `tool_use` ordinal that `show_steps.py` prints.

**Baseline of record.** `HOTSPOT_REPORT.md` (2026-09-15) measured only **S1 + S3**. None of S5–S10
has a baseline cell, so this report compares on two axes:
- **Hotspot families (§2).** The baseline's chain families A, B, B′, C, D, discovery refinement,
  literals and ToolSearch, normalised per tool call, because the scenario mix differs.
- **Same-scenario prior cells (§3).** These are the latest earlier run of each scenario:
  - S5: round 11 (`runs-r11`)
  - S6, S7, S8: round 12 (`runs-r12`)
  - S9: round 14 (`runs-r15`, opus + sonnet)
  - S10: the 2026-09-24 run (`runs-s10-2026-09-24`)

Every evidence set, including the baseline in `~/MPSProjects/mcp-study-baseline/runs` (lesson 36),
was re-analysed with today's `analyze_runs.py` into `runs-r17/analysis-baseline/` and
`runs-r17/analysis-prior-*/`.

## 0. Harness state

- **MPS**: 2026.1 EAP from this checkout.
  - The plugin build is fresh: `plugins/mcp-tools/classes` (16:49) is newer than the sources it
    compiles. The working tree was clean before and after the round.
- **Instrumentation**:
  - `capture` → `calllog runs-r17/server-calllog.jsonl` → `shutdown`. The shutdown closed the dev
    checkout.
  - `start` on the synthesized harness `proj-r17/harness` → `wait` → SMOKE.
  - One MPS for the round: pid **53860** in all 13 metas.
  - `server_call_surplus` is 0 on every run. There was 1 `MODAL_BLOCKED` (S10-sonnet-1:31, §4 F6),
    0 Welcome-screen rejections and 1 `arg_validation_error`.
  - Wrap-up: MPS was restarted onto the dev checkout without the call-log option.
- **Measured surface**:
  - `inventorySha256 a7bc6420…`: 48 tools, 39 `mps_mcp_*`, descriptions 57,068 B and schemas
    40,493 B. The baseline had 43,175 B and 34,328 B.
  - `skillsSha256 f6b20bbf…`, identical on all 13 runs.
- **Worker models**:
  - `sonnet` = `claude-sonnet-5` in every run here and in every prior cell, so the sonnet deltas
    in §3 isolate tools and skills.
  - `opus` = `claude-opus-5-5`. S9 is the only opus cell with a predecessor; S5–S8 and S10 are first
    opus measurements.
- **Prompts**: `promptSha256` for S5–S10 is identical to the prior cells.
- **Fixtures**:
  - S5: `fixtures-r6/recipes-broken.tar.gz` (`0dc4878e…`).
  - S6: `fixtures-r12/recipes-full.tar.gz` (`37d9c83a…`).
  - S7 and S9: `fixtures-r12/recipes.tar.gz` (`40f91e40…`).
  - S8: `fixtures-r12/statechart.tar.gz` (`d9dd23be…`).
  - S10: synthesized.
  - No tarball contains a doc surface.
- **Guards**: `check_user_agents.py` exit 0; harness unit tests 56/56.
- **SMOKE context floor** (opus, input + cache read + write at `result`): **62,052** tokens, the same
  as round 15.
- **Evaluation**:
  - One read-only Opus evaluator per cell. Evaluators had no MPS MCP session (the observer's
    connection dropped at the MPS restart) and used `mcp_call.py`.
  - S7 evaluators re-ran the worker's run configurations. S10 evaluators checked the target project
    after the observer reopened it, following the recorded left-behind snapshot.

## 1. Metrics (round 16)

| cell | pass | turns | wall s | cost $ | cache read | tool calls | MPS | Bash | skill reads / KB | envelopes | errors / retries | notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| S5-opus-1 | ✔ | 23 | 81 | 1.08 | 0.81 M | 21 | 17 | 1 | 1 / 1.5 | 0 | 0 / 0 | |
| S5-sonnet-1 | ✔ | 32 | 242 | 0.90 | 1.13 M | 29 | 20 | 3 | 3 / 8.9 | 0 | 0 / 0 | |
| S6-opus-1 | ✔ | 71 | 297 | 2.58 | 5.15 M | 69 | 37 | 29 | 10 / 80.0 | 3 | 0 / 0 | 10 steps in MPS sources (F1) |
| S6-sonnet-1 | ✔ | 97 | 981 | 3.24 | 6.85 M | 92 | 52 | 20 | 13 / 73.9 | 1 | 1 / 1 | 1 compaction |
| S7-opus-1 | ✔ | 60 | 247 | 2.03 | 3.45 M | 57 | 39 | 9 | 4 / 46.7 | 0 | 1 / 1 | 4 per-root run configs (D53) |
| S7-sonnet-1 | ✔ | 157 | 1,449 | 5.44 | 14.61 M | 152 | 89 | 18 | 18 / 49.0 | 2 | 4 / 1 | 2 compactions, caret episode (F5) |
| S8-opus-1 | ✔ | 53 | 252 | 1.58 | 1.94 M | 50 | 27 | 14 | 6 / 7.1 | 3 | 2 / 2 | |
| S8-sonnet-1 | ✔* | 74 | 651 | 2.79 | 5.77 M | 69 | 19 | 25 | 22 / 39.3 | 5 | 2 / 0 | 455 KB results; *skill inverts 2 validators (F9) |
| S9-opus-1 | ✔ | 26 | 86 | 0.75 | 0.87 M | 23 | 17 | 2 | 1 / 12.3 | 0 | 0 / 0 | |
| S9-sonnet-1 | ✔ | 25 | 107 | 0.57 | 1.11 M | 22 | 16 | 2 | 1 / 12.7 | 0 | 0 / 0 | |
| S10-opus-1 | ✔ | 22 | 76 | 0.79 | 0.91 M | 19 | 9 | 7 | 3 / 50.1 | 0 | 1 / 1 | 0 Welcome rejections |
| S10-sonnet-1 | ✔ | 46 | 332 | 1.07 | 2.91 M | 43 | 11 | 20 | 6 / 21.6 | 0 | 1 / 1 | open-before-close, `MODAL_BLOCKED`, force close (F6) |
| **total** | 12/12 | **686** | 4,801 | **22.83** | 45.5 M | **646** | 353 | 150 | 88 / 403 | **14** | 12 / 7 | |

\* PASS on the literal criteria. The evaluator flagged a factual inversion in the generated skill;
see §4 F9.

## 2. Baseline hotspots: what moved

The baseline had 4 runs and 431 tool calls; round 16 has 12 runs and 646 tool calls. The counts come
from `analyze_runs.py` and `runs-r17/families.py`. The reviewer re-counted the Bash classes by hand
(`review.md` §F1).

| # | Baseline family (§2 of HOTSPOT_REPORT.md) | Baseline | Round 16 | Moved? |
|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 84 envelopes (19.5 per 100 calls, 21 per run); 45 Bash reads of temp results | 14 envelopes (2.2 per 100 calls, 1.2 per run), 5 of them forced by the agent with a small `maxInlineBytes`; 16 temp reads; 7 of 12 runs had none | **Yes, −89 %.** Residual: S8-sonnet-1 Read 337 KB of whole deep-JSON files, then re-read them after compaction (F9) |
| 2 | **C — per-root validation after a clean model-level check** | 48 root checks after a clean model check (S3-opus-1:42-90); 62 root checks against 13 model checks | 2 root checks after a clean model check (S7-opus, S7-sonnet); 18 root and 18 model checks; `perRoot=true` used 11× | **Yes, solved.** R2's `rootsChecked`/`perRoot` is used unprompted |
| 3 | **D — skill reference reads** | 41 reads, 348 KB (87 KB per run; S1 137–160 KB) | 88 reads, 403 KB (34 KB per run; peak S6-opus 80 KB); 8 of 75 `Bash→Bash` pairs are skill navigation | **Yes in bytes (−61 % per run).** The residual is post-compaction re-reads (S6-sonnet-1:70, :85; S7-sonnet-1:117; S8-sonnet-1:45, :61), about 2–4 turns per sonnet run. The S9 navigation fix works: round 14's 9–11 skill greps became one read (`S9-*:3`) |
| 4 | **B′ — ad-hoc Python for result shaping** | 49 heredocs (11.4 per 100 calls); 2 tracebacks | 23 ad-hoc (3.6 per 100 calls) plus 24 runs of the shipped `mps_dump.py`; 0 tracebacks | **Yes, −68 %.** Residual: opus re-wrote a tree view 4× (S6-opus-1:28, :55; S8-opus-1:27, :33), and `mps_dump roots` on a project dump prints 0 (F4) |
| 5 | **B — blueprint → insert, response size** | 50 inserts, 172 KB of responses (3.4 KB avg; 90 KB in S3-opus-1) | 57 inserts, 53 KB (0.9 KB avg) | **Yes, −73 % per insert.** Caveat: no bulk scenario (S3) in scope |
| 6 | **Discovery refinement** (`get_concept_details` re-called 1–2 steps later) | 2 pairs; about 8 avoidable turns per S1 run | 15 pairs: opus 0 avoidable, sonnet about 9 (S6-sonnet 4 pairs, S7-sonnet 7; round 12 had 6 and 3) | **No, for sonnet.** New shape: a superconcept walk one `full` call per hop (S7-sonnet-1:37-42) and shape→full to get `superConcept`/`sourceNode` (F3) |
| 7 | **Guessable literals** (error→retry) | 12 errors (2.8 per 100 calls), 8 retries, 4 literal-guess pairs | 12 errors (1.9 per 100 calls), 7 retries, 1 `arg_validation_error`, **no literal-guess pair** | **Yes.** The family is gone. The remaining errors are state or semantics (caret assertion, modal, NOT_FOUND on an undeployed language) |
| 8 | **ToolSearch fetches** | 24 (5.6 per 100 calls) | 46 (7.1 per 100 calls); S7-sonnet 18, 15 of them re-fetches after compaction (F8) | **No.** Harness overhead that tracks compactions; no plugin remedy |
| — | H9 cross-project leakage | observed (D4) | none (one project open at a time) | fixed by the harness |
| — | H10 fixed per-turn context | ≈ 98 K SMOKE floor (sonnet, pre-M-0) | 62 K (opus); descriptions +32 % since baseline | tool text grew; the floor did not |

**Net.** The four payload families the baseline ranked 1, 2, 4 and 5 (A, C, B′, B) are
treated, and the treatment holds on six scenarios it was not designed on. What remains is
different in kind:
- **Undocumented mechanisms.** The agent searches MPS sources or guesses: caret selection, Java
  package, project-open order.
- **Format choice.** Deep JSON where PLAIN TEXT would do, and default values that JSON omits.
- **Sonnet-only discovery walks.** These are the new top of the ranking (§4).

## 3. Same-scenario comparison with the prior cells

| cell | prior sonnet: turns / tools / result KB / $ / s | r16 sonnet | Δ turns | r16 opus |
|---|---|---|---|---|
| S5 (r11) | 30 / 27 / 61 / 0.95 / 330 | 32 / 29 / 65 / 0.90 / 242 | +2 | 23 / 21 / 119 / 1.08 / 81 |
| S6 (r12) | 130 / 122 / 263 / 5.02 / 1,549 | 97 / 92 / 199 / 3.24 / 981 | **−33** | 71 / 69 / 171 / 2.58 / 297 |
| S7 (r12) | 129 / 123 / 384 / 5.19 / 1,309 | 157 / 152 / 259 / 5.44 / 1,449 | **+28** | 60 / 57 / 128 / 2.03 / 247 |
| S8 (r12) | 74 / 71 / 114 / 1.88 / 454 | 74 / 69 / 455 / 2.79 / 651 | 0 (bytes ×4) | 53 / 50 / 86 / 1.58 / 252 |
| S9 (r14; opus 35 / 33 / 60 / 1.01) | 44 / 40 / 79 / 1.32 / 313 | 25 / 22 / 33 / 0.57 / 107 | **−19** | 26 / 23 / 30 / 0.75 / 86 (−9) |
| S10 (09-24) | 37 / 34 / 29 / 0.71 / 134 | 46 / 43 / 77 / 1.07 / 332 | **+9** | 22 / 19 / 55 / 0.79 / 76 |

- **S5** is at its floor.
  - Round 11's four sequential problem prints became one parallel batch (S5-sonnet-1:13-18).
  - Opus fixed all 12 problems in 23 turns using only the model-level check plus two constraint prints.
- **S6** improved: −33 turns and errors down from 9 to 1.
  - `Read→Read` went from 9 to 0. `check→check` and `search_concepts→Read` are gone.
  - New: a shallow `print_node` walk down a method AST (F2), and parse_java post-fixes (F7).
- **S7** regressed, and all of the regression is F5 (caret, 17 steps / 424 s) plus F8 (15 ToolSearch
  re-fetches after the second compaction). Opus hit the same caret assertion and fixed it in 4 steps
  by reading the stack line.
- **S8** kept the same turn count at 4× the bytes. Round 12's sonnet read aspect roots as
  `PLAIN TEXT`; this one read deep JSON (F9). The skill text was identical in both rounds, so this is
  model variance that the docs let through.
- **S9** is the clearest win of the round. `Bash→Bash` went from 10 to 1 (sonnet) and from 7 to 0
  (opus), because D61's console hand-off replaced the skill greps.
- **S10** regressed for sonnet: open-before-close (F6) cost about 190 s. The 2026-09-24 sonnet
  closed first, so the order is a coin flip that the docs do not pin down.

## 4. Ranked hotspots (round 16)

The reviewer inspected 3 instances per family with `show_steps.py` (`analysis/review.md`). "Turns"
counts distinct assistant messages, so a parallel batch is one turn. About **95 of 686 turns (14 %)**
look avoidable, concentrated in the sonnet S6/S7/S8/S10 cells.

| # | Family | Evidence | Det. | Avoidable turns | Tier | Remedy (defect) |
|---|---|---|---|---|---|---|
| F9 | **Deep JSON for aspect roots → whole-file Read → compaction → re-read; default `false` omitted** | S8-sonnet-1:11, :18, :23, :37, re-reads :41, :44, `mps_dump` reruns :46-54; the inversion enters at :23 and is written at :57, :60 | 1.0 | ~20 (+340 KB, one wrong fact shipped) | **D**, then **S** | PLAIN TEXT for aspect roots in `mps-dsl-memory` / `mps-language-analysis`; emit default boolean/int values with `isDefault` (D70) |
| F5 | **EditorTestCase result caret**: `caretPosition`/`isLastPosition` set, but only `selectionStart/End` are compared | S7-sonnet-1:133-149 (+3 re-runs :150-152; `find /` into another checkout at :141-143); S7-opus-1:53-57 | 1.0 | 16–20 (sonnet), 4 (opus) | **D** | `mps-tests/editor-test-case.md:13`, `common-failures.md:9` (D71) |
| F8 | ToolSearch re-fetch after compaction | S7-sonnet-1:73-145 (15 of 18) | 1.0 | ~15 | — | harness; fewer bytes means fewer compactions |
| F1 | **Source hunts outside the project** for undocumented mechanisms | S6-opus-1:13-22 (Java package), S7-sonnet-1:141-144 (F5), S10-sonnet-1:15-17 (migration.xml) | 0 → 1.0 once documented | ~16 | **D** | `packageName` line in `mps-aspect-generator` (D73) plus D71/D72 |
| F7 | parse_java_and_insert post-fixes in behavior bodies | S6-sonnet-1:72-78 (concept-typed foreach var → unresolved `ClassifierType`), S6-opus-1:54-57 (idiom swaps) | 0.5 | 7 + 4 | **D**, then **S** | `mps-aspect-behavior/SKILL.md:35` sentence; parser warning (D77) |
| F2 | **Shallow `print_node` walk** down a method AST | S6-sonnet-1:62-69, :72-75 | 1.0 | ~8 | **D** | `deep` parameter description + `mps-model-manipulation/SKILL.md:64` (D74) |
| F6 | **Open-before-close → modal → `MODAL_BLOCKED` → force close** | S10-sonnet-1:24-33 (90 s activation timeout, 20 s close timeout) | 1.0 | ~7 + 110 s | **D** | "Close first" as a numbered step in `mps-project-management` (D72) |
| F3 | Concept-details refinement (superconcept walk, shape→full) | S7-sonnet-1:37-42, :68-69; S6-sonnet-1:34-36, :80-81 | 1.0 | ~9 (sonnet only) | **D**, then **S** | point `concept-details.md:66` at `query_structure GET_ALL_SUPERCONCEPTS`; `superConcepts` in `shape` (D75, with D67) |
| F4 | Envelope probing: `mps_dump roots` prints 0 on a project dump; `includeDependencies` doubles listings | S6-sonnet-1:5-12, S7-sonnet-1:12-17, S8-sonnet-1:8-11 | 1.0 | ~10 | **P-off** (+D) | `mps_dump.py` `models` / `tree` views (D76) |
| — | Skill version-stamp `cat` | 9 of 12 runs, e.g. S5-sonnet-1:5 | 1.0 | 1 per run | **S** | `skillStamps` on `list_open_projects` (D79) |
| — | Identical check messages not collapsed | S8-sonnet-1:36-37 (27× "Language … can't be loaded", 36 KB) | 1.0 | <1 (bytes) | **S** | collapse with a count (D78) |

**No remedy worth building:**
- **Skill navigation itself.** It costs about 2–4 turns per sonnet run, the choice of file is
  judgment, and index hops were 0–2.
- **A batch `print_node` for S5.** The prints are already one parallel batch.
- **ToolSearch.** It is harness overhead.
- **MPS process work in S10** (3–4 calls). It is inherent to the task.

## 5. Hypotheses (status after S5–S10)

| # | Hypothesis | Round 16 verdict |
|---|---|---|
| H1 | Blueprint authoring is a main cost | **Moderate.** S6 has 0 errors (opus) and 1 (sonnet, a missing parameter); neither is a blueprint error. Cost moved to *reading* code nodes (F2, F9) |
| H2 | structure → make → verify → scaffold chain | **Measured (S6, S7).** Make → run is 2–3 calls per iteration. No stale-runtime retry; S7-sonnet-1:136 re-made after a model edit as expected |
| H4 | Discovery reads with huge results | **Treated.** Envelopes 21 → 1.2 per run. The residual is a format choice (F9), not a size |
| H5 | validate → fix → validate loops | **Refuted for S5.** Both models fixed 12 injected problems from one model-level check (0 errors, 0 retries). `validation_loops` 4 in total, 3 of them in the S7-sonnet caret episode |
| H6 | Reference wiring | not exercised (no bulk scenario) |
| H7 | Skill reading is a large context consumer | **Treated in bytes** (34 KB per run). It returns as re-reads after compaction in long sonnet runs |
| H8 | Stale runtime | **Not observed** (0 `reload_all`, 0 stale incidents) |
| H9 | Cross-project leakage | **Not observed.** S10 closed and opened projects sequentially in both models |
| H10 | Fixed context dominates | **Holds.** Cache read is 45.5 M for 686 turns ≈ 66 K per turn |

## 6. Defects filed (`docs-defects.md`)

| id | where | defect | tier |
|---|---|---|---|
| D70 | `print_node` JSON; `mps-dsl-memory`, `mps-language-analysis` | A default-valued boolean/int property is omitted (`BooleanConstant` false → `"properties": []`). S8-sonnet wrote a skill that inverts both `State_Constraints` validators. Enums already print `isDefault`; the omission rule lives only in `print-node-output.md:48` | D + S |
| D71 | `mps-tests` `editor-test-case.md:13`, `common-failures.md:9` | The skills never say that the result `AnonymousCellAnnotation` is compared only by `cellId` + `selectionStart`/`selectionEnd`; `caretPosition`/`isLastPosition` are ignored | D |
| D72 | `mps-project-management` `SKILL.md:51`, `create-empty-project.md:144-150` | "Close the open project first" is a soft note ("may", "can"); the step list goes create → open | D |
| D73 | `mps-aspect-generator/SKILL.md:56` | The generated Java package is the template class's `packageName` (set by the parser from a `package` line, D34), but no skill says so; opus searched MPS sources for 10 steps | D |
| D74 | `print_node` `deep` description (`JetBrainsMPSNodeMcpToolset.kt:963`); `mps-model-manipulation/SKILL.md:64` | Recurrence of D23: the skill line recommends a shallow print, and the tool text never says to read a method in one call | D |
| D75 | `mps-language-analysis/references/concept-details.md:66` | `shape` omits `superConcept`; sonnet walks superconcepts hop by hop. `GET_ALL_SUPERCONCEPTS` is documented only in `mps-language-inheritance` | D → S |
| D76 | `mps-mcp-workflow/scripts/mps_dump.py` | Residual of D58: `roots` on a project or module dump without `rootNodes` prints `{"roots":0}` and exits 0. No `models` or `tree` view | P-off |
| D77 | `mps-aspect-behavior/SKILL.md:35` | A concept-typed local or foreach variable in parsed Java comes back as an unresolved `ClassifierType` | D → S |
| D78 | `check_root_node_problems` | Identical messages are not collapsed (27× on one root, 36 KB) | S |
| D79 | `list_open_projects`; AGENTS template | The version-stamp comparison costs one Bash in 9 of 12 runs | S |
| A2 | `analyze_runs.py` | Chain counts treat a parallel batch as sequential pairs. `rereads_after_compaction` ignores temp-file and `mps_dump` re-reads (0 reported where S8-sonnet redid 13 turns) | harness |

## 7. Proposed remedies (gate 2)

Ordered by estimated saving per the review:
1. **R-a (D70; D + S).**
   - Docs: one line each in `mps-dsl-memory/SKILL.md:26` and `mps-language-analysis/SKILL.md:31`:
     read aspect roots with `format: "PLAIN TEXT"`, and deep JSON omits defaults.
   - Server: emit default boolean/int values like enums (`"value":"false","isDefault":true`).
   - Saves about 20 turns and removes a class of wrong facts. Low risk.
2. **R-b (D71; D).** Two sentences in `mps-tests`. Saves about 16–20 turns per sonnet S7 run and 4 per
   opus run. No risk.
3. **R-c (D72; D).**
   - `mps-project-management`: close the open project as a numbered step before the CLI open.
   - Recommend `new_project_migration_xml.py` for 2026.1 too.
   - Saves about 7 turns and 110 s, and avoids a force close that could discard state.
4. **R-d (D73, D74, D77; D).**
   - `packageName` line in `mps-aspect-generator`.
   - `deep`/PLAIN TEXT wording on `print_node` and in `mps-model-manipulation`.
   - Parse-java typed-local sentence in `mps-aspect-behavior`.
   - Saves about 25 turns in total.
5. **R-e (D75, with D67; D → S).** Point `concept-details.md` at `GET_ALL_SUPERCONCEPTS`, and
   optionally add `superConcepts` to `shape`. Saves about 9 turns (sonnet).
6. **R-f (D76; P-off).** `mps_dump.py` `models` and `tree` subcommands, and an exit 2 on `roots`
   without root nodes. Saves about 10 turns. Covered by `SkillScriptsDriftTest`.
7. **R-g (D78, D79; S, small).** Collapse identical check messages, and report `skillStamps`.
   Saves about 1 turn per run.
8. **R-h (A2; harness).** Weight chains by distinct message id, and count temp-file re-reads after
   compaction.

The A/B measure for R-a…R-d is **S7-sonnet, S8-sonnet, S10-sonnet and S6-sonnet**, the cells that
carry the residual. Success = ≥ 30 % fewer tool calls and ≥ 25 % fewer context tokens on those cells,
with no drop in pass rate.

## 8. Wrap-up state

- **MPS**: back on `/Users/vaclav/work/MPS/myMPS-fix`, relaunched from the capture **without** the
  call-log option. It is a detached process (pid 73358), not under the IDEA `MPS` run configuration.
- **Scratch and evidence**: kept under `~/MPSProjects/mcp-study/{proj-r17,runs-r17}`. Both
  `*-target` directories were deleted after evaluation.
- **Launch helpers**: `~/MPSProjects/mcp-study/r17-launch.sh` and `r17-record.sh`.
- **Worker session dirs**: `~/.claude/projects/-…-mcp-study-proj-r17-*` (memory dirs empty) are kept,
  like those of earlier rounds. They duplicate the evidence in `runs-r17`.
- **Tracked files**: none edited except this report, `docs-defects.md` and the study skill's
  `scenarios.md` / `lessons.md`.
