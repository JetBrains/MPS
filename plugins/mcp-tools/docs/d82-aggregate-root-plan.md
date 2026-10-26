# D82 — `table_to_bulk_insert.py` cannot emit or verify an aggregate root

Status: implemented and live-checked 2026-10-26 (results in the archive entry), not committed. Plan draft 2. One opus review round ("approve with changes", 2 blocking + 5 should-fix + nits) is folded in below and listed under "Review log". Freshness re-checked against HEAD `1551ef8987b3` (three commits after `789af6ca3551`: D88 JSON diagnosis x2, D97): the script, `mps_dump.py`, `validate_skill_catalog.py`, `SkillScriptsDriftTest`, the suite and `scenarios.md` are unchanged. Only line numbers moved (`SKILL.md` +1 from a new D88 bullet; `docs-defects.md` D82 row now `:40`), and the archive header and "Fixed / closed" lists now end with `D83, D88 and D97 on 2026-10-26`, so D82 is appended there.

## The defect (from `study/docs-defects.md`)

An aggregate root over all rows (S3's `Cookbook` → 40 `RecipeRef`) is outside the script's mapping spec and outside `--verify`, so a worker that uses the script hand-writes the root and hand-checks it. Filed from round 17 as N3 (FEATURE, low, often). The filed remedy is **P-off**: a spec key `"aggregate": {concept, name, role, wrapper, reference}` that emits the root in the same batch, and a `--verify` check of it.

## Is it still valid, and what is it worth? Valid, but small, and gated by adoption

Evidence re-read from the worker transcripts (`~/MPSProjects/mcp-study/runs-rNN/S3-*-worker.jsonl`, step = tool-use index):

| round (dir) | cell | used the script | what the aggregate cost |
|---|---|---|---|
| 17 (`runs-r18`) | S3-opus-1 | yes, `--verify` 40/40 (`:17`) | `:12` a Python edit of the generated JSON appends the `Cookbook`, one insert at `:13`; `:19-20` two Python walks of the dump to confirm its 40 refs. 3 turns (`:18` is a D83 single-root check of a Recipe, not aggregate cost) |
| 17 (`runs-r18`) | S3-sonnet-1 | yes, `--verify` 40/40 (`:24`) | `:17-19` inspect the generated JSON and build `cookbook_insert.json`, `:20` a **second** insert. 4 turns |
| 18 (`runs-r19`) | S3-opus-1 | yes, `--verify` (`:16`) | `:11` one Python step appends the `Cookbook`, a single insert at `:12`, no separate check. 1 turn (the "1 turn, was 3" of the docs-defects round-18 note) |
| 18 (`runs-r19`) | S3-sonnet-1 | no (1 mention only) | n/a |
| 21 (`runs-r22`) | S3-opus-1 | script mentioned | `:11-12` Python builds the Cookbook, a **second** insert. 2 turns |
| 21 (`runs-r22`) | S3-sonnet-1 | yes, `--verify` (`:25`) | `:17-18` Python writes the Cookbook, a **second** insert. 2 turns |
| 33 (`runs-r33`) | S3-sonnet-1 | yes, `--verify` (`:22`) | `:17` Bash writes `cookbook-….json`, `:18` a **second** insert. 2 turns (the dump at `:20` is needed by `--verify` anyway) |
| 33 (`runs-r33`) | S3-opus-1 | one mention only | n/a |
| 43 (`runs-r43`) | S3-opus-1, S3-sonnet-1 | **no**, 0 mentions of the script; both wrote a CSV→blueprint converter inline (`S3-opus-1:6`, `S3-sonnet-1:7`) | n/a |

Adoption of the script, cells out of 2: round 17 2/2, round 18 1/2, round 21 2/2, round 33 1/2, round 43 0/2.

Two conclusions:

1. The hole costs **1-4 turns** in each cell that runs the script (median 2), and in every such cell the Cookbook is the one thing `--verify` does not check.
2. Adoption bounds the gain, and in round 43 it fell to zero. D82 cannot lower S3's turn count in a cell that does not pick the script. That is a model behaviour (round 18's note on archived D69 says the same of sonnet) and is out of scope here. The plan therefore ships the feature, but the re-measure criterion is conditional ("in a cell that runs the script").

The hand-written Cookbook is not wrong, only expensive. It is also the one part of S3's acceptance (`done_criteria.md` item 3) that `--verify` cannot vouch for.

## Proposed change

All changes are in the one script, its docs, and one test. The script is `mps-node-editing/scripts/table_to_bulk_insert.py`. Its **source of truth is the blueprint copy** under `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/`; `.agents/skills/` and `.claude/skills/` get a byte copy (`SkillCatalogReplicationTest`, root `CLAUDE.md`). No server (Kotlin) change.

### 1. Spec: a top-level `aggregate` object

```json
"aggregate": {
  "concept": "my.lang.structure.Cookbook",     // the root concept, fully qualified
  "name": "All Recipes",                       // literal; written to the `name` property
  "role": "recipes",                           // child role of the root that holds the wrappers
  "wrapper": "my.lang.structure.RecipeRef",    // one wrapper child per row
  "referenceRole": "recipe"                    // the reference on each wrapper; target = the row's name
}
```

- One wrapper child per **row**, in table order, each referencing the row by its `nameColumn` value. It uses the same name-based reference form the row-level `referenceLists` already emit, so the tool resolves it after all roots exist, and the existing note about forward references applies unchanged.
- The root is appended as the **last element of the same top-level array**, so it lands in the same atomic insert as the rows. `--limit N` shortens the rows and therefore the aggregate, consistently in build and verify.
- All five keys are required. `name` is a literal, not a column. (Not supported, deliberately: an aggregate root without a `name`, extra properties on the root, filtering rows, several aggregates, wrappers that are not one-per-row. Say so in the docstring. A worker needing more writes the root by hand as today.)
- Validation, all `BadInput` (exit 3, message names the key or row). Where it runs matters, because `load_spec` (`table_to_bulk_insert.py:143-153`) never sees the rows:
  - in `load_spec`: a missing or empty aggregate key; no `nameColumn` in the spec (the targets are row names); an `aggregate.concept` equal to the spec's row `concept`. The last is **rejected**: with one concept the aggregate is a candidate target in its own wrappers' scope, so an aggregate name equal to a row name would make that row ambiguous, and `--verify` would need a `(concept, name)` re-keying and a second duplicate check to stay exact. Rejecting keeps `by_name` as it is;
  - in `build()` (the one place that sees both spec and rows, and the one `verify()` also calls): two rows with the same name, because a by-name aggregate would reference one row twice and never the other. The row-level docstring says an ambiguous name needs an explicit ref; the aggregate cannot take one, so the script stops rather than emit a silently wrong root. Empty name cells are already rejected per row (`:187-189`), so there is no new check for them. The check runs only when the spec has an `aggregate`, so existing tables are unaffected;
  - `targetByName: false` is not an aggregate option and is not read.
  - Order of errors in `--verify`: the dump is loaded (`:372`) before `build()` (`:390`), so a bad dump is reported before a bad spec or table. Not worth a docstring line.

### 2. Build output

`build()` returns `(blueprint, counts)`. With an aggregate, the blueprint has `rows + 1` roots. Counts:
- `roots` stays "length of the array" (so 41 for S3), because that is what the worker compares with the model's root count and with `fixReferences`.
- `children` and `references` keep their meaning (built from `childLists` / `referenceLists` of rows). The aggregate's wrappers are reported in a new key `aggregateReferences` (40), present only when the spec has an `aggregate`. This keeps every existing summary line, doc example and test unchanged.

### 3. `--verify`

`verify()` already builds the expected nodes with `build()` and compares each with `_compare` (properties, children, references). The aggregate is the same shape of node, so:

- `by_name` stays exactly as it is (rows only, filtered to the row concept; the concepts are distinct by the load check). Build a second dict `aggregate_by_name` from the dump roots of the aggregate concept.
- After the row loop, take `build()`'s last blueprint node (the aggregate), pair it with the first same-named root in `aggregate_by_name`, `_compare` it, and report differences prefixed `aggregate (<name>): …`. `_compare` already reports a wrong wrapper count (`recipes: expected 40 child(ren), got 39`), a wrong order or target (`recipes[3]/recipe: expected 'Pad Thai', got 'Pho'`), and an unresolved target. `build()` is called once, so the loop must zip the rows against `expected[:len(rows)]` and treat `expected[-1]` as the aggregate.
- A missing aggregate root is one difference, `aggregate (All Recipes): no Cookbook root with that name in the dump`.
- Summary: add `"aggregate": "matched" | "mismatched" | "missing"` (only when the spec has one). `rows`, `matched`, `mismatched`, `missing` keep counting rows only. `differences` counts the aggregate's lines too. `extraRoots` = unclaimed row-concept roots plus unclaimed aggregate-concept roots (a second `Cookbook` is an extra root); count exactly those two pools, not every root in the dump. Exit 1 on any difference, as today.
- `--verify --limit N` against a full model reports the aggregate as mismatched (N wrappers expected, 40 found), the same way it already reports extra rows. State it in the docstring.
- The `childrenTruncated` guard in `_compare` still protects the aggregate's role at `nodeDepth=1`, with the existing message. No new dump requirement: the wrappers sit one level below the root, the same depth as the row-level `referenceLists` wrappers that `--verify` already checks.

### 4. Docs (blueprint copy first, then the two byte copies)

- `table_to_bulk_insert.py` module docstring and `--help`: the new spec key with the "not supported" list and the "aggregate concept must differ from the row concept" rule; the `aggregateReferences` key in the output; the `aggregate (…)` line and `aggregate` summary key in the `--verify` section. Also the statements that the aggregate makes untrue as written: `extraRoots` "of the spec's concept" (`:81-82`), exit 0 "every row matched" (`:87`), and the `build()` docstring (`:260`). Say that the aggregate is the last array element, so a failed insert rolls the whole batch back. Keep the literal `/tmp` out of the new text (`validate_skill_catalog.py:179` rejects it). This docstring plus `--help` is the contract the workers read.
- `mps-node-editing/SKILL.md` "Scripts": one sentence — "a Cookbook-style root that references every row is the spec's `aggregate`; the same `--verify` checks it" — so the worker does not reach for a second insert. Also `:164` (the printed keys `{path, roots, children, references}`: add the optional `aggregateReferences`) and `:189-191` ("exits 0 when every row matches": also the aggregate). No change to the example output lines (the bundled example has no aggregate).
- `MCP_TOOLS_VERSION_TESTED` and `TOOL_DEPENDENCIES` stay **unchanged**: no test asserts the version, and no tool is added.
- `mps-mcp-workflow/references/bulk-creation.md:14` ("From a table"): one clause, "including one aggregate root that references every row".
- The no-`python3` fallback paragraph in `SKILL.md` gets a half sentence: add the aggregate as the last element by hand.
- The bundled `examples/courses.map.json` is **not** changed: the `SkillScriptsDriftTest` asserts 40 roots for it and the docs print its output. The new tests build their aggregate spec in code from that map.

### 5. Study docs

- `study/docs-defects.md`: mark D82 **fixed** with this plan, the files and the test names, "re-measure on the next S3 round, only in a cell that runs the script"; move the row to `docs-defects-archive.md` per the file's convention. The archive table has other columns (`id | where | …`), so the row is reshaped, not pasted. Add D82 to the header sentence in `docs-defects.md` and to both lists in the archive (the header list and "Fixed / closed"). Mention that the key is `referenceRole`, not the filed `reference`, for consistency with `referenceLists`.
- The recurrence-watch row stays until one round passes without an instance. Its "last seen" is stale: set it to round 33 (`S3-sonnet-1:17-18`; the table above shows rounds 17, 18, 21 and 33). Signature: a Python edit or a second insert that adds the `Cookbook`, or a separate check of it. Positive signal that the fix took: the worker's map has an `aggregate` key.
- `study/scenarios.md:335`: replace "the aggregate cookbook root is outside the spec (D82)" with "the aggregate cookbook root is the spec's `aggregate` (D82)".
- Add one line to the entry that script **adoption** was 0 of 2 in round 43 (no defect id: model behaviour; the check in S3's review is "script name in the transcript", which `scenarios.md:75` already asks for).

## Tests (`SkillScriptsDriftTest`, same style as the two `table_to_bulk_insert` tests)

Spec = the bundled `courses.map.json` plus an aggregate (`Catalog` / `entries` / `CourseRef` / `course`, name `Course Catalog`, a name that is not a course), written to a temp file in the test. The existing `modelDumpOf(blueprint)` already records every node's name and resolves references by name, so it covers the aggregate root unchanged (the unnamed wrappers never enter `referenceByName`; their `target` stays the row name, which is what `_compare` reads). Two test methods, in the style of the existing two:

**Method 1, build and bad specs**
1. **Build:** exit 0; summary `roots == 41`, `aggregateReferences == 40`, `children`/`references` equal the no-aggregate run's; the last root is the `Catalog` with a `name` property and 40 wrapper children whose `course` targets equal the 40 row names in order.
2. **Bad specs**, each exit 3 with the key or row named: an aggregate missing a key; an aggregate without `nameColumn`; an `aggregate.concept` equal to the row concept; a table with a repeated name (the check lives in `build()`, so it must fire without `--verify` too).

**Method 2, verify and mutations**
3. **Clean verify:** the dump of that blueprint verifies, exit 0, `matched == 40`, `aggregate == "matched"`, `extraRoots == 0`.
4. **Changed aggregate:** retarget one wrapper's `target` (only `target` is read for name targets) → exit 1, exactly one difference line starting `aggregate (`, naming the child index; `mismatched == 0` and `aggregate == "mismatched"`. Drop the **last** wrapper (dropping an earlier one also shifts every later pair and yields about 39-k retarget lines) → exactly one line, the child-count difference. Remove the root → one `no Catalog root` line, `aggregate == "missing"`. Add a second `Catalog` root → `extraRoots == 1`.
5. **No aggregate:** the two existing tests run unchanged and must still pass (regression guard on the summary shape).

Run: `installSkills()` installs from classpath resources (`SkillScriptsDriftTest.kt:326-335`), so the module must be rebuilt first, or the run uses the old script: IDEA `build_project`, then the umbrella run configuration with `MCP_TESTS=McpContractAndSkillsTestSuite`. That suite already holds `SkillScriptsDriftTest` (`McpContractAndSkillsTestSuite.java:51`) and `SkillCatalogReplicationTest`, so no registration step is needed. Also run `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py`. Check that the new test names appear in the run.

## Live check (done 2026-10-26: passed, see the D82 archive entry)

On a scratch copy of an S3 project: a map for `recipes.csv` with the aggregate (`Cookbook`, `All Recipes`, the `RecipeRef` role names read off `get_concept_details`), one insert of the printed file, `fixReferences.stillBroken == 0` for all 41 roots, a `nodeDepth=1` dump, `--verify` → 40 matched and `aggregate: matched`, `check_root_node_problems` 0 errors. Then seed one wrong wrapper target in the model and confirm `--verify` reports it. Record the result in the archive entry, as D69 and D81 did.

## Alternatives rejected

- **A generic `extraRoots` list in the spec** (several hand-described roots): more surface and more failure modes for a single known use; D82's own filed shape is one aggregate.
- **A server-side "reference every root of concept X" tool or blueprint macro:** a Kotlin change, new tool text always loaded, for something a 5-key spec solves. Also would not give `--verify`.
- **A second script (`aggregate_root.py`):** the worker would have to find and run a second tool and the verify half would duplicate `_compare`.
- **Documenting a hand recipe only (D):** that is the current state; the cost is the extra insert and the separate check, which a recipe does not remove.

## Risks and open points

- **Adoption, not capability, bounds the gain** (see above). Not addressed here.
- **Wrapper concept with extra required properties:** a wrapper that needs more than its reference is not expressible (as for row-level `referenceLists`). Out of scope; the "not supported" note says so.
- **The uniqueness check cannot reject a table that was fine before:** it runs only when the spec has an `aggregate`.
- **Order and atomicity:** the aggregate is the last array element, so an insert failure rolls back the whole batch (the tool is atomic); stated in the docstring (see §4).
- **Same concept for rows and aggregate:** decided in review, rejected at load (§1).

## Review log

Round 1 (opus, "approve with changes"). Findings and what was done:

| id | finding | disposition |
|---|---|---|
| B1 | The evidence table said round-17 sonnet had no script run, and left out rounds 18 and 21 | Re-checked against the transcripts: the reviewer is right (`runs-r18/S3-sonnet-1:14, :24`). Table rebuilt over rounds 17, 18, 21, 33, 43; cost corrected to 1-4 turns, adoption series added (2/2, 1/2, 2/2, 1/2, 0/2); the D83 single-root check is no longer counted |
| B2 | "Drop one wrapper" yields about 39-k extra lines, not one | Test now drops the last wrapper |
| S1 | Reject a shared row/aggregate concept at load, not support it | Taken. §1 and §3 drop the `(concept, name)` re-keying; the open point is closed |
| S2 | The duplicate-name check cannot live in `load_spec` | Moved to `build()`; the dump-before-spec error order is noted |
| S3 | Docs list incomplete (`SKILL.md:163`, `:187-189`, docstring `:81-82`, `:87`, `build()` docstring, the `/tmp` ban) | Added to §4 |
| S4 | Test run instructions wrong: the suite is `McpContractAndSkillsTestSuite`; add `validate_skill_catalog.py`; the rebuild is essential | Taken; checked `McpContractAndSkillsTestSuite.java:51` |
| S5 | Recurrence-watch "last seen" is stale | §5 sets it to round 33 and adds the positive signal |
| nits | Test aggregate name must not equal a course name; only `target` needs retargeting; `--limit` + `--verify`; "unchanged" for `MCP_TOOLS_VERSION_TESTED` / `TOOL_DEPENDENCIES`; archive column reshaping; two test methods | All folded in above |

The reviewer's checks that held: the design fits `build()` / `_compare` as they stand; `nodeDepth=1` is enough (round 17's row-level `seeAlso` wrappers verified 40/40 at that depth); a server-side macro would not have covered `--verify`; the scope is proportionate (about 40 lines of Python, doc sentences, one test file).
