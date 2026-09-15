# S2 done criteria (observer, read-only, projectPath = run project dir)

Fixture: statechart.tar.gz (Projectxx5 snapshot).
1. `mps_mcp_get_concept_details(Guard)`: concept exists, property `condition`, editor present;
   `Transition` has child link `guard` [0..1] targeting Guard.
2. Constraints model of `com.example.statechart`: a rule for `Guard.condition` (non-blank).
3. Intentions model: one intention declared on Transition (name contains "guard").
4. Sandbox model: one Transition has a Guard with `condition == "count > 3"`.
5. `mps_mcp_check_root_node_problems` on every sandbox root: 0 errors; language descriptors not hollow.
Pass = all five hold.
