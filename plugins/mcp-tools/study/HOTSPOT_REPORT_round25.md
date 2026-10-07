# Skill Script Automation Study — Round 25 (2026-10-07)

Status: re-measure after the two type-query server changes landed (D100's server half: `GET_TYPE` answers the root
check's type; `c2bc80261869`: `GET_EXPECTED_TYPE` answers the root check's bound). Scope: **S11** × **opus + sonnet**
= 2 cells, n = 1 per cell, with the same effort pins as rounds 22–24. **Both cells PASS (criteria 1–6). Opus keeps
`T_rule_prints` at 0. Sonnet prints three typesystem rule *statements* before writing `ANSWERS.md`
(`T_rule_prints` 3), so P2 fails for it.** This is the regression the cell is meant to catch. The answers stay right
because the prints came after `EXPLAIN_TYPE` had already answered; the worker used them only to quote the rule text.
Nothing was committed or pushed.

The brief called this S11's first measurement round. It is the fourth (rounds 22–24 ran S11 in `runs-r25..r27`), and
the first against the root-scoped `GET_TYPE` / `GET_EXPECTED_TYPE` server.

Evidence: `~/MPSProjects/mcp-study/runs-r28/{SMOKE-opus-{1,2},S11-{opus,sonnet}-1}-*`, `analysis/`. `families.tsv`
covers `runs-r25` (round 22), `runs-r26` (round 23), `runs-r27` (round 24) and `runs-r28`. The run number is 1
(`S11-<model>-1`). Round 22–24 project dirs were moved from `proj/` to `proj-r27/` so the run ids could restart at 1.

## 0. Remedy and harness state

- **Surface under test** is HEAD `c2bc80261869`. That commit landed at 16:38:15, 24 s before the first S11 worker
  started, and it committed the working tree that this round's MPS already ran (plugin classes built 16:19, the MPS
  processes started after that). Both server changes and their docs are therefore in both cells.
  - `skillsSha256 8f1888c0… → 3d4a373f…` on all 4 metas (the `type-queries.md:23/:27` and `nodes-test-case.md`
    rewrites).
  - Inventory `f2d8480f… → df3278ea…`: the `query_nodes` description changed.
  - Guides `7c49518f…`, prompt `5c59d141…`, effort (opus `medium`, sonnet `xhigh`), models, CLI 2.1.292 and fixture
    are unchanged.
- **Isolation**: `per-shared-fixture-restart`, recorded in both metas.
  - pid 14445: SMOKE-o-1, S11-o-1.
  - pid 15795: SMOKE-o-2, S11-s-1.
  - Each restart was `shutdown` → `start` harness → `wait` → SMOKE (1 server line each).
  - Call log: `runs-r28/server-calllog.jsonl`, turned on with `capture` + `calllog`. The pre-round process did not
    carry the option.
- **Pre-round state differed from the brief.** MPS was not on the Welcome screen: the developer checkout
  `/Users/vaclav/work/MPS/myMPS-fix` was open. The observer closed it (`force=false`) before the first restart.
- **A10 did not recur.** Every `restart` was issued in its own shell command, separate from `open`.
- **Audit**: `server_call_surplus` 0, 0 server errors, 0 rejections, 0 `MODAL_BLOCKED`, 0 compactions. Guard exit 0.
  Harness unit tests: 156 OK.
  - One transcript error (§2): a shell error, not an MCP one.
- **Evaluation**: graded by the observer, read-only, as in rounds 22–24. No criterion was ungradeable (§5).

## 1. Task outcomes

| cell | Q1 | Q2 | Q3 | Q4 | Q5 | 6 | pass |
|---|---|---|---|---|---|---|---|
| S11-opus-1 | yes (IS_SUBTYPE true) | Long, Element, Float, Number (`Bool` excluded) | Float; "fixed by **`typeof_SimpleMathAssignment`**", from `i = Float` | no (IS_SUBTYPE Float<:Int false; commented out, "1 subtree(s) unchecked") | Number ("a subtype of `Number`"; operand itself `Int`) | unchanged | **PASS** |
| S11-sonnet-1 | yes (and Float<:Int false) | Element, Long, Float, Number (`Int`, `Bool` excluded) | Float; "the rule … is **`typeof_SimpleMathAssignment`**" | no (same; "that clean verdict says nothing about well-typedness here") | Number (upper bound; `Int` fits) | unchanged | **PASS** |

- **The D100 server half works as intended.** `GET_TYPE` on `var E` answered `Float` in both runs. Neither answer
  carries round 22–24's "pitfall" caveat, where `GET_TYPE` gave `Int` as a one-node slice. Sonnet now writes "The
  check runs on the whole root, so the later statement `E := D` counts", which paraphrases the new `:23`.
- Both workers still ran `EXPLAIN_TYPE` on `E` to name the rule. That is the route P3 requires, because `GET_TYPE`
  gives no rule name.
- Q4: both noticed the commented-out declaration, checked `TypeError` (`clean_unchecked`) and decided by `IS_SUBTYPE`.
  - Sonnet also asked `EXPLAIN_TYPE` on the commented-out declaration: empty trace, `IDontApplyTypesystemRules`
    warning.
  - It also asked `GET_EXPECTED_TYPE` on the initializer. Scope `node` answered `Int`, as `:27` describes for
    commented-out code.
- Criterion 6 holds for both:
  - same three roots;
  - per-root check 0 errors, `TypeError` `uncheckedSubtrees: 1`;
  - no `.mps` file differs from the fixture (the only diffs are the installed catalog, `ANSWERS.md` and
    `.mps/.gitignore`).

## 2. Metrics, rounds 22 → 23 → 24 → 25

| cell | turns | tool calls | `mps_*` | wall s | cost $ | cache read | output tok | tool-result KB | errors |
|---|---|---|---|---|---|---|---|---|---|
| S11-opus | 34 → 22 → 22 → **28** | 32 → 21 → 20 → **26** | 26 → 15 → 14 → **16** | 104 → 86 → 69 → **111** | 0.85 → 0.94 → 0.71 → **0.72** | 0.57 → 0.52 → 0.54 → **0.68 M** | 10.6 → 8.0 → 7.0 → **8.4 K** | 53 → 107 → 40 → **30** | 0 → 0 → 0 → **1** |
| S11-sonnet | 50 → 39 → 44 → **41** | 47 → 36 → 41 → **38** | 37 → 26 → 29 → **28** | 178 → 136 → 153 → **132** | 0.94 → 0.71 → 0.77 → **0.69** | 1.35 → 1.02 → 1.20 → **0.89 M** | 22.5 → 17.1 → 19.8 → **18.7 K** | 110 → 60 → 56 → **54** | 0 → 0 → 1 → **0** |

Tool-call batches (distinct assistant messages that carry a `tool_use`): opus 15, sonnet 14. This count may not use
the same method as round 24's 10 / 18, so do not read a trend from it.

| run | T_rule_prints | T_type_queries | A_tempfile_env | Bp_shipped_script | D_skill_reads |
|---|---|---|---|---|---|
| S11-opus | 4 → 0 → 0 → **0** | 12 → 9 → 8 → **8** | 5 → 0 → 4 → **4** | 0 → 0 → 0 → 0 | 0 → 0 → 0 → 0 |
| S11-sonnet | 6 → 0 → 0 → **3** | 21 → 17 → 20 → **17** | 2 → 4 → 9 → **4** | 0 → 2 → 2 → **2** | 1 → 1 → 1 → **3** |

- **Opus against round 24**: +6 turns, +6 tool calls, +42 s wall time; cost is flat. The type work is the same size
  as round 24 (`T_type_queries` 8 → 8). The growth is in orientation, before the first type query:
  - `:8`–`:9`: deep JSON prints of `Main` and `TypeError` (both spilled to temp files);
  - `:10`–`:13`: four Bash calls (`head`/`grep` on the dumps, then a hand-written `/tmp/walk.py` to list the
    `samples.Expressions` nodes and their ids). One of them was the zsh error below.

  The fixture prompt gives no node ids, so the worker has to find them somehow. Sonnet did the same with the shipped
  `mps_dump.py tree` (2 calls, `Bp_shipped_script`), which is cheaper than writing a walker. At n = 1 this is variance
  in how the ids are found, not a routing regression.
- **Sonnet against round 24**: −3 turns, −3 tool calls, −21 s, −10 % cost, −26 % cache read. It is the cheapest
  S11-sonnet so far. The `SUPERTYPES` cross-checks per supertype (round 24's N1/D95 appetite) are still there: 6
  `IS_SUBTYPE` calls, a `Bool` control included.
- **The one error**: `S11-opus-1:13` ran `for f in …; do echo ==; python3 -I /tmp/walk.py $f; done`. zsh expands the
  unquoted `==` (`(eval):14: = not found`), so the command failed. That is 1 turn. It is the second instance in two
  rounds of the A9 zsh `=` family (round 24: `S11-sonnet-3:12`, `echo ======`). A9's "remove after one round without
  an instance" clock resets.

## 3. Process signals

| signal | S11-opus-1 | S11-sonnet-1 |
|---|---|---|
| P1 `IS_SUBTYPE` | yes (2) | yes (6) |
| P2 no rule-root printouts | **yes** (0) | **no** (3, all before `ANSWERS.md`) |
| P3 type of `E` asked | yes (`GET_TYPE` `:18`, `EXPLAIN_TYPE` `:20`) | yes (`GET_TYPE` `:15`, `EXPLAIN_TYPE` `:18`) |
| P4 `GET_EXPECTED_TYPE` on the operand | yes (`:19`) | yes (`:17`) |
| P5 unchecked verdict read | yes (`clean_unchecked`, Q4 does not lean on it) | yes (same) |

**Sonnet's P2 failure (new hotspot N5, defect D105).** Three `print_node` calls in `PLAIN TEXT` on nodes of
`jetbrains.mps.samples.Expressions.typesystem`. All three are rule *statements*, not rule roots:

| step | node | printout |
|---|---|---|
| `S11-sonnet-1:21` | `…typesystem/930174696942632551` | `infer typeof(assignment.variable) :>=: T;` |
| `S11-sonnet-1:34` | `…typesystem/2073504467209343325` | `infer typeof(declaration) :>=: typeof(declaration.initializer);` |
| `S11-sonnet-1:35` | `…typesystem/2073504467209636577` | `infer typeof(expression.left) :<=: <SimpleMathNumberType()>;` |

`ANSWERS.md` was written at `:38`.

- **This is citation, not simulation.** The text before `:21` reads: "E resolves to Float, with the type binding traced
  to `typeof_SimpleMathAssignment` … I'll pull the exact rule statements … to explain." Each answer was already
  decided by `EXPLAIN_TYPE` (`:18`, `:20`) or `GET_EXPECTED_TYPE` (`:17`) when the matching print ran, and the
  printouts only supply the quoted rule text in Q3 and Q5. `ANSWERS.md` says as much: "Where I quote a rule
  statement, I printed it only to cite it."
- **Cost**: 3 tool calls in 2 batches (`:34`–`:35` share one), about 0.3 KB of results. That is far cheaper than
  round 22's rule-root printouts (6 prints).
- **Why the docs did not stop it.** `type-queries.md:64` (and `:71` for check problems) says "Print `ruleReference`
  only to change the rule." Every `EXPLAIN_TYPE` entry also carries `rule.statement`, a node reference to the
  statement inside the rule. The sentence does not mention it, and the worker printed exactly that reference. The
  loophole has been there since round 23, when the sentence was written. Rounds 23–24 did not hit it (0 / 4 runs), so
  this round's instance is n = 1 exposure of a gap that already existed, not an effect of this round's change.
- The criterion counts it: P2 counts any printout by a `nodeReference` in a `….typesystem` model, and these came
  before `ANSWERS.md`. So P2 fails as written, even though the answers did not depend on the printouts (§5).

## 4. Hotspots and remedies

| id | hotspot | evidence | tier | remedy | saving | risk |
|---|---|---|---|---|---|---|
| N5 / D105 | rule-statement printouts made to quote an `EXPLAIN_TYPE` entry | `S11-sonnet-1:21, :34, :35` | **D** | `type-queries.md:64` and `:71`: replace "Print `ruleReference` only to change the rule" with "Do not print `ruleReference` or `statement` to answer a type question: the entry's `presentation` (`i >= j`, `u <= Number`) and the rule name are the evidence; print them only to change the rule." Blueprint plus both copies. | 2 batches / 3 calls per instance; keeps P2 clean | low; it only widens an existing sentence |
| A9 (zsh `=`) | unquoted `=`-leading word in a worker Bash command | `S11-opus-1:13`; round 24 `S11-sonnet-3:12` | **T** | as proposed in round 24: add "quote `=`-leading words (`echo '=='`) and globs" to the A9 line in `AGENTS_template.md` | 1 turn per instance | none |
| N6 | node ids found by walking deep-JSON temp files with ad-hoc Python | `S11-opus-1:8`–`:13` (6 calls) vs `S11-sonnet-1:11`–`:14` (`mps_dump.py tree`, 4 calls) | — | watch only. One instance, and the cheaper shipped route (`mps_dump.py`) already exists and is documented; re-check next round before filing | ~2–3 turns | — |

No server-side remedy is proposed. Both new server behaviours did what the docs describe in all four calls that used
them.

## 5. Criteria gradeability

All six criteria were gradeable from `ANSWERS.md` and the MCP checks. Two observations for the criteria owner. The
criteria were not edited.

- **P2 cannot tell citation from simulation.** As written, P2 counts every typesystem-model printout before
  `ANSWERS.md`, so a quote-only statement print and a rule-root printout used to simulate subtyping both count.
  - That is the right gate for the routing (the docs should send the worker away from both).
  - The report still has to read the transcript to say which one happened. If the distinction matters for trend
    lines, a separate counter for statement-node prints (a printout whose node is not a rule root) would make
    `families.tsv` show it.
- **`done_criteria.md` prose still describes the slice-era `GET_TYPE`.** Criterion 3 and P3 remain correct after the
  server change: `GET_TYPE` alone now gives `Float`, but it gives no rule name, and P3 already accepts `GET_TYPE` or
  `EXPLAIN_TYPE`. The fixed-answer explanation of criterion 3 ("`var E = 10` alone only bounds `E` from below …") is
  still true of the engine. Round 22 §6 / round 24 §5 suggested edits so that `GET_TYPE` returning `Float` is
  described as the expected route to the type. Those edits are still not applied, and grading did not need them.

## 6. Status

| item | status |
|---|---|
| D100 server half (`GET_TYPE` root scope) | **Effective**: 2/2 runs got `Float` from `GET_TYPE`, no caveat needed |
| `GET_EXPECTED_TYPE` root scope (`c2bc80261869`) | Q5 unchanged (`Number`, 2/2). Sonnet's Q4 probe exercised the `node`-scope fallback in commented-out code, as documented |
| D101 (rule printouts) | Rule roots: 0 in three consecutive rounds. **Rule statements: 3 in S11-sonnet-1, a new loophole, D105** |
| D102 | Still unmeasured (no `LIST_CONCEPT_ASPECTS` in either run) |
| D105 (new) | Open, **D**, §4 — fixed and archived after round 26 (`HOTSPOT_REPORT_round26.md`) |
| A9 (zsh `=`) | 2nd instance in two rounds, clock reset |
| A10 | Not reproduced (restarts issued separately) |

## 7. Suggested next step

1. Apply D105, a one-sentence change at `:64`/`:71`, propagated byte-identically to the three trees.
2. Re-run S11 × sonnet (n = 2 if affordable, since this round's failure is n = 1) and keep opus as the control. The
   gate is `T_rule_prints` 0 before `ANSWERS.md` and no loss of the Q3 rule name.
3. Fold A9's `=` sentence into `AGENTS_template.md` at the same time; S11 has now produced it twice.
