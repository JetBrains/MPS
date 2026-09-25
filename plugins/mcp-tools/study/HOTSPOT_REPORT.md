# Skill Script Automation Study — Hotspot Report

Status: baseline complete (2026-09-15); remedies proposed, none implemented. Scope: 4 pilot runs (S1 greenfield DSL, S3 bulk model
authoring) × (opus, sonnet), all task-PASS. Gate 1 stopped the matrix here (runbook 9.11); the
scenarios S2, S4–S8 and hypotheses H2, H5, H7 (discovery-heavy), H8 are **unmeasured**.
Evidence sources: worker stream-json transcripts and the server call log (`runs/*.jsonl`);
evaluations by read-only Opus subagents (`runs/*.eval.md`). Every claim cites `run:step`.

## 1. Baseline metrics

| metric | S1-opus-1 | S1-sonnet-1 | S3-opus-1 | S3-sonnet-1 |
|---|---|---|---|---|
| task pass | True | True | True | - |
| turns | 181 | 148 | 100 | 28 |
| wall-clock s | 1,395 | 1,322 | 740 | 229 |
| cost USD | 14.96 | 5.83 | 5.55 | 1.13 |
| cache-read tokens | 27,055,629 | 27,498,232 | 13,556,284 | 4,001,158 |
| cache-write tokens | 573,263 | 920,586 | 498,864 | 322,494 |
| output tokens | 3,392 | 1,868 | 1,406 | 240 |
| tool calls | 173 | 135 | 97 | 26 |
| MCP calls | 90 | 71 | 68 | 11 |
| Bash | 73 | 3 | 25 | 4 |
| skill-file reads | 24 | 9 | 3 | 3 |
| skill bytes read | 136,506 | 160,079 | 17,443 | 17,947 |
| temp-file envelopes | 32 | 23 | 25 | 4 |
| Bash reads of temp results | 33 | 0 | 12 | 0 |
| Bash blueprint writes | 9 | 0 | 5 | 2 |
| MCP input chars | 26,373 | 26,384 | 24,252 | 2,436 |
| all tool-input chars | 89,766 | 69,966 | 50,581 | 8,908 |
| tool-result bytes | 254,414 | 444,385 | 184,005 | 183,320 |
| error envelopes | 2 | 5 | 4 | 1 |
| error→retry pairs | 2 | 2 | 4 | 0 |
| validation loops (≥3 same root) | 1 | 1 | 0 | 0 |
| server-logged calls | 90 | 71 | 68 | 10 |
| server ms total | 9,984 | 4,478 | 1,564 | 175 |

Fixed per-turn context that no script changes (study 1.2(6)): 56 tools advertised
(38 `mps_mcp_*`), `mps_mcp_*` descriptions 43,175 B +
input schemas 34,328 B (loaded lazily via ToolSearch in Claude Code);
CLAUDE.md/AGENTS.md ≈ 9.3 KB each; skill files read per run: see table. Measured floor: the
one-call SMOKE run consumed ≈ 98 K context tokens (cache read + write) before doing anything.

## 2. Ranked hotspots

Scoring (study 4.3): `score = occurrences × avg tokens × determinism × (1 + retry_rate)`. Because the
fixed context costs ≈ 150 K cache-read tokens per turn (H10), a second column ranks by *avoidable
turns*, which is the better proxy here. Determinism was assigned by an Opus reviewer from 14 probes
(~120 steps) with `scripts/show_steps.py`; every instance cited as `run:step`.

| # | Hotspot (chain family) | Occurrences (4 runs) | Avg payload / instance | Det. | Retry | Avoidable turns | Tier | Evidence |
|---|---|---|---|---|---|---|---|---|
| 1 | **A — temp-file envelope → Read/Bash of the file.** `get_project_structure`, `get_concept_details`, `print_node`, `check_root_node_problems` return a path even for tiny payloads; sonnet reads the whole 25–38 KB file for 2–3 ids, opus filters with Python (~2.7 KB) or `cat`s it. Worst: envelope + Python for a **30-byte** payload. | 84 envelopes (32/23/25/4) | 12–38 KB (sonnet), 2.7–26 KB (opus) | 1.0 | 0 | ~84 (one per envelope) | **S** | `S1-sonnet-1:13-14`, `S3-sonnet-1:8-9`, `S3-opus-1:6-7`, `S1-opus-1:170-171` (30 B), `S1-sonnet-1:112` (72 B) |
| 2 | **C — per-root validation after a clean model-level check.** Root list taken verbatim from the previous dump; agent says "model-scope check reports clean … let me check each root individually". Two problem reports (temp-file paths) were never read. | 75 calls, ≈ 60 avoidable (S3-opus-1: 48 consecutive after `:42` clean) | 38–700 B | 1.0 | 0 | ~60 | **D** then **S** | `S3-opus-1:38-90`, `:42` quote, unread `:39,:48,:49`; `S1-opus-1:161-165` |
| 3 | **D — skill reference reads before an MCP call.** 68.7 KB read (`referent-constraints.md` 49.8 KB whole) to author one constraints root shaped by a 3.9 KB file; the same file read twice in both S1 runs. | 39 reads (24/9/3/3), 332 KB | 8.5 KB avg; 20–50 KB peaks | 0 | 0 | ~15 (re-reads, wrong file) | **D** then **T** | `S1-sonnet-1:33-38`, `:7-8`; `S3-sonnet-1:3-5` (lean: 17.9 KB, still PASS) |
| 4 | **B′ — ad-hoc Python re-authored for result shaping and CSV→blueprint.** The "concept shape" projection was re-written 10× in one run; CSV→blueprint 4×; verification-by-re-dump 3 scripts on one 38 KB dump, first one reporting 65 bogus problems; `KeyError: 'difficulty'` from omitted default values. | ~22 Python heredocs (S1-opus-1 10, S3-opus-1 ~12) | 1–3 KB authored each | 1.0 (shape), 0.5 (CSV) | 2 tracebacks | ~20 + 2 retries | **P-off** (or S `detail:"shape"`) | `S1-opus-1:34,51,53,56,59,89`; `S3-opus-1:21-24, :28-33, :93-95` |
| 5 | **B — blueprint file → `insert_root_node_from_json`.** Insert args are derivable; content is judgment. Bulk response is *larger than the input*: 63 KB file → 33 KB response (full node envelope + repeated `conceptDoc` per node). `/tmp` rejected on macOS; array passed to `update_node childJson` rejected. | 22 writes + 8 inserts | 2–63 KB in, 0.8–34 KB out | 0.5 | 2 (`S1-opus-1:16→18`, `S1-sonnet-1:130→131`) | ~4 + 60 KB of response | **D** then **S** | `S1-opus-1:35-36, :90-91, :16-18`; `S3-opus-1:24`; `S3-sonnet-1:18`; `S1-sonnet-1:130-132` |
| 6 | **Discovery refinement — `get_concept_details` re-called 1–2 steps later for a concept the previous result revealed** (ForEachStatement → ForEachVariable → ForEachVariableReference). | 3 chains of 2–3 hops per S1 run | 10–25 KB each | 0.5 | 0 | ~8 | **S** | `S1-sonnet-1:68-71, :85-86`; `S1-opus-1:50,52,58` |
| 7 | **Guessable-but-undocumented literals and asymmetries** — `print_node format "text"` rejected (allowed `PLAIN TEXT`); model reference to `print_node` NOT_FOUND; array vs object for `childJson`. | 4 error→retry pairs | small | 1.0 | 4 | ~6 | **D** | `S1-sonnet-1:110-111`, `S3-opus-1:30-31`, `S1-sonnet-1:129-132` |
| 8 | **`ToolSearch` schema fetches** before nearly every MCP burst (0 B results). Harness overhead, not MPS. | ~7 per run | 0 B | — | 0 | ~7 (not addressable by this plugin) | — | `S1-sonnet-1:2,9,36,88,93,95` |

Not observed in these 4 runs (unmeasured, see §3): H2 make/scaffold chain, H5 fix loops, H8 stale
runtime, reference-wiring sweeps (H6 refuted for S3).

## 3. Hypotheses H1–H8

| # | Hypothesis | Verdict on 4 runs | Evidence |
|---|---|---|---|
| H1 | JSON blueprint authoring is a main cost and retry source | **Confirmed, moderated.** Blueprints are authored as output tokens either way (~26 K MCP-input chars per S1 run, plus file-written JSON: S1-opus-1 9 Bash writes, S1-sonnet-1 6 Write calls). Errors traced to blueprints: truncated JSON (`EOFException … column 1254`), concept-assignability, two BaseLanguage AST mistakes (`VariableReference` vs `ForEachVariableReference`, empty constructor body), `/tmp` outside system temp dir. | S1-sonnet-1 errors 2–3 and final message; S1-opus-1 error 1 (D3) |
| H2 | structure → make → verify → scaffold chain | **Not isolated in n-grams**; S1 runs show `alter_structure CREATE_CONCEPTS` ×2, `alter_nodes MAKE` ×3 and `scaffold_editor` ×6 (sonnet) but interleaved with reads. No stale-runtime retry observed. Unmeasured beyond S1. | S1-* histograms |
| H3 | Bulk instance creation via many near-identical calls | **Refuted as stated, confirmed in a different form.** Both S3 workers used the top-level-array bulk insert (2–3 calls for 40 roots, file-backed, argsBytes ≈ 240). The cost moved to *authoring the transformation*: the worker writes CSV→blueprint Python and result-verification Python on the fly (S3-opus-1 Bash #10–#23, 2 tracebacks). | O13; S3-opus-1 server log |
| H4 | Discovery reads with huge results | **Confirmed — the #1 chain family.** 32 / 23 / 25 / 4 temp-file envelopes per run, each followed by a Read or Bash of a 10–40 KB file to extract a few identifiers. `get_project_structure → Read` (8×, avg 15.7 K chars), `get_concept_details → Bash → Bash` (7×, 14.4 K), `print_node → Read` (8×). | `analysis/chains_mcp_top20.json` #1, 2, 6, 7, 9 |
| H5 | validate → fix → validate loops | **Partly.** Only 1 loop (≥3 checks on one root) per S1 run, none in S3. But S3-opus-1 ran 50 validations (model once, then every root) as a *trust* habit, not a fix loop. `autoApplyQuickFixes` never used. S4/S5 (designed for H5) unmeasured. | O11; S3-opus-1 steps ~35–95 |
| H6 | Reference wiring after bulk insert | **Refuted for S3.** Name-based resolution inside one bulk insert wired 65 seeAlso refs; the single ambiguous target (`Pancakes` ×2) was handled with one explicit `update_node ADD` (sonnet) or explicit ids (opus). No `SET/REFERENCE` sweeps. | S3-*.eval.md |
| H7 | Skill reading is a large context consumer | **Confirmed for greenfield, small for bulk.** S1: 24 reads / 137 KB (opus), 9 / 160 KB (sonnet), touching 6–9 skills; S3: 3 reads / 17 KB. Both S1 runs read `mps-aspect-constraints/references/referent-constraints.md` twice. Opus `cat`s files, sonnet uses Read. | skill inventory (runbook 6.x); metrics |
| H8 | Stale runtime (`hollow`, `reload_all`) | **Not observed.** 1 "stale_incidents" hit per S1 run is a text match on a description, not an incident; no `reload_all` calls. Unmeasured beyond S1. | histograms |

Additional, not hypothesised: **H9 — cross-project leakage** through the shared module repository (O10, D4) and **H10 — fixed per-turn context** dominates tokens (27 M cache-read tokens per S1 run ≈ 150 K per turn; turn count is the lever — O6).

## 4. Documentation and tool-behaviour defects

From `docs-defects.md` (D1–D5) plus transcript evidence:

| # | Where | Defect | Fix type |
|---|---|---|---|
| D1 | `mcp-tools-index.md` | Study claim of missing tools is stale (fixed in fc28c2636dce). | none |
| D2 | `test_scenarios/StateChartScenario.md` | Contains reporting requirements; not a worker prompt. | none (usage note) |
| D3 | file-path `childJson` (tool descriptions, `mps-node-editing`) | `/tmp` rejected on macOS: "not inside the system temp directory"; accepted dir (`$TMPDIR` / `java.io.tmpdir`) not named in docs or error. | D: error text + skill line |
| D4 | name-resolving tools (`get_concept_details` suggestions) | Suggestions drawn from the shared repository, not the selected project → cross-project leak. | S: scope suggestions to `projectPath` or label them |
| D5 | `print_node` JSON / `analysis-tools.md` | Enum default literal printed as `""`; readers count it as missing. | D (doc) or S (emit default name + flag) |
| D6 | `create_module` result / `mps-mcp-workflow` | Both S1 workers tried to create `mcp.study.recipes.structure` after `create_module` had created it ("No suitable model root found … to create model"). The result should list the aspect models created. | D: result field + skill line (O5) |
| D7 | `check_root_node_problems` on a model | Workers do not trust the model-level result and re-check every root (S3-opus-1: 50 calls). Envelope should state coverage (`rootsChecked: N`). | S: envelope field (O11) |
| D8 | `get_project_structure` / `print_node` | Always temp-file, even for small payloads (`print_node` of a 3-step recipe); forces a second call. | S: inline under ~8 KB, `fields`/`summary` params |

## 5. Proposed remedies

Ordered by estimated saving. "Turns" are per 4-run baseline; multiply by ≈ 150 K cache-read tokens.

| # | Remedy | Tier | Hotspot | Owner | Contract | Est. saving | Risk |
|---|---|---|---|---|---|---|---|
| R1 | **Inline small results.** `maxInlineBytes` (default 8192) on `print_node`, `get_concept_details`, `get_project_structure`, `query_nodes`, `check_root_node_problems`: `data` inline under the threshold, temp-file path above. Plus `detail: "shape" \| "full"` on `get_concept_details` returning `{qualifiedName, properties[], references[], children[] (with cardinality/target)}` only. | S | 1, 4 | plugins/mcp-tools | in: new optional params; out: unchanged envelope, `data` inline or path | ~50–80 turns, ~300 KB context | low; default keeps current behaviour above threshold |
| R2 | **Model-scope validation is exhaustive — say so and show it.** `analysis-tools.md`: "checking the model reference checks every root; do not re-check roots individually". Envelope: `rootsChecked: N` (and optional `perRoot: true` → `[{root, problemCount}]`). | D + S | 2 | mps-mcp-workflow docs; plugin | out: `details.rootsChecked` | ~55 turns | none |
| R3 | **Temp-dir and literal documentation.** File-path `childJson` must be under the JVM temp dir (`$TMPDIR`, not `/tmp` on macOS) — in `mcp-tools-index.md`, `mps-node-editing`, and the error text (drop the `File.createTempFile` hint). Document `print_node format` literals (`JSON`, `HTML`, `PLAIN TEXT`), node-vs-model reference acceptance per tool, array-vs-object for `childJson` (or accept arrays in `update_node`). | D | 5, 7 | skills + tool descriptions | — | ~6 retries, ~10 turns | none |
| R4 | **Bulk-insert response summary.** `responseDetail: "summary" \| "full"` on `insert_root_node_from_json` / `update_node ADD`, summary = `{inserted: N, roots: [{name, reference}]}` (no `conceptDoc`, no child envelopes). | S | 5 | plugin | out: summary by default for ≥ 10 nodes | ~60 KB per bulk insert | low |
| R5 | **Ship the scripts the workers keep writing.** `mps-mcp-workflow/scripts/mps_dump.py` (load an envelope/dump; `roots()`, `props(node)` with enum-default fill, `refs(node)`, `shape(concept)`), `mps-node-editing/scripts/table_to_bulk_insert.py` (CSV/JSON rows + column→feature map → top-level-array blueprint written under `$TMPDIR`, prints path + count), `mps-language-analysis/scripts/concept_shape.py` (reduce `get_concept_details` file to one line per feature). | P-off | 4 | skills | in: file path(s) + flags; out: compact JSON/text to stdout, files under `$TMPDIR` | ~20 turns, 2 tracebacks | drift (schema of dumps); covered by the drift test (runbook 7.6) |
| R6 | **Skill reference navigation.** Section jump-table at the top of every reference > 20 KB; each `mps-aspect-*/SKILL.md` names the single file for the common case (e.g. "scope-less link → `concept-roots.md`"); consider splitting `referent-constraints.md` (49.8 KB). | D → T | 3 | skills | — | ~100–150 KB context per greenfield run | none |
| R7 | **One-hop concept closure.** `includeChildRoleConcepts: true` on `get_concept_details` returns the target concepts of child/reference roles in the same call. | S | 6 | plugin | out: `relatedConcepts[]` | ~8 turns | payload growth (pair with `detail:"shape"`) |
| R8 | **Result hygiene from the defects list.** `create_module` lists the models it created (D6); enum default literal emitted with a flag (D5); name suggestions scoped to `projectPath` or labelled with project (D4). | S | — | plugin | — | ~2 retries per greenfield run; removes a study-validity hazard | none |

Not proposed: P-on (online chain) scripts — no chain in these runs needs server round trips
that a composite tool would not do better; `wire_references.py`, `validate_until_clean.py` and
`dump_language.py` from the study's candidate list (3.4) have **no supporting evidence** in the
pilot and should not be built without S4/S5/S8 data.

## 6. Post-treatment check (2026-09-15, live server after MPS restart)

`tools_inventory.py` diff, study start → after all remedies: 56 tools before and after, none added or
removed; new optional parameters advertised — `check_root_node_problems` (+`maxInlineBytes`, `perRoot`),
`get_concept_details` (+`detail`, `includeChildRoleConcepts`, `maxInlineBytes`), `get_project_structure`,
`print_node`, `query_nodes` (+`maxInlineBytes`), `insert_root_node_from_json`, `update_node`
(+`responseDetail`); `create_module` description documents `data.models`. Fixed-context cost of the
treatment: `mps_mcp_*` descriptions 43,175 → 46,093 B (+2,918 B ≈ +700 tokens per schema load),
schemas 34,328 → 36,600 B. Against ≈ 150 K tokens per avoided turn this is negligible.
Integration suite after treatment: 669 tests, 0 failures (baseline 637). No A/B run (gate 2).

