# Scenario set

Location: `plugins/mcp-tools/study/scenarios/<S>/worker_prompt.md` + `done_criteria.md`.
Fixtures are NOT kept as tarballs in git — regenerate them per `plugins/mcp-tools/study/fixtures/README.md`
(empty = initialised empty project; statechart = Projectxx5; recipes = a passing S1 project incl. `classes_gen`;
recipes-broken = recipes + `scenarios/S5/PROBLEMS.md`).

| # | Scenario | Fixture | Hypotheses |
|---|---|---|---|
| S1 | Greenfield DSL `mcp.study.recipes` + solution with 3 samples | empty-project | H1 blueprints, H2 make/scaffold, H8 stale |
| S2 | Extend StateChart with `Guard` + intention | statechart | H4 discovery, H7 skills |
| S3 | 40 recipes from `recipes.csv` (bulk, cross-refs, cookbook) | recipes (+ csv) | H3 bulk, H6 refs, H1 |
| S4 | Rename property, change cardinality, migration | recipes | H2, H5 validation, H8 |
| S5 | Fix 12 injected problems (`fixtures/PROBLEMS.md`) | recipes-broken | H5 |
| S6 | Generator → Java per Recipe; behavior via parser and via JSON AST | recipes | H1, H2 |
| S7 | `@tests` model, 3 NodesTestCases + 1 EditorTestCase, run config | recipes | H2, H7 |
| S8 | Onboard unknown project → `statechart-dsl` skill via `mps-dsl-memory` | statechart | H4, H7 |

| SMOKE | Harness check: list open projects and stop (read-only; no `done_criteria.md`; runs against the golden project; never evaluated) | — | — |

Measured in 2026-09: S1, S3 (both models, all PASS). S2, S4–S8 unmeasured.

## Writing a prompt
Developer voice, short, fixed names, numbered steps, explicit "Done when …", closing lines
"Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked."
NO reporting/notes requirements (they change behaviour and cost tokens). Freeze the prompt (sha in meta).

## Writing done criteria
Observer-checkable with read-only tools only; list the exact tool per check; accept equivalent
modelling explicitly (e.g. 0..n references as smart-reference wrapper concepts); say which checker
messages count as errors vs warnings. Known quirk: enum default literal prints as `""`.

## Adding a scenario for a changed skill/tool
Pick the smallest task that forces the changed path (e.g. a new tool parameter), reuse a fixture,
write done criteria first, run once per model, compare its chains with the baseline `chains.json`.
