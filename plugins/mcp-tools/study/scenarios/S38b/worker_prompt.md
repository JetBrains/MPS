You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.alerts` (alert books with members: channels, thresholds, notes, empty lines and
alerts; an alert reads `[muted] alert <name> [<severity>] when <condition> notify <channels>`;
conditions are small expressions such as `cpu over 5 min > cpuLimit + 5`). The language has an
optional "Compact" view, switched on per editor from the IDE or by a book's `compact` flag
(`Staging` has it): a compact alert is one line `[muted] alert <name> [<severity>]` with its
condition and channels in the Inspector, and a compact threshold reads `<name> = <value>`. The
sandbox `mcp.study.alerts.sandbox` has the books `Ops` and `Staging`; the test solution
`mcp.study.alerts.tests` holds ten editor tests that pass today. MPS is running with the MCP
server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: a "Review" view, delivered by a new language `mcp.study.alerts.review` that extends
`mcp.study.alerts`. Nothing in the language `mcp.study.alerts` or its test solution
`mcp.study.alerts.tests` may change; the sandbox may; with Review off, everything looks and
edits as today.

1. In the sandbox a user switches "Review" on for the editor of `Ops` from the IDE's per-editor
   switch.
2. In the review view every member of a book — also member kinds other extensions may add later —
   is prefixed with the marker `>>`. An alert's header puts the severity first,
   `[<severity>] alert <name>`, followed by `(muted)` when the alert is muted; solve this at the
   header, the part of the alert the alerts language keeps in one place, so that every notation
   using it, now or later, shows the review header; apart from the header the review view keeps
   today's alert notation (item 4 is the one combined case). Every binary expression of a
   condition is shown in parentheses, e.g. `(cpu over 5 min > cpuLimit)`, nested ones included;
   the model does not change.
3. Thresholds stay out of the review view: a threshold with everything in its value, e.g.
   `threshold lim = 80 + 5`, looks exactly as today — no marker, no parentheses — and keeps
   following any later change to the alerts language's threshold notations. Neither the member
   marker nor the expression notations may know about thresholds.
4. When Compact and Review are both on, an alert is one line `>> [<severity>] alert <name>`,
   followed by `(muted)` when muted and by `notify <channels>`; its Inspector shows what the
   compact Inspector shows, in review form (the condition in parentheses), following any later
   change to the compact Inspector; a threshold keeps its compact look, `lim = 80 + 5`, with no
   marker and no parentheses.
5. Test solution `mcp.study.alerts.review.tests` with a `@tests` model that uses both languages
   and editor tests that run in-process without opening any dialog, each view switched on the way
   the IDE's per-editor switch does it — at least: Review on: the markers on a channel, a note,
   an empty line and an alert, the header, `(muted)`, nested parentheses, and a threshold
   `threshold lim = 80 + 5` unchanged; typing a new name into an alert in the review view (the
   tree and where the caret ends up); both views on: the alert line of item 4 with no `when`, the
   Inspector's condition in parentheses, and the threshold line; Compact alone on the same book:
   no marker and no `notify` on the alert line. Write each test before the behaviour it describes
   and run it so you see it fail for the right reason; a test that passes before its behaviour
   exists must be fixed. Create a run configuration for the new test model and one for
   `mcp.study.alerts.tests@tests`.
6. Rebuild both languages, run both configurations. Done when: every behaviour above works, both
   languages make without errors, every new test and the ten shipped tests pass, and
   `mps_mcp_check_root_node_problems` reports no errors on both languages, the sandbox and both
   test models.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
