You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.alerts` (alert books with channels `channel <name> -> <address>`, thresholds, notes,
empty lines and alerts; conditions are small expressions with metrics such as `cpu over 5 min`,
numbers, threshold references, operators and parentheses), its sandbox, and the test solution
`mcp.study.alerts.tests` whose `@tests` model holds six editor tests for today's editors. MPS is running with the MCP server enabled and this project
open. Follow CLAUDE.md and the MPS skills.

Task: readability and channels. Read the existing editors and tests before changing them.

1. A metric's window is stored in minutes but shown in hours when it is a whole number of
   hours: `cpu over 2h`, `cpu over 90m`. Replacing the text by `3h` stores 180, by `45m` stores
   45; replacing it by `3x` is rejected and the value stays as it was.
2. Parentheses hug their content, `(disk < 10)` instead of `( disk < 10 )`, and when the caret
   is on an opening parenthesis its closing one is highlighted as its pair, and vice versa.
3. The names of channels, thresholds and alerts are shown in the language's existing keyword
   style, and the name cell is defined once and reused by the three editors. A `critical`
   severity is shown in red; the other severities keep their look.
4. Ctrl+Alt+Shift+K with the caret anywhere on an alert duplicates the alert right below it
   with the same name and puts the caret on the copy's name. On any other member it does nothing.
5. Ctrl+Space in an empty channel slot of a `notify` list offers the book's channels and, once a
   new name has been typed there, that name as an item described as "new channel: add a channel
   to this book": choosing it appends a channel of that name to the book, references it, and puts
   the caret on its address. Typing an existing channel's name still gives the reference at once.
6. In a threshold's name only, Ctrl+Space offers to finish what was typed with `Limit` and
   `Warn` (`cpu` → `cpuLimit`, `cpuWarn`).
7. Select All (Ctrl+A, or whatever key a user has bound to Select All) with the caret on a
   channel reference inside a `notify` list selects all references of that list.
8. Within one book, pasting a copied threshold gives the copy the name `<name>2` when a
   threshold of that name already exists in the book, otherwise the same name.
9. One editor test per item (item 1: `3h` and `3x`; item 4: the duplicate, and a channel left
   unchanged; completion tests check the offered items before typing). Keep the six existing
   tests passing, updating only what your change legitimately alters. Tests must run headless on CI, so they must not need IDE-only services (no CI build to set up).
10. Rebuild, create a run configuration for the test model, and run it. Done when: the language makes without errors, all sixteen tests
    pass in one run, and `mps_mcp_check_root_node_problems` reports no errors on the editor,
    actions and test models.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
