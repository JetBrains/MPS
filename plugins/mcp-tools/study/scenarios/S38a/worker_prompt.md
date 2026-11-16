You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.alerts` (alert books with members: channels, thresholds, notes, empty lines and
alerts; an alert reads `[muted] alert <name> [<severity>] when <condition> notify <channels>`;
conditions are small expressions such as `cpu over 5 min > cpuLimit + 5`), its sandbox
`mcp.study.alerts.sandbox` with the books `Ops` and `Staging`, and the test solution
`mcp.study.alerts.tests` whose model `mcp.study.alerts.tests@tests` holds six editor tests that
pass today. MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md
and the MPS skills.

Task: an optional "Compact" view of alert books. With it off, every editor looks and edits as
today, and the six shipped tests stay as they are.

1. From the IDE a user switches "Compact" on for one editor; the per-project Settings page that
   lists views offers it too (an editor's own choice wins over it). Leave it switched on nowhere.
2. In the compact view an alert is one line, `[muted] alert <name> [<severity>]`; its condition
   and its channels are shown, and can be edited, in the alert's Inspector instead. Channels,
   thresholds, notes and empty lines look as today.
3. In that Inspector, and nowhere else, a threshold reference inside the condition also shows the
   threshold's current value as read-only text, `cpuLimit (= 90)` (a value that is not a plain
   number may show `(= …)`); a threshold whose own value refers to another threshold shows nothing
   of the kind. This detailed form is not offered as a view in the IDE.
4. An alert book gets a `compact` flag, edited in the book's Inspector as `compact: true/false`.
   When it is set, the members of that book are shown compact even when nobody switched the view
   on. Mark `Staging` compact.
5. With the caret in a book, an intention "Compact here" shows that book compact in the open
   editor only (nothing is saved, the model does not change); on a book it switched it reads
   "Full view here" and switches that book back, leaving other per-node view choices in the
   editor as they were.
6. Test solution `mcp.study.alerts.compact.tests` with a `@tests` model and editor tests that run
   in-process without opening any dialog — at least: an alert of a flagged book shows no condition
   in the main editor while its channel line is unchanged, and an alert of a normal book shows its
   condition; "Compact" switched on for the editor the way the IDE's per-editor switch does it
   shows an alert of a normal book on one line, and its channel and threshold lines are
   unchanged, typing a new name into it works (the tree and where the caret ends up), and
   switching it off restores today's look; editing the condition of
   a compact alert in its Inspector, where the threshold reference reads `cpuLimit (= 90)`; with
   the view on, a threshold `threshold hi = cpuLimit + 5` shows no `(=`; the intention: the book
   shows compact with the model unchanged, a second invocation restores today's look, and a
   per-node view choice made on one alert in test code survives both invocations. Write each test
   before the behaviour it describes and run it so you see it fail for the right reason; a test
   that passes before its behaviour exists must be fixed. Create a run configuration for the new
   test model and one for `mcp.study.alerts.tests@tests`.
7. Rebuild the language, run both configurations. Done when: every behaviour above works, the
   language makes without errors, every new test and the six shipped tests pass, and
   `mps_mcp_check_root_node_problems` reports no errors on the language, the sandbox and both
   test models.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
