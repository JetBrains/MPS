You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty and a list of Steps; Step with text and
minutes), its generator `mcp.study.recipes.generator`, and the solution `mcp.study.kitchen` with
sample recipes. The generator maps every Recipe to one Java class in package `mcp.study.generated`:

    public class <recipe name> {
      public static final int PORTIONS = <servings>;
      public static String[] steps() { return new String[]{<the step texts, in order>}; }
    }

MPS is running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: add generator tests for the recipes generator and run them.

1. Create a solution `mcp.study.recipes.gentests` with a `@tests` model
   `mcp.study.recipes.gentests`. Keep all test data in this solution. Do not change
   `mcp.study.kitchen` and do not use its recipes as test input.
2. Test input: two Recipes, in this order: `Tea` (servings 2; steps "Boil water", "Steep the
   leaves") and `Toast` (servings 1; step "Toast the bread").
3. Add three generator tests, one per check below, named as given. Each compares what the
   generator produces for that input with expected Java classes.
   a. `RecipeClasses`: the output is exactly the two expected classes, listed Tea first. The test
      fails if a `PORTIONS` value, a step text, or the number of classes is wrong.
   b. `RecipeClassesAnyOrder`: the same check against the expected classes listed Toast first. It
      must pass although the generator produces Tea first.
   c. `RecipesGeneratorOnly`: the same check as (a), but only the recipes generator runs, through
      an explicit generation plan.
4. Building the test solution must not generate Java files from the test input or from the
   expected classes.
5. Create a run configuration for the test model and run it via the MCP run-configuration tool.
6. Done when all three tests pass in that run configuration.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
