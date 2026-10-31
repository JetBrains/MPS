# Analysis

## Metrics (per run, `metrics.csv`)
Tokens: input, output, cache_read, cache_write (cache_read ≈ turns × fixed context). Since D50
M-0, all four come from the `result` events plus subagent messages (see `harness.md`). The
`*_events` columns keep the old per-event sums. Stream-json repeats a message's usage on every
content block, so the old sum inflates `cache_read` 1.5–3.4×. Because `output_tokens` per message
is a streaming placeholder, the old sum under-counts `output_tokens` 10–120× (median 43× over 43 runs). Reports before M-0
quote the old sums (e.g. 27 M cache read for a 180-turn run). Turns/calls: turns, tool_calls,
mps_calls, bash_calls, skill_reads(+bytes),
temp_file_envelopes, bash_temp_result_reads, bash_blueprint_writes. Payload: authored_input_chars,
mps_authored_chars, tool_result_bytes. Skill navigation: skill_msgs, skill_loads,
skill_greps_{catalog,skill,file}, rereads, rereads_after_compaction, index_hops, compactions,
compaction_s, first_compaction_step, plus `phases.csv` per aspect phase (definitions in
`harness.md`). `rereads*` count skill files only (comparable with rounds 10–20); temp result files
touched again after a compaction are `temp_rereads_after_compaction` (calls: a `Read` or a Bash
command, heredoc included, naming an `mps-node-<n>.json` its session first touched before that
compaction) and `temp_reread_bytes_after_compaction` (their result bytes); `navigation.json`
lists them as `temp_rereads`. `skill_tool_bytes` (A7) is what the `Skill` tool injected: the
skill body arrives as a synthetic user text event after the 33-byte "Launching skill: …" result,
so `skill_read_bytes` (Read/Bash/Grep/Glob only, unchanged, as is `phases.csv`) misses it
(r19 S5-sonnet-1: 0 read, 22,092 injected). Report both; their sum is the skill text the worker
received. Reliability: errors, retries, validation_loops,
stale_incidents, server_errors, task pass (from the evaluator). Since A2, `retries` counts per
session and per parallel batch: one per tool with an error in a batch that the session calls again
in one of its next two batches (a batch of five rejected calls is one retry, not five), so it is
lower than in reports written before A2 (r18 S1-sonnet-1: 8 → 5; r19 S8-sonnet-1: 6 → 2).
API retries (A5): `api_retries` counts the transcript's `system/api_retry` events, all of them,
since they carry no session attribution (a subagent's retries count too); `api_retry_delay_s` is
their declared backoff (`retry_delay_ms` summed); `api_stall_s` is the timestamp gap around each
retry cluster (an upper bound on the time lost, since it includes the final attempt's own latency),
and is far larger than the backoff (r18 S1-opus-1: 9 retries, 21 s declared, 520 s stalled).
`wall_s` includes the stalls, so compare `wall_s - api_stall_s` across rounds before calling a
wall-clock change a regression; `errors.json` lists the clusters (`api_retry_clusters`, with the
step they preceded). Junie transcripts have no api_retry events and no per-step timestamps, so all
three are 0.
Unloaded schemas (A7): `unloaded_schema_calls` counts `mps_mcp_*` calls on a tool whose schema no
`ToolSearch` of that session had returned or `select:`-ed by the previous batch (a compaction does
not unload; a subagent starts empty), and `unloaded_schema_errors` those of them that failed; per
tool in `tools.json` as `unloaded_calls`. A blind call is often accepted, so errors are the cost and
calls the exposure (r19 sonnet: 71 calls, 23 errors; r19 S8-sonnet-1: 26 of 26). Both are **empty**
when a run has no `ToolSearch` call at all. That is a heuristic: the transcript does not say whether
the host defers schemas, and one that does not (or Junie) would count every call. An empty cell
therefore means "not measurable", not 0; a deferring host whose worker never searched would also
read empty, so check `mps_calls` and the error envelopes of such a run before calling it clean.
Lifecycle: `welcome_rejections` (pre-dispatch rejections with an empty project listing — the
Welcome screen, where no `projectPath` could have helped; 0 is the good value everywhere, S10
included: the first S10 run read the skill and never probed blind. One is the acceptable cost of
discovering the state; more than one is waste), `close_project_calls`, `modal_blocked`.
`arg_validation_errors` counts `No argument is passed for required parameter 'x'` results: the
caller omitted a required parameter. These reach the server and are in the call log, so they are
NOT subtracted from `expected_server_mps_calls` — only project-resolution rejections are
(lesson 34). Two of them in round 8 were the single largest recurring retry cause, so the column
doubles as a hotspot signal, not just an accounting correction.
`server_call_surplus` now warns in both directions — negative means the slice is missing calls the
transcript shows (unlisted project path, MPS restart mid-run, call log off for part of it), i.e. an
evidence gap. Lifecycle scenarios (`S10*`) are exempt both ways: they span several projects by
design, and their server slice is kept only because the run meta lists `relatedProjects`.

### Planned: language-evolution columns (`MG_*`, S25–S29)

Not in `families.py` yet; implement them against the first rehearsal transcripts, with unit tests like
the `GP_*` ones. Each S25–S29 `done_criteria.md` states the expected values. Definitions, revised
after the 2026-10-31 review:

| Column | Counts |
|---|---|
| `MG_deprecate_calls` | accepted `apply_intention` whose `intentionId` ends in `AddDeprecatedAnnotation_Intention`, plus accepted node writes whose input holds a `DeprecatedNodeAnnotation` |
| `MG_old_renames` | accepted `alter_structure` RENAME_* calls whose new name ends in `_old` |
| `MG_structure_deletes` | `alter_structure` UPDATE_CONCEPT_PROPERTY with a blank or missing `dataType` and UPDATE_CONCEPT_CHILD / UPDATE_CONCEPT_REFERENCE with a blank or missing `targetConcept` (the delete forms), plus node deletions of declarations in a `.structure` model; rejected ones included |
| `MG_tighten_in_place` | accepted UPDATE_CONCEPT_CHILD / UPDATE_CONCEPT_REFERENCE that make a role stricter (`optional: false`, or `multiple: false` on a multiple role) when the role, after following the run's earlier RENAME_* calls back to its fixture name, is a pinned fixture role |
| `MG_virtual_package_writes` | accepted writes setting `virtualPackage` on a concept declaration (SET PROPERTY, or a blueprint property) |
| `MG_substitute_menu_writes` / `MG_substitute_menu_legacy` | accepted node writes whose input holds a `SubstituteMenu` with a `MenuTypeDefault` child / node writes, rejected ones included, naming `SubstituteMenu_Default` |
| `MG_migration_models` | accepted `create_model` calls whose name ends in `.migration` |
| `MG_pure_scripts` / `MG_class_scripts` | accepted root inserts whose input holds `PureMigrationScript` / the `lang.migration` `MigrationScript` |
| `MG_move_child` / `MG_move_ref` / `MG_move_prop` / `MG_move_concept` | accepted node writes holding `MoveContainmentLink` / `MoveReferenceLink` / `MoveProperty` / `MoveConcept` |
| `MG_check_method_writes` | accepted writes replacing a `MemberPlaceholder` named `check`, or inserting a `MethodInstance` named `check` |
| `MG_migrate_manually_writes` | accepted node writes or parser inputs naming `MigrateManually` |
| `MG_set_id_writes` | parser inputs containing `setId(` and node writes whose input holds an `InstanceMethodCallOperation` to `setId` |
| `MG_sync_version` | `update_module` SYNC_VERSION calls |
| `MG_runtime_stale_hits` | results carrying `runtimeStale: true` (one is expected: a SYNC_VERSION before the MAKE reports it by design; more mean a migration attempted on an unbuilt language) |
| `MG_run_check` / `MG_run_apply` / `MG_apply_with_errors` | `run_migrations` CHECK calls / APPLY calls / APPLY answers with `status: FINISHED_WITH_ERRORS` |
| `MG_console_runs` | `run_console_command` calls |
| `MG_console_write_cmds` | console runs whose command (the preceding `insert_console_command_from_json` blueprint or recall) holds a `VisitAllOperation`, an `AssignmentExpression`, or a list add operation; the run call itself carries no command text |
| `MG_sandbox_node_writes` | accepted `update_node` / `update_root_node_from_json` / non-MAKE `alter_nodes` calls on a node of the cell's sandbox model |
| `MG_find_instances` | `query_nodes` FIND_INSTANCES calls |
| `MG_mps_migration_dumps` | reads of nodes of `jetbrains.mps.lang.migration*` models (hunting ids the skill should supply) |
| `MG_publication_probe` | before the first structure write: whole-project `get_project_structure` calls, or searches naming `BuildProject` / `BuildMps_Language` / read-only |
| `MG_status_outcome` | S29 only: the outcome class of its criterion 2 (`published`, `in-place`, `console`, `asked`) |

## Chains and scoring
`chains.json` ranks n-grams of `tool[:op]` by total chars. Since A2 they are taken per session over
the batch-collapsed sequence (a parallel batch contributes each distinct key once, in call order),
and an occurrence `count`s only when its n items come from n different batches, i.e. n turns.
N-grams inside one batch are tallied as `parallel` (a column after `count` in `hotspots.md`): six
parallel `print_node` calls are `print_node -> print_node` count 0, parallel 5. `count + parallel`
does **not** reproduce the pre-A2 count: a raw n-gram straddling a batch boundary that is not a
collapsed occurrence (`a->b->c` in `[a,a,b][c]`) is in neither, and a repeated key collapses
(`a->a->a` in `[a,a,a][a,a,a]`: old 4, now count 0, parallel 2). Chains that were mostly parallel
drop in rank; that is not a behaviour change. A chain stays listed when either `count` or
`parallel` reaches `--min-occurrences`, but ranking uses `count` (score = count-based chars), so a
parallel-only chain sorts to the bottom instead of vanishing. Filter to those containing `mps_mcp`,
group into families (2026-09: A temp-file follow-up reads; B blueprint file → insert; C per-root
validation; D skill read → call; B′ ad-hoc Python for result shaping). `scripts/families.py` counts
them per run into `families.tsv` (every column defined in its docstring); C is its
`C_root_after_clean_model`: a node-scope `check_root_node_problems` after a container check with
nothing left to read (0 errors, 0 warnings, no model-/module-level messages), no write in between.
`C_after_summary` is a node-scope check after a container check whose `perRoot` counts are non-zero,
no write in between: reading the text, D83, not distrust. `C_after_node_sample` takes out of it the
re-checks of a row whose `messages` gave every text but only some nodes (a `count > 1` sample before
D119, `moreNodes` after): finding the nodes, D119. Each has a `_batches` column (distinct
`message.id`s). Reviewer assigns determinism
per family from 3 instances: 1.0 next args derivable from previous response; 0.5 partly; 0 judgment.
`score = occurrences × avg tokens × determinism × (1 + retry_rate)`; ALSO rank by avoidable turns
(each ≈ fixed context tokens) — with lazy tool schemas and CLAUDE.md the fixed context was ≈ 150 K
tokens per turn, so turn count beats payload size as the lever.

## Rubric (first fit)
D docs fix (existing option/shortcut missed — quote the line to change) → S server-side composite
tool or parameter (generic, deterministic, benefits from server state — sketch the signature) →
P-off offline script (pure text/JSON transform; define input spec + stdout summary + file output) →
P-on online chain script (project-specific multi-call; list the exact tool sequence) → T template
asset (judgment per step; `# CUSTOMIZE:` markers).
Watch for behaviour that documentation cannot fix (e.g. re-validating every root after a clean
model-level check "to be sure"): shape it with envelope fields (`rootsChecked`) instead.

## Evaluating a run
Give every evaluator this section with the scenario's `done_criteria.md`, so two evaluators reach a
verdict by the same route. Calls go through `scripts/mcp_call.py`, read-only, `projectPath` on each.
- **Aspects** (editor, constraints, typesystem, behavior, intentions): `get_concept_details` returns
  structure only, at every `detail` level. List the aspect model's roots with
  `get_project_structure(startingPoint=<lang>.<aspect>, includeRootNodes=true)`, then read each
  root with `print_node(format="PLAIN TEXT")`.
- **Reading nodes**: a JSON `print_node` shows one level, so each child (a Step, a reference
  wrapper) needs its own call. PLAIN TEXT shows the whole subtree as the editor renders it, but no
  `targetReference`; use it for text and layout and JSON for reference targets.
- **Call shapes**: `print_node` and `check_root_node_problems` take the node, root or model as
  `nodeReference` (`nodeRef` and `modelReference` are rejected). `query_structure` takes
  `operation` plus a `parameters` object, e.g.
  `{"operation": "GET_ENUMERATION_LITERALS", "parameters": {"enumerationRef": "<qualified name>"}}`.
  Criteria may abbreviate a call as `OP(arg=…)`; send the real shape.
- **References**: identify a target by the root its `targetReference` resolves to. A smart-reference
  wrapper's displayed name can be stale or ambiguous.
- **Descriptors**: `get_concept_details(languageRefs=<lang>)`; an entry carries `descriptorStatus`
  only when hollow, so pass = no entry has it (S1 criterion 6).
- **Problems**: a model-scope `check_root_node_problems` lists only the roots that have problems.
  "0 errors" counts errors only; warnings do not fail a criterion unless it names them. Name a model
  by its model reference when a module has the same name (`…sandbox` is both).
- **"Builds cleanly"**: a read-only evaluator cannot run make. The criteria test it as "every
  aspect model has 0 errors and no descriptor is hollow"; report that, not a build result.
- **Names**: pass a qualified name or a node reference, never a bare short name. A short name
  resolves by name across the whole repository, java stubs included (`x` hit a jsvg class `x`).

**Verdict.** `taskPass` follows the written criteria. When the criteria pass but the prompt's intent
is plainly unmet, or the reverse, keep `taskPass` as the criteria give it and add `observerNote` to
the meta: one sentence naming the gap and the eval report section. Then fix the criteria for the
next round; never re-score a past run silently.

## Report template (`reports/hotspot/`)

The baseline is [`../reports/hotspot/baseline.md`](../reports/hotspot/baseline.md). A round is `reports/hotspot/round-NN.md`. The index of what was written up is [`../reports/index.md`](../reports/index.md).
1 Baseline metrics (table + fixed-context floor from `inventory.json` and a SMOKE run) · 2 Ranked
hotspots (family, occurrences, payload, determinism, retry, avoidable turns, tier, `run:step`
evidence) · 3 Hypotheses (confirmed / refuted / unmeasured) · 4 Defects (docs vs tool behaviour) ·
5 Remedies (tier, owner, contract, saving, risk; say which candidates have NO evidence).
A/B success: ≥ 30 % fewer tool calls AND ≥ 25 % fewer context tokens on treated scenarios, no drop
in pass rate; report per remedy; delete what does not pay.
