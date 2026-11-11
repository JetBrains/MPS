## `mps_mcp_print_node` — Output Format

`format` accepts exactly five literals — `JSON` (default), `HTML`, `PLAIN TEXT`, `IMAGE`, `AGENTIC VIEW`. The value is upper-cased before matching, but the spelling matters: `PLAIN TEXT` contains a **space** (`PLAIN_TEXT`, `TEXT` and `text` all fail with `Invalid format 'text'. Allowed values: JSON, HTML, PLAIN TEXT, IMAGE, AGENTIC VIEW`).

`nodeReference` must be a **node** reference (`r:<uuid>(name)/<node-id>`). A model reference (`r:<uuid>(name)`) or qualified model name is rejected with INVALID_REQUEST that names the model and a retry line for `mps_mcp_get_compact_project_structure` (`startingPoint`; or `mps_mcp_get_project_structure` with `includeNodes=true` for JSON). `mps_mcp_check_root_node_problems` accepts those model forms in `nodeReference`.

`data` is inline when the printout is at most `maxInlineBytes` characters (default 20000) and the absolute path of a temp file above that; the file holds the same `{ok, data}` envelope (`AGENTIC VIEW` is cut to fit instead; its rare file is raw text). Pass a small `maxInlineBytes` to force the file form, or a large one to keep a big dump inline. For `JSON`, the shape depends on `deep`:

- `deep=true` recursively inlines all descendants.
- `deep=false` (shallow) lists properties, children roles with references, and reference roles.

**Verifying a whole root costs one call.** Pass `format: "AGENTIC VIEW"` to read it, `deep=true` for machine-readable JSON of the root and every descendant, or `format: "PLAIN TEXT"` for the editor projection (~10× cheaper than walking the tree). The default is **shallow**, and a shallow printout gives a child as `{name, reference}` only — nothing about its properties is in the answer, which is what turns a naive verification loop into one call per child.

**`PLAIN TEXT` renders an empty collection as an editor placeholder.** An empty `0..n` role prints as its placeholder cell, e.g. `see also: << ... >>`, which reads like a one-element list; it means the role is **empty**. Never count elements from the projection — take counts from `AGENTIC VIEW` or JSON.

### Editor projections: `editorHints`, `IMAGE`, grid text

`HTML`, `PLAIN TEXT` and `IMAGE` render the node's editor. Which alternative editor (editor hint) is used is chosen with `editorHints`:

- Omitted: the project's hint settings (Settings, "Editor hints"). `[]`: no hints. Otherwise a hint FQ name (`my.lang.editor.Views.tabular`), a short id (`tabular`), or an array of them, given as a real JSON array or as a string (`"[\"tabular\"]"`).
- Resolution: the node's model catalog first (hints of the languages the model uses, extended and aggregated ones), then the global catalog of every deployed language; a global-only hint is applied with a warning (and `available` then takes the full form). An unknown or ambiguous value fails with INVALID_REQUEST (`'x' is ambiguous (<fq1>, <fq2>); pass the FQ name`), and `details.editorHints.available` of the error lists the model's hints.
- `reflective` (`jetbrains.mps.lang.core.editor.reflective`), a runtime hint, prints a node's raw structure; `AGENTIC VIEW` adds ids and reference targets.
- Ignored with a warning for `JSON` and `AGENTIC VIEW`. Hints pushed in an open IDE editor tab are not seen; only the project settings and this parameter count.

`details.editorHints` is in every projection envelope:

```
{"ok":true,"data":"...","details":{"editorHints":{
  "source":"projectSettings",                       // or "request"
  "applied":[],                                      // FQ names in effect
  "available":["my.lang.editor.Views.tabular", ...], // compact: FQ names only
  "hiddenCount":3,                                   // hints with showInUI=false, not listed in compact form (an unknown hint value returns the full list)
  "unloadedLanguages":["my.lang"]}}}                 // only when a used language has no runtime
```

`available` is the full form `{fqName, id, presentation, language, showInUI}` per hint, hidden ones and the `reflective` entry included, only in an error or after a global-only hint warning. Entries of `jetbrains.mps.lang.core` are display toggles (`include_deprecated_elements`, `ShowSuppressedErrors`) or `comment` (prints a node as when commented out), not notations of your language. A language without runtime cannot contribute: build it (see `unloadedLanguages`).

**`IMAGE`** paints the projection to a PNG. `data` is the absolute path of a temp `.png` (never inline; `maxInlineBytes` does not apply); open it with a file-read tool that shows images. `details.image` is `{width, height, mediaType, scale}`. It uses the IDE colour scheme. Above 16 Mpx the image is clipped to its top-left part (`details.image.clipped: true` plus a warning): print a sub-node instead. The envelope still carries `details.editorHints`.

**Graphical cells.** `PLAIN TEXT` cannot show diagrams or other Swing cells; it warns `N graphical cell(s) (<ClassNames>) have no textual form; use format IMAGE`. A render failure is INTERNAL_ERROR with a retry hint for another format.

**Cells without text.** For cells that only paint (a fraction bar), images and Swing cells, `details.omittedCells` is `{count, cells}`, the first 50 as `{kind: painted|image|component, cellClass, node, concept, role, textBefore, textAfter, bounds, shownAs?}`: the label texts around the cell and its box in `IMAGE` pixels. Plain `PLAIN TEXT` leaves them out with a warning `N cell(s) without text (<ClassNames>) are missing from this printout …`; the grid and `HTML` draw them (`shownAs`).

**Two-dimensional `PLAIN TEXT`.** When the projection contains a table, a superscript layout or a cell without text, the text is rebuilt as a character grid from the cell geometry: `details.textRenderer: "grid"` plus a warning naming the reason. In the grid, `⎡⎢⎣ ⎤⎥⎦` (`⁅ ⁆` on one row) are brackets the editor draws, `─` a rule such as a fraction bar, `│` a vertical rule, and `⟦n⟧` the n-th entry of `details.omittedCells.cells`; a long vertical gap is one blank row. Other projections keep the plain rendering. It is automatic; if the grid cannot be built, the plain rendering comes with a warning.

**`HTML`** writes a page and the painted editor into a fresh temp directory: `data` is the path of `index.html`, `details.html` is `{directory, files: {name: bytes}}` (`maxInlineBytes` does not apply). Read it as source: the `<pre>` text has the editor's line breaks, and `data-n`/`data-c`/`data-r` on a span mark where a node's projection starts (its id in `mps-model`, or `mN/<id>` in meta `mps-model-mN`; concept; role), `data-t` a reference target: from what you see to the node to edit. Stacks (`v`), tables (`t`/`tl`/`tc`), `sup`/`sub`, brackets (`br`) and rules (`hr`) are CSS boxes; a cell without text or a diagram is a cut-out of `editor.png` (`im`, `data-o` = its `omittedCells` entry). A comment in the page lists all classes.

**Which one.** `references/analysis-tools/print-node-agentic-view.md` maps tasks to formats and describes `AGENTIC VIEW`. `IMAGE` shows painted cells, `HTML` maps text to nodes and gives exact text styles (`sN` classes; backgrounds in `editor.png`). Only `JSON` feeds mutation tools.

The saved file contains the full MCP response envelope; its `data` field contains the node JSON object shown below. **JSON mutation tools accept either that full envelope file or a file containing only the raw `data` object** — load the `mps-node-editing` companion skill from the same origin, then see its File-Path Semantics section and `references/json-format.md` in the `mps-node-editing` skill root.

```
{
  "name": "NodeName",
  "concept": "FullyQualifiedConceptName",            // use as `concept` in blueprints
  "conceptReference": "PersistentConceptReference",  // informational; optional in blueprints
  "reference": "PersistentNodeReference",
  "properties": [
    { "name": "propertyName", "type": "propertyType", "value": "propertyValue" }
  ],
  "references": [
    { "role": "linkRole", "type": "roleConcept", "typeReference": "PersistentRoleConceptReference",
      "cardinality": "0..1|1", "target": "TargetNodeName",
      "targetReference": "PersistentTargetReference" }
  ],
  "children": [
    { "role": "linkRole", "type": "roleConcept",
      "typeReference": "PersistentRoleConceptReference",
      "cardinality": "0..1|1|0..n|1..n",
      "children": [ /* if deep=false */
        { "name": "ChildNodeName", "reference": "..." }
      ],
      "nodes": [ /* if deep=true */
        { "name": "ChildNodeName", "concept": "...", "conceptReference": "...",
          "reference": "...", "properties": [...], "references": [...], "children": [...] }
      ]
    }
  ]
}
```

**Default property values are invisible in dumps.** MPS stores nothing for a property that holds its default value. Such a property is therefore **omitted** from the `properties` array above (and from `mps_mcp_get_project_structure` `includeNodes` dumps) — except an enum property holding its enumeration's default value: it is printed with the default literal's name and `"isDefault": true` (the name is also in `mps_mcp_get_concept_details` as `enumerationDefault`) — it is a real value, not missing data, and the printout still round-trips through the blueprint-insert tools. Report-style output (`mps_mcp_check_root_node_problems` with `onlyNodesWithProblems=false`) prints an omitted property as `"value": ""`. Read an absent property or `"value": ""` as **"holds its default value"**, never as "missing": verification code must substitute the default (a missing key is not an error — it caused a `KeyError` in one study run), and the `PLAIN TEXT` projection shows the resolved literal (e.g. `easy`) when you need to see it spelled out.

**Enum property values are the declared literal name.** A non-default member prints as that identifier (e.g. `ML`), never the persistence encoding (`WtZI0zlAtJ/ML`). Compare printed values against `enumerationValues` / `enumerationDefault` from `mps_mcp_get_concept_details`.

**Stored values the concept does not declare.** `properties`, `children` and `references` list what the node *stores*. An entry whose feature the node's concept does not declare comes after the declared ones with `"declared": false`. Its `type`, `cardinality` and `doc` are present only when the language that owns the feature is loaded. There are two cases:

- **The node's concept is not loaded**: its language is not loaded (for example a node in an example model — typically the language's `sandbox` solution — written in a language that has not been built yet, so its runtime concept descriptors are not deployed; or a model that uses a language missing from the repository), or the loaded language no longer declares the concept (it was deleted from the structure). The node record carries `"conceptLoaded": false`, its `name` reads `"X (concept is not found)"`, every feature is `declared:false`, and the envelope `warnings` list the unloaded concepts. Only stored values are shown. An **absent property means "unknown"**, not "holds its default", no `isDefault` entry is rebuilt, and an enum value shows its persisted `<id>/<name>` form. The content is still there: never report such a node as empty. Run `mps_mcp_alter_nodes MAKE` with `rebuild=true` on the language module for the full record (it does not bring back a deleted concept), or read it with `format: "PLAIN TEXT"`.
- **The concept is loaded but does not declare the role.** This happens when the runtime is stale, or when the role was removed from the structure without a migration. Only those entries are marked.

The blueprint tools do not re-apply these entries. A `declared:false` property is skipped with a warning (on update the stored value stays). A `declared:false` child role or reference, and a node record with `conceptLoaded:false`, are rejected with the recovery step. Remove such an entry to accept that a full-root update deletes what it held. A root record with `conceptLoaded:false` cannot be rewritten: delete the root with `mps_mcp_update_root_node_from_json` operation `DELETE` if it is no longer wanted.
