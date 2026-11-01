# Legacy Cell Menus (Still Relevant)

Before transformation menus, editor cells embedded their own menu declarations directly. These still exist (not deprecated), and a cell with both a legacy `menuDescriptor` and a `transformationMenu` combines both. Key legacy parts (all live under the cell's `menuDescriptor` child, a `CellMenuDescriptor`):

## Property Values Menu Part

Property cells only. Function returns `list<String>` for completion.

## Property Postfix Hints Menu Part

Property cells only; returns `list<String>` of good postfixes, in lower camel case (`limit`, not `Limit`): the runtime matches them against the decapitalised tail of the typed text and capitalises them when appending (`cpu` → `cpuLimit`). Example verbatim from MPS help:

```
property postfix hints postfixes :
  (scope, operationContext, node) -> list<String> {
    list<String> result;
    node<Type> nodeType = node.type;
    if (nodeType != null) {
      result = MyUtil.splitByCamels(nodeType.getPresentation());
    } else {
      result = new list<String> { empty };
    }
    return result;
  }
```

## Primary Replace Child Menu / Primary Choose Referent Menu

Default child replacements / referent actions on a RefCell.

## Replace Node Menu (Custom Node Concept)

Replace the current node with an instance of another concept:

```
replace node (custom node concept)
  replace with : BinaryOperation
```

## Replace Child Menu (Custom Child Concept)

Function returns `node<ConceptDeclaration>` naming the concept to offer.

## Replace Child Menu (Custom Action)

Customises matching text, description, and creation function.

## Generic Menu Item

Arbitrary action:

```
generic item
  matching text : add field
  handler : (node, model, scope, operationContext) -> void {
    node.field.add new(<default>);
  }
```

## Cell Menu Reference

Customises the text of a reference completion entry.

## Ref. Presentation Cell

Customises the text that a reference cell **displays** when resolved.

## Migration Note

`presentation query in reference constraints` is deprecated. MPS auto-migrates most cases. If your language is used by others, do **not** delete deprecated presentation parts abruptly.

Prefer transformation / substitute menus for new code — they attach anywhere (not only on a ref/property cell) and feed context-assistant and context-actions-tool as well as completion.
