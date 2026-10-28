# Skill Script Automation Study — Round 45 (2026-10-27)

Status: measurement round complete. Scope on request: **S1–S16 × opus + sonnet** = 32 cells, n = 1 per cell, no
pilot. **31 of 32 cells PASS**; `S7-opus-1` FAIL (§2). No remedy was made in this round. Nothing was committed or
pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r45/`. Per run there are `{worker,server}.jsonl`, `*.meta.json` and
`*.eval.md`. S8 also has `*.make.txt` (observer MAKE between the two evaluation passes), S10 has `*.leftbehind.txt`.
`analysis/` holds `metrics.csv`, `chains.json`, `errors.json`, `hotspots.md`, `navigation.json` and `families.tsv`
(baseline `runs`, `runs-r44`, `runs-r45`). The Opus review behind this report is `runs-r45/review.md`: the 31-row error
inventory, hotspot families, per-cell movers, the r44 open-defect status, the re-measure of the items treated since
round 44 and the new findings N1–N10. `run:step` is the 1-based `tool_use` ordinal that `show_steps.py` prints.

## 0. Harness state

- **Measured surface:** HEAD `c4d26966ac1e` on `261/vaclav/MCP2` (15 commits after round 44's `86bdc7dae470`: D112,
  D116–D124, D73 and others). Catalog `skillsSha256 cda43d08`, guides `11fb1144`, inventory `79e3c5a1` (54 tools).
  All 32 metas carry the same three values. Round 44: `d971fe6a` / `11fb1144` / `7d18edb0`.
- **Effort:** opus **`low`** (round 44: `medium`, round 43: `low`); sonnet `medium` in all three rounds. This is the
  "opus low on this surface" rerun round 44 asked for.
- **Isolation:** `per-shared-fixture-restart`, call log on via the capture route (`mps_control.sh calllog`), cleared
  again at wrap-up; MPS was relaunched on the developer checkout afterwards.
  - 23 MPS starts (1 to turn the call log on, 22 between cells), each followed by a SMOKE on the fresh pid with exactly
    1 server line.
  - Pids shared without a restart: S1 × 2 → S14 × 2 → S9 × 2 → S3-opus; S15-sonnet → S2-opus; S16-sonnet → S10 × 2.
  - `server_call_surplus` 0 in every cell.
- **Evaluation:** one read-only Opus evaluator per cell. S8 in two passes around an observer MAKE. S10 used the
  left-behind snapshot (both cells: Welcome screen, same pid, no modal) before the observer reopened `<proj>-target`.

## 1. Baseline metrics

Sums over the 16 cells per model (M-0 token accounting).

| metric | r43 opus (low) | r44 opus (medium) | **r45 opus (low)** | r44 sonnet | **r45 sonnet** |
|---|---|---|---|---|---|
| task pass | 16/16 | 16/16 | **15/16** | 16/16 | **16/16** |
| turns | 486 | 632 | **474** | 582 | **597** |
| round trips (batches) | 308 | 374 | **311** | 315 | **312** |
| wall-clock s | 1,800 | 2,364 | **1,894** | 1,540 | **1,594** |
| cost USD | 17.05 | 22.21 | **16.83** | 10.33 | **10.04** |
| cache-read tokens | 23.7 M | 34.0 M | **24.0 M** | 27.8 M | **27.3 M** |
| output tokens | 144,830 | 188,413 | **137,574** | 172,799 | **162,559** |
| tool calls | 449 | 585 | **440** | 532 | **544** |
| MCP calls | 333 | 414 | **306** | 384 | **378** |
| Bash calls | 62 | 108 | **78** | 40 | **51** |
| skill-file reads | 36 | 74 | **42** | 41 | **65** |
| skill bytes read (+ injected by `Skill`) | 169 K (+346 K) | 406 K (+564 K) | **223 K (+338 K)** | 229 K (+631 K) | **277 K (+643 K)** |
| temp-file envelopes | 12 | 18 | **13** | 15 | **21** |
| error envelopes | 8 | 2 | **5** | 22 | **26** |
| retries (A2 counting) | 6 | 2 | **5** | 15 | **15** |

## 2. Results and verdicts

- **Effort vs surface (opus): the round-44 growth was effort.** At `low` on the new surface opus lands on round 43
  (311 vs 308 batches, $16.83 vs $17.05); the six named rerun cells (S1, S4, S7, S8, S12, S14) go 135 → 179 → 147
  batches (115 → 149 → 116 without S12, which now runs the after-build type queries r43 skipped). The sonnet control
  is flat (315 → 312 batches, −3 % cost). The surface change is cost-neutral for opus and slightly positive for sonnet.
- **`S7-opus-1` FAIL — scenario wording, not a docs defect (N3).** At `:21` the worker wrote one NodesTestCase root
  `RecipeLanguageTests` holding both TestNodes and the `totalMinutes` test method, next to the EditorTestCase; criterion 1
  requires 3 NodesTestCase roots. All 4 tests pass and do real work. It read the same skill files as r43-low (`:4`), and
  every earlier evaluated S7 run built 3 roots. The prompt's "three NodesTestCases" admits both readings; the
  verdict stays FAIL under the frozen criterion.
- **Treated since round 44 and confirmed working:** D112, D116 (`query_types`), D118, D119, D121, D122/D91 (S7-sonnet
  31 → 16 batches), D123, D124, D73 (S6 no longer greps the MPS checkout). D120 (`blueprint.py`) is used in 2 cells only.
- **Errors:** 31 envelopes (sonnet 26, opus 5). D88 inline-JSON errors 6 → 4. The sonnet rise is parallel duplicates,
  calls before the schema was loaded, and empty-argument "placeholder" calls (N7), not new tool defects. S11-sonnet's
  6 are two D116 rejections working as designed, N1 and two slips.
- **r44 open defects still present:** D50, D65, D66, D67, D77, D78, D95 (recurs at low, `S1-opus-1:68-75`, so not an
  effort effect), D98, D113 (harmless), D114 (now **silent**, N8), D115, A16, A17; D79 back to 3 cells as in r43.

## 3. Ranked hotspots (review §2)

| # | family | batches | note |
|---|---|---|---|
| 1 | sequential skill reads | ≈ 59 | unchanged shape since r43 |
| 2 | temp-file follow-up reads | ≈ 30 | about a third self-inflicted by lowering `maxInlineBytes` (N6) |
| 3 | mid-run `ToolSearch` | ≈ 22 | schema loads after the first MCP call |
| 4 | concept-ref recovery | ≈ 13 | N1, N8, D115 |

Notable per-cell movers r44 → r45: S1-sonnet 69 → 95 turns (r45 built the real scope r44 skipped; r43 was 84 calls);
S12-sonnet 36 → 49 (D88, a second scratch model, self-forced temp spills); S13 down in both models (sonnet path
change, opus effort); S16-sonnet up (D114 recurrence, `S16-sonnet-1:14`).

## 4. New findings → remedies (review §5)

| id | tier | finding | remedy / owner | saving |
|---|---|---|---|---|
| N1 | S | `query_nodes FIND_INSTANCES` concept-not-found has no suggestions (D116 site gap) | route through `ConceptSuggestions`; answer from a `c:` ref's qualified name when its id misses (closes D115) | ≈ 3 batches / instance |
| N2 | S | perRoot `nodes` entries are bare refs → root re-checks | emit `{ref, concept, name}` in `AbstractOps.messagesJsonArray` | 1 batch / S13, S16 cell |
| N3 | T | S7 prompt ambiguity (the FAIL above) | `scenarios/S7/worker_prompt.md`: "three NodesTestCase **roots**, one per check" | removes a false FAIL |
| N4 | D+S | parse-java into a fresh aspect model: missing java_stub imports, invented `imports` key | `parse-java-tips/parameters-rules.md` line + one-line rejection text | 2 batches |
| N5 | S+D | unknown-property rejection omits the concept's properties (r44 + r45) | append `Properties of 'X': …`; `editor-test-case.md` names `keys` | 1 batch / instance |
| N6 | D | workers lower `maxInlineBytes` to force temp files | one line in `response-envelope.md` | ≈ 8 batches / round |
| N7 | S? | sonnet empty-argument / placeholder calls | maybe let `list_open_projects` run without `projectPath` (platform hook) | ≈ 2 batches |
| N8 | S | D114 silent: ambiguous short concept name in a blueprint | reject with ranked candidates / resolve by used languages in `AbstractNodeOps.createNode` | ≈ 5 batches + 1 MAKE |
| N9 | D | S12 probe root hand-nested, `/tmp → $TMPDIR` copy | `mps-aspect-typesystem` step 9.2 → `blueprint.py` or COPY_NODE | 2–3 batches / S12 cell |
| N10 | S | unknown `query_nodes` `scope` rejected without accepted values | list accepted scopes, as D124 | 1 batch |

## 5. Gate 2 (open)

Which remedies to implement, and whether to A/B them, is the user's decision. Cheapest first: N3 (prompt), N6 / N9 /
N4-D (one-line docs), then the server batch N1 + N5 + N10 (rejection texts), then N8 and N2.
