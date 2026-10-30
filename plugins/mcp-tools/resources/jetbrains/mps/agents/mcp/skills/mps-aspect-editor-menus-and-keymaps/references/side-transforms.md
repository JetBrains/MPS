# Side Transforms

Side transforms are **character-triggered** edits of the node on the left or right of the caret. They are implemented as a section of a transformation menu whose location is `TransformationLocation_SideTransform`.

Typical pattern (from `jetbrains.mps.baseLanguage`): you have `1` in the editor; pressing `+` should turn it into `1 + <hole>`. This is a right-side transform on `IntegerLiteral` (or its super-concept) with matching text `+`.

## JSON Template — Right-Transform on a Concept

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.TransformationMenu_Default",
  "properties": [{ "name": "name", "value": "Expression_TransformationMenu" }],
  "references": [
    { "role": "conceptDeclaration", "target": "jetbrains.mps.baseLanguage.structure.Expression" }
  ],
  "children": [{
    "role": "sections",
    "nodes": [{
      "concept": "jetbrains.mps.lang.editor.structure.TransformationMenuSection",
      "children": [
        {
          "role": "locations",
          "nodes": [{
            "concept": "jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform",
            "children": [{
              "role": "placeInCell",
              "nodes": [{
                "concept": "jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder",
                "properties": [{ "name": "placeInCell", "value": "RIGHT" }]
              }]
            }]
          }]
        },
        {
          "role": "parts",
          "nodes": [{
            "concept": "jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action",
            "children": [
              { "role": "textFunction",    "nodes": [{
                  "concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText",
                  "children": [{ "role": "body", "nodes": [ /* return "+"; */ ] }] }]},
              { "role": "executeFunction", "nodes": [{
                  "concept": "jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute",
                  "children": [{ "role": "body", "nodes": [
                    /* create PlusExpression with leftExpression = node.copy, rightExpression = <default> and replace node */
                  ]}]}]}
            ]
          }]
        }
      ]
    }]
  }]
}
```

## LEFT vs RIGHT Semantics

- **Right transform** — caret is at the right end of the cell; typed characters extend to the right (`1` → `+` → `1+_` → `2` → `1+2`).
- **Left transform** — caret is at the left end; typed characters extend to the left (`_1` → `+` → `+_1` → `2` → `2+_1`).

## Showing Side-Transform Items in Completion

Side-transform items are not automatically part of `Ctrl+Space`. To surface them, either:

- list `TransformationLocation_Completion` **alongside** `TransformationLocation_SideTransform` in the same `locations` collection of the section, so the parts apply to both; or
- add a separate completion section containing a `TransformationMenuPart_IncludeMenu` whose `menuReference` points at the same menu.
