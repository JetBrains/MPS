# Analysis

## Metrics (per run, `metrics.csv`)
Tokens: input, output, cache_read, cache_write (cache_read ≈ turns × fixed context; 27 M for a
180-turn run). Turns/calls: turns, tool_calls, mps_calls, bash_calls, skill_reads(+bytes),
temp_file_envelopes, bash_temp_result_reads, bash_blueprint_writes. Payload: authored_input_chars,
mps_authored_chars, tool_result_bytes. Reliability: errors, retries, validation_loops,
stale_incidents, server_errors, task pass (from the evaluator).
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

## Chains and scoring
`chains.json` ranks n-grams of `tool[:op]` by total chars. Filter to those containing `mps_mcp`,
group into families (2026-09: A temp-file follow-up reads; B blueprint file → insert; C per-root
validation; D skill read → call; B′ ad-hoc Python for result shaping). Reviewer assigns determinism
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

## Report template (`HOTSPOT_REPORT.md`)
1 Baseline metrics (table + fixed-context floor from `inventory.json` and a SMOKE run) · 2 Ranked
hotspots (family, occurrences, payload, determinism, retry, avoidable turns, tier, `run:step`
evidence) · 3 Hypotheses (confirmed / refuted / unmeasured) · 4 Defects (docs vs tool behaviour) ·
5 Remedies (tier, owner, contract, saving, risk; say which candidates have NO evidence).
A/B success: ≥ 30 % fewer tool calls AND ≥ 25 % fewer context tokens on treated scenarios, no drop
in pass rate; report per remedy; delete what does not pay.
