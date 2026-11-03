# `recipes-editor` fixture (S32)

**Status: recipe written 2026-11-01; built and pinned 2026-11-01 (tarball not yet taken: the builder left the project open).** Base `recipes-full`
([`../../../instructions/fixtures.md`](../../../instructions/fixtures.md)), extracted and opened alone.
Build through MPS MCP only, logging every call to `FIXTURE.log`; record the tarball's sha256 in
[`../../pins.md`](../../pins.md). Same `mcp.study.recipes` ids as every `recipes*` fixture.

1. `create_module` solution `mcp.study.recipes.editortests`, `create_model` `…editortests@tests` (tests facet;
   lang.test, recipes, closures).
2. Insert `R1_TypeRecipeName` (S17's shape), `R2_InsertStep` (`invoke action -> Insert` after the last step →
   empty step, caret on its text), `R3_CopyPasteStep` (S17's, same root), `R4_TypeStepMinutes` (`type "12"`,
   caret checked).
3. `create_run_configuration` `recipes-editortests`, run: 4/4 (build aid; not in the tarball).
4. Pin below; close; tar `recipes-editor/` with `classes_gen` and the standard excludes.

## Pins

Built 2026-11-01 in `~/MPSProjects/mcp-study/build/recipes-editor` (an extracted `recipes-full`, opened alone; MPS 2026.1,
build 261.25134). Every mutating call is one line of [`FIXTURE.log`](FIXTURE.log) (24 lines: `1`…`3` = the recipe steps,
`3-fix` = the R2 correction, `probe-A`/`probe-B`/`probe-restore` = the vacuity probes, `final`). Final state: MAKE
`rebuild: true` of `mcp.study.recipes`, `mcp.study.kitchen`, `mcp.study.recipes.editortests` successful (migrationsPending 0);
`recipes-editortests` (JUnit, `runType: MODEL`, live, 4 test cases): **4/4 passed**, exit 0; `check_root_node_problems`:
test model **0 errors, 0 warnings** (4 roots); language module 0 errors (19 roots; 1 warning, the pre-existing "Generator
Model … got no target nor query language" on the empty generator); kitchen clean. No SEVERE in `idea.log` for the build.
No deprecated concepts; R3 copies and pastes inside its own `before` root; no test has a `code` assertion or IDE service.

- Test module `360f32a8-361a-48f7-a661-75b1d1804936(mcp.study.recipes.editortests)` (facets `java`, `tests`; dependency
  `jetbrains.mps.ide.editor` Default, added by the `Insert`/`End` references), directory `solutions/mcp.study.recipes.editortests`.
- Test model `r:83a10058-6ae3-499a-8328-acc92ce3d1a7(mcp.study.recipes.editortests@tests)`: used languages `lang.test`,
  `mcp.study.recipes`, `baseLanguage.closures`, `baseLanguage` (for the `code` StatementList); import
  `jetbrains.mps.ide.editor.actions` (`Insert` …069782, `End` …069760).
- Editor roots (`r:a0f3f5e0-f12d-4e08-bc83-24f84d89d449(mcp.study.recipes.editor)/<id>`, unchanged from `recipes-full`):
  Step_Editor 12157282221710244, Ingredient_Editor …266, IngredientRef_Editor …279, RecipeRef_Editor …288,
  Recipe_Editor 12157282221710297, Cookbook_Editor …329.

```
Recipe_Editor  <default> editor for concept Recipe
  node cell layout:
     [-
 recipe { name }
   serves { servings } , difficulty { difficulty }
   steps:
   (- % steps % ↩ /empty cell: <default> -)
   see also: (> % seeAlso % /empty cell: <default> <)
 -]
  inspected cell layout:
    <choose cell model>

Step_Editor  <default> editor for concept Step
  node cell layout:
     [- - { text } ( { minutes } min, uses: (> % uses % /empty cell: <constant> <) ) -]
  inspected cell layout:
    <choose cell model>
```

Cell ids, read from `languages/mcp.study.recipes/source_gen/mcp/study/recipes/editor/*_EditorBuilder_a.java`: the recipe's
three guesses are right. Recipe: whole `Collection_6551nj_a`, name `property_name`, servings `property_servings`, difficulty
`property_difficulty`, `steps:` `Constant_6551nj_g0`, list `refNodeList_steps`, see-also list `refNodeList_seeAlso`. Step:
whole `Collection_t290g_a`, `-` `Constant_t290g_a0`, text `property_text`, `(` `Constant_t290g_c0`, minutes
`property_minutes`, `min, uses:` `Constant_t290g_e0`, list `refNodeList_uses` (separator `,` constant in the handler; empty
cell `Constant_t290g_a5a`), `)` `Constant_t290g_g0` (no style but gray text: no punctuation, no menu).
**Correction for S32 criterion 1:** the shipped tests also use `property_minutes` (R4), so the ids that must survive are
`property_name`, `property_text`, `property_minutes`, `Collection_t290g_a` (R2 and R3 select the whole Step through
`Collection_t290g_a`; no test uses the `)` id, so an explicit `EditorCellId` on `)` alters no shipped test).

### Shipped tests (`r:83a10058-…(mcp.study.recipes.editortests@tests)/<id>`), PLAIN TEXT

| root | id | caret `before` → `result` (AnonymousCellAnnotation) |
|---|---|---|
| R1_TypeRecipeName | 581195628551043552 | Recipe …554 `property_name` caret 0, sel 0..0 → Recipe …558 (ann …560) `property_name` isLastPosition, sel 8..8 |
| R2_InsertStep | 581195628551043563 | Step …566 (ann …567) `Collection_t290g_a` caret 0 → new Step …571 (ann …572) `property_text` caret 0, sel 0..0 |
| R3_CopyPasteStep | 581195628551043576 | Step …579 (ann …580) `Collection_t290g_a` caret 0 → no result annotation |
| R4_TypeStepMinutes | 581195628551043592 | Step …595 (ann …596) `property_minutes` caret 0, sel 0..0 → Step …599 (ann …600) `property_minutes` isLastPosition, sel 2..2 |

```
Editor test case R1_TypeRecipeName
description: typing a name into the empty name sets it; caret at its end
before: <cell recipe <name>
  serves 2 , difficulty easy
  steps:
  - Whisk the eggs ( 3 min, uses: nothing )
  see also: << ... >>>
result: <cell recipe Pancakes
  serves 2 , difficulty easy
  steps:
  - Whisk the eggs ( 3 min, uses: nothing )
  see also: << ... >>>
code:
  type "Pancakes"

Editor test case R2_InsertStep
description: Insert after the last step adds an empty step; caret on its text
before: recipe Omelette
  serves 1 , difficulty easy
  steps:
  <cell - Beat the eggs ( 2 min, uses: nothing )>
  see also: << ... >>
result: recipe Omelette
  serves 1 , difficulty easy
  steps:
  - Beat the eggs ( 2 min, uses: nothing )
  <cell - <instruction> ( <no minutes> min, uses: nothing )>
  see also: << ... >>
code:
  invoke action -> Insert

Editor test case R3_CopyPasteStep
description: copying the only step and pasting it after itself gives two equal steps
before: recipe Toast
  serves 1 , difficulty easy
  steps:
  <cell - Toast the bread ( 2 min, uses: nothing )>
  see also: << ... >>
result: recipe Toast
  serves 1 , difficulty easy
  steps:
  - Toast the bread ( 2 min, uses: nothing )
  - Toast the bread ( 2 min, uses: nothing )
  see also: << ... >>
code:
  invoke action by id: $Copy
  invoke action -> End
  invoke action by id: $Paste

Editor test case R4_TypeStepMinutes
description: typing 12 into an empty minutes cell sets the minutes; caret at its end
before: recipe Tea
  serves 1 , difficulty easy
  steps:
  <cell - Steep the tea ( <no minutes> min, uses: nothing )>
  see also: << ... >>
result: recipe Tea
  serves 1 , difficulty easy
  steps:
  <cell - Steep the tea ( 12 min, uses: nothing )>
  see also: << ... >>
code:
  type "12"
```

### Non-vacuity (two probe runs, then restored; `FIXTURE.log` `probe-*`)

| test | A: behaviour removed | B: behaviour kept, expectation wrong |
|---|---|---|
| R1 | `type ""` → `Different property: name = null, expected: Pancakes` | result sel 0..0 → `CellReference.java:61 expected:<0> but was:<8>` |
| R2 | `-> End` for `-> Insert` → `Different children count in role: steps [was: 1, expected: 2]` | result cell `property_minutes` → `CellReference.java:58 expected:<property_[minutes]> but was:<property_[text]>` |
| R3 | third action `$Copy` for `$Paste` → `Different children count in role: steps [was: 1, expected: 2]` | second result Step text `Toast the bread!` → `Different property: text = Toast the bread, expected: Toast the bread!` |
| R4 | `type ""` → `Different property: minutes = null, expected: 12` | result sel 0..0 → `CellReference.java:61 expected:<0> but was:<2>` |

Each probe run: 0/4, exit 4; the restored model: 4/4 (final run after the rebuild).

### Deviations

1. **R2 starts from a whole-Step selection, not a caret in the text.** The first run had R2's `before` caret at the end of
   `property_text` and failed (`Different children count in role: steps [was: 1, expected: 2]`): from a label cell,
   `EditorActionUtils.callAction` redispatches INSERT to the next child collection to the right, which is the Step's own
   `uses` list, not `steps`. A caret on the `)` would reach `steps`, but S32 may give `)` an explicit id; `Collection_t290g_a`
   (caret 0) reaches the `steps` list's `CellAction_InsertIntoCollection` and is one of the ids S32 keeps. The new Step's
   caret is `property_text` 0..0.
2. **R3 keeps S17's shape: the Step has no `uses`.** An IngredientRef in the copied Step would need an Ingredient root in the
   test model (no cross-model copy); not added, so `uses` equality stays trivial, as in S17.
3. **R4 starts from an unset `minutes`** (shown `<no minutes>`), so `type "12"` gives 12 with the caret at 2.
4. **`baseLanguage` added** as a used language beyond the recipe's list (the `code` StatementList); `jetbrains.mps.ide.editor`
   module dependency and the `jetbrains.mps.ide.editor.actions` import came from the action references.
5. **Step 4 not done:** the project is left open in MPS (builder instruction), so no close, no tarball, no sha256 in
   `../../pins.md` yet. `recipes-editortests` is a build aid and lives only in `workspace.xml`.
