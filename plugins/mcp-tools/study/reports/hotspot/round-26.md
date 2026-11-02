# Skill Script Automation Study — Round 26 (2026-10-07)

Status: re-measure of D105, round 25's one new defect. Scope: **S11** × **sonnet** × 2 runs (n = 2; opus is not re-run,
since it had 0 rule prints in round 25 and in rounds 23–24). Effort pin unchanged (sonnet `xhigh`). **Both runs PASS
criteria 1–6, `T_rule_prints` is 0 / 0, and P1–P5 all hold.** D105 is fixed and archived. Nothing was committed or
pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r29/{SMOKE-opus-{1,2},S11-sonnet-{2,3}}-*`, `analysis/`. `families.tsv`
covers `runs-r25`–`runs-r29` (rounds 22–26). The run numbers are 2 and 3 (`S11-sonnet-{2,3}`), because round 25's
`proj/S11-sonnet-1` is still in place.

## 0. Remedy and harness state

- **Remedy D105** (uncommitted, docs): `mps-mcp-workflow/references/analysis-tools/type-queries.md`.
  - `:64` now reads: the rule name and the entry's `presentation` (`i = Float   added`, `u <= Number`) are the
    citation. Print neither `ruleReference` nor `statement` to answer or quote a type question, only to change the
    rule.
  - `:71` (check-problem rules) gets the same "neither `ruleReference` nor `statement`" wording.
  - The edit is in the blueprint and was copied byte-identically into `.claude/skills` and `.agents/skills`, and into
    `plugins/mcp-tools/classes` (the resource the running plugin installs from).
  - Validation: `validate_skill_catalog.py` OK (32 skills, 418 files), and all three trees are identical per skill
    folder. The installed copy in each run project contains the new sentence.
- **Surface**: `skillsSha256 3d4a373f… → 1e42c462…` on all 4 metas. HEAD `c2bc80261869`, inventory `df3278ea…`, guides
  `7c49518f…`, prompt `5c59d141…`, effort, model, CLI 2.1.292 and fixture are all unchanged from round 25.
- **Isolation**: `per-shared-fixture-restart`, recorded in both metas.
  - pid 20660: SMOKE-o-1, S11-s-2.
  - pid 21892: SMOKE-o-2, S11-s-3.
  - Each restart was `shutdown` → `start` harness → `wait` → SMOKE (1 server line each), issued in its own command
    (A10 not hit).
  - Call log: `runs-r29/server-calllog.jsonl`.
- **Audit**: 0 errors, 0 retries, `server_call_surplus` 0, 0 server errors, 0 `MODAL_BLOCKED`, 0 compactions.

## 1. Task outcomes

| cell | Q1 | Q2 | Q3 | Q4 | Q5 | 6 | pass |
|---|---|---|---|---|---|---|---|
| S11-sonnet-2 | yes (and Float<:Int false) | Element, Long, Float, Number (`Bool` excluded) | Float; **`typeof_SimpleMathAssignment`**, from `i = Float` | no (IS_SUBTYPE false; "the checker's clean verdict is not evidence") | Number (upper bound; `10` is `Int` and fits) | unchanged | **PASS** |
| S11-sonnet-3 | yes (and reverse false) | Long, Element, Float, Number (`Bool` excluded) | Float; **`typeof_SimpleMathAssignment`** | no (IS_SUBTYPE false on the stored nodes and on the plain types; unchecked verdict read) | Number ("an upper bound, not `Int` or `Float`") | unchanged | **PASS** |

- Both `ANSWERS.md` say they did not read rule roots. They quote the trace's own `presentation` entries (`i >= j`,
  `n >= k`, `u <= Number`) instead of rule statement text. This is what the D105 sentence asks for.
- `GET_TYPE` on `E` answered `Float` with `details.scope: "root"` in both runs, as in round 25.
- In Q4 both runs noticed that `GET_TYPE` / `GET_EXPECTED_TYPE` on the commented-out initializer answer in scope
  `node`, and said so.
- Criterion 6 holds for both:
  - same three roots;
  - per-root check 0 errors, `TypeError` `uncheckedSubtrees: 1`;
  - no `.mps` file differs from the fixture.

## 2. Metrics (S11-sonnet), rounds 22 → 23 → 24 → 25 → 26

| run | turns | batches | tool calls | `mps_*` | wall s | cost $ | cache read | output tok | tool-result KB | errors |
|---|---|---|---|---|---|---|---|---|---|---|
| round 22 | 50 | 17 | 47 | 37 | 178 | 0.94 | 1.35 M | 22.5 K | 110 | 0 |
| round 23 | 39 | 15 | 36 | 26 | 136 | 0.71 | 1.02 M | 17.1 K | 60 | 0 |
| round 24 | 44 | 18 | 41 | 29 | 153 | 0.77 | 1.20 M | 19.8 K | 56 | 1 |
| round 25 (`-1`) | 41 | 14 | 38 | 28 | 132 | 0.69 | 0.89 M | 18.7 K | 54 | 0 |
| **round 26 `-2`** | **38** | **13** | **35** | **25** | **128** | **0.66** | **0.84 M** | **15.2 K** | **71** | **0** |
| **round 26 `-3`** | **37** | **12** | **34** | **24** | **118** | **0.64** | **0.73 M** | **16.8 K** | **58** | **0** |

Batches for rounds 25–26 count distinct assistant messages that carry a `tool_use`; rounds 22–24's figures come from
their own reports and may not use the same method.

| run | T_rule_prints | T_type_queries | A_tempfile_env | Bp_shipped_script | D_skill_reads |
|---|---|---|---|---|---|
| round 22 | 6 | 21 | 2 | 0 | 1 |
| round 23 | 0 | 17 | 4 | 2 | 1 |
| round 24 | 0 | 20 | 9 | 2 | 1 |
| round 25 | **3** | 17 | 4 | 2 | 3 |
| **round 26 `-2`** | **0** | 16 | 5 | 2 | 1 |
| **round 26 `-3`** | **0** | 15 | 10 | 2 | 1 |

- **Both runs are the cheapest S11-sonnet so far.** Against round 25 they average −3.5 turns, −3.5 tool calls,
  −9 % wall time and −6 % cost. That is about what removing D105's 3 prints in 2 batches would save, plus n = 2
  noise.
- Both runs open the same way (`:8`–`:13`): two `PLAIN TEXT` prints, two deep JSON prints that spill to temp files,
  then `mps_dump.py tree` on both. The type work then takes 15–16 type queries. That includes the per-supertype
  `IS_SUBTYPE` confirmations, 4–5 per run (round 24's N1/D95 appetite at `xhigh`, unchanged).
- **`S11-sonnet-3`'s `A_tempfile_env` 10 is the worker's own choice.** It passed `maxInlineBytes: 200` to five
  `IS_SUBTYPE` calls (`:24`–`:27`, `:31`) and `100` to one `SUPERTYPES` (`:28`), which forced each small answer into a
  temp file. It then read them all in one Bash (`:33`, about 1 call). No doc tells a worker to do that; it is not
  filed.

## 3. Process signals

| signal | S11-sonnet-2 | S11-sonnet-3 |
|---|---|---|
| P1 `IS_SUBTYPE` | yes (6) | yes (7) |
| P2 no rule-root printouts | **yes** (0) | **yes** (0) |
| P3 type of `E` asked | yes (`GET_TYPE` `:18`, `EXPLAIN_TYPE` `:19`) | yes (`GET_TYPE` `:19`, `EXPLAIN_TYPE` `:20`) |
| P4 `GET_EXPECTED_TYPE` on the operand | yes (`:20`) | yes (`:21`) |
| P5 unchecked verdict read | yes (`clean_unchecked`, Q4 does not lean on it) | yes (same) |

## 4. Status

| item | status |
|---|---|
| D105 (rule-statement prints) | **Fixed and archived**: `T_rule_prints` 0 / 0 in round 26 (n = 2), against 3 in round 25 |
| D101 | Rule-root prints at 0 for four consecutive rounds (23–26); together with D105, P2 holds 4/4 runs since the fix |
| D100 server half / root-scoped `GET_EXPECTED_TYPE` | 4/4 runs in rounds 25–26 got `Float` from `GET_TYPE` and `Number` from `GET_EXPECTED_TYPE` |
| D102 | Still unmeasured (no `LIST_CONCEPT_ASPECTS` in any run since round 22) |
| A9 (zsh `=`) | Not seen this round (last seen round 25 `S11-opus-1:13`); the `AGENTS_template.md` sentence is still not applied |
| N6 (ad-hoc walkers over deep JSON) | Not seen; both runs used the shipped `mps_dump.py` |

## 5. Suggested next step

- S11 can drop to an occasional regression check: rounds 23–26 are 6/6 PASS with P2 clean except for the one D105
  instance, now fixed.
- Still open from round 25: the A9 `=` sentence in `AGENTS_template.md`, and the criteria-owner notes in round 25 §5
  (P2 cannot tell citation from simulation; the `done_criteria.md` prose still describes the slice-era `GET_TYPE`).
