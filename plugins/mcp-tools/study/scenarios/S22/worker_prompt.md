You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty EASY/MEDIUM/HARD and a list of Steps;
Step with text and minutes; Cookbook listing recipes), its generator `mcp.study.recipes.generator`
(maps every Recipe to a Java class in package `mcp.study.generated` with `PORTIONS` and
`steps()`), and the solution `mcp.study.kitchen` with the model `mcp.study.kitchen.samples`. MPS is
running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: extend the recipes generator, extend it again from a second language, and generate menus
from cookbooks in a later step.

1. In the samples set the difficulties: Crepes HARD, Pancakes EASY, Omelette MEDIUM. Add a
   Cookbook `Brunch` listing Pancakes and Omelette.
2. In the existing generator:
   a. every generated recipe class gets `public static String level()` returning
      `"<name>: easy"`, `"<name>: medium"` or `"<name>: hard"` by difficulty. The choice is made
      by a template switch `Level` with a string parameter `prefix` (passed the recipe name plus
      `": "`) that the cases read; when no case matches, its default dismisses the rule with the
      generator error "unknown difficulty"; when it gets no input it reports "no recipe".
   b. before any rule runs, a pre-processing script appends `" (quick)"` to the text of every
      step of two minutes or less, in the generated copy only (the samples must not change). The
      "quick" decision is a static helper method of a plain Java class in a utility model of the
      generator, not code in the script or a template.
   c. the Recipe roots stay available to the following generation step.
3. Language `mcp.study.recipes.pro`, extending `mcp.study.recipes`, with concept `ChefRecipe`
   (extends Recipe; string `chef`) and a generator whose only job is to extend `Level` with a
   case for ChefRecipe: `"<prefix>chef <chef>"`. Do not copy the existing cases. Add to the
   samples a ChefRecipe `Souffle` (servings 2, HARD, chef "Marie"; steps "Whip the egg whites"
   5 min, "Fold in the base" 1 min, "Bake until risen" 20 min). A ChefRecipe must get its Java
   class like every other recipe.
4. Language `mcp.study.recipes.menu` with a generator and no concepts of its own. It runs in the
   step after the recipes generators and turns every Cookbook root into
   `public class <Name>Menu` (the cookbook name without spaces, package `mcp.study.generated`).
   Each menu class has one `public static final String <RECIPE> = "<name> (<servings> portions)";`
   per listed recipe (`<RECIPE>` = the recipe name in upper case), and `public static String[]
   dishes()` returns those constants in cookbook order. Every reference goes through one mapping
   label keyed by the cookbook and the recipe. The servings are read from the listed recipes.
   The Recipe roots must not reach the Java step.
5. Give `mcp.study.kitchen` an explicit generation plan in a model of that solution: step one
   runs the generators of `mcp.study.recipes` and `mcp.study.recipes.pro` together, step two the
   menu generator, step three BaseLanguage's generators. No mapping priorities.
6. Rebuild the languages and make `mcp.study.kitchen`.
7. Done when: `mps_mcp_generation` PLAN for `mcp.study.kitchen.samples` shows the three steps with
   both recipes generators in the first; the generated Java compiles; `level()` returns
   `"Crepes: hard"`, `"Pancakes: easy"`, `"Omelette: medium"`, `"Souffle: chef Marie"`; `steps()`
   carries `" (quick)"` exactly on the steps of two minutes or less; `BrunchMenu` has `PANCAKES`,
   `OMELETTE` and `dishes()` returning them; `WeeknightBasicsMenu` likewise for its recipes; and
   `mps_mcp_check_root_node_problems` reports no errors on the three template models.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
