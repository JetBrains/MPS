# Skill Script Automation Study — Round 33 (2026-10-08)

Status: measurement round complete. Scope on request: **S1, S2, S3, S5, S6, S7, S8, S9, S10, S11, S12** × **opus +
sonnet** = 22 cells, n = 1 per cell. There was no pilot (gate 4: all requested scenarios). **All 22 cells PASS.** No
remedy was made in this round. Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r33/`. Per run there are `{worker,server}.jsonl`, `*.meta.json` and
`*.eval.md`; S8 and S7 also have `*.observer-make.json` / `*.observer-run.txt`, and S10 has `*.leftbehind.txt`. The
`analysis/` directory holds:
- `metrics.csv`, `chains.json`, `errors.json`, `hotspots.md`, `navigation.json`;
- `families.tsv` (from `families.py`, over the baseline, rounds 21, 25, 26, 32 and this round);
- `cmp/`: the comparison rounds re-analysed with today's `analyze_runs.py`;
- two Opus reviews: `review-families.md` (baseline families) and `review-new.md` (new findings, error inventory,
  recurrence watch).

`run:step` is the 1-based `tool_use` ordinal that `show_steps.py` prints. This round's directory suffix equals the round
number (rounds 15–26 ran one ahead).

**Baselines.**
- **2026-09 baseline of record:** `HOTSPOT_REPORT.md`, raw runs in `~/MPSProjects/mcp-study-baseline/runs`. It covers
  S1 and S3 only.
- **Prior cells:**
  - S1–S10: round 21 (`HOTSPOT_REPORT_round21.md`, `runs-r22`), the last full matrix;
  - S11: rounds 25 / 26 (`runs-r28`, `runs-r29`);
  - S12: round 32 (`runs-r32`).

## 0. Harness state

- **Measured surface:** HEAD `c6117a42bbf7` on `261/vaclav/MCP2`, a clean tree.
  - Inventory `a54fd676…`: 50 tools, 41 of them `mps_mcp_*`, 68,865 B of descriptions and 44,935 B of schemas.
  - Against round 21 (`93ca3746…`, 39 `mps_mcp_*`): `mps_mcp_query_types` and `mps_mcp_read_ide_log` are new, and seven
    descriptions changed (`check_root_node_problems`, `create_run_configuration`, `list_open_projects`, `query_nodes`,
    `reload_all`, `update_module`, `update_node`).
  - Against round 32 (`741047c0…`): only `read_ide_log` is new, and `list_open_projects` grew from 815 to 1,205 B with
    `logDirectory` / `logFile`.
  - Skills `skillsSha256 87962984…` and guides `guidesSha256 11fb1144…` are identical on all 34 metas (22 cells + 12
    SMOKE). Round 32 had guides `143a360a…`: the MPS-40250 `AGENTS_template.md` lines are the only guide change.
- **Worker effort** (gate 2a): opus `medium`, sonnet `high`, recorded in every meta. These are the round 30–32 pins.
  **Round 21 ran sonnet at `xhigh`**, so the sonnet S1–S10 deltas mix the surface with an effort change. Opus (`medium`
  in both rounds) is the A/A control.
- **Models** (`init.model`): `claude-opus-5-5` and `claude-sonnet-5-5`, as in rounds 21–32. Claude Code is 2.1.293 (round
  32 too; round 21 ran 2.1.286).
- **Prompts:** `promptSha256` is byte-identical to round 21 for S1–S10 and SMOKE, to round 25 for S11 (`5c59d141…`),
  and to round 32 for S12 (`4d7270af…`).
- **Fixtures:** the round-21 tarballs, unchanged and free of doc surface. statechart is `d9dd23be…`, recipes
  `40f91e40…`, recipes-full `37d9c83a…`, recipes-broken `0dc4878e…`; expressions `5c0720b0…` is the S11/S12 fixture
  of rounds 22–32. S1 and S10 are synthesized.
- **Instrumentation:**
  - MPS was running on the dev checkout (pid 79860, no call log).
  - The round ran `capture` → `calllog runs-r33/server-calllog.jsonl` → `shutdown` (closing the dev checkout) → `start`
    on `proj/harness` → `wait` → SMOKE ×2, on port 64343 (lsof, confirmed).
  - Wrap-up cleared the option and restarted MPS on the dev checkout (pid 14055, no call log).
- **Isolation:** `per-shared-fixture-restart`, in 11 MPS processes. Each restart was `shutdown` → `start` harness →
  `wait` → SMOKE. The `mpsPid` groups are:
  - 84745: S1 ×2
  - 90771: S9-o, S3-o, S2-o
  - 94019: S9-s, S3-s, S2-s
  - 97612: S5-o, S8-o
  - 291: S5-s, S8-s
  - 2395: S6-o
  - 3977: S6-s
  - 5425: S11-o, S7-o
  - 7029: S11-s, S7-s
  - 9467: S12-o
  - 11530: S12-s, S10 ×2

  S11 and S12 always ran first in a fresh process.
- **Audit:**
  - `server_call_surplus` is 0 on every run.
  - 1 pre-dispatch rejection (`S1-sonnet-1:14`, an unloaded schema), 0 `MODAL_BLOCKED` and 0 Welcome-screen rejections
    (S10 included).
  - 0 compactions and 0 `api_retry` events.
- **Guards:** the harness unit tests pass 156/156, and `check_user_agents.py` exits 0.
- **SMOKE context floor** (input + cache read + write at `result`): opus **86,778**, sonnet **86,637**. Round 21 had
  82,053 / 81,912. The first request grew from 26.8 K to 28.3 K tokens on the same harness surface (guides plus the
  longer `list_open_projects` description), so every turn carries about 1.5 K more context. Compare turns and batches
  before tokens.
- **Observer-side notes:**
  - Auto mode blocked the headless worker launch until the user allow-listed `run_worker.sh` and the round wrappers. It
    also blocked the observer from adding the rule itself.
  - The generic evaluator prompt listed tool names without the `mps_mcp_` prefix (fixed after S3-sonnet).
  - The S7 evaluator's own `execute_run_configuration` was blocked, so the observer re-ran both S7 configurations itself
    (criterion 3).

## 1. Task outcomes

| cell | opus | sonnet | notes |
|---|---|---|---|
| S1 | PASS 6/6 | PASS 6/6 | sonnet: the smart-reference wrapper editors carry only a ref cell (the criterion names 4 concepts) |
| S2 | PASS | PASS | |
| S3 | PASS (one 41-root insert) | PASS | 40/40 recipes deep-compared against the CSV; 23 warnings = the CSV's 0-minute steps |
| S5 | PASS 12/12 | PASS 12/12 | both re-imported `kitchen.extra` for Saffron |
| S6 | PASS | PASS | **D73 regressed**, §4 N1 |
| S7 | PASS | PASS | observer re-run 4/4 tests on both (`*.observer-run.txt`) |
| S8 | PASS (5/5 blueprint dry runs) | PASS (5/5) | both workers ran MAKE on the hollow descriptor themselves |
| S9 | PASS | PASS | |
| S10 | PASS 5/5 | PASS 5/5 | left behind: Welcome screen, same pid |
| S11 | PASS 6/6, P1–P5 hold | PASS 6/6, P1–P5 hold | `T_rule_prints` 0 / 0 |
| S12 | PASS 5/5; **P2 miss** (`T_rule_prints` 5) | PASS 5/5; P1–P5 hold (3) | the typesystem skill was loaded at step 2 / 4; opus printed three copy candidates (§4 N8) |

## 2. Metrics

Cell metrics (one run each; the prior S11-sonnet is the mean of rounds 25–26):

| cell | prior turns | **r33 turns** | prior tool calls | **r33** | errors prior → r33 | cost prior → r33 |
|---|---|---|---|---|---|---|
| S1-opus | 92 (base 181) | **94** | 90 | 92 | 1 → 0 | $3.10 → $3.57 |
| S1-sonnet | 135 (base 148) | **103** | 127 | 95 | 0 → 3 | $3.54 → $3.03 |
| S2-opus | 60 | **66** | 58 | 64 | 2 → 1 | $2.10 → $2.44 |
| S2-sonnet | 89 | **80** | 81 | 72 | 0 → 2 | $2.26 → $1.79 |
| S3-opus | 17 (base 100) | **16** | 15 | 14 | 0 → 0 | $0.67 → $0.70 |
| S3-sonnet | 28 (base 28) | **24** | 26 | 22 | 0 → 0 | $0.63 → $0.53 |
| S5-opus | 28 | **32** | 26 | 30 | 0 → 0 | $0.73 → $0.82 |
| S5-sonnet | 28 | **21** | 26 | 19 | 0 → 1 | $0.62 → $0.42 |
| S6-opus | 70 | **60** | 67 | 56 | 0 → 0 | $2.31 → $2.12 |
| S6-sonnet | 87 | **83** | 83 | 79 | 3 → 0 | $2.28 → $2.34 |
| S7-opus | 50 | **44** | 46 | 41 | 2 → 0 | $1.53 → $1.57 |
| S7-sonnet | 93 | **56** | 90 | 53 | 1 → 1 | $2.55 → $1.25 |
| S8-opus | 59 | **48** | 56 | 45 | 6 → 1 | $1.64 → $1.45 |
| S8-sonnet | 89 | **44** | 85 | 41 | 5 → 0 | $2.18 → $0.89 |
| S9-opus | 20 | **21** | 18 | 19 | 0 → 0 | $0.59 → $0.66 |
| S9-sonnet | 27 | **22** | 24 | 19 | 0 → 0 | $0.54 → $0.46 |
| S10-opus | 20 | **18** | 18 | 16 | 0 → 1 | $0.54 → $0.56 |
| S10-sonnet | 31 | **24** | 28 | 21 | 0 → 0 | $0.56 → $0.42 |
| S11-opus (r25) | 28 | **21** | 26 | 19 | 1 → 0 | $0.72 → $0.92 |
| S11-sonnet (r25/26, `xhigh`) | 39 | **30** | 35 | 27 | 0 → 0 | $0.66 → $0.49 |
| S12-opus (r32) | 65 | **57** | 62 | 54 | 1 → 0 | $1.82 → $1.92 |
| S12-sonnet (r32) | 58 | **46** | 55 | 43 | 3 → 1 | $1.25 → $0.92 |

S1–S10 totals (9 cells per model), round 21 → round 33:

| | turns | tool calls | MPS calls | errors | retries | cost | wall | cache read |
|---|---|---|---|---|---|---|---|---|
| opus (`medium` → `medium`) | 416 → **399** (−4 %) | 394 → 377 | 259 → 253 | 11 → **3** | 7 → 2 | $13.20 → $13.88 | 1,690 → 1,557 s | 21.5 M → 23.6 M |
| sonnet (`xhigh` → `high`) | 607 → **457** (−25 %) | 570 → 421 | 322 → 260 | 9 → 7 | 5 → 6 | $15.15 → $11.12 | 2,302 → 1,392 s | 38.4 M → 28.3 M |

How to read the deltas:
- **Opus is flat.** It is the clean comparison: same pin, same model, same prompts. Turns −4 % and errors 11 → 3 are
  the surface effect; S7 (D53) and S8 (D94) are where it shows (§3 G). Cache read rose 10 % despite fewer turns: the
  +1.5 K floor and two more batches (244 → 254).
- **The sonnet −25 % is mostly the effort pin.** Round 20 (sonnet at `high`, the old catalog) already showed the same
  shape on S1: 0 skill Reads and 10 Bash fetches, against 35 / 3 at `xhigh`. The D95 negative-control habit (≈ 25
  turns in round 21) is gone. Its batches fell less than its calls (313 → 263), because at `high` it bundles
  `cat a b c`.
- **Against the baseline**, S1-opus is 181 → 94 turns and S3-opus 100 → 16, both on a newer opus (lesson 36). S1-sonnet
  is 148 → 103 and S3-sonnet 28 → 24.

## 3. Which baseline hotspots moved

Counts are from `families.tsv`, with per 100 tool calls in parentheses.
- **Baseline:** S1 + S3 only (opus 270 calls, sonnet 161).
- **r21 and r33:** S1–S10 (opus 394 → 377 calls, sonnet 570 → 421).

Determinism, avoidable turns and every `run:step` are in `review-families.md`.

| # | Baseline hotspot | baseline (o / s) | r21 (o / s) | **r33 (o / s)** | Moved? | Attribution |
|---|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → read of the file** | 57 (21.1) / 27 (16.8) | 7 (1.8) / 14 (2.5) | **9 (2.4) / 11 (2.6)** | **Stays fixed.** 14 of 20 are self-forced (`maxInlineBytes` 100–6000). 11 go to `mps_dump.py` or `table_to_bulk_insert.py --verify`, the documented routes (`S3-sonnet-1:20→22`). The residual comes from `mps_dump.py tree` mangling values containing `/` (new D109, `S8-opus-1:26→27,28`; it is r21's "tree abbreviates long values") and an unrequested temp-file model check of 44 roots (`S3-opus-1:10→12`, D78 class) | tools (R1) |
| 2 | **C — per-root validation after a clean model check** | 48 (17.8) / 0 | 0 / 0 | **0 / 0** | **Stays fixed.** D63 is still visible: one module check (`S1-opus-1:91`, `modelsChecked 5`). The D83 variant `C_after_summary` is 0 / 2, plus a same-model re-check only to quote "no problems found" after an all-zero perRoot (`S5-opus-1:29→30`, the same step as r21) | tools (R2, D63); D83 open |
| 3 | **D — skill reads before a call** (Read + Bash fetch) | 23 (8.5) / 12 (7.5) | 37 (9.4) / 104 (18.2) | **44 (11.7) / 52 (12.4)** | **Opus unmoved; sonnet halved in calls, flat in turns** (41 → 37 batches, 362 → 241 KB). The doc-caused part is ≈ 11 turns: D66 2/2 at the same phase as r21 (`S1-opus-1:61-63`, `S1-sonnet-1:74-76`), D50/D64 hunts for `ListScope` (`S1-sonnet-1:42-45`), and index hops (`S2-opus-1:37-39`). The opus +5 is S2 switching to the Java parser. The renamed reference files and the collections/closures split did not change the count | effort (sonnet); docs (open D50/D64/D66) |
| 4 | **B′ — ad-hoc Python re-authored for result shaping** | 45 (16.7) / 4 (2.5) | 16 / 13 (corrected 9 / 7) | **11 / 0 in the tsv; corrected 8 (2.1) / 4 (1.0)** | **Unmoved.** Sonnet's 0 is an analyser artefact: `families.py` misses `python3 -I -c`, which the worker CLI now uses on untrusted data (0 uses in r21; 26 / 48 in r33; new A16). The shipped scripts ran 15 times with 0 errors. Residuals: an envelope not unwrapped (`S8-opus-1:34→35`) and a hand-written `verify.py` where `--verify` exists (`S3-opus-1:13→14`) | tools (D76); analyser A16 |
| 5 | **B — blueprint → insert; response size** | 30 / 20 inserts; S3 bulk 52 KB | 62 / 65; 0.84 / 0.93 KB per insert; D88 ×3 | **51 / 62; 0.73 / 0.93 KB; S3 bulk 5.8 / 5.7 KB; D88 ×3; map rejections 0** | **Stays fixed** (size, D87). **D88 is unmoved**, ≈ 7 turns: `S2-sonnet-1:51→52-56` falls back to staged construction, and a rejection echoes the whole 6–7 KB input back | tools (D87); D88 open |
| 6 | **F — discovery refinement** (`get_concept_details` re-called) | 1 / 1 | 2 / 4 | **2 / 4** | **Unmoved.** Both S6 cells, at the same spot as r21: `shape` omits the feature ids a PropertyMacro needs (`S6-opus-1:17→18→19`, `S6-sonnet-1:34→35→36`). ≈ 6 turns, det 1.0 | open S remedy (D67/D75) |
| 7 | **G — error → retry** | 6 / 6 | 11 / 9 (key 2 / 2) | **3 (0.8) / 7 (1.7)** (key 0 / 2; unloaded-schema 0 / 3) | **Opus improved, from the surface.** D53: S7 is one model-level `create_run_configuration` plus one execute (`S7-opus-1:40-41`, `S7-sonnet-1:52-53`), where r21 needed a NOT_FOUND plus 4 creates plus 4–8 executes, saving ≈ 7 / 13 turns, the largest surface move of the round. D94: 0 temp-dir rejections in S8 (r21: 6). Sonnet's 3 unloaded-schema errors are the archived D85 residual at `high` (`S1-sonnet-1:14`, `S5-sonnet-1:7`, `S7-sonnet-1:8`) | surface (D53, D94); effort (sonnet) |
| 8 | **H — `ToolSearch` schema fetches** | 7 / 17 | 19 / 22 | **16 / 23** | **Flat.** 21 mid-run top-up loads, half of them avoidable | harness |
| – | *watch:* X — Bash outside the project | 0 / 0 | 1 / 3 | **6 / 5** | **Regressed** (S6 4 / 4): D73, §4 N1 | docs (D73) |

**In one line:** A, C and B **stay fixed**, and G **improved** for opus through D53 and D94. D, B′, F and D88 are
**unmoved**, with their open remedies (D50/D64/D66, D67/D75, D88) still pending. The one regression is D73 in S6, about
20 turns, coinciding with the new `logDirectory` field that points into the MPS source checkout.

**S11 and S12 (outside the baseline families):**
- **S11:** `T_rule_prints` stays 0 / 0, as in round 26, and both cells were cheaper than their prior. Opus 28 → 21
  turns. Sonnet 39 → 30, at a lower pin.
- **S12:**
  - Both cells loaded `mps-aspect-typesystem`, as round 32's gate intended.
  - Both built once with 0 `reload_all`, and both deleted their temp root without a detour (the round-32 delete-root
    docs; opus 3 calls instead of 6).
  - Turns fell 65 → 57 and 58 → 46.
  - Opus printed 5 rule roots, against P2's limit of 3. Three of them were copy candidates, which the skill allows
    (§4 N8).

## 4. New findings and candidate remedies (for gate 2)

Ranked by avoidable turns over the round. Tier is the first fit of D → S → P-off → P-on → T. Evidence:
`review-new.md` §1 and `review-families.md` §3.

| # | Finding | Turns | Evidence | Tier | Remedy |
|---|---|---|---|---|---|
| N1 | **D73 grew: the Java package of generated classes is undocumented, so both S6 workers searched the MPS checkout's BaseLanguage textgen sources.** Opus went `find`/`grep`/`sed` on `BaseLanguageTextGen.java` to `getPackageName`, then `Classifier.packageName`. Sonnet first tried the decoy `virtualPackage` (SET, MAKE, `find`, revert), then searched the same sources. In r21 both cells stayed inside the project at ≈ 3 + 4 turns. The new `list_open_projects.logDirectory` (`/Users/vaclav/work/MPS/myMPS-fix/log`) is the likely pointer: both workers went to `/Users/vaclav/work/MPS/` after reading it. Thinking is redacted, so this is likely but not proven | ≈ 20 (opus 5, sonnet 15) | `S6-opus-1:13, :33-36→37`; `S6-sonnet-1:18-20, :51-55, :56-60→61, :62-63` | **D** | One paragraph in `mps-aspect-generator/SKILL.md` "Path convention": "a generated class's package is the template class's `packageName` when set, otherwise the output model's name; `virtualPackage` is only the project-tree folder". **Re-check D73's parser half first**: D73 says `parse_java_and_insert` sets the package from a `package` line, but a later observation says the parser drops it. **Harness (A17):** launch the study MPS with `-Didea.log.path=<runs-rNN>/ide-log`, so the reported log points into the study tree, not into a source checkout no standalone user has |
| N2 | **Obsolete `Node_ConceptMethodCall` FQN in the shipped docs.** `dot-expression-basics.md:391` writes `jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall`, which MPS reports as "moved to lang.behavior". `mps-tests` shows no behavior call in a test body. Sonnet went `InstanceMethodCallOperation` → smodel → behavior. Opus repaired it with `autoApplyQuickFixes`. The same happened in r21 | ≈ 9 | `S7-sonnet-1:33-34, :39-50`; `S7-opus-1:33-34` | **D** (new D106) | Use `jetbrains.mps.lang.behavior.structure.Node_ConceptMethodCall` (as `mps-aspect-behavior/references/local-and-super-calls.md:72` already does) in `dot-expression-basics.md` and `smodel-concepts-catalog/query-operations.md` (check the id), and add a "test method calls a behavior method" snippet to `mps-tests/references/nodes-test-case.md` |
| N3 | **D66 + D50/D64: doc hunts** for a `NonTypesystemRule`/`WarningStatement` blueprint and for `ListScope.forNamedElements` | ≈ 7.5 expected (11 raw) | `S1-opus-1:61-63`, `S1-sonnet-1:74-76`, `S1-sonnet-1:42-45`, `S2-opus-1:37-39, :47-49` | **D** (open) | As filed: a blueprint in `non-typesystem-checking.md`; route the constraints `SKILL.md` to `scope-helpers.md`; put the `parameters-schema` link in the `parse-java-tips.md` index line |
| N4 | **Incremental `ToolSearch` plus unloaded-schema calls** | ≈ 6.5 expected (13 raw) | `S2-sonnet-1:14,21,37,45,62`; `S1-opus-1:26,42`; errors `S1-sonnet-1:14`, `S5-sonnet-1:7`, `S7-sonnet-1:8` | **D** | A canonical `select:` preload line for the ~12 common tools in `mps-mcp-workflow` |
| N5 | **F / D67: `shape` lacks feature ids** | ≈ 6 | `S6-opus-1:17-19`, `S6-sonnet-1:34-36`, `S7-sonnet-1:22-26` | **S** (open) | Add `featureId` (and `sourceNode`) to `detail:"shape"` entries |
| N6 | **There is no documented way to reference a node of the same blueprint.** Both opus workers grepped `json-format.md` for `localId` / `"id"`. There is no local id; the answer is "by name", which line 30 only implies | ≈ 4 | `S1-opus-1:40→41`, `S7-opus-1:27→28` | **D** (new D107) | `json-format.md:30`: "There is no local id. To point at a node created in the same blueprint, give its `name` as `target`; check `fixReferences.stillBroken`." |
| N7 | **`mps_mcp_read_ide_log` returns the previous MPS process's shutdown records.** All three uses were voluntary end-of-run checks, not the documented trigger. Every SEVERE returned (26) was a Disposer leak logged by the previous process 27–31 s before the worker started. S12-opus grepped, got 0 records and reported "no warnings", an overclaim. `ide-log.md:85-87` claims a `sinceMinutes` window keeps the previous session out; right after a restart it does not. Neither S6 worker was misled | 3 calls, 23 KB, no evidence | `S6-opus-1:56`, `S6-sonnet-1:78`, `S12-opus-1:52` | **S**, then **D** (new D108) | S: default the lower bound to the current IDE start, or mark earlier records `previousSession:true` and report `ideStartTimestamp`. D: correct the `ide-log.md` sentence. Outside the study: the leak SEVERE ("Plugin to blame: Projectional Agent Toolkit") is logged on every restart |
| N8 | **S12-opus printed three copy candidates** (`T_rule_prints` 5; P2 ≤ 3). It switched away from the misnamed `SimpleMathIntegerType_subtypeOf_Number`, which returns `Element`. The skill sanctions printing "to pick a sibling to copy". Round-32 opus copied the misnamed rule and repaired it with one extra write | ≈ 1 | `S12-opus-1:28-30, :32, :35` | none | Leave the docs. Either split `T_rule_prints` into candidate / copy / re-print, or allow one extra print per extra candidate |
| N9 | **`mps_dump.py tree` keeps only the text after the last `/` of every value** (`_plain_value`, a legacy enum shim), so `http://www.w3.org/2005/07/scxml` prints as `scxml` | 2 | `S8-opus-1:26→27,28` (the same steps as r21) | **P-off** (new D109) | Apply the shim only when the value matches `<enumRef>/<IDENT>` |

Not findings (verified):
- Sonnet's switch from Read to Bash skill fetches is the effort pin, not the renamed files (round 20 had the same shape).
- S8 is fine: 48 / 44 turns against 59 / 89.
- No worker hit the observer's MAKE strictness (top-level `modules`, or an `l:` language ref as a module). All 26 worker
  MAKE calls were well-formed.
- Model-only items, no remedy: filler `echo` calls (`S7-opus-1:25`, `S8-opus-1:13`, `S1-sonnet-1:84`) and one-off key
  rejects whose message names the fix (`S12-sonnet-1:39`, `S2-sonnet-1:63`).

## 5. Hypotheses (status after this round)

| | Hypothesis | Status |
|---|---|---|
| H1 | Blueprints are the main payload cost | **Stays refuted** for size (S3 bulk 5.7 KB). Deep inline JSON still costs D88 retries |
| H2 | Make/scaffold friction | **Improved.** S7 is one config plus one run (D53), and S12 builds once. The open D97 cost 0 turns (both S6 workers added the Generation Target up front) |
| H4 | Discovery cost | **Unmoved** (F / D67) |
| H5 | Validation loops | **Stays fixed** (C 0 / 0); a D83 residual remains |
| H7 | Skills route the agent | **Mixed.** The typesystem gate works (S12 2/2), and the delete-root docs work. D73, D66 and D106 are doc gaps the routing cannot cover |
| H8 | Stale runtime | **Not seen.** 0 `reload_all`; per-fixture restarts held (D80 not seen) |

## 6. Defects filed

These were added to `docs-defects.md`; the recurrence watch is in `review-new.md` §3:
- **Seen this round, 15:** D50, D64, D66, D67, D73, D77, D79, D82, D83, D86, D88, D91, D98, A9, and D97 at 0 turns.
- **Not seen, 10:** D72, D74, D75, D78, D80, D84, D90, D92, D95, A10.
- **Not exercised, 4:** D48, D70, D96, D99. The archived D68 is still unmeasured.

D106, D107 and D109 were fixed and archived on 2026-10-08, after this round; they have not been re-measured.

| id | tier | summary |
|---|---|---|
| D73 (updated) | D | round 33: grew to ≈ 20 turns; the parser half of the entry needs a re-check |
| **D106** | D | obsolete `lang.smodel` `Node_ConceptMethodCall` FQN in `dot-expression-basics.md:391` and the catalog |
| **D107** | D | no statement that intra-blueprint references resolve by name only (`json-format.md:30`) |
| **D108** | S + D | `read_ide_log` window includes the previous process's shutdown; `ide-log.md:85-87` says it does not |
| **D109** | P-off | `mps_dump.py` `_plain_value` truncates every value at its last `/` |
| **A16** | analyser | `families.py` `Bp_adhoc_python` misses `python3 -I -c` / `python3 -I -` |
| **A17** | harness | the study MPS logs into the dev checkout's `log/`; `list_open_projects.logDirectory` hands workers the source-checkout path |

## 7. Caveats and suggested next step

- **n = 1 per cell.** The sonnet deltas mix the `xhigh` → `high` pin change with the surface. Quote opus (same pin) for
  surface effects.
- The context floor rose 1.5 K per turn with the guides change. Compare cost and cache read only together with turns.
- **D73's attribution to `logDirectory` is inferred** (thinking is redacted). A17 removes the pointer for the study.
  The D73 docs fix removes the motive for both studies and users.
- **Suggested gate-2 batch** (all docs-tier except D108's server half): D73 (+ A17), D106, D66, D107, the `ToolSearch`
  preload line, and D109; then re-measure **S1, S6 and S7** on both models with the same pins. That is the smallest set
  forcing every remedy. D67 (`shape` feature ids) and D108's server half are the S-tier follow-ups.
