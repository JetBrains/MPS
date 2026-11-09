## Switching hints on

A node's active hints are the union of what the sources below add along the cell path from the editor's root, minus what
a cell removes. They reach the node's whole subtree (`references/editor-hints/choosing.md`).

### From the language's own editor: `addHints` / `removeHints`

`CellModel_Collection`, `CellModel_RefNode`, `CellModel_RefNodeList` and `CellModel_NextEditor` have optional `addHints`
and `removeHints` children; they apply to the nodes shown inside that cell. Use them when the language itself decides
the notation, e.g. a board whose flag shows its tasks as summaries.

Fixed hints — `ExplicitHintsSpecification`:

```json
{ "concept": "jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification",
  "children": [{ "role": "hints", "nodes": [
    { "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference",
      "references": [{ "role": "hint", "target": "<hint node reference>" }] } ] }] }
```

Computed hints — `QueryHintsSpecification`, a function of `node` (the cell's node) that returns `sequence<string>` of
hint IDs; `String[]` and an untyped `Collections.singletonList(...)` do not type-check. The Java parser cannot write
`node.<property>` or the hint expression, so insert the body as JSON. "the board's tasks are summaries when its
`summarized` flag is set" (`return node.summarized ? new arraylist<string>{hint} : new arraylist<string>();`):

```json
{ "concept": "jetbrains.mps.lang.editor.structure.QueryHintsSpecification",
  "children": [{ "role": "body", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StatementList",
    "children": [{ "role": "statement", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.ReturnStatement",
      "children": [{ "role": "expression", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression",
        "children": [
          { "role": "condition", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.DotExpression", "children": [
            { "role": "operand", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" }] },
            { "role": "operation", "nodes": [{ "concept": "jetbrains.mps.lang.smodel.structure.SPropertyAccess",
              "references": [{ "role": "property", "target": "<property declaration sourceNode>" }] }] } ] }] },
          { "role": "ifTrue", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression", "children": [
            { "role": "creator", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit", "children": [
              { "role": "elementType", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StringType" }] },
              { "role": "initValue", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReferenceExpression",
                "references": [{ "role": "hint", "target": "<hint node reference>" }] }] } ] }] } ] }] },
          { "role": "ifFalse", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression", "children": [
            { "role": "creator", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit", "children": [
              { "role": "elementType", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StringType" }] } ] }] } ] }] }
        ] }] }] }] }] }] }] }
```

The editor model needs `jetbrains.mps.baseLanguage.collections` among its used languages for the list creator.
`removeHints` takes the same two shapes.

### From the IDE: per editor and per project

- **Per editor**: "Push Editor Hints" in the editor's context menu opens a dialog and sets that editor's initial hints.
  It offers only the hints (with `showInUI` true) of the languages the edited model **uses**, the languages those extend
  or aggregate, and the languages whose hints the editors of all these reference. A hint of an extending language is
  offered for a model only when the model uses that extending language (or a devkit that provides it): add it to the
  sandbox's used languages, or the user never sees the hint there.
- **Per project**: the Settings page "Editor hints" lists the hints of every language and applies them to every editor
  whose per-editor hints were never set, in-process test editors included.
- Code does what the dialog does: `editorComponent.getUpdater().setInitialEditorHints(new String[]{...})` (`null` goes back to the project setting), then a rebuild. The test recipe: `references/editor-test-case/hinted-editors.md` in the `mps-tests` skill root after loading that companion skill from the same origin.

### From code, for one node: explicit hints

An intention or action can switch a hint on for one node and its subtree in the current editor only (not saved, not in
the model) through the editor's `Updater` (`jetbrains.mps.openapi.editor.update.Updater`). An intention's `execute`
body, parseable with `mps_mcp_parse_java_and_insert` (import the `jetbrains.mps.openapi.editor.update`,
`org.jetbrains.mps.openapi.model` and `java.util` stubs first):

```java
Updater updater = editorContext.getEditorComponent().getUpdater();
String[] current = updater.getExplicitEditorHintsForNode(node.getReference());
if (current != null && Arrays.asList(current).contains("HINT")) {
  updater.removeExplicitEditorHintsForNode(node.getReference(), "HINT");
} else {
  updater.addExplicitEditorHintsForNode(node.getReference(), "HINT");
}
updater.update();
```

The parser does not know `concept editor hint/<name>/`: write the hint string, or parse a `"HINT"` placeholder and
replace each literal with `mps_mcp_update_node` SET CHILD `{"concept":
"jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReferenceExpression", "references": [{"role": "hint",
"target": "<hint node reference>"}]}` (the model then gets `jetbrains.mps.lang.editor` and the editor-model import). Use
the same condition in the intention's `description` (e.g. "Flag" / "Remove Flag").

- Toggle with `add…` / `remove…ExplicitEditorHintsForNode`. Do not call `clearExplicitHints()`: it drops the explicit
  hints of every node in the editor, including state MPS keeps in the same map (whether a node shows its reflective
  editor).
- `update()` rebuilds the editor with the new hints and keeps the caret; it needs read access (an intention's `execute`
  has it; test code on the EDT wraps it in a read action). Explicit hints live in that editor component only; they
  survive a language make, but are dropped when the edited model is reloaded (e.g. from disk) or the editor is refreshed
  with F5.
