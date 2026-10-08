# Skill Script Automation Study — Round 30 (2026-10-08): S12 rehearsal

Scope: one S12 run per model, to freeze the prompt. Evidence: `~/MPSProjects/mcp-study/runs-r30/`
(`*.eval.md` per run, `analysis/`, `server-calllog.jsonl`).

## 0. Harness state

- MPS 2026.1 build 261.25134 from sources, MCP on 64343, call log on (`mps_control.sh calllog`).
- Isolation `per-shared-fixture-restart`: cold MPS (harness project, SMOKE) before each run;
  `mpsPid` 86695 for opus, 88186 for sonnet.
- Workers: `opus` effort medium, `sonnet` effort high, `bypassPermissions`.
- `skillsSha256` `5c8d3670…`, `guidesSha256` `7c49518f…` and `promptSha256` `4d7270af…` are the same
  in every run. The catalog is HEAD `15557895561b`, which includes the step 9 sandbox recipe.

## 1. Task outcomes

| run | pass | turns | tool calls | MPS calls | errors | wall | cost |
|---|---|---|---|---|---|---|---|
| S12-opus-1 | **PASS** 5/5 | 46 | 44 | 36 | 1 | 181 s | $1.35 |
| S12-sonnet-1 | **PASS** 5/5 | 47 | 45 | 34 | 3 | 146 s | $0.94 |

- Both authored the canonical rule by copy-then-modify. Opus copied `SimpleMathBoolean_subtypeOf_Element`;
  sonnet copied `SimpleMathFloatType_subtypeOf_Number`.
- Both built the language with one `MAKE rebuild` and kept a correct scratch `Probe`.
- Both cited the reporting rule from `check_root_node_problems` `rules[]`.
- Both answered `true + 1` → `Number` from `OPERATION_TYPE`, before (null) and after the build.
- Every pinned answer in `done_criteria.md` matched both left-behind states.

## 2. Process signals

| signal | opus | sonnet |
|---|---|---|
| P1 baseline asked before the build | yes (check #19, queries #25–27, MAKE #34) | yes (check #25, `IS_SUBTYPE` #26, `OPERATION_TYPE` #30, MAKE #37) |
| P2 `T_rule_prints` ≤ 2 | **7** | **6** |
| P3 one MAKE, no `reload_all` | yes | MAKE + **`reload_all` #38** |
| P4 after state asked | yes | yes |
| P5 no clean-over-unchecked reading | yes | yes |
| `T_type_queries` (before the build) | 7 (3) | 5 (2) |

**H1: neither worker loaded `mps-aspect-typesystem`.** Each worker loaded only `mps-mcp-workflow` (and
sonnet one `mps-node-editing` reference). So the step 9 recipe that S12 was built to measure was
never read. Both process misses trace to `mps-mcp-workflow` text instead:

- **P2: rule study before asking.**
  - Opus printed the reporting inference rule after `rules[]` had already named it, then two
    candidate templates, then `SimpleMathOperations` (6 KB) and `typeof_ArithmeticSimpleMathExpression`
    (8 KB). All of that came before it asked `OPERATION_TYPE`, and `EVIDENCE.md` repeats the
    hand-derived overload reasoning next to the query answer.
  - Sonnet did the same with three prints (#27–29) before its `OPERATION_TYPE` (#30).
  - The workflow directive "Never simulate the typesystem" ends with "Read `SubtypingRule` /
    `InferenceRule` roots only when authoring or changing them". In an authoring task, the workers
    read that as licence to study every related rule.
- **P3: sonnet's `reload_all`** came after a MAKE that had answered `runtimeReady:true`. The worker
  said "so the compiled rules are live", and it had loaded the tool's schema at #13, before any
  change. The workflow directive "Reload after compiled-aspect changes" says to call `reload_all`
  (or MAKE), which reads as permission to do both.
- **Routing.** In the workflow skill, Common Workflow step 3 routes "defining a language" to
  `mps-language-aspects-overview` and type questions to `type-queries.md`. Nothing routes "author or
  change a typesystem rule" to `mps-aspect-typesystem`.

Minor errors, none from S12's subject:
- **Inline blueprint truncated** (EOF), in both runs: recovered via a temp-file script, 1–2 turns.
- **Sonnet, `get_concept_details` `conceptRef` singular:** 1 turn.
- **Sonnet, `get_project_structure` `startingPoint` + `moduleKind`:** 1 turn.

## 3. Criteria fixes made during the round (evaluator side; the prompt is unchanged)

- **Criterion 3:** the bare name `jetbrains.mps.samples.Expressions.sandbox` resolves to the sandbox
  *model*, which hides the scratch model. Criterion 3 now pins the solution's module reference,
  and criterion 5 says it means the model.
- **Criterion 3, print format:** it now uses a deep JSON `print_node`, because PLAIN TEXT misrenders
  the wrapper's layout.
- **P3** now names the workflow directive as the second source of a `reload_all`.

## 4. Status

- S12 prompt **frozen** (`4d7270af8ab3…`).
- Proposed remedies (docs; gate 2), all in `mps-mcp-workflow/SKILL.md`, each with a blueprint edit
  and propagation:
  1. **Routing:** Common Workflow step 3 gets "authoring or changing typesystem rules → load
     `mps-aspect-typesystem` (step 9: live-check on a scratch sandbox)".
  2. **"Never simulate the typesystem":** read rule roots only to copy or change one, and ask the
     engine about the rest, including what a change will do to operators (`OPERATION_TYPE`,
     `COMMON_SUPERTYPE`).
  3. **"Reload after compiled-aspect changes":** rebuild the language with `MAKE`, where
     `runtimeReady:true` is the reload; `reload_all` alone compiles nothing.
- **Applied 2026-10-08** (the commit after this report): all three, plus the older text the remedy
  review found contradicting remedy 3 — `mcp-tools-index.md` (`reload_all` entry),
  `node-editing-rules.md`, `mps-language-aspects-overview` ("after large changes"),
  `mps-aspect-constraints` (SKILL.md and common-failures), the `mps_mcp_reload_all` tool
  description — and `mps-aspect-typesystem` step 0, which still carried the "when authoring" licence.
  The tool description change needs the rebuilt plugin, i.e. an MPS restart before round 31.
- **Next measurement:** S12 × 2 again after the remedies. Expected: `mps-aspect-typesystem` loaded,
  `T_rule_prints` ≤ 2, `M_reload_all` 0.
