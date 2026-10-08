# S11 done criteria (observer, read-only, projectPath = run project dir)

Fixture: `expressions.tar.gz` (`samples/expressions` with `classes_gen`, see `../../fixtures/README.md`).
The worker must not change any model, so every answer below is fixed by the fixture. The answers
were verified through MPS MCP against `samples/expressions` on 2026-10-07 (MPS 2026.1, build
261.25134): `IS_SUBTYPE`, `SUPERTYPES`, `GET_TYPE`, `EXPLAIN_TYPE`, `GET_EXPECTED_TYPE` and a
`check_root_node_problems` of `TypeError`.

The recorded failure this cell replays: deciding `Int <: Float` took two rounds and five
`SubtypingRule` printouts, and a clean check over commented-out code was read as "well-typed".

References (model `r:95889e99-7e33-4e8a-9f36-e33116f08527(jetbrains.mps.samples.Expressions.sandbox)`,
abbreviated `<sandbox>`):

| what | reference |
|---|---|
| root `Main` | `<sandbox>/2073504467208336329` |
| `var E = 10` in `Main` (a `SimpleMathVarDeclaration`) | `<sandbox>/8620208551721818923` |
| `E := D` in `Main` (a `SimpleMathAssignment`) | `<sandbox>/8620208551721819391` |
| `10 * 2.6 F`, the initializer of `var D` in `Main` | `<sandbox>/2073504467211039144` |
| its left operand `10` (a `SimpleMathIntegerConstant`) | `<sandbox>/2073504467211042657` |
| root `Simple` (`var aValue = 10 + 1.3 F`; not asked about) | `<sandbox>/3453667744252544858` |
| root `TypeError` | `<sandbox>/3453667744252546022` |
| `Int anotherInt = 1.3 F` in `TypeError` (a `SimpleMathTypedVarDeclaration` under a `BaseCommentAttribute`) | `<sandbox>/8620208551721817373` |

Type concepts, all in `c:7e282943-fc6b-4900-ada5-34c0024cc4f4/…:jetbrains.mps.samples.Expressions.structure.…`:
`Int` = `SimpleMathIntegerType` (2073504467208542432), `Long` = `SimpleMathLongType`
(2073504467209660554), `Float` = `SimpleMathFloatType` (2073504467210944062), `Number` =
`SimpleMathNumberType` (2073504467209504611), `Element` = `SimpleMathElementType`
(2073504467209504078). Each has no mandatory child, so a `typeConceptRef` operand works.

## Answers (read `ANSWERS.md`)

1. **Q1 — yes.** `IS_SUBTYPE {sub: Int, super: Float}` → `isSubtype: true`.
2. **Q2 — `Long`, `Number`, `Float`, `Element`**, any order, no others. `SUPERTYPES {type: Int}`
   gives `Element` and `Long` immediately, `Float` at depth 2 and `Number` at depth 3. Listing
   only the immediate supertypes fails; so does listing `Bool` or `Int` itself as a supertype. Noting that
   subtyping is reflexive (`Int <: Int`) outside the list is fine.
3. **Q3 — `Float`, made so by `typeof_SimpleMathAssignment`.** `var E = 10` alone only bounds `E`
   from below by `Int` (`typeof_SimpleMathVarDeclaration`); the later `E := D` adds
   `E :>=: typeof(D)` and `D` is `Float`, so the inequalities resolve to `E = Float`. `GET_TYPE` on `var E`
   answers `Float` directly (root scope since D100) but names no rule; the rule comes from `EXPLAIN_TYPE`,
   whose `i = Float added` entry is credited to `typeof_SimpleMathAssignment`. Naming
   `typeof_SimpleMathVarDeclaration` as well is fine; it must not be the only rule named. `Int`
   (read off the initializer) fails.
4. **Q4 — no.** `Float` is not a subtype of `Int` (`IS_SUBTYPE {sub: Float, super: Int}` →
   `isSubtype: false`), so `Int anotherInt = 1.3 F` would be a type error. The answer must not cite
   a check of `TypeError` as evidence that it is well-typed: the declaration is commented out, so
   `check_root_node_problems` answers `no problems found in checked nodes (1 subtree(s) unchecked: …)`
   with `details.uncheckedSubtrees: 1` — nothing was type-checked. Saying the code is commented out
   and therefore not checked is a plus, not required.
5. **Q5 — `Number`.** `GET_EXPECTED_TYPE` on the operand `10` → `Number` (the
   `typeof_ArithmeticSimpleMathExpression` bound `operand :<=: Number`). The answer passes when it
   names `Number` as the required type, also when it adds that `10` is an `Int` and so fits. It
   fails when it gives `Int` (the operand's own type, `GET_TYPE`) or `Float` (the type of the whole
   product) as the requirement.

6. **Models unchanged.** `mps_mcp_check_root_node_problems` on the sandbox model is as in the
   fixture (no errors), `mps_mcp_get_project_structure(startingPoint=<sandbox>, includeRootNodes=true)`
   still lists exactly `Main`, `Simple` and `TypeError`, and no `.mps` model file in the project
   differs from the fixture. Module descriptors (`.mpl`, `.msd`) and `.mps/` files that MPS rewrites
   on opening the project do not count.

Pass = criteria 1–6 hold.

## Process signals (transcript; report separately from the pass)

A pass with the answers right but the routing missed is "answers right, typesystem simulated" —
the regression this cell exists to catch. Read the `families.py` row of the run plus the
transcript:

- **P1 `IS_SUBTYPE` used.** At least one `mps_mcp_query_types` `IS_SUBTYPE` call (Q1 or Q4).
- **P2 no rule-root printouts.** `T_rule_prints` is 0. It counts an inline JSON printout by its
  concept (`InferenceRule`, `SubtypingRule`, …) and any other printout — PLAIN TEXT, HTML, a temp
  file — by a `nodeReference` in the `jetbrains.mps.samples.Expressions.typesystem` model (or any
  other `….typesystem` model). If it is not 0, check in the transcript whether those calls came
  before the `ANSWERS.md` write; any that did fail P2. A Bash or Read of a printout file is not in
  the column; it follows a counted `print_node`.
- **P3 the type and its rule asked, not derived.** `EXPLAIN_TYPE` on `var E` (`<sandbox>/8620208551721818923`)
  or on a reference to `E` (the left side of `E := D`). `GET_TYPE` there answers `Float` and is a correct route to
  the type, but not to the rule: P3 needs the `EXPLAIN_TYPE` call, and a correct rule name after `GET_TYPE` alone
  came from reading rules (see P2). (Tightened 2026-10-08 from "`EXPLAIN_TYPE` or `GET_TYPE`";
  rounds 22–26 all ran `EXPLAIN_TYPE` on `E`, so their P3 verdicts stand.)
- **P4 the slot asked.** `mps_mcp_query_nodes` `GET_EXPECTED_TYPE` on the operand
  (`<sandbox>/2073504467211042657`).
- **P5 the unchecked verdict read.** If the worker checked `TypeError`, its result is
  `clean_unchecked` in `families.py`; the Q4 answer did not lean on it (criterion 4).

`T_type_queries` (all `mps_mcp_query_types` calls plus `GET_TYPE` / `GET_EXPECTED_TYPE`) is the
volume column; four to eight is the expected range, and more is not a failure.
