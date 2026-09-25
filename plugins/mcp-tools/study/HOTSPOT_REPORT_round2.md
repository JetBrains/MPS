# Skill Script Automation Study — Round 2 (post-treatment A/B)

Status: measurement round complete (2026-09-16). This is the A/B pass that gate 2 of the 2026-09
study deferred: the same frozen scenarios re-run against the **treated** tools (R1–R8, all live) and
the **treated** bundled skill catalog. Scope on request: S1 (greenfield DSL) and S3 (bulk authoring)
× (opus, sonnet) = 4 cells, plus one extra sonnet S3 sample and one SMOKE harness check.
Baseline of record: `HOTSPOT_REPORT.md` §1 (2026-09-15), whose raw runs were recovered from
`~/MPSProjects/mcp-study-runs-2026-09-15.tar.gz` so chains and metrics are diffed file-to-file, not
read off the published table.

Comparability was verified before any run: worker-prompt sha256 for S1, S3 and SMOKE are
**identical** to the baseline metas, and the worker model ids are identical (`claude-opus-5`,
`claude-sonnet-5`). Evidence: `runs/*-worker.jsonl`, `runs/*-server.jsonl` (call log on),
`runs/*.eval.md` (read-only Opus evaluators), every claim cited as `run:step`.

## 1. Metrics: 2026-09 baseline → round 2

| metric | S1-opus | S1-sonnet | S3-opus | S3-sonnet |
|---|---|---|---|---|
| task pass | True → **True** | True → **True** | True → **True** | True → **False** (blocked) |
| turns | 181 → 104 (−43%) | 148 → 115 (−22%) | 100 → 26 (−74%) | 28 → 17 |
| wall-clock s | 1,395 → 909 (−35%) | 1,322 → 952 (−28%) | 740 → 199 (−73%) | 229 → 84 |
| cost USD | 14.96 → 8.53 (−43%) | 5.83 → 7.87 (+35%) | 5.55 → 1.57 (−72%) | 1.13 → 0.37 |
| cache-read tokens | 27.06 M → 14.77 M (−45%) | 27.50 M → 30.79 M (+12%) | 13.56 M → 2.58 M (−81%) | 4.00 M → 1.29 M |
| output tokens | 3,392 → 1,780 (−48%) | 1,868 → 2,000 (+7%) | 1,406 → 285 (−80%) | 240 → 162 |
| tool calls | 173 → 96 (−45%) | 135 → 161 (+19%) | 97 → 24 (−75%) | 26 → 14 |
| MCP calls | 90 → 63 (−30%) | 71 → 107 (+51%) | 68 → 11 (−84%) | 11 → 5 |
| Bash | 73 → 22 (−70%) | 3 → 15 (+400%) | 25 → 10 (−60%) | 4 → 2 |
| skill-file reads | 24 → 9 (−62%) | 9 → 21 (+133%) | 3 → 2 | 3 → 4 |
| skill bytes read | 136,506 → 73,815 (−46%) | 160,079 → 182,995 (+14%) | 17,443 → 9,229 (−47%) | 17,947 → 9,731 (−46%) |
| **temp-file envelopes** | **32 → 1 (−97%)** | **23 → 2 (−91%)** | **25 → 1 (−96%)** | **4 → 0 (−100%)** |
| Bash reads of temp results | 33 → 1 (−97%) | 0 → 2 | 12 → 3 (−75%) | 0 → 0 |
| Bash blueprint writes | 9 → 7 | 0 → 3 | 5 → 1 (−80%) | 2 → 0 |
| MCP input chars | 26,373 → 16,141 (−39%) | 26,384 → 27,103 (+3%) | 24,252 → 2,227 (−91%) | 2,436 → 506 (−79%) |
| tool-result bytes | 254,414 → 197,426 (−22%) | 444,385 → 370,268 (−17%) | 184,005 → 44,153 (−76%) | 183,320 → 20,835 (−89%) |
| error envelopes | 2 → 1 | 5 → 6 | 4 → **0** | 1 → 1 |
| error→retry pairs | 2 → **0** | 2 → 4 | 4 → **0** | 0 → 1 |
| validation loops (≥3 / root) | 1 → 3 | 1 → 1 | 0 → 0 | 0 → 0 |
| server-logged calls | 90 → 63 | 71 → 105 | 68 → 11 | 10 → 4 |
| server ms total | 9,984 → 7,239 (−27%) | 4,478 → 26,733 (+497%) | 1,564 → 399 (−74%) | 175 → 68 |

Extra sample (no baseline counterpart): **S3-sonnet-2** — 12 turns, 65 s, 10 tool calls, 5 MCP
calls, $0.26, task **FAIL** (blocked for the same reason as S3-sonnet-1).

Totals over the four comparable cells: turns **−42.7 %**, wall-clock **−41.8 %**, tool calls
**−31.6 %**, cache-read tokens **−31.4 %**, cost **−33.3 %**, temp-file envelopes **−95.2 %**.
Over the two opus cells only (both PASS, and neither touched the contaminated fixture asset of §5.1):
turns **−53.7 %**, tool calls **−55.6 %**, MCP calls **−53.2 %**, cache-read **−57.3 %**,
envelopes **−96.5 %**.

Fixed per-turn context floor, measured the same way as the baseline (SMOKE cache read + write):
**129,874 → 128,814 tokens (−0.8 %)**. The treatment's +2,918 B of tool descriptions is invisible at
this resolution, confirming the baseline's cost/benefit assumption. Tool inventory now advertises
**47 tools (38 `mps_mcp_*`)** against 56 at baseline: the 38 MPS tools are unchanged, and the nine
that disappeared are generic platform tools (`execute_terminal_command`, `get_file_text_by_path`,
`search_text`, …). Those nine were **never invoked** by any baseline worker (0 `tool_use`
occurrences across all four baseline transcripts), so their removal is not a behavioural confound.

### A/B verdict against the study's own thresholds
Success = ≥ 30 % fewer tool calls **and** ≥ 25 % fewer context tokens on treated scenarios, with no
drop in pass rate.

| cell | tool calls | context tokens | pass | verdict |
|---|---|---|---|---|
| S1-opus | −45 % | −45 % | held | **passes** |
| S3-opus | −75 % | −81 % | held | **passes** |
| S1-sonnet | +19 % | +12 % | held | **fails** (see §2.7 — one unlucky knowledge gap, not the remedies) |
| S3-sonnet | −46 % | −68 % | **dropped** | **fails** (blocked run; cause is a scenario-asset defect, §5.2) |
| aggregate (4 cells) | −31.6 % | −31.4 % | 4/4 → 3/4 | thresholds met on cost, **not** on pass rate |

The remedy set pays decisively where it was aimed; the two failures have identified causes that are
not the remedies, and both are fixable with documentation (§5).

## 2. Did the ranked hotspots move?

| # | Baseline hotspot (family) | Baseline evidence | Round 2 | Verdict |
|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 84 envelopes over 4 runs; `get_project_structure → Read` 8×, `print_node → Read` 8×, `get_concept_details → Read` 6×, `print_node → Bash` 14× | **4 envelopes** over 4 runs. Every `… → Read` chain is **gone** (0 occurrences). `Read` tool calls in S1-opus: 39 → **0**. Proof it is the inlining and not luck: `avg_result_bytes` moved from path-sized to payload-sized — `get_concept_details` 142 B → 3,292 B, `print_node` 105 B → 4,486 B, `get_project_structure` 103 B → 2,354 B | **fixed (R1)** |
| 2 | **C — per-root validation after a clean model-level check** | `check → check` **50×**, `check → check → check` **45×**; S3-opus-1 ran 48 consecutive per-root checks after a clean model check at `:42` | `check → check` **3×** (−94 %), trigram **absent**. S3-opus-1 now validates with **2 calls total** and quotes the new coverage field back: *"0 errors on all 46 roots (`details.rootsChecked: 46`)"*. `perRoot:true` used 10× (S1-opus), 5× (S1-sonnet), 1× (each S3) | **fixed (R2)** — the single largest win |
| 3 | **D — skill reference reads before an MCP call** | 39 reads / 332 KB; `referent-constraints.md` (49.8 KB) read whole, twice per S1 run | opus: 24 → 9 reads, 137 KB → 74 KB. S3 both models −46/−47 % bytes. R6's jump tables are in place (`## Contents / when to read what` on both >20 KB references). **But sonnet S1 went the other way: 9 → 21 reads, 183 KB** — see §2.7 | **improved for 3 of 4 cells; regressed for S1-sonnet** |
| 4 | **B′ — ad-hoc Python for result shaping / CSV→blueprint** | ~22 heredocs; the "concept shape" projection rewritten 10× in one run; 2 tracebacks (`KeyError: 'difficulty'`, `KeyError: 'children'`) | opus Bash 73 → 22 and 25 → 10; **zero Python tracebacks** in any round-2 run. `detail:"shape"` (R1b) used 11× / 12× / 1× / 1× — it replaced the hand-written projection | **largely fixed (R1b + R5)** |
| 5 | **B — blueprint file → insert; response larger than the input** | 63 KB file → 33 KB response; 22 writes + 8 inserts | Bulk responses collapsed: `insert_root_node_from_json` `avg_result_bytes` 4,363 → **526 B** (−88 %), `update_node` 2,780 → **712 B**. `responseDetail:"summary"` used 9× (S1-opus) and 2× (S3-opus) — **0× by sonnet**. Blueprint files are still written (7 / 3 / 1 / 0) because the content is judgment, as predicted | **fixed for response bloat (R4); authoring cost unchanged, as designed** |
| 6 | **Discovery refinement — `get_concept_details` re-called for a concept the previous result revealed** | 3 chains of 2–3 hops per S1 run | `get_concept_details → get_concept_details` **8×**, `print_node → print_node` **7×** (baseline 3×). Inspection splits these in two: S1-opus-1:21-23 is *batched breadth* (2–5 concepts per call — efficient, not a defect), while S1-sonnet-1:16-17 is a genuine `detail:"shape"` → `detail:"full"` escalation. **R7 (`includeChildRoleConcepts`) was never used — 0 calls in any run** | **not moved; R7 has zero adoption** |
| 7 | **Guessable-but-undocumented literals and asymmetries** | 4 error→retry pairs (`format "text"`, model ref to `print_node`, array vs object `childJson`) | All four baseline instances **gone**. Three *new* asymmetries appeared instead (§4): `conceptReference` vs `conceptRefs`, string `"null"` vs null for `childJson`, `properties` object vs array | **old instances fixed (R3); the family persists in new spots** |
| 8 | `ToolSearch` schema fetches | ~7 per run, 0 B | 6 (S1-opus), unchanged in kind | **not addressable by this plugin** (unchanged) |

### 2.7 New top hotspot: rediscovering that MPS references are single-valued

The largest single block of avoidable work in round 2 is not in the baseline list.

`[0..n]` reference roles cannot be expressed in MPS — a reference link is always single-valued, so
the idiom is a thin smart-reference **wrapper concept** (`RecipeRef` holding one mandatory
reference). Three of the four round-2 workers knew this as prior knowledge and paid nothing:
S1-opus-1 states it before writing anything (*"MPS references are single-valued, so the `0..n`
reference roles need smart-reference wrapper concepts"*, after step 10), exactly as both baseline
workers did (baseline S1-opus-1 after step 14, baseline S1-sonnet-1 after step 16).

Round-2 **S1-sonnet-1 did not know it** and spent **steps 16 → 57 (≈ 41 tool calls, a quarter of the
run)** rediscovering it: noticing `0..1` where it wanted `0..n` (`:16`), reverting a bad edit
(`:31`), concluding *"`UPDATE_CONCEPT_REFERENCE`'s `multiple` flag is not honored"* (`:40`),
verifying with a disposable scratch concept (`:42`), cleaning it up (`:45`), then designing the
wrappers (`:49-57`). That single gap accounts for most of this cell's regression (161 tool calls,
107 MCP calls, 21 skill reads, 26.7 s of server time).

Two causes, both verified:
1. **Docs gap.** No shipped skill states it. `mps-aspect-structure-concepts/SKILL.md:47` mentions
   cardinality only for *child* collections, `node-editing-rules.md:18` only for child roles, and
   nothing anywhere names the wrapper idiom for references — even though the study's own S1
   done-criteria have accepted "smart-reference wrapper concepts" as equivalent modelling since
   2026-09.
2. **Silent-ignore tool behaviour**, confirmed in source:
   [`JetBrainsMPSLanguageStructureMcpToolset.kt:291-296`](../src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSLanguageStructureMcpToolset.kt) —
   `UPDATE_CONCEPT_CHILD` reads `params.get("multiple")` and honours it; `UPDATE_CONCEPT_REFERENCE`
   never reads it and passes `false`, and reference cardinality is hard-coded to `_0__1` / `_1`
   (l. ~1204). Unknown keys in the `parameters` JSON are dropped silently, so `multiple: true` on a
   reference returns `ok:true` and quietly yields a single-valued link. The docs' own asymmetry
   (`multiple` documented for children, absent for references at
   `structure-operation-api.md:209-220`) is the only hint.

This is the highest-value remaining remedy in the study: one documentation paragraph plus one
rejection message would immunise every greenfield run against a ~40-turn variance.

## 3. Hypotheses

| # | Hypothesis | Round-2 verdict |
|---|---|---|
| H1 | Blueprint authoring is a main cost and retry source | **Confirmed, unchanged.** Authored MCP input chars stay high where blueprints are written (S1: 16 K / 27 K) and collapse where bulk insert does the work (S3-opus: 24 K → 2.2 K). One blueprint-shape error remains (`'properties' … must be a JSON array`, S1-opus-1:60), but its message now names the path and points at the skill |
| H2 | structure → make → verify → scaffold chain | **Still not a hotspot.** `check → MAKE` 5×, `MAKE → get_concept_details` 4×, `scaffold_editor → scaffold_editor` 5×; no stale-runtime retries |
| H3 | Bulk creation via many near-identical calls | **Refuted again, and the residue is gone.** S3-opus used 3 inserts + 2 updates for 40 recipes; the transformation-authoring cost the baseline measured (~12 Python heredocs, 2 tracebacks) has vanished (10 Bash calls, 0 tracebacks) |
| H4 | Discovery reads with huge results | **Was the #1 family; now fixed.** See hotspot 1 |
| H5 | validate → fix → validate loops | **Habitual re-validation fixed (hotspot 2).** The remaining `validation_loops` flags are legitimate edit→check→edit cadence: S1-opus's three "loops" are 3 checks each on the behavior model, the constraints model and one sample root, interleaved with edits, not consecutive sweeps. `autoApplyQuickFixes` still never used (0 calls) |
| H6 | Reference wiring after bulk insert | **Refuted again.** Name-based resolution inside the bulk insert wired every `seeAlso`; S3-opus cites `fixReferences.stillBroken: 0`, and the evaluator confirmed all 139 `RecipeRef` + 3 `IngredientRef` resolve |
| H7 | Skill reading is a large context consumer | **Confirmed and now bidirectional.** It is the biggest remaining lever on sonnet (183 KB in one run) while opus halved it. Skill bytes now correlate with prior-knowledge gaps (§2.7), not with task size |
| H8 | Stale runtime | **Not observed** (0 `reload_all`, no hollow-descriptor retries) |
| H10 | Fixed per-turn context dominates | **Confirmed, unchanged.** 128,814 tokens per SMOKE run; turn count remains the lever, which is why the −42.7 % turn reduction is the headline |

New in round 2: **H11 — behaviour variance on ambiguous prompts now dominates the sonnet cells.**
Both sonnet S3 runs stopped and asked rather than acting (§5.2), and the sonnet S1 regression traces
to one missing fact (§2.7). With the mechanical round trips removed by R1/R2/R4, what is left is
knowledge and judgment — which is what documentation, not tooling, addresses.

## 4. Defects

**Fixed by the treatment** (baseline error instances, all absent in round 2): `/tmp` outside the
system temp dir (D3/D11); `create_model` after `create_module` → *"No suitable model root found"*
(D6); `print_node format "text"` rejected (D9); `print_node` with a model reference → NOT_FOUND;
top-level array rejected by `update_node` (D10); blueprint truncation (`EOFException … column 1254`);
ad-hoc-script tracebacks from omitted default values (D12).

**Persisting:**

| # | Where | Defect | Round-2 evidence |
|---|---|---|---|
| D4 | `list_open_projects` and every other tool | The tool whose purpose is to report which projects are open **refuses to run without `projectPath`**, even when exactly one project is open. Costs one wasted turn at the start of a fresh session | S3-sonnet-1:10, S3-sonnet-2:6 (both retried with the path), baseline S3-sonnet-1:7. Also hit twice by the observer, including on `initialize_project_for_agents` where both CLAUDE.md and the tool description say *not* to pass `projectPath` |
| D5 | enum default literal | Unchanged: the default serialises bare (`EASY`) while others carry the encoded literal id; a reader can misread it as missing | S3-opus-1 evaluation notes |

**New:**

| # | Where | Defect | Evidence |
|---|---|---|---|
| D13 | `alter_structure UPDATE_CONCEPT_REFERENCE` + `mps-aspect-structure-concepts` | `multiple` is honoured for children, silently ignored for references (hard-coded single-valued); no doc states that MPS references are always single-valued or names the wrapper idiom. Worst-case cost measured: ~41 tool calls | §2.7; source l. 291-296 and ~1204; `structure-operation-api.md:204` vs `:209-220` |
| D14 | `get_concept_details` | `conceptReference` (the parameter name used by `print_node`/`scaffold_editor`) is silently unrecognised; the error is *"No concepts nor languages have been provided"*, which does not name the offending key or the correct `conceptRefs` | S1-sonnet-1:95 |
| D15 | `update_node SET/CHILD` | Docs say `childJson = null` deletes the child; the string `"null"` yields *"Input is neither a valid JSON object/array nor an existing file path: 'null'"* without saying how to express the null | S1-sonnet-1:154 |
| D16 | shipped skill catalog vs the checkout | The treatment updated `plugins/mcp-tools/resources/**` only. The checkout's own `.agents/skills/` and `.claude/skills/` are **pre-treatment** (42 differing entries; no `scripts/`, no `rootsChecked`, no jump tables), as was the study's golden project. Every already-initialised project — including this repository, i.e. agents working on MPS itself — still reads the untreated docs | `diff -rq` of the three trees, 2026-09-16; refreshing the fixture was a precondition for this round |
| D17 | `study/scripts/analyze_runs.py` | A run that delegates to a subagent emits one `result` event per session; the analyzer kept the **last**, so S1-sonnet-1 was reported as 13 turns / 92 s instead of 115 turns / 952 s | Fixed in this round (keep the event with the most turns); re-running the baseline is byte-identical, so no published number changes |

## 5. Validity — read before quoting any number

### 5.1 The treated skills ship this study's answer key
`mps-node-editing/scripts/examples/recipes.csv` (installed by R5) is **byte-identical**
(sha256 `7118013074e8…`) to `scenarios/S3/recipes.csv`, and it is accompanied by
`recipes.map.json`, a ready-made column→feature map naming `mcp.study.recipes.structure.Recipe`,
`Step` and the `RecipeRef` wrapper — concepts that exist only because S1 workers invented them.

The surface is wider than that one file: **all seven shipped example assets derive from the study's
own project**, plus two files that name it in prose —
`mps-node-editing/scripts/examples/{recipes.csv,recipes.map.json}`,
`mps-mcp-workflow/scripts/examples/{get_concept_details_recipes.json,print_node_deep.json,`
`print_node_shallow.json,get_project_structure_model_roots.json,get_project_structure_node_deep.json}`,
`mps-node-editing/scripts/table_to_bulk_insert.py` and `mps-language-analysis/SKILL.md`.
`get_concept_details_recipes.json` is a full dump of the S1 target language, down to concept
aliases and doc strings — i.e. the S1 *design* as well as the S3 *mapping* are now shipped.

Only S3-sonnet-1 actually opened any of them (`Read scripts/examples/recipes.csv`,
`Read recipes.map.json`, `table_to_bulk_insert.py --help`); S1-sonnet-1 used `mps_dump.py` only,
and **neither opus run touched the shipped scripts at all**, so the headline results (S3-opus
−84 % MCP calls, −81 % context) are uncontaminated. But the availability alone invalidates S1 and
S3 as blind scenarios from now on: regeneralise every asset before the next round.

### 5.2 S3-sonnet's failure is a scenario-asset defect, not a tool regression
Both sonnet S3 runs stopped without writing anything (samples model byte-identical to the fixture,
sha256 `f9fe5ba14574…`) and asked how to resolve a genuine contradiction: the prompt requires *"the
model contains exactly 40 Recipe roots plus the Cookbook"*, while the `recipes` fixture already
holds 3 Recipes — two of which (`Pancakes`, `Omelette`) are also CSV rows — and the done criteria
separately expect 43. Satisfying the prompt literally requires deleting fixture content the task
never mentions. Baseline sonnet proceeded through the same contradiction; round-2 sonnet declined
twice, citing its prompt's own *"Stop and explain if blocked"*. Same model id, same prompt sha. Fix
the scenario (say "40 new Recipe roots **in addition to** the existing samples", or ship an empty
samples model), then re-measure the cell.

### 5.3 Other caveats
- **S1-sonnet-1 delegated** part of its work to an `mps-constraints-agent` subagent (available since
  2026-06-17, so equally available at baseline). Its tool and MCP counts therefore aggregate two
  sessions, and are not a like-for-like comparison with the baseline's single session; the token and
  cost figures do aggregate correctly.
- **S3's fixture was rebuilt** from this round's passing S1-opus-1 project, because the 2026-09
  tarball was deleted at wrap-up. Same shape as the baseline fixture (3 sample recipes, `Pancakes`
  colliding with the CSV) but not byte-identical.
- **S3-opus-1 deviates from the literal criterion 1**: 41 Recipe roots with 38 newly created, not 43
  with 40 new, because it rewrote the two name-colliding fixture roots in place instead of
  duplicating them. Recorded as PASS on the substantive reading — all 40 CSV names present exactly
  once, full-AST diff of all 40 rows = 0 discrepancies — with the deviation in its meta and eval.
- MPS was restarted between runs (project swaps); the call log appends across restarts, and all
  per-run slices were captured by byte offset.
- Only one scratch project was open during each run (verified per run with `list_open_projects`),
  so the 2026-09 cross-project leakage hazard (H9/D4) did not apply.

## 6. Remedies

| # | Remedy | Tier | Hotspot / defect | Contract | Est. saving | Risk |
|---|---|---|---|---|---|---|
| N1 | **State that MPS reference links are always single-valued**, with the smart-reference wrapper recipe and a JSON blueprint, in `mps-aspect-structure-concepts/SKILL.md` and `structure-operation-api.md` next to `UPDATE_CONCEPT_REFERENCE` | **D** | §2.7 / D13 | docs only | up to ~41 turns per greenfield run; removes the largest measured variance | none |
| N2 | **Reject `multiple` on a reference** instead of ignoring it: `"References are always single-valued in MPS; model a 0..n reference as a smart-reference wrapper concept (see mps-aspect-structure-concepts)"`. Generally, reject unknown keys in `alter_structure.parameters` | **S** | D13 | error envelope on a silently-ignored key | turns the 40-turn discovery into one error message | low — could break callers that pass stray keys today |
| N3a | **Fix the instruction contradiction**: `CLAUDE.md:93` and `AGENTS.md:93` say *"Do not pass `projectPath` to that tool"* for `initialize_project_for_agents`, while the shipped `AGENTS_template.md:111` says to pass it — and passing it is what actually works | **D** | D18 | two lines | removes a guaranteed first-call failure for any agent following the repo instructions | none |
| N3b | **Let the discovery call run without `projectPath`.** Note the resolution is the *platform's*: `"Unable to determine the target project"` occurs nowhere in this repo except inside a doc string, so this is not fixable in `mcp-tools` — investigate whether a tool can opt out of the platform's `projectPath` routing, otherwise file upstream | **S (upstream)** | D4/D18 | opt-out if one exists | 1 turn per fresh session, every session | unknown — may not be actionable locally |
| N4 | **Regeneralise all seven shipped example assets** (§5.1) to a domain no scenario uses, regenerate `recipes.map.json`, and update the two tests that pin the filenames — `SkillScriptsPackagingTest.kt:84-89`, `SkillScriptsDriftTest.kt:90-91` — plus the prose mentions in `table_to_bulk_insert.py` and `mps-language-analysis/SKILL.md` | **P-off asset** | §5.1 | example files + 2 tests | restores S1/S3 as blind measurements | none, if the tests are updated in the same change |
| N5 | **Fix the S3 scenario prompt / criteria contradiction** (§5.2) | study asset | §5.2 | prompt wording or empty samples fixture | recovers a lost cell; re-freeze the sha | changes the prompt sha — round-2 S3 numbers become the new baseline |
| N6 | **Propagate the bundled catalog to the checkout** (`.agents/skills/`, `.claude/skills/`) and document the refresh step in the treatment checklist | **D** | D16 | copy + a line in the runbook | every agent working on MPS itself currently reads pre-treatment docs | none |
| N7 | **Name the offending key** in `get_concept_details` (accept `conceptReference` as an alias or say *"unknown parameter 'conceptReference'; use 'conceptRefs'"*), and document the null form for `childJson` | **D**/S | D14, D15 | error text | 2 retries per sonnet run | none |
| N8 | **Either surface reference cardinality in `detail:"shape"` or drop R7.** `includeChildRoleConcepts` has **zero adoption** across 5 runs; the observed escalation is shape → full for cardinality, which is what `shape` should answer | **S** | hotspot 6 / R7 | add cardinality to the shape projection; reconsider R7 | ~8 turns; deletes an unused parameter's schema cost | none — R7 is currently dead weight |

Not proposed: anything aimed at hotspots 1, 2, 4 or 5 — they are fixed, and the residual
`get_concept_details → Bash` chain (9×) is no longer a forced round trip. At S1-opus-1:18-19 the
worker *chose* `maxInlineBytes: 100` to force a temp file and then projected it with Python
(3.8 KB of output instead of a ~26 KB inline payload): R1's parameter being used as a deliberate
context-budget control, which is the intended behaviour rather than a hotspot.

## 7. Round-2 artefacts

`~/MPSProjects/mcp-study/runs/` — 6 transcripts + server slices + metas + 3 eval reports +
`analysis/` (metrics.csv, tools.json, chains.json, errors.json, hotspots.md); `inventory.json`
(sha `a8bba929af39…`). Baseline evidence restored at `~/MPSProjects/mcp-study-baseline/`.
Fixtures (not in git): `~/MPSProjects/mcp-study/fixtures/{empty-project,recipes}.tar.gz`, the
`empty-project` one rebuilt from a `ProjectX` refreshed to the treated catalog.
