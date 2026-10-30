# S23 done criteria — Edit the flows generator: rule order, a new switch case, a label rename, an extraction

**Status: drafted 2026-10-30 by a fable subagent, revised after two opus reviews; fixture
`flows-gen` built (ids and expected Java in [`FIXTURE.md`](FIXTURE.md)); rehearsal round 46:
`S23-opus-1` PASS (38 calls, 2 min), `S23-sonnet-1` PASS (35 calls, 2 min) after the step-1 hint
was removed from the prompt. Small by design; frozen after round 46.**

## Fixture

Observer-built fixture `flows-gen`: replay recipe in [`FIXTURE.md`](FIXTURE.md).

## Topics forced

Fixing a wrong rule order from a symptom · adding a case to an existing in-line switch (+ a
sample node) · renaming a mapping label with every use (`labelDeclaration` on the rule, the
weaving `contextNodeQuery`) · extracting an in-line-with-context template into a
`TemplateDeclaration` referenced by the rule · unchanged output where the prompt says so.

## Criteria

Observer, read-only, `projectPath` = run project dir; MPS only through `mcp_call.py` (`mps_mcp_*`).
Generated files are read on disk with `find`/`cat` (the IDEA file tools are not reachable); nodes
with `print_node`; generator messages with a Read of the worker's transcript.

Pinned ids from `FIXTURE.md`; baseline Java = the tarball's `source_gen`, i.e. the generated text
quoted in `FIXTURE.md` *Built details* (short `List`/`ArrayList` with imports). Comparison:
whitespace-normalised, `if` bodies in braces as MPS prints them, redundant parentheses accepted,
JDK names imported or qualified, a folded literal (`"wait:24"`) accepted.

1. **Order (step 1).** `print_node` JSON of `main`: R1 (pinned id) precedes R2 in
   `reductionMappingRule`; R1's condition, message text and `AbandonInput` consequence and R2's
   consequence are unchanged versus the pins. Adding `hours != 0` to R2 instead of moving R1
   fails this item (record). `HotfixFlow.java` has no `"wait:" + 0` / `"wait:0"`; a MAKE response
   after the move that generated the solution (transcript; an up-to-date later MAKE may print
   nothing) contains `zero wait in Hotfix`. `main` still holds exactly the five pinned reduction
   rules, the root rule, the weaving rule and the `DropRootRule` — an added rule fails (record);
   R1 re-created under a new id instead of moved is recorded and accepted only if the old R1 is gone.
2. **Case (step 2).** R4 (pinned id) still an `InlineSwitch_RuleConsequence`, now with exactly 3 cases (slack, mail, sms, in any order; a copied placeholder literal
   under the `$PROPERTY$` does not matter),
   one with condition on `"sms"` producing `"sms:" + text`; the `defaultConsequence` still the
   `DismissTopMappingRule` with `unknown channel`. A separate `Notify` rule fails this item
   (record). `Hotfix` has steps Approve, Wait 0, Notify sms, Notify slack; `HotfixFlow.run()` is
   exactly `trail.add("approve:lead"); trail.add("sms:Hotfix out"); trail.add("notify:slack:Patched");`
   (the prompt's step 6), in order; `escalate_hotfixStuck` still present, before `approvers`.
3. **Rename (step 3).** `MappingLabelDeclaration` named `flowType` (pinned id, or a new id with no
   reference to the old one left); the root rule's `labelDeclaration` → it; every reader of the old label
   (the weaving rule's `contextNodeQuery`; JSON print) has `label` → that declaration, and the
   `anchorQuery`'s `approversMethod` read is unchanged; ignore the `labelName_intern` property
   (a cache nothing updates) and do not check by text search. `ReleaseFlow.java` equals the
   baseline text.
4. **Extraction (step 4).** A `TemplateDeclaration` root `ApproveStatement` (applicable `Approve`)
   whose content holds the `trail.add(…)` statement under a `TemplateFragment` with the
   `$PROPERTY$` `"approve:" + node.role`; R3's consequence is a `TemplateDeclarationReference` to
   it; no in-line copy of the statement remains in R3. `ReleaseFlow.run()` still has
   `trail.add("approve:lead")` first and `trail.add("approve:cto")` fourth.
5. **Clean.** `check_root_node_problems` on the template model and `flows`: 0 errors;
   `source_gen/mcp/study/flows/out/` holds exactly the `.java` files `ReleaseFlow.java`, `HotfixFlow.java`
   (`trace.info` is not output); both `.class` files are newer than the run's start (the tarball ships
   older ones) and `HotfixFlow.class` contains `sms:Hotfix out` (`strings`).

Pass = 1–5. Accepted: `ApproveStatement` content as a class context (with `run(List<String>
trail)`) holding the fragment — a bare `trail.add(…)` statement has no `trail` in scope and fails
criterion 5; the label renamed through `update_node` SET or an intention; the `sms` case as an
in-line template with context (as the fixture's cases; a plain in-line template has no `trail`
in scope) or a `TemplateDeclarationReference`; the case condition as `"sms".equals(node.channel)`
or `node.channel == "sms"`.

Process signals: `GN_template_prints` before the first write (≥ 1; one deep print of `main` covers all rules),
`check_root_node_problems` ≥ 1, `M_makes` 1–4, engine-source reads 0, console Java 0.

## Isolation

`flows-gen` ids are fixed by the replay; never open it next to another `flows-gen` copy (S24 uses
the same tarball — one at a time). Restart MPS between S23 and S24 in one process (the worker
rebuilds the language; D80). No overlap with `recipes*`, `tariff*`, `shell*`.

## Risks

- The replay mints new ids per rebuild; re-pin `FIXTURE.md` and this file's pins (S15 precedent).
- Step 1 is symptom-only; the condition-instead-of-move shortcut is forbidden and recorded.
- Renaming a label by delete-and-recreate leaves the weaving query dangling until repointed —
  `check_root_node_problems` shows it as an unresolved reference; likely `G_errors` hotspot.
- `$COPY_SRCL$` + `AbandonInput` on a statement list is the fixture's design; MPS produces
  nothing for the abandoned element (verified when the fixture is built, step 6).
- Rehearsal `S23-opus-1` (38 calls, 2.5 min, PASS) showed the cell discriminates only moderately; the step-1 hint ("the generator already contains the rule") was removed afterwards. A second reader of the label and an extraction that needs a fresh context would need a fixture rebuild.
- Rule order: only R1 before R2 is gated; where R1 lands relative to R3–R5 does not matter. `S23-sonnet-1` (29 calls, 1 min 42 s, PASS) confirms the cell is short.
