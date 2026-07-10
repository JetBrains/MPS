# `mps_mcp_search_concepts` — Matching Algorithm & Tuning

Free-form discovery for concepts and interface concepts. Returns the same per-concept records as `mps_mcp_get_concept_details` (see `concept-details.md` for the schema).

## Haystack

Each concept is matched, case-insensitively, against a per-concept haystack composed of:

- name
- alias
- short description
- documentation
- the **last segment** of the owning language's qualified name (e.g. `collections` for `jetbrains.mps.baseLanguage.collections`, `smodel` for `jetbrains.mps.lang.smodel`).

Common namespace prefixes such as `jetbrains`, `mps`, or `lang` are **NOT** part of the haystack on purpose — they would otherwise act as near-universal wildcards and drown the result list.

## Query composition

`searchTexts` accepts **either a single search string or a JSON array of strings** — a lone value is wrapped automatically, so `"Foo"` and `["Foo"]` behave identically. Omitting it (or passing only blanks) returns an `INVALID_REQUEST` error rather than an empty result.

- **Multiple words in a single search string** are treated as required terms — the concept matches when EVERY word matches.
- **Multiple search strings** are OR-combined.

## Subtoken splitting

Each query word is split on camelCase, underscore, and digit/letter boundaries. Subtokens shorter than 2 characters are discarded. A word then matches a concept when **every** one of its remaining subtokens is a substring of the haystack.

Worked examples:

- `"PropertyAccess"` requires both `Property` and `Access` to appear (in any order, possibly across underscores).
- `"Node_GetPropertyOperation"` requires `Node`, `Get`, `Property`, and `Operation`.

Substring matching is **permissive**: `"Property"` will also be found inside unrelated words like `"PropertyDescriptor"`.

## Sub-2-char failure mode

If **any** query word has no subtokens of length >= 2 (e.g. the single-character word `"x"`), the tool fails the whole call with an explicit error that names the offending words:

```
Search words must have at least 2 characters; the following are too short and would never match: 'x'. Remove or extend them and retry.
```

This catches typos symmetrically across all search strings — the tool never silently drops part of the query.

## Result cap and fallback

- **Strict matches** (all query words matched) are returned in full and are **NOT capped**. A common single-word query like `"node"` or `"type"` can therefore return many concepts; rely on the temp-file fallback for large payloads.
- **Fallback ranking**: if no concept strictly matches all words of any search string, the tool ranks concepts by the number of matching words and returns up to `MAX_FALLBACK_RESULTS` (currently 20) best candidates instead of an empty result.
- Within the fallback, equal-score candidates are admitted in registry iteration order while the heap fills. That makes the tie-break **deterministic for a given MPS session and language load order**, but **not stable across sessions**. Treat the fallback result as a candidate set rather than a ranked list.

## `modelReference` scoping

If `modelReference` is provided, the search is restricted to languages used by that model — faster than searching all languages, and concepts in already-used languages are more likely to be suitable. Recommended workflow: try with a model first, then fall back to a global search if nothing turns up.

Accepts a persistent model reference (preferred) or a model's long/short name as a fallback; names matching more than one model resolve to the first match in repository iteration order.

Error strings:

- Model not found by reference or name → `"Model not found: ..."`.


## Result schema

Returns either `data:[{...}]` inline or a path to a temp file when the payload is large. Each record has:

```
name, qualifiedName, conceptAlias, shortDescription, doc, deprecated,
conceptReference, languageReference,
superConcept, superConceptContainingProject?, superConceptEditableFromCurrentProject?,
superInterfaces, superInterfaceDetails,
sourceNode, isAbstract, isInterfaceConcept, isRootable, virtualFolder,
containingProject?, editableFromCurrentProject?, present:true
```

Use the `qualifiedName` field (e.g. `"jetbrains.mps.baseLanguage.structure.ClassConcept"`) as the `concept` field in JSON node blueprints — it is unambiguous and does not require a `conceptReference`.
