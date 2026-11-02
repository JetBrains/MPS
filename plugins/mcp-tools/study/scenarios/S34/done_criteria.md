# S34 done criteria — Editor tests as detectors: six planted editor defects, found and fixed
Status: drafted 2026-11-01 (rev. 3); rev 4, pre-rehearsal audit (behaviour-equivalent fixes accepted, caret/pattern wording); rehearsal 1 (opus) PASS → rev 5 wording (≥ 10 roots, `contains` on approved cells, observer-counted signals); sonnet rehearsal 1 FAIL on 1 (B-on without the muted check between the keys) and on 2's letter (a test-only fix between two red runs) → rev 6 scores the last run before the first language write, D-C copy recorded; sonnet rehearsal 2 PASS on rev 7 (G-on Backspace accepted, recorded); frozen 2026-11-01; prompt frozen 2026-11-01. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: alerts2-broken (planted D-A…D-F, ids in ../../fixtures/inputs/s34/FIXTURE.md). H is a green control.
Topics forced: non-vacuous tests (items before typing, two-step both ways with the approved cell asserted); diagnosis
of documented traps: missing AddConcept, missing early return, named cell menu hiding defaults, Completion without
Super, keymap on the wrong cell, inverted canExecute falling through.
1. Tests (at least ten roots; B may add Backspace twins of B-on/B-off): A label text via editor component or two trees; B-on runWithTwoStepDeletion(…, true), two
   invocations, between them muted still true and getCellsApprovedForDeletion() equals or contains mutedKeyword; B-off false, one
   invocation; both end muted false, caret alertKeyword 0; C type "notify" after "]" -> one empty ChannelRef,
   caret in it; D Complete on the empty line, four texts asserted, no EmptyLine/Member, type "threshold", Enter;
   E caret at 0 on alertKeyword or the keyword selected (at its end the pattern "alert" hides the others),
   Complete, items contain "rename…" and "threshold"; F press (change set; VK_Y, ctrl+alt+shift)
   on the name, flag flipped; G-on true, two Deletes (or Backspaces, which reach the same DELETE action while the map defines no BACKSPACE item; record) on notify, between them the approved cells equal or
   contain the notify keyword's cell (not the alert), result alert kept with an empty list; G-off false, one Delete; H type
   "cpuLimit" -> ThresholdRef.
2. Red run first: the last test run before the first write to the language models (earlier runs may fail on test
   mistakes the worker fixed in the tests) fails B-on, C, D, E, F, G-on and G-off (the fall-through deletes the alert), with no other language-caused failure (ET_test_runs).
3. Fixes in the language, nothing unrelated: each planted node is changed so that its behaviour holds; record the
   mechanism. Documented fixes: D-A channel AddConcept restored; D-B early return restored (DeletionApproverUtil
   + return accepted); D-C the "]" menu gets include menu -> TransformationMenuReference_Default{Alert} or is
   removed (a copy of the default `notify` item in the named menu passes, recorded "copied, not included"); D-D superconcepts menu added, or the implicit items restored another way ("rename…" stays); D-E keyMap
   moved to the alert's outer, header or name cell (or everyModel); D-F canExecuteFunction corrected or removed.
   Added EditorCellIds allowed; a change to an editor-model node outside the planted ones (prints vs pins), a
   behaviour moved into the tests, or a weakened test fails.
4. Clean / Green (every test root, ≥ 10) / Deprecated / Same-root.
Pass = 1–4. Signals: ET_test_runs >= 2 (one red run), language-model writes only after the first run,
ET_two_step_true_writes >= 2, ET_chooser_asserts >= 2 (both observer-counted; ../coverage/editor.md), ET_ide_service_writes 0, ET_runtime_source_reads 0.
Isolation: alerts2 ids (restart before and after; never next to another alerts2* copy).
Risks: E depends on the fixture's _Default{Alert} menu on the alert keyword (pinned); G-on's fall-through
approves the whole alert first, so only the approved-cell assertion separates D-F from a two-step clear;
the chord is Ctrl+Alt+Shift+Y (review 3: M is MPS's GoToModel; ../coverage/editor.md), pressed once live.
