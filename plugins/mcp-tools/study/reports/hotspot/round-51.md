# Skill Script Automation Study — Round 51 (2026-11-14)

Status: measurement round complete, not provisional. Scope on request: the **full matrix**, all 41 scenarios
(S1–S39b, S10 run last) × opus and sonnet, n = 1 per cell, effort `medium` for both, `bypassPermissions`, call log on.
**74 of 82 PASS** (opus 38/41, sonnet 36/41). No remedy was implemented; the filings are in §5. It is the first
full-matrix measurement of the AGENTIC VIEW surface and the slimmed guides, the first measurement of S30–S39b in a
round, and the first round with an MPS restart and a SMOKE before every cell.

Evidence: `~/MPSProjects/mcp-study/archive/runs/r51/`. Per run there are `{worker,server}.jsonl`, `*.meta.json`,
`*-install.json`, `*-mcp/`, `*.harness.log`, `*-worker.stderr` and `*.eval.md` (SMOKE has no `eval.md` by design).
`<run-id>-blueprints/` holds the temp-file blueprints copied before the move (47 runs; one blueprint, S24-sonnet-1's
`mps-node-12554071999442733967.json` and S8-sonnet-1's three `statechart-dsl-blueprints/*.json`, were already gone
from `$TMPDIR`; S39a-opus-1 wrote two different `hint.json` files and only one survives the basename keying).
`server-calllog.jsonl` is the whole call log of the round, evaluator and observer calls included; `inventory.json`
is the tool inventory. `analysis/` holds `metrics.csv`, `phases.csv`, `tools.json`, `chains.json`, `errors.json`,
`hotspots.md`, `navigation.json` and `families.tsv` (rows for `r49`, `s25-s29`, `s25-s29-sonnet`, `r50` and this
round). The scratch projects are in `~/MPSProjects/mcp-study/archive/workspace/r51/`. `run:step` is the 1-based
`tool_use` ordinal that `show_steps.py` prints.

## 0. Harness state

- **Measured surface:** HEAD `59a66531c847` on `261/vaclav/fix4` (committed 11:41Z, round 11:48Z–22:16Z). It differs
  from round 50's `d2a737244e92` only in study docs (the round-50 write-up and A18). Working tree: only
  `.idea/inspectionProfiles/Project_Default.xml`, outside the measured surface. `skillsSha256 54247fbd`, guides
  `0b42760f`, inventory `a63960ab` (55 tools) in all 82 non-SMOKE metas, the same as round 50. MPS 2026.1 EAP,
  build 261.25134 from sources (selector `MPSSRC2026.1`, port 64343, `mpsMcpUrl` identical in every meta);
  Claude Code 2.1.325 (call-log `client`). Workers: `claude-opus-5-5` and `claude-sonnet-5-5`.
- **What changed since the comparison runs:** nothing on the measured surface since round 50 (S1–S4 sonnet). Against
  round 49 (S1–S24, 2026-10-31, catalog `7074a8bb`, guides `11fb1144`, 54 tools) and the 2026-10-31 S25–S29 rounds
  (`1e5ac522` / `cf28f584`, effort `high`), the changes are those listed in round 50 §0 (AGENTIC VIEW
  `print_node`, `get_compact_project_structure`, slimmed guides, D137, the migrations-skill rework). S30–S39b have no
  earlier round.
- **Effort:** `medium` in every meta, SMOKE included (pinned per model, gate 2a). Prompts match the latest earlier run
  of every cell that has one (`promptSha256`, checked per cell).
- **Isolation:** `per-shared-fixture-restart` in every meta. The observer restarted MPS before every cell (shutdown →
  start harness → wait → SMOKE → open scratch), so the 82 cells ran in 82 MPS processes. Each cell's `mpsPid` equals
  the `mpsPid` of the SMOKE right before it, and every SMOKE has `serverLines ≥ 1`.
- **Consistency gate: passes.** All 82 non-SMOKE runs finished with exit 0, have a non-null `taskPass` and an existing
  `taskEvidence`. The three hashes are identical across all of them. `server_call_surplus` is 0 in all 165 runs,
  S10 included (`metrics.csv`). 83 SMOKE runs exist (82 opus, 1 sonnet: `SMOKE-opus-1`, `SMOKE-sonnet-1`, then one
  per cell); the hand-off counted 58.
- **Evaluation:** one read-only `study-scenario-evaluator` per run. The observer ran the S8 pass-2 MAKE (as the S8
  criteria prescribe), checked S38a's `workspace.xml` after close (0 `ConceptEditorHintSettings` in both cells), and
  skipped S19's non-gating close/reopen re-check (§4 H4).

## 1. Results

Token columns are the corrected M-0 sums (`input_tokens`, `output_tokens`, `cache_read`, `cache_write`), not
`*_events`. `api_stall_s` is 0 in every run (0 `api_retries`), so active wall equals `wall_s`. Skill bytes =
`skill_read_bytes` + `skill_tool_bytes`. No run compacted. Source: `analysis/metrics.csv`. Of the 83 SMOKE runs the
table shows the first of each model.

| run | pass | turns | calls | MCP | Bash | errors / retries | input | output | cache read | cache write | skill bytes (read + Skill) | compactions | USD | wall − stall s |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| S1-opus-1 | PASS | 82 | 80 | 52 | 25 | 0 / 0 | 132 | 26,927 | 8,244,906 | 170,823 | 146,971 + 28,418 | 0 | 3.55 | 337 |
| S1-sonnet-1 | PASS | 82 | 74 | 45 | 7 | 0 / 0 | 94 | 22,883 | 5,165,485 | 168,102 | 59,429 + 117,423 | 0 | 1.42 | 215 |
| S2-opus-1 | PASS | 51 | 45 | 29 | 9 | 1 / 1 | 90 | 13,575 | 3,693,209 | 123,450 | 43,974 + 75,293 | 0 | 2.00 | 181 |
| S2-sonnet-1 | PASS | 60 | 54 | 32 | 2 | 1 / 1 | 72 | 13,419 | 2,739,897 | 133,407 | 82,788 + 75,303 | 0 | 0.94 | 134 |
| S3-opus-1 | PASS | 18 | 15 | 7 | 5 | 0 / 0 | 24 | 3,874 | 608,889 | 74,574 | 16,505 + 54,598 | 0 | 0.80 | 45 |
| S3-sonnet-1 | PASS | 16 | 13 | 6 | 3 | 0 / 0 | 18 | 3,033 | 378,658 | 73,197 | 9,148 + 54,602 | 0 | 0.36 | 27 |
| S4-opus-1 | PASS | 48 | 46 | 35 | 8 | 0 / 0 | 66 | 12,111 | 2,702,090 | 108,106 | 44,582 + 28,418 | 0 | 1.65 | 146 |
| S4-sonnet-1 | PASS | 41 | 38 | 27 | 1 | 2 / 1 | 56 | 10,019 | 2,200,756 | 100,781 | 39,575 + 40,765 | 0 | 0.72 | 95 |
| S5-opus-1 | PASS | 24 | 22 | 18 | 1 | 0 / 0 | 26 | 6,387 | 541,183 | 69,385 | 1,562 + 28,418 | 0 | 0.79 | 62 |
| S5-sonnet-1 | PASS | 24 | 22 | 19 | 0 | 0 / 0 | 24 | 6,799 | 600,281 | 70,184 | 0 + 28,420 | 0 | 0.41 | 57 |
| S6-opus-1 | PASS | 55 | 51 | 36 | 10 | 1 / 0 | 74 | 15,914 | 3,630,003 | 134,001 | 39,100 + 58,668 | 0 | 2.12 | 215 |
| S6-sonnet-1 | PASS | 55 | 52 | 42 | 6 | 3 / 3 | 62 | 20,167 | 3,036,776 | 126,138 | 21,651 + 46,462 | 0 | 1.01 | 200 |
| S7-opus-1 | PASS | 35 | 31 | 22 | 4 | 0 / 0 | 38 | 10,655 | 1,532,172 | 102,285 | 40,892 + 48,937 | 0 | 1.34 | 128 |
| S7-sonnet-1 | PASS | 29 | 26 | 18 | 3 | 1 / 1 | 34 | 9,608 | 1,336,110 | 100,657 | 45,607 + 43,274 | 0 | 0.63 | 82 |
| S8-opus-1 | PASS | 30 | 27 | 17 | 6 | 0 / 0 | 36 | 14,907 | 1,143,929 | 101,066 | 2,227 + 36,994 | 0 | 1.34 | 159 |
| S8-sonnet-1 | PASS | 32 | 29 | 19 | 6 | 0 / 0 | 30 | 10,904 | 909,598 | 90,820 | 2,073 + 36,998 | 0 | 0.56 | 90 |
| S9-opus-1 | PASS | 21 | 18 | 12 | 3 | 1 / 1 | 32 | 5,051 | 790,789 | 61,576 | 13,109 + 45,810 | 0 | 0.75 | 65 |
| S9-sonnet-1 | PASS | 20 | 17 | 11 | 1 | 0 / 0 | 30 | 4,618 | 746,603 | 63,184 | 12,763 + 45,814 | 0 | 0.37 | 47 |
| S10-opus-1 | PASS | 26 | 23 | 9 | 10 | 0 / 0 | 44 | 5,658 | 1,073,527 | 55,448 | 13,231 + 37,554 | 0 | 0.77 | 73 |
| S10-sonnet-1 | PASS | 22 | 19 | 9 | 3 | 0 / 0 | 32 | 4,495 | 754,775 | 52,955 | 16,757 + 37,558 | 0 | 0.33 | 46 |
| S11-opus-1 | PASS | 25 | 23 | 19 | 1 | 1 / 1 | 18 | 8,392 | 415,439 | 68,999 | 79 + 28,419 | 0 | 0.80 | 78 |
| S11-sonnet-1 | FAIL | 20 | 17 | 13 | 0 | 1 / 1 | 16 | 5,726 | 339,563 | 62,658 | 0 + 35,640 | 0 | 0.34 | 41 |
| S12-opus-1 | PASS | 40 | 37 | 29 | 3 | 0 / 0 | 50 | 12,705 | 1,734,926 | 97,837 | 4,043 + 40,778 | 0 | 1.38 | 139 |
| S12-sonnet-1 | PASS | 37 | 34 | 29 | 0 | 3 / 3 | 48 | 11,212 | 1,621,070 | 91,719 | 0 + 40,782 | 0 | 0.64 | 106 |
| S13-opus-1 | PASS | 31 | 28 | 22 | 3 | 0 / 0 | 38 | 8,836 | 1,098,939 | 73,218 | 742 + 38,492 | 0 | 0.98 | 100 |
| S13-sonnet-1 | PASS | 26 | 23 | 20 | 0 | 0 / 0 | 34 | 7,560 | 1,057,956 | 73,329 | 0 + 38,496 | 0 | 0.47 | 83 |
| S14-opus-1 | PASS | 12 | 10 | 6 | 1 | 0 / 0 | 14 | 3,978 | 254,880 | 57,604 | 79 + 28,419 | 0 | 0.59 | 43 |
| S14-sonnet-1 | PASS | 9 | 7 | 4 | 0 | 0 / 0 | 14 | 2,792 | 243,471 | 54,183 | 0 + 28,421 | 0 | 0.27 | 27 |
| S15-opus-1 | PASS | 29 | 26 | 18 | 3 | 1 / 1 | 42 | 7,518 | 1,196,539 | 74,422 | 180 + 46,460 | 0 | 0.99 | 107 |
| S15-sonnet-1 | PASS | 23 | 20 | 14 | 2 | 0 / 0 | 30 | 5,614 | 902,673 | 71,443 | 0 + 46,464 | 0 | 0.43 | 80 |
| S16-opus-1 | PASS | 37 | 34 | 29 | 2 | 0 / 0 | 50 | 11,725 | 1,605,075 | 79,830 | 79 + 38,492 | 0 | 1.19 | 134 |
| S16-sonnet-1 | PASS | 29 | 26 | 18 | 4 | 2 / 1 | 44 | 9,207 | 1,456,383 | 80,369 | 0 + 38,496 | 0 | 0.56 | 98 |
| S17-opus-1 | PASS | 47 | 44 | 28 | 10 | 0 / 0 | 64 | 15,823 | 4,450,824 | 176,669 | 32,950 + 43,272 | 0 | 2.62 | 215 |
| S17-sonnet-1 | FAIL | 72 | 69 | 49 | 5 | 0 / 0 | 92 | 26,617 | 5,555,321 | 157,731 | 53,836 + 43,276 | 0 | 1.45 | 277 |
| S18-opus-1 | PASS | 49 | 46 | 30 | 7 | 1 / 1 | 68 | 12,155 | 2,716,393 | 106,629 | 5,829 + 43,272 | 0 | 1.64 | 161 |
| S18-sonnet-1 | PASS | 47 | 42 | 28 | 4 | 4 / 2 | 56 | 13,081 | 2,082,930 | 90,920 | 4,639 + 56,256 | 0 | 0.70 | 123 |
| S19-opus-1 | PASS | 50 | 47 | 40 | 3 | 0 / 0 | 56 | 13,387 | 2,232,901 | 104,216 | 2,273 + 35,727 | 0 | 1.55 | 154 |
| S19-sonnet-1 | PASS | 41 | 38 | 32 | 2 | 1 / 1 | 34 | 11,751 | 1,156,735 | 85,191 | 2,275 + 35,731 | 0 | 0.57 | 113 |
| S20-opus-1 | PASS | 98 | 95 | 70 | 21 | 2 / 1 | 116 | 47,485 | 7,994,649 | 214,252 | 121,465 + 46,460 | 0 | 4.26 | 516 |
| S20-sonnet-1 | FAIL | 140 | 136 | 92 | 35 | 5 / 3 | 176 | 68,221 | 15,776,161 | 252,822 | 160,047 + 58,013 | 0 | 3.27 | 624 |
| S21-opus-1 | PASS | 103 | 101 | 75 | 23 | 0 / 0 | 130 | 50,138 | 8,943,543 | 209,651 | 130,958 + 28,419 | 0 | 4.47 | 561 |
| S21-sonnet-1 | PASS | 115 | 111 | 76 | 26 | 1 / 0 | 150 | 65,187 | 12,801,673 | 269,960 | 164,053 + 58,013 | 0 | 3.01 | 611 |
| S22-opus-1 | PASS | 121 | 118 | 94 | 20 | 2 / 2 | 170 | 46,591 | 12,709,825 | 222,024 | 68,726 + 46,460 | 0 | 5.25 | 560 |
| S22-sonnet-1 | PASS | 132 | 128 | 99 | 23 | 6 / 5 | 162 | 56,251 | 12,495,280 | 228,732 | 72,326 + 53,774 | 0 | 2.73 | 526 |
| S23-opus-1 | PASS | 31 | 28 | 22 | 3 | 1 / 0 | 42 | 8,322 | 1,600,807 | 92,448 | 1,562 + 46,460 | 0 | 1.23 | 106 |
| S23-sonnet-1 | PASS | 29 | 26 | 20 | 3 | 1 / 1 | 36 | 7,601 | 1,374,142 | 89,430 | 0 + 46,464 | 0 | 0.57 | 85 |
| S24-opus-1 | PASS | 82 | 79 | 59 | 16 | 2 / 2 | 114 | 30,170 | 6,493,758 | 158,555 | 36,519 + 46,460 | 0 | 3.17 | 379 |
| S24-sonnet-1 | PASS | 105 | 101 | 75 | 16 | 1 / 0 | 136 | 44,964 | 10,165,976 | 201,916 | 37,255 + 58,013 | 0 | 2.27 | 483 |
| S25-opus-1 | PASS | 36 | 33 | 27 | 3 | 0 / 0 | 48 | 9,081 | 1,774,379 | 91,370 | 17,581 + 40,763 | 0 | 1.27 | 114 |
| S25-sonnet-1 | PASS | 43 | 40 | 29 | 0 | 0 / 0 | 50 | 10,632 | 2,018,499 | 108,684 | 49,272 + 40,767 | 0 | 0.74 | 105 |
| S26-opus-1 | PASS | 36 | 33 | 25 | 5 | 0 / 0 | 46 | 10,199 | 1,911,254 | 98,562 | 30,571 + 40,763 | 0 | 1.37 | 114 |
| S26-sonnet-1 | PASS | 42 | 39 | 31 | 1 | 7 / 6 | 50 | 9,762 | 1,910,715 | 92,272 | 49,398 + 40,767 | 0 | 0.66 | 98 |
| S27-opus-1 | PASS | 54 | 51 | 45 | 3 | 0 / 0 | 80 | 19,359 | 3,936,670 | 126,160 | 34,305 + 40,763 | 0 | 2.18 | 212 |
| S27-sonnet-1 | PASS | 38 | 35 | 26 | 3 | 2 / 2 | 54 | 11,935 | 2,263,322 | 111,232 | 33,895 + 40,767 | 0 | 0.79 | 125 |
| S28-opus-1 | FAIL | 46 | 43 | 30 | 9 | 1 / 1 | 62 | 13,754 | 2,863,255 | 118,057 | 60,093 + 40,763 | 0 | 1.79 | 177 |
| S28-sonnet-1 | PASS | 59 | 53 | 35 | 3 | 4 / 3 | 82 | 15,286 | 3,828,316 | 139,475 | 59,531 + 87,126 | 0 | 1.09 | 159 |
| S29-opus-1 | FAIL | 21 | 18 | 13 | 2 | 0 / 0 | 28 | 4,981 | 759,726 | 74,254 | 21,216 + 40,763 | 0 | 0.85 | 63 |
| S29-sonnet-1 | PASS | 34 | 31 | 26 | 0 | 2 / 2 | 40 | 7,616 | 1,346,475 | 87,764 | 12,348 + 40,767 | 0 | 0.56 | 78 |
| S30-opus-1 | FAIL | 138 | 136 | 84 | 45 | 3 / 3 | 202 | 74,071 | 20,603,584 | 297,007 | 167,743 + 28,419 | 0 | 7.98 | 887 |
| S30-sonnet-1 | PASS | 120 | 111 | 56 | 38 | 1 / 0 | 198 | 77,901 | 21,929,203 | 344,918 | 234,446 + 132,295 | 0 | 4.35 | 747 |
| S31-opus-1 | PASS | 142 | 140 | 89 | 46 | 2 / 1 | 238 | 84,738 | 34,242,031 | 432,553 | 40,509 + 28,419 | 0 | 12.00 | 1106 |
| S31-sonnet-1 | PASS | 201 | 196 | 152 | 22 | 2 / 2 | 220 | 113,426 | 27,931,308 | 438,822 | 90,233 + 67,813 | 0 | 5.68 | 1029 |
| S32-opus-1 | PASS | 75 | 71 | 47 | 16 | 2 / 2 | 110 | 38,974 | 8,054,983 | 216,465 | 67,776 + 52,952 | 0 | 4.12 | 471 |
| S32-sonnet-1 | FAIL | 80 | 76 | 48 | 19 | 1 / 0 | 104 | 46,225 | 7,802,162 | 213,356 | 112,158 + 54,290 | 0 | 2.10 | 433 |
| S33-opus-1 | PASS | 170 | 168 | 109 | 43 | 2 / 0 | 258 | 87,597 | 31,286,496 | 399,369 | 134,403 + 28,419 | 0 | 11.21 | 1077 |
| S33-sonnet-1 | FAIL | 119 | 114 | 80 | 15 | 3 / 2 | 136 | 56,481 | 11,501,533 | 260,816 | 45,264 + 63,001 | 0 | 2.76 | 525 |
| S34-opus-1 | PASS | 104 | 100 | 73 | 17 | 0 / 0 | 122 | 48,935 | 12,700,397 | 312,247 | 23,992 + 54,284 | 0 | 6.02 | 610 |
| S34-sonnet-1 | PASS | 81 | 78 | 54 | 15 | 1 / 1 | 102 | 46,386 | 8,806,743 | 236,903 | 30,783 + 43,276 | 0 | 2.29 | 445 |
| S35-opus-1 | PASS | 118 | 116 | 75 | 36 | 1 / 1 | 176 | 61,257 | 18,221,228 | 300,499 | 138,023 + 28,419 | 0 | 7.27 | 773 |
| S35-sonnet-1 | PASS | 100 | 96 | 64 | 22 | 1 / 0 | 148 | 54,934 | 14,266,113 | 284,787 | 119,509 + 54,290 | 0 | 3.12 | 532 |
| S36-opus-1 | PASS | 41 | 37 | 26 | 4 | 0 / 0 | 58 | 11,075 | 2,297,950 | 112,213 | 28,657 + 61,313 | 0 | 1.58 | 155 |
| S36-sonnet-1 | PASS | 48 | 44 | 32 | 2 | 10 / 7 | 56 | 13,098 | 2,041,095 | 88,100 | 14,415 + 61,319 | 0 | 0.69 | 135 |
| S37-opus-1 | PASS | 30 | 27 | 17 | 6 | 1 / 1 | 38 | 8,840 | 1,258,191 | 82,144 | 27,254 + 43,272 | 0 | 1.09 | 110 |
| S37-sonnet-1 | PASS | 26 | 23 | 17 | 2 | 0 / 0 | 26 | 7,360 | 944,486 | 88,470 | 25,658 + 43,276 | 0 | 0.52 | 64 |
| S38a-opus-1 | PASS | 132 | 130 | 95 | 21 | 2 / 1 | 190 | 55,171 | 17,441,054 | 287,510 | 90,622 + 28,420 | 0 | 6.89 | 701 |
| S38a-sonnet-1 | PASS | 116 | 114 | 71 | 32 | 0 / 0 | 174 | 68,025 | 15,102,692 | 290,056 | 108,425 + 28,422 | 0 | 3.35 | 628 |
| S38b-opus-1 | PASS | 119 | 116 | 91 | 16 | 0 / 0 | 124 | 51,600 | 8,893,559 | 227,886 | 45,626 + 41,942 | 0 | 4.63 | 598 |
| S38b-sonnet-1 | PASS | 109 | 107 | 80 | 15 | 1 / 1 | 122 | 51,472 | 8,825,591 | 221,836 | 62,396 + 28,422 | 0 | 2.28 | 440 |
| S39a-opus-1 | PASS | 63 | 60 | 43 | 11 | 1 / 1 | 78 | 25,737 | 4,157,173 | 144,701 | 33,458 + 41,942 | 0 | 2.50 | 290 |
| S39a-sonnet-1 | PASS | 86 | 83 | 67 | 2 | 0 / 0 | 94 | 39,414 | 5,471,512 | 177,686 | 28,886 + 41,946 | 0 | 1.65 | 351 |
| S39b-opus-1 | PASS | 51 | 48 | 30 | 10 | 0 / 0 | 68 | 23,465 | 3,434,614 | 138,947 | 22,785 + 41,942 | 0 | 2.27 | 263 |
| S39b-sonnet-1 | PASS | 44 | 41 | 23 | 7 | 1 / 1 | 52 | 23,165 | 2,686,977 | 139,158 | 16,128 + 41,946 | 0 | 1.06 | 208 |
| SMOKE-opus-1 | — | 3 | 2 | 1 | 0 | 0 / 0 | 8 | 226 | 58,545 | 30,069 | 0 + 0 | 0 | 0.26 | 7 |
| SMOKE-sonnet-1 | — | 3 | 2 | 1 | 0 | 0 / 0 | 8 | 216 | 58,299 | 29,946 | 0 + 0 | 0 | 0.13 | 5 |
| **Σ opus** | 38/41 | 2521 | 2401 | 1697 | 490 | 28 / 21 | | 1,021,118 | 251,245,739 | 6,197,012 | | 0 | 120.26 | 12385 |
| **Σ sonnet** | 36/41 | 2552 | 2403 | 1688 | 350 | 68 / 50 | | 1,094,847 | 223,575,015 | 6,114,163 | | 0 | 57.77 | 10372 |

- **Round total:** 82 cells, 4,804 tool calls, 3,385 MCP calls, $178.03 for the cells plus $2.32 for the 83 SMOKEs.
  Opus costs 2.1× sonnet for the same call count (2,401 vs 2,403), mainly from price per token; its cache read is
  12 % higher (251.2 M vs 223.6 M). The five most expensive cells are editor cells: S31-opus ($12.00, 140 calls),
  S33-opus ($11.21), S30-opus ($7.98), S35-opus ($7.27) and S38a-opus ($6.89).
- **Fixed-context floor:** a SMOKE reads 88,253–88,956 tokens (input + cache read + cache write at `result`, median
  88,622 over 83 runs), the same as round 50's 88,253. Cache read per turn ranges from 17 K (S11-sonnet) to 241 K
  (S31-opus), so the floor is not what separates cells; turn count is.
- **Comparison with earlier rounds.** The rule in `analysis.md` allows only **S1–S4 sonnet against round 50**
  (scenario, model, effort, `promptSha256`, `skillsSha256` all match): S1 74 / 78 calls, 0 / 9 errors, $1.42 / $1.46,
  215 / 215 s; S2 54 / 51, $0.94 / $0.94; S3 13 / 11, $0.36 / $0.36; S4 38 / 38, $0.72 / $0.73 (this round first,
  `archive/runs/r50/analysis/metrics.csv`). Flat at n = 1. Every other cell is **not comparable**: the catalog,
  guides and inventory differ from round 49 and from the S25–S29 rounds, which also ran at effort `high`. For context
  only: on S4–S24 against round 49 (21 cells per model, effort `medium` in both) opus went 999 → 934 calls,
  71.3 M → 64.9 M cache read, $40.59 → $38.88, and sonnet 1,085 → 981 calls, 86.9 M → 76.6 M, $23.07 → $21.35, while
  sonnet passes went 21 → 18 (S11, S17, S20; criteria for those three unchanged since 2026-10-30). On S25–S29 against
  the effort-`high` runs: opus 256 → 178 calls with passes 5 → 3, sonnet 257 → 198 with passes 5 → 5.
- **Error envelopes: 96** (opus 28, sonnet 68), 71 retries. 28 of sonnet's are on tools whose schema the session had
  not loaded (`unloaded_schema_calls` sonnet 160 in 27 cells, opus 1), led by S36-sonnet (26 calls, 9 errors) and
  S26-sonnet (25, 7) (§3 #1). `arg_validation_errors` 19 (sonnet only); `pre_dispatch_rejections`,
  `welcome_rejections` and `modal_blocked` are 0 everywhere; both S10 cells closed twice and reopened without a
  Welcome-screen probe.
- **The AGENTIC VIEW surface across the matrix:** `get_compact_project_structure` 215 calls (4 errors),
  `get_project_structure` 44, `print_node` 452 (0 errors) (`tools.json`). `temp_rereads_after_compaction` is 0 and
  there were no compactions, so the D50 re-read mechanism did not arise.
- **Fails by kind:** 3 are letter-only or prompt-criteria gaps, each with an `observerNote` (S28-opus, S30-opus,
  S33-sonnet); 1 is the S29 design discriminator (S29-opus, note); 4 are worker misses on something the prompt asks
  for (S11-sonnet, S17-sonnet, S20-sonnet's `final`, whose note concerns a second sub-item, and S32-sonnet). §2 has
  each.

## 2. Verdicts worth keeping

**The eight fails** (decisive row of each `*.eval.md`):

- **S11-sonnet (criterion 3):** Q3 names `typeof_SimpleMathVarDeclaration` as the rule that types `E`; the decisive
  rule is `typeof_SimpleMathAssignment` (`i = Float added`). The worker ran the right query, EXPLAIN_TYPE at
  `S11-sonnet-1:8`, and misread which trace entry answers "which rule". The evaluator calls it borderline. Round 49's
  S11-sonnet passed on the same criteria.
- **S17-sonnet (criterion 2):** `RedoStepText` asserts nothing between `$Undo` and `$Redo`, so a no-op undo plus a
  no-op redo passes. The prompt says each test must fail if its behaviour broke. The worker said it never ran a test
  against broken behaviour.
- **S20-sonnet (criteria 5 and 6):** `Tariffs` is generated as `public class Tariffs`, not `final`; the worker printed
  `Tariffs.java` at the end and did not notice. Criterion 6 also fails on two sub-items, one of which (the Fee
  reduction as a no-context `InlineTemplate_RuleConsequence`) carries the `observerNote`.
- **S28-opus (criterion 6):** one combined Console command (`S28-opus-1:27`, run at `:29`) moved all three values
  with no node edits; the criterion's floor is two `run_console_command` calls (`MG_console_runs 1`). Letter-only.
- **S29-opus (criterion 2, outcome `in-place`):** the worker loaded `mps-aspect-migrations` (`:2`), read
  `language-evolution.md` (`:4`), and tightened `Loan.borrower` in place (`:11`, `MG_tighten_in_place 1`). Its final
  message names the published route as a "Decision for you". This is the cell's designed discriminator; S29-sonnet
  took the published route and passed. The effort-`high` S29-opus run of 2026-10-31 had also published.
- **S30-opus (criterion 2):** the options list uses `CellLayout_Vertical` + `IndentLayoutOnNewLine` +
  `IndentLayoutIndent` instead of the named `IndentLayoutNewLineChildren`; the sandbox renders one option per line,
  indented, as the prompt asks. Letter-only.
- **S32-sonnet (criterion 2):** test R6 opens completion, asserts `then`, types `the` and presses Enter. It never shows
  that typing `the` after `)` alone applies nothing, which prompt item 6 asks for. The model side passes.
- **S33-sonnet (criterion 5):** the E4 undo test has no assertion before `$Undo`; the prompt lists only
  "conversion; undo". E3 shows that the conversion works, so the undo is very likely real. This is lesson 48's
  pattern.

**`observerNote`s, all five, in substance** (the proposed criteria changes are in §5):

- S20-sonnet: criterion 6's Fee sub-item requires `InlineTemplate_RuleConsequence`, which the prompt (step 3b,
  `base()`) never asks for; the run fails criterion 5 either way.
- S28-opus: prompt intent met by one combined Console command; it fails only criterion 6's floor of two runs, which
  the prompt does not state.
- S29-opus: in-place route; met the prompt's done-when list but not the designed published-by-default route; read
  `language-evolution.md` and set it aside.
- S30-opus: letter-only fail of criterion 2; asks whether the criterion should accept a vertical list.
- S33-sonnet: fails only criterion 5's "assertion before `$Undo`", which the prompt does not ask for (lesson 48).

**Evaluator notes that did not change a verdict:**

- **S39a/S39b pins:** the `alerts3` and `alerts3-hard` `roots.tsv` deep-JSON hashes differ for every root, untouched
  ones included, and the PLAIN TEXT hashes of most editor and structure roots differ too (22 editor roots match once a
  missing trailing newline is tolerated; structure `Alert` and `BinaryExpr` still differ). Sandbox and test-model pins
  still match. All four evaluators decided criterion 1 (and S39b's AlertHeader part of criterion 5) from prints plus
  the call log's write records. Filed as **A20** (§4 H2).
- **families.py gaps reported by evaluators:** one of five holds (§4 H3, **A19**).
- **S8-sonnet:** pass 2 after the observer MAKE, as the criteria prescribe; the worker had already made and dry-run
  everything itself.
- **S19:** the close/reopen persistence re-check (recorded, not gating) was not done (§4 H4).
- **S38a:** the primary leak check (`workspace.xml` after close) was done by the observer after close: 0
  `ConceptEditorHintSettings` in both cells; both backup reruns were green.
- **Recorded, not gated:** S34-sonnet's `Alert_Mute_KeyMap` is added to the name cell and still on the `notify`
  constant ("moved" in the criterion); S33-opus's member substitute contribution checks
  `getNodeSubstituteChooser().isVisible()` so a typed prefix falls through to a side transform, a UI-state hack in
  language code (D143 cluster b); S31-sonnet and S39a-sonnet test severity through raw `SNode.getProperty(String)`
  strings; S36-sonnet made 10 call-shape errors and still passed.

## 3. Hotspots

`hotspots.md` lists 25 chains over 4,804 calls. It ranks by chars, and the leaders (`Bash → Bash` 312,
`Bash → Bash → Bash` 155) are mostly skill-reference reads after a `Skill` load (`D_skill_bash_fetch` opus 180,
sonnet 109) and blueprint generation, i.e. the intended routing. The table ranks by avoidable batches instead; each
batch re-reads 17–241 K of context here. Three instances per family were inspected with `show_steps.py`.

| # | family | instances | avoidable batches | determinism | tier | evidence |
|---|---|---|---|---|---|---|
| 1 | sonnet calls a tool whose schema it never loaded and gets the required-parameter envelope | 160 blind calls in 27 sonnet cells, 28 errors (opus: 1 call, 0 errors) | ≈ 28 | 1.0: every envelope names the missing key, the next call succeeds | none: model trait (lesson 41). The **D** already exists (`mps-mcp-workflow/SKILL.md:47`). Round 50's S1 burst moved: S1-sonnet 2 blind calls, S36-sonnet 26, S26-sonnet 25 | `S36-sonnet-1:2` (one `ToolSearch`) → `:17→18` `modelReference` ×2, `:19`, `:22`, `:23`; `S26-sonnet-1:12`, `:15→16`, `:20`, `:23`, `:27`, `:36`; `S18-sonnet-1:23–24`, `:36` |
| 2 | reading MPS editor-runtime sources from the checkout to learn editor behaviour (lesson 47) | 41 calls in 4 cells (S10's 4 reads are the relaunch recipe, excluded) | ≈ 30 | 0: judgment | **D** (new **D143**), one sub-item per cluster | `S31-opus-1:17–26` (select-all, brace matching), `:36–40` (keymap context cell), `:58–59`, `:107`; `S33-opus-1:126–133` (typed prefix vs side transform); `S35-opus-1:38–42`, `:50–51` (context assistant, chooser keys); `S38a-sonnet-1:14–19` (editor hints state) |
| 3 | zsh aborts a Bash command: unmatched glob, or `=` expansion | 9 in 8 cells | ≈ 9 | 1.0 | **D** exists for the glob half (`AGENTS_template.md:25`), none for `=` (A9) | glob: `S15-opus-1:5`, `S24-sonnet-1:41`, `S31-opus-1:17`, `:23`, `S33-opus-1:128`, `S38a-opus-1:15`, `S38a-sonnet-1:16`; `=`: `S39a-opus-1:54`, `S39b-sonnet-1:18` |
| 4 | a guessed concept name is rejected and the suggestion does not name the right one | 6 in 6 cells | ≈ 8 | 1.0 when the suggestion is right (`SizeOperation` → `GetSizeOperation`, `FirstOperation` → `GetFirstOperation`), 0.5 otherwise | **S** (D139, new evidence) + **D** (new **D140**) | `S20-sonnet-1:80` `ParenthesisedExpression`, no suggestion → `:81` check, `:82` print, `:83` `search_concepts` (3 batches); `LocalVariableReference` → suggestions `LocalPropertyReference`, `BaseVariableReference`, `TypeVariableReference`, fixed from memory to `VariableReference`: `S22-opus-1:44→45`, `S30-opus-1:47→48` (read `paste-and-copy.md` at `:13`), `S37-opus-1:19→20`; `S6-sonnet-1:47`, `S28-sonnet-1:32` |
| 5 | `parse_java_and_insert` METHOD in child mode without `contextNodeRef`, though `insert.parentRef` is that classifier | 5 in 5 cells, both models | 5 | 1.0: the retry copies `parentRef` into `contextNodeRef` unchanged | **S** (new **D141**) | `S22-opus-1:32→33`, `S24-opus-1:40→41`, `S38b-sonnet-1:48→49`, `S6-sonnet-1:45→46`, `S22-sonnet-1:50` |
| 6 | hand-typed deep inline JSON rejected as unbalanced (D88) | 5 in 5 cells | 5 | 1.0 | **D** exists (D120's `blueprint.py`); the envelope routes there and works | `S2-opus-1:19→20` (own Python), `S31-opus-1:52→53` (followed the envelope to `blueprint.py`), `S31-sonnet-1:66`, `S33-sonnet-1:28`, `S20-sonnet-1:11` |
| 7 | sonnet calls a tool named `bash` | 5 in 5 cells | 5 | 1.0 | none: model slip (round 49: 1) | `S21-sonnet-1:76`, `S30-sonnet-1:88`, `S32-sonnet-1:61`, `S33-sonnet-1:57`, `S35-sonnet-1:89` |
| 8 | `CREATE_CONCEPTS` with invented keys (`concepts` + a model or language key) | 4 in 3 cells | 4 | 1.0: the envelope lists the accepted keys | none: the reference (`create-concepts.md`) has the shape; the workers called before reading it | `S4-sonnet-1:16`, `S22-sonnet-1:25`, `S28-opus-1:17`, `S28-sonnet-1:11` |
| 9 | `MOVE_NODE_TO_PARENT` into a fresh `TemplateDeclaration` whose factory filled `contentNode` | 2 of 2 S23 cells | 3 | 1.0 | **S** (new **D142**) | `S23-opus-1:16→17→18→19`, `S23-sonnet-1:16→17→18` |
| 10 | validation loops (≥ 3 checks of one root or model) | 14 in 13 cells | 0 | 0 | intended: each check follows a write or a MAKE | `S6-opus-1:39, :43, :48`; `S5-sonnet-1:16–18, :22`; `S33-sonnet-1:62–114` |
| 11 | `Bash → insert_root_node_from_json` (generated blueprint file, then insert by path) | 88 | 0 | 1.0 | intended (D120) | `S1-opus-1:31→32`, `S30-opus-1:48→49`, `S37-opus-1:20→21` |

- **Hypotheses.** *Confirmed:* the AGENTIC VIEW surface carries the whole matrix: `get_compact_project_structure` was
  called in 73 of 82 cells (38 of 41 scenarios; S9, S11 and S14 read a few nodes with `print_node`), with 4 errors in
  215 calls, and no cell compacted. The per-cell restart
  isolation removes the D80 hazard by construction (§4 H1). *Refuted:* "round 50's sonnet blind calls are an S1
  problem": S1-sonnet made 2 this round, while S26 and S36 made 25 and 26. *Unmeasured:* any cost effect of the surface
  change (no comparable baseline outside S1–S4 sonnet), and any effort effect on S25–S29 (the earlier runs were at
  `high`).
- **Candidates without evidence in this round:** a server-side fix for #1 (the envelope already names the key; there
  is nothing deterministic left to save), an online script for any family (no multi-call chain repeats across cells),
  and a template asset (no judgment-per-step family recurs).

## 4. Harness findings

- **H1: per-cell restart isolation held.** 83 SMOKEs, 82 cells, 82 MPS processes; each cell ran in the process its
  SMOKE had just gated. No cell shared a process with another, so the D80 signature cannot arise and the restart rules
  of runbook step 6 are met by construction. The cost is one SMOKE per cell ($2.32 in all, about 30 s of MPS start
  each) and a pid audit that reduces to "pid equals the preceding SMOKE's".
- **H2: the S39 print pins are stale (A20).** `fixtures/inputs/s39/prints/alerts3*/roots.tsv` were built on
  2026-11-11 on the same MPS build, 261.25134 (`FIXTURE.md:3`). Yet every deep-JSON hash and most editor and
  structure PLAIN TEXT hashes differ for roots no worker touched, while the sandbox and test pins match. The
  AGENTIC VIEW `print_node` commits (`a20949296e26`, `33511502bc10`) reach HEAD without being ancestors of the pin
  commit `ca52b14cfa49`, so a change in the plugin's renderer is the likely cause (one confirmed symptom: PLAIN TEXT of
  definition roots no longer ends in a newline); it is not proven. Criterion 1 of S39a/S39b was decided from prints
  plus the call log's write records, which the observer allowed. That route works, but it is not the route the
  criteria name.
- **H3: four of the five `families.py` gaps the evaluators reported are not gaps.**
  - `MG_old_renames` 0 in S27-opus **is** a gap. The worker renamed `mileage` to `mileage_old` with
    `update_node SET PROPERTY name` on the `PropertyDeclaration` (`S27-opus-1:10`), and the column counts only
    `alter_structure RENAME_*` (**A19**). The evaluator's explanation, a side effect of `UPDATE_CONCEPT_PROPERTY` at
    `:12`, is wrong: that call only changed the data type of the new property (`mps_mcp_update_concept_property`
    edits or adds a property by name and never renames).
  - `ED_cell_id_writes` and `ET_chooser_asserts` (S30, S31) are observer-counted by design; `coverage/editor.md:116`
    names implementing them as a follow-up.
  - `D_skill_reads` 0 (S17, S19, S37) is correct: the column counts `Read` calls only, and Bash reads are in
    `D_skill_bash_fetch` (S17-opus 7, S19-opus 1, S19-sonnet 1, S37-opus 2; S37-sonnet used only `Skill` loads).
  - `ET_run_configs` 2 in S17-sonnet is correct: there are two `create_run_configuration` calls, `:33` and `:68`. The
    evaluator saw only the second and wrote "one test run, no fix cycle", but `:34` and `:69` are two runs.
  - S16-sonnet's missing row was the evaluator's own `families.py` invocation timing out. The round's run produced
    all 82 rows.
- **H4: two observer checks.** S19's close/reopen persistence re-check (recorded, not gating) was skipped, so B's
  reads in both S19 evaluations are from before any reopen. The S38a leak check was done after close by the observer:
  0 `ConceptEditorHintSettings` in both `workspace.xml`.
- **H5: evaluator read cost, first measurement after A18.** `server-calllog.jsonl` has 3,402 calls from
  `mps-study-tools-inventory` on the 82 run projects (median 19.5 per run), against 3,454 worker calls. 925 of them
  failed, and 831 of those are `print_node` `NOT_FOUND` in the two S28 evaluations (S28-sonnet 574 in 16:40–16:47Z,
  S28-opus 257), the same kind of shell slip as round 50's 34 in S1. No verdict depends on them. Without the S28
  pair the evaluators made about 31 calls per run, so A18's recipe holds. The S39a/S39b evaluations (163–168 calls
  each) are the cost of H2's fallback.
- **H6: blueprint snapshots.** The copy into `<run-id>-blueprints/` ran for every run that still had its temp files
  (47 runs), not only S25–S29: `families.py` resolves temp-file blueprints for its `ET_*` and `GT_*` columns too. It
  keeps the last version of a file a worker rewrote, and one file per basename (S39a-opus-1 `triage/hint.json` vs
  `triage2/hint.json`).
- **H7: MPS was down at wrap-up.** `mcp_call.py mps_mcp_list_open_projects` was refused (connection refused on 64343)
  and no `jetbrains.mps.Launcher` process exists, so no scratch project can be open. The scratch moves (step 8) rest
  on that. With MPS down, no call reached the log after the `$RUNS` move (lesson 49 does not apply).

## 5. Next

- **Defects filed** (`defects.md`):
  - **D140** (BUG, low, D): `mps-aspect-editor-menus-and-keymaps/references/paste-and-copy.md:49, :53` target
    `jetbrains.mps.baseLanguage.structure.LocalVariableReference`, which this MPS does not have (rejected in three
    cells); `S30-opus-1` read the file at `:13` and wrote the concept at `:44`.
  - **D141** (FEATURE, low, S): `parse_java_and_insert` METHOD (and CLASS_CONTENT) in `child` mode should default
    `contextNodeRef` to `insert.parentRef` when that node is a Classifier or `ConceptBehavior`. 5 batches in 5 cells.
  - **D142** (FEATURE, low, S): `MOVE_NODE_TO_PARENT` cannot replace the placeholder that a node factory put into a
    single-valued role (a fresh `TemplateDeclaration`'s `contentNode`). 3 batches in the 2 S23 cells.
  - **D143** (PERFORMANCE ISSUE, low, D): editor behaviour read from the MPS checkout in four clusters (§3 #2).
  - **A19** (harness, low, P-off): `families.py` `MG_old_renames` misses a rename by `update_node SET PROPERTY name`.
  - **A20** (harness, medium): the S39 `roots.tsv` pins are stale on the current plugin.
- **Open rows with new evidence:** **D139** (`S20-sonnet-1:80→83`, 3 batches, the same `ParenthesisedExpression`
  as round 50; plus three `LocalVariableReference` rejections whose suggestions miss `VariableReference`; frequency
  once → sometimes). **A18** measured: median 19.5 evaluator calls per run, with the S28 pair as outliers (H5).
- **Watch rows updated:** D80 not exercised (one MPS process per cell); D84 absent (0 `reload_all` in 82 cells);
  D86 absent in S1 and S2 × 2; D88 seen, 5 envelopes in 5 cells, 1 of them in its own cells (`S2-opus-1:19`; round 44
  had 6 there), each recovered in one write; A9 seen 9 times in 8 cells, both halves; **D118 retired**: absent in
  S6 × 2 and S15 × 2 (`no problems found` + `details.infoMessages`, or the perRoot table the worker asked for, with no
  re-check after: `S15-opus-1:19`, `S6-opus-1:31`, `S6-sonnet-1:38`), after round 45 was clean as well.
- **Remedies (none implemented):**
  - **D143, tier D**, owner skills (`mps-aspect-editor-menus-and-keymaps`, `mps-aspect-editor`, `mps-tests`): one
    paragraph per cluster: (a) select-all and matching braces, the keymap's context cell, property commit, postfix
    hints; (b) when typed text applies a side transform and when it opens completion (`IntelligentInputUtil`), and that
    `canSubstitute` must not test the chooser's visibility; (c) the context-assistant test API and chooser keys;
    (d) reading the hints of an editor in a test. Contract: no `X_outside_project` read in S31, S33, S35, S38a.
    Saving ≈ 30 batches per full round, mostly opus. Risk: each paragraph must be checked against the sources
    first (lesson 48).
  - **D141, tier S**, owner `JetBrainsMPSJavaMcpToolset.kt`: infer `contextNodeRef` from `insert.parentRef` and say so
    in `details`. Saving 1 batch per instance. Risk: none when the inference is limited to a Classifier or
    `ConceptBehavior` parent.
  - **D139, tier S** (as filed in round 50) plus a ranking fix: a candidate whose name is the query minus one leading
    subtoken (`VariableReference` for `LocalVariableReference`) should rank first.
  - **D140, tier D**, owner skills: `VariableReference` in both places. Saving 1 batch where read.
  - **D142, tier S**, owner `alter_nodes`: `replace: true` on `MOVE_NODE_TO_PARENT` for a single-valued role, or a
    rejection that carries the exact `update_node SET CHILD` deletion. Saving 1–2 batches per S23 cell.
  - **A20, tier D**, owner study fixtures: re-pin both `roots.tsv` with the current plugin before the next S39 round,
    record the plugin revision next to the build in `FIXTURE.md`, and decide whether the deep column is pinned at all.
  - **A19, tier P-off**, owner `families.py`: count an accepted SET PROPERTY `name` ending in `_old` on a
    `PropertyDeclaration` or `LinkDeclaration` of a `.structure` model, with a unit test on `S27-opus-1:10`.
- **`observerNote` → proposed `done_criteria.md` changes** (the observer edits criteria; past runs stay scored):
  - **S20, criterion 6, Fee sub-item:** accept `InlineTemplateWithContext_RuleConsequence` as well as
    `InlineTemplate_RuleConsequence`, or add "no context class" to prompt step 3b. The criteria change keeps
    `promptSha256`, so prefer it.
  - **S28, criterion 6:** replace the floor of two `run_console_command` calls with "the values move by Console
    commands only (at least one writing command, `MG_sandbox_node_writes 0`); the number of runs is recorded".
  - **S29, criterion 2:** no change. The fail is the designed discriminator; the final message's "Decision for you" is
    already a recorded field.
  - **S30, criterion 2, options:** accept `CellLayout_Vertical` + `IndentLayoutOnNewLine` + `IndentLayoutIndent` as
    the equivalent of new-line-children + indent when the sandbox renders one option per line, indented (the
    behaviour-equivalent rule S34 rev 4 adopted).
  - **S33, criterion 5:** per lesson 48, change the prompt's test list to "conversion; assert the PagedAlert; undo;
    assert the Alert back", which re-baselines `promptSha256`. Otherwise drop the in-between assertion from the
    criterion.
- **Not filed** (model quirks or slips with no doc or tool fix):
  - sonnet tool name `bash`, 5 cells;
  - `CREATE_CONCEPTS` key guesses, 4;
  - sonnet `properties`-triplet misses on SET PROPERTY (`S12-sonnet-1:19`, `S18-sonnet-1:36`, `S19-sonnet-1:32`,
    `S26-sonnet-1:16`, inside #1);
  - S11-sonnet's misread EXPLAIN_TYPE trace (n = 1; if it repeats, the `equation_added` entry's `rule` is the line
    the typesystem skill should name);
  - S20-sonnet not checking `final` in the Java it printed;
  - S29-opus setting `language-evolution.md` aside at effort `medium`;
  - the sonnet test-shape misses in S17 and S32, which the prompts do ask for.
- **Next round:** apply the S20/S28/S30 criteria changes and decide S33's prompt, re-pin S39 (A20), then a targeted
  sonnet + opus pass over S20, S28–S33 and S39a/b. A D143 docs batch, if made, needs S31, S33, S35 and S38a opus
  re-measured. The two S10 `-target` directories are still in `workspace/` for the observer to delete.
