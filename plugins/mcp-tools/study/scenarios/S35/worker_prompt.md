You are working in the current folder, which contains the JetBrains MPS sample project Kaja: the
language `jetbrains.mps.samples.Kaja` (robot scripts: `step`, `turnLeft`, `pick`, `drop`,
`repeat`, `while`, `if`, `routine`, `trace`, `#` comments, empty lines; conditions such as
`wall ahead`, `heading east`, `not`) with its existing editor behaviour, the extension `KajaAndOr`,
and the sandbox `jetbrains.mps.samples.Kaja.sandbox` with the script `Patrol`. MPS is running with the MCP server
enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: four improvements to the Kaja editor. Everything the editor does today must keep working.

1. Ctrl+Space on the keyword of a `step` or `turnLeft` command offers only the movement
   commands (`step`, `turnLeft`) and calls of the routines defined in the script; nothing else.
   On every other command Ctrl+Space offers what it offers today.
2. With the caret at the left edge of a `trace` command's keyword, typing `comment` turns the
   command into a comment line whose text is the trace message, caret at its end. Ctrl+Space on
   the `trace` keyword offers the same item and also the other commands (for example `repeat`).
3. The small floating menu on an empty line (which today offers `Step forward`, `Turn left`,
   `Define a routine`, `Control flow`, …) also offers `Trace`: it inserts a trace command above
   the empty line and puts the caret into its message. The existing items stay.
4. The count of a `repeat` is shown in red when it is 0 or negative.
5. Solution `Kajak.editortests` with a `@tests` model whose tests edit a script like `Patrol`
   (with one routine `dance` and no `require`) and check: the items offered on `step`, and
   `repeat` still offered on a `pick`; the typed conversion, and the items offered on `trace`;
   the floating menu's items and the insertion. Completion tests check the offered items before
   they type. Tests must run headless on CI, so they must not need IDE-only services (no CI
   build to set up). Create a run configuration and run it.
6. Rebuild and run. Done when: the language makes without errors, all tests pass in one run,
   `Patrol` is unchanged, and `mps_mcp_check_root_node_problems` reports no errors on the editor
   model and the test model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
