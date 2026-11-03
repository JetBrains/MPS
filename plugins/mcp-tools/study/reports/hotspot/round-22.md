# Skill Script Automation Study — Round 22 (2026-10-07)

Status: measurement round complete. Scope on request: **S11** (type questions, read-only) × **opus + sonnet** = 2 cells,
n = 1 per cell. This is S11's first measurement round, so it has no prior cell to compare against. **Both cells PASS**
criteria 1–6 (sonnet's criterion 2 is contested, §1). **Both cells fail process signal P2**: `T_rule_prints` is 4
(opus) and 6 (sonnet), every printout before the `ANSWERS.md` write. That is the regression this cell exists to
catch, in a milder form than the recorded failure (§3). No remedy was made, and nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r25/{SMOKE-opus-{1,2},S11-{opus,sonnet}-1}-{worker,server}.jsonl`, `*.meta.json`,
`S11-*.eval.md`. Analysis: `runs-r25/analysis/` (`metrics.csv`, `chains.json`, `errors.json`, `hotspots.md`,
`families.tsv`). The run projects are `~/MPSProjects/mcp-study/proj/S11-{opus,sonnet}-1`.

The directory suffix is three ahead of the round number: `runs-r23` and `runs-r24` were taken by single ad-hoc cells
(S8-opus, S1-opus) after round 21, which have no report. `run:step` is the 1-based `tool_use` ordinal that
`show_steps.py` prints; `[a-b]` is one parallel batch (one assistant `message.id`).

## 0. Harness state

- **Measured surface**: HEAD `b20d84471e32` (MPS-40240, expressions fixture recipe), clean tree (only `.junie/`
  untracked).
  - Inventory `f2d8480fba16…`: 49 tools (40 `mps_mcp_*`), descriptions **65,575 B**, schemas 42,879 B. Round 21:
    48 / 39, 59,729 B / 41,911 B.
  - `skillsSha256 35b65065…` and `guidesSha256 7c49518f…` on all 4 metas (2 cells + 2 SMOKE).
  - `promptSha256 5c59d141…` (S11, first use).
- **Worker effort pinned** from the user-level settings: opus `medium` (`perModel` for `claude-opus-5-5`), sonnet
  `xhigh` (`default`; `claude-sonnet-5-5` has no `perModel` entry). Same levels as round 21; both metas record them.
- **Models** (`init.model`): `claude-opus-5-5`, `claude-sonnet-5-5`. Claude Code **2.1.292** (round 21: 2.1.286).
- **Fixture**: `~/MPSProjects/mcp-study/fixtures/expressions.tar.gz`, sha256 `5c0720b0…`, built 2026-10-07 13:06 and not
  rebuilt. No doc surface (the `tar -tzf | grep` check prints nothing), 163 `classes_gen` entries. Both copies opened
  without a migration dialog.
- **Instrumentation**:
  - MPS was running from this checkout (pid 73302) at the Welcome screen, with no call log. It had loaded the
    Expressions sample during a precheck.
  - Sequence: `capture` → `calllog runs-r25/server-calllog.jsonl` → synthesize and open `proj/harness` → `restart`
    → pid **75109** → SMOKE-opus-1.
  - Port 64343, detected (`lsof`, confirmed).
  - The first `restart` was refused by the observer's auto-mode permission classifier. The user then allowed
    `mps_control.sh`. Lesson "restarting MPS needs the user" still applies to auto-mode observers.
  - The call log was not cleared at the end: the capture still carries it, and the live MPS (pid 76237) still writes it.
- **Isolation**: `per-shared-fixture-restart`, one MPS process per cell, so no process has seen the sample twice.
  - pid 75109: SMOKE-o-1, S11-o.
  - pid 76237: SMOKE-o-2, S11-s.
  - Restart between them: `shutdown`, which carried the close of `proj/S11-opus-1` → `start` harness → `wait` → SMOKE.
- **Audit**:
  - `server_call_surplus` 0, `server_errors` 0, 0 pre-dispatch rejections, 0 `MODAL_BLOCKED`.
  - 0 compactions, 0 `api_retry` events, 0 unloaded-schema calls.
- **Guards**: harness unit tests 156/156; `check_user_agents.py` exit 0.
- **SMOKE context floor** (input + cache read + write at `result`): **84,333** for both SMOKEs. Round 21 had 82,053 on
  CLI 2.1.286.
- **Evaluation**: the observer graded both cells directly, read-only via `mcp_call.py`, instead of through an Opus
  evaluator subagent. The answers are fixed by the fixture, and grading needed one `get_project_structure`, one
  model-scope `check_root_node_problems` and a `diff -rq` against a fresh extraction of the tarball. The criterion-6
  file diff counts `.mps` files only and ignores module descriptors and `.mps/`, as the criterion allows.

## 1. Task outcomes

| cell | Q1 | Q2 | Q3 | Q4 | Q5 | 6 models unchanged | pass |
|---|---|---|---|---|---|---|---|
| S11-opus | yes (IS_SUBTYPE) | Long, Element, Float, Number | Float, `typeof_SimpleMathAssignment` | no, IS_SUBTYPE Float<:Int false; commented out, so not checked | Number (GET_EXPECTED_TYPE) | yes | **PASS** |
| S11-sonnet | yes | Long, Float, Number, Element **"(plus `Int` itself, reflexively)"** | Float, `typeof_SimpleMathAssignment` | no, same evidence; reads the unchecked verdict | Number | yes | **PASS** (criterion 2 contested) |

- **Criterion 6, both cells:**
  - the sandbox still has exactly `Main`, `Simple` and `TypeError`;
  - the model-scope check gives 0 errors and 0 warnings, with `TypeError` `uncheckedSubtrees: 1`, the same as the
    fixture;
  - no `.mps` file differs from the tarball. New files are only the installed doc surface, `.mps/.gitignore` and
    `ANSWERS.md`.
- **Criterion 2 is ambiguous for sonnet:**
  - The bolded answer is exactly the four supertypes, and each is backed by `SUPERTYPES` and by one `IS_SUBTYPE` per
    candidate.
  - The same sentence then adds "(plus `Int` itself, reflexively)". The criterion says "so does adding `Bool` or `Int`
    itself".
  - Graded **PASS on intent**: `Int` is set apart as the reflexive case, not listed as a supertype. By the letter it
    is a FAIL. The criterion does not say whether a correctly qualified mention of reflexivity counts as "adding".
    Not edited (per instruction); see §6.
- Sonnet's Q2 has an extra, correct caveat: the rule root `SimpleMathIntegerType_subtypeOf_Number` returns `Element`,
  not `Number` (verified from its printout at `S11-sonnet-1:27`). This is a real oddity in the sample, and the reason
  that reading rule names misleads. Finding it required a rule printout (§3).

## 2. Metrics

There is no prior S11 cell. Round 21 cells of similar size (read-only S9: 20 / 27 turns) are context only.

| cell | turns | batches | tool calls | `mps_*` calls | wall | cost $ | cache read | output tok | skill KB (read + injected) | errors | retries |
|---|---|---|---|---|---|---|---|---|---|---|---|
| S11-opus | **34** | 10 | 32 | 26 | **1 m 44 s** | 0.85 | 0.57 M | 10.6 K | 17.0 + 24.3 | 0 | 0 |
| S11-sonnet | **50** | 17 | 47 | 37 | **2 m 58 s** | 0.94 | 1.35 M | 22.5 K | 20.7 + 31.0 | 0 | 0 |

- Neither run had a tool error, a retry, a validation loop or a rejected argument. Every MCP call succeeded first
  time, including the `typeConceptRef` and `typeNodeReference` operands of `IS_SUBTYPE` and `SUPERTYPES`.
- Opus parallelised heavily: 32 calls in 10 batches, with 4–6 calls per batch in the middle of the run.
- Sonnet asked more confirmation queries:
  - `IS_SUBTYPE` for each of the 5 candidate supertypes (`[22-26]`);
  - a depth-32 and a depth-8 `SUPERTYPES` (`17`, `18`);
  - a post-write `SUPERTYPES` link check (`[45-46]`) and an `Edit` of `ANSWERS.md` (`47`).
- Skill reads: both loaded `mps-mcp-workflow` and read `references/analysis-tools/type-queries.md` before the first
  query (opus `5` via Bash `cat`; sonnet `3` via Read, after also loading `mps-language-analysis`).
- `families.py` (non-zero columns only):

| run | tool_uses | **T_type_queries** | **T_rule_prints** | A_tempfile_env | C_checks (root) | D_skill_reads / bash_fetch | H_toolsearch | F_gcd_calls |
|---|---|---|---|---|---|---|---|---|
| S11-opus-1 | 32 | **12** | **4** | 5 | 2 (2) | 0 / 1 | 2 | 0 |
| S11-sonnet-1 | 47 | **21** | **6** | 2 | 2 (2) | 1 / 1 | 2 | 1 |

`T_type_queries` is above the expected 4–8 for both, which the criteria allow ("more is not a failure"). The surplus is
cross-checks: `GET_TYPE` next to `EXPLAIN_TYPE`, plus `IS_SUBTYPE` confirmations of `SUPERTYPES`.

## 3. Process signals P1–P5 (reported apart from the pass)

| signal | S11-opus | S11-sonnet |
|---|---|---|
| P1 `IS_SUBTYPE` used | **yes**: `13` (Int<:Float), `18` (Float<:Int), `31` | **yes**: `16`, `[22-26]`, `39` |
| P2 no rule-root printouts | **FAIL**: 4 `InferenceRule` prints in PLAIN TEXT, `[24-29]` (`26-29`), before the Write at `32` | **FAIL**: 2 `SubtypingRule` (`27`, `28`) + 4 `InferenceRule` (`29`, `30`, `36`, `40`), before the Write at `44` |
| P3 type of `E` asked | **yes**: `EXPLAIN_TYPE` on `var E` (`15`) | **yes**: `EXPLAIN_TYPE` on `var E` (`13`) and on the `E` reference (`41`) |
| P4 slot asked | **yes**: `GET_EXPECTED_TYPE` on `…042657` (`16`) | **yes**: (`14`) |
| P5 unchecked verdict read | **yes**: `17` `clean_unchecked`; Q4 rests on `IS_SUBTYPE`, and the answer says the code was skipped | **yes**: `33` `clean_unchecked`; same reading |

**The type-query routing works.** Both workers read `type-queries.md` and then answered every question with a
deciding query in their first query batch:
- opus `[13-18]`;
- sonnet `[12-15]`, `[16-18]`.

The recorded failure was "two rounds and five `SubtypingRule` printouts for `Int <: Float`". It did not replay: in
both runs `Int <: Float` was decided by the first `IS_SUBTYPE` call.

**But rules are still printed, and before the write.** The printouts came after the answers were known, so they were
used to cite rule bodies, not to derive the answers:

- **opus `[24-29]`** printed the four rules that the `EXPLAIN_TYPE` traces and a name search (`22`) had named:
  `typeof_SimpleMathVarDeclaration`, `typeof_SimpleMathAssignment`, `typeof_SimpleMathTypedVarDeclaration` and
  `typeof_ArithmeticSimpleMathExpression`.
  - Two of the refs are the trace's own `ruleReference` values (`…209342370`, `…942551209`).
  - `ANSWERS.md` then quotes rule statements (Q3: "adds `T :>=: typeof(D)`"; Q5: "`infer typeof(expression.left) :<=:
    <SimpleMathNumberType()>`").
- **sonnet `[22-28]`** printed the two `Int` subtyping rules in the same batch as the five confirmation `IS_SUBTYPE`
  calls. It found them through `query_structure LIST_CONCEPT_ASPECTS` on `SimpleMathIntegerType` (`21`), the
  `mps-language-analysis` route. It then printed the inference rules (`29`, `30`, `36`), and the
  `typeof_SimpleMathTypedVarDeclaration` rule at `40`, announcing "I'll read the typed-declaration rule".
  - These printouts produced the correct "misleadingly named rule" caveat in Q2, and the rule statements quoted in
    Q3–Q5.

**Cost.** The printouts rode in batches that also carried type queries or checks, so they added **≈ 0–1 turn per run**.
They added ≈ 12.5 KB (opus) and ≈ 13.6 KB (sonnet) of tool results to every later request. The cost is small; the
signal matters because the habit of reading rules is intact, and on a harder question that is how simulation starts
(H4).

**Why the habit survives (hypothesis, two instances):** the docs invite the print.
- `type-queries.md:64` (blueprint
  `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/mps-mcp-workflow/references/analysis-tools/type-queries.md`)
  describes the `EXPLAIN_TYPE` trace entry as "`rule`: `{rule, ruleReference, statement}` … — print `ruleReference`
  to read the rule".
- `:71` says the same for check problems.
- The prompt asks for "the evidence it rests on" and, in Q3, "which typesystem rule". Both models read the
  instruction to print as the way to give evidence. Line 3's "Read the typesystem aspect only to author or change
  rules" is the opposite instruction, and line 64 wins locally.

## 4. New findings and candidate remedies (for Gate 2)

Tier = first fit of D → S → P-off → P-on → T.

| rank | finding | avoidable cost | evidence | tier | candidate remedy |
|---|---|---|---|---|---|
| 1 | **N1: `GET_TYPE` on a node whose type is fixed by a later sibling answers the wrong type.** `GET_TYPE` on `var E` and on the `E` reference returns **`Int`**, but `EXPLAIN_TYPE` on the same node (it types the whole root) and the editor's check give **`Float`**. A worker who asks only `GET_TYPE` answers Q3 wrongly, *having asked the type checker*. `type-queries.md:23` calls the no-editor path "one-node computation" but never says it can disagree with the root's real type | 0 turns this round: both workers cross-checked and wrote a correct caveat. Correctness risk otherwise | `S11-opus-1:21` (Int) vs `:15` (Float), `:25` (Int, the E reference); `S11-sonnet-1:12`, `:42` (Int) vs `:13`, `:41` (Float). Both `ANSWERS.md` files flag the disagreement | **S**, else **D** | S: compute `GET_TYPE` in the containing root's type-check context (the `EXPLAIN_TYPE` path), or return a `warnings` entry when the one-node result differs from the root context. D: one sentence at `type-queries.md:23`: "Without an open editor, `GET_TYPE` types only the node's own slice; a variable whose type a later statement constrains (`var x = 1; x := 2.5`) reads as its initializer's type. Ask `EXPLAIN_TYPE` for the root-context answer." |
| 2 | **N2: the EXPLAIN_TYPE trace invites a rule printout.** "print `ruleReference` to read the rule" (`type-queries.md:64`, `:71`) is followed by 2/2 workers before writing their answers | ≈ 0–1 turn and ≈ 13 KB per run; P2 fails in 2/2 cells | §3. `S11-opus-1:[24-29]`, `S11-sonnet-1:29-30, 36, 40` | **D** | Reword `:64`: "`rule` names the rule that added the entry; that name, with the entry's `presentation`, is the answer to 'which rule'. Print `ruleReference` only when you must change the rule." The same at `:71`. Optional **S**: add the statement's text presentation to `rule` (e.g. `statementText: "typeof(variable) :>=: T"`), so quoting needs no print |
| 3 | **N3: `LIST_CONCEPT_ASPECTS` routes to subtyping rules for a type question** | 2 of sonnet's 6 printouts | `S11-sonnet-1:21` → `[27-28]` | **D** | `mps-language-analysis`: in the type-questions half, say that aspect listings are for authoring. For "is A <: B" or "supertypes of A", use `IS_SUBTYPE` / `SUPERTYPES`, and do not open `SubtypingRule` roots |

**Not a finding:** the type-query volume (12 / 21, against the expected 4–8). It is cross-checking at `medium` /
`xhigh` effort, has no errors, and has nothing to retry.

## 5. Hypotheses (status after this round)

| # | Status | Round-22 evidence |
|---|---|---|
| H4 | **Treated for answers, not for habit.** Routing put every deciding answer on a query (P1, P3, P4, P5 in 2/2), and no answer rests on a rule reading. Rule printouts persist as citations (P2 fails 2/2), driven by `type-queries.md:64` | §3 |
| H7 | **Holds at the skill level.** Both workers read exactly one reference file, `type-queries.md`, and found the right operations without a second skill hop. Sonnet also loaded `mps-language-analysis`, which sent it to `LIST_CONCEPT_ASPECTS` (N3) | §2, §3 |

## 6. Problems with the criteria (not edited, per instruction)

- **Criterion 2: "adding `Int` itself" is ambiguous** when the answer gives exactly the four supertypes and then
  mentions reflexive `Int <: Int` in a qualifier (S11-sonnet). Suggested wording: "fails when `Int` or `Bool` appears
  *as a supertype in the answer list*; noting that subtyping is reflexive is fine".
- **P3 accepts `GET_TYPE` on `var E` as "asked", but `GET_TYPE` returns `Int` there (N1).** A worker can satisfy P3
  with `GET_TYPE` and fail criterion 3 for the same reason. P3 already says "only `EXPLAIN_TYPE` names the rule". It
  should also say that `GET_TYPE` gives the initializer's type, so `EXPLAIN_TYPE` is required for this question.
- **P2 does not separate citation from derivation.** Both runs print rules only after the deciding queries, and P2
  fails them the same way it would fail a simulated answer. The `families.py` column cannot tell them apart either. If
  that difference matters, record "rule prints before the first deciding type query" as a separate count. If P2 is
  meant as a hard "never print", it is gradeable as written and both runs fail it.
- The done-criteria provenance line says the answers were verified with `GET_TYPE` among other queries. Given N1, it
  is worth re-checking which node that `GET_TYPE` was run on.

## 7. Defects to file (proposed; `docs-defects.md` not edited)

- **D100** = N1 (`GET_TYPE` one-node result disagrees with the root context; tier S/D). Owner: the `mps_mcp_query_nodes`
  GET_TYPE implementation and `type-queries.md:23`.
- **D101** = N2 (`type-queries.md:64`/`:71` invites rule printouts; tier D).
- **D102** = N3 (`mps-language-analysis` type-question route through `LIST_CONCEPT_ASPECTS`; tier D).

## 8. Caveats and suggested next step

- n = 1 per cell, and this is the first S11 round, so there is no delta. Effort is pinned and the same as round 21.
- Both answers are right, so 2/2 cells are "answers right, rules read for citation". That is milder than "answers
  right, typesystem simulated", but P2 still fails 2/2.
- **Suggested next step:** apply N2 (two lines in the blueprint, re-propagated to both catalogs) and the D half of N1,
  then re-run S11 × 2 with the same effort pins. Success = `T_rule_prints` 0 in both cells with the pass unchanged. If
  rule prints persist after N2, the prompt's "evidence" wording drives them, and that belongs in the criteria, not the
  skills.
