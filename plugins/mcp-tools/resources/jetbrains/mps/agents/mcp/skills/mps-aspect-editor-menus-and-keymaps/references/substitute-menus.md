# Substitute Menus

Substitute menus decide **which nodes completion offers for a slot** (how a slot reaches them: `references/landscape.md`).

## Default vs named

Both are the rootable `SubstituteMenu`: `conceptDeclaration` (ref, 1), `type` (child), `parts` (0..n `SubstituteMenuPart`), `methodDeclaration`. The root `name` is computed; do not set it.

- **Default**: `type` = `MenuTypeDefault`. Used for every slot whose target concept is `conceptDeclaration`.
- **Named**: `type` = `MenuTypeNamed` with property `name`. Used only where included: `SubstituteMenuPart_IncludeMenu` / `SubstituteMenuPart_Wrapper` in another substitute menu, or `include substitute menu` / `wrap substitute menu` in a transformation menu. Cells have no `substituteMenu` role. To give one cell a named substitute menu, set its `transformationMenu` to a named transformation menu whose Completion section holds `TransformationMenuPart_IncludeSubstituteMenu` with `menuReference` `SubstituteMenuReference_Named{menu}` (optional `link` reference).

## When no default substitute menu exists

MPS synthesises one: all non-abstract sub-concepts of `C` that pass the `can be child` / `can be parent` constraints, plus, for a smart-reference concept, one item per scope target.

## An empty default hides the concept

A default substitute menu with no parts hides `C` (and sub-concepts without their own menu) from completion. MPS hides its deprecated concepts this way (`r:00000000-0000-4000-0000-011c895902fd(jetbrains.mps.lang.smodel.editor)/7400021826775325053`). To hide `C` but keep its sub-concepts, give it one `SubstituteMenuPart_Subconcepts` part (`r:00000000-0000-4000-0000-011c89590350(jetbrains.mps.lang.intentions.editor)/3982593663455826323`).

```json
{"concept":"jetbrains.mps.lang.editor.structure.SubstituteMenu",
 "references":[{"role":"conceptDeclaration","target":"<concept ref>"}],
 "children":[{"role":"type","nodes":[{"concept":"jetbrains.mps.lang.editor.structure.MenuTypeDefault"}]}]}
```

## Parts

| Part | Purpose |
|---|---|
| `SubstituteMenuPart_AddConcept` | One concept (`concept` reference) |
| `SubstituteMenuPart_Concepts` | Concepts computed by a query |
| `SubstituteMenuPart_Subconcepts` | Default menus of the sub-concepts of the menu's concept; optional `filter` |
| `SubstituteMenuPart_Group` | `variables`, `condition`, `parts` |
| `SubstituteMenuPart_IncludeMenu` | Another substitute menu (`menuReference`) |
| `SubstituteMenuPart_Parameterized` | One item per query result (`parameterQuery`, `part`) |
| `SubstituteMenuPart_Action` | Custom item: handler creates the node; matching text and guard as features |
| `SubstituteMenuPart_Wrapper` | Wrap the nodes of another menu (`reference`, `handler`) |
| `SubstituteMenuPart_ReferenceScope` | Smart-reference items from a scope |
| `SubstituteMenuPart_Placeholder` | Extension point for contributions |

## Blueprint: offer concepts

```json
{"concept": "jetbrains.mps.lang.editor.structure.SubstituteMenu",
 "references": [{"role": "conceptDeclaration", "target": "jetbrains.mps.baseLanguage.structure.Statement"}],
 "children": [
  {"role": "type", "nodes": [{"concept": "jetbrains.mps.lang.editor.structure.MenuTypeDefault"}]},
  {"role": "parts", "nodes": [
    {"concept": "jetbrains.mps.lang.editor.structure.SubstituteMenuPart_AddConcept",
     "references": [{"role": "concept", "target": "jetbrains.mps.baseLanguage.structure.IfStatement"}]},
    {"concept": "jetbrains.mps.lang.editor.structure.SubstituteMenuPart_Subconcepts"}]}]}
```

## `SubstituteMenuPart_Action`

Roles: `outputConcept` (ref 0..1), `substituteHandler` (1, `QueryFunction_SubstituteMenu_Substitute`, returns the new node), `features` (0..n):

| Feature | `query` child | Use |
|---|---|---|
| `SubstituteFeature_MatchingText` | `SubstituteMenu_SimpleString{text}` or `QueryFunction_SubstituteMenu_SubstituteString` | Text matched against what is typed |
| `SubstituteFeature_CanSubstitute` | `QueryFunction_SubstituteMenu_CanSubstitute` (sees `pattern`, `strictly`) | Guard, called twice. With `strictly` = false it decides whether the item is offered at all. With `strictly` = true it replaces the text comparison of the typing rule (`references/side-transforms.md`): true makes the item an exact match, which fires on typing as soon as no other item matches. Without this feature, exact = matching text equals the typed text |
| `SubstituteFeature_Selection` | `QueryFunction_SubstituteMenu_Select` (sees `createdNode`) | Where the caret goes after creation |
| `SubstituteFeature_DescriptionText`, `_Icon`, `_ActionType` | | Presentation |

Functions also see `parentNode`, `currentTargetNode`, `link`, `editorContext`, `model`. Pattern-dependent item, BL named menu `ParensAroundEmptyExpression`:

```
substitute action(output concept: ParenthesizedExpression)
  create node { node<ParenthesizedExpression> parens = new initialized node<ParenthesizedExpression>(); …; parens; }
  matching text { pattern; }
  can substitute { pattern.startsWith("(") && pattern.length() == 2; }
```

That guard ignores `strictly`, so `(5` fires at once. BL `constants` (`IntegerConstant` item) accepts `strictly` only for a parsable number (`result == null ? !strictly : result != NOT_A_VALUE`), so `5` fires at once, and it refuses `strictly` otherwise. That is the corpus form of the `!strictly` recipe below.

**Typing a new name creates a node.** Same shape, but refuse the strict call:

```
substitute action(output concept: C)
  create node { node<C> n = new initialized node<C>(); n.name = pattern; n; }
  matching text { pattern; }
  can substitute { isValidName(pattern) && !strictly; }
```

`isValidName` stands for your own check, and it must also return false for every text another item of the slot offers (keywords, names already in scope). Otherwise this item matches those texts too, so they stop applying on typing (the rule needs no second match) and appear twice in completion. Every valid name is then offered and Enter applies it; Ctrl+Space with the name typed and this the only match applies it at once. Accepting `strictly` would fire on the first letter that no other item matches. To put the caret at the end afterwards, add a `SubstituteFeature_Selection` like `constants`: `SelectionUtil.selectLabelCellAnSetCaret(editorContext, createdNode, SelectionManager.LAST_EDITABLE_CELL, -1)`.

Shape: `{"concept": "…SubstituteMenuPart_Action", "references": [{"role": "outputConcept", …}], "children": [{"role": "substituteHandler", …}, {"role": "features", "nodes": [{"concept": "…SubstituteFeature_MatchingText", "children": [{"role": "query", …}]}, {"concept": "…SubstituteFeature_CanSubstitute", "children": [{"role": "query", …}]}]}]}`.

## Keeping data when one concept replaces another

A concept item picked from completion (or from a wrapped substitute menu) creates its node through the node factory, with the replaced node as `sampleNode`. Custom handlers and execute bodies get the same only with `new initialized` / `replace with new initialized`.

Recipe "replace an operator, keep the operands":

1. A `NodeFactory` on the abstract operator concept copies the operands: `if (sampleNode.isInstanceOf(BinaryOperation)) { newNode.leftExpression = sampleNode:BinaryOperation.leftExpression; … }`. BL has exactly this for `BinaryOperation`. The factory itself is in `mps-aspect-actions`. With it, plain Ctrl+Space on the operator already replaces it and keeps both sides.
2. Only to restrict the choices (e.g. only operators of the same kind), set the operator cell's `transformationMenu` to a named menu. In BL that cell is the lang.core `alias` `CellModel_Component`. The menu has one Completion section with `include substitute menu` → a named substitute menu. BL: `BinaryOperation_Alias_TransformationMenu` → `BinaryOperation_Alias_SubstituteMenu`, a `SubstituteMenuPart_Wrapper` over the default substitute menu of `BinaryOperation`. Its handler copies `leftExpression`/`rightExpression` from `currentTargetNode`, and its selection runs `createdNode.select[in: editorContext, cell: ALIAS_EDITOR_COMPONENT, selectionStart: -1]`. To narrow further, wrap a narrower menu, e.g. `SubstituteMenuReference_Default` of the abstract sub-kind, or a `SubstituteMenuPart_Subconcepts` with a `filter`.

## `SubstituteMenuPart_Wrapper`

`reference` (1, `SubstituteMenuReference_Default{concept}` or `SubstituteMenuReference_Named{menu}`) supplies the items. `handler` (1, `QueryFunction_SubstituteMenu_WrapperHandler`) receives each produced node as `nodeToWrap` and returns the node to insert, e.g. `Expression` items in a `Statement` slot:

```
node<ExpressionStatement> result = new node<ExpressionStatement>();
result.expression.set(nodeToWrap);
return result;
```
