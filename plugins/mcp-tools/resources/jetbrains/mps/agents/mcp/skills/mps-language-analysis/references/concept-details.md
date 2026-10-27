# `mps_mcp_get_concept_details` — Resolution Semantics & Result Schema

Gets detailed information about a list of MPS concepts, including their properties, references, and children. `data` is inline when the serialized result is at most `maxInlineBytes` (default 20000), otherwise the path of a local JSON file holding the same envelope. Concepts can be specified individually (`conceptRefs`) or by language (`languageRefs`) — every concept and interface concept of each listed language is included.

## Input form

Each selector accepts either one value or a JSON array; a real array and the array written as a
string are equivalent. For example, use
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

## Languages without a built runtime

A fully qualified `conceptRefs` entry resolves through the structure model even when the language has no built runtime; the record is then read from the concept declaration and marked (`source: "declaration"`, `descriptorStatus: "hollow"`, `runtimeStatus`), and the envelope names the build under `details.languageBuild`. See `references/language-readiness.md`.

## An enumeration is not a concept

This tool returns **concepts and interface concepts only**. An `EnumerationDeclaration` — and any
other non-concept structure root, such as a constrained data type — can never be returned here, no
matter how the ref is spelled: resolution goes through the concept declaration, which an
enumeration is not. `conceptRefs = "<language>.structure.Difficulty"` therefore fails.

It does not fail blindly. A ref that names a real non-concept declaration is answered with what it
actually is plus the call that reads it, and its `details.unresolved` entry carries `declaredAs`
(e.g. `"EnumerationDeclaration"`) and `route` instead of "did you mean" candidates — because a
similarly-named *concept* from the same structure model is a dead end, not a near miss:

```
mps_mcp_query_structure
  operation = GET_ENUMERATION_LITERALS
  parameters = {"enumerationRef": "<language>.structure.Difficulty"}
```

`enumerationRef` accepts either the declaration's node reference (`r:...`) or exactly this
qualified name, so the string that failed here can be pasted straight across. Reach for this
whenever you need an enum's literals or its declared default — the lookup the
`enumerationDefault` pitfall below forces on every reader, since a property sitting at the default
stores nothing.

## Suggestion heuristic

- **Exact name or alias first.** Concepts whose simple name equals the input's, ignoring case, come first, then concepts whose alias equals it (`Int` finds the concept whose editor shows `Int`). They may be in another language than the one you named (`…lang.smodel.structure.ThisNodeExpression` finds `jetbrains.mps.lang.behavior.structure.ThisNodeExpression`). Name matches come before alias matches, an exact-case match before a different-case one, and then matches in the language you named (or the nearest namespace) before the rest.
- **Then subtoken matches** (the same camelCase- and underscore-aware splitter used by `mps_mcp_search_concepts`). If the input is FQN-shaped (e.g. `"jetbrains.mps.lang.smodel.structure.X"`) and the implied language resolves, they are scoped to that language, and one slot is kept for its best match even when exact matches from other languages fill the rest.
- Only when nothing matched so far does the search run project-wide.
- Candidates owned by **another open MPS project** are never suggested: the module repository is shared between open projects, so an unfiltered list could answer a plain name with a same-named concept or language you cannot edit. Read-only libraries and stubs (owned by no project) remain candidates.

Treat the suggestion list as a **candidate set**, not a ranked answer; an exact-name match is almost always the concept you meant. For free-form lookup, use `mps_mcp_search_concepts` (see `references/search-concepts.md` for the matching algorithm).

## Detail level and inlining

- `detail = "shape"` returns only the structural projection of each concept — `{qualifiedName, conceptReference, isAbstract, isRootable, properties: [{name, type, enumerationValues?, enumerationDefault?}], references: [{name, targetConcept, cardinality}], children: [{name, targetConcept, cardinality}]}` — with no docs, no `sampleNode` and no aspect details. This is everything needed to author a node of the concept; prefer it over reducing the full record yourself. `cardinality` carries the same value here as in the full record, so escalating to `"full"` to learn a role's cardinality gains nothing: for a `children` entry it is `0..1`/`1`/`0..n`/`1..n`, and for a `references` entry it is always `0..1` or `1`, because MPS reference links are single-valued (a `0..n` reference is modelled as a `0..n` child role of smart-reference wrapper concepts — see the `mps-aspect-structure-concepts` skill). `detail = "full"` (default) returns the schema below.
- **Do not refine concept by concept.** When a result reveals further concepts you need the shape of — typically the `targetConcept` of a child or reference role — do **not** issue one `conceptRefs` call per target. `languageRefs = "<language>"` returns *every* concept and interface concept of the language in a single call, which is strictly cheaper than any per-concept chain and needs no follow-up when the next target turns out to live in the same language. Pair it with `detail = "shape"` (and raise `maxInlineBytes`, or read the temp file) to keep the payload manageable. Only reach for `conceptRefs` per target when the targets are spread across several languages and you want just those few.
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
  source,                   // "declaration" — only present when the record was read from the concept declaration
  runtimeStatus,            // "no_runtime" | "concept_not_in_runtime" | "stale" — only present with descriptorStatus "hollow"
  languageModule,           // declaring language's module ref — only present with descriptorStatus "hollow"
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

- **`featureId`** is the encoded id an attribute stores — a `$PROPERTY$` macro's `propertyId`, a `$REF$` macro's `linkId` — taken from the concept of the node the macro is attached to. It is not a node ref: as a blueprint reference `target` it becomes a dynamic reference that never resolves, silently — the insert and its dry run succeed; only `fixReferences.stillBroken` and `mps_mcp_check_root_node_problems` show it.
- **`sourceNode`** is the feature declaration's persistent ref, `r:...(...structure)/<id>`. Paste it as the `target` of smodel feature access — `SPropertyAccess.property`, `SLinkAccess.link`, `SLinkListAccess.link`. An inherited feature's `sourceNode` is in the declaring concept's model (`name` → `jetbrains.mps.lang.core.structure`). It is not an `applicableConcept` target; that takes the concept's own `sourceNode`. It is omitted when the feature has no resolvable declaration (rare; e.g. a hollow descriptor).

## Stale runtime descriptors (`descriptorStatus: "hollow"`)

A record marked `descriptorStatus: "hollow"` was read from the concept declaration because the runtime has no descriptor for the concept; `references/language-readiness.md` explains the states and the recovery.
