# Type-query tools: the live sandbox loop for typesystem authoring, use-case catalogue, and study coverage (2026-10-07)

Context: MPS-40240 added `mps_mcp_query_types` (`IS_SUBTYPE`, `SUPERTYPES`, `COMMON_SUPERTYPE`, `COERCE`,
`OPERATION_TYPE`, `EXPLAIN_TYPE`), `mps_mcp_query_nodes` `GET_TYPE` / `GET_EXPECTED_TYPE` (root-scoped since
`7bfc610b9fdc` / `c2bc80261869`), and `rules` / `uncheckedSubtrees` on `mps_mcp_check_root_node_problems`.
This note answers three questions: can an agent that authors a typesystem aspect live-check its rules against a
sandbox it creates itself; which use-case families the new tools open; and whether study cell S11 or a new S12
measures them. Everything in §1 was verified live against MPS 2026.1 build 261.25134 with the
`/Users/vaclav/work/MPS/myMPS-fix` project open, on `samples/expressions`; every change was reverted and the
working tree is byte-identical to HEAD (`git status` clean).

## 1. Can an agent live-check typesystem rules against a sandbox of its own? — Yes, and it was never possible before

### 1.1 Verdict

- **Means: yes.** Every step of the loop has an MCP tool, and the loop closes in one `MAKE` with no `reload_all`.
- **Skills: half.** `mps-aspect-typesystem` Common-Path step 9 already says *"After rebuilding and reloading, verify
  the rules against a sandbox with the matching engine query"*, but no skill says **how to get a sandbox**: there is
  no recipe for copying a sample root, creating a throw-away model, moving the root into it, or deleting the model
  afterwards. `mps-language-aspects-overview` "Validation Flow" lists check → build → regenerate → *"inspect sample in
  MPS UI"* and never mentions a type query. `mps-tests/references/nodes-test-case.md:43` says "run GET_TYPE on the
  sandbox node" and assumes the sandbox exists. The study directory (`scenarios.md`, "By skill") records the same gap
  from the other side: *"no cell that authors inference/subtyping/replacement rules; S11 only queries them"*.

### 1.2 The loop, as run live (every call `projectPath=/Users/vaclav/work/MPS/myMPS-fix`)

| step | tool | result |
|---|---|---|
| 1. sandbox root | `alter_nodes COPY_NODE` on root `Simple` of the sample's sandbox model | new root `…/1120050925596018073`, renamed `AgentSandbox` with `update_node SET PROPERTY` (`name`, `nestedName`) |
| 2. deliberate error | `update_node ADD CHILD` into the `SimpleMathWrapper.expressions` role: `Int anotherInt = 1.3 F` and `Number numFromBool = true`, blueprints by concept FQN only | two `SimpleMathTypedVarDeclaration` children, `fixReferences.stillBroken: 0` |
| 3. baseline check | `check_root_node_problems` on the root | 2 errors, each with `rules[0].rule = typeof_SimpleMathVarDeclaration`: "type Float is not a subtype of Int", "type Bool is not a subtype of Number" |
| 4. baseline trace | `query_types EXPLAIN_TYPE` on `anotherInt` | `Int>=d added` → `d = Float added` (error:true) → `checking whether Float is subtype of Int` → `error_added` |
| 5. author a rule | `COPY_NODE` on `SimpleMathBoolean_subtypeOf_Element`, rename to `SimpleMathBoolean_subtypeOf_Number`, `SET REFERENCE` of the copied `SNodeType.concept` to `SimpleMathNumberType` | rule root validates clean (`check_root_node_problems`: "no problems found") |
| 6. **before compile** | `IS_SUBTYPE {Bool, Number}`, check on sandbox | still `false`; still 2 errors — the authored-but-uncompiled rule changes nothing, as `type-queries.md` "After changing typesystem rules" promises |
| 7. compile | `alter_nodes MAKE {modules:[language], rebuild:true}` | `{"success":true,"runtimeReady":true}`; ~10 s |
| 8. **after compile, no reload** | `IS_SUBTYPE {Bool, Number}` | `isSubtype:true, isStrongSubtype:true` |
| | `check_root_node_problems` on sandbox | 1 error left (the `Float`/`Int` one); the `Bool` error is gone |
| | `GET_TYPE` on `numFromBool` | `Number`, `details.scope: "root"` |
| | `SUPERTYPES {Bool}` | immediate `Number`, `Element` (was `Element` only) |
| | `COMMON_SUPERTYPE {Bool, Int}` | `Number` |
| | `OPERATION_TYPE {ArithmeticSimpleMathExpression, Bool, Int}` | **`Number`** — `true + 1` now type-checks: an unintended consequence the rule author would otherwise meet only when a user types it |
| 9. throw-away model | `create_model` (`jetbrains.mps.samples.Expressions.agentScratch` in the sandbox solution) + 2× `model_used_language ADD` (`jetbrains.mps.samples.Expressions`, `jetbrains.mps.baseLanguage`) + `alter_nodes MOVE_NODE_TO_PARENT {nodeReference: AgentSandbox, modelReference: scratch}` | root moved out of the user's model; `check_root_node_problems(scratch, perRoot=true)` → `errors:1`; the real sandbox model is back to `Main`, `Simple`, `TypeError` with 0 errors and `uncheckedSubtrees:1` |
| 10. revert | `update_root_node_from_json DELETE` on the rule root, `update_model DELETE` on the scratch model, `MAKE rebuild` | `IS_SUBTYPE {Bool, Number}` → `false`; `OPERATION_TYPE` → `null`; both `.mps` files identical to HEAD |

Observations that belong in the skills (none are in them today):

- **One `MAKE` with `runtimeReady:true` is the reload.** No `mps_mcp_reload_all` was needed for the engine to run the
  new `SubtypingRule`; the study already knows this as D84 but the typesystem skill still says "after rebuilding and
  reloading". `mps-mcp-workflow` said `reload_all` *or* `MAKE` until study round 30 showed a worker doing both; its "Rebuild after
  compiled-aspect changes" directive now says the same as here.
- **Copy-then-modify authors a lattice rule in three calls** (`COPY_NODE`, `SET PROPERTY name`, `SET REFERENCE
  concept`) with no JSON blueprint and no printout of any rule other than the one copied. `check_root_node_problems`
  on the copy validates it before the build.
- **Blueprints for sandbox nodes need only concept FQNs**: `{"concept":"<lang>.structure.<Concept>", …}`; the printed
  sample root supplies the role names.
- **A throw-away model is cheap and leaves the user's models untouched**: `create_model` → `model_used_language`
  (the language under test, plus whatever the sample root's own concept needs, `jetbrains.mps.baseLanguage` here)
  → `MOVE_NODE_TO_PARENT` with `modelReference` only, or `insert_root_node_from_json` → … → `update_model DELETE`.
  The move keeps the node id, so references harvested before the move stay valid after the model prefix is swapped.
- **The MAKE writes into the working tree.** In a checkout the rebuild touches `source_gen/`, `source_gen.caches/`
  and `classes_gen/`; MPS's VCS integration staged the new generated Java (`git status` showed `AD` after the
  revert), so the clean-up is `git rm --cached` of the deleted generated file. `.mps` files survive a
  COPY/ADD/DELETE round trip byte-identically.
- **The scratch model is also the answer to "do not modify any model"**: a read-only task (S11) could still have
  run every probe above against a sandbox the agent owns, had the prompt allowed a scratch model.

### 1.3 Limits found in the same run

- **`EXPLAIN_TYPE` did not name the `SubtypingRule` that made an inequality hold** (fixed the same day, §4.2).
  At the time of the run the passing trace for `numFromBool` ended with `Number>=f solved` (no `rule`, no `error`),
  and the failing trace carried a bare `checking whether Float is subtype of Int` entry with no rule either. Now
  both are `subtype_checked` entries: the passing one has `holds: true` and a `via` naming the rule(s), the failing
  one `holds: false` and an empty `via` (a failed check went through no rule). Before the fix, `SUPERTYPES` on the
  subtype was the only evidence.
- `OPERATION_TYPE` with `operatorConceptRef` warns that `isApplicable` sees default operator properties; for the
  Expressions `+` this did not matter, but for a rule keyed on `operator` it would — pass an `operatorNode` from the
  sandbox, which the sandbox loop makes available for free.
- The sandbox's language must be built once before `GET_TYPE` can answer at all; a hollow language gives `null`
  (documented), so step 7 is also the first step for a greenfield language.

## 2. Use-case families opened by the type-query tools

Each family names what the agent could not do, or could only do by simulating the solver from rule printouts
(the regression S11 catches: five `SubtypingRule` printouts and two rounds to decide `Int <: Float`), and gives one
concrete scenario. Families A–D are read-only; E–H write.

### A. Deciding a type relation by asking, not by reading rules
**Before:** print every `SubtypingRule` / `InequationReplacementRule` / `ComparisonRule` and chain them by hand;
replacement rules with `isApplicable` closures and overloaded-operation containers cannot be evaluated by reading.
**Now:** `IS_SUBTYPE`, `SUPERTYPES`, `COMMON_SUPERTYPE`, `COERCE`, `OPERATION_TYPE`.
**Scenario:** a user asks whether `Int` fits a `Float` slot in their DSL; the agent answers in one call
(`isSubtype:true`), lists every widening (`SUPERTYPES` → `Long`, `Element`, `Float`, `Number`) and, when asked about
`Long * Float`, gives the overloaded-operation result (`OPERATION_TYPE`) instead of guessing from the `+` rule's name.
(S11 Q1, Q2, Q5.)

### B. Explaining a type or a type error on a user's node
**Before:** no headless Type-system Trace; the agent could only read the rule it *thought* applied.
**Now:** `GET_TYPE` (root-scoped), `EXPLAIN_TYPE` (equations, inequalities, the rule statement behind each, the error
chain), `rules[]` on check problems.
**Scenario:** "why is `E` a `Float` when I wrote `var E = 10`?" — `EXPLAIN_TYPE` shows `i >= Int` from
`typeof_SimpleMathVarDeclaration` and `i = Float added` from `typeof_SimpleMathAssignment` because of the later
`E := D`. A check problem's `rules[0].rule` names the reporter without opening the aspect. (S11 Q3; the root-scoped
`GET_TYPE` of rounds 25–26.)

### C. Reading the slot, not the value: expected types for completion, repair and migration
**Before:** no way to ask what a position requires; agents inferred it from the parent's rule or inserted and
checked.
**Now:** `GET_EXPECTED_TYPE` (root-scoped bound; `maxRootNodes:1` for the parent-slice answer `has expected type`
uses).
**Scenario:** S5-style repair of a type error — the agent asks the slot's bound (`Number` for the left operand of
`10 * 2.6 F`), then picks a replacement that `IS_SUBTYPE`-fits it instead of trying candidates. The same call decides
what a migration script may substitute into a slot, and what a bulk import (S3) may put into a typed child role.
(S11 Q5.)

### D. Trusting the checker correctly: commented-out code and unchecked subtrees
**Before:** a clean `check_root_node_problems` over commented-out or `IDontApplyTypesystemRules` code was read as
"well-typed".
**Now:** `uncheckedSubtrees` in the verdict plus `IS_SUBTYPE` on the stored type nodes (`typeNodeReference`) to
decide the question the check skipped.
**Scenario:** `Int anotherInt = 1.3 F` under a `BaseCommentAttribute`: the check says `no problems found in checked
nodes (1 subtree(s) unchecked…)`; the agent answers "not well-typed" from `IS_SUBTYPE {Float, Int} → false`
and says why the check could not tell. (S11 Q4.)

### E. Red–green typesystem authoring against a sandbox (§1)
**Before:** author a rule, build, and ask the user to open a sample in the editor; or write a `NodesTestCase` and run
a JUnit configuration (minutes, a test solution, a run configuration) for every iteration.
**Now:** the loop in §1.2 — sandbox root with a deliberate error, baseline `check` + `EXPLAIN_TYPE`, author the rule
by `COPY_NODE`/`update_node`, `MAKE`, re-ask `IS_SUBTYPE` / `check` / `GET_TYPE`. Seconds per iteration, no editor,
no test module.
**Scenario:** "make `Bool` assignable to `Number`": the agent shows the error first (`type Bool is not a subtype of
Number`, rule `typeof_SimpleMathVarDeclaration`), adds the `SubtypingRule`, builds, and shows `isSubtype:true`,
the error gone, and `GET_TYPE(numFromBool) = Number`. The `before` evidence proves the rule was needed; the `after`
evidence proves it fired. **No study cell covers this family.**

### F. Catching unintended consequences of a lattice change
**Before:** a new subtyping or replacement rule's side effects on operators, joins and other slots surfaced only when
a user typed the offending code.
**Now:** `OPERATION_TYPE`, `COMMON_SUPERTYPE`, `SUPERTYPES` before and after the build; `check` on a sandbox that
holds the constructs the change must *not* accept.
**Scenario:** the same `Bool <: Number` rule made `true + 1` type as `Number` (`OPERATION_TYPE` went `null` →
`Number`) and `COMMON_SUPERTYPE {Bool, Int}` went `Element` → `Number`. The agent reports that widening, and the
user decides whether `+` on booleans is acceptable. A sandbox line `var oops = true + 1` with an *expected* error
is the regression guard, kept until the work is done.

### G. Writing `NodesTestCase` assertions from engine answers
**Before:** `has type` / `has expected type` / `has typesystem error` annotations were written from what the agent
believed the type would be, and failed on first run.
**Now:** `GET_TYPE` gives the `presentation` to assert, `GET_EXPECTED_TYPE` `maxRootNodes:1` gives exactly what
`has expected type` will compute, `EXPLAIN_TYPE` / `rules[]` give the `RuleReference` for `has typesystem error`.
**Scenario:** S7-style "add tests": the agent builds the sandbox construct, asks the engine, pastes the answers into
the annotations, and the test passes on the first JUnit run. Already half-documented in
`mps-tests/references/nodes-test-case.md:43`; the sandbox half is missing.

### H. Validating generator and migration output by type
**Before:** generated or migrated BaseLanguage was judged by `check_root_node_problems` alone.
**Now:** `GET_TYPE` / `IS_SUBTYPE` on generated nodes, `COERCE` to `ClassifierType` to read the classifier a
generated expression resolves to and then list its members.
**Scenario:** S6-style "generate Java per Recipe": after generation the agent asks `GET_TYPE` of a generated
`totalMinutes()` call and `IS_SUBTYPE` against `int`, or `COERCE`s a generated receiver's type to `ClassifierType` to
confirm it is the intended runtime class before trusting a clean check.

## 3. Can S11 or a new S12 cover these?

**S11 covers A–D and nothing else, by design.** Its prompt forbids model changes ("Do not modify any MPS model"), its
criterion 6 fails any `.mps` diff, and its fixture must open in a fresh MPS. That is right for what it measures
(answers from the engine, `T_rule_prints = 0`), and it should stay frozen: six rounds of comparable `promptSha256`
are its value. Adding an authoring step would also break the read-only evaluation rule (`scenarios.md`, "Writing
done criteria"). Two S11 refinements already queued in `type-query-followups.md` (criterion 2's "`Int` itself",
P3 now that `GET_TYPE` answers `Float`) are the only changes it needs.

**S12 — "typesystem authoring with a sandbox" — covers E, F and the sandbox half of G.** It is the cell the
directory says does not exist ("Not this: no cell that authors inference/subtyping/replacement rules"), and
§1 shows the loop is runnable headlessly, so the cell is measurable today. Proposed shape, in the style of
`scenarios.md` "Adding a scenario" (smallest task that forces the changed path, reuse a fixture, criteria first):

- **Fixture:** `expressions` (reuse; restart MPS before it, as for S11). The rule the worker must add has a
  before/after that the fixture pins: `Bool <: Number` is `false` in the fixture.
- **Worker prompt (draft, developer voice; freeze after one rehearsal):**

  > You are working in the current folder, which contains a JetBrains MPS project with the language
  > `jetbrains.mps.samples.Expressions` (types `Int`, `Long`, `Float`, `Number`, `Element`, `Bool`) and the solution
  > `jetbrains.mps.samples.Expressions.sandbox`. MPS is running with the MCP server enabled and this project open.
  > Follow CLAUDE.md and the MPS skills.
  >
  > Task: make `Bool` values assignable where a `Number` is required, and prove it.
  >
  > 1. Create a model `jetbrains.mps.samples.Expressions.scratch` in the sandbox solution with one root `Probe`
  >    holding `Number n = true` and `Int i = 1.3 F` (as the existing sandbox roots do, inside a `SimpleMathWrapper`).
  > 2. Record, from the type checker, that `Number n = true` is a type error before your change and which rule
  >    reports it.
  > 3. Add a typesystem rule to the language so that `Bool` is a subtype of `Number`. Rebuild the language.
  > 4. Record, from the type checker, that `Number n = true` is now accepted, that `Int i = 1.3 F` is still an
  >    error, and what `true + 1` now evaluates to.
  > 5. Write the before/after evidence to `EVIDENCE.md` in the current folder.
  > 6. Done when: the language builds cleanly, `EVIDENCE.md` exists, and the three sample roots `Main`, `Simple`,
  >    `TypeError` are unchanged.
  >
  > Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.

- **Done criteria (observer, read-only; sketch):** (1) the typesystem model has a new `SubtypingRule` root whose
  `applicableNode.concept` is `SimpleMathBooleanType` and whose body creates `SimpleMathNumberType`
  (`get_project_structure(startingPoint=<typesystem model>, includeRootNodes=true)`, then one `print_node` of the
  new root — the evaluator may print rules, the worker's prints are the signal); (2) `IS_SUBTYPE {Bool, Number}` →
  `true` on the left-behind MPS (the observer does not MAKE: the worker's build is what is measured); (3) the scratch
  model exists with a `Probe` root; `check_root_node_problems(scratch)` → exactly 1 error, on the `Int` declaration,
  `rules[0].rule = typeof_SimpleMathVarDeclaration`; (4) `EVIDENCE.md` states the before error, its rule, the after
  acceptance, and `true + 1` → `Number` (OPERATION_TYPE or a sandbox line) — a "before" claim backed by nothing but
  a rule printout fails; (5) the three sample roots unchanged, `.mps` diff against the fixture limited to
  `typesystem.mps` and the new scratch model. Process signals, as S11: `T_type_queries` ≥ 4 with at least one
  **before** the first MAKE (P1: baseline asked, not assumed), `T_rule_prints` ≤ 1 (the copied template; P2),
  one `MAKE` with `rebuild:true` on the language and no `reload_all` needed (P3; a `reload_all` is a docs miss, not
  a fail), and no `check` on a root the worker then describes as "well-typed" while `uncheckedSubtrees > 0` (P4).
- **Hypotheses:** H2 (make/scaffold), H5 (validation), H7 (skills) — it is the only cell that would exercise
  `mps-aspect-typesystem` steps 3–4 and 9, and `type-queries.md` "After changing typesystem rules".
- **Isolation:** same as S11 (fresh MPS, the sample not loaded before). The MAKE writes generated files into the
  run project; criterion 5 compares `.mps` files only, like S11's criterion 6.
- **Not S12:** families G (full) and H belong to S7 and S6 respectively — a `GET_TYPE` before writing `has type`
  could be added to S7's prompt as a hint-free step ("tests pass on the first run" is already its criterion), and
  S6 could gain "report the type of one generated expression". Both are prompt changes to frozen cells, so they
  wait for the next time those prompts are reworded for another reason (lesson 25).

**Docs to change before S12 is measured** (otherwise it measures the gap in §1.1, which is already known):
`mps-aspect-typesystem/SKILL.md` step 9 → a four-line sandbox recipe (copy a sample root or `create_model` a scratch
model; add the error you expect; `check` + `EXPLAIN_TYPE` before; `MAKE rebuild`; re-ask; delete the scratch model
when done) and "one MAKE with `runtimeReady:true` is the reload"; `mps-language-aspects-overview` "Validation Flow"
step 4 → "ask the engine (`GET_TYPE`, `IS_SUBTYPE`, `check` on a sandbox root) instead of opening the editor".
(A third item, a "satisfied subtyping steps carry no rule" note in `type-queries.md`, became moot: step 1 below
removed the limit, and `via` names the rules.)
**Status 2026-10-08: done** (step 2). The recipe is `mps-aspect-typesystem` Common-Path step 9.1–9.6; the
Validation Flow and `nodes-test-case.md` point at it, and `type-queries.md` "After changing typesystem rules" says the
one `MAKE` is the reload. Re-run live end to end through the recipe on `samples/expressions` (same answers as §1.2),
then reverted.

## 4. Plan, with the `EXPLAIN_TYPE` subtyping attribution as step 1

### 4.1 What the limit is, after reading the engine

The trace's unit is `jetbrains.mps.newTypesystem.operation.AbstractOperation`. A subtype test runs inside
`CheckSubTypeOperation` (an `AddRemarkOperation` created in `InequalityBlock.processInequality`), whose runnable calls
`SubtypingResolver.calcIsSubType`. The resolver BFS-walks `SubTypingManagerNew.collectImmediateSuperTypes`, which
loops over `RulesManager.getSubtypingRules(term, isWeak)` and merges every rule's `getSubOrSuperTypes` into one set —
so neither the resolver nor the operation ever knows which rule produced which ancestor, and a cache hit
(`getIsSubTypeCacheAnswer`) walks no rule at all. A generated `*_SubtypingRule` class carries no declaration
reference (unlike inference rules, whose `EquationInfo.getRuleNode()` is what `rule` in the trace comes from); its
only link to the `SubtypingRule` root is the class name `<ruleName>_SubtypingRule` in package `<lang>.typesystem`.
`CheckSubTypeOperation` keeps `mySubType` / `mySuperType` private, has no getters, no `isWeak`, and
`PresentationKind.DEFAULT`.

The limit had two halves, both visible in §1.2 (this section describes the code before the fix):

1. **A passing check is not in the trace at all.** `TypeTrace.entriesOf` drops an operation with no kept consequences
   that does not "concern the slice", and a `CheckSubTypeOperation` has no `source`, is not an equation, and is not a
   block. The failing check survives only because its `error_added` consequence is kept. `numFromBool`'s trace
   therefore ends at `Number>=f solved` with nothing under it.
2. **Neither the passing nor the failing check names a rule.** The failing one shows `checking whether Float is
   subtype of Int` and the inference rule that owns the inequality, never the lattice rules consulted.

### 4.2 Fix

- **Core, additive, four lines** (`core/typesystemEngine`): `CheckSubTypeOperation` and
  `ProcessReplacementRuleOperation` gain `getSubType()`, `getSuperType()` and `isWeak()` (new constructor overload;
  `InequalityBlock` passes `myRelationKind.isWeak()`; the old constructor stays and reports weak). No behavior
  change, no new trace operation: tracing inside `collectImmediateSuperTypes` would be wrong on cache hits and would
  need a `State` the global-scope walk does not have. `.agents/conventions.md` ("narrow and intentional") allows it;
  MPS-40240 has so far touched only the plugin, so this is the first core edit and needs an IDEA build of
  `typesystemEngine` before the MPS make (see the compile-boundary note in memory).
- **Plugin** (`JetBrainsMPSTypesMcpToolset.kt`, `TypeTrace`):
  - keep a `CheckSubTypeOperation` / `ProcessReplacementRuleOperation` whenever its parent entry is kept, so the
    passing check appears (as built: `keptOf` marks such a check `Kept.conditional`, and `entries` drops conditional
    entries at the top level);
  - emit it as `kind: "subtype_checked"` (replacement: `"subtype_by_replacement"`), `holds: true|false`,
    `sub`/`super` as printed types, and `via: [{from, to, rule}]` — the chain re-derived headlessly from the same
    `RulesManager`: BFS from `sub`, one `getSubOrSuperTypes` call **per rule** so each ancestor remembers its rule,
    stop at the first `TypesUtil.match` with `super`; for a replacement rule, the first applicable entry of
    `getReplacementRules(sub, super)`, as `isSubTypeByReplacementRulesAuth` picks it;
  - resolve `rule` from the runtime class: simple name minus `_SubtypingRule` / `_InequationReplacementRule`, the
    root of that name and concept in the `typesystem` model of the language whose namespace is the package minus
    `.typesystem`; `ruleJsonObject` as today (`statement` absent — a lattice rule has no statement to point at).
    Fallback when the name does not resolve (hand-written or renamed rule): `rule: null`, `ruleClass: <fqcn>`, and a
    warning;
  - a `via` through BaseLanguage's `PrimitiveTypeDescriptor` nodes is reported as is (the `SUPERTYPES` doc already
    explains them).
- **Tests** (`JetBrainsMPSTypesMcpToolsetIntegrationTest`): extend `EXPLAIN_TYPE traces 1 + 2 …` or add one on the
  existing type host — `long m = 1` yields a `subtype_checked` entry with `holds: true` and a `via` whose rule root
  (`int_extends_long`) lives in `jetbrains.mps.baseLanguage.typesystem`; `Object o = s` is also `subtype_checked`
  (through `subtyping_classifier`, not a replacement rule as first assumed); `List<String> list = null` yields
  `subtype_by_replacement` (`any_type_supertypeof_nulltype`); the `BAD_CODE` test asserts `holds: false` on the
  failing check and that `via` is empty. Study the Expressions case live, as in
  §1.2, with the temporary `Bool <: Number` rule: `via: [{from: Bool, to: Number, rule: SimpleMathBoolean_subtypeOf_Number}]`.
- **Docs**: `type-queries.md` EXPLAIN_TYPE paragraph gets the entry shape and the sentence "which subtyping rule made
  this fit: the `via` of the `subtype_checked` entry"; `mps-aspect-typesystem/references/common-failures.md`
  "Subtyping not applied" row points at it; `SkillTypeQueryRoutingTest` tokens re-checked; §1.3 above and the
  "Not available" list lose the limit. Propagate the blueprint into both catalogs.
- **Validation**: IDEA `build_project` for `typesystemEngine` + `mcp-tools`; `McpToolsIntegrationTestSuite` run
  configuration (two runs if a single flaky failure appears); the live Expressions loop; `idea.log` grep for the
  run window; `validate_skill_catalog.py` and the three identical catalog trees.

Estimated size: one commit, about a day including the suite run.

**Status 2026-10-07: implemented in the working tree** (core getters, `TypeTrace` keep/render with `subtype_checked`
/ `subtype_by_replacement`, tests, docs trimmed under the 12288-byte budget), reviewed independently; the review's
findings — `holds` read errors of unrelated blocks solved under the check, a structural match raised the
re-derivation warning, a dead replacement fallback, `runCatching` swallowing cancellation, full type blueprints in
every `via` step, a failed check without `error:true` when its error node lay outside the slice — were fixed
before the suite re-run. `via` steps carry `from`/`to` as presentations; the entry's `sub`/`super` are the full types.
Final validation: `McpToolsIntegrationTestSuite` 1181/1181 passed (run alone, after the shared
`MPSCmdLineTest` index was deleted: concurrent suite runs from two worktrees had corrupted it). The error-path test
also covers a failing replacement, `Integer[] a = new String[0]`: `Arrays` reports no error itself, the derived
`String <: Integer` is another replacement (`ClassifierType_NOT_subtypeOf_ClassifierType`) that does, and the outer
entry has `holds: false`. Live check, MPS restarted on the new classes, scratch model in the Expressions sandbox
solution: `Float widened = 10` traces `Int <: Float` with `via` Int→Long (`SimpleMathIntegerType_subtypeOf_Long`) and
Long→Float (`SimpleMathLongType_subtypeOf_Float`); `Number numFromBool = true` is `holds: false` before the new
`SimpleMathBoolean_subtypeOf_Number` rule and, after one `MAKE`, `holds: true` with `via` naming that rule by its own
root reference; no SEVERE in `idea.log`; everything reverted.
The two test pins the final review suggested landed in a follow-up commit (step 1b): a check whose parent entry is
dropped stays out of the trace (EXPLAIN_TYPE on `m` has no `String <: Object` check, on `o` no `int <: long`), and the
parent of the `int <: long` entry is the `relation_removed … solved` entry — both written from a printed trace.

### 4.3 Order

1. **`EXPLAIN_TYPE` attribution (4.2).** First, because the docs sentence in §1.1 and S12's criterion 4 ("which rule
   reports it before, what made it pass after") both depend on whether the trace can name the lattice rule; writing
   the sandbox recipe first would document a limitation that step 1 removes, and an S12 round run before it would
   measure a known gap (lesson: fix the asset, then measure).
2. **Sandbox recipe in the skills** (`mps-aspect-typesystem` step 9, `mps-language-aspects-overview` Validation Flow,
   `mps-tests/nodes-test-case.md:43`): copy a sample root or `create_model` a scratch model; add the error you
   expect; `check` + `EXPLAIN_TYPE` before; `MAKE rebuild` ("one MAKE with `runtimeReady:true` is the reload");
   re-ask; `update_model DELETE` when done. Docs only, plus `SkillTypeQueryRoutingTest` if a routing token moves.
3. **S12** (`scenarios/S12/worker_prompt.md`, `done_criteria.md`, the `scenarios.md` row and "By skill" entries,
   `families.py` columns for P1–P4), rehearsed once per model, then frozen.
4. **S11 follow-ups** already listed in `type-query-followups.md` (criterion 2 wording, P3), in the same study commit.

**Status 2026-10-08:** steps 1–4 are committed. Step 1b added the two test pins; step 2 is the recipe in
`mps-aspect-typesystem` step 9 (§3 status); step 3 is `study/scenarios/S12` (draft, not rehearsed, prompt not frozen);
step 4 edited only S11's `done_criteria.md`. Open: the S12 rehearsal round, one run per model, then freeze.
