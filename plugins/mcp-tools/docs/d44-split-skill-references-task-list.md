# D44 — split large skill references into one file per section: implementation task list

YouTrack: [MPS-40191](https://youtrack.jetbrains.com/issue/MPS-40191). Defect record: D44 in
`plugins/mcp-tools/study/docs-defects.md`.

Executed 2026-09-24; the one-off inputs (`split_ref.py`, `manifest.json`, `reach.py`) were deleted
after use — the splitter lives on as `plugins/mcp-tools/scripts/split_skill_reference.py` and
`reach.py` as test 3 of `SkillReferenceLayoutTest`.

Audience: a Sonnet executor working in `/Users/vaclav/work/MPS/myMPS-fix` (git worktree, branch
`261/vaclav/MCP2`). Follow the steps in order. Do not improvise beyond them. If a step's check fails,
stop and report; do not work around it.

## 0. Ground rules (read first)

- Run every command from the repo root. `SRC` = `plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills`
  (source of truth). Shell variables do not persist between tool calls, so start each Bash call with
  `SRC=plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills;`. All edits go
  here first. `.agents/skills/` and `.claude/skills/` are byte-identical copies, refreshed only in step 7.
- Never open `.mps`/`.mpl` files. Never run `mps_mcp_initialize_project_for_agents`. Never use
  `study/scripts/install_skills.py`. Never use bare `git stash`.
- No Kotlin tool-description (`plugins/mcp-tools/src/**`) edits. Every old reference path keeps
  existing as an index file, so all descriptions that cite them stay valid.
- Do not reword moved content. The splitter copies text verbatim. The only hand edits are the ones
  this list names (steps 3, 5, 6/6b, 8).
- Inputs prepared for you, do not modify unless a step says so:
  - `plugins/mcp-tools/docs/d44-split-skill-references/split_ref.py` — the splitter (verbatim cut, lossless check, anchor/relative-link rewrite, index generation).
  - `plugins/mcp-tools/docs/d44-split-skill-references/manifest.json` — the 19 entries (18 splits + 1 drop-only) with every cut, merge and slug.
  - `plugins/mcp-tools/docs/d44-split-skill-references/reach.py` — reachability check (every `references/**/*.md` reachable from its own `SKILL.md`).
  They live in `plugins/mcp-tools/docs/d44-split-skill-references/`. If any is missing, stop and ask; do not recreate them from memory.
  Scratch output (logs) goes to `/tmp/d44/` (`mkdir -p /tmp/d44` first).
- Commit only when the user says so (step 10).

## 1. Preconditions

1. `git status --short` shows no changes under `plugins/mcp-tools/resources/…/skills`, `.agents/skills`,
   `.claude/skills`. (Untracked `.junie/` is fine.) If anything else is modified there, stop and ask.
2. `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py $SRC` prints
   `validated 32 skills, 290 Markdown files and 4 scripts`.
3. `python3 plugins/mcp-tools/docs/d44-split-skill-references/reach.py $SRC` prints `0 unreachable`.
4. `git log -1 --format=%h` — record it in your report as the base commit.

## 2. Design being implemented (for context — do not re-decide; confirmed by the user 2026-09-24)

- **Unit of navigation = file.** A lookup-catalog reference over 12 KB becomes
  `references/<stem>/<slug>.md` (one per `##` section, or deeper where noted). The original path
  `references/<stem>.md` is rewritten as a small index: title, the preamble if it is ≤ 2 KB, and a
  `| Section | File |` table of skill-root backtick paths, headed by "Read only the files for your job,
  and when you need more than one, Read them all in one parallel batch."
- **Files that are read whole by design stay whole:**
  `mps-model-manipulation/references/dot-expression-basics.md` (the "Minimum reading set" in its
  `SKILL.md` says one file is enough for a body. Only its `## Contents` block is dropped:
  26020 → 24172 B) and `mps-mcp-workflow/references/mcp-tools-index.md` (tool inventory, 16249 B,
  untouched).
- **Byte budget 12288 B** for every `references/**/*.md`, with exactly three allow-listed files (step 3).
- **Deferred (follow-up):** "Start here — read only `references/X.md`" lines in other skills that now land
  on an index, one extra hop: behavior `method-declarations`, generator `macro-catalog`, dataflow
  `json-patterns`, editor `editor-patterns`, menus `action-maps`, typesystem `json-blueprints`. They stay
  correct, because the index says what to read. Do not retarget them here.
- **Out of scope:** `SKILL.md` sizes (9 are over 12 KB; none carry the grep pattern), the 8–12 KB
  band, `aspect-model-stereotypes.md` (8803 B ×16, byte-identical by validator rule), Kotlin
  descriptions, `analyze_runs.py` (it classifies skill reads by directory prefix, so split-safe).

Result verified on a scratch copy: 18 files → 127 section files + 18 indexes; validator green
(417 Markdown files); `reach.py` 0 unreachable; only the three allow-listed files exceed 12288 B;
largest non-allow-listed section file is `reference-formats/request-conventions.md` at 8491 B.

## 3. Guard test first: `SkillReferenceLayoutTest` (expected red)

Create `plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/unit/SkillReferenceLayoutTest.kt`,
modelled on `SkillCatalogReplicationTest.kt` in the same package: same KDoc style, backticked JUnit4 test
names, `SkillCatalogCheckout.blueprint()` for the root (which already skips outside a checkout). Four tests:

1. `every reference file fits the byte budget` — walk `blueprint/*/references/**/*.md`; fail on any file
   whose byte size exceeds `BUDGET = 12288` unless it is in
   ```kotlin
   private val OVER_BUDGET = mapOf(
       // read whole by design: the mps-model-manipulation "Minimum reading set" names this one file per body
       "mps-model-manipulation/references/dot-expression-basics.md" to 24_576,
       // the tool inventory, read whole
       "mps-mcp-workflow/references/mcp-tools-index.md" to 17_408,
       // one atomic JSON blueprint fence; cutting it would break copy-paste
       "mps-aspect-constraints/references/referent-constraints/computed-sequences-blueprint.md" to 13_312,
   )
   ```
   and within its cap. Also fail for an allow-list entry that no longer exists or is now ≤ `BUDGET`
   (a stale entry). The message lists every offender with its size and says: split it along its `##`
   headings into `references/<stem>/` (see D44), or add it here with a reason.
2. `no skill tells agents to rebuild a heading index` — for every `SKILL.md` and `references/**/*.md`,
   fail on lines matching any of: `grep -n '^#`, `offset/limit`, `line numbers` … `drift` (regex
   `line numbers[^.]{0,40}drift`), `## Contents / when to read what`. Message names file:line.
3. `every reference file is reachable from its skill` — port `plugins/mcp-tools/docs/d44-split-skill-references/reach.py` (per skill: BFS from
   `SKILL.md` over backtick `` `references/….md` `` paths resolved against that skill's root, and
   markdown links `](x.md)` resolved against the linking file's directory, `#`/`?` suffix stripped,
   `http(s):` ignored). Fail listing every unreachable file.
4. `the catalog validator passes` — first line `Python3.require()` (as in `MigrationXmlExampleTest`:
   a local skip without python3, a hard failure on TeamCity), then run
   `SkillCatalogCheckout.runPython(root.resolve("plugins/mcp-tools/scripts/validate_skill_catalog.py").toString(), blueprint.toString())`
   and assert exit code 0, putting stdout+stderr in the message. (This makes the existing validator,
   which no test runs today, a CI gate.)

Register it in
`plugins/mcp-tools/test/jetbrains/mps/agents/mcp/tools/integration/McpToolsIntegrationTestSuite.java`
right after `SkillCatalogReplicationTest.class,` (a test missing from `@SuiteClasses` never runs in CI).

Build (IDEA MCP `build_project`, projectPath `/Users/vaclav/work/MPS/myMPS-fix`), then run the test
(see step 9.4 for how) **before splitting anything** and confirm it is red for exactly the known reasons:

- test 1 fails. Offenders: 19 files over budget, which is every file from
  `find $SRC -path '*/references/*.md' -size +12288c` except `mcp-tools-index.md`
  (`dot-expression-basics.md` at 26020 B exceeds even its 24576 cap). Plus 1 stale entry:
  `computed-sequences-blueprint.md` does not exist yet;
- test 2 fails with exactly 9 lines: `dot-expression-basics.md:3`, `property-constraints.md:5,7`,
  `mps-aspect-constraints/SKILL.md:53`, `mps-aspect-structure-concepts/SKILL.md:38`,
  `structure-operation-api.md:25,27`, `referent-constraints.md:3,7`;
- tests 3 and 4 pass.

Any other result means the test is wrong. Fix the test, not the expectation. Record the red output
in the report. This red run is the proof that tests 1–2 can fail. Step 9.3 proves test 4 can fail.

## 4. Run the splitter

1. Dry run: `python3 plugins/mcp-tools/docs/d44-split-skill-references/split_ref.py $SRC plugins/mcp-tools/docs/d44-split-skill-references/manifest.json --dry-run > /tmp/d44/dry.log`.
   Check: exit 0; 146 lines; `grep -c 'OVER 12 KB' /tmp/d44/dry.log` = 1 (the
   `computed-sequences-blueprint.md` line); a line
   `dot-expression-basics.md: 26020 B -> 24172 B (drop only, not split)`. Any `ABORT` = stop and report.
2. Real run: same command without `--dry-run`, output to `/tmp/d44/split.log`. It must equal `dry.log`
   (`diff /tmp/d44/dry.log /tmp/d44/split.log` empty).
3. `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py $SRC` → `validated 32 skills, 417 Markdown files and 4 scripts`.
4. `python3 plugins/mcp-tools/docs/d44-split-skill-references/reach.py $SRC` → `0 unreachable`.
5. `find $SRC -path '*/references/*.md' -size +12288c` lists exactly:
   `mps-model-manipulation/references/dot-expression-basics.md`,
   `mps-mcp-workflow/references/mcp-tools-index.md`,
   `mps-aspect-constraints/references/referent-constraints/computed-sequences-blueprint.md`.

## 5. Rewrite the two SKILL.md section indexes

### 5a. `$SRC/mps-aspect-constraints/SKILL.md`

Replace everything from the line `## Section index — open one heading, not the file` up to (not
including) `## Common-Path Workflow` with exactly:

```markdown
## Section index — one row, one read

Each row names the file(s) for one job. Read them — two files in one parallel batch — and nothing else in `references/`.

| Job | Read |
|---|---|
| have not chosen scope style yet | `references/referent-constraints/choosing-scope-style.md` |
| scope computed at the reference site (shape + verbatim example) | `references/referent-constraints/imperative-scope.md`, `references/referent-constraints/imperative-scope-calculator-example.md` |
| reference-site scope over a computed sequence (`ListScope` + anonymous `getName`) | `references/referent-constraints/computed-sequences-listscope.md`, `references/referent-constraints/computed-sequences-blueprint.md` |
| reference-site scope assembled with `CompositeScope.addScope` | `references/referent-constraints/composite-scope-addscope.md` |
| reference-site scope over imported models' roots (`rootsIncludingImported`) | `references/referent-constraints/cross-model-filtered-scope.md` |
| scope that offers structure declarations (`LinkDeclaration` referents) | `references/referent-constraints/meta-level-scope.md` |
| scope belongs to an ancestor / getScope | `references/referent-constraints/inherited-scope.md` |
| setting a ref must rename/copy/keep original | `references/referent-constraints/referent-set-handler.md` |
| every ref *to* this concept shares one scope | `references/referent-constraints/default-scope.md` |
| validator / setter / getter shape | `references/property-constraints/nodepropertyconstraint-shape.md` |
| validator / getter / setter wrapper FQNs | `references/property-constraints/key-concept-fqns.md` |
| validator JSON blueprint | `references/property-constraints/validator-example-compound-cardinality.md` |
| derived-getter JSON blueprint | `references/property-constraints/derived-getter-example.md` |
| sibling-uniqueness validator | `references/property-constraints/sibling-uniqueness-validator.md` |
| {name} alias / set read-only | `references/property-constraints/getter-delegation-read-only.md` |

```

Then, in the `## Reference Index` section of the same file, make three exact replacements:

- In the `**Start here — most common case**` paragraph replace
  `→ pick the matching heading from the Section index above (symptom → heading), then grep/Read only that range. Never full-Read `referent-constraints.md` or `property-constraints.md`.`
  with
  `→ read the file(s) in the matching Section index row above.`
- In the bullet starting `- Open one heading of `references/property-constraints.md` (Section index above)`
  replace `Open one heading of `references/property-constraints.md` (Section index above)` with
  `Open the Section index row for `references/property-constraints.md``
  and delete the trailing ` Never Read the whole file.`
- Same for the `references/referent-constraints.md` bullet.

### 5b. `$SRC/mps-aspect-structure-concepts/SKILL.md`

Replace everything from `## Section index — open one heading, not the file` up to (not including)
`## Prerequisites` with exactly:

```markdown
## Section index — one row, one read

Each row names the file(s) for one operation. Read them — two files in one parallel batch — and nothing else in `references/`.

| Job | Read |
|---|---|
| parameter wire shape, rejected keys, booleans, `…Ref`/`…Reference` suffixes, nulls | `references/structure-operation-api/tool-conventions.md` |
| create concepts (greenfield) | `references/structure-operation-api/create-concepts.md` — on the first `CREATE_CONCEPTS` call also `references/structure-operation-api/tool-conventions.md` |
| create an enumeration | `references/structure-operation-api/create-enum.md` |
| add/change/delete a property | `references/structure-operation-api/update-concept-property.md` |
| add/change/delete a child | `references/structure-operation-api/update-concept-child.md` |
| add/change/delete a reference | `references/structure-operation-api/update-concept-reference.md` |
| rename a property / child / reference | `references/structure-operation-api/rename-concept-feature.md` |
| enum literals | `references/structure-operation-api/get-enumeration-literals.md` |
| is-subconcept / subconcepts / assignable concepts / superconcepts | `references/structure-operation-api/concept-hierarchy-queries.md` |
| completion/scope candidates for a reference | `references/structure-operation-api/get-assignable-references.md` |
| find aspect roots for a concept | `references/structure-operation-api/list-concept-aspects.md` |
| smart-reference check | `references/structure-operation-api/is-smart-reference.md` |

```

Then in `## Reference Index`:

- In `**Start here — most common case**` replace
  `→ pick the matching heading from the Section index above (symptom → one `####` operation), then grep/Read only that range. Never full-Read `structure-operation-api.md`.`
  with `→ read the file(s) in the matching Section index row above.`
- In the bullet `- Open one `####` heading of `references/structure-operation-api.md` (Section index above) for`
  replace `Open one `####` heading of `references/structure-operation-api.md` (Section index above)`
  with `Open the Section index row (files under `references/structure-operation-api/`, listed in the index at `references/structure-operation-api.md`)`
  and delete the trailing ` Never Read the whole file.` (The backticked index path must survive: it is
  the only link that keeps the index file reachable, and `reach.py` fails without it.)

### 5c. Check

`grep -rnE "grep -n '\^#|offset/limit|they drift|Never full-Read|in one shot\. Pick the row|open one heading|Open one .*heading" $SRC`
prints nothing. (The known false positive `analysis-tools/overview.md: … repairs them in one shot` does not match this pattern.)

## 6. Retarget section-specific inbound citations

Rule: a citation that names a *section* of a split file (with `§`, a quoted heading, or "→ heading")
now names the section *file*. A citation of the whole file stays as it is (it lands on the index).
Keep the cross-skill boilerplate exactly: `` `references/<dir>/<file>.md` in the `<skill>` skill root
after loading that companion skill from the same origin `` (the validator matches it literally).

| # | File (under `$SRC`) | Replace | With |
|---|---|---|---|
| R1 | `mps-aspect-constraints/references/common-failures.md` (row "Unresolved scope classes") | ``See `scope-fqn-reference.md` → "Required module-level dependency"`` | ``See `references/scope-fqn-reference/required-languages-imports-dependencies.md` `` (no trailing space — the cell ends with ` |`) |
| R2 | `mps-aspect-structure-concepts/references/attributes-and-annotations.md` (≈ line 57) | ```references/referent-constraints.md` in the `mps-aspect-constraints` skill root after loading that companion skill from the same origin §"Meta-level scope")`` | ```references/referent-constraints/meta-level-scope.md` in the `mps-aspect-constraints` skill root after loading that companion skill from the same origin)`` |
| R3 | same file (≈ line 152) | ```references/editor-patterns.md` in the `mps-aspect-editor` skill root after loading that companion skill from the same origin §"Annotation (Node Attribute) Editor"`` | ```references/editor-patterns/annotation-editor.md` in the `mps-aspect-editor` skill root after loading that companion skill from the same origin`` |
| R4 | `mps-aspect-intentions/references/execute-idioms.md` (≈ line 77) | ```references/action-maps.md` in the `mps-aspect-editor-menus-and-keymaps` skill root after loading that companion skill from the same origin §"Keyboard-Deletable Annotation"`` | ```references/action-maps/example-keyboard-deletable-annotation.md` in the `mps-aspect-editor-menus-and-keymaps` skill root after loading that companion skill from the same origin`` |
| R5 | `mps-aspect-editor/references/editor-patterns/annotation-editor.md` (moved text, formerly `editor-patterns.md:199`) | same as R4 | same as R4 |
| R6 | `mps-aspect-editor/SKILL.md` (≈ line 42) | ``See the *Concept Editor with an Inspected Cell Layout* pattern in `references/editor-patterns.md`.`` | ``See `references/editor-patterns/inspected-cell-layout.md`.`` |
| R7 | `mps-aspect-constraints/references/scope-helpers.md` (≈ line 5) | ``See `scope-fqn-reference.md` → "Required module-level dependency".`` | ``See `references/scope-fqn-reference/required-languages-imports-dependencies.md`.`` |
| R8 | same file (≈ line 14) | ``(see `referent-constraints.md` → "Computed sequences")`` | ``(see `references/referent-constraints/computed-sequences-listscope.md`)`` |
| R9 | `mps-aspect-constraints/SKILL.md` (Common-Path Workflow, ≈ line 61 after step 5a) | ``See `references/scope-fqn-reference.md` → "Required module-level dependency".`` | ``See `references/scope-fqn-reference/required-languages-imports-dependencies.md`.`` |

Before each edit, `grep -n` the "Replace" text and confirm exactly one hit. Every row was checked
against a split sandbox and matched exactly once.

Then sweep for anything this table missed:

```
for st in referent-constraints analysis-tools structure-operation-api json-patterns macro-catalog reference-formats json-blueprints property-constraints smodel-concepts-catalog collections-catalog scope-fqn-reference editor-patterns action-maps macros-rare method-declarations parse-java-tips java-parser-capabilities; do
  grep -rn "$st\.md" $SRC | grep -v "/references/$st\.md:" | grep -E '§|→ "|"[A-Z][^"]{6,}"'
done
```

Every remaining hit must be either (a) one you just fixed or (b) about a *whole* file (known: the
quoted `"STATEMENTS"` in `mps-aspect-behavior/SKILL.md:35` is not a citation). A hit with `§` or
`→ "` that names a heading of a split file is never (b): fix it the same way as R1–R9 and list it
in the report as an extra. List each (b) hit with one line of justification. Do not edit (b) hits.

### 6b. Cross-file "above/below" prose inside moved sections

The splitter rewrites links and anchors, not prose. These 12 sentences pointed at a heading of the
same file that now lives in a sibling file. Apply them after step 4, in the section files under `$SRC`.
Confirm exactly one hit per "Replace" first.

| # | File (under `$SRC`) | Replace | With |
|---|---|---|---|
| P1 | `mps-mcp-workflow/references/analysis-tools/overview.md` | ``(see `mps_mcp_print_node — Output Format` below)`` | ``(see `references/analysis-tools/print-node-output.md`)`` |
| P2 | same | ``— see *Intentions & quick-fixes* below.`` | ``— see `references/analysis-tools/intentions-and-quick-fixes.md`.`` |
| P3 | same | ``FIND_INSTANCES finds nodes of a concept (see below);`` | ``FIND_INSTANCES finds nodes of a concept (see `references/analysis-tools/query-nodes-find-instances.md`);`` |
| P4 | `mps-mcp-workflow/references/analysis-tools/check-root-node-problems-output.md` | ``(see *Output Format* above)`` | ``(see `references/analysis-tools/print-node-output.md`)`` |
| P5 | same | ``See *Intentions & quick-fixes* below.`` | ``See `references/analysis-tools/intentions-and-quick-fixes.md`.`` |
| P6 | `mps-model-manipulation/references/java-parser-capabilities/supported.md` | ``(see "Method return types" below for the caveat)`` | ``(see `references/java-parser-capabilities/unsupported-and-workarounds.md` for the caveat)`` |
| P7 | same | ``but see the note on `getContainmentLink` below`` | ``but see the note on `getContainmentLink` in `references/java-parser-capabilities/unsupported-and-workarounds.md` `` (no trailing space) |
| P8 | `mps-model-manipulation/references/collections-catalog/set-and-map-operations.md` | ``(see "Iterator and modifying_iterator" below)`` | ``(see `references/collections-catalog/iterators.md`)`` |
| P9 | `mps-aspect-constraints/references/scope-fqn-reference/scope-concept-fqns.md` (the `ConceptMethodDeclaration.overriddenMethod` row) | ``| see below |`` | ``| see `references/scope-fqn-reference/blueprint-getscope-skeleton.md` |`` |
| P10 | `mps-aspect-editor-menus-and-keymaps/references/action-maps/example-keyboard-deletable-annotation.md` | ``auto-registers an identical `BACKSPACE` (see above)`` | ``auto-registers an identical `BACKSPACE` (see `references/action-maps/example-delete-not-expression-and-default.md`)`` |
| P11 | `mps-aspect-editor/references/editor-patterns/empty-list-placeholder.md` | ``exactly as in the *Transparent List* pattern above.`` | ``exactly as in `references/editor-patterns/transparent-list.md`.`` |
| P12 | `mps-aspect-editor/references/editor-patterns/inspected-cell-layout.md` | ``exactly as in the *Minimal Editor Blueprint* above.`` | ``exactly as in `references/editor-patterns/minimal-editor.md`.`` |

All other `above`/`below` hits in section files refer to text in the same file, and stay as they are.
One is known-broken but predates this change: `macro-catalog/macro-overview-and-table.md`'s "See
InsertMacro/LabelMacro/WeaveMacro/VarMacro2 section below" (those live in `macros-rare.md` and never
were in `macro-catalog.md`). Leave it, and list it in the report as a follow-up.

Re-run the validator and `reach.py` (same expected output as step 4.3/4.4).

## 7. Propagate to both agent catalogs

The changed skills are:
`mps-aspect-behavior mps-aspect-constraints mps-aspect-dataflow mps-aspect-editor
mps-aspect-editor-menus-and-keymaps mps-aspect-generator mps-aspect-intentions
mps-aspect-structure-concepts mps-aspect-textgen mps-aspect-typesystem mps-baselanguage
mps-mcp-workflow mps-model-manipulation`.
Confirm with `git status --short --untracked-files=all $SRC | awk '{print $2}' | cut -d/ -f9 | sort -u`.
The printed set must equal this list. If it differs, stop and report.

For each skill `s` in the list, and for each `T` in `.agents/skills` `.claude/skills`:
`rm -rf "$T/$s" && cp -R "$SRC/$s" "$T/$s"`. Touch no other folder (non-`mps-*` checkout-local skills live there).

Check: `diff -rq .agents/skills .claude/skills` prints nothing; `diff -rq $SRC .claude/skills` prints only
`Only in .claude/skills: <non-mps skill>` lines.

## 8. Update the defect record

In `plugins/mcp-tools/study/docs-defects.md`, change D44's status cell (last column of the D44 row) from
the current `open — …` text to:

`**fixed** (<today's date>, MPS-40191) — **T**: 18 lookup references over 12 KB split into `references/<stem>/<slug>.md` (127 section files, largest 8.5 KB), each old path rewritten as a small index table so the ~140 whole-file mentions across the catalog and the 9 Kotlin tool-description citations stay valid; `mps-aspect-constraints` and `mps-aspect-structure-concepts` Section indexes map each job straight to its file(s), and the `grep -n '^## '` / offset-limit instructions and all four `## Contents / when to read what` blocks are gone. Kept whole by design: `dot-expression-basics.md` (the "Minimum reading set" one-file rule; Contents block dropped) and `mcp-tools-index.md`. Section-specific citations (§"…" / → "heading", 9 sites) and cross-file "above/below" prose (12 sites) retargeted to the section file. Guard: `SkillReferenceLayoutTest` — 12 KB budget with a 3-entry allow-list, no heading-index instructions, every reference reachable from its `SKILL.md`, and `validate_skill_catalog.py` now runs in the suite. **Measure in round 10:** zero `grep` against `references/` in S1/S2/S4; S1 skill-navigation calls ≤ 25 (was 45); skill bytes/turn flat or lower.`

Do not edit any other row.

## 9. Validation

1. `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py $SRC` → green, 417 Markdown files.
   Also run it against `.agents/skills` and `.claude/skills`. They may count extra files from
   non-`mps-*` skills, but must print no errors.
2. `python3 plugins/mcp-tools/scripts/validate_skill_catalog.py --self-test` → exit 0.
3. Negative check for test 4 (validator), no suite run needed: append the line
   ``See `references/action-maps/nope.md`.`` to `$SRC/mps-aspect-editor-menus-and-keymaps/SKILL.md`,
   run the validator on `$SRC`, and confirm exit 1 with a message naming `references/action-maps/nope.md`.
   Then delete exactly that line with Edit, and confirm with `git diff --stat` that the file shows
   no change from this check. Re-run the validator → green.
4. Tests. Build first (IDEA MCP `build_project`). Then try a JUnit run of `SkillReferenceLayoutTest`
   alone. It needs no MPS environment. If the IDE cannot launch it standalone, do not fight it: run
   the `McpToolsIntegrationTestSuite` run configuration via IDEA MCP `execute_run_configuration`
   (suite output is readable only through that call), following `.agents/quality-gates.md` for
   timeouts. Required green: `SkillReferenceLayoutTest` (4 tests), `SkillCatalogReplicationTest`,
   `MigrationXmlExampleTest`, `SkillScriptsPackagingTest`. For any other failure, re-run once before
   attributing it (the suite has known single flaky failures), and report both runs.
5. Spot-read three outputs end to end and confirm they read sensibly:
   `mps-aspect-constraints/references/referent-constraints.md` (index),
   `mps-aspect-structure-concepts/references/structure-operation-api/create-concepts.md`,
   `mps-mcp-workflow/references/reference-formats.md` (index).

## 10. Report, then stop

Report: base commit; the step 3 red run; the step 4 logs (the section-size table); step 6 (b)-hits
with justification; step 9 results with the test counts; `git status --short | wc -l`.
Do **not** commit. The user decides. Proposed commit, for the user to approve:

```
MPS-40191 - one file per skill reference section (D44)

- split 18 lookup references over 12 KB into references/<stem>/<slug>.md; old paths become indexes
- constraints / structure-concepts Section indexes point at files; grep/offset instructions removed
- retarget section citations; SkillReferenceLayoutTest guards budget, reachability, validator

Co-Authored-By: Claude Opus 5.5 (1M context) <noreply@anthropic.com>
```
The subject follows this branch's de facto `MPS-NNNNN - summary (Dnn)` form, like the D43/D45/D47
commits, not the `<Area> - <MPS-NNNNN>` form in `.agents/git.md`. The `Co-Authored-By` line must name
the model that actually makes the commit. Commit `plugins/mcp-tools/docs/d44-split-skill-references*`
together with the change.