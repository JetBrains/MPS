# Side Transforms

A side transform is a transformation-menu section with a `TransformationLocation_SideTransform` location. Text typed at the LEFT or RIGHT edge of a cell is matched against its items, e.g. `1` + `+` gives `1 + _`.

## Blueprint: a RIGHT side transform in a default menu

```json
{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenu",
 "references": [{"role": "conceptDeclaration", "target": "<concept ref>"}],
 "children": [
  {"role": "type", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.MenuTypeDefault"}]},
  {"role": "sections", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuSection", "children": [
    {"role": "locations", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform",
      "children": [{"role": "placeInCell", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder",
        "properties": [{"name": "placeInCell", "value": "RIGHT"}]}]}]}]},
    {"role": "parts", "nodes": [
      {"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Super"},
      {"concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action", "children": [ /* textFunction, executeFunction: see transformation-menus.md */ ]}]}]}]}]}
```

Keep `superconcepts menu` in the section (`references/landscape.md`). For one keyword cell only, attach a named menu to that cell, and include the node's default menu in it (`references/transformation-menus.md` §Attaching to a cell).

Idiom, BL `finalOnTypesInVariables` (LEFT, on `Type`):

```
group
  condition { node.parent.isInstanceOf(VariableDeclaration) && !node.parent:VariableDeclaration.isFinal; }
  action(output concept: VariableDeclaration)
    text "final"
    execute { node<VariableDeclaration> v = node.parent:VariableDeclaration; v.isFinal.set(true);
              v.select[in: editorContext, cell: "finalModifier", selectionStart: -1]; }
```

BL selects `"finalModifier"` only for the sub-concepts whose editor has that id and otherwise falls back to `cell: MOST_RELEVANT`.

## When typing applies an item

Typed text applies an item without a popup only when:

1. exactly one item matches it **strictly** and no other item still matches it; or
2. the text minus its last character is a unique strict match and the whole text matches nothing. The item fires and the last character carries on, e.g. into the next side transform.

"Strictly" means: its matching text equals the typed text, or, for a substitute action with a `can substitute` feature, that function returns true when called with `strictly` = true.

Otherwise nothing is applied. In the IDE the completion auto-popup then shows the filtered items, and Enter picks one. Editor tests have no auto-popup: follow the `type` with `invoke action -> Complete`, which applies a sole remaining match at once, and add `press ENTER` only when two or more items still match. With items `muted` and `mutedAll`, typing `muted` applies nothing, and a prefix, even a unique one such as `mutedA`, applies nothing. If a spec demands "a prefix applies", push back. Or use one of these two idioms, knowing what each costs:

- `TransformationMenuPart_Action` has no pattern guard. A text function that echoes the pattern (`if (!pattern.isEmpty() && "muted".startsWith(pattern)) return pattern; return "muted";`) makes every prefix a strict match, so the first letter already fires and the label shows what was typed.
- For pattern-dependent items, use a `SubstituteMenuPart_Action` (via `wrap substitute menu` / `include substitute menu`). Its matching text returns `pattern`, and `can substitute (pattern, strictly)` decides both whether the item is offered and, with `strictly` = true, whether typing applies it (`references/substitute-menus.md`).

## The edge cell belongs to a child

Typing left of `int` in `int x` reaches the cells of the `Type` child, so the `Type` menus are consulted, not the variable's. Two corpus recipes:

- BL: the default menu of `Type` includes the named menu `finalOnTypesInVariables`. Its group condition is `node.parent.isInstanceOf(VariableDeclaration)` and it edits `node.parent`.
- Kaja `Direction_TransformationMenu` (MPS source checkout only, `samples/robot_Kaja`): in the child's default menu, an `include menu` whose `nodeFunction` returns `node.parent` and whose `menuReference` is `TransformationMenuReference_Default`. This pulls the parent's default side transforms onto the child's cells.

## All binary operators after an expression

Do not write one `TransformationMenuPart_Action` per operator. BL's named menu `binaryOperations_Expression` (included from `Expression_TransformationMenu`) has LEFT and RIGHT sections with:

```
group
  condition { !node.isInstanceOf(BinaryOperation); }
  wrap substitute menu
    menu to wrap default substitute menu for BinaryOperation
    handler (…, createdNode, targetNode)->void {
      PrecedenceUtil.processRightTransform(node, createdNode).select[in: editorContext, cell: MOST_RELEVANT, selectionStart: -1];
    }
```

`TransformationMenuPart_WrapSubstituteMenu` roles: `menuReference` (1, `SubstituteMenuReference_Default{concept}` or `SubstituteMenuReference_Named{menu}`), `targetNode` (0..1, `QueryFunction_TransformationMenu_Node`, default the current node), `handler` (1, `QueryFunction_TransformationMenu_WrapperHandler`), `features`. Every operator the substitute menu offers becomes a side-transform item, and the handler places the `createdNode` (e.g. sets its left operand to `node` and replaces `node`). `createdNode` arrives with every empty required child already filled (with the link's `defaultConcreteConcept`, or else a placeholder of the abstract target), so set each operand explicitly: the wrapped side with `.set(...)`, and clear the other side if it must start empty.

## Showing side-transform items in Ctrl+Space

Side-transform items are not in completion by default. Either list `TransformationLocation_Completion` next to the side-transform location in the same section, or, in a Completion section, `include menu` the same menu with `location` set to the side-transform location (without `location` it is queried at Completion and adds nothing; BL `SwitchStatement_ApplySideTransforms`).

## LEFT vs RIGHT

RIGHT fires with the caret at the right end of the cell, LEFT at the left end. A character typed mid-cell edits the cell text. For mid-cell triggers use a keymap item with a `caretPolicy` (`references/keymaps.md`).
