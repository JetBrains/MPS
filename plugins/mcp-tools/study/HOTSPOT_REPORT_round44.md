# Skill Script Automation Study — Round 44 (2026-10-27)

Status: measurement round complete. Scope on request: **S1–S16 × opus + sonnet** = 32 cells, n = 1 per cell, no
pilot. **All 32 cells PASS.** No remedy was made in this round. Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r44/`. Per run there are `{worker,server}.jsonl`, `*.meta.json` and
`*.eval.md`. S8 also has `*.make.txt` (the observer MAKE between the two evaluation passes), and S10 has
`*.leftbehind.txt`. The `analysis/` directory holds `metrics.csv`, `chains.json`, `errors.json`, `hotspots.md`,
`navigation.json` and `families.tsv` (baseline `runs`, `runs-r43`, `runs-r44`; sum per round, never across the
file). Two Opus reviews back this report:
- `review.md`: the open defect list, re-measure of the items treated since round 43, new findings N1–N6, and the
  24-row error inventory;
- `review-families.md`: hotspot families, per-cell r43→r44 deltas, and sonnet errors.

`run:step` is the 1-based `tool_use` ordinal that `show_steps.py` prints.

## 0. Harness state

- **Measured surface:** HEAD `86bdc7dae470` on `261/vaclav/MCP2`, plus the uncommitted D112 skill and doc changes in
  the working tree. Catalog `skillsSha256 d971fe6a`, guides `11fb1144`, inventory `7d18edb0` (54 tools). All 32
  metas carry the same three values.
- **Treated since round 43** (catalog `41f4a18c`, inventory `9dd2bfbf`):
  - `789af6ca3551` MPS-40338: per-root problem messages (D83 / D78);
  - `fd8fb319f5bb` D97: Generation Target before MAKE;
  - `1b5b102f0204` + `1551ef8987b3` D88: JSON parse diagnosis;
  - `0bcecb17eed3` D82: aggregate root in `table_to_bulk_insert.py`;
  - `86bdc7dae470` D108: `read_ide_log` marks records of the previous session;
  - D112 language readiness (working tree).
- **Effort:** opus **`medium`** (round 43: `low`); sonnet `medium` in both rounds. This one change confounds every
  opus comparison with round 43 (§3).
- **Isolation:** `per-shared-fixture-restart`, call log on (`-Dmps.mcp.calllog`, removed again at wrap-up).
  - 23 MPS starts (1 to turn the call log on, 22 between cells), each followed by a SMOKE on a fresh pid with
    exactly 1 server line.
  - Pids shared without a restart: S1 → S14 → S9 → S3-opus (synthesized, unique and read-only cells first);
    S15-sonnet → S2-opus (different fixture language); S16-sonnet → S10 × 2 (synthesized).
- **Evaluation:** one read-only Opus evaluator per cell. S8 ran in two passes around an observer MAKE. S10 used a
  left-behind snapshot taken before the observer reopened `<proj>-target`. Both S10 cells left the Welcome screen
  on the same pid, with no modal.

## 1. Baseline metrics

Sums over the 16 cells per model. Token columns come from the `result` events (M-0 accounting).

| metric | r43 opus (low) | **r44 opus (medium)** | r43 sonnet | **r44 sonnet** |
|---|---|---|---|---|
| task pass | 16/16 | **16/16** | 16/16 | **16/16** |
| turns | 486 | **632** | 570 | **582** |
| round trips (batches)¹ | 308 | **374** | 309 | **315** |
| wall-clock s | 1,800 | **2,364** | 1,660 | **1,540** |
| cost USD | 17.05 | **22.21** | 10.33 | **10.33** |
| cache-read tokens | 23.7 M | **34.0 M** | 28.7 M | **27.8 M** |
| output tokens | 144,830 | **188,413** | 163,146 | **172,799** |
| tool calls | 449 | **585** | 519 | **532** |
| MCP calls | 333 | **414** | 342 | **384** |
| Bash calls | 62 | **108** | 53 | **40** |
| skill-file reads | 36 | **74** | 63 | **41** |
| skill bytes read (+ injected by `Skill`) | 169 K (+346 K) | **406 K (+564 K)** | 296 K (+627 K) | **229 K (+631 K)** |
| temp-file envelopes | 12 | **18** | 13 | **15** |
| error envelopes | 8 | **2** | 16 | **22** |
| retries (A2 counting) | 6 | **2** | 8 | **15** |
| calls on an unloaded schema that failed | 0 | **0** | 4 | **6** |
| API retries / compactions | 0 / 0 | **0 / 0** | 0 / 0 | **0 / 0** |

¹ `review-families.md` §0: `turns` counts parallel calls one by one, so round trips are the fair turn count.

**Fixed-context floor:** a SMOKE run (3 turns, 2 tool calls) reads about 88.9 K cache tokens, roughly 30 K per turn,
the same as round 43 (89.4 K).

Per-cell numbers are in `analysis/metrics.csv`. These cells moved by 10 or more turns:

| cell | r43 turns | r44 turns |
|---|---|---|
| S1-opus | 77 | 104 |
| S12-opus | 31 | 53 |
| S4-opus | 44 | 64 |
| S8-opus | 22 | 37 |
| S7-sonnet | 28 | 52 |
| S16-sonnet | 20 | 34 |
| S1-sonnet | 91 | 69 |

## 2. Ranked hotspots

Families come from `hotspots.md` chains containing `mps_mcp`. Each was scored by an Opus reviewer from 3 instances:
score = occurrences × average tokens × determinism × (1 + retry rate). "Avoidable" counts round trips across the
round.

| # | family | occurrences | det | score | avoidable round trips | tier | evidence |
|---|---|---|---|---|---|---|---|
| 1 | **A** temp-file follow-up read: `print_node` deep → temp path → `mps_dump.py tree` | 25 batches (opus 17) | 1.0 | ~62 K | ~25 | S | `S12-opus-1:8-9`, `S11-opus-1:6-8`, `S8-opus-1:23-24` |
| 2 | **D** sequential skill reads: `cat SKILL.md; ls references`, then one reference per turn | 30 fusable (opus 28) | 0.5 | ~40 K | ~30 | D | `S1-opus-1:44-46`, `S3-opus-1:8-10`; S1-opus did 19 Bash skill fetches (r43: 8) |
| 3 | **B/B′** blueprint authored in shell, with the same `def n(...)` helper retyped in each heredoc | 18 `Bash→insert_root`, 18 ad-hoc Python | 0.5 | ~10 K | ~3 (saves authored chars, not turns) | P-off | `S1-opus-1:42, :63, :74, :81`, `S6-sonnet-1:53` |
| 4 | **H** ToolSearch hops: first select too narrow, re-select mid-run | 43 chains, 29 H-only batches | 1.0 | ~9 K | ~12 | D / worker config | `S12-opus-1:45-46` |
| 5 | **J** inline JSON one `]}` pair short (= D88 trigger, N2) | 6 envelopes in 6 cells (r43: 6) | 1.0 | ~7 K | ~5 | P-off + D | `S1-opus-1:41`, `S1-sonnet-1:38`, `S12-opus-1:15`, `S12-sonnet-1:18`, `S2-sonnet-1:40`, `S6-sonnet-1:52` |
| 6 | **C** per-root drill-down after a summary row (now N1) | 4 (r43: 6) | 0.9 | ~4 K | ~4 | S | `S16-opus-1:16→17`, `S13-sonnet-1:25→26` |
| 7 | **V** post-success verification, cleanup, gold-plating (opus only) | ~12 batches | 0 | 0 | ~12 | none (effort) | `S4-opus-1:43-49`, `S12-opus-1:44-49` |

Family A is the largest deterministic saving. Family D is the largest in round trips, and it grew with opus effort
(skill read-only batches +33).

## 3. Hypotheses

| hypothesis | verdict | evidence |
|---|---|---|
| The opus growth (+21 % round trips, +30 % cost) comes from the surface changes since round 43 | **refuted** (most likely effort) | Sonnet, the control on the same surface, is flat: 309→315 round trips, cost unchanged. Opus MCP-only batches are flat (174→177) and opus errors fell 8→2. The growth is in skill-read batches (+33, skill bytes ×2.4) and mixed batches (+24). Two effects trace to the surface and roughly cancel: about +2 in `S8-opus-1:10-11`, where opus ran MAKE quoting the D112 line, and about −7 check-only batches from the per-root messages. **Unmeasured until** opus `low` is rerun on this surface (S1, S4, S7, S8, S12, S14, n ≥ 3). |
| MPS-40338 per-root messages remove the "second check to read the warning text" (D83) | **confirmed, with a residual** | No text-only re-check in 32 cells. Two re-checks to find all nodes behind a `count:3` message (N1). D78 (one warning repeated on 15 rows) remains: `S3-sonnet-1:8`, `S3-opus-1:13→15`. |
| D88's new diagnosis reduces JSON-parse errors | **refuted on frequency, confirmed on recovery** | 6 envelopes, the same as round 43. Each is under 1 KB, names the temp-file route, and is recovered with one write. The trigger is hand-counted closers, not the message. |
| D97 skill step prevents the "generation target" MAKE warning | **confirmed** | Both S6 cells declared the Generation Target before the first MAKE (`S6-opus-1:36`, `S6-sonnet-1:14`). The warning text appears in no tool result. |
| D82 aggregate root in `table_to_bulk_insert.py` removes the hand aggregate | **confirmed** (n = 1) | `S3-opus-1:11, :15`: `aggregate: matched`. S3-sonnet used its own converter, again without a separate aggregate check. |
| D112 readiness fields stop agents from writing into a hollow language | **confirmed** | `S8-opus-1:8` (`descriptorStatus: hollow`, `descriptorRecoveryAction`); `S8-sonnet-1:5` (`conceptLoaded: false`). Both cells ran MAKE before any write. All 8 blueprint dry runs passed. No "Unknown property … has no such property" error. |
| D108 previous-session marking | **unmeasured** | 0 `read_ide_log` calls in the round. |

## 4. Defects

The recurrence watch for every open entry is in `review.md` §1–§2. In short:

- **Recurred:**
  - D73 (both S6 cells; opus found the checkout through `ps`, not `logDirectory`: `S6-opus-1:12-16`);
  - D86 (`S2-sonnet-1:15`, `S4-opus-1:27`; planned fix not landed);
  - D91 (`S7-sonnet-1:27`);
  - D114 (`S13-sonnet-1:12-21`);
  - D116 (3 instances, including a new `query_types` site: `S11-sonnet-1:8`);
  - D118 (info-only checks returning full reports in 4 cells);
  - D78.
- **Not seen:** D80, D84, A9, D113.

**New entries, filed in `docs-defects.md` on 2026-10-27 as D119–D124 (N1 = D119 … N6 = D124):**

| id | kind | tier | summary | evidence |
|---|---|---|---|---|
| N1 | tool behaviour | S | A per-root `messages` entry with `count > 1` carries one sample `node`, so agents re-check the root to find the others. Fix: add a `nodes` list (≤ `messagesPerRow` items), and have the D83 counter exclude checks that follow such a message. | `S16-opus-1:16→17`, `S13-sonnet-1:25→26` |
| N2 | docs + missing script | P-off + D | The D88 trigger is always the same: a 1.2–2.3 KB inline blueprint ending in 8–10 `]}` pairs, with brace and bracket counts each one short. The rule at `mps-node-editing/SKILL.md:157` is ignored on the first try. Fix: ship `mps-node-editing/scripts/blueprint.py` (helpers that write to `$TMPDIR` and print the path) and point line 157 at it. Optionally have the diagnosis say "the trailing `]}` run is one pair short". | the 6 J instances |
| N3 | tool behaviour | S | `print_node` on a console temp-model ref without the module prefix returns a bare NOT_FOUND. | `S9-sonnet-1:17-18` (identical retry), recovered at `:19-20` |
| N4 | docs | D | `mps-tests` does not say how to assert a constraint violation: `NodeErrorCheckOperation` inside `NodeOperationsContainer`, not `NodeConstraintsErrorCheckOperation` (which needs an `errorRef`). This cost about 13 calls. | `S7-sonnet-1:26-49` (25 → 49 calls) |
| N5 | docs | D | While restructuring a dataflow builder, agents put a `StatementList` directly in `IfStatement.ifFalseStatement`. Fix: one line plus the JSON in `mps-aspect-dataflow`. | `S13-sonnet-1:29`, `S16-sonnet-1:20` (r43 `S13-sonnet-1:37`) |
| N6 | tool behaviour | S | `parse_java_and_insert` rejects an unknown `featureKind` without listing the accepted values. That fed D73. | `S6-sonnet-1:17-19, :36-42` |

**Sonnet errors (22, r43 16).** By cause, as `this round (r43)`:
- argument names or shape 8 (4): this is the whole net growth, and it tracks calls on unloaded schemas (4→6);
  every one was fixed from the envelope on the next call;
- truncated inline JSON 4 (4);
- NOT_FOUND 4 (3);
- assignability 3 (2), each recovered through the wrapper hint;
- wrong concept FQN 2 (2);
- unknown property 1 (0).

Opus errors: 2 (8).

## 5. Remedies

Owners: skill docs = catalog blueprint under `plugins/mcp-tools/resources/…/skills` (then re-propagate to both
catalogs); server = mcp-tools toolsets.

| # | remedy | tier | owner | contract | expected saving | risk |
|---|---|---|---|---|---|---|
| R1 | Inline tree format on `print_node` / `get_project_structure` (`format: "TREE"`, the `mps_dump.py tree` output in the envelope, size-capped, falling back to a temp file) | S | server | Same content as `mps_dump.py tree`, at most N KB inline, `truncated: true` beyond that | ~25 round trips per round (family A) | larger inline results; keep the cap |
| R2 | Workflow-skill line: "read every reference you need in one parallel batch; do not `ls` the references folder" | D | skill docs | one sentence in `mps-mcp-workflow/SKILL.md` near the skill index | up to ~30 round trips, mostly opus at `medium` | low; the saving depends on effort level |
| R3 | `blueprint.py` builder in `mps-node-editing/scripts/`, referenced from SKILL.md:157 (N2) | P-off | skill scripts + drift test | `node()/prop()/ref()` helpers; writes `$TMPDIR/bp-*.json` and prints the path | ~5 retries (family J) plus authored chars (family B′) | one more script to keep in sync |
| R4 | `nodes` list on per-root messages with `count > 1`, and a D83 counter fix (N1) | S | server + `families.py` | `nodes: [ref…]` up to `messagesPerRow`; `node` unchanged | ~4 round trips | envelope growth on noisy models |
| R5 | `mps-tests` constraint-assertion recipe (N4), dataflow else-branch line (N5) | D | skill docs | the JSON per review §3 | ~13 + ~3 calls when hit | low |
| R6 | Accepted values in `featureKind` rejections (N6) and the console module-prefix hint (N3) | S | server | the message lists the accepted values / names the `<moduleId>/` prefix | 2–3 calls each | none |
| R7 | Select all core `mps_mcp_*` schemas in the first ToolSearch (worker guidance), or preload them | D / harness | guides | the core tool list in `AGENTS.md` | ~12 round trips, plus the sonnet unloaded-schema errors | preloading raises the fixed context |

**No evidence this round** for D108 (not exercised), or for any remedy aimed at family V (opus post-success
verification, determinism 0: an effort effect, not a surface defect).

**Before choosing remedies (gate 2):**
- Rerun opus at `low` on this surface (S1, S4, S7, S8, S12, S14, n ≥ 3) to separate the effort effect from the
  surface, as `review-families.md` §2 describes.
- Optionally run opus at `medium` on the r43 commit as a mirror check.
- A/B success stays ≥ 30 % fewer tool calls and ≥ 25 % fewer context tokens on the treated scenarios, with no drop
  in pass rate.
