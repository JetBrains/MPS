# S1 done criteria (observer, read-only, projectPath = run project dir)

How to read aspects, call shapes and the descriptor check: [`../../instructions/analysis.md`](../../instructions/analysis.md),
"Evaluating a run".
1. `mps_mcp_get_project_structure(includeModels=true)`: language `mcp.study.recipes` and solution
   `mcp.study.kitchen` with model `mcp.study.kitchen.samples` exist.
2. `mps_mcp_get_project_structure(startingPoint=mcp.study.recipes.structure, includeRootNodes=true)`
   for the inventory, then `mps_mcp_get_concept_details(languageRefs=mcp.study.recipes)` for the
   shapes: concepts Recipe, Step, Ingredient, Cookbook; Recipe has servings:int, difficulty,
   steps [1..n], seeAlso ref [0..n]; Step has text, minutes:int, uses [0..n]; Cookbook holds Recipe
   references. Every multi-valued reference (seeAlso, uses, the Cookbook's recipes) may be a child
   list of a smart-reference wrapper concept (e.g. `RecipeRef` with one `recipe` reference [1]);
   MPS references are single-valued, so that shape passes. Enums are **not**
   concepts, so `get_concept_details` never returns them — read their literals with
   `mps_mcp_query_structure(operation=GET_ENUMERATION_LITERALS,
   parameters={"enumerationRef": "mcp.study.recipes.structure.Difficulty"})`, which accepts a
   qualified name as well as a node reference; the `EnumerationDeclaration` roots in the same roots
   dump are the fallback if a name does not resolve: Difficulty {EASY, MEDIUM, HARD}, Unit {G, ML, PIECE}.
3. Aspects, read from the aspect models (not `get_concept_details`, which has no aspect data):
   - Editor: each of Recipe, Step, Ingredient and Cookbook has a `ConceptEditorDeclaration` that is
     **not scaffold output**. `mps_mcp_scaffold_editor` emits the concept alias, `Name:`, then one
     `<role>:` constant per property, then per reference, then per child, each label on a new line;
     its include filters and detected components can drop rows, so a missing label proves nothing.
     An editor passes when it has a constant the scaffolder never emits (a word such as `serves` or
     `min`, punctuation such as `->`), or puts two label/value rows on one line. Smart-reference
     wrapper concepts are exempt.
   - Constraints: the two behaviours the prompt asks for exist, wherever they live: `servings` ≥ 1
     (a property validator or a checking rule), and a Recipe cannot list itself in seeAlso (a
     referent scope on the wrapper's reference that excludes the containing Recipe, or a check).
     Read the bodies; a rule that exists with another meaning does not count.
   - Typesystem: a checking rule that reports a **warning** when a Step's minutes is 0 (a rule
     that also covers negative values passes).
   - Behavior: `Recipe.totalMinutes()` sums the steps' minutes.
4. `mps_mcp_get_project_structure(startingPoint=mcp.study.kitchen.samples, includeRootNodes=true)`:
   3 Ingredient roots, 3 Recipe roots, 1 Cookbook root. Print one Recipe (`format="PLAIN TEXT"`):
   servings, difficulty (a value left at the default is valid), 2–4 steps, ≥1 seeAlso.
5. `mps_mcp_check_root_node_problems` on every root of the samples model: 0 errors.
6. The language builds cleanly: `mps_mcp_check_root_node_problems` on each aspect model of
   `mcp.study.recipes` (structure, editor, constraints, typesystem, behavior): 0 errors. Then the
   descriptors are not hollow: `mps_mcp_get_concept_details(languageRefs=mcp.study.recipes)`.
   An entry carries `descriptorStatus` **only** when its descriptor is hollow (then always
   `"hollow"`, with a `descriptorRecoveryAction`); a healthy concept has no such field. Pass = no
   entry has `descriptorStatus`. Its absence is direct evidence, not an inference.
Pass = all six hold. Record which failed with the evidence excerpt.
