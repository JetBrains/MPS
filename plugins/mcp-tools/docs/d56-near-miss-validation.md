# Validation: D56 (`get_concept_details` / `print_node` near-misses)

Status (2026-09-25): options 1 and 2 are done. D56 is closed and archived in
`study/docs-defects-archive.md`, and the rejection now takes its spellings from
`RequiredParameterNearMisses`, adding `concept`, `conceptName` and `conceptNames`. Option 3 (the
analyzer) and the `search_concepts` note from option 4 are not done. Related archived entries: D27 (the current `get_concept_details`
rejection wording) and D43 (the shared `RequiredParameterNearMisses` vocabulary).

Marking: **[M]** = measured from transcripts or live calls; **[I]** = inferred. Citations are
`run:step` (1-based `tool_use` ordinal, as in `show_steps.py`). Evidence directories under
`~/MPSProjects/mcp-study/`: baseline `runs/`, round 4 `runs-r4`, round 5 `runs-r5`, round 6
`runs-r6`, round 8 `runs-r8`, round 10 `runs-r11`, round 11 `runs-r12`, round 12 `runs-r13`,
round 13 `runs-r14`, round 14 `runs-r15`. The parsers were ad-hoc scratch scripts over the
worker JSONL and were not committed. They group `tool_use` blocks by the assistant message id,
so a parallel batch counts as one turn.

## Verdict

**The gap D56 names exists, but the cost it assigns to that gap does not.** No measured run
supports the proposed server remedy as a turn saver.

- **True:** `concept`, `conceptName` (and `conceptNames`) are not in the `get_concept_details`
  near-miss list, and the rejection does not name them [M: live, source].
- **False:** "the worker repeats the same wrong key on a second concept before switching". In
  every cited instance, and in every other wrong-key batch in the study, the repeated calls were
  **in one assistant message**, a parallel batch sent before any error came back. The worker
  never repeated a wrong key after reading the rejection. It recovered in **one turn every time**
  since the rejection first named `conceptRefs` [M: E1].
- **Already done:** `print_node`'s rejection of `node` already names `nodeReference` and lists
  `node` as a near-miss. D43 did that before round 11, and round 11's transcript shows that
  message [M: E1, live]. The `print_node` "two-in-a-row" happened under a message D56 would call
  correct. That makes it the control case: batch width does not depend on message quality.
- **The misreading comes from the measurement.** `analyze_runs.py` pairs an error with the
  next same-tool call "within the next 2 calls", and it ignores the batch id it already records.
  **31 of the 107** error→retry pairs across all rounds are two calls from one batch [M: E4].

**Recommendation:** close D56 as filed (no **S** change justified by cost). Fix the
retry-pairing rule in `analyze_runs.py` instead. It also misread round 10's `search_concepts`
`query` case. An optional hygiene edit to the rejection wording is listed under "Options". It is
cheap, but no turn saving is expected.

## Claim-by-claim

| D56 says | Finding |
|---|---|
| `concept` / `conceptName` are outside the near-miss vocabulary | **True** for this tool. The message at `JetBrainsMPSLanguageMcpToolset.kt:149` and `RETRY_WITH_CONCEPT_REFS` (`:83`) are hand-written and list only `conceptRef`/`conceptReference`/`languageRef`/`languageReference`. The shared vocabulary already treats both as near-misses of `conceptRef` (`RequiredParameters.kt:37`), so this tool is out of line with it. |
| "the generic 'no concepts nor languages provided' message fires" | **Partly.** The same message fires, but it is not generic. It names `'conceptRefs'` twice and ends with a retry line. The genuinely generic message (`"No concepts nor languages have been provided"`, nothing else) existed only at baseline, and that is the only case that cost 2 turns (`runs/S1-sonnet-1:95`→ToolSearch `:96`→`:97`). |
| "the worker repeats the same wrong key on a second concept before switching to `conceptRefs`" | **False.** `S2-sonnet-1:118,:119` (round 10) and `S6-sonnet-1:10,:11` (round 11) are each one assistant message. The next message fixed all of them at once: `:120` and `:14` merge both concepts into one `conceptRefs` array. |
| "a third confirmed instance (round 8 S2, round 10 S1/S2, round 11 S6)" | **Miscounted.** Round 8 S2 is `conceptNames` (plural, one call, one turn: `runs-r8/S2-sonnet-1:68`→`:69`). Round 10 S1 is `conceptRef`, which D56 itself calls covered. That leaves two `concept`/`conceptName` instances (r10 S2, r11 S6) plus one `conceptNames` (r8 S2). |
| `print_node` `node` "two-in-a-row miss on two different node references" | **One batch** (`S6-sonnet-1:12,:13` share a message with `:10,:11`), one recovery turn (`:15`, `:16`). |
| "Confirm whether `print_node`'s rejection of `node` already names `nodeReference`" | **It does**, verbatim: *"nodeReference is required. Retry with nodeReference set to … This tool spells it 'nodeReference'; a value sent as 'nodeRef'/'node'/'reference' never reaches it."* (`JetBrainsMPSNodeMcpToolset.kt:966`, via `RequiredParameters.kt:51`). |
| "Not the same as `apply_intention` `targetNode`, where the D43 message worked in one retry" | **The distinction does not hold.** D56's cases also took one retry. The only difference is batch width, 1 call against 2. |
| Round-12 addition: "singular `conceptRef` ×3 in one parallel batch" | Correctly described, and it is the covered key. It had the same shape and cost (3 calls, 1 turn) as the uncovered cases. That is evidence **against** the remedy, not for it. |

## E1. Every wrong-key batch in the study

All `get_concept_details` calls without `conceptRefs`/`languageRefs`, and all `print_node` calls
without `nodeReference`, across every `*-worker.jsonl` [M]:

| round | run:steps | tool | key sent | batch width | covered by the message then in effect? | turns to recover |
|---|---|---|---|---|---|---|
| baseline | `S1-sonnet-1:95` | get_concept_details | `conceptReference` | 1 | no, message was fully generic | **2** (ToolSearch `:96`) |
| 4 | `S1-sonnet-1:133–140` | get_concept_details | `conceptRef` | 8 | **no**: round-3 wording named only `conceptReference` | 1 (`:141`) |
| 5 | `S1-sonnet-1:14–17` | get_concept_details | `conceptRef` | 4 | **no**: still the round-3 wording | 1 (`:18`) |
| 6 | `S5-sonnet-1:9` | get_concept_details | `conceptReference` | 1 | yes (round-3 wording) | 1 (`:10`) |
| 8 | `S2-sonnet-1:68` | get_concept_details | `conceptNames` | 1 | **no** (D27 wording from here on) | 1 (`:69`) |
| 10 | `S1-sonnet-1:17` | get_concept_details | `conceptRef` | 1 | yes | 1 (`:18`) |
| 10 | `S2-sonnet-1:118–119` | get_concept_details | `conceptName` | 2 | **no** | 1 (`:120`) |
| 11 | `S6-sonnet-1:10–11` | get_concept_details | `concept` | 2 (same message as the next row) | **no** | 1 (`:14`) |
| 11 | `S6-sonnet-1:12–13` | print_node | `node` | 2 | **yes** (D43) | 1 (`:15`) |
| 12 | `S1-sonnet-1:65–67` | get_concept_details | `conceptRef` | 3 | yes | 1 (`:68`) |

Rounds 13 and 14 have none.

Totals: sonnet sent **23 of 208** `get_concept_details` calls without a selector and **2 of
160** `print_node` calls without `nodeReference`. Opus: **0 of 24** and **0 of 42** [M]. Of the
23, the message in effect at the time named the sent key for only **5**. The other **18** (8 in
round 4, 4 in round 5, 1 at baseline, and the 5 `concept`/`conceptName`/`conceptNames` calls)
got a message that did not name it. Against today's list the split is 18 covered and 5 not.

**What sets the cost is whether the message names the right key, not whether it names the
wrong one.** Rounds 4 and 5 are the natural experiment. The rejection named `conceptRefs` but
not the `conceptRef` that was sent, and batches of 8 and 4 rejections each still led to one
clean recovery turn. Covered and uncovered rows are indistinguishable from round 4 onward. Only
the baseline message, which named no key at all, cost more [M: E1; I: the causal reading].

## E2. Live checks (2026-09-25, MPS 2026.1 build 261.25134 from this checkout, project `myMPS-fix`)

| call | result |
|---|---|
| `get_concept_details` `concept = "…ClassConcept"` | `INVALID_REQUEST`, the D27 message verbatim: it names `'conceptRefs'`/`'languageRefs'` and the four singular near-misses; the retry line says "the value you passed as conceptRef/conceptReference" |
| `get_concept_details` `conceptName = "…ClassConcept"` | identical to the row above |
| `print_node` `node = "r:…(jetbrains.mps.baseLanguage.structure)/1068390468198"` | `INVALID_REQUEST`, *"nodeReference is required. … a value sent as 'nodeRef'/'node'/'reference' never reaches it."*, `details.missingParameters: ["nodeReference"]` |
| `get_concept_details` `concept = "…Bogus"` **and** `conceptRefs = "…ClassConcept"` | `ok:true`, ClassConcept's shape, **no warning**. The unknown key is dropped before the tool body runs |

The last row confirms D27's premise live: the tool cannot see which wrong key was sent, so no
message can echo it. It can only list guesses. The server call log records `argsBytes` and not
the key names (`runs-r12/S6-sonnet-1-server.jsonl`), so it cannot recover the key either [M].

## E3. Why no server-side message can cut the observed cost

- **The waste is fixed when the batch is sent.** Every wasted call in E1 left in the same
  message as the first miss, so no response text could have prevented it. The one thing a
  message controls is how many further turns recovery takes. That is already 1, the minimum
  [M: E1].
- **The first guess was not made for lack of a schema.** In 5 of the 10 batches, including
  round 10's `conceptName` batch, the worker had fetched this tool's schema with `ToolSearch`
  earlier in the session. The schema names `conceptRefs`, and the worker guessed another key
  anyway [M: ToolSearch queries naming the tool before the miss]. The other 5 had no such fetch.
  This data cannot tell whether the schema was in context there [I].
- **Where `concept` comes from** [I]: the blueprint key is `"concept"`, and
  `get_project_structure` returns `"concept": "Recipe"` for each root. S6 read exactly that at
  `:8` just before `:10`. No skill file shows a wrong key for this tool: a catalog grep for
  `get_concept_details` next to `concept:`/`conceptName`/singular `conceptRef` finds nothing.
- **The only change that would remove the first miss is an alias parameter.** D27 rejected that
  deliberately (the canonical/blob asymmetry is by design), and nothing here argues for
  reopening it.

## E4. Measurement defect: retry pairing ignores the batch

`analyze_runs.py:652` pairs an error call with the next same-tool call among the following two
calls. It does not compare the `msg` id it already stores on every call record (`:594`). So:

- Two calls in one batch count as error→retry. `runs-r12/analysis/errors.json` has `[10, 11]`
  and `[12, 13]` for S6; `runs-r11` has `[118, 119]` for S2. Those are the pairs the round-10 and
  round-11 reports read as "twice in a row".
- A real retry that lands more than two calls later is **missed**. S6's actual
  `get_concept_details` retry, `:11`→`:14`, is not recorded at all.
- Across all rounds, **31 of 107** recorded pairs share one batch [M]. Besides the D56 cases,
  that includes round 10's `search_concepts` `query` pair `S2-sonnet-1:121→122`.
  `docs-defects.md` ("Not opened from those rounds") reads that pair as "two misses … the model
  ignoring a correct message". It was one batch, and `:123` fixed both calls, so that note is
  wrong in the same way.

This is a harness defect of the kind D40–D42 were, not a docs or server defect. It matters
beyond D56: `retries` feeds the hotspot score (`count × avg_chars × determinism × (1 +
retry_rate)`), so parallel-batching sonnet runs are over-weighted [I].

## Options (not implemented)

1. **Close D56 as filed (recommended).** The `print_node` half is already done by D43. The
   `get_concept_details` half has no measurable cost: 1 turn, the same as covered keys.
   Re-measure criteria such as "no second wrong call" cannot be met by any server change,
   because the second call leaves in the same batch as the first.
2. **Optional hygiene, no expected saving:** bring the `get_concept_details` rejection in line
   with the shared vocabulary (add `'concept'`/`'conceptName'`/`'conceptNames'`), or make the
   retry sentence key-agnostic ("…set to the value you sent under another key"). The latter
   covers spellings nobody has predicted, which a list cannot. `conceptNames` already escaped it
   once. Either edit changes the exact-string assertion in
   `JetBrainsMPSLanguageMcpToolsetIntegrationTest.kt:463` (D27's test). The tool description
   does not change, so `inventorySha256` stays the same.
3. **Fix the analyzer (recommended, separate from D56):** in the retry loop, skip candidates with
   the same `msg` as the error. Take the first same-tool call from a *later* message, without
   the two-call window, or with a window counted in turns. Add a case to
   `study/scripts/tests` with a parallel batch of two misses and a merged retry. Note in the
   next hotspot report that `retries` is not comparable with earlier rounds.
4. **Correct the records** once a decision is made: the D56 row (status and the miscounted
   "third instance"), the `search_concepts` `query` note in "Not opened from those rounds", and
   a pointer from `HOTSPOT_REPORT_round10.md` §3.7 item 1 and `HOTSPOT_REPORT_round11.md` §3.5
   to this file. The reports are historical, so annotate them rather than rewrite them.
