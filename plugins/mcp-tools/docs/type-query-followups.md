# Type-query follow-ups found while fixing D100 (2026-10-07)

Context: D100 made `mps_mcp_query_nodes` `GET_TYPE` (and `mps_mcp_query_types` `nodeReference` operands) answer the
type that a check of the node's whole root decides. Before, it answered a one-node computation that types only the
node's own slice. It now uses `computeIsolated(Flags.forRoot(root).incremental())`, which falls back to the one-node
computation with `details.scope: "node"`. While building and reviewing that fix, two neighbouring operations turned out
to have related problems. **Neither is fixed and neither is scheduled.** Both come from reading the code and are **not
reproduced** yet.

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
1. Build the repro above; an MPS `NodesTestCase` with `has expected type` is the authoritative counterpart.
2. Add an integration test next to the D100 GET_TYPE tests in
   `plugins/mcp-tools/test/.../integration/JetBrainsMPSTypesMcpToolsetIntegrationTest.kt` (or the Node toolset test).
3. Re-run study S11: Q5 must stay `Number`.

---

## F2 — `EXPLAIN_TYPE` may drop every operation after the first expansion pass (`TargetState` with no target)

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
