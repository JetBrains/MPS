# S10 done criteria (observer, projectPath = the project under check)

Fixture: a **synthesized** empty project (`scripts/new_study_project.py`), as S1. `<proj>` below is
the run's project directory; `<proj>-target` is the project the worker was asked to create.

**S10 is the one scenario where the worker itself closes and opens projects** — that is the skill
being measured (`references/scenarios.md`). Two consequences for evaluation:

- **Record the left-behind state first.** The moment the worker exits, before opening anything,
  the observer calls `mps_mcp_list_open_projects` (passing `<proj>` and, if that is rejected,
  `<proj>-target`) and writes the result — including a Welcome-screen rejection — into
  `<id>.eval.md`. That snapshot is the only evidence for criteria 3 and 4; once the observer
  reopens a project it is gone.
- **The observer, not the evaluator, does the reopening.** The evaluator stays read-only. Open
  `<proj>-target` via CLI (`mps-project-management`) for criterion 2, and close it afterwards.

1. **Descriptors written correctly** (on disk, no MPS needed).
   - `<proj>-target/.mps/modules.xml` exists and registers the solution (a `<modulePath>` entry
     whose path ends in `mcp.study.lifecycle.msd`).
   - `<proj>-target/.mps/migration.xml` exists and has the **same entries** as
     `python3 <skill>/mps-project-management/scripts/new_project_migration_xml.py <checkout>`
     derives: identical `project.baseline.version` and the identical set of migration keys, each
     `executed`. **Compare parsed entries, never bytes** — the script terminates the document with
     a newline and a real MPS-written file does not, so `diff` on the raw files reports a
     difference for two correct documents. `new_study_project.py --dir <tmp>` prints the expected
     map as `migrationEntries`.
   - This criterion is what proves the worker did not risk the modal Migration Assistant, which
     would have blocked every `mps_mcp_*` call for the rest of the round.

2. **Content created in the new project** (after the observer opens `<proj>-target`).
   `mps_mcp_get_project_structure(includeModels=true, includeRootNodes=true)` shows solution
   `mcp.study.lifecycle` with model `mcp.study.lifecycle.notes` containing one root `Note`
   (a `ClassConcept`; an empty class body is fine).
   `mps_mcp_check_root_node_problems` on `Note`: 0 errors.

3. **The worker left both projects closed.** The left-behind snapshot shows neither `<proj>` nor
   `<proj>-target` open — a Welcome-screen rejection (`Currently open projects: {"projects":[]}`)
   satisfies this. A still-open `<proj>-target` is a FAIL of this criterion only.

4. **MPS survived and no modal was left behind.** MPS is the same process it was before the run
   (`mpsPid` in the meta still matches a live `jetbrains.mps.Launcher`), and the observer's CLI
   open plus the criterion-2 calls answer normally. If any `mps_mcp_*` call hangs or returns
   `MODAL_BLOCKED`, a dialog is up: ask the user to dismiss it — never run a migration — and
   record the dialog as the FAIL evidence.

5. **`<proj>` was not damaged.** The run's own project directory still exists with its
   `.mps/modules.xml` (the worker was asked to close it, not to delete it).

Pass = all five hold. Criterion 1 is the primary signal; 3 and 4 are about harness hygiene and are
reported separately so a round can tell "the worker cannot create a project" from "the worker left
the IDE in a bad state".

Cleanup after evaluation: close `<proj>-target` (`mps_mcp_close_project`, `force=false`) and delete
the directory.
