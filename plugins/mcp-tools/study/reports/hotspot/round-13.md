# Skill Script Automation Study — Round 13 (2026-09-25)

Status: measurement round complete. Scope on request: **S1** (greenfield DSL) and **S3** (40-recipe
bulk authoring) × **opus + sonnet** = 4 cells, plus one SMOKE per model. This is the same matrix as
the 2026-09 baseline of record (`HOTSPOT_REPORT.md`, 2026-09-15) and as round 12, so every cell has
two direct counterparts. No code or docs changes were made in this round. Nothing was committed or
pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r14/{SMOKE,S1,S3}-{opus,sonnet}-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `analysis/`. The directory suffix is `-r14` because `-r13` holds round 12.
Citations use `run:step`: the 1-based `tool_use` ordinal, as in `show_steps.py`.

## 0. Harness state

- **MPS**: 2026.1 EAP, build 261.25134, from this checkout.
- **Plugin freshness**: the MPS that was running at round start (pid 40562, started 09:03) predated
  D49 (`6f2e370ff7ac`, 10:11) and `80b2681a649c` (10:36). The observer ran `build_project` (green,
  0 problems), then `capture` → `calllog runs-r14/server-calllog.jsonl` → `shutdown` (closed the
  dev checkout) → `start` on a synthesized harness project → `wait` → SMOKE. The user approved the
  restart, knowing that three peer sessions were busy in the worktree.
- **One MPS for the round**: pid **84139**, the same `mpsPid` in all six metas.
- **Wrap-up**: `calllog` was cleared and MPS was restarted on the dev checkout (pid 2785).
  `ps` confirms that process carries no `-Dmps.mcp.calllog`.
- **Measured surface**:
  - `inventorySha256 328db937…`: 48 tools, 39 `mps_mcp_*`, descriptions 55,906 B (+61 B vs
    round 12), schemas 40,114 B (unchanged).
  - `skillsSha256 7704a175…`.
  - Both differ from round 12 (`e6b87321…` / `78064c75…`) and are identical on every run.
  - Content: HEAD `80b2681a649c` (D49 all-at-once missing-parameter disclosure, D51/D52 creator
    wrapping and feature-reference docs, D57, ADD CHILD occupant fix), **plus two uncommitted peer
    edits** that were in the tree at build time:
    - a one-line `expected` text in `JetBrainsMPSNodeMcpToolset.kt` (MOVE_NODE_TO_PARENT);
    - `mps-mcp-workflow/references/reference-formats/request-conventions.md` (+9/−5 lines).
    - Later peer edits (`AbstractOps.kt`, `McpToolInputSchemas.kt`, `tool-conventions.md`, …)
      appeared after the build and are **not** measured.
- **Prompts are frozen**: `promptSha256` `96376ae7` for S1 and `a922898b` for S3, the same as the
  baseline and round 12.
- **Fixtures**:
  - S1 ran on a synthesized empty project.
  - S3 ran on `fixtures-r12/recipes.tar.gz`, the same tarball as round 12, verified free of any
    agent doc surface. The baseline S3 fixture still held the S1 samples (lesson 22).
- **Harness checks**:
  - Contamination guard: exit 0.
  - Harness unit tests: 43/43 pass.
  - SMOKE: one MCP server; call-log slices of 1 line each.
  - `server_call_surplus` 0 on every run; `server_mps_calls` equals `mps_calls` in all four cells.

## 1. Task outcomes

All four cells **PASS**. Each was checked by an Opus evaluator with read-only tools only.

| cell | verdict | note |
|---|---|---|
| S1-opus-1 | PASS 6/6 | RecipeRef / IngredientRef wrappers for the 0..n references |
| S1-sonnet-1 | PASS 6/6 | same wrapper modelling |
| S3-opus-1 | PASS 4/4 | evaluator checked all 40 recipes; 65 seeAlso, 23 zero-minute warnings |
| S3-sonnet-1 | PASS 4/4 | evaluator checked all 40 recipes; 0 errors, 23 warnings = the 23 zero-minute CSV steps |

With the D57 wording, both S1 evaluators treated the absence of `descriptorStatus` as direct
evidence. Neither reported criterion 6 as inferred, as the round-12 evaluators had.

## 2. Metrics: baseline → round 12 → **round 13**

| metric | S1-opus | S1-sonnet | S3-opus | S3-sonnet |
|---|---|---|---|---|
| task pass | T → T → **T** | T → T → **T** | T → T → **T** | – → T → **T** |
| turns | 181 → 87 → **100** | 148 → 157 → **149** | 100 → 23 → **21** | 28 → 31 → **33** |
| wall-clock s | 1,395 → 475 → **439** | 1,322 → 1,254 → **1,196** | 740 → 103 → **80** | 229 → 122 → **138** |
| cost USD | 14.96 → 3.21 → **3.59** | 5.83 → 5.11 → **5.38** | 5.55 → 0.89 → **0.82** | 1.13 → 0.74 → **0.82** |
| cache-read tokens | 27.06 M → 13.86 M → **13.49 M** | 27.50 M → 25.95 M → **26.22 M** | 13.56 M → 2.12 M → **1.74 M** | 4.00 M → 3.68 M → **3.81 M** |
| tool calls | 173 → 85 → **97** | 135 → 149 → **138** | 97 → 21 → **19** | 26 → 28 → **31** |
| MCP calls | 90 → 62 → **63** | 71 → 75 → **73** | 68 → 13 → **10** | 11 → 11 → **11** |
| Bash | 73 → 19 → **30** | 3 → 16 → **22** | 25 → 6 → **7** | 4 → 5 → **5** |
| skill-file reads | 24 → 13 → **16** | 9 → 36 → **36** | 3 → 2 → **3** | 3 → 9 → **13** |
| skill bytes read | 136,506 → 106,424 → **126,854** | 160,079 → 120,283 → **158,850** | 17,443 → 14,990 → **15,455** | 17,947 → 33,999 → **68,395** |
| temp-file envelopes | 32 → 0 → **1** | 23 → 0 → **1** | 25 → 1 → **1** | 4 → 0 → **0** |
| tool-result bytes | 254,414 → 189,531 → **221,656** | 444,385 → 289,462 → **269,837** | 184,005 → 59,145 → **56,882** | 183,320 → 62,555 → **107,867** |
| error envelopes | 2 → 1 → **0** | 5 → 11 → **3** | 4 → 0 → **0** | 1 → 0 → **0** |
| error→retry pairs | 2 → 1 → **0** | 2 → 8 → **3** | 4 → 0 → **0** | 0 → 0 → **0** |
| validation loops | 1 → 0 → **0** | 1 → 0 → **0** | 0 → 0 → **0** | 0 → 0 → **0** |
| ToolSearch fetches | ~7 → 3 → **3** | ~7 → 12 → **14** | – → 1 → **1** | – → 2 → **1** |

Round totals:

| | wall-clock | cost | turns | tool calls |
|---|---|---|---|---|
| baseline | 3,686 s | $27.47 | 457 | 431 |
| round 12 | 1,954 s | $9.95 | 298 | 283 |
| **round 13** | **1,853 s** | **$10.62** | **303** | **285** |

**Reading.**
- **Against the baseline**, opus is −45 % turns / −76 % cost on S1 and −79 % / −85 % on S3.
  Sonnet is flat on turns (+1 % S1, +18 % S3) and cheaper (−8 % / −27 %).
- **Against round 12, the round is flat**: every per-cell delta is within the variance of n = 1
  (lesson 12). The one clear movement is **reliability in S1-sonnet**: 11 error envelopes / 8
  retries → **3 / 3**. The cost is unchanged because the saved turns were spent on skill reading
  (§4).
- **Fixed context (H10) holds**: cache-read per turn 135 K (S1-opus), 176 K (S1-sonnet).

## 3. Baseline hotspots: which moved

| # | baseline hotspot | baseline (4 runs) | round 12 | **round 13** | verdict |
|---|---|---|---|---|---|
| 1 | A: temp-file envelope → Read/Bash of the file | 84 envelopes, 45 follow-up reads | 1 | **3**: `S1-opus-1:30` (`get_concept_details` full, filtered by 1 Python call `:31`); `S1-sonnet-1:28` (an editor `print_node`, then `mps_dump.py` `:29–:31`); `S3-opus-1:16` (deliberate full dump for the CSV diff, `:17–:19`) | **stays eliminated**. Each envelope is a large, deliberate payload, which is what the threshold is for |
| 2 | C: per-root re-validation after a clean model check | 75 checks, ≈ 60 avoidable | 16 | **20** (12/4/2/2); 0 loops. S3: model-level `rootsChecked: 44` (`S3-opus-1:14`, `S3-sonnet-1:29`) + one single-root look at a warning | **stays eliminated**. S1-opus's 12 are incremental checks after each insert (`:39, :50, :63, :71`) and one per aspect model (`:78–:82`) |
| 3 | D: skill reference reads before an MCP call | 39 reads / 332 KB | 60 / 276 KB | **68 / 370 KB** (16/36/3/13) | **worse; the largest remaining hotspot**. Reads +74 % and bytes +11 % vs baseline. Opus 27 → 19; sonnet 12 → 49. See §4 |
| 4 | B′: ad-hoc Python for result shaping / CSV→blueprint | ~22 heredocs, 2 tracebacks | 19 Python calls, 0 tracebacks | **17** (7/3/4/3), **0 tracebacks** | **stays moved**. One self-caught script bug (`S3-opus-1:18`→`:19`, read `target` instead of `targetReference`) |
| 5 | B: blueprint file → bulk insert; response larger than input | 63 KB → 33 KB response; `/tmp` rejected | 44 KB → 5.8 KB | **44 KB → 5,662 B** summary for 40 roots (`S3-opus-1:12`, `S3-sonnet-1:25`); `/tmp/*.json` accepted (`S1-sonnet-1:66–:67`) | **stays eliminated** |
| 6 | Discovery refinement: `get_concept_details` re-called for a concept the previous result revealed | 3 chains of 2–3 hops per S1 run | S1-sonnet: 15 calls + two search chains (`:81–:86` D51 wrapper, `:99–:104`) | S1-opus 4; S1-sonnet **11** `get_concept_details` + **2** `search_concepts`, **no multi-hop chain** | **moved for sonnet too**. Caveat: the round-12 D51 chain did not recur because sonnet chose a different scope design (`where` closure over `rootsIncludingImported` + `ListScope` static call, `S1-sonnet-1:75`), not an anonymous class. The D51 doc fix was **not exercised**, so it is not credited |
| 7 | Guessable-but-undocumented literals / parameter asymmetries | 4 error→retry pairs | S1-sonnet: 6 distinct misses (1 turn each) | **2 misses, 1 turn each**: `S1-sonnet-1:52`→`:53` (stub-model `startingPoint` NOT_FOUND without `includeStubModules`; the error gives no hint) and `:122–:123`→`:124–:125` (`enumeration` for `enumerationRef`; parallel pair; the near-miss message named the key). `arg_validation_errors` 0 in all cells | **moved: frequency 6 → 2**. None of round 12's four keys recurred (`conceptRef`, `query`, MAKE `moduleReference`, plural `nodeReferences`). No D49 multi-key case arose, so D49 is not directly exercised |
| 8 | `ToolSearch` schema fetches | ~7 per run | 3 / 12 / 1 / 2 | **3 / 14 / 1 / 1** | harness overhead, not addressable by the plugin; sonnet batches worse |

**Summary.**
- **Still gone (fifth confirmation since round 2):** #1, #2, #5. #4 still produces no tracebacks.
- **Moved this round:** #7 (parameter misses 6 → 2, error envelopes 11 → 3 in S1-sonnet) and #6
  (no discovery chain). Both are n = 1, and #6 moved partly because of a different design choice.
- **Not moved, now the top hotspot:** #3 skill navigation. It grew in both sonnet cells and
  absorbed the turns #7 saved.

## 4. Where S1-sonnet's extra calls went

| phase | S1-sonnet-1 r13 | S1-opus-1 r13 | S1-sonnet-1 r12 |
|---|---|---|---|
| structure + editors | 1–31 (31) | 1–44 (44) | 1–34 (34) |
| **constraints** | **32–81 (50)** | 45–63 (19) | 35–93 (59) |
| typesystem | 82–98 (17) | 72–78 (7) | 109–125 (17) |
| behavior | 99–111 (13) | 64–71 (8) | 94–108 (15) |
| solution + samples | 112–138 (27) | 79–97 (19) | 126–149 (24) |

Constraints again account for most of the gap: 31 of 41 extra calls, about 5.5 M cache-read tokens.
Inside that phase, **26 of the 50 calls are skill reads or greps** (`:33–:50`, `:63–:65`, `:69–:70`):

- **Breadth before building.** `:33–:49` read 12 constraint and model-manipulation files, including
  `computed-sequences-blueprint.md` (13.7 KB), `dot-expression-basics.md` (26.7 KB) and
  `cross-model-filtered-scope.md`, for one property validator and one self-excluding scope.
- **Full-text search instead of an index.** `:36, :44, :48, :50` ran `grep -rn` under
  `mps-aspect-constraints/references/`; `:41` ran a **catalog-wide** `grep -rn "ancestor<"` over
  `.claude/skills/` (10.5 KB result). This is the D50 shape exactly: round 11 flagged the
  catalog-wide grep as new.
- **Re-reads ~20 steps later.** `:63, :65, :69, :70` `cat` four files that `:33, :35, :34, :40`
  had already read in full, immediately before writing each blueprint.
- **Opus comparison.** Opus read the same skill with 5 Bash calls (`S1-opus-1:45–46, :51–52, :54`),
  one of them a `grep -rn` (`:52`), and finished the aspect in 19 calls.

**S3-sonnet's doubled skill bytes (34 → 68 KB)** have a different cause:
- Before starting, it read four `mps-mcp-workflow` references (`:4–:7`, 21 KB) and
  `mps-node-editing/SKILL.md` (17.8 KB).
- Then it read `table_to_bulk_insert.py` **source** (`:17`, 12.9 KB) and both example files
  (`:18–:19`), instead of the usage block in `SKILL.md:154–161`.
- It then used the shipped script correctly the first time (`:22`, 183 children, 0 errors). R5
  works; the cost is reading the source rather than trusting the usage block.

**New small hotspot — `mps_dump.py shape` on the wrong dump kind.** `S1-sonnet-1:29` ran
`shape` on a `print_node` file. The script printed `{"concepts":0,"features":0,"lines":0}` and
exited 0. `:30` (`--help`) and `:31` (`node`) followed. That is 2 calls lost to a silent empty
result.

## 5. Hypotheses (update)

| # | round 12 | round 13 |
|---|---|---|
| H1 blueprint authoring | confirmed, shifted to concept-shape errors | **refuted as a retry source**: 0 blueprint-shape errors in 4 cells; every insert dry-run passed first time |
| H3 bulk | refuted | **refuted**: 2–3 inserts for 41 roots in both S3 runs |
| H4 discovery payloads | refuted | **refuted**: 3 deliberate envelopes |
| H5 validate loops | not observed | **not observed** |
| H6 ref wiring | refuted | **refuted**: name resolution wired 65 seeAlso + 40 cookbook refs |
| H7 skill reading | confirmed for sonnet greenfield | **confirmed, broadened**: sonnet greenfield (36 reads) and now sonnet bulk (13 reads / 68 KB) |
| H8 stale runtime | not observed | **not observed**: every `alter_nodes MAKE` returned `runtimeReady: true`. The only recovery signal is the documented clean make of `CREATE_CONCEPTS make:true` (`recoveryStage: "module-rebuild"`, `S1-opus-1:11`, `S1-sonnet-1:16`), which both workers trusted without a manual chain; no `reload_all` call |
| H10 fixed context | holds | **holds**: 135–176 K per turn |

## 6. Defect evidence (for `docs-defects.md`; not written there this round)

A peer session was editing `docs-defects.md` and `docs-defects-archive.md` during this round, so
these lines are recorded here for the owner to merge:

- **D50 (open), round-13 evidence**: `S1-sonnet-1:33–:70`: 26 skill reads/greps in the
  constraints phase, a catalog-wide `grep -rn` at `:41`, and 4 whole-file re-reads (`:63, :65,
  :69, :70` of `:33, :35, :34, :40`). The skill has not changed for D50 since round 12, and the
  result is the same, confirming that the defect is still open.
- **D56 (open)**: no instance this round, neither `concept`/`conceptName` nor `node`.
- **Candidate, not filed** (1 occurrence): the `get_project_structure` NOT_FOUND for a stub model
  gives no `includeStubModules` hint (`S1-sonnet-1:52`).
- **Candidate, not filed** (1 occurrence): `mps_dump.py shape` exits 0 with zero counts on a
  non-concept dump (`S1-sonnet-1:29`).
- **Round-12 R-d** (aliases `nodeReferences` / MAKE `moduleReference`) did not repeat. Drop it.

## 7. Remedy candidates for Gate 2 (none implemented)

| # | remedy | tier | evidence | est. saving | risk |
|---|---|---|---|---|---|
| R-a | **D50**: a directory-level, symptom-keyed index in `mps-aspect-constraints/SKILL.md` (one line per reference file), with a pattern-level row for "reference scope excluding the enclosing node" that names one file | D | `S1-sonnet-1:33–:70`; round 12 `:36–:64`; rounds 10–11 | ~15–20 calls per S1-sonnet (≈ 3 M tokens) | answer-key risk (lesson 19): keep the row pattern-level |
| R-e | `mps_dump.py`: when a subcommand finds no entries of its kind, exit non-zero and name the right subcommand ("no concept entries; this is a node dump — use `node`") | P-off | `S1-sonnet-1:29–:31` | 2 calls when hit | none; covered by the script drift test |
| R-f | `get_project_structure` NOT_FOUND: when the starting point matches a stub/library model, say "pass `includeStubModules: true`" | S | `S1-sonnet-1:52` | 1 turn when hit | none; wait for a repeat, like R-d |
| R-g | `mps-node-editing/SKILL.md`: state that `table_to_bulk_insert.py --help` and the usage block are enough and the source need not be read | D | `S3-sonnet-1:17–:19` | ~20 KB, 0–2 calls | low |

**Not proposed.** Nothing for #1, #2, #4, #5 (fixed). Nothing for ToolSearch (harness). No A/B
until R-a exists: it is the only candidate large enough to show over n = 1 variance.
