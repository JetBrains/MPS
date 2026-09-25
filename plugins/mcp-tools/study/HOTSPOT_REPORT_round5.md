# Skill Script Automation Study — Round 5 (2026-09-21)

Status: measurement round complete. Scope on request: **S1** (greenfield DSL) and **S3** (bulk
authoring) on **sonnet only** = 2 cells, plus one SMOKE harness check. Both cells **PASS**.
Measured against the **current** skills and tool descriptions, i.e. after the round-4 remedies that
landed in `394547da519a…6004238cbb56` (P1 `ConceptBehavior` accepted as a METHOD/CLASS_CONTENT
`parse_java_and_insert` context, plus true end-to-end `ok`/`threw`/`errorCode` in the call log; P3
jump tables moved into `mps-aspect-constraints/SKILL.md` and `mps-aspect-structure-concepts/SKILL.md`;
P4 orthogonal `rootsOnly` parameter on `query_nodes`; P6 the mandatory user-agent contamination
guard; P7 shared parse diagnostics on insert/update-root JSON). **P2** (name every wrong key in
rejections) and **P5(b/c)** (mid-run `projectPath` omission) were **not** implemented before this
round and are not expected to have moved.

Baseline of record for the comparison the request asked for: `HOTSPOT_REPORT.md` §1 (2026-09-15).
`HOTSPOT_REPORT_round4.md` (2026-09-18) is quoted as the previous round; its own baseline
column is itself a sonnet-only re-derivation, restated here without re-running the recompute.

Evidence: `~/MPSProjects/mcp-study/runs-r5/{S1,S3,SMOKE}-sonnet-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `*-install.json`, `analysis/` (`analyze_runs.py` output). Every claim
cites `run:step` (1-based tool_use ordinal in the worker transcript).

## 0. Harness state

- **Preflight blocker resolved before any run**: `~/.claude/agents/mps-constraints-agent.md`
  (filename matches `*mps*`) would have tripped the mandatory P6 guard and aborted every launch
  with exit 3. The user moved it out of `~/.claude/agents` for the round (confirmed via a follow-up
  agent-listing check showing only `babysit-build.md` remaining) and MPS was restarted with it gone.
- Call log on: `-Dmps.mcp.calllog=$USER_HOME$/MPSProjects/mcp-study/runs-r5/server-calllog.jsonl`
  added to the `MPS` run configuration for the round; **to be reverted at wrap-up** (lesson 13).
- Golden project `~/MPSProjects/ProjectX` verified empty (`get_project_structure` → `{"modules":[]}`)
  and the only open project (`projectCount:1`) before the SMOKE run.
- Live catalog installed per run through `mps_mcp_initialize_project_for_agents`: both cells and
  SMOKE report `installedSkillCount: 31`, both guides written, and the **same** `skillsSha256`
  `21a0389183f2…` (round 4 was `eaa4eb2032d3…`, so the documentation under measurement did move,
  consistent with the P1/P3/P4 landings above).
- Tool inventory `84725142002a…`: **47 tools (38 `mps_mcp_*`)**, none added or removed since
  round 4; descriptions 48,310 B (round 4: 47,928 B, +382 B — the METHOD-on-behavior contract and
  `rootsOnly` documentation), schemas 37,422 B (**unchanged** from round 4).
- One project open per run, verified with `list_open_projects` (`projectCount: 1`) before each
  launch; fixtures reused from round 4 (byte-identical to round 3's), verified doc-surface-free
  (`tar -tzf … | grep -E '(^|/)(\.claude|\.agents|AGENTS\.md|CLAUDE\.md)'` empty) before extraction;
  S3's start state was verified live before launch: 3 Ingredient / 0 Recipe / 0 Cookbook, matching
  rounds 3–4.
- `promptSha256`: S1 `96376ae7495e…` and S3 `a922898bb9bb…`, both **byte-identical** to rounds 1–4
  (confirmed against the tree, not assumed).
- Fixed per-turn context floor from the SMOKE `result` event: **96,935 tokens**
  (64,254 cache-read + 32,681 cache-creation), essentially flat against baseline → r3 → r4's
  97,836 → 97,058 → 97,026 (H10 holds for the fifth round running). `analyze_runs.py`'s own
  `metrics.csv` cache-read/cache-write columns sum per-message across the whole transcript (not
  just the final result event) and are **not** the H10 floor number — they are used below only for
  whole-run token totals, consistent with how rounds 1–4 used the same columns.
- Both cells' `run_worker.sh` measurement-integrity check (P6) passed with **zero** contamination
  after the user's move; `analyze_runs.py` printed exactly one surplus warning (§5).

## 1. Metrics (sonnet cells)

| metric | S1-sonnet-1 | S3-sonnet-1 |
|---|---|---|
| task pass | **True** | **True** |
| turns | 154 | 30 |
| wall-clock s | 1,213 | 124 |
| cost USD | 5.19 | 0.69 |
| cache-read tokens (metrics.csv, whole-transcript sum) | 25,091,074 | 3,292,077 |
| cache-write tokens (metrics.csv, whole-transcript sum) | 903,084 | 196,381 |
| tool calls | 144 | 27 |
| MCP calls | 79 | 11 |
| Bash | 25 | 6 |
| skill-file reads | 38 | 7 |
| skill bytes read | 142,815 | 28,397 |
| temp-file envelopes | 0 | 0 |
| tool-result bytes | 302,745 | 57,194 |
| transcript-level errors | 13 | 0 |
| error→retry pairs | 11 | 0 |
| validation loops (≥3/root) | 0 | 0 |
| pre-dispatch rejections | 2 | 0 |
| server MPS calls (server_mps_calls) | 79 | 11 |
| server call surplus | 2 (observer traffic, see §5) | 0 |
| **server_errors (true end-to-end, new P1 semantics)** | 4 | 0 |
| server ms total | 17,161 | 220 |

### Totals over the two sonnet cells, vs baseline and round 4

| metric | baseline (sonnet cells) | round 4 | round 5 | r5 vs baseline | r5 vs round 4 |
|---|---|---|---|---|---|
| turns | 176 | 157 | 184 | +4.5 % | +17.2 % |
| wall-clock s | 1,551 | 1,462 | 1,337 | −13.8 % | −8.6 % |
| cache-read tokens | 31.50 M | 22.33 M + 3.75 M = 26.08 M | 28.38 M | −9.9 % | +8.8 % |
| cost USD | 6.96 | 7.94 | 5.89 | −15.4 % | −25.9 % |
| tool calls | 161 | 193 | 171 | +6.2 % | −11.4 % |
| MCP calls | 82 | 116 | 90 | +9.8 % | −22.4 % |
| temp-file envelopes | 27 | 1 | **0** | **−100 %** | −100 % |
| tool-result bytes | 627,705 | 556,819 | 359,939 | −42.7 % | −35.4 % |
| errors / retries | 6 / 2 | 21 / 18 | 13 / 11 | +117 % / +450 % | **−38.1 % / −38.9 %** |
| skill bytes read | 178,026 | 272,432 | 171,212 | −3.8 % | **−37.1 %** |

### A/B verdict against the study's own thresholds
Success = ≥ 30 % fewer tool calls **and** ≥ 25 % fewer context tokens, no drop in pass rate.

| cell | comparison | tool calls | context tokens (cache-read) | pass | verdict |
|---|---|---|---|---|---|
| aggregate | vs baseline | +6.2 % | −9.9 % | 2/2 held | fails (both), but the smallest miss of any round so far |
| aggregate | vs round 4 | −11.4 % | +8.8 % | 2/2 held | mixed — cost/errors/skill-bytes improved sharply, calls and tokens did not clear the bar |

Read plainly: **round 4's single largest cost is gone, and it took most of round 4's regression
with it.** Round 4's S1 regressed on errors (+250 %), retries (+800 %) and skill bytes (+53 %)
versus baseline, driven by one `parse_java_and_insert` crash (~16 calls, ~10 turns) and a
parallel-tool-calling fan-out that multiplied wrong-parameter guesses by 6–8×. Round 5 reproduces
neither: the crash's exact call now succeeds first try (§2, D26), and **zero** assistant turns in
S1-sonnet-1 issued more than one tool call (checked programmatically over the whole transcript), so
every remaining wrong-parameter guess costs one call, not six. Errors and retries fell back to
roughly baseline-adjacent levels (13/11 vs baseline's 6/2 — still elevated, see §2.7) instead of
round 4's 21/18, and skill bytes dropped 37 % from round 4's worst-of-study figure, back below
round 3's level though not quite to baseline. Turns and cache-read tokens are still above baseline
(H10's fixed floor makes turn count the dominant lever, and S1 needed more turns than baseline
despite the crash being gone, see §2.3), which is why the A/B gate still fails on aggregate.

## 2. Did the ranked hotspots move?

| # | Baseline hotspot (family) | Baseline (sonnet cells) | Round 3 | Round 4 | Round 5 | Verdict |
|---|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 27 envelopes | 3 | 1 | **0 in both cells** | **stays fixed (R1)** |
| 2 | **C — per-root validation after a clean model-level check** | 50 calls, 1 loop | 6 calls, 0 loops | 5–6 calls, 0 loops | `validation_loops` **0** both cells; S1 used one `perRoot:true` model-level check (`S1-sonnet-1:138→140`, corrected key), S3 the same (`S3-sonnet-1:25`) | **stays fixed (R2)** |
| 3 | **D — skill reference reads before an MCP call** | 178,026 B / 12 reads | 196,595 B / 17 reads | **272,432 B / 37 reads — worst of the study**, re-reads of `referent-constraints.md` ×4 | **171,212 B / 45 reads — best S1 figure of any sonnet round (142,815 B), and `referent-constraints.md` was never read whole**: every read of it is offset-bounded (`S1-sonnet-1:41` offset 26/200, `:51` offset 340/180, `:67` offset 26/120, `:68` offset 380/150), each preceded by `grep -n '^## '` on the same file first (`:40`, `:66`) | **S1: fixed decisively (P3) — see §2.1.** S3's 28,397 B is a shipped-script read (R5 asset), not a re-read pathology; not comparable to the family this hotspot names |
| 4 | **B′ — ad-hoc Python for result shaping / CSV→blueprint** | tracebacks in opus cells | 8 Bash, 0 tracebacks | 8 Bash, `table_to_bulk_insert.py` used, 0 tracebacks | S3 used `table_to_bulk_insert.py` again (`S3-sonnet-1:15`), 0 tracebacks | **stays fixed (R5)** |
| 5 | **B — blueprint file → insert** | response > input | avg 1,056 B | avg 635 B | `insert_root_node_from_json → insert_root_node_from_json` ×8, avg 3,183 B/instance (`hotspots.md` #11) — small, no growth pathology | **stays fixed (R4)** |
| 6 | **Discovery refinement — `get_concept_details` re-called for a revealed concept** | not in top-12 | 5× | 14× (mostly §2.9/§2.8 detours, not genuine refinement) | `get_concept_details → get_concept_details` ×6 (`hotspots.md` #9) — but this chain **is** the D27 error family below, not genuine discovery refinement | **not a standalone hotspot; R7 correctly stays deleted (M8)** |
| 7 | **Guessable-but-undocumented literals and asymmetries** | 4 retries | 3 retries | **17 of 21 errors, 7× fan-out multiplier** | **10 of 13 errors, no fan-out** (every error is its own turn) — see §2.4–2.7 | **persists, smaller: the multiplier from H13 did not recur, but two new member literals appeared** |
| 8 | `ToolSearch` schema fetches | ~7/run | 12+2 | 10+1 | low, unaddressable | unchanged |

### 2.1 Hotspot 3 (S1): the jump table now pays for itself
Round 4's §2.10 concluded a jump table inside a 54 KB reference "cannot pay for itself with a
`Read`-based agent" unless it lives in the *referring* `SKILL.md`. P3 did exactly that
(`e0acddbab34e`, "put constraints and structure jump tables in SKILL.md"). Round 5's worker now
`grep`s the section headings of `referent-constraints.md` **before** any `Read` of it, every time
(`S1-sonnet-1:40→41`, `:66→67`), and every `Read` is offset/limit-bounded to the section it needed.
The same pattern repeats for `structure-operation-api.md` (`:8→9`, bounded to 160 lines) and
`property-constraints.md` (`:61→62`, bounded to 106 lines, one legitimate re-read at a different
point in the task). Net effect: S1's skill bytes read fell from round 4's 264,764 B to 142,815 B —
below every prior sonnet round including the baseline (160,079 B) — while touching *more* distinct
files (13 vs round 4's 13, per file-count; the reduction is in bytes per file, not fewer files).

### 2.2 D26 closed: the round's single largest cost is now a one-call success
`S1-sonnet-1:110` — `parse_java_and_insert`, `featureKind:"METHOD"`, `contextNodeRef` resolving to
the `ConceptBehavior` root (`mcp.study.recipes.behavior`), `insert.parentRef` targeting the `method`
role — is the exact call that threw `NodeCastException`/`INTERNAL_ERROR` in round 4
(`S1-sonnet-1:92`, ~16 recovery calls, ~10 turns). Round 5's result:
`{"ok":true,"data":{"inserted":[{"name":"totalMinutes","concept":"ConceptMethodDeclaration",…}]}}`
— first try, no detour, no skill re-reads triggered by a failure. This confirms P1
(`394547da519a`) end-to-end against a live server, not just its unit/integration tests.

### 2.3 Why S1 still needed more turns than baseline despite the crash being gone
S1-sonnet-1 took 154 turns (baseline 148, round 3 118, round 4 128). With D26's ~10-turn detour
gone, the turn count should have dropped toward round 3's level; it did not, because of two
things this round's evidence surfaces that round 4's crash had been masking: the D27 family below
(4 turns) and the constraints-scope research at `S1-sonnet-1:40–70` (~15 turns navigating
`referent-constraints.md`, `scope-helpers.md`, `scope-fqn-reference.md`, `dot-expression-basics.md`,
`node-equality.md`, `concept-roots.md` to build the self-reference-exclusion scope) — a
judgment-heavy task (writing a working `ListScope.forNamedElements` filter) that the P3 jump table
made *cheaper per byte* but did not make *zero-turn*. This is expected: P3's contract was fewer
bytes for the same navigation, not fewer navigation steps for a genuinely non-trivial scope.
n = 1 per cell (lesson 12): a 154-vs-148 turn delta on S1 is within run-to-run variance and should
not be read as a regression signal on its own.

### 2.4 D27 reproduced, without the round-4 multiplier
`S1-sonnet-1:14–17` — four consecutive `get_concept_details` calls, each `{"conceptRef":"Recipe"}`
/ `"Step"` / `"Ingredient"` / `"Cookbook"`, each rejected with the M5b-improved message: *"This tool
takes the plural 'conceptRefs' and/or 'languageRefs' … the singular 'conceptReference'/
'languageReference' spellings … are not recognised here. Retry with conceptRefs set to the value
you passed as conceptReference."* The message still names `conceptReference` (the spelling **other**
tools use) while the worker actually sent `conceptRef` (D27's exact defect: the message never
names the key the caller sent). The worker self-corrected at `:18` with
`{"conceptRefs":["Recipe","Step","Ingredient","Cookbook","IngredientRef","RecipeRef"]}` — one call,
all six concepts, success. Cost: 4 rejected calls, 4 turns (**not** 4 in one parallel burst — each
is its own assistant turn; see §2.6). D27 is confirmed **still open**, exactly as `docs-defects.md`
records (remedy P2 not yet implemented).

### 2.5 D29 reproduced verbatim
`S1-sonnet-1:141` — `alter_nodes` `MAKE` with `moduleReference`/`rebuild` at the top level instead
of inside `parameters` → `"No argument is passed for required parameter 'parameters'"`, the same
shape and even the same tool as round 4's D29. Confirmed **still open** (P2 not implemented); this
one is flagged by `analyze_runs.py` as a **pre-dispatch** rejection (never reaches the tool body),
consistent with the platform-routing framing D18/D18b used for the sibling `projectPath` family.

### 2.6 Two new members of the "guessable literal" family (neither previously catalogued)
- `S1-sonnet-1:27–30` — `print_node` `format:"structural"` (not one of `JSON`/`HTML`/`PLAIN TEXT`)
  guessed for four different editor nodes in a row before switching to `"JSON"` at `:31`. D9 (fixed
  2026-09-15) already documents the three allowed literals; the worker did not consult that
  documentation before guessing a fourth, plausible-sounding one. Determinism 1.0 — a schema enum
  would remove the guess entirely, but MCP tool schemas here are typed `string`, not
  constrained-string, for this parameter.
- `S1-sonnet-1:138` — `check_root_node_problems` called with `{"modelReference": <model ref>,
  "perRoot": true}` (the natural key given `get_project_structure`'s own `startingPoint`/model
  vocabulary) → `"No argument is passed for required parameter 'nodeReference'"`. The retry at
  `:140` reused the *same reference string* under the key `nodeReference` and succeeded — the tool
  accepts a model reference under a parameter named for a node, and the rejection does not say so.
  One rejection, one pre-dispatch (never reaches the tool body, like D29).

Both are new instances of hotspot 7's pattern (a plausible key/value guess, rejected without
being told the accepted alternative) but neither is D27, D28, D29 or D30 verbatim — recommend
logging as D32 (`print_node format` guessing persists past D9's fix) and D33
(`check_root_node_problems` `modelReference`-vs-`nodeReference`) in `docs-defects.md`.

### 2.7 H13 (parallel-tool-calling fan-out) did not recur
Round 4's headline new-hotspot was a *multiplier*: a wrong key fired 6–8 times in one assistant
turn because the worker batched calls. Round 5's S1-sonnet-1 transcript has **zero** assistant
turns with more than one `tool_use` block (checked over all 154 turns). Every one of this round's
13 errors therefore cost exactly one call and one turn, which is why errors/retries (13/11) are
far below round 4's 21/18 despite two *additional* novel wrong-guess members (§2.6) that round 4
did not have. This confirms round 4's H13 finding was itself run-to-run variance in whether the
model chooses to batch, not a property the current tool surface forces — consistent with lesson 12
("judge remedies by the chains they remove, not by turn deltas between models/runs").

### 2.8 D30/`rootsOnly` (P4): not exercised, no positive or negative evidence
S3-sonnet-1 counted roots via `query_nodes FIND_INSTANCES` with `detail:"count"` and an explicit
`conceptRefs` array (`S3-sonnet-1:27`), never touching `scope:"roots"` or the new `rootsOnly`
parameter — the exact call that used to trigger D30 in round 4 was avoided by construction this
time, so P4 gets neither a confirming nor a disconfirming data point this round.

## 3. Hypotheses

| # | Hypothesis | Round-5 verdict |
|---|---|---|
| H1 | Blueprint authoring is a main cost/retry source | Present but modest: `authored_input_chars` 66,916 (S1) — below round 4's 34,298 *MCP-input* chars plus the hand-authored detour; no truncated-JSON error this round (P7's shared diagnostics not exercised because nothing truncated) |
| H4 | Discovery reads with huge results | **Fixed and staying fixed** — 0 envelopes in both cells, matching round 4's low, now sustained for two rounds |
| H5 | validate → fix → validate loops | **Fixed** — `validation_loops` 0 for the third round running |
| H7 | Skill reading is a large context consumer | **Reversed for S1** (best of 4 sonnet rounds, §2.1); **up for S3** (28,397 vs 7,668 B) but from reading a shipped script's own source + example assets, not from re-reading a large reference — a different mechanism than the one H7 was coined for |
| H10 | Fixed per-turn context dominates | **Confirmed, unchanged** — 96,935 tokens (SMOKE), flat across five rounds |
| H11 | With mechanical round trips gone, variance moves to knowledge/judgment | **Confirmed again**: with D26 fixed, S1's remaining above-baseline turn cost is dominated by a genuinely judgment-heavy scope-authoring task (§2.3), not a tool defect |
| H13 (round 4) | Parallel tool-calling multiplies one wrong-parameter mistake by the batch size | **Not observed this round** (§2.7) — the mechanism is real (round 4 measured it directly) but is conditional on the model choosing to batch, which it did not do here |

## 4. Defects — status after round 5

| # | Defect | Round-5 evidence | Status |
|---|---|---|---|
| D26 | `parse_java_and_insert` METHOD on `ConceptBehavior` crashed | `S1-sonnet-1:110` succeeds first try, `ConceptMethodDeclaration` inserted | **closed, confirmed live** (was "closed" on implementation evidence only after round 4; now confirmed by an actual study run) |
| D27 | `get_concept_details` `conceptRef` (no `-erence`) rejected by a message naming `conceptReference` | `S1-sonnet-1:14–17`, 4 rejections | **open**, reproduced verbatim (P2 not implemented) |
| D29 | `alter_nodes MAKE` with module args at top level instead of in `parameters` | `S1-sonnet-1:141` | **open**, reproduced verbatim (P2 not implemented) |
| D30 | `query_nodes FIND_INSTANCES scope:"roots"` without `roots` | not triggered this round | **fixed 2026-09-18** (`rootsOnly`), no new evidence either way |
| D18b (mid-run `projectPath` omission) | not observed this round | **open** per docs-defects.md; absence in a single 154-turn run is not evidence of a fix (P5 not implemented) |
| **D32 (new)** | `print_node format:"structural"` guessed despite D9 documenting the three allowed literals | `S1-sonnet-1:27–30`, 4 rejections | open — same family as D9/hotspot 7, new member |
| **D33 (new)** | `check_root_node_problems` rejects `modelReference` for a model-scope check; only `nodeReference` (holding a model reference string) is accepted, and the rejection does not say so | `S1-sonnet-1:138` | open — new near-miss in the hotspot-7 family |
| D20b | `query_nodes`/`alter_nodes`/`query_structure`/`alter_structure`/`parse_java_and_insert` `parameters` crash with `Index -1 out of bounds for length 0` when passed as a JSON **object** instead of an encoded string | Reproduced by the **S3 evaluator** (not the worker) trying `query_nodes FIND_INSTANCES` with an object-shaped `parameters`; the worker itself always sent the string-encoded form and never hit it | **open**, independently reconfirmed |

## 5. Validity

- **Doc surface is pinned.** Both cells carry `skillsSha256 21a0389183f2…`, installed from the
  running plugin at run time.
- **Contamination guard clean.** `~/.claude/agents` held only `babysit-build.md` for both runs (the
  user moved `mps-constraints-agent.md` aside before MPS was restarted for the round); 0 parent
  `Agent` tool-use events in either transcript.
- **One surplus warning, attributed to observer traffic, not delegation.** `analyze_runs.py`
  flagged S1-sonnet-1: 79 server MPS calls vs 77 expected (79 transcript calls − 2 pre-dispatch),
  a surplus of 2, with 0 parent `Agent` events. The most likely cause is the observer's own
  preflight `list_open_projects` probe against the S1-sonnet-1 project, issued a few seconds before
  `run_worker.sh` captured its start offset — the same "observer traffic in the same time window"
  caveat the warning text itself names, not a hidden subagent (ruled out by the 0 `Agent`-event
  count, unlike round 4's D31 case which had 3). S3-sonnet-1 and SMOKE show zero surplus.
- **n = 1 per cell, sonnet only, per the request's own scope.** Lesson 12 applies: the S1 turn
  count (154 vs baseline 148) is within noise; the error-family findings (§2.4–2.7) are not, because
  they reproduce specific named defects with exact matching call shapes across rounds, not a
  count that could be explained by ordinary variance.
- **No opus cell since round 1 (2026-09-15).** This round adds no opus data point.
- Nothing in either project was modified by evaluation; both `.eval.md` files list every read-only
  call made.

## 6. Remedies — carried forward, unchanged in priority

P2 (name every wrong key, and the right ones, in rejections — D27, D28, D29, and now D32/D33) and
P5(a/b/c) (`projectPath` mid-run omission on `parameters`-string tools) remain the two open
round-4 remedies; this round adds no new remedy proposal beyond folding D32/D33 into P2's scope
(the fix shape is identical: validate the whole argument map, name the received keys and the
expected ones). P3's design ("move the jump table into the referring SKILL.md, don't rely on a
table inside the 54 KB file itself") is now confirmed to work as intended (§2.1) and the same
treatment should be considered for any remaining large aspect reference that still only has an
in-file table. No new S-tier or P-off remedy is justified by this round's evidence.

## 7. Artefacts

`~/MPSProjects/mcp-study/runs-r5/` — 3 transcripts + server slices + metas + install results +
2 eval reports + `analysis/` (metrics.csv, tools.json, chains.json, errors.json, hotspots.md);
`inventory.json` (sha `84725142002a…`); catalog `skillsSha256 21a0389183f2…`.
Fixtures reused from round 4 (`~/MPSProjects/mcp-study/fixtures-r4/{empty-project,recipes}.tar.gz`),
not re-tarred. Run projects: `~/MPSProjects/mcp-study/proj-r5/{S1,S3}-sonnet-1`.
Outstanding wrap-up (not yet done as of this report): revert the `mps.mcp.calllog` VM option in
`.idea/runConfigurations/MPS.xml`, restore `~/.claude/agents/mps-constraints-agent.md`, and decide
whether to fold D32/D33 into `docs-defects.md` and commit this report.
