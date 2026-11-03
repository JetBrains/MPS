# `alerts` and `alerts2` fixtures (S31, S33; base of `alerts2-broken`, S34)

**Status: recipe written 2026-11-01; `alerts2` built and pinned 2026-11-01 (tarball not yet taken: the builder left the project open).** Build through MPS MCP only,
logging every call to `FIXTURE.log`, and fill *Pins* below; record the tarball's sha256 in
[`../../pins.md`](../../pins.md). Exclude the doc surface and `.mps/workspace.xml`, include `classes_gen`.
A rebuild mints new ids: re-pin here and in `../../../scenarios/S31/`, `S33/` and `../s34/FIXTURE.md`.

## `alerts` (base)

Language `mcp.study.alerts` (AlertBook; members Channel, Threshold, Alert, Note `#`, EmptyLine; ChannelRef;
expressions NumberLit, Metric with a Window `over`, ThresholdRef, comparisons and operators, parentheses), its
sandbox and samples. **Base** = `~/MPSProjects/mcp-study/fixtures/alerts.tar.gz` (sha256
`7557fde745c46c15e5a0589358fedcc88dadbb0601f8d783d8ef7c4155d3a801`), built by
[`build_alerts.py`](build_alerts.py) (copy of `~/MPSProjects/mcp-study/build/build_alerts.py`; it imports
`build_fixture.py` from `~/MPSProjects/mcp-study/build/`; usage `build_alerts.py <log> <pins-json>`) on a
synthesized empty project opened alone (CREATE_ENUM `Severity`, CREATE_CONCEPTS with `make: true`, IS_SMART_REFERENCE
on ChannelRef/ThresholdRef, `scaffold_editor` for 14 concepts, MAKE `rebuild`, sample books `Ops`/`Staging`; call
log `~/MPSProjects/mcp-study/build/alerts-build.log`), plus an opus editor-polish pass that made the static editors
readable (stylesheet `AlertStyles` with `Keyword`, keyword styling, punctuation, smart-reference cells, the editable
empty `notify` cell, the ChannelRef/ThresholdRef scopes; that pass's calls were not logged). Base editor roots, PLAIN
TEXT printed from the `alerts2` copy before any change:

```
AlertBook_Editor    6330044388206345185  [- alert book { name } (- % members % ↩ /empty cell: <default> -) -]   (members one per line)
Channel_Editor      6330044388206345204  [- channel { name } -> { address } -]
Threshold_Editor    6330044388206345217  [- threshold { name } = % value % -]
Alert_Editor        6330044388206345232  [- alert { name } [ { severity } ] muted: { muted } when % condition % notify (- % notify % /empty cell: <constant> -) -]
Note_Editor         6330044388206345262  [- # { text } -]
EmptyLine_Editor    6330044388206345272  <constant>                      (cell id Constant_s23fc5_a)
ChannelRef_Editor   6330044388206345284  ( % channel % -> { name } )     (smart reference; unset: error cell empty_channel)
NumberLit_Editor    6330044388206345299  { value }
Metric_Editor       6330044388206345308  [- { name } ?% window % -]
Window_Editor       6330044388206345322  [- over { minutes } min -]      (cell property_minutes)
ThresholdRef_Editor 6330044388206345332  ( % threshold % -> { name } )
BinaryExpr_Editor   6330044388206345347  [- % left % # alias # % right % -]
Not_Editor          6330044388206345363  [- not % operand % -]
Paren_Editor        6330044388206345375  [- ( % inner % ) -]             (base: `(` punctuation-right, `)` punctuation-left: shows "(disk < 10)")
AlertStyles         6330044388206401791  stylesheet AlertStyles { style Keyword { font-style : bold; text-foreground-color : light: dark blue | dark: steel blue (#000080 / #3D6DAC) } }
```

## `alerts2` (base `alerts`, opened alone; log every call)

1. Insert into `mcp.study.alerts.editor` a default `SubstituteMenu` for `Member` with four `AddConcept`s
   (Alert, Channel, Threshold, Note).
2. `insert_root_node_from_json`: `EditorComponentDeclaration` `AlertHeader` (Alert), indent collection:
   constant `muted` (`renderingCondition` `node.muted`, `id` `mutedKeyword`, `parentStyleClass` → `Keyword`),
   constant `alert` (`id` `alertKeyword`, `transformationMenu` = `TransformationMenuReference_Default{Alert}`),
   property `name`, `[`, property `severity`, `]` (`id` `severityClose`). `update_node SET CHILD` on
   `Alert_Editor`: cells up to `]` replaced by `CellModel_Component` → `AlertHeader`, `muted:` + its cell
   removed, the `notify` constant gets `id` `notifyKeyword`, it and the list `renderingCondition`
   `node.notify.isNotEmpty`.
3. `CellActionMapDeclaration` `Alert_MutedKeyword_Actions` (Alert), one `delete_action_id` item:
   `if (node.approveDelete[in: editorContext, cell: mutedKeyword]) { return; } node.muted = false;
   node.select[in: editorContext, cell: alertKeyword, selectionStart: 0];`; the `muted` constant's `actionMap` → it.
4. Default `TransformationMenu` for `Alert`: one RIGHT section with `TransformationMenuPart_Super` and `Action`
   `notify` (`canExecute` `node.notify.isEmpty`; `node.notify.add new initialized(ChannelRef)`, select `FIRST_ERROR_CELL`).
5. MAKE `mcp.study.alerts` (`rebuild`); check the editor model: 0 errors.
6. In `mcp.study.alerts.tests@tests` (tests facet; lang.test, alerts, closures; import
   `jetbrains.mps.lang.test.runtime`) insert `T1_TypeThresholdName`, `T2_TypeWindowMinutes` (`over 5 min`,
   caret checked), `T3_ParenText` (label text `( disk < 10 )` via `editor component`), `T4_UnmuteTwoStep`
   (`runWithTwoStepDeletion(…, true)`, two Deletes, approved cell `mutedKeyword` asserted between),
   `T5_NotifyAfterSeverity`, `T6_MemberCompletionHidesEmptyLine` (items asserted, `type "threshold"`, Enter).
7. `create_run_configuration` `alerts-tests`, run: 6/6 (a build aid only: run configurations live in `.mps/workspace.xml`, which the tarball excludes, so the cells ask the worker to create one). Pin below; close; tar `alerts2/` with `classes_gen`
   and the standard excludes.

## Pins

Built 2026-11-01 in `~/MPSProjects/mcp-study/build/alerts2` (MPS 2026.1, build 261.25134), every mutating call in
[`FIXTURE.log`](FIXTURE.log). Final state: `alerts-tests` 6/6 green (also after the closing MAKE `rebuild` of
language, sandbox and tests); `check_root_node_problems` 0 errors / 0 warnings on the language module (5 models,
45 roots), the test model (6 roots) and the sandbox model; FIND_INSTANCES (scope editable, exact) of `TransformationMenu_Default`/`_Named`,
`SubstituteMenu_Default`/`_Named`, `IMenu_Default`/`_Named`: 0 each.

### Modules and models

| | reference |
|---|---|
| language | `3b6e9f7c-cc8d-4827-8247-fbc195247fc6(mcp.study.alerts)` |
| structure | `r:283b6142-7913-4c13-b35d-b7a63a338791(mcp.study.alerts.structure)` |
| editor | `r:88efc77b-ce3c-401a-bfc7-ee06ac74f662(mcp.study.alerts.editor)` |
| constraints | `r:7d2e9297-669c-465d-8eeb-6c96ad8dcef2(mcp.study.alerts.constraints)` (ThresholdRef_Constraints 6330044388206401982, ChannelRef_Constraints 6330044388206402000) |
| behavior / typesystem | `r:775e1365-337d-425b-87aa-68f4295529e9` / `r:543adf06-82a9-4d04-9625-845683686cd8` (empty) |
| sandbox | module `763579f2-2130-478a-b504-fcff01d1d367(mcp.study.alerts.sandbox)`, model `r:272ea7c7-e020-4801-a685-96fc12a16f3c(mcp.study.alerts.sandbox)` |
| tests | module `72c3af84-0571-47f6-a6e2-2c64052acbd0(mcp.study.alerts.tests)` (facets java, tests), model `r:95d31e53-f765-4eb5-81e3-749c99592774(mcp.study.alerts.tests@tests)` |

Test model: used languages `jetbrains.mps.lang.test`, `mcp.study.alerts`, `jetbrains.mps.baseLanguage.closures` (+ what
the parsed code pulled in); imports `jetbrains.mps.lang.test.runtime`, `jetbrains.mps.nodeEditor@java_stub`,
`jetbrains.mps.openapi.editor.cells@java_stub`, `org.junit@java_stub`, `jetbrains.mps.ide.editor.actions` and JDK/MPS stubs added by the
parsed code; `jetbrains.mps.baseLanguage` and `jetbrains.mps.lang.plugin` (KeyMapKeystroke) were added as used languages by the writes. Run configuration `alerts-tests`: JUnit, `runType: MODEL`, live, in-process.

### Structure roots (`r:283b6142-…(mcp.study.alerts.structure)/<id>`)

Severity 6330044388206341903 (low, high, critical; default low) · AlertBook 6330044388206341910 · Member 6330044388206341911 ·
Channel 6330044388206341912 · Threshold 6330044388206341913 · Alert 6330044388206341914 (muted 6330044388206341939,
severity 6330044388206341940, condition 6330044388206341941, notify 6330044388206341942) · Note 6330044388206341915 ·
EmptyLine 6330044388206341916 · ChannelRef 6330044388206341917 (channel 6330044388206341945) · Expr 6330044388206341918 ·
NumberLit 6330044388206341919 · Metric 6330044388206341920 · Window 6330044388206341921 · ThresholdRef 6330044388206341922 ·
BinaryExpr 6330044388206341923 · Comparison 6330044388206341924 · Greater 6330044388206341925 · Less 6330044388206341926 ·
Logical 6330044388206341927 · And 6330044388206341928 · Or 6330044388206341929 · Plus 6330044388206341930 · Not 6330044388206341931 ·
Paren 6330044388206341932. Unchanged from the base.

### Editor and actions roots (`r:88efc77b-…(mcp.study.alerts.editor)/<id>`)

Unchanged from the base (texts in the `alerts` section): AlertBook_Editor, Channel_Editor, Threshold_Editor, Note_Editor,
EmptyLine_Editor, ChannelRef_Editor, NumberLit_Editor, Metric_Editor, Window_Editor, ThresholdRef_Editor, BinaryExpr_Editor,
Not_Editor, AlertStyles (`Keyword` style class 6330044388206401792). Changed or new:

**Paren_Editor 6330044388206345375** (changed, see Deviations: punctuation removed) — `[- ( % inner % ) -]`, no style
items; shows `( disk < 10 )`. Cells: `(` 6330044388206401889 (`Constant_u6b6f5_a0`), `)` 6330044388206401892 (`Constant_u6b6f5_c0`).

**Alert_Editor 6330044388206345232** (changed)
```
[- # AlertHeader # when % condition % ? notify ?(- % notify % /empty cell: <constant> -) -]
```
Cells: CellModel_Component → AlertHeader (replaced the `alert` constant 6330044388206401932), `when` 6330044388206401945,
`%condition%` 6330044388206401948, `notify` constant 6330044388206401949 (id **notifyKeyword** = EditorCellId
581195628549736167; renderingCondition 581195628549736131 `node.notify.isNotEmpty`), `%notify%` list 6330044388206401952
(separator `,`, renderingCondition 581195628549736149 `node.notify.isNotEmpty`, cell `refNodeList_notify`). Generated ids:
outer collection `Collection_cm8a2g_a`, `when` `Constant_cm8a2g_b0`, empty condition `empty_condition`.

**AlertHeader 581195628549735302** (EditorComponentDeclaration, Alert)
```
editor component AlertHeader
  applicable concept: Alert
  component cell layout:
     [- ? muted alert { name } [ { severity } ] -]
```
Cells: `muted` constant 581195628549735305 (renderingCondition `node.muted`, `parentStyleClass` → Keyword, actionMap →
Alert_MutedKeyword_Actions, id **mutedKeyword** = EditorCellId 581195628549735312); `alert` constant 581195628549735313
(ApplyStyleClass Keyword, id **alertKeyword** = 581195628549735316, transformationMenu `TransformationMenuReference_Default{Alert}`
581195628549735317); `{name}` 581195628549735318 (generated cell id **`AH_property_name`**); `[` 581195628549735319
(punctuation-right); `{severity}` 581195628549735321 (cell id `AH_property_severity`); `]` 581195628549735322
(punctuation-left, id **severityClose** = 581195628549735324). Collection `Collection_383yic_a`.

**Member_SubstituteMenu 581195628549735294** (SubstituteMenu, Member, MenuTypeDefault)
```
substitute menu for concept Member : default
simple concept action Alert        (581195628549735296)
simple concept action Channel      (581195628549735297)
simple concept action Threshold    (581195628549735298)
simple concept action Note         (581195628549735299)   <- S34 D-A removes the `channel` one (…297)
```

**Alert_MutedKeyword_Actions 581195628549737111** (CellActionMapDeclaration, Alert; item 581195628549737112)
```
action DELETE
  execute : (editorContext, node)->void {
    if (node.approveDelete [in: editorContext, cell: mutedKeyword]) { return ; }
    node.muted = false;
    node.select[in: editorContext, cell: alertKeyword, selectionStart: 0];
  }
```
Both selectors are `CellIdReferenceSelector`s to the EditorCellIds in AlertHeader. The DELETE item also serves BACKSPACE.

**Alert_TransformationMenu 581195628549737473** (TransformationMenu, Alert, MenuTypeDefault)
```
section({ side transform : right }) {
  superconcepts menu
  ----------
  action
    text { "notify"; }                                (StringLiteral 581195628549737483)
    can execute { node.notify.isEmpty; }
    execute { node.notify.add new initialized(ChannelRef).select[in: editorContext, cell: FIRST_ERROR]; }
}
```
No Completion section: Ctrl+Space on `alertKeyword` reaches the Member substitute menu through the super chain
(S34 E's `channel` item, S33's contribution target).

### Cell ids

`mutedKeyword`, `alertKeyword`, `severityClose` (AlertHeader), `notifyKeyword` (Alert_Editor). The component's
property cells are prefixed: `AH_property_name`, `AH_property_severity`. Other editors: `property_name` (Channel,
Threshold, AlertBook, Metric), `property_minutes` (Window), `empty_channel` (unset ChannelRef), `Constant_s23fc5_a`
(EmptyLine), `empty_value` (Threshold), `empty_window` (Metric), `refNodeList_members` (AlertBook).

### Tests (`r:95d31e53-…(mcp.study.alerts.tests@tests)/<id>`)

All carets are `AnonymousCellAnnotation`s with `caretPosition`/`selectionStart`/`selectionEnd` set.

**T1_TypeThresholdName 581195628549808170**
```
before: alert book Ops
  <cell threshold <no name> = 90>                       caret property_name 0
result: alert book Ops
  <cell threshold cpuLimit = 90>                        caret property_name last, 8..8
code:
  type "cpuLimit"
```
**T2_TypeWindowMinutes 581195628549808183**
```
before: alert book Ops
  alert HighCpu [high] when cpu <cell over <no minutes> min> > 90     caret Window property_minutes 0
result: alert book Ops
  alert HighCpu [high] when cpu <cell over 5 min> > 90                caret property_minutes last, 1..1
code:
  type "5"
```
**T3_ParenText 581195628549808384** (no result section)
```
before: ( <cell disk> < 10 )                            caret Metric property_name 0
code:
  final EditorComponent ec = editor component;
  final String[] text = new String[1];
  SwingUtilities.invokeAndWait({ => ec.getEditorContext().getRepository().getModelAccess().runReadAction({ => {
        text[0] = ec.getRootCell().renderText().getText().trim();
      } }); });
  Assert.assertEquals("( disk < 10 )", text[0]);
```
**T4_UnmuteTwoStep 581195628549813574**
```
before: alert book Ops
  <cell muted alert Heartbeat [low] when uptime < 1>    caret mutedKeyword 0
result: alert book Ops
  <cell alert Heartbeat [low] when uptime < 1>          muted = false; caret alertKeyword 0..0
code:
  final EditorComponent ec = editor component;
  EditorTestUtil.runWithTwoStepDeletion({ => {
      invoke action -> Delete
      final List<String> approved = new ArrayList<String>();
      final boolean[] mutedShown = new boolean[1];
      SwingUtilities.invokeAndWait({ => ec.getEditorContext().getRepository().getModelAccess().runReadAction({ => {
            for (EditorCell c : ec.getEditorContext().getDeletionApprover().getCellsApprovedForDeletion()) { approved.add(c.getCellId()); }
            for (EditorCell c : CellTraversalUtil.iterateTree(ec.getRootCell(), ec.getRootCell(), true)) {
              if ("mutedKeyword".equals(c.getCellId())) { mutedShown[0] = true; }
            }
          } }); });
      Assert.assertEquals(Arrays.asList("mutedKeyword"), approved);
      Assert.assertTrue("muted must still be shown after the first Delete", mutedShown[0]);
      invoke action -> Delete
    } }, true);
```
**T5_NotifyAfterSeverity 581195628549813590**
```
before: alert book Ops
  channel pager -> pager://ops
  <cell alert HighCpu [high] when cpu > 90>             caret severityClose last, 1..1
result: alert book Ops
  channel pager -> pager://ops
  alert HighCpu [high] when cpu > 90 notify <cell <no channel>>     caret on the new ChannelRef, empty_channel 0
code:
  type "notify"
```
**T6_MemberCompletionHidesEmptyLine 581195628549813610**
```
before: alert book Ops
  channel pager -> pager://ops
  <cell >                                               EmptyLine, caret Constant_s23fc5_a 0
result: alert book Ops
  channel pager -> pager://ops
  threshold <no name> =                                 value = an (abstract) Expr placeholder; caret not checked
code:
  invoke action -> Complete
  final EditorComponent ec = editor component;
  final List<String> items = new ArrayList<String>();
  SwingUtilities.invokeAndWait({ => ec.getEditorContext().getRepository().getModelAccess().runReadAction({ => {
        for (SubstituteAction a : ec.getSelectedCell().getSubstituteInfo().getMatchingActions("", false)) { items.add(a.getMatchingText("")); }
      } }); });
  Collections.sort(items);
  Assert.assertEquals(Arrays.asList("#", "alert", "channel", "threshold"), items);
  type "threshold"
  press keys <any>+<VK_ENTER> replace all ;
```

**Non-vacuity walk** (logged): T3 failed against the base Paren editor (`expected ( disk < 10 ) but was (disk < 10)`)
and passed after the punctuation removal. With three reversible, id-preserving breaks made at once — the `muted`
constant's `actionMap` unset, the `notify` action text changed to `notifyX`, the `Note` AddConcept pointed at
`EmptyLine` — and MAKE: T1–T3 passed, **T4** failed (`expected [mutedKeyword] but was [Collection_cm8a2g_a]`: the
whole alert was approved), **T5** failed (`notify` count 0, expected 1), **T6** failed (`[EmptyLine, alert, …]`). After
restoring and MAKE: 6/6.

### Sandbox (`r:272ea7c7-…(mcp.study.alerts.sandbox)/<id>`), unchanged from the base

```
alert book Ops                                                        6330044388206401724
  # production alerts                                                 Note 6330044388206401725
  channel pager -> pager://ops                                        6330044388206401726
  channel mail -> ops@example.com                                     6330044388206401727
  threshold cpuLimit = 90                                             6330044388206401728 (NumberLit …729)
                                                                      EmptyLine 6330044388206401730
  alert HighCpu [high] when cpu over 5 min > cpuLimit notify pager    6330044388206401731 (Greater …732, Metric cpu …733,
                                                                        Window 5 …734, ThresholdRef …735, ChannelRef pager …736)
  alert LowDisk [low] when disk < 10 and not ( memory > cpuLimit + 5 ) notify mail, pager
                                                                      6330044388206401737 (And …738, Less …739, Metric disk …740,
                                                                        NumberLit 10 …741, Not …742, Paren …743, Greater …744,
                                                                        Metric memory …745, Plus …746, ThresholdRef …747,
                                                                        NumberLit 5 …748, ChannelRef mail …749, pager …750)
  muted alert Heartbeat [low] when uptime < 1                         6330044388206401751 (Less …752, Metric uptime …753, NumberLit 1 …754)
alert book Staging                                                    6330044388206401755
  channel chat -> chat://staging                                      6330044388206401756
  threshold cpuLimit = 95                                             6330044388206401757 (NumberLit …758)
```

### Free chord check

`KeymapManager.getActiveKeymap()` in the running MPS (keymap `Mac OS X`), via a reflective console probe:
`shift ctrl alt K`, `shift ctrl alt G`, `shift ctrl alt Y` → no actions. Among the platform keymaps shipped in
`lib/app.jar` only `macOS System Shortcuts` binds `shift ctrl alt K` (ToggleBookmarkWithMnemonic); `$default` binds none
of the three.

## Deviations

1. **Paren_Editor changed.** The base polish pass already made parentheses hug (`(` punctuation-right, `)`
   punctuation-left), so the base shows `(disk < 10)`. That contradicts step 6's T3 (`( disk < 10 )`) and S31 item 2
   ("hug ... instead of `( disk < 10 )`"). Closest faithful fix: the two style items (6330044388206401890,
   6330044388206401893) were deleted in `alerts2`, so the shipped editor shows `( disk < 10 )` and S31 item 2 is real work.
2. **Step 2 Alert_Editor edit made surgically**, not as one `SET CHILD` of the whole cell collection: `SET CHILD` of the
   `alert` constant with the `CellModel_Component`, `SET CHILD` deletes of `{name}`, `[`, `{severity}`, `]`, `muted:`,
   `{muted}`, then `ADD CHILD` of the id and the two rendering conditions. The result is the recipe's editor, and the
   surviving cells (`when`, condition, `notify`, list, empty cell) keep their base ids.
3. **`alert` keyword styling:** the recipe names no style for the `alert` constant; it keeps the base's
   `ApplyStyleClass` → Keyword. The `muted` constant uses `parentStyleClass` → Keyword as written.
4. **`FIRST_ERROR_CELL`** is `PredefinedSelector{cellId: firstError}`, printed `FIRST_ERROR`, applied to the new ChannelRef
   (chained `….add new initialized(ChannelRef).select[...]`).
5. **T6's result** threshold has an abstract `Expr` node in `value`: the substitution creates the threshold with its
   required child already filled. A result without it fails (`Different children count in role: value`).
6. **Order:** `alerts-tests` was created right after T2 so it could be run while iterating (a live model config;
   same call, same name). The project was **not closed and not tarred** (the builder was told to leave it open). The
   tarball and its sha256 in `../../pins.md` are still to do, with `classes_gen` (current after the final rebuild)
   and the standard excludes.
7. **Risk for S31 (not a fixture change):** T1's caret is on `property_name` of Threshold. If S31's shared name
   component replaces that cell, its generated id gets the component prefix (cf. `AH_property_name`). Then T1 must
   change, or the component's name cell must be given an explicit id `property_name`. S31 criterion 9 ("T1 unchanged
   in content") should allow for this, or the prompt should expect the explicit id.
