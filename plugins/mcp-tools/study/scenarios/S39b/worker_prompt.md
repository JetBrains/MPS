You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.alerts` (alert books with members: channels, thresholds, notes, empty lines and
alerts; an alert reads `[muted] alert <name> [<severity>] when <condition> notify <channels>`;
conditions are small expressions such as `cpu over 5 min > cpuLimit + 5`). Besides the normal
view the language has two optional views, "Compact" and "Triage", switched on per editor from
the IDE. The sandbox `mcp.study.alerts.sandbox` has the books `Ops`, `Staging` and `Night`; the
test solution `mcp.study.alerts.tests` holds ten editor tests that pass today. MPS is running
with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

A colleague added the Triage view last week. Users report that it does not look as specified.
This is the specification; `Night` is the sample:

  a. An alert is a block: its header line `[muted] alert <name> [<severity>]`, then, indented
     under it, a line `when <condition>` and after it a line `notify <channels>`. An alert
     has the `notify` line exactly when it has at least one channel.
  b. The severity value (not the brackets) is bold `darkMagenta`; the value `high` is bold
     `red` instead. Only in the Triage view: in the normal and the Compact view the severity
     is plain, in the default colour.
  c. A muted alert is `gray` throughout: every word and symbol of its block, including the
     keywords of the header and of the two lines, the severity value (also `high`), and
     everything inside the condition, its keywords (`over`, `min`, `not`) and operators
     included. Bold stays bold.
  d. The header line of an alert that is `high` and not muted has a `pink` background, from
     its first word to the closing `]`. Nothing else in the view has a background.
  e. A note is `gray`, and its text is italic.
  f. Channels, thresholds, empty lines and the book's first line look as in the normal view.
  g. With the caret on an alert, the Inspector shows `severity: <value>` and
     `muted: <true/false>`.
  h. With Triage off, the normal view and the Compact view look as they did before the Triage
     view was added.

Task: find every deviation from the specification and fix it in the language. The sandbox, the
language's structure and the tests are correct and must not change.

1. Before you change anything, answer two questions about the project as it is now, in
   `REPORT.md` in the current folder (sections `## Q1`, `## Q2`):
   Q1. In the Triage view of `Night`, which editor definition draws (a) the line
       `threshold cpuLimit = 90`, (b) the `[low]` of the alert `LowDisk`, (c) the `over 10 min`
       of the alert `Backlog` — and why that definition and not another one?
   Q2. In the Triage view today, what colour and weight do these parts have: `not` in
       `LowDisk`, the `(` after it, `uptime` in `Heartbeat`, and `chat` in `Backlog`? For each,
       name the definition (editor, cell, style class) that gives it its colour and the one
       that gives it its weight.
2. Find the deviations and fix each one where it is caused. Keep everything that already
   matches the specification as it is.
3. Add a section `## Defects` to `REPORT.md`: for each deviation one short paragraph with the
   view and the node of `Night` that shows it, the definition that caused it (editor root or
   style class, and the cell or item), and what you changed.
4. Rebuild the language. Done when: `Night` matches the specification in the Triage view;
   `Ops`, `Staging` and `Night` match item h in the normal and the Compact view; the language
   makes without errors; `mps_mcp_check_root_node_problems` reports no errors on the language
   and the sandbox; and `REPORT.md` has the three sections.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
