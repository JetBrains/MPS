# Skill Script Automation Study — Round 17 (2026-09-26)

Status: measurement round complete. Scope on request: **S1, S2, S3** × **opus + sonnet** = 6 cells,
plus one SMOKE per model. Gate 1 stopped at the pilot (n = 1 per cell, the same depth as round 15).
The round measures HEAD `632f14db9187` on branch `262/vaclav/merge`: the first round on the **2026.2
(262) platform**, and the first S1–S3 round after the D62 and D69 fixes. No code or docs remedy was
made in this round. Nothing was pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r18/{SMOKE,S1,S2,S3}-{opus,sonnet}-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, and `analysis/`, which includes `compare.md` and the reviewer's `review.md`.
The directory suffix is `-r18` because `-r17` holds round 16. Citations use `run:step`, the 1-based
`tool_use` ordinal that `show_steps.py` prints. `[a-b]` marks one parallel batch, which is one turn.

**Baselines.**
- `HOTSPOT_REPORT.md` (2026-09-15) is the baseline of record. It covers only the S1 and S3 cells. Its raw
  runs are in `~/MPSProjects/mcp-study-baseline/runs` (lesson 36).
- Round 15 (`runs-r16`) is the latest run of the same six cells with the same prompts.
- Both sets were re-analysed with today's `analyze_runs.py`, into `runs-r18/analysis-baseline/` and
  `runs-r18/analysis-round15/`.
- The token columns are result-based (D50 M-0), not the per-event sums the baseline report published.

## 0. Harness state

- **MPS**: 2026.2 EAP (`262.SNAPSHOT`, build `262.9437`), built from this checkout.
  - Every compiled plugin class is newer than its source: the newest source is 08:12, the classes 08:19.
  - The working tree differs from HEAD only in `.idea/libraries/idea_mcpserver.xml` (the developer's
    edit, not touched by the round).
- **Instrumentation**:
  - MPS was running from the IDEA run configuration (pid 4641, dev checkout open, no call log).
  - `capture` → `calllog runs-r18/server-calllog.jsonl` → `shutdown`. The shutdown closed the dev
    checkout.
  - `start` on the synthesized `proj-r18/harness` → `wait` → SMOKE ×2.
  - One MPS for the round: pid **5550**, the same `mpsPid` in all 8 metas.
  - `server_call_surplus` is 0 on every run. There were 0 pre-dispatch, Welcome-screen or
    `MODAL_BLOCKED` events.
- **MCP port (harness defect A3).** The 262 selector `MPSSRC2026.2` stores `mcpServerPort = 64344` in
  `options/mcpServer.xml`. `study/mcp.study.json` and every script default still say 64343.
  - The tracked config and the IDE setting were left alone.
  - The round ran from a local mirror, `~/MPSProjects/mcp-study/study-r18`: `scripts/`, `scenarios/`,
    `fixtures/` and `mcp-junie/` are symlinks to the repo, and `mcp.study.json` is a copy set to 64344.
  - Launches set `STUDY=<mirror>` and `MPS_MCP_URL=http://localhost:64344/stream`.
  - Prompt shas are unaffected, because the prompts are read through the symlink.
- **Measured surface**:
  - `inventorySha256 a818c52b…`: 50 tools, 39 `mps_mcp_*`.
  - `skillsSha256 e4b2965c…`, identical on all 8 runs.
  - The platform MCP toolset changed with 262: `analyze_calls`, `execute_tool`,
    `get_all_open_file_paths`, `git_status` and `lint_files` were added, and `find_files_by_glob`,
    `find_files_by_name_keyword` and `get_repositories` were removed. That is about +1 K tokens per
    schema load. No worker called a non-`mps_mcp` tool.
- **Worker models**:
  - `opus` = `claude-opus-5-5`, the same as round 15. The baseline used `claude-opus-5`, so opus deltas
    against the baseline still mix in a model change.
  - `sonnet` = `claude-sonnet-5`, the same id as the baseline and round 15.
- **Prompts**: `promptSha256` for S1 (`96376ae7…`), S3 and SMOKE (`313ab6b5…`) are identical to round 15
  and to the baseline metas.
- **Fixtures**:
  - S1: synthesized per run. Its `migration.xml` carries `project.baseline.version = 262` and no
    executed entries, because no project migration in this MPS has a baseline ≥ 262.
  - S2: `fixtures-r12/statechart.tar.gz` (`d9dd23be…`).
  - S3: `fixtures-r12/recipes.tar.gz` (`40f91e40…`) plus `recipes.csv`.
  - Both tarballs are the same as round 15's and carry no doc surface. They are 261-baseline projects;
    they opened on 262 without a migration dialog.
- **Guards**:
  - `check_user_agents.py` exit 0.
  - Harness unit tests 55/56. `test_migration_is_derived_from_the_mps_home` asserts at least one
    executed migration, which cannot hold on 262 (harness defect A4). The derived file is correct.
- **SMOKE context floor** (cache read + write + input at `result`): opus **62,024**, sonnet **99,274**
  tokens. Round 15: 62,052 / 98,864.
- **Confounders**:
  - S1-opus-1 hit 9 Anthropic API HTTP 502 retries: about 520 s of stalls in its first 11 minutes
    (§3.3a).
  - S2-sonnet-1 started with the previous cell's language runtime (§4 N1).
  - Neither affects pass/fail. Both inflate one cell's cost.

## 1. Task outcomes

All six cells **PASS**. Each was checked by a read-only Opus evaluator against `done_criteria.md`,
live, before the project closed.

| cell | verdict | key evidence |
|---|---|---|
| S1-opus-1 | PASS 6/6 | RecipeRef/IngredientRef wrappers; enums correct; 6 editors, 2 constraints, `check_Step` warning, `totalMinutes`; samples 3/3/1, 0 errors; no `descriptorStatus` |
| S1-sonnet-1 | PASS 6/6 | same shape; seeAlso scope excludes self; samples 3/3/1 (2–4 steps), 7 roots clean |
| S2-opus-1 | PASS 5/5 | `Guard.condition`, `Transition.guard` [0..1], non-blank validator, `AddGuard` intention; one guard `count > 3`; sandbox 0 problems |
| S2-sonnet-1 | PASS 5/5 | same; renders `on shiftUp [ count > 3 ] -> 4`; the naming-policy warning on "Add guard" is the only warning |
| S3-opus-1 | PASS 4/4 | 40 Recipes + `All Recipes` + 3 Ingredients; 5 deep samples and an all-40 structure check match the CSV; 44 roots, 0 errors, 23 warnings (the 23 `:0` steps) |
| S3-sonnet-1 | PASS 4/4 | same; the evaluator compared all 40 recipes against the CSV, 0 mismatches; 65 seeAlso refs resolve |

The pass rate is 6/6, unchanged from round 15 and from the baseline's 4/4 comparable cells.

## 2. Round metrics

r1 = baseline, r15 = round 15, r17 = this round. The full table, with every column, is in
`runs-r18/analysis/compare.md`. "Batches" counts assistant messages that carry tool calls (a parallel
batch is one), from `review.md`.

| metric | S1-opus r1 | r15 | **r17** | S1-sonnet r1 | r15 | **r17** | S2-opus r15 | **r17** | S2-sonnet r15 | **r17** | S3-opus r1 | r15 | **r17** | S3-sonnet r1 | r15 | **r17** |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| turns | 181 | 124 | **98** | 148 | 150 | **154** | 81 | **66** | 132 | **143** | 100 | 20 | **22** | 28 | 24 | **27** |
| tool batches | – | 83 | **67** | – | 113 | **95** | 53 | **44** | 103 | **99** | – | 12 | **14** | – | 15 | **19** |
| wall-clock s | 1,395 | 541 | **1,035**¹ | 1,322 | 1,261 | **1,234** | 308 | **237** | 1,274 | **1,248** | 740 | 77 | **84** | 229 | 147 | **144** |
| cost USD | 14.96 | 4.18 | **3.62** | 5.83 | 5.08 | **5.18** | 2.59 | **2.18** | 4.73 | **4.85** | 5.55 | 0.79 | **0.74** | 1.13 | 0.64 | **0.67** |
| cache-read tokens | 18.31 M | 7.46 M | **5.90 M** | 15.52 M | 11.95 M | **10.86 M** | 5.27 M | **4.01 M** | 10.34 M | **10.49 M** | 4.02 M | 0.62 M | **0.72 M** | 1.95 M | 1.05 M | **1.33 M** |
| tool calls | 173 | 121 | **95** | 135 | 142 | **143** | 75 | **64** | 124 | **135** | 97 | 18 | **20** | 26 | 22 | **24** |
| MCP calls | 90 | 87 | **60** | 71 | 66 | **85** | 52 | **43** | 73 | **92** | 68 | 8 | **8** | 11 | 7 | **9** |
| Bash | 73 | 29 | **29** | 3 | 16 | **5** | 14 | **16** | 3 | **13** | 25 | 8 | **10** | 4 | 5 | **9** |
| skill-file accesses | 26 | 18 | **20** | 9 | 49 | **37** | 8 | **16** | 32 | **21** | 3 | 3 | **6** | 3 | 5 | **5** |
| skill bytes | 152,862 | 130,836 | **162,133** | 160,079 | 149,849 | **141,732** | 48,086 | **93,459** | 103,019 | **60,862** | 17,443 | 10,680 | **21,627** | 17,947 | 13,521 | **7,636** |
| whole-file re-reads | 0 | 0 | **0** | 1 | 4 | **1** | 0 | **0** | 5 | **1** | 0 | 0 | **0** | 0 | 1 | **0** |
| compactions | 1 | 1 | **1** | 2 | 2 | **2** | 0 | **0** | 2 | **2** | 1 | 0 | **0** | 0 | 0 | **0** |
| temp-file envelopes | 32 | 1 | **1** | 23 | 0 | **0** | 3 | **1** | 3 | **3** | 25 | 1 | **1** | 4 | 0 | **1** |
| Bash reads of temp results | 33 | 1 | **1** | 0 | 0 | **0** | 3 | **0** | 0 | **0** | 12 | 3 | **2** | 0 | 0 | **0** |
| MCP authored chars | 26,373 | 21,834 | **14,725** | 26,384 | 24,324 | **29,307** | 14,371 | **13,538** | 25,957 | **27,212** | 24,252 | 1,387 | **1,578** | 2,436 | 1,130 | **1,724** |
| tool-result bytes | 254,414 | 239,349 | **248,992** | 444,385 | 293,530 | **309,561** | 123,059 | **154,395** | 329,802 | **406,812** | 184,005 | 60,195 | **48,228** | 183,320 | 44,870 | **41,447** |
| error envelopes | 2 | 4 | **0** | 5 | 2 | **9** | 0 | **2** | 8 | **8** | 4 | 1 | **0** | 1 | 0 | **0** |
| `check_root_node_problems` | 16 | 18 | **13** | 8 | 5 | **8** | 8 | **7** | 6 | **11** | 50 | 2 | **2** | 1 | 2 | **2** |
| server ms | 9,984 | 6,763 | **6,764** | 4,478 | 14,351 | **7,978** | 4,377 | **5,911** | 5,599 | **8,956** | 1,564 | 118 | **286** | 175 | 114 | **274** |

¹ About 520 s of it are API 502 stalls (§3.3a). Net of them, the run is about 434–515 s.

### 2.1 Deltas against the baseline

Across the four baseline cells (S1 + S3 × opus + sonnet), the totals are:

| | r1 | r15 | **r17** | r1 → r17 |
|---|---|---|---|---|
| turns | 457 | 318 | **301** | −34 % |
| tool calls | 431 | 303 | **282** | −35 % |
| cost USD | 27.47 | 10.69 | **10.21** | −63 % |
| cache-read tokens | 39.80 M | 21.08 M | **18.80 M** | −53 % |

**Sonnet** is the clean comparison, because the model id is the same:

| cell | turns | tool calls | cost | cache read |
|---|---|---|---|---|
| S1 | 148 → 154 (+4 %) | 135 → 143 (+6 %) | $5.83 → $5.18 (−11 %) | 15.5 M → 10.9 M (−30 %) |
| S3 | 28 → 27 (−4 %) | 26 → 24 (−8 %) | $1.13 → $0.67 (−41 %) | 1.95 M → 1.33 M (−32 %) |

- The S1-sonnet turn count is still flat since the baseline: 148 / 115 / 149 / 150 / 154 in rounds 1, 2,
  13, 15 and 17.
- Every MCP-side cost fell (envelopes 23 → 0, result bytes −30 %, cache read −30 %). The turns went into
  skill navigation and, this round, into post-compaction errors (§3.3b).

**Against round 15**, with the same models and prompts:
- **Opus improved in S1 and S2**:
  - S1: 83 → 67 batches, 121 → 95 tool calls, $4.18 → $3.62.
  - S2: 53 → 44 batches, $2.59 → $2.18.
- **Sonnet is flat in batches and slightly worse in turns**: S1 113 → 95 batches but 150 → 154 turns,
  S2 103 → 99 batches.
- S3 is flat on both models: +2 / +4 batches, ±$0.05. The D69 treatment moved work around there without
  removing turns (§3 #4).
- At n = 1, differences of this size are within the model variance of lesson 12.

## 3. Which baseline hotspots moved

The families are the ones ranked #1–#8 in `HOTSPOT_REPORT.md` §2. Values are for the four S1/S3 cells
unless marked. Determinism applies to what remains, and was assigned by the reviewer from
`show_steps.py`.

| # | Baseline hotspot | r1 | r15 | **r17** | Moved? | Evidence (r17) |
|---|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash** | 84 envelopes (32/23/25/4) | 2; S2 3 + 3 | **3** (1/0/1/1), 2 of them deliberate `--verify` dumps; S2 1 + 3 | **Fixed** (−96 %). **The D62 residual is gone:** all 3 `list_node_intentions` listings came back inline. What remains is S2-sonnet's deep dumps above the threshold, identical to round 15 (86 KB + 40 KB), plus a 33 KB 3-concept `detail:"full"`. Det 1.0. | `S2-opus-1:56, :63`, `S2-sonnet-1:125` (inline); `S2-sonnet-1:28-32, :117-118` |
| 2 | **C — re-validation after a clean model-level check** | 75 calls, ≈ 60 avoidable | 27 | **25** (13/8/2/2); S2 18 | **Changed form, cheaper.** The S3 "every root" habit stays fixed (2 checks per S3 cell). The end-of-run aspect-model sweep recurs in 3 cells, but each is now **one parallel batch** (1 turn, where round 15's sequential sweep was 6). No module ref was sent, so the misleading D63 NOT_FOUND text did not appear. Det 1.0. | `S1-opus-1:[90-95]` (4 of 5 models unchanged since `:38, :48, :59, :66`); `S1-sonnet-1:[141-143]`; `S2-sonnet-1:[132-135]` |
| 3 | **D — skill reference reads** | 41 / 348 KB | 75 / 305 KB | **68 / 333 KB**; S2 37 / 154 KB | **Unchanged overall, split by model.** **Sonnet improved**: S1 49 → 37 accesses, S2 32 → 21 accesses and 103 → 61 KB, re-reads 4 + 5 → 1 + 1. **Opus grew in bytes**: it `cat`s whole SKILL.md files and reference sets (S1 131 → 162 KB, S2 48 → 93 KB). `S2-opus-1:41` was a 29 KB file the harness cut to a 2 KB preview, then re-read at `:42`. The S3-opus rise (11 → 22 KB) is the intended D69 route to the script's help. D66 recurs (below). Det 0.5. | `S1-sonnet-1:47-62` (15 constraint reads), `:82-90` (D66); `S1-opus-1:5, :50, :51`; `S2-opus-1:41 → :42` |
| 4 | **B′ — ad-hoc Python** | ≈ 22 heredocs (opus) | 17; shipped scripts 0 | **17** ad-hoc (8/0/2/0/4/3); shipped scripts **7** (S3 6, S2 1) | **Improved in S3; the D69 treatment is visible.** Both S3 workers used `table_to_bulk_insert.py` and `--verify` (40/40, 0 differences), with no self-written CSV→blueprint or CSV-vs-dump script. **But S3 turns did not fall** (20 → 22, 24 → 27): the saved scripting went into reading the script's help and into hand-writing the `Cookbook` root, which is outside the table spec (N3, det 1.0). **S1-opus residual**: its own blueprint generator per aspect, the same as round 15 (det 0.5). | `S3-opus-1:9-11, :12, :17, :19-20`; `S3-sonnet-1:4-6, :14, :17-19, :24`; `S1-opus-1:28, :29, :33, :46, :55, :64, :75` |
| 5 | **B — blueprint file → insert** | 22 writes + 8 inserts; 33 KB bulk response | 8 writes; 17 KB bulk dry run | bulk response 5.8 / 5.7 KB; S3 dry run **0**; S1 dry runs **3** | **Improved in S3, changed form in S1.** The 17 KB bulk dry run of round 15 is gone from S3. It reappears in S1: a dry run warns "did not resolve" for **every** by-name target, including roots already in the model. The post-D69 wording in `mps-node-editing/SKILL.md:62` says that means "the target is not in the model yet … Any other listed target will stay broken, so resolve it first". S1-opus followed it with a `sed` rewrite to node ids (N2, det 1.0). `/tmp` accepted, so D3 does not reproduce. | `S1-opus-1:76-79`; `S1-sonnet-1:77, :137`; `S3-opus-1:13`, `S3-sonnet-1:16` |
| 6 | **Discovery refinement** | 2–3 hops × 3 chains per S1 run | D67 gap in 3 runs | D67 escalation in **3 runs**; S2-sonnet 16 × `full` (77 KB), 0 × `shape` | **Unchanged** (D67 open). `shape` has no declaration refs, so each editor or `SLinkAccess` author makes a second `full` call. S2-sonnet skipped `shape` altogether, which is +53 KB against round 15. Det 1.0. | `S1-opus-1:23 → :24 → :25`; `S2-opus-1:21 → :23`; `S1-sonnet-1:21 → :33, :66` |
| 7 | **Guessable-but-rejected literals** | 4 pairs | 4; S2-sonnet 5 | S1-sonnet 4 turns (7 envelopes), S2-sonnet 3 turns (6 envelopes), others 0 | **Unchanged in count, cheap.** Every miss but one recovered on the next turn. The exception is `S2-sonnet-1:74` (parse_java keys, 3 turns). Recurring: `search_concepts query` (rounds 10, 11, 15, now `S2-sonnet-1:16`). New: `print_node format "structural"` ×4 in one batch (`S1-sonnet-1:[104-107]`), plausibly seeded by `analysis-tools/overview.md:9` ("for the structural JSON form"). | `S1-sonnet-1:17, :93, [104-107], :127`; `S2-sonnet-1:[12-14], [16,17], :74` |
| 8 | **ToolSearch schema fetches** | S1/S3 24 | 21 | **17** (5/9/1/2); S2 15 | **Unchanged**; harness-level, not addressable here. | e.g. `S2-sonnet-1:21, 24, 46, 51` |

### 3.1 In one line

- **Families #1 and #2 stay fixed** (2 temp-file envelopes of 84; the model sweep now costs 1 turn).
- **#4 and #5 moved as treated in S3 (D69), but did not pay in turns.** Their residuals are the Cookbook
  root (N3) and a misleading dry-run sentence that now misfires in S1 (N2).
- **#3 (skill navigation) improved on sonnet and grew in bytes on opus.** It is still the family that
  sets the sonnet greenfield turn count, together with the compaction it feeds (D50).
- **#6 and #7 are unchanged**, and D67 is untreated. #8 is outside the plugin.

### 3.2 Round-15 findings 4.1–4.9

| finding | status after round 15 | recurred in r17? | evidence |
|---|---|---|---|
| 4.1 D62 `list_node_intentions` temp file | **fixed** `b727f965586a` | **No — treatment visible**: 411 B / 21 B / 411 B inline, no reads. That saves the 2 turns of r15 `S2-opus-1:65-66, :72-75`. | `S2-opus-1:56, :63`; `S2-sonnet-1:125` |
| 4.2 D63 module scope / wrong NOT_FOUND text | open (planned) | **Partly**: the sweep recurs, batched; no module ref was sent. | `S1-opus-1:[90-95]` |
| 4.3 D64 `forNamedElements` ref hunt | open | **Yes, smaller**: 1–2 calls, down from 4; the `startingPoint` "non-project model" retry did not recur. | `S1-opus-1:52`; `S1-sonnet-1:70, :72` |
| 4.4 D65 no-op used-language adds | open | **No** (n = 1 variance; `SKILL.md:60` is unchanged). | `S1-opus-1:54`; `S1-sonnet-1:74` |
| 4.5 D66 typesystem file without blueprint | open | **Yes**: 6 reads + 3 concept lookups before a clean insert; the file is still 34 lines with no blueprint. | `S1-sonnet-1:82-90 → :91`; `S1-opus-1:61-63 → :65` |
| 4.6 D67 `shape` without declaration refs | open | **Yes**, 3 runs. | §3 #6 |
| 4.7 D68 parser does not bind implicit parameters | open | **Yes in sonnet, and at a new site**: `propertyValue` in constraints (`S2-sonnet-1:94-102`, 7 turns), and `node` in an editor `QueryFunction_NodeCondition` (`:77-83`, 5 turns). Opus avoided both by writing the parameter concepts into JSON (`S2-opus-1:35, :49`). | as cited |
| 4.8 D69 bulk route / `--verify` | **fixed** `edbc0a14a9ec` | **Treatment visible, saving not realised**: script + `--verify` in both S3 cells, 0 bulk dry runs, 0 ad-hoc CSV scripts; turns +2 / +3 (§3 #4, N3). | `S3-opus-1:9-17`; `S3-sonnet-1:4-24` |
| 4.9 D50 sonnet context budget | open | **Yes**: the first compaction is at step 56 (S1) and 58 (S2), the same band as before. S2-sonnet read the same 86 KB + 40 KB deep dumps "to look" (`:28-32`), where opus printed the root as 706 B PLAIN TEXT (`S2-opus-1:13`). S1-sonnet printed all 6 editors deep (`:113-118`, 58 KB). **New symptom**: 7 of S1-sonnet's 9 error envelopes follow compaction #2 (§3.3b). Compaction time is 346 s and 292 s, 28 % and 23 % of wall-clock. | as cited |

### 3.3 Anomalies

**a. S1-opus-1 spent 1,035 s on 98 turns; round 15 spent 541 s on 124.** The difference is Anthropic API
stalls, not tools.
- The transcript holds 9 `system/api_retry` events, all HTTP 502. They form 4 clusters, before `:4`,
  `:13`, `:14` and `:20`, and add up to 80 + 91 + 210 + 140 = 520 s. There is also an 80 s thinking-only
  gap before `:11`.
- No other cell in round 15 or 17 has an `api_retry` event.
- Tool execution is 11 s in both rounds, server ms is 6,764 vs 6,763, and output tokens fell.
- `analyze_runs.py` does not surface these stalls (A5).

**b. S1-sonnet-1 has 9 error envelopes against round 15's 2.** They are 5 error turns; the analyser's
8 "retries" also pair calls inside one batch (A2). Seven of the nine come after compaction #2 (step 91),
and cover conventions the same worker had used correctly before it:

| step | error | preventable by |
|---|---|---|
| `:17` | singular `conceptRef` | – (the error names the key; D56 policy) |
| `:93` | top-level MAKE arguments | – (D29, strict on purpose) |
| `:[104-107]` | `print_node format "structural"` ×4 | D, weak: `overview.md:9` wording |
| `:127` | comma-separated `conceptRefs` string | **S**: split, or say "pass a JSON array" |
| `:[128,129]` | enums passed to `get_concept_details` | **S**: answer with the literals instead of NOT_FOUND |

Only the last two are tool-fixable (about 1 turn). The cluster as a whole is the D50 effect.

**c. S2-sonnet-1 made 92 MCP calls against 73, with 407 KB of results against 330 KB.** The breakdown:
- about 8 calls and 16 KB for the stale-runtime detour (N1);
- +53 KB for `full`-only concept details (§3 #6);
- +20 KB for deep re-prints after a compaction (`:27` = `:62`);
- the D68 fix-ups at two sites, 6 literal rejects, the final sweep, and an unrequired `wholeProject`
  rebuild (`:131`).

**d. 262 platform bump.** No server exception in 297 logged calls, and no new error codes. The only
262-attributable observations are:
- the port (A3) and the migration-test drift (A4), both harness-side;
- N1, where the fresh-state "runtime is not deployed" answer of round 15 became a stale descriptor from
  the previous cell. This needs a repro before it is blamed on the platform.

## 4. New findings and candidate remedies (for Gate 2)

Verified against the tree by the observer, not only by the reviewer. Line numbers are at HEAD
`632f14db9187`.

1. **N1 (D80) — a closed project's language runtime serves the next project with the same module id.**
   - At `S2-sonnet-1:15`, `get_concept_details(Transition)` returned a `guard` child role that the
     fixture's structure model does not have. S2-opus-1 had added that role in the same MPS 7 minutes
     earlier, and its project was closed.
   - The worker found no `Guard` concept (`:18`) and a clean structure model (`:19-20`). It then ran
     `reload_all` (`:22`), which left the descriptor hollow (`:23`), and a MAKE rebuild (`:25`) repaired
     it (`:26`). That cost about 7 turns and 16 KB.
   - Round 15 ran the same order and got "runtime is not deployed" (`runs-r16 S2-sonnet-1:8`).
   - It is a **study-validity hazard**: any two cells that share a fixture module id share runtime
     state. It is also the first live instance of H8.
   - **Harness**: restart MPS between cells that share a fixture language (`mps_control.sh restart` +
     SMOKE, about 2 min), or give each copy a distinct module id.
   - **S**: have `get_concept_details` flag a deployed descriptor whose features differ from the source
     structure model (`runtimeStale`), as `makeStatus:"runtime_stale"` already does for
     `CREATE_CONCEPTS`.
   - Needs a repro first: open and close two copies of the statechart fixture in one MPS.
2. **N2 (D81) — the dry-run "did not resolve" warning is emitted for every bare-name target, and the skill
   misreads it.**
   - `AbstractNodeOps.kt:420-423`: with no parsed `targetRef`, a dry run returns
     `dryRunDynamicReferenceWarning` without trying to resolve the name.
   - `mps-node-editing/SKILL.md:62` says the warning "means the target is not in the model yet".
   - `S1-opus-1:77` warned on Flour/Milk/Egg, which `:76` had just inserted. `:78` rewrote the names
     with `sed`. `:79-80` show the real insert would have resolved them (`stillBroken 0`).
   - S1-sonnet also ran two dry runs that added nothing (`:77`, `:137`).
   - **D**: "a dry run never resolves by-name targets, so every name is listed whether it exists or not;
     check `fixReferences.stillBroken` after the real insert". Drop "dryRun first if the blueprint is
     large".
   - **S** (optional): resolve names against model + batch on the dry-run copy.
   - Saves about 2 turns per S1 run.
   - Nine skill passages describe dry-run warnings, and none states the rule. Three are wrong,
     including the canonical `response-envelope.md:19, :31`. D81 lists them all and proposes one
     statement there that the others point to.
3. **N3 (D82) — an aggregate root over all rows is outside `table_to_bulk_insert.py` and `--verify`.**
   - Both S3 cells hand-write the `Cookbook` that references all 40 recipes (`S3-opus-1:12, :19-20`;
     `S3-sonnet-1:17-19`).
   - **P-off**: a spec key such as `"aggregate": {concept, name, role, wrapper, reference}` that emits
     the root into the same batch, and a `--verify` check of it.
   - Saves 2–3 turns per S3 run. This is what would let D69 pay.
4. **N4 (D83) — `perRoot` rows have counts but no message text.** It was round-15 item 10, unfiled, and now
   has 4 instances (`S3-opus-1:18`, `S3-sonnet-1:22`, round 15 `S3-*:15/:20`).
   - **S**: `messages: [{text, count}]` per row; pairs with D78.
   - Saves 1 turn per S3 run.
5. **N5 (D84) — `reload_all` after every MAKE that already returned `runtimeReady:true`.**
   - `mps-mcp-workflow/SKILL.md:28` ("call `mps_mcp_reload_all` (or rebuild the language module via
     `mps_mcp_alter_nodes MAKE`)") is read as "both" (`S1-sonnet-1:80→81, :94→95, :120→121`).
   - **D**: "a MAKE that returns `runtimeReady:true` has already reloaded; do not follow it with
     `reload_all`".
   - Saves 3 turns; seen in 1 run, and 0 in round 15.
6. **D68 extension**: the editor site (`node` in `QueryFunction_NodeCondition`, `S2-sonnet-1:77-83`,
   about 5 turns). It goes into the D68 entry, not a new defect.
7. **D50 extension**: convention loss after a compaction (`S1-sonnet-1:93-129`, about 4 turns). It is
   more evidence for 4.9's "inspect with PLAIN TEXT" remedy, which is still the highest-value lever on
   the sonnet cells.

**Still open and still paying, by the evidence of this round:**
- D66, typesystem blueprint: about 4 sonnet turns.
- D67, `sourceNode` in `shape`: 1–2 turns in 3 runs.
- D68, parser parameter binding: about 12 sonnet turns in S2.
- D50, compaction budget.
- D79, the stamp `cat`: 6/6 runs, a standalone turn in the 3 sonnet cells.

**Harness defects** (filed as A3–A5 in `docs-defects.md`):
- **A3**: the MCP port for the 262 selector is 64344, while `mcp.study.json` and the script defaults
  say 64343. Also, `run_worker.sh` hard-codes `$STUDY/mcp.study.json`, so the only override is a STUDY
  mirror.
- **A4**: `test_migration_is_derived_from_the_mps_home` fails on 262 by construction.
- **A5**: `analyze_runs.py` ignores `system/api_retry`. Add `api_retries` / `api_stall_s`.
- **A2** gains an instance: in-batch pairs counted as retries, `S1-sonnet-1:[104-107]`.
- The reviewer read S3-sonnet's meta before the observer recorded its verdict. `review.md`'s "no eval"
  caveat is stale; the cell is PASS.

**No evidence this round** for `MODAL_BLOCKED`, Welcome-screen rejections, a missing `projectPath`, or
hollow descriptors left at the end of a run.

## 5. Hypotheses (status after this round)

| # | Status | Round-17 evidence |
|---|---|---|
| H1 | **Moderated further.** One truncated inline JSON (`S2-opus-1:34`, recovered at `:35`); no assignability error. | `S2-opus-1:34-35` |
| H3 | **Holds as reformulated.** Bulk is 1 insert through the shipped script; the remaining cost is the aggregate root (N3). | `S3-*:12-20` |
| H4 | **Treated.** 3 envelopes in S1/S3, 2 of them deliberate. | §3 #1 |
| H5 | **Partly.** No fix loop ≥ 3 in S1/S3; one in S2-opus (`validation_loops` 1); the sweeps are batched. | §3 #2 |
| H6 | **Refuted** again: 65 seeAlso + 40 cookbook refs resolved. | `S3-*.eval.md` |
| H7 | **Confirmed.** Improved for sonnet, bytes up for opus. | §3 #3 |
| H8 | **First live instance** (N1, cross-project stale runtime), repro pending. | `S2-sonnet-1:15-26` |
| H10 | **Holds.** The floor is 62 K (opus) / 99 K (sonnet) tokens, and turn count still drives cost. | SMOKE |

## 6. Defects filed

D80–D84 (N1–N5, in order) and A3–A5 were added to `docs-defects.md`. All five N findings are on its
new **Recurrence watch** list, each with a signature that a round's review can check. D50 and D68 gain
round-17 evidence. D80 carries both the harness remedy and the tool-side ask. No remedy has been chosen; that is
Gate 2.
