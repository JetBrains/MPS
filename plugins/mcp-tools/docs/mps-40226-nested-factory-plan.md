# MPS-40226 — nested JSON-blueprint nodes run their node factory before their parent is attached

Revision 5 (final; Reviewer5 LGTM after four rounds). This began as the MPS-40216 investigation (a report about `isNamed` that could not be reproduced, background in "What the report says" and findings 1-2). The fix tracked by MPS-40226 is findings 3-7 and Phases 1-3; their code claims were re-checked against the sources.

## What the report says
DataUX `IOptionallyNamed` (interface, extends INamedConcept, `isNamed:boolean`) has a behavior
constructor `isNamed = false; name = "#"`. A child created through `insert_root_node_from_json` or
`update_node ADD CHILD` without those properties comes out with `name="#"` but `isNamed=true`.
The reporter is on build 261.25134.779.

## Findings
1. **Constructors are not the cause.** Both the MCP and the editor build nodes through
   `SModelOperations.createNewNode`, then `BHReflection.initNode`. The constructor's `name = "#"`
   goes through `SPropertyOperations.assign` and `SNodeAccessUtil`, so a constraints setter fires on
   both paths.
   A live scratch language had an interface constructor `isNamed=false; name="#"` and **no factory**.
   Every MCP insert path stored `name="#"` only, which is what `NodeFactoryManager.createNode` stores.
   A repro without a factory could never have diverged, so this only rules out the constructor path.
2. **Speculation, not evidence: D47 (MPS-40164, 00b90e3).** The report mentions only a behavior
   constructor, and constructors run identically in the editor and in the MCP, both at the
   reporter's revision and at HEAD (see finding 1). D47 changed only the inputs node factories get:
   before it, `SNodeFactoryOperations.createNewNode(concept, null)` passed `enclosingNode = null`
   and `model = null`. So D47 can matter only if DataUX has a node factory that is involved, and
   nothing in the report suggests one.
   Verified: build .779 is revision `1c820a9` (2026-07-13) on 2026.1 and does **not** contain D47.
   What writes `isNamed = true` remains unknown without the DataUX language.
3. **A remaining divergence after D47: descendants see a detached parent chain.** This is a real
   MCP bug, independent of DataUX.
   - `instantiateNode` attaches a child (`addChild`) only after its own recursive build returns, and
     `SModelBase.createNode` returns a free node.
   - For ADD CHILD, SET CHILD and staged children, the first level below the attached target is fine.
     The gap starts **two or more levels** below the target: those factories see a parent whose own
     parent is null.
   - For a root insert, every level is affected.
   - Any factory that walks up from `enclosingNode` (`getNodeAncestor`, `getContainingRoot`, parent
     or sibling reads) gets a different answer than it would in the editor.

   A shipped example is `jetbrains.mps.lang.editor` `EDTL_node_factories.NodeFactory_1158947460472`
   on `CellModel_Property`: it sets a stored `readOnly = "true"` when `getNodeAncestor(enclosingNode,
   CellModel_RefCell, inclusive)` is found. Our editor scaffold sets `readOnly` by hand
   (`JetBrainsMPSEditorMcpToolset.kt:87`). Other factories with the same ancestor walk:
   `ConceptMethod`, `ModifiersFactories`, `InitTextIcon`, and `IExtensibleMenuPart_factory`.

   **What remains after the fix, and matches the editor:** a root is built outside the model.
   `NewRootNodeAction` also runs `NodeFactoryManager.createNode(concept, null, null, model)` before
   `model.addRootNode`, so `enclosingNode.getModel()` is null under a root insert in the editor too.
   Factories get the model through the `model` argument.
4. **Explicit blueprint values do not always win.** A nested child's factory runs after the parent's
   `name`, properties and references are applied, and it receives the parent as `enclosingNode`, so
   it can overwrite the parent's explicit values. The guarantee is only "the blueprint wins over the
   node's own constructor and factories".
5. **Setters are applied unevenly.** `name` and non-enum blueprint properties are written raw with
   `node.setProperty` (AbstractNodeOps ~l.344 and `setProperty` ~l.1434), which bypasses constraints
   property setters. Enum values go through `SNodeAccessUtil.setPropertyValue`, which fires them. The
   editor always fires them. This produces the opposite of the reported symptom, but it is a parity
   gap. It is out of scope for this fix; document it, and file a follow-up if confirmed.
6. **print_node output can differ from what is stored.** print_node reads through
   `SNodeAccessUtil.getPropertyValue`, which runs constraints **getters**. A DataUX `isNamed` getter
   would make print_node show `true` with nothing stored.
7. **Ruled out: the reference fix-up.** `performFixReferences` → `ScopeResolver` and blueprint
   references both use raw `setReferenceTarget`/`setReference`, so no `referentSetHandler` runs.
   `updateNodeFromBlueprint` nulls properties only on the existing node; staged new children keep
   their constructor and factory values. One side effect: staged children are built while the old
   children are still attached.

## Plan
### Phase 0 — confirm the reporter's case (in parallel with Phase 1)
- Resolve build 261.25134.779 to a VCS revision on TeamCity (teamcity-cli skill), then run
  `git merge-base --is-ancestor 00b90e3 <rev>`. The date alone is ambiguous across branches.
- Post a YouTrack comment. It is outward-facing, so the user confirms it first. It asks:
  1. the exact tool call and blueprint JSON, and every MCP call between the insert and the print
     (`check_root_node_problems autoApplyQuickFixes=true`, `apply_intention`);
  2. the child's concept (form, table, grid or tab) and its superconcepts' behavior constructors;
  3. **most important:** DataUX node factories for IOptionallyNamed or its implementors, and whether
     they read `enclosingNode`, `model` or ancestors;
  4. whether there is a constraints setter on `name` that maintains `isNamed`, or a getter on `isNamed`;
  5. print_node output **and** the raw stored value (for example `node.getProperty(...)` in the
     console) for an MCP-created element and an editor-created element, and how the editor element
     was created: Enter in a list or completion/substitution;
  6. a retest on a build that contains MPS-40164 (D47).

### Phase 1 — build the tree top-down (the MCP fix; option C from review)
**Split `instantiateNode`** into `createNode` (constructor, factory, name, properties, references)
and `fillChildren`. Expose both to callers: fixing the tree only inside `instantiateNode` would not
help ADD CHILD, SET CHILD or staging, because those callers attach the blueprint's top node only
after its children are built.

- **Index rule: the caller always passes an explicit index to `setupNode`.** Never rely on the
  automatic count, which gives a wrong but plausible index on SET CHILD (the role size instead of
  the replaced slot) and on single-cardinality ADD CHILD (1 instead of 0). The values are:
  - nested child: its position in the role;
  - ADD CHILD: the resolved position, or the role size for an append;
  - single-cardinality ADD CHILD: `0`;
  - SET CHILD: `indexOf(old)` in the role, which is what the editor derives from a sampleNode;
  - staged child: its position in the new list.
- **Keep `instantiateNode`** as the composed `createNode` + `fillChildren` for callers that attach
  later: the root insert (`JetBrainsMPSRootNodeMcpToolset` ~l.372) and the console
  (`JetBrainsMPSConsoleMcpToolset` ~l.117). Only `update_node_child`, `replaceNodeChild` and staging
  switch to the split API.
- **Inside the tree:** for each role, first do the `clearedRoles` delete, before the role's first
  child is created (otherwise the automatic index counts the factory children about to be deleted).
  Then for each child: `createNode` (with the `link` and the explicit index), check assignability, `addChild`, then `fillChildren`.
- **Root insert:** the root stays out of the model until the existing attach pass. That keeps
  array-insert atomicity and matches `NewRootNodeAction`. What remains is
  `enclosingNode.getModel() == null`, the same as in the editor.
- **ADD CHILD, multiple cardinality:**
  1. `createNode(top)`.
  2. Insert it at the resolved position.
  3. `fillChildren(top)`.
  4. If the fill fails, delete the new node and rethrow. Commands do not roll back.
- **ADD CHILD, single cardinality:**
  1. Attach the new child next to the old occupant. `SNode.addChild` and `insertChildBefore` do not
     enforce cardinality, so two children in the role for a moment is fine.
  2. Fill it.
  3. Delete the old occupant only after the fill succeeds; on failure delete the new node.

  This keeps the "check before replacing" guarantee. The new child's factory runs while the old
  occupant is still attached, and during the fill a descendant factory reading
  `enclosingNode.parent.getChildren(role)` sees two occupants. Both are harmless and go into a
  code comment.
- **SET CHILD:** `createNode`, then `insertChildBefore(old)`, then fill, then delete old. On failure,
  delete the new node. The replaced child is not passed as `sampleNode`: the editor passes one only
  for substitution, and `setupNode` would `CopyUtil.copy` the old subtree, which breaks "blueprint
  authoritative".
- **`updateNodeFromBlueprint`:**
  - Snapshot the original children.
  - Wrap **all** of staging, including reference staging, in a try/catch.
  - For each staged child: `createNode` (explicit index = its position in the new list), attach it
    to the target, then `fillChildren`.
  - On any failure, delete the staged children attached so far and rethrow.
  - Apply step 2 deletes only the snapshot of original children.
  - Residual, to document: during staging, factories see the old siblings plus the earlier staged
    siblings appended after them, so the explicit index does not match the momentary position.
- **Dry run: never attach to a live node.**
  - In a dry run, ADD CHILD, SET CHILD and staging keep the old detached build: create and fill,
    no attach.
  - Top-down `addChild` inside the detached blueprint tree is still fine.
  - Factories are skipped in a dry run, so nothing can observe the missing parent chain.
- **Cost:** once an ADD CHILD or SET CHILD subtree is attached, its writes fire model events. The
  subtrees are small, so this is accepted and gets a code comment. Roots stay model-less; the
  attach-first option for roots is still rejected.
- **Rejected:**
  - Attaching the root first: every write would fire model events for the whole root, and a
    failed batch would churn adds and removes, all for the `.getModel()` edge case.
  - A temporary holder or a detached copy of the target: expensive, and it still has no model or
    ancestors.
- **Finding 4** (a nested factory overwriting parent values) is documented, not fixed. Re-applying
  the parent's values after its children would change what factories that read the parent
  (ConceptMethod) observe.

### Phase 2 — tests (`NodeFactoryOnBlueprintPathIntegrationTest`)
- RefCell / `CellModel_Property.readOnly` tests. The fixture module must see `jetbrains.mps.lang.editor`.
  - **Control, passes today:** ADD CHILD of a bare CellModel_Property into an InlineEditorComponent
    that is already attached under a RefCell. Expect `readOnly == "true"`.
  - **Key test, fails today:** ADD CHILD of InlineEditorComponent → CellModel_Property into an
    attached RefCell. The Property's factory walks above the blueprint's top node, so only the
    caller-side attach-then-fill fixes it.
  - **Fails today:** SET CHILD with the same IEC → Property shape, replacing an existing IEC under a RefCell.
  - **Fails today:** a nested `insert_root_node_from_json` ending in RefCell → IEC → Property. This
    one is fixed by the in-tree top-down build alone.
  - `update_root_node_from_json`: its target is always a root, and CellModel_RefCell is never a
    root. So no RefCell walk can reach at or above the target, and a staged RefCell → IEC → Property
    only exercises the in-tree fix. Keep that case, and say that the staging attach-then-fill is
    covered **by analogy with ADD CHILD**. A walk to the root itself (the `ConceptMethod`
    `getContainingRoot` factory under a rewritten ConceptBehavior) already works today, because
    depth-1 staged children see the attached target. It is not a discriminating case either.
  - **After Phase 1:** all of these pass, and an explicit blueprint `readOnly=false` on the Property
    stays `false`.
- **Dry-run tests:** a dry-run ADD CHILD, SET CHILD and `update_root_node_from_json` with nested
  children leave the target's children (count and ids) unchanged.
- **Rollback tests:** an ADD CHILD, SET CHILD or update_root whose nested child has an unknown concept
  or an unassignable concept fails. Assert on the **target's children** (count and ids; for single
  cardinality, the old occupant's id). Do not assert that the whole model is unchanged, because
  `createNode` still runs `model.addLanguage` and factory side effects are not rolled back.
- **Index tests:** a factory-observed index is hard to reach with shipped factories. Cover it by a
  unit-level check that the index handed to `setupNode` matches the rule above on each path, or state
  that it is covered by code review.
- Constructor value kept: `baseLanguage.ResourceVariable` with the constructor setting
  `isFinal = true`. Assert the observed value on root insert, nested child, ADD CHILD, SET CHILD,
  and a new child inside `update_root_node_from_json`. Ancestor factories also run, so the test
  checks the value, not that no factory touched it.
- An invariant guard, labelled as such: `NamedTupleComponentDeclaration` with the constructor
  setting `final = false`. Assert `hasProperty == false` and that print_node shows `false`. It only
  catches a future MCP change that default-fills booleans.
- Blueprint explicit value wins over the node's own constructor and factory.
- Register any new test class in `McpToolsIntegrationTestSuite`.
- Once Phase 1 makes the editor scaffold's manual `readOnly` redundant, keep it anyway: it is
  harmless and explicit.

### Phase 3 — docs
In `mps-node-editing` `json-format.md`, in the blueprint copy and both propagated catalogs, state:
- omitted properties keep their constructor and factory values;
- nested children's factories see their parent chain, but a root being inserted is not yet in the
  model (the same as the editor's New Root);
- blueprint values win over the node's own constructor and factory, but a nested child's factory
  may still change its parent;
- `name` and non-enum properties bypass constraints setters, and print_node shows getter values.

### Validation
- Run the new tests via a scratch-suite run config. Confirm the RefCell test fails on HEAD first.
- Run the full `McpToolsIntegrationTestSuite`.
- Re-check the RefCell case live: `plugins/mcp-tools/test_scenarios/mcp-verification-scenario-MPS-40226.md`
  (pending: MPS was not running when the fix was committed).
- Done: the scratch modules `scratch.mps40216` and `scratch.mps40216.sandbox` and the `/tmp` scratch
  files were deleted.

### Resolution
- If the reporter's factory branches on a null `enclosingNode` or `model`: "fixed by MPS-40164 (D47)",
  plus Phase 1 for the nested-depth variant.
- If it walks ancestors at depth 1 or more: fixed by Phase 1.
- If it is a getter or a quick fix: not an MCP defect. Explain that in the comment and still ship
  Phase 2 and Phase 3.
