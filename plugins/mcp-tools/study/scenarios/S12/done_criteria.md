# S12 done criteria (observer, read-only, projectPath = run project dir)

**Prompt frozen 2026-10-08** (`promptSha256` `4d7270af8ab3…`) after the round-30 rehearsal: `S12-opus-1`
and `S12-sonnet-1` both passed, neither misread the prompt, and every pinned answer below matched both
left-behind states (`study/HOTSPOT_REPORT_round30.md`).

Fixture: `expressions.tar.gz`, as S11 (`../../fixtures/README.md`). In the fixture `Bool <: Number`
is false. The loop this cell replays was run live on `samples/expressions` on 2026-10-07 (MPS
2026.1, build 261.25134; `../../../docs/type-query-use-cases.md` §1.2): before the rule
`check_root_node_problems` reports "type Bool is not a subtype of Number" with
`rules[0].rule = typeof_SimpleMathVarDeclaration`, and `EXPLAIN_TYPE` shows a `subtype_checked`
entry with `holds: false`; after one `MAKE`, `IS_SUBTYPE {Bool, Number}` is true, the `Bool` error
is gone, the `Float`/`Int` one stays, `OPERATION_TYPE {ArithmeticSimpleMathExpression, Bool, Int}`
goes from `null` to `Number`, and `EXPLAIN_TYPE`'s `via` names the new rule. The same loop, run
again on 2026-10-08 through the skill's step 9 recipe, gave the same answers, plus: `IS_SUBTYPE`
`{Bool, Int}` and `{Bool, Float}` stay false after the rule, and without it a sandbox line
`var t = true + 1` already has `GET_TYPE` → `Number` while its check reports "Operator '+' cannot be
applied".

The gap this cell measures: no cell authored a typesystem rule and checked it against a sandbox the
agent built itself; the before/after evidence was a rule printout or nothing.

References: sandbox model `r:95889e99-7e33-4e8a-9f36-e33116f08527(jetbrains.mps.samples.Expressions.sandbox)`
(`<sandbox>`), roots `Main` `…/2073504467208336329`, `Simple` `…/3453667744252544858`, `TypeError`
`…/3453667744252546022`. Type concepts in `jetbrains.mps.samples.Expressions.structure`:
`Bool` = `SimpleMathBooleanType`, `Number` = `SimpleMathNumberType`, `Int` = `SimpleMathIntegerType`,
`Float` = `SimpleMathFloatType`; a `typeConceptRef` operand works for each. The operator concept
for `+` is `jetbrains.mps.samples.Expressions.structure.ArithmeticSimpleMathExpression`. The
observer does not MAKE: the worker's build is what is measured.

Making the sandbox solution or the scratch model fails by design (the sample has no generator for
`SimpleMathWrapper`, `../../fixtures/README.md`). A worker that sees that failure has not broken the
language; record it, it fails nothing. "Before the build" below means before the first `MAKE` of
the language that included the new rule, read from the transcript.

1. **A rule makes `Bool` a subtype of `Number`.** `mps_mcp_get_project_structure(startingPoint=
   jetbrains.mps.samples.Expressions.typesystem, includeRootNodes=true)` lists a root that the
   fixture does not have — the fixture's 19 are 12 `typeof_*` `InferenceRule`s, 6
   `*_subtypeOf_*` `SubtypingRule`s and the `OverloadedOpRulesContainer` `SimpleMathOperations`
   (listed 2026-10-08). One `print_node` of the new root shows a `SubtypingRule` whose
   `applicableNode` concept is `SimpleMathBooleanType` and whose body yields a `SimpleMathNumberType`. Equivalent modelling passes when criteria 2 and 3 hold
   (another rule kind, or `Number` added to the existing `SimpleMathBoolean_subtypeOf_Element`);
   record which.
2. **The built language answers it, and nothing wider.** On the left-behind MPS,
   `mps_mcp_query_types`:
   - `IS_SUBTYPE {sub: Bool, super: Number}` → `isSubtype: true`. `false` means the rule was
     authored but not built: fail, whatever `EVIDENCE.md` says;
   - `IS_SUBTYPE {sub: Bool, super: Int}` and `{sub: Bool, super: Float}` → both `false` (a
     `Bool <: Int` or `Bool <: Float` rule also makes the first query true);
   - `OPERATION_TYPE {operatorConceptRef: ArithmeticSimpleMathExpression, left: Bool, right: Int}` → `Number`.
3. **The scratch sandbox.** `mps_mcp_get_project_structure(startingPoint=
   8be13549-194e-408d-bbda-4afa252a98de(jetbrains.mps.samples.Expressions.sandbox), includeRootNodes=true)`
   — the solution's module reference; the bare name resolves to the sandbox *model* and hides the
   scratch model — lists model `jetbrains.mps.samples.Expressions.scratch` with a root `Probe`; one
   deep JSON `print_node` of `Probe` (PLAIN TEXT misrenders the wrapper's layout) shows `Number n = true` and `Int i = 1.3 F` (a `SimpleMathTypedVarDeclaration` each, or what the
   sandbox roots use), neither under a `BaseCommentAttribute`. Other lines in `Probe` (a copied
   `TypeError` brings a commented-out one along; `var t = true + 1` is a natural probe) are fine.
   `mps_mcp_check_root_node_problems` on the model → no error on `Number n = true`, and exactly one
   on the `Int i = 1.3 F` declaration ("type Float is not a subtype of Int",
   `rules[0].rule = typeof_SimpleMathVarDeclaration`). Errors on other lines the worker added (an
   `Int x = true` to show `Bool <: Int` still fails, say) and warnings do not count. A deleted scratch model fails this criterion; note it as "followed
   `mps-aspect-typesystem` step 9.6 over the prompt" if the transcript shows that.
4. **`EVIDENCE.md`** states, in any form:
   - before: `Number n = true` is a type error ("Bool is not a subtype of Number" or equivalent),
     and the reporting rule `typeof_SimpleMathVarDeclaration` (from a check problem's `rules[]` or an
     `EXPLAIN_TYPE` entry). Naming `typeof_SimpleMathTypedVarDeclaration` as well is fine (it owns
     the declaration's equation); it must not be the only rule named, and naming the new subtyping
     rule as the reporter fails;
   - after: `Number n = true` is accepted and `Int i = 1.3 F` is still an error;
   - `true + 1` now type-checks, with type `Number`: from `OPERATION_TYPE`, or from `GET_TYPE` /
     `EXPLAIN_TYPE` on a sandbox line together with a check of that line without an error. A bare
     `GET_TYPE` → `Number` is not enough — the `+` rule bounds its result by `Number` also when the
     operation does not apply, so it answers `Number` before the change too (verified 2026-10-08).
     `null`, "error" or `Int` fails.
   A "before" claim with no type query, and no check of the scratch model or `Probe`, before the
   build in the transcript (P1) rests on reading the rules and fails this criterion.
5. **Nothing else changed.** `mps_mcp_get_project_structure(startingPoint=<sandbox>, includeRootNodes=true)` (the model reference)
   lists exactly `Main`, `Simple` and `TypeError`; `check_root_node_problems` on the sandbox model is
   as in the fixture (no errors, `uncheckedSubtrees: 1`). The `.mps` files that differ from the
   fixture are `languageModels/typesystem.mps` and the new scratch model only. Module descriptors
   (`.mpl`, `.msd`), `.mps/` directory files that MPS rewrites on opening, and generated
   `source_gen*` / `classes_gen` output of any module do not count.

Pass = criteria 1–5 hold.

## Process signals (transcript; report separately from the pass)

Read the `families.py` row of the run plus the transcript.

- **P1 baseline asked, not assumed.** A type query, or a `check_root_node_problems` on the scratch
  model or `Probe`, before the build. `T_type_queries_before_make` ≥ 1 is the quick proxy; it is
  exact only when the first MAKE the envelope did not reject (`ok:false` / `is_error`) is that build.
  A build answering `success:false` — the by-design sandbox failure, say — closes the window too;
  after any such earlier MAKE, read the transcript.
- **P2 copy, not study.** `T_rule_prints` ≤ 2 (the sibling rule copied as a template, and the copy
  printed to find the reference to change). More means the worker read rules to decide what the
  engine could answer.
- **P3 one build is the reload.** `M_makes` is 1 in the routed path: a MAKE of the language
  (`{"modules":["jetbrains.mps.samples.Expressions"],"rebuild":true}`, or its models); `M_reload_all`
  is 0. More MAKEs are a signal (a rebuild loop, MAKE used as a reload, a sandbox make); a
  `reload_all` is a docs miss — `mps-aspect-typesystem` step 9.4 says the MAKE is the reload, but a
  worker that loads only `mps-mcp-workflow` reads its "Reload after compiled-aspect changes" directive,
  which offers `reload_all` as an equal option (round 30). Neither fails the cell.
- **P4 the after state asked.** `T_type_queries` ≥ 4 in all, with at least one `IS_SUBTYPE` and one
  `OPERATION_TYPE`, `GET_TYPE` or `EXPLAIN_TYPE` after the build.
- **P5 no clean-over-unchecked reading.** No root the worker calls "well-typed" or "accepted" on a
  check that reported `uncheckedSubtrees` > 0 (`clean_unchecked` in `families.py`).
