# MPS MCP server troubleshooting

## Every call fails with `URISyntaxException: Illegal character in path`

Every JetBrains MCP server (`mps-mcp`, `idea-mcp`, and equivalents in other JetBrains IDEs) shares a platform bug: an MCP tool call throws `java.net.URISyntaxException: Illegal character in path` if **any currently open project's absolute path contains a space** — not only the project a call targets. This is not fixable from the agent or client side: percent-encoding the path argument does not reliably help, because the same crash also occurs while the server internally scans its own list of open projects for a match, a code path the client cannot influence. Tracked upstream as IJPL-236112 (and duplicates); fixed on the platform's newer line but, as of 2026.1.x, not yet backported to the release line MPS/IDEA ships on.

If MCP tool calls start failing session-wide with this error:
- Do not retry with an encoded/escaped path — it will not help.
- Check whether any open project — including phantom or harness-created ones — lives at a path containing a space.
- Ask the user to move/rename the affected project to a space-free path and reopen it in the IDE.
- Until then, fall back to manual source reading and ask the user to build/test via the IDE UI.
