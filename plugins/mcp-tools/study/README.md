# Skill optimisation study

This folder is the git home of the measurement loop. Working data is outside the repo, at `~/MPSProjects/mcp-study/`. This file is the only map.

`plugins/mcp-tools/docs/` and `plugins/mcp-tools/test_scenarios/` are not part of this study. A defect may link to a product plan; the plan stays where it is.

## What each directory holds

| Path | Holds | Does not hold |
|---|---|---|
| `instructions/` | how to run, look up a cell, regenerate a fixture, score a round, and read a defect | round results |
| `scenarios/<S>/` | frozen `worker_prompt.md` and `done_criteria.md` | fixture inputs |
| `scenarios/coverage/` | the generator design matrix | a measured cell |
| `fixtures/inputs/` | small checked-in inputs, copied into the scratch project before launch | tarballs |
| `fixtures/pins.md` | sha256 and date of the current external tarballs, once | a second copy of a hash |
| `reports/` | one hotspot file per written-up round, assessments, audits | the open defect list |
| `scripts/` | the harness and its unit tests | per-round launchers |

## Do not change

- `scenarios/<S>/worker_prompt.md` is frozen. `run_worker.sh` reads `$STUDY/scenarios/<scenario>/worker_prompt.md`.
- `$RUNS` defaults to `~/MPSProjects/mcp-study/runs`. `$RUNS/inventory.json` is load-bearing.
- The two observer-skill copies (`.agents/skills/skill-optimization-study/` and `.claude/skills/skill-optimization-study/`) stay byte-identical files. Do not replace them with a symlink. They are not in the bundled `mps-*` catalog, so a measured worker does not load this runbook.

## Workspace

```
~/MPSProjects/mcp-study/
  fixtures/     current tarballs only. No empty-project tarball.
  build/        empty except while a tarball is being rebuilt
  workspace/    one scratch at a time: harness/ and <run-id>/
  runs/         active round evidence
  archive/      closed rounds, old tarballs, old scratches, launch notes
```

An empty project is synthesized by `scripts/new_study_project.py`, not unpacked. Before launch, copy any input the cell needs from `fixtures/inputs/` into the scratch project. The frozen prompt says the file is in the project; it does not name this directory.

Per-round `rNN-*.sh` launchers are notes under `archive/runs/<id>/launch/`. They are not a second harness.

## Where to read

- Run a round, including from-sources and standalone MPS startup: [`instructions/runbook.md`](instructions/runbook.md)
- Clean old scratch projects (do not run it as part of a round): [`instructions/cleanup.md`](instructions/cleanup.md)
- Which cell covers which skill: [`instructions/scenarios.md`](instructions/scenarios.md)
- Regenerate a tarball: [`instructions/fixtures.md`](instructions/fixtures.md)
- Current tarball hashes: [`fixtures/pins.md`](fixtures/pins.md)
- Score a round: [`instructions/analysis.md`](instructions/analysis.md)
- Lessons: [`instructions/lessons.md`](instructions/lessons.md)
- Open defects: [`instructions/defects.md`](instructions/defects.md)
- Reports: [`reports/index.md`](reports/index.md)
