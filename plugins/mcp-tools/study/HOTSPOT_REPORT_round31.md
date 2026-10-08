# Skill Script Automation Study — Round 31 (2026-10-08): S12 after the round-30 remedies

Scope: S12 × {opus medium, sonnet high}, frozen prompt (`4d7270af…`), same isolation as round 30
(cold MPS on the harness project + SMOKE before each run, call log on). Catalog: HEAD `ba55e62b9ef1`
(`skillsSha256` `63fb4242…`, round 30 `5c8d3670…`); `guidesSha256` unchanged (`7c49518f…`); the rebuilt
plugin carries the new `mps_mcp_reload_all` description (`inventorySha256` `741047c0…`). Evidence:
`~/MPSProjects/mcp-study/runs-r31/` (`*.eval.md`, `analysis/`).

## 1. Outcomes, round 30 → 31

| | opus r30 | opus r31 | sonnet r30 | sonnet r31 |
|---|---|---|---|---|
| pass (criteria 1–5) | PASS | PASS | PASS | PASS |
| tool calls / MPS calls | 44 / 36 | 44 / 36 | 45 / 34 | 46 / 34 |
| errors | 1 | 0 | 3 | 3 |
| wall, cost | 181 s, $1.35 | 196 s, $1.36 | 146 s, $0.94 | 144 s, $0.90 |
| `mps-aspect-typesystem` loaded | no | **no** | no | **no** |
| `T_rule_prints` (P2 ≤ 2) | 7 | **9** | 6 | **5** |
| `T_type_queries` (before the build) | 7 (3) | 8 (3) | 5 (2) | 7 (4) |
| `M_reload_all` (P3) | 0 | 0 | **1** | **0** |
| first type query before first rule print | no | no | no | **yes** |

## 2. Remedy verdicts

- **Remedy 3 (rebuild is the reload): effective.** In r30, sonnet followed its runtimeReady MAKE with
  `reload_all` ("so the compiled rules are live"). In r31 it wrote "The language built
  (`runtimeReady: true`). Now the 'after' evidence." and never loaded the tool's schema.
- **Remedy 2 (print a rule only to change it or pick the sibling): partial.**
  - **Sonnet** asked `IS_SUBTYPE` and `OPERATION_TYPE` before its first print. It printed 5 rules:
    2 allowed (the sibling, the copy), the reporter, `SimpleMathOperations` after the engine had
    already answered, and the edited copy again.
  - **Opus** printed 9: the reporter, the typed-declaration rule, three template candidates, and
    `typeof_ArithmeticSimpleMathExpression` plus `SimpleMathOperations` right after
    `OPERATION_TYPE` returned null.
  - **Both** wrote a hand-derived "why `+` now gives Number" paragraph next to the query answer.
- **Remedy 1 (routing in Common Workflow step 3): not effective.** Both workers received the new
  line in the Skill result (the opus evaluator found it at line 109 of 171), but never loaded
  `mps-aspect-typesystem`.
  - The opus worker fixed its plan at step 2, preloading the 10 tools it then used.
  - It skipped the whole "Common Workflow — Initialize a Session" section. It never called
    `get_current_editor_root_node`, and it never loaded `mps-node-editing` either: it Bash-read
    one of that skill's references instead.
  - The Critical Directives on their own (Copy-then-modify, Rebuild, Never simulate) read as a
    complete recipe for this task.

## 3. New findings

- **The reporter print is prompted by our own text.** The "Validate frequently" directive says a
  problem's `rules` entry should be opened "instead of guessing which rule reported it". Both
  workers printed `typeof_SimpleMathVarDeclaration` right after the check had named it. This
  contradicts `mps-aspect-typesystem` step 9.3 ("`rules[0].rule` names it; print `ruleReference`
  only to change that rule") and `type-queries.md`.
- **The installed `CLAUDE.md` / `AGENTS.md` is the instruction workers visibly follow**: "load the
  `mps-mcp-workflow` skill at the start". It has no rule saying to load the matching `mps-aspect-*`
  skill before editing an aspect.
- **Sonnet, `PublicVisibility` rejected for role `visibility`.** In a hand-built blueprint the
  insert answered "Actual concept: 'PublicVisibility' – Expected 'Visibility'". The worker dropped
  the child, and MPS then added `PublicVisibility` by default. This needs a look at how the server
  resolves short concept names in blueprints; it is unrelated to S12's subject.
- Opus put `true + 1` in a second scratch root, `PlusProbe`. Criterion 3 allows extra lines in
  `Probe`; extra roots in the scratch model should be stated as fine too.

## 4. Proposed next remedies (gate 2, not applied)

1. **A gate where workers do read.** Add to `mps-mcp-workflow` Critical Directives, near the top:
   "**Before editing an aspect model, load its aspect skill**: typesystem → `mps-aspect-typesystem`
   (follow its step 9 sandbox loop), constraints → `mps-aspect-constraints`, behavior →
   `mps-aspect-behavior`, editor → `mps-aspect-editor`. The directives below do not replace it."
2. **Same rule in `AGENTS_template.md`** "Rules for MPS Work", the installed guide workers follow
   (this changes `guidesSha256`).
3. **Fix "Validate frequently":** "`rules[0].rule` names the reporting rule — cite it; print
   `ruleReference` only to change that rule."
4. **Optional, in "Never simulate the typesystem":** "If an engine answer surprises you (`null`,
   `false`), ask `EXPLAIN_TYPE`; do not open the rule." This targets the `SimpleMathOperations`
   prints.

Next measurement: S12 × 2 again (round 32). Success means `mps-aspect-typesystem` loaded,
`T_rule_prints` ≤ 2 and `M_reload_all` 0.
