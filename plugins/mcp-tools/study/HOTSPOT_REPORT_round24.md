# Skill Script Automation Study — Round 24 (2026-10-07)

Status: re-measure after the round-23 refinement. Scope: **S11** × **opus + sonnet** = 2 cells, n = 1 per cell,
with the same effort pins. **Both cells PASS, `T_rule_prints` stays 0 / 0, and both Q3 answers now name
`typeof_SimpleMathAssignment` as the rule.** These were round 23's two success criteria (§5 there), and both hold.
Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r27/{SMOKE-opus-{1,2,3},S11-{opus,sonnet}-3}-*`, `analysis/`. `families.tsv`
covers `runs-r25` (round 22), `runs-r26` (round 23) and `runs-r27`. The run number is 3 (`S11-<model>-3`).

## 0. Remedy and harness state

- **Remedy** (uncommitted), on top of round 23's. Each edit is in the blueprint and is copied byte-identically into
  `.claude/skills` and `.agents/skills`.
  - `mps-mcp-workflow/references/analysis-tools/type-queries.md:64`: for "which rule gives this type", cite the
    `rule` of the entry that equates the node's type variable with the concrete type (`i = Float   added`). Do not
    cite the `type_assigned` entry, which only names the rule that introduced the variable.
  - `mps-language-analysis/SKILL.md`, "Answering Type Questions" (D102):
    - a rule's name need not match what it returns;
    - `LIST_CONCEPT_ASPECTS` lists typesystem rules so they can be authored, so do not open a `SubtypingRule` or
      `InferenceRule` root to answer a type question;
    - the routing line now reads "`GET_TYPE` (`EXPLAIN_TYPE` when a later statement can constrain it)", consistent
      with round 23's `:23` warning.
  - Validation: `validate_skill_catalog.py` OK, the three trees are identical, and IDEA `build_project` copied both
    files into `plugins/mcp-tools/classes` (`cmp` equal).
- **Surface**: `skillsSha256 d3cb5cd6… → 8f1888c0…` on all 5 metas. Inventory `f2d8480f…`, guides `7c49518f…`,
  prompt, effort (opus `medium`, sonnet `xhigh`), models, CLI 2.1.292 and fixture are all unchanged.
- **The GET_TYPE server change (D100 S half) is not in this round.** An implementer agent is writing it in the same
  checkout, under a no-build, no-test, no-docs rule until this round ends. The plugin classes the workers used are
  the round-23 build.
- **Isolation**: `per-shared-fixture-restart`.
  - pid 82737: SMOKE-o-2, S11-o-3.
  - pid 83694: SMOKE-o-3, S11-s-3.
  - Call log: `runs-r27/server-calllog.jsonl`.
- **Harness glitch (new, A10 candidate).** The first `mps_control.sh restart`, issued in the same shell command as
  `mps_control.sh open harness` and right after it, failed:
  - `shutdown` printed `{"alreadyDown": true}` while pid 79806 was alive with `harness` open;
  - `start` then refused ("MPS is already running");
  - so SMOKE-opus-1 ran on the old process: 0 server lines, call log still `runs-r26`. It is not a readiness gate for
    this round.
  - A second `restart`, issued separately, worked; SMOKE-opus-2 was the gate.
  - Probable cause: `shutdown`'s project discovery ran before the just-activated project was listed. A
    `list_open_projects` right after `open` confirms it is listed, so `shutdown` should poll for the listing instead
    of deciding "down" from a single listing.
- **Audit**: `server_call_surplus` 0, 0 rejections, 0 `MODAL_BLOCKED`, 0 compactions. Guard exit 0.
  - One transcript error (§2): a shell error, not an MCP one.
- **Evaluation**: graded by the observer, read-only, as in rounds 22–23.

## 1. Task outcomes

| cell | Q1 | Q2 | Q3 | Q4 | Q5 | 6 | pass |
|---|---|---|---|---|---|---|---|
| S11-opus-3 | yes | Element, Long, Float, Number ("`Int` itself is not counted") | Float, "**the rule that fixes it is `typeof_SimpleMathAssignment`**", citing `i = Float added` | no (IS_SUBTYPE Float<:Int false; commented out, unchecked) | Number | unchanged | **PASS** |
| S11-sonnet-3 | yes | Long, Element, Float, Number (`Int` and `Bool` excluded) | Float, "**the rule that gives it that type is `typeof_SimpleMathAssignment`**" | no (same; unchecked verdict read) | Number | unchanged | **PASS** |

- Sonnet's round-23 inversion ("the rule … is `typeof_SimpleMathVarDeclaration`") is gone. Both answers read the
  entry the reworded `:64` points to.
- Both Q3 answers again explain `GET_TYPE`'s `Int` as the one-node slice. Sonnet labels it "Pitfall" and paraphrases
  the `:23` sentence.
- Criterion 6 holds for both: same roots, model check 0 errors, `TypeError` `uncheckedSubtrees: 1`, no `.mps` diff.

## 2. Metrics, rounds 22 → 23 → 24

| cell | turns | batches | tool calls | `mps_*` | wall s | cost $ | cache read | output tok | tool-result KB | errors |
|---|---|---|---|---|---|---|---|---|---|---|
| S11-opus | 34 → 22 → **22** | 10 → 8 → **10** | 32 → 21 → **20** | 26 → 15 → **14** | 104 → 86 → **69** | 0.85 → 0.94 → **0.71** | 0.57 → 0.52 → **0.54 M** | 10.6 → 8.0 → **7.0 K** | 53 → 107 → **40** | 0 → 0 → 0 |
| S11-sonnet | 50 → 39 → **44** | 17 → 15 → **18** | 47 → 36 → **41** | 37 → 26 → **29** | 178 → 136 → **153** | 0.94 → 0.71 → **0.77** | 1.35 → 1.02 → **1.20 M** | 22.5 → 17.1 → **19.8 K** | 110 → 60 → **56** | 0 → 0 → **1** |

| run | T_rule_prints | T_type_queries | A_tempfile_env |
|---|---|---|---|
| S11-opus | 4 → 0 → **0** | 12 → 9 → **8** | 5 → 0 → 4 |
| S11-sonnet | 6 → 0 → **0** | 21 → 17 → **20** | 2 → 4 → 9 |

- **Opus against round 22**: −35 % turns, −38 % tool calls, −34 % wall time, −17 % cost. It is the cheapest S11-opus
  so far. Round 23's cost bump (Bash `cat` of whole skills) did not recur.
- **Sonnet against round 22**: −12 % turns, −13 % tool calls; it is up slightly on round 23. All of the extra is
  verification, none of it rule printouts:
  - the `SUPERTYPES` warning "this walk runs in the global language scope" led to an `IS_SUBTYPE` per supertype;
  - plus link-by-link chain checks: `SUPERTYPES` of `Long`, `IS_SUBTYPE {Long, Float}`, `{Float, Number}`,
    `{Element, Float}`;
  - plus a `Bool` control.

  This is the round-21 N1/D95 verification appetite at `xhigh`, not a routing defect.
- **The one error**: `S11-sonnet-3:12` ran `…mps_dump.py tree A; echo ======; …mps_dump.py tree B`. zsh treats
  `======` as `=`-expansion (`no such command`), so the shell aborted after the first dump, and `:13` re-ran the
  second dump. That is 1 turn. It is the same family as round 21's A9 (zsh globbing in worker shells), and the
  observer hit it too during round 22. Remedy tier **T**: add "quote `=`-leading words and globs" to round 21's
  proposed A9 line in `AGENTS_template.md`.

## 3. Process signals

| signal | S11-opus-3 | S11-sonnet-3 |
|---|---|---|
| P1 `IS_SUBTYPE` | yes | yes |
| P2 no rule-root printouts | **yes** (0) | **yes** (0) |
| P3 `EXPLAIN_TYPE` on `E` | yes | yes |
| P4 `GET_EXPECTED_TYPE` on the operand | yes | yes |
| P5 unchecked verdict read | yes | yes |

N3/D102 had no instance to remove: neither worker listed concept aspects in this round or in round 23. So the new
sentence in `mps-language-analysis` is unmeasured. It is cheap, and it states a fact both rounds confirmed (the
misnamed `SimpleMathIntegerType_subtypeOf_Number`).

## 4. Status

| item | status |
|---|---|
| D101 (the trace invites rule printouts) | **Treated and settled**: `T_rule_prints` 0/0 in two consecutive rounds, P2 4/4 |
| `:64` "which rule" refinement | **Effective**: both Q3 answers name the assignment rule from the `i = Float` entry |
| D100 docs half | **Effective**: 4/4 runs explain GET_TYPE's `Int` correctly |
| D100 server half | In progress (separate implementer and reviewer). The `:23` text and the `mps-language-analysis` parenthetical must be rewritten when it lands, and S11 re-run, because GET_TYPE would then answer `Float` |
| D102 | Applied, unmeasured (no instance) |
| A10 (`shutdown` right after `open` reports `alreadyDown`) | New harness defect, see §0 |
| A9 (+ zsh `=` expansion) | 1 instance this round |

## 5. Suggested next step

After the GET_TYPE server change lands and its suite is green:
1. rebuild, restart MPS, re-run S11 × 2;
2. expect `GET_TYPE` on `E` to answer `Float`, with no "pitfall" caveat needed;
3. keep the `T_rule_prints` 0/0 and Q3 checks.

The S11 done criteria (P3, criterion 3) then need the round-22 §6 edits, because `GET_TYPE` alone becomes a correct
route to `Float`. The rule name still needs `EXPLAIN_TYPE`.
