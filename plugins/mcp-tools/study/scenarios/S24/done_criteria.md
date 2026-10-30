# S24 done criteria — Keep the flows generator working after a language change; refactor its weaving

**Status: drafted 2026-10-30 by a fable subagent, revised after two opus reviews; rehearsal round
46: `S24-opus-1` FAIL (98 calls, 7 min) only because it typed a plain reference instead of the
`$REF$` the prompt did not name (the prompt now names it), `S24-sonnet-1` PASS on the revision
(114 calls, 7 min; criteria clarified on the accepted query forms). Freeze after one more opus
pass.**

## Fixture

`flows-gen` (the single observer-built fixture; recipe, expected Java text (pins after the build) in
[`../S23/FIXTURE.md`](../S23/FIXTURE.md)). Same tarball as S23; open one copy at a time. D-ORDER (the
`"wait:" + 0` defect) is present and **not** this cell's subject — fixing it is allowed, not
required.

## Topics forced

Real-world maintenance: a **concept split** (`Notify` → `Slack` + `Mail`) with the rule that
depended on it deleted and replaced, samples migrated, no dangling `applicableConcept`/property
references · **property renames** on concepts the queries and `$PROPERTY$`s use (MPS references
are id-based, so the gate is "still builds, output unchanged, nothing re-typed by name") ·
**refactoring the weaving rule**: per-Escalation applications → one application per Flow with
weave-each over its escalations, and a different **stable anchor** (before `run`) · the escalation
template kept and given a parameter · `$REF$` with a **string referent** (a call resolved by name).

## Criteria

Observer, read-only, `projectPath` = run project dir; MPS only through `mcp_call.py` (`mps_mcp_*`).
Generated files are read on disk with `find`/`cat` (the IDEA file tools are not reachable); nodes
with `print_node`; concepts with `mps_mcp_get_concept_details` (`languageRefs` =
`mcp.study.flows`; `mps_mcp_query_structure` cannot list concepts or roles); generator messages
with a Read of the worker's transcript.

Pinned ids from `scenarios/S23/FIXTURE.md`; baseline Java = the tarball's `source_gen`, i.e. the
generated text quoted in `../S23/FIXTURE.md` *Built details* (short `List`/`ArrayList` with imports).
Comparison: whitespace-normalised, `if` bodies in braces as MPS prints them, redundant
parentheses accepted, JDK names imported or qualified, folded literals (`"wait:24"`) accepted,
`approvers()` or `this.approvers()`.

1. **Split (step 1).** `get_concept_details`: no `Notify`; `Slack` (string `text`) and `Mail` (string
   `text`, string `subject`) extend `Step`. Samples (`print_node`): Release = Approve lead, Slack
   `Build ready`, Wait 24, Comment, Approve cto, Mail `Shipped`/`Release`; Hotfix = Approve lead,
   Wait 0, Slack `Patched`; two Escalation roots unchanged. Generator: R4 (pinned id) gone or
   retargeted; a `Slack` rule producing `"notify:slack:" + text` and a `Mail` rule producing
   `"mail:" + subject + ":" + text` (in-line with context or template declarations); no
   `InlineSwitch` with a channel condition; `check_root_node_problems` on the template model: no
   unresolved reference, no "concept not found"; no rule's `applicableConcept` and no
   `$PROPERTY$`/query refers to `Notify` or `channel` (JSON prints). Output: `ReleaseFlow.run()`
   as in step 5; `HotfixFlow.run()` = `approve:lead`, (`"wait:" + 0` if D-ORDER untouched —
   record), `notify:slack:Patched`.
2. **Renames (step 2).** `get_concept_details`: `Approve.approver`, `Wait.delayHours`; no `role`/`hours`.
   `print_node` of R3's `$PROPERTY$` query, the `$PROPERTY$` on `approvers()`'s `r.add` (the
   loop query reads no property), R1's condition and `WaitStatement`'s `$PROPERTY$`: they resolve (`approver`, `delayHours` printed, no
   `<unresolved>`); `approvers()` still adds `lead`, `cto`; the `wait` line unchanged. A rebuilt
   property (delete + create) is accepted only if every reader was repointed.
3. **Weaving (step 3).** No `Weaving_MappingRule` on `Escalation` (pinned id gone or
   retargeted); a `Weaving_MappingRule` on `Flow` whose `contextNodeQuery` reads the flow label for
   `node`, whose `anchorQuery` returns the `run` method through a label (a `$LABEL$`/node-macro
   `mappingLabel` on `run`, key = the flow, looked up for the escalation's flow — `node` there is the
   escalation — through `node.flow` or from `mainContextNode`) or by member name — `member.first` or any other
   positional query (e.g. the first method) fails this item; a name predicate such as
   `methods.findFirst({it => "run".equals(it.name)})` on `mainContextNode` is the by-name form —
   and whose consequence is `WeaveEach_RuleConsequence` with `sourceNodesQuery`
   `genContext.inputModel.roots(Escalation).where(flow == node)` (or `node.model.roots(…)` / `nodes(…)`, or
   an `ofConcept` filter over the model's roots) and a
   `templateCall` to `EscalateMethod` (pinned id) with one `actualArgument` (the owner, read from
   the flow or from the escalation's `flow`). `EscalateMethod` has one
   `TemplateParameterDeclaration` `tag` (string); its value `$PROPERTY$` reads it
   (`GenerationContextOp_ParameterRef` or `TemplateArgumentParameterExpression`). The `approvers()`
   call carries a `ReferenceMacro` whose `referentFunction` returns a **string** that evaluates to
   `"approvers"` (a literal, or a name read e.g. through the `approversMethod` label) — returning
   a node, or a typed reference without the macro, fails this item (`print_node` JSON `deep: true`;
   PLAIN TEXT hides the queries). A copied second template fails this item.
   Output order: `OWNER`, `escalate_<name>`, `run`, `approvers` in both classes; escalation
   method = `public void escalate_releaseStuck(List<String> trail) { trail.add("escalate:cto:48:qa");
   trail.addAll(approvers()); }` (Hotfix: `escalate_hotfixStuck`, `"escalate:lead:2:oncall"`).
4. **Clean.** `check_root_node_problems`: structure, template and samples models 0 errors;
   `source_gen/mcp/study/flows/out/` holds exactly the two `.java` files (`trace.info` is not output); both `.class` files exist.

Pass = 1–4. Accepted: Slack/Mail rules as in-line-with-context or `TemplateDeclaration`s (R4
retargeted to one of them counts); the D-ORDER defect fixed or not (record); the weave-each
argument read from the escalation's flow; the pinned weaving rule retargeted to `Flow` or a new
one. Rules: R1–R3, R5, the root rule and the `DropRootRule` stay; the only additions are one
`Slack` and one `Mail` reduction and the one `Flow` weaving rule — a second weaving rule, a
`$WEAVE$` or a `$LOOP$` in the template instead of weave-each, or any other added rule fails
(record).

Process signals: `GN_template_prints` ≥ 4 before the first write; `alter_structure` calls
(≥ 2: split, renames); sample writes (3 notifications migrated); `G_errors` around the concept
deletion when `Notify` goes before R4 (none when R4 is deleted first); `M_makes` 1–4 cycles (a cycle is a
language make plus a solution make, i.e. 2 calls); engine-source
reads 0; console Java 0.

## Isolation

As S23 (same tarball, one copy open at a time; restart MPS between S23 and S24 in one process).

## Risks

- Deleting `Notify` before its rule leaves R4 with an unresolved `applicableConcept` and the
  samples with orphaned nodes; the order of operations is the worker's problem and the likely
  retry hotspot. The prompt's "nothing may still refer to Notify" is the gate.
- Property renames are id-based in MPS: the step is cheap by design and measures that the worker
  does not "fix" working references by retyping names; a worker that recreates the properties
  must repoint four readers.
- With one escalation per flow the output order cannot catch `member.first` (several woven
  nodes would reverse); it fails through the anchor-query criterion and through the
  method-before-`OWNER` output order that `member.first` would produce.
- The string-referent `$REF$` to `approvers` resolves because the woven method lands in the
  class that owns `approvers()`. The placeholder call needs a stub `approvers()` in the template's
  context class, and the call must still carry the `ReferenceMacro`: a plain reference to the stub
  also resolves by name in the output (template-reference fallback), which `S24-opus-1` used — the
  prompt now names the `$REF$`.
- Passing the flow's owner from a weave-each whose `node` is the escalation needs
  `node.flow.owner`; the prompt says "the flow's owner" without prescribing where it is read.
- Size ≈ 130–160 tool calls (structure edits are cheap; reading dominates).
- Extra labels, label macros and context-class stubs are allowed; only extra rules are limited.
