# `EditorTab` and `Order` — Tabs on a Concept's Editor

`EditorTab` declares an extra tab that appears at the **top of the MPS editor** for a particular root concept. In this repository, the language-definition editor uses them: the tabs `Structure` / `Editor` / `Behavior` / `Constraints` / `Typesystem` / `Generator` / … in `jetbrains.mps.ide.devkit.editor` are `EditorTab` roots; the run-configuration editor uses them in `jetbrains.mps.execution.configurations.pluginSolution.plugin` (`Run Configuration` / `Executor` / `Producer`).

## `EditorTab` Fields

| Field | Kind | Meaning |
|---|---|---|
| `name` | prop (string) | Tab label (appears on the tab header). |
| `shortcutChar` | prop (string) | Optional Alt-mnemonic character for the tab (e.g. `s` → Alt+S activates the tab). |
| `commandOnCreate` *(deprecated)* | prop (bool) | Legacy — whether the "create tab contents" block runs under a command. Prefer leaving default. |
| `baseNodeConcept` | ref, 1 | The concept that owns this tab — only root nodes of this concept (or a subconcept) will show the tab. |
| `icon` | child, 0..1 | `jetbrains.mps.lang.resources.structure.Icon` on the tab header. |
| `order` | child, 0..1 | `OrderConstraints`: an inline `Order` (the way every tab in `jetbrains.mps.ide.devkit.editor` except `Structure` does it) or an `OrderReference` (reference `order`) to a shared `Order` root. See *`Order`* below. |
| `listenBlock` | child, 0..1 | Body that installs listeners on the tab's node set (optional). |
| `baseNodeBlock` | child, 0..1 | Body taking the editor's current root and returning the node whose editor appears on the tab (often the root itself, sometimes a sibling/descendant). |
| `isApplicableBlock` | child, 0..1 | Returns `boolean` — whether the tab should be shown for a given root. |
| `nodesBlock` | child, 0..1 | Abstract `NodesBlock`: a `GetNodesBlock` returns the collection of nodes the tab displays (multi-node tabs), a `GetNodeBlock` returns a single node. Each has a `body`. |
| `createTabBlock` | child, 0..1 | `CreateTabBlock` for the "+" on the tab strip: `conceptsBlock` (`ConceptsBlock`, the concepts offered) and `createBlock` (`CreateBlock`, creates the node), each with a `body`; property `commandOnCreate`. |

## `EditorTab` — JSON Blueprint

```json
{
  "concept": "jetbrains.mps.lang.plugin.structure.EditorTab",
  "properties": [
    { "name": "name",         "value": "Behavior" },
    { "name": "shortcutChar", "value": "b"         }
  ],
  "references": [
    { "role": "baseNodeConcept", "target": "jetbrains.mps.lang.structure.structure.ConceptDeclaration" }
  ],
  "children": [
    { "role": "icon",               "nodes": [ /* IconResource reference */ ] },
    { "role": "baseNodeBlock",      "nodes": [
      {
        "concept": "jetbrains.mps.lang.plugin.structure.BaseNodeBlock",
        "children": [ { "role": "body", "nodes": [
          { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }
        ]}]
      }
    ]},
    { "role": "isApplicableBlock",  "nodes": [
      {
        "concept": "jetbrains.mps.lang.plugin.structure.IsApplicableTabBlock",
        "children": [ { "role": "body", "nodes": [
          { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }
        ]}]
      }
    ]},
    { "role": "nodesBlock", "nodes": [
      {
        "concept": "jetbrains.mps.lang.plugin.structure.GetNodesBlock",
        "children": [ { "role": "body", "nodes": [
          { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }
        ]}]
      }
    ]},
    { "role": "createTabBlock", "nodes": [
      {
        "concept": "jetbrains.mps.lang.plugin.structure.CreateTabBlock",
        "children": [
          { "role": "conceptsBlock", "nodes": [
            { "concept": "jetbrains.mps.lang.plugin.structure.ConceptsBlock",
              "children": [ { "role": "body", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" } ]} ] }
          ]},
          { "role": "createBlock", "nodes": [
            { "concept": "jetbrains.mps.lang.plugin.structure.CreateBlock",
              "children": [ { "role": "body", "nodes": [ { "concept": "jetbrains.mps.baseLanguage.structure.StatementList" } ]} ] }
          ]}
        ]
      }
    ]}
  ]
}
```

Real sources to inspect with `mps_mcp_print_node`: the `Actions`, `Behavior`, `Constraints`, `Data Flow`, `Editor`, `Feedback`, `Find Usages`, `Generator`, `Intentions`, `Refactorings`, `Structure`, `Textgen`, `Typesystem` roots in the `jetbrains.mps.ide.devkit.editor` model.

## `Order` — Sequence Tabs Across the Strip

Because every `EditorTab` is declared independently, MPS needs a way to order the resulting tab strip. An `Order` lists `EditorTabReference`s (reference `editorTab`) in the desired left-to-right order. It goes either inline in a tab's `order` child — in `jetbrains.mps.ide.devkit.editor` each tab except `Structure` (the first) carries its own inline `Order` of the tabs up to and including itself (the `Constraints` tab lists `Structure`, `Editor`, `Constraints`) — or into a shared `Order` root that each tab's `order` child points at through an `OrderReference`:

```json
{
  "concept": "jetbrains.mps.lang.plugin.structure.Order",
  "children": [
    {
      "role": "tab",
      "nodes": [
        { "concept": "jetbrains.mps.lang.plugin.structure.EditorTabReference",
          "references": [ { "role": "editorTab", "target": "Structure"    } ] },
        { "concept": "jetbrains.mps.lang.plugin.structure.EditorTabReference",
          "references": [ { "role": "editorTab", "target": "Behavior"     } ] },
        { "concept": "jetbrains.mps.lang.plugin.structure.EditorTabReference",
          "references": [ { "role": "editorTab", "target": "Constraints"  } ] }
      ]
    }
  ]
}
```

Real source: the inline `order` child of any `EditorTab` in `jetbrains.mps.ide.devkit.editor` (no `Order` root exists there).
