# S7 done criteria (observer)

Fixture: recipes.tar.gz (passing S1 project).
1. Solution `mcp.study.recipes.tests` with model `mcp.study.recipes.tests@tests` exists, tests
   facet/languages configured (3 NodesTestCase roots, 1 EditorTestCase root).
2. A JUnit run configuration for the model exists (`mps_mcp_get_run_configurations` / IDE).
3. Observer re-runs the run configuration read-only: 4 tests, 0 failures.
Pass = all three hold.
