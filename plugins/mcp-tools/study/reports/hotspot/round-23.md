# Skill Script Automation Study — Round 23 (2026-10-07)

Status: re-measure after a docs-tier remedy. Scope: **S11** × **opus + sonnet** = 2 cells, n = 1 per cell, the same
effort pins as round 22. The remedy is round 22's suggested next step: N2/D101, plus the docs half of N1/D100.
**Both cells PASS, and `T_rule_prints` falls from 4 / 6 to 0 / 0**, so P2 now holds in 2/2 cells. Turns fall by
35 % (opus) and 22 % (sonnet). One side effect needs a wording fix (§3). Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r26/{SMOKE-opus-{1,2},S11-{opus,sonnet}-2}-{worker,server}.jsonl`, `*.meta.json`,
`S11-*-2.eval.md`. Analysis: `runs-r26/analysis/`, with `families.tsv` run over `runs-r25` and `runs-r26`. The run
number is 2 (`S11-<model>-2`), so the round-22 project directories `proj/S11-*-1` stay intact. Round 22 is
`HOTSPOT_REPORT_round22.md` / `runs-r25`.

## 0. Remedy and harness state

- **Remedy** (uncommitted). The edit is in the blueprint
  `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/mps-mcp-workflow/references/analysis-tools/type-queries.md`,
  copied byte-identically into `.claude/skills` and `.agents/skills`. Three sentences changed:
  - `:23` (GET_TYPE, D100 docs half): without an open editor, GET_TYPE types only the node's own slice. A type that a
    later statement constrains is missed (`var x = 1; x := 2.5`). Ask `EXPLAIN_TYPE`, which types the whole root.
  - `:64` (the EXPLAIN_TYPE trace entry, D101): "`rule` plus the entry's `presentation` answers "which rule gives this
    type" — cite them; print `ruleReference` only to change the rule." It previously said "print `ruleReference` to
    read the rule".
  - `:71` (problem rules, D101): the same change for check results.
- **Validation of the edit**:
  - It is prose only, so the quality gates require no test suite.
  - `validate_skill_catalog.py`: 32 skills, 418 Markdown files, OK. The three catalog trees are identical (the
    `SkillCatalogReplicationTest` condition).
  - Every operation token that `SkillTypeQueryRoutingTest` asserts is still present.
- **Plugin**: the running MPS serves the catalog from `plugins/mcp-tools/classes/`. IDEA `build_project` copied the
  resource there, and the built copy matches the blueprint (`cmp`). MPS was then restarted.
- **Surface**:
  - HEAD `b20d84471e32` plus the remedy.
  - Inventory `f2d8480f…`, unchanged from round 22: 49 tools, descriptions 65,575 B.
  - `skillsSha256 35b65065… → d3cb5cd6…` on all 4 metas. `guidesSha256 7c49518f…` and `promptSha256 5c59d141…` are
    unchanged.
  - Both workers read the edited `type-queries.md` before their first type query (opus `:6`, Bash `cat`; sonnet `:3`,
    Read).
- **Effort and models**: opus `medium`, sonnet `xhigh`; `claude-opus-5-5`, `claude-sonnet-5-5`; CLI 2.1.292. All the
  same as round 22.
- **Fixture**: the same `expressions.tar.gz` (`5c0720b0…`), not rebuilt; no migration dialog.
- **Isolation**: `per-shared-fixture-restart`.
  - pid 78920: SMOKE-o-1, S11-o-2.
  - pid 79806: SMOKE-o-2, S11-s-2.
  - Each restart was `shutdown` → `start` harness → `wait` → SMOKE.
  - Call log: `runs-r26/server-calllog.jsonl`, via `mps_control.sh calllog`. It is still on in the capture and in the
    live MPS.
- **Audit**: 0 errors, 0 retries, `server_call_surplus` 0, 0 rejections, 0 `MODAL_BLOCKED`, 0 compactions. Contamination
  guard exit 0.
- **Evaluation**: graded by the observer, read-only via `mcp_call.py`, as in round 22. The checks were the answers, a
  `diff -rq` of the `.mps` files against the tarball, `get_project_structure` and a model-scope check.

## 1. Task outcomes

| cell | Q1 | Q2 | Q3 | Q4 | Q5 | 6 | pass |
|---|---|---|---|---|---|---|---|
| S11-opus-2 | yes | Long, Element, Float, Number | Float, "the rule … is `typeof_SimpleMathAssignment`" | no (IS_SUBTYPE Float<:Int false; commented out, unchecked) | Number | unchanged | **PASS** |
| S11-sonnet-2 | yes | Element, Long, Float, Number ("`Int` itself is not listed … subtyping is reflexive") | Float, but **"the rule that gives `E` its type is `typeof_SimpleMathVarDeclaration`"**, with `typeof_SimpleMathAssignment` as where `Float` comes from | no (same, unchecked verdict read) | Number | unchanged | **PASS** (Q3 by the letter) |

- Criterion 6 holds for both runs:
  - roots `Main`, `Simple` and `TypeError`;
  - model check 0 errors, `TypeError` `uncheckedSubtrees: 1`;
  - no `.mps` file differs from the fixture.
- Sonnet's Q2 now states outright that `Int` is excluded, so round 22's criterion-2 ambiguity does not arise.
- Sonnet's Q3 meets criterion 3 as written ("naming `typeof_SimpleMathVarDeclaration` as well is fine; it must not be
  the only rule named"). The emphasis is the reverse of the expected answer, though. See §3.

## 2. Metrics, round 22 → round 23

| cell | turns | batches | tool calls | `mps_*` calls | wall | cost $ | cache read | output tok | tool-result KB | errors |
|---|---|---|---|---|---|---|---|---|---|---|
| S11-opus | 34 → **22** | 10 → **8** | 32 → **21** | 26 → **15** | 104 → **86 s** | 0.85 → 0.94 | 0.57 → **0.52 M** | 10.6 → **8.0 K** | 53 → 107 | 0 → 0 |
| S11-sonnet | 50 → **39** | 17 → **15** | 47 → **36** | 37 → **26** | 178 → **136 s** | 0.94 → **0.71** | 1.35 → **1.02 M** | 22.5 → **17.1 K** | 110 → **60** | 0 → 0 |

`families.py`, round 22 → round 23:

| run | **T_rule_prints** | **T_type_queries** | A_tempfile_env | C_checks | D skill reads / bash fetch |
|---|---|---|---|---|---|
| S11-opus | 4 → **0** | 12 → **9** | 5 → 0 | 2 → 1 (model scope) | 0/1 → 0/3 |
| S11-sonnet | 6 → **0** | 21 → **17** | 2 → 4 | 2 → 2 | 1/1 → 1/1 |

- **The A/B threshold** (≥ 30 % fewer tool calls and ≥ 25 % fewer context tokens, no drop in pass rate):
  - opus meets it on tool calls (−34 %) but misses on cache read (−8 %);
  - sonnet misses on tool calls (−23 %) but meets on cache read (−25 %);
  - the pass rate is unchanged, 2/2.
  - With n = 1 this reads as a clear direction, not proof.
- **Opus cost rose** although it made fewer turns.
  - Opus loaded no `Skill` tool. It `cat`-ed `mps-mcp-workflow/SKILL.md` and grepped `mps-language-analysis` through
    Bash (`:5`, `:6`).
  - The tool-result bytes therefore doubled (53 → 107 KB), and they all landed in cache writes early in the run.
  - This is a variation in how the worker reads skills, not an effect of the remedy.
- **Where the saved calls went**:
  - the 4 / 6 rule printouts are gone;
  - so are the rule-name searches that fed them (opus `search_root_node_by_name`, sonnet `LIST_CONCEPT_ASPECTS` +
    `search_root_node_by_name`);
  - so is sonnet's post-write `SUPERTYPES` link check.

## 3. Process signals

| signal | S11-opus-2 | S11-sonnet-2 |
|---|---|---|
| P1 `IS_SUBTYPE` | yes `11`, `13` | yes `18`, `[22-25]`, `34` |
| P2 no rule-root printouts | **yes** (0) | **yes** (0) |
| P3 type of `E` asked | yes, `EXPLAIN_TYPE` `14` | yes, `EXPLAIN_TYPE` `15` |
| P4 slot asked | yes, `15` | yes, `16` |
| P5 unchecked verdict read | yes (model-scope check, `17`) | yes (`28`) |

**D100 docs half worked.** Both workers still asked `GET_TYPE` on `E` (`Int`) next to `EXPLAIN_TYPE` (`Float`). Both
then explained the disagreement in nearly the new doc's words ("types only the node's own slice and misses the later
`E := D` constraint"), instead of discovering it by trial and error.

**Side effect of the `:64` wording (new, 1 instance).** The new sentence says the trace's `rule` "answers 'which rule
gives this type'". The first entry of the trace is `E : i assigned`, and it is attributed to
`typeof_SimpleMathVarDeclaration`. Sonnet took that entry literally and named the declaration rule as "the rule that
gives `E` its type", even though its own step 4 credits `i = Float` to `typeof_SimpleMathAssignment`. Opus read the
same trace and named the assignment rule.

The sentence should point at the entry that fixes the concrete type, not at any entry. Suggested `:64` wording:
"`rule` names the rule that added the entry. For 'which rule gives this type', cite the entry that equates the
node's type variable with the concrete type (`i = Float   added`), not the `type_assigned` entry. Print
`ruleReference` only to change the rule."

## 4. Status of round-22 findings

| finding | status |
|---|---|
| N2 / D101 (the trace invites rule printouts) | **Treated, effective**: `T_rule_prints` 4/6 → 0/0, P2 2/2. Needs the §3 wording refinement |
| N1 / D100 (GET_TYPE one-node result differs from the root context) | **Docs half treated**: both workers explain the disagreement correctly. The **S** half is open: GET_TYPE still answers `Int`, and a worker that skips EXPLAIN_TYPE would still answer Q3 wrongly |
| N3 / D102 (`LIST_CONCEPT_ASPECTS` route for type questions) | Not treated. No instance this round: sonnet made no aspect listing |
| Criteria issues (round 22 §6) | Unchanged, not edited. Criterion 2 did not trigger this round. P3's acceptance of `GET_TYPE` still stands, and criterion 3 could also say which rule counts as "the" rule, given §3 |

## 5. Suggested next step

1. Apply the §3 wording to `type-queries.md:64` in the blueprint and both copies, then rebuild `mcp-tools` resources.
2. Optionally apply D102: one sentence in the type-questions half of `mps-language-analysis` ("aspect listings are for
   authoring; do not open `SubtypingRule` roots to answer a subtype question").
3. Re-run S11 × 2 (round 24). Success = `T_rule_prints` 0/0, and both Q3 answers name `typeof_SimpleMathAssignment`
   as the rule.
4. Decide separately whether D100's server half (GET_TYPE in root context, or a `warnings` entry) is worth doing.
   That is a Kotlin change in `mps_mcp_query_nodes`, with an integration test.
