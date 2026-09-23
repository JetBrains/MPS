# Skill Script Automation Study — Round 8 (2026-09-23)

Status: measurement round complete, **both cells PASS**. Scope on request: **S1** (greenfield DSL)
and **S2** (extend an existing language) on **sonnet only** = 2 cells, plus one SMOKE harness check.
This is the first round run entirely on the observer-owned lifecycle introduced on 2026-09-22
(observer creates, opens, closes projects and starts/shuts MPS down), so the brief was explicitly
**smoothness of the run itself**, with instructions to stop and fix if the scripts or the
orchestrator instructions broke.

They did break, in three places. The round still completed; the three harness defects are fixed in
this commit and are the main deliverable (§6). Nothing was pushed.

Baseline of record: `HOTSPOT_REPORT.md` §1–§2 (2026-09-15, S1+S3 on opus+sonnet).
Secondary anchor for S2: `HOTSPOT_REPORT_round6.md` (2026-09-21, sonnet).
Evidence: `~/MPSProjects/mcp-study/runs-r8/{S1,S2,SMOKE}-sonnet-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `*-install.json`, `analysis/`. Every claim cites `run:step` (1-based
`tool_use` ordinal in the worker transcript).

## 0. Harness state

- **MPS**: 2026.1 EAP from this checkout, pid 57435, started by the observer
  (`mps_control.sh start`) with the call log on. One process for the whole round
  (`isolationLevel: per-round`, `mpsPid` identical in all three metas).
- **Measured surface moved since round 6**: `inventorySha256 226f490c70b1…` — **48 tools,
  39 `mps_mcp_*`** (round 6: 47 / 38), descriptions **51,180 B** (48,310), schemas **40,048 B**
  (37,422). The one added tool is `mps_mcp_close_project`. Catalog `skillsSha256
  24cced2acdc2…` (round 6: `21a0389183f2…`), 32 skills, both guides written, identical on all
  three cells.
- `promptSha256` for S1 is `96376ae7495e…`, **byte-identical to the 2026-09-15 baseline run** — the
  S1 comparison below is against the same frozen prompt.
- Fixed per-turn context floor from the SMOKE `result` event: **97,512 tokens** (64,596 cache-read +
  32,916 cache-creation) against round 6's 96,841 and the baseline's 97,836 — **H10 holds for an
  eighth round**.
- Contamination guard: `~/.claude/agents` held only `babysit-build.md`; 0 parent `Agent` events in
  both transcripts. **But see D40** — the skills half of the check was prose only and was failing.
- One project open per run, confirmed with `list_open_projects` (`projectCount: 1`) before each
  launch. `welcome_rejections` 0, `modal_blocked` 0, `close_project_calls` 0 in both cells.
- `server_call_surplus` 0 in both cells *after* the D41 fix; before it, both cells warned. The
  evidence is complete: 57/57 and 78/78 transcript-to-server calls.
- Fixtures: `empty-project` **synthesized** per run (`new_study_project.py`, baseline 261 derived
  from this MPS — see `fixtures/README.md`'s note that this differs from rounds 1–2, which tarred
  `~/MPSProjects/ProjectX`). `statechart.tar.gz` (20 KB) rebuilt from `~/MPSProjects/Projectxx5`,
  doc-surface-free, verified; its `migration.xml` baseline matches this MPS, so no Migration
  Assistant.

## 1. Metrics

| metric | S1-sonnet baseline (2026-09-15) | **S1-sonnet round 8** | Δ | S2-sonnet round 6 | **S2-sonnet round 8** | Δ |
|---|---|---|---|---|---|---|
| task pass | True | **True** | = | True | **True** | = |
| turns | 148 | **140** | −5 % | 114 | **123** | +8 % |
| wall-clock s | 1,322 | **1,243** | −6 % | 915 | **925** | +1 % |
| cost USD | 5.83 | **5.38** | −8 % | 4.64 | **4.16** | −10 % |
| cache-read tokens | 27,498,232 | **24,872,212** | −10 % | 22,161,924 | **22,769,829** | +3 % |
| cache-write tokens | 920,586 | **844,005** | −8 % | 726,485 | **803,675** | +11 % |
| output tokens | 1,868 | **1,534** | −18 % | 1,298 | **1,335** | +3 % |
| tool calls | 135 | **131** | −3 % | 105 | **115** | +10 % |
| MCP calls | 71 | **57** | **−20 %** | 61 | **78** | +28 % |
| Bash | 3 | **34** | **+31** | 16 | **14** | −2 |
| skill-file reads | 9 | **45** | **+400 %** | 18 | **21** | +17 % |
| skill bytes read | 160,079 | **188,704** | +18 % | 77,342 | **82,893** | +7 % |
| **temp-file envelopes** | 23 | **0** | **−100 %** | 4 | **4** | = |
| Bash reads of temp results | 0 | **0** | = | 0 | **1** | +1 |
| Bash blueprint writes | 0 | **0** | = | 0 | **0** | = |
| MCP input chars | 26,384 | **24,647** | −7 % | 15,021 | **25,934** | +73 % |
| all tool-input chars | 69,966 | **59,496** | −15 % | 30,032 | **32,724** | +9 % |
| tool-result bytes | 444,385 | **302,836** | **−32 %** | 408,595 | **221,836** | **−46 %** |
| error envelopes | 5 | **4** | −1 | 7 | **7** | = |
| error→retry pairs | 2 | **3** | +1 | 5 | **6** | +1 |
| validation loops (≥3 same root) | 1 | **0** | −1 | 0 | **0** | = |
| server-logged calls | 71 | **57** | −20 % | 61 | **78** | +28 % |
| server ms total | 4,478 | **16,419** | +267 % | 13,269 | **8,782** | −34 % |

Caveat on the S1 baseline column: the 2026-09-15 run files were later overwritten in
`~/MPSProjects/mcp-study/runs/` by a round-2 re-run (two `init`/`result` events, 115 turns — a
delegating run, lesson 21). The baseline figures above are therefore taken from
`HOTSPOT_REPORT.md` §1, which is the surviving record, not recomputed from the transcripts.

## 2. Which hotspots moved

| baseline # | family | 2026-09 | round 8 | verdict |
|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 84 envelopes over 4 runs; 23 in S1-sonnet; the #1 chain family | **0 in S1**, 4 in S2, 1 Bash follow-up read total | **Resolved for S1, largely for S2.** Attributable to `71fe5259027a` (node projection, language scoping, strict-match capping): S1 made 5 `get_project_structure` calls and never got a path back. Tool-result bytes fell 32 % (S1) / 46 % (S2) while the tasks got *bigger*. |
| 2 | **C — per-root validation after a clean model-level check** | 75 calls, ~60 avoidable | **0 validation loops** in both cells; 6 `check_root_node_problems` per run, each on a distinct root or the model | **Resolved.** The `rootsChecked` envelope field is doing its job — S1:111 and S2:97 accept `"no problems found"` and move on. |
| 3 | **D — skill reference reads before an MCP call** | 9 reads / 160 KB (S1-sonnet) | **45 reads / 189 KB** (S1), 21 / 83 KB (S2) | **Worse in turns, flat in bytes — now the #1 hotspot.** See §3. |
| 4 | **B′ — ad-hoc Python for result shaping** | ~22 heredocs, 2 tracebacks | **0 blueprint writes, 1 temp-result read**, 0 tracebacks | **Resolved.** Nothing needed re-shaping because nothing came back as a file. |
| 5 | **B — blueprint file → `insert_root_node_from_json`** | 22 writes + 8 inserts, response larger than input | 4 `Write → insert` chains in S1, 7 inserts; responses 0.8–2.8 KB | **Much improved**, still the authoring route for BaseLanguage subtrees. |
| 6 | **Discovery refinement (`get_concept_details` re-called 1–2 steps later)** | 3 chains of 2–3 hops per S1 run | 5 occurrences of `get_concept_details → get_concept_details` (S1:101-102, :105-106, :124-125) | **Unchanged.** Still the cheapest remaining MCP-side chain; the plural `conceptRefs`/`languageRefs` form exists but is used to *widen* after a miss, not to batch up front. |
| 7 | **Guessable-but-undocumented literals and parameter asymmetries** | 4 error→retry pairs | **5 of 9 retries across both cells** | **Unchanged in kind, now the dominant error family.** See §4. |
| 8 | `ToolSearch` schema fetches | ~7 per run | 12 (S1) / 7 (S2) | Harness overhead, not addressable here. One of them (S2:76) is a *recovery* step after a bad parameter name — see §4. |
| H8 | stale runtime (`reload_all`, hollow descriptors) | "not observed" | **observed and self-healing**: S1 1 `reload_all`, S2 4; S2:15 → :16 → :17 is a textbook guided recovery | **New, and working as designed** — see §5. |

## 3. Hotspot #1 now: skill navigation, not skill payload

S1 spent **45 of 131 tool calls (34 %)** locating text in the skill catalog: 27 Bash
(`grep -n '^## '`, `sed`, `cat`) + 18 `Read`. S2 spent 21 of 115 (18 %). At the measured
~95 K-token per-turn floor that is ≈ 4.3 M cache-read tokens in S1 — about 17 % of the run's
context cost — to deliver 189 KB of text.

The shape is consistent (`S1-sonnet-1:27-33`):

| step | call | purpose |
|---|---|---|
| 27 | `Bash cat concept-roots.md` | whole file, 3,750 B |
| 28 | `Bash grep -n '^## ' property-constraints.md` | build a TOC — 364 B |
| 29 | `Read property-constraints.md offset=20 limit=105` | the section found at 28 |
| 30 | `Bash grep -n '^## ' referent-constraints.md` | build a TOC — 309 B |
| 31 | `Read referent-constraints.md offset=26 limit=120` | the section found at 30 |
| 32 | `Bash grep -i 'validator\|Handler\|…' referent-constraints.md` | search the same file again |
| 33 | `Bash cat scope-helpers.md` | whole file, 5,095 B |

**Both greps land on a file that already has a `## Contents / when to read what` block at line 3
or 5** — a remedy shipped by an earlier round. The agent does not read it; it rebuilds the same
index with `grep`. So that block currently costs bytes in every read and saves no turn.
Determinism 1.0 (the grep output fully determines the next Read's offset/limit), retry 0,
avoidable turns ≈ 18–20 per S1 run.

Remedies, in rubric order:
- **D** — put the line ranges *in* the Contents block (`## Imperative reference-side scope — 26-160`)
  so one small ranged Read of the head yields offsets and the grep disappears. Risk: line numbers
  rot; mitigate with a check in the catalog drift test that regenerates them.
- **T** — hoist each reference file's section list into the owning `SKILL.md`, so the agent never
  opens a reference to discover what is in it. Removes the `cat` of whole files too (steps 27, 33).
- Not **P** — nothing here is a text transform worth a script; the cost is the round trip.

## 4. Hotspot #2: parameter-name guessing (baseline #7, unmoved)

Five of the nine retries in this round are one failure mode — a plausible parameter name that the
tool does not accept:

| run:step | tool | the agent wrote | the tool wants | cost |
|---|---|---|---|---|
| `S1-sonnet-1:103` | `search_concepts` | `query` | `searchTexts` | 1 turn |
| `S1-sonnet-1:109` | `insert_root_node_from_json` | `modelRef` | `modelReference` | 1 turn |
| `S1-sonnet-1:112`, `S2-sonnet-1:98` | `alter_nodes` MAKE | top-level `targetReference` + `rebuild` | inside `parameters` | 1 turn each |
| `S2-sonnet-1:68` | `get_concept_details` | `conceptNames` | `conceptRefs` | 1 turn |
| `S2-sonnet-1:75` | `create_model` | `moduleReference` (+ invented `aspect`) | `moduleName` | **3 turns** (75 → ToolSearch 76 → 77) |

The API itself is the cause: `conceptRef` / `conceptRefs` / `languageRefs` / `enumerationRef` /
`modelReference` / `moduleName` are six naming conventions across sibling tools, and `moduleName`
in fact accepts a module *reference* — the exact string the agent tried to pass under the name its
neighbour requires.

**The interesting half is that three of the five cost exactly one turn and two cost more**, and the
split is not random:

- `search_concepts`, `get_concept_details` and `alter_nodes` MAKE validate arguments *themselves*
  and return a tool-authored message naming the near-misses ("The singular near-misses
  `conceptRef`/`conceptReference`… are not recognised here"; "`'parameters'` is required for MAKE,
  and MAKE's own arguments belong inside that object"). Every one of those recovered in a single
  correct retry. These are remedies from earlier rounds and they demonstrably pay.
- `insert_root_node_from_json` and `create_model` declare the parameter **required in the
  signature**, so the platform rejects the call first with a generic
  `No argument is passed for required parameter 'x'`. That message names what is missing and never
  what was supplied and dropped — so at S2:75 the agent could not tell that its `moduleReference`
  had been discarded, and burned a `ToolSearch` to re-read the schema.

**Remedy (S, small):** apply the proven pattern to the two tools that still fall through to the
platform message — make `modelReference` / `moduleName` optional in the signature and validate in
the body with a near-miss-aware error, exactly as `get_concept_details` does. Saving ≈ 1–3 turns
per occurrence, 2 occurrences in 2 runs. **Alternative (S, platform-wide):** have the generic
message list the argument names actually received; that fixes the whole class at once but touches
`mcpserver`, not this plugin. Risk: low; the schema stays honest because the body still rejects.

A sixth candidate, not a defect: `S2-sonnet-1:91` was a self-admitted leftover call by the worker
("that third call was a leftover mistake"), correctly refused.

## 5. New and confirmed: guided stale-runtime recovery (H8)

The baseline recorded H8 as "not observed — no `reload_all` calls". Round 8 observes it and it
works:

```
S2:15  get_concept_details(languageRefs=com.example.statechart, detail=shape)
       → {"ok":false,"error":"… names project language … whose runtime is not deployed;
          run mps_mcp_alter_nodes MAKE (rebuild=true) on the language module, or address
          concepts by FQN conceptRefs"}
S2:16  alter_nodes MAKE {"modules":[…],"rebuild":true}   → "Make successful", runtimeReady: true
S2:17  the same get_concept_details                      → 2,518 B of shapes
```

That is commit `3acea2aeb4ec` (D35) paying for itself: one turn of recovery, no search detour, no
hollow-descriptor confusion. `reload_all` appears 1× in S1 and 4× in S2 as ordinary hygiene, not as
flailing. **H8: confirmed present, remedied.**

Also confirmed working this round: `detail:"shape"` (used at S2:15/17), the model-scope
`check_root_node_problems` with `perRoot`, and the `parse_java_and_insert` role diagnostic
(`S2:53` — "Concept 'ExpressionStatement' cannot be placed in role 'body' … the role expects
'StatementList'"), which the agent resolved in two steps by inserting a `StatementList` first.
A candidate **S** remedy there: auto-wrap `featureKind: STATEMENTS` into a `StatementList` when the
target role requires one — 2 turns per occurrence, 1 occurrence observed.

## 6. Harness defects found and fixed this round

All three were found by running the procedure as written, from the state a real round starts in.

| # | Where | Defect | Fix |
|---|---|---|---|
| **D40** | `SKILL.md` step 1 + `check_user_agents.py` | The preflight assertion "there are no user-level `mps-*` skills" was **prose only**, while the sibling agent check had a guard wired into `run_worker.sh`. The machine actually had `mps-api-research` in **both** `~/.claude/skills` and `~/.junie/skills` (installed 2026-09-22) — a user-level MPS skill that shadows the per-project catalog and that `install_skills.py` cannot purge, because it only owns the project tree. Every automated gate passed. | `check_user_agents.py` now also rejects `mps-*` folders at the top level of both skill catalogs (read-only, exit 3, never modifies). 3 new tests. Step 1 now tells the observer to *run the guard* rather than eyeball `ls`. → lesson 32 |
| **D41** | `analyze_runs.py` | `No argument is passed for required parameter 'x'` was classified as a **pre-dispatch rejection** and subtracted from `expected_server_mps_calls`. It is not: the platform binds arguments inside the dispatch, so `ToolCallListener` fires and the call log carries the entry as `threw`. Verified on both cells — `S1:109` ↔ server line `07:18:49 … IllegalStateException: No argument is passed for required parameter 'modelReference'`. Every round containing one such error reported a spurious `server_call_surplus` of **+1** and a measurement-integrity warning on otherwise perfect evidence. | Only project resolution is pre-dispatch. Missing parameters are counted separately as the new `arg_validation_errors` column and never subtracted. Re-analysing round 8 gives surplus **0/0/0** and no warnings. 1 new regression test; the existing surplus test was corrected to the true semantics. → lesson 34 |
| **D42** | `SKILL.md` step 2 + `mps_control.sh` | The instrumentation step reads "capture preserves the VM options of the live process, so a relaunch keeps the call-log option" — true, and inapplicable when MPS is running *without* the option, which is the state after any ordinary IDE launch (and was the state today). The only documented path back was editing the **tracked** `.idea/runConfigurations/MPS.xml` and restarting through the IDE, reintroducing the lesson-13 revert step the automation exists to remove. I had to hand-patch the capture JSON to proceed. | New `mps_control.sh calllog <file>` writes (or with no argument clears) `-Dmps.mcp.calllog=` in the capture, creating the directory; `start`/`restart` pick it up. Idempotent. Step 2 rewritten around it, with a `ps`-based verification that the relaunched process really carries the option. → lesson 33 |

Two smaller corrections made at the same time:

- `SKILL.md` step 1 said other projects may stay open "if their module names are disjoint". Since
  lesson 30 that is wrong — with `confirmOpenNewProject2 = -1` the *second open* raises the modal
  New Window / This Window prompt regardless of module names. The step now says every other
  project must be closed first, naming the developer's own checkout as the common case.
- The call-log preflight check was `grep -c mps.mcp.calllog <MPS>/log/idea.log`, which does not
  answer the question; it is now a `ps` check on the live process plus file growth. Step 4's SMOKE
  command line gained `PROJECT_SYNTHESIZED=1`, and `harness.md` now says how to run the harness's
  own unit tests (`python3 -m unittest discover`; there is no pytest on the system python).

Everything else in the procedure ran without friction: synthesize → close → CLI open → confirm →
launch → poll → evaluate → close took ~40 s of observer work per swap, `mps_control.sh open`
confirmed the open in 0 s both times, shutdown/start/wait needed no human step, and the two Opus
evaluators completed read-only in 202 s and 152 s.

## 7. Remedies proposed (not implemented — gate 2)

| tier | remedy | target | evidence | est. saving | risk |
|---|---|---|---|---|---|
| **D/T** | Line ranges in each reference file's `## Contents` block, or hoist the section list into `SKILL.md` | `mps-aspect-*` references | §3, `S1:27-33` | ~18–20 turns per greenfield run (≈ 13 % of S1) | line-number rot; needs a drift-test check |
| **S** | `insert_root_node_from_json.modelReference` and `create_model.moduleName` optional in the signature + in-body near-miss error | mcp-tools | §4, `S1:109`, `S2:75-77` | 1–3 turns per occurrence | low |
| **S** | Platform generic missing-parameter message lists the arguments actually received | `mcpserver` (not this plugin) | §4 | fixes the class | out of this repo's scope |
| **S** | `parse_java_and_insert` auto-wraps `STATEMENTS` in a `StatementList` when the target role requires one | mcp-tools | §5, `S2:53-55` | 2 turns per occurrence | low; 1 occurrence measured |
| **D** | Name the `*Ref`/`*Refs`/`*Reference`/`*Name` convention once, in `mps-mcp-workflow`'s reference-formats page | skills | §4 | partial — docs did not prevent it in 8 rounds | low, low yield |

No evidence in this round for: bulk-insert response bloat (B), reference-wiring sweeps (H6),
fix loops (H5 — S5 not run), or generator work (S6 not run).

## 8. Scope not covered

Only S1 and S2 on sonnet, by request. No opus cell, so lesson 12 applies: none of the deltas above
separate model variance from tooling change, except where the mechanism is named (temp-file
envelopes, the D35 diagnostic). S3–S10 unmeasured this round; S10 in particular has one rehearsal
(2026-09-22) and no second data point.
