You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (concepts Recipe, Step, Ingredient, Cookbook; enums Difficulty, Unit) and the
solution `mcp.study.kitchen` with the model `mcp.study.kitchen.samples`. MPS is running with the MCP
server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: generate Java from recipes.

1. Add a generator to `mcp.study.recipes` that produces, for every Recipe root, a Java class
   named after the recipe (in package `mcp.study.generated`) with a `public static final int
   PORTIONS` constant from `servings` and a `public static String[] steps()` method returning the
   step texts in order.
2. Make the language and the solution; confirm that `source_gen` under the solution contains one
   Java file per Recipe with the expected members, and report the file paths.
3. Add a behavior method `Recipe.describe()` returning `"<name> (<n> steps)"` twice: once via
   `mps_mcp_parse_java_and_insert`, and once (as `describe2()`) via a JSON AST blueprint. Both must
   compile.
4. Done when: the language builds cleanly, the generated Java is present, and
   `mps_mcp_check_root_node_problems` reports no errors on the behavior model and the samples model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
