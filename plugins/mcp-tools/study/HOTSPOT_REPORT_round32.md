# Skill Script Automation Study — Round 32 (2026-10-08): S12 after the aspect-skill gate

Scope: S12 × {opus medium, sonnet high}, frozen prompt (`4d7270af…`), cold MPS on the harness project
+ SMOKE before each run, call log on. Catalog and installed guide: HEAD `5c76dd4d3ee3`
(`skillsSha256` `4c12b15c…`, `guidesSha256` `143a360a…`, the first round with a changed guide);
`inventorySha256` `741047c0…` (unchanged from r31). Evidence: `~/MPSProjects/mcp-study/runs-r32/`.

## 1. Outcomes, rounds 30 → 31 → 32

| | opus r30 | r31 | **r32** | sonnet r30 | r31 | **r32** |
|---|---|---|---|---|---|---|
| pass (criteria 1–5) | PASS | PASS | **PASS** | PASS | PASS | **PASS** |
| `mps-aspect-typesystem` loaded | no | no | **step 2** | no | no | **step 4** |
| `T_rule_prints` (P2 ≤ 2) | 7 | 9 | **3** | 6 | 5 | **3** |
| reporter rule printed | yes | yes | **no** | yes | yes | **no** |
| a rule opened after a surprising answer | yes | yes | **no** | yes | yes | **no** |
| `T_type_queries` (before the build) | 7 (3) | 8 (3) | **12 (6)** | 5 (2) | 7 (4) | **9 (4)** |
| `EXPLAIN_TYPE` used | no | no | **2×** | no | no | **3×** |
| `M_reload_all` | 0 | 0 | 0 | 1 | 0 | 0 |
| tool calls | 44 | 44 | **62** | 45 | 46 | **55** |
| wall, cost | 181 s, $1.35 | 196 s, $1.36 | 216 s, **$1.82** | 146 s, $0.94 | 144 s, $0.90 | 182 s, **$1.25** |

The three success targets set in round 31:
- `mps-aspect-typesystem` loaded: **met, 2/2.**
- `reload_all` 0: **met, 2/2.**
- `T_rule_prints` ≤ 2: **missed by one in both runs.**

## 2. What the gate changed

- **Both workers followed the typesystem skill's step 9.** Each one:
  - made a scratch model and took the baseline from a check plus `EXPLAIN_TYPE`
    (`subtype_checked holds:false`);
  - cited the reporting rule from `rules[0].rule` without printing it;
  - wrote the rule by copy-then-modify and built once;
  - re-asked the engine, including `EXPLAIN_TYPE`, whose `via` named the new rule;
  - kept the scratch model, as the prompt requires.
- **The skill load trigger cannot be quoted** (thinking redacted). It came right after the workflow
  skill loaded, and both the new Critical Directive and the installed `CLAUDE.md` line say to load it.
  The round does not separate the two.
- **A null `OPERATION_TYPE` no longer sends workers into the rules.**
  - Opus re-asked with a real `operatorNode`, prompted by the server's own warning.
  - Sonnet built a real `true + 1` node and checked it.
  - Neither opened `typeof_ArithmeticSimpleMathExpression` or `SimpleMathOperations`.
- **The remaining rule prints:**
  - Opus: the template, the copy (both allowed) and a re-print of the edited copy.
  - Sonnet: the template, the copy, and a sibling it announced but did not copy. That print
    revealed that `SimpleMathIntegerType_subtypeOf_Number` actually returns `Element`, which is a
    fixture curiosity, not a defect of the run.

## 3. The cost went up (+18 / +9 calls, +35 % / +39 % cost)

The evaluators broke the extra calls down:
- **From the skill, about 5 calls per run:** the skill and its reference read, `EXPLAIN_TYPE`
  before and after, `SUPERTYPES` / `COMMON_SUPERTYPE`. These produced the strongest evidence in
  both `EVIDENCE.md` files (`holds:false` → `via` naming the new rule).
- **A temporary `true + 1` root, then its removal:**
  - Both workers read "one root `Probe`" strictly, so they put the probe in a second root and
    deleted it before finishing: opus 10 calls, sonnet 7.
  - Opus did not find how to delete a root. ToolSearch "delete root node" found nothing, so it
    created a throwaway model, moved the root into it and deleted the model (6 calls).
  - Sonnet deleted it with `mps_mcp_update_root_node_from_json` `operation: DELETE` first try.
  - The tool exists; the docs do not say it. `mcp-tools-index.md` lists the tool by name only.
- **Error recovery:** sonnet 5 calls (`get_concept_details` with singular `conceptRef` twice; an
  inline blueprint EOF fixed with a script). Opus 1.
- **Duplicate reads:** opus printed the same sample roots as plain text and then deep.

## 4. Criteria / prompt notes (S12 is frozen; evaluator-side only)

- `true + 1` evidence from a temporary root that is deleted afterwards cannot be re-checked by the
  observer. Criterion 4 still accepts `OPERATION_TYPE`, so no verdict changed. If the prompt is
  ever reworded for another reason, say that extra lines in `Probe` are fine; that would also
  remove the cleanup cost.

## 5. Proposed next remedies (not applied)

1. **`mcp-tools-index.md` / node-editing docs:** "delete a root: `mps_mcp_update_root_node_from_json`
   with `operation: DELETE`". Cheap, and it removes opus's 6-call detour.
2. **Optional, `mps-aspect-typesystem` step 9.5:** mark the re-ask list as "as needed", not a
   checklist. The evaluators judged the extra queries worth it, so leave this alone unless cost
   matters more than evidence.
3. **Not a docs fix:** the remaining `T_rule_prints` = 3 is one verification or comparison print per
   run. Consider relaxing P2 to ≤ 3 rather than adding more text.

## 6. Status

- Round-30 remedy 1 (routing) is superseded by the round-31 gate, which works.
- Remedies 2–3 and the round-31 remedies 2–4 hold.
- `McpToolsIntegrationTestSuite` on `49fa44a9d418` (after the round): 1207/1207 passed, so the
  round-31 skill and template edits are fully validated.
