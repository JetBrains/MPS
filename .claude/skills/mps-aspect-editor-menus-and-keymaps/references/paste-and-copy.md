# Paste Wrappers and Copy-Paste Handlers (Actions Language)

Roots of `jetbrains.mps.lang.actions.structure` in the language's `actions` model (create it with `mps_mcp_create_model` `<lang>.actions` if missing).

## Order of events

1. **Copy**: the clipboard gets a detached deep copy, and the `CopyPreProcessor`s run on it.
2. **Paste**: if the pasted node is not an instance of the slot's target concept, a matching `PasteWrapper` converts it.
3. The (wrapped) node is inserted.
4. The `PastePostProcessor`s run on the inserted node.
5. References that pointed outside the copied subtree are re-resolved by their `resolveInfo` (name) in the scope of the new place. When the scope finds nothing, the reference stays as it was. Names the new scope finds therefore need no post-processor, and a post-processor's re-binding of such a reference is overridden here. To leave a missing name visibly unresolved, the post-processor sets `pastedNode.setReference(link, ResolveInfo.of(name))` (openapi). Such a dynamic reference is saved with its name and re-binds by scope once a declaration appears. It stays dynamic: a model checked by the BaseLanguage typesystem then reports "Dynamic reference" (quick fix: make it static). Build that call as a `StaticMethodCall`: the Java parser leaves `ResolveInfo.of` an `UnknownDotCall`.

If the pasted nodes reference a model the target model does not import, or use a language it does not use, MPS opens a modal import dialog (an editor-test hazard: `mps-tests`).

Lookup rules:
- Pre- and post-processors match the node's **exact** concept, not super-concepts. A node with a processor is handed to it, and its children are not visited. Otherwise the children are processed recursively.
- A wrapper matches when its `sourceConcept` is the pasted node's concept or a super-concept, **and** its `targetConcept` *equals* the slot's target concept (the most specific link target in that context). A super-concept of the slot's concept does not match.

## Paste wrappers

`PasteWrappers` (`name`, `wrapper` 0..n). `PasteWrapper`: `sourceConcept`, `targetConcept` (refs, 1) and `wrapperFunction` (`QueryFunction_PasteWrapper`). The function receives `sourceNode`, the **detached clipboard copy** (`getModel() == null`), and returns the node to insert. In JSON, `sourceNode` is `jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_nodeToPasteWrap`, not lang.editor's `ConceptFunctionParameter_sourceNode`.

```json
{"concept": "jetbrains.mps.lang.actions.structure.PasteWrappers",
 "properties": [{"name": "name", "value": "wrappers"}],
 "children": [{"role": "wrapper", "nodes": [{"concept": "jetbrains.mps.lang.actions.structure.PasteWrapper",
   "references": [{"role": "sourceConcept", "target": "jetbrains.mps.baseLanguage.structure.Expression"},
                  {"role": "targetConcept", "target": "jetbrains.mps.baseLanguage.structure.Statement"}],
   "children": [{"role": "wrapperFunction", "nodes": [{"concept": "jetbrains.mps.lang.actions.structure.QueryFunction_PasteWrapper",
     "children": [{"role": "body", "nodes": [ /* node<ExpressionStatement> r = new node<ExpressionStatement>(); r.expression.set(sourceNode); return r; */ ]}]}]}]}]}]}
```

**Declaration → reference.** A wrapper that turns a pasted declaration into a reference cannot simply point the reference at `sourceNode`: that is the clipboard copy, so the reference dangles. Re-bind it in a `PastePostProcessor` for the reference concept, which runs after insertion. The usual way is to resolve by name in the scope of the new location. It binds a same-named local declaration, or leaves the reference empty when none exists. Say so if the spec expects cross-model pastes.

**No caret after a wrapped paste.** `CellAction_PasteNode` selects the last *clipboard* node after the paste. When the wrapper inserted a node that does not contain it (declaration → reference), the editor is left with no selection, and a post-processor cannot fix that, because it runs before. In an editor test, leave the `result` without a caret annotation. Only if the caret matters in the product, own the paste with a `paste_action_id` action-map item on the target cell that reads the clipboard, inserts and selects (precedent: `jetbrains.mps.lang.text`, `Line_Actions`).

## Copy-paste handlers

`CopyPasteHandlers` (`name`, `preProcessor` 0..n, `postProcessor` 0..n).

- `CopyPreProcessor`: `concept` ref, `preProcessFunction` (`CopyPreProcessFunction`). Receives `copy` (`…actions.structure.ConceptFunctionParameter_nodeToCopyPreProcess`; detached, mutate this) and `original` (`…_nodeToCopyPreProcessOriginal`; the model node, do not modify). Use it to strip data that must not travel.
- `PastePostProcessor`: `concept` ref, `postProcessFunction` (`PastePostProcessFunction`). Receives `pastedNode` (`…actions.structure.ConceptFunctionParameter_nodeToPastePostProcess`), already in the model. Use it to re-resolve references into the new scope.

```json
{"concept": "jetbrains.mps.lang.actions.structure.CopyPasteHandlers",
 "properties": [{"name": "name", "value": "handlers"}],
 "children": [
  {"role": "preProcessor", "nodes": [{"concept": "jetbrains.mps.lang.actions.structure.CopyPreProcessor",
    "references": [{"role": "concept", "target": "jetbrains.mps.baseLanguage.structure.LocalVariableReference"}],
    "children": [{"role": "preProcessFunction", "nodes": [{"concept": "jetbrains.mps.lang.actions.structure.CopyPreProcessFunction",
      "children": [{"role": "body", "nodes": [ /* mutate copy */ ]}]}]}]}]},
  {"role": "postProcessor", "nodes": [{"concept": "jetbrains.mps.lang.actions.structure.PastePostProcessor",
    "references": [{"role": "concept", "target": "jetbrains.mps.baseLanguage.structure.LocalVariableReference"}],
    "children": [{"role": "postProcessFunction", "nodes": [{"concept": "jetbrains.mps.lang.actions.structure.PastePostProcessFunction",
      "children": [{"role": "body", "nodes": [
        /* node<LocalVariableDeclaration> decl = pastedNode.ancestor<ClassifierMember>.descendants<LocalVariableDeclaration>
             .findFirst({~d => d.name :eq: pastedNode.variable.name; });
           if (decl != null) { pastedNode.variable.set(decl); } */ ]}]}]}]}]}]}
```
