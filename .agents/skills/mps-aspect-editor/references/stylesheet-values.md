# Stylesheet Enumeration Values

The enum literals accepted by `ForegroundColorStyleClassItem.color`, `BackgroundColorStyleClassItem.color`, `BracketColorStyleClassItem.color`, `TextBackgroundColorStyleClassItem.color`, `FontStyleStyleClassItem.style`, the underline-style item, and the focus-policy item. These come from enumerations in `jetbrains.mps.lang.editor.structure`. In JSON they are plain, case-sensitive property values, e.g. `{"name": "style", "value": "BOLD"}` on `FontStyleStyleClassItem`, `{"name": "color", "value": "darkBlue"}` on `ForegroundColorStyleClassItem`.

## Colors — `_Colors_Enum`

Used by all `*ColorStyleClassItem` concepts (`ForegroundColorStyleClassItem`, `BackgroundColorStyleClassItem`, `BracketColorStyleClassItem`, `TextBackgroundColorStyleClassItem`, `ForegroundNullColorStyleClassItem`).

Default literal: `none`. Two-tone notes (`light / dark`) describe how the color renders in light vs. dark UI themes. A literal resolves to the same-named field of `jetbrains.mps.nodeEditor.MPSColors` (which redefines `red`, `darkBlue`, `lightBlue`, `darkGreen`, `darkMagenta`, `pink`, `yellow`; the others are `JBColor`'s), and `mps_mcp_print_node` HTML reports the light value in its `sN` classes.

| Literal | Notes |
| --- | --- |
| `none` | no color set (default) |
| `red` | light: `#B20000` / dark: Darcula red |
| `pink` | light: pink / dark: lampoon (`#FFAFAF` / `#7C5555`) |
| `orange` | light: orange / dark: cumin ochre (`#FFC800` / `#9F6B00`) |
| `yellow` | a translucent tint, not pure yellow: light `#FDFEE2` at alpha 100 / dark `#114957` at alpha 200 (a highlight background, not a text colour) |
| `green` | light: green / dark: fluorite green (`#00FF00` / `#629655`) |
| `darkGreen` | light: dark green `#007C00` / dark: `JBColor.GREEN` |
| `magenta` | light: magenta / dark: ce soir (`#FF00FF` / `#9776A9`) |
| `darkMagenta` | light: dark magenta `#7C007C` / dark: `JBColor.MAGENTA` |
| `cyan` | light: cyan / dark: green moblin (`#00FFFF` / `#008989`) |
| `blue` | light: blue / dark: feather star (`#0000FF` / `#589DF6`) |
| `lightBlue` | light: light blue / dark: lupine blue (`#A2B8D0` / `#6897BA`) |
| `darkBlue` | light: dark blue / dark: steel blue (`#000080` / `#3D6DAC`) |
| `gray` | `#808080` (theme-invariant) |
| `lightGray` | light: light gray / dark: dark gray (`#C0C0C0` / `#404040`) |
| `darkGray` | light: dark gray / dark: light gray (`#404040` / `#C0C0C0`) |
| `white` | light: white / dark: theme's background color |
| `black` | light: black / dark: theme's foreground color |

For colors not in this set, use the `query` function variant of the color style item (a `QueryFunction_Color` body returning a `java.awt.Color`) instead of trying to invent a new enum literal.

**A style that depends on the node** (highlight an overdue entry, mark a draft) keeps the enum literal, which follows the theme: put the items in a `StyleClass` of the language's `StyleSheet` and apply it to the cell with an `ApplyStyleClassCondition` style item (alias `apply-if`). It has a `target` child `StyleReference` (reference `style`) and a `query` child `QueryFunction_Boolean` whose `body` returns the condition, e.g. `node.overdue` as an `ExpressionStatement` holding a `DotExpression` of `ConceptFunctionParameter_node` and `SPropertyAccess` (smodel). A background paints the cells of the collection it is on, so on the editor's top cell it covers the node's whole projection. A `QueryFunction_Color` returning a `java.awt.Color` works too, but has one colour for every theme.

## Which value wins: inheritance, order, dominance

Every style value carries a **priority** (0 unless a dominating class set it), and a cell shows the value of the
highest priority it has, its own or inherited:

- **Inheritance.** Colours (`text-foreground-color`, `background-color`, `text-background-color`) and the font
  (`font-style`, `font-size`, `font-family`) pass from a cell to the cells inside it, including the cells that the
  editors of child nodes draw. Underline, strike-out, punctuation, `editable` and the layout items do not inherit.
- **Own beats inherited at equal priority.** A child cell that sets its own colour, directly or through a style class
  (a keyword cell with `apply KeyWord`), keeps it against a colour from an ancestor. So a colour on a node's top cell
  does *not* recolour the keywords inside it.
- **Order.** Within one cell or one style class, a later item replaces an earlier one with the same attribute; an
  `ApplyStyleClass` counts at its position (`apply Emphasis` then `text-foreground-color: red` is red, the reverse
  order is `Emphasis`'s colour).
- **Dominance.** `style Faded dominates over KeyWord { ... }` (a `DominatesRecord` in the class's `dominates` child,
  listing classes in `dominatesStyleClassList`, a `StyleClassReferenceList` of `StyleClassReference` `element`s with
  reference `styleClass`; intention "Add Dominance") gives `Faded`'s items priority 1 + the highest priority of the
  listed classes. A higher priority wins over any lower one, wherever it comes from: the cell's own items, an applied
  class, the order. The list only computes the number: a class that dominates over anything beats every priority-0
  value, listed or not. Generated code shows it as `style.set(<attribute>, <priority>, <value>)`. A dominance cycle is
  a checker error.
- **The pattern:** to restyle a node's whole projection, keywords of child editors included, apply a dominating class
  to its top cell, typically with `ApplyStyleClassCondition`. It changes only the attributes that class sets and that
  inherit; a bold keyword stays bold under a dominating colour.

## Font style — `_FontStyle_Enum`

Used by `FontStyleStyleClassItem.style`. Default literal: `PLAIN`.

| Literal | Generated as |
| --- | --- |
| `PLAIN` | `java.awt.Font.PLAIN` |
| `BOLD` | `java.awt.Font.BOLD` |
| `ITALIC` | `java.awt.Font.ITALIC` |
| `BOLD_ITALIC` | `java.awt.Font.BOLD \| java.awt.Font.ITALIC` |
| `QUERY` | computed by the item's `QueryFunction_FontStyle` body — provide a query function returning an `int` mask |

## Underline style — `UnderlineStyle`

Used by the underline style item (`StyleSheet` underline). Default literal: `as_is`.

| Literal | Meaning |
| --- | --- |
| `as_is` | inherit from parent (no override) |
| `not_underlined` | force off |
| `underlined` | force on |

The boolean `StyleAttributes.UNDERLINED` (`"underlined"` key) is the runtime form. The enum is what the stylesheet item carries.

## Focus policy — `FocusPolicy`

Used by `FocusPolicyStyleClassItem`. Default literal: `noAttraction`.

| Literal | Meaning |
| --- | --- |
| `noAttraction` | cell does not attract caret |
| `attractsFocus` | caret lands here when navigating into the containing collection |
| `firstEditableCell` | caret lands on the first editable descendant |

## Dynamic values

Most style items (all flag and color items, font style, font size, matching label, …; not padding, gap, layout constraint or show-boundaries) have an optional `query` child that replaces the static value (`mps_mcp_get_concept_details` tells): `QueryFunction_Boolean` on flag items, `IQueryFunction_Color` on color items, `QueryFunction_FontStyle` with `style` = `QUERY`. BL `BinaryOperation_Editor`: `indent-layout-on-new-line : (editorContext, node)->boolean { node.isMultiline; }`.

## Authoring guidance

- Write the literal as the property value (`style`, `color`, …). It is not a reference.
- Compare against existing stylesheets in the model's used languages before introducing a new style class — `mps-aspect-editor` SKILL.md ("Stylesheets" directive).
- `FontStyleStyleClassItem`, `*ColorStyleClassItem`, and the underline item all carry an aggregated `query` child (`QueryFunction_*`). When the static enum literal does not fit, switch the item's `style` / `color` to `QUERY` (or the equivalent query mode) and fill the query body — do not invent new enum literals.

## Related

- `references/cell-models.md` — where these style items attach (under a cell's `styleClass` aggregation, or a `StyleSheet` node).
- `references/indent-layout-styles.md` — the layout-related style items that live next to these color/font items.
