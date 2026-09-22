# `mps_mcp_search_concepts` — Matching Algorithm & Tuning

Free-form discovery for concepts and interface concepts. Returns a compact per-concept record by default; `detail: "full"` returns the same records as `mps_mcp_get_concept_details` (see `concept-details.md` for that schema).

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

- **Strict matches** (all query words matched) are capped at **50** (`MAX_STRICT_RESULTS`). When more matched, the envelope carries `details.totalStrictMatches` (the real total), `details.truncated: true`, and a warning naming the two ways to narrow: more query words, or `modelReference`. `data` stays a plain array either way.
- **Fallback ranking**: if no concept strictly matches all words of any search string, the tool ranks concepts by the number of matching words and returns up to `MAX_FALLBACK_RESULTS` (currently 20) best candidates instead of an empty result.
- Within the fallback, equal-score candidates are admitted in registry iteration order while the heap fills. That makes the tie-break **deterministic for a given MPS session and language load order**, but **not stable across sessions**. Treat the fallback result as a candidate set rather than a ranked list.
- Concepts whose **name is exactly one of your query words** are returned first and are never the ones the cap drops, so searching for a name always finds it. Beyond that tier the order is registry iteration order, not relevance: a truncated result is a signal to narrow the query, not a top-50 ranking.

## Scoping

Three scopes, narrowest first. **Pick the narrowest one you can** — every widening costs payload, not just time.

| | what it searches | when |
|---|---|---|
| `modelReference` | the languages used by that one model | you already know which model the node will live in — the recommended first attempt |
| `scope: "project"` (**default**) | the languages this project's modules **define**, plus the ones they **use** (including everything their used devkits export) | ordinary discovery |
| `scope: "all"` | every language in the registry, minus those owned by another open MPS project | the concept is genuinely outside what this project touches |

`scope: "project"` is "owned **or** used" on purpose. Scoping to owned-only would drop `jetbrains.mps.baseLanguage` in any project that merely uses it, which would make `ClassConcept` unfindable; scoping to the whole registry is what made a four-term query return 183 KB dominated by languages the project never touches.

**Auto-widening.** A `scope: "project"` search with **no strict match** is retried over the whole registry automatically, and the envelope carries a warning saying so. You never have to retry a project-scoped miss by hand. The widened answer is kept only when it is better — a strict hit, or anything at all where the narrow pass found nothing; registry-wide *fallback* candidates never displace the project's own, which are more likely to be what you want. `scope: "all"` never widens; it is already the widest.

`scope` and `modelReference` **cannot be combined** — *any* explicit `scope`, including `"project"`. `modelReference` is already the narrowest scope, and honouring one key while silently dropping the other is the failure the rejection exists to prevent, so the call is refused with `INVALID_REQUEST` naming both. Omitting `scope` entirely alongside `modelReference` is the normal case and is fine.

`modelReference` accepts a persistent model reference (preferred) or a model's long/short name as a fallback; names matching more than one model resolve to the first match in repository iteration order.

Error strings:

- Model not found by reference or name → `"Model not found: ..."`.
- Unknown `detail` / `scope` value → `"Invalid detail '...'. Allowed values: summary, full"` / `"Invalid scope '...'. Allowed values: project, all"`.


## Result schema

Returns either `data:[{...}]` inline (up to `maxInlineBytes`, default 20000) or a path to a temp file above that.

`detail: "summary"` is the **default**, because search answers "which concept do I want" and the answer you carry forward is a name you then feed to `mps_mcp_get_concept_details`:

```
name, qualifiedName, conceptAlias, shortDescription, deprecated?,
conceptReference, languageReference,
isAbstract, isInterfaceConcept, isRootable,
descriptorStatus?, descriptorRecoveryAction?,
containingProject?, editableFromCurrentProject?
```

`deprecated` is present only when the concept actually is deprecated. `descriptorStatus: "hollow"` (with its `descriptorRecoveryAction`) appears at **both** detail levels, for the same reason: a concept served from a stale runtime descriptor gives wrong answers downstream, and a hit list must not hide that. Everything else a hit list cannot be acted on from — above all `doc` — is projected away; `doc` is what made a four-term query 183 KB.

`detail: "full"` returns the same record `mps_mcp_get_concept_details` produces:

```
name, qualifiedName, conceptAlias, shortDescription, doc, deprecated,
conceptReference, languageReference,
superConcept, superConceptContainingProject?, superConceptEditableFromCurrentProject?,
superInterfaces, superInterfaceDetails,
sourceNode, isAbstract, isInterfaceConcept, isRootable, virtualFolder,
containingProject?, editableFromCurrentProject?, present:true
```

Escalate to `"full"` only when you need the documentation or the super-concept chain for the hits themselves. To learn a concept's *shape* (properties, references, children), call `mps_mcp_get_concept_details` with `detail: "shape"` on the one name you picked — that is cheaper than `"full"` here and answers a different question.

Use the `qualifiedName` field (e.g. `"jetbrains.mps.baseLanguage.structure.ClassConcept"`) as the `concept` field in JSON node blueprints — it is unambiguous and does not require a `conceptReference`.
