## Declaring hints and hinted editors

### The hint container

Hints are declared in a language's `editor` model, in a root `ConceptEditorContextHints` (alias "Context Hints"), one
`ConceptEditorHintDeclaration` per hint in its `hints` role:

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorContextHints",
  "properties": [{ "name": "name", "value": "TaskViews" }],
  "children": [{ "role": "hints", "nodes": [
    { "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration",
      "properties": [
        { "name": "name", "value": "summary" },
        { "name": "presentation", "value": "Summary" },
        { "name": "showInUI", "value": "true" }
      ] }
  ]}]
}
```

- `name` is the hint's ID (letters, digits, `$`, `_`), unique within the model. `presentation` is the label the IDE
  shows. `showInUI` (true by default) puts the hint in the IDE's hint lists; set it to `false` for a hint that only your
  own code or cells switch on. A `false` value is not printed by `mps_mcp_print_node` JSON: a hint printed without `showInUI`
  has it false.
- At run time a hint is the string `<editor model name>.<container name>.<hint name>`, e.g.
  `org.example.tasks.editor.TaskViews.summary`. In BaseLanguage code of a model that imports the hint's editor model and
  uses `jetbrains.mps.lang.editor`, the expression `concept editor hint/<name>/`
  (`ConceptEditorHintDeclarationReferenceExpression`, reference `hint`, type `string`) yields it; elsewhere write the
  string.
- The insert answer names only the root. Take the hint's node reference from `mps_mcp_print_node`
  `format: "AGENTIC VIEW"` on the container (a line per hint with its id); hint references below need it.

### A hinted concept editor

A `ConceptEditorDeclaration` with `contextHints` is an alternative editor of its concept; one without is the default
editor. Every listed hint must be active for the editor to apply.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration",
  "references": [{ "role": "conceptDeclaration", "target": "Task" }],
  "children": [
    { "role": "contextHints", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference",
        "references": [{ "role": "hint", "target": "<hint node reference>" }] } ] },
    { "role": "cellModel", "nodes": [ /* the alternative layout */ ] },
    { "role": "inspectedCellModel", "nodes": [ /* optional: what the Inspector shows under this hint */ ] }
  ]
}
```

Build the layout like any editor (`references/cell-models.md`). Embed the concept's existing components rather than
copying their cells: they keep their action maps, menus and cell ids. Concepts you give no hinted editor keep their
default editor under the hint (see `references/editor-hints/choosing.md`).

### A hinted editor component

To vary a part that several editors embed, override the component under the hint instead of writing hinted editors for
each embedding concept: an `EditorComponentDeclaration` whose `overridenEditorComponent` names the original and whose
`contextHints` lists the hint. Every `CellModel_Component` that uses the original renders the override while the hint is
active.

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.EditorComponentDeclaration",
  "properties": [{ "name": "name", "value": "TaskHeader_audit" }],
  "references": [{ "role": "conceptDeclaration", "target": "Task" }],
  "children": [
    { "role": "overridenEditorComponent", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.EditorComponentDeclarationReference",
        "references": [{ "role": "editorComponent", "target": "<original component reference>" }] } ] },
    { "role": "contextHints", "nodes": [
      { "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference",
        "references": [{ "role": "hint", "target": "<hint node reference>" }] } ] },
    { "role": "cellModel", "nodes": [ /* the variant cells */ ] }
  ]
}
```

Set `conceptDeclaration` to the original's concept (or a sub-concept, to narrow the override): without it, cell
references that need the edited concept, such as a cell's `transformationMenu`, fail with "out of search scope" /
"Target concept should be defined". Put hints only on overrides: a component that overrides nothing but has hints is
found only while its hints are active, and every other use shows "editor component not found".

### Checker rules

- A language may declare a **default** editor only for its own concepts. For a concept of another language, including
  the language it extends, every editor must have hints ("Default editor for the concept cannot be defined in the editor
  aspect of the language extending concept's language").
- Two editors of one concept with the same hint set, in one language or across extended languages, are an error.
- An override needs `contextHints` or a `conceptDeclaration`; its `conceptDeclaration` must be the original's concept or
  a sub-concept of it. An override may not target a component that itself overrides another.

### Hints and editors across languages

- An extending language adds hinted editors and hinted overrides for the base language's concepts in its own `editor`
  model.
- To reference a hint declared in another language, import that language's editor model into yours (and depend on the
  module). The language then counts as employing that language's hints in the IDE switch
  (`references/editor-hints/switching.md`).
