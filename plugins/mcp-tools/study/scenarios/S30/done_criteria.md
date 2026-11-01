# S30 done criteria — Survey DSL: static editors, substitute action, factories, wrap transform, paste wrapper
Status: drafted 2026-11-01 (rev. 3, three reviews); rehearsal 1 (opus) FAIL on 3d only, prompt 3d and criteria revised (rev. 4); rehearsal 2 (opus) PASS → rev 5 wording (3d location recorded, yes/no replacement, headless wording, observer-counted signals); prompt not frozen. Shared definitions: ../coverage/editor-shared-criteria.md.
Fixture: empty-project (synthesized). Greenfield: language mcp.study.survey, solution mcp.study.survey.tests.
Topics forced: component + alias cell, style sheet, show-if, separators, nullText placeholder, read-only
accessor, inspector, smart reference; default SubstituteMenu + Action; default TransformationMenu Completion
section (Super recorded, gated in S34) reached from a keyword cell with a transformationMenu; NodeFactory sampleNode / index;
RIGHT wrap substitute menu after a constant; PasteWrapper; seven non-vacuous tests. Observer read-only.
1. Structure (get_concept_details, languageRefs): the concepts, features and aliases of step 1; Survey rootable;
   extra concepts or aliases are allowed.
2. Static editors (print_node of every editor): tags separatorText "," (per-element constant fails); intro only
   under inspectedCellModel; count = CellModel_ReadOnlyModelAccessor on questions.size (property cell or
   ModelAccess with setter fails); one EditorComponentDeclaration bound to Question (or a shared interface)
   holding the lang.core alias component, text, a "?" constant with an EditorCellId and the "*" constant under
   renderingCondition node.required, embedded by the three editors (no own alias/text cell); a StyleSheet with
   >= 2 StyleClasses applied by parentStyleClass or ApplyStyleClass (inline items fail); options new-line-children
   + indent (flag true); skip group under a renderingCondition on skipTo, target a CellModel_RefCell with a
   readOnly inline text; questions emptyCellModel = constant with nullText (not text) + EditableStyleClassItem + id.
3. Dynamics (editor and actions models):
   - default SubstituteMenu for Question (Subconcepts or three AddConcepts) plus one SubstituteMenuPart_Action
     (outputConcept ChoiceQuestion; SubstituteFeature_MatchingText "yes/no"; _DescriptionText containing
     "Yes and No"; _Selection on the created node's text cell; handler adds Options Yes and No);
   - "toggle required" in a Completion section reached from the keyword (alias) cell, which carries a
     transformationMenu (TransformationMenuReference_Default{Question}, or a named menu including the default)
     — without it Ctrl+Space on the keyword does nothing; the other kinds must still be offered (a default
     Question menu needs TransformationMenuPart_Super for that; a named menu including the default does not —
     record which);
   - a NodeFactory on Question copying text and required from sampleNode; 3c: a NodeFactory on Option using
     index (0-based, +1) OR the list's nodeFactory (record); a constant label fails;
   - 3d: a RIGHT section with
     TransformationMenuPart_WrapSubstituteMenu over the questions' default substitute menu, handler inserting
     createdNode after node and selecting its text; one Action per kind fails (the prompt asks for kinds a later
     extension adds, which only the wrapped substitute menu offers). Where the section lives is recorded, not gated:
     Question's default menu, or a named menu on "?" with or without an include of the default (BaseConcept
     contributes no RIGHT items there);
   - 3e: a PasteWrappers root with PasteWrapper Option -> Question returning a ChoiceQuestion.
4. Tests (seven roots): yes/no = Complete on the hint, items asserted, type, press ENTER (change set), result
   options Yes/No, caret annotation on the new question's text (cellId, selectionStart = selectionEnd); super =
   Complete on an "ask" keyword, items contain "toggle required" AND "rate", then type the item's text or a prefix of it, Enter, required
   flipped; switch = before required with text, result another kind, same text and flag; Enter = invoke
   action -> Insert after an option, right "Option <n>"; keyword = caret after "?" (its id), exact alias typed,
   no Enter; prefix = caret after "?", type "as"/"ra"/"ch", assert nothing applied yet, Complete (it applies the single match; press ENTER
   only if a menu is open), result the new question of that kind; paste = whole-option selection, $Copy, caret
   on the questions list, $Paste, result a ChoiceQuestion holding that option. No vacuous test.
5. Clean / Green (7) / Deprecated / Same-root.
Pass = 1–5. Accepted: carets via select or SelectionUtil; yes/no replacing an existing question may discard its text
(the prompt is silent; record); yes/no in a named menu included from the default;
the toggle item as a named menu on the keyword that includes the default. Not accepted: an action text
echoing pattern (in the IDE the prefix must open the menu, not apply at once).
Signals (observer-counted, not yet in families.py; model proxies: Deprecated FIND_INSTANCES, EditorCellId count):
ED_deprecated_menu_writes 0, ED_cell_id_writes >= 1, ET_chooser_asserts >= 2, ET_test_runs 1–5. Isolation:
fresh ids. Risks: Enter index 0-based (R9); typing after "?" needs the constant's id (B7); prefix vacuity (R11).
