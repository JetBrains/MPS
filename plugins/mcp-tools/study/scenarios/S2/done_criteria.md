# S2 done criteria (observer, read-only, projectPath = run project dir)

Fixture: statechart.tar.gz (Projectxx5 snapshot). How to read aspects, call shapes and the
descriptor check: [`../../instructions/analysis.md`](../../instructions/analysis.md), "Evaluating a run".
1. `mps_mcp_get_concept_details(conceptRefs=com.example.statechart.structure.Guard)` (and
   `…structure.Transition`; qualified names only): concept exists, string property `condition`;
   `Transition` has child link `guard` [0..1] targeting Guard. The editor aspect has an editor for
   Guard (or a Transition editor that renders the guard), and a `format="PLAIN TEXT"` print of the
   guarded sandbox transition matches `on\s+\S+\s*\[\s*count > 3\s*\]\s*->\s*\S+` (Python `re.search`
   on the whole print). Around `[`, `]` and `->` any whitespace, line breaks included, or none is
   allowed: the fixture's `->` cell starts a new line.
2. A rule on `Guard.condition`, wherever it lives (a constraints property validator, or a
   typesystem checking rule that reports an error), that rejects a blank value — empty **and**
   whitespace-only (e.g. `isNotEmpty` on a trimmed value, or a regex that needs a non-space
   character). Read the body; a rule that rejects only `null` or `""` fails.
3. Intentions model: at least one intention declared on Transition whose name or description
   contains "guard" (case-insensitive; `AddGuard` matches). Its `isApplicable` requires that the
   transition has no guard, and its `execute` sets a new Guard with no condition.
4. Sandbox model: at least one Transition has a Guard with `condition == "count > 3"`.
5. `mps_mcp_check_root_node_problems` on the sandbox **model** (`com.example.statechart.sandbox` also
   names the module; pass the model reference): 0 errors. The language builds cleanly, tested as:
   `mps_mcp_check_root_node_problems` on every aspect model of `com.example.statechart` (structure,
   editor, constraints, typesystem, intentions, behavior; those that exist): 0 errors.
   Descriptors are not hollow: `mps_mcp_get_concept_details(languageRefs=com.example.statechart)`, pass = no entry has
   `descriptorStatus` (the field appears only on a hollow descriptor; see S1 criterion 6).
Pass = all five hold. Record which failed with the evidence excerpt.
