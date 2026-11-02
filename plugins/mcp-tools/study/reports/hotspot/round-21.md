# Skill Script Automation Study — Round 21 (2026-09-30)

Status: measurement round complete. Scope on request: **S1, S2, S3, S5, S6, S7, S8, S9, S10** × **opus + sonnet**
= 18 cells, n = 1 per cell. There was no pilot (gate 4: "all requested scenarios"). **All 18 cells PASS.** No remedy
was made in this round. Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r22/{SMOKE-*,S*-{opus,sonnet}-1}-{worker,server}.jsonl`, `*.meta.json`,
`*.eval.md`, `S10-*.leftbehind.txt`, `S8-*.observer-make.txt`. Analysis: `runs-r22/analysis/`:
- `metrics.csv`, `chains.json`, `errors.json`, `hotspots.md`, `navigation.json`;
- `families.tsv` (from `families.py`, run over the baseline, round 18 and this round);
- `compare.md` (from `compare.py`, every metric for every cell against round 18 and the baseline);
- `reanalysis-r18/` and `reanalysis-base/`: round 18 and the baseline re-analysed with today's `analyze_runs.py`;
- two Opus reviews: `review-families.md` (baseline families and recurrence watch) and `review-new.md` (sonnet
  growth, S8-opus errors, new findings).

The directory suffix is one ahead of the round number, as in rounds 15–20. `run:step` is the 1-based `tool_use`
ordinal that `show_steps.py` prints; `[a-b]` is one parallel batch (one assistant `message.id`, one turn).

**Baselines.** The baseline of record is `HOTSPOT_REPORT.md` (2026-09-15; raw runs in
`~/MPSProjects/mcp-study-baseline/runs`, lesson 36). It covers only S1 and S3. The prior cells for all nine scenarios
are round 18 (`HOTSPOT_REPORT_round18.md`, `runs-r19`), the last full matrix. Round 20 (S1 only) is quoted where it
helps.

## 0. Harness state

- **Measured surface**: HEAD `76b0ef4ebfb0` (MPS-40228) **plus the uncommitted MPS-40228 follow-up** in
  `JetBrainsMPSModuleMcpToolset.kt` and `mps-aspect-accessories/references/module-creation.md`. The plugin classes
  (21:19) were newer than the sources (21:10), and MPS was started after them (21:21).
  - Inventory `93ca3746…`: 48 tools (39 `mps_mcp_*`), descriptions **59,729 B**, schemas 41,911 B. Round 18: 57,068 B /
    40,493 B.
  - Skills `skillsSha256 6a36ae86…` on all 27 metas (18 cells + 9 SMOKE). Round 18: `f6b20bbf…`. 27 files differ
    between the two installed catalogs.
  - The product commits between rounds 18 and 21 fix D63, D68, D71, D76, D81, D85, D87, D89, D93, plus the nested
    blueprint node factories (MPS-40226) and unloaded-concept warnings.
- **Worker effort pinned** (gate 2a): opus `medium`, sonnet `xhigh`. Every meta records it. Round 18 was
  **unpinned**, and its level is unknown (§4).
- **Models** (`init.model`): `claude-opus-5-5`, `claude-sonnet-5-5`, the same as round 18. Claude Code 2.1.284 → **2.1.286**.
- **Prompts**: `promptSha256` is byte-identical to round 18 for all nine scenarios and for SMOKE (`313ab6b5…`).
- **Fixtures**: the same tarballs as rounds 16 and 18:
  - `fixtures-r12/statechart` `d9dd23be…`;
  - `recipes` `40f91e40…`;
  - `recipes-full` `37d9c83a…`;
  - `fixtures-r6/recipes-broken` `0dc4878e…`.

  None contains a doc surface. S1 and S10 are synthesized (baseline 261 plus `v_2026_1.UpdateConceptMethodCall`).
- **Instrumentation**:
  - MPS was running on the dev checkout (pid 84375, no call log).
  - `capture` → `calllog runs-r22/server-calllog.jsonl` → `shutdown` (this closed the dev checkout) → `start` on the
    synthesized `proj-r22/harness` → `wait` → SMOKE ×2. Port 64343, detected (`lsof`, confirmed).
  - Wrap-up cleared the option and restarted MPS on the dev checkout (pid 7070, no call log).
- **Isolation**: `per-shared-fixture-restart`, the same grouping as round 18, in 8 MPS processes. Each restart was
  `shutdown` → `start` harness → `wait` → SMOKE. The `mpsPid` groups are:
  - 85750: S1 ×2, S2-o, S3-o
  - 92589: S2-s, S3-s
  - 94521: S8-o, S5-o
  - 97206: S8-s, S5-s
  - 99970: S9-o, S6-o
  - 2120: S9-s, S6-s
  - 3802: S7-o
  - 4678: S7-s, S10 ×2
- **Audit**:
  - `server_call_surplus` is 0 on every run.
  - 0 pre-dispatch rejections, 0 `MODAL_BLOCKED`, 0 Welcome-screen rejections (S10 included).
  - 0 compactions, 0 `api_retry` events.
- **Guards**: harness unit tests 118/118; `check_user_agents.py` exit 0.
- **SMOKE context floor** (input + cache read + write at `result`): opus **82,053**, sonnet **81,912**. Round 18 had
  62,064 / 61,923.
  - The first request of every run grew from ≈ 20.5 K to ≈ 27.1 K tokens (`S5-opus-1`, `S9-sonnet-1`).
  - The installed guides (10,479 B each), the skill count (33), the frontmatter bytes (19,139) and the tool, agent and
    skill counts in `init` are all identical.
  - The only change on that path is the Claude Code CLI, 2.1.284 → 2.1.286.
  - **About +6.7 K tokens per request is therefore harness, not tools or skills.** Token and cost deltas below
    include it; turns do not.
- **Evaluation**: one read-only Opus evaluator per cell, via `mcp_call.py`.
  - S7 evaluators re-ran the workers' run configurations.
  - S8 used two passes, with an observer MAKE between them (A8).
  - For S10 the left-behind state was recorded the moment the worker exited. The observer then opened `<proj>-target`
    for the checks, and closed and deleted it afterwards.
  - One S10 evaluator could not run `new_project_migration_xml.py` or `ps`, because its permission classifier blocked
    them. The observer re-derived the migration entries and the pid live and appended them to `S10-opus-1.eval.md`.

## 1. Task outcomes

All 18 PASS. Notes that matter:
- **S1 ×2**: `[0..n]` references are modelled as `RecipeRef` / `IngredientRef` wrapper children. The opus evaluator
  notes that the wrappers' editors hold only a reference cell. Criterion 3 applies to the four required concepts, so
  the cell passes.
- **S3 ×2**: all 40 recipes match the CSV field by field. The evaluators deep-printed all 40, not a sample. The
  Cookbook has 40 refs, and there are 0 errors on 44 roots.
- **S8 ×2**: both workers ran `alter_nodes MAKE` themselves, because the new `mps-dsl-memory` step 8 requires it. All
  5 shipped blueprints of each cell pass the server dry run. In round 18 the sonnet skill was thin, and its blueprints
  used the object-map form (D87), which criterion 3 then only parsed (A8).
- **S7 ×2**: again 4 per-root JUnit configurations (D53). Re-run: 4 tests, 0 failures.
- **S10 ×2**: 5/5. The left-behind state is the Welcome screen, MPS keeps the same pid, and the migration entries
  match the live derivation.

## 2. Metrics

`base` is the 2026-09-15 pilot, and r18 is the last full matrix. All three were analysed with today's
`analyze_runs.py`, so the token columns are result-based (D50 M-0). **Batches** are assistant messages that carry
tool calls; a parallel batch counts once. `turns` is the harness `num_turns`, which counts every call.

| cell | base turns | r18 turns | **r21 turns** | r18 → **r21 batches** | r18 → **r21 cost $** | r18 → **r21 cache read** | r18 → **r21 errors** | r18 → **r21 skill KB** (read + injected) |
|---|---|---|---|---|---|---|---|---|
| S1-opus | 181 | 111 | **92** | 87 → **58** | 4.25 → **3.10** | 8.18 → **6.55 M** | 2 → **1** | 162 → **129** |
| S1-sonnet | 148 | 89 | **135** | 54 → **64** | 2.21 → **3.54** | 6.31 → **10.36 M** | 4 → **0** | 137 → **213** |
| S2-opus | – | 89 | **60** | 59 → **36** | 3.02 → **2.10** | 6.38 → **3.47 M** | 1 → **2** | 113 → **119** |
| S2-sonnet | – | 61 | **89** | 38 → **46** | 1.33 → **2.26** | 3.36 → **5.90 M** | 3 → **0** | 133 → **149** |
| S3-opus | 100 | 21 | **17** | 11 → **11** | 0.70 → **0.67** | 0.59 → **0.57 M** | 0 → **0** | 61 → **43** |
| S3-sonnet | 28 | 13 | **28** | 7 → **17** | 0.27 → **0.63** | 0.30 → **1.14 M** | 0 → **0** | 31 → **53** |
| S5-opus | – | 26 | **28** | 14 → **10** | 0.94 → **0.73** | 0.91 → **0.53 M** | 1 → **0** | 28 → **23** |
| S5-sonnet | – | 20 | **28** | 11 → **13** | 0.38 → **0.62** | 0.56 → **0.85 M** | 2 → **0** | 22 → **35** |
| S6-opus | – | 63 | **70** | 43 → **48** | 2.27 → **2.31** | 4.24 → **4.70 M** | 0 → **0** | 129 → **98** |
| S6-sonnet | – | 59 | **87** | 31 → **46** | 1.10 → **2.28** | 2.54 → **6.11 M** | 10 → **3** | 61 → **97** |
| S7-opus | – | 65 | **50** | 38 → **26** | 2.06 → **1.53** | 3.65 → **2.25 M** | 2 → **2** | 73 → **66** |
| S7-sonnet | – | 74 | **93** | 43 → **50** | 1.49 → **2.55** | 3.96 → **7.04 M** | 6 → **1** | 69 → **98** |
| S8-opus | – | 44 | **59** | 20 → **27** | 1.47 → **1.64** | 1.41 → **2.14 M** | 1 → **6** | 43 → **52** |
| S8-sonnet | – | 37 | **89** | 11 → **41** | 0.39 → **2.18** | 0.44 → **4.82 M** | 7 → **5** | 33 → **71** |
| S9-opus | – | 21 | **20** | 16 → **12** | 0.58 → **0.59** | 0.66 → **0.56 M** | 0 → **0** | 29 → **28** |
| S9-sonnet | – | 18 | **27** | 12 → **18** | 0.29 → **0.54** | 0.47 → **1.04 M** | 1 → **0** | 29 → **52** |
| S10-opus | – | 23 | **20** | 16 → **16** | 0.63 → **0.54** | 0.77 → **0.70 M** | 0 → **0** | 50 → **22** |
| S10-sonnet | – | 25 | **31** | 17 → **18** | 0.37 → **0.56** | 0.76 → **1.10 M** | 2 → **0** | 47 → **63** |

Round totals, r18 → r21:

| | turns | batches | tool calls | cost $ | cache read | errors | retries | unloaded-schema calls |
|---|---|---|---|---|---|---|---|---|
| **opus** | 463 → **416** (−10 %) | 304 → **244** (−20 %) | 435 → **394** | 15.94 → **13.20** | 26.79 → **21.46 M** | 7 → **11** | 6 → **7** | 0 → **0** |
| **sonnet** | 396 → **607** (+53 %) | 224 → **313** (+40 %) | 369 → **570** | 7.84 → **15.15** | 18.70 → **38.37 M** | **35 → 9** | 23 → **5** | **71 → 17** |

**Against the baseline** (the four S1 + S3 cells):
- turns 457 → **272** (−40 %), round 18 had 234;
- tool calls 431 → **258**;
- cost $27.47 → **$7.95**;
- cache read 39.80 M → **18.62 M**.

Both models changed since the baseline (`opus-5` → `opus-5-5`, `sonnet-5` → `sonnet-5-5`), so this total does not
isolate the treatment.

### 2.1 Reading the deltas

- **Opus is the clean signal, and it improved.** The model is the same and it runs at `medium`. Batches fell 304 → 244
  (−20 %) and cost fell 17 %. `review-families.md` §3 accounts for the −60 batches:
  - ≈ −20: task variance in S1. Round 18 built an optional "total time" editor cell (`r18 S1-opus-1:67-87`).
  - −9: S2 route choice. The validator was written as JSON (`S2-opus-1:36-39`) instead of parser plus D68 fix-ups
    (`r18 :44-58`).
  - **−13: fixed defects.**
    - D71 −5 (`r18 S7-opus-1:54-60` is gone; the editor test passes first time at `S7-opus-1:46`).
    - D87 −4 (`r18 S5-opus-1:14-18` is gone).
    - D81 −5.
    - D89 net −2 (`S2-opus-1:5→6` goes straight to MAKE, where round 18 explored `:5-13`).
  - **+7: new or exposed work.** N2 temp dir +4 (§4); the D63 module check surfaced a real generation-target warning, +3.
  - ≈ −26: denser batching (1.43 → 1.61 calls per batch). This fits the pinned `medium` effort but cannot be
    separated from it.
- **Sonnet grew by 40 % in batches, and the dominant cause is effort, not the surface** (`review-new.md` §4):
  - **Only sonnet's per-message signature moved.**
    - Messages with a thinking block: 48 % → 68 %.
    - Output tokens per message: 510 → 792.
    - Opus, on the same catalog and descriptions, is flat: 45 % → 41 % thinking, 492 → 498 tokens.
    - A catalog change cannot raise the tokens per message of one model only.
  - **The S1-sonnet profile over the four sonnet-5-5 rounds** (same prompt):

    | round | effort | batches | thinking | output per message |
    |---|---|---|---|---|
    | r18 | unpinned | 54 | 55 % | 567 |
    | r19 | unpinned | 43 | 61 % | 543 |
    | r20 | pinned `high` | 57 | 67 % | 641 |
    | **r21** | **pinned `xhigh`** | **64** | **71 %** | **811** |

    Round 18 sits below pinned `high`, so it most likely did **not** run at `xhigh` (not provable: no transcript
    records the level).
  - **The extra turns are verification appetite and thorough reading of unchanged files.**
    - 81 of sonnet's 89 skill-file Reads are of files byte-identical to round 18.
    - Sonnet made 28 `Skill` loads, where round 18 made 18.
    - ≈ 25 turns are self-initiated negative controls, redundant re-verification, and dry runs followed by the
      identical real write (§4 N1).
  - **The same trait removed round 18's sonnet failure modes.**
    - Errors fell 35 → 9, and error-recovery turns 28 → 8.
    - Calls on unloaded schemas fell 71 → 17, with 1 error instead of 23.
    - Round 18's "sonnet reads less" (H7) was probably an effort effect, not a model trait.
  - **Surface share ≈ 15–20 turns**, in both models:
    - `mps-dsl-memory` step 8 (MAKE + dry runs, S8 +5 per cell);
    - the D63 module check surfacing the generation-target warning (S6 +3–4 per cell);
    - S3 now follows the shipped bulk-script route (+4).
  - **Noise and round-18 under-delivery ≈ 15 turns.** Round 18's S8-sonnet shipped a thin skill with invalid
    blueprints, and its S1-sonnet kept the scaffold editors.
- **Tokens**: the +6.7 K-per-request CLI floor (§0) inflates every cache-read and cost figure in this round. At
  ≈ 557 batches it is ≈ 4 M of cache read over the round. It is not a tool or skill effect.

## 3. Which baseline hotspots moved

Counts are from `families.tsv`, with per 100 tool calls in parentheses. Baseline = S1 + S3 only (opus 270 calls,
sonnet 161). r18 and r21 = all nine cells (opus 435 → 394 calls, sonnet 369 → 570). Batches, determinism and every
`run:step` are in `review-families.md` §1.

| # | Baseline hotspot | baseline (o / s) | r18 (o / s) | **r21 (o / s)** | Moved? | Attribution |
|---|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 57 (21.1) / 27 (16.8) | 13 (3.0) / 10 (2.7) | **7 (1.8) / 14 (2.5)** | **Stays fixed.** 10 of 21 envelopes are self-forced with `maxInlineBytes` 100/1000, and 11 of them are followed by `mps_dump.py`, the documented route (`S5-sonnet-1:6→7`, `S8-opus-1:24→25`). Hand projection follows only a self-forced 100 B dump (`S1-opus-1:59→[60],[61],[62]`), ≈ 3 turns | tools (R1), round 1 |
| 2 | **C — per-root validation after a clean model check** | 48 (17.8) / 0 | 1 / 0 | **genuine 0 / 2** | **Stays fixed.** Both residuals are D83: a per-root check only to read the warning text (`S3-sonnet-1:19→[21-22]`, `S7-sonnet-1:61→[62-63]`). The **D63 fix is visible**: `S1-opus-1:89` is one module check (`modelsChecked 5`), where round 18 swept 5 models (`r18 S1-opus-1:[104-108]`). The analyzer's `C_root_after_clean_model` (5 / 6) over-counts, see §6 A9 | tools (R2, D63) |
| 3 | **D — skill reference reads before a call** | 23 (8.5) / 12 (7.5) | 33 (7.6) / 47 (12.7) | **37 (9.4) / 104 (18.2)** | **Unmoved for opus; up for sonnet.** Sonnet's rise is the xhigh reading habit on unchanged files (§2.1), not new content. The remaining doc-caused part is ≈ 6 turns: D66 (`S1-opus-1:67-69`, `S1-sonnet-1:[95-96]→[98-99]`), D64 (`S1-opus-1:58-62`), and the D68 binding not being routed (§4 N3). Index-to-leaf hops ≈ 5 (N7, D50) | effort (sonnet); docs (open D50/D64/D66) |
| 4 | **B′ — ad-hoc Python re-authored for result shaping** | 45 (16.7) / 4 (2.5) | 30 (6.9) / 18 (4.9) | **16 (4.1) / 13 (2.3)** | **Moved, improved.** Opus fell from 30 to 16 batches. **The D76 fix is visible**: 13 `mps_dump.py tree`/`models`/`roots` calls with 0 errors and 0 "`shape` on a node dump" misses. Residuals: `tree` abbreviates long values (`S8-opus-1:25→[26],[27]`) and omits reference targets (`S6-opus-1:48→[49]-[52]`), ≈ 6 turns. The Python blueprint generators (`S1-opus-1:52`) are the safe way to produce deep JSON, not waste | tools (D76) |
| 5 | **B — blueprint → insert; response larger than input** | 30 inserts, S3 bulk response 52 KB | S3 bulk 5.8 KB | **S3 bulk 5.7 KB** (`S3-opus-1:10`); 0.84 / 0.93 KB per insert | **Stays fixed.** **The D87 fix is effective**: 0 object-map rejections (round 18 had 4), and S5 blueprints use the array form. Remaining retries are D88 bracket errors ×3 (`S1-opus-1:51`, `S7-opus-1:31`, `S6-sonnet-1:40`), 1 turn each | tools |
| 6 | **F — discovery refinement** (`get_concept_details` re-called 1–2 steps later) | 1 / 1 | 4 / 7 | **2 / 4** | **Unmoved** (small). Remaining instances: D67/D75 feature refs and superconcepts (`S2-opus-1:24→26`, `S6-opus-1:24→25→26`), and D91 (`S7-sonnet-1:37→38→39`), ≈ 5 turns. Det. 1.0 | open S remedy (D67/D75) |
| 7 | **G — guessable-but-undocumented literals / keys (error → retry)** | 6 / 6 | 7 / 35 (key/literal 1 / 23) | **11 / 9 (key/literal 2 / 2)** | **Moved for sonnet, down 23 → 2** key probes. **The D85 fix is visible**: unloaded-schema calls fell 71 → 17, with 1 error (`S6-sonnet-1:22`, `conceptRef`). The opus count rose 7 → 11, but 5 of those 11 are one batch caused by a new doc gap (N2, `S8-opus-1:[44-48]`) and 2 are the undeployed-fixture STATE errors that happen by design. Genuine key misses: `S2-opus-1:21→22→23` MOVE_CHILD needs two rejections (N8) | tools/docs (D85); new N2 |
| 8 | **H — `ToolSearch` schema fetches** | 7 / 17 | 20 / 16 | **19 / 22** | **Flat.** Sonnet is up by design, because it now loads schemas before the first call (`S3-sonnet-1:2`). This is harness overhead, not this plugin | – |

**In one line:** every family the 2026-09 treatment targeted (A, C, B and B′) **stays fixed**, and B′ improved further
through D76. G moved **down** for sonnet (D85). D and F are **unmoved**; the open D50/D64/D66/D67/D75 remedies sit
there. The only family that grew is D on sonnet, and that is an effort effect on unchanged files.

### 3.1 Recurrence watch (details in `review-families.md` §2)

- **Fixed since round 18 and visible here:**
  - D63: one module check replaces the sweep.
  - D71: the editor tests pass first time.
  - D76: `mps_dump` views, 0 errors.
  - D81: 0 rewrites after dry-run name warnings. It was measured only in S7, S8 and S9, because S1 and S3 made no dry
    run.
  - D85: see G.
  - D87: 0 map rejections.
  - D89: `conceptLoaded:false` leads straight to MAKE (`S2-opus-1:5→6`, `S8-opus-1:10→29`).
- **D68 was not exercised**, so its re-measure is still outstanding. Opus avoided the parser. Sonnet parsed
  placeholders and swapped in `propertyValue` by hand (`S2-sonnet-1:53-57`, ≈ 3 turns). See N3.
- **Recurring, 1–5 turns each:**
  - D53 2/2;
  - D64 2;
  - D66 2;
  - D67/D75 3;
  - D73 2 (cheaper: both cells stayed inside the project);
  - D77 3;
  - D82 1 (opus);
  - D83 2;
  - D84 1 (`S6-sonnet-1:65→70`);
  - D86 1 (`S2-opus-1:25`: dry run of `relationDeclaration` → a concept, silent success);
  - D88 3;
  - D91 1.
- **Not seen:**
  - D70 (not exercised);
  - D72 (both S10 workers closed before opening);
  - D80 (fresh-fixture signals on every shared pid);
  - D90 (both S5 workers set `unit="G"`);
  - D92 (`S1-sonnet-1:74-79` scopes in constraints).
  - D78 was seen at 0 turns (`S3-opus-1:13`, 23 identical warnings in 17 KB).

## 4. New findings and candidate remedies (for Gate 2)

Ranked by avoidable turns over the round. Tier = first fit of D → S → P-off → P-on → T. Evidence in
`review-new.md` §2–§3 and `review-families.md` §4.

| rank | finding | avoidable turns | evidence | tier | candidate remedy |
|---|---|---|---|---|---|
| 1 | **N1 (D95): self-initiated negative controls and re-verification.** The worker mutates a sample or test node to prove that a rule fires, re-MAKEs, re-runs and restores. It also re-counts or re-prints after a clean check, and dry-runs a write that it then repeats unchanged | ≈ 13 (negative controls) + ≈ 15 (re-verification, dry-run pairs) | `S7-sonnet-1:79-88` ("For the negative control I'll change the `result` step's text … which should now fail"); `S1-sonnet-1:117-123`; `S1-opus-1:81-88`. Re-verification: `S3-sonnet-1:23-26`, `S9-sonnet-1:20-24`, `S6-sonnet-1:79-83`. Dry-run pairs: `S2-sonnet-1:49→50, :66→67`, `S7-sonnet-1:50→51, :53→54` | **D** (or an effort choice) | One paragraph in the validation step of `mps-mcp-workflow/SKILL.md`: "The done criteria are `check_root_node_problems` and test runs. Do not mutate sample or test nodes to prove a rule fires, and do not re-run after restoring. A negative case belongs in an `@tests` model (`mps-tests`). A dry run is for a write you are unsure of, not a step before every write." If D does not move it, pin sonnet at `high` for the study (see §7) |
| 2 | **N2 (D94): the new `mps-dsl-memory` step 8 dry-runs blueprint files that the server rejects** (file input must be under the system temp dir) | ≈ 4 (2/2 cells, det. 1.0) | `S8-opus-1:[44-48]` (5 rejections: "Input file path … is not inside the system temp directory") → `:49` copy → `:[50-54]` retry; `S8-sonnet-1:59→63`. Both then recorded it as a gotcha in the generated skill | **D**, then **S** | D: append to `mps-dsl-memory/SKILL.md:29` step 8: "File inputs must be in the system temp directory: pass each blueprint inline (≤ 4 KB) or copy it to `$TMPDIR` first. A path under `.agents/skills/` is rejected." S: also accept a read-only `json` path under the call's `projectPath` (`AbstractOps.kt:3751`). This is a side effect of the round-18 A8/D87 work (lesson 38: the new step lacked the rule it triggers) |
| 3 | **N4 (D97): a Java-emitting generator needs `jetbrains.mps.baseLanguage` as a generation target** | ≈ 4 (2/2 cells) | The D63 module check now surfaces "… must specify the language 'jetbrains.mps.baseLanguage' as a generation target" after the first MAKE: `S6-opus-1:62→[64],65,66`, `S6-sonnet-1:73-78` | **D** | Add to the common-path workflow in `mps-aspect-generator/SKILL.md`, before the MAKE step: "A generator that emits Java needs `mps_mcp_module_dependency(<language>, jetbrains.mps.baseLanguage, scope=\"Generation Target\")`." `references/module-structure.md:76` shows only the `core.xml` case. Either this or MPS-40228's `create_module` could add the target by default for a language whose generator template language is BaseLanguage |
| 4 | **N3 (D96): the MPS-40212 concept-function parameter binding is not routed from the parser docs** | ≈ 3 | `S2-sonnet-1:53` (`x != null && x.trim()…` → 6 problems), `:54` (placeholder literals), `:55-56` (swap by `SET CHILD`). The binding is documented only in `unsupported-and-workarounds.md:89`, which the worker never opened | **D** | A bullet in `mps-baselanguage/references/parse-java-tips/parameters-rules.md` and under Validator in `mps-aspect-constraints/SKILL.md`: "Inside a ConceptFunction body write the implicit parameters by name (`propertyValue.trim().length() > 0`). In `child` / `replace` mode they bind to `ConstraintsFunctionParameter_propertyValue` / `ConceptFunctionParameter_node`, and `warnings` lists what was bound." This also unblocks the D68 re-measure |
| 5 | **N7 (D50 evidence): index-to-leaf two-hop reads of split references** | ≈ 5 | `S1-sonnet-1:21-22→23-25→34→38-39` (editor), `:52-57→58-61→62→63-65` (constraints); `S6-sonnet-1:25-29→33-34` | **D** | A "for task X read a, b, c" bundle line at the top of `editor-patterns.md` and the constraints index, for the S1/S2 jobs (readable editor; property validator plus referent scope). Filed as new D50 evidence, not as a new defect |
| 6 | **N5 (D98): `find_files_by_glob` returns `[]` for a freshly generated `source_gen`** | ≈ 2 | `S6-sonnet-1:47`, `:66`, `:67` (`addExcluded:true`) → `list_directory_tree` `:48`, `:68` ("The glob is skipping source_gen again …") | **D** (platform tool) | `mps-aspect-generator/SKILL.md:59`: recommend `list_directory_tree` on `<module>/source_gen` first, and say the glob can miss freshly generated files. Separately check whether VFS is refreshed after MAKE |
| 7 | **N8 (D99): the `update_node MOVE_CHILD` rejection names the missing keys but not the role of `nodeReference`** | 2 | `S2-opus-1:21→22→23`: the first rejection lists `childRole` / `childNodeRef`, and the worker drops `nodeReference`, which must be the *new parent* | **S** (error text) | List every required key with its meaning in one message ("`nodeReference` = the new parent, `childNodeRef` = the node to move, `childRole` = the role under the new parent") |
| 8 | **N6 (A9): zsh globbing breaks an unquoted `grep --include=*.md`, and the worker has no Grep tool** | ≈ 2 per round (also in round 18) | `S8-sonnet-1:51→52→53`, `S6-opus-1:15`; round 18 `S1-sonnet-1`, `S1-opus-1` | **T** (guide template) | One line in `AGENTS_template.md`: "The shell may be zsh: quote globs (`--include='*.md'`)." The missing Grep tool is a property of the worker CLI, not of MPS |

**Candidates with no evidence this round:** D70, D72, D80, D90, D92 (see §3.1), and any P-on script. No chain needs
server round trips that a parameter would not serve better.

**Total addressable waste:**
- opus: ≈ 25 turns over 9 cells (N2, N4, D64/D66/D77/D86/D88, the D76 `tree` residuals);
- sonnet: ≈ 47 turns, of which ≈ 25 are verification appetite (N1).

The doc-tier items N2, N3, N4 and N5 are four short edits for ≈ 13 turns, and they are the cheapest wins.

## 5. Hypotheses (status after this round)

| # | Status | Round-21 evidence |
|---|---|---|
| H1 | **Moderated further.** Blueprint shape errors are gone (D87, 0 map rejections). What remains is D88 bracket counting (3) and one D86 wrong-kind reference (silent on dry run) | §3 #5 |
| H2 | **Clean, with one new cost.** MAKE → verify has no stale-runtime retry. The D63 module check now surfaces a generator-target warning (N4) that model checks never showed: a correctness gain that reads as a turn cost | `S6-*` |
| H3 | **Holds as reformulated.** Both models used `table_to_bulk_insert.py`; sonnet did so for the first time (round 18 sonnet wrote its own converter). The bulk response is 5.7 KB | `S3-*` |
| H4 | **Treated.** 21 envelopes, half self-forced; `mps_dump.py` views absorb the rest | §3 #1, #4 |
| H5 | **Partly.** `validation_loops` ≤ 1. S5 fixes land in 10–13 batches with 0 errors | `S5-*` |
| H6 | **Refuted again.** All 65 seeAlso refs and all 40 cookbook refs resolved in both S3 cells | `S3-*.eval.md` |
| H7 | **Effort-dependent, not model-dependent.** Sonnet at `xhigh` reads 3× more (on unchanged files) and stops probing blind. Round 18's "sonnet-5-5 reads less" was most likely a lower effort level | §2.1 |
| H8 | **Absent under restart isolation.** 1 `reload_all` in the round (D84); no stale runtime | §3.1 |
| H10 | **Holds, and the floor moved.** SMOKE floor 62 K → 82 K from the CLI (+6.7 K per request). Turn count still drives cost | §0 |

## 6. Defects filed

- **D94–D99** were added to `docs-defects.md`:
  - D94 = N2;
  - D95 = N1;
  - D96 = N3;
  - D97 = N4;
  - D98 = N5;
  - D99 = N8.
- **A9** (N6, plus the analyzer's over-counting `C_root_after_clean_model`, whose `"errors":0` test matches any row of
  a non-clean result) was added as a harness defect.
- **Round-21 evidence** was added to D50, D53, D64, D66, D67/D75, D73, D77, D82, D83, D84, D86, D88 and D91.
- **D68**: the re-measure is still pending.
- No remedy has been chosen; that is Gate 2.

## 7. Caveats and suggested next step

- n = 1 per cell. The r18 ↔ r21 sonnet swing is dominated by effort. Round 18's level is unknown, so **the sonnet
  deltas are not a clean tool/skill signal**. The opus deltas are cleaner but still mix in `medium` vs unknown.
- The CLI floor rose ≈ 6.7 K tokens per request between rounds. Compare turns and batches, not dollars or cache read.
- **Suggested A/A check before any sonnet-targeted remedy:** re-run S1, S7 and S8 on sonnet pinned at `high` on this
  surface. If S1 and S7 fall back to ≈ 55 / 45 batches with errors under 3, pin sonnet at `high` for the study, so that
  later rounds measure the surface rather than effort.
