# D87 — blueprint `properties` / `children` written as object maps

Status: implemented 2026-09-30 (MPS-40222). The plan was approved by a reviewer session after two rounds; the implementation was reviewed in two rounds (see "Implementation" at the end).

## The defect (from `study/docs-defects.md`)

Workers write `"properties": {name: value}` and `"children": {role: [...]}` instead of the array form. The reader rejects it; S8-sonnet **shipped** a DSL skill whose two blueprint files use the map form, because `mps-dsl-memory` only asks that blueprints parse. The entry proposes **S** (one line in each `json` / `childJson` description), **D** (`mps-dsl-memory` dry-runs each shipped blueprint) and an optional **S** (accept the map form).

## What the transcripts show (round 18, `~/MPSProjects/mcp-study/runs-r19`)

| cell | erroring call | recovery |
|---|---|---|
| `S5-sonnet-1:11` | `update_node ADD CHILD`, `properties:{text, minutes:10}` (a JSON number) | `:12`, right first time from the error text alone (1 turn) |
| `S5-opus-1:14` | `update_node ADD CHILD`, map `properties`, map `children`, map `references` nested inside the children map | `:15-17` three `grep`/`sed` reads of `json-format.md` (the first two missed the example at the top), `:18` OK (4 turns) |
| `S7-sonnet-1:25` | `insert_root_node_from_json dryRun`, map `properties` (`{"name":"ServingsConstraintTest"}`) and `children` | `:26` reads `json-format.md`, `:27` rewrites into a file, `:28` next (unrelated `NodeOperationsContainer`, D91) error (3 turns) |

The error they all got (`AbstractNodeOps.kt:132-141`, `requireArray`), with the caller's envelope prefix:

> `Failed to instantiate child node from JSON: 'properties' at $ must be a JSON array, but got JsonObject. Check the JSON blueprint format — see the mps-node-editing skill for reference.`

(`Failed to instantiate node from JSON: …` on the insert path.) It names the field but not the element shape, and only one field is reported per call. All three erroring calls had the tool schema loaded, so prevention belongs in the description (§2) and recovery in the error (§1). No test, source or skill quotes the old message.

## Proposed change

### 1. Server: the rejection gives the array shape (S, primary)

One helper builds the message; `requireArray` calls it for a non-array value. Both callers share `requireArray`: `instantiateNode` (`:261`, `:294`, `:328`, `:335`) and `updateNodeFromBlueprint` (`:667`, `:692`, `:697`, `:722`), so insert, `update_node` ADD/SET CHILD and `update_root_node_from_json` all get it, dry run included.

Cases, by field and by what was sent:

| field | value sent | message |
|---|---|---|
| `properties` / `references` | a **single entry** (rule below) | the `[ ]` is missing: "wrap it in [ ]: `"properties":[{…}]`". Not rewritten as a map. |
| `properties` / `references` | any other object (including a lone `{"name":X}`, S7) | a map: "must be an array of {"name","value"} objects, not a map. Write it as `"properties":[{"name":"text","value":"Simmer…"},{"name":"minutes","value":"10"}]`" |
| `children` | a single entry (rule below) | "wrap it in [ ]" |
| `children` | any other object | a map: shape with the caller's role names, `"children":[{"role":"uses","nodes":[…]}]`; nested blueprints are not echoed |
| `nodes` | object | one node where a one-element array belongs: "a single node still goes in an array: `"nodes":[{…}]`". No "not a map", no echo. |
| any | string, number, boolean | today's wording plus the shape sentence |

**Single-entry rule.** An object counts as a single entry when it has the required keys **and** every key belongs to that field's entry-key set. The sets are exactly what `print_node` emits (`AbstractOps.kt:1590-1676`) plus the reader's alternatives:

| field | required keys | entry-key set |
|---|---|---|
| `properties` | `name`, `value` | `name`, `value`, `type`, `isDefault`, `declared` |
| `references` | `role` and one of `target` / `targetReference` (`AbstractNodeOps.kt:299`, `:727`) | `role`, `target`, `targetReference`, `declared` |
| `children` | `role`, `nodes` | `role`, `nodes`, `declared` |

`declared` is the `isMarkedUndeclared` marker (`AbstractNodeOps.kt:603-606`). A lone `{"name":X}` passes this test for `properties`, but the only property it could set is `name` with no value. S7 sent exactly that, meaning `name = ServingsConstraintTest`, so `properties` requires **both** `name` and `value`. `{"name":X}` is therefore treated as a map.

Every variant ends with the shape sentence: "Blueprint fields are arrays, not maps: properties:[{name,value}], references:[{role,target}], children:[{role,nodes:[…]}] (mps-node-editing references/json-format.md)." This catches S5-opus's nested `references` map. While `children` is a map, the reader never reaches it.

Echo rules: a `JsonPrimitive` value is rendered with `asString` (so `"minutes":10` becomes `"value":"10"`, the form the reader accepts). A non-primitive value, or one longer than 40 chars, is truncated with `…`. At most 5 entries, then `…`. The whole message, envelope prefix included, stays under ~600 chars.

**Pre-scan.** Before a node is instantiated, check its own `properties`, `references` and `children` together and report every map-form field in one rejection (S5-opus: `properties` and `children`). This covers only the fields on the same object. Nested fields are covered by the shape sentence.

**Noted, not done:** an array element that is not an object (`"properties":[["text","x"]]`) reaches `propElement.asJsonObject` (`:264`/`:297`/`:333`/`:355`, `:670`/`:695`/`:708`/`:725`), which throws gson's `IllegalStateException "Not a JSON Object"`. The same helper could cover it, but it is not in the evidence. It is left for a separate entry if it shows up.

### 2. Server: one line in the `json` / `childJson` descriptions (S, as filed)

Append "Fields are arrays, not maps: `properties:[{name,value}]`, `references:[{role,target}]`, `children:[{role,nodes:[…]}]`." to three parameter descriptions: `JetBrainsMPSRootNodeMcpToolset.kt:317` (insert `json`), `:492` (update-root `json`) and `JetBrainsMPSNodeMcpToolset.kt:1032` (`childJson`). The line is not added to the in-text `childJson:` lines of the `update_node` tool text (`:1004`, `:1010`). About 330 chars of always-loaded text; the reviewer agreed to keep it.

### 3. Docs: `mps-dsl-memory` (D)

- **`SKILL.md:29` step 8 "Verify"**: replace "blueprint JSON parses" with "each blueprint under `references/blueprints/` passes a dry run: `mps_mcp_insert_root_node_from_json dryRun:true` into a sandbox model for a root blueprint, `mps_mcp_update_node ADD CHILD dryRun:true` under a sample parent for a fragment. If a dry run rejects every blueprint with `Unknown property …` (a hollow descriptor), MAKE the language and retry." The MAKE is conditional on purpose: the flow normally runs against a built language, and D84 showed that a two-option instruction gets read as "do both". A hollow descriptor rejecting even a correct blueprint was seen in the A8 probe (archive). One more sentence, once D81 is committed: "Warnings for references given by name are expected; see `mps-mcp-workflow/references/reference-formats/response-envelope.md` (Dry-run response)."
- **`SKILL.md:79`** (`references/blueprints/`: "valid compact JSON skeletons and subtree templates") becomes "… in the array form `print_node` emits".
- **`SKILL.md:26` step 5 "Sample sparingly"**: add "derive reusable blueprints from that `print_node` output rather than writing them by hand". This is prevention at the step where S8-sonnet went wrong.

Propagate the blueprint (`plugins/mcp-tools/resources/…/skills/mps-dsl-memory/`) to `.agents/skills/` and `.claude/skills/`.

### 4. Not done: accept the map form (optional S in the entry)

The reader stays strict, consistent with D29 and D56:

- (a) `print_node` emits one canonical form. A second accepted form means shipped blueprints (S8) that do not round-trip through the tools.
- (b) An array entry carries per-entry metadata that a map value cannot: the undeclared-role/property marker (`isMarkedUndeclared`), and `target` vs `targetReference`.
- (c) A role cannot appear twice in a map.

With §1, the map form costs one call.

## Coordination

The worktree holds **uncommitted D81 changes** in the same files: `AbstractNodeOps.kt`, both toolsets (their `dryRun` descriptions sit next to the `json` descriptions), `JetBrainsMPSRootNodeMcpToolsetIntegrationTest.kt`, and `mps-node-editing` / `mps-mcp-workflow` skill copies. D87 is implemented **after D81 is committed**. Separating hunks with `git add -p` on the shared description lines is not worth it.

## Validation

- Integration tests. Both classes are in `McpToolsIntegrationTestSuite` (checked: `JetBrainsMPSNodeMcpToolsetIntegrationTest.class` at `:44`).
  - `JetBrainsMPSRootNodeMcpToolsetIntegrationTest.kt`, insert:
    - map `properties` with a numeric value: `ok:false`, the message holds `{"name":"minutes","value":"10"}` and the shape sentence;
    - single-entry `properties:{"name":"x","value":"y"}`: the message says "wrap it in [ ]", with no map rewrite;
    - single-entry `references:{"role":"r","targetReference":"r:…"}`: "wrap it in [ ]" (the extended key set);
    - `properties:{"name":"x"}` (S7's shape): treated as a map, rewritten to `[{"name":"name","value":"x"}]`;
    - map `children`: the message names the caller's role in `[{"role":"<role>","nodes":[…]}]`;
    - map `properties` and map `children` on one object: both are reported in one rejection (the pre-scan);
    - `nodes` given as an object: "a single node still goes in an array";
    - the array form of the same blueprint still inserts.
  - `JetBrainsMPSNodeMcpToolsetIntegrationTest.kt`, `update_node ADD CHILD` with map `references`: the same rejection through the child path, with the `Failed to instantiate child node` prefix.
- A `McpToolsIntegrationTestSuite` run. It has known single flaky failures, so re-run before blaming the diff.
- `SkillCatalogReplicationTest` and `validate_skill_catalog.py` after propagating §3.
- Re-measure: D87 stays on the recurrence watch. Pass means: in S5/S7, any map-form rejection is recovered on the next call with no skill read; in S8, no shipped blueprint fails the evaluator's dry run (criterion 3, A8).

## Bookkeeping

On landing: move D87 to `docs-defects-archive.md` (fixed, re-measure outstanding), update the archive lines in `docs-defects.md:8` and `:54`, and keep the recurrence-watch row until one clean round.

## Round 1 review outcome

The reviewer confirmed all line refs and transcript claims. Changes applied above:

- `asString` for primitive values;
- the single-entry vs map distinction;
- `nodes`-as-object as its own case;
- the same-object pre-scan;
- the non-object-element gap noted;
- §2 kept;
- §3's MAKE made conditional, plus `:79` and step 5 edits;
- §4's rationale replaced (the earlier "map key order is the only ordering for children" was wrong: the order within a role lives in the array, and gson preserves insertion order);
- the child-path test moved to the Node toolset test;
- the envelope prefix counted in the size budget.

Round 2 nit, applied: the single-entry test is not "keys exactly X". An object is a single entry when it has the required keys and every key is in the entry-key set, which includes `targetReference`, `declared`, and the `type` / `isDefault` that `print_node` also emits. That comes with a `targetReference` single-entry test. The reviewer considers the plan otherwise complete.

## Implementation (as landed)

The implementation differs from the plan in these points, all accepted in review round 1:

- **The pre-scan is folded into the rejection.** When `requireArray` fails on one field, the message also reports every other non-array `properties` / `references` / `children` of the same object. There is no separate pass.
- **The echo is trimmed by entry count.** It shrinks 5 → 3 → 1 → 0 entries until the message fits `SHAPE_MESSAGE_BUDGET` (550 characters, before the caller's prefix).
- The console insert path (`insert_console_command_from_json` → `instantiateNode`) gets the same message.

Review round 1, one must-fix. **A value is never cut inside its quotes.** The message says "Write it as", so a truncated `"Simmer the oats in milk, stirring until c…"` would be pasted and stored with `ok:true`. Now:
- a primitive of up to 200 characters is echoed in full;
- a longer primitive, or any non-primitive, is echoed as a bare `…`, which fails to parse if pasted;
- keys are still cut at 40 characters, because a truncated name fails loudly as an unknown feature.

Review round 1, nits:
- a non-object `nodes` gets "must be a JSON array of node blueprints, but got a string";
- the entry-key sets are hoisted to companion constants;
- the accepted half of the first test sets only `name`;
- a new `update_root_node_from_json` test checks that a rejected rewrite leaves the root and its children unchanged.

Tests: 8 new in `JetBrainsMPSRootNodeMcpToolsetIntegrationTest` and 1 in `JetBrainsMPSNodeMcpToolsetIntegrationTest`.
