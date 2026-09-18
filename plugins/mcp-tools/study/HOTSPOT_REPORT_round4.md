# Skill Script Automation Study — Round 4 (2026-09-18)

Status: measurement round complete. Scope on request: **S1** (greenfield DSL) and **S3** (bulk
authoring) on **sonnet only** = 2 cells, plus one SMOKE harness check. Both cells **PASS**.
Measured against the **current** skills and tool descriptions, i.e. after the round-3 remedies that
landed in `ec7ee30a17a7 … ff94d507480c` (M1 batched instance counting, M5/M6 reference-key
spellings and enumeration routing, M8 removal of `includeChildRoleConcepts`, M3(a) `projectPath`
wording, M4/M7 `analysis-tools.md` paragraphs, plus the JSON-array wire-shape crash fix).

Baseline of record for the comparison the request asked for: `HOTSPOT_REPORT.md` §1
(2026-09-15, "baseline"). `HOTSPOT_REPORT_round3.md` §1 (2026-09-17) is quoted as the previous
round. All three rounds were **re-analysed from their raw transcripts with the same
`analyze_runs.py`** (`analysis-r4recompute/` beside the baseline and round-3 evidence), and the
comparison is restricted to the two sonnet cells, so baseline figures here are sonnet-only and do
not match the 4-cell table in `HOTSPOT_REPORT.md`.

Comparability verified before any run: `promptSha256` for S1 (`96376ae7495e…`), S3 and SMOKE is
**byte-identical** to rounds 1–3; the S3 fixture is round 3's (0 Recipe / 0 Cookbook / 3 Ingredient
start state, confirmed live before launch). Evidence: `runs-r4/*-worker.jsonl`,
`runs-r4/*-server.jsonl` (call log on), `runs-r4/*.eval.md` (read-only Opus evaluators),
`runs-r4/*-install.json`. Every claim cites `run:step`.

## 0. Harness state

- Call log on: `-Dmps.mcp.calllog=$USER_HOME$/MPSProjects/mcp-study/runs-r4/server-calllog.jsonl`
  added to the `MPS` run configuration for the round and **reverted at wrap-up** (lesson 13).
- Live catalog installed per run through the product's own
  `mps_mcp_initialize_project_for_agents`: both cells and the SMOKE report `removed: []`,
  `installedSkillCount: 31`, both guides written, and the **same** `skillsSha256`
  `eaa4eb2032d3…` (round 3 was `f60f2a50967c…`, so the documentation under measurement did move).
- Tool inventory `4a59fd5d171f…`: **47 tools (38 `mps_mcp_*`)**, none added or removed since
  round 3; descriptions 47,928 B, schemas 37,422 B (post-round-1 treatment was 46,093 B /
  36,600 B per `HOTSPOT_REPORT.md` §6, so the doc surface keeps growing slowly).
  `get_concept_details` lost
  `includeChildRoleConcepts` (M8 landed) and `query_nodes` gained the batched count projection.
- One project open per run, verified with `list_open_projects` (`projectCount: 1`) before each
  launch; the MPS checkout project was closed before run 1.
- Fixed per-turn context floor from the SMOKE `result` event, computed identically for every round:
  **97,836 → 97,058 → 97,026 tokens** (baseline → r3 → r4). Flat for the fourth time (H10).

## 1. Metrics: baseline → round 3 → round 4 (sonnet cells)

| metric | S1-sonnet | S3-sonnet |
|---|---|---|
| task pass | True → True → **True** | True → True → **True** |
| turns | 148 → 118 → **128** | 28 → 31 → **29** |
| wall-clock s | 1,322 → 905 → **1,305** | 229 → 128 → **157** |
| cost USD | 5.83 → 4.24 → **7.02** | 1.13 → 0.65 → **0.92** |
| cache-read tokens | 27.50 M → 18.56 M → **22.33 M** | 4.00 M → 3.16 M → **3.75 M** |
| cache-write tokens | 920,586 → 958,807 → **1,674,110** | 322,494 → 181,164 → **259,644** |
| output tokens | 1,868 → 1,235 → **1,485** | 240 → 271 → **240** |
| tool calls | 135 → 106 → **167** | 26 → 28 → **26** |
| MCP calls | 71 → 62 → **102** | 11 → 16 → **14** |
| Bash | 3 → 3 → **27** | 4 → 5 → **3** |
| skill-file reads | 9 → 14 → **34** | 3 → 3 → **3** |
| skill bytes read | 160,079 → 188,927 → **264,764** | 17,947 → 7,668 → **7,668** |
| temp-file envelopes | 23 → 0 → **0** | 4 → 3 → **1** |
| Bash reads of temp results | 0 → 0 → **0** | 0 → 1 → **0** |
| MCP input chars | 26,384 → 17,191 → **34,298** | 2,436 → 7,975 → **3,196** |
| tool-result bytes | 444,385 → 317,934 → **459,816** | 183,320 → 41,921 → **97,003** |
| error envelopes | 5 → 3 → **20** | 1 → 2 → **1** |
| error→retry pairs | 2 → 3 → **17** | 0 → 0 → **1** |
| validation loops (≥3 / root) | 1 → 0 → **0** | 0 → 0 → **0** |
| server-logged calls | 71 → 60 → **100** | 10 → 15 → **14** |
| server ms total | 4,478 → 15,910 → **10,778** | 175 → 191 → **300** |

Totals over the two sonnet cells:

| metric | baseline | round 3 | round 4 | r4 vs baseline | r4 vs round 3 |
|---|---|---|---|---|---|
| turns | 176 | 149 | 157 | −10.8 % | +5.4 % |
| wall-clock s | 1,551 | 1,033 | 1,462 | −5.7 % | +41.5 % |
| cache-read tokens | 31.50 M | 21.72 M | 26.08 M | −17.2 % | +20.1 % |
| cost USD | 6.96 | 4.89 | 7.94 | +14.1 % | +62.2 % |
| tool calls | 161 | 134 | 193 | **+19.9 %** | +44.0 % |
| MCP calls | 82 | 78 | 116 | +41.5 % | +48.7 % |
| temp-file envelopes | 27 | 3 | **1** | **−96.3 %** | −66.7 % |
| tool-result bytes | 627,705 | 359,855 | 556,819 | −11.3 % | +54.7 % |
| errors / retries | 6 / 2 | 5 / 3 | **21 / 18** | +250 % / +800 % | +320 % / +500 % |
| skill bytes read | 178,026 | 196,595 | **272,432** | **+53.0 %** | +38.6 % |

Read plainly: **S3 is the best it has ever been and S1 regressed.** S3 held its pass at the
baseline's tool-call count (26, vs 28 in round 3) with fewer MCP calls than round 3 and its
temp-file envelopes cut to one. S1 passed but cost
more than the baseline on calls, skill bytes and errors. Two identifiable causes account for
essentially all of S1's regression, and neither is a re-opening of a previously fixed hotspot:

1. one `parse_java_and_insert` call that fails with an unhandled exception (§2.8) and triggered a
   16-call, ~10-turn recovery;
2. a parameter-naming family (§2.9) that now fires **in parallel bursts** — one wrong key costs
   6–8 rejected calls instead of one.

### A/B verdict against the study's own thresholds
Success = ≥ 30 % fewer tool calls **and** ≥ 25 % fewer context tokens, no drop in pass rate.

| cell | comparison | tool calls | context tokens | pass | verdict |
|---|---|---|---|---|---|
| S1-sonnet | vs baseline | +23.7 % | −18.8 % | held | fails (both) |
| S3-sonnet | vs baseline | 0.0 % | −6.3 % | held | fails (both) |
| S1-sonnet | vs round 3 | +57.5 % | +20.3 % | held | regression |
| S3-sonnet | vs round 3 | −7.1 % | +18.7 % | held | flat |
| aggregate | vs baseline | +19.9 % | −17.2 % | 2/2 → 2/2 | fails |

The round-3 report's aggregate (−16.8 % calls, −31.1 % tokens vs baseline) does **not** survive
this round. The round-3 remedies themselves are not the reason — the hotspots they targeted are
still fixed (§2, rows 1–6) — the two new costs above are larger than what M1 saved.

## 2. Did the ranked hotspots move?

| # | Baseline hotspot (family) | Baseline (sonnet cells) | Round 3 | Round 4 | Verdict |
|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 27 envelopes; `→ Read` chains 8×/8×/6× | 3 envelopes, all `→ Read` chains gone | **1 envelope in both cells combined** (`S3-sonnet-1:7-8`), no `get_concept_details → Read`, no `print_node → Read` | **stays fixed (R1)**, best figure of the study |
| 2 | **C — per-root validation after a clean model-level check** | `check → check` 50×, 1 validation loop | `check → check` 6×, 0 loops | `check → check` 5× in S1 (one per aspect model, each exhaustive) + **1** in S3; `validation_loops` **0**; S3 quotes `rootsChecked: 44` from a single call (`S3-sonnet-1:23`) | **stays fixed (R2)** |
| 3 | **D — skill reference reads before an MCP call** | 12 reads / 178 KB; `referent-constraints.md` twice | 17 reads / 196.6 KB, no re-reads | **37 reads / 272 KB — the worst of four rounds**, and re-reads are back: `referent-constraints.md` 4×, `parse-java-tips.md` 4×, `method-declarations.md` 3× (twice in full) | **worse; now the largest residual cost** — see §2.10 |
| 4 | **B′ — ad-hoc Python for result shaping / CSV→blueprint** | 7 Bash calls, tracebacks in opus cells | 8 Bash calls, 0 tracebacks, shipped scripts used | S3 again used the shipped `table_to_bulk_insert.py` (`S3-sonnet-1:6,13`), **0 tracebacks**; S1's 27 Bash calls are `grep`/`sed` navigation of skill files, not result shaping | **stays fixed (R5)** |
| 5 | **B — blueprint file → insert** | `Write → insert` 3×; response larger than input | response avg 1,056 B | `insert → insert` 8×; `insert_root_node_from_json` avg result **635 B** (baseline 4,352 B) | **stays fixed (R4)** |
| 6 | **Discovery refinement — `get_concept_details` re-called for a revealed concept** | not in sonnet top-12 | 5× | **14×** bigram / 12× trigram — but 8 of those are the rejected-parameter burst of §2.9 and 7 are the AST hunt of §2.8; the genuine "refine on what the last result revealed" pattern is ~3× | **not a standalone hotspot; R7 correctly deleted (M8)** |
| 7 | **Guessable-but-undocumented literals and asymmetries** | 4 error→retry pairs | 3 retries, 1 in this family | **17 of 21 error envelopes**, 4 distinct wrong keys, amplified ~7× by parallel tool-calling | **markedly worse — now the #2 cost** — see §2.9 |
| 8 | `ToolSearch` schema fetches | 15 (S1) + 2 (S3) | 12 + 2 | 10 (S1) + 1 (S3) | not addressable by this plugin |
| 9 | Round 2's "MPS references are single-valued" | ~41 calls lost | eliminated | eliminated again: `RecipeRef`/`IngredientRef` designed into the **first** `CREATE_CONCEPTS` (`S1-sonnet-1:15`), 0 `UPDATE_CONCEPT_REFERENCE` | **stays fixed (N1/N2)** |
| 10 | Round 3's §2.8 — counting by concept, one call per concept | — | 5 `FIND_INSTANCES`, 3 temp files, 1 Bash reduction | **1 successful call**, 3 counts, 549 B inline (`S3-sonnet-1:26`) | **fixed (M1)** — the round's one clear win |
| 11 | Round 3's §2.10 — missing `projectPath` | — | 2 of 5 errors | **2 of 21 errors** (`S1-sonnet-1:11-13`), and the *first-call* sub-family is **gone** (`S3-sonnet-1:5` passes CWD and is accepted) | **half fixed** — see §2.12 |

### 2.8 New hotspot #1: `parse_java_and_insert` throws on the one context a behavior method has
`S1-sonnet-1:92` — `featureKind:"METHOD"`, `contextNodeRef` = the `ConceptBehavior` root, `insert`
= child into `method`, i.e. exactly the shape `mps-aspect-behavior/SKILL.md:35` recommends ("For
non-trivial logic prefer `mps_mcp_parse_java_and_insert` with `featureKind: "STATEMENTS"` or
`"METHOD"`"). Result: `{"ok":false,"error":"Internal error while Parsing Java and inserting
nodes","code":"INTERNAL_ERROR"}`. The server log records it as `ok:true, ms:66`, and `log/idea.log`
carries the real cause:

```
WARN - jetbrains.mps.agents.mcp.tools.AbstractOps - Unexpected failure in MCP tool: Parsing Java and inserting nodes
jetbrains.mps.lang.smodel...NodeCastException: Can't cast node: …, concept: jetbrains.mps.lang.behavior.structure.ConceptBehavior
  to concept: jetbrains.mps.baseLanguage.structure.Classifier
  at …JavaParser.parse(JavaParser.java:118)
  at …JetBrainsMPSJavaMcpToolset.prepareJavaParseResult$lambda$0(JetBrainsMPSJavaMcpToolset.kt:100)
```

Reproduced deterministically twice after the round (see §4, D26). Omitting `contextNodeRef`
produces a **good** message — `"'contextNodeRef' is required for featureKind 'METHOD' to provide
the target Classifier"` — so the tool already knows the constraint and simply does not check it
when the parameter is present but of the wrong type. Since a `ConceptBehavior` root can never be a
`Classifier`, `featureKind:"METHOD"` is unusable for behavior methods, which is the single most
common place an agent wants a Java method in a language.

Cost: `S1-sonnet-1:93-109` — 7 `get_concept_details` calls to learn the BaseLanguage AST by hand,
4 skill reads (55 KB), 2 `Explore` subagents, 3 Bash probes, a `/tmp`→`$TMPDIR` copy, then the
method hand-authored as a JSON blueprint. ≈ 16 avoidable calls and ≈ 10 avoidable turns
(≈ 1.5 M cache-read tokens at the measured floor), plus most of hotspot 3's regression: the
`parse-java-tips.md` and `method-declarations.md` re-reads are all inside this detour.
Determinism 1.0 — nothing about the failure requires judgment to avoid.

### 2.9 New hotspot #2: parallel tool-calling multiplies one wrong parameter name by 6–8
Round 3 called this family "persists, new members each round". Round 4 shows it has a multiplier.
The worker now fires a whole batch of same-shaped calls in one assistant turn, so a single naming
mistake is rejected once per item:

| `run:step` | Wrong key(s) | Correct key(s) | Rejections | Error text names the right key? |
|---|---|---|---|---|
| `S1-sonnet-1:133-140` | `conceptRef` | `conceptRefs` | **8** | Partly — it names `conceptReference`, not the `conceptRef` actually sent |
| `S1-sonnet-1:148-153` | `target`, `parentRef`, `role` | `kind`, `nodeReference`, `childRole` | **6** | No — "No argument is passed for required parameter 'kind'" names 1 of 3 |
| `S1-sonnet-1:11-12` | (`projectPath` absent) | `projectPath` | **2** | Yes |
| `S1-sonnet-1:163` | `moduleName`, `rebuild` at top level | inside `parameters` | **1** | No |
| `S3-sonnet-1:25` | `scope:"roots"` (read as "root nodes") | `scope:"models"` + `models` | **1** | Partly |

17 rejected calls; ~6 avoidable turns after fan-out, and 2 extra `ToolSearch` round trips
(`:154`, `:164`) to re-fetch schemas. Note the asymmetry the round-3 remedy created: `get_concept_details`
now explains `conceptReference → conceptRefs` well, but the agent guessed a *third* spelling and got
a message about a spelling it had not used. Determinism 1.0.

### 2.10 Hotspot 3 got worse, and R6's jump tables are the wrong shape to stop it
`S1-sonnet-1` read 193 KB through `Read` across 13 files plus another ~72 KB of `grep`/`sed`
navigation. The largest single item is `mps-aspect-constraints/references/referent-constraints.md`:
**54,222 B in one full `Read`**, followed by three more Bash navigations of the *same* file
(`grep -n "^## "`, `sed -n '378,530p'`, `sed -n '1,130p'`). The file's first 18 lines are exactly
the R6 jump table — *"This file is ~47 KB. Read the one section you need, not the whole file."* —
which the worker could only see **after** paying for the whole file. `method-declarations.md` was
read in full twice (18.3 KB). M2's routing table in `mps-model-manipulation/SKILL.md` ("Body you
are writing | Read only") did land and that skill's reads are modest (3 files); the damage is in
the aspect skills' large references.

Conclusion for the remedy design: a jump table inside a large reference cannot pay for itself with
a `Read`-based agent. It must live in the referring `SKILL.md` (outside the large file), or the
file must be split, or the skill must tell the agent to `grep` the headings *first*.

### 2.12 The CWD heuristic works — on half of the `projectPath` family
The instruction added in `ee21bc97f70d` ("if you are not yet aware of that path, pass the session's
current working directory on the first call") landed in `CLAUDE.md`, `AGENTS.md`,
`mps-mcp-workflow/SKILL.md` and `AGENTS_template.md`. Splitting every `projectPath` rejection in
the study into two sub-families shows what it did and did not move:

| sub-family | baseline | round 2 | round 3 | round 4 |
|---|---|---|---|---|
| **first call, path not yet known** (`list_open_projects` with `{}`) | S3-sonnet:7 | S3-sonnet-1:10, S3-sonnet-2:6 | S3-sonnet-1:4 | **none** |
| **mid-run omission** (`alter_structure`, path already in use) | — | S1-sonnet:11,12 | S1-sonnet:11,12 | S1-sonnet:11,12 |

- **Target family eliminated.** Round 3 opened S3 with `list_open_projects {}` → rejected →
  *"Only one project is open, at our working directory. I'll use that as the `projectPath` going
  forward."* Round 4 opened with `list_open_projects {"projectPath": "<cwd>"}` → accepted first
  try (`S3-sonnet-1:5`). Same prompt sha, same fixture, same model; the instruction is the only
  changed variable. S3's error count fell 2 → 1 and that one is D30, not `projectPath`.
- **Remaining family is out of the heuristic's scope.** At `S1-sonnet-1:11` the worker had already
  passed the correct path at `:6` and `:10` (100 of its 102 MCP calls carry it) and its own comment
  is *"I forgot to include `projectPath`"* — round 3's was *"I need to pass `projectPath`
  explicitly on this tool too."* The two rejections are identical in tool, operation and step
  number across rounds 2, 3 and 4. The baseline had **zero**, so this is not a doc-caused
  regression but a stable attention failure worth ~2 % of a greenfield run's calls.
- **Why this tool.** `alter_structure` takes `operation` plus a `parameters` JSON *string*, so
  `projectPath` reads like it belongs inside the payload. The same run made the mirror-image
  mistake at `:163` — `alter_nodes MAKE` with `moduleName`/`rebuild` at the top level instead of
  inside `parameters` (D29). Both `parameters`-string tools, both "where do arguments live".

## 3. Hypotheses

| # | Hypothesis | Round-4 verdict |
|---|---|---|
| H1 | Blueprint authoring is a main cost and retry source | **Confirmed, and it grew back in S1**: MCP input chars 17,191 → 34,298, because the §2.8 detour forced a hand-authored BaseLanguage method. One truncated-JSON error persists (`S1-sonnet-1:52`, `EOFException … column 1246`), the same shape as the baseline. S3 authored 3,196 chars for 40 recipes |
| H2 | structure → make → verify → scaffold chain | **Still not a hotspot.** `scaffold_editor → scaffold_editor` 5×, no stale-runtime retries; a new small `MAKE → reload_all → check` trust chain appears 3× |
| H3 | Bulk creation via many near-identical calls | **Refuted again.** 40 recipes in 2 `insert_root_node_from_json` + 2 `update_root_node_from_json` calls |
| H4 | Discovery reads with huge results | **Fixed and staying fixed** — 1 envelope across both cells, the lowest ever |
| H5 | validate → fix → validate loops | **Fixed** — `validation_loops` 0 for the second round running |
| H6 | Reference wiring after bulk insert | **Refuted again.** 105 `RecipeRef` wrappers resolved by name inside the bulk inserts; 0 dangling (evaluator verified `errors: 0` on all 44 roots) |
| H7 | Skill reading is a large context consumer | **Confirmed and worst-ever** (+53 % vs baseline). Now entangled with H13 — over half of S1's skill bytes are inside the §2.8 detour |
| H8 | Stale runtime | **Not observed** as a retry source, though the worker called `reload_all` 3× defensively after `MAKE` |
| H10 | Fixed per-turn context dominates | **Confirmed, unchanged** — 97,026 tokens, flat across four rounds |
| H11 | With mechanical round trips gone, variance moves to knowledge and judgment | **Confirmed again, with a new twist**: this round's biggest variance is not missing knowledge but a *tool defect* that no amount of documentation reading could route around (§2.8) |

New: **H13 — parallel tool-calling changes the economics of an input-validation defect.** A wrong
key or an unhandled exception used to cost one call and one retry; with batched calls it costs one
call *per item in the batch*. 17 of round 4's 21 errors come from four mistakes. Corollary: the
value of naming the correct parameter *in the rejection text* has risen by roughly the fan-out
factor, and rejections should be as informative as possible about **all** wrong keys, not the first
one the platform notices.

## 4. Defects

**Confirmed fixed by the round-3 remedies** (no instance in this round):
M1 — batched `FIND_INSTANCES` with `detail:"count"` works and removed §2.8-of-round-3 entirely
(`S3-sonnet-1:26`, and the observer used it in preflight);
M8 — `includeChildRoleConcepts` is gone from the schema;
D5/D12 — enum defaults still surface correctly;
D3 — the `/tmp` rejection did not fire (the worker pre-emptively copied to `$TMPDIR`,
`S1-sonnet-1:105-107` — 3 steps, but no error).

**Persisting:**

| # | Defect | Round-4 evidence |
|---|---|---|
| D18/D4 | Missing `projectPath` is still an error source | `S1-sonnet-1:11-13` (2 of 21 errors); 4th round running; M3(b) still unactioned |
| D14 (mutated) | `get_concept_details` key spelling | The improved rejection names `conceptReference`; the agent guessed `conceptRef` → 8 rejections (`:133-140`). See D27 |
| H1 truncation | Inline `json` blueprint truncated mid-string | `S1-sonnet-1:52` `EOFException … column 1246 path $.children[1]` |

**New (recorded in `docs-defects.md` as D26–D31):**

| # | Where | Defect |
|---|---|---|
| D26 | `parse_java_and_insert` + `mps-aspect-behavior/SKILL.md:35` | `featureKind:"METHOD"` with a `ConceptBehavior` `contextNodeRef` throws `NodeCastException` reported as bare `INTERNAL_ERROR`; the absent-parameter path already emits the correct explanation. Docs recommend the failing call. Reproduced twice |
| D27 | `get_concept_details` | The singular `conceptRef` (no `-erence`) is rejected by a message that names only `conceptReference`, so it does not name the key the caller actually sent |
| D28 | `update_node` | `target`/`parentRef`/`role` (a natural guess) → platform message "No argument is passed for required parameter 'kind'": names 1 of 3 wrong keys, names no correct key |
| D29 | `alter_nodes` | `MAKE` with `moduleName`/`rebuild` at top level → "No argument is passed for required parameter 'parameters'", without saying the module list belongs inside `parameters` |
| D30 | `query_nodes FIND_INSTANCES` | `scope:"roots"` reads as "root nodes only" but means "within these root references" and requires `roots`; a caller after root counts picks it naturally (`S3-sonnet-1:25`) |
| D31 | study harness | User-level `~/.claude/agents/*.md` leak into every worker. `mps-constraints-agent` was used 3× in `S1-sonnet-1`; its 7 MPS calls appear in the server log under the same session id but **not** in the parent transcript, and its tokens are not in the `result` event |

## 5. Validity

- **Doc surface is pinned.** Both cells carry `skillsSha256 eaa4eb2032d3…`, installed from the
  running plugin at run time, so "the current skills" is a verified fact.
- **Answer-key contamination stays resolved.** The shipped example assets are `courses.csv` /
  `courses.map.json`; `scenarios/S3/recipes.csv` (`7118013074e8…`) matches nothing in the catalog.
- **The S1 numbers understate the round-4 cost.** The worker delegated to three subagents
  (`mps-constraints-agent`, `Explore` ×2). Cross-check: 102 transcript MCP calls − 9 rejected
  before dispatch = 93 expected, but the server logged **100**; the 7-call delta is 6 `update_node`
  + 1 `alter_nodes` from the subagent. Those calls, their turns and their tokens are absent from
  `metrics.csv`. Rounds 1 and 3 had **zero** `Agent` calls, round 2 had one — so this asymmetry is
  new, is caused by an uncontrolled user-level asset (D31), and makes S1's +23.7 % call delta a
  **lower bound**.
- **S3's fixture start state was verified live** before launch (0 Recipe, 0 Cookbook, 3 Ingredient),
  identical to round 3, so its three-way comparison is like-for-like from round 3 onward. The
  baseline S3 cell still started from a different state (48 roots produced) — do not read its
  absolute numbers as like-for-like.
- **n = 1 per cell, sonnet only.** Lesson 12 applies with full force: single-cell deltas under
  ~15 % are not signal. The S1 regression is well outside that band and has a named mechanism, but
  its *magnitude* should not be over-read from one run.
- **No opus cell since 2026-09-15.** The baseline's opus cells remain the only opus data.
- Two post-round probes were fired at the S3 project to reproduce D26; both failed before
  insertion, and `print_node` confirms `Recipe_Behavior` still holds only `constructor` and
  `totalMinutes()` — the evidence project is unmodified.

## 6. Remedies

Ordered by estimated saving. Round-3 remedies still open are restated with round-4 evidence rather
than renumbered.

| # | Remedy | Tier | Hotspot / defect | Contract | Est. saving | Risk |
|---|---|---|---|---|---|---|
| P1 | **Validate `contextNodeRef` in `parse_java_and_insert`** — if it does not resolve to a BaseLanguage `Classifier`, return the message the absent-parameter path already emits, naming the constraint; and state in `mps-aspect-behavior/SKILL.md` + `parse-java-tips.md` that a behavior method body must go through `featureKind:"STATEMENTS"` against a `Classifier` context or a JSON blueprint, never `METHOD` against `ConceptBehavior`. Consider accepting a `ConceptBehavior` by parsing against a synthetic classifier | **S** + **D** | §2.8 / D26 | reuse the existing check for the wrong-type case | ~16 calls and ~10 turns per greenfield run; removes the round's single largest cost | low; the good message already exists |
| P2 | **Name every wrong key, and the right ones, in rejections.** For `update_node`, `alter_nodes`, `get_concept_details`, `query_nodes`: validate the whole argument map and answer with the unknown keys received plus the expected keys for that operation. Add `conceptRef` to the spellings D27's message enumerates (or alias the near misses) | **S** | §2.9 / D27–D30 | error text only; no schema change | 17 rejected calls and ~6 turns in this round, and the family has produced new members in all four rounds | low |
| P3 | **Move the jump tables out of the large references.** Each `mps-aspect-*/SKILL.md` should carry the section index of its own big reference (or the reference must be split), so an agent can pick a section without reading 48 KB. Round-3 M2 landed for `mps-model-manipulation` and that skill behaved well — do the same for `referent-constraints.md` (54 KB), `structure-operation-api.md` (26 KB), `property-constraints.md` (16 KB) | **D** → T | §2.10 / hotspot 3 | docs only | ~100 KB per greenfield run; the metric that is worst vs baseline | none |
| P4 | **Rename or re-document `scope:"roots"`** as `scope:"withinRoots"` (or accept `scope:"roots"` with no `roots` as "all root nodes") | **S** or **D** | D30 | one enum value | 1 call per verification pass | low |
| P5 | **`projectPath`, re-scoped after §2.12.** The doc half (round-3 M3(a)) **is done and measurable** — the first-call CWD probe eliminated that sub-family. What remains is the mid-run omission on the two `parameters`-string tools, which no wording has moved in three rounds. Options, cheapest first: (a) let `alter_structure` / `alter_nodes` also accept `projectPath` **inside** `parameters` (where the model already thinks it belongs); (b) auto-resolve the pre-dispatch rejection when exactly one project is open — the message already prints that project; (c) the upstream routing question in `projectpath-pre-dispatch-rejection-upstream.md`. Do **not** spend another round on wording | **S** (a/b) + **S (upstream)** (c) | D18/D4, §2.12 | (a) accept the key in either position; (b) single-open-project fallback | 2 calls + 1 turn per greenfield run, stable across rounds 2–4 | (a) low, additive; (b) changes routing semantics — must still reject when >1 project is open; (c) may not be locally actionable |
| P6 | **Pin the worker's agent surface.** `run_worker.sh` should launch with `--agents` cleared (or assert that `~/.claude/agents` holds nothing MPS-related) and the preflight assertion must cover agents as well as skills; the analyser should warn when `server_calls` exceeds transcript MCP calls minus pre-dispatch rejections | study harness | D31 | harness only | removes an uncontrolled variable that silently hides work from the metrics | none |
| P7 | **Chase the inline-blueprint truncation** (`EOFException` mid-string). It has appeared in the baseline and in round 4; if it is a transport limit, the 4 KB inline/file-path boundary should be stated in the rejection | **S** | H1 | error text or limit doc | 1 retry per greenfield run | low |

Not proposed: anything aimed at hotspots 1, 2, 4, 5, 9, 10 — all fixed and holding. No P-on script
is justified.

## 7. Artefacts

`~/MPSProjects/mcp-study/runs-r4/` — 3 transcripts + server slices + metas + install results +
2 eval reports + `analysis/` (metrics.csv, tools.json, chains.json, errors.json, hotspots.md);
`inventory.json` (sha `4a59fd5d171f…`); catalog `skillsSha256 eaa4eb2032d3…`.
Fixtures (not in git): `~/MPSProjects/mcp-study/fixtures-r4/{empty-project,recipes}.tar.gz`
(copies of round 3's, both doc-surface-free).
Run projects: `~/MPSProjects/mcp-study/proj-r4/{S1,S3}-sonnet-1`.
Re-computed earlier rounds: `~/MPSProjects/mcp-study-baseline/runs/analysis-r4recompute/` and
`~/MPSProjects/mcp-study/runs-r3/analysis-r4recompute/`.
