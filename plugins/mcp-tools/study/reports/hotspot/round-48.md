# Skill Script Automation Study — Round 48 (2026-10-31)

Status: measurement round complete. Scope on request: **S1–S3 × opus + sonnet**, n = 1 per cell, then an S1 rerun
on both models after the D137 docs remedy reached the built plugin. **First pass 4 of 6 PASS** (both S1 cells FAIL on
criterion 3, the editors). **Rerun 2 of 2 PASS.** No remedy was written in this round; it re-measures D137 (fixed
2026-10-30, uncommitted until this round's commit).

This round follows the two unnumbered 2026-10-30 S1–S3 rounds (`archive/runs/s1-s3-2026-10-30-1`, `-2`), which
tightened the S1–S3 criteria (`4c738060`, `cb5c7a59`) and found D137 (lesson 45).

Evidence: `~/MPSProjects/mcp-study/archive/runs/r48/`. Per run there are `{worker,server}.jsonl`, `*.meta.json`,
`*-install.json` and `*.eval.md`; `analysis/` holds `metrics.csv`, `chains.json`, `errors.json`, `hotspots.md` and
`navigation.json`. `launch/` holds the observer's cell wrapper and the evaluator brief. `run:step` is the 1-based
`tool_use` ordinal that `show_steps.py` prints.

## 0. Harness state

- **Measured surface:** HEAD `cb5c7a59cce0` on `261/vaclav/MCP3`, plus the uncommitted D137 edits to
  `mps-aspect-editor/SKILL.md` and `mps-mcp-workflow/references/editor-workflow.md`. Guides `11fb1144`, inventory
  `7df6b7f1` (54 tools) in every meta.
- **Catalog: two values, on purpose.**
  - First pass: `skillsSha256 53ad1413`. The D137 edits were in the source tree only; the plugin had not been built,
    so `install_skills.py` installed the catalog **without** them (`grep 'not a finished editor'` on the installed
    `mps-aspect-editor/SKILL.md` of both S1 projects: 0). Both S1 metas carry an `observerNote` saying so.
  - Rerun: `7074a8bb`, after the user built the project and restarted MPS. Verified three ways before and after each
    run: the built `plugins/mcp-tools/classes/…/skills` tree equals the `resources/` blueprints (`diff -r`); every one
    of the 33 installed `mps-*` folders in `.claude/skills` and `.agents/skills` of the harness and of both rerun
    projects equals its blueprint; `*-install.json` records `7074a8bb`, 33 skills, before the worker started.
- **Effort:** opus `low`, sonnet `medium` — the levels of rounds 43, 45 and both 2026-10-30 rounds.
- **Isolation:** call log on via the capture route (`mps_control.sh capture` → `calllog` → `idelog`), so no tracked
  run configuration was touched. 6 MPS starts: 1 to turn the call log on (it closed the developer checkout
  `myMPS-fix`), 1 before each S2/S3 cell (`per-shared-fixture-restart`), and 1 after the user's restart from IDEA,
  which had dropped the call log and logged into the checkout again. Each start was followed by a SMOKE with exactly
  1 server line. S1 × 2 shared pid 58947 (first pass) and pid 68101 (rerun). `server_call_surplus` 0 in every cell.
- **Evaluation:** one read-only Opus evaluator per cell with the shared brief; for the rerun the brief additionally
  asked it to quote the PLAIN TEXT print of each of the four editors.

## 1. Results

| cell | catalog | pass | turns | MCP calls | Bash | wall s | cost USD | cache-read |
|---|---|---|---|---|---|---|---|---|
| S1-opus-1 (low) | `53ad1413` | **FAIL** (3) | 90 | 65 | 17 | 346 | 3.60 | 7.96 M |
| S1-sonnet-1 (medium) | `53ad1413` | **FAIL** (3) | 92 | 50 | 10 | 258 | 1.61 | 6.86 M |
| S1-opus-2 (low) | `7074a8bb` | PASS | 91 | 55 | 30 | 317 | 3.31 | 7.90 M |
| S1-sonnet-2 (medium) | `7074a8bb` | PASS | 91 | 45 | 11 | 279 | 1.82 | 7.46 M |
| S2-opus-1 (low) | `53ad1413` | PASS | 50 | 32 | 6 | 161 | 1.71 | 3.04 M |
| S2-sonnet-1 (medium) | `53ad1413` | PASS | 65 | 37 | 5 | 155 | 1.00 | 3.30 M |
| S3-opus-1 (low) | `53ad1413` | PASS | 17 | 6 | 6 | 49 | 0.68 | 0.62 M |
| S3-sonnet-1 (medium) | `53ad1413` | PASS | 13 | 4 | 4 | 28 | 0.36 | 0.45 M |

Against the 2026-10-30 second round (same criteria, same effort): S2 is now 2/2 (was 2/3, `S2-sonnet-1` FAIL); S3
stays 2/2 at the same size (13–17 turns); S1-opus went PASS → FAIL on the unchanged catalog (60 → 88 calls).

## 2. Verdicts

- **D137 confirmed on both models before the remedy, absent after it.** With `53ad1413`, three of four editors
  stayed scaffold-shaped in each S1 cell — opus kept only Step refined (`step: " { text } " for { minutes } min,
  using …`), sonnet only Recipe (`recipe named { name } servings: …`). With `7074a8bb` all four editors are refined
  in both cells (`recipe { name } serves { servings } ( { difficulty } )`; sonnet `measured in`, `min`, `serves`,
  label-less `cookbook { name }`). Every other S1 criterion passed in all four cells.
- **D137 is not sonnet-only.** Lesson 45 and the archive row said opus refines at `low`; `S1-opus-1` (low) did not,
  where the 2026-10-30 second round's `S1-opus-1` (low) did. At n = 1 this is noise-level, but it moves D137 from "a
  sonnet-medium gap" to "a gap either model can hit".
- **The watch signature needed a correction.** The pre-fix workers *did* write to the editor model after scaffolding
  (S1-opus-1 `:22–:28`, 7 writes; S1-sonnet-1 `:30–:33`, 4 writes), but all into the one editor root they refined.
  The rerun's writes cover four distinct editor roots (S1-opus-2 `:22–:25` `update_root_node_from_json` × 4,
  S1-sonnet-2 `:27–:30` `update_node` × 4), all before the first constraints-doc access (`:27`, `:34`). The
  `defects.md` row now names that shape.
- **Cost is flat.** The remedy changes what the editor writes do, not how many there are: S1 turns 90/92 → 91/91,
  cache-read within ±10 %, cost −8 % (opus) / +13 % (sonnet). S1-opus-2 has 13 more Bash calls than S1-opus-1;
  not classified in this round (`Bash → Bash` is the top chain, 42 counted).

## 3. Hotspots

Six S1 cells is too few to rank families against round 45; `hotspots.md` lists the same leaders as rounds 43–45:
Bash before `insert_root_node_from_json` (19 counted `Bash → insert_root_node_from_json`; D120's `blueprint.py` use
not re-counted), `scaffold_editor → print_node → print_node` (4), and parallel `Read → Read` skill reads (17
parallel). 11 error envelopes and 8 retries (A2 counting) over the 8 cells, not individually reviewed;
`unloaded_schema_calls` 2 in S1-sonnet-1, 1 each in S1-sonnet-2 and S3-sonnet-1, 11 in S2-sonnet-1, 0 for opus.

## 4. Harness findings

- **H1 — an unbuilt skill edit is invisible to `skillsSha256`.** `install_skills.py` reads the built plugin's
  resources through `mps_mcp_initialize_project_for_agents`, so a source-tree edit is silently not measured and the
  fingerprint does not move. The first pass lost both S1 cells to it. Lesson 46.
- **H2 — an IDEA restart drops the capture's study options.** The user's restart from the `MPS` run configuration
  brought back `-Didea.log.path=<checkout>/log` and no call log; `capture`/`calllog`/`idelog` and an observer restart
  fixed it. The runbook already says this (step 1, "A capture from another MPS"); recorded here because it happened
  mid-round.

## 5. Next

- D137 stays on the recurrence watch: its re-measure asked for S1 sonnet medium × 2, this round has × 1 on each model.
  One more clean S1 round removes the row.
- The S1/S2 evaluator notes (criterion 3's "on a new line" for indent layouts, criterion 4 naming no Recipe, criterion
  5 of S2 not saying how to find the sandbox model) did not change any verdict; they are candidates for the next
  criteria pass, not defects.
