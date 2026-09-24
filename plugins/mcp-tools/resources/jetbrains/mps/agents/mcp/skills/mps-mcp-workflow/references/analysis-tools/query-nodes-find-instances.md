## `mps_mcp_query_nodes` (`FIND_INSTANCES`) — Finding Nodes of a Concept

Returns all nodes that are instances of the specified concepts (or one random sample). Returns a JSON array of node info objects (non-root entries include `rootName`), inline in `data` when the serialized array is at most `maxInlineBytes` characters (default 20000), otherwise the path of a temp file holding the same envelope (`mps_mcp_query_nodes` takes `maxInlineBytes` as a top-level parameter, next to `operation` and `parameters`).

**One call per concept is never necessary.** `conceptRefs` takes several concepts and scans once; `detail: "count"` answers with counts instead of node records. The two chains this replaces are the expensive ones: a call per concept, each serialising every node it found only for the nodes to be reduced to an integer afterwards.

**Counting roots does not even need a call.** If you already hold a `mps_mcp_get_project_structure(startingPoint=<model>, includeRootNodes=true)` dump — pass `nodeDetail="names"` when you build it, which keeps only name/concept/reference per root and is all this reduction reads — `python3 scripts/mps_dump.py count <dumpFile>` gives roots per concept locally, with no further server round trip. That route is **roots only** and knows nothing about `propertyFilter`, `exact` or scopes. When querying through `FIND_INSTANCES`, pass `rootsOnly: true` (with optional `detail: "count"`) to match only root nodes (`node.parent == null`); `scope: "roots"` searches *within the subtrees* of specified roots and requires companion `roots: [...]`. Use `detail: "count"` when you need instances at any depth (or with `rootsOnly: true` for roots only), a `propertyFilter`/`exact` subset, a scope other than one model, or when you do not already have the dump; use the node form when you want the nodes themselves.

Parameters:
```
{
  "conceptRef": "Persistent reference of the concept (SAbstractConcept) or fully qualified concept name",
  "conceptRefs": "Alternative to conceptRef for several concepts: one reference or a JSON array of them. Passing both conceptRefs and conceptRef (or conceptReference) is rejected.",
  "detail": "Optional: 'nodes' (default, the node records) or 'count'.",
  "scope": "Optional: 'all', 'editable' (default), 'models', 'modules', 'roots'",
  "models": "Optional: list of persistent model references (required if scope is 'models')",
  "modules": "Optional: list of persistent module references (required if scope is 'modules')",
  "roots": "Optional: list of root node references (required if scope is 'roots'). Restricts the search to nodes within the specified roots.",
  "rootsOnly": "Boolean (optional, default: false). If true, matches only root nodes (parent == null). Can be combined with any scope or detail.",
  "propertyFilter": "Optional: {\"name\": \"<propertyName>\", \"value\": \"<expectedValue>\"} — only nodes whose property equals the value (e.g. find a literal by its value).",
  "exact": "Boolean (optional, default: false). Whether to exclude instances of subconcepts.",
  "sampleOnly": "Boolean (optional, default: false). If true, returns a single random sample instance to illustrate usage and JSON structure."
}
```

With `detail: "nodes"` (the default) several `conceptRefs` return the **union** of their instances, deduplicated, in one array. `propertyFilter`, `exact` and every `scope` form apply unchanged either way.

### `detail: "count"`

`data` is `[{"concept": "<qualifiedName>", "conceptReference": "<c:…>", "count": <n>}]` — **one row per requested concept, in the order you asked**, including a `count: 0` row for a concept with no instances (an absent row would be indistinguishable from a dropped one). A repeated reference keeps its own row. No node records are built, so the response stays inline.

**Rows overlap by construction.** With `exact: false` (the default) an instance of a subconcept counts for every requested superconcept as well, so *summing the rows does not give the number of distinct nodes* — ask for `ConceptDeclaration`, `InterfaceConceptDeclaration` and their common superconcept `AbstractConceptDeclaration` over a model with 3 + 1 declarations and the rows read 3, 1, 4 over 4 nodes. Pass `exact: true` for disjoint rows (each node then counts only for the concept it is an exact instance of, and an abstract concept reads 0).

Each row's count equals the number of nodes the same query would return with `detail: "nodes"` for that one concept, so the two projections cannot disagree, and batching concepts does not change any one concept's answer. `detail: "count"` together with `sampleOnly: true` is a contradiction — one asks how many there are, the other for a single example — and is rejected.

For `scope: "models"`, `"modules"`, or `"roots"`, the matching selector must be one nonblank reference string or a nonempty JSON array of nonblank strings. Every supplied reference must resolve; one typo rejects the whole search with `INVALID_REQUEST` naming the parameter and reference, so a search never silently narrows to the resolvable subset. `FIND_USAGES` follows the same rule. Duplicates are allowed, and a child reference in `roots` selects its containing root. An unresolvable entry in `conceptRefs` rejects the whole query the same way (`NOT_FOUND` naming the reference) rather than returning a short row set.
