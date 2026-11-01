You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.alerts` (alert books with channels, thresholds, notes, empty lines and alerts), its
sandbox, and the test solution `mcp.study.alerts.tests` whose `@tests` model is empty. MPS is running with the MCP server enabled and this project
open. Follow CLAUDE.md and the MPS skills.

The editors are specified to behave like this:
  A. A muted alert shows the keyword `muted` before `alert`; an unmuted one shows nothing there.
  B. Delete or Backspace on `muted` unmutes the alert. With two-step deletion on, the first key
     only highlights the keyword and the second unmutes; with it off, one key unmutes. The caret
     ends at the start of `alert`.
  C. With the caret right after the closing `]` of the severity, typing `notify` adds an empty
     channel reference and puts the caret into it.
  D. Ctrl+Space on an empty line of a book offers `alert`, `channel`, `threshold` and `#`, and
     nothing else; typing `threshold` there creates a threshold.
  E. Ctrl+Space on the `alert` keyword of an existing alert offers `rename…` and still offers
     the other member kinds (`threshold`, `#`).
  F. Ctrl+Alt+Shift+Y with the caret on an alert's name toggles its muted flag.
  G. Delete on the `notify` keyword of an alert with channels clears its channel list (two-step:
     first highlight, then clear). The alert itself stays.
  H. Typing `cpuLimit` into an empty condition slot of a book with that threshold gives a
     reference to it.

Task: write the editor tests, then find out which behaviours are broken.

1. One editor test per behaviour A–H in `mcp.study.alerts.tests@tests` (B and G: one per deletion
   setting). Each must fail if its behaviour broke and not depend on the IDE's deletion setting;
   a completion test checks the offered items before it types. Tests must run headless on CI, so they must not need IDE-only services (no CI build to set up).
2. Create a run configuration for the test model and run it before changing the language. Some behaviours are broken as shipped. Fix
   each in the language, not in the tests, rebuild, run again.
3. Done when: all tests pass in one run, the language makes without errors, and
   `mps_mcp_check_root_node_problems` reports no errors on the editor model and the test model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
