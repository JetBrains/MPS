# Execute-Block Idioms

Patterns you reach for inside an `ExecuteBlock` body. All come from `jetbrains.mps.lang.smodel` / `jetbrains.mps.baseLanguage.collections` unless noted.

## AST-editing surface syntax

| Surface syntax | Concept (FQN short) | Notes |
|---|---|---|
| `node.add prev-sibling(new node<X>())` | `Node_InsertPrevSiblingOperation` | Splices a new node before `node` in its parent's child collection. Returns the inserted node. Use `add next-sibling` / `parent.children.add(...)` as variants. |
| `n.isInstanceOf(C)` | `Node_IsInstanceOfOperation` | Null-safe runtime concept check. Its `conceptArgument` child is a `RefConcept_Reference` pointing to the concept declaration. |
| `n as C` | `SNodeTypeCastExpression` with property `asCast = true` | Null-safe downcast (returns `null` if not an instance). Preferred over a Java `(C) n` cast inside MPS code. |
| `list.add(x)` on an `SLinkListAccess` | `AddElementOperation` (collections) | `parens.elements.add(n as CompoundComponent)` is `DotExpression(SLinkListAccess(elements), AddElementOperation)`. |
| `target.select[in: editorContext, cell: LAST, selectionStart: -1]` | `SelectInEditorOperation` (`jetbrains.mps.lang.editor`) | Moves the caret to a newly created node and a specific editor cell. Children: `editorContext` (Expression), `cellSelector` (`AbstractCellSelector`, usually `PredefinedSelector` with `cellId` ∈ {`first`, `last`, `editable`, ...}), and optional `selectionStart` (Expression; `-1` means end of cell). |

Other typical needs:

- Create nodes via `new node<C>()` and splice into the AST (`node.children.add(...)`, `parent.childRole.add(...)`, `node.add prev-sibling(...)`).
- Navigate via smodel (`node.parent`, `node.ancestor<C>`).
- Call behavior methods (`node.interpret()`, `node.render()`).
- Open editors / dialogs via `editorContext.getOperationContext().getComponent(...)` or MPS API.

## `SelectInEditorOperation` — JSON shape

The trickiest fragment is the final caret placement. Verbatim JSON:

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.SelectInEditorOperation",
  "children": [
    { "role": "editorContext", "nodes": [
      { "concept": "jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" }
    ]},
    { "role": "cellSelector", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.PredefinedSelector",
        "properties": [ { "name": "cellId", "value": "1S2pyLby17K/last" } ]
      }
    ]},
    { "role": "selectionStart", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.IntegerConstant",
        "properties": [ { "name": "value", "value": "-1" } ]
      }
    ]}
  ]
}
```

`cellId` is an enum property; its value is a qualified enum-member id of the form `<enum-model>/<literal-name>` (here `last`). Use `first`, `editable`, etc. for other positions.

Always end an `ExecuteBlock` that creates a new node with a `SelectInEditorOperation` so the caret lands where the user can keep typing.

## Attach an Annotation (Node Attribute) to the Current Node

Intentions are the canonical UI for adding an **annotation** (node attribute) to arbitrary nodes: declare the intention `for concept BaseConcept` (the attribute can attach to any node) and gate it by *context* in `isApplicable`. From `jetbrains.mps.lang.test` (`MarkUnorderedChildrenInResultMatch`):

```
intention MarkUnorderedChildrenInResultMatch for concept BaseConcept {
  available in child nodes : false

  isApplicable(node, editorContext)->boolean {
    // gate by context, not by concept: only offered inside the result fixture of an editor test
    if (!node.ancestor<concept = TestNode>.parent.isInstanceOf(EditorTestCase)) { return false; }
    return true;
  }

  execute(node, editorContext)->void {
    node<UnorderedChildrenMark> m = new initialized node<UnorderedChildrenMark>();
    node.@unorderedChildren.add(m);      // attribute declared `multiple` → the .@ access is a list
    m.select[in: editorContext, cell: FIRST_EDITABLE];
  }
}
```

- **`forConcept = BaseConcept` + context-checking `isApplicable`** is the standard combination for attribute-attaching intentions — the attribute is placeable anywhere, so the surrounding context (ancestors, containing root) decides where offering it makes sense.
- For an attribute declared **`multiple`**, `node.@<role>` yields a list — append with `.add(...)`. For a single (non-`multiple`) attribute, assign instead: `node.@MyMark = m;`. JSON blueprints for the `.@` operator are in `mps-model-manipulation/references/attribute-access.md`.
- `new initialized node<...>()` runs the concept's NodeFactory — requires `jetbrains.mps.lang.actions` as used language (see `factory-initialized.md`).
- End by selecting the new attribute node (`FIRST_EDITABLE`) so the user can immediately fill in its cells (e.g. a mark's `link` reference).
- Pair the intention with a `delete_action_id` action map on the annotation's own editor cell so `Delete`/`Backspace` removes the mark again — see `mps-aspect-editor-menus-and-keymaps/references/action-maps.md` §"Keyboard-Deletable Annotation".

Verbatim JSON of the `executeFunction` body (the `body` → `StatementList`), extracted from the live intention. After insertion, point the two `variableDeclaration` references at the freshly created `m` local variable:

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
  "children": [{
    "role": "statement",
    "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement",
        "children": [{ "role": "localVariableDeclaration", "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration",
          "properties": [{ "name": "name", "value": "m" }],
          "children": [
            { "role": "type", "nodes": [{
              "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
              "references": [{ "role": "concept", "target": "<UnorderedChildrenMark concept>" }] }]},
            { "role": "initializer", "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
              "children": [{ "role": "creator", "nodes": [{
                "concept": "jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer",
                "children": [{ "role": "createdType", "nodes": [{
                  "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
                  "references": [{ "role": "concept", "target": "<UnorderedChildrenMark concept>" }] }]}]
              }]}]
            }]}
          ]}]}]},
      { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
        "children": [{ "role": "expression", "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
          "children": [
            { "role": "operand", "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
              "children": [
                { "role": "operand",   "nodes": [{ "concept": "jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" }]},
                { "role": "operation", "nodes": [{
                  "concept": "jetbrains.mps.lang.smodel.structure.AttributeAccess",
                  "children": [{ "role": "qualifier", "nodes": [{
                    "concept": "jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier",
                    "references": [{ "role": "attributeConcept", "target": "<UnorderedChildrenMark concept>" }] }]}]
                }]}
              ]}]},
            { "role": "operation", "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.collections.structure.AddElementOperation",
              "children": [{ "role": "argument", "nodes": [{
                "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
                "references": [{ "role": "variableDeclaration", "target": "<m-local-var-node-ref>" }] }]}]
            }]}
          ]}]}]},
      { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
        "children": [{ "role": "expression", "nodes": [{
          "concept": "jetbrains.mps.baseLanguage.structure.DotExpression",
          "children": [
            { "role": "operand", "nodes": [{
              "concept": "jetbrains.mps.baseLanguage.structure.VariableReference",
              "references": [{ "role": "variableDeclaration", "target": "<m-local-var-node-ref>" }] }]},
            { "role": "operation", "nodes": [{
              "concept": "jetbrains.mps.lang.editor.structure.SelectInEditorOperation",
              "children": [
                { "role": "editorContext", "nodes": [{ "concept": "jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" }]},
                { "role": "cellSelector", "nodes": [{
                  "concept": "jetbrains.mps.lang.editor.structure.PredefinedSelector",
                  "properties": [{ "name": "cellId", "value": "1S2pyLby17G/firstEditable" }] }]}
              ]}]}
          ]}]}]}
    ]
  }]
}
```

FQN traps in this blueprint (verified against the live node):

- `new initialized node<C>()` is a `GenericNewExpression` whose `creator` is `jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer` (needs `jetbrains.mps.lang.actions` as used language) — *not* `SNodeCreator` (the plain `new node<C>()`, no factory) and *not* `NF_Concept_NewInstance` (`c.new initialized()` on a concept value).
- The multiple-attribute append is `AttributeAccess` + `NodeAttributeQualifier` chained into a collections `AddElementOperation` — the whole `.@` chain is parser-blind, always blueprint it.
- `FIRST_EDITABLE` is the qualified enum member `1S2pyLby17G/firstEditable` on `PredefinedSelector.cellId`; omitting `cellId` means `FIRST`.
- In intention bodies `editorContext` is `jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext` — unlike action-map bodies, which use the editor language's own parameter concept.

## Concept FQN quick-reference

| Concept | FQN |
|---|---|
| `Node_InsertPrevSiblingOperation` | `jetbrains.mps.lang.smodel.structure.Node_InsertPrevSiblingOperation` |
| `Node_IsInstanceOfOperation` | `jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation` |
| `SNodeTypeCastExpression` (with `asCast = true`) | `jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression` |
| `SelectInEditorOperation` | `jetbrains.mps.lang.editor.structure.SelectInEditorOperation` |
| `PredefinedSelector` | `jetbrains.mps.lang.editor.structure.PredefinedSelector` |
| `AddElementOperation` (collections) | `jetbrains.mps.baseLanguage.collections.structure.AddElementOperation` |
| `NPEEqualsExpression` (the `:eq:` operator) | `jetbrains.mps.baseLanguage.structure.NPEEqualsExpression` |
| `IsEmptyOperation` (collections, on role/sequence) | `jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation` |
