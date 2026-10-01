# D81 — dry-run "did not resolve" warnings are misread

Status: implemented 2026-09-30 (uncommitted at the time of writing). Settled with a reviewer session over one plan round and one implementation round. Sections 1–4 are the round-1 plan; "Round 2" below records what changed.

## The defect (from `study/docs-defects.md`)

Workers dry-run a blueprint, get `target '<name>' did not resolve` for targets that already exist in the model or in the same batch, and then rewrite the names to node ids or dry-run again. The real insert reports `fixReferences.stillBroken 0` (round 17 `S1-opus-1:76-79`, round 18 `S1-opus-1:21-25` plus 2 needless dry runs, round 15 `S3-opus-1:11` as D69). No statement in the catalog gives the rule correctly. Several say the opposite ("the subsequent write may produce a broken reference").

## The rule, verified in the code

`resolveReferenceTarget` (`common/AbstractNodeOps.kt:462-470`) resolves a target only if it looks persistent: it starts with `r:` or `i:`, or it contains a `.`. Its two callers are `applyReferenceUpdate` (`:407-453`, the insert/child path) and the staging loop of `updateNodeFromBlueprint` (`:705-738`, the `update_root_node_from_json` path).

| target form | dry run | real write |
|---|---|---|
| `r:…` / `i:…` that resolves | assignability checked, no warning | stored as a persistent ref |
| `r:…` / `i:…` that parses but names no node | **no warning**. `createNodeReference` returns a pointer and `targetNode` is null, so `:444` is taken silently | stored as a pointer to nothing. `performFixReferences` counts it `stillBroken` |
| dotted `model.Root` that matches a root (`AbstractOps.resolveNodeReference`, `:3242`/`:3281`) | assignability checked, no warning | stored as a persistent ref |
| dotted string that matches no root | warning | `ResolveInfo.of(str)` dynamic ref, then scope resolution |
| **plain name** (no `.`, no prefix) | **always a warning; never looked up**, even when a root of that name exists (the integration test at `JetBrainsMPSRootNodeMcpToolsetIntegrationTest.kt:407` pins a warning for `BaseConcept`) | `ResolveInfo.of(name)` dynamic ref. The insert attaches every root of the batch first, then `performFixReferences` runs `ResolverComponent.resolveScopesOnly` (`:1253`), which resolves the name in the **role's scope** |

So the dry-run warning list is **not** "the set of references that will stay broken". It is "every target given by plain name, plus dotted names that match no root". A root in the model, a node of the same batch, a closure's `it`, and a typo all look the same. Conversely, an **empty** list does not mean clean: a stale `r:` id is not warned. The only reliable answer is `fixReferences.stillBroken` of the real write (then `check_root_node_problems`).

## Proposed change

### 1. Server: say the rule where the worker reads it (S, small)

The worker acts on the warning text, not on the skill. Today it says "target 'X' did not resolve; production run would create a dynamic reference, but dry-run skips this step". Replace `dryRunDynamicReferenceWarning` (`AbstractNodeOps.kt:458`) with two texts:

- plain name:
  `Dry run at $.references[0]: target 'X' is a name, which a dry run does not look up (existing and same-batch nodes are listed too). The write stores it as a dynamic reference and resolves it in the role's scope; read fixReferences.stillBroken in the write's response.`
- dotted string that matched no root:
  `Dry run at $.references[0]: target 'a.b' matches no root '<model>.<root>'. The write stores it as a dynamic reference and resolves it in the role's scope; read fixReferences.stillBroken in the write's response.`

Both callers already pass `targetRefStr`, so the helper can pick the text itself (`'.' in targetRefStr`). The two assertions in `JetBrainsMPSRootNodeMcpToolsetIntegrationTest.kt:405-409` and `:784-788` are updated to the new plain-name text.

### 2. Server: the `dryRun` parameter descriptions

`JetBrainsMPSRootNodeMcpToolset.kt:318` and `:493` say "Standard validation warnings (such as dynamic-reference creation details)". Replace that with: "A dry run checks concepts, roles, properties and assignability. It does not look up reference targets given by name, so it warns for each of them, including ones that exist; `fixReferences.stillBroken` of the real write is the reference check." `JetBrainsMPSNodeMcpToolset.kt:1034` (`update_node`) gets the second sentence.

### 3. Docs: one canonical statement, one-line pointers (D)

Canonical home: `mps-mcp-workflow/references/reference-formats/response-envelope.md`, "Dry-run response". Replace `:19` and `:31` with the table above, reduced to prose: what is looked up, what is warned, that an empty list is not proof, and that `stillBroken` is the answer. The example warning string is updated to the new text.

One line plus a pointer to that section, replacing the current text, in:

- `mps-node-editing/SKILL.md:62`, step 4. Drop "Insert with `dryRun: true` first if the blueprint is large". New text: a dry run catches concept/role/property/assignability errors. Its reference warnings list every name target, so do not rewrite names because of them. Check `fixReferences.stillBroken` after the write.
- `mps-node-editing/SKILL.md:166-168`: generalise "names the table itself defines" to "name targets".
- `mps-node-editing/references/json-format.md:59-68`: new example string. "fix the reference target before writing, or accept a potentially broken reference" becomes the pointer.
- `mps-node-editing/references/staged-construction.md:16`: "a non-empty list is the set of refs that will be left dynamic" is kept (true), and the sentence adds that existing names are listed too and that an empty list does not prove a stale `r:` id resolves.
- `mps-node-editing/references/troubleshooting.md:11`: the vague bullet becomes the one-liner.
- `mps-mcp-workflow/references/bulk-creation.md:10`: already correct for the same-batch case. Widen it to "every name target, not only same-batch ones".
- `mps-node-editing/scripts/table_to_bulk_insert.py:22-26` (usage docstring): same widening.
- `mps-console/references/mcp-insertion.md:117`: example string updated; the statement stays.

Cross-skill pointers use the exact same-origin boilerplate that `validate_skill_catalog.py` accepts. Blueprint first, then copied over `.agents/skills/` and `.claude/skills/`.

### 4. Not done (S, optional in the entry)

The entry's optional **S** asks for resolving plain names on the dry-run copy. It is **not** proposed. The real resolution is scope-based (`resolveScopesOnly`) and needs the nodes attached to the model, and a dry run is built so that it never attaches them. Faking that (attach, resolve, detach inside the dry-run command) would fire model events and mark the model dirty. The benefit, a shorter warning list, is small once the text of the warning is correct.

## Open questions for the reviewer

- **Q1.** Also warn in a dry run for a persistent `r:`/`i:` ref that parses but resolves to no node (both callers, `targetRef != null && targetNode == null`)? That is a real "will stay broken" case that the dry run is silent about today. It is a two-line change, but it is outside the D81 text. My inclination: yes, as a third text ("names no node; the write will leave it broken"). The docs would then say that an empty list means no stale ids, though scope failures can still appear later.
- **Q2.** Is changing the warning wording OK given that `SkillScriptsDriftTest` / scenario docs may quote it? A grep shows only the two integration-test assertions and the skill examples listed above; the study `runs-*` transcripts are history and stay untouched.

## Validation

- `McpToolsIntegrationTestSuite` (covers the two updated assertions, plus a new one for the dotted text and, if Q1 is yes, for a stale `r:` id), and `SkillCatalogReplicationTest` for the three catalogs.
- `validate_skill_catalog.py` on the blueprint catalog.
- No live MPS check is possible in this session (the MPS MCP server is not connected). The server change is a string plus a branch, which the integration tests cover.

## Bookkeeping

Once implemented: D81 is moved to `docs-defects-archive.md` as fixed, with the re-measure condition "no rewrite of names and no second dry run after a dry run whose warnings name existing or same-batch targets (S1, S3)". Its recurrence-watch row stays until it has been absent for one round, per the watch rules.

## Round 2 (review outcome, as implemented)

- **Warning volume.** The round-1 text would have doubled each per-reference line (D69's 65 warnings, 17 KB, would have become ~30 KB). Now each reference gets one short line, and the rule is appended **once per response** by `withDryRunReferenceRule` when at least one plain-name warning is present. It is applied at the 5 top-level dry-run returns: `insert_root_node_from_json`, `update_root_node_from_json`, `update_node` add child and replace child, and `insert_console_command_from_json`, which shares the path. The console returns no `fixReferences`, so the rule also names `mps_mcp_check_root_node_problems`.
  - plain name: `Dry run at $.references[0]: target 'X' is a name, not looked up.`
  - dotted string that matches no root: `… matches no Model.Root and no root of that name; it will very likely stay broken. Use an r:/i: reference, or Model.Root with the model's long name.` A dynamic ref whose resolveInfo is `a.b` looks up a node *named* `a.b`, so this is an alarm, not noise.
  - `r:`/`i:` that names no node, or does not parse: `… names no node; the write will leave it broken.` The prefix is checked before the dot.
  - rule: `A dry run does not look up reference targets given by name, so every name is listed above, existing and same-batch nodes included. The write resolves names in each role's scope; check fixReferences.stillBroken in its response (or mps_mcp_check_root_node_problems).`
- **Q1 = yes.** A stale id is now warned on both paths (`applyReferenceUpdate` and the `updateNodeFromBlueprint` staging loop, now `else if (dryRun)`). Tests: a dry run on insert and on update_root, and `stillBroken == 1` on the real insert of the same blueprint.
- **Q2.** Only the two integration-test assertions and the skill docs quoted the old text. The `table_to_bulk_insert.py` docstring, which is also its `--help`, was rewritten, not just widened.
- **Section 4 reason, sharpened.** Name resolution needs the nodes attached: `ScopeResolver` sees only model roots (comment at `JetBrainsMPSRootNodeMcpToolset.kt:386-393`).
- **Deferred, not part of D81.** `insert_root_node_from_json` calls `instantiateNode` without a per-root `jsonPath`, so every root of an array reports `$.references[0]` (and `$…` in errors). **S**: pass `$[i]` for each root of an array insert. The test `dryRun explains name targets once however many there are` pins today's paths, so that fix will change its assertion deliberately.
