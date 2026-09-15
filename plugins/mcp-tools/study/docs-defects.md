# Documentation defects found during the skill-script automation study

Kept separately from the hotspot work (study section 8) so fixes are not blocked on scripting.
Each entry: where, what is wrong, evidence (run id + step, or commit), status.

| # | Where | Defect | Evidence | Status |
|---|-------|--------|----------|--------|
| D1 | `mps-mcp-workflow/references/mcp-tools-index.md` | Study 1.2(4) claims the index omits `search_root_node_by_name`, `parse_java_and_insert`, `create_run_configuration`. | All three present as of commit fc28c2636dce (verified 2026-09-15). | already fixed |
| D2 | `test_scenarios/StateChartScenario.md` | Contains reporting requirements ("keep ongoing notes", "final report"), which study 6.2 forbids in worker prompts. | file header | not a worker prompt; use as fixture builder only |
