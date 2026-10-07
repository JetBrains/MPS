# Type-query follow-ups found while fixing D100 (2026-10-07)

Context: D100 made `mps_mcp_query_nodes` `GET_TYPE` (and `mps_mcp_query_types` `nodeReference` operands) answer the
type that a check of the node's whole root decides. Before, it answered a one-node computation that types only the
node's own slice. It now uses `computeIsolated(Flags.forRoot(root).incremental())`, which falls back to the one-node
computation with `details.scope: "node"`. While building and reviewing that fix, two neighbouring operations turned out
to have related problems. Both came from reading the code. **F1 reproduced and is fixed; F2 did not reproduce and is
closed** (see the status at the top of each section).

Live reference sample: `samples/expressions`, study fixture `~/MPSProjects/mcp-study/fixtures/expressions.tar.gz`,
sandbox model `r:95889e99-7e33-4e8a-9f36-e33116f08527(jetbrains.mps.samples.Expressions.sandbox)`. Root `Main`:

```
var E = 10          // 8620208551721818923
var D = 10 * 2.6 F  // initializer 2073504467211039144, left operand 2073504467211042657
E := D              // 8620208551721819391; the reference E in it is 8620208551721819432
```

The root check types `E` as `Float`: `typeof_SimpleMathVarDeclaration` gives `E >= Int`, and
`typeof_SimpleMathAssignment` gives `E >= typeof(D) = Float`.

---

## F1 — `GET_EXPECTED_TYPE` computes bounds from the parent's slice only (same class as D100)

**Reproduced and fixed 2026-10-07, verified live.** Live check against MPS restarted with the build:
- On a temporary copy of `Main` with `E := D` duplicated, the root check gives `E` = `Float` and reports no type
  errors. GET_EXPECTED_TYPE on each `D` answers `Float` in scope `root`; with `maxRootNodes:1` (the old slice) it
  answers `Int`.
- On the unchanged sample:
  - Q3 still gives `Float` (scope `root`), and EXPLAIN_TYPE credits `i = Float added` to `typeof_SimpleMathAssignment`;
  - Q5 still gives `Number`, now in scope `root`;
  - the single `D` in `E := D` gives `Int`, the documented own-value limit.
- `idea.log` showed no SEVERE entries and no rule-application errors.
- The S11 worker round is still outstanding.

Repro, Expressions (root `var E = 10; E := 2.6 F; E := 10`):
- GET_TYPE on `E` gives `Float`, scope `root`, and the root check reports no problems.
- GET_EXPECTED_TYPE gives `Int` on the last `10`, where the root decides `E` is `Float`.
- Cause: the hole check runs `computeTypesSpecial(parent, forceChildrenCheck=false)`
  (`SimpleTypecheckingComponent.java:282-287`), and `HoleTypecheckingComponent.typeCalculated` stops it as soon as
  the bound has no type variables in it. It never reaches the other assignment, so it solves `E` from its initializer
  alone.

BaseLanguage does not diverge. 9 constructs gave the same answer from the slice and from the whole root:
- generic calls with the type argument fixed by context, with and without an argument;
- array initializers;
- a cast;
- a varVariable `for (var x : …)` with assignments in the body.

BaseLanguage assignments only *check* `rValue :<=: lValue`, so they never widen a variable:
`x = new Object()` is reported as "Object is not a subtype of String". `wrap(1)` in `List<Number> n = wrap(1)` is not
a case either: the root check binds `T` from the argument and then reports a type error.

Fix (plugin only), `RootScopedExpectedType.kt`:
- The `HoleTypecheckingContext` subclasses drain the node's whole root with the node as the hole, do not stop early,
  and run in the model's language scope, as `checkRoot` does.
- GET_EXPECTED_TYPE takes `maxRootNodes` and reports `details.scope`.
- The parent's slice answers instead, with a warning, for:
  - commented-out code;
  - a root over the cap;
  - a slot that the root check leaves without a bound while the slice finds one.
- `has expected type` and Show Expected Type still use the slice; `maxRootNodes:1` reproduces their answer.
- Tests: `GET_EXPECTED_TYPE answers the type the context requires` (scope `root`) and `GET_EXPECTED_TYPE falls back to
  the parent's slice for an oversized root and for commented-out code`. Since no distribution language builds the
  divergent case, the Expressions repro is verified live.

Known limit, not fixed: the node in the slot is replaced by the hole, so what it adds itself is not counted. In the
root above, `2.6 F` still answers `Int` (the bound `E` would have without it), although the root check accepts it.
`type-queries.md` says so, and points to `mps_mcp_check_root_node_problems`.

The original analysis follows.

**Code path**
- `JetBrainsMPSNodeMcpToolset.kt` `opGetExpectedType` → `TypecheckingFacade.getFromContext().getInferredType(node)`.
- That reaches `LegacyTypecheckingProvider.getInferredType` (`core/typesystemEngine/source/jetbrains/mps/typesystem/LegacyTypecheckingProvider.java:167-170`).
- Then `TypeCheckerHelper.getInferredType` → `getInequalitiesForHole(expression, false).getExpectedType()` (`.../typesystem/inference/TypeCheckerHelper.java:86-91`).
- `getInequalitiesForHole` builds a fresh `HoleTypecheckingContext` and calls
  `HoleTypechecking.computeInequalitiesForHole` (`.../newTypesystem/context/typechecking/HoleTypechecking.java:43-57`).
- That method runs `computeTypesForNode_special(hole.getParent(), {hole})`. It types the **parent of the hole and what
  that needs**, collects the inequalities on the hole, expands them against that local equation set, and returns the
  least common supertype of the upper bounds.

**Suspected defect.** The parent's rules run inside a local typechecking context, not the whole root. When an upper
bound on the slot is a type variable, or a type that another statement of the root decides, the bound is expanded
against incomplete equations. The answer can then be too wide, a bare or partial variable (reported as `null`), or
just different from what the editor's root check would require.

**Scenario to try first** (unverified): a slot whose upper bound is the type of a variable that a *later* statement
widens.
- BaseLanguage: the RHS of an assignment to a variable whose type comes from elsewhere. Note that BaseLanguage `var`
  locals use an equation, so they may not show it.
- Expressions: any rule that bounds a child by `typeof(<some variable>)`. The sample's rules mostly bound operands by
  the constant `Number`, which is why S11 Q5 (`Number`) is correct today.
- Write a test language or sandbox where the upper bound is `typeof(x)` and `x` is widened by a later assignment, as
  `E` is above. Compare `GET_EXPECTED_TYPE` with what the editor's root check reports for the same slot.

**Why it matters.** `GET_EXPECTED_TYPE` is the routed answer to "what type must this slot have"
(`type-queries.md`, S11 P4). A wrong bound silently misleads in the same way the old `GET_TYPE` did for `E`.

**Fix direction.** Mirror D100:
- compute the hole inequalities inside the containing root's check, e.g. by expanding the hole's bounds against the
  root session's equations from `computeIsolated(forRoot(root).incremental())`;
- or detect that a bound still contains type variables after the local expansion, then fall back and warn;
- surface `details.scope` the same way `GET_TYPE` now does;
- keep the existing rule that `:==:` / `:>=:` bounds are ignored.

**How to verify**
1. Build the repro above. (`has expected type` in a `NodesTestCase` runs the same parent-slice hole check, so it is not an independent counterpart.)
2. Add an integration test next to the D100 GET_TYPE tests in
   `plugins/mcp-tools/test/.../integration/JetBrainsMPSTypesMcpToolsetIntegrationTest.kt` (or the Node toolset test).
3. Re-run study S11: Q5 must stay `Number`.

---

## F2 — `EXPLAIN_TYPE` may drop every operation after the first expansion pass (`TargetState` with no target)

**Closed: not reproduced (2026-10-07).** The mechanism is real, but it cuts in after the trace is complete:

- With `initialNode == null`, `SimpleTypecheckingComponent.computeTypes` skips `setTargetNode`
  (`SimpleTypecheckingComponent.java:116-118`). The first `expandAll` therefore marks the target calculated:
  `expandTargetNode(null)` → `hasVariablesInside(null)` is false (`TargetState.java:76-81`).
- Before that point, though, one round of `computeTypesSpecial` (`SimpleTypecheckingComponent.java:264-270`) has
  already done the work. It drains the queue with `forceChildrenCheck`, which applies the rules to every node of the
  root. It then solves the inequalities to a fixpoint (`Inequalities.java:132-140`), with `TargetInequalities` still
  unblocked. `when concrete` blocks fire during the drain or the solve. So every rule application, `when concrete`
  follow-up and equation of the root's own nodes is recorded.
- 8 probes compared the `EXPLAIN_TYPE` `type` with `GET_TYPE` (root scope); they agreed in every one:

  | expression | type |
  |---|---|
  | Expressions `10 * 2.6 F` | Float |
  | `E * 2` (its `when concrete` fires inside "Solving inequalities") | Float |
  | `Z * 2` (`Z` has no initializer) | Number |
  | BaseLanguage `1 + 2L` | long |
  | `c ? 1 : 2L` | long |
  | `c ? 'x' : 2` | int |
  | `pick(new A(), new B())` (generic) | A |
  | `pick(1.5, 2.5) * 2` | double |

  Each `when_concrete_added` entry has a matching `when_concrete_removed … executed` entry with its follow-up
  equations.
- What is dropped after the flag is set:
  - the "Types Expansion" step, which is masked because `opExplainType` calls `expandFinal` itself;
  - the "argument of WHEN CONCRETE block is never concrete" warnings from `State.performActionsAfterChecking`
    (`State.java:380-409`, an `AddErrorOperation`). None appeared in any probe;
  - rule application to an off-root node whose type is first asked for inside a `when concrete` that fires during the
    solve. A scan of the `when concrete` bodies in the generated sources under `languages/`, `plugins/` and `core/`
    found only `typeof` calls on in-root nodes, so no rule triggers this.
- The last bullet of "Suspected defect" is wrong. `isSingleTypeComputation()` belongs to the context, and
  `TracingTypecheckingContext` returns `false` (`TracingTypecheckingContext.java:48-51`), so rules that branch on
  check-only take the full-check branch.

No fix: the MPS-side change (a plain `State` for whole-root traces) would only restore the never-concrete warnings in
the trace. The original analysis follows.

**Code path**
- `JetBrainsMPSTypesMcpToolset.kt` `opExplainType` (≈ line 482) creates `TracingTypecheckingContext(root, engine.helper)`,
  runs `context.checkRootInTraceMode(true)`, and reads `context.getTypeDontCheck(node)` → `context.state.expandFinal(...)`.
- `TracingTypecheckingContext.createState()` returns a **`TargetState`**
  (`core/typesystemEngine/source/jetbrains/mps/newTypesystem/context/TracingTypecheckingContext.java:39-40`).

**Suspected defect** (`core/typesystemEngine/source/jetbrains/mps/newTypesystem/state/TargetState.java`):
- `executeOperation(op)` returns immediately once `myTargetTypeCalculated` is true (lines 51-54).
- `expandAll(nodes, final)` is overridden to `expandTargetNode(final)` (lines 85-88).
- `expandTargetNode` expands `myTargetNode` and, if `!TypesUtil.hasVariablesInside(getType(myTargetNode))`, calls
  `setTargetTypeCalculated()` (lines 76-81).
- A **root check in trace mode never calls `setTargetNode`**, so `myTargetNode` is `null`. `getType(null)` has no
  variables inside, so the **first** `expandAll` marks the "target" calculated.
- From then on every `executeOperation` is a no-op. That includes `whenConcrete` follow-ups, later queue rounds, and
  inequalities added after that point. `expandAll` also never expands the other nodes, so non-target nodes'
  types are expanded only by the explicit `expandFinal` in our code.
- Also: `TargetState` makes the context behave as a single-type computation, so a rule that branches on "check only"
  versus "full check" takes the single-type branch.

**Possible consequences** (unverified):
- `EXPLAIN_TYPE`'s `type` and `trace` can miss constraints that arrive after the first expansion pass: deferred
  `when concrete` blocks, overloaded-operation results computed in `when concrete`, and replacement rules that fire
  late;
- the `type` may then disagree with the root check, which is now what `GET_TYPE` answers;
- the trace may lack the entries an agent cites for "which rule gives this type" (`type-queries.md:64`).

**Counter-evidence so far.** On the Expressions sample, `EXPLAIN_TYPE` on `var E` returns `Float` with the
`i = Float added` entry credited to `typeof_SimpleMathAssignment` (S11 rounds 22-24, 6 runs). Either the drop does not
happen there, or that root's operations all run before the first `expandAll`. The `when concrete (u)` block in
`typeof_ArithmeticSimpleMathExpression` is the first candidate to inspect: does its result entry appear in the trace
of `10 * 2.6 F`?

**How to verify**
1. Pick a root whose node type is settled only inside a `when concrete` block or by an overloaded-operation rule.
   BaseLanguage `1 + 2L`, or the Expressions `10 * 2.6 F` above, are cheap. Compare:
   - `EXPLAIN_TYPE` `type`;
   - `GET_TYPE` (now root scope);
   - the editor's type (Ctrl+Shift+T).
2. Look for trace entries after the first "Solving inequalities" or expansion group. A missing `when_concrete` follow-up
   or a missing final `=` equation confirms it.
3. With a debugger: break in `TargetState.setTargetTypeCalculated` during an `EXPLAIN_TYPE` call and check whether
   `myTargetNode == null`.

**Fix direction** (if confirmed):
- Do not use `TargetState` for a whole-root trace. Give the tracing context a plain `State`, which is the MPS-side
  change: a `TracingTypecheckingContext` variant, or a constructor flag in `core/typesystemEngine`.
- Or call `setTargetNode(node)` for the explained node before `checkRootInTraceMode`, so that "calculated" means the
  explained node's type is final. Check that this does not cut the trace short for other nodes in the slice.
- Or, plugin-side only: compute `type` through the same `computeIsolated(forRoot(root).incremental())` path as
  `GET_TYPE`, and keep the tracing context for the trace only. If they disagree, add a warning, so that a truncated
  trace is at least visible.
- Add an integration test with a `when concrete`-settled type.

---

## Related open items from the same work (smaller)

- S11 done criteria (`plugins/mcp-tools/study/scenarios/S11/done_criteria.md`): once the D100 server change is
  committed, update P3 and criterion 3, because `GET_TYPE` alone now returns `Float` for `E`. The rule name still needs
  `EXPLAIN_TYPE`. Also clarify criterion 2's "adding `Int` itself" (see `study/HOTSPOT_REPORT_round22.md` §6).
- Study harness A10: `mps_control.sh shutdown` issued right after `open` reported `alreadyDown` while MPS ran (see
  `study/HOTSPOT_REPORT_round24.md` §0).
