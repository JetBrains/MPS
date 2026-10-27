# D122 (+ D91) — `mps-tests` does not say how to assert a constraint violation

Status: implemented and live-checked 2026-10-27, not committed. The live check ran on `~/MPSProjects/mcp-study/proj/d122-live` (a `recipes` copy, closed afterwards), with check 4 using the Kaja language already loaded from the MPS project instead of a second fixture copy. Results: 7/7 as predicted, recorded in the D122 archive entry. Plan draft 3. Docs-only fix (remedy **D**), folds in D91 as the filed remedy asks. Two review
rounds ("approve with changes" both times, 0 blocking) are folded in; see "Review log".

## The defect (from `study/docs-defects.md:54`, and D91 at `:40`)

`mps-tests/references/nodes-test-case.md` and `concept-identifiers.md` name `NodeErrorCheckOperation` but neither
`NodeOperationsContainer` (the `smodelAttribute` wrapper every check operation must sit in — D91) nor
`NodeConstraintsErrorCheckOperation`, and say nothing about how to assert a constraints-aspect violation (property
validator, can-be-child/parent/ancestor/root). `S7-sonnet-1` read `nodes-test-case.md` at step `:9`, so the fix is on
the path it took. `S7-opus-1` wrote the right shape from the start (`:28`) without the docs.

## What the transcript actually shows (re-read 2026-10-27, `~/MPSProjects/mcp-study/runs-r44/S7-sonnet-1-worker.jsonl`, step = tool-use index)

| step | what happened |
|---|---|
| `:24` | `search_concepts` for `NodeWarningCheckOperation` — needed for the scenario's own warning test, but the table's false `kind=warning` row sent it searching rather than reading |
| `:26` | `search_concepts` for `NodeConstraintsErrorCheckOperation` / `has constraints error` |
| `:27` | bare check operation in `smodelAttribute` → assignability error; the D51/D52 wrap hint names `NodeOperationsContainer` (this is D91) |
| `:28` | insert succeeds with the wrapper |
| `:35` | check: `No child in the obligatory role 'errorRef'` on the constraints check, **and** `No child in the obligatory role 'steps'` on the annotated `Recipe` itself (an unrelated error that a plain `has error` would also have satisfied — the vacuity trap) |
| `:36-39`, `:41`, `:43` | finds `UnknownRuleReference`, adds it, points `declaration` at the `NodePropertyConstraint` `property {servings}` (`…/12157282221727676`), re-checks. (`:40`, adding a step, was needed anyway) |
| `:44-45` | MAKE, run: `node <BadRecipe> does not have the expected 'error' message ''` |
| `:46-49` | reads the log, replaces the operation with plain `NodeErrorCheckOperation`, MAKE, run: green |

Avoidable cost: `:26`, `:36-39`, `:41`, `:43`, `:46-49` ≈ **10 calls** (not 13: `:24` served the warning test, `:29-34`
are other tests, and `:40`, `:44`, `:45` would have happened anyway). Use 10 in the archive entry and re-measure target.

### Correction to the filed remedy

D122's remedy text says `NodeConstraintsErrorCheckOperation` "matches its message". That is not why `:45` failed.
Verified offline from sources:

- `NodeConstraintsErrorCheckOperation.errorRef` is **required** (`optional(false)`), target `UnknownRuleReference`
  (`lang.test/source_gen/…/structure/StructureAspectDescriptor.java:726`), whose `declaration` takes any node (`:1080`).
  `NodeErrorCheckOperation.errorRef` is optional (`:748`).
- Strictness is decided **at runtime by whether `errorRef.declaration` is set, not by the concept**: both inherit
  `AbstractNodeErrorCheckOperation.checkAction` (`behavior/AbstractNodeErrorCheckOperation__BehaviorDescriptor.java:48-51`),
  which builds `CheckAnyMessageRunnable` when there is no referenced rule node and `CheckExpectedRuleMessageRunnable`
  otherwise. Both runnables (`jetbrains.mps.lang.test.runtime/…/CheckExpectedMessageRunnable.java`) require an
  error-severity report **on the annotated node**; the rule variant also requires the report's rule node
  (`NodeCheckerUtil.getRuleNodeFromReporter`, the `TypesystemRuleId` source node) to equal `declaration`. An empty
  `expectedMessage` means "any message" (`isMessageExpected`, `:50`); the `''` in the failure is the empty expectation.
- The constraints rule node is the `setBreakingNode(...)` pointer of the generated descriptor
  (`core/project-check/…/ConstraintsChecker.java:96` for properties, `rule.getRuleSourceNode()` for can-be rules). In
  the S7 fixture the property validator's pointer is `12157282221727677` (`…/constraints/Recipe_Constraints.java:31`),
  one id below the `NodePropertyConstraint` `…676` that sonnet referenced. For can-be rules the generated code passes a
  static field, e.g. `setBreakingNode(canBeChildBreakingPoint)` with
  `canBeChildBreakingPoint = new SNodePointer(...)` (`testbench/…/editor.tableTests.testLang/source_gen/…/EventReference_Constraints.java:41,71`).
  So the target is the constraint **function child** (`propertyValidator`, `canBeChild`, …), not its container. That
  `…677` is the `propertyValidator` child is not provable offline (not in `trace.info`); live check 3 gates it.
- Report placement per constraint kind (`ConstraintsChecker.java:88-185`): property → the node owning the property;
  can-be-child → the child; can-be-parent → **the parent**; can-be-ancestor → **the ancestor**; can-be-root → the root.
- Rules-language constraints (`jetbrains.mps.lang.constraints.rules`, `BaseRule.getRuleSourceNode`) are not covered;
  the doc says nothing about them.

Also wrong in the same table (`nodes-test-case.md:31-36`): there is no `kind` property on `NodeErrorCheckOperation` or
`expected`/`kind` on `NodeTypeCheckOperation`. Warnings, infos, expected types and type sets are separate concepts:
`NodeWarningCheckOperation` (`has warning`, optional `warningRef`), `NodeInfoCheckOperation` (`has info`),
`NodeExpectedTypeCheckOperation` (`has expected type`, inherits the single `type` child of `NodeTypeCheckOperation`),
`NodeTypeSetCheckOperation` (`has type in`, its own `type` child 1..n). This misdirection is what started `:24`, so it
is in scope.

## Changes

All edits go to the source of truth `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/mps-tests/`, then are
propagated (step 4). Keep the additions short: one table fix, one wrapper paragraph, one subsection of bullets plus one
JSON example and one short fragment.

### 1. `references/nodes-test-case.md`

a. **Fix the annotation table** (`:29-39`): one row per real concept with its alias. Rows: `NodeErrorCheckOperation`
   (`has error`), `NodeConstraintsErrorCheckOperation` (`has constraints error`, requires `errorRef`),
   `NodeWarningCheckOperation` (`has warning`), `NodeConstraintsWarningCheckOperation` (`has constraints warning`,
   requires `warningRef`), `NodeInfoCheckOperation` (`has info`), `NodeTypeCheckOperation` (`has type`, child `type` 1),
   `NodeExpectedTypeCheckOperation` (`has expected type`, same `type` child), `NodeTypeSetCheckOperation` (`has type in`,
   `type` 1..n), `NodeTypeSystemErrorCheckOperation` (`has typesystem error`); keep `CheckNodeForErrorMessagesOperation`
   and the label rows. Drop the made-up `kind=` / `expected=` variants. Keep existing short ids only where already
   present; do not invent new ones.

b. **New paragraph under the table — the wrapper (D91):** every check operation is a child in role `nodeOperations`
   (0..n) of a `NodeOperationsContainer`, and the container goes into the annotated node's `smodelAttribute`. One
   container per node holds several operations. Minimal JSON:

   ```json
   { "role": "smodelAttribute", "nodes": [{
       "concept": "jetbrains.mps.lang.test.structure.NodeOperationsContainer",
       "children": [{ "role": "nodeOperations", "nodes": [
         { "concept": "jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" } ] }] }] }
   ```

c. **New subsection "Asserting a constraints violation"** (after the typesystem example, before "Labelled-node
   assertions"), bullets in this order:
   1. **Default:** `NodeErrorCheckOperation` with no `errorRef` — passes when any error is reported on the annotated
      node. Annotate the node the checker reports on: property → owner; can-be-child → the child; can-be-parent → the
      parent; can-be-ancestor → the ancestor; can-be-root → the root.
   2. **Vacuity trap:** "any error" also matches an unrelated error (a missing obligatory child, an unresolved
      reference). Build the snippet otherwise valid and run `mps_mcp_check_root_node_problems` on the test root before
      running: the only error on the annotated node must be the intended one.
   3. **Precise, cheap:** add `expectedMessage` (`ExpectedMessageContainer`, property `text`) with the exact text that
      check printed (e.g. `Property constraint violation for the property "servings"`). Caution: if the language has a
      feedback aspect, the text the test run sees may differ from what `check_root_node_problems` prints (the checker
      falls back to the legacy default text when no feedback registry is available, and the test host is `@Nullable`) —
      confirm with a test run, or omit `expectedMessage`.
   4. **Strict, rarely needed:** any `has error` / `has constraints error` with `errorRef` = `UnknownRuleReference`
      matches the reporting rule node, and `has constraints error` requires it. `declaration` must be the constraint
      function child (`propertyValidator`, `canBeChild`, `canBeParent`, `canBeAncestor`, `canBeRoot`), not the
      `NodePropertyConstraint` / `ConceptConstraints` that holds it; its id is the `SNodePointer` that the generated
      `source_gen/…/constraints/<Concept>_Constraints.java` passes to `setBreakingNode` (directly, or via a
      `…BreakingPoint` static field). Use it only to tell two rules on one node apart.
   - One full JSON example (the S7 shape): a `TestNode` with a `Recipe` `servings=0` **with a valid step**, carrying the
     wrapper + `NodeErrorCheckOperation` + `expectedMessage`; and a ≤ 6-line fragment showing the strict variant's
     `errorRef` child with `"references":[{"role":"declaration","target":"<constraint-function-node-ref>"}]`. No prose
     walkthrough beyond the bullets.

d. A one-line pointer from the "Inline assertion annotations" intro (`:27`) to the new subsection.

### 2. `references/concept-identifiers.md`

- Fix row `:18`: `NodeErrorCheckOperation` (`has error`), not `has error/warning/info`; row `:19`: `has type` only.
- Add rows only for concepts on the detour path (refs from the generated `StructureAspectDescriptor.java`, language
  `8585453e-…`; each matches a ref the round-44 server printed):

  | Concept | Concept ref suffix |
  |---|---|
  | `NodeOperationsContainer` (the `smodelAttribute` wrapper) | `1215603922101` (`:27` wrap hint) |
  | `NodeConstraintsErrorCheckOperation` (`has constraints error`, needs `errorRef`) | `8333855927540283103` (`:26`) |
  | `NodeConstraintsWarningCheckOperation` | `8333855927564208813` (`:24`) |
  | `NodeWarningCheckOperation` (`has warning`) | `1215511704609` (`:24`) |
  | `NodeInfoCheckOperation` (`has info`) | `2153278993334166130` |
  | `UnknownRuleReference` (`errorRef`; `declaration` → constraint function node) | `7691029917083831655` (`:39`) |

  `NodeExpectedTypeCheckOperation`, `NodeTypeSetCheckOperation` and `ExpectedMessageContainer` get no row; the FQN in
  `nodes-test-case.md` is enough.

### 3. `SKILL.md`

- `:66` (the `nodes-test-case.md` pointer): add "the `NodeOperationsContainer` wrapper, and asserting a constraints
  violation". Workflow step 4 (`:37`): add "wrapped in `NodeOperationsContainer`". No frontmatter change.

### 4. Propagate and validate

- Copy the changed `mps-tests` folder over `./.agents/skills/mps-tests/` and `./.claude/skills/mps-tests/` (delete then
  copy, per CLAUDE.md "Skills"; never `mps_mcp_initialize_project_for_agents`, never `install_skills.py`).
- `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py` on the source tree → green.
- `diff -rq` source vs `.claude/skills` (only checkout-local extras) and `.agents/skills` vs `.claude/skills` — must be
  **empty**. `SkillCatalogReplicationTest` is the CI gate for the same property; running it is optional for docs only.

### 5. Live check (gate before commit; needs MPS + MCP up — currently ECONNREFUSED)

In a scratch `@tests` model against the recipes fixture, each JSON copy-pasted from the doc as written:
1. wrapper + `NodeErrorCheckOperation` on a `Recipe` whose only error is the servings validator → green; adding the
   printed `expectedMessage` → still green; a wrong `expectedMessage` → red.
2. same, validator satisfied but an obligatory child missing → still green (confirms the vacuity-trap warning).
3. `NodeConstraintsErrorCheckOperation` with `declaration` → the `propertyValidator` child (expected `…677`) → green;
   `declaration` → `NodePropertyConstraint` (`…676`) → red with the `:45` message.
4. one can-be-child violation on the Kaja fixture (`Kajak` has `canBeChildBreakingPoint` in `Require_Constraints.java`
   and `RoutineDefinition_Constraints.java`; recipes has no can-be rule), plain `has error` on the **child** → green; on
   the parent → red. Validates one non-property row of the placement list. Close the recipes project first (study
   fixture copies share module ids) or run it in a separate session; fallback: a throwaway `canBeChild` in a scratch
   language.
If (3) or (4) does not behave as predicted, cut the strict bullet to one line ("needs an `errorRef` to the exact
reporting rule; prefer `has error` + `expectedMessage`") or drop the unverified placement rows, and record why. If MPS
cannot be started, ask the user rather than commit untested JSON.

### 6. Bookkeeping

- Move D91 and D122 to `docs-defects-archive.md` (append to the header date list and the "Fixed / closed" list; the
  archived D122 entry records the corrected root cause — rule-node mismatch, not message match — the ≈ 10 avoidable
  calls, and the live-check result), and extend the `docs-defects.md` header sentence ("D91 and D122 were fixed (docs)
  and archived on …, re-measure (S7) still outstanding").
- Re-measure criterion, S7 × 2 next round: no `search_concepts` for check-operation concepts, no wrap-hint rejection,
  no `errorRef` problem, no failing first test run; S7-sonnet ≈ 10 calls fewer (≈ 39 or less). n=1 per model is noisy.
- One commit: `mcp-tools - D122 mps-tests documents NodeOperationsContainer and constraint-violation assertions`
  (format per `.agents/git.md`), touching the three skill trees, `docs-defects.md`, the archive and this plan.

## Out of scope

- Server-side changes (e.g. the wrap hint suggesting `has error` for constraints): the hint already worked at `:27`.
- Rules-language constraints, `EditorTestCase`, `ScopesTest` docs.
- Re-verifying the short ids (`1TM$A` etc.) beyond keeping those already there.

## Review log

Round 1 (opus subagent, approve with changes):
1. should-fix — strictness is runtime (`errorRef.declaration` set or not), not per concept → corrected in the root-cause
   section and bullet c.4.
2. should-fix — source-node recipe covered only property validators; can-be rules use a `…BreakingPoint` static field →
   generalised in c.4; rules-language constraints declared out of scope.
3. should-fix — promote `expectedMessage` above `errorRef`; feedback-aspect caution → bullet c.3, example carries it.
4. should-fix — avoidable cost is ≈ 10 calls, not 13 → transcript table and bookkeeping updated.
5. nit — `declaration` is at `:1080` → fixed.
6. nit — dropped three identifier rows and the strict-variant prose walkthrough.
7. nit — `type` child cardinality per type check → in the table rows.
Added live check 4 (can-be-child placement) as suggested.

Round 2 (same reviewer, approve with changes; all round-1 findings confirmed resolved, no new factual errors):
1. should-fix — check 4 cannot run on recipes (no can-be rule) → retargeted to Kaja (`Require`, `RoutineDefinition`),
   with the shared-module-id caveat and the scratch-language fallback.
2. should-fix — feedback caution pointed the wrong way: without a feedback registry (null host) the checker uses the
   legacy default text, so IDE and test-run text can differ → c.3 reworded to "confirm with a test run, or omit".
3. nit — `MessagesFacade.java:66-67` discards a `legacyDefaults(...)` result (no `return`); harmless, no doc change,
   noted only for a possible core bug report.

Status after round 2: ready to implement once MPS + MCP are up for the step-5 gate.
