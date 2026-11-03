# S36 fixture: `recipes-gen-broken`

`recipes-gen` (S18/S19/S22's: `recipes-misgen` with D1 reverted, so the generator is right) plus two
checker-silent defects in the template model `<T>` =
`r:98539ed4-bf63-4715-a114-6d1e7a8ca01d(mcp.study.recipes.generator.templates@generator)`. Same module
ids as every `recipes*` fixture. Node ids are `recipes-gen`'s (= S15's, [`../s15/DEFECT.md`](../s15/DEFECT.md))
unless marked. Every call as sent is in `FIXTURE.log` next to this file; the tarball sha256 is only in
[`../../pins.md`](../../pins.md). Derived only through MPS MCP (`scripts/mcp_call.py`), never by editing `.mps`
as text.

## The generator as shipped by `recipes-gen`

| element | node |
|---|---|
| `MappingConfiguration` `main`, `Root_MappingRule` `map Recipe` | `<T>/12157282221657534`, `<T>/4956319657763003572` |
| template root `ClassConcept` `RecipeClass`, `packageName` `mcp.study.generated` | `<T>/4956319657762963862`; `$PROPERTY$` name ← `node.name` `…/4956319657762978635` (kept) |
| field `public static final int PORTIONS`, initializer `IntegerConstant` (template literal `0`, `../s15/DEFECT.log` §2) | `<T>/4956319657762963864`, `…/4956319657762963866`; `$PROPERTY$` value `…/4956319657762978650`, query `node.servings` |
| method `public static String[] steps()`, `StringLiteral "step"` | `<T>/4956319657762963868`, `…/4956319657762963872`; `$LOOP$` `…/4956319657762978665` ← `node.steps`, then `$PROPERTY$` value `…/4956319657762978680` ← `node.text` |

## Defect A — missing property macro

1. `mps_mcp_update_node {operation: "SET", kind: "CHILD", childNodeRef: "<T>/4956319657762978650"}`
   with no `childJson`: deletes the `PropertyMacro` on the `PORTIONS` initializer.
2. `mps_mcp_update_node {operation: "SET", kind: "PROPERTY", properties: [["<T>/4956319657762963866", "value", "1"]]}`:
   the literal leaks into every class as `PORTIONS = 1`, right by coincidence for 1-serving recipes
   (Omelette in the samples, Lemonade in the prompt's example).

## Defect B — incorrect node macro

3. `print_node` JSON `deep: true` of `<T>/4956319657762963872`: the `LoopMacro` `…/4956319657762978665` →
   `sourceNodesQuery` → `body` → `ExpressionStatement` `<LQ>` = `<T>/4956319657762978668` whose `expression` is `node.steps`.
4. `mps_mcp_update_node {operation: "ADD", kind: "CHILD", nodeReference: "<LQ>", childRole: "expression", childJson: …}`
   (single cardinality: replaces the expression) with `node.steps.skip(1)`: a `DotExpression` of the
   `DotExpression` `TemplateFunctionParameter_sourceNode` . `SLinkListAccess` (`steps`
   `r:1cb60491-97cd-473a-a80d-bee19374c6a4(mcp.study.recipes.structure)/12157282221657570`) and a
   `SkipOperation` whose `elementsToSkip` is `IntegerConstant 1`. Exact JSON in `FIXTURE.log`.

## Make, verify, tar

5. `check_root_node_problems` on `<T>` and on the three modules: no errors, no warnings (the `String`
   *info* entries are not problems).
6. `MAKE` `mcp.study.recipes` + `mcp.study.recipes.generator` with `rebuild: true`, then `mcp.study.kitchen`
   with `rebuild: true`. `generator/source_gen/.../Generator.java` still extends `TemplateModuleInterpreted2`.
7. `solutions/mcp.study.kitchen/source_gen/mcp/study/generated/` with the defects: `PORTIONS = 1` in Crepes,
   Pancakes and Omelette (right: 4, 2, 1); `steps()` misses the first step of every recipe (3 of 4, 2 of 3, 2 of 3).
8. `DROP_TRANSIENT_MODELS`, close, tar as `recipes-gen-broken/` with `classes_gen` and `source_gen`, the standard
   excludes (`../../../instructions/fixtures.md`). No test solution in the tarball.

## Pins (build of 2026-11-02, tarball sha256 in `../../pins.md`)

- `<LQ>` = `<T>/4956319657762978668`; defect B's new `DotExpression` = `<T>/4657257463304360987`.
- After the build: `<T>` 0 errors / 0 warnings (two *info* "It's recommended to use string type"); module checks
  of `mcp.study.recipes`, `mcp.study.recipes.generator`, `mcp.study.kitchen`: no problems.
  `RecipeClass` PLAIN TEXT: `public static final int PORTIONS = 1;` (no `$`), `return new String[]{$LOOP$"$step"};`.
- `Crepes.java` with the defects: `PORTIONS = 1`, `steps()` = `"Let the batter rest in the fridge", "Fry thin
  pancakes on both sides", "Fill with jam and fold into quarters"`; Omelette `1`, `"Pour into a buttered pan and
  cook gently", "Fold and slide onto a plate"`; Pancakes `1`, its last two steps.

## Observer walk (2026-11-02, discarded copy `workspace/s36-walk-20261102T1216`, same MPS process)

Solution `mcp.study.recipes.gentests` (`tests` facet), models `…@tests`, `….input`, `….expected`; both data
models `SET_DO_NOT_GENERATE`; input Porridge (3) and Lemonade (1) as JSON; expected classes through
`parse_java_and_insert` from the prompt's Java with `package mcp.study.generated;`; one `GeneratorTest`
`RecipeClasses` with `IN`/`OUT` arguments and one `TransformationMatchAssertion`; a one-root JUnit
configuration. The red run, verbatim (exit code 1; the result is inline, not a temp file):

```
java.lang.AssertionError: Transformation output model doesn't match reference one:
Node: Porridge vs Porridge
  Node: PORTIONS vs PORTIONS
    Node: integer constant vs integer constant
      Different property: value = 1, expected: 3
Node: Lemonade vs Lemonade
  Node: steps():String[] vs steps():String[]
    Node: StatementList vs StatementList
      Node: return vs return
        Node: new vs new
          Node: array with initializer vs array with initializer
            Node: null vs StringLiteral='Squeeze the lemons'
              Excessive node, no counterpart to match to
```

The output marker is `<TEST_FAILURE_BEGIN>`, not a bare `TEST_FAILURE`. The matcher stops at a root's first
difference: Porridge shows only A, Lemonade (servings 1 = the leaked literal) only B. The walk also showed
that fail-fast hides a test-side bug behind A: its first Porridge input had all three step texts in one
Step, which surfaced only after A was fixed (`Different property: value = Bring the milk to a
simmer;Stir in the oats;…`). After repairing the input, the two fixes (a `PropertyMacro` on the initializer
with `node.servings`, `ADD CHILD` into role `smodelAttribute`; the `<LQ>` expression back to `node.steps`)
and a MAKE of language + generator (no `rebuild`), the run was green (exit code 0). A MAKE of
`mcp.study.kitchen` then gave `PORTIONS` 4 / 2 / 1 with every step; the test Solution's only Java file is
`test_gen/…/RecipeClasses.java` (no `source_gen` output from the data models).
