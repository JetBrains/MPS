# MCP Tools: Intentions & Quick-Fixes on Nodes — Proposal and Implementation Plan

**Branch:** `261/vaclav/MCP` · **Plugin:** `plugins/mcp-tools` · **Status:** proposal, ready to implement

Goal: let coding agents (a) discover the intentions and quick-fixes available on an MPS node, (b) apply a
chosen one, and (c) see and auto-apply the quick-fixes attached to problems reported by
`mps_mcp_check_root_node_problems` — all without the node being open in a visible editor.

Everything below is plain Kotlin work inside `plugins/mcp-tools` plus skill-doc updates.
**No MPS model edits, no generated-code edits, no platform changes are needed.**

---

## 1. Findings (answers to the investigation questions)

### 1.1 Mechanism to obtain intentions on a node

The Alt+Enter menu is fed by `jetbrains.mps.intentions.IntentionsManager`
(`editor/intentions-runtime/source/jetbrains/mps/intentions/IntentionsManager.java`), an application
service (`getInstance()` at line 78):

- **Query:** `getAvailableIntentions(QueryDescriptor, SNode, EditorContext)` (line 217) returns
  `Collection<Pair<IntentionExecutable, SNode>>` — the executable plus the node it applies to (the
  starting node or an ancestor, for intentions with `isAvailableInChildNodes()`).
- **`QueryDescriptor`** (line 402) flags: `enabledOnly`, `currentNodeOnly`, `surroundWith`.
  Note `Filter.accept` (line 392) matches `isSurroundWith() == mySurroundWith`, so one query returns
  *either* normal *or* surround-with intentions — including both requires two queries.
- **Identity:** `IntentionDescriptor.getPersistentStateKey()` = FQ name of the generated
  `*_Intention` class (`AbstractIntentionDescriptor.java:45`). Stable across sessions; already used by
  `getIntentionsById(SNode, EditorContext, String id)` (line 491) which re-queries and filters by key —
  the exact primitive an MCP "apply" tool needs. Parameterized intentions produce several executables
  sharing one key (`IntentionFactory.instances(...)`); instances are distinguished by their
  `getDescription(node, editorContext)` text.
  Two consequences of `getIntentionsById` building its own `QueryDescriptor` with only
  `setCurrentNodeOnly(true)`: `enabledOnly` stays `false`, so an explicitly-requested but *disabled*
  intention can still be applied by id (intended); and `surroundWith` stays `false`, so
  **surround-with intentions can never be matched through it** (`Filter.accept`, line 396, requires
  `isSurroundWith() == query.surroundWith`) — which is one of the two reasons surround-with support is
  deferred (§5).
- **Kinds** (`editor/editor-api/.../openapi/intentions/Kind.java`): `ERROR`, `QUICKFIX`, `MIGRATION`,
  `NORMAL`. Aspect-defined "error intentions" and migration-script intentions arrive through the same
  query; the `QUICKFIX` kind only ever comes from checker messages (below).
- **Execution:** `IntentionExecutable.execute(node, editorContext)` must run inside a command on EDT.
  Production path: `IntentionMenuProducer` → `executeCommandInEDT` (IntentionMenuProducer.java:127-229).
  Test precedent: `IntentionTester.invokeMatchingIntention` wraps *match + execute* in one undoable EDT
  command (`plugins/mps-testing/.../lang/test/runtime/IntentionTester.java:37-42`). Our existing
  `executeShortCommandOnEdt` (AbstractOps.kt) provides exactly this wrapper.

Quick-fixes enter the Alt+Enter menu separately: `IntentionsManager.visitQuickFixes` (line 356) reads
**highlighter messages from the EditorComponent** (`getHighlightManager().getMessagesFor(node)`) and wraps
each `EditorQuickFix` in a `QuickFixAdapter`. Since the Highlighter only checks *visible* editors, this
path is empty on any offscreen component — which is why we source quick-fixes from the checkers instead
(1.3).

### 1.2 Headless editor: yes — and the plugin already uses one

`jetbrains.mps.editor.runtime.HeadlessEditorComponent`
(`editor/editor-runtime/source_gen/.../HeadlessEditorComponent.java`) is a production class
(`new HeadlessEditorComponent(SRepository)`, built with `withUI(false)`, relaxed `assertInEDT`).
**`mps_mcp_print_node` already uses it** for HTML/text rendering — `showNodeAppearance` in
`JetBrainsMPSNodeMcpToolset.kt:505-516`: create → `editNode(node)` → use → `dispose()` in `finally`,
inside `executeShortReadOnEdt`. So the create/dispose lifecycle is already proven inside this plugin.

Two facts verified for the intentions use case:

- `editNode()` requests the **typechecking session synchronously** inside its read action
  (`EditorComponent.java:1243-1245` → `requestTypecheckingSession()` → `requestNewSession(flags)`), so
  after `editNode(root)` returns, `getTypecheckingSession()` is non-null (guard anyway —
  `TypecheckingComputations.computeWithSession` requires `@NotNull` session).
- `getAvailableIntentions` uses the `EditorContext` only for: the typechecking session, the repository,
  and the highlighter-message quick-fix merge (empty headless). Generated `isApplicable`/`execute`
  bodies overwhelmingly use only the node; UI touches (`editorContext.getEditorPanelManager()` —
  `@Nullable`, null on headless config) are null-checked in generated code.

**Recipe** (mirrors `showNodeAppearance`): resolve node → `root = node.containingRoot` →
`HeadlessEditorComponent(repo)` → `editNode(root)` → query/execute with
`component.editorContext` → `dispose()` in `finally`. Listing runs under `executeShortReadOnEdt`;
applying under `executeShortCommandOnEdt` (command ⇒ write + undo support, same as the IDE).

### 1.3 Mechanism to obtain quick-fixes — editor-free, via the checkers we already run

`mps_mcp_check_root_node_problems` already runs the full checker stack via `runRootCheckers`
(`AbstractOps.kt:1603`): StructureChecker, ConstraintsChecker, TargetConceptChecker2, RefScopeChecker,
TypesystemChecker, NonTypesystemChecker, plus the MCP-only attribute-feature-id check. The collected
`NodeReportItem`s **already carry the quick-fixes** — the JSON mapping just discards them
(`problemJsonObject`, AbstractOps.kt:1361, serializes only `severity` + `message`).

Extraction API (all in `core/kernel/source/jetbrains/mps/errors/`):

- `QuickFixReportItem.FLAVOUR_QUICKFIX.getCollection(reportItem)` → `Collection<QuickFixBase>`
  (empty for items without fixes; safe on any `ReportItem`).
- `QuickFixReportItem.FLAVOUR_QUICKFIX.getAutoApplicable(reportItem)` → the single
  `isExecutedImmediately()` fix or null; **throws `IllegalStateException` if more than one** — wrap in
  try/catch.
- Typesystem/checking-rule items are `TypesystemReportItemAdapter`s wrapping `IErrorReporter`; their
  fixes are `QuickFixRuntimeAdapter`s (implement `EditorQuickFix`):
  `getDescription(SRepository)`, `isApplicable(SRepository)`, `isAlive(SRepository)`,
  `execute(SRepository)` — *node resolution and applicability re-check are inside `execute`*
  (`QuickFixRuntimeAdapter.java:69-75`).
- How rules attach them: generated `*_NonTypesystemRule.applyRule` calls
  `errorReporter.addIntentionProvider(new BaseQuickFixProvider("<FQN of *_QuickFix class>", intentionId,
  executeImmediately))` with captured arguments; the `*_QuickFix` class extends `QuickFix_Runtime`.

**Editor-free execution precedent:** the Model Checker's *Perform Quick Fixes* button
(`ModelCheckerViewer.performQuickFixes()`,
`plugins/mps-modelchecker/platform/source_gen/.../ModelCheckerViewer.java:105-148`): inside
`executeCommandInEDT`, loop over issues, `getAutoApplicable` → `isAlive(repo)` + path-object resolve →
`quickFix.execute(repo)`, repeat until no progress, then re-check. We adopt this loop verbatim for the
auto-apply mode.

**Identity across calls:** fix instances are ephemeral (created per check run, with captured arguments).
The robust pattern is *re-run the checkers and re-match*, keyed by human-legible fields:
problem node reference + problem message + fix runtime-class FQN (obtainable by instantiating the
runtime: `provider.getQuickFix(languageRegistry).javaClass.name`; fall back to the fix description).
This matches the plugin's readable-JSON conventions — no opaque handles needed.

### 1.4 What `mps_mcp_check_root_node_problems` is missing

Only the JSON mapping — `runRootCheckers` output is complete. In the tool's node branch, **both**
output modes funnel problem serialization through a single chain: `nodeWithProblemsJsonObject`
(AbstractOps.kt:1424; the flat-list mode enters via `nodeWithProblemsListJsonArray`:1572, the
full-tree mode via `nodeWithProblemsToJson`:1414) → `nodeProblemsJsonArray` (1375; called at
1449/1464/1503/1519 for node-, property-, reference- and child-role-targeted problems) →
`problemJsonObject` (1361), which serializes only `severity` + `message` and drops the report item.
Enriching that chain — an overload of `problemJsonObject` taking the `NodeReportItem` +
repository/registry, threaded through `nodeProblemsJsonArray`'s four call sites — covers the whole
check-tool node branch. Two serializers deliberately stay outside it: `modelWithProblemsJsonObject`
(1761, plain `problemJsonObject` call at 1773) is the *model* branch, out of scope (§2.3); and
`subtreeProblemsJsonArray` (1736, inlines its own severity/message at 1744-1745) is not part of this
tool at all — it backs `mps_mcp_parse_java_and_insert`'s post-insert summary (optional follow-up, §5).

---

## 2. Proposed MCP API

Design principles: follow existing plugin conventions (String params with Kotlin defaults — never enums
in signatures; `okJson`/`errJson` envelopes; `resolveNodeReferencePreferringProject`;
`executeShortReadOnEdt` / `executeShortCommandOnEdt`; readable JSON, no opaque tokens). One list surface
per mental model, **one apply tool for both mechanisms**, and the same fix-identity scheme everywhere.

### 2.1 New tool: `mps_mcp_list_node_intentions`

*"What can I do on this node?"* — mirrors Alt+Enter, headless.

Parameters:

| param | type | default | meaning |
|---|---|---|---|
| `nodeReference` | String | — | persistent `SNodeReference` |
| `includeAncestors` | Boolean | `true` | also intentions of ancestor nodes (`isAvailableInChildNodes`), like the editor |
| `includeDisabled` | Boolean | `false` | maps to `QueryDescriptor.setEnabledOnly(!it)` |
| `includeQuickFixes` | Boolean | `true` | merge checker quick-fixes for problems on this node (and ancestors when `includeAncestors`) |

Result `data`: array of entries

```json
{
  "type": "intention",                              // or "quickFix"
  "id": "com.acme.lang.intentions.AddDefault_Intention",   // persistentStateKey | fix runtime class FQN (may be absent for quickFix)
  "kind": "NORMAL",                                 // ERROR | QUICKFIX | MIGRATION | NORMAL
  "presentation": "AddDefault",                     // intention only: static name
  "description": "Add default value",               // Alt+Enter row text (node-specific, arguments baked in)
  "targetNode": "<persistent ref>",                 // node the entry applies to — pass THIS to apply
  "declarationNode": "<persistent ref>",            // IntentionDeclaration / QuickFixDeclaration node — print it to read the implementation
  "parameterized": false,                           // true ⇒ description required on apply
  "parameter": "…",                                 // parameterized only: getParameter().toString()
  "problemMessage": "…",                            // quickFix only: message of the problem it repairs
  "autoApplicable": false                           // quickFix only: isExecutedImmediately()
}
```

`declarationNode` comes from `IntentionDescriptor.getIntentionNodeReference()` /
`QuickFix_Runtime.getDeclarationNode()` — it lets an agent inspect the actual
`isApplicable`/`execute`/`description` bodies with `mps_mcp_print_node` before deciding to apply.
Sanitize the `QuickFix_Runtime.getDescription` fallback (`"<ERROR>: <class>"` when the author wrote no
description block) to `null`.

Implementation: read-action on EDT; headless editor on `node.containingRoot`; a single
`QueryDescriptor` query with `surroundWith` left `false` — surround-with intentions are deliberately
not listed in phase 1 (they could not be applied, and they need a selection to surround; see §5);
quick-fix entries from `runRootCheckers(root)` filtered to the
target node (+ ancestors), `kind` = severity `ERROR` → `"ERROR"` else `"QUICKFIX"` (mirrors
`QuickFixAdapter.getKind()`); non-`EditorQuickFix` fixes are listed with `description: null` and
`autoApplicable` only. Filter quick-fix entries by `isApplicable(repo)`.

### 2.2 New tool: `mps_mcp_apply_intention`

Applies an entry returned by `mps_mcp_list_node_intentions` **or** a `quickFixes` entry from
`mps_mcp_check_root_node_problems`.

Parameters:

| param | type | default | meaning |
|---|---|---|---|
| `nodeReference` | String | — | the `targetNode` from the listing / the problem node from the check report |
| `intentionId` | String | — | `id` from the listing (`persistentStateKey` or quick-fix class FQN) |
| `description` | String? | `null` | disambiguator; **required** when several instances share the id (parameterized intentions, repeated fixes) |
| `problemMessage` | String? | `null` | quick-fix only: pins the fix to a specific problem when the same fix class appears on several problems of the node |

Behavior — one `executeShortCommandOnEdt` block (command ⇒ read+write+undo, matching both IDE
precedents):

1. Resolve node, `root = containingRoot`; run `runRootCheckers(root)` **once** and keep the full
   report — it serves double duty: the `before` severity counts for the response *and* the quick-fix
   lookup snapshot for step 3. Nothing mutates between steps 1-3 (same command), so no second run is
   needed to locate the fix.
2. **Aspect-intention path:** headless editor on root →
   `IntentionsManager.getIntentionsById(node, ctx, intentionId)` → filter by `description` if given →
   exactly one ⇒ `executable.execute(node, ctx)`. Zero matches ⇒ fall through. Multiple ⇒
   `errJson` listing the candidate descriptions in the message, code `INVALID_REQUEST`
   (`McpErrorCode` — AbstractOps.kt:73-81 — has no ambiguity constant and we don't add one; its
   members are INVALID_JSON, INVALID_REFERENCE, INVALID_REQUEST, NOT_FOUND, NOT_EDITABLE,
   MAKE_INPUT_INVALID, INTERNAL_ERROR).
   Matches disabled intentions by design (explicit-id application); never matches surround-with
   intentions (§1.1) — consistent with the list tool not offering them (§5).
3. **Quick-fix path:** from step 1's report, items on `node` (message contains `problemMessage`
   when given) → their `FLAVOUR_QUICKFIX` fixes matched by runtime-class FQN == `intentionId` (fallback:
   description == `description`) → single match, `isAlive` + `isApplicable` ⇒ `fix.execute(repo)`.
   The fix instances are live objects from step 1's snapshot — executing them directly is exactly how
   the Model Checker consumes its own snapshot (§2.3).
4. Neither path matched ⇒ `errJson(NOT_FOUND, "intention or quick fix not available on this node —
   re-run mps_mcp_list_node_intentions; the model may have changed")`.
5. Re-run the checkers once for the `after` counts; return
   `okJson({applied: true, type, description, targetNode, problems: {before: {errors, warnings}, after: {errors, warnings}}})`.
   Two checker runs per apply in total (before/locate + after). Wrap the `execute` call in try/catch →
   clean `errJson` with hint *"this intention may require an open editor UI"* for the rare
   UI-dependent intention.

### 2.3 Enhancement: `mps_mcp_check_root_node_problems`

1. **Output enrichment** — each problem object may gain a `quickFixes` array (key omitted when empty,
   to keep reports compact):

   ```json
   { "severity": "error",
     "message": "Concept name should be capitalized",
     "quickFixes": [
       { "id": "jetbrains.mps.lang.structure.typesystem.Capitalize_QuickFix",
         "description": "Capitalize name",
         "autoApplicable": false } ] }
   ```

   Applied via `mps_mcp_apply_intention(nodeReference = <node's reference from the report>, intentionId = <id>)`.

2. **New parameter** `autoApplyQuickFixes: Boolean = false` — when true, run the
   `ModelCheckerViewer.performQuickFixes` loop (ModelCheckerViewer.java:105-148) after checking, with
   **the same snapshot semantics, which is what guarantees termination**:
   - Build the worklist **once** from the initial checker run: items having exactly one
     `getAutoApplicable` fix (guard the >1 `IllegalStateException` → treat as not auto-fixable).
   - Loop over the worklist in passes, inside one command — exactly the precedent's semantics
     (ModelCheckerViewer.java:124-131). Each pass **iterates over a copy of the current worklist while
     removing from the original** — the precedent's `new ArrayList<>(issuesToFix)` at line 124;
     iterating the live list would throw `ConcurrentModificationException` on the first removal. Per
     item, if its path object resolves **and** `fix.isAlive(repo)`, then `fix.execute(repo)` and
     remove the item from the worklist. Items that are *not yet* alive **stay in the worklist and are
     retried on later passes** — an earlier sibling fix may have made them fixable, and dropping them
     on first visit would apply strictly fewer fixes than the IDE's button. A pass that applies
     nothing breaks the loop.
   - Termination: the worklist is built once and never grows (checkers are *not* re-run inside the
     loop, so problems introduced by fixes cannot inject new work), and every non-final pass removes
     ≥1 item ⇒ at most `n` productive passes plus one terminating pass for `n` initial items. A fix
     that executes leaves the worklist immediately — there is no "did the problem disappear?" re-queue
     — so a no-op or problem-shifting fix cannot run twice.
   - Then re-run the checkers **once** and return the *final* report plus
     `"appliedQuickFixes": ["…description…", …]`. One snapshot round per call — if the new report
     exposes further auto-applicable fixes, the agent calls again (the agent is the outer loop).
   - Note: there is deliberately no verification that each fix removed its problem — auto-applicability
     is the language author's contract (`executeImmediately` flag / `ModelCheckerQuickFix`); the final
     re-check reports ground truth.

   Requires switching the wrapper from `executeShortReadOnEdt` to `executeShortCommandOnEdt` for this
   mode (commands permit reads, so the plain-check branch can share the code path or keep the read
   wrapper — keep the read wrapper for the default mode to avoid needless write locks).

   Applies to the *node/root* branch. The model-reference branch (`ModelValidator` /
   `ModelReportItem`) is out of scope for now (see §6).

### 2.4 Why this shape

- **One apply tool** serving both surfaces means an agent never has to know which mechanism produced an
  entry; ids are self-descriptive FQNs, disjoint in practice (`*_Intention` vs `*_QuickFix`), and the
  tool auto-detects by trying the intention path first.
- **Re-query-and-match** (rather than caching executables server-side) keeps the tools stateless and
  robust against model edits between calls — the same reasoning the flavour/fingerprint machinery uses.
- Field-based matching (node + id + description + problemMessage) is debuggable and readable, per plugin
  conventions; no session cache, no opaque handles.

---

## 3. Implementation plan

### Step 0 — module dependency (5 min)

- `plugins/mcp-tools/mcp-tools.iml`: add `<orderEntry type="module" module-name="intentions-runtime" />`
  (provides `jetbrains.mps.intentions.IntentionsManager`). `editor-api` (Kind, IntentionExecutable,
  IntentionDescriptor, ParameterizedIntentionExecutable), `editor-runtime` (HeadlessEditorComponent),
  `kernel` (flavours, QuickFixBase/EditorQuickFix), `typesystemEngine` (checkers) are already present.
- **Ant build needs no change**: intentions-runtime compiles into `mps-editor.jar`
  (`build/mpsBootstrapCore.xml:18128`), already on the mcp-tools compile classpath
  (`build/mpsMcpTools.xml`, classpath block ~line 100-130). Do **not** touch the generated build XMLs.

### Step 1 — shared infrastructure in `AbstractOps.kt` (~0.5 day)

- `protected fun <T> withHeadlessEditor(repo: SRepository, root: SNode, block: (EditorContext) -> T): T`
  — extract the create/editNode/dispose pattern from `showNodeAppearance`
  (JetBrainsMPSNodeMcpToolset.kt:505-516); assert `component.typecheckingSession != null` after
  `editNode` (clean `errJson`-able failure otherwise). Refactor `showNodeAppearance` to use it.
- `protected fun quickFixInfos(item: NodeReportItem, repo: SRepository, registry: LanguageRegistry): List<QuickFixInfo>`
  — `FLAVOUR_QUICKFIX.getCollection(item)` → per fix:
  `id` = runtime class FQN via `QuickFixRuntimeAdapter`/provider instantiation (try/catch → null),
  `description` = `(fix as? EditorQuickFix)?.getDescription(repo)`,
  `autoApplicable` = `isExecutedImmediately()`, plus the live `QuickFixBase` for the apply path.
  `LanguageRegistry` is obtainable from the platform (`mpsProject.platform.findComponent(...)` — same
  pattern `runRootCheckers` uses for `host`).
- Severity-count helper over `runRootCheckers` output for the before/after summary.

### Step 2 — new toolset `JetBrainsMPSIntentionsMcpToolset.kt` (~1-1.5 days)

- Class extends `AbstractNodeOps` (same base as the node toolset); two `@McpTool` functions per §2.1/2.2
  with `@McpDescription` KDoc-style texts referencing
  `mps-mcp-workflow/references/analysis-tools.md` (convention used by check/print).
- All optional params get Kotlin defaults (the `isOptional` reflection guard from the parameter-contract
  test enforces this); no enum-typed exposed params.
- Register in `plugins/mcp-tools/META-INF/plugin.xml` next to the other 12
  `com.intellij.mcpServer.mcpToolset` entries.
- Intention listing detail: iterate `getAvailableIntentions` pairs; entry fields from
  `getDescriptor()` (`persistentStateKey`, `getKind()`, `getPresentation()`) +
  `executable.getDescription(pairNode, ctx)`; `parameterized` = executable
  `is ParameterizedIntentionExecutable` (also mark when several returned executables share one key).

### Step 3 — enrich `mps_mcp_check_root_node_problems` (~0.5-1 day)

- Add an enriched overload of `problemJsonObject` (AbstractOps.kt:1361) taking the `NodeReportItem`
  + repo/registry and appending `quickFixes` when non-empty; switch `nodeProblemsJsonArray` (1375) to
  it and thread repo/registry through its four call sites in `nodeWithProblemsJsonObject` (1449
  node-level, 1464 property, 1503 reference, 1519 child role) — this covers **both** output modes,
  which share that chain (§1.4). Keep the plain form for `modelWithProblemsJsonObject` (model branch,
  out of scope); `errorProblemJsonObject` (synthetic MCP problems) and `subtreeProblemsJsonArray`
  (`mps_mcp_parse_java_and_insert` post-insert summary — optional follow-up, §5) stay as they are.
- Add `autoApplyQuickFixes: Boolean = false` to the tool
  (JetBrainsMPSNodeMcpToolset.kt:527); in that mode wrap in `executeShortCommandOnEdt` and run the
  ModelChecker-style loop (check → apply all auto-applicable alive fixes → repeat until no progress →
  final check). Return `appliedQuickFixes` alongside the normal report. Update the tool's
  `@McpDescription`.

### Step 4 — integration tests (~1 day)

New `JetBrainsMPSIntentionsMcpToolsetIntegrationTest` on `McpIntegrationTestBase` (fixture already
creates a fresh language + structure model; full platform with bundled languages is loaded, so bundled
intentions/checking rules are available). Add to `McpToolsIntegrationTestSuite`.

- **list**: create a `ConceptDeclaration` (structure model), list intentions on it — assert a known
  bundled `jetbrains.mps.lang.structure` intention appears with correct `id`/`kind`; assert
  `includeAncestors`/`includeDisabled` behave.
- **quick-fix roundtrip**: provoke a bundled checking-rule error that carries a fix — first candidate:
  lowercase concept name → *"Concept name should be capitalized"* capitalize fix
  (verify the exact bundled rule at implementation time; any `jetbrains.mps.lang.structure`
  NonTypesystemRule with an attached `BaseQuickFixProvider` will do — grep
  `languages/languageDesign/structure/source_gen/**/typesystem/*_QuickFix.java` for options). Assert:
  check report contains `quickFixes`; `mps_mcp_apply_intention` applies it; re-check shows the problem
  gone.
- **apply intention**: apply a safe bundled intention on the concept node and assert the model change.
- **auto-apply**: same fixture with `autoApplyQuickFixes=true` — assert `appliedQuickFixes` non-empty
  and final report clean(er).
- **negative**: unknown id → NOT_FOUND with the re-list hint; ambiguous description → error listing
  candidates.

### Step 5 — skill docs (×3 copies each) (~0.5 day)

Source of truth `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`, then `cp` to
`.agents/skills/` and `.claude/skills/` (never touch `classes/` — gitignored build output; all three
tracked copies byte-identical):

1. `mps-mcp-workflow/references/analysis-tools.md` — extend the check-tool output schema (add
   `quickFixes` to the problem shape, document `autoApplyQuickFixes`), and add a new section
   *"Intentions & quick-fixes"* documenting both tools with the check → apply → re-check loop.
2. `mps-mcp-workflow/SKILL.md` — add the two tools to the tool directory/index if one is present.
3. `mps-aspect-intentions/SKILL.md` — verification loop for language authors: after MAKE, use
   `mps_mcp_list_node_intentions` on a sandbox node to confirm registration, `mps_mcp_apply_intention`
   to smoke-test `execute`.
4. `mps-aspect-typesystem/SKILL.md` — note that `helginsIntention`/quick-fixes now surface in
   `mps_mcp_check_root_node_problems` and are applicable via `mps_mcp_apply_intention`.
5. `mps-node-editing/SKILL.md` — validation section: problems may carry `quickFixes`;
   `autoApplyQuickFixes=true` for one-shot repair.

Keep descriptions ≤1024 chars, lean SKILL.md, details in `references/`.

### Step 6 — validation

- Build the `mcp-tools` module (IDEA `build_project` / targeted module build, JDK 25).
- Run the `McpToolsIntegrationTestSuite` run configuration.
- Live smoke test against a running MPS instance via the MCP server: list intentions on a node of a
  sample language; apply one; run check with `autoApplyQuickFixes`.

**Estimated total: ~4 developer-days.**

---

## 4. Risks & mitigations

| risk | mitigation |
|---|---|
| An intention's `execute` touches editor UI (selection, panels) and misbehaves headlessly | Generated code null-checks `getEditorPanelManager()`; selection is simply null. Wrap execution in try/catch → clean error with "may require an open editor" hint. Document in skills. |
| Selection-dependent `isApplicable` filters some intentions out headlessly (e.g. baseLanguage `AddAnnotation_Intention` checks `editorContext.getSelectedNode()`) | Accepted: such intentions are deliberately selection-scoped; headless listing is a subset of what a user might see at some caret position, never a superset of wrong entries. Document in skills. |
| An auto-applied fix does not actually remove (or even shifts) the reported problem | Cannot re-run (snapshot worklist; an executed fix's item leaves the worklist immediately, no re-queue — see §2.3); final re-check reports ground truth; `appliedQuickFixes` + before/after counts make it visible to the agent. |
| `computeWithSession` NPEs if the typechecking session is missing | `editNode` creates it synchronously; `withHeadlessEditor` asserts non-null and fails as a clean `errJson` otherwise. |
| `getAutoApplicable` throws on >1 auto-applicable fixes | try/catch → treat the item as not auto-fixable, still list all fixes. |
| Ambiguity: identical problems/fixes on one node | Deterministic first-match + warning in the response; `description`/`problemMessage` params disambiguate; ambiguous *different* candidates → error listing them. |
| Model changed between list and apply | Stateless re-query-and-match; miss → NOT_FOUND with re-list hint. `isAlive`/`isApplicable` re-checked at execute time by the runtime itself. |
| Listing quick-fixes re-runs checkers (typesystem cost) on every list call | Root-scoped, same cost as the existing check tool; `includeQuickFixes=false` opt-out. |
| Undo/consistency of applied fixes | `executeShortCommandOnEdt` = `modelAccess.executeCommand` on EDT — identical to the IDE's `executeCommandInEDT` used by both the intention menu and the Model Checker. |
| Cross-project resolution | Use `resolveNodeReferencePreferringProject` + the project's repository, as all node tools do. |

## 5. Explicit non-goals / follow-ups

- **Surround-with intentions** — excluded from phase 1 (neither listed nor appliable) on two grounds:
  (a) the apply path's `getIntentionsById` can never match them — it builds a fresh `QueryDescriptor`
  with only `setCurrentNodeOnly(true)`, so `surroundWith` stays `false` and `Filter.accept`
  (IntentionsManager.java:396) rejects every `isSurroundWith() == true` factory — listing them while
  apply returns NOT_FOUND would be a trap; (b) meaningful execution needs a selection range to
  surround, which a headless component does not have. Adding them later requires the apply path to run
  its own `getAvailableIntentions` query with `setSurroundWith(true)` **and** a `selectionNodes`
  parameter driving the headless component's `SelectionManager` before query and execute.
- **Model-level quick-fixes** (`ModelReportItem` from `ModelValidator`, model branch of the check tool)
  — same flavour mechanism, add later if agents need it.
- **`quickFixes` in `mps_mcp_parse_java_and_insert`'s post-insert summary** — its serializer
  (`subtreeProblemsJsonArray`, AbstractOps.kt:1736) inlines its own severity/message and is not shared
  with the check tool; the same enrichment applies whenever that becomes useful.
- **Preferring a visible editor's `EditorContext`** when the root happens to be open (slightly higher
  fidelity for UI-touching intentions) — deliberate omission for determinism; revisit if headless
  execution failures are observed in practice.
- **Intention discovery per language** (`IntentionsManager.getAllIntentionFactories()`) — a possible
  future `mps_mcp_list_language_intentions` for language authors; not needed for the node workflow.
- Exposing MPS quick-fixes through the *platform* MCP server — no platform precedent exists
  (`intellij-community/plugins/mcp-server` `get_file_problems` returns no fix info either); MPS-side
  only, by design.

## 6. Key source references

| what | where |
|---|---|
| Intentions query/apply API | `editor/intentions-runtime/source/jetbrains/mps/intentions/IntentionsManager.java` (78, 217, 356, 402, 491) |
| Intention identity | `editor/intentions-runtime/source/jetbrains/mps/intentions/AbstractIntentionDescriptor.java:45` |
| Kind & executable interfaces | `editor/editor-api/source/jetbrains/mps/openapi/intentions/{Kind,IntentionExecutable,IntentionDescriptor,IntentionFactory,ParameterizedIntentionExecutable}.java` |
| Headless editor | `editor/editor-runtime/source_gen/jetbrains/mps/editor/runtime/HeadlessEditorComponent.java`; in-plugin precedent `JetBrainsMPSNodeMcpToolset.kt:505-516` |
| Sync typechecking session | `editor/editor-runtime/source/jetbrains/mps/nodeEditor/EditorComponent.java:1243-1281` |
| Quick-fix flavours | `core/kernel/source/jetbrains/mps/errors/item/{QuickFixReportItem,QuickFixBase,EditorQuickFix,QuickFixRuntimeAdapter,TypesystemReportItemAdapter}.java` |
| Fix attachment by rules | `core/kernel/source/jetbrains/mps/errors/{QuickFixProvider,BaseQuickFixProvider,QuickFix_Runtime,IErrorReporter}.java` |
| Editor-free apply precedent | `plugins/mps-modelchecker/platform/source_gen/.../ModelCheckerViewer.java:105-162` |
| Command-wrapped intention execution precedent | `plugins/mps-testing/.../lang/test/runtime/IntentionTester.java:37-75` |
| Current check tool | `plugins/mcp-tools/src/.../JetBrainsMPSNodeMcpToolset.kt:527`; `AbstractOps.kt:1361, 1375, 1424, 1603` |
| Skills topology | source `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/` + tracked copies `.agents/skills/`, `.claude/skills/` (manual sync, 3 copies) |
