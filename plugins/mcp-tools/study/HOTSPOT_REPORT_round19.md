# Skill Script Automation Study — Round 19 (2026-09-29)

Status: measurement round complete. Scope on request: **S1 only** × **opus + sonnet** = 2 cells, n = 1.
Result: **S1-opus PASS, S1-sonnet FAIL** (criterion 3). This is the first S1 fail in the study.
No remedy was made in this round. Nothing was committed or pushed.

Evidence: `~/MPSProjects/mcp-study/runs-r20/{SMOKE-*,S1-*}-{worker,server}.jsonl`, `*.meta.json`, `*.eval.md`.
Analysis: `runs-r20/analysis/` (`metrics.csv`, `families.tsv`, `compare.md`, `probing.py`). The directory
suffix is one ahead of the round number, as in rounds 15–18. `run:step` is the 1-based `tool_use` ordinal
that `show_steps.py` prints.

## 0. Harness state

- **Measured surface**: HEAD `8b8b13900d3c` plus the **uncommitted working-tree changes** in
  `AbstractOps.kt`, `AbstractNodeOps.kt` and `JetBrainsMPSModelMcpToolset.kt` (work in progress that rejects
  invented language UUIDs, see `docs/reject-invented-language-uuids.md`).
  - The plugin classes were compiled at 16:04, after every source edit, so the relaunched MPS served them.
  - Since round 18, the committed changes are MPS-40208 (a `mps-mcp-workflow/SKILL.md` hint to load a tool's
    schema before the first call) and MPS-40209 (scenario descriptions, study docs only).
- **Inventory**: `634ad3dc…`. Tools 48 (39 `mps_mcp_*`); descriptions 57,068 B, the same as round 18;
  schemas 40,786 B, up from 40,493 B (the work in progress).
- **Skills**: `skillsSha256 73a837b7…` on all 4 metas, up from round 18's `f6b20bbf…` (the MPS-40208 hint).
- **Prompt**: `promptSha256 96376ae7…`, identical to every earlier S1 cell. Models: `claude-opus-5-5`,
  `claude-sonnet-5-5`, the same as round 18.
- **Instrumentation**:
  - MPS was running from the dev checkout (pid 43240) without the call log.
  - `capture` → `calllog runs-r20/server-calllog.jsonl` → `shutdown` → `start proj-r20/harness` → `wait` →
    SMOKE ×2. All runs used one MPS process (`mpsPid` 71740), `per-round` isolation (S1 is synthesized).
  - Wrap-up cleared the option and restarted MPS on the dev checkout (pid 74775).
- **Worker effort (not pinned; confound)**: `run_worker.sh` passes no `--effort`, so each worker takes the level from `~/.claude/settings.json` at launch. That is `modelSettings.claude-opus-5-5.effortLevel` for opus (the observer's `/effort`, set to `medium` before this round) and the top-level `effortLevel` `xhigh` for sonnet (no `claude-sonnet-5-5` entry). The transcripts do not record the level, and earlier rounds' levels are unknown. Part of the opus drop may be effort, not surface.
- **Guards**: harness unit tests 56/56; `check_user_agents.py` exit 0.
- **SMOKE context floor**: opus 62,064 tokens, sonnet 61,923. Both unchanged.

## 1. Task outcomes

- **S1-opus: PASS 6/6.** The seeAlso self-reference rule is a `RecipeRef` scope that leaves out the current
  recipe, the same shape earlier rounds accepted. All 7 sample roots are clean (`rootsChecked=7`).
- **S1-sonnet: FAIL 5/6.** Criterion 3: the constraints model holds only the `servings >= 1` validator. The
  "Recipe cannot reference itself in seeAlso" rule was built as a second typesystem `NonTypesystemRule`
  (`check_RecipeRef_noSelfReference`), not as a constraint.
  - At `:55` the worker explained why: "building a scope in JSON would be fragile".
  - It had read `referent-constraints/imperative-scope-calculator-example.md` (`:28`) and `scope-helpers.md`
    (`:36`). It did not attempt the scope; it went straight to behavior (`:37`).
  - No earlier S1 evaluation (baseline, rounds 2–18) shows this substitution. Every earlier pass used a
    scope. The rule works; the aspect is wrong. With n = 1 this is one observation, not yet a trend.

## 2. Round metrics

| cell | base | r15 | r17 | r18 | **r19** |
|---|---|---|---|---|---|
| S1-opus turns | 181 | 124 | 98 | 111 | **90** |
| S1-opus batches | – | 83 | 67 | 87 | **57** |
| S1-opus cost $ | 14.96 | 4.18 | 3.62 | 4.25 | **3.10** |
| S1-opus cache read | 18.31 M | 7.46 M | 5.90 M | 8.18 M | **6.24 M** |
| S1-opus tool / MCP calls | 173 / 90 | 121 / 87 | 95 / 60 | 108 / 66 | **88 / 59** |
| S1-opus skill KB | 153 | 131 | 162 | 140 | **137** |
| S1-opus errors | 2 | 4 | 0 | 2 | **4** (1 batch) |
| S1-sonnet turns | 148 | 150 | 154 | 89 | **76** |
| S1-sonnet batches | – | 113 | 95 | 54 | **43** |
| S1-sonnet cost $ | 5.83 | 5.08 | 5.18 | 2.21 | **1.59** |
| S1-sonnet cache read | 15.52 M | 11.95 M | 10.86 M | 6.31 M | **4.16 M** |
| S1-sonnet tool / MCP calls | 135 / 71 | 142 / 66 | 143 / 85 | 82 / 53 | **69 / 44** |
| S1-sonnet skill KB | 160 | 150 | 142 | 62 | **39** |
| S1-sonnet errors | 5 | 2 | 9 | 4 | **3** |

- **Opus** (same model, surface differs only by MPS-40208 and the work in progress): −19 % turns,
  −34 % batches, −27 % cost vs round 18. That is within the known S1-opus variance (124 / 98 / 111 in
  rounds 15 / 17 / 18). Neither change targets opus, so do not read it as a treatment effect.
- **Sonnet**: −15 % turns, −20 % batches, −28 % cost, −37 % skill bytes vs round 18. Part of this is the
  shortcut that caused the fail: no scope was authored.
- Neither run compacted (round 18: 1, opus). Validation loops: 0 in both runs.

## 3. Which baseline hotspots moved (S1 cells only)

Counts come from `families.tsv` (the round-18 `families.py`), summed over both S1 cells. "/100" is per 100
tool calls. Tool calls: base 308, r18 190, **r19 157**.

| # | baseline family | base | r18 | **r19** | verdict |
|---|---|---|---|---|---|
| 1 | **A** temp-file envelope → follow-up read | 55 (17.9/100) | 5 (2.6) | **3 (1.9)** | **Stays fixed.** Opus 2, sonnet 1 (`:30→31`: a 104 B envelope, then the same call re-issued inline). |
| 2 | **C** per-root check after a clean model check | 0 in S1 (it was an S3 family) | 1 root check | **0** root checks, 7 `perRoot` model checks | **Stays fixed**, and `perRoot` is now the default habit (both models). |
| 3 | **D** skill reads before a call | 30 | 22 | **24** | **Unmoved for opus** (137 KB vs 140). **Down for sonnet** (62 → 39 KB). The fail (§1) is linked to D: sonnet read the scope docs and judged them too costly to follow. |
| 4 | **B′** ad-hoc Python | 30 | 17 | **10** | **Improved.** Opus 12 → 7 heredocs, sonnet 5 → 3. They are still blueprint generators; `Bp_shipped_script` is 0 in every round. |
| 5 | **B** blueprint → insert, response > input | 46 KB of responses / 42 inserts | 24 KB / 38 | **27 KB / 30** | **Stays fixed.** |
| 6 | **F** discovery refinement (`get_concept_details` chains) | 18 calls, 2 chains | 9 calls, 2 chains | **2 calls, 0 chains** | **Moved, but the cost shifted rather than disappeared.** Both workers now scaffold editors and read the scaffold back with `print_node` (opus 9 → 13, sonnet 2 → 6) instead of asking for concept details. D67/D75 are still open; this round did not exercise them. |
| 7 | **G** error → retry | 7 | 13 | **7** | **Down, back to the baseline level.** Opus's 4 are one parallel batch that repeated one self-made blueprint bug (`cellLayout` placed directly under `ConceptEditorDeclaration`, `S1-opus-1:[33-36]`), so they cost 1 turn. Sonnet: 1 blind call (`:14`), 1 invented concept `smodel.ThisNodeExpression` (`:44`), 1 truncated inline JSON fixed by writing a file (`:56→58`). |
| 8 | **H** ToolSearch schema fetches | 19 | 9 | **7** | **Down slightly** (opus 6 → 4, sonnet 3 → 3). |

### 3.1 MPS-40208 check: calls on tools whose schema was not loaded

This is the round-18 G root cause: sonnet-5-5 calls a tool without first loading its schema through
`ToolSearch select:`. `probing.py` counts those calls:

| S1 cell | base | r18 | **r19** |
|---|---|---|---|
| opus | 0 / 90 | 0 / 66 | **0 / 59** |
| sonnet | 0 / 71 | 5 / 53 (2 failed) | **2 / 44 (1 failed)** |

The hint is in the direction intended, but it did not eliminate the problem. The remaining blind call is
`S1-sonnet-1:14`: `scaffold_editor({})`, made right after loading `mps-aspect-editor`. It was rejected before
dispatch, and one `ToolSearch` batch (`:15`) fixed it. With one S1 cell, the 5 → 2 drop is suggestive, not
proof. The round-18 S5–S10 sonnet cells, where probing reached 28 % of calls, are the real test.

### 3.2 In one line

A, B, C stay fixed. B′ and G improved. F moved, but the cost reappears as scaffold→`print_node` reads. D is
unmoved for opus. The new signal is a **quality** one: sonnet avoided the constraints-scope authoring path and
substituted a typesystem rule.

## 4. New defect candidate

| # | Where | Observation | Proposed fix | Status |
|---|---|---|---|---|
| D92 (candidate) | `mps-aspect-constraints` (referent scopes) | The scope docs sonnet read (`imperative-scope-calculator-example.md`, `scope-helpers.md`, 9.7 KB together) did not look cheap enough to follow. The worker substituted a checking rule for "a reference must not target its own container", the most common scope shape. Opus used `cross-model-filtered-scope.md` and succeeded. | D: a copy-ready JSON blueprint for "exclude the enclosing node from a smart-reference scope", linked from `SKILL.md`'s quick routing. Also one `SKILL.md` line: when a task says "constraint", a typesystem check does not satisfy it. | Needs confirmation: rerun S1-sonnet (n ≥ 2) before treating. |

## 5. Next steps (gate 2 is yours)

1. Rerun S1-sonnet 2× on the same surface, to separate a skill gap from model variance.
2. Run S5–S10 sonnet to measure MPS-40208 where round 18's probing was heaviest.
3. After the uncommitted UUID-rejection work is committed, rerun for a clean surface hash.
