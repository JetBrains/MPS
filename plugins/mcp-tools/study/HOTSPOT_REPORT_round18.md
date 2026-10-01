# Skill Script Automation Study — Round 18 (2026-09-29)

Status: measurement round complete. Scope on request: **S1, S2, S3, S5, S6, S7, S8, S9, S10** × **opus +
sonnet** = 18 cells, n = 1 per cell. Gate 1 was skipped on request: all nine scenarios ran without a pilot.
There was one SMOKE per model and one opus SMOKE after every MPS restart. All 18 cells **PASS**. The round
measures HEAD `6ad8151b30fd` on branch `261/vaclav/MCP2`. Its product surface is byte-identical to round 16's
`f576e7d5fad5`, because only study docs changed since then. No code or docs remedy was made in this round.
Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r19/{SMOKE-*,S*-{opus,sonnet}-1}-{worker,server}.jsonl`, `*.meta.json`,
`*.eval.md` and `S10-*.leftbehind.txt`. The analysis is in `analysis/`: `metrics.csv`, `chains.json`,
`errors.json`, `hotspots.md`, `families.tsv` (from `families.py`), `compare.md` (from `compare.py`, every
metric for every cell against its prior cells) and the Opus reviewer's `review.md`. The directory suffix is one
ahead of the round number, as in rounds 15–17. Citations use `run:step`, the 1-based `tool_use` ordinal that
`show_steps.py` prints. `[a-b]` marks one parallel batch, which is one turn.

**Baselines.**
- **Baseline of record**: `HOTSPOT_REPORT.md` (2026-09-15), with raw runs in `~/MPSProjects/mcp-study-baseline/runs`
  (lesson 36). It covers only S1 and S3.
- **Prior cells**:
  - S1–S3: round 15 (`runs-r16`, 261) and round 17 (`runs-r18`, 262).
  - S5–S10: round 16 (`runs-r17`, 261, same surface and same MPS build as this round).
- Every set was analysed with today's `analyze_runs.py`, which is unchanged since round 16.
- The token columns are result-based (D50 M-0).

## 0. Harness state

- **MPS**: 2026.1 EAP (`261.25134`), built from this checkout. The plugin classes (12:41) are newer than every
  source, and the working tree was clean before and after the round.
- **Instrumentation**:
  - MPS was running from the IDEA run configuration (pid 21786, dev checkout open, no call log).
  - `capture` → `calllog runs-r19/server-calllog.jsonl` → `shutdown` (this closed the dev checkout) →
    `start` on the synthesized `proj-r19/harness` → `wait` → SMOKE ×2.
  - Port 64343, the default on the 261 selector, so harness defect A3 does not apply and no `STUDY` mirror
    was needed.
  - Wrap-up cleared the option (`calllog` with no argument) and restarted MPS on the dev checkout
    (pid 43240, no call log).
- **Isolation (new): `per-shared-fixture-restart`.** This is the lesson-40 / D80 harness remedy.
  - MPS was restarted (`shutdown` → `start` harness → `wait` → SMOKE) whenever the next cell's fixture
    language had already been loaded in the current process. That is any two of S3/S5/S6/S7/S9 on `recipes*`,
    or S2/S8 on `statechart`.
  - A read-only S9 cell was allowed to run before a language-changing S6 cell in the same process.
  - Result: 8 MPS processes. The `mpsPid` groups are:
    - 23480: S1 ×2, S2-o, S3-o
    - 32600: S2-s, S3-s
    - 34425: S8-o, S5-o
    - 36026: S8-s, S5-s
    - 37311: S9-o, S6-o
    - 38876: S9-s, S6-s
    - 40161: S7-o
    - 41385: S7-s, S10 ×2
  - Each restart cost about 30 s plus one SMOKE ($0.25).
  - There was no stale-runtime episode (§3, D80).
- **Audit**:
  - `server_call_surplus` is 0 on every run.
  - 0 pre-dispatch rejections outside S10.
  - 0 `MODAL_BLOCKED` events.
  - 0 Welcome-screen rejections, including both S10 cells.
- **Measured surface**:
  - `inventorySha256 a7bc6420…`: 48 tools, 39 `mps_mcp_*`, descriptions 57,068 B, schemas 40,493 B. Identical
    to round 16.
  - `skillsSha256 f6b20bbf…` on all 27 metas. Identical to round 16. The round-17 surface `e4b2965c…` differs
    only in 7 `mps-project-management` files, which no S1–S3 worker read.
- **Worker models** (from each transcript's `init.model`):
  - `opus` = `claude-opus-5-5` in rounds 15–18. The baseline used `claude-opus-5`.
  - **`sonnet` = `claude-sonnet-5-5`, new this round.** The alias moved. The baseline and rounds 15–17 all ran
    `claude-sonnet-5`. **Every sonnet delta in this report is therefore a model change, not a tool or skill
    change.** The clean tool/skill signal is opus.
- **Prompts**: `promptSha256` is identical to every prior cell for all nine scenarios, and for SMOKE (`313ab6b5…`).
- **Fixtures**:
  - S1 and S10: synthesized per run. `migration.xml` has baseline 261 plus
    `v_2026_1.UpdateConceptMethodCall`.
  - S2 and S8: `fixtures-r12/statechart.tar.gz` (`d9dd23be…`).
  - S3 (+ `recipes.csv`), S7 and S9: `fixtures-r12/recipes.tar.gz` (`40f91e40…`).
  - S5: `fixtures-r6/recipes-broken.tar.gz` (`0dc4878e…`).
  - S6: `fixtures-r12/recipes-full.tar.gz` (`37d9c83a…`).
  - These are the same tarballs as round 16. None contains a doc surface.
- **Guards**: `check_user_agents.py` exit 0; harness unit tests 56/56.
- **SMOKE context floor** (input + cache read + write at `result`):
  - opus **62,064** tokens, the same as round 16.
  - sonnet **61,923** tokens. Round 17's sonnet-5 floor was 99 K.
- **Evaluation**:
  - One read-only Opus evaluator per cell, via `mcp_call.py`.
  - S7 evaluators re-ran the worker's run configurations.
  - For S10 the observer recorded the left-behind state the moment the worker exited, reopened
    `<proj>-target` for the checks, and closed and deleted it afterwards.

## 1. Task outcomes

All 18 PASS. The evaluator notes that matter:

- **S7 ×2**: 4 per-root JUnit configurations, not one per model (D53). They were accepted, as in round 16.
  Re-running them gave 4 tests and 0 failures in both cells.
- **S8-sonnet ✔\***: the skill is thin (`sandbox.md` lists no children). Both shipped blueprints also use the
  object-map `properties` / `children` form, which `insert_root_node_from_json` rejects (§4 D87). Criterion 3
  only checks that the files parse, so it passes them. As in round 16's F9, the pass is too generous.
- **S5-sonnet**: all 12 problems fixed. It repointed Saffron→Salt instead of restoring the import, and three
  repoints left duplicate list entries. The criteria allow both.
- **S6 ×2**: both evaluators found that `done_criteria.md:5` names `<project>/mcp.study.kitchen/source_gen`.
  The fixture's solution is at `<project>/solutions/mcp.study.kitchen/`. This is study-asset defect A6.
- **S10 ×2**: 5/5 on both. Descriptors match the derived migration entries. The left-behind state is the
  Welcome screen (both projects closed), MPS is the same pid, and each worker closed before opening (D72 is
  absent).

## 2. Round metrics

r1 = baseline, r15 / r16 / r17 = prior rounds, **r18 = this round**. "Batches" = assistant messages that
carry tool calls; a parallel batch counts once.

| cell | r1 turns | prior turns | **r18 turns** | prior → **r18 batches** | prior → **r18 cost $** | prior → **r18 cache read** | r18 errors | r18 skill KB |
|---|---|---|---|---|---|---|---|---|
| S1-opus | 181 | 124 (r15) / 98 (r17) | **111** | 83 / 67 → **87** | 4.18 / 3.62 → **4.25** | 7.46 / 5.90 → **8.18 M** | 2 | 140 |
| S1-sonnet | 148 | 150 / 154 | **89** | 113 / 95 → **54** | 5.08 / 5.18 → **2.21** | 11.95 / 10.86 → **6.31 M** | 4 | 62 |
| S2-opus | – | 81 / 66 | **89** | 53 / 44 → **59** | 2.59 / 2.18 → **3.02** | 5.27 / 4.01 → **6.38 M** | 1 | 51 |
| S2-sonnet | – | 132 / 143 | **61** | 103 / 99 → **38** | 4.73 / 4.85 → **1.33** | 10.34 / 10.49 → **3.36 M** | 3 | 110 |
| S3-opus | 100 | 20 / 22 | **21** | 12 / 14 → **11** | 0.79 / 0.74 → **0.70** | 0.62 / 0.72 → **0.59 M** | 0 | 21 |
| S3-sonnet | 28 | 24 / 27 | **13** | 15 / 19 → **7** | 0.64 / 0.67 → **0.27** | 1.05 / 1.33 → **0.30 M** | 0 | 9 |
| S5-opus | – | 23 (r16) | **26** | 11 → **14** | 1.08 → **0.94** | 0.81 → **0.91 M** | 1 | 5 |
| S5-sonnet | – | 32 | **20** | 17 → **11** | 0.90 → **0.38** | 1.13 → **0.56 M** | 2 | 0 |
| S6-opus | – | 71 | **63** | 47 → **43** | 2.58 → **2.27** | 5.15 → **4.24 M** | 0 | 95 |
| S6-sonnet | – | 97 | **59** | 83 → **31** | 3.24 → **1.10** | 6.85 → **2.54 M** | **10** | 26 |
| S7-opus | – | 60 | **65** | 37 → **38** | 2.03 → **2.06** | 3.45 → **3.65 M** | 2 | 40 |
| S7-sonnet | – | 157 | **74** | 133 → **43** | 5.44 → **1.49** | 14.61 → **3.96 M** | 6 | 36 |
| S8-opus | – | 53 | **44** | 28 → **20** | 1.58 → **1.47** | 1.94 → **1.41 M** | 1 | 15 |
| S8-sonnet | – | 74 | **37** | 60 → **11** | 2.79 → **0.39** | 5.77 → **0.44 M** | **7** | 5 |
| S9-opus | – | 26 | **21** | 17 → **16** | 0.75 → **0.58** | 0.87 → **0.66 M** | 0 | 13 |
| S9-sonnet | – | 25 | **18** | 17 → **12** | 0.57 → **0.29** | 1.11 → **0.47 M** | 1 | 13 |
| S10-opus | – | 22 | **23** | 15 → **16** | 0.79 → **0.63** | 0.91 → **0.77 M** | 0 | 20 |
| S10-sonnet | – | 46 | **25** | 38 → **17** | 1.07 → **0.37** | – → **0.76 M** | 2 | 17 |

Other columns: 1 compaction in the whole round (S1-opus, step 79), against 1–2 in every S1/S2/S6/S7/S8
sonnet cell of rounds 15–17. `validation_loops` is ≤ 2 in every cell. Temp-file envelopes total 23; 15 of
them were self-forced with `maxInlineBytes` ≤ 4000.

### 2.1 Deltas

**The clean signal is opus, and it is flat.** The opus cells have the same surface, the same MPS build and
the same model as their prior cells:

| opus | prior | **r18** | Δ |
|---|---|---|---|
| S5–S10 vs r16 (A/A: identical surface and build) | 255 turns, 239 calls, $8.81, 13.14 M, 4 errors | **242, 226, $7.96, 11.64 M, 4** | −5 % turns, −10 % cost, errors equal |
| S1–S3 vs r15 (261) | 225, 214, $7.57, 13.35 M, 5 errors | **221, 209, $7.98, 15.15 M, 3** | −2 % turns, +5 % cost |
| S1–S3 vs r17 (262) | 186, 179, $6.54, 10.63 M, 2 errors | **221, 209, $7.98, 15.15 M, 3** | +19 % turns (S1 98 → 111, S2 66 → 89) |

- Every family in the opus A/A comparison is within ±2 batches (review §4.2).
- The round-17 → round-18 opus increase is within the documented model variance (lesson 12; S1-opus 124 / 98 /
  111 across rounds 15 / 17 / 18). Part of it is the known S1/S2 defects reproducing at full size: D64, D66,
  D67, D68/D77, D81 (§3).

**Sonnet halves, but the model changed.** These are the same cells and prompts, `claude-sonnet-5` →
`claude-sonnet-5-5`:

| sonnet | prior | **r18** | Δ |
|---|---|---|---|
| S1–S3 vs r17 | 324 turns, 302 calls, $10.70, 22.68 M | **163, 152, $3.81, 9.98 M** | −50 % turns, −64 % cost |
| S5–S10 vs r16 | 431, 407, $14.02, 32.38 M, 8 errors | **233, 217, $4.03, 8.73 M, 28 errors** | −46 % turns, −71 % cost, **errors ×3.5** |

Wall-clock fell 3–6× (S1 1,234 → 274 s, S2 1,248 → 174 s, S7 1,449 → 207 s). The costs mix a price
change with the turn change, so compare turns and tokens, not dollars.

**Against the baseline** (the four S1 + S3 cells), the totals are:
- turns 457 → **234** (−49 %)
- tool calls 431 → **219** (−49 %)
- cost $27.47 → **$7.44** (−73 %)
- cache read 39.80 M → **15.38 M** (−61 %)

Both models changed since the baseline, so this total no longer isolates the treatment. The last same-model
baseline comparison is round 17's sonnet: S1 148 → 154 turns, S3 28 → 27.

## 3. Which baseline hotspots moved

Family counts are per 100 tool calls (`families.tsv`) over each round's own scenario mix. Batch counts and
all `run:step` evidence are in `review.md` §2–§4.

| # | baseline family | baseline | r15 / r16 / r17 | **r18** | verdict | attribution |
|---|---|---|---|---|---|---|
| 1 | **A** temp-file envelope → follow-up read | 84 = **19.5** / 100 | 1.6 / 2.2 / 1.5 | **2.9** (S1/S3 only: 6 = 2.7) | **Stays fixed.** Same cell vs baseline: S1-opus 32 → 5, S3-opus 25 → 1, S1-sonnet 23 → 0. The opus uptick (S1-opus 1 → 5) is self-forced `maxInlineBytes:100` (`S1-opus-1:22→23`), deliberate context management. Only 8 envelopes are server-defaulted | tools (treated round 1) |
| 2 | **C** per-root check after a clean model check | 48 = **11.1** | 0.4 / 0.3 / 0.2 | **0.1** (1 per model) | **Stays fixed.** Residual is D83 (a per-root check to read warning text, `S3-opus-1:17`, `S3-sonnet-1:11`) and the batched D63 sweeps (`S1-opus-1:[104-108]`) | tools |
| 3 | **D** skill reads before a call | 35 = 8.1 | 19.7 / 7.9 / 18.9 | **10.0** | **Unchanged for opus** (A/A S5–S10: 7.1 → 7.5 per 100). **Down in absolute terms for sonnet** (S5 8.9 KB → 0, S8 39.3 → 4.7, S1 141.7 → 62.1 KB) | sonnet drop = model: it reads less (below) |
| 4 | **B′** ad-hoc Python | 49 = **11.4** | 1.8 / 4.2 / 2.3 | **6.0** (48 heredocs) | **Improved vs baseline, flat vs r15–r17 for opus.** S3-opus 15 → 1 (the D69 script). S1-opus still writes blueprint generators (`:20, :24, :26, …`), the safe way to produce deep JSON. The avoidable part is ≈ 6 turns: `mps_dump.py shape` on a node dump → own Python, 3× (D76) | tools (S3), model (sonnet S3: own converter) |
| 5 | **B** blueprint → insert, response > input | 33 KB response for 63 KB in | – | **5.8 KB for 48 KB** | **Stays fixed** | tools |
| 6 | **F** discovery refinement | 2 chains / 4 runs | 5 / 15 / 23 calls | **13 batches** (4 / 7) | **Unchanged.** D67 (no feature refs in `shape`) and D75 (no superconcepts) are still open; det. 1.0 in both models | tools (open S remedy) |
| 7 | **G** guessable literals / keys (error → retry) | 12 = **2.8** | 3.0 / 1.9 / 4.0 | **5.2** (42 envelopes) | **Worse, sonnet only.** Opus A/A 4 → 4. Sonnet S5–S10 8 → 28 (2.0 → 12.9 per 100) | **model** (§4 D85) |
| 8 | **H** ToolSearch schema fetches | 24 = 5.6 | 7.0 / 7.1 / 6.7 | **4.5** | Flat for opus. **Down for sonnet** (S5–S10 34 → 9 batches), which is the direct cause of G | model |

### 3.1 In one line

Every family the 2026-09 treatment targeted (A, C, B, and B′ in bulk) **stays fixed**. D and F are **unmoved**,
and they are where the open S remedies (D67/D75) and D remedies (D50/D66) sit. G is the one family that moved,
and it moved **up**, because sonnet-5-5 calls tools without loading their schemas. The tools and skills did not
regress: the opus A/A control is flat in every family.

### 3.2 Why G rose: first-use probing on unloaded schemas (sonnet-5-5)

- **Probing rose steeply across rounds.** Calls to an `mps_mcp_*` tool whose schema was never loaded through
  `ToolSearch select:`:
  - opus: 0 in every round.
  - sonnet: baseline 1, r15 7, r16 11, r17 33, **r18 71 of 249 MCP calls (28.5 %)**.
- **The blind calls fail far more often.** 32 % of the unloaded calls fail (23/71), against 6 % of the loaded
  ones (11/178). 23 of sonnet's 35 error envelopes are blind calls.
- **The probing starts at the first call now.** In rounds 16–17 it mostly followed a compaction. This round
  there are no compactions:
  - `S8-sonnet-1` loads one schema (never used) and makes all 26 MCP calls blind.
  - `S6-sonnet-1:[5-7]` is its first `print_node`.
- **Every KEY error is the first call of that tool in the run, and none recurs after the correction.** The
  wrong keys are the same every round:
  - `query` for `searchTexts`: r10, r11, r15, r17, r18.
  - `conceptRef` / `concept` / `languages` for `conceptRefs`: r12, r15, r17, r18.
  - `node` / `nodeRef` for `nodeReference`: r16, r18.
- **The worker reads less and skips instructions.** The D79 stamp check ran in 2/9 sonnet cells (opus 9/9).
  `S3-sonnet-1:6` read `bulk-creation.md:14` ("do not write your own converter") and at `:7` wrote its own
  (the D69 route regresses in sonnet only). `S5-sonnet-1:10` set `unit="GRAM"` without fetching the shape.
- **The net effect is still strongly positive.** Recovery costs ≈ 32 sonnet turns over 9 cells, while sonnet
  turns fell by 359. It is ≈ 4 % of sonnet's turns and the round's #1 avoidable-turn hotspot.

### 3.3 Round-17 findings rechecked

- **D80 / N1 (stale runtime): absent.** There was 1 `reload_all` in the whole round (`S6-sonnet-1:54`, D84),
  no hollow-after-reload, and no "stale / leftover" language. The fresh-fixture signals are the correct ones,
  e.g. `S8-opus-1:8` "runtime is not deployed". **The restart isolation works.**
  - One residual hazard: pid 23480 held three different module ids, all named `mcp.study.recipes` (S1 ×2 plus
    the S3 fixture). It produced no incident.
- **D81** recurs: 1 misread (`S1-opus-1:21-25`, 4 turns) and 2 needless dry runs.
- **D82** recurs, smaller: 1 turn, was 3.
- **D83**: 2/2.
- **D84**: 1.
- **D63**: batched sweeps.
- **D50**: the mechanism is absent (0 sonnet compactions).
- **A5**: 0 `api_retry` events, so wall-clock is comparable this round.

## 4. New findings and candidate remedies (for Gate 2)

Ranked by avoidable turns over the whole round (review §4.1). Tier = first fit of D → S → P-off → P-on → T.

| rank | finding | avoidable turns | evidence | tier | candidate remedy |
|---|---|---|---|---|---|
| 1 | **D85: first-use key-name probe on an unloaded schema** (G, sonnet-5-5) | ≈ 15–17 | 21 envelopes in 13 batches: `S6-sonnet-1:[5-7]`, `S8-sonnet-1:[10-14]`, `S5-sonnet-1:14`, `S10-sonnet-1:20`, `S2-sonnet-1:11` | **D** then **S** | **D**: 16 of 18 workers load `mps-mcp-workflow` at step 1. Put one line in its tool-name note (`SKILL.md:39`), in the step the agent is already in (lesson 38): "load each tool's schema before its first call; the keys are not guessable", with the 5 recurring keys. **S** if D does not move it: accept exactly the near-misses each rejection already enumerates (`node`/`nodeRef`; `concept`/`conceptRef`/`conceptReference`/`languages`; `query`) and add a `warnings` entry. D56 was closed on "one parallel batch, one turn"; that argument no longer holds at ≈ 15 turns per round |
| 2 | **D67 / D75 + D86: missing feature refs, and a wrong-kind reference target accepted** | ≈ 13 | F family (`S1-opus-1:18→22→23`, `S7-sonnet-1:33-38`, `S1-sonnet-1:54-57`). D86: `relationDeclaration` pointed at a ConceptDeclaration passes dry run and insert (`S2-sonnet-1:19-20`, `fixReferences` 0/0/0) and fails only at MAKE (`:49`); the same happened in `S2-opus-1:33-35`. 2/2 S2 cells | **S** | D67 `sourceNode` per feature, D75 `superConcepts`. D86: check a reference target's concept against the link's target concept on insert and dry run (the child-side check exists since D51/D52); make `UPDATE_CONCEPT_CHILD` return the link declaration's ref instead of `true` |
| 3 | **D87: blueprint `properties` / `children` as object maps; D88: miscounted brackets in inline JSON** | ≈ 12, plus one shipped invalid skill | D87: `S5-opus-1:14` (4 turns), `S5-sonnet-1:11`, `S7-sonnet-1:25`; **shipped** in `S8-sonnet-1:34` (4 map `properties`, 1 map `children`). D88: `S1-sonnet-1:34-37`, `S6-sonnet-1:49-51` | **S** (description) → **D** | D87: one line in the `json` / `childJson` parameter descriptions ("arrays, not maps: `properties:[{name,value}]`, `children:[{role,nodes:[…]}]`"). The schema was loaded in all 3 erroring calls. `mps-dsl-memory/SKILL.md:29`: dry-run each shipped blueprint instead of only parsing it. D88: the gson `EOFException` / `MalformedJsonException` text could say "brackets unbalanced; generate deep blueprints with a script and pass the file" |
| 4 | **D68 / D77 parser fix-up loops** (silent `ok:true`) | ≈ 10 | `S2-opus-1:47-56`, `S1-opus-1:35-40`, `S6-sonnet-1:46-51`, `S6-opus-1:47-49` | **S** | as filed |
| 5 | **D71 + D73 + D64 undocumented mechanisms** (3 separate filed defects) | 5 + 4 + 4 | D71 `S7-opus-1:54-60` (caret, 136 s of tool time incl. a `find /`); D73 `S6-opus-1:14-17` (unzipped MPS jars for the package rule); D64 `S1-opus-1:48-52` | **D** | as filed, unapplied |
| 6 | temp-file → ad-hoc projection (A + B′) | ≈ 6 | `S1-opus-1:37→38`, `S2-sonnet-1:23→24`, `S6-opus-1:45→46` | **P-off** | D76: let `mps_dump.py shape` accept a node dump, or add `tree` |
| 7 | **D89: `print_node` JSON on a node whose concept is not loaded returns an empty node** | 1, plus skill quality | `S8-opus-1:21`, `S8-sonnet-1:19`: 397 B, `children:[]` even with `deep:true`, while PLAIN TEXT of the same root is 2.9 KB (`S8-opus-1:23`). S8-sonnet concluded the sandbox content was "NOT visible" and shipped the thin skill | **S** | serialise the raw SNode regardless of the descriptor, or warn "concept not loaded; use PLAIN TEXT or MAKE" |
| 8 | **D90: an invalid enum literal is accepted by SET PROPERTY** | 3 | `S5-sonnet-1:10` `unit="GRAM"` → `ok:true`, stored as `InvalidEnum[…]`, found at `:13`, fixed at `:14-17` | **S** | reject a literal outside the enumeration and list the allowed ones (the shape already carries `enumerationValues`) |
| 9 | **D53 per-root run configurations** | 3 (+ 12 calls) | `S7-opus-1:46-54`, `S7-sonnet-1:62-71` | **S** | as filed |
| 10 | **D91: `NodeOperationsContainer` wrapper undocumented** | 2 | `S7-sonnet-1:28-32` (the assignability hint recovered it) | **D** | add the wrapper and a JSON example to `mps-tests/references/nodes-test-case.md:29-39` |

**Candidates with no evidence this round:**
- D70 (default booleans omitted): not exercised.
- D72 (close before open): 0 instances.
- D65: only an adjacent intentions-model case (`S2-sonnet-1:41-42`).
- H1 assignability errors: 1, recovered through the hint.

**Harness and asset defects found in this round:**
- **A6**: `scenarios/S6/done_criteria.md:5` gives the wrong `source_gen` path. Both evaluators hit it.
- **A7**: `analyze_runs.py` needs two changes:
  - a column for MPS calls to unloaded schemas, which explains most of this round's error rise and is
    invisible in `metrics.csv`;
  - a count of `Skill`-tool injections next to `skill_read_bytes` (S5-sonnet shows 0 B but received 22 KB).
- **A8**: S8 criterion 3 should dry-run the shipped blueprints, not only parse them (D87).
- **A2** recurs: `S8-sonnet-1:[10-14]` is one batch, counted as 5 retries.

## 5. Hypotheses (status after this round)

| # | Status | Round-18 evidence |
|---|---|---|
| H1 | **Moderated, shape errors now lead.** Blueprints still cause errors, but as object-map `properties` (D87, 4 runs) and hand-counted brackets (D88), not assignability (1, recovered). | §4 #3 |
| H2 | **No stale-runtime retry.** The MAKE → verify chain is clean; there was 1 D84 `reload_all`. | `S6-sonnet-1:53-54` |
| H3 | **Holds as reformulated.** Opus used the shipped bulk script + `--verify`. Sonnet-5-5 ignored it and was cheaper (7 vs 11 batches). | `S3-*` |
| H4 | **Treated.** 23 envelopes, 15 of them self-forced. | §3 #1 |
| H5 | **Partly.** `validation_loops` ≤ 2; S5 fixes land in 11–14 batches. | `S5-*` |
| H6 | **Refuted** again: all 40 cookbook refs and every seeAlso resolved. | `S3-*.eval.md` |
| H7 | **Model-dependent.** Opus reads as before. Sonnet-5-5 reads 2–8× less and pays for it in first-call probes (D85). | §3.2 |
| H8 | **Absent under restart isolation.** The first live instance (round 17, D80) did not recur. | §3.3 |
| H10 | **Holds.** Floor 62 K on both models, and turn count still drives cost. | SMOKE |

## 6. Defects filed

D85–D91 and A6–A8 were added to `docs-defects.md`. D85, D86 and D87 joined the recurrence watch. D53, D63,
D64, D66, D67, D68, D71, D73, D75, D76, D77, D78, D81, D82, D83 and D84 gained round-18 evidence; the archived
D69 gained evidence too. D80 has a round-18 note: it is absent under the restart isolation, and the tool-side ask
is unchanged. No remedy has been chosen; that is Gate 2.
