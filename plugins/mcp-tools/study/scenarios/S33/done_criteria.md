# S33 done criteria — On-call extension: substitute and transformation contributions, component override, cross-concept factory, everyModel keymap
Status: drafted 2026-11-01 (rev. 3); rev 4, pre-rehearsal audit (prompt items 1–3 force the override and both contributions, caret/pattern wording, keymap F*); rehearsal 1 (opus) FAIL on C6 letter → rev 5 (R1–R7: C6 start cell, NodeFactory recorded, member-list trap gated, ≥ 4 extension tests); rehearsal 2 (opus) PASS on rev 5 (criterion 4 wording then corrected); prompt not frozen. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: alerts2 (pins in ../../fixtures/inputs/s31/FIXTURE.md). The worker adds languages/solutions; the base is read-only.
Topics forced: extension; SubstituteMenu_Contribution; TransformationMenuContribution (Completion, reached from a
keyword cell carrying the default menu); overridenEditorComponent; everyModel keymap; $Undo.
1. Base untouched: print_node of every pinned base root (editor, actions, structure, six tests) equals the pins;
   the base test model does not use oncall (adding it changes the base completion lists: fails, recorded).
2. Structure: oncall extends alerts; Escalation extends Member (channel smart reference); PagedAlert extends
   Alert with rotation; sandbox Night as described.
3. Header override: an EditorComponentDeclaration in oncall bound to PagedAlert with overridenEditorComponent ->
   the base AlertHeader, showing "paged alert", name, "on", rotation, severity; no ConceptEditorDeclaration
   re-drawing the whole alert (the prompt's "a later change to the base alert editor must show" rules it out). PLAIN TEXT of a converted alert shows
   the new header and the base tail.
4. Member completion: a SubstituteMenu_Contribution with menuReference -> the base default Member menu, adding
   Escalation (a transformation contribution on EmptyLine fails: an empty book has no line to carry it); test:
   Complete on an empty line of the test's book, items contain "escalate" and not "paged alert" (gated on the items,
   not on a mechanism: the base `AddConcept Alert` offers only Alert itself, so a worker may add nothing for this;
   an empty default SubstituteMenu for PagedAlert or a filter is also accepted), type it -> Escalation. A second Complete test in an empty book (caret on the
   members empty cell) is recorded, not required.
5. Conversion: a TransformationMenuContribution to the Alert default menu, Completion section, Action "paged" (a
   Member substitute contribution fails: it would offer `paged` in the member list)
   (DescriptionText "convert to paged alert"); execute replace with new initialized so a NodeFactory on PagedAlert
   copies name, severity, muted, condition and notify from sampleNode, or a hand copy in execute (both pass; record
   which: the prompt cannot tell them apart, so the NodeFactory topic is recorded, not forced); caret on rotation.
   Tests: caret at 0 on alertKeyword or the keyword selected (at its end the pattern "alert" hides "paged"),
   Complete, items contain "paged" (an assertion on its description implies it), type "paged", Enter -> PagedAlert with all fields, caret on
   rotation; $Undo (assertion before) restores before. Side-transform sections are recorded, not required.
6. Shortcut (F*): CellKeyMapDeclaration in oncall, everyModel true (a plugin ActionDeclaration bound by KeymapChanges
   is accepted if its press test passes; record), applicable Member (or an ancestor walk; both
   accepted), VK_G, modifiers exactly "ctrl+alt+shift"; appends an Escalation, selects its name; test from a
   member cell other than the Escalation it creates, in the test's own book (a channel's name cell preferred; an
   alert's name cell accepted; record which).
7. Clean (extension models; the "Unused key map" warning on an everyModel keymap is expected: the rule ignores
   everyModel, and Clean counts errors only) / Green (6 and ≥ 4) / Deprecated / Same-root.
Pass = 1–7. Accepted: side-transform locations in the contribution; a Member-scoped keymap. Signals:
ED_deprecated_menu_writes 0, M_makes >= 2, ET_chooser_asserts >= 2, base-model writes 0.
Isolation: alerts2 ids (restart before and after; never next to another alerts2* copy).
Risks: contributions apply only where oncall is a used language (R8); everyModel matching on the selected node
vs an ancestor (R7, both accepted); the chord pressed once live in the walk (Ctrl+Alt+Shift+G: review 3's D is
bound to Console.TableResult.CloneColumn, J to SelectAllOccurrences; ../coverage/editor.md).
