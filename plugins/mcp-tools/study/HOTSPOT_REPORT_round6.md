# Skill Script Automation Study — Round 6 (2026-09-21)

Status: measurement round complete. Scope on request: **S2** (extend an existing language),
**S5** (repair a broken model) and **S6** (generator + behavior, two authoring routes) on
**sonnet only** = 3 cells, plus one SMOKE harness check. **S2 PASS, S5 PASS, S6 FAIL** (one of four
criteria). All three scenarios were **previously unmeasured** — the 2026-09 baseline
(`HOTSPOT_REPORT.md`) covers S1 and S3 only — so this round measures the hotspot *families* and the
named defects on new ground rather than re-running a comparable metric series.

Baseline of record for the comparison: `HOTSPOT_REPORT.md` §1–§2 (2026-09-15).
`HOTSPOT_REPORT_round5.md` (2026-09-21) is the previous round.

Evidence: `~/MPSProjects/mcp-study/runs-r6/{S2,S5,S6,SMOKE}-sonnet-1-{worker,server}.jsonl`,
`*.meta.json`, `*.eval.md`, `*-install.json`, `analysis/`. Every claim cites `run:step` (1-based
tool_use ordinal in the worker transcript).

## 0. Harness state

- **The measured surface is byte-identical to round 5.** `inventorySha256`
  `84725142002a…` — the *same* value as round 5 (47 tools, 38 `mps_mcp_*`, descriptions 48,310 B,
  schemas 37,422 B); catalog `skillsSha256` `21a0389183f2…` — again the same value, on all three
  cells and SMOKE (31 skills, both guides written). `git diff a0e8bddcf4b6..HEAD` over
  `plugins/mcp-tools`, `.claude/skills` and `.agents` is **empty**, and MPS has been the same
  process (pid 68824, up since 07:00) throughout rounds 5 and 6.
- **Calibration by equality, not by re-measurement.** On the user's instruction, round 5's
  `S3-sonnet-1` cell (30 turns, 124 s, $0.69, 27 tool calls, 0 errors) is carried forward as the
  anchor instead of being re-run, justified by the three identities above. This is an equality
  argument, so round 6 contributes **no new anchor measurement**; see §5.
- Call log on, **without an MPS restart**: the running instance still carries
  `-Dmps.mcp.calllog=…/runs-r5/server-calllog.jsonl` from round 5, so `CALLLOG` was pointed at that
  file and `RUNS` at `runs-r6`; `run_worker.sh` slices by byte offsets, so each cell's slice is
  clean. Nothing to revert at wrap-up this round (the run configuration in the tree is already
  clean — lesson 13 satisfied).
- Contamination guard (P6) clean on every launch: `~/.claude/agents` held only `babysit-build.md`,
  `~/.claude/skills` only `local-model-delegate` (no `mps-*`). 0 parent `Agent` events in all three
  transcripts.
- One project open per run, verified with `list_open_projects` (`projectCount: 1`) before each
  launch. S5 and S6 are copies of one project and share module UUIDs, so they were never open
  together.
- Fixed per-turn context floor from the SMOKE `result` event: **96,841 tokens** (79,491 cache-read +
  17,350 cache-creation) against round 5's 96,935 and the baseline's 97,836 — **H10 holds for a
  sixth round**.
- `promptSha256`: S2 `f78fdde302b8…`, S5 (unchanged asset), S6 (unchanged asset); all three prompts
  are the frozen scenario files, untouched this round.

### 0.1 Fixtures — two had to be built, and one scenario asset is wrong

Only `recipes` and `empty-project` existed. This round built:

- **`statechart.tar.gz`** (18 KB) — `~/MPSProjects/Projectxx5` tarred per the README's exclusions
  (plus `.junie`, which was empty). Doc-surface-free, verified.
- **`recipes-full.tar.gz`** (208 KB) — the round-1 S1-opus-1 project with the agent doc surface
  stripped and the S1 sample roots **kept** (3 Ingredients, 3 Recipes, 1 Cookbook).
- **`recipes-broken.tar.gz`** (209 KB) — `recipes-full` + the 12 injections, built through
  `mcp_call.py` → MPS MCP and logged call-by-call in `scenarios/S5/PROBLEMS.log`. Final state:
  **12 errors + 1 warning over 17 roots**.

**Scenario-asset defect (lesson 22 class).** `fixtures/README.md` defines the `recipes` fixture as
the passing-S1 project *with the sample Recipe and Cookbook roots deleted*. That deletion exists for
S3 alone (its prompt demands "exactly 40 Recipe roots plus the Cookbook"), but **S5 and S6 both
require Recipe roots to exist** — S6's criterion 2 is "one Java file per Recipe root", which the
stock fixture would make vacuous (0 recipes). Hence `recipes-full`. The README should scope the
deletion rule to S3 and name `recipes-full` for S5/S6.

**PROBLEMS.md's two open questions are now answered against the live checker**, and both resolved
the *optimistic* way — no fallback injection was needed:

| question | PROBLEMS.md's worry | measured |
|---|---|---|
| P4 self-reference | the self-reference rule is a referent *scope*, so a self-ref set via MCP may be silent | **errors**: `The reference  Gratin (recipe) is out of search scope` |
| P7 `servings = 0` | `servings >= 1` is a property *validator*, so a value set via MCP may be silent | **errors**: `Property constraint violation for the property "servings"` |

**Three designed injections are genuinely silent** and were replaced (each verified by injecting,
observing `errors=0`, then reverting): P6 (empty Cookbook — `recipes` is `0..n`, so an empty
cookbook is legal), P10 and P11 (blank `INamedConcept.name` on an Ingredient and a Recipe — **no
checker reports a blank name in this language**). Replacements: a `RecipeRef` with an unset
obligatory `recipe` reference, an invalid `Unit` enum literal, and a non-integer `servings`.

## 1. Metrics

| metric | S2-sonnet-1 | S5-sonnet-1 | S6-sonnet-1 | round 6 total |
|---|---|---|---|---|
| task pass | **True** | **True** | **False** (1 of 4 criteria) | 2 / 3 |
| turns | 114 | 36 | 136 | 286 |
| wall-clock s | 915 | 271 | 1,416 | 2,602 |
| cost USD | 4.64 | 1.21 | 4.98 | 10.83 |
| cache-read tokens | 22,161,924 | 5,253,302 | 21,030,059 | 48.4 M |
| cache-write tokens | 726,485 | 333,474 | 807,316 | 1.87 M |
| tool calls | 105 | 33 | 130 | 268 |
| MCP calls | 61 | 24 | 61 | 146 |
| Bash | 16 | 1 | 22 | 39 |
| skill-file reads | 18 | 1 | 17 | 36 |
| skill bytes read | 77,342 | 3,818 | 99,409 | 180,569 |
| temp-file envelopes | 4 | 2 | 4 | 10 |
| Bash reads of temp results | 0 | 0 | 5 | 5 |
| authored input chars (MCP) | 30,032 (15,021) | 6,974 (6,113) | 48,348 (15,968) | 85,354 |
| tool-result bytes | 408,595 | 214,214 | 372,946 | 995,755 |
| transcript-level errors | 7 | 7 | 10 | 24 |
| error→retry pairs | 5 | 6 | 7 | 18 |
| validation loops (≥3/root) | 0 | 1 | 1 | 2 |
| pre-dispatch rejections | 0 | 0 | 2 | 2 |
| server MPS calls | 61 | 24 | 61 | 146 |
| server call surplus | 0 | 0 | 2 (observer traffic, §5) | — |
| server_errors (end-to-end) | 6 | 3 | 9 | 18 |
| server ms total | 13,269 | 199 | 4,803 | 18,271 |

**Error density, the one figure comparable across rounds** (scenario mix differs too much for turn
counts to be compared directly):

| | baseline (4 cells) | round 5 (2 cells) | round 6 (3 cells) |
|---|---|---|---|
| errors per 100 MCP calls | 5.0 | 14.4 | **16.4** |
| retries per 100 MCP calls | 3.3 | 12.2 | **12.3** |

Round 6 sits essentially on round 5's level (round 5's S1 cell alone was 16.5 errors/100 MCP calls)
and roughly **3× the 2026-09 baseline**. The composition is what matters, and it is the same
composition round 5 reported: the "guessable key / literal" family (hotspot 7) supplies most of it.
Caveat: the baseline's S1+S3 are gentler tasks than S2/S5/S6, so part of the gap is task difficulty
rather than surface regression — this is exactly why the surface-identity argument in §0 matters.

## 2. Did the ranked hotspots move?

| # | Baseline hotspot (family) | Baseline | Round 5 | Round 6 | Verdict |
|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file** | 84 envelopes, many for tiny payloads (worst: a 30-byte payload) | 0 | **10 envelopes — but every one is 40–183 KB** | **R1 still holds; a different residue is exposed — see §2.1** |
| 2 | **C — per-root validation after a clean model-level check** | 75 calls, ~60 avoidable | 0 loops | 2 `validation_loops`, both **genuine fix→verify iteration** (S5 on the samples model it was repairing, S6 on the behavior model it was editing), not the trust pathology | **stays fixed (R2)** |
| 3 | **D — skill reference reads before an MCP call** | 332 KB / 39 reads, same file twice per run | 171 KB / 45 reads | 180,569 B / 36 reads; **no file read more than 3×**, S5 solved a 12-problem repair on **one** 3.8 KB read | **stays fixed** |
| 4 | **B′ — ad-hoc Python for result shaping / CSV→blueprint** | ~22 heredocs, 2 tracebacks | 0 tracebacks | **0 Python heredocs, 0 tracebacks** in all three cells | **stays fixed (R5)** |
| 5 | **B — blueprint file → insert; response larger than input** | 63 KB in → 33 KB out | avg 3,183 B | no growth pathology; `responseDetail` available and results are small | **stays fixed (R4)** |
| 6 | **Discovery refinement — `get_concept_details` re-called for a revealed concept** | 3 chains / run | not genuine refinement | `get_concept_details → get_concept_details` ×6 (avg 6,948 B) — in S2 these are the **D35 recovery** (§2.3), not refinement | **not a standalone hotspot; R7 stays deleted** |
| 7 | **Guessable-but-undocumented literals and asymmetries** | 4 retries | 10 of 13 errors | **17 of 24 errors**, five distinct members, one of them ×3 across two cells | **persists — still the dominant family; see §2.2** |
| 8 | `ToolSearch` schema fetches | ~7/run | low | low, unaddressable here | unchanged |

### 2.1 Hotspot 1: R1 is working; the residue is *projection*, not inlining

All ten envelopes are far above R1's 8,192 B inline threshold, so none of them is the defect R1 was
built to remove:

| producing call | size |
|---|---|
| `get_project_structure includeNodes:true` ×6 (`S2:50,96`, `S5:14,19`, `S6:9,10`) | 40–87 KB |
| `get_project_structure includeModels+includeDependencies` ×2 (`S2:6`, `S6:6`) | 42–43 KB |
| `search_concepts` 4 terms (`S2:12`) | **183 KB** |
| `get_concept_details languageRefs:"…baseLanguage.collections" detail:"shape"` (`S6:102`) | **155 KB** |

The round's single largest chain is `get_project_structure → Read` ×7 at **avg 65,671 chars**. The
agent is not making a mistake — it asked a question whose honest answer is 40–87 KB — but two of
these tools have **no way to ask for less**:

- `get_project_structure` has `maxInlineBytes` (how it is *delivered*) but no field projection;
  `includeNodes:true` is all-or-nothing, so "what roots does this model have, and what are their
  names and ids" costs the whole AST.
- `search_concepts` has **neither** `maxInlineBytes` nor projection, and its scope is the whole
  repository: `S2:12` searched for `Transition`/`State`/`Event`/`StateChart` and got 183 KB
  dominated by `jetbrains.mps.transformation.test.outputLang` and other unrelated languages. The
  worker's own next line: *"That search pulled in unrelated base-language concepts."* (This is
  D4's cross-scope leak in a new place.)
- `detail:"shape"` **was** used on `get_concept_details` (`S6:102`) and still produced 155 KB,
  because the unit of request is a whole language. Shape helps per concept, not per language.

### 2.2 Hotspot 7 remains the dominant error family — 17 of 24 errors

| member | occurrences | evidence | status |
|---|---|---|---|
| `update_node operation:"DELETE"` — there is no DELETE; deletion is `SET CHILD` with `childJson` omitted | **3** (two cells) | `S2:36`, `S5:26`, `S5:27` → `Unknown operation 'DELETE'. Valid operations: ADD, SET.` | **new recurring member.** The message names the valid operations but never says *how to delete*, so S5 guessed it twice in a row |
| `/tmp/...json` rejected (file must be under `$TMPDIR`) | **2** | `S2:70`, `S6:35` | **D3 reproduced** — and note the skill documents this *exactly* (`json-format.md`: "`/tmp` is rejected") |
| unexpanded `$TMPDIR` passed as a literal path | 1 | `S6:111` → `Input is neither a valid JSON object/array nor an existing file path: '$TMPDIR/…'` | **D3's sibling** — `json-format.md` even warns "no tool expands `$TMPDIR` for you" |
| `properties` given as a JSON **object** instead of an array | 2 | `S2:38`, `S5:28` | message is good (names the fix and the skill) |
| `get_concept_details conceptReference` (singular) | 1 | `S5:9` | **D27 reproduced** (round 5 had it ×4) |
| `alter_nodes MAKE` with top-level `targets`/`rebuild` instead of `parameters` | 1 | `S6:56` → `No argument is passed for required parameter 'parameters'`; the top-level `rebuild` was **silently discarded** | **D29 reproduced verbatim**, pre-dispatch |
| `get_module_facets moduleReference` instead of `moduleName` | 1 | `S6:85` | new member, pre-dispatch, message does not name the wrong key |
| `update_node SET PROPERTY` with `propertyName`/`propertyValue` | 1 | `S6:68` | new member — **message is the improved P2 style** ("Retry with properties set to the triplet array …") and the worker recovered in one step |
| `parse_java_and_insert featureKind:"ROOT"` | 1 | `S6:21` | unknown enum literal; message names the bad value but not the valid set |
| `search_concepts query` instead of `searchTexts` | 1 | `S5:11` | **message is the improved P2 style** and recovery was immediate |
| model reference / model name rejected by a `nodeReference` parameter | 3 | `S5:5` (plain model *name*), `S6:121` (mis-copied uuid), `S5:13` (`print_node` rejects a model ref that `check_root_node_problems` accepts) | **D33 widened** — see §2.4 |

The two members whose rejection text follows the **P2 pattern** ("retry with X set to the value you
passed as Y") were each recovered in exactly one step with no re-reading. The members whose text
does *not* name the received key (`alter_nodes` `parameters`, `get_module_facets` `moduleName`) were
both pre-dispatch and cost a read-around. That is the clearest evidence so far that **P2 works and
should be finished**: the same round contains treated and untreated members of one family, and they
behave differently.

### 2.3 New defect D35: `languageRefs` cannot see an unbuilt language that `conceptRefs` can

`S2:10` — `get_concept_details {"languageRefs":"com.example.statechart","detail":"shape"}` →
`None of the provided refs resolved … use mps_mcp_search_concepts`. `S2:11` retried with the
canonical `l:f7aa2768-…:com.example.statechart` form — **also rejected**. The worker then followed
the error's own advice to `search_concepts` (`S2:12`), which returned the 183 KB whole-repository
dump of §2.1, and it had to read 47 KB of it before giving up on that route.

Then at `S2:15`, **before any `MAKE`**, `get_concept_details` with `conceptRefs` and the fully
qualified concept names **succeeded**. The first `MAKE` is at `S2:17`.

So this is not "hollow descriptors" and not a stale cache: within one tool, one lookup path
resolves a language the other cannot. The most likely mechanism is that `languageRefs` enumerates
through the deployed language runtime (absent here — the `statechart` fixture ships without
`classes_gen`, per the README) while `conceptRefs` resolves through the structure model. Round 6
observed the behaviour; it did not confirm the mechanism, and confirming it needs a second unbuilt
language. Cost as measured: 2 rejections + a 183 KB dead end + a 47 KB read ≈ **4 turns**.

This is the study's **first H8 (undeployed runtime) instance** — the baseline recorded H8 as "not
observed" — but in a form nobody hypothesised: a resolution asymmetry with misleading recovery
advice, rather than hollow descriptors or a `reload_all` loop.

### 2.4 D33 is wider than round 5 recorded

Round 5 logged D33 as "`check_root_node_problems` rejects `modelReference`; only `nodeReference`
holding a model reference works". Round 6 adds two more faces of the same asymmetry:

- `S5:5` — `check_root_node_problems {"nodeReference":"mcp.study.kitchen.samples", "perRoot":true}`
  → `Reference 'mcp.study.kitchen.samples' resolved to neither node nor model`. The tool takes a
  model *reference* but not a model *name*, while `get_project_structure`'s `startingPoint` accepts
  a plain name (`S6:9` does exactly that, successfully).
- `S5:13` — `print_node` with a model reference → `Invalid or unresolvable node reference`.
  `check_root_node_problems` accepts that same shape. The baseline listed this exact asymmetry under
  hotspot 7 in 2026-09; it is **unchanged**.

### 2.5 The round's largest single cost is a silent data loss — and it caused the only FAIL

S6 was asked for generated Java in package `mcp.study.generated`. It produced correct classes with
correct `PORTIONS` and `steps()`, in package `mcp.study.kitchen.samples`, and reported the deviation
honestly, claiming an MPS platform constraint.

The claim is **wrong**, and the reason it was made is a tool defect:

1. At `S6:20`, `:21` and `:24` the worker fed `mps_mcp_parse_java_and_insert` a template whose
   source text begins `package mcp.study.generated;`. Each call returned `ok:true`.
2. Live check of the resulting template root (observer, read-only, after the run):
   `ClassConcept RecipeTemplate` carries `{isStatic, nestedName, name, resolveInfo}` — and **no
   `packageName` property at all**. The `package` declaration was parsed away without a warning.
3. The 2,450-byte tool description for `parse_java_and_insert` never uses the word "package".
4. `packageName` appears **nowhere** in the bundled generator/baseLanguage skills (its only
   occurrence in the whole catalog is an unrelated table in `mps-aspect-migrations`).
5. `mps-aspect-generator/SKILL.md` documents the output path as
   `source_gen/<model-namespace>/<java-package>/<File>.java` — it names a java-package segment but
   never says what sets it, so the reader concludes it follows the model.
6. The worker therefore hunted for an "output namespace override", tested `virtualPackage`
   (`S6:68`, `:69`, `:89`, then reset it), grep'ed five generator references (`S6:74–80`), and
   concluded impossibility.

The evaluator traced the actual mechanism in the platform sources: `BaseLanguageTextGen`
`getPackageName` returns `Classifier.packageName` when non-empty and only then falls back to the
model name, and `TextGenAspectDescriptor.getPath_ClassConcept` feeds the same property into the
output path, resolved against the module's output root. A `$PROPERTY$` macro on `packageName` —
the same macro kind the worker had already attached for the class name — would have satisfied the
criterion. `virtualPackage`, the property it did test, is genuinely pinned 1:1 from the input root
(`TemplateGenerator.java:446-452`) and never affects Java output: a correct negative result,
over-generalised into a false impossibility.

This is hotspot-7's pattern escalated one level: not a rejected guess, but an **accepted** call that
silently dropped the caller's intent, followed by a documentation gap that made the loss
un-diagnosable. It is also the cleanest confirmation yet of **H11 / lesson 23** — with the
mechanical round trips fixed, the dominant remaining cost is a single missing fact.

### 2.6 Enum values print with an internal prefix when they are not the default

Observed by the observer during fixture construction and independently by the S5 evaluator:
`Milk.unit` prints as `"WtZI0zlAtJ/ML"` and an Ingredient's `G` as `"5y90acY48Li/G"`, while default
values print cleanly (`"PIECE"`, `isDefault:true`). D5 fixed the *default* case in 2026-09-17
(`""` → literal name + `isDefault`); the non-default case still leaks the encoded member id.
Neither worker was derailed by it — S5 read through it correctly — but any script that compares a
printed enum value against a literal name will mismatch.

## 3. Hypotheses

| # | Hypothesis | Round-6 verdict |
|---|---|---|
| H1 | Blueprint authoring is a main cost / retry source | **Present, and one truncation returned.** 85,354 authored chars across 3 cells; `S6:33` hit `EOFException: End of input at line 1 column 1009` — the first truncated-JSON error since the baseline. P7's shared diagnostics did their job: the error echoed the input head, and the worker recovered by switching to a file (then tripped D3 on `/tmp`) |
| H2 | structure → make → verify → scaffold chain | **Visible and cheap.** S2 ran 6 `MAKE`s, each `{"modules":[…],"rebuild":true}` inside `parameters`, all `success:true, runtimeReady:true`; no stale-runtime retry followed any of them |
| H4 | Discovery reads with huge results | **Half-fixed.** The *small-payload* envelope pathology stays dead (R1); the *large-payload* one is untouched because the tools lack projection (§2.1) |
| H5 | validate → fix → validate loops | **Refuted as a pathology, on the scenario built to provoke it.** S5 repaired 12 injected problems in 36 turns / 24 MCP calls with one model-scope check, targeted fixes, and one re-check; its single `validation_loop` is legitimate iteration |
| H7 | Skill reading is a large context consumer | **Scenario-dependent, no re-read pathology.** S6 99 KB / 17 reads (10 of them generator references, for genuinely unfamiliar territory), S2 77 KB / 18, S5 **3.8 KB / 1** |
| H8 | Stale / undeployed runtime | **First instance in six rounds**, in an unhypothesised form — the `languageRefs` resolution asymmetry of §2.3, not hollow descriptors |
| H10 | Fixed per-turn context dominates | **Confirmed, unchanged** — 96,841 tokens (SMOKE), flat across six rounds |
| H11 | With mechanical round trips gone, variance moves to knowledge/judgment | **Confirmed emphatically** — the round's only task FAIL is one missing documented fact (§2.5), not a chain of avoidable round trips |
| H13 | Parallel tool-calling multiplies one wrong-parameter mistake | **Not observed** for a second round: no assistant turn in any cell issued more than one `tool_use`; every error cost exactly one call |

## 4. Defects — status after round 6

| # | Defect | Round-6 evidence | Status |
|---|---|---|---|
| D3 | file-path JSON must be under `$TMPDIR`; `/tmp` rejected on macOS | `S2:70`, `S6:35`, plus the unexpanded-`$TMPDIR` sibling `S6:111` | **open in practice.** The documentation fix landed and is *exact*; it still did not prevent 3 occurrences. Doc-only is not enough — see P8 |
| D4 | name resolution / suggestions leak outside the project | `S2:12` `search_concepts` returned 183 KB dominated by unrelated languages | **open**, new surface (`search_concepts`) |
| D5 | enum printing | default case fixed; **non-default values leak the encoded member id** (`WtZI0zlAtJ/ML`) | **partially fixed** → logged as D37 |
| D27 | `get_concept_details` singular `conceptReference` | `S5:9` | **open**, reproduced (P2 not implemented) |
| D29 | `alter_nodes MAKE` args at top level instead of in `parameters` | `S6:56`; top-level `rebuild` silently discarded | **open**, reproduced verbatim |
| D32 | `print_node format` literal guessing (round 5) | not triggered this round | **open**, no new evidence |
| D33 | `check_root_node_problems` model-reference parameter naming | widened: plain model *name* rejected (`S5:5`); `print_node` rejects a model ref the checker accepts (`S5:13`) | **open, wider than recorded** |
| **D34 (new)** | `parse_java_and_insert` **silently discards the `package` declaration** of the parsed source; returns `ok:true`, sets no `packageName`, and the 2,450-byte description never mentions packages | `S6:20/21/24` + live check of `RecipeTemplate` | open — **caused the round's only task FAIL** |
| **D35 (new)** | `get_concept_details languageRefs` cannot resolve a project language whose runtime is not deployed, while `conceptRefs` resolves its concepts fine; the rejection steers to `search_concepts`, a 183 KB dead end | `S2:10,11` vs `S2:15` (pre-`MAKE`) | open |
| **D36 (new)** | `update_node` has no `DELETE` operation; the rejection lists `ADD, SET` but never says deletion is `SET CHILD` with `childJson` omitted | `S2:36`, `S5:26`, `S5:27` | open |
| **D37 (new)** | non-default enum property values print as `<encodedPrefix>/LITERAL` | fixture build; S5 evaluator | open (D5 sibling) |
| **D38 (new)** | `search_concepts` has neither `maxInlineBytes` nor projection, and `get_project_structure includeNodes` is all-or-nothing | §2.1 | open |
| **Asset defect (new)** | `fixtures/README.md` scopes the "delete the S1 samples" rule to the `recipes` fixture generally; it applies to S3 only and makes S5/S6 unsatisfiable | §0.1 | open |

## 5. Validity

- **Doc surface pinned and provably unchanged since round 5** (§0): same inventory sha, same catalog
  sha, same MPS process, empty git diff over the measured paths.
- **The calibration anchor is an equality argument, not a measurement.** Round 5's S3-sonnet-1 is
  carried forward at the user's instruction. It is well-founded — nothing in the measured surface
  moved — but it means round 6 cannot detect drift *in the harness itself* (e.g. a Claude Code
  version change), and no S1/S3 cell was re-run. A one-cell S3 re-run would close that gap for
  ~$0.70 whenever it is wanted.
- **n = 1 per cell, sonnet only, three previously unmeasured scenarios.** Lesson 12 applies to every
  count here. The findings that do *not* depend on n are the ones tied to exact call shapes: D34
  (verified by a live read of the resulting node), D35 (`languageRefs` fails and `conceptRefs`
  succeeds two steps apart, before any build), D27/D29 reproduced verbatim, and D36 (×3).
- **One surplus warning, attributed to observer traffic.** S6-sonnet-1: 61 server MPS calls vs 59
  expected (61 transcript − 2 pre-dispatch), surplus 2, with **0** parent `Agent` events. The
  observer queried that project read-only while the run was in flight only after it finished; the
  two calls most plausibly belong to the pre-launch `list_open_projects`/structure probe inside the
  slice window, which is the caveat the warning text itself names. S2 and S5 show zero surplus.
- **S6's FAIL is a criterion failure, not an asset failure.** The evaluator established that the
  required package *is* achievable via `Classifier.packageName`, so the scenario is fair and the
  verdict stands. The fairness caveat on record: the catalog never mentions the property.
- **Evaluation was read-only** in all three cells; each `.eval.md` lists every call made. The S5
  fixture was built by the observer *before* the run and captured as a tarball before the worker
  or the skill install touched the project.
- The S5 fixture is the observer's own construction, so S5's difficulty is calibrated by me, not by
  an independent source. `PROBLEMS.log` records every injection so the bias is inspectable.

## 6. Remedies

Carried forward unchanged in priority:

- **P2 — name every wrong key, and the right ones, in every rejection** (D27, D29, D32, D33, D36,
  and the `get_module_facets` member). Round 6 supplies the best evidence yet: within one round,
  rejections already written in the P2 style (`search_concepts`, `update_node SET PROPERTY`) were
  recovered in a single step, while those without it cost read-arounds and repeat guesses. Add to
  P2's scope: when an operation does not exist, say what does (D36's "deletion is `SET CHILD` with
  `childJson` omitted").
- **P5 — `projectPath`/`parameters` handling on the `parameters`-string tools.** Unchanged; D29
  reproduced.

New, justified by this round:

| # | Remedy | Tier | Hotspot / defect | Contract | Est. saving | Risk |
|---|---|---|---|---|---|---|
| **P8** | **Stop discarding the `package` declaration** in `parse_java_and_insert`: set `Classifier.packageName` from it, or reject the input naming the property to use. Document `packageName` in `mps-aspect-generator` (the path-convention paragraph) and in `mps-baselanguage`. | S + D | D34 | in: unchanged; out: `packageName` set, or an explicit rejection | the round's only task FAIL, ~12 events of dead-end investigation | low |
| **P9** | **Projection for the two unprojectable readers**: `maxInlineBytes` + a `fields`/`rootsOnly`-style projection on `search_concepts` (and scope it to the project by default — D4), and a `depth`/`fields` option for `get_project_structure includeNodes`. | S | 1, D38, D4 | out: same envelope, smaller payload | the round's largest chain (7× `get_project_structure → Read` at 65.7 KB avg) | medium — needs a sensible default |
| **P10** | **Make D35 diagnosable**: when `languageRefs` fails to resolve a language that exists as a project module, say so ("language `X` is in the project but its runtime is not deployed; run `alter_nodes MAKE`, or address concepts by qualified name via `conceptRefs`") instead of pointing at `search_concepts`. | D (message) | D35 | out: message only | ~4 turns per unbuilt-language encounter | none |
| **P11** | **Accept what the sibling tools accept**: a plain model name wherever a model reference is accepted, and a model reference in `print_node`; or reject with the P2 text. | S | D33 | in: widen resolution | 3 rejections this round | low |
| **P12** | **Path-input hygiene** (D3 is doc-proof-resistant): expand a leading `$TMPDIR`/`%TEMP%`, and accept `/tmp` on macOS by canonicalising it — or, if the sandbox forbids that, keep rejecting but stop the round-trip by naming the exact directory *in the tool description*, not only in the error. | S | D3 | in: tolerant path resolution | 3 rejections this round, 5 across rounds 5–6 | low |

Not proposed: anything touching hotspots 2, 4 and 5, which have now been quiet for three rounds
across five different scenarios.

## 7. Artefacts

`~/MPSProjects/mcp-study/runs-r6/` — 4 transcripts + server slices + metas + install results +
3 eval reports + `analysis/` (metrics.csv, tools.json, chains.json, errors.json, hotspots.md);
`inventory.json` (sha `84725142002a…`, identical to round 5); catalog `skillsSha256 21a0389183f2…`.
Fixtures built this round: `~/MPSProjects/mcp-study/fixtures-r6/{statechart,recipes-full,recipes-broken}.tar.gz`,
all verified doc-surface-free; the S5 injection log is committed at `scenarios/S5/PROBLEMS.log`.
Run projects: `~/MPSProjects/mcp-study/proj-r6/{S2,S5,S6}-sonnet-1`.
Call log: reused round 5's file (`runs-r5/server-calllog.jsonl`) by byte offset; **no VM option was
added or needs reverting this round**.
