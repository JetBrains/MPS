# S35 done criteria — Kaja: named substitute menu through a cell menu, LEFT transform with completion, context assistant, style query
Status: drafted 2026-11-01 (rev. 3); rev 4, pre-rehearsal audit (movement menu and count style F*, assistant contribution accepted, caret/pattern wording); rehearsal 1 (opus) PASS → rev 5 wording (routines, accepted shapes, Green ≥ 5, helper-class signals, headless wording); sonnet rehearsal 1 PASS → rev 6 (the named SubstituteMenu shape recorded, not forced: 0 of 2 runs; item 4 label assertion); frozen 2026-11-01; prompt frozen 2026-11-01. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: kaja-editor (samples/robot_Kaja + Patrol; pins in ../../fixtures/inputs/s35/FIXTURE.md). Corpus menus are the base.
Topics forced: a menu on an alias cell narrowing completion (a named SubstituteMenu via IncludeSubstituteMenu with
SubstituteMenuPart_IncludeMenu is recorded, not forced: both rehearsals built a TransformationMenu); a named cell
menu keeping the node's items; LEFT transform also in Ctrl+Space; context-assistant item + test API;
query-driven colour; editing a corpus editor without regressions.
1. Corpus intact: NegateAndAlter, IfElse, IfElse_ext_1, While_to_if, Direction_TransformationMenu,
   EmptyLine_SubstituteMenu, RemoveNot, Repeat_Editor (apart from the count cell) equal the pins;
   EmptyLine_TransformationMenu differs only by the added Trace action (or not at all, with a contribution; item 4),
   OtherCommands not at all; Patrol unchanged.
2. Movement menu (F*): Ctrl+Space on the Step and LeftTurn keywords yields exactly the movement commands and the
   script's routine calls. Routine items: the script's own RoutineDefinitions (a structural query, as the prompt
   says) or the RoutineCall scope (which adds `require`d libraries); both pass, since the test script has no
   `require`. Mechanism: the alias cells carry a named TransformationMenu with no default include, OR (accepted,
   record) default Step/LeftTurn menus whose only part includes that named menu in a Completion section, with
   nothing attached to the cells. Documented shape (record
   any other, e.g. two Actions + a Parameterized over the routines): a named SubstituteMenu (concept
   AbstractCommand) with AddConcept Step, AddConcept LeftTurn and SubstituteMenuPart_IncludeMenu ->
   SubstituteMenuReference_Default{RoutineCall} (a ReferenceScope accepted), reached by
   TransformationMenuPart_IncludeSubstituteMenu in the Completion section (wrapping accepted); routine calls
   hard-coded by name fail. Tests (caret at 0 on the keyword or the keyword selected: at its end the pattern is
   the keyword): Complete on "step" in a before script with one routine "dance" and no require ->
   items exactly {step, turnLeft, dance}; Complete on "pick" -> items contain "repeat".
3. comment: a named TransformationMenu on the trace alias cell with a LEFT section (Action "comment": replace with
   new initialized CommentLine, text = message, caret at its end) and a Completion section reaching the LEFT items
   (include menu -> same menu + location LEFT, or Completion listed in the LEFT section) AND keeping the node's
   items (include menu -> TransformationMenuReference_Default{TraceMessage} OR TransformationMenuPart_Super —
   equivalent, TraceMessage has no explicit default menu; record). A default TraceMessage menu instead is recorded.
   Tests: caret at the alias cell 0, type "comment" (no Enter) -> CommentLine with the message, caret at the end;
   Complete on "trace" (caret at 0 or the keyword selected), items contain "comment" AND "repeat".
4. Trace in the assistant: EmptyLine_TransformationMenu's CONTEXT_ASSISTANT section, or a TransformationMenuContribution
   to it (record), gains a top-level Action "Trace" (OtherCommands sits in the "Other actions" submenu, so an item there is not on the assistant's top level) (insert a TraceMessage before node, select its message); existing parts stay. Test in code inside
   invokeAndWait: getContextAssistantManager().updateImmediately(), getActiveAssistant() not null (or implied by an exact, non-empty label assertion; record), labels contain
   "Trace" and "Step forward", execute "Trace" in a command; result has the trace before the empty line, caret on
   property_message. Querying SelectionMenuProviderByCellAndConcept directly fails.
5. Red count (F*): the count cell has a colour style item with a query on node.count <= 0, or ApplyStyleClass +
   ApplyStyleClassCondition, overriding the NumericLiteral class; two count cells under renderingConditions, one red,
   are accepted (record); red on every count fails.
6. Clean / Green (≥ 5: the five named tests present and passing; extra tests must pass too) / Deprecated / Same-root. Clean subtracts the corpus baseline: the structure model's model-level
   "Can't find devkit jetbrains.mps.devkit.documentation" (pinned in FIXTURE.md) is not counted.
Pass = 1–6. Accepted: Super ≡ default re-include (item 3); a wrapped alias cell (the alias cells are `CellModel_Component`s). Signals:
ED_menu_prints_before_write >= 3, ED_default_reinclude_writes, ET_chooser_asserts >= 3, ET_assistant_asserts >= 1 (counted across the whole @tests model, helper class
roots included: S35-opus-1 kept every chooser and assistant assert in a helper root, `KajaEditorProbe`).
Isolation: Kaja ids collide with kaja-dataflow* (restart before and after; never together).
Risks: the alias cell's typed "c" at position 0 goes to the LEFT hint (E1 muted pattern; walk it); include substitute
menu on an alias cell is BL's BinaryOperation_Alias_* shape, verified by print only; item 2's "exactly" holds only
without require when the RoutineCall scope is used (it adds library routines).
