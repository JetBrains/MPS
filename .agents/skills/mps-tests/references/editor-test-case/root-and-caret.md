## Root layout

Root has:

```
Editor test case <Name>
description: ...
before:  <Test case with sample nodes>      // role 25YQCW (testNodeBefore)
result:  <Test case with expected nodes>    // role 25YQFr (testNodeResult)
code:    <statements that drive the editor> // role LjaKd (code)
```

The `before` and `result` are each a `TestNode` with one child, `nodeToCheck`, holding the node under edit (a Recipe, a BaseLanguage `BlockStatement`, …). To build one, insert the `TestNode` with a shallow `nodeToCheck` blueprint (for BaseLanguage, a `BlockStatement` with an empty `StatementList`), then fill it with `mps_mcp_parse_java_and_insert`; `result` is built the same way, since `COPY_NODE` cannot copy into a single-valued role. Caret position is marked by an **`AnonymousCellAnnotation`** (`LIFWc`) on the node that owns the cell where the caret should sit. Only the first annotation in each section is used. The `result` section typically also carries one to verify *where the caret ended up* after the action.

## `AnonymousCellAnnotation`: what is set and what is compared

| Property | `before` (sets up the editor) | `result` (checked after `code`) |
|---|---|---|
| annotated node | the node whose editor gets the selection | must be the node that **owns the selected cell after the action**, e.g. a child created by a substitution, not the parent it started on |
| `cellId` | the cell to select | compared with the selected cell's id |
| `isLastPosition` / `caretPosition` | puts the caret at the end of the text / at offset N | **ignored** |
| `selectionStart` / `selectionEnd` | applied **after** the caret, default 0. Selecting the cell keeps any selection with start ≠ end and drops an empty one (start = end, the default 0..0 included), so for a plain caret the caret decides where typing lands; typed text replaces a kept selection. Write it as `selectionStart` < `selectionEnd`: a reversed range is kept too and duplicates text | compared with the label's selection (label cells only) |
| `nodeRangeSelectionStart` / `End` | if set, pushes a node-range selection | for a range selection, compared with the range, and `cellId` and offsets are ignored; otherwise both must be empty |
| `isInInspector` | selects the cell in the inspector | asserts the selection is in the inspector (a Java `assert`, so only with `-ea`) |
| `useLabelSelection` | not read by the test runtime | not read |

**Rule: in `result`, a caret at offset N is three properties.** Set `isLastPosition: true` (or `caretPosition: N`) and `selectionStart: N` and `selectionEnd: N`. With only `isLastPosition`, the check compares the default 0 with the real offset (`CellReference.java:61`). N is the offset after the action. For a caret at the end of the text, that is the full label length, not the length of the typed text. After typing over a `before` selection, N is that selection's start plus the typed length: `X` typed over 2..5 of `Pancakes` gives `PaXkes` with the caret at 3. After typing, the selection collapses onto the caret, so start and end are equal. A caret at 0 is the only case where the defaults happen to be right.

**In `before`, the caret alone places it.** An empty selection, the 0..0 default included, is dropped when the cell is selected, so `type "X"` lands at the caret. Only a selection with start ≠ end is kept. Write it as `selectionStart` < `selectionEnd`: typing then replaces that range, wherever the caret is, and `invoke action Backspace` / `Delete` delete it, leaving the caret at its start. A reversed range (start > end) is kept as well, but it is not normalised and duplicates text: `type "X"` over 5..2 of `Pancakes` gives `PancaXncakes`, and Backspace gives `Pancancakes`. Writing all three properties in `before` as well is harmless. The AddCellAnnotation intention (used in the MPS editor) writes all three from the live caret, and blueprints should match it.

Example: cell `property_name` with text `Pancakes`, code `type "X"`.

```text
before annotation:  "properties": [{"name": "cellId", "value": "property_name"}, {"name": "isLastPosition", "value": "true"},
                                   {"name": "selectionStart", "value": "8"}, {"name": "selectionEnd", "value": "8"}]
result annotation (text is now PancakesX):
                    "properties": [{"name": "cellId", "value": "property_name"}, {"name": "isLastPosition", "value": "true"},
                                   {"name": "selectionStart", "value": "9"}, {"name": "selectionEnd", "value": "9"}]
```

For a non-label cell (e.g. a collection), only the node and `cellId` are compared. Failure messages are mapped to fixes in `references/common-failures.md`.
