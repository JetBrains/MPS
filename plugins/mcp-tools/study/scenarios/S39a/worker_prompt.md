You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.alerts` (alert books with members: channels, thresholds, notes, empty lines and
alerts; an alert reads `[muted] alert <name> [<severity>] when <condition> notify <channels>`;
conditions are small expressions such as `cpu over 5 min > cpuLimit + 5`). The language has an
optional "Compact" view, switched on per editor from the IDE or by a book's `compact` flag: a
compact alert is one line `[muted] alert <name> [<severity>]`, a compact threshold reads
`<name> = <value>`. The sandbox `mcp.study.alerts.sandbox` has the books `Ops`, `Staging` and
`Night`; the test solution `mcp.study.alerts.tests` holds ten editor tests that pass today. MPS
is running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS
skills.

Task: a second optional view, "Triage", offered in the IDE next to "Compact". With Triage off,
every node looks and edits exactly as today, in the normal view and in the Compact view. The
sandbox, the language's structure and the tests do not change. The book `Night` is the sample
to check against; items 1-7 say how its members look in the Triage view. With Compact and Triage
both switched on, either look is accepted.

1. An alert is a block: its header line as today, then, indented under it, a line
   `when <condition>` and a line `notify <channels>`. An alert without channels has no
   `notify` line. `Night` reads:

       alert HighCpu [high]
         when cpu over 5 min > cpuLimit (90)
         notify pager, mail
       alert LowDisk [low]
         when disk < diskFloor (10) and not ( memory > cpuLimit (90) + 5 )
         notify mail
       muted alert Heartbeat [high]
         when uptime < 1
       muted alert Backlog [low]
         when queue over 10 min > 100
         notify chat, mail, pager

2. The severity value (not the brackets around it) is bold `darkMagenta`; the value `high` is
   bold `red` instead. This is a Triage look only: in the normal and the Compact view the
   severity stays as today.
3. A muted alert is `gray` throughout: every word and symbol of its block, including the
   keywords of the header and of the two lines, the severity value (also `high`), and
   everything inside the condition, its keywords (`over`, `min`, `not`) and operators included.
   Bold stays bold.
4. The header line of an alert that is `high` and not muted has a `pink` background, from its
   first word to the closing `]`. Nothing else in the view has a background.
5. In a condition, a threshold reference shows the threshold's value in parentheses after its
   name, `cpuLimit (90)`; the value and the parentheses are not bold and in the default
   colour.
6. A note is `gray`, and its text is italic.
7. Channels, thresholds, empty lines and the book's first line look as in the normal view.
8. With the caret on an alert in the Triage view, the Inspector shows two editable lines,
   `severity: <value>` and `muted: <true/false>`.
9. Rebuild the language. Done when: `Night` looks as described in the Triage view; `Ops`,
   `Staging` and `Night` look as today with no view switched on and in the Compact view; the
   language makes without errors; and `mps_mcp_check_root_node_problems` reports no errors on
   the language and the sandbox.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
