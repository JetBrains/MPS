You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty and a list of Steps; Step with text and
minutes), its generator `mcp.study.recipes.generator` (maps every Recipe to a Java class in package
`mcp.study.generated` with `PORTIONS` and `steps()`), and the solution `mcp.study.kitchen` with the
model `mcp.study.kitchen.samples`. MPS is running with the MCP server enabled and this project open.
Follow CLAUDE.md and the MPS skills.

Task: give the recipes models explicit generation plans and maintain them.

1. Create a solution `mcp.study.plans` that holds the plans.
2. Plan `KitchenPlan`: first generate `mcp.study.recipes`, then persist a checkpoint `recipesDone`,
   then run BaseLanguage's generators.
3. Plan `PantryPlan`: apply the generator module `mcp.study.recipes.generator` itself (not its
   language); then fork into a plan `PantryAudit` (which only generates `mcp.study.recipes`), but only
   when the generated model's module has the module facet `tests`; then run BaseLanguage's generators.
4. The model `mcp.study.kitchen.samples` gets `KitchenPlan` the way a language designer ships a plan
   to users: through a DevKit `mcp.study.kitchen.devkit` that exports the `mcp.study.recipes`
   language and the plans solution, and that `mcp.study.kitchen.samples` uses.
5. Create a solution `mcp.study.pantry` with a model `mcp.study.pantry.stock` holding one Recipe
   `Porridge` (servings 1; one step "Simmer oats in milk", 10 minutes). Every model of
   `mcp.study.pantry` gets `PantryPlan`, without a DevKit.
6. After both plans are attached, maintain them: rename the checkpoint to `afterRecipes`, and move
   the BaseLanguage step out into a separate reusable plan `JavaPlan` that both `KitchenPlan` and
   `PantryPlan` include in its place.
7. Make `mcp.study.kitchen` and `mcp.study.pantry`.
8. Done when MPS reports that `mcp.study.kitchen.samples` is generated with KitchenPlan from the
   DevKit and `mcp.study.pantry.stock` with PantryPlan, both plans show the steps above in order,
   and both makes succeed with `Porridge.java` generated with `PORTIONS = 1`.

Do not roll back changes. Do not edit .mps, .mpl, .msd or .devkit files as text. Stop and explain if blocked.
