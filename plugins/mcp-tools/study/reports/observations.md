# Running observations (observer notes feeding HOTSPOT_REPORT.md)

Each entry cites run id and, where possible, step range. Numbers from `analyze_runs.py`.

## After S1 × {opus, sonnet} (2026-09-15)

| metric | S1-opus-1 | S1-sonnet-1 |
|---|---|---|
| turns / wall-clock | 181 / 23 min | 148 / 22 min |
| tool calls (MCP) | 173 (90) | 135 (71) |
| Bash / Read / Write | 73 / 0 / 0 | 3 / 31 / 6 |
| skill reads (bytes) | 22 (130 KB) | 9 (160 KB) |
| MCP temp-file envelopes → follow-up read | 32 → 33 Bash reads | 23 → Read |
| authored tool-input chars (MCP only) | 90 K (26 K) | 70 K (26 K) |
| tool_result bytes | 254 KB | 444 KB |
| error envelopes / retries | 2 / 2 | 5 / 2 |
| check_root_node_problems calls | 16 | 8 |
| cache-read tokens (sum over turns) | 27.1 M | 27.5 M |
| cost | $14.96 | $5.83 |
| task | PASS 6/6 | PASS 6/6 |

- **O1 — temp-file envelopes are the top chain (H4 confirmed early).** `print_node → Read`,
  `get_concept_details → Bash`, `get_project_structure → Read` dominate `chains.json`. Every
  MCP result over 20 KB (and every `print_node`/`get_project_structure`, regardless of size) is
  a temp-file path, costing one extra round trip plus the whole file in context. 32 of 90 MCP
  calls in S1-opus-1 returned a path. Remedy candidates: S (inline when small, `fields`/`filter`
  params, or a `summary` mode) and P-off (post-processor that reduces the file to what the agent
  asks for). Evidence: S1-opus-1 steps ~30–170, S1-sonnet-1 throughout.
- **O2 — both models reimplement the same modelling trick.** 0..n references become wrapper
  concepts `RecipeRef`/`IngredientRef` with a smart reference. Correct, but each model discovered
  it independently through skill reading. A documented pattern (T: blueprint asset) or a
  `CREATE_CONCEPTS` option for "reference list" would remove the discovery cost. Evidence:
  S1-opus-1 and S1-sonnet-1 structure phases.
- **O3 — blueprint authoring via files, in two styles.** Opus writes JSON with Bash heredocs to
  the temp dir (9 writes, one `/tmp` rejection — docs defect D3); Sonnet uses the Write tool
  (6 writes). Blueprint JSON is authored as output tokens either way (~26 K chars of MCP input
  per run). H1 confirmed as a cost; the size is similar for both models.
- **O4 — sonnet hit more envelope errors** (5 vs 2), including `Concept assignability error`
  and a truncated JSON (`EOFException … column 1254`), and self-reported two baseLanguage AST
  defects (`VariableReference` vs `ForEachVariableReference`, empty constructor body) that it fixed
  afterwards. H1 retry loop evidence; candidate for `mps-baselanguage` docs (D) or a pre-flight
  P-off check.
- **O5 — model-creation error on both runs**: `No suitable model root found in module
  'mcp.study.recipes' to create model 'mcp.study.recipes.structure'` — the worker tried to create
  the structure model that `create_module` already creates. Tool description / skill should say
  which aspect models a new language module already has. (D)
- **O6 — cache-read volume is the real token cost.** ~27 M cache-read tokens per run at ~150 K
  per turn: the fixed context (56 tool schemas via ToolSearch, CLAUDE.md, loaded skills) is paid
  on every turn, so *turn count* is the lever, not per-call payload. Any remedy is worth
  (turns saved × ~150 K) cache-read tokens.
- **O7 — skill loading differs by model**: opus `cat`s skill files (22 reads), sonnet uses
  Skill + Read (9 reads, larger files). Both read `mps-mcp-workflow` and 3–5 aspect skills.
  H7 partially confirmed; restructuring candidates after more runs.
- **O8 — validation loop is modest** (1 loop each, 16 vs 8 `check_root_node_problems`), lower
  than H5 expected for S1; S4/S5 are the scenarios designed to stress it.
- **O9 — same result quality, different price.** Both S1 runs pass 6/6 with near-identical
  modelling (smart-ref wrappers, validator + scope, one checking rule). Sonnet used 18 % fewer
  turns and 39 % of the cost; opus spent its extra turns on Bash-side file plumbing (O1, O3).
  Evaluators noted `servings >= 1` is a property validator only (does not flag existing bad
  values) in both runs — relevant for the S5 fixture (P7/P8 may need a checking rule to surface).
- **O10 — cross-project leakage between sibling runs (protocol defect, fixed by rule 9.10).**
  With S1-opus-1 still open, the S1-sonnet-1 worker's `list_open_projects` showed the finished
  opus project, and a `get_concept_details` call by plain name (`mcp.study.recipes.structure.
  Difficulty`, before its own enum existed) returned `unresolved … suggestions` carrying the
  *opus* project's concept references (`c:d10ad89a-…/…Recipe`), which the worker then read from
  the temp file. Only that one occurrence was found, so the run is kept in the baseline with a
  caveat rather than discarded. From S3 on, exactly one scratch project is open per run.
  Also a tool-behaviour defect: name-based suggestions are drawn from the shared repository,
  not the project selected by `projectPath` (see docs-defects D4).

## During S3 (2026-09-15)

- **O11 — per-root validation instead of per-model (H5 variant, tier D candidate).** S3-opus-1
  inserted the 40 recipes with 3 `insert_root_node_from_json` calls (top-level-array bulk insert:
  the shortcut *was* used), then called `check_root_node_problems` 50 times: once on the model
  (which already covers every root) and then once per root for all 48 roots "to be sure". The
  tool accepts an `SModelReference` and the worker knew it — so this is not ignorance of the
  option but a trust/verification habit; a remedy must make the model-level result *visibly*
  exhaustive (e.g. `rootsChecked: 48` in the envelope) rather than just document the option.
  ~48 avoidable round trips × ~150 K cache-read tokens each.
  Evidence: S3-opus-1 steps ~35–80.
- **O12 — model reference passed where a node reference is required**: `Node 'r:…(mcp.study.
  recipes.structure)' not found` — the worker used a model ref with a node-only tool (likely
  `print_node`). Reference-format confusion between `r:` (model) and node references; candidate for
  clearer error text naming the accepted kind (D). Evidence: S3-opus-1 error envelope 3.
- **O13 — the worker writes the study's candidate scripts itself, every run (H3 confirmed; P-off
  tier).** S3-opus-1's 25 Bash calls include 4 Python heredocs that transform `recipes.csv` into a
  top-level-array blueprint written under `$TMPDIR` (the `table_to_bulk_insert.py` candidate) and
  ~12 Python heredocs that load MPS temp-result files and compare/aggregate them against the CSV
  (the `summarize_*` / verify post-processor candidates). Each heredoc is authored as output
  tokens and debugged live (2 Python tracebacks among the 4 error results: `KeyError:
  'difficulty'`, a line-28 failure). Shipping tested scripts removes the authoring, the debugging
  turns and the variance between models; the file-path `childJson` convention already works
  (`insert_root_node_from_json` argsBytes ≈ 240 for 40 recipes). Evidence: S3-opus-1 Bash #10–#23.
- **O14 — headless workers leave state outside the project**: auto-memory files under
  `~/.claude/projects/-Users-vaclav-MPSProjects-mcp-study-proj-<run>/memory/` (S3-opus-1 Bash
  #24–#25) in addition to `~/.claude.json` entries. Added to the wrap-up cleanup (9.5). Also a
  study-validity note: memory does not carry across scratch projects (distinct project dirs), so
  runs stay independent.
- **O15 — S3 shows a 3.5× turn spread between models on an identical task.** S3-sonnet-1: 28 turns,
  4 min, 26 tool calls (11 MCP), 4 temp-file envelopes, one model-level `check_root_node_problems`,
  2 bulk inserts, then targeted `query_nodes FIND_INSTANCES` to count roots. It resolved the
  ambiguous `Pancakes` name by inserting everything first and wiring the one ambiguous reference
  afterwards with an explicit node reference. S3-opus-1: 100 turns, 12 min, 68 MCP calls, of which
  50 were validation and ~15 Bash post-processing checks. Same PASS (pending sonnet's evaluation).
  Consequence for the study: per-scenario variance between models is large, so remedies must be
  judged on the *chains they remove*, not on total turn deltas between models; and "verification
  habit" (O11, O13) is a behaviour to shape via tool envelopes (`rootsChecked`, counts in insert
  results), not via more documentation.
