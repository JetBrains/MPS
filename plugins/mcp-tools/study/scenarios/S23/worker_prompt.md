You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.flows` (Flow with an owner and steps Approve, Notify, Wait, Comment; Escalation roots
that reference a Flow), its generator, and the solution `mcp.study.flowsdemo` with the model
`mcp.study.flowsdemo.flows` (flows Release and Hotfix, two escalations). The generator turns
every Flow into a class `<Name>Flow` in `mcp.study.flows.out` whose `run(trail)` adds one line per
step and into which each escalation weaves an `escalate_<name>` method. MPS is running with the
MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: four changes to the existing generator. Read it before changing it.

1. Bug: `HotfixFlow.run()` adds a `"wait:" + 0` line. A Wait of zero hours must add nothing and
   report the warning "zero wait in <flow>". Fix it without changing any template, condition or
   message.
2. Notifications on channel `sms` are rejected today ("unknown channel"). Support them: a Notify
   on `sms` adds `"sms:<text>"`, as a further case of the existing per-channel choice; the other
   channels and the rejection of unknown channels stay. Add a Notify `sms`/`Hotfix out` to the
   `Hotfix` flow right after its Wait.
3. Rename the mapping label that links a Flow to its generated class to `flowType`, in its
   declaration and everywhere it is used. The generated Java must not change.
4. The Approve rule produces its line in-line. Move it into a template declaration named
   `ApproveStatement` that the rule uses instead; the generated Java must not change.
5. Rebuild the language and make the solution.
6. Done when: the make succeeds and the Java compiles; the make reported the warning
   "zero wait in Hotfix"; `HotfixFlow.run()` adds exactly `"approve:lead"`, `"sms:Hotfix out"`,
   `"notify:slack:Patched"`; `ReleaseFlow.java` is unchanged; and
   `mps_mcp_check_root_node_problems` reports no errors or unresolved references on the
   generator's template model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
