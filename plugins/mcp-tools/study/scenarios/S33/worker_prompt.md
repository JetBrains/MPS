You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.alerts` (alert books with members: channels, thresholds, notes, empty lines and
alerts; an alert reads `[muted] alert <name> [<severity>] when <condition> notify <channels>`),
its sandbox `mcp.study.alerts.sandbox`, and the test solution `mcp.study.alerts.tests` with six
editor tests. MPS is running with the MCP server
enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: an on-call extension. Nothing in `mcp.study.alerts` or `mcp.study.alerts.tests` may change.

1. Language `mcp.study.alerts.oncall` extending `mcp.study.alerts`, with `Escalation` (a member:
   `escalate <name> after <minutes> min to <channel>`, the channel a reference to a channel of
   the same book) and `PagedAlert` (an alert with a string `rotation`) reading
   `[muted] paged alert <name> on <rotation> [<severity>] when ... notify ...`: only the header
   differs, the rest is the base alert editor (a later change to the base alert editor must show
   on paged alerts without touching the extension).
2. Sandbox model `mcp.study.alerts.oncall.sandbox` using both languages, with a book `Night`
   (one channel, one alert, one escalation). In any book of a model that uses the extension,
   Ctrl+Space in the member list (also of a book with no members yet) offers `escalate` next to
   the base members, and typing `escalate` on an empty line creates one.
3. Ctrl+Space on the `alert` keyword of an ordinary alert offers `paged`, described as "convert
   to paged alert": it turns the alert into a paged alert that keeps its name, severity, muted
   flag, condition and channels, and puts the caret into `rotation`. One Undo restores the
   ordinary alert. `paged` is offered only on an existing alert, not in the member list.
4. Ctrl+Alt+Shift+G with the caret on any member of a book appends an escalation to the book
   and puts the caret on its name.
5. Test solution `mcp.study.alerts.oncall.tests`, `@tests` model using both languages, editor
   tests for items 2 (items checked before typing, then typing), 3 (conversion; undo) and 4,
   at least four tests, run configuration `oncall-tests`. Tests must run headless on CI, so they must not need IDE-only services (no CI build to set up). The six base tests must still
   pass unchanged.
6. Rebuild both languages, run `oncall-tests` and a run configuration for the base test model. Done when: both make without errors,
   the six base tests and every extension test pass, and `mps_mcp_check_root_node_problems` reports no errors on the
   extension's models.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
