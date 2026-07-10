# Editor Components — Reusable Editor Fragments

An **editor component** is a named, reusable fragment of editor layout. It is a root `EditorComponentDeclaration` bound to a concept (via the `conceptDeclaration` reference) and holding exactly one `cellModel` — the shared cell group. Any concept editor can then embed it with a `CellModel_Component` whose `editorComponent` reference points at the component. Use components to factor out cell groups that several concept editors share (e.g. a common set of properties) instead of duplicating the cells.

## Key Concepts

| Concept | Role | Notes |
|---|---|---|
| `EditorComponentDeclaration` | the component | `conceptDeclaration` (reference, `0..1`) binds it to a concept; one `cellModel` (`1`) holds the reusable cells. A root node that lives in the `editor` model. No `inspectedCellModel`. |
| `CellModel_Component` | the reuse site | `editorComponent` (reference, `1`) targets the component. Placed in any `EditorCellModel` slot of a concept editor (usually a `childCellModel` of a `CellModel_Collection`). |

## Inheritance Rule

A component bound (via `conceptDeclaration`) to a concept `C` can be reused from the editor of `C` **and** from editors of any sub-concept of `C`, or any concept that implements `C` when `C` is an interface. So bind the component to the **most general** concept that already owns the relations (properties / children / references) the component displays — typically a shared super-concept or interface — and every specialized editor can embed it.

> Example: a component bound to `AbstractCommand` (the super-concept) is reusable in the editors of `Step` and `LeftTurn` (its sub-concepts).

## Manual Path (JSON blueprints)

### 1. Create the component (root node)

Insert an `EditorComponentDeclaration` into the `editor` model with `mps_mcp_insert_root_node_from_json`:

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.EditorComponentDeclaration",
  "properties": [{ "name": "name", "value": "AbstractCommand_PropertiesComponent" }],
  "references": [{ "role": "conceptDeclaration", "target": "AbstractCommand" }],
  "children": [{
    "role": "cellModel",
    "nodes": [{
      "concept": "jetbrains.mps.lang.editor.structure.CellModel_Collection",
      "children": [
        { "role": "cellLayout", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellLayout_Indent" }] },
        { "role": "childCellModel", "nodes": [
          { "concept": "jetbrains.mps.lang.editor.structure.CellModel_Property",
            "references": [{ "role": "relationDeclaration", "target": "label" }] },
          { "concept": "jetbrains.mps.lang.editor.structure.CellModel_Property",
            "references": [{ "role": "relationDeclaration", "target": "comment" }] }
        ]}
      ]
    }]
  }]
}
```

Call: `mps_mcp_insert_root_node_from_json(modelReference="<lang>.editor", json=<above>)`.

Notes:
- `conceptDeclaration` `target` is the bound concept — a plain concept name is auto-resolved, or pass its `c:` / `r:` reference.
- `relationDeclaration` is a **reference** (it lives in `references[]`, *not* `children[]`); its `target` is the property/link name on the bound concept (here `label`). Add one cell per property/child/reference you want the component to show.

### 2. Reuse the component from a concept editor

Add a `CellModel_Component` (pointing `editorComponent` at your component) into the target editor. **How** depends on the editor's existing top cell — print the editor with `mps_mcp_print_node(deep=true)` first to see what its `cellModel` actually is.

The `CellModel_Component` to insert is the same in both cases:

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellModel_Component",
  "references": [{ "role": "editorComponent", "target": "AbstractCommand_PropertiesComponent" }]
}
```

(The `editorComponent` `target` may be the component's name — auto-resolved — or its node reference.)

**Case A — the editor's `cellModel` is already a `CellModel_Collection`.** Append the `CellModel_Component` to that collection's `childCellModel` role:

`mps_mcp_update_node(operation="ADD", kind="CHILD", nodeReference=<the CellModel_Collection inside the editor>, childRole="childCellModel", childJson=<the CellModel_Component above>)`

**Case B — the editor's `cellModel` is a single non-collection cell** (very common: a default/`scaffold`-generated editor's `cellModel` is *one* bare cell — e.g. a `CellModel_Component` that references the built-in `alias` component, or a `CellModel_Property`). `cellModel` has cardinality `1`, so you **cannot** append a second cell to it. Instead, **wrap**: replace that single top cell with a new `CellModel_Collection` (Indent) whose children are the **original** cell plus your new `CellModel_Component`:

`mps_mcp_update_node(operation="SET", kind="CHILD", childNodeRef=<the existing top cell of the editor>, childJson=<the wrapping collection below>)`

```json
{
  "concept": "jetbrains.mps.lang.editor.structure.CellModel_Collection",
  "children": [
    { "role": "cellLayout", "nodes": [{ "concept": "jetbrains.mps.lang.editor.structure.CellLayout_Indent" }] },
    { "role": "childCellModel", "nodes": [
      /* the ORIGINAL top cell, reproduced verbatim from the deep printout (same concept, references and styleItems) */,
      { "concept": "jetbrains.mps.lang.editor.structure.CellModel_Component",
        "references": [{ "role": "editorComponent", "target": "AbstractCommand_PropertiesComponent" }] }
    ]}
  ]
}
```

(You cannot side-step the verbatim copy by building the wrapping collection in place first: `cellModel` is cardinality `1`, so there is no free slot to hold a second cell while you rearrange — the single `SET` replacement above is the way.)

Repeat for every editor that should show the component (e.g. both `Step` and `LeftTurn`).

## Scaffold Path (`mps_mcp_scaffold_editor`)

`mps_mcp_scaffold_editor` can both create a component and wire it into editors. If the concept has not been compiled or is out-of-date, the tool automatically attempts to build (make) the structure model (self-healing), but you can also manually rebuild the language beforehand if needed.

### Create the component

```
mps_mcp_scaffold_editor(
  conceptRef        = "AbstractCommand",
  modelReference    = "<lang>.editor",
  type              = "component",
  includeProperties = "[\"label\", \"comment\"]" // JSON-array string; omit = all, "[]" = none
)
```

This produces an `EditorComponentDeclaration` bound to `AbstractCommand` with default cells for the chosen properties.

### Build / refresh an editor that reuses it

```
mps_mcp_scaffold_editor(
  conceptRef        = "Step",
  modelReference    = "<lang>.editor",
  includeComponents = "[\"<ref of AbstractCommand_PropertiesComponent>\"]", // explicit list
  detectComponents  = true                                               // or auto-detect suitable ones
)
```

- `includeComponents` — one persistent reference or a JSON-array string of references to existing `EditorComponentDeclaration`s to embed; each becomes a `CellModel_Component` in the generated editor. Omit it for no explicit components, or pass `"[]"` for none.
- `includeProperties`, `includeReferences`, `includeChildren` — each accepts one name or a JSON-array string. Omit a selector to include all of that kind; pass `"[]"` to include none.
- `detectComponents` — when `true`, the scaffolder automatically finds and embeds suitable existing components (those bound to the concept or one of its super-concepts / implemented interfaces — the inheritance rule).
- `type` defaults to `"editor"`, so omit it here to generate a `ConceptEditorDeclaration` (not a component).

Scaffolding generates a *fresh* default editor. If a concept already has a hand-tuned editor you want to keep, prefer the manual path (add a `CellModel_Component` to the existing editor) instead of regenerating it.

## Worked Example (Kaja)

Goal: factor the properties of `AbstractCommand` into a component and reuse it in the `Step` and `LeftTurn` editors. (`AbstractCommand` is the super-concept of `Step` and `LeftTurn`; their editors live in `jetbrains.mps.samples.Kaja.editor`.)

1. **Setup** — ensure `AbstractCommand` has one or two properties (e.g. `label`, `comment`), then rebuild the language so the scaffolder/runtime sees them.
2. **Create the component** `AbstractCommand_PropertiesComponent` — either insert the `EditorComponentDeclaration` blueprint above, or `mps_mcp_scaffold_editor(conceptRef="AbstractCommand", type="component", includeProperties="[\"label\",\"comment\"]", modelReference="jetbrains.mps.samples.Kaja.editor")`.
3. **Embed it** in `Step_Editor` and `LeftTurn_Editor`. Print each editor first: in the Kaja sample each one's `cellModel` is a single bare `CellModel_Component` that references the built-in `alias` component (i.e. **Case B** above) — so wrap that cell in a new `CellModel_Collection` containing the original cell plus a `CellModel_Component` that references `AbstractCommand_PropertiesComponent`. (Alternatively re-scaffold each editor with `includeComponents="[\"<component ref>\"]"` / `detectComponents=true`, which regenerates the editor with the component already wired in.)
4. Because the component is bound to the super-concept `AbstractCommand`, both the `Step` and `LeftTurn` editors (sub-concepts) accept it — the inheritance rule in action.

## Validation

- `mps_mcp_check_root_node_problems` on the component and each edited editor — expect no problems.
- `mps_mcp_print_node` (HTML or PLAIN TEXT) on a sample `Step` / `LeftTurn` node to confirm the component's cells render in both editors.

## Related

- `references/cell-models.md` — `EditorComponentDeclaration`, `CellModel_Component`, and the property / ref cell models a component contains.
- `references/editor-patterns.md` — JSON patterns for the cell layouts that go inside a component's `cellModel`.
