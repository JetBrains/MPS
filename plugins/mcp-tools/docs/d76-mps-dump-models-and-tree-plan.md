# D76 — `mps_dump.py` has no module/model view and no tree view

Status: implemented 2026-09-30 (uncommitted at the time of writing). The plan was settled with a reviewer session in one round; the revisions listed at the end override the sections above where they differ. Archived as D76 in `study/docs-defects-archive.md`.

## The defect (from `study/docs-defects.md`)

A residual of archived D58. `mps_dump.py roots` on a project or module dump that has no `rootNodes` prints `{"roots":0,"lines":0}` and exits 0, so the agent concludes the model is empty. There is no `models` view and no `tree` view, and opus re-wrote a tree view 4×. Every sonnet opener also passed `includeDependencies`, which roughly doubles the listing. Remedy on file: **P-off** `models` and `tree [--depth N]` subcommands, exit 2 on `roots` without root nodes; **D** `finding-things.md:28` — omit `includeDependencies` for orientation.

## What the transcripts show (re-read 2026-09-30)

**`roots` on a project dump** (round 16, `runs-r17`):
- `S6-sonnet-1:5` `get_project_structure(includeModels, includeDependencies)` → 42.5 KB temp file. `:6` `mps_dump shape` → exit 3 "use `roots`" (D58 works). `:7` `roots` → `{"roots":0}`, exit 0. `:8-12` five `python -c` probes: top-level keys, `data` keys, modules with kind/name, models per module with reference, then `rootNodesCount` per model. The last one is the answer the worker wanted from the start.
- `S7-sonnet-1:12` the same call; `:13` `--help`; `:14` `roots` → 0; `:15` `Read limit 150`; `:16-17` Python for modules and then models per module.
- `S8-sonnet-1:8-11`: the same shape.

So the "models" view the workers built is: module kind, module name, module reference, and per model its name, reference and `rootNodesCount`.

**`shape` used to mean "the tree of this node"** (round 16 and round 18, `runs-r19`):
- `S8-opus-1:26` `shape` on a `print_node` dump → exit 3 "use `node`"; `:27` writes `/tmp/tree.py`: `role: Concept {set props} refs={role: target}`, indented, recursive over `children[].nodes`.
- `S6-opus-1:27-28` (`--help`, then `shape`, then its own walker), `:55`.
- Round 18: `S1-opus-1:37→38`, `S2-sonnet-1:23→24`, `S6-opus-1:45→46`: each is `shape` on a node dump → exit 3 → its own recursive Python walker.
- All six walkers print the same thing: indentation per level, the containment role, the concept, the node id (the last segment of the reference), non-default property values, sometimes references as `role → target name`. None of them used `node`, the subcommand the D58 message names, because `node` prints one level only.

## Dump shapes the script must handle (from `JetBrainsMPSProjectMcpToolset.kt`)

- **Project dump:** `{"modules": [...]}`.
- **Module entry or module dump:** `models: [...]` with `includeModels` (implied by `includeRootNodes` / `includeNodes`), otherwise `modelsCount` (`:465-469`).
- **Model entry or model dump:** `rootNodes: [...]` with `includeRootNodes` (implied by `includeNodes`), otherwise `rootNodesCount` (`:634-641`).
- **Node records:** deep (`children[].nodes`) or shallow and depth-cut (`children[].children` = `{name, reference}`, marked `childrenTruncated`).
- `print_node` produces a single node record; `get_project_structure(startingPoint=<node>)` also produces one.

## Proposed change

All script changes are in `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/mps-mcp-workflow/scripts/mps_dump.py` (the blueprint), then propagated to `.claude/skills` and `.agents/skills`.

### 1. `roots`, `count` and `node` refuse a node-less structure dump (exit 3)

A new helper, `_has_root_listing(dump)`, is true when the dump is a node dump, or when at least one model record in it (the dump itself, `models[]`, or `modules[].models[]`) carries a `rootNodes` key. It is true even if that key is empty.

When `dump_kind` is model/module/project and `_has_root_listing` is false, `roots`, `count` and `node` raise `BadInput`. The message names what the dump does hold and both ways on:

```
bad input: no root nodes for `roots`: this get_project_structure project dump lists 3 modules and 12 models but was made without includeRootNodes; use `models` to list them, or re-call get_project_structure with includeRootNodes=true, nodeDetail="names"
```

For a module dump that has no models (`modelsCount` only), the message says `includeModels`/`includeRootNodes` instead.

- **Exit 3, not the 2 the entry names.** The docstring defines 2 as usage (argparse) and 3 as bad input. D58 already treats a dump of the wrong kind as bad input, and a dump without the needed section is the same class. Keeping one code for "this file cannot answer this subcommand" is simpler for the agent and for the test.
- **Unchanged:** a model dump with `rootNodes: []` is a genuinely empty model and still exits 0 with `roots: 0`. A right-kind dump with no match (`--concept NoSuchConcept`) also still exits 0.
- **Mixed dumps:** a project dump in which some models were dumped with roots passes, and `roots` lists what is there. It cannot happen from one tool call (the flag is global), so no extra rule is needed.

### 2. New `models <file>` subcommand

It reads a project, module or model dump. It prints one row per model:

```
Language  mcp.study.recipes            mcp.study.recipes.behavior     1  r:3182e5cd-…(mcp.study.recipes.behavior)
Language  mcp.study.recipes            mcp.study.recipes.structure    6  r:…
Generator mcp.study.recipes.generator  …templates@generator           2  r:…
```

The columns are module kind, module name, model name, root count, and model reference. The root count is `len(rootNodes)` if that key is present, else `rootNodesCount`, else `?`. A module with no `models` list prints one row, `<kind> <name> - <modelsCount> models (dumped without includeModels) <module reference>`. On a single model dump, the module columns are empty.

- **Summary:** `{"modules": M, "models": N, "roots": R}`.
- **Wrong kind:** on a node or concept-details dump, `models` exits 3 through `_require_kind` and names `tree` / `shape`.

### 3. New `tree <file> [nameOrRef] [--depth N] [--all]` subcommand

It prints an indented subtree, two spaces per level, with one line per node:

```
ConceptMethodDeclaration 1999961993950912826 name=totalMinutes
  returnType: IntegerType 1999961993950912825
  body: StatementList 1999961993950912804
    statement: LocalVariableDeclarationStatement 1999961993950912806
      …
        operand: VariableReference 1999961993950912810 -> variableDeclaration=sum
```

- **Line format:** `[role: ]Concept id [prop=value …] [-> refRole=targetName …]`.
  - `id` is the last `/` segment of `reference`.
  - Properties are the `props_detail` values whose source is `set`. Default-valued and `<default>` ones are omitted, as every hand-written walker did.
  - References use `target` (the name). The full `targetReference` is left to `node`.
  - Values are quoted only when they contain a space.
- **Start point:** the positional `nameOrRef` picks the subtree through `node_by_key`, as `node` does. Without it, the command prints every root in the dump: the node itself for a node dump, and each `rootNodes` entry for a model, module or project dump.
- **`--depth N`:** stops N levels below the start. A node at the cut-off whose children were not printed ends with `… (+k children)`.
- **Shallow and depth-cut children:** entries without `concept` (`{name, reference}`) print as `role: <name> id (not inlined)`. So `tree` on a `print_node deep=false` dump is a one-level listing that says why it stops.
- **`--all`:** keeps `shortDescription`, `virtualPackage` and `smodelAttribute`, as `shape --all` does. By default `smodelAttribute` children are shown, because generator macros live there and `S8-opus-1:27` needed them. The `--all` switch only affects the two noise properties. **Open question Q2.**
- **Summary:** `{"nodes": n, "depth": maxDepthPrinted, "truncated": …}`. Output is capped by `--max-lines` like the other subcommands, and the file always holds the whole tree.
- **Wrong kind:** a structure dump without root nodes gets the §1 message. A concept-details dump gets the D58 message that names `shape`.

### 4. The D58 message for `shape` on a node dump names `tree`

`_KIND_LABELS["node"]` changes from `node` to `tree`. The message then reads `… this looks like a print_node / get_project_structure node dump; use \`tree\` instead (or \`node\` for one node's features)`. For model/module/project dumps, `shape` names `roots` / `models`, whichever the dump can answer.

**Open question Q1:** should `shape` on a node dump simply run `tree`? Five of six observed `shape` calls on a node dump wanted exactly that. I recommend **no**. `shape` means the concept shape everywhere in the catalog (`concept_shape.py`, `mps-model-manipulation/SKILL.md:57`), and D58 chose strict kinds on purpose. The only cost is 1 turn, the same as today, but now it leads to the shipped view instead of a hand-written walker.

### 5. Docs

- **`mps_dump.py` docstring:** the CLI list gains `models` and `tree`. The exit-code paragraph gains the §1 rule.
- **`mps-mcp-workflow/SKILL.md` "Scripts":** the subcommand list gains `models` and `tree`, and there is one example for each: `models` on a project dump, and `tree <print_node file> --depth 3`. Add one sentence: "`roots` needs a dump made with `includeRootNodes`; on a structure-only dump it names `models` instead."
- **`references/finding-things.md:28` (D part of the entry):** add "For orientation (which modules and models exist, and how many roots each model has), call `mps_mcp_get_project_structure` with `includeModels=true` only. `includeDependencies` adds every module's and model's dependency and used-language lists; pass it only when the question is about dependencies."
- **`includeDependencies` `@McpDescription`** (`JetBrainsMPSProjectMcpToolset.kt:113`): "Include module/model dependencies and used languages. Leave off for orientation; it adds a dependency block to every module and model." The workers that passed it had not read `finding-things.md` before their first call, and this text is always loaded. **Open question Q3:** take this server-side line, or keep D76 docs + script only.

### 6. Example and tests

- **New example `scripts/examples/get_project_structure_project_models.json`:** a small synthetic project dump (2 modules, a language and a solution, 4 models) made with `includeModels` and without root nodes. It reuses the `com.example.courses` / `com.example.catalog` names of the existing examples. `SkillScriptsPackagingTest` already checks that examples ship.
- **`SkillScriptsDriftTest`:**
  - The wrong-kind table gains two rows: `roots` on the project example → exit 3, contains ``use `models` ``; `count` on the same → exit 3. The row `shape print_node_deep.json` now expects `tree`.
  - New test ``mps_dump lists modules and models of a structure dump``: `models` on the project example → exit 0, summary `modules 2 / models 4`, and a row carries the model reference and root count. `models` on `get_project_structure_model_roots.json` → 1 model, with the right root count.
  - New test ``mps_dump prints a node subtree``: `tree` on `print_node_deep.json` → exit 0. The first line is `Course <id> …`, a later line starts with `  lessons: Lesson`, and a default-valued enum is absent. `--depth 0` → one line ending in `(+k children)`. `tree` on `print_node_shallow.json` → the `(not inlined)` rows.
  - Existing: `roots` on the model example with a non-matching `--concept` still exits 0.
- **Validation:**
  - `validate_skill_catalog.py` on the blueprint tree.
  - The two `mps_dump` tests in `SkillScriptsDriftTest`. It is an integration test that needs the IDE test app, so it runs through the `McpToolsIntegrationTestSuite` run configuration or a scratch suite (memory: scratch suite).
  - `SkillCatalogReplicationTest` after propagation.
  - A by-hand run on the three S6-sonnet / S7-sonnet / S1-opus temp files if they still exist, otherwise on the examples.
  - If Q3 is accepted, the `includeDependencies` wording needs `build_project` on mcp-tools, and any tool-inventory snapshot test that pins descriptions.

### 7. Bookkeeping

- Move D76 to `study/docs-defects-archive.md` as fixed, not yet measured. Update the header lines of both files.
- Re-measure: no ad-hoc Python walker after a `print_node` / `get_project_structure` temp file, where `tree` would have done. No `roots` → 0 → Python probes on a structure dump. Fewer openers pass `includeDependencies` (S6/S7/S8 sonnet).
- Commit: `MPS-40220 - D76 mps_dump models and tree views; refuse roots on a dump without root nodes`.

## Out of scope

- `mps_dump.py node` on a project dump that has roots, but where the name exists in two models. The current first-match rule stays.
- Server-side changes to `get_project_structure` output.
- `concept_shape.py`: unchanged, it forwards to `shape` only.

## Revisions after review (2026-09-30)

- **B1, §1 rule:** refuse when some record carries `rootNodesCount` or `modelsCount` and no record carries `rootNodes`. These are the explicit markers the server writes when a flag is off. The earlier rule refused genuine empty listings: `{"modules": []}`, and a module with `models: []` dumped with `includeRootNodes`. The helper is public (`has_root_listing`).
- **B2:** add the new example to `BundledSkillScripts.EXAMPLES`. `SkillScriptsPackagingTest`, a unit test that needs no IDE, joins the validation list.
- **B3:** run the "default-valued enum omitted" check on `get_project_structure_node_deep.json` (`level=INTRO`, `isDefault`). On `print_node_deep.json`, assert `level=CORE` instead, which also covers the reduction of the old `<enumRef>/LITERAL` form.
- **S1:** rename the depth summary key to `depthCut`. `_emit` owns `truncated`.
- **S2:** by default `tree` hides `resolveInfo` when it equals `name`. This is tree-local, so `shape` is unchanged.
- **S3:** add a drift row: `shape` on the project example must say "use `models`".
- **S4 / Q3:** take the `includeDependencies` `@McpDescription` line. Put the orientation sentence in the `mps-mcp-workflow/SKILL.md` Scripts paragraph as well as in `finding-things.md:28`, because the sonnet openers had read only that SKILL.md.
- **N1:** `node` on a structure dump without root nodes already exited 3. Only its message changes.
- **N2:** correction to the evidence above. There were 7 walkers: round 16 `S8-opus :27, :33` and `S6-opus :28, :55`, plus the 3 in round 18. Only 3 of them filtered `isDefault`. Omitting default values in `tree` is a design choice, not what every walker did.
- **N3:** `--target-refs` prints each reference's full `targetReference` in place of the target name.
- **N4:** on a model, module or project dump, `tree` prints a `# model <name> <ref>` header before each model's roots.
- **N5:** a record with no `children` key (a `nodeDetail="names"` dump) ends with `(children not listed)`.
- **N6:** `table_to_bulk_insert.py --verify` refuses a dump without root nodes through `mps_dump.has_root_listing`, instead of reporting every row as missing.
- **N7:** update the inline subcommand list in `SKILL.md`. `query-nodes-find-instances.md:7` mentions `models` for per-model root counts from a dump made with `includeModels` only.
- `(+k children)` is skipped when k = 0: the server emits empty role entries.
- The by-hand run uses the examples, because the round-16/18 temp files are gone.
