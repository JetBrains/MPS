You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.flows` (Flow with an owner and steps Approve, Notify, Wait, Comment; Escalation roots
that reference a Flow), its generator, and the solution `mcp.study.flowsdemo` with the model
`mcp.study.flowsdemo.flows` (flows Release and Hotfix, escalations releaseStuck and hotfixStuck).
The generator turns every Flow into a class `<Name>Flow` in `mcp.study.flows.out` whose
`run(trail)` adds one line per step and into which each escalation weaves an `escalate_<name>`
method before `approvers()`. MPS is running with the MCP server enabled and this project open.
Follow CLAUDE.md and the MPS skills.

Task: the language changes; keep the generator and the samples working. Read the generator first.

1. Replace the concept `Notify` (channel, text) by two concepts `Slack` (text) and `Mail` (text,
   string `subject`); remove `Notify`. Migrate the sample flows: each slack notification becomes
   a Slack with the same text; the mail notification `Shipped` becomes a Mail with text
   `Shipped` and subject `Release`. Generated lines: a Slack adds `"notify:slack:<text>"` (as
   before); a Mail adds `"mail:<subject>:<text>"`. The old per-channel choice and its
   "unknown channel" error go away with the concept; nothing in the generator may still refer to
   `Notify` or its properties.
2. Rename the property `Approve.role` to `approver` and `Wait.hours` to `delayHours`. The
   generated Java must not change because of this step.
3. Escalations are woven one rule application per Escalation today. Change the weaving so that
   there is one application per Flow, whose weave-each consequence weaves each escalation that
   references the flow (in model order), and place the woven methods before `run` instead of
   before `approvers`; find `run` through a mapping label or by its name, not by its position. Give
   the escalation template a string parameter `tag` and pass the flow's owner; the woven method
   now adds `"escalate:<to>:<afterHours>:<tag>"`. The woven method also calls the flow's
   `approvers()` (`trail.addAll(approvers());` after its `add`); that call's target comes from a
   `$REF$` that returns the method's name. Keep one
   template for escalations.
4. Rebuild the language and make the solution.
5. Done when: the make succeeds and the Java compiles; `ReleaseFlow.run()` adds `"approve:lead"`,
   `"notify:slack:Build ready"`, `"wait:" + 24`, `"approve:cto"`, `"mail:Release:Shipped"`;
   `ReleaseFlow` has `OWNER`, then `escalate_releaseStuck` adding `"escalate:cto:48:qa"` and then
   `trail.addAll(approvers());`, then `run`, then `approvers()`; `HotfixFlow` likewise with
   `escalate_hotfixStuck` adding `"escalate:lead:2:oncall"`; `mps_mcp_check_root_node_problems`
   reports no errors or unresolved references on the structure model, the template model and
   the samples.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
