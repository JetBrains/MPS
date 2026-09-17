# `mps_mcp_get_concept_details` — Resolution Semantics & Result Schema

Gets detailed information about a list of MPS concepts, including their properties, references, and children. `data` is inline when the serialized result is at most `maxInlineBytes` (default 20000), otherwise the path of a local JSON file holding the same envelope. Concepts can be specified individually (`conceptRefs`) or by language (`languageRefs`) — every concept and interface concept of each listed language is included.

## Input form

Each selector accepts either one value or a JSON-array string. For example, use
`conceptRefs = "jetbrains.mps.baseLanguage.structure.ClassConcept"` for one concept, or
`conceptRefs = "[\"…ClassConcept\", \"…InterfaceConcept\"]"` for several. `languageRefs`
uses the same form. Omit an unused selector; when both are absent or blank, the tool preserves its
existing `No concepts nor languages have been provided` error.

## Unresolved refs are never silently dropped

The tool distinguishes three response shapes:

| Resolution outcome | Envelope | Payload |
|---|---|---|
| All refs resolved | `ok:true` | `data`: the concept array inline, or `"/path/to/file.json"` above `maxInlineBytes` |
| Some refs failed, at least one resolved | `ok:true` | `data` as above, plus `warnings` naming each unresolved ref and `details.unresolved` with "did you mean" suggestions |
| Every `conceptRef` and `languageRef` failed | `ok:false`, code `NOT_FOUND` | `details.unresolved` with up to 5 "did you mean" candidates per unresolved ref (qualified names and persistent references) |

## Suggestion heuristic

Suggestions are computed by subtoken-matching the input (the same camelCase- and underscore-aware splitter used by `mps_mcp_search_concepts`).

- If the input is FQN-shaped (e.g. `"jetbrains.mps.lang.smodel.structure.X"`) and the implied language resolves, suggestions are scoped to that language first.
- Otherwise the search runs project-wide.
- Candidates owned by **another open MPS project** are never suggested: the module repository is shared between open projects, so an unfiltered list could answer a plain name with a same-named concept or language you cannot edit. Read-only libraries and stubs (owned by no project) remain candidates.

Treat the suggestion list as a **candidate set**, not a ranked answer. For free-form lookup, use `mps_mcp_search_concepts` (see `search-concepts.md` for the matching algorithm).

## Detail level, one-hop closure and inlining

- `detail = "shape"` returns only the structural projection of each concept — `{qualifiedName, conceptReference, isAbstract, isRootable, properties: [{name, type, enumerationValues?, enumerationDefault?}], references: [{name, targetConcept, cardinality}], children: [{name, targetConcept, cardinality}]}` — with no docs, no `sampleNode` and no aspect details. This is everything needed to author a node of the concept; prefer it over reducing the full record yourself. `cardinality` carries the same value here as in the full record, so escalating to `"full"` to learn a role's cardinality gains nothing: for a `children` entry it is `0..1`/`1`/`0..n`/`1..n`, and for a `references` entry it is always `0..1` or `1`, because MPS reference links are single-valued (a `0..n` reference is modelled as a `0..n` child role of smart-reference wrapper concepts — see the `mps-aspect-structure-concepts` skill). `detail = "full"` (default) returns the schema below.
- `includeChildRoleConcepts = true` additionally returns every concept that is the target of a child or reference role of the requested concepts (one hop, deduplicated, excluding the requested concepts, at the same detail level). `data` then becomes `{"concepts": [...], "relatedConcepts": [...]}` instead of the bare array — one call instead of a follow-up lookup per role target. Pair it with `detail = "shape"` to keep the payload small.
- `maxInlineBytes` (default 20000) is the inline/temp-file cut-off: at or below it, `data` is the JSON itself; above it, `data` is a temp-file path whose file holds the same `{ok, data}` envelope.

## Result schema

Each entry in the `detail = "full"` result has the shape:

```
{
  name,
  qualifiedName,            // use this as the `concept` field in JSON blueprints
  conceptAlias,
  shortDescription,
  conceptReference,         // c:... — informational; not required in blueprints
  languageReference,
  superConcept,
  superConceptContainingProject,      // only when the direct superconcept is from another open project
  superConceptEditableFromCurrentProject: false,
  superInterfaces: ["ref1", "ref2", ...],
  superInterfaceDetails: [
    { name, reference, containingProject?, editableFromCurrentProject? }
  ],
  sourceNode,
  isAbstract,
  isInterfaceConcept,
  isRootable,
  virtualFolder,
  present: true,
  descriptorStatus,         // only present when "hollow" — see below
  descriptorRecoveryAction, // only present when descriptorStatus == "hollow"
  properties: [...],
  references: [...],
  children: [...],
  sampleNode: {             // a representative node of this concept
    concept,
    properties: [...],
    references: [...],
    children: [...]
  }
}
```

Use the `qualifiedName` field (e.g. `"jetbrains.mps.baseLanguage.structure.ClassConcept"`) as the `concept` field in JSON node blueprints. It is unambiguous and does not require a `conceptReference`.

With multiple MPS projects open, `containingProject` / `editableFromCurrentProject:false` marks concepts from another open project. The direct concept entry gets these fields when the concept itself is foreign; nested references use prefixes such as `superConceptContainingProject` and per-entry `superInterfaceDetails[*].containingProject`.

### Feature entries (`properties`, `references`, `children`)

Each item in these three arrays carries the identifiers needed to reference the feature from blueprints — no deep `print_node` calls required to mine them:

```
{
  name,
  type,                     // properties: "string"|"integer"|"boolean"|<enum/datatype name>
  targetConcept,            // references/children only
  cardinality,              // references/children only
  featureId,                // <langUUID>/<conceptId>/<featureId> — the encoded id triple
  sourceNode,               // declaration node's persistent ref, e.g. r:...(...structure)/<id>
  enumerationValues: [...], // properties with an enum type only
  enumerationDefault,       // enum properties whose enumeration declares a default member: that
                            // member's name. A property sitting at the default stores nothing, so
                            // `mps_mcp_print_node` reports this value with `isDefault: true`, and
                            // an absent value means the default, not "missing".
  doc, deprecated           // when present on the declaration
}
```

- **`featureId`** is the exact value to paste into a `$PROPERTY$` macro's `propertyId`, or to encode smodel `SPropertyAccess` / `SLinkAccess` targets.
- **`sourceNode`** is the `r:...(...structure)/<id>` form. That is the correct *kind* of ref when another API expects a structure declaration node (for example `applicableConcept`), but this particular feature-declaration ref is informational only and is not itself a valid `applicableConcept` target. It is omitted when the feature has no resolvable declaration (rare; e.g. a hollow descriptor).

## Stale runtime descriptors (`descriptorStatus: "hollow"`)

A concept can have a *hollow* runtime descriptor: the runtime entry exists but reports `sourceNode == null`, no properties, no references, no children, and `isAbstract: true`. This shape is the fingerprint of an MPS language runtime that is out of sync with the structure model — typically after `CREATE_CONCEPTS` where an incremental make did not regenerate the language aspect descriptor classes.

When `mps_mcp_get_concept_details` detects this shape it adds `descriptorStatus: "hollow"` and a `descriptorRecoveryAction` string to the entry. **Treat the entry as untrustworthy: empty `properties`/`references`/`children` here mean "unknown", not "the concept has none".**

Recovery: call `mps_mcp_alter_nodes` with operation `MAKE` and `rebuild = true` targeting the **language module** (not just the structure model), then re-call `mps_mcp_get_concept_details`. `mps_mcp_reload_all` alone is **not** sufficient — it reloads classes from their current on-disk form, but the disk content is stale until a clean rebuild has regenerated the aspect descriptor classes.

Note that `CREATE_CONCEPTS` with `make: true` already clean-rebuilds *and* verifies each created descriptor against the live runtime — auto-recovering a never-deployed language with one module-scoped rebuild — so it returns `makeStatus: "runtime_stale"` only when descriptors are genuinely still hollow. A hollow descriptor after a `"success"` from that path indicates a deeper problem (build failure, language module not in the project scope, …) — inspect `makeStatus`, `hollowConcepts`, and `makeDetails` on the create response first.
