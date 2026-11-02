You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (Recipe with name, servings, difficulty and a list of Steps; Step with text and
minutes), its generator `mcp.study.recipes.generator`, and the solution `mcp.study.kitchen` with
the model `mcp.study.kitchen.samples` holding three recipes. MPS is running with the MCP server
enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: the generator does not produce what we want; correct it.

Every Recipe should become one Java class in package `mcp.study.generated`, named after the
recipe, whose constant `PORTIONS` is the recipe's servings and whose `steps()` returns all of the
recipe's step texts, in the recipe's order. For instance, a recipe `Porridge` that serves 3 with
the steps "Bring the milk to a simmer", "Stir in the oats", "Cook for five minutes", and a recipe
`Lemonade` that serves 1 with the single step "Squeeze the lemons", should come out as

    public class Porridge {
      public static final int PORTIONS = 3;
      public static String[] steps() {
        return new String[]{"Bring the milk to a simmer", "Stir in the oats", "Cook for five minutes"};
      }
    }
    public class Lemonade {
      public static final int PORTIONS = 1;
      public static String[] steps() {
        return new String[]{"Squeeze the lemons"};
      }
    }

Today the classes come out differently.

1. Correct the generator, and capture this description as a generator test in a test solution
   of its own, using the two recipes above as its example. Keep `mcp.study.kitchen` as it is: do
   not change its recipes or use them as test input.
2. Done when: the language builds; the test passes in a run configuration run through the MCP
   run-configuration tool; the generated Java of the three sample recipes matches the description
   (make the samples model and read the classes under
   `solutions/mcp.study.kitchen/source_gen/mcp/study/generated`); and the sample recipes are
   unchanged.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
