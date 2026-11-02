# Stylesheet Enumeration Values

The enum literals accepted by `ForegroundColorStyleClassItem.color`, `BackgroundColorStyleClassItem.color`, `BracketColorStyleClassItem.color`, `TextBackgroundColorStyleClassItem.color`, `FontStyleStyleClassItem.style`, the underline-style item, and the focus-policy item. These come from enumerations in `jetbrains.mps.lang.editor.structure`. In JSON they are plain, case-sensitive property values, e.g. `{"name": "style", "value": "BOLD"}` on `FontStyleStyleClassItem`, `{"name": "color", "value": "darkBlue"}` on `ForegroundColorStyleClassItem`.

## Colors — `_Colors_Enum`

Used by all `*ColorStyleClassItem` concepts (`ForegroundColorStyleClassItem`, `BackgroundColorStyleClassItem`, `BracketColorStyleClassItem`, `TextBackgroundColorStyleClassItem`, `ForegroundNullColorStyleClassItem`).

Default literal: `none`. Two-tone notes (`light / dark`) describe how the color renders in light vs. dark UI themes.

| Literal | Notes |
| --- | --- |
| `none` | no color set (default) |
| `red` | `#FF0000` |
| `pink` | light: pink / dark: lampoon (`#FFAFAF` / `#7D5656`) |
| `orange` | light: orange / dark: cumin ochre (`#FFC800` / `#9F6B00`) |
| `yellow` | light: yellow / dark: old asparagus (`#FFFF00` / `#8A8A00`) |
| `green` | light: green / dark: fluorite green (`#00FF00` / `#629655`) |
| `darkGreen` | light: dark green / dark: green (`#007D00` / `#00FF00`) |
| `magenta` | light: magenta / dark: ce soir (`#FF00FF` / `#9776A9`) |
| `darkMagenta` | light: dark magenta / dark: magenta (`#7D007D` / `#FF00FF`) |
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
