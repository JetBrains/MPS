# Landscape: What Belongs Where

| Artefact | Root concept (fully qualified) | Typical file | What it controls |
|---|---|---|---|
| Concept editor | `jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration` | `editor.mps` | Cell tree painted for a concept |
| Editor component | `jetbrains.mps.lang.editor.structure.EditorComponentDeclaration` | `editor.mps` | Reusable cell subtree |
| Inline editor component | `jetbrains.mps.lang.editor.structure.InlineEditorComponent` | `editor.mps` | Inline editor used by `CellModel_RefCell` |
| Style sheet | `jetbrains.mps.lang.editor.structure.StyleSheet` | `editor.mps` | Named style classes |
| Action map | `jetbrains.mps.lang.editor.structure.CellActionMapDeclaration` | `editor.mps` | Override cell-level actions (DELETE, BACKSPACE, SELECT_ALL, …) per concept |
| Cell keymap | `jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration` | `editor.mps` | Bind arbitrary keystrokes to a function on a cell |
| Default transformation menu | `jetbrains.mps.lang.editor.structure.TransformationMenu_Default` | `editor.mps` | Items for side-transform, context-assistant, context-actions-tool, completion (attached to a concept by `conceptDeclaration`) |
| Named transformation menu | `jetbrains.mps.lang.editor.structure.TransformationMenu_Named` | `editor.mps` | A menu that must be referenced explicitly by name |
| Transformation menu contribution | `jetbrains.mps.lang.editor.structure.TransformationMenuContribution` | `editor.mps` | Extra menu parts contributed from a different language |
| Default substitute menu | `jetbrains.mps.lang.editor.structure.SubstituteMenu` with `type` = `MenuTypeDefault` | `editor.mps` | Default completion items for a concept |
| Named substitute menu | `jetbrains.mps.lang.editor.structure.SubstituteMenu` with `type` = `MenuTypeNamed` (carries the name) | `editor.mps` | Named completion items — referenced explicitly from a cell |
| Substitute menu contribution | `jetbrains.mps.lang.editor.structure.SubstituteMenu_Contribution` | `editor.mps` | Extra substitute items contributed from another language |
| Node factory *(actions language)* | `jetbrains.mps.lang.actions.structure.NodeFactories` | `actions.mps` | Initialise new nodes (see `mps-aspect-actions`) |
| Paste wrappers *(actions language)* | `jetbrains.mps.lang.actions.structure.PasteWrappers` | `actions.mps` | Transform pasted nodes to fit the context |
| Copy-paste handlers *(actions language)* | `jetbrains.mps.lang.actions.structure.CopyPasteHandlers` | `actions.mps` | Pre/post processors on copy and paste |
| Completion styling | `jetbrains.mps.lang.editor.structure.CompletionStyling` | `editor.mps` | Visual style / priority of completion items |

> **Deprecation note.** `TransformationMenu_Default` and `TransformationMenu_Named` are currently the two concrete kinds of transformation menu; the MPS roadmap will merge them into a single `TransformationMenuImpl` (the structure file carries the deprecation marker). For the time being, author **Default** menus when attaching to a concept and **Named** menus when the menu needs to be referenced by name. Substitute menus are already merged: author `SubstituteMenu` with a `MenuTypeDefault` or `MenuTypeNamed` `type` child, never the deprecated `SubstituteMenu_Default`. A menu's `name` is computed; a named menu's name goes on its `MenuTypeNamed`.

## Convention: Which Concepts Go Into Which Root

Each root has an **attachment point**. For action maps and cell keymaps this is an `applicableConcept` reference. For transformation menus and substitute menus it is `conceptDeclaration` (inherited from the `IMenu_Concept` interface). The definition applies to instances of that concept — and, by default, to its sub-concepts via inheritance — unless a more specific definition overrides it.

## Naming Convention (Required for Auto-Discovery)

- `<Concept>_ActionMap` for action maps
- `<Concept>_KeyMap` for cell keymaps
- `<Concept>_TransformationMenu` for the default transformation menu of a concept
- `<Concept>_<Position>_SubstituteMenu` — for named substitute menus attached to a specific child link
- `<Concept>_Factory` for node factories
- `<Concept>Styling` for completion styling roots

MPS walks the super-concept chain to discover `<Concept>_TransformationMenu`, bottoming out at `BaseConcept_TransformationMenu`, which contains an `include substitute menu` — that is why defining only a **substitute menu** is usually enough to get completion; no transformation menu is required.
