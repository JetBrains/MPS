# S31 done criteria — Alerts: model access, matching parens, shared name component, shortcut, channel menus, paste rename
Status: drafted 2026-11-01 (rev. 3); rev 4, pre-rehearsal audit (idiom gates matched to the prompt, caret/pattern wording, ET_test_runs band); rehearsal 1 (opus) PASS → rev 5 wording (C1, C5, C6, C7, C9); prompt not frozen. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: alerts2 (pins in ../../fixtures/inputs/s31/FIXTURE.md). The worker edits mcp.study.alerts and its test model.
Topics forced: ModelAccess; Punctuation + MatchingLabel; interface-bound component; query-driven style; keymap
(exact modifiers, attachment); ReferenceScope + pattern Action (strictly); postfix hints (F*); select_all with a
node range; PastePostProcessor; shipped tests maintained.
1. Window: a CellModel_ModelAccess (getter "<n>h" when minutes > 0 && minutes % 60 == 0, else "<n>m"; setter
   parses both; "3x" refused by the validator or ignored — record; a CellModel_Custom provider is accepted, recorded); a
   CellModel_Property fails (an integer property cannot show "2h"). Tests over a before
   selection: "3h" -> 180; "3x" -> unchanged. T2 (pinned) updated, not deleted.
2. Parens: "(" PunctuationRight, ")" PunctuationLeft (flag true; another spacing style item that removes the gap is
   accepted, recorded), both MatchingLabelStyleClassItem with one labelName (the only pair-highlight mechanism); T3 updated to "(disk < 10)"; a text test exists (the highlight is untestable).
3. Names and red: one EditorComponentDeclaration bound to INamedConcept (an added language interface or abstract
   superconcept accepted; record) with the name cell styled Keyword; Channel_Editor, Threshold_Editor,
   AlertHeader embed it, no own name cell; ids mutedKeyword, alertKeyword, severityClose, notifyKeyword survive.
   Severity: a colour item with a query or ApplyStyleClass + ApplyStyleClassCondition on critical (F*: two severity cells
   under renderingConditions, one red, are accepted, recorded); red on every severity fails.
4. Shortcut (F*): CellKeyMapDeclaration on Alert, VK_K, modifiers exactly "ctrl+alt+shift", keyMap on the alert's outer
   or header cell (or everyModel + isApplicableFunction limited to alerts), any passing caretPolicy; a plugin
   ActionDeclaration bound by KeymapChanges is accepted if its press test passes (record); inserts a copy
   after node, selects its name. Tests: press (change set) -> two equal alerts, caret on the copy's name; a channel
   unchanged.
5. New channel: default SubstituteMenu for ChannelRef (or a named one the notify list references; record) = SubstituteMenuPart_ReferenceScope + one
   SubstituteMenuPart_Action with _MatchingText returning pattern, _CanSubstitute false when strictly, or the
   action hidden when a channel of that name exists (record; either way an existing name still fires the reference), _DescriptionText starting "new channel", _Selection on the new
   channel's address; handler appends a Channel named pattern, returns a ChannelRef. Recorded, not gated:
   whether _CanSubstitute is also false for an empty pattern (at Complete time on an empty slot the pattern is
   empty, and an empty pattern matches any text, so without the guard the menu shows an empty item). Test:
   Complete on empty_notify (empty pattern: the list opens), items asserted (or asserted through getSubstituteInfo()
   without a prior Complete, optionally with a test-side prefix filter on getMatchingActions), type a new name that no channel
   prefix-matches, Complete (the single match applies; + Enter if a menu opens), result a new
   last channel and a resolved reference, caret on its address. A fixed matching text fails (it vanishes once a
   name is typed).
6. Postfix hints: CellMenuPart_PropertyPostfixHints in the name cell's menuDescriptor returning Limit/Warn for
   Threshold and empty for Channel/Alert when the cell is shared (accepted), OR a transformation-menu action with
   the same items (F*, recorded). Test: the before holds or types "cpu", caret at the end (pattern "cpu"), Complete, items
   contain cpuLimit and cpuWarn, a prefix of either ending typed, Enter -> cpuLimit (the model's postfixes may be lower
   case, "limit"; the items read cpuLimit); on a channel name the postfixes are not offered.
7. Select-all: select_all_action_id in a map reached from the reference cell (actionMap or elementActionMap)
   selecting node.parent.notify as a node range; a Ctrl+A keymap fails (the prompt asks for the user's Select All key); test: invoke action -> SelectAll, result with
   nodeRangeSelectionStart/End over first and last, or an editor component assertion (R6). Expected: a language
   dependency on MPS.Editor and the editor model's jetbrains.mps.openapi.editor stub import (no lang.editor DSL for a
   node range).
8. Paste rename (F*): a PastePostProcessor on Threshold (exact concept), or another paste-time hook that sees the
   target book (record); a CopyPreProcessor cannot see the target book and fails. Test (Same-root): $Copy of a whole threshold, End, $Paste, result second threshold "cpuLimit2".
9. Shipped: T1, T4, T5, T6 unchanged in content (except a caret `cellId` that the shared name component legitimately renames, e.g. T1's `property_name`); T2, T3 as above (T2's caret cellId, its selection and its typed text may change with the window cell; a
   validator that requires the unit is the robust design, since the cell commits per keystroke). Clean / Green (16) / Deprecated / Same-root.
Pass = 1–9. Accepted: the window validator as an ignoring setter; everyModel for item 4. Signals:
ED_cell_id_writes, ET_chooser_asserts >= 2, ET_test_runs 1–5 (a correct first run may be green).
Isolation: mcp.study.alerts ids (restart between S31/S33/S34; one alerts2* copy open).
Risks: ModelAccess commits per keystroke (walk); live chord press; the Threshold post-processor stops recursion
into its subtree (document); menu order never gated.
