# Skill Script Automation Study — Round 34 (2026-10-08)

Status: measurement round complete. Scope on request: **S1 only** × **opus + sonnet** = 2 cells, n = 1 per cell.
**Both cells PASS** (6/6 criteria each). No remedy was made. Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r34/` (`{worker,server}.jsonl`, `*.meta.json`, `*.eval.md`). `analysis/`
holds `metrics.csv`, `chains.json`, `errors.json`, `hotspots.md`, `families.tsv` (baseline, r33, r34), `cmp/`
(baseline, r22, r33 re-analysed with today's `analyze_runs.py`) and the Opus review `review-s1.md`.
`run:step` is the 1-based `tool_use` ordinal printed by `show_steps.py`.

**Baselines.** The 2026-09 baseline of record is `HOTSPOT_REPORT.md` (`~/MPSProjects/mcp-study-baseline/runs`). The
prior cell is round 33 (`HOTSPOT_REPORT_round33.md`, `runs-r33`), with round 21 (`runs-r22`) for context.

## 0. Harness state

- **Measured surface:** this checkout, `262/vaclav/merge` at `bddad5d31076` (2026.1 merged into 262), MPS
  `262.SNAPSHOT` from sources, port 64344. Round 33 ran on `myMPS-fix` (261, port 64343).
  - Inventory: 52 tools, 41 of them `mps_mcp_*`, 68,865 B of descriptions and 44,935 B of schemas. The byte counts
    match round 33.
  - Skills `skillsSha256 8c9cded5…` (round 33: `87962984…`). The change is the D106 / D107 / D109 fixes
    (`6466648997a6`). Guides are `11fb1144…`, unchanged. All 4 metas (2 cells + 2 SMOKE) agree.
- **Worker effort:** opus `medium`, sonnet `high`, the same as round 33. Models are `claude-opus-5-5` and
  `claude-sonnet-5-5`, on Claude Code 2.1.293. `promptSha256` for S1 is identical to round 33.
- **Instrumentation:** MPS was running on the dev checkout (pid 29291, no call log). The round ran `capture` →
  `calllog runs-r34/server-calllog.jsonl` → `shutdown` → `start` on the harness project (pid 31346) → `wait` →
  SMOKE ×2. Wrap-up cleared the option and restarted MPS on the dev checkout (pid 36996, no call log).
- **Isolation:** both S1 cells ran in pid 31346. S1 is synthesized, so it needs no restart.
- **Audit:** `server_call_surplus` is 0 on both runs. There were 0 pre-dispatch rejections, 0 `MODAL_BLOCKED`,
  0 compactions and 0 API retries.
- **Guards:** the harness unit tests pass 156/156, and `check_user_agents.py` exits 0.
- **Observer note:** the round-33 wrappers rely on `mcp_call.py`'s default port 64343. On 262 the r34 wrappers pass
  the URL that `mps_control.sh url` detects.

## 1. S1 metrics

| src | run | turns | tool calls | mps calls | bash | errors | unloaded schema (err) | skill read B | cache read | cost $ | wall s |
|---|---|---|---|---|---|---|---|---|---|---|---|
| base | opus | 181 | 173 | 90 | 73 | 2 | 0 | 153K | 18.31M | 14.96 | 1395 |
| r21 | opus | 92 | 90 | 61 | 24 | 1 | 0 | 106K | 6.55M | 3.10 | 403 |
| r33 | opus | 94 | 92 | 63 | 25 | 0 | 0 | 113K | 8.24M | 3.57 | 386 |
| **r34** | opus | 105 | 103 | 68 | 30 | 2 | 0 | 124K | 8.80M | 3.82 | 441 |
| base | sonnet | 148 | 135 | 71 | 3 | 5 | 0 | 160K | 15.52M | 5.83 | 1322 |
| r21 | sonnet (xhigh) | 135 | 127 | 68 | 13 | 0 | 0 | 128K | 10.36M | 3.54 | 443 |
| r33 | sonnet | 103 | 95 | 63 | 20 | 3 | 1 (1) | 69K | 9.30M | 3.03 | 317 |
| **r34** | sonnet | 103 | 95 | 58 | 20 | 3 | 17 (1) | 85K | 7.50M | 2.66 | 358 |

Against the baseline, S1 is still about 42 % (opus) and 30 % (sonnet) fewer tool calls, with about 50–75 % less
cost. Against round 33, both cells are flat within n = 1 noise.

## 2. Hotspots that moved (r33 → r34)

| family | r33 o/s | r34 o/s | verdict | cause | confidence |
|---|---|---|---|---|---|
| D107 local-id hunt before sample insert | 2 / 1 greps; 3 / 3 sample writes | 0 / 1; **1 / 1 write** | **moved down** | skill fix: `mps-node-editing/references/json-format.md` name targets (opus `:21`, `:82`; sonnet `:57`, `:87`) | high |
| Opus total calls | 92 | 103 | up | model variance: unrequested editor polish `:84-93`, a temp-file print detour `:23-29`, a behavior-doc index hop `:42-43` | medium |
| ListScope hunt (D50 / D64) | – / 4 | – / 8 | up (sonnet) | variance on a known open defect (`:45-52`) | medium |
| D66 | recurred | recurred (opus `:69-72`, sonnet `:76-78`) | flat | still open | high |
| Sonnet unloaded-schema calls | 1 | 17 | up (counter), flat (cost) | sonnet guessed the parameters right; only `:15` failed, and it recovered in 1 turn. Quote `unloaded_schema_errors` = 1. | high |
| Sonnet `D_skill_bash_fetch` | 14 | 8 | analyser artefact | the regex misses relative paths after a `cd` into the skill dir; the cwd-aware `skill_reads` rose 17 → 21 | high |
| Sonnet `C_root_checks` | 5 | 0 | variance | validated at model / module scope instead | medium |
| Sonnet cache_read | 9.30M | 7.50M | variance / accounting | equal turns, cache writes +30 % | low |
| Scratch-model compliance | – | +2 calls per run | up, intended | the typesystem skill's scratch model needs a `ToolSearch` for `update_model` (opus `:99-100`) | medium |

**D106 and D109 are not exercised by S1:** no behavior-method call was authored and no `mps_dump.py` ran.
Re-measure them on S7 / S8.

**MPS 262 has no visible effect on S1.** Response sizes are byte-identical to round 33, and no error comes from
MPS. `logDirectory` still points into the dev checkout (A17 open), but no worker followed it.

## 3. Errors (r34)

| run:step | tool | gist | recovery turns |
|---|---|---|---|
| S1-opus-1:27 | Bash | python KeyError, envelope not unwrapped | 2 |
| S1-opus-1:51 | insert (inline JSON) | EOF in inline JSON (D88 family) | ~2 |
| S1-sonnet-1:15 | scaffold_editor | blind call with only `projectPath`; the server message fixed it | 1 |
| S1-sonnet-1:32 | update_node SET/PROPERTY | bad triplet on a no-op half; the 32→35 retry pairing is spurious | 0 |
| S1-sonnet-1:69 | insert_root_node_from_json | invented `collections.SumOperation` | 4 |

## 4. New patterns and candidate remedies (not applied; gate 2)

| id | pattern | avoidable turns | det. | class | remedy |
|---|---|---|---|---|---|
| R34-1 | invented collections `sum` (sonnet `:69`) | ~5 | 0.5 | D | one line in `mps-collections-and-closures/references/collections-catalog/sequence-operations.md`: there is no `sum`; use `foldLeft` / foreach |
| R34-2 | opus forced print output into temp files, then a python detour (`:23-29`) | ~4 | 0.5 | D | route `mps-aspect-editor` feature-ref lookup to `mps_dump.py tree` |
| R34-3 | scratch-model compliance cost | ~2 | 1.0 | – | correct per skill; low priority |
| R34-4/5 | opus polish, sonnet granular editor edits | – | 0 | – | model-only, no remedy |

**Analyser follow-ups:**
- the `D_skill_bash_fetch` regex should be cwd-aware;
- blueprints written with the `Write` tool are invisible to `bash_blueprint_writes` / `mps_authored_chars` (this
  explains sonnet's 33.8 K → 13.8 K);
- A16 (`python3 -I -c`) is still open.
