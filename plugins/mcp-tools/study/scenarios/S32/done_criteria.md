# S32 done criteria — Recipes: side transform on a constant, a cell menu keeping the step's items, parameterized menu on a property cell, keymap, inspector
Status: drafted 2026-11-01 (rev. 3); rehearsal 1 (opus) FAIL on 2,3 → rev 4 (prompt items 1–3 and 6, criteria 1–3 revised: the prompt now forces the re-include and the factor list; the separator sub-task, which the fixture already met, is dropped); rehearsal 2 (opus) PASS → rev 5 wording (criteria 1–3 wording); prompt not frozen. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: recipes-editor (recipes-full + four shipped tests; pins in ../../fixtures/inputs/s32/FIXTURE.md).
Topics forced: inspector + SwitchToInspector; RIGHT transform on a constant with a transformationMenu; include menu +
location (M2); a cell menu keeping the node's items; named menu on a property cell with Parameterized + guard; keymap;
shipped tests.
1. Static: difficulty only under inspectedCellModel of Recipe_Editor; R1/R4 updated only if cells moved; R3 unchanged;
   ids property_name, property_text, property_minutes, Collection_t290g_a survive (an explicit EditorCellId
   with the same name counts).
2. then: the ")" constant (EditorCellId) belongs to Step and carries a transformationMenu, one of:
   - a named menu with a RIGHT section holding Action "then" (adds a Step after node, selects its text), the item
     also reached from Completion (Completion listed in that section, or a Completion section with include menu ->
     same menu + location RIGHT; without location it adds nothing), AND include menu ->
     TransformationMenuReference_Default{Step} at the Completion location (the implicit default counts);
   - TransformationMenuReference_Default{Step}, with "then" in Step's explicit default menu and that menu's
     Completion section keeping the implicit items (TransformationMenuPart_Super, or include substitute menu of the
     steps link; record) — an explicit Completion section without them drops `step`.
   A hand-written "step" item fails (the prompt asks for whatever a step offers later). Tests: type "then" after
   ")" (caret at the end, no Enter) -> new step, caret in its text; type "the" after ")", assert nothing applied
   yet (a tree or selection check, or an item assertion on the selected hint cell after typing), Complete (the pattern "the" is non-empty, so the single match applies), result the new step; caret at 0
   on ")" or ")" selected (the pattern is the text left of the caret: at the right end it is ")" and nothing
   matches), Complete, items contain "then" AND "step".
3. Scale: a named TransformationMenu on the recipe name property cell (a property cell has no concept menu, so a
   default Recipe menu alone fails), Completion section with TransformationMenuPart_Parameterized whose parameter
   query returns the factor list defined in one place (a constant, field or behavior method; record), text
   "scale x" + parameter, multiplying servings, guarded by a Group condition or canExecuteFunction servings >= 1
   (record); hand-written actions per factor fail (the prompt says the list grows). Tests: servings 3, caret at 0
   of the name or the name selected (at the end the pattern is the name and nothing matches), Complete, items
   asserted, then type "scale x2" and Enter, or Enter on an item whose position the test asserted (record) -> 6;
   servings 0 -> no item text contains or starts with "scale" (either assertion).
4. +/-: CellKeyMapDeclaration on Step, keyMap on the minutes cell, typed characters or VK constants (record),
   caretPolicy ANY_POSITION or LAST_POSITION + isApplicableFunction (record; LAST_POSITION alone cannot fire:
   minutes is not the last leaf of the big cell), clamp at 0. Test: press "+" at the end of 10 -> 15.
5. Inspector: a test with SwitchToInspector (or an isInInspector annotation) that types into the difficulty cell;
   result carries the new value.
6. Shipped R1–R4; Clean / Green (11) / Deprecated / Same-root.
Pass = 1–6. Accepted: the "then" action in Step's default menu with a _Default{Step} reference on ")" (criterion 2's
second form). Signals: ET_chooser_asserts >= 3, ED_default_reinclude_writes >= 1 (or a Super write), ET_test_runs 1–5
(a correct first run may be green).
Isolation: recipes* ids (restart before and after, as S17).
Risks: that a selected step offers `step` and that the implicit default brings it to ")" is verified live in the walk;
typed "+" keystroke encoding (KeyTyped) — accept VK_ADD/VK_PLUS.
