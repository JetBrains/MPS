# `ActionGroupDeclaration`

A **Group** is a named list of actions / sub-groups / anchors / separators. Groups show up as menus, submenus, toolbars, or popups.

## Fields

| Field | Kind | Meaning |
|---|---|---|
| `name` | prop | Identifier — same id used by keymaps, modifications, and `ActionInstance`. |
| `caption` | prop (string) | Visible label when `isPopup = true`. Supports `_` mnemonic. |
| `mnemonic` | prop (mnemonic) | Optional explicit mnemonic for the popup. |
| `isPopup` | prop (bool) | `true` → a submenu; `false` → a flat inlined list. |
| `isInvisibleWhenDisabled` | prop (bool) | For popups: hide the parent when every child is disabled. |
| `isInternal` | prop (bool) | Show only when MPS runs in internal mode. |
| `isPluginXmlGroup` | prop (bool) | Register this group statically in generated `plugin.xml` so external (IDEA-level) code can target it. |
| `updateInBackground` | prop (bool) | Allow update logic off the EDT. |
| `modifier` | child, 0..n | `ModificationStatement`s — "add me into those other groups here". |
| `contents` | child, 1 | One of `ElementListContents` / `BuildGroupBlock` / `UpdateGroupBlock`. |

## Contents — Three Variants

- **`ElementListContents`** (alias *element list*) — static list. Child role `reference` → `ActionGroupMember` (0..n). Members may be:
  - `ActionInstance` — a reference to an `ActionDeclaration`, optionally with construction-parameter expressions.
  - `ActionGroupDeclaration` — a nested sub-group (a reference into the child list; this embeds the group directly).
  - `GroupAnchor` — a named slot. Other groups or code can add items at this anchor via `ModificationStatement`. The anchor is **not visible** itself.
  - `Separator` — alias `<--->`, a horizontal rule in menus.
  - `InterfaceExtentionPoint` — alias `bootstrap ->`, an anchor backed by an action group defined in external `plugin.xml`.
- **`BuildGroupBlock`** (alias *build*) — a base-language `StatementList` that runs **once** at group instantiation to populate the contents. Use when the list is computed but stable.
- **`UpdateGroupBlock`** (alias *update*) — has an `updateFunction` child that runs **every time the menu is opened**. Use for lists that depend on runtime data.

Prefer `ElementListContents` unless you truly need dynamic contents.

## Contributing to an Existing Group — `ModificationStatement`

To add your group (or actions wrapped inside a group) under an existing MPS or IntelliJ platform group:

1. Declare your `ActionGroupDeclaration` with the actions you want to contribute.
2. Add a `ModificationStatement` under its `modifier` child with:
   - `modifiedGroup` reference → the target `ActionGroupDeclaration` (often a group from `jetbrains.mps.ide.actions`, e.g. `MainMenu`, `EditorPopup`, `NodeActions`, `ModelActions`, `ModuleActions`, `MainToolbar`, `ProjectViewPopupMenu`).
   - `point` reference (0..1) → a `GroupAnchor` inside the target group. If omitted, content is appended at the end.

One group can have multiple modifications — it will plug itself into several target groups simultaneously.

Group definitions in other modules can declare `GroupAnchor`s your modification can target. Inspect the target group first (e.g. `mps_mcp_print_node` `format: "AGENTIC VIEW"` on its node ref) to discover valid anchor names.

## JSON Blueprint (Popup that Contributes into Existing Groups and Declares Its Own Anchor)

```json
{
  "concept": "jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration",
  "properties": [
    { "name": "name",     "value": "ShowHelp" },
    { "name": "caption",  "value": "Help" },
    { "name": "isPopup",  "value": "true" }
  ],
  "children": [
    {
      "role": "modifier",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.plugin.structure.ModificationStatement",
          "references": [
            { "role": "modifiedGroup", "target": "Structure" },
            { "role": "point",         "target": "showHelp"  }
          ]
        },
        {
          "concept": "jetbrains.mps.lang.plugin.structure.ModificationStatement",
          "references": [
            { "role": "modifiedGroup", "target": "ModelActions" },
            { "role": "point",         "target": "showHelp"     }
          ]
        }
      ]
    },
    {
      "role": "contents",
      "nodes": [
        {
          "concept": "jetbrains.mps.lang.plugin.structure.ElementListContents",
          "children": [
            {
              "role": "reference",
              "nodes": [
                {
                  "concept": "jetbrains.mps.lang.plugin.structure.ActionInstance",
                  "references": [ { "role": "action", "target": "ShowDefaultHelp"  } ]
                },
                {
                  "concept": "jetbrains.mps.lang.plugin.structure.ActionInstance",
                  "references": [ { "role": "action", "target": "ShowHelpForNode"  } ]
                },
                { "concept": "jetbrains.mps.lang.plugin.structure.Separator" },
                {
                  "concept": "jetbrains.mps.lang.plugin.structure.GroupAnchor",
                  "properties": [ { "name": "name", "value": "helpExtras" } ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

Real source: `ShowHelp` group in `jetbrains.mps.lang.structure.pluginSolution.plugin`.

## ActionInstance with Construction Parameters

When an action declares `constructionParameter`s, instantiations must pass expressions under the `actualParameter` child of `ActionInstance` (in declaration order):

```json
{
  "concept": "jetbrains.mps.lang.plugin.structure.ActionInstance",
  "references": [ { "role": "action", "target": "CreateChildAction" } ],
  "children": [
    { "role": "actualParameter", "nodes": [
      /* One Expression per constructionParameter — e.g. a RefConcept_Reference */
    ]}
  ]
}
```
