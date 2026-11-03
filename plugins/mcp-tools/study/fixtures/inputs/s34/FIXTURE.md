# `alerts2-broken` fixture (S34)

**Status: recipe written 2026-11-01; built and pinned 2026-11-01 (tarball not yet taken: the builder left the project open).** Base `alerts2`
([`../s31/FIXTURE.md`](../s31/FIXTURE.md)), extracted and opened alone. Build through MPS MCP only,
logging every call to `FIXTURE.log`; record the tarball's sha256 in [`../../pins.md`](../../pins.md).
Same `mcp.study.alerts` ids as `alerts2`: never open the two together. A rebuild of `alerts2` means a
rebuild and re-pin here and in `../../../scenarios/S34/done_criteria.md`.

1. Delete the six test roots (`update_root_node_from_json DELETE`); keep the empty `@tests` model (`alerts-tests` is a build aid; it does not survive the tarball, see s31).
2. **D-A** remove the `channel` `AddConcept` (`SET CHILD` without `childJson`).
3. **D-B** delete the `if (approveDelete…) return;` statement.
4. **D-C** insert a named `TransformationMenu` `SeverityClose_Menu` (Alert), one RIGHT section with only an
   `Action` `when?` (selects the condition), set as the `]` constant's `transformationMenu` (no `include menu`:
   hides `notify` on `]`).
5. **D-D** add to the Alert default menu a Completion section with one `Action` `rename…` (selects the name)
   and no `Super`.
6. **D-E** insert `CellKeyMapDeclaration` `Alert_Mute_KeyMap` (Alert; `VK_Y`, `modifiers` `ctrl+alt+shift`;
   toggles `muted`) with `keyMap` set on the `notify` constant only (hidden: never fires from the name;
   checker silent).
7. **D-F** insert `CellActionMapDeclaration` `Alert_Notify_Actions` (Alert): `delete_action_id`,
   `canExecuteFunction` `node.notify.isEmpty` (inverted), execute
   `if (node.approveDelete[in: editorContext, cell: notifyKeyword]) { return; } node.notify.clear;` then select
   the name; set on the `notify` constant's `actionMap`.
8. MAKE `rebuild`, check the editor model: 0 errors; pin below; close; tar `alerts2-broken/` with `classes_gen`
   and the standard excludes. H is a green control.

## Pins

Built 2026-11-01 in `~/MPSProjects/mcp-study/build/alerts2-broken` (an extracted `alerts2`, opened alone; MPS 2026.1,
build 261.25134). Every mutating call is one line of [`FIXTURE.log`](FIXTURE.log) (88 lines: `walk-*` = the walk, `1`…`8`
= the recipe steps). Final state: MAKE `rebuild: true` of `mcp.study.alerts`, `mcp.study.alerts.sandbox`,
`mcp.study.alerts.tests` successful, no warnings; `check_root_node_problems` on the language module: **0 errors, 0
warnings** (5 models, 48 roots; 2 `info` "This action will also be used for BACKSPACE" on the two DELETE items), test
model 0 roots / clean, sandbox clean; FIND_INSTANCES (editable, exact) of `TransformationMenu_Default`/`_Named`,
`SubstituteMenu_Default`/`_Named`, `IMenu_Default`/`_Named`: 0 each. `@tests` model empty; run configuration
`alerts-tests` (JUnit, `runType: MODEL`, live) present, see Deviations 1. Module and model references, structure roots,
the sandbox and the stylesheet are those of `alerts2` ([`../s31/FIXTURE.md`](../s31/FIXTURE.md)); structure re-listed
after step 8: unchanged (24 roots, same ids).

### Planted defects (`r:88efc77b-…(mcp.study.alerts.editor)/<id>`)

| | node | what |
|---|---|---|
| D-A | Member_SubstituteMenu 581195628549735294 | the `Channel` AddConcept (…297) deleted; parts now Alert …296, Threshold …298, Note …299 |
| D-B | Alert_MutedKeyword_Actions 581195628549737111 | the `if (approveDelete…) return;` (…115) deleted; body = statements …123, …129 |
| D-C | SeverityClose_Menu **581195628550367588** (TransformationMenu, Alert, MenuTypeNamed …589) | one RIGHT section …590, Action …593 `when?` (StringLiteral …597); set on the `]` constant 581195628549735322 as `TransformationMenuReference_Named` **581195628550891882** |
| D-D | Alert_TransformationMenu 581195628549737473 | added Completion section **581195628550367707** (location …708) with only Action **581195628550367710** `rename…` (StringLiteral …714, IdSelector …722 `AH_property_name`); no `superconcepts menu` |
| D-E | Alert_Mute_KeyMap **581195628550367617** (CellKeyMapDeclaration, Alert; item …618, keystroke …619 `VK_Y` `ctrl+alt+shift`) | `keyMap` set on the `notify` constant 6330044388206401949 only (the outer collection 6330044388206401930 has none) |
| D-F | Alert_Notify_Actions **581195628550367649** (CellActionMapDeclaration, Alert; item …650 `delete_action_id`) | canExecute …651 `node.notify.isEmpty` (IsEmptyOperation **581195628550819913**, inverted); execute …659: if …661 (CellIdReferenceSelector …666 → notifyKeyword), clear …674, select IdSelector …680 `AH_property_name`; set as the `notify` constant's (6330044388206401949) `actionMap` |

### Editor and actions roots as printed after step 8

There is no actions model. Unchanged from `alerts2` (texts in `../s31/FIXTURE.md`): AlertBook_Editor, Channel_Editor,
Threshold_Editor, Note_Editor, EmptyLine_Editor, ChannelRef_Editor, NumberLit_Editor, Metric_Editor, Window_Editor,
ThresholdRef_Editor, BinaryExpr_Editor, Not_Editor, Paren_Editor (`[- ( % inner % ) -]`), AlertStyles, AlertHeader's
layout `[- ?^ muted alert { name } [ { severity } ] -]` (only the `]` constant gained the transformationMenu child, which
PLAIN TEXT does not show). Alert_Editor's PLAIN TEXT is unchanged (`[- # AlertHeader # when % condition % ?^ notify ?(- %
notify % /empty cell: <constant> -) -]`); only the `notify` constant gained `keyMap` and `actionMap`. Changed or new:

```
Member_SubstituteMenu 581195628549735294
substitute menu for concept Member : default
simple concept action Alert
simple concept action Threshold
simple concept action Note

Alert_MutedKeyword_Actions 581195628549737111
action DELETE   can execute : true
  execute : (editorContext, node)->void {
    node.muted = false;
    node.select[in: editorContext, cell: alertKeyword, selectionStart: 0];
  }

Alert_TransformationMenu 581195628549737473   (transformation menu for concept Alert : default)
section({ side transform : right }) {
  superconcepts menu
  ----------
  action
    text { "notify"; }
    can execute { node.notify.isEmpty; }
    execute { node.notify.add new initialized(ChannelRef).select[in: editorContext, cell: FIRST_ERROR]; }
}
==========
section(completion) {
  action
    text { "rename…"; }
    can execute <always>
    execute { node.select[in: editorContext, cell: "AH_property_name"]; }
}

SeverityClose_Menu 581195628550367588   (transformation menu for concept Alert : named SeverityClose_Menu)
section({ side transform : right }) {
  action
    text { "when?"; }
    can execute <always>
    execute { node.condition.select[in: editorContext]; }
}

Alert_Mute_KeyMap 581195628550367617   (keymap, everyModel false, applicable concept Alert)
  item description : toggle muted
       keystrokes : <ctrl+alt+shift> + <VK_Y>
       caret policy : ANY_POSITION   show in popup : false   menu always shown : false   is applicable : <always>
       execute : (node, selectedNodes, editorContext)->void { node.muted = !node.muted; }

Alert_Notify_Actions 581195628550367649   (action map, applicable concept Alert)
  action DELETE
    can execute : (editorContext, node)->boolean { node.notify.isEmpty; }
    execute : (editorContext, node)->void {
      if (node.approveDelete [in: editorContext, cell: notifyKeyword]) { return ; }
      node.notify.clear;
      node.select[in: editorContext, cell: "AH_property_name"];
    }
```

### Cell ids

`mutedKeyword` (EditorCellId 581195628549735312), `alertKeyword` (…735316), `severityClose` (…735324) in AlertHeader;
`notifyKeyword` (581195628549736167) in Alert_Editor. Name cell `AH_property_name`, empty condition `empty_condition`,
Alert outer collection `Collection_cm8a2g_a`; other ids as in `../s31/FIXTURE.md`.

### Walk (before step 1, logged as `walk-*`)

Six temporary probe tests were added next to the six shipped ones (built by `COPY_NODE` of shipped tests inside the
`@tests` model plus blueprint `before`/`result` trees; deleted with them in step 1): `P_UnmuteOneStep` (B-off: copy of
T4, `runWithTwoStepDeletion({ Delete }, false)`), `P_AlertKeywordCompletion` (E: `Complete` on `alertKeyword`, assert
items contain `rename…` and `channel`, no result), `P_MuteChord` (F: `press` `VK_Y` `ctrl+alt+shift`, change
`replace_all`, caret `AH_property_name`, result muted), `P_NotifyDeleteTwoStep` (G-on: copy of T4 on an alert with
`notify pager`, caret `notifyKeyword`, approved cells `[notifyKeyword]` and `notifyKeyword` still shown between the two
Deletes, result alert kept with an empty list), `P_NotifyDeleteOneStep` (G-off: one Delete, same result),
`P_ThresholdRefByTyping` (H: `type "cpuLimit"` into `empty_condition`, result `ThresholdRef → cpuLimit`).

D-D, D-E and D-F add features that `alerts2` lacks, so on plain `alerts2` E, F, G-on and G-off were already red. Their
correct forms were inserted first (Completion section with `superconcepts menu` + `rename…`; `keyMap` on the Alert
outer collection; canExecute `node.notify.isNotEmpty`), plus the unreferenced SeverityClose_Menu: **12/12 green**. Then
each defect was planted **alone** on that state, MAKE, `alerts-tests`, reverted:

| planted alone | red | message | everything else |
|---|---|---|---|
| D-A | T6 (D) **and P_E (E)** | T6 `expected [#, alert, channel, threshold] but was [#, alert, threshold]`; P_E `[alert, threshold, #, rename…]` | green |
| D-B | T4 (B-on) | `expected [mutedKeyword] but was []` (one Delete unmutes) | green, B-off green |
| D-C | T5 (C) | `Different children count in role: notify [was: 0, expected: 1]` | green |
| D-D | P_E (E) | `[rename…]` | green |
| D-E | P_F (F) | `Different property: muted = false, expected: true`; `check_root_node_problems` on the editor model: **no problems found** (checker silent) | green |
| D-F | P_Gon (G-on) **and P_Goff (G-off)** | G-on `expected [notifyKeyword] but was [Collection_cm8a2g_a]` (fall-through approves the whole alert); G-off `members [was: 1, expected: 2]` (the alert is deleted) | green |

All six planted (the shipped state, before step 1): red T4, T5, T6, P_E, P_F, P_Gon, P_Goff; green T1, T2, T3,
P_UnmuteOneStep (B-off), P_ThresholdRefByTyping (H). This is S34 criterion 2's profile (B-on, C, D, E, F, G-on red; G-off
red, recorded). H stayed green in every run.

## Deviations

1. **`alerts-tests` is not shipped**: run configurations live in `.mps/workspace.xml`, which the standard
   `TAR_EXCLUDES` drop, so neither `alerts2.tar.gz` nor `alerts2-broken.tar.gz` carries it (the build recreated it
   with `create_run_configuration` only as a build aid). The S34 prompt has the worker create its own run
   configuration, so none is needed (settled, S34-opus-1).
2. **Order:** the walk ran before step 1 (as instructed), so steps 2–7 were done twice: once in isolation with a revert
   (reverts mint new ids, all gone again in the final state), then for good. D-C…D-F roots were inserted during the
   walk in their correct form and flipped to the defective form (D-D: `superconcepts menu` deleted; D-E: `keyMap` moved
   from the outer collection to the `notify` constant; D-F: `isNotEmpty` replaced by `isEmpty`). The final nodes match
   the recipe.
3. **Selectors:** "selects the name" is `node.select[in: editorContext, cell: "AH_property_name"]` (IdSelector; the name
   cell has no EditorCellId); "selects the condition" is `node.condition.select[in: editorContext]` (no cell selector).
   The keymap item has description `toggle muted`, caret policy ANY_POSITION.
4. **Calls:** mutating calls went through a local wrapper over the same MPS MCP server (`tools_inventory.McpClient`, the
   transport of `scripts/mcp_call.py`) so each could be logged verbatim; MAKE `rebuild` and test runs partly through the
   session's `mps_mcp_*` tools, logged by hand.
5. Project **not closed and not tarred** (the builder was told to leave it open); tarball and sha256 still to do, with
   `classes_gen` (current after the step-8 rebuild).
