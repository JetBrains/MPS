# Scenario set

Location: `plugins/mcp-tools/study/scenarios/<S>/worker_prompt.md` + `done_criteria.md`.
Fixtures are NOT kept as tarballs in git — regenerate them per `plugins/mcp-tools/study/fixtures/README.md`
(empty = **synthesized per run** by `scripts/new_study_project.py`, not a tarball at all;
statechart = Projectxx5; recipes = a passing S1 project
with sample Recipe/Cookbook roots deleted, for S3; recipes-full = the same S1 project with
those samples kept, for S5/S6; recipes-broken = recipes-full + `scenarios/S5/PROBLEMS.md`).

| # | Scenario | Fixture | Hypotheses |
|---|---|---|---|
| S1 | Greenfield DSL `mcp.study.recipes` + solution with 3 samples | empty-project | H1 blueprints, H2 make/scaffold, H8 stale |
| S2 | Extend StateChart with `Guard` + intention | statechart | H4 discovery, H7 skills |
| S3 | 40 recipes from `recipes.csv` (bulk, cross-refs, cookbook) | recipes (+ csv) | H3 bulk, H6 refs, H1 |
| S4 | Rename property, change cardinality, migration | recipes | H2, H5 validation, H8 |
| S5 | Fix 12 injected problems (`fixtures/PROBLEMS.md`) | recipes-broken | H5 |
| S6 | Generator → Java per Recipe; behavior via parser and via JSON AST | recipes-full | H1, H2 |
| S7 | `@tests` model, 3 NodesTestCases + 1 EditorTestCase, run config | recipes | H2, H7 |
| S8 | Onboard unknown project → `statechart-dsl` skill via `mps-dsl-memory` | statechart | H4, H7 |
| S9 | Console MCP: two read-only `#instances` queries (one filtered), recall, print current | recipes | H1, H7 |
| S10 | Project lifecycle: create an empty project, close this one, open the new one, add a solution, close it | empty-project | H4, H7 |

| SMOKE | Harness check: list open projects and stop (read-only; no `done_criteria.md`; runs against the harness project; never evaluated) | — | — |

Measured in 2026-09: S1, S3 (both models, all PASS); S2, S5, S6 in round 6 (S6 FAIL);
S10 rehearsed 2026-09-22 (sonnet, PASS on all five criteria, 29 turns / 116 s / 26 tool calls,
`welcome_rejections` 0, one self-recovered error — defect D39). S4, S7–S9 unmeasured.
**S10 runs last in a round** — see its exception and recovery notes below.

## Project create / open / close (orchestrator, every scenario)

The observer creates, opens and closes the scratch project for S1–S10 and, when needed, the harness
project for SMOKE, and it starts, restarts and shuts MPS down. Do not ask the user to File→Open,
Close Project or restart the IDE. Before each action, tell the user the absolute path that will
close (if any) and the absolute path that will open. Synthesize an empty project with
`scripts/new_study_project.py`; open via the CLI protocol in `mps-project-management` (there is
still no MCP open tool); close with `mps_mcp_close_project` (`projectPath` = the scratch dir,
`force=false`). Details: `references/harness.md`.

Workers already assume "MPS is running … and this project open" — do **not** add open/close
instructions to `worker_prompt.md` (prompts are frozen, sha in meta). Do **not** put swap steps in
`done_criteria.md` either: evaluators are read-only and must not close the project mid-check.
SMOKE may use the harness project in place; still announce if you open or close it.

**S10 is the single exception to both worker rules above**, because the project lifecycle *is* what
it measures: its prompt tells the worker to create a project, close the current one, open the new
one and close it again. The `done_criteria.md` half of the rule still holds — the evaluator stays
read-only, and the observer performs every swap that surrounds the run, including the reopen needed
to check the result. Two hard constraints come with it:
- **Sequential, never two projects open.** With the platform default
  (`confirmOpenNewProject2 = -1`) opening a project while another is open raises the modal
  *New Window / This Window* prompt, which blocks every `mps_mcp_*` call and whose "This Window"
  answer closes the project being measured. A Welcome-screen MPS opens without prompting, so the
  worker closes first and opens second. Do not "improve" this into a two-project scenario, and do
  not change the IDE preference for the study.
- **Record the left-behind state first.** The observer calls `list_open_projects` the moment the
  worker exits — a Welcome-screen rejection is a valid answer — and only then reopens anything.
  After a reopen that evidence is gone.

**Modal recovery (S10, and any round that hits a dialog).** A wrong `migration.xml` opens the modal
Migration Assistant, which blocks every `mps_mcp_*` call for the rest of the **round**, not just
that run. Ask the user to dismiss the dialog — never run the migration — then
`mps_control.sh restart` if MCP does not recover. Record it as a task FAIL with the dialog as
evidence: that is exactly the hotspot S10 exists to find. Wrap-up closes and deletes every
`<proj>-target` directory.

## Writing a prompt
Developer voice, short, fixed names, numbered steps, explicit "Done when …", closing lines
"Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked."
NO reporting/notes requirements (they change behaviour and cost tokens). Freeze the prompt (sha in meta).
A prompt that touches the project lifecycle adds **"Do not shut MPS down."**: a worker passing
`shutdownWithLastProject=true` ends the round, not just its run. Freeze such a prompt only after a
rehearsal run has shown the worker's MCP session surviving the zero-project window — S10's did on
2026-09-22 (`S10-sonnet-1`: close at step 16, CLI activation at 17-19, `list_open_projects` answers
normally at 20 on the same session), so its prompt is now **frozen**.

## Writing done criteria
Observer-checkable with read-only tools only; list the exact tool per check; accept equivalent
modelling explicitly (e.g. 0..n references as smart-reference wrapper concepts); say which checker
messages count as errors vs warnings. Known quirk: enum default literal prints as `""`.
Where the artefact *is* a file (project descriptors, for instance), an on-disk check is fine — but
compare generated XML by its parsed content, never byte-wise: `new_project_migration_xml.py` ends
its document with a newline and an MPS-written file does not. Any reopening a check needs is the
observer's job, after the left-behind state has been recorded.

## Adding a scenario for a changed skill/tool
Pick the smallest task that forces the changed path (e.g. a new tool parameter), reuse a fixture,
write done criteria first, run once per model, compare its chains with the baseline `chains.json`.
The observer opens and closes the reused fixture the same way as S1–S9 (announce paths; CLI open;
`mps_mcp_close_project` close). Do not make the worker or the evaluator perform the swap — unless
the swap itself is the changed surface, which is S10's declared exception above and should stay the
only one. A lifecycle scenario also needs `relatedProjects` in its run meta (`run_worker.sh` derives
`<project>-target` for `S10*`), or the analyser filters its server evidence away.
