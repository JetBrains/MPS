## Collection types: MPS concepts for `list<node<X>>` and `new arraylist<node<X>>`

When writing code in MPS using the `collections` and `smodel` languages, the correct
concepts to use are the following. These were confirmed by inspecting manually-written
MPS code (not produced by the Java parser).

**`node<X>` — a typed node reference** is represented by `SNodeType` from the `smodel`
language, with a `concept` reference pointing to the concept declaration of `X`.

**`list<node<X>>` as a variable type** uses `ListType` from `collections`, containing
an `elementType` child of type `SNodeType`.

**`new arraylist<node<X>>` as a constructor expression** uses `GenericNewExpression`
wrapping a `ListCreatorWithInit` creator (both from `collections`).

**Confirmed AST for `list<node<Type>> preciseTypes = new arraylist<node<Type>>;`**
(manually written in MPS; note: no `()` — MPS syntax has no parens on the constructor):

```json
{
  "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement",
  "children": [{
    "role": "localVariableDeclaration",
    "nodes": [{
      "concept": "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration",
      "properties": [{ "name": "name", "value": "preciseTypes" }],
      "children": [
        {
          "role": "type",
          "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.collections.structure.ListType",
            "children": [{
              "role": "elementType",
              "nodes": [{
                "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
                "references": [{ "role": "concept", "target": "r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1068431790189" }]
              }]
            }]
          }]
        },
        {
          "role": "initializer",
          "nodes": [{
            "concept": "jetbrains.mps.baseLanguage.structure.GenericNewExpression",
            "children": [{
              "role": "creator",
              "nodes": [{
                "concept": "jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit",
                "children": [{
                  "role": "elementType",
                  "nodes": [{
                    "concept": "jetbrains.mps.lang.smodel.structure.SNodeType",
                    "references": [{ "role": "concept", "target": "r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)/1068431790189" }]
                  }]
                }]
              }]
            }]
          }]
        }
      ]
    }]
  }]
}
```

> **Note**: `LocalVariableDeclarationStatement` (the wrapping statement node) and
> `LocalVariableDeclaration` (the inner declaration node) are separate concepts.
> The statement wraps the declaration via role `localVariableDeclaration`.

Replace the `target` in `"role": "concept"` with the node ref of whatever concept
you want `node<X>` to refer to. Use `mps_mcp_search_concepts` to find concept node refs.
