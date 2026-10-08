# Plan: split collections/closures out of `mps-model-manipulation`

Status: implemented in the working tree (uncommitted); kept as the design record. Source of truth for every path below is
`plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills/` (the blueprint catalog); the
`.agents/skills/` and `.claude/skills/` copies are hand-propagated afterwards.

## 1. Is the skill overly large because it also covers collections and closures? Yes.

Measured on the blueprint catalog (bytes, `wc -c`):

| Part of `mps-model-manipulation` | Files | Bytes | Share |
|---|---|---|---|
| Whole skill (SKILL.md + 38 reference files) | 39 | 117,784 | 100 % |
| Pure collections/closures files (0 smodel mentions) | 12 | 27,940 | 24 % |
| Collections/closures *sections* inside mixed files | — | ~12,300 | 10 % |
| **Collections/closures total** | | **~40 KB** | **~34 %** |

Pure collections/closures files: `references/closures-catalog.md` (9.5 KB),
`references/collections-catalog.md` + `references/collections-catalog/*` (10 files, 15.4 KB),
`references/foreach-statements.md` (3.0 KB).

Mixed files and the size of their collections/closures sections:

| File | Total | Collections/closures part |
|---|---|---|
| `references/dot-expression-basics.md` | 24,373 | 8,149 (33 %): `DowncastExpression (collections)` 3,867; `where` 1,359; `any` 141; `translate` 2,321; `list.add` 461 |
| `references/variable-declarations.md` | 6,349 | 3,149 (50 %): collection type blueprints + initializers |
| `references/golden-rules-and-pitfalls.md` | 4,787 | ~1,000: closure `type`-child golden rule + its pitfall row |
| `references/baselanguage-key-concepts.md` | 1,400 | `UndefinedType` row exists only for closures |
| `SKILL.md` | 18,181 | ~2,500: 2 of 10 Critical Directives, 3 of 17 Reference Index entries, description text |

Why it matters for reading cost:

- The "Minimum reading set" sends every agent to `dot-expression-basics.md` (24 KB, the only file
  with an `OVER_BUDGET` exemption in `SkillReferenceLayoutTest`). One third of it is collections
  material a pure navigation body never needs.
- `mps-baselanguage` (plain Java bodies) points agents at `mps-model-manipulation` for *closures*
  because that is where the closure-literal blueprint lives. A plain lambda in plugin or generator
  helper code therefore drags in the whole smodel skill (18 KB SKILL.md) for one 9.5 KB catalog.
- Collections and closures are BaseLanguage extensions, not smodel. They are used in code that
  never touches a node (`list<string>`, `.sortBy`, SAM conversion), so bundling them under a skill
  whose description is "manipulating nodes" is a mis-filing, not just a size problem.

Honest limits of the finding: the `SKILL.md` itself is only ~14 % collections/closures. Its bulk
comes from the Reference Index repeating the Critical Directives in long form (~8 KB). The split
fixes the reference-tree size and the mis-filing; trimming `SKILL.md` further is a separate,
optional task (see §7).

## 2. Target shape

Two skills. Collections and closures stay together (closures are the argument of almost every
collection operation; the catalogs already cross-reference `yield`/`skip`/`stop`).

### `mps-collections-and-closures` (new, ~43 KB, 16 files)

Name follows the catalog's `and` convention (`mps-aspect-editor-menus-and-keymaps`).

```
mps-collections-and-closures/
  SKILL.md                                  new, ~7 KB
  references/
    closures-catalog.md                     moved verbatim
    collections-catalog.md                  moved, hub table unchanged
    collections-catalog/*.md                moved (10 files)
    foreach-statements.md                   moved; absorb collections-catalog/iteration-foreach.md
    sequence-operation-blueprints.md        new, ~4.5 KB: where / any / translate / list.add JSON
                                            extracted from dot-expression-basics.md
    downcast-expression.md                  new, ~4 KB: `downcast expr` section extracted from
                                            dot-expression-basics.md
    golden-rules-and-pitfalls.md            new, ~1.5 KB: closure `type` child rule, its pitfall
                                            row, `isEmpty` dual concept, lazy-sequence re-evaluation,
                                            sequence-vs-list rejection, missing runtime jars
```

`SKILL.md` content (must keep the exact "Loading companion skills" paragraph, because
`validate_skill_catalog.py` requires the phrase `same host-assigned originating server`):

- frontmatter `name`, `description` (trigger terms: `sequence<T>`, `list<T>`, `set`, `map`,
  `.where`, `.select`, `.translate`, `.sortBy`, `foreach`, `{ it => }`, `yield`, `skip`, `stop`,
  `downcast`, SAM conversion, `ClosureLiteral`, `InferredClosureParameterDeclaration`,
  `FunctionType`), `type: reference`.
- Minimum reading set: one row per body shape (filter/map a sequence → `sequence-operation-blueprints.md`;
  a closure that does not type-check → `closures-catalog.md`; an iteration error → `foreach-statements.md`;
  crossing into a Java interface → `downcast-expression.md`; an unknown operation name → `collections-catalog.md`).
- Critical Directives: every `InferredClosureParameterDeclaration` needs a `type` → `UndefinedType`
  child; operations take **one** closure in the `closure` role (not `parameter`); two `foreach`
  concepts; `sequence` is not a `list`; two `IsEmptyOperation` concepts; `yield` excludes `return`;
  `skip`/`stop` only inside enumerating closures; runtime solutions `closures.runtime` /
  `collections.runtime`; "ask the running typesystem" with `mps_mcp_query_types` `OPERATION_TYPE` /
  `IS_SUBTYPE` (this keeps the skill eligible for `SkillTypeQueryRoutingTest`, see §5).
- Related Skills: `mps-model-manipulation` (the receivers: `node.descendants<C>`, `nlist<C>`,
  `sequence<node<C>>` come from there), `mps-baselanguage` (host statements), `mps-console`
  (`#instances … .where`), `mps-quotations`.
- Reference Index: one line per file, symptom-keyed, as in the existing skills.

### `mps-model-manipulation` (trimmed, ~82 KB, 26 files)

- `SKILL.md`: retitle to "Writing MPS BaseLanguage with smodel"; drop `collections`/`closures` from
  the description's "covers" list and add the sentence *"Collection operations and closures
  (`.where`, `.select`, `.translate`, `{ it => }`) are in the companion skill
  `mps-collections-and-closures`; most bodies need both."*; remove the two collections/closures
  Critical Directives and the three Reference Index entries; add one directive:
  **"Any `.where` / `.select` / `.translate` / `foreach` / closure argument → load the
  `mps-collections-and-closures` companion skill from the same origin before writing the body;
  smodel only supplies the receiver."** Also add a row to the Minimum reading set table:
  *"filters, maps or iterates the result → also the companion's `references/sequence-operation-blueprints.md`"*
  using the validator boilerplate (§4).
- `references/dot-expression-basics.md` → ~16.6 KB: delete the five collections sections; keep the
  comparison table row for `DowncastExpression` with a companion pointer; add a 3-line
  "Collection operations on the result" paragraph pointing to the companion.
- `references/variable-declarations.md`: **keep whole.** `sequence<node<C>>` / `list<node<C>>` return
  types are the smodel skill's most common post-parse fix and four other skills link here for it
  (`mps-aspect-behavior`, `mps-aspect-typesystem`, `mps-aspect-generator` common-failures). Add one
  companion pointer for the pure-collection type table.
- `references/golden-rules-and-pitfalls.md`: replace the closure golden rule and the closure pitfall
  row with one-line pointers to the companion's pitfalls file.
- `references/baselanguage-key-concepts.md`: keep the `UndefinedType` row, repoint its note.
- `references/java-parser-capabilities/supported.md` (lambdas → closures) and
  `unsupported-and-workarounds.md`: repoint closure mentions to the companion.
- Related Skills: add `mps-collections-and-closures` first in the list.

## 3. Inbound references to update (all three catalogs after propagation)

Explicit cross-skill file references that will dangle (the validator catches these):

- `mps-aspect-constraints/references/referent-constraints/meta-level-scope.md:126` →
  `references/closures-catalog.md` in the `mps-collections-and-closures` skill root …
- `mps-aspect-constraints/references/referent-constraints/computed-sequences-blueprint.md:213` → same;
  also drop the hard-coded "lines 94–110 / 98–104" (they will drift; `SkillReferenceLayoutTest`
  flags "line numbers … drift" phrasing).

Prose mentions of "smodel / collections / closures reference" that should name the new skill as a
second companion (validator-neutral, but the whole point of the split):

- Index tables: `mps-mcp-workflow/SKILL.md:67` (add a row), `mps-language-aspects-overview/SKILL.md:43`
  (add the new skill to the "Code inside bodies" row).
- `mps-baselanguage/SKILL.md:25,56` — the lambda/closures note and Related Skills must point to the
  new skill, not to `mps-model-manipulation`.
- Related Skills sections naming collections/closures: `mps-aspect-behavior`, `mps-aspect-typesystem`,
  `mps-aspect-constraints` (lines 64, 74), `mps-aspect-textgen`, `mps-tests`, `mps-console`
  (SKILL.md:100, `references/smodel-query.md:5,101`, `references/mcp-insertion.md:148`),
  `mps-aspect-intentions` (SKILL.md:48 and the `IsEmptyOperation` rows in
  `references/common-failures.md`, `json-blueprints.md`, `blocks-and-parameters.md`),
  `mps-aspect-generator/references/calling-into-generator.md:7`.
- Skills that mention only smodel idioms (`mps-aspect-actions`, `mps-aspect-dataflow`,
  `mps-aspect-migrations`, `mps-aspect-editor-menus-and-keymaps`, `mps-ide-plugin`,
  `mps-node-editing`, `mps-quotations`, `mps-aspect-structure-concepts`) need no change.

Bare-filename mentions the validator does **not** check (it only resolves backticked paths that start
with `references/`), so grep for them by hand: `closures-catalog.md` (in `golden-rules-and-pitfalls.md`,
`baselanguage-key-concepts.md`, `dot-expression-basics.md:11`, `collections-catalog/control-flow-in-closures.md`),
`foreach-statements.md` (in `baselanguage-key-concepts.md`, `collections-catalog/iteration-foreach.md`),
`variable-declarations.md` (in `java-parser-capabilities/unsupported-and-workarounds.md`, stays local),
`dot-expression-basics.md` (in `golden-rules-and-pitfalls.md`, stays local).

## 4. Locality rules the split must satisfy

From `plugins/mcp-tools/scripts/validate_skill_catalog.py` and
`plugins/mcp-tools/test/.../unit/SkillReferenceLayoutTest.kt`:

1. A backticked `references/<file>.md` resolves **inside the skill that contains the line**. To point
   at the other skill, the path must be followed verbatim by
   `` in the `<skill>` skill root after loading that companion skill from the same origin``
   (or the paragraph must earlier say "load the `<skill>` companion skill from the same origin").
   Both new-skill → smodel pointers and smodel → new-skill pointers need this.
2. No pseudo-paths like `mps-collections-and-closures/references/x.md` anywhere.
3. Every reference file must be reachable from its own `SKILL.md` through backticked
   `references/…` paths or Markdown links (transitively). The new `SKILL.md` Reference Index must
   list every file, and the moved `collections-catalog.md` hub keeps its section table.
4. Every reference file ≤ 12,288 bytes unless listed in `OVER_BUDGET`. Update
   `"mps-model-manipulation/references/dot-expression-basics.md" to 24_576L` down to `17_408L`
   (the file will be ~16.6 KB; keep the "read whole by design" comment). All new files are under budget.
5. Each `SKILL.md` must contain the companion-origin contract paragraph (`same host-assigned
   originating server`).
6. Markdown links must not escape the skill root; no `../` across skills.

## 5. Tests and scripts to touch

- `SkillReferenceLayoutTest.kt` — `OVER_BUDGET` value for `dot-expression-basics.md` (§4.4).
- `SkillTypeQueryRoutingTest.kt:64` — add `"mps-collections-and-closures/SKILL.md"` to the
  code-editing skills list once its SKILL.md carries the `mps_mcp_query_types` directive.
- `SkillCatalogReplicationTest.kt` — no code change; it fails until both the new folder and the
  trimmed one are copied into `.agents/skills/` and `.claude/skills/`.
- `validate_skill_catalog.py` — no change; `COPY_CONSUMERS` lists only skills that embed
  `aspect-model-stereotypes.md`, which neither of these does.
- `study/scripts/tests/test_analyze_runs.py:492` uses a fictitious `references/closures.md`; leave it.

## 6. Execution order

1. `git mv` the 12 pure files into `mps-collections-and-closures/references/`; merge
   `collections-catalog/iteration-foreach.md` into `foreach-statements.md` (drop its row in the hub).
2. Extract the five sections from `dot-expression-basics.md` into `sequence-operation-blueprints.md`
   and `downcast-expression.md` (hand edit; `split_skill_reference.py` splits a whole file along
   `##` headings and is not needed here). Leave the companion pointers behind (§2).
3. Write the new `SKILL.md` and `references/golden-rules-and-pitfalls.md`; trim the smodel
   `SKILL.md`, `golden-rules-and-pitfalls.md`, `baselanguage-key-concepts.md`,
   `java-parser-capabilities/*.md`.
4. Fix the inbound references in §3, then grep the catalog for `closures-catalog.md`,
   `collections-catalog`, `foreach-statements.md`, `sequence-operation-blueprints`,
   `downcast-expression.md` and confirm each hit is local or carries the §4.1 boilerplate.
5. Validate the blueprint tree:

   ```bash
   python3 plugins/mcp-tools/scripts/validate_skill_catalog.py --self-test plugins/mcp-tools/resources/jetbrains/mps/agents/mcp/skills
   ```

   Expect `validated 33 skills, … Markdown files and 4 scripts` (one more skill than before the split).
6. Propagate by hand (CLAUDE.md forbids `mps_mcp_initialize_project_for_agents` here): delete
   `mps-model-manipulation` from `.agents/skills/` and `.claude/skills/`, copy both skill folders into
   both, then `diff -rq` the blueprint tree against `.claude/skills` (only the checkout-local extras
   may differ) and `.agents/skills` against `.claude/skills` (must be empty).
7. Run the `McpContractAndSkillsTestSuite` run configuration (the skills-catalog gate in
   `.agents/quality-gates.md`); it includes the three tests in §5.
8. Commit as `mcp-tools - split collections/closures out of mps-model-manipulation` (no issue ID:
   this is a refactoring). The skill rename of `mps-model-manipulation` → `mps-smodel` is
   deliberately **not** part of this plan; it would churn ~45 inbound mentions for no reading-cost gain.

## 7. Follow-ups outside this plan

- `SKILL.md` of the smodel skill still repeats each directive in its Reference Index (~8 KB). A
  pass that keeps only the symptom-keyed index lines would halve it.
- `references/variable-declarations.md` (collection type blueprints) and
  `references/java-parser-capabilities/collection-types.md` both carry `ListType` / `SequenceType`
  JSON; one should point at the other.
- The `skill-optimization-study` scenarios can A/B the two-skill layout against this baseline
  (bytes read per body, companion-load count) once the split has landed.
