## `mps_mcp_print_node` — Output Format

`format` accepts exactly three literals — `JSON` (default), `HTML`, `PLAIN TEXT`. The value is upper-cased before matching, but the spelling matters: `PLAIN TEXT` contains a **space** (`PLAIN_TEXT`, `TEXT` and `text` all fail with `Invalid format 'text'. Allowed values: JSON, HTML, PLAIN TEXT`).

`nodeReference` must be a **node** reference (`r:<uuid>(name)/<node-id>`). A model reference (`r:<uuid>(name)`) or qualified model name is rejected with INVALID_REQUEST that names the model and a retry line for `mps_mcp_get_project_structure` (`startingPoint`, `includeNodes=true`). `mps_mcp_check_root_node_problems` accepts those model forms in `nodeReference`.

`data` is inline when the printout is at most `maxInlineBytes` characters (default 20000) and the absolute path of a temp file above that; the file holds the same `{ok, data}` envelope. Pass a small `maxInlineBytes` to force the file form, or a large one to keep a big dump inline. Behaviour depends on `deep`:

- `deep=true` recursively inlines all descendants.
- `deep=false` (shallow) lists properties, children roles with references, and reference roles.

**Verifying a whole root costs one call.** Pass `deep=true` for machine-readable JSON of the root and every descendant, or `format: "PLAIN TEXT"` for the editor projection when you only need to read it (~10× cheaper than walking the tree). The default is **shallow**, and a shallow printout gives a child as `{name, reference}` only — nothing about its properties is in the answer, which is what turns a naive verification loop into one call per child.

**`PLAIN TEXT` renders an empty collection as an editor placeholder.** An empty `0..n` role prints as its placeholder cell, e.g. `see also: << ... >>`, which reads like a one-element list; it means the role is **empty**. Never count elements from the projection — take counts from the JSON form.

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
