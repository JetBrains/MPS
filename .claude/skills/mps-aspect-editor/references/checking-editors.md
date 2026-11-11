# Seeing and Checking an Editor

How to find out what an editor looks like, which definition produces a look, and whether a change came out right. An
editor definition is not checked by reading it: render a node that uses it.

## The loop

1. **Read the definitions once.** Dump the whole editor model in one call and project it, instead of printing editor
   roots one by one (that took 15–20 calls on a small language):
   `mps_mcp_get_project_structure(startingPoint=<editor model>, includeNodes=true, maxInlineBytes=1)`, then
   `python3 scripts/mps_dump.py tree <file> --depth 4` (in the `mps-mcp-workflow` skill root after loading that
   companion skill from the same origin). Each line is a cell or style item with its role, text and references:
   `childCellModel: CellModel_Constant 123 text=(` / `styleItem: PunctuationRightStyleClassItem 124 flag=true` /
   `styleItem: ApplyStyleClass 125` / `target: StyleReference 126 -> style=KeyWord`. A line ending in
   `(+N children)` was cut at the depth (cells in a nested collection need more): re-run with the root's name after
   the file and no `--depth`. Output beyond 200 lines is in the `file` named by the summary line.
   Printing an editor root as `PLAIN TEXT` shows its cells but **not** its style items (MPS shows those in the
   Inspector), so never judge styling from the projection of the definition. One editor root with its style items, ids and
   reference targets: `mps_mcp_print_node` `format: "AGENTIC VIEW"`.
2. **Edit the definition**, then make the language: `mps_mcp_alter_nodes` MAKE with the language module.
   `mps_mcp_print_node` renders the compiled editor, so a print before the make shows the old look, and a hint declared
   since the last make fails with `'<id>' is not declared by any loaded language`.
3. **Render a sample node, not the editor**: a root of the language's sandbox or test model that contains the edited
   concept, printed in the view that the change affects.
4. **Check every view the change can reach.** An editor component is shared by every editor that embeds it, and a
   hinted editor falls back to the default one for concepts it does not cover. Print the default view with
   `editorHints=[]` (an omitted `editorHints` uses the project's hint settings, which may have a hint switched on)
   and each alternative with its hint id. `details.editorHints.available` lists the hints, so an unfamiliar language's
   views are found from one print.

## Which format answers which question

| Question | Format | Why |
|---|---|---|
| Text, line breaks, indentation, spaces around a symbol, which cells are shown | `PLAIN TEXT` | cheapest; inline answer |
| Colour, bold, italic, size, underline of a word; which node and role a word belongs to | `HTML`, `index.html` | text: a styled run is a `<span class="sN">` and the `<style>` block defines `.sN` with the exact colour hex and font style; `data-n`/`data-c`/`data-r` give node id, concept and role. Grep the file instead of reading it whole |
| Background colour, borders, cells that only paint (images, diagrams, Swing components), the overall look | `HTML`, `editor.png` | every HTML print also writes the painted editor next to `index.html` (the same picture `IMAGE` returns alone); open it with Read |

- **One `HTML` print per view answers both questions**: grep `index.html` for text styles, Read `editor.png` for
  backgrounds. Use `IMAGE` when the picture is all you need, `PLAIN TEXT` when the change is text only (spacing, line
  layout).
- **Exact text styles come from the classes, not the picture.** At the editor's 13 px font the PNG does not reliably
  show whether a thin symbol (`(`, `->`, `,`) is bold, and close colours look alike: in one study both agents that
  judged weight from the image called bold parentheses plain. Do not pixel-probe the PNG with an image library; the
  values are in `index.html`. A run without a class, or whose class has no `color`, has the default foreground.
- **Backgrounds come from the picture.** `index.html` has no cell background (its `body` background is the editor's
  own), and `PLAIN TEXT` has none either. A background or border change that nobody looked at in the picture is
  unverified, and the report must say so.

## Looks that come from outside the language

When explaining why a cell looks the way it does, the definition can be silent:

- **A constant cell is bold by default** (`EditorCell_Constant.DEFAULT_FONT_STYLE`), so `(`, `[`, `->` and keywords
  without a style class are bold in the default colour. A property cell and a reference cell are plain.
- **The `alias` component** of `jetbrains.mps.lang.core.editor` (`# alias #` in a definition, e.g. the concept alias
  of a binary operator) is a property cell with its own style: bold, no colour.
- **Style classes** come from a `StyleSheet` root of this or an extended language (`parentStyleClass` on the cell, or
  an `ApplyStyleClass` / `ApplyStyleClassCondition` style item).
- **An ancestor cell** can set the colour or font of a cell drawn by another editor: these attributes inherit, and a
  class that `dominates over` others wins even against the cell's own class. When a word's look matches none of its
  own cell's items, walk up to the cells of the enclosing nodes' editors (*Which value wins* in
  `references/stylesheet-values.md`).
- **Compare hex values with the rendered class, not with a colour table**: a literal's colour comes from
  `MPSColors` and differs from the plain Java colour of the same name (`red` is `#b20000`).

## Diagnosing a reported visual defect

Print the reported view as `HTML` and look at `editor.png` to see the symptom, read the editor that produces it (the
hinted editor of that concept, else the default one) in the projected tree, and find the style item, rendering
condition or layout item that explains it. Fix it in that editor only, make, and print the reported view and the
default view again.
