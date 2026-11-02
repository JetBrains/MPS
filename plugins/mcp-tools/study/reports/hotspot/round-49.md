# Skill Script Automation Study — Round 49 (2026-10-31)

Status: measurement round complete. Scope on request: **S4–S24 × opus + sonnet**, n = 1 per cell, S10 last; S1–S3
skipped. Stop rule on request: halt after five consecutive failed runs (never triggered). **42 of 42 PASS.** No
remedy was written in this round. It is the first full S4–S24 pass on one catalog since the generator cells
(S20–S24) were frozen, and the first with opus at `medium` on S4–S16.

Evidence: `~/MPSProjects/mcp-study/archive/runs/r49/`. Per run there are `{worker,server}.jsonl`, `*.meta.json`,
`*-install.json` and `*.eval.md`; S10 runs also have `*.leftbehind.txt` (the `list_open_projects` snapshot taken the
moment the worker exited). `analysis/` holds `metrics.csv`, `chains.json`, `errors.json`, `hotspots.md`,
`navigation.json` and `families.tsv` (against round 45). `launch/` holds the observer's prep and verdict wrappers.
`r49-ledger.txt` lists the verdicts in run order. `run:step` is the 1-based `tool_use` ordinal that `show_steps.py`
prints.

## 0. Harness state

- **Measured surface:** HEAD `d1c24af4c914` on `261/vaclav/MCP3`, clean tree. `skillsSha256 7074a8bb` (round 48's
  rerun catalog), guides `11fb1144`, inventory `7df6b7f1` (54 tools) in every meta.
- **Effort:** opus `medium`, sonnet `medium` (both the user-level setting for the full model id). Round 45, the last
  S4–S16 baseline, ran opus at `low`, so **opus S4–S16 is not comparable with round 45**; sonnet is. S20–S24 ran at
  `medium` on both models in rounds 46–47, so those compare directly.
- **Isolation:** call log on through the capture route (`capture` → `calllog` → `idelog`), which closed the developer
  checkout `myMPS-fix` once at the start. Then one cold restart before **every** run (`shutdown` → `start` harness →
  `wait` → SMOKE → close harness → CLI open of the scratch), `ISOLATION=per-shared-fixture-restart` in every meta.
  That is stricter than the runbook needs (S14, S20, S21 and S10 need no restart). It removes D80 by construction,
  at about 40 s per run. 43 SMOKE runs, each with exactly 1 server line; `server_call_surplus` 0 in every cell.
- **Evaluation:** one read-only Opus evaluator per run, with a shared brief that pointed at the cell's
  `done_criteria.md` and the "Evaluating a run" section of `analysis.md`. Cell-specific steps:
  - **S7, S17, S18:** the evaluator re-ran the worker's run configuration with `execute_run_configuration`.
  - **S8:** two passes, with the observer's `MAKE` in between. Both workers had already built the language
    themselves, so pass 2 found it not hollow before the observer's make.
  - **S9:** evaluated before the project was closed.
  - **S10:** the snapshot was taken before any reopen, and `<proj>-target` was deleted afterwards.
  - **S19:** the non-gating persistence re-check (close, CLI reopen, repeat the B reads) was done on both runs,
    with no difference.
- **Prompt changes since the comparison rounds:** S7 `94f897fd` (round 45: `b689a4e0`, the "one per check" revision
  of 2026-10-27); S23 `29b38101` (round 46 opus: `626c7255`). All other prompts match the comparison row below.

## 1. Results

Round 49 columns: calls = all tool calls, MCP = `mps_mcp_*` calls. "prev" is the latest earlier run of the same
cell (round 45 for S4–S16, `s17`/`s18`/`s19` rehearsals for S17–S19, round 47 for S20–S22/S24, round 46 for S23),
as calls / wall s / USD; the effort of that run is in brackets when it differs.

| cell | opus | calls | MCP | wall s | USD | prev opus | sonnet | calls | MCP | wall s | USD | prev sonnet |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| S4 | PASS | 52 | 43 | 180 | 2.10 | 39/134/1.34 (low) | PASS | 41 | 30 | 103 | 0.80 | 39/130/0.75 |
| S5 | PASS | 25 | 21 | 85 | 1.07 | 21/99/0.74 (low) | PASS | 23 | 19 | 55 | 0.39 | 23/53/0.39 |
| S6 | PASS | 50 | 36 | 219 | 2.26 | 36/158/1.47 (low) | PASS | 52 | 31 | 158 | 1.01 | 61/187/1.10 |
| S7 | PASS | 32 | 23 | 112 | 1.24 | 28/108/1.00 (low, FAIL) | PASS | 39 | 23 | 115 | 0.76 | 32/90/0.65 |
| S8 | PASS | 35 | 23 | 200 | 1.47 | 20/101/0.77 (low) | PASS | 32 | 17 | 87 | 0.52 | 25/77/0.52 |
| S9 | PASS | 19 | 14 | 67 | 0.69 | 15/49/0.54 (low) | PASS | 17 | 12 | 41 | 0.30 | 15/38/0.29 |
| S11 | PASS | 31 | 23 | 99 | 0.87 | 15/62/0.71 (low) | PASS | 14 | 9 | 41 | 0.29 | 32/75/0.44 |
| S12 | PASS | 47 | 37 | 187 | 1.78 | 40/160/1.48 (low) | PASS | 48 | 30 | 167 | 0.81 | 46/127/0.77 |
| S13 | PASS | 30 | 26 | 111 | 1.09 | 20/95/0.85 (low) | PASS | 31 | 27 | 93 | 0.58 | 20/55/0.43 |
| S14 | PASS | 9 | 5 | 44 | 0.62 | 6/34/0.35 (low) | PASS | 10 | 7 | 31 | 0.28 | 10/31/0.28 |
| S15 | PASS | 29 | 19 | 117 | 1.22 | 24/120/0.89 (low) | PASS | 28 | 21 | 101 | 0.53 | 27/91/0.54 |
| S16 | PASS | 33 | 30 | 124 | 1.18 | 29/121/1.05 (low) | PASS | 31 | 26 | 114 | 0.64 | 35/116/0.66 |
| S17 | PASS | 60 | 40 | 258 | 2.49 | 48/218/2.05 (low) | PASS | 75 | 57 | 276 | 1.48 | 51/197/1.11 |
| S18 | PASS | 41 | 29 | 141 | 1.48 | 36/119/1.26 (low) | PASS | 41 | 30 | 111 | 0.68 | 39/111/0.75 |
| S19 | PASS | 45 | 37 | 148 | 1.45 | 39/140/1.27 (low) | PASS | 44 | 31 | 123 | 0.68 | 41/99/0.68 |
| S20 | PASS | 107 | 72 | 543 | 4.86 | 101/495/4.26 | PASS | 118 | 81 | 570 | 3.30 | 132/575/3.04 |
| S21 | PASS | 99 | 70 | 560 | 4.40 | 113/583/4.92 | PASS | 133 | 95 | 666 | 3.63 | 124/492/2.80 |
| S22 | PASS | 108 | 75 | 504 | 4.70 | 127/582/5.94 | PASS | 152 | 109 | 604 | 3.10 | 143/515/3.19 |
| S23 | PASS | 32 | 24 | 120 | 1.27 | 38/142/1.38 | PASS | 33 | 26 | 101 | 0.63 | 35/101/0.68 |
| S24 | PASS | 99 | 64 | 545 | 3.74 | 82/348/3.26 | PASS | 104 | 74 | 471 | 2.30 | 115/475/2.74 |
| S10 | PASS | 16 | 8 | 51 | 0.60 | 13/45/0.45 (low) | PASS | 19 | 8 | 42 | 0.36 | 18/48/0.31 |
| **Σ** | 21/21 | 999 | — | 4,415 | 40.59 | | 21/21 | 1,085 | — | 4,070 | 23.07 | |

- **Pass rate:** 42/42. The comparison rows had one FAIL (round 45 `S7-opus-1`, at `low`, before the S7 prompt
  revision); every other comparison run passed. A fully green matrix is weak evidence for any single skill. It
  says the catalog `7074a8bb` holds across the twenty cells on both models; it does not rank them.
- **Sonnet against its comparison runs (same effort):**
  - S4–S16 is flat in calls (±15 % except S11 −56 % and S13 +55 %).
  - **S17** went 51 → 75 calls and S21 124 → 133, which is noise at n = 1.
  - **S22** went 143 → 152 calls and S24 115 → 104.
  - Generator cells S20–S24 together: 549 → 540 calls, $14.4 → $13.0.
- **Opus S20–S24 (same effort):** 461 → 445 calls, $19.7 → $19.0. S22 fell 127 → 108; S24 rose 82 → 99, with one
  `find /` probe for engine sources (`S24-opus-1`, recorded by the evaluator).
- **Opus S4–S19 at `medium` vs `low`:** +24 % calls (393 → 488 over S4–S16 + S10) and +44 % cost on the same
  cells, with no pass-rate gain to show for it (round 45 was 12/13 at `low`). This is an effort comparison, not a
  regression (lesson 44).

## 2. Verdicts worth keeping

- **S10:** both workers left the Welcome screen with both projects closed and the same `mpsPid`, and wrote a
  `migration.xml` whose parsed entries equal `new_study_project.py`'s map. `welcome_rejections` 0, `modal_blocked`
  0 (`S10-opus-1` 16 calls in 52 s, `S10-sonnet-1` 19 calls).
- **S19:** both runs attached the plans through `SET_GENERATION_PLAN` and `module_dependency`, with
  `GP_attach_workarounds` 0, `GP_descriptor_reads` 0 and `GP_plan_facet_writes` 0. Both runs also survived the
  close/reopen unchanged, so there is no persistence finding.
- **S8:** both workers ran `MAKE` themselves before shipping blueprints, which `mps-dsl-memory` allows. The A8
  two-pass procedure was therefore redundant in both runs. Every shipped blueprint dry-ran clean: 5 for opus, 3
  for sonnet. That is not a criteria defect, since the procedure still covers a worker that does not build.
- **Evaluator notes that did not change a verdict:**
  - `S4-sonnet-1`: the Recipe editor does not show the new `summary`. S4's criteria do not check the editor, so
    this joins the known gap noted under S4 in `scenarios.md`.
  - `S13-*`, `S16-*`: 2 MAKEs each (the prompt says "rebuild once").
  - `S24-sonnet-1`: about 5 make cycles (10 MAKE calls), above the 1–4 signal.

## 3. Hotspots

`hotspots.md` ranks the same families as rounds 44–45. None is new, and none was reviewed for determinism this
round.

| # | family | count (parallel) | where |
|---|---|---|---|
| 1 | `Bash → Bash` / `Bash → Bash → Bash` | 114 / 38 | every cell; 359 Bash calls in all (opus 194, sonnet 165), 32 of them reads of temp result files |
| 2 | `print_node → print_node` | 18 (94) | read-heavy cells (S13, S14, S16), mostly parallel batches |
| 3 | `Bash → get_concept_details` / `get_concept_details → Bash` | 15 (5) / 30 | the generator cells S20–S22: concept lookups fed into hand-written blueprints |
| 4 | `Bash → update_node ADD CHILD` | 38 (2) | S13, S20–S24: generated blueprint files passed by path |

- **Error envelopes: 47 in all (opus 6, sonnet 41); retries 30 (opus 5, sonnet 25).** Sonnet calls 71 MCP tools
  without their schema loaded, 13 of them rejected; opus does this once. That is lesson 41's signature, unchanged.
  The rest of the sonnet errors are blueprint and parameter guesses, mostly in S7, S17, S18, S22 and S24:
  - **Wrong concept FQN (5):** collections operations under a guessed `jetbrains.mps.baseLanguage.collections.
    structure.SizeOperation` / `FirstOperation` (`S6-sonnet-1:45`, `:46`, `S21-sonnet-1:119`) and
    `baseLanguage.structure.ForeachVariable` (`S22-sonnet-1:61`). Each rejection carried "Closest concepts" and was
    recovered in one call.
  - **`TypeKeyStatement.text` instead of `keys`, D128, again (2):** `S7-sonnet-1:32`, `S17-sonnet-1:30`. Third
    measured round with it (44, 45, 49); still open.
  - **Unbalanced inline JSON, D88 (4):** `S7-sonnet-1:29`, `S12-sonnet-1:16`, `S21-sonnet-1:14`, `S24-sonnet-1:98`.
    D88's hard criteria hold: each envelope is short, it is recovered in one write, and no second parse error
    follows on the same blueprint. The frequency target (6 → ≤ 1) is not met, but all four are sonnet and none is
    in S1/S2, D88's own cells.
  - **Guessed `query_nodes` operations and parameters (4):** `S18-sonnet-1:33` `FIND_NODES`, `:35`, `S22-sonnet-1:52`
    `maxInlineBytes`, `S24-sonnet-1:27`. Every rejection lists the accepted names, and each was recovered in one
    call.
  - **Over the 4,096-character inline limit (1):** `S17-sonnet-1:42`, retried with a file path.
- Zero compactions, zero API retries, zero subagent calls. `stale_incidents` 5 + 5 and `validation_loops` 2 + 4,
  none reviewed.

## 4. Harness findings

- **H1 — the per-run cold restart is affordable.** 42 restarts plus SMOKEs cost about 30 minutes of the round's
  roughly 4.7 hours, and they took every D80 question off the table. For a full S4–S24 round, restarting before
  every cell is simpler than tracking which cells share a fixture language, and it costs about 20 % more wall
  time than the minimal schedule.
- **H2 — an observer `MAKE` must put its arguments inside `parameters`.** The first S8 observer `MAKE` sent
  `modules`/`rebuild` at the top level and got `MAKE_INPUT_INVALID` (the envelope explains it). The runbook's S8
  step names `mps_mcp_alter_nodes MAKE` (`modules: [com.example.statechart]`, `rebuild: true`) without showing the
  call shape. This was an observer slip, not a tool defect: the second call was well-formed, and no worker run was
  affected.
- **H3 — the developer checkout is closed for the whole round.** The capture route shuts down the developer's
  MPS. At wrap-up the capture's call log was cleared and `-Didea.log.path` was set back to `<checkout>/log`.
  MPS was left shut down for the user to restart from IDEA.

## 5. Next

- **D128** has now recurred in three measured rounds (44, 45, 49) at the same `statements-and-actions.md` row.
  Its **D** half (the docs name `keys`) is still the cheapest fix; the defect row now carries round 49.
- **D88** stays on the watch; this round's four envelopes meet the hard criteria, but D88's own cells (S1, S2) were
  not run.
- **Sonnet unloaded-schema calls (71/1,085)** are a model trait (lesson 41). Rank them before writing any remedy:
  13 rejections cost roughly 13 batches over 21 cells.
- **Opus effort:** if opus S4–S16 numbers are to be compared with round 45, the next S4–S16 round should pin opus at
  `low`; otherwise round 49 becomes the `medium` baseline for opus.
