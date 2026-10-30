# Skill Script Automation Study — Round 3 (2026-09-17)

Status: measurement round complete. Scope on request: **S1** (greenfield DSL) and **S3** (bulk
authoring) on **sonnet only** = 2 cells, plus one SMOKE harness check. Both cells **PASS**.
Measured against the **current** skills and tool descriptions, i.e. after the round-2 remedies
N1/N2/N4/N6 and the post-round-2 commits (`Reject invalid MCP search scopes and mutation inputs`,
`Treat null MCP string parameters as absent`).

Baselines of record: `HOTSPOT_REPORT.md` §1 (2026-09-15, "baseline") and `HOTSPOT_REPORT_round2.md`
§1 (2026-09-16, "round 2"). All three rounds were **re-analysed from their raw transcripts with the
same `analyze_runs.py`**, and the comparison below is restricted to the two sonnet cells, so
baseline/round-2 figures quoted here are sonnet-only and will not match the 4-cell tables in the
earlier reports.

Comparability verified before any run: `promptSha256` for S1, S3 and SMOKE is **byte-identical**
across all three rounds. Evidence: `runs-r3/*-worker.jsonl`, `runs-r3/*-server.jsonl` (call log on),
`runs-r3/*.eval.md` (read-only Opus evaluators), `runs-r3/*-install.json`. Every claim cites
`run:step`.

## 0. What changed in the harness before this round

Fixtures no longer ship the thing under measurement. Both round-2 tarballs carried **716**
doc-surface entries each (`.agents/skills`, `.claude/skills`, `AGENTS.md`, `CLAUDE.md`), so every
round silently measured whatever catalog was bundled when the tarball was built — defect D16, and
the reason round 2 needed a manual refresh as a precondition. Now:

- fixtures exclude the doc surface entirely (`fixtures/README.md`, verified: 0 entries in both);
- `run_worker.sh` installs the **live** catalog into each run's project immediately before the run,
  through the product's own `mps_mcp_initialize_project_for_agents`
  (`scripts/install_skills.py`), and records `skillsSha256` in the meta beside `promptSha256`
  (the scenario) and `inventorySha256` (the tool surface);
- both round-3 runs and the SMOKE check report `removed: []` (the fixture shipped nothing),
  `installedSkillCount: 31`, both guides written, and the **same** `skillsSha256`
  `f60f2a50967c…` — so the two cells are known to have read identical documentation.

Recorded as D19 (closed). See lesson 24.

Second asset change: S3's prompt has demanded *"exactly 40 Recipe roots plus the Cookbook"* since
the baseline while the `recipes` fixture already held 3 Recipes — a contradiction that blocked both
round-2 sonnet runs (round-2 §5.2, remedy N5). Round 3 fixed the **fixture**, not the prompt: the
3 S1 sample `Recipe` roots and the S1 `Cookbook` were deleted from `mcp.study.kitchen.samples`
(the 3 `Ingredient` roots remain), so `promptSha256` stays identical to both earlier rounds. See
lesson 25.

## 1. Metrics: baseline → round 2 → round 3 (sonnet cells)

| metric | S1-sonnet | S3-sonnet |
|---|---|---|
| task pass | True → True → **True** | True¹ → **False** (blocked) → **True** |
| turns | 148 → 115 → **118** | 28 → 17 → **31** |
| wall-clock s | 1,322 → 952 → **905** | 229 → 84 → **128** |
| cost USD | 5.83 → 7.87 → **4.24** | 1.13 → 0.37 → **0.65** |
| cache-read tokens | 27.50 M → 30.79 M → **18.56 M** | 4.00 M → 1.29 M → **3.16 M** |
| cache-write tokens | 920,586 → 1,049,803 → **958,807** | 322,494 → 131,266 → **181,164** |
| output tokens | 1,868 → 2,000 → **1,235** | 240 → 162 → **271** |
| tool calls | 135 → 161 → **106** | 26 → 14 → **28** |
| MCP calls | 71 → 107 → **62** | 11 → 5 → **16** |
| Bash | 3 → 15 → **3** | 4 → 2 → **5** |
| skill-file reads | 9 → 21 → **14** | 3 → 4 → **3** |
| skill bytes read | 160,079 → 182,995 → **188,927** | 17,947 → 9,731 → **7,668** |
| temp-file envelopes | 23 → 2 → **0** | 4 → 0 → **3** |
| Bash reads of temp results | 0 → 2 → **0** | 0 → 0 → **1** |
| Bash blueprint writes | 0 → 3 → **0** | 2 → 0 → **1** |
| MCP input chars | 26,384 → 27,103 → **17,191** | 2,436 → 506 → **7,975** |
| tool-result bytes | 444,385 → 370,268 → **317,934** | 183,320 → 20,835 → **41,921** |
| error envelopes | 5 → 6 → **3** | 1 → 1 → **2** |
| error→retry pairs | 2 → 4 → **3** | 0 → 1 → **0** |
| validation loops (≥3 / root) | 1 → 1 → **0** | 0 → 0 → **0** |
| server-logged calls | 71 → 105 → **60** | 10 → 4 → **15** |
| server ms total | 4,478 → 26,733 → **15,910** | 175 → 68 → **191** |

¹ The baseline report's table printed `-` for S3-sonnet, but its meta records an Opus evaluation of
2026-09-15 with **4/4 PASS** (48 roots; it duplicated the two name-colliding fixture recipes). The
published `-` was a bookkeeping omission; the cell was measured and it passed.

Totals over the two sonnet cells:

| metric | baseline | round 2 | round 3 | r3 vs baseline | r3 vs round 2 |
|---|---|---|---|---|---|
| turns | 176 | 132 | 149 | −15.3 % | +12.9 % |
| wall-clock s | 1,551 | 1,036 | 1,033 | −33.4 % | −0.3 % |
| cache-read tokens | 31.50 M | 32.08 M | 21.72 M | **−31.1 %** | **−32.3 %** |
| cost USD | 6.96 | 8.23 | 4.89 | −29.6 % | −40.5 % |
| tool calls | 161 | 175 | 134 | −16.8 % | −23.4 % |
| MCP calls | 82 | 112 | 78 | −4.9 % | −30.4 % |
| temp-file envelopes | 27 | 2 | 3 | **−88.9 %** | +50 % (2→3) |
| tool-result bytes | 627,705 | 391,103 | 359,855 | −42.7 % | −8.0 % |
| errors / retries | 6 / 2 | 7 / 5 | 5 / 3 | −16.7 % / +50 % | −28.6 % / −40.0 % |
| skill bytes read | 178,026 | 192,726 | 196,595 | **+10.4 %** | +2.0 % |

Round 2's turn total is lower only because its S3 cell stopped without doing the work; on the one
cell where all three rounds did the same job (S1), round 3 is the cheapest ever measured on every
axis except turns, where it is within 3 of round 2 and 30 below the baseline.

Fixed per-turn context floor, recomputed identically for all three rounds from the SMOKE `result`
event (all three SMOKEs are 3-turn): **97,830 → 96,955 → 97,052 tokens**. Round 2's published
"129,874 → 128,814" came from summing *per-message* usage, which scales with the number of
assistant messages rather than measuring a floor; on that method round 3 reads 161,364 purely
because its SMOKE made two tool calls instead of one. The result-event figure is the comparable one
and it has not moved in three rounds. Tool inventory: **47 tools (38 `mps_mcp_*`)**, identical to
round 2, no tools added or removed and **no parameter changes**; six descriptions grew by 1,373 B
in total (`alter_nodes`, `get_concept_details`, `query_nodes`, `search_root_node_by_name`,
`update_module_facet`, `update_node`), which is invisible against a ~97 K floor.

### A/B verdict against the study's own thresholds
Success = ≥ 30 % fewer tool calls **and** ≥ 25 % fewer context tokens, with no drop in pass rate.

| cell | comparison | tool calls | context tokens | pass | verdict |
|---|---|---|---|---|---|
| S1-sonnet | vs round 2 | −34.2 % | −39.7 % | held | **passes** |
| S1-sonnet | vs baseline | −21.5 % | −32.5 % | held | fails (tool calls) |
| S3-sonnet | vs baseline | +7.7 % | −21.1 % | held | fails (both) |
| S3-sonnet | vs round 2 | — | — | **recovered** (False → True) | n/a (round 2 did no work) |
| aggregate | vs baseline | −16.8 % | −31.1 % | 2/2 → 2/2 | context threshold met, call threshold not |

Read plainly: **round 3 reverses round 2's sonnet regression completely and then some**, but it
does not clear the call-count threshold against the original baseline, because S3 is now flat and
S1's residual cost has moved out of the tool layer and into documentation reading (§2.3, §2.9).

## 2. Did the ranked hotspots move?

| # | Baseline hotspot (family) | Baseline (sonnet cells) | Round 3 | Verdict |
|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 27 envelopes; `get_project_structure → Read` 8×, `print_node → Read` 8×, `get_concept_details → Read` 6× | **3 envelopes, and every `… → Read` chain is gone** (0 occurrences of all three). Payload sizes confirm inlining rather than luck: `print_node` avg result 104 B → **12,463 B**, `get_concept_details` 200 B → **4,849 B**, `get_project_structure` 103 B → **1,868 B** | **stays fixed (R1)** |
| 2 | **C — per-root validation after a clean model-level check** | `check → check` 50×, trigram 45× across the 4 baseline runs; 1 validation loop in sonnet S1 | `check → check` 6×, trigram 3×, **validation_loops 0**. Inspection at `S1-sonnet-1:86-90` shows five calls that are *one per aspect model* with `perRoot:true`, each exhaustive — legitimate coverage, not re-checking. S3 validates the whole model in **1** call and quotes `rootsChecked: 44` | **stays fixed (R2)**; residue is a new, smaller family — see §2.8 |
| 3 | **D — skill reference reads before an MCP call** | 12 reads / 178 KB; `referent-constraints.md` read **twice** in one run | 17 reads / **196.6 KB**. The re-read pathology is **gone** — round-3 S1 touched **14 distinct files and re-read none** (baseline 8 distinct of 9; round 2 18 of 23, `referent-constraints.md` 4×). But total bytes are the **highest of the three rounds** | **pathology fixed, volume worse — now the #1 residual cost** |
| 4 | **B′ — ad-hoc Python for result shaping / CSV→blueprint** | 7 Bash calls, tracebacks in the opus cells | 8 Bash calls, **0 tracebacks**; S3 used the shipped `table_to_bulk_insert.py` and `mps_dump.py` rather than writing its own | **stays fixed (R5)** |
| 5 | **B — blueprint file → insert** | `Write → insert` 3×; response larger than input | `Write → insert` 3×, `insert → insert` 8×; `insert_root_node_from_json` avg result **1,056 B** (baseline 4,352 B). Blueprint authoring itself unchanged, as designed | **stays fixed for response bloat (R4)** |
| 6 | **Discovery refinement — `get_concept_details` re-called for a concept the previous result revealed** | not in the sonnet top-12 | `get_concept_details → get_concept_details` **5×** (`S1-sonnet-1:43-46`). `includeChildRoleConcepts` (R7) **still 0 calls in any run, in any round** | **not moved; R7 remains dead weight** (round-2 N8 stands) |
| 7 | **Guessable-but-undocumented literals and asymmetries** | 4 error→retry pairs | 3 retries, of which **1** is this family: `search_concepts` rejects `query`, requires `searchTexts` (`S1-sonnet-1:56-58`, costing error + `ToolSearch` + retry). Round-2's `conceptReference`/`conceptRefs` (D14) reappeared in the *evaluator's* session | **family persists, new members each round** |
| 8 | `ToolSearch` schema fetches | 15 (S1) + 2 (S3) | 12 (S1) + 2 (S3) | **not addressable by this plugin** (unchanged) |
| 9 | **Round 2's §2.7: rediscovering that MPS references are single-valued** | round 2: ~41 tool calls, `UPDATE_CONCEPT_REFERENCE → UPDATE_CONCEPT_REFERENCE` 4×, 8 calls to that operation | **Eliminated.** `RecipeRef`/`IngredientRef` wrappers appear in the run's **first** `CREATE_CONCEPTS` call (`S1-sonnet-1:15`), designed in up front; zero `UPDATE_CONCEPT_REFERENCE` calls; no scratch-concept experiment | **fixed (N1 docs + N2 rejection)** — the single biggest win of this round |

### 2.8 New hotspot: counting by concept costs one call per concept, three of them via temp files
`S3-sonnet-1:23-27` — five consecutive `query_nodes FIND_INSTANCES` calls, one per concept
(`Recipe`, `Cookbook`, `Step`, `RecipeRef`, `Ingredient`), for no purpose other than *root counts
per concept*, which the prompt's "done when" asks for. Three of the five exceeded the inline
threshold and returned temp-file paths (`{"ok":true,"data":"/var/folders/…/mps-node-….json"}`) —
**all three of round-3's temp-file envelopes come from this one chain** — and the worker then
shelled out to `mps_dump.py` to reduce full node dumps to integers.

Determinism **1.0**: the concept list comes from the previous structure dump and nothing about the
next call requires judgment. This is the cleanest S-tier candidate in the round.

### 2.9 New hotspot: reference fan-out within a single skill
Round-3 S1 read **five** separate files from `mps-model-manipulation/references/`
(`collections-catalog.md`, `foreach-statements.md`, `dot-expression-basics.md`,
`property-and-mutation-ops.md`, `variable-declarations.md`) to author one behavior method and one
checking rule. R6's jump tables stopped the *re-reading*, but they did not stop a worker walking a
skill's whole reference set breadth-first. With the mechanical round trips gone this is now the
largest single consumer of context in the greenfield cell: 188.9 KB against 62 MCP calls.

### 2.10 Still unfixed and now the most frequent error: missing `projectPath`
`S1-sonnet-1:11-13` — two consecutive `alter_structure CREATE_ENUM` calls rejected with *"Unable to
determine the target project…"*, then the same two calls repeated verbatim with `projectPath`
added. Two wasted turns, 488 B of error text each, and the worker's own comment is *"I need to pass
`projectPath` explicitly on this tool too."* This is round-2's D4/D18 (remedy N3), unactioned. It is
now **2 of round 3's 5 error envelopes**, and it also hit the observer twice in this round.

## 3. Hypotheses

| # | Hypothesis | Round-3 verdict |
|---|---|---|
| H1 | Blueprint authoring is a main cost and retry source | **Confirmed, and now cheaper.** MCP input chars fell 26,384 → 17,191 on S1; S3 rose (506 → 7,975) only because round-2 S3 never authored anything. Zero blueprint-shape errors in either cell |
| H2 | structure → make → verify → scaffold chain | **Still not a hotspot.** `scaffold_editor → scaffold_editor` 5×, no stale-runtime retries |
| H3 | Bulk creation via many near-identical calls | **Refuted again.** 40 recipes in 5 `insert_root_node_from_json` calls |
| H4 | Discovery reads with huge results | **Fixed and staying fixed** (hotspot 1) |
| H5 | validate → fix → validate loops | **Fixed.** `validation_loops` 0 in both cells, for the first time |
| H6 | Reference wiring after bulk insert | **Refuted again.** All 105 `RecipeRef` wrappers resolved by name inside the bulk inserts; 0 broken, 0 dynamic |
| H7 | Skill reading is a large context consumer | **Confirmed, and now the dominant residual** — the only metric that is worse than the baseline (+10.4 %). See §2.3, §2.9 |
| H8 | Stale runtime | **Not observed** (0 `reload_all`; the 1 `stale_incidents` hit is a text match in a description, as in every round) |
| H10 | Fixed per-turn context dominates | **Confirmed, unchanged** — 97,052 tokens, flat across three rounds |
| H11 | With the mechanical round trips gone, variance moves to knowledge and judgment (new in round 2) | **Confirmed, and the lever works.** Round 2 lost ~41 calls to one missing fact; round 3, with that one paragraph shipped, shows no equivalent gap and S1 is 34 % cheaper in calls. A documentation fix removed the largest measured variance in the study |

New: **H12 — verification, not authoring, is now the marginal cost of a bulk task.** Of S3's 28
tool calls, 5 create the content and **12** (5 `FIND_INSTANCES` + 2 `check` + 2
`get_project_structure` + 3 Bash reductions) exist only to prove the content is right. §2.8 is the
actionable part of that.

## 4. Defects

**Confirmed fixed by the round-2 remedies** (all baseline/round-2 instances absent here):
D13 (`multiple` on a reference silently ignored — N1 docs + N2 rejection, §2.9 hotspot 9);
D15 (`childJson = null` — the description now says *"express that null by OMITTING the parameter"*);
D16 (catalog propagated to the checkout; `diff -rq` clean);
D5/D12 (enum defaults — `print_node` and `get_project_structure` now emit `isDefault: true` and
`enumerationDefault`, observed directly at `S3-sonnet-1` evaluation).

**Persisting:**

| # | Defect | Round-3 evidence |
|---|---|---|
| D18/D4 | Missing `projectPath` is still the most frequent error | `S1-sonnet-1:11-13` (2 of 5 error envelopes); observer hit twice |
| D14 | `get_concept_details` rejects the singular `conceptReference` that `print_node`/`scaffold_editor` use | S1 evaluator session |
| R7 | `includeChildRoleConcepts` unused for a third round | 0 calls in 14 runs across 3 rounds |

**New (recorded in `docs-defects.md` as D20–D25):**

| # | Where | Defect |
|---|---|---|
| D20 | `get_concept_details` | `conceptRefs` given as fully-qualified concept names — the exact strings the tool reports as `qualifiedName` — raises an unhandled `Index -1 out of bounds for length 0` instead of resolving them or returning `ok:false`. `languageRefs` works |
| D21 | `scenarios/S1/done_criteria.md` | Criterion 2 names `query_structure`/`search_concepts` for "list a language's concepts", which neither can do (`query_structure` has no such operation; `search_concepts` hard-requires `searchTexts`). Observer asset |
| D22 | `get_concept_details` | An enumeration cannot be resolved by qualified name (`…structure.Difficulty` → NOT_FOUND, suggesting the unrelated `…structure.Recipe`); the declared default is reachable only via an owning concept's `properties[].enumerationDefault` — exactly the lookup D5's pitfall forces |
| D23 | `print_node` (JSON) | JSON output is shallow (children are `{name, reference}` stubs, no depth parameter), so verifying step properties costs one call per step; `format:"PLAIN TEXT"` does a whole root in one call (~10× cheaper) and the docs do not name it as the verification path |
| D24 | `print_node` PLAIN TEXT | An **empty** `0..n` role renders as `see also: << ... >>`, which reads as a one-element list. Undocumented placeholder |
| D25 | temp-file envelopes | The file named by `data` contains a complete `{"ok":…,"data":…}` envelope, not the bare payload, so splicing it in as `data` yields `data.data`. Undocumented; cost one debugging round trip in the observer's own tooling |

## 5. Validity

- **Answer-key contamination is resolved.** Round-2 §5.1 found the shipped examples were
  byte-identical to S3's input. N4 landed: the shipped assets are now `courses.csv` /
  `courses.map.json` / `get_concept_details_courses.json`, and round-3 S3 read
  `table_to_bulk_insert.py` and `json-format.md` only. **S1 and S3 are blind measurements again.**
- **Doc surface is pinned.** Both cells carry `skillsSha256 f60f2a50967c…`, installed from the
  running plugin at run time (§0), so "the current skills" is a verified fact, not an assumption.
- **The S3 comparison is three-way asymmetric.** Baseline S3-sonnet produced 48 roots (it duplicated
  the two colliding fixture names); round 2 produced nothing; round 3 produced 44 roots against an
  emptied samples model. All three created 40 recipes and a cookbook, so the *work* is comparable,
  but the fixture start state differs and the round-3 number should not be read as a regression
  against a like-for-like baseline.
- **One project open per run**, verified before each launch with `list_open_projects`
  (`projectCount: 1`). The `MPS` checkout project was open beside the golden project during
  preflight and was closed before the first run.
- **n = 1 per cell, sonnet only.** Lesson 12 (model variance is large on identical tasks) applies
  with full force; single-cell deltas under ~15 % should not be treated as signal.
- MPS was restarted once before the round to enable the call log; the log appends and all slices
  were captured by byte offset. `server_calls` (60/15) and `mps_calls` (62/16) differ by exactly the
  calls rejected before dispatch — the two missing-`projectPath` rejections in S1 and one in S3 —
  which is the expected cross-check.

## 6. Remedies

Ordered by estimated saving. Round-2 remedies that are still open are restated with their round-3
evidence rather than renumbered.

| # | Remedy | Tier | Hotspot / defect | Contract | Est. saving | Risk |
|---|---|---|---|---|---|---|
| M1 | **Batch and summarise instance counting.** `query_nodes FIND_INSTANCES` should accept a list of `conceptRefs` and a `detail:"count"` (or `countOnly:true`) projection returning `{concept, count}` per entry. Today one concept per call, and a count request returns full node envelopes that overflow into temp files | **S** | §2.8 | in: `conceptRefs[]`, `detail`; out: count rows | 4 of 5 calls in S3, all 3 temp-file envelopes in the round, and the Bash reduction that follows | low; additive |
| M2 | **Trim the greenfield reading list.** `mps-model-manipulation/SKILL.md` needs a "for a simple behavior method / checking rule, read only X" routing line, and the aspect skills that link into it should name one file, not a directory. Round-3 S1 read 5 of its reference files for one method and one rule | **D** → T | §2.9 / hotspot 3 | docs only | ~100 KB of the 189 KB read per greenfield run; the only metric now worse than baseline | none |
| M3 | **Fix `projectPath` (round-2 N3, unactioned).** (a) reconcile the contradictory instruction in `CLAUDE.md`/`AGENTS.md` vs `AGENTS_template.md`; (b) investigate whether a tool can opt out of the platform's `projectPath` routing — the resolution message lives in the platform, not in `mcp-tools`, so this may need an upstream issue | **D** + **S (upstream)** | D18/D4, §2.10 | docs + routing | 2 turns per greenfield run, every run, every round | (b) may not be locally actionable |
| M4 | **Name the verification path.** Document in `analysis-tools.md` that `print_node format:"PLAIN TEXT"` renders a whole root in one call while JSON is shallow, and document the empty-collection placeholder `<< ... >>` | **D** | D23, D24 | two doc paragraphs | one call per child when verifying; removes a silent mis-parse | none |
| M5 | **Accept or reject FQNs consistently.** `get_concept_details` should resolve a fully-qualified concept name in `conceptRefs` (it prints that exact string as `qualifiedName`) instead of throwing `Index -1 out of bounds`, should accept or explicitly reject `conceptReference`, and should resolve enumerations by qualified name | **S** | D20, D14, D22 | error text + resolution | 1–2 retries per run; removes an unhandled exception | low |
| M6 | **Parameter-name consistency sweep.** `search_concepts` takes `searchTexts` where every neighbouring tool takes `query`; `get_concept_details` takes `conceptRefs` where `print_node` takes `conceptReference`. Either alias the near-miss names or make the rejection name the correct key | **S** | hotspot 7 | aliases or better errors | ~3 turns per run; this family has produced new members in all three rounds | low |
| M7 | **Document the temp-file payload shape** (`data` names a file containing a *complete envelope*) in `analysis-tools.md`, or emit the bare payload | **D** | D25 | one sentence | one debugging round trip per new consumer | none |
| M8 | **Delete `includeChildRoleConcepts` (R7).** Zero calls in 14 runs over three rounds; it is pure schema cost. Round-2 N8 proposed this; round 3 is the third confirmation | **S** | hotspot 6 | remove the parameter | small, but it is dead weight | none |
| M9 | **Fix S1 done-criterion 2** to name tools that can actually list a language's concepts | study asset | D21 | one line | removes evaluator friction | none |

Not proposed: anything aimed at hotspots 1, 2, 4, 5 or 9 — all fixed and holding. No P-on (online
chain) script is justified: M1 does the same work in one server call.

## 7. Artefacts

`~/MPSProjects/mcp-study/runs-r3/` — 3 transcripts + server slices + metas + install results +
2 eval reports + `analysis/` (metrics.csv, tools.json, chains.json, errors.json, hotspots.md);
`inventory.json` (sha `3e48e30b2f1b…`); catalog `skillsSha256 f60f2a50967c…`.
Fixtures (not in git): `~/MPSProjects/mcp-study/fixtures-r3/{empty-project,recipes}.tar.gz`,
both doc-surface-free, `recipes` carrying the emptied samples model.
Run projects: `~/MPSProjects/mcp-study/proj-r3/{S1,S3}-sonnet-1`.
Round-2 evidence untouched at `~/MPSProjects/mcp-study/runs/`; baseline at
`~/MPSProjects/mcp-study-baseline/runs/`.
