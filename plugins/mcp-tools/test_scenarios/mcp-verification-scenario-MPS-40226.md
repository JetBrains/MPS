# MPS MCP Live Verification Scenario — MPS-40226 (nested blueprint nodes and their node factories)

**Goal:** confirm against a running MPS that the JSON-blueprint tools now run a nested node's node
factory while its parent chain is attached, as the editor does, and that failures and dry runs
leave the target unchanged. The fix is in the commit that added this file (subject
`MPS-40226 - ...`).

**The probe:** `jetbrains.mps.lang.editor` has a node factory for `CellModel_Property` that sets
`readOnly = true` when the enclosing node has a `CellModel_RefCell` ancestor. So a Property cell
inside RefCell → InlineEditorComponent must come out with `readOnly = "true"`, however it was
inserted. Before the fix, the nested cases (V1, V4, V5, V11) left `readOnly` unset.

| # | Area | What it proves |
|---|------|----------------|
| V1 | `insert_root_node_from_json`, nested | in-tree top-down build |
| V3 | ADD CHILD one level below an attached node | control (worked before the fix too) |
| V4 | ADD CHILD of a two-level blueprint | the caller attaches the top node, then fills it |
| V5 | SET CHILD of a two-level blueprint | same, for replacement |
| V6 | explicit blueprint value | the blueprint wins over the node's own factory |
| V7, V10 | dry runs | nothing is attached to a live node |
| V8, V9, V12, V13 | failures | the target's children stay exactly as they were |
| V11 | `update_root_node_from_json` | staged children are built top-down |

The expected outcomes come from the implementation and its integration tests
(`NodeFactoryOnBlueprintPathIntegrationTest`), **not from a live run**: MPS was not running when
this was written. If a response's shape differs from what is described here but the checked
values (the `readOnly` values and child references) match, record the step as PASS with a
"shape" note, and quote the difference.

---

## 0. Rules for the agent running this scenario (READ FIRST)

1. **All calls are MPS MCP tools** (`mps_mcp_*`). Your MCP server exposes them with a
   session-specific prefix such as `mcp__mps-mcp-<token>__`; use whatever prefix you have. If no
   `mps_mcp_*` tools are available, or they fail with ECONNREFUSED, stop and ask the human to start
   MPS with the MCP server enabled. Do not work around it.
2. **Always pass `projectPath` = `/Users/vaclav/work/MPS/myMPS-fix`** on every call.
3. **Precondition: MPS must run code that includes the MPS-40226 commit.** When MPS is started from
   sources, the human must have built the project after checking out the commit. If V1, V4, V5 and
   V11 all fail with `readOnly` missing while V3 passes, report the likely cause as "MPS runs a
   build without the fix" before anything else.
4. **Never read or edit `.mps` files.** Use only the MCP tools.
5. **Do not roll anything back.** Leave every probe root in place; the human reverts (§3).
6. **Run the steps in order.** Later steps use references recorded earlier. Record each reference
   exactly as the response gives it; never invent one.
7. **Reading a printout:** `mps_mcp_print_node` returns the JSON inline in `data`, or, when the
   output is large, a temp-file path in `data`; then read that file. With `deep=true`, children are
   nested under `children[].children[]` per role. A node's properties are in
   `properties:[{name, value, ...}]`. **A boolean that is false or unset is omitted** from
   `properties`.
8. **Record PASS / FAIL for every step** with a one-line note, then print the Final Report (§2).

### Identifiers

```
projectPath           /Users/vaclav/work/MPS/myMPS-fix
Kaja editor model     r:18c202d7-badd-41dd-bd9e-9d42a045e4f4(jetbrains.mps.samples.Kaja.editor)
                      (if it does not resolve, look it up by the name jetbrains.mps.samples.Kaja.editor
                       with mps_mcp_get_project_structure; if it is still missing, stop: environment problem)

Concepts (blueprint "concept" values):
  E = jetbrains.mps.lang.editor.structure
  E.ConceptEditorDeclaration   role cellModel       [1]
  E.CellModel_RefCell          role editorComponent [0..1]
  E.InlineEditorComponent      role cellModel       [1]
  E.CellModel_Property         property readOnly (boolean)
```

### Blueprints (copy verbatim)

**B_ROOT_FULL**: an editor root, RefCell → IEC → Property
```json
{"concept":"jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration","children":[{"role":"cellModel","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.CellModel_RefCell","children":[{"role":"editorComponent","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.InlineEditorComponent","children":[{"role":"cellModel","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.CellModel_Property"}]}]}]}]}]}]}
```
**B_ROOT_NOPROP**: the same without the Property cell
```json
{"concept":"jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration","children":[{"role":"cellModel","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.CellModel_RefCell","children":[{"role":"editorComponent","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.InlineEditorComponent"}]}]}]}]}
```
**B_IEC_PROP**: an inline editor holding a Property cell
```json
{"concept":"jetbrains.mps.lang.editor.structure.InlineEditorComponent","children":[{"role":"cellModel","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.CellModel_Property"}]}]}
```
**B_IEC_PROP_FALSE**: the same with an explicit `readOnly=false`
```json
{"concept":"jetbrains.mps.lang.editor.structure.InlineEditorComponent","children":[{"role":"cellModel","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.CellModel_Property","properties":[{"name":"readOnly","value":"false"}]}]}]}
```
**B_IEC_BAD**: an inline editor whose nested cell has an unknown concept
```json
{"concept":"jetbrains.mps.lang.editor.structure.InlineEditorComponent","children":[{"role":"cellModel","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.NoSuchCellMps40226"}]}]}
```
**B_ROOT_BAD**: B_ROOT_FULL with the Property cell's concept replaced by
`jetbrains.mps.lang.editor.structure.NoSuchCellMps40226`

**B_ROOT_BADREF**: B_ROOT_FULL with a top-level `"references":[{"role":"noSuchRoleMps40226","target":"x"}]`
added to the ConceptEditorDeclaration object

---

## 1. Steps

### V0 — Preflight
`mps_mcp_list_open_projects` (projectPath as above). **Expected:** `ok:true`, and a project whose
`mpsProjectBaseDirectory` is `/Users/vaclav/work/MPS/myMPS-fix`.
Then `mps_mcp_get_project_structure` with `startingPoint` = the Kaja editor model,
`includeRootNodes=true`, `nodeDetail="names"`. **Expected:** the model resolves. Note the number of
root nodes (N0) for the report.

### V1 — Nested root insert (fixed by the in-tree top-down build)
`mps_mcp_insert_root_node_from_json`: `modelReference` = the Kaja editor model, `json` = B_ROOT_FULL.
**Expected:** `ok:true`. Record the new root's `reference` as **ROOT1**.
`mps_mcp_print_node` with `nodeReference`=ROOT1 and `deep=true`. Find cellModel (CellModel_RefCell) →
editorComponent (InlineEditorComponent) → cellModel (CellModel_Property).
**PASS if** the Property has `readOnly` = `"true"`.

### V2 — Setup: a root with an attached RefCell → IEC, without a Property cell
`mps_mcp_insert_root_node_from_json` with B_ROOT_NOPROP. Record the root as **ROOT2**. Print ROOT2
with `deep=true`, and record the RefCell's reference as **REFCELL2** and the InlineEditorComponent's
as **IEC2**. **PASS if** both exist.

### V3 — Control: ADD CHILD one level below an attached node
`mps_mcp_update_node`: `operation`=ADD, `kind`=CHILD, `nodeReference`=IEC2, `childRole`=`cellModel`,
`childJson`=`{"concept":"jetbrains.mps.lang.editor.structure.CellModel_Property"}`.
**Expected:** `ok:true`. Print ROOT2 with `deep=true`.
**PASS if** the Property under IEC2 has `readOnly` = `"true"`. This also passed before the fix.

### V4 — Key: ADD CHILD of a two-level blueprint under the attached RefCell
`mps_mcp_update_node`: ADD CHILD, `nodeReference`=REFCELL2, `childRole`=`editorComponent`,
`childJson`=B_IEC_PROP. The role is single-cardinality, so this replaces IEC2.
**Expected:** `ok:true`. Record the new InlineEditorComponent's reference, from the response or from
a deep print of ROOT2, as **IEC4**.
**PASS if** all of the following hold:
- REFCELL2 has exactly one editorComponent;
- that editorComponent is IEC4, and IEC4 is not IEC2;
- IEC4's Property has `readOnly` = `"true"`.

### V5 — SET CHILD of a two-level blueprint
`mps_mcp_update_node`: `operation`=SET, `kind`=CHILD, `childNodeRef`=IEC4, `childJson`=B_IEC_PROP.
**Expected:** `ok:true`. The response is the *parent's* envelope, not the new child's.
Print ROOT2 with `deep=true` and record the editorComponent as **IEC5**.
**PASS if** all of the following hold:
- there is exactly one editorComponent;
- it is IEC5, and IEC5 is not IEC4;
- IEC5's Property has `readOnly` = `"true"`.

### V6 — An explicit blueprint value wins over the node's own factory
ADD CHILD, `nodeReference`=REFCELL2, `childRole`=`editorComponent`, `childJson`=B_IEC_PROP_FALSE.
Print ROOT2 with `deep=true` and record the editorComponent as **IEC6**.
**PASS if** there is exactly one editorComponent (IEC6), and its Property has **no** `readOnly`
entry, or `readOnly` = `"false"`.

### V7 — ADD CHILD dry run attaches nothing
ADD CHILD, `nodeReference`=REFCELL2, `childRole`=`editorComponent`, `childJson`=B_IEC_PROP,
`dryRun=true`.
**Expected:** `ok:true` with `data.dryRun:true`.
**PASS if** a deep print of ROOT2 still shows exactly one editorComponent, which is IEC6, with the
Property unchanged from V6.

### V8 — Failed ADD CHILD keeps the old occupant
ADD CHILD, `nodeReference`=REFCELL2, `childRole`=`editorComponent`, `childJson`=B_IEC_BAD.
**Expected:** `ok:false`. The error starts with `Failed to instantiate child node from JSON` and
names the unknown concept `NoSuchCellMps40226`.
**PASS if** a deep print of ROOT2 shows exactly one editorComponent, which is IEC6, with no second
InlineEditorComponent anywhere under REFCELL2.

### V9 — Failed SET CHILD keeps the child it would have replaced
SET CHILD, `childNodeRef`=IEC6, `childJson`=B_IEC_BAD.
**Expected:** `ok:false`. The error starts with `Failed to instantiate new child node from JSON`
and names `NoSuchCellMps40226`.
**PASS if** REFCELL2 still has exactly one editorComponent, which is IEC6.

### V10 — `update_root_node_from_json` dry run attaches nothing
First print ROOT1 with `deep=false` and record its cellModel child's reference as **CM1**.
`mps_mcp_update_root_node_from_json`: `nodeReference`=ROOT1, `json`=B_ROOT_FULL, `dryRun=true`.
**Expected:** `ok:true` with `data.dryRun:true`.
**PASS if** a shallow print of ROOT1 still lists exactly one cellModel child, which is CM1.

### V11 — `update_root_node_from_json` builds the staged children top-down
`mps_mcp_update_root_node_from_json`: `nodeReference`=ROOT1, `json`=B_ROOT_FULL (no dry run).
**Expected:** `ok:true`.
Print ROOT1 with `deep=true` and record its cellModel as **CM11**.
**PASS if** all of the following hold:
- there is exactly one cellModel, CM11, and CM11 is not CM1 (the children were re-created);
- the Property under CM11 → editorComponent → cellModel has `readOnly` = `"true"`.

### V12 — A failed `update_root_node_from_json` leaves the root's children unchanged
`mps_mcp_update_root_node_from_json`: `nodeReference`=ROOT1, `json`=B_ROOT_BAD.
**Expected:** `ok:false`, and the error names `NoSuchCellMps40226`.
**PASS if** a shallow print of ROOT1 lists exactly one cellModel child, which is CM11.

### V13 — A reference failure after the children were staged also rolls back
`mps_mcp_update_root_node_from_json`: `nodeReference`=ROOT1, `json`=B_ROOT_BADREF.
**Expected:** `ok:false`, and the error names the unknown reference role `noSuchRoleMps40226`.
**PASS if** a shallow print of ROOT1 lists exactly one cellModel child, which is CM11.

### V14 — Nothing leaked into the model
Repeat the V0 structure call.
**PASS if** the model has exactly N0 + 2 roots (ROOT1 and ROOT2).

---

## 2. Final Report (the agent MUST print this)

Print a table of V0–V14 with PASS / FAIL and a one-line note, plus the recorded references (ROOT1,
ROOT2, REFCELL2, IEC2, IEC4, IEC5, IEC6, CM1, CM11). Then:
- **If all passed,** say so: *"All MPS-40226 live verification steps passed."*
- **If anything failed,** add a **"WHAT DID NOT WORK"** section listing each failed step: the tool,
  its parameters, and the exact `error` text or unexpected printout excerpt. Apply rule 3 if the
  failure pattern matches it. Do not attempt to fix anything.
- Report steps skipped for environment reasons separately from genuine failures.

---

## 3. Manual rollback (for the human; the agent does NOT do this)

The probe roots are saved into the Kaja language's editor model on disk. To revert:
```
git checkout -- samples/robot_Kaja/languages/Kajak/languageModels/editor.mps
git status --short samples/robot_Kaja   # expect empty; restore Kajak.mpl the same way if it is listed
```
Then reload the model in MPS (or restart MPS). Alternatively, delete ROOT1 and ROOT2 with
`mps_mcp_update_root_node_from_json` (`operation=DELETE`).
