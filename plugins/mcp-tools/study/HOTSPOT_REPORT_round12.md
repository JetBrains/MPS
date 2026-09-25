# Skill Script Automation Study — Round 12 (2026-09-25)

Status: measurement round complete. Scope on request: **S1** (greenfield DSL) and **S3** (40-recipe
bulk authoring) × **opus + sonnet** = 4 cells, plus one SMOKE per model. That is the same matrix as
the 2026-09 baseline of record (`HOTSPOT_REPORT.md`, 2026-09-15), so for the first time since
round 1 every baseline cell has a direct counterpart. No code or docs changes were made in this
round, and nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r13/{SMOKE,S1,S3}-{opus,sonnet}-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `analysis/`. The directory suffix is `-r13` because `-r12` holds round 11.
Citations use `run:step`: the 1-based `tool_use` ordinal, as in `show_steps.py`.

## 0. Harness state

- **MPS**: 2026.1 EAP, build 261.25134, from this checkout. Plugin classes were compiled at the
  08:15 launch, and no source file is newer.
- **Observer sequence**:
  - Before the runs: `capture`, then `calllog runs-r13/server-calllog.jsonl`, then `shutdown`,
    which closed the dev checkout. A synthesized harness project was opened with `start`, followed
    by `wait` and SMOKE.
  - For the whole round: one MPS process, **pid 21973**, the same `mpsPid` in all six metas.
  - At wrap-up: `calllog` was cleared, the dev checkout reopened, and MPS shut down and restarted
    on the dev checkout (pid 40562). `ps` confirms the new process carries no `-Dmps.mcp.calllog`.
- **Measured surface**:
  - `inventorySha256 e6b87321…`: 48 tools, 39 `mps_mcp_*`, descriptions 55,845 B, schemas
    40,114 B.
  - `skillsSha256 78064c75…`.
  - Both hashes are **identical to rounds 10 and 11** and match on every run. This round therefore
    measures the committed state, re-sampled a day later.
- **In-flight edits were not measured.** Other sessions had uncommitted D49/D51/D52 edits in this
  worktree (`git status`: `src/**/*Toolset.kt`, `mps-baselanguage`, `mps-model-manipulation`).
  The unchanged skills sha proves that none of those skill edits reached the installed catalog.
  None of the source edits reached the running plugin either, because its classes predate them.
- **Prompts are frozen.** `promptSha256` is `96376ae7` for S1 and `a922898b` for S3, the same as the
  baseline runs in `~/MPSProjects/mcp-study/runs/`.
- **Fixtures differ from the baseline.**
  - S1 ran on a synthesized empty project; the baseline ran on a tarball of `ProjectX`, as
    `fixtures/README.md` requires every round to disclose.
  - S3 ran on `fixtures-r12/recipes.tar.gz` (2026-09-24, S1 sample Recipe and Cookbook roots
    removed). The baseline S3 fixture still had those samples (lesson 22).
  - Both tarballs were verified to be clean of any agent doc surface.
- **Harness checks**:
  - Contamination guard: exit 0.
  - Harness unit tests: 43/43 pass.
  - SMOKE: one MCP server, call-log slices of 1 line each, `server_call_surplus` 0 on every run.

## 1. Task outcomes

All four cells **PASS**. Each was checked by an Opus evaluator with read-only tools only, against
the scenario's `done_criteria.md`.

| cell | verdict | note |
|---|---|---|
| S1-opus-1 | PASS 6/6 | the worker also checked each rule by injecting violations and then reverting them (`:76–:85`) |
| S1-sonnet-1 | PASS 6/6 | |
| S3-opus-1 | PASS 4/4 | 40/40 recipes matched field by field; 65 seeAlso refs; 23 zero-minute warnings, as the CSV implies |
| S3-sonnet-1 | PASS 4/4 | evaluator checked all 40 recipes, not a sample |

Both S1 evaluators marked criterion 6 ("descriptors not hollow") as *inferred*, because
`get_concept_details` returned no `descriptorStatus`. That was wrong. The field is emitted **only**
when a descriptor is hollow (`AbstractOps.kt:3285`, `concept-details.md:95`), so its absence is a
direct pass. The metas record that. The done criteria do not say it; see D57.

## 2. Metrics vs. the 2026-09 baseline

| metric | S1-opus base → **r12** | S1-sonnet base → **r12** | S3-opus base → **r12** | S3-sonnet base → **r12** |
|---|---|---|---|---|
| task pass | True → **True** | True → **True** | True → **True** | – → **True** |
| turns | 181 → **87** (−52 %) | 148 → **157** (+6 %) | 100 → **23** (−77 %) | 28 → **31** (+11 %) |
| wall-clock s | 1,395 → **475** (−66 %) | 1,322 → **1,254** (−5 %) | 740 → **103** (−86 %) | 229 → **122** (−47 %) |
| cost USD | 14.96 → **3.21** (−79 %) | 5.83 → **5.11** (−12 %) | 5.55 → **0.89** (−84 %) | 1.13 → **0.74** (−35 %) |
| cache-read tokens | 27.06 M → **13.86 M** | 27.50 M → **25.95 M** | 13.56 M → **2.12 M** | 4.00 M → **3.68 M** |
| tool calls | 173 → **85** | 135 → **149** | 97 → **21** | 26 → **28** |
| MCP calls | 90 → **62** | 71 → **75** | 68 → **13** | 11 → **11** |
| Bash | 73 → **19** | 3 → **16** | 25 → **6** | 4 → **5** |
| skill-file reads | 24 → **13** | 9 → **36** | 3 → **2** | 3 → **9** |
| skill bytes read | 136,506 → **106,424** | 160,079 → **120,283** | 17,443 → **14,990** | 17,947 → **33,999** |
| temp-file envelopes | 32 → **0** | 23 → **0** | 25 → **1** | 4 → **0** |
| Bash reads of temp results | 33 → **0** | 0 → **0** | 12 → **3** | 0 → **0** |
| tool-result bytes | 254,414 → **189,531** | 444,385 → **289,462** | 184,005 → **59,145** | 183,320 → **62,555** |
| error envelopes | 2 → **1** | 5 → **11** | 4 → **0** | 1 → **0** |
| error→retry pairs | 2 → **1** | 2 → **8** | 4 → **0** | 0 → **0** |
| validation loops | 1 → **0** | 1 → **0** | 0 → **0** | 0 → **0** |
| ToolSearch fetches | ~7 → **3** | ~7 → **12** | – → **1** | – → **2** |

Round total: 1,954 s wall-clock, $9.95, 298 turns, 283 tool calls. The baseline's four cells took
3,686 s, $27.47, 457 turns and 431 tool calls.

**Reading.**
- **Opus** improved by half to four-fifths on every cost axis in both scenarios.
- **Sonnet** is flat to slightly worse on turns and tool calls, cheaper on cost and wall-clock, and
  worse on errors and skill-read count.
- **Sonnet reproduces round 10.** Round 10 measured the same surface: S1-sonnet had 164 turns,
  $7.37 and 43 skill reads; S3-sonnet had 31 turns, $0.77 and 8 skill reads. Two samples of the
  same surface give the same sonnet shape, so this is the surface's sonnet behaviour, not noise.
- **Opus has no intermediate data point.** Opus was not measured in rounds 2–11, so its gain cannot
  be attributed to any single remedy.
- **Lesson 12 still applies.** n = 1 per cell; judge by the chains below, not by turn deltas alone.

**Fixed context (H10) holds.**
- Cache-read per turn: S1-opus 159 K, S1-sonnet 165 K; baseline 150 K and 186 K.
- Turn count remains the lever: every sonnet-only turn in S1 costs as much context as an opus turn.

## 3. Baseline hotspots: which moved

| # | baseline hotspot | baseline (4 runs) | round 12 (4 runs) | verdict |
|---|---|---|---|---|
| 1 | A: temp-file envelope → Read/Bash of the file | 84 envelopes, 45 follow-up reads | **1** envelope (`S3-opus-1:17`: a deliberate full model dump for the CSV diff, consumed by 3 Python calls `:18–:20`) | **eliminated** |
| 2 | C: per-root re-validation after a clean model check | 75 checks, ≈ 60 avoidable (`S3-opus-1:38–90`) | 16 checks in total (8/5/1/2); S3 is model-level with `rootsChecked: 44` (`S3-opus-1:16`); 0 validation loops | **eliminated**. The only single-root checks are `S1-opus-1:81` (a deliberate rule test) and `S3-sonnet-1:27` (1 extra call) |
| 3 | D: skill reference reads before an MCP call | 39 reads / 332 KB | 60 reads / 276 KB (13/36/2/9) | **moved sideways**: bytes −17 %, reads +54 %. All of the increase is sonnet (S1 9 → 36, S3 3 → 9); opus fell 27 → 15. See §4.1 |
| 4 | B′: ad-hoc Python re-authored for result shaping | ~22 heredocs, 2 tracebacks | 19 Python Bash calls (5/8/4/2), **0 tracebacks** | **changed purpose**. Opus 22 → 9. Sonnet 0 → 10: it now writes `/tmp/build_*.py` blueprint generators (`S1-sonnet-1:78, :105, :119, :134, :137, :145`) instead of hand-typing JSON. Shaping of results is gone because results are small |
| 5 | B: blueprint file → bulk insert; response larger than input | 63 KB file → 33 KB response; `/tmp` rejected | 44 KB blueprint → **5.8 KB** summary (`S3-opus-1:15`), 6.2 KB (`S3-sonnet-1:22`); `/tmp/*.json` accepted (`S1-sonnet-1:89, :107, :123`) | **eliminated** (response −82 %, D3 did not reproduce: second data point after round 11) |
| 6 | Discovery refinement: `get_concept_details` re-called for a concept the previous result revealed | 3 chains of 2–3 hops per S1 run | S1-opus-1: 4 calls, no chain. S1-sonnet-1: **15** calls plus two search chains, `:81–:86` (6 calls to learn that `AnonymousClassCreator` must be wrapped in `GenericNewExpression`) and `:99–:104` (3 `search_concepts` for a sum operation, then 3 `get_concept_details`) | **moved for opus, not for sonnet**. The `:81–:86` chain is the D51 class |
| 7 | Guessable-but-undocumented literals and parameter asymmetries | 4 error→retry pairs | 0 for opus and S3. S1-sonnet-1: 6 distinct misses, each fixed in 1 step: `:65–:67` singular `conceptRef` (3 calls in one parallel batch = 1 turn; D56), `:83` `query` (message names `searchTexts`), `:90` MAKE `moduleReference`, `:92` plural `nodeReferences` on `check_root_node_problems` | **cost per miss fell to one turn; frequency did not.** The last two keys are new; see §4.3 |
| 8 | `ToolSearch` schema fetches | ~7 per run | 3 / 12 / 1 / 2 | harness overhead, not addressable by the plugin; sonnet batches worse |

**Summary.**
- **Moved:** #1, #2 and #5 are gone and stay gone, their fourth confirmation since round 2. #4 no
  longer produces tracebacks.
- **Moved for opus only:** #6.
- **Still present, in the same place rounds 10 and 11 put them:** #3 skill navigation and #7
  parameter spelling, both concentrated in S1-sonnet. The S1-sonnet cost surplus over opus is where
  this lands.

## 4. Where S1-sonnet's extra turns went

S1-sonnet-1 used 149 tool calls against 85 for S1-opus-1. By phase (steps, sonnet vs opus):

| phase | S1-sonnet-1 | S1-opus-1 |
|---|---|---|
| structure + editors | 1–34 (34) | 1–33 (33) |
| **constraints** | **35–93 (59)** | 43–62 (20) |
| behavior | 94–108 (15) | 34–42 (9) |
| typesystem | 109–125 (17) | 63–68 (6) |
| solution + samples | 126–149 (24) | 69–85 (17) |

The constraints aspect accounts for **39 of the 64** extra calls. At about 165 K cache-read tokens
per turn, that is roughly 6 M tokens.

### 4.1 Skill navigation (hotspot #3, D50)
- **13 reference reads for one constraints root** (`S1-sonnet-1:36–:48`): `choosing-scope-style`,
  `imperative-scope`, two property-constraint files, `concept-roots`, `scope-helpers`, the
  `scope-fqn-reference` index plus 3 of its sub-files, both `computed-sequences-*` files and the
  calculator example.
- **Wrong-folder reads.** `:59–:60` then asked for `computed-sequences-*.md` under
  `scope-fqn-reference/`, a sibling folder that does not hold them. The links in `SKILL.md:43` and
  `referent-constraints.md:18–19` are correct, so this is a navigation slip across two similar
  folder names, not a broken link.
- **Re-reads.** After a `find` (`:61`), `:62–:64` re-read the three files already read at `:46–:48`.
- **Opus comparison.** Opus read the same skill with 2 Bash `cat` calls (`S1-opus-1:43–44`) and
  finished the aspect in 20 calls.
- **This is D50 again.** The per-section split lowered bytes but not reads, and the index the
  agent needs ("self-exclusion scope → this one file") is not the one it follows.

### 4.2 BaseLanguage wrapper (hotspot #6, D51)
`:73` built the RecipeRef scope as an anonymous `ListScope` subclass, with `AnonymousClassCreator`
placed directly as an expression, and the insert was rejected. `:81–:86` walked
`IS_SUBCONCEPT_OF` → `GET_ALL_SUPERCONCEPTS` → 3× `search_concepts` → `get_concept_details`
before it found the `GenericNewExpression.creator` wrapper (`:86` assistant: "Found it —
`AnonymousClassCreator` must be wrapped in a `GenericNewExpression.creator` child").

D51 (open) states this rule generally: every `AbstractCreator` must be the `creator` of a
`GenericNewExpression`. It was filed for `ArrayCreatorWithInitializer`; this is a second creator
kind hitting it. The worker had read `computed-sequences-blueprint.md` (`:47`, `:63`, 13.7 KB),
which contains the wrapped form, and still built it unwrapped.

### 4.3 Parameter spelling (hotspot #7)
- **`get_concept_details` singular `conceptRef`** (`:65–:67`): the covered D56 case. It was one
  parallel batch, so it cost one turn.
- **`alter_nodes MAKE` `moduleReference`** (`:90`): the error lists the expected keys
  (`models`, `modules`, `rebuild`, `wholeProject`) and the next call succeeded.
- **`check_root_node_problems` plural `nodeReferences` with an array** (`:92`): the error names
  `nodeReference`. This is the mirror image of D55. After D43 the surface uses plural on
  `get_concept_details`, `search_concepts` and MAKE `modules`, but singular on
  `check_root_node_problems` / `print_node`, so a model trained on one tool guesses the other's
  spelling wrong.
- **`search_concepts` `query`** (`:83`): already known; the model ignored a correct message.

Every miss recovered in exactly one step, so the error text works. What remains is the mixed
singular/plural naming across tools, not how the errors are worded.

## 5. Hypotheses (update against the baseline §3)

| # | baseline verdict | round 12 |
|---|---|---|
| H1 blueprint authoring | confirmed, moderated | **confirmed, shifted**: errors are now concept-shape errors (D51), not JSON, path or truncation errors; sonnet generates blueprints with Python |
| H3 bulk | refuted as stated | **refuted**: 2 inserts (dry run + real) for 41 roots, one Python transform, 0 tracebacks |
| H4 discovery payloads | confirmed, #1 family | **refuted now**: 1 envelope in 4 runs |
| H5 validate loops | partly | **not observed**: 0 loops, trust re-checks gone |
| H6 ref wiring | refuted | **refuted**: name resolution wired 65 seeAlso and 40 cookbook refs in one insert in both S3 runs |
| H7 skill reading | confirmed for greenfield | **confirmed for sonnet greenfield only**; opus read less than the baseline |
| H8 stale runtime | not observed | **not observed**: 1 text hit per S1 run, as before; no `reload_all` |
| H10 fixed context | ≈ 150 K per turn | **holds**: 159–165 K per turn |

## 6. Defects

Round-12 evidence goes into `docs-defects.md`: D50 (skill navigation), D51 (second creator kind)
and D56 (singular `conceptRef` again). One new study-asset defect:

- **D57, `scenarios/S1/done_criteria.md` criterion 6.** It asks for `descriptorStatus` without
  saying that the field appears only when a descriptor is hollow. Both evaluators this round
  reported the criterion as unverifiable or inferred. **D:** add "absent = healthy" to the
  criterion. It changes only the evaluator side, so the prompt sha is unaffected (lesson 25).

Parameter asymmetry (§4.3) is a candidate, not a filed defect. The two new keys appeared once each
and cost one turn each. File it only if a later round repeats them.

## 7. Remedy candidates for Gate 2 (none implemented)

| # | remedy | tier | evidence | est. saving | risk |
|---|---|---|---|---|---|
| R-a | **D50**: in `mps-aspect-constraints/SKILL.md`, a per-job row that names **one** file for "reference scope excluding the enclosing node / self" (the S1 constraint), and says the `computed-sequences-*` files live under `referent-constraints/`, not `scope-fqn-reference/` | D | `S1-sonnet-1:36–:64` | ~15 calls on S1-sonnet | none; check the new row is not an S1 answer key (lesson 19): keep it pattern-level |
| R-b | **D51**: state the general `AbstractCreator` → `GenericNewExpression.creator` rule in `mps-baselanguage` Critical Directives (in-flight in this worktree, uncommitted, not measured) | D | `S1-sonnet-1:73–:89` | ~6–8 calls | none |
| R-c | **D57**: done-criteria wording | D (study) | both S1 evals | evaluator time only | none |
| R-d | accept `nodeReferences` (array) on `check_root_node_problems` and `moduleReference` on MAKE as aliases | S | `S1-sonnet-1:90, :92` | 2 turns, once each | widens the D43 near-miss surface; wait for a repeat |

**Not proposed.** Nothing for hotspots #1, #2 and #5 (fixed). Nothing for ToolSearch (harness).
No P-off script for sonnet's blueprint generators: they ran first time with 0 tracebacks, so the
turns are authoring, not rework.
