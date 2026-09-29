# S8 done criteria (observer)

Fixture: statechart.tar.gz (Projectxx5 snapshot).
1. `.agents/skills/statechart-dsl/SKILL.md` exists with frontmatter and references files per the
   `mps-dsl-memory` skill layout.
2. The skill names all four concepts (StateChart, State, Transition, Event) with their
   properties/children/references correctly (spot-check against `mps_mcp_get_concept_details`).
3. At least one sample node reference resolves (`mps_mcp_print_node`, spot-check one), and at
   least one JSON blueprint is shipped. **Every** shipped blueprint passes a server dry run: a root
   blueprint through `mps_mcp_insert_root_node_from_json` with `dryRun: true` against the sandbox
   model; a non-root blueprint through `mps_mcp_update_node` `ADD CHILD` with `dryRun: true`
   against a real parent of the documented concept and role. Pass the blueprint inline (≤ 4,096
   characters) or copy it to `$TMPDIR` first — the `json` parameter accepts a file only under the
   system temp directory, and that rejection is not a blueprint failure. A rejection of the
   blueprint itself (invalid JSON, object-map `properties`/`children`, unknown property or role,
   concept-role assignability) fails the criterion. Dry-run **warnings** about unresolved
   plain-name reference targets are not failures: the dry run never resolves plain names (D81), and
   a blueprint may document placeholders. Record the tool, arguments and verdict per blueprint in
   the evaluation. Neither dry run mutates a model.
   **The dry runs need the built language.** The fixture ships without `classes_gen`/`source_gen`,
   and on the hollow runtime descriptor (`get_concept_details` → `descriptorStatus: hollow`) even a
   correct blueprint is rejected ("Unknown property 'name' … concept 'StateChart' has no such
   property"; A8 probe, 2026-09-29). So the evaluation runs in two passes (harness.md "Per-run
   procedure card" step 5): the evaluator checks criteria 1, 2 and 4 and returns; the **observer**
   runs `mps_mcp_alter_nodes MAKE` (`modules: [com.example.statechart]`, `rebuild: true`; it writes
   only `classes_gen`/`source_gen`) and records its result in the evaluation; the same evaluator is
   resumed for criterion 3 and the verdict. Pass 2 starts with `mps_mcp_get_concept_details` on
   `StateChart`: if `descriptorStatus` is still `hollow` (the MAKE failed or targeted the wrong
   module), criterion 3 is **not evaluable** — an observer/harness problem to record, not a FAIL.
4. No MPS model was modified: `mps_mcp_check_root_node_problems` and a `git status`-style
   comparison of the project dir against the fixture show only the new skill files. Checked in
   pass 1, before the observer MAKE; a later re-check excludes the `classes_gen`/`source_gen` that
   MAKE writes.
Pass = all four hold.
