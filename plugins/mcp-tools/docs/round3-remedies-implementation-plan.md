# Plan: fix the round-3 defects in `plugins/mcp-tools`

Status: proposal, not implemented. Written 2026-09-17 from
`plugins/mcp-tools/study/HOTSPOT_REPORT_round3.md` §6 (remedies M1–M9), §4 (defects) and the
defect log `plugins/mcp-tools/study/docs-defects.md`. This document does not authorize
implementation or a subagent launch; it records sites, contracts, order and validation so the work
can start without re-deriving any of it.

Every **New** defect (D20–D25) and every **Persisting** defect (D18/D4, D14, R7) from round 3 is
covered below. The report's remedy outline M1–M9 is kept as the spine; where planning against the
code changed a remedy's premise or its cheapest shape, the change is stated explicitly in
§"Corrections to the report and the defect log" and carried into the remedy section.

## Problem and value

Round 3 fixed the mechanical round trips (temp-file chains, per-root re-validation, the
single-valued-reference detour) and the residual cost moved into two places: documentation reading
(H7, out of scope here — see `skill-reading-context-investigation-plan.md`) and a thin layer of
**avoidable rejections and one-per-item call chains**. The measured cost of what this plan covers,
per greenfield run:

- 2 of round 3's 5 error envelopes and 2 wasted turns: missing `projectPath` (§2.10, D18).
- 4 of 5 calls plus all 3 temp-file envelopes plus one Bash reduction: per-concept instance
  counting (§2.8, the round's "cleanest S-tier candidate", determinism 1.0).
- 1 retry plus a schema fetch: a near-miss parameter name (§hotspot 7). This family has produced
  new members in **all three rounds**, which makes it the one worth fixing structurally.
- One unhandled exception and two dead-end lookups in the observer's own session (D20, D22),
  i.e. defects that reach real users, not just the study.

Two items are pure schema/description hygiene that pay on every turn of every session rather than
once per run: deleting the never-used `includeChildRoleConcepts` (M8) and *not* adding new
top-level parameters where a better rejection message does the same job (M6).

## Corrections to the report and the defect log

Found while planning against the source; each changes what the remedy should do. These corrections
belong in `docs-defects.md` in the same commit as the fix.

1. **D23's premise is wrong: `print_node` already has a depth parameter.** `deep=true` inlines all
   descendants — `JetBrainsMPSNodeMcpToolset.kt:815` (`@McpDescription("Whether to perform a deep
   (true) or shallow (false) printout…")`), dispatched at `:822`/`:829`, and documented at
   `analysis-tools.md:57`. So there is no "one call per step" forced by the tool; the evaluator did
   not use the flag. M4 therefore shrinks to a *routing* fix (name the verification recipe where a
   verifier looks) and D23 must be re-worded from "no depth parameter" to "the docs do not name
   `deep=true` / `PLAIN TEXT` as the verification path". No `S`-tier work.
2. **D22's root cause is structural, and the enum route it points at does not accept a name
   either.** `get_concept_details` can never resolve an enumeration: concept resolution requires
   `root.concept.isSubConceptOf(SNodeUtil.concept_AbstractConceptDeclaration)`
   (`AbstractOps.kt:2673`, `:2691`) and `EnumerationDeclaration` is not one. The dedicated route,
   `query_structure GET_ENUMERATION_LITERALS` with `enumerationRef`, resolves through
   `resolveNodeReferencePreferringProject` (`JetBrainsMPSLanguageStructureMcpToolset.kt:1102`), so
   it needs a **node reference** and rejects `mcp.study.recipes.structure.Difficulty` too. A
   qualified enumeration name has no working lookup anywhere in the tool surface. Remedy shape
   changes accordingly (M5c below): route the error and make `enumerationRef` accept a qualified
   name, rather than teaching `get_concept_details` to return non-concepts.
3. **D25 is already documented for one tool, and the payload should stay an envelope.**
   `analysis-tools.md:55` states the temp file "holds the same `{ok, data}` envelope" for
   `print_node`, and `:60` states the mutation tools accept either the envelope file or a bare
   `data` file. The generic paragraph at `:7` does not say it. `saveToTempFile` writes
   `okJson(json)` (`AbstractOps.kt:3246-3247`) for every tool. So M7 is a one-sentence
   generalisation at `:7`; do **not** switch to emitting the bare payload — it would change what
   every existing consumer parses for no measured gain.
4. **D14's error message already names the correct key.** `"…the singular
   'conceptReference'/'languageReference' spellings used by other tools are not recognised here."`
   — `JetBrainsMPSLanguageMcpToolset.kt:104-108`. Likewise `search_concepts` answers
   `"searchTexts is required: provide a single search string or a JSON array of strings."`
   (`:240`). The round-3 cost was therefore **not** an unnamed key; it was the agent fetching the
   schema anyway. That makes an alias parameter the wrong first move (it grows the per-turn schema
   that H10 says dominates) and points at a *copy-pasteable retry line* in the message instead
   (M6a).
5. **`D4` names two different things and one of them looks already fixed.** In `docs-defects.md`,
   D4 is "unresolved suggestions leak into another open project"; round 3's defect table uses
   `D18/D4` for missing `projectPath`. They are separate issues. The suggestion-scoping reading
   appears addressed: `suggestForUnresolvedConceptRef` ranks over `languagesInProject(...)`
   (`JetBrainsMPSLanguageMcpToolset.kt:704`, `:719-722`) and `search_concepts` explicitly drops
   other projects' languages (`:269-272`). Verify against a two-project session and, if it holds,
   close D4's original reading and stop carrying it as an alias of D18.

## Decisions and boundaries

1. **Tier discipline from the study holds.** `D` (docs) changes are preferred where they remove the
   same chain; an `S` (server) change must remove a chain a doc line cannot. M1 is the only new
   `S`-tier behaviour proposed.
2. **No new top-level tool parameter unless it removes a measured chain.** The per-turn context
   floor (~97,052 tokens, flat across three rounds, H10) is paid by every session; a parameter that
   three rounds of evidence never exercised is a permanent tax (this is the M8 argument, and it
   applies symmetrically to any alias M6 might add).
3. **Aliases inside the `parameters` JSON blob are free; top-level aliases are not.** Blob keys are
   read by `paramString`/`paramBoolean`/`paramInt` (`McpToolInputSchemas.kt:27-37`) and never appear
   in the MCP schema, so accepting a second spelling there costs nothing per turn. Top-level
   parameters are Kotlin function parameters and appear in every tool listing.
4. **Every doc edit lands in `resources/jetbrains/mps/agents/mcp/skills/**` first and is then
   propagated** to `./.agents/skills/` and `./.claude/skills/` per runbook step 7.9
   (`docs/skill-script-automation-runbook.md:260-268`). Never run
   `mps_mcp_initialize_project_for_agents` in this checkout.
5. **Behaviour changes need a `docs-defects.md` status update and a round-4 re-measure to claim a
   saving.** This plan's estimates are predictions, not results.
6. Out of scope: hotspots 1, 2, 4, 5 and 9 (fixed and holding); hotspot 8 (`ToolSearch` schema
   fetches, not addressable from this plugin); H7/§2.9 skill-reading volume beyond the single
   targeted routing fix M2 (see the companion plan).

## Coverage map

| Defect (round 3) | Kind | Remedy here | Tier | Depends on |
|---|---|---|---|---|
| §2.8 per-concept counting | new hotspot | M1 | S | — |
| §2.9 reference fan-out (greenfield reading list) | new hotspot | M2 | D | companion plan for the systemic version |
| D18 (+ §2.10) missing `projectPath` | persisting | M3a docs / M3b upstream | D + S(upstream) | — |
| D23 `print_node` verification path | new | M4 (re-scoped, correction 1) | D | — |
| D24 `<< ... >>` empty-collection placeholder | new | M4 | D | — |
| D20 FQN `conceptRefs` throws `Index -1 out of bounds` | new | M5a | S | reproduction |
| D14 singular `conceptReference` rejected | persisting | M5b + M6a (correction 4) | S (message) | — |
| D22 enumeration not resolvable by name | new | M5c (re-scoped, correction 2) | S | — |
| hotspot 7 near-miss parameter names | persisting family | M6 | S | — |
| D25 temp-file payload shape | new | M7 (correction 3) | D | — |
| R7 `includeChildRoleConcepts` unused | persisting | M8 | S (removal) | decision in M8 |
| D21 S1 done-criterion 2 | new | M9 | study asset | — |
| D4 (suggestion scoping, original reading) | bookkeeping | correction 5 — verify and close | — | two-project session |

## M1 — batch and summarise instance counting (S)

**Evidence.** `S3-sonnet-1:23-27`: five consecutive `query_nodes FIND_INSTANCES` calls, one per
concept, purely for root counts; three overflowed into temp files; a `mps_dump.py` shell-out then
reduced node dumps to integers.

**Sites.**
- `AbstractNodeOps.kt:1378 opFindInstances` — single `conceptRef` (`:1383`), materialises
  `mutableSetOf<SNode>` (`:1412`), serialises full `nodeInfoJson` per node (`:1445`).
- `AbstractNodeOps.kt:1354 findInstancesWithFallback` — already takes `Set<SAbstractConcept>`, so
  one scan can serve many concepts.
- Tool description and dispatch: `JetBrainsMPSNodeMcpToolset.kt:105-118`, `:150`.
- Legacy dispatch to keep working: `JetBrainsMPSLanguageStructureMcpToolset.kt:110`.
- Input readers: `McpToolInputSchemas.kt` (`paramString`/`paramBoolean`).

**Contract.**
- Accept `conceptRefs` (single string or JSON array) next to today's `conceptRef`; reject both at
  once with a message naming the one to keep. Blob-level, so no schema growth (decision 3).
- Accept `detail: "nodes" | "count"` (`"nodes"` = today's behaviour, the default). `count` returns
  `[{concept, conceptReference, count}]`, one row per **requested** concept, in input order.
- `detail:"count"` with `sampleOnly:true` is a contradiction — reject.
- `propertyFilter`, `exact` and every `scope` form apply unchanged to counting.

**Implementation notes.**
- One scan over the union of concepts, then tally: collect the deduped node set once (as today —
  the facade can report a node more than once, which is why `:1412` is a set), then for each node
  increment every requested concept `c` with `node.concept.isSubConceptOf(c)`, or `node.concept == c`
  under `exact`. The per-concept filter must be applied in the collector regardless, because the
  fallback walk does not honour `exact` (`:1349-1352`, `:1417-1422`).
- Rows may overlap by construction: with `exact:false`, an instance of `Recipe` also counts for any
  superconcept in the same request. Say so in the result docs — a caller summing the rows must not
  expect the total to be the number of distinct nodes.
- `detail:"count"` must not build `nodeInfoJson`; that, not the round trips, is what pushed three
  of five calls over `maxInlineBytes`.

**Cheap mitigation to ship with it (docs).** The same answer already exists in one call plus one
local reduction: `get_project_structure(startingPoint=<model>, includeRootNodes=true)` piped through
`mps-mcp-workflow/scripts/mps_dump.py count` ("root count per concept", `mps_dump.py:471`). S3
already held that dump when it made the five calls. Name this route in `analysis-tools.md` next to
FIND_INSTANCES (`:24`) whether or not M1 lands — it is a zero-risk immediate fix for the same
chain.

## M2 — trim the greenfield reading list (D)

**Evidence.** §2.9: round-3 S1 read five files from `mps-model-manipulation/references/`
(`collections-catalog.md`, `foreach-statements.md`, `dot-expression-basics.md`,
`property-and-mutation-ops.md`, `variable-declarations.md` ≈ 61 KB, plus the 14 KB SKILL.md) to
author **one** behavior method and **one** checking rule. R6's jump tables stopped re-reading, not
breadth-first walking.

**Sites.**
- `mps-model-manipulation/SKILL.md` — the "Common-path workflow" step 3 lists four reference files
  as peers (`:33-37`) and the "Reference Index" (`:55-75`) describes 19 files in enticing,
  symmetric prose. Nothing says *how few* to read, or in what order to stop.
- The `Related Skills` line in every aspect skill points at the whole skill, never a file:
  `mps-aspect-behavior/SKILL.md:59`, `mps-aspect-typesystem/SKILL.md:51`,
  `mps-aspect-constraints/SKILL.md:42`, `mps-aspect-actions/SKILL.md:51`,
  `mps-aspect-intentions/SKILL.md:48`, `mps-aspect-generator/SKILL.md:70`,
  `mps-aspect-textgen/SKILL.md:52`, `mps-aspect-dataflow/SKILL.md:44`,
  `mps-aspect-migrations/SKILL.md:42`, `mps-aspect-editor-menus-and-keymaps/SKILL.md:68`,
  `mps-tests/SKILL.md:52`, `mps-ide-plugin/SKILL.md:76`, `mps-quotations/SKILL.md:61`,
  `mps-node-editing/SKILL.md:74`.

**Contract (docs only).**
- A "minimum reading set" block near the top of `mps-model-manipulation/SKILL.md`: for each common
  task shape (simple behavior method; checking rule; scope/`canBe*` callback; generator query) name
  **one** file, and state the stopping rule — read a second reference only after an error you cannot
  explain from the first, and then read `golden-rules-and-pitfalls.md` (4.8 KB) before any catalog.
- Reword the Reference Index entries from "what is in it" to "the symptom that sends you here", so a
  scan does not read as a recommended sequence.
- Each of the 14 `Related Skills` lines names the entry file for that aspect's usual body shape.

**Boundary.** This is the targeted fix for the greenfield path only. The systemic question — what
makes an agent walk a reference set at all, and whether reading less costs correctness — is the
companion plan's subject, and M2 must not pre-empt its conclusions by deleting content. Trim
routing, not facts: round 2 lost ~41 tool calls to one *missing* fact (H11, lesson 23).

## M3 — `projectPath` (D + upstream S)

**Evidence.** `S1-sonnet-1:11-13` — two `alter_structure CREATE_ENUM` calls rejected with *"Unable
to determine the target project…"*, then repeated verbatim with `projectPath` added; 2 of 5 error
envelopes; the observer hit it twice; round 2's N3 unactioned. Cross-check in report §5:
`server_calls` (60/15) vs `mps_calls` (62/16) differ by exactly these pre-dispatch rejections.

**M3a — reconcile the instructions (docs).** The guidance is contradictory today:
- Repo root `AGENTS.md:91` and `CLAUDE.md:91` (identical paragraph): pass the project path *"when a
  tool reports 'no project' or 'multiple projects opened'"* — reactive.
- `resources/.../templates/AGENTS_template.md:111`: *"All `mps_mcp_*` tools — including
  `mps_mcp_initialize_project_for_agents` — are routed by the framework's `projectPath` selector, so
  pass the open project's base directory (never an ancestor)"* — unconditional.
- `JetBrainsMPSInitMcpToolset.kt:29` agrees with the template and adds the recovery: the rejection
  message itself lists the open projects.
- The framework's own `projectPath` parameter text says *"Pass this value ALWAYS if you are aware of
  it"* — and at the start of a session the agent is precisely **not** aware of it, which is why the
  *first* call of every run is the one that fails.

Fix: one unconditional rule, stated once where it is read before the first call — a Critical
Directive in `mps-mcp-workflow/SKILL.md` — and referenced (not restated differently) from
`AGENTS_template.md` and the two repo-root guides. The rule must carry the recovery, because there
is no cheap way to know the path first: *make the call; if it is rejected, the message lists the open
projects; reuse that path for every later call in the session.*

**M3b — investigate the routing (upstream).** `"Unable to determine the target project"` occurs
nowhere in this repository (verified by full-text search; the only hits are a doc string and the
round-2 report), so the rejection is the platform's and happens before dispatch. Evidence that a
project-optional path exists in the platform: `JetBrainsMPSProjectMcpToolset.kt:8` already imports
`com.intellij.mcpserver.projectOrNull`, and `mps_mcp_list_open_projects` (`:46-67`) is written to
work without a resolved project — it just never gets the chance. Investigate whether a tool can opt
out of the selector for discovery calls; if not, file upstream with the two-turn-per-session cost and
the `server_calls`/`mps_calls` cross-check as evidence. Treat as unbounded and do not block M3a on
it.

## M4 — name the verification path (D)

**Evidence.** D23, D24 (both from the S3 evaluator session).

**Sites.** `mps-mcp-workflow/references/analysis-tools.md` §`mps_mcp_print_node — Output Format`
(`:49-60`, with `deep` semantics at `:57-58` and the default-value pitfall at `:92`).

**Contract (two paragraphs).**
- A verification recipe, where a verifier looks: to check the contents of a whole root in one call,
  use `deep=true` for machine-readable JSON, or `format:"PLAIN TEXT"` for a human-readable
  projection (~10× cheaper than walking children) — and note that the default is **shallow**, which
  is what makes a naive verification loop one call per child. Cross-reference from the
  `check_root_node_problems` and `get_project_structure` sections, which are the other two tools a
  verifier reaches for.
- The `PLAIN TEXT` empty-collection placeholder: an **empty** `0..n` role renders as
  `<< ... >>` (e.g. `see also: << ... >>`), which reads as a one-element list. State that an editor
  placeholder means *empty*, and that counts must come from JSON, not from the projection.

Also re-word D23 in `docs-defects.md` per correction 1.

## M5 — make `get_concept_details` resolve or fail cleanly (S)

**M5a — D20, the unhandled `Index -1 out of bounds for length 0`.** A fully-qualified concept name
— the exact string the tool prints as `qualifiedName` — should resolve: `resolveConceptNodeInModules`
step 3 splits on the last dot and matches `<model>.structure` (`AbstractOps.kt:2662-2680`), and
`resolveConceptPreferringProject` (`:2596-2602`) tries that before the runtime facade. So the
exception is a *second-order* failure, not a missing feature, and the throw site is not identifiable
by reading alone. Work order:
1. Reproduce in `JetBrainsMPSLanguageMcpToolsetIntegrationTest` with the FQN form, for a plain
   concept, an interface concept, and a concept whose language is registered but hollow — the last
   is the likeliest trigger, since `get_concept_details` is documented to serve hollow descriptors.
   Candidate sites to instrument in order: `MetaAdapterByDeclaration.getConcept` on a declaration
   whose language is not registered (`:2575`), `facade.createConcept` fallback (`:2582`),
   `conceptDetailsJsonObject`, and the suggestion ranking (`JetBrainsMPSLanguageMcpToolset.kt:697-723`
   — `"…structure.Difficulty" → "…structure.Recipe"` proves this path runs on FQN input).
2. Independently of the root cause, make per-ref resolution failure-proof: the loop at
   `JetBrainsMPSLanguageMcpToolset.kt:131-138` should treat *any* non-cancellation throwable from one
   `conceptRefs` entry as "unresolved", so one bad input can never lose the other entries or escape
   as an `INTERNAL_ERROR`. This is the same partial-success policy the tool already implements for
   unresolvable refs (`:184-222`).
3. Then fix the underlying resolution so the FQN form actually resolves, and keep a regression test
   per input form.

**M5b — D14, the singular `conceptReference`.** Keep rejecting it (decision 2, correction 4), but
make the message end with a copy-pasteable retry, e.g. *"retry with `conceptRefs` set to the value
you passed as `conceptReference`"*. Revisit an alias only if a later round still shows the schema
fetch after the message change.

**M5c — D22, enumerations (re-scoped per correction 2).**
- `get_concept_details` should recognise that a name resolves to an `EnumerationDeclaration` and say
  so, instead of suggesting an unrelated concept: *"`…structure.Difficulty` is an
  EnumerationDeclaration, not a concept — use `query_structure GET_ENUMERATION_LITERALS`"*. Cheap
  detection: the same structure-model scan that concept resolution already performs, without the
  `AbstractConceptDeclaration` filter (`AbstractOps.kt:2691`).
- Let `GET_ENUMERATION_LITERALS`' `enumerationRef` accept a qualified enumeration name as well as a
  node reference (`JetBrainsMPSLanguageStructureMcpToolset.kt:1102`), so the route the error names is
  usable with the string the caller has. Blob-level parameter, so no schema cost.
- Keep the existing "not an EnumerationDeclaration" rejection (`:1106-1111`) for a ref that resolves
  to something else.
- Docs: in `mps-language-analysis/references/concept-details.md`, state that enumerations are not
  concepts and name the route — this is the lookup D5's default-literal pitfall forces on every
  reader.

## M6 — parameter-name consistency sweep (S)

**Evidence.** Hotspot 7 has produced a new member in every round: round 2 `conceptReference`/
`conceptRefs` (D14), round 3 `query`/`searchTexts` (`S1-sonnet-1:56-58`, error + `ToolSearch` +
retry). The inventory below is why it keeps happening — the same idea has four spellings.

| Idea | Spellings in the surface today |
|---|---|
| a concept | `conceptRef` (12 blob sites, `scaffold_editor`), `conceptRefs` (`get_concept_details`), `conceptReference` (`create_root_node`, and the blueprint JSON field), `concept` (`create_root_node`) |
| a model | `modelReference`, `modelName` (`create_model`), `structureModelRef` (blob), `models` (scope selector) |
| a node | `nodeReference`, `childNodeRef`, `newParentRef`, `historyNodeReference`, `targetRef` |
| an enumeration | `enumerationRef` (blob), `enumName` / `defaultEnumName` (blob) |
| free-form text | `searchTexts` (`search_concepts`), `names` (`search_root_node_by_name`) — while the co-resident IDEA MCP server uses `q` for its searches |

Note the systemic split: blob keys use the short `…Ref` suffix, top-level parameters use the long
`…Reference`. Both conventions are load-bearing in existing call sites, so a rename is out.

**Contract.**
- **Blob keys — accept both spellings** (free per decision 3): one helper in
  `McpToolInputSchemas.kt` alongside `paramString`, e.g. `paramStringAny("conceptRef",
  "conceptReference")`, which returns the first present value and **rejects** two present values
  naming the winner. Apply to the `…Ref`/`…Reference` pairs in the table. This is the same
  "reject the ignored key" policy the recent `REFERENCES_ARE_SINGLE_VALUED` work established
  (`McpToolInputSchemas.kt:41-50`).
- **Top-level parameters — message only** (correction 4): every "required parameter missing"
  rejection names the correct key *and* offers the retry line. No new aliases.
- Add the near-miss spellings to the drift surface so a future rename cannot silently reopen the
  family: extend the assertions in `SkillScriptsDriftTest` or add a focused unit test asserting that
  each alias pair still resolves.

## M7 — document the temp-file payload shape (D)

One sentence at `analysis-tools.md:7`, generalising what `:55`/`:60` already say for `print_node`:
the file named by a string `data` holds a **complete** `{"ok":…,"data":…}` envelope, so splicing the
file's contents in as `data` yields `data.data`; the mutation tools accept either the envelope file
or a bare payload file. Keep emitting the envelope (correction 3). `saveToTempFile`
(`AbstractOps.kt:3246`) is unchanged.

## M8 — delete `includeChildRoleConcepts` (S, removal)

**Evidence.** 0 calls in 14 runs across 3 rounds (R7; round-2 N8 proposed the deletion, round 3 is
the third confirmation). It costs description bytes on every turn of every session.

**Counter-argument to settle first.** R7 was built for exactly the chain that is still open —
hotspot 6, `get_concept_details → get_concept_details` 5× at `S1-sonnet-1:43-46`, refining
discovery one concept at a time. Deleting the parameter removes the only purpose-built lever for it.
**Recommendation: delete anyway**, and answer hotspot 6 with the route that already exists and is
already documented — one `get_concept_details(languageRefs=…)` call returns *every* concept of the
language, which is strictly cheaper than any per-concept refinement. The reason R7 went unused is
plausibly that it sits mid-sentence in a ~2,400-character description; a parameter that needs a
documentation fix to be found, and whose job a simpler existing call already does, is not worth its
schema.

**Sites.** `JetBrainsMPSLanguageMcpToolset.kt:79` (parameter + description), `:85`, `:99`,
`:171-182` (the `relatedConcepts` payload branch), the `roleTargetConcepts` helper if it has no
other caller, and the `includeChildRoleConcepts` sentence inside the `@McpTool` description at
`:72`. Docs: `mps-language-analysis/references/concept-details.md`,
`mps-mcp-workflow/references/analysis-tools.md`, `mps-mcp-workflow/references/mcp-tools-index.md`
(× the three trees, per decision 4). Test: the `includeChildRoleConcepts` case in
`JetBrainsMPSLanguageMcpToolsetIntegrationTest`. No bundled script names it (checked against
`mps_dump.py:62-75` and `concept_shape.py:29-34`), so `SkillScriptsDriftTest` is unaffected.

**Compatibility.** Removing a parameter is a breaking change for any caller that passes it. Per the
API policy in `.agents/conventions.md`, confirm the removal (rather than deprecation) is acceptable
for this plugin's tool surface before landing; the evidence for "no caller exists" is the study's 14
runs plus the absence from every bundled script and every skill example.

## M9 — fix S1 done-criterion 2 (study asset)

`study/scenarios/S1/done_criteria.md` criterion 2 tells the observer to use `query_structure` /
`search_concepts` to "list a language's concepts"; `query_structure` has no such operation
(`JetBrainsMPSLanguageStructureMcpToolset.kt:29-38`) and `search_concepts` hard-requires
`searchTexts` (`JetBrainsMPSLanguageMcpToolset.kt:237-243`). Replace with the route that works:
`get_project_structure(startingPoint=<structure model>, includeRootNodes=true)` for the inventory
plus `get_concept_details(languageRefs=…)` for the shapes. While editing, make the criterion's enum
expectation (`Difficulty {EASY, MEDIUM, HARD}`) reachable — per correction 2 an enumeration cannot be
looked up by qualified name, so the criterion should name the roots-plus-`print_node` route (or
`GET_ENUMERATION_LITERALS` with the node reference from the roots dump). The worker prompt is **not**
touched: `promptSha256` is the cross-round comparison key (lesson 25).

## Recommended order

1. **Phase 0 — confirm (no product change).** Reproduce D20 in an integration test (M5a step 1);
   confirm the D14/`query` rejection path is reached with an unknown top-level key; verify
   correction 5 in a two-project session. Everything else in this plan is already verified against
   the source above.
2. **Phase 1 — docs and assets, no build gate** (prose-only per `.agents/quality-gates.md`): M3a,
   M4, M7, M9, the M1 mitigation line, then M2. Land as one or two commits; propagate per step 7.9
   (decision 4). These are the cheapest measured savings in the round and none of them can break a
   build.
3. **Phase 2 — server, additive:** M5 (a, b, c) then M6. Both are error-path and alias work with no
   behaviour change for a correct call.
4. **Phase 3 — server, behavioural:** M1, with its docs in the same commit.
5. **Phase 4 — removal and upstream:** M8 after its compatibility confirmation; M3b filed as an
   upstream investigation, not blocking.
6. **Phase 5 — re-measure.** A round-4 S1+S3 cell pair is the only way to claim the savings; the
   harness pins the doc surface per run since D19, so the comparison is now sound. Expect the call
   threshold (≥30 %) to be reachable on S3 for the first time (M1 removes 4 of 5 calls in the
   §2.8 chain) and the context threshold to hinge on M2 plus the companion plan.

## Validation

- **Prose-only changes** (M3a, M4, M7, M9, M2, the M1 doc line): no build or test gate. State that
  instead of running a suite. Check the catalog with `plugins/mcp-tools/scripts/validate_skill_catalog.py`
  and finish with `diff -rq resources/.../skills .claude/skills` showing only the checkout-local
  extras and `diff -rq .agents/skills .claude/skills` empty (step 7.9).
- **Code changes** (M1, M5, M6, M8): JDK 25. Individual `*McpToolset*IntegrationTest` classes cannot
  run standalone (`myEnv`/`myProject` null) — run the whole `McpToolsIntegrationTestSuite` run
  configuration and search its log, per `.agents/quality-gates.md`. `execute_run_configuration` will
  report a timeout while the suite keeps running; monitor the process and read `fullOutputPath`.
  Check `ps aux | grep JUnitStarter` first; never run two suites concurrently.
- **New tests to add:** FIND_INSTANCES `detail:"count"` (single and multiple `conceptRefs`, overlap
  under `exact:false`, `sampleOnly` conflict rejected, `conceptRef`+`conceptRefs` rejected);
  `get_concept_details` by FQN for plain/interface/hollow concepts; enumeration-name routing message;
  `enumerationRef` by qualified name; one alias-pair test per M6 family; `ok:false` (never a raw
  exception) for every malformed ref shape.
- **Drift gate:** `SkillScriptsDriftTest` must stay green — it fails on a renamed tool or parameter
  named by a bundled script, which is the guard for M1's and M8's parameter changes.

## Docs to update in the same commit as the code

- M1: `mps-mcp-workflow/references/analysis-tools.md` (FIND_INSTANCES section `:24`),
  `references/mcp-tools-index.md`, and the `query_nodes` `@McpTool` description.
- M5: `mps-language-analysis/references/concept-details.md` (FQN accepted, enumeration routing),
  `analysis-tools.md` if the unresolved-ref policy text changes.
- M6: the tool descriptions whose blob keys gain an alias; `references/reference-formats.md` if it
  enumerates the accepted spellings.
- M8: the three skill files listed in M8, in all three trees.
- All: `study/docs-defects.md` statuses (D14, D18, D20–D25, R7) and the corrections in §"Corrections
  to the report and the defect log"; `study/HOTSPOT_REPORT_round3.md` is evidence of record and is
  **not** rewritten — corrections belong in the defect log and in this plan.

## Risks

- **M1 attribution.** Per-concept counts over an overlapping concept set are easy to get subtly
  wrong (subconcept instances, facade duplicates, the fallback walk ignoring `exact`). The
  overlap-is-intentional note and the tests above are the mitigation; a wrong count is worse than a
  missing feature because nothing downstream can detect it.
- **M8 is breaking.** Mitigated by the compatibility confirmation and by the study evidence of zero
  callers; the fallback is deprecation instead of removal, which keeps the schema cost and therefore
  forfeits the entire benefit.
- **M2 could cut a load-bearing fact.** Round 2 lost ~41 calls to one missing fact. Restrict M2 to
  routing and stopping rules; do not delete reference content under this plan.
- **M3b may not be actionable locally** (platform-side routing), which is why M3a carries the whole
  measured saving on its own.
- **Single-cell evidence.** n = 1 per cell, sonnet only; lesson 12 says deltas under ~15 % are not
  signal. Each remedy here is justified by a *named chain* rather than by an aggregate delta, which
  is the study's own rule for surviving that caveat.

## Estimate

| Phase | Content | Rough size |
|---|---|---|
| 0 | reproduction + two verifications | half a day |
| 1 | M3a, M4, M7, M9, M1-doc, M2 | one day, no gate |
| 2 | M5a/b/c, M6 (+ tests) | two days |
| 3 | M1 (+ tests, docs) | one to two days |
| 4 | M8 (+ doc propagation), M3b filing | half a day + upstream |
| 5 | round-4 S1+S3 re-measure | per the runbook |

## Open questions for the user

1. **M8** — accept a breaking parameter removal on the MCP tool surface, or deprecate (which keeps
   the per-turn cost and loses the benefit)?
2. **M6** — confirm the "no new top-level aliases, richer rejection messages instead" call, given it
   trades one more possible retry against permanent schema bytes.
3. **M1** — ship the `detail:"count"` server change, or start with the zero-risk documentation route
   (`get_project_structure` + `mps_dump.py count`) and re-measure before adding server behaviour?
4. **Scope of the round-4 re-measure** — cells, models, and whether it waits for the H7 work.
