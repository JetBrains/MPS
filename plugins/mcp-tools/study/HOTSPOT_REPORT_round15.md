# Skill Script Automation Study — Round 15 (2026-09-25)

Status: measurement round complete. Scope on request: **S1, S2, S3** × **opus + sonnet** = 6 cells,
plus one SMOKE per model. The round measures the committed HEAD `b79e2ac999e7`: D51/D52 assignability
hints, D56 near-misses, the D54/D61 console work and the D58–D60 fixes. No code or docs remedy was
made in this round. Nothing was pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r16/{SMOKE,S1,S2,S3}-{opus,sonnet}-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `analysis/` (including `compare.md` and the reviewer's `review.md`). The
directory suffix is `-r16` because `-r15` holds round 14. Citations use `run:step`, the 1-based
`tool_use` ordinal that `show_steps.py` prints.

**Baseline of record.** `HOTSPOT_REPORT.md` (2026-09-15) covers S1 + S3 × (opus, sonnet). Its raw runs
live in `~/MPSProjects/mcp-study-baseline/runs`, **not** in `~/MPSProjects/mcp-study/runs`, which holds
round 2 (lesson 36). All three evidence sets were re-analysed with today's `analyze_runs.py`:
- baseline → `runs-r16/analysis-baseline/`
- round 13 → `runs-r16/analysis-round13/`
- round 10 → `runs-r16/analysis-round10/`

The token columns below are therefore result-based (D50 M-0), not the per-event sums the baseline
report quoted. For example, S1-opus-1's cache read is **18.31 M** here, against the 27.06 M the
baseline report published. S2 has **no baseline cell**; it is compared with round 10's `S2-sonnet-1`
(the most recent S2).

## 0. Harness state

- **MPS**: 2026.1 EAP from this checkout.
  - The plugin build is fresh: every compiled class and resource under `plugins/mcp-tools/classes` is
    newer than its source.
  - The running MPS (started 14:47) therefore carried HEAD `b79e2ac` (committed 14:52, compiled 14:47).
    The working tree was clean before and after the round.
- **Instrumentation**:
  - `capture` → `calllog runs-r16/server-calllog.jsonl` → `shutdown`. The shutdown closed the dev
    checkout, which had been open.
  - `start` on the synthesized harness `proj-r16/harness` → `wait` → SMOKE ×2.
  - One MPS for the round: pid **7081**, the same `mpsPid` in all 8 metas.
  - `server_call_surplus` is 0 on every run. There were 0 pre-dispatch, Welcome-screen or
    `MODAL_BLOCKED` events.
- **Measured surface**:
  - `inventorySha256 f865cb89…`: 48 tools, 39 `mps_mcp_*`.
  - `skillsSha256 b1706dd1…`, identical on all 8 runs.
- **Worker models**:
  - `sonnet` = `claude-sonnet-5`, **the same id as the baseline**.
  - `opus` = `claude-opus-5-5`, where the baseline used **`claude-opus-5`**. The alias moved after
    round 2 (the last `claude-opus-5` run); rounds 3–11 ran no opus cell, and round 12 is the first
    on `claude-opus-5-5`. **Opus deltas against the baseline therefore mix a model change with the
    treatment; only the sonnet deltas isolate the tools and skills.** Round 13 is the same-model
    reference for opus.
- **Prompts**: `promptSha256` for S1 (`96376ae7…`), S3 (`a922898b…`) and SMOKE (`313ab6b5…`) are
  identical to the baseline metas.
- **Fixtures**:
  - S1: synthesized empty project, `migration.xml` derived from this MPS. The baseline used a tarball
    of `ProjectX` (see `fixtures/README.md`).
  - S2: `fixtures-r12/statechart.tar.gz` (sha `d9dd23be…`, the same as round 8's).
  - S3: `fixtures-r12/recipes.tar.gz` (`40f91e40…`, S1 samples removed; the baseline S3 fixture still
    had them, lesson 22).
  - None of these tarballs contains `.claude/`, `.agents/`, `AGENTS.md` or `CLAUDE.md`.
- **Guards**: `check_user_agents.py` exit 0; harness unit tests 56/56.
- **SMOKE context floor** (cache read + write + input at `result`): opus **62,052**, sonnet **98,864**
  tokens.
- **Wrap-up**:
  - The last scratch was closed with `shutdownWithLastProject=true`, and `calllog` was cleared.
  - MPS was restarted on the dev checkout (pid 23234). `ps` shows no `-Dmps.mcp.calllog`.
  - `git status` is clean.

## 1. Task outcomes

All six cells **PASS**. Each was checked by a read-only Opus evaluator against `done_criteria.md`,
live, before the project closed.

| cell | verdict | key evidence |
|---|---|---|
| S1-opus-1 | PASS 6/6 | RecipeRef/IngredientRef wrappers; enums correct; 2 constraints, 1 checking rule, `totalMinutes`; 3+3+1 samples, 7 roots clean; no `descriptorStatus` |
| S1-sonnet-1 | PASS 6/6 | same shape (RecipeReference/IngredientReference); Pancakes 3 steps, seeAlso Waffles/Crepes; 7 roots clean |
| S2-opus-1 | PASS 5/5 | `Guard.condition`, `Transition.guard` [0..1], `Guard_Constraints` trim-not-empty, `AddGuard` intention; one guard `count > 3` renders `on shiftUp [count > 3] -> 4`; sandbox 0 problems |
| S2-sonnet-1 | PASS 5/5 | same; renders `on shiftUp [ count > 3 ] -> 4`; the naming-policy warning on "Add guard" is the only warning |
| S3-opus-1 | PASS 4/4 | 40 Recipes + `All Recipes` + 3 Ingredients; all 40 match the CSV; 40 distinct RecipeRefs; 44 roots, 0 errors, 23 warnings = 23 `:0` steps in the CSV |
| S3-sonnet-1 | PASS 4/4 | same; the evaluator compared all 40 recipes against the CSV, 0 mismatches |

All four baseline cells were PASS as well. The baseline report's table shows "-" for S3-sonnet-1,
but its meta records `taskPass: true` (evaluator 2026-09-15, 4/4), so the pass rate is unchanged at
4/4 on the comparable cells.

## 2. Round metrics

r1 = baseline (2026-09-15), r13 = round 13 (`runs-r14`, same opus model as today), r15 = this round,
r10 = round 10 (`runs-r11`). The full table, with every column, is in `runs-r16/analysis/compare.md`.

| metric | S1-opus r1 | r13 | **r15** | S1-sonnet r1 | r13 | **r15** | S3-opus r1 | r13 | **r15** | S3-sonnet r1 | r13 | **r15** | S2-sonnet r10 | **r15** | S2-opus **r15** |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| turns | 181 | 100 | **124** | 148 | 149 | **150** | 100 | 21 | **20** | 28 | 33 | **24** | 158 | **132** | **81** |
| wall-clock s | 1,395 | 439 | **541** | 1,322 | 1,196 | **1,261** | 740 | 80 | **77** | 229 | 138 | **147** | 1,431 | **1,274** | **308** |
| cost USD | 14.96 | 3.59 | **4.18** | 5.83 | 5.38 | **5.08** | 5.55 | 0.82 | **0.79** | 1.13 | 0.82 | **0.64** | 5.67 | **4.73** | **2.59** |
| cache-read tokens | 18.31 M | 6.24 M | **7.46 M** | 15.52 M | 13.53 M | **11.95 M** | 4.02 M | 0.83 M | **0.62 M** | 1.95 M | 1.65 M | **1.05 M** | 13.76 M | **10.34 M** | **5.27 M** |
| tool calls | 173 | 97 | **121** | 135 | 138 | **142** | 97 | 19 | **18** | 26 | 31 | **22** | 148 | **124** | **75** |
| MCP calls | 90 | 63 | **87** | 71 | 73 | **66** | 68 | 10 | **8** | 11 | 11 | **7** | 99 | **73** | **52** |
| Bash | 73 | 30 | **29** | 3 | 22 | **16** | 25 | 7 | **8** | 4 | 5 | **5** | 7 | **3** | **14** |
| skill-file accesses | 26 | 20 | **18** | 9 | 36 | **49** | 3 | 3 | **3** | 3 | 13 | **5** | 31 | **32** | **8** |
| skill bytes | 152,862 | 145,320 | **130,836** | 160,079 | 158,850 | **149,849** | 17,443 | 15,455 | **10,680** | 17,947 | 68,395 | **13,521** | 140,876 | **103,019** | **48,086** |
| whole-file re-reads | 0 | 0 | **0** | 1 | 4 | **4** | 0 | 0 | **0** | 0 | 0 | **1** | 6 | **5** | **0** |
| compactions | 1 | 1 | **1** | 2 | 2 | **2** | 1 | 0 | **0** | 0 | 0 | **0** | 2 | **2** | **0** |
| temp-file envelopes | 32 | 1 | **1** | 23 | 1 | **0** | 25 | 1 | **1** | 4 | 0 | **0** | 4 | **3** | **3** |
| Bash reads of temp results | 33 | 1 | **1** | 0 | 0 | **0** | 12 | 3 | **3** | 0 | 0 | **0** | 0 | **0** | **3** |
| MCP authored chars | 26,373 | 16,766 | **21,834** | 26,384 | 28,528 | **24,324** | 24,252 | 1,832 | **1,387** | 2,436 | 2,161 | **1,130** | 25,503 | **25,957** | **14,371** |
| tool-result bytes | 254,414 | 221,656 | **239,349** | 444,385 | 269,837 | **293,530** | 184,005 | 56,882 | **60,195** | 183,320 | 107,867 | **44,870** | 291,873 | **329,802** | **123,059** |
| error envelopes | 2 | 0 | **4** | 5 | 3 | **2** | 4 | 0 | **1** | 1 | 0 | **0** | 12 | **8** | **0** |
| error→retry pairs | 2 | 0 | **4** | 2 | 3 | **2** | 4 | 0 | **1** | 0 | 0 | **0** | 9 | **6** | **0** |
| `check_root_node_problems` | 16 | 12 | **18** | 8 | 4 | **5** | 50 | 2 | **2** | 1 | 2 | **2** | – | **6** | **8** |
| server ms | 9,984 | 7,929 | **6,763** | 4,478 | 4,817 | **14,351** | 1,564 | 82 | **118** | 175 | 131 | **114** | 7,865 | **5,599** | **4,377** |

### 2.1 Deltas against the baseline

**Sonnet** is the clean comparison, because the model id is the same:

| cell | turns | tool calls | MCP calls | cost | cache read |
|---|---|---|---|---|---|
| S1 | 148 → 150 (+1 %) | 135 → 142 (+5 %) | 71 → 66 (−7 %) | $5.83 → $5.08 (−13 %) | 15.5 M → 12.0 M (−23 %) |
| S3 | 28 → 24 (−14 %) | 26 → 22 (−15 %) | 11 → 7 | $1.13 → $0.64 (−43 %) | 1.95 M → 1.05 M (−46 %) |

The S1-sonnet turn count has not moved since the baseline (148 / 115 / 149 / 150 in rounds 1, 2,
13, 15). Its MCP traffic got smaller and
cheaper. The turns that disappeared from tool results reappeared as skill-catalog navigation: 9
skill-file accesses became 49, while the bytes stayed flat (160 → 150 KB). That is lesson 35,
confirmed on the baseline cell itself.

**Opus**, with the model change folded in:

| cell | turns | tool calls | cost |
|---|---|---|---|
| S1 | 181 → 124 (−31 %) | 173 → 121 (−30 %) | $14.96 → $4.18 (−72 %) |
| S3 | 100 → 20 (−80 %) | 97 → 18 (−81 %) | $5.55 → $0.79 (−86 %) |

Against round 13, which ran the same opus model, S1-opus is **+24 turns / +24 tool calls**. §3.2
itemises about 15 of those. The rest is n = 1 variance (lesson 12).

**S2-sonnet**, round 10 → 15: 158 → 132 turns (−16 %), 148 → 124 tool calls, 99 → 73 MCP calls
(−26 %), $5.67 → $4.73 (−17 %). The chains that went away are round 10's
`get_concept_details → get_concept_details → Read` temp-file ping-pong (4× each, 29–40 KB), now
removed by the inline `shape`. This is the first **S2-opus** measurement: 81 turns, $2.59, 0 errors.

## 3. Which baseline hotspots moved

The families are the ones ranked #1–#8 in `HOTSPOT_REPORT.md` §2. Values are for the four
S1/S3 cells unless marked. Determinism applies to the instances that remain; the reviewer
assigned it from `show_steps.py`.

| # | Baseline hotspot | r1 | r13 | **r15** | Moved? | Evidence (r15) |
|---|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash** | 84 envelopes (32/23/25/4) | 3 | **2** (1/0/1/0); S2: 3 + 3 | **Fixed** for S1/S3 (−98 %). **Residual** in S2 (det 1.0): `list_node_intentions` is the one tool that always writes a file (`JetBrainsMPSIntentionsMcpToolset.kt:105`, `saveToTempFileResult`), even for 30 B. S2-sonnet also read two deep dumps of 86 KB and 40 KB. | `S2-opus-1:65-66, :72-75`; `S2-sonnet-1:114-115, :53-54, :111-112` |
| 2 | **C — per-root validation after a clean model-level check** | 75 calls, ≈ 60 avoidable (S3-opus 50) | 20 | **27** (18/5/2/2) | **Fixed** as the S3 "every root" habit (50 → 2, both S3 cells check the model once). **Changed form** in S1-opus: of its 18 checks, 8 follow a write, 2 are a real fix loop (`:87→94→96`) and 1 is a deliberate negative test. It ends with a sweep: a **module** ref that is rejected (`:116`), then 5 per-aspect-model checks (`:117-121`), 4 of them on models that had not changed since their last clean check. Round 13 shows the same sweep (`:80-82, :96-97`). Det 1.0. | `S1-opus-1:116-121`; `S2-sonnet-1:122-124`; `S3-*`: 1 extra root check to read a warning's text (`S3-opus-1:15`, `S3-sonnet-1:20`) |
| 3 | **D — skill reference reads before an MCP call** | 41 accesses / 348 KB | 72 / 388 KB | **75 / 305 KB** (+ S2-sonnet 32 / 103 KB) | **Largest family now, and regressed in count** (sonnet S1: 9 → 49). **Improved in bytes** (−12 % vs r1, −21 % vs r13). The count grows because index files are split into one file per section (index hop `S1-sonnet-1:86 → :87-89`), and D50's per-job index still does not exist. All 4 re-reads in S1-sonnet and 4 in S2-sonnet come right after a compaction (see finding 4.9). Of the top 3 files by bytes, 2 are reached by `SKILL.md` routing; `closures-catalog.md` (9.9 KB) is reached by a catalog grep (`:66`). | `S1-sonnet-1:37-42 → :63-65, :68`; `S2-sonnet-1:47-50 → :57-60`; detours `S1-sonnet-1:66-71, :84-92, :102-113` |
| 4 | **B′ — ad-hoc Python for result shaping / CSV→blueprint** | ≈ 22 heredocs (opus), 49 python Bash | 11 | **13** (S1 8, S3 5) + S2-opus 2 | **Result shaping fixed** (0 in S1, 1 `jq`). **Residual**: opus now writes every blueprint through its own helper, `$TMPDIR/recipes/bp.py` (`S1-opus-1:31, 46, 61, 66, 73, 80, 103`; det 0.5, authoring medium). S3-opus runs the same 3 CSV-vs-dump verification scripts as round 13, with 1 traceback from guessing reference keys (`:16-18`, det 1.0). **The shipped `mps_dump.py` / `table_to_bulk_insert.py` were used 0 times** (4 times in r13). | `S3-opus-1:10, :16-18`; `S3-sonnet-1:15-16` |
| 5 | **B — blueprint file → insert** | 22 writes + 8 inserts; 33 KB bulk response; `/tmp` rejected | 8 writes | S1-opus 8 Bash, S1-sonnet 4 Write, S3 1 + 1 | **Improved.** The 41-root insert response is 5.8 KB (the input was larger), and `/tmp/*.json` is accepted (D3 does not reproduce). **Residual**: a bulk `dryRun` returns 17,452 B of 65 "did not resolve" warnings for intra-batch names, which the real insert then resolves. Opus writes blueprints under 4 KB to files (det 0.5). | `S3-opus-1:11 → :12`; `S1-opus-1:46-47, :73-74` |
| 6 | **Discovery refinement** | 2–3 hops × 3 chains per S1 run | – | opus 0 closure hops; sonnet 3 search→get pairs | **Improved.** **New deterministic gap** (det 1.0, 3 runs): `get_concept_details detail:"shape"` returns name / targetConcept / cardinality but **no declaration node ref** (`JetBrainsMPSLanguageMcpToolset.kt:688-697`). Any editor cell or `SLinkAccess` needs that ref, so each of these runs makes a second call. | `S1-opus-1:26-28`; `S2-sonnet-1:20→40`; `S2-opus-1:17→27` |
| 7 | **Guessable-but-rejected literals** | 4 pairs | 2–3 | **4** (S1/S3); S2-sonnet 5 | **Unchanged in count, improved in cost.** 8 of 9 recover on the next call, because every error text now names the fix. The literals differ from the baseline's: `search_concepts query`, `get_concept_details conceptReference`, `print_node "text"` / `"PLAIN_TEXT"` (sent even though `mcp-tools-index.md:26` says both are rejected), top-level `code` / `featureKind` on `parse_java_and_insert`, and a `properties` object map. As in D56's closure, most are single-turn misses that docs cannot remove. | `S1-opus-1:91`; `S1-sonnet-1:72`; `S2-sonnet-1:25, 32, 92, 103, 109` |
| 8 | **ToolSearch schema fetches** | S1-sonnet 15 | 14 | S1-sonnet 14; opus 1–4 | **Unchanged**; harness-level, not addressable here. | – |

Not in the baseline list, but tracked since:
- **Assignability errors (D51/D52, first live measurement).** There was one instance, `S2-sonnet-1:101`
  (`SNodeCreator` in `AssignmentExpression.rValue`).
  - The error named `GenericNewExpression.creator` and gave the replacement JSON plus
    `details.wrapperCandidates`.
  - The worker applied it as given, and `:102` succeeded. Recovery took **1 call**, with 0
    intermediate calls (`assignability_recovery_calls = 0`, `assignability_unrecovered = 0`).
  - For comparison, round 12 needed a 6-call search for the same class of error.
- **Validation loops** (≥ 3 checks on one root) are 3 in S1-opus-1. They are the fix loop plus the
  sweep described in #2, not a new behaviour.
- **Server time.** S1-sonnet's 14.4 s is mostly one 10.0 s `alter_nodes MAKE rebuild=true` of the
  solution at `:142`, which the done criteria do not require. Without it, the run is at round 13's
  level. It costs no turns.

### 3.1 In one line

Families #1 (temp files), #2 (every-root re-validation, S3) and #6 (discovery ping-pong) are
fixed or improved. #4 and #5 are down to judgment-level authoring. #7 is cheap now, and #8 is outside
the plugin. **#3, skill navigation, is the only family that grew. On sonnet greenfield it now
decides the turn count**, which is why S1-sonnet is flat at 148 → 150 turns while its MCP calls,
tool-result bytes and cache reads all fell.

### 3.2 Why S1-opus is +24 turns against round 13

This is the same model and the same prompt. The reviewer itemised the extra turns:

| cause | turns | evidence |
|---|---|---|
| end-of-run module check + model sweep (#2) | 6 | `:116-121` |
| no-op `model_used_language ADD`, answered `providedByDevKit` (finding 4.4) | 3 | `:57-59` |
| `ListScope.forNamedElements` ref hunt (finding 4.3) | 4 | `:52-55` |
| fix loop on the "total minutes" editor cell (the wrong `node` parameter) | 3 | `:87-96` |
| worker-initiated negative tests of the rules, plus the restore | ≈ 6 | `:109-115` |

The negative tests were not asked for. That leaves about 2 turns, which is noise.

## 4. Findings and candidate remedies (for Gate 2)

Each finding below was verified against the tree by the observer, not only by the reviewer. The line
numbers are at HEAD `b79e2ac`. "Turns" are per affected run.

1. **`list_node_intentions` always returns a temp file.** It is the only remaining unconditional
   `saveToTempFileResult` (`JetBrainsMPSIntentionsMcpToolset.kt:105`).
   - **S**: route it through `finalizeResult(…, maxInlineBytes, …)` like the other readers.
   - Evidence: `S2-opus-1:65-66, :72-75` (30 B), `S2-sonnet-1:114-115` (533 B).
   - Saves about 1–2 turns per intention task. Risk: none.
2. **`check_root_node_problems` has no module scope, and its NOT_FOUND text is wrong.**
   - The message ends "This tool has no modelReference parameter; retry with nodeReference set to the
     value you passed as modelReference" unconditionally (`JetBrainsMPSNodeMcpToolset.kt:907`), even
     when the caller passed `nodeReference` (`S1-opus-1:116`).
   - **S**: accept a module reference, check every model it owns, and return
     `[{model, rootsChecked, errors, warnings}]`. Emit the `modelReference` sentence only when that
     key was actually passed.
   - Saves about 5 turns per greenfield opus run (`:117-121`; round 13 `:80-82, :96-97`).
3. **The `forNamedElements` refs are missing from the file workers actually read.** Both S1 workers
   hunted for them for the "no self-reference in seeAlso" scope.
   - S1-sonnet spent 4 calls and 22.6 KB (`:47-50`). That includes the `startingPoint=jetbrains.mps.scope`
     → "non-project model … filtered out" → `includeStubModules` retry, which recurs at the same step
     in rounds 10, 13 and 15.
   - S1-opus spent 4 Bash calls (`:52-55`).
   - The mention the workers read is `cross-model-filtered-scope.md:22`, but that file has no ref.
   - **D**: add the persistent method ref there, and a routing row for "exclude the referrer itself"
     in `mps-aspect-constraints/SKILL.md`.
   - **S** (optional): when `startingPoint` names a non-project model explicitly, return it with a
     warning instead of NOT_FOUND.
   - Saves about 4 turns per S1 run.
4. **The constraints recipe prescribes used-language adds that the devkit already provides.**
   - `mps-aspect-constraints/SKILL.md:60` ("2. Add `jetbrains.mps.lang.constraints` to the model's
     used languages. For scope bodies also add …") led to 3 no-op `model_used_language ADD` calls,
     each answered `providedByDevKit: jetbrains.mps.devkit.aspect.constraints` (`S1-opus-1:57-59`).
   - **D**: say that a model created by `create_module` already uses the aspect devkit, so only the
     model imports (`jetbrains.mps.scope`, `jetbrains.mps.lang.core.behavior`) are needed.
   - Saves 3 turns.
5. **The routed typesystem file has no JSON blueprint.**
   - `mps-aspect-typesystem/SKILL.md:57` routes "a checking rule that reports an error → only
     `references/non-typesystem-checking.md`". That file is 34 lines with no blueprint (0 `"concept"`
     lines).
   - S1-sonnet ran 6 more skill accesses (`:86-92`) to find the shape it then inserted cleanly at `:93`.
   - **D**: add that shape as a blueprint (the `ConceptReference` applicable node,
     `ApplicableNodeReference`, `WarningStatement`).
   - Saves about 4 turns per S1 run.
6. **`get_concept_details detail:"shape"` omits declaration refs** (§3 #6).
   - **S**: add `sourceNode` (the persistent ref of the Link/PropertyDeclaration), about 70 B per
     feature.
   - Saves 1–2 turns per editor or `SLinkAccess` task, in 3 of 6 runs. Risk: small payload growth.
7. **`parse_java_and_insert` into constraint bodies does not bind implicit parameters, and it
   accepts invalid Java.**
   - Both S2 runs had to replace the parsed `propertyValue` `VariableReference` with
     `ConstraintsFunctionParameter_propertyValue` by hand (`S2-opus-1:41-45`, `S2-sonnet-1:72-77`).
   - At `S2-opus-1:41` the invalid statement `propertyValue != null && …;` came back `ok:true` as an
     assignment. The worker noticed at `:42`.
   - **S** (preferred): bind `propertyValue` / `node` / `contextNode` inside a `ConceptFunction` body,
     as the parser already does for `this`, and reject an expression statement that is not a
     statement expression.
   - **D**: a row in `java-parser-capabilities/unsupported-and-workarounds.md`.
   - Saves 3–5 calls per S2 run.
8. **The bulk route does not reach the shipped scripts, and dry-run misleads on intra-batch names.**
   - `mps-mcp-workflow/references/bulk-creation.md` (read by both S3 workers) never names
     `table_to_bulk_insert.py`; the only mention is `mps-node-editing/SKILL.md:154`.
   - `mps-node-editing/SKILL.md:62` ("dryRun first if the blueprint is large") produced 17 KB of false
     warnings (`S3-opus-1:11`).
   - **D**: route from `bulk-creation.md`, and say that dry-run cannot see names inside the batch.
   - **P-off**: a `--verify <dump>` mode on the script, to replace `S3-opus-1:16-18`, which is
     identical in round 13.
   - Saves 2–3 turns per S3-opus run.
9. **Sonnet context budget (compaction lands in the constraints phase).**
   - In 5 of 5 sonnet S1/S2 runs since the baseline, the first compaction falls at steps 44–61, in
     the constraints phase. Every sonnet re-read this round follows it (finding 3 above).
   - It is fed upstream by deep JSON prints used only "to look":
     - 49 KB of scaffolded editors (`S1-sonnet-1:31-34`), where opus judged the same editors as
       PLAIN TEXT in 3.8 KB (`S1-opus-1:20-24`);
     - an 86 KB `State_Constraints` dump taken as a pattern (`S2-sonnet-1:53-54`), which opus printed
       as PLAIN TEXT in 706 B (`S2-opus-1:33`).
   - After compaction #2, S2-sonnet re-typed a node id from memory that did not exist (`:91-94`).
   - **D**: `mps-aspect-editor/SKILL.md:32` and `mps-mcp-workflow/SKILL.md` should say to inspect with
     `PLAIN TEXT` and print JSON only for the subtree being edited. Never re-type an id after a
     compaction: pass the name, or re-query.
   - Saves about 8 turns and one compaction (about 250–350 s) per sonnet greenfield run. This is the
     highest-value remaining lever on the family that now decides the turn count.
10. **Smaller, single-run items** (candidates, not filed):
    - the behavior `this` FQN is missing from `body-environment.md:5` (`S1-sonnet-1:110-111`, 2 turns);
    - `perRoot` rows carry counts but not message texts (`S3-*`, 1 turn each);
    - the alias acceptances listed under #7.

**Harness notes.**
- The reviewer suggested keying re-reads on the absolute path, so that `.agents/skills/X` and
  `.claude/skills/X` stop colliding. **Rejected**: `analysis.md` counts them as the same file on
  purpose, and reading two copies of the same text is a real re-read.
- A zsh `no matches found` at `S1-opus-1:52` is an undetected retry. The last statement of the command
  succeeded, so `is_error` stayed false. Worth a signature in `analyze_runs.py`.

**No evidence this round** for H8 (stale runtime or hollow descriptors), `reload_all`,
`MODAL_BLOCKED`, Welcome-screen rejections, or a missing `projectPath`.

## 5. Hypotheses (status after this round)

| # | Status | Round-15 evidence |
|---|---|---|
| H1 | **Moderated further.** Blueprint errors are now 1 assignability error (hinted, 1-call recovery) and 1 local JSON syntax error. | `S2-sonnet-1:101`, `S1-opus-1:45` |
| H3 | **Holds as reformulated.** Bulk is 1–2 inserts; the remaining cost is verification scripting. | `S3-opus-1:16-18` |
| H4 | **Treated.** 2 envelopes in S1/S3. | §3 #1 |
| H5 | **Partly.** One real fix loop (`S1-opus-1:87-96`); the rest are post-write checks and a sweep. | §3 #2 |
| H6 | **Refuted** again: 65 seeAlso + 40 cookbook refs resolved in one insert, `stillBroken: 0`. | `S3-*:12/18` |
| H7 | **Confirmed, and now dominant** for sonnet greenfield. | §3 #3 |
| H8 | **Not observed.** | – |
| H10 | **Holds.** The floor is 62 K (opus) / 99 K (sonnet) tokens, and turn count still drives cost. | SMOKE |

## 6. Defects filed

D62–D69 were added to `docs-defects.md` from findings 4.1–4.8 (one each, in order), and D50 gains
round-15 evidence (finding 4.9 is D50's context-budget side). No remedy has been chosen; that is
Gate 2.
