# Skill Script Automation for MPS MCP — Study Design

Status: proposal (2026-09-15). Companion to the `mps-*` skills shipped from
`plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`.

## 0. Verdict in one paragraph

The goal — give agents pre-built Python helpers so they spend fewer tokens, turns and
retries when driving MPS through `mps_mcp_*` — is worth pursuing, but only if the study
that precedes it (a) measures instead of asking the worker agent to narrate, (b) treats
Python scripts as *one* of four remedies (documentation fix, server-side composite tool,
offline script, online script/template) and lets the data pick, and (c) budgets for the
maintenance drift that executable code in skills will suffer as tool schemas evolve. The
biggest single win is likely to be **offline blueprint generators** (no MCP connection
needed, work in every runtime) plus **documentation fixes** where the worker simply did not
know an existing shortcut. Online chain scripts that call the server over HTTP are viable
(Streamable HTTP at `http://localhost:64343/stream`) but compete with server-side composite
tools, which are cheaper and safer for anything generic and transactional.

## 1. Critique of the goal

### 1.1 What is right about it

- The `mps_mcp_*` surface is wide (~40 tools, many with `operation × kind` matrices) and
  several workflows are long deterministic chains (structure edit → clean MAKE → verify
  descriptors → scaffold editor → check problems). Each hop costs a round-trip, a tool
  result in context, and a chance to mis-derive the next argument.
- JSON blueprints are authored as output tokens, are verbose, hit the 4 KB inline limit,
  and are the main source of retry loops (wrong concept FQN, wrong role, wrong ref
  format). Generating them programmatically from a compact spec is a natural fit.
- The delivery vehicle already exists: `mps_mcp_initialize_project_for_agents` copies skill
  folders recursively, so `scripts/` and `assets/` subfolders ship for free (packaging of
  non-`.md` resources into the plugin JAR must be verified once).
- The `childJson`-accepts-a-file-path convention means a script can hand the agent a path
  instead of the agent pasting JSON — output tokens saved even before any HTTP work.

### 1.2 Where the original plan is weak

1. **Self-report is not measurement.** A worker asked to "report details of the actions it
   takes, especially MCP calls" will (a) change its behaviour because it knows it is being
   watched, and (b) produce a narrative that omits retries, misremembers argument shapes,
   and cannot report token counts. Use the transcript and a server-side call log instead
   (section 4). Do not tell the worker the study's purpose.
2. **One task, one run, one model is an anecdote.** You cannot separate "this agent was
   clumsy" from "this chain is inherently expensive" without ≥2 runs per scenario and,
   ideally, two worker models of different strength (weaker models expose the loops you
   most want to remove).
3. **Scripts are not always the right fix.** Many observed "hotspots" will turn out to be
   the worker not using an existing shortcut (`CREATE_CONCEPTS make:true`,
   `autoApplyQuickFixes`, batch `SET/PROPERTY`, top-level-array bulk insert, `COPY_NODE`,
   file-path `childJson`). Those are documentation/tool-description fixes and cost nothing
   to maintain. Others are generic, transactional chains that belong in Kotlin as a
   composite tool — a Python script doing five HTTP calls is a poor man's composite tool
   that lives outside the model-access command, cannot roll back, and still returns five
   responses the model must read.
4. **Executable code in skills rots faster than prose.** `references/mcp-tools-index.md`
   already lags the tool registry (it omits `mps_mcp_search_root_node_by_name`,
   `mps_mcp_parse_java_and_insert`, `mps_mcp_create_run_configuration` although it calls
   itself the complete inventory). A script that hard-codes parameter names breaks silently
   when a parameter is renamed. Plan the drift control (section 3.5) before writing the
   first script.
5. **Runtime reachability differs.** Claude Code, Junie and Copilot on the developer's
   machine can reach `localhost:64343`; a sandboxed harness cannot. Offline scripts
   (blueprint generators, response post-processors) work everywhere; online scripts must
   degrade gracefully (env var `MPS_MCP_URL`, clear error when unreachable).
6. **Token accounting must include what scripts do not fix.** Tool-schema loading (~40 rich
   descriptions; mitigated by `ENABLE_TOOL_SEARCH`) and skill-file reading (hundreds of
   reference files) are large context consumers that no script touches. Measure them so the
   expected gain is stated against the right baseline.

### 1.3 Refined goal statement

> Identify the recurring, deterministic sub-workflows in agent-driven MPS development and,
> for each, choose the cheapest remedy among: documentation fix, server-side composite tool,
> offline Python generator/post-processor (works in any runtime), online Python chain script
> (HTTP to the MPS MCP server), or template asset. Ship remedies inside the affected skill
> (`scripts/`, `assets/`) or the plugin, and verify by re-running the same scenarios that
> tokens, turns and failures drop.

## 2. Where the cost goes — hypotheses the study must confirm or refute

| # | Cost driver | Symptom in transcript | Likely remedy tier |
|---|-------------|------------------------|--------------------|
| H1 | JSON blueprint authoring | large `tool_use.input` on insert/update calls; errors mentioning concept/role/ref; re-authoring | offline generator (P-off), then docs |
| H2 | Structure → make → verify → scaffold chain | repeating trigram `alter_structure → alter_nodes MAKE → get_concept_details` | docs (`make:true`) or composite tool (S) |
| H3 | Bulk instance creation (N similar nodes) | many near-identical `update_node ADD/CHILD` or a truncated big insert | P-off generator emitting top-level-array file |
| H4 | Discovery reads | `get_project_structure`, `print_node deep=true`, `get_concept_details` with huge results | response post-processor (P-off) or new `filter`/`fields` params (S) |
| H5 | Validate → fix → validate loop | `check_root_node_problems` repeated ≥3× on the same root | docs (`autoApplyQuickFixes`) or online script (P-on) |
| H6 | Reference wiring after bulk insert | `print_node` shallow → many `SET/REFERENCE` | P-on script or better name-resolution docs |
| H7 | Skill reading | many `Read` calls into `.agents/skills/**`, some files read twice | skill restructuring, not scripts |
| H8 | Stale runtime | `descriptorStatus: hollow`, `runtime_stale`, followed by `reload_all` + retry | S (self-heal) or docs |

## 3. Script taxonomy, format and conventions

### 3.1 Four remedy tiers and the decision rule

Apply in this order; stop at the first that fits.

1. **D — Documentation fix.** An existing tool option, batch form, or skill rule already
   covers the chain and the worker did not use it. Fix `SKILL.md`, the reference file, or the
   tool description. Zero runtime cost, zero drift.
2. **S — Server-side composite tool (Kotlin, `plugins/mcp-tools`).** The chain is generic
   (project-independent), deterministic, and benefits from running inside one model-access
   command or from runtime state only the server has (make status, descriptor status,
   reload). Precedent: `CREATE_CONCEPTS make:true`, `scaffold_editor` self-heal,
   `autoApplyQuickFixes`.
3. **P-off — Offline Python script in `<skill>/scripts/`.** Deterministic text/JSON
   transformation with no need to talk to MPS: build a blueprint file from a compact spec,
   split a blueprint into staged inserts, expand a table of N instances into a bulk-insert
   array, reduce a large tool response to the fields the agent needs, diff two
   `print_node` outputs. Works in every runtime; the agent passes the resulting file path to
   the tool.
4. **P-on — Online Python script in `<skill>/scripts/`** using the shared client.
   Deterministic, multi-call, but project-specific, exploratory, or loop-heavy
   (validate-until-clean with a cap, wire references by name across a model, dump-and-filter
   a whole module). Only when S is not justified (rare, project-local) and D does not apply.
5. **T — Template asset in `<skill>/assets/`.** The shape recurs but each step needs
   judgment. Annotated skeleton (`# CUSTOMIZE:` markers) the agent copies and edits —
   a Python skeleton or a JSON blueprint family. Today's `json-blueprints.md` files are the
   prose version of this tier; move the ones agents copy verbatim into `assets/` as real
   files so they can be referenced by path.

### 3.2 Layout inside a skill

```
<skill>/
  SKILL.md                 # gets a "## Scripts" section: name, one-line purpose, example call
  references/*.md
  scripts/                 # exact-run; argparse; --help; stdlib only; JSON to stdout
    <verb>_<object>.py
  assets/                  # copy-and-customize; never executed in place
    <name>.template.py
    <name>.blueprint.json
```

Shared library (one copy, in the entry-point skill):

```
mps-mcp-workflow/scripts/mps_mcp_client.py     # Streamable HTTP JSON-RPC client
mps-mcp-workflow/scripts/mps_json.py           # blueprint helpers: node(), ref(), concept FQN checks, size guard, staged split
```

Other skills' scripts import these via a relative `sys.path` insert (`../../mps-mcp-workflow/scripts`)
so the installed layout under `.agents/skills/` or `.claude/skills/` works unchanged.

### 3.3 Script contract (P-off and P-on)

- Python ≥ 3.9, standard library only (`argparse`, `json`, `urllib.request`, `pathlib`). No pip.
- `--help` documents purpose, inputs, outputs, and the MCP tools it calls (if any).
- Inputs: a compact spec file (JSON or a tiny YAML-free DSL) or CLI flags. Never require the
  agent to paste large JSON on the command line.
- Outputs: **compact JSON summary to stdout** (what the agent needs for its next decision:
  refs, counts, ok/error), **full payloads to a file** whose path is printed. This is the
  token discipline that makes scripts pay off.
- Exit codes: 0 ok, 2 usage, 3 MCP error (with the server's error envelope echoed), 4 MPS
  unreachable (with the URL tried and the fix: start MPS, enable MCP server, set `MPS_MCP_URL`).
- P-on scripts read `MPS_MCP_URL` (default `http://localhost:64343/stream`) and accept
  `--project-path` to forward the host project selector; they perform `initialize` →
  `notifications/initialized` → `tools/call`, honour `Mcp-Session-Id`, and verify the tool
  exists via `tools/list` before calling (gives a clear message on rename).
- Idempotence where possible (`--dry-run` maps to the tools' `dryRun`).
- Each script has ≥1 example in `SKILL.md` and is exercised by the drift test (3.5).

### 3.4 Candidate scripts (to be confirmed by the study, not built first)

| Skill | Script | Tier | Replaces |
|-------|--------|------|----------|
| mps-mcp-workflow | `mps_mcp_client.py` | lib | — |
| mps-node-editing | `spec_to_blueprint.py` (compact spec → blueprint file, size-guarded, staged split) | P-off | hand-authored JSON, truncation retries |
| mps-node-editing | `table_to_bulk_insert.py` (CSV/JSON rows → top-level array with name placeholders) | P-off | N × `ADD/CHILD` |
| mps-node-editing | `wire_references.py` (name→ref resolution over a model, batch `SET/REFERENCE`) | P-on | print-shallow + many SET calls |
| mps-aspect-structure-concepts | `concepts_spec_to_create_concepts.py` (mini-DSL → `CREATE_CONCEPTS` params) | P-off | verbose params, FQN typos |
| mps-language-analysis | `summarize_structure.py` (reduce `get_project_structure`/`get_concept_details` dumps) | P-off | 20–50 KB reads |
| mps-language-analysis | `dump_language.py` (concepts + aspects present → one JSON, cached to file) | P-on | repeated discovery calls |
| mps-mcp-workflow | `validate_until_clean.py` (check → autoApply → re-check, capped; summary only) | P-on | H5 loop |
| mps-baselanguage | `java_to_blueprint_check.py` (pre-flight Java snippet for unresolvable stubs) | P-off | parse_java retries |
| mps-tests | `tests_skeleton.template.py` | T | — |
| mps-aspect-editor | `editor_cells.blueprint.json` family | T | — |

### 3.5 Packaging and drift control

- **Packaging check**: confirm the plugin build copies `resources/**/scripts/*.py` and
  `assets/*` into the JAR (module resource patterns / build script). Add a unit test that
  lists the skills resource tree and asserts at least one `scripts/` entry exists.
- **Schema drift test** (extend `McpIntegrationTestBase`): for every `scripts/*.py`, run
  `--help`/`--list-tools` in a subprocess to obtain the tool names and parameters it uses;
  assert each exists in the live registry with those parameters. Fails the build on rename.
- **Functional smoke**: run every P-off generator on its bundled example spec and feed the
  result to the corresponding tool with `dryRun=true` in the integration test project.
- **Version stamp**: scripts carry `MCP_TOOLS_VERSION_TESTED = "<plugin version>"`; the
  client prints a warning when `tools/list` reports a different server version.
- **Owner**: whoever changes a tool signature must update scripts in the same commit
  (`.agents/conventions.md` API-change policy applies).

## 4. Strategy to find the hotspots

### 4.1 Instrumentation (two independent sources)

**A. Server-side call log** (small Kotlin change in `plugins/mcp-tools`): in the common
tool wrapper, when system property `mps.mcp.calllog` (or a registry key) points to a file,
append one JSON line per call:

```json
{"ts":"...","tool":"mps_mcp_update_node","op":"ADD/CHILD","argsBytes":1834,"respBytes":612,
 "ms":140,"ok":true,"error":null,"project":"<base dir>","client":"claude-code/1.x"}
```

Fields: tool, operation/kind when present, argument and response sizes, duration, ok/error
code, client info from `McpCallInfo`. Nothing model-specific; safe to leave in the product
behind the flag. This is ground truth for frequency, latency, error rate and payload size.

**B. Worker transcript**: run the worker as a headless process, not as an in-context
subagent, so per-message token usage is recorded:

```
claude -p "$(cat worker_prompt.md)" --output-format stream-json --verbose \
  --max-turns 400 > runs/<scenario>-<run>-worker.jsonl
```

The stream contains every `tool_use` (name, full input), every `tool_result` (full content),
and `usage` per assistant message (input, output, cache read/write tokens). For Junie or
Copilot use their equivalent session export; if none exists, source A alone still yields
frequency, size and error metrics.

### 4.2 Metrics (all three dimensions, per scenario run)

Tokens: total input/output/cache; output tokens inside `tool_use.input` (JSON authored);
bytes of `tool_result` per tool; bytes read from `.agents/skills/**` via `Read`.
Turns: total tool calls; calls per tool; distinct chains (bigrams/trigrams of tool+op);
wall-clock; server `ms` per tool.
Reliability: error responses per tool; error→retry pairs (same tool within 2 calls);
validation loops (`check_root_node_problems` repeats on the same root); stale-runtime
incidents; final task success (rubric per scenario).

### 4.3 Hotspot score

For each recurring chain *C* (n-gram of tool+op that occurs ≥3 times across runs):

```
score(C) = occurrences × (avg tokens per occurrence) × determinism × (1 + retry_rate)
```

`determinism` ∈ {1.0 next args fully derivable from previous response; 0.5 partly; 0 needs
judgment}. The observer assigns determinism by inspecting 2–3 instances of the chain; this
judgment is the part that needs a capable model. Rank by score; take the top 10.

### 4.4 Classification rubric (per hotspot)

1. Does an existing option/batch/shortcut already cover it? → **D**. Cite the tool
   description or skill line the worker should have followed; propose the wording change.
2. Is it generic + deterministic + transactional/runtime-dependent? → **S**. Sketch the
   composite tool signature.
3. Is it a pure text/JSON transformation? → **P-off**. Define the compact input spec.
4. Deterministic multi-call, project-specific or loop-heavy? → **P-on**.
5. Recurring shape, judgment per step? → **T**.
Record: evidence (run ids, step ranges), estimated saving (tokens, calls, retries), remedy,
owner skill, risk (drift, atomicity).

### 4.5 Run matrix and A/B

- Baseline: 8 scenarios (section 5) × 2 runs × 2 worker models (Sonnet + one weaker model)
  = 32 runs. Fresh empty MPS project per run (`mcp_probe/`-style scratch project), fixed
  names, no roll-back.
- Analysis: `analyze_runs.py` (this study's own P-off script) merges A and B, computes 4.2,
  emits chains ranked by 4.3, and a per-run summary. Observer applies 4.4.
- Treatment: implement the top remedies; update skills.
- A/B: re-run the same 32; success = ≥30 % fewer tool calls **and** ≥25 % fewer
  context tokens on treated scenarios with no drop in task success. Report per remedy so
  the useless ones can be deleted rather than maintained.

## 5. Scenario set

Each worker prompt is written the way a developer would ask — short, goal-oriented, fixed
names, explicit "done" criteria — so the natural inefficiencies show. All start from an
empty, initialized project with MPS running and MCP enabled.

| # | Scenario | Exercises | Expected hotspots |
|---|----------|-----------|-------------------|
| S1 | **Greenfield DSL** — language `mcp.study.recipes` with 6 concepts, 1 enum, editors, 2 constraints, 1 typesystem rule, 1 behavior method; solution `mcp.study.kitchen` with one model and 3 sample roots; clean check | structure chain, make/reload, scaffold, aspects, node editing | H1, H2, H8 |
| S2 | **Extend an existing language** — add a `Guard` concept and an intention to the `StateChart` language from `test_scenarios/StateChartScenario.md` (pre-built by a fixture run) | discovery (`search_concepts`, `get_concept_details`, `query_structure`), analysis skill, aspects on existing modules | H4, H7 |
| S3 | **Bulk model authoring** — populate a model with 40 `Recipe` roots from a provided CSV (name, servings, 3–6 steps, cross-references to other recipes) | bulk insert, name placeholders, staged construction, batch SET/REFERENCE | H3, H6, H1 |
| S4 | **Refactor + migrate** — rename `Recipe.servings` → `portions`, change a child cardinality, write a migration, fix all instances and references | `RENAME_*`, `UPDATE_CONCEPT_*`, migrations skill, `FIX_REFERENCES`, validation | H2, H5, H8 |
| S5 | **Fix a broken model** — a fixture model with 12 injected problems (dangling refs, missing required children, bad property values); make it clean | `check_root_node_problems`, quick-fixes, intentions, surgical updates | H5 |
| S6 | **Generator to BaseLanguage** — root mapping + reduction rules producing a Java class per `Recipe`; make; confirm `source_gen` output; write a behavior method via `parse_java_and_insert` and the same via JSON AST | generator skill, quotations, baselanguage two paths, make | H1, H2 |
| S7 | **Tests + run configuration** — `@tests` model with 3 NodesTestCases and 1 EditorTestCase; run via run configuration; report results | facets, `@tests` stereotype, `mps-tests`, `create_run_configuration` | H2, H7 |
| S8 | **Onboard an unknown project** — explore the pre-built StateChart project and produce `.agents/skills/statechart-dsl/SKILL.md` via `mps-dsl-memory` | read-heavy discovery, `get_project_structure`, `print_node`, summarisation | H4, H7 |

Run order matters only for S2/S8 (need the StateChart fixture) and S4/S5 (need S1/S3 output
or a fixture). Use fixtures rather than chaining live runs so each run is independent.

## 6. Prompts

### 6.1 Observer (Opus) — orchestrates, does not narrate-collect

```
You are running a measurement study, not a development task. Your goal is to find the
recurring, deterministic sub-workflows in agent-driven JetBrains MPS development (via the
mps_mcp_* MCP tools) and decide, for each, the cheapest remedy: documentation fix,
server-side composite tool, offline Python script, online Python script, or template asset.

Ground rules
- You do NOT perform the MPS task yourself and you do NOT tell the worker why it is being run.
- Evidence comes from two sources only: the worker's stream-json transcript and the MPS MCP
  server call log at $MPS_MCP_CALLLOG. Never rely on the worker's own summary.
- Every claim in your report cites run id + step range.

Procedure
1. Preconditions: verify MPS is running with MCP enabled (`mps_mcp_list_open_projects`), the
   scratch project at $PROJECT is empty and initialized, and $MPS_MCP_CALLLOG is writable.
   Record the tool inventory with `tools/list` (names + parameter names) to runs/inventory.json.
2. For scenario $SCENARIO, run $N worker runs per model in $MODELS, each in a fresh scratch
   project, using this exact command (do not paraphrase the worker prompt):
     claude -p "$(cat scenarios/$SCENARIO/worker_prompt.md)" --model $MODEL \
       --output-format stream-json --verbose --max-turns 400 \
       > runs/$SCENARIO-$MODEL-$RUN-worker.jsonl
   After each run, copy the call log slice to runs/$SCENARIO-$MODEL-$RUN-server.jsonl and
   evaluate the scenario's `done` criteria by inspecting the project with read-only
   mps_mcp_* calls; record pass/fail with evidence.
3. Run `python3 scripts/analyze_runs.py runs/` to produce per-run metrics, tool histograms,
   ranked chains (n-grams of tool+op), error→retry pairs, validation loops, skill-file reads,
   and token accounting (authored JSON vs tool results vs skill reads).
4. For each of the top 10 chains, open 2–3 concrete instances in the transcripts and assign
   determinism ∈ {1.0, 0.5, 0}. Recompute the score. For each hotspot apply the rubric in
   order: D (existing shortcut missed → quote the tool description / skill line) → S (generic,
   transactional, runtime-dependent → sketch Kotlin tool signature) → P-off (pure JSON/text
   transform → define compact input spec and output) → P-on (project-specific multi-call →
   list the exact tool sequence) → T (judgment per step → skeleton with CUSTOMIZE markers).
5. Write HOTSPOT_REPORT.md: baseline metrics table; ranked hotspots with evidence, remedy,
   owning skill, estimated saving, drift risk; list of documentation defects found (tool
   descriptions or skills that were wrong, ambiguous, or unused); and for every proposed
   script its name, location (<skill>/scripts or /assets), input contract, output contract.
   Do not implement remedies in this run.
```

### 6.2 Worker prompt template — one per scenario (example: S1)

```
You are working in the current folder, which contains an empty JetBrains MPS project. MPS is
running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: create a small DSL for cooking recipes and use it.

1. Language `mcp.study.recipes` with concepts: Recipe (root; name, servings:int,
   difficulty:Difficulty, steps: Step[1..n], seeAlso: Recipe[0..n] ref), Step (text, minutes:int,
   uses: Ingredient[0..n]), Ingredient (root; name, unit:Unit), enums Difficulty {EASY, MEDIUM,
   HARD} and Unit {G, ML, PIECE}, plus a Cookbook root that contains Recipe references.
2. Editors for all concepts (readable, not just scaffolds); a constraint that Recipe.servings
   is ≥ 1; a constraint that a Recipe cannot reference itself in seeAlso; a typesystem check
   that a Step with 0 minutes reports a warning; a behavior method Recipe.totalMinutes().
3. Solution `mcp.study.kitchen`, model `mcp.study.kitchen.samples` using the language, with
   3 Ingredients, 3 Recipes (each 2–4 steps, cross-referenced via seeAlso) and 1 Cookbook.
4. Done when: the language module builds cleanly, `mps_mcp_check_root_node_problems` reports
   no errors on any root in the samples model, and you have listed the created modules/models.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
```

Do **not** add reporting requirements to worker prompts (they change behaviour and cost
tokens). The transcript is the report.

### 6.3 Analysis helper (P-off, part of the study itself)

`scripts/analyze_runs.py` — inputs: a `runs/` directory of `*-worker.jsonl` and
`*-server.jsonl`; outputs: `metrics.csv` (per run), `chains.json` (n-grams with counts and
avg tokens), `hotspots.md` (top-N with example step ranges). Stdlib only. This is the first
script to write, and it dogfoods the contract in 3.3.

## 7. Quick wins available before the study

- `mps-mcp-workflow/references/mcp-tools-index.md` claims completeness but omits
  `mps_mcp_search_root_node_by_name`, `mps_mcp_parse_java_and_insert`,
  `mps_mcp_create_run_configuration`; regenerate the index from the tool registry (a P-off
  script over `tools/list` output — cheap and removes one drift source permanently).
- Add the server-side call log flag now; it is useful for support cases independent of the study.
- Decide the packaging check for non-`.md` skill resources now, so the first script does not
  silently fail to ship.

## 8. Open questions and risks

- Windows developers: `python3` may be absent; scripts should also run as `python` and the
  skill text must say what to install.
- Junie's shell: confirm it can run local Python and read files the agent wrote; otherwise
  Junie benefits only from D, S and T tiers.
- Auth: confirm the IntelliJ MCP server on `/stream` requires no token in the versions you
  ship; if a token appears, the client needs `MPS_MCP_TOKEN`.
- Scope creep: the study will surface tool-description defects faster than script
  opportunities; keep a separate "docs defects" list so they get fixed without waiting for the
  scripting work.
