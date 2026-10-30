# Paste Wrappers and Copy-Paste Handlers (Actions Language)

These concepts live in `jetbrains.mps.lang.actions.structure`, in `<lang>/languageModels/actions.mps`.

## Paste Wrappers

`PasteWrappers` controls what happens when a node of one concept is pasted into a position that expects another concept. Typical case: pasting a BaseLanguage `Expression` into a place that expects a `Statement` should wrap it in `ExpressionStatement`.

Each `PasteWrapper` item holds:

- `sourceConcept` / `targetConcept` references (concept to convert from and to).
- a `wrapperFunction` child (`QueryFunction_PasteWrapper`) receiving `sourceNode` (the pasted node, concept `ConceptFunctionParameter_nodeToPasteWrap`) and returning the wrapped node.

### JSON Template

```json
{
  "concept": "jetbrains.mps.lang.actions.structure.PasteWrappers",
  "properties": [{ "name": "name", "value": "wrappers" }],
  "children": [{
    "role": "wrapper",
    "nodes": [{
      "concept": "jetbrains.mps.lang.actions.structure.PasteWrapper",
      "references": [
        { "role": "sourceConcept", "target": "jetbrains.mps.baseLanguage.structure.Expression" },
        { "role": "targetConcept", "target": "jetbrains.mps.baseLanguage.structure.Statement" }
      ],
      "children": [{
        "role": "wrapperFunction",
        "nodes": [{
          "concept": "jetbrains.mps.lang.actions.structure.QueryFunction_PasteWrapper",
          "children": [{ "role": "body", "nodes": [
            /* StatementList — BaseLanguage:
               node<ExpressionStatement> result = new node<ExpressionStatement>();
               result.expression.set(sourceNode);
               return result; */
          ]}]
        }]
      }]
    }]
  }]
}
```

### Triggering Order

Paste wrappers run **after** copy-paste handlers and **before** the node is grafted into the target tree. They respect concept inheritance: a wrapper from `Expression` → `Statement` fires for every `Expression` sub-concept.

## Copy-Paste Handlers

Copy-paste handlers all live in one root: `jetbrains.mps.lang.actions.structure.CopyPasteHandlers`. The root has two child roles:

- `preProcessor` (0..n) — `CopyPreProcessor` items, each with a `concept` reference and a `preProcessFunction` child (`CopyPreProcessFunction`, whose `body` is a `StatementList`).
- `postProcessor` (0..n) — `PastePostProcessor` items, each with a `concept` reference and a `postProcessFunction` child (`PastePostProcessFunction`, same `body`).

### Copy Pre-Processors

Run when a node is copied. Body receives:

- `original` — the node in the model (do not modify).
- `copy` — a fresh deep copy, detached from any model (`copy.parent == null`). **Mutate `copy`**.

Common uses: strip information that should not travel with the clipboard, anonymise references.

### Paste Post-Processors

Run after the node has been inserted at the target. Body receives `pastedNode` (`ConceptFunctionParameter_nodeToPastePostProcess`). Typical use: **re-resolve references** that now point into a different scope.

### JSON Template

```json
{
  "concept": "jetbrains.mps.lang.actions.structure.CopyPasteHandlers",
  "properties": [{ "name": "name", "value": "handlers" }],
  "children": [
    {
      "role": "preProcessor",
      "nodes": [{
        "concept": "jetbrains.mps.lang.actions.structure.CopyPreProcessor",
        "references": [
          { "role": "concept", "target": "jetbrains.mps.baseLanguage.structure.LocalVariableReference" }
        ],
        "children": [{
          "role": "preProcessFunction",
          "nodes": [{
            "concept": "jetbrains.mps.lang.actions.structure.CopyPreProcessFunction",
            "children": [{ "role": "body", "nodes": [ /* StatementList — BaseLanguage: mutate `copy`, not `original` */ ] }]
          }]
        }]
      }]
    },
    {
      "role": "postProcessor",
      "nodes": [{
        "concept": "jetbrains.mps.lang.actions.structure.PastePostProcessor",
        "references": [
          { "role": "concept", "target": "jetbrains.mps.baseLanguage.structure.LocalVariableReference" }
        ],
        "children": [{
          "role": "postProcessFunction",
          "nodes": [{
            "concept": "jetbrains.mps.lang.actions.structure.PastePostProcessFunction",
            "children": [{ "role": "body", "nodes": [
              /* StatementList — BaseLanguage:
                 node<LocalVariableDeclaration> decl = pastedNode.ancestor<ClassifierMember>
                   .descendants<LocalVariableDeclaration>.findFirst({~d => d.name :eq: pastedNode.variable.name; });
                 if (decl != null) { pastedNode.variable.set(decl); } */
            ]}]
          }]
        }]
      }]
    }
  ]
}
```
