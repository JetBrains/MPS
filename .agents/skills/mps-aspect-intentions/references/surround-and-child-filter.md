# Surround-With Intentions and Child Filters

Two patterns that work with multi-selection or deep-descendant cursor positions.

## `SurroundWithIntentionDeclaration` — wrap a selection

`SurroundWithIntentionDeclaration` runs when the user has selected a contiguous range of sibling nodes and Alt+Enters on them.

### Verbatim example — `WrapInParens` (ChemMastery)

Body of `WrapInParens` (forConcept `ElementRef`):

```
List<SNode> selectedNodes = editorContext.getSelectedNodes();
node<Parens> parens = node.add prev-sibling(new node<Parens>());
foreach n in selectedNodes {
  if (n.isInstanceOf(CompoundComponent)) {
    parens.elements.add(n as CompoundComponent);
  }
}
parens.select[in: editorContext, cell: LAST, selectionStart: -1];
```

### Walk-through

1. `editorContext.getSelectedNodes()` — the multi-selection as a `List<SNode>`.
2. `node.add prev-sibling(new node<Parens>())` — insert a fresh `Parens` before the current node and capture a typed reference to it.
3. Iterate the selection, guard with `isInstanceOf`, move each into `parens.elements` with a null-safe cast. The old nodes detach from their previous parent automatically because `elements` is a containment role.
4. Place the caret at the end (`selectionStart: -1`) of the `LAST` editor cell of `parens` so the user can keep typing.

See `references/execute-idioms.md` for the `SelectInEditorOperation` JSON shape.

## `ChildFilterFunction` — narrow `isAvailableInChildNodes`

When `isAvailableInChildNodes = true`, the intention becomes eligible at every descendant of a `forConcept` ancestor. A `ChildFilterFunction` narrows that further: it runs per descendant cursor position and returns `false` to hide the intention at that position.

### Parameters (all implicit)

- `node` — `ConceptFunctionParameter_node` — the nearest enclosing `forConcept` ancestor (typed).
- `childNode` — `jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_childNode` — the descendant under the cursor.
- `editorContext` — `ConceptFunctionParameter_editorContext`.

### Verbatim example — `AddOnEntry` (StateChart)

`AddOnEntry` (forConcept `State`, available in child nodes) hides itself whenever the cursor is inside a *nested* State so only the innermost enclosing State's menu offers the action. Body:

```
childNode.ancestor<concept = State> :eq: node;
```

Pieces:

- `:eq:` is MPS's **null-safe equality** (concept `jetbrains.mps.baseLanguage.structure.NPEEqualsExpression`). Use it instead of `==` when either side can be `null` — here `childNode.ancestor<concept = State>` is nullable.
- `childNode.ancestor<concept = State>` walks up from the descendant to its nearest enclosing `State` (concept `Node_GetAncestorOperation` with an `OperationParm_Concept` parameter; see `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin).

The trailing boolean expression (no explicit `return`) is the filter's result.

### JSON shape — `ChildFilterFunction` body

The child filter sits in `IntentionDeclaration.childFilterFunction`:

```json
{
  "concept": "jetbrains.mps.lang.intentions.structure.ChildFilterFunction",
  "children": [
    { "role": "body", "nodes": [
      { "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
        "children": [ { "role": "statement", "nodes": [
          { "concept": "jetbrains.mps.baseLanguage.structure.ExpressionStatement",
            "children": [ { "role": "expression", "nodes": [
              { "concept": "jetbrains.mps.baseLanguage.structure.NPEEqualsExpression",
                "children": [
                  { "role": "leftExpression", "nodes": [
                    { "concept": "jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation",
                      "children": [ /* operand = childNode, parameter = OperationParm_Concept(State) */ ]
                    }
                  ]},
                  { "role": "rightExpression", "nodes": [
                    { "concept": "jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" }
                  ]}
                ]
              }
            ]}]
          }
        ]}]
      }
    ]}
  ]
}
```

### Companion `isApplicable` idiom

Also verbatim from `AddOnEntry`:

```
node.onEntry.operations.isEmpty;
```

Uses the **collections** `IsEmptyOperation` to make an additive intention stop offering itself once it has been applied.
