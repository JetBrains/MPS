# Cell Keymaps (`CellKeyMapDeclaration`)

`CellKeyMapDeclaration` binds **arbitrary keystrokes** (including modifiers) to an execute block at the cell level. Unlike action maps, which replace a predefined action, a keymap introduces **new shortcuts**.

## Root Fields

- `applicableConcept` (ref, 0..1) — concept the keymap attaches to.
- `everyModel` (property, boolean) — `true` makes the keymap active in every editor of a model that uses this language (or a language extending it), without any cell referencing it. Default `false`.
- `item` (child, 0..n) — the keymap items.

## `CellKeyMapItem`

- `keystroke` (child, 1..n) of concept `CellKeyMapKeystroke` — properties `keycode` (string, e.g. `VK_DELETE`, `VK_ENTER`, `VK_SPACE`, `VK_A`) and `modifiers` (string).
- `executeFunction` (child, 1) of concept `CellKeyMap_ExecuteFunction` — the void function to run. Implicit params: `node` (`CellKeyMap_FunctionParm_selectedNode`; `selectedNodes` for a multi-selection) and `editorContext`.
- `isApplicableFunction` (child, 0..1) of concept `CellKeyMap_IsApplicableFunction` — optional boolean gate.
- `description` (property, string) — surfaced in the action editor / help.
- `caretPolicy` (property, enum `CellKeyMapCaretPolicy`): `FIRST_POSITION`, `LAST_POSITION`, `INTERMEDIATE_POSITION`, `ANY_POSITION` (default).
- `showInPopup` (property, boolean) — whether the shortcut appears in the small popup list next to the cell.
- `menuAlwaysShown` (property, boolean) — always show the menu associated with this item.

## Template JSON

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration",
  "properties": [
    { "name": "name",       "value": "CastExpression_KeyMap" },
    { "name": "everyModel", "value": "false" }
  ],
  "references": [
    { "role": "applicableConcept", "target": "jetbrains.mps.baseLanguage.structure.CastExpression" }
  ],
  "children": [{
    "role": "item",
    "nodes": [{
      "concept": "jetbrains.mps.lang.editor.structure.CellKeyMapItem",
      "properties": [
        { "name": "description",  "value": "jump to cast type" },
        { "name": "caretPolicy",  "value": "FIRST_POSITION" },
        { "name": "showInPopup",  "value": "true" }
      ],
      "children": [
        {
          "role": "keystroke",
          "nodes": [{
            "concept": "jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke",
            "properties": [
              { "name": "keycode",   "value": "VK_T" },
              { "name": "modifiers", "value": "ctrl+alt" }
            ]
          }]
        },
        {
          "role": "executeFunction",
          "nodes": [{
            "concept": "jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction",
            "children": [{ "role": "body", "nodes": [
              /* BaseLanguage statement list, e.g.:
                 node.type.select[in: editorContext, cell: MOST_RELEVANT]; */
            ]}]
          }]
        }
      ]
    }]
  }]
}
```

## `modifiers` String

`CellKeyMapKeystroke.modifiers` is exactly one of `none`, `any`, `ctrl`, `alt`, `shift`, `ctrl+alt`, `ctrl+shift`, `ctrl+alt+shift`, `alt+shift`, compared verbatim with the event (no `meta`, no spaces, fixed order; anything else is the check error `Invalide keymap modifiers`). `ctrl` is the Control key on macOS too. The lang.plugin `KeyMapKeystroke` (test `press`, IDE keymaps) is a different concept that accepts `ctrl shift` or `ctrl+shift`.

## IDE shortcuts win

IntelliJ actions see a key before the editor component. An enabled IDE action on the same chord (MPS `$default`: `ENTER` Insert, `ctrl shift UP/DOWN` Move Elements, …) consumes it and the cell keymap never runs, although an editor test's `press` passes. Pick a free chord or change the IDE binding (`KeymapChangesDeclaration`, `mps-ide-plugin`). On macOS the `$default` chords use Cmd, so a `ctrl` keymap item may clash only on Windows/Linux: test there, or pick a chord that is free in both.

## Keymap Placement

A keymap fires only from a cell whose `keyMap` reference names it (or from any descendant cell of that cell), or everywhere when `everyModel=true`. The root name is free. An `everyModel=true` keymap that no cell references still gets the warning "Unused key map": `check_CellKeyMapDeclarationUsed` only looks for a referencing cell in the same model and ignores `everyModel`. That warning is a false positive; leave it. Lookup: `references/landscape.md`.

## `caretPolicy` Semantics

- `FIRST_POSITION` — fires only when caret is at position 0 inside the cell.
- `LAST_POSITION` — fires only at the last position.
- `INTERMEDIATE_POSITION` — fires when caret is strictly inside (not at either end).
- `ANY_POSITION` — fires anywhere in the cell (default).

Use this to disambiguate typing: e.g. `+` on the right edge of a numeric cell triggers a right-transform, but `+` inside the number should just insert the character.

## When a Keymap Should Preempt the Default Action

If your item shadows `DELETE`/`BACKSPACE`, prefer an **action map** over a keymap bound to `VK_DELETE` — action maps integrate better with two-step deletion and action inheritance.
