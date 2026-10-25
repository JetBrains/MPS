# Eval Study Consistency, Duplication, and Unused-Artifact Audit (2026-10-23)

Audit of `plugins/mcp-tools/study/`, `.agents/skills/skill-optimization-study/`, `.claude/skills/skill-optimization-study/`, and adjacent files after the `S13`–`S16`, `mps_mcp_generation`, and `mps_mcp_query_dataflow` changes.

---

## Validation (2026-10-23, against `620f655443cb`)

Each finding below was checked against the files at `620f655443cb`. The audit's line numbers for
`plugins/mcp-tools/study/scenarios.md` are about four lines low. Most of section 1 describes an
earlier state of that file: commits `b730c4b8e6e8` and `bf97e9a95d8a` had already rewritten the S13,
S14 and By-skill text. The original findings are kept below as written.

| § | Finding | Verdict | Action |
|---|---|---|---|
| 1 | duplicate pre-tool dataflow row ("no tool answers them yet") in By skill | **Not reproduced.** One dataflow-queries row (`scenarios.md:353`); the text is not in the file | none |
| 1 | stale S13 block (only cell, "baseline for a future", missing `DF_program_prints`) | **Not reproduced.** `:233-239` names S16, rounds 40/41 and `DF_program_prints` | none |
| 1 | S13 isolation "No other cell uses Kaja." | **Not reproduced.** `:243` names S16 | none |
| 1 | stale S14 block ("nothing in today's catalog") | **Not reproduced.** `:252-256` names the tool, rounds 40/41 and `DF_reaching_queries` | none |
| 1 | `mps-project-management` row says S11–S15 | **Confirmed** (`:344`) | S11–S16 |
| 1 | restart step 3 omits S16 | **Not reproduced.** `:388` says "S13 and S16 each need a restart" | none |
| 1 | *(new)* S15 isolation calls only S13 and S14 "the dataflow cells" | **Found while validating** (`:288`) | adds S16 |
| 1 | *(new, review)* isolation lines of S3 (`:82`), S4 (`:100-102`) and S9 (`:169`) omit S4 and S15; S4's says "the skill's restart list omits it", but `SKILL.md:162` lists S4 | **Found by the review** | S4 and S15 added; the stale remark dropped |
| 2 | `references/scenarios.md` fixture list lacks `kaja-dataflow-2` | **Confirmed** | added |
| 2 | table lacks an S16 row | **Confirmed** | added |
| 2 | ranges S1–S15 / S11–S15 (`:53`, `:112`) | **Confirmed** | S1–S16 / S11–S16 |
| 2 | S4 fixture `recipes` (`:23`), `recipes-full` "for S5/S6" (`:12`) | **Confirmed**: S4's criteria, `fixtures/README.md:22` and `scenarios.md:84` all say `recipes-full` | S4 row `recipes-full`; `recipes` "for S3, S7 and S9", `recipes-full` "for S4 and S6" |
| 2 | *(new)* S5 row points at `fixtures/PROBLEMS.md` | **Found while validating**: the file is `scenarios/S5/PROBLEMS.md` | path fixed there and in `S5/done_criteria.md:3` |
| 3 | S13 done criteria: "tool-free baseline for a later … `PRINT_PROGRAM`", no program-read signal | **Confirmed** | dated note that rounds 40/41 ran it, plus **P6 program read**. Appended, so P1–P5 keep their numbers for earlier reports |
| 3 | S14 done criteria: same, no tool-use signal | **Confirmed** (round 41: `DF_reaching_queries` 2, `dataflow-exposure-assessment.md:416`) | dated note plus **P4 tool use** |
| 3 | assessment Bottom line: "The study has no dataflow scenario" | **Confirmed** (`:27`) | dated to 2026-10-08, S13/S14/S16 named. `:142` is under "As of 2026-10-22, before step 1" and stays |
| 3 | `families.py` docstring omits S16 | **Confirmed** (`:101-104`); also "S13/S14 signal … because no tool exposes it" | S13 and S16 named, the console-runs line no longer says no tool exists. Docstring only |
| 4 | 65-character sha256 in `S15/DEFECT.md` | **False.** The hash has 64 hex digits and matches `shasum -a 256 ~/MPSProjects/mcp-study/fixtures/recipes-misgen.tar.gz` | none |
| 4 | `fixtures/README.md:24` tarball path reads as repo-relative | **Confirmed** (only `README.md` is in `study/fixtures/`) | `~/MPSProjects/mcp-study/fixtures/recipes-misgen.tar.gz` |
| 4 | D80 recurrence watch omits S15, S11/S12, S13/S16 | **Confirmed** | all three pairs added |
| 4 | `COVERAGE_MATRIX.md` "all 42" omits `generation`, `run_migrations`, `read_ide_log` | **Confirmed**: there are 45 `@McpTool` functions across the 17 toolsets in `META-INF/plugin.xml` | rows 43–45 marked (○), "not exercised here", each with the integration test and study cell or verification step that covers it. `14_finalize_report.md` says 45 and adds the three to "Tools not covered" |
| 5 | study files all active; S13/S16 prompts identical on purpose | **Confirmed** | none |
| 5 | empty dirs under `.junie/skills/` | **Confirmed locally** (39 empty dirs), but nothing under `.junie/skills` is tracked, so this is local state of this checkout and no commit can change it | none in the repository |
| 5 | implemented plan `.junie/plans/study-scenario-s15-generation-debugging.md` with pre-pin names | **Confirmed.** Its steps 1–5 are all done (S15 frozen, `5d46c0a39e73…`). It is the only tracked `.junie` file (`790492fc8fcb`) | removed, as other implemented plans were (`8cf5c45bc359`) |

Checks run: `python3 -m unittest discover -s tests` in `study/scripts` (167 tests, OK);
`diff -r` on the two `skill-optimization-study` copies (identical); `validate_skill_catalog.py`
on `.agents/skills` reports the same 48 lines at `HEAD` and with these changes (the two
`done_criteria.md` bare-name lines in `references/scenarios.md` were there before). No `mps-*`
skill changed, so `SkillCatalogReplicationTest` is unaffected. No Kotlin or MPS model changed.
A second reviewer (subagent) re-checked every edit and verdict; its corrections (S16 described
as the variant *meant* to need the program, since round 41 found its bug from builder text; the
isolation lines above; the S5 path; wording of "without the tool") are applied.

---

## 1. Duplicate & Contradictory Entries in `plugins/mcp-tools/study/scenarios.md`

- **Duplicate / conflicting dataflow rows in `### By skill` (`plugins/mcp-tools/study/scenarios.md:349-350`)**:
  - Line `349` adds the new post-tool row:
    ```markdown
    | dataflow queries (`mps_mcp_query_dataflow`, `references/analysis-tools/dataflow-queries.md`) | S16 (`PRINT_PROGRAM`), S14 (`REACHING_WRITES` / `REACHING_READS`, read-only) | S13 | builder failures, custom analyzers (no cell) |
    ```
  - Line `350` immediately below it still retains the pre-tool row from before `mps_mcp_query_dataflow` was implemented:
    ```markdown
    | dataflow analysis results (reachability, reaching definitions / reads) | S13 (reachability through the checker), S14 (def-use questions; no tool answers them yet) | | |
    ```
    "no tool answers them yet" directly contradicts line `349`.
- **Stale pre-tool text in `### By scenario` for `S13` and `S14` (`plugins/mcp-tools/study/scenarios.md:233-253`)**:
  - `S13` (lines `233-237`): still states `Run to verify: mps-aspect-dataflow (only cell)` (whereas `By skill` at line `323` now lists both `S13` and `S16`), calls `S13` `the baseline for a future mps_mcp_query_dataflow PRINT_PROGRAM`, and lists only `DF_builder_prints`, `M_makes`, and `DF_console_runs` (omitting `DF_program_prints` / `DF_queries`).
  - `S13` isolation note (line `241`): states `No other cell uses Kaja.` — no longer true now that `S16` uses `kaja-dataflow-2` (`S16` at line `297` notes `Isolation: as S13 (Kaja module ids; restart MPS before every S16 run; never next to S13's fixture)`).
  - `S14` (lines `250-252`): still states `Run to verify: nothing in today's catalog. This is the tool-free baseline for a future mps_mcp_query_dataflow REACHING_WRITES / REACHING_READS and its skill page.` and only lists `DF_console_runs` under process signals (omitting `DF_reaching_queries` / `DF_queries`), contradicting line `349`.
- **Missing `S16` in `scenarios.md` range/restart lists**:
  - Line `340` (`mps-project-management` → `Not this`): says `observer opens for S1–S9 and S11–S15 do not measure this skill` (missing `S16`).
  - Line `385` (`### If the request is "run evals for my skill change"` step 3): says `S13 needs a restart before every run (it builds the Kaja sample).` without mentioning `S16` (whereas `SKILL.md:163` lists `S11, S12, S13 and S16`).

---

## 2. Missing `S16` (and `S4` Fixture Mismatch) in `skill-optimization-study/references/scenarios.md`

Both `.agents/skills/skill-optimization-study/` and `.claude/skills/skill-optimization-study/` are byte-identical to each other (so `SkillCatalogReplicationTest` passes), and `SKILL.md` (`:147, :157, :163`) was updated for `S1..S16` and `kaja-dataflow-2`. However, `references/scenarios.md` in both skill copies stopped at `S15`:

- **Missing `kaja-dataflow-2` / `S16` in fixture list (`references/scenarios.md:8-16`)**: lists `recipes-misgen` (`S15`), `kaja-dataflow` (`S13`), and `flow-java` (`S14`), but omits `kaja-dataflow-2` (`S16`).
- **Missing `S16` row in the scenario table (`references/scenarios.md:18-36`)**: table ends at `S15`.
- **Stale range references (`references/scenarios.md:53, :112`)**: still say `for S1–S15` and `S1–S9 and S11–S15` instead of `S1–S16` and `S11–S16`.
- **`S4` fixture mismatch (`references/scenarios.md:12, :23`)**: line `12` says `recipes-full` is `for S5/S6` and line `23` lists `S4`'s fixture as `recipes`, whereas `plugins/mcp-tools/study/scenarios.md:84-86`, `plugins/mcp-tools/study/fixtures/README.md:22`, and `plugins/mcp-tools/study/scenarios/S4/done_criteria.md:3` specify `recipes-full` for `S4`.

---

## 3. Stale Pre-Tool Wording in `S13`, `S14`, `dataflow-exposure-assessment.md`, and `families.py`

- **`plugins/mcp-tools/study/scenarios/S13/done_criteria.md` (`:13-16, :91-109`)**:
  - Lines `14-16` still say: `The only feedback an agent gets today is the presence or absence of a checker message after a rebuild. It never sees the program the builder emitted. This is the tool-free baseline for a later mps_mcp_query_dataflow PRINT_PROGRAM.`
  - Its `## Process signals` section (`P1`–`P5`) does not mention `DF_program_prints` / `DF_queries` (unlike `S16/done_criteria.md:94-96`, which has `P2 program read. DF_program_prints`).
- **`plugins/mcp-tools/study/scenarios/S14/done_criteria.md` (`:21-24, :100-110`)**:
  - Lines `22-24` still say: `Today an agent answers them by simulating the method in its head. This is the tool-free baseline for a later mps_mcp_query_dataflow REACHING_WRITES / REACHING_READS.`
  - Its `## Process signals` section (`P1`–`P3`) only mentions `DF_console_runs` and `print_node` / `FIND_USAGES`, without mentioning `DF_reaching_queries` / `DF_queries` (even though round 41 ran `S14` with the tool and recorded `DF_reaching_queries = 2`).
- **`plugins/mcp-tools/study/dataflow-exposure-assessment.md` (`:28`)**:
  - The `## Bottom line` bullet at line `28` still says `The study has no dataflow scenario`, while `## Recommendation` (`:310-436`) in the same file documents `S13`, `S14`, `S16`, and the round 40–41 runs.
- **`plugins/mcp-tools/study/scripts/families.py` (`:104`)**:
  - The module docstring says `DF_queries, DF_program_prints and DF_reaching_queries count the tool that exposes it (S13: PRINT_PROGRAM, S14: the reaching operations)` without mentioning `S16` alongside `S13`.

---

## 4. Minor Inconsistencies in `S15`, `docs-defects.md`, and `COVERAGE_MATRIX.md`

- **65-character SHA-256 in `plugins/mcp-tools/study/scenarios/S15/DEFECT.md:8-9`**:
  - `sha256 ec971bc6005223ae608ae37b30851aabdc2f0eb0710b84a299b3448cc8709199` is **65 hex characters** long (one extra hex digit, likely a doubled trailing `9`) instead of 64.
- **Tarball path wording in `plugins/mcp-tools/study/fixtures/README.md:24` vs `S15/DEFECT.md:8`**:
  - `fixtures/README.md:24` ends with `Current tarball: fixtures/recipes-misgen.tar.gz (2026-10-23, sha256 in DEFECT.md)`, which looks like a repo-relative path under `study/fixtures/`, whereas `S15/DEFECT.md:8` gives `~/MPSProjects/mcp-study/fixtures/recipes-misgen.tar.gz`.
- **`D80` recurrence watch in `plugins/mcp-tools/study/docs-defects.md:16`**:
  - Lists shared-fixture cells as `any two of S3–S7/S9 on recipes*, S2/S8 on statechart`, omitting `S15` on `recipes*` (as well as `S11`/`S12` on `expressions` and `S13`/`S16` on `kaja-dataflow*`).
- **`plugins/mcp-tools/test_scenarios/MPS_MCP_FULL_TEST_SCENARIO/COVERAGE_MATRIX.md:9-14`**:
  - Claims `## A. MPS MCP tools (mps_mcp_*) — all 42` based on `@McpTool` methods in `META-INF/plugin.xml` (adding row `42` for `query_dataflow`), while 3 other registered `@McpTool` methods (`mps_mcp_generation`, `mps_mcp_run_migrations`, `mps_mcp_read_ide_log` — 45 total `@McpTool` methods across the 17 toolsets) are not listed in the table.

---

## 5. Unused Pieces & Leftovers Near the Study Files

- **All files inside `plugins/mcp-tools/study/` are active and referenced**:
  - `S13/worker_prompt.md` and `S16/worker_prompt.md` are byte-identical (`c6149a37265b…`), which is **intentional** and documented in `S16/done_criteria.md:3` (the cells differ only in the fixture `kaja-dataflow` vs `kaja-dataflow-2`).
  - All scenario sidecar files (`S3/recipes.csv`, `S5/PROBLEMS.md`, `S5/PROBLEMS.log`, `S14/engine_probe.txt`, `S15/DEFECT.md`, `S15/DEFECT.log`) are referenced by their `done_criteria.md` and `fixtures/README.md`.
  - Every script in `plugins/mcp-tools/study/scripts/` is either covered by a unit test in `study/scripts/tests/` or actively used by the harness and documented in `references/harness.md`.
- **Empty directory tree under `.junie/skills/`**:
  - `.junie/skills/` contains 35+ empty skill/reference directories (including an obsolete `.junie/skills/mps-bugfix/references/` folder from before `mps-bugfix` was renamed to `bugfix-workflow`) with no files inside them.
- **Completed session plan `.junie/plans/study-scenario-s15-generation-debugging.md`**:
  - Leftover plan file from earlier today for `S15` (note that its draft text still uses the pre-pin names `RecipeToClass` and `generator/template/main@generator.mps`, whereas the actual `S15` files were properly pinned to `map Recipe` / `RecipeClass` and `mcp.study.recipes.generator.templates@generator.mps`).
