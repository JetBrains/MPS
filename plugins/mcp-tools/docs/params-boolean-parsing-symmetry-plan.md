# Plan: one way to read a scalar out of a `parameters` JSON blob

Status: **Phases 1-2 implemented 2026-09-16** (option B chosen by the user). **Phase 3 items 1-3
implemented and validated 2026-09-17**, after one Sol implementation / parent-review cycle.
The **decisions** in this document are locked 2026-09-17
(do both halves of `buildSearchScope`; land the `newParentRef` null-reject first; groups 1-2
are option D or nothing — not a strict sweep). Follow-up: the user has now authorized the 45-site
groups 1-2 sweep, with a Sol implementer and parent review, capped at five iterations. Option D
changes only absent/JSON-null handling and preserves every other coercion and failure
(user decision, 2026-09-17). **Sweep implemented and validated 2026-09-17**; the initial cycle
and subsequent reviewer follow-ups are recorded below. **Three cycles completed; all review
findings addressed and 712 tests passed in the final run.**
Origin: round-2 skill study, defect D13 follow-up — the
`multiple` rejection added to `UPDATE_CONCEPT_REFERENCE`
type-checked its input, while every neighbouring parameter read in the same `when` still used
`params.get(...)?.asBoolean`. Review asked for the asymmetry to be named; the user asked for it to
be removed instead.

**Scope note.** That `multiple` rejection is itself uncommitted work from the same session (it does
not exist at HEAD), so against HEAD this change is *two* things: the D13 fix — rejecting
`multiple: true` on a reference, on both the `UPDATE_CONCEPT_REFERENCE` and the `CREATE_CONCEPTS`
blueprint path, where it was previously accepted and silently dropped — and the parsing symmetry
below. A commit message must cover both; "boolean parsing symmetry" alone would hide a
behaviour change to `CREATE_CONCEPTS`.

## Problem

Tools whose arguments arrive as a JSON *blob* (`mps_mcp_alter_structure`, `mps_mcp_query_structure`,
`mps_mcp_alter_nodes`, `mps_mcp_query_nodes`) parse that blob themselves. The MCP framework
validates a tool's *typed* `@McpTool` parameters, but nothing validates the inside of a blob, so
every scalar read there is a hand-written coercion.

Measured behaviour of the two idioms in use, against the project's own gson
(`lib/intellij.libraries.gson.jar`, JDK 25):

| `{"k": …}` | `params.get("k")?.asBoolean` | `params.get("k")?.asInt` |
|---|---|---|
| absent | `null` → default applies | `null` → default applies |
| `true` / `false` | `true` / `false` | throws `NumberFormatException` |
| `"true"` / `"false"` | `true` / `false` (parseBoolean) | throws `NumberFormatException` |
| `"1"` | **`false`** | `1` |
| `1` / `0` | **`false`** | `1` / `0` |
| `" true "` | **`false`** | throws `NumberFormatException` |
| `null` (explicit) | throws `UnsupportedOperationException` | throws `UnsupportedOperationException` |
| `{}` | throws `UnsupportedOperationException` | throws `UnsupportedOperationException` |
| `[true]` / `[3]` | **`true`** / — | — / **`3`** (a one-element array is read through to its element) |
| `[]`, `[a, b]` | throws `IllegalStateException` | throws `IllegalStateException` |
| `2147483648` | `false` | **`-2147483648`** (silent wraparound) |

Two defects follow, and they are the two the study ranked worst:

1. **Silent wrong value.** `{"multiple": 1}` reads as `false`. The caller gets `ok:true` and the
   opposite of what it asked for — the same failure mode as D13, which cost a worker ~40 tool calls.
2. **Unactionable error.** Kotlin's `?.` does **not** short-circuit an explicit JSON `null`: gson
   returns a `JsonNull` instance, so `{"dryRun": null}` throws. `withMpsProject`
   (`AbstractOps.kt:518-527`) routes the throw to `toolFailure`, whose `else` branch
   (`AbstractOps.kt:354-357`) logs `WARN Unexpected failure in MCP tool` and answers
   `{"ok":false,"code":"INTERNAL_ERROR","error":"Internal error while Performing MPS structure
   alteration: UPDATE_CONCEPT_CHILD"}`. The message names no parameter, the code says "server bug",
   and the log grows a spurious warning for what is a client typo.

`dryRun` (`JetBrainsMPSLanguageStructureMcpToolset.kt:247`) is read before the operation dispatch,
so item 2 applies to *every* `alter_structure` operation.

Meanwhile the blueprint parsers in the same plugin already do this correctly:
`McpToolInputSchemas.optionalBoolean` (HEAD `:332-338`) checks `isJsonPrimitive && isBoolean` and throws
`ToolInputSchemaException("'conceptsJson[0].abstract' must be a boolean")`. So the plugin has one
right answer and twelve hand-rolled wrong ones.

## Goal

For Phases 1-2, every boolean/integer read out of a `parameters` blob goes through the same typed reader that the blueprint
parsers use, and produces the same class of error. No silent coercion; no `INTERNAL_ERROR` for a
malformed argument; the offending key named in every message.

Non-goals: the typed `@McpTool` parameter surface (the framework owns it); the `?.asString` family
(see Phase 3 — listed, deliberately deferred); any change to which parameters exist or their
defaults.

## Sites

Complete inventory (`grep -rn "asBoolean\|asInt" src/`): 12 hand-rolled reads across 3 files,
plus the one bespoke typed block to retire — 13 rows.

| File | Line | Parameter | Owning tool |
|---|---|---|---|
| `JetBrainsMPSLanguageStructureMcpToolset.kt` | 198 | `includeInherited` | `query_structure LIST_CONCEPT_ASPECTS` |
| | 247 | `dryRun` | `alter_structure` (all operations) |
| | 252 | `make` | `alter_structure CREATE_CONCEPTS` |
| | 286 | `multiple` | `alter_structure UPDATE_CONCEPT_CHILD` |
| | 287 | `optional` | `alter_structure UPDATE_CONCEPT_CHILD` |
| | — | `multiple` | `alter_structure UPDATE_CONCEPT_REFERENCE` — the bespoke block to retire; uncommitted, absent at HEAD |
| | 295 | `optional` | `alter_structure UPDATE_CONCEPT_REFERENCE` |
| `JetBrainsMPSNodeMcpToolset.kt` | 290 | `position` (`?.asInt`) | `alter_nodes` |
| | 298 | `position` (`.asInt`, **no `?.`**) | `alter_nodes` |
| | 482 | `rebuild` | `alter_nodes MAKE` |
| | 483 | `wholeProject` | `alter_nodes MAKE` |
| `AbstractNodeOps.kt` | 1317 | `exact` | `query_nodes FIND_INSTANCES` |
| | 1318 | `sampleOnly` | `query_nodes FIND_INSTANCES` |

Out of scope, correctly so: `McpToolInputSchemas.kt` (HEAD `:337`) is the body of the good reader;
`AbstractNodeOps.kt:102` and `JetBrainsMPSProjectMcpToolset.kt:55` read the plugin's *own* response
envelopes, not client input.

## Decision (taken): option B, tolerant

`"true"` / `"false"` as **quoted strings** work today at all ten boolean sites (gson's
`parseBoolean`). LLM clients do stringify booleans. Three options:

| | `{"dryRun": "true"}` | `{"dryRun": 1}` | `{"dryRun": null}` | Breaks callers? |
|---|---|---|---|---|
| **A. Strict** — reuse `optionalBoolean` unchanged | rejected | rejected | treated as absent | yes, for anyone sending `"true"` today |
| **B. Tolerant** (recommended) | accepted, `true` | rejected | treated as absent | only `{"x": 0}` — see below |
| C. Status quo + null fix | accepted | **silently `false`** | treated as absent | no, but keeps defect 1 |

**B was chosen.** It is better than today on every row but one: the silent-wrong-value case becomes
an error, the `INTERNAL_ERROR` case becomes a no-op default, and the one shape agents actually send
by accident keeps working. The exception, measured and accepted: `{"x": 0}` read as `false` under
gson — the *intended* value — and is now rejected. That is unavoidable, because `0` cannot be
honoured without also honouring the same caller's `1`, which gson read as `false`, i.e. the
opposite of what it asked for. Rejecting the whole numeric form is the only coherent choice. C is rejected because leaving a silent wrong value in place is the exact
thing this study set out to remove. A is defensible and simpler, but it converts a currently-working
call into a failure for zero benefit — and the tolerance costs one `when` branch.

If B is chosen, `optionalBoolean` must be relaxed **too**, or the blueprint path and the blob path
diverge and we have traded one asymmetry for another. Relaxing it is safe: the five existing
`must be a boolean` assertions in `McpToolInputSchemasTest` (HEAD `:218`, `:225`, `:744`, `:753`, `:1048`)
all feed `"yes"`, a number, or a string that is neither boolean literal, so they keep passing —
verify, do not assume.

For `position`, tolerance means accepting `"3"` (gson already does) and rejecting `true`/`{}`/`[]`
with a named message. Note `:298` has no `?.`, so an explicit `null` there is an immediate throw.

## Approach

Three phases; 1 and 2 are the fix, 3 is a separate decision.

### Phase 1 — classify schema failures at the tool boundary (enables everything else)

Add to `toolFailure` (`AbstractOps.kt:351-358`), above the `else`:

```kotlin
is ToolInputSchemaException -> errJson(e.message, McpErrorCode.INVALID_REQUEST)
is ToolInputJsonException -> invalidJson(e.message)
```

Why this comes first: with it, a toolset can call a throwing typed reader anywhere inside
`withMpsProject` and get a correct envelope for free — no per-site `try`/`catch`, which is what
made the hand-rolled coercions attractive in the first place.

Two things to verify rather than assume:

- `ToolInputSchemaException` extends `IllegalArgumentException`, and
  `AbstractOpsPropertyProblemsTest.bareIllegalArgumentExceptionMapsToInternalError` (`:715-725`)
  asserts a **bare** `IllegalArgumentException` still maps to `INTERNAL_ERROR`. A Kotlin `when`
  picks the listed subclass branch, so that test should keep passing — it is in fact a deliberate
  guard that subclass mapping must be explicit. Confirm it stays green.
- No `WARN` should be logged for a client-side schema error. Drop it for these two branches only.

The four existing `catch (e: ToolInputSchemaException)` sites
(HEAD `JetBrainsMPSLanguageStructureMcpToolset.kt:338, 350, 987`, `JetBrainsMPSJavaMcpToolset.kt:631`)
become redundant but stay: they are inside `try` blocks that also catch `ToolInputJsonException` and
they keep the message free of an outer activity prefix. Removing them is a separate cleanup.

### Phase 2 — one reader per scalar kind, used at all 12 sites

Make the existing readers `internal` in `McpToolInputSchemas.kt` (`src` and `test` are source roots
of one module, so `internal` is already visible to tests — the new
`REFERENCES_ARE_SINGLE_VALUED` constant proves it), and add a blob-friendly overload that takes the
`JsonObject` plus a path label:

```kotlin
internal fun JsonObject.paramBoolean(field: String, default: Boolean): Boolean
internal fun JsonObject.paramInt(field: String): Int?      // null = absent
```

Both treat absent and `JsonNull` alike: default, or null for the int. A primitive of the right
type yields its value; under option B a string holding the right literal does too (`"true"`/`"false"`
ignoring case; `"3"` for the int). Anything else throws
`ToolInputSchemaException("'parameters.<field>' must be a boolean" | "… must be an integer")`,
reusing the wording the blueprint parsers already emit so the two paths read alike — only the path
label differs (`parameters.dryRun` vs `conceptsJson[0].multiple`).

Then replace all 12 reads. The `UPDATE_CONCEPT_REFERENCE` branch collapses to the shared reader plus
the domain rule that is genuinely specific to it:

```kotlin
if (params.paramBoolean("multiple", default = false)) {
    return@withMpsProject errJson(REFERENCES_ARE_SINGLE_VALUED, McpErrorCode.INVALID_REQUEST)
}
```

— i.e. the bespoke type-checking block disappears and only the single-valued rule remains, which is
the asymmetry gone at the source rather than papered over.

### Phase 3 — the string family (narrowed twice; decisions locked — see "Recommended order")

`grep -rn "?\.asString" src/` returns 65 reads across 5 files. An earlier draft called them one
class and the fix "mechanical"; two reviews refuted that and corrected each other. Current state:

| Group | n | What it is | Verdict |
|---|---|---|---|
| 1. Blob, required (`?: return errJson("… is missing")`) | 33 | The nominal target class | see below |
| 2. Blob, optional | 12 | Same, plus the explicit-`null` → `INTERNAL_ERROR` defect | see below |
| 3. Node *blueprint* reads | 15 | A different input surface (`insert_root_node_from_json`, `update_root_node_from_json`, `update_node`, `insert_console_command_from_json`) — **and six of them silently skip**, see below | defer, **not** benign |
| 4a. Presence-guarded, named error (`AbstractNodeOps.kt:1326-1327`) | 2 | Cannot throw; yields a named `INVALID_REQUEST` at `:1329-1334` | leave |
| 4b. Presence-guarded, **silent drop** (`AbstractNodeOps.kt:1207`) | 1 | Throws nothing *and* reports nothing — `mapNotNull` drops the element | **this is the `buildSearchScope` defect below** |
| 4c. Reads the plugin's own envelope (`AbstractNodeOps.kt:109`) | 1 | Not client input; the `asString` twin of the already-excluded `:102` | out of scope |
| 5. `getAsJsonPrimitive(…)?.asString` → `ClassCastException` | 1 | `JetBrainsMPSModuleMcpToolset.kt:1249`, in a raw `executeCommand` frame | memento contract below |

Both reviews independently derived 33 / 12 / 15 and the membership lists, so those are solid; 33 + 12 + 15 + 2 + 1 + 1 + 1 = 65. The
group-4 row of the earlier draft was not: it read "cannot throw; already yields a named
`INVALID_REQUEST`", which is true of `:1326-1327` and false of `:1207` — i.e. it filed this
document's own highest-priority defect as "already correct". Group 4 was a grep artifact
(`takeIf` + `?.`), not a semantic class.

**Two corrections to earlier drafts of this section, recorded so they are not reintroduced:**

- The "these five sites have the same defect outside the grep" paragraph was **wrong on all five**.
  `AbstractNodeOps.kt:1208` is `isJsonNull`-handled one line up and primitive-guarded;
  `AbstractOps.kt:393` and `JetBrainsMPSModelMcpToolset.kt:57` are explicitly type-guarded;
  `AbstractOps.kt:392` and `JetBrainsMPSModelMcpToolset.kt:56` are unguarded per element but sit
  inside a local `catch` that degrades to `listOf(raw)` (`AbstractOps.kt:396-399`,
  `ModelMcpToolset.kt:58-61`). And `JetBrainsMPSModuleMcpToolset.kt:1236` was listed both as a site
  to fix *and* as one that must keep coercing. There is one genuine omission —
  `Module:1241` (`getAsJsonPrimitive("text")?.let { m.text = it.asString }`), the
  `ClassCastException` twin of group 5's `:1249`. It does **not** appear in the 65 because its
  `.asString` sits on the following line, so treat it as group 5's second member for the fix
  while leaving the table's arithmetic on the grep result.
- Group 3 is not uniform. Four of its five call frames are plain commands, but
  `AbstractNodeOps.kt:713` wraps `instantiateNode` in its own `catch (e: Exception)` →
  `INVALID_REQUEST` (`:712-718`), so that caller already converts any throw cleanly.

**The sixth kind, and the strongest follow-up candidate.** Six group-3 sites —
`AbstractNodeOps.kt:186, 202, 233, 419, 438, 470` — use `?: return@forEachIndexed`: a missing or
malformed key **silently skips the property, child or reference**. `{"properties":[{"value":"x"}]}`
drops the property and returns `ok:true`. That is defect class 1 (the D13 shape) inside
`insert_root_node_from_json`, not a bad error code. Deferring group 3 is a scope decision, not a
judgement that it is harmless.

`asString` facts that differ from the numeric accessors: **no** silent wraparound
(`2147483648` → `"2147483648"`), a one-element array is read through (`["a"]` → `"a"`), and an
explicit `null` throws — which matters most for the 12 optional parameters, since
`AbstractNodeOps.kt:1319-1321` records that "agents commonly pass explicit nulls for optional
params".

**Strictness — Decision (taken): option D, or skip groups 1-2 entirely. Do not do strict.**

| | `{"conceptRef": 42}` | `{"x": null}` on an optional param | Diff |
|---|---|---|---|
| Status quo | `"42"` → `NOT_FOUND "42"` | `INTERNAL_ERROR` | — |
| Strict on type (**rejected**) | `INVALID_REQUEST`, names the key | absent → default | 45 call sites + a per-frame exception discipline |
| **D. Null-fix only** (the only groups 1-2 option that may ship) | `"42"` → `NOT_FOUND "42"` | absent → default | 45 call sites; non-null coercions and failures unchanged |
| Accept-with-warning | `"42"` + `warnings` | — | leaves `ok:true` on an untrustworthy result |

For primitive inputs such as `{"conceptRef": 42}`, strictness upgrades `NOT_FOUND "42"` /
`Unsupported scope: true` to `INVALID_REQUEST`. It would also change existing object/array failures.
That broader change is outside the chosen null-only contract. Do not "do a bit of strictness".

**Option D — precise contract (implemented and validated):** return Kotlin `null` for an
absent field or a field whose value is JSON null; otherwise call `asString` unchanged. Required
fields retain their existing missing-parameter error, and optional fields retain their existing
default or alternate-form selection. Preserve empty/blank strings, primitive stringification,
singleton-array unwrapping (including nested singleton arrays), and all failures for other inputs.
In particular, objects, empty/multiple-element arrays, and singleton arrays containing null or an
object may still throw and produce the existing `INTERNAL_ERROR`. D does not promise to repair
those failures. Do not catch them and return absent, trim strings, or replace coercion with a
primitive-only guard. Only a field-level JSON null is normalized; `[null]` is not absent.

Prerequisite: **`newParentRef` first** (next paragraph). Its explicit-null rejection is the intentional
exception to the generic null-as-absent rule. That guard is implemented and tested; the 45-site
sweep is now implemented and validated.

Do **not** implement D by calling `optionalElement` at the `newParentRef` site: that helper
collapses absent and `JsonNull`, which is exactly the destructive promotion. After the explicit-null
guard, D can use an internal `paramString` helper in `McpToolInputSchemas.kt` with this exact body:

```kotlin
internal fun JsonObject.paramString(field: String): String? =
    get(field)?.takeUnless { it.isJsonNull }?.asString
```

This helper can throw for the unchanged non-null failure cases; it is not a typed validator.
`optionalString` is **strict and throws**; `requiredString` treats blank as missing and would flip
`{"conceptRef":"  "}` from `NOT_FOUND` to `INVALID_REQUEST`. Never throw inside a model-access frame
unless the frame is `executeShortCommandOnEdt`.

**Null-as-absent can promote a node to a root — Decision (taken): land the guard on its own.**
`opMoveNodeToParent` / `moveNodeToParent` in `JetBrainsMPSNodeMcpToolset.kt` (`newParentRef`):
`if (newParentRef != null)` reparents, `else if (modelReference != null)` calls `detachNode` then
`addRootNode`, and only with both absent does it error. Today `{"newParentRef": null}` throws
(`JsonNull.asString`) and comes back `INTERNAL_ERROR`. Under null-as-absent — including option D —
`{"nodeReference": X, "newParentRef": null, "modelReference": "m"}` would **silently detach the node
and make it a root**: `ok:true`, a destructive structural change. This promotion is deliberately
excluded from D by the explicit-null guard. The other group-2 sites with no `?:` include `role` /
`modelReference` on the same op become "role is missing" or the existing "provide one of" error;
`GET_ENUMERATION_LITERALS` (`enumerationRef` vs `nodeReference`+`propertyName`) just selects the
other form.

**Structure deletion is an intentional consequence of D.** On UPDATE_CONCEPT_PROPERTY, missing
or empty `dataType` already deletes the property. On UPDATE_CONCEPT_CHILD / UPDATE_CONCEPT_REFERENCE,
missing or empty `targetConcept` already deletes the link. Field-level JSON null will now select
those same deletion branches. The earlier claim that `newParentRef` was the only destructive
consequence was too broad: its special rejection protects root promotion, while these documented
delete forms follow the chosen null-as-absent contract. State null explicitly in each operation's
docs and test omitted, null and empty-string deletion with independent fixtures.

Guard **explicit JSON null** (`has("newParentRef") && isJsonNull`) → `INVALID_REQUEST`, not
"null-or-absent". ~3 lines, worth doing even if groups 1-2 are skipped, and a prerequisite for any
null-as-absent work. Cite the symbol, not a frozen line number — Phases 1-2 already moved the
`asInt` sites to `paramInt`; `newParentRef` is still the string read.

**Three sites depend on the coercion** and must not be made strict — all outside groups 1-2:
`AbstractNodeOps.kt:1327` (`propertyFilter.value` is compared against MPS's stored string, so
`value: true` correctly matches `"true"`), `JetBrainsMPSModuleMcpToolset.kt:1236` (a `Memento` is a
string→string store, so `{"port": 8080}` → `"8080"` is intended), and `AbstractNodeOps.kt:187` /
`:420` (blueprint `properties[].value`, written verbatim).

**Frame rule — applies to the scope and memento fixes as well.** The earlier rule ("inside a
command or write action throw `McpInvalidRequestException`, never `ToolInputSchemaException`") is
true but insufficient: it works only because `executeShortCommandOnEdt` captures `McpUserException`
(`AbstractOps.kt:2469-2475`). The plugin also has **raw** `modelAccess.executeCommand` frames with
no such capture — `JetBrainsMPSModuleMcpToolset.kt:330, 833, 1020`, `JetBrainsMPSConsoleMcpToolset.kt:342`,
`JetBrainsMPSRootNodeMcpToolset.kt:105, 162, 211`, and others — inside which even
`McpInvalidRequestException` is logged as "Action dispatch failed". (`jsonToMemento`, reached from
the raw frame at `Module:1043`, already has that regression today.) The correct rule: **inside any
model-access frame, do not throw unless the frame is `executeShortCommandOnEdt`; otherwise return an
error value.** Only `McpUserException` subclasses get that short-command capture; it is not
permission to throw an arbitrary schema/accessor exception there.

**Slice 1 (groups 1-2) is safe on the frame axis**, derived structurally rather than by eye: the
three frames all take a *non-suspend* `action: () -> T` (`AbstractOps.kt:2438, 2446, 2456`) while
`withMpsProject` is `inline` (`:529`), so a read in a `suspend fun` body cannot be lexically inside
a frame, and any read whose error path compiles as `return@withMpsProject` is in the inline lambda.
All 45 qualify.

**Option D implementation constraints.** (1) Preserve existing missing-parameter
messages and non-null failure classification; do not introduce typed-string error messages.
(2) A third of group 2
(`newParentRef`, `modelReference`, `role` on MOVE; GET_ENUMERATION_LITERALS) has **no** `?:` at all;
`newParentRef` retains its explicit-null rejection. (3) Update the affected bundled API references
and re-propagate them (runbook step 7.9). `.agents/conventions.md` supplies policy, not string-parsing
documentation to edit. Document
field-level null-as-absent, the `newParentRef` exception, and the retained coercions/failures.
(4) Group-1/2 behaviour is only
observable through a toolset, so budget a full `McpToolsIntegrationTestSuite` run; reader-level
table tests in `McpToolInputSchemasTest` are not enough. Do **not** reuse the Phase 1-2 suite
counts in this document (669 / 674 / 687) — they are already stale. New test classes **must** be
registered in `McpToolsIntegrationTestSuite` (no pattern discovery).

**Cost.** Verified by both reviews: no existing test passes a non-string to any of these parameters
(the only two non-string payloads in the test sources already assert rejection,
`McpToolInputSchemasTest.kt:215`, `:647`), and no shipped asset depends on the coercion — all 281
bundled `.md` and all three Python helpers stringify before emitting
(`table_to_bulk_insert.py:120, 127, 138`).

## Ahead of Phase 3 — a silent wrong answer in `buildSearchScope`

`AbstractNodeOps.kt:1143-1213` resolves the `models` / `modules` / `roots` scope. Two ways it
answers `ok:true` with a wrong result:

- **Partial resolution narrows silently — the everyday case.** The guard is
  `if (refStrings.isNotEmpty() && refs.isEmpty())`, so it fires only when *every* reference fails.
  `{"scope":"models","models":["real.model","typo.model"]}` — one typo among several — searches a
  subset and reports `ok:true` with no warning. Affects `models` and `modules` only: the `roots`
  branch already hard-fails per element (`:1178-1180`).
- **A malformed scope is indistinguishable from "found nothing".** `scopeRefStrings` (`:1205-1213`)
  returns `null` only for absent/`JsonNull`; a JSON object falls to `else -> emptyList()` and
  non-primitive array elements are dropped by `mapNotNull` (the group-4b site, `:1207`). So
  `{"models":{"ref":"x"}}` or `{"models":[{}]}` searches with an empty allow-set: `ok:true,
  data:[]`. Confirmed benign-but-wrong rather than catastrophic — an empty set yields no models and
  no modules, not a repository-wide search.

**Reach: four tools, not two.** `opFindInstances` (`:1339`) serves `query_nodes FIND_INSTANCES` and
the legacy `query_structure FIND_INSTANCES` alias (`JetBrainsMPSLanguageStructureMcpToolset.kt:110`);
`JetBrainsMPSNodeMcpToolset.kt:262` serves `FIND_USAGES`; and `JetBrainsMPSRootNodeMcpToolset.kt:259`
serves **`mps_mcp_search_root_node_by_name`**, which feeds the scope through `parseStringOrJsonArray`
and so is immune to the element-drop but still exposed to partial resolution.

**No longer gated — the read frames log exactly like the command frame.** `executeShortReadOnEdt` /
`executeBackgroundRead` (`AbstractOps.kt:2438-2454`) call `computeReadAction`, which reaches
`ActionDispatcher.dispatch` via `WorkbenchModelAccess.runReadAction` → `LockRunnable.java:63-64`,
and `ActionDispatcher.java:82-96` catches `RuntimeException` → `LOG.error("Action dispatch failed")`
at `:172` — the same line as the command path. `computeReadAction`'s `Supplier` overload does not
swallow the exception (`RunWithOutcome.java:63-76`), so the envelope stays correct and the cost is
purely the spurious `LOG.error`. The answer was also already in the repo, in the KDoc of the very
function at issue: `AbstractNodeOps.kt:1198-1201` records that a non-array value "threw
`ClassCastException` from inside the read action, escaping as a spurious 'Action dispatch failed'
log rather than a clean validation result (MPS-39835)". That fixed bug is this exact shape, which
makes "do not throw inside `buildSearchScope`" a regression-avoidance constraint, not a hypothesis.

**So the fix must not throw.** All three callers sit in `executeBackgroundRead`. Keep returning
`SearchScopeResolution.Err`. Do not introduce a typed reader here. MPS-39835 is this exact shape; a
typed reader that throws is a regression.

**Decision (taken): do both halves, never throw, never warn.** Partial resolution is the everyday
half (one typo among several refs silently searches a subset with `ok:true`); the type half is the
same function, not a second project. Rank partial resolution first in the patch, but ship both.

**Correct the precedent mapping before it is copied.** An earlier draft of this section swapped the
two halves and overclaimed "strictness twice":

- Roots per-element fail (`buildSearchScope` `"roots"` branch) is the **partial-resolution**
  copy-paste, **in the same function**. Copy that, not MAKE.
- MAKE's `All 'models' entries must be strings` in `JetBrainsMPSNodeMcpToolset.kt` is the
  **non-string-element** copy-paste, and it is **not** in the same file.
- MAKE does **not** fail on partial resolution. `resolveMakeTargets` keeps the resolved subset and
  puts the rest in `warnings` with `ok:true`. `get_concept_details` is the same "partial success +
  warnings" family. That is a reasonable policy for a **write that still did work**. It is the wrong
  policy for a **search whose payload is the answer**. Do not offer warnings as a third option.

**Non-string elements, same change.** `scopeRefStrings` drops non-primitives via `mapNotNull`; a
JSON object becomes `emptyList()`. Result is `ok:true, data:[]` (empty allow-set, **not** a
repo-wide search). Primitive non-strings (`42`, `true`) go through `asString` and then become the
partial-resolution case if mixed with a real ref.

**Keep the bare-string form.** A single `"models": "ref"` (not an array) is intentional after
MPS-39835. Tightening element types must not undo that. `parseScopeRefArray` in
`JetBrainsMPSRootNodeMcpToolset.kt` already stringifies, so `mps_mcp_search_root_node_by_name` is
immune to element-drop but **not** to partial resolution.

**Empty `[]` is invalid, same patch.** `[]` is not "missing", skips the "none resolved" guard, and
searches an empty allow-set. Treat it as `Err` (the caller asked for a models/modules/roots scope
with no refs). Leaving it would be another `ok:true, data:[]`.

**Tests already have a hook:** `ScopeProbe` in `JetBrainsMPSRootNodeMcpToolsetIntegrationTest`.
Add mixed good+typo and non-string-element cases; current tests only cover bare string vs array and
the ClassCast crash. The complete acceptance matrix is in "Validation" below.

**Scope input contract:** for the selected models/modules/roots scope, accept a nonblank string
or a nonempty array of nonblank strings. Reject absent/null, objects, primitive non-strings, empty
arrays, and any malformed element with `INVALID_REQUEST` naming the parameter and, for array
elements, its index. Do not trim or rewrite usable reference strings before resolution. Fail on
each unresolved reference with a message naming the parameter and the failing reference; keep the
existing roots branch's `INVALID_REQUEST` classification. Duplicate references and different names
resolving to the same target are valid: check each resolution, not input count versus set size.
Preserve the existing default/all scopes and child-reference-to-containing-root behavior.
The root-name tool retains its `parseStringOrJsonArray` adapter; its pre-stringified inputs are
not subject to raw JSON type validation, but must satisfy nonempty/usable/full-resolution checks.

## Phase 3 memento contract

The `jsonToMemento` change must cover format selection and recursive error propagation, not just
replace two `getAsJsonPrimitive` calls. Today `{"text":{}}` fails the `hasText` discriminator,
takes the flat branch, and silently produces an empty memento that can replace existing settings.

- Validate a present `text` before format selection, at every recursion depth: any JSON primitive
  is accepted and stringified as today; null, an object, or an array is `INVALID_REQUEST`. An
  absent `text` remains valid. A valid `text` still selects structured format as today.
- Preserve the existing valid flat format and primitive property coercion, including
  `{"port":8080}`. Otherwise retain the existing structured-format discriminator (`properties`
  object or `children` array). In structured format, present `properties` must be an object and
  present `children` must be an array; explicit null or another shape yields a named error instead
  of an unchecked cast. Preserve existing treatment of entries inside `properties`; broad property
  validation and unrelated flat-field leniency are outside this patch.
- Every `children` element must be an object with a present, non-null primitive `type`. Preserve
  primitive stringification and existing empty-string behavior; do not add a string-only or
  nonblank constraint. Reject missing/null/object/array `type` with its full indexed path, e.g.
  `settingsJson.children[1].children[0].type`. Apply the same text/shape rules recursively.
- Return an explicit success/error result from parsing and propagate each child error immediately.
  Build only a temporary memento until the entire input succeeds. Propagate failure through
  `mps_mcp_update_module_facet` to its final envelope; a `return@executeCommand` alone would still
  fall through to the tool's unconditional success result. No descriptor replacement,
  `setModuleDescriptor`, module save, or project save may follow a parsing failure.
- Route settings JSON syntax and top-level-object failures through the same error-result path
  (`INVALID_REQUEST`, preserving the current classification). Do not throw client-input failures
  through the raw command frame. An error result must name the offending settings path, leave
  existing facet configuration unchanged, and produce no `Action dispatch failed` log. Existing
  unrelated module-resolution/facet-factory error handling is outside this patch. Preserve the
  `enabled=false` branch, which ignores settings and disables the facet.

## Recommended order

1. **`buildSearchScope`** — both halves: fail on partial resolution (copy the `roots` branch, not
   MAKE), and reject non-string / non-usable elements. Return `Err`, never throw, never warn. Treat
   empty `[]` as invalid in the same patch. Keep the bare-string form. Reach is four tools:
   `query_nodes` FIND_INSTANCES, the
   unadvertised `query_structure` FIND_INSTANCES alias, FIND_USAGES, and
   `mps_mcp_search_root_node_by_name`.
2. **`newParentRef` on `MOVE_NODE_TO_PARENT`** — reject explicit JSON null (`has` + `isJsonNull`),
   because presence selects a destructive form. ~3 lines, worth doing on its own merits, and a
   prerequisite for any null-as-absent work.
3. **`jsonToMemento` and its caller** in `JetBrainsMPSModuleMcpToolset.kt` — implement the memento
   contract above, including validation before format selection, recursive errors, and propagation
   to the final envelope before any persisted changes. Return error values through the raw command
   frame; throwing `McpInvalidRequestException` there still logs a dispatch failure.
4. **Groups 1-2 — completed follow-up.** Implemented the precise D contract above after the
   completed `newParentRef` guard, separately from items 1-3, without adding strict validation.
5. **Document items 1-3 in their owning API references**, as listed below. Keep current general
   string behavior documented accurately: the new explicit-null rejection is specific to
   `newParentRef`. With D implemented, document field-level null-as-absent, its `newParentRef`
   exception, and unchanged non-null coercions and failures, including singleton-array unwrapping.

Group 3's six `?: return@forEachIndexed` skips (`properties[].name`, `children[].role`,
`references[].role` in instantiate) remain a follow-up candidate after the completed sweep.
Deferring them is a scope decision, not "benign".

**Out of the `?.asString` grep, do not file as already-correct:** GET_SUB_CONCEPTS `languageRefs` —
non-array or empty array falls through to **all languages**; unresolved refs are `mapNotNull`-dropped.
That *widens* the search, which is worse than `buildSearchScope`'s empty allow-set. Out of Phase 3
unless a fourth small fix is wanted; mention it so it is not rediscovered as "group 4 already
correct".

**Coercion-dependent sites to leave alone:** `propertyFilter.value` (compared to MPS's stored
string), memento `properties` (string→string store), blueprint `properties[].value`.

## Validation

The following are implementation gates. Editing this plan alone needs no build or test run.
Per `.agents/quality-gates.md`:

- `get_file_problems` on each edited file, then `build_project`.
- One `McpToolsIntegrationTestSuite` run at the end (JDK 25). Do **not** treat the historical
  669 / 674 / 687 counts in earlier drafts of this plan as current — they are already stale; read
  the suite size from the class list / run output. Check no other JVM is running first
  (`ps aux | grep JUnitStarter`), use `waitForExit=false`, and read `fullOutputPath` for `testFailed`.
- Retain Phase 1-2 regression coverage in `McpToolInputSchemasTest` (fast, no MPS env): one case per row of the
  table above, per kind. Plus one integration test per *client-observable* behaviour change —
  `{"dryRun": null}` no longer `INTERNAL_ERROR`, `{"multiple": 1}` on a child now rejected instead
  of silently `false`. Both target files are already registered in
  `McpToolsIntegrationTestSuite.java`; a *new* class **must** be added there, since this project has
  no pattern-based discovery (an unregistered test passes in the IDE and never runs in CI).
- Regression-proof the two existing behaviours worth keeping: `"true"` still accepted (option B),
  absent still takes the default.

Phase 3 acceptance tests (reuse existing registered integration-test classes):

| Area | Required coverage | Assertions |
|---|---|---|
| Scope resolution (`ScopeProbe`) | For models, modules and roots: valid+unresolved refs in both orders; all-unresolved; bare string; valid array; duplicates and aliases of the same target | Each failed resolution returns `INVALID_REQUEST` naming the parameter and reference; valid inputs preserve the complete target set |
| Scope shape (`ScopeProbe`) | For each selected scope: missing, null, object, numeric/boolean scalar, `[]`, blank string, and a valid ref mixed with null/object/array/number/boolean/blank elements | Named/indexed errors as applicable; no partial/empty success and no exception escapes the read action |
| Scope compatibility and tool boundary | Preserve all/editable confinement and child-ref-to-containing-root behavior; one partial-resolution failure through each of query_nodes FIND_INSTANCES, query_structure FIND_INSTANCES, FIND_USAGES, and root-name search; root-name search with encoded `[]` | Final envelope is an error for bad input, without success data or warnings; valid defaults/bare references remain usable |
| MOVE_NODE_TO_PARENT | Explicit `newParentRef:null` with and without a valid destination model; omitted `newParentRef` with a valid destination; valid reparent | Null yields `INVALID_REQUEST` naming `newParentRef`, with original parent, containment position and model unchanged; omission still permits intentional promotion; valid reparent still works |
| Memento rejection | Invalid `text` alone and alongside structured fields; missing/null/object/array child `type`; non-object child; malformed structured `properties`/`children`; nested errors after a valid sibling; invalid JSON and non-object top level | `INVALID_REQUEST` with the failing path; original facet descriptor/settings unchanged; no partial replacement or save on failure |
| Memento compatibility | Flat primitive properties; structured properties/text/children; numeric/boolean text and type; absent text, empty text/type; nested valid children; `enabled=false` with malformed settings | Existing accepted coercions and round-trip behavior remain; disabling still ignores settings |
| Logging | Exercise scope failures under the real read frame and settings failures through the real tool command path | Capture the relevant logger output and assert no `Action dispatch failed` and no unexpected-failure warning for these newly handled client errors; an error envelope alone is insufficient |

Option D acceptance coverage: a reader table comparing every non-null input against the existing
`asString` behavior (value or exception class): strings including empty/blank, numbers, booleans,
objects, empty/multiple-element arrays, singleton/nested-singleton arrays, `[null]`, and `[{}]`.
Assert absent and field-level null both return Kotlin null. Add tool-level tests for required-null
missing errors, optional-null defaults/alternate forms, unchanged primitive/singleton coercion and
non-null `INTERNAL_ERROR` classification, plus the MOVE safety/omission tests above. Do not require
absence of the pre-existing failure warning for D's deliberately unchanged malformed non-null inputs.

## Docs to update in the same commit

Update the affected API references listed below and their propagated copies. `.agents/conventions.md`
is a policy reference, not an edit target: it contains no string-parsing contract. Verify reference
copy parity directly; `SkillScriptsDriftTest` checks bundled scripts, not this prose.

For Phase 3 items 1-3, update the bundled source references under
`plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/` and the affected tool descriptions:

- `mps-mcp-workflow/references/analysis-tools.md`, `references/finding-things.md`, and
  `references/mcp-tools-index.md` (the latter two also under `mps-mcp-workflow`): nonempty usable references,
  all-or-error resolution, raw blob string/array types, and the root-name tool's existing string
  adapter for FIND_INSTANCES, FIND_USAGES and root-name search.
- `mps-mcp-workflow/references/node-editing-rules.md`, plus the MOVE description in
  `mps-node-editing/SKILL.md`: explicit `newParentRef:null` is rejected; omission still
  selects intentional promotion when `modelReference` is supplied. Document that distinction even
  independently of D's general null-as-absent policy.
- The facet entry in `mps-mcp-workflow/references/mcp-tools-index.md` and the settings description
  on `mps_mcp_update_module_facet`: accepted flat/structured forms, primitive text/type coercion,
  malformed/null field handling, and unchanged configuration on validation failure. Link to a
  dedicated settings reference if needed for the full contract, instead of burying it in the index.
- For D, update the general string policy in both `structure-operation-api.md` and
  `analysis-tools.md` to match its precise contract and the MOVE exception.

The following Phase 1-2 documentation work is already implemented; retain it:

- `mps-aspect-structure-concepts/references/structure-operation-api.md` — the parameter blocks at
  `:33-34`, `:115`, `:204-205`, `:218`, `:306` say only *"Optional: boolean"*. State once, near the
  top of the file, what a boolean parameter accepts and that a malformed one is rejected rather than
  coerced. Do not repeat it per parameter.
- `mps-mcp-workflow/references/analysis-tools.md:31-32` — same for `exact` / `sampleOnly`.
- After editing `resources/**`, re-propagate to `./.agents/skills/` and `./.claude/skills/`
  (runbook step 7.9) and rebuild so `classes/` matches.

## Risks

| Risk | Mitigation |
|---|---|
| Phase 1 changes error classification for *every* tool, not just these | Overstated: verified that every pre-existing raise site of both types is already caught locally and already produced the identical envelope, so the only paths that reach the new branches are the 13 new reads. The branches are also subclass-specific, and both types are raised only by this plugin's own parsers (33 raise sites, all in `McpToolInputSchemas.kt`) |
| A caller today relies on `{"multiple": 1}` meaning false | Only reachable by accident; the study's own evidence is that such callers believe the opposite. Option B rejects it loudly |
| Scope creep into Phase 3 mid-change | Phases 1-2 touch 12 reads in 3 files; if a `?.asString` site tempts you, leave it and note it |
| Another silent-coercion site added later | The readers are the only sanctioned way in; consider a follow-up `validate_skill_catalog.py`-style grep gate. A gate on `params.get(...)?.as` would pass while `entry.value.asString` and `getAsJsonPrimitive(...)?.asString` reintroduce the defect; a gate on `\.as(String\|Boolean\|Int\|JsonPrimitive)\b` matches ~100 unrelated `PersistenceFacade.asString(ref)` calls. Any gate must exclude `PersistenceFacade`/`facade.asString` and is worth writing only alongside the work above |

## Estimate

Phase 1: ~10 lines + 1 test. Phase 2: 12 call sites, 2 readers, ~6 table tests + 2 integration
tests. One suite run. Phase 3: decisions locked above; items 1-3 implemented and validated. Items 1-3 of
Recommended order are the implementation scope, including the memento parser's caller/result flow
and the acceptance tests above. Item 4 is now also implemented and validated. Do not size
items 1-3 from accessor replacements alone: scope errors and memento validation require propagation
and tool-level regression coverage.

## Phase 3 items 1-3 implementation and review result — 2026-09-17

Completed in **one implementation / review cycle** with a Sol subagent and parent guidance/review:

- Implemented scope shape validation and all-or-error resolution, the explicit-null MOVE guard,
  and recursive memento validation with error propagation before descriptor replacement/saves.
- Review corrected premature validation of flat `properties`/`children`, covered the roots resolver's
  concept-reference exception without dispatch logging, and strengthened successful-scope assertions
  to check exact targets, including aliases, duplicates, distinct targets and containing roots.
- Updated tool descriptions and bundled references; changed docs match the installed `.agents`
  and `.claude` copies. No option D reader sweep was performed.
- IDEA diagnostics: zero errors in the 10 edited Kotlin files. JDK 25 build passed; only two
  unrelated existing deprecation warnings remained. `git diff --check` passed.
- `McpToolsIntegrationTestSuite`: **701 tests finished, 0 failures, 0 ignored**; test JVM exited.
  Run output: `/Users/vaclav/Library/Caches/JetBrains/IntelliJIdea2026.2/tmp/ij_run__McpToolsIntegrationTestSuite_11212182518984538504.log`.

At completion of that cycle, no unresolved review findings or implementation items remained for
Phase 3 items 1-3. Then deferred:
groups 1-2's 45-site option D sweep, the blueprint silent skips, and GET_SUB_CONCEPTS scope widening.
The user subsequently committed items 1-3 as `840fcbfc6748`.

## Option D sweep implementation and review result — 2026-09-17

The initial sweep completed in **one implementation / review cycle** with a Sol subagent and parent guidance/review:

- Added `paramString` and replaced all 45 dispatcher reads: 2 in `AbstractNodeOps`, 12 in
  `JetBrainsMPSNodeMcpToolset`, and 31 in `JetBrainsMPSLanguageStructureMcpToolset`
  (33 required and 12 optional). Parent comparison against the committed files verified that
  the caller changes are exactly the accessor substitutions, with surrounding logic unchanged.
- Preserved the explicit-null `newParentRef` guard and all non-null coercions/failures. Added
  reader compatibility coverage and tool-level required-null, default/alternate-form, MOVE,
  coercion and error-envelope regressions. Review strengthened the reader comparison to keep
  literal `"null"` distinct from Kotlin null.
- Review identified and documented the existing structure-deletion forms: omitted, empty and
  now null `dataType`/`targetConcept` select deletion. Tests cover each form independently.
- Updated the bundled string-policy and operation references and their identical `.agents`
  and `.claude` copies.
- IDEA diagnostics: zero errors in all 8 edited Kotlin files. JDK 25 incremental build passed.
  `git diff --check` passed.
- `McpToolsIntegrationTestSuite`: **709 tests finished, 0 failures, 0 ignored**; test JVM exited.
  Run output: `/Users/vaclav/Library/Caches/JetBrains/IntelliJIdea2026.2/tmp/ij_run__McpToolsIntegrationTestSuite_12724946836947401339.log`.

The initial cycle had no outstanding parent-review findings; subsequent reviewer feedback is
recorded below. The blueprint silent skips and GET_SUB_CONCEPTS scope widening remain deferred.

### Reviewer follow-up — cycle 2

- Restored the omitted-field baselines in the two enumeration success tests and added dedicated
  explicit-null regressions. The property-form query compares complete omitted/null literal arrays;
  CREATE_ENUM checks both omitted/null default names preserve members and leave the default unset.
- Parent review found no remaining issues in these additions. IDEA diagnostics reported no errors;
  the JDK 25 build passed and `git diff --check` was clean.
- `McpToolsIntegrationTestSuite`: **711 tests finished, 0 failures, 0 ignored**; test JVM exited.
  Run output: `/Users/vaclav/Library/Caches/JetBrains/IntelliJIdea2026.2/tmp/ij_run__McpToolsIntegrationTestSuite_1701811856168473513.log`.
- Further feedback received during validation identified weakened FIND_INSTANCES property-filter
  test isolation and ambiguous helper KDoc. These were addressed in cycle 3.

### Reviewer follow-up — cycle 3

- Restored the original model-scoped property-filter test. Added a separate FIND_INSTANCES test
  using a uniquely named fixture and exact persistent node-reference assertions for omitted,
  explicit-null and explicit-editable scopes.
- Clarified that the shared helper KDoc describes boolean/integer validation and blueprint-reader
  reuse; `paramString` has a separate null-only compatibility contract. Clarified this plan's
  conventions link as a policy reference, not a string-parsing documentation edit target.
- Parent review found no remaining issues. IDEA diagnostics reported no errors or warnings in
  the two files edited this cycle; the JDK 25 build passed and `git diff --check` was clean.
- `McpToolsIntegrationTestSuite`: **712 tests finished, 0 failures, 0 ignored**; test JVM exited.
  Run output: `/Users/vaclav/Library/Caches/JetBrains/IntelliJIdea2026.2/tmp/ij_run__McpToolsIntegrationTestSuite_11451132465776082361.log`.

All reported review findings are addressed after three cycles, within the five-cycle limit.
No sweep implementation items remain. Changes remain uncommitted; no push or remote CI was performed.
