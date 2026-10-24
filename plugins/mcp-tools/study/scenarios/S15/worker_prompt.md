You are working in the current folder, which contains a JetBrains MPS project with the language
`mcp.study.recipes` (concepts Recipe, Step, Ingredient, Cookbook) whose generator emits one Java
class per Recipe into package `mcp.study.generated`, and the solution `mcp.study.kitchen` with the
model `mcp.study.kitchen.samples` holding three recipes. MPS is running with the MCP server enabled
and this project open. Follow CLAUDE.md and the MPS skills.

Task: the generated Java is wrong; find the generator rule that produces it from the generation
trace, and fix it.

1. Make the samples model and read the generated classes under
   `solutions/mcp.study.kitchen/source_gen/mcp/study/generated`. Each class's `PORTIONS` must equal
   the recipe's `servings`; today `Pancakes.PORTIONS` is `3` although the recipe serves `2`.
2. Find out from the generation plan and the generation trace — not by reading the generator
   first — in which generation step the class is created, the transient model in which the wrong
   `PORTIONS` value first appears, and the rule that produced it.
3. Fix the generator so `PORTIONS` is the recipe's `servings`, rebuild the language, make the
   samples model again and confirm the Java for all three recipes.
4. Write `EVIDENCE.md` in the current folder: the plan step (index and transient-model prefix) in
   which the recipes generator runs, the transient model where the wrong value first appeared, the
   rule the trace named and its template root, what you changed, and the corrected `PORTIONS`
   lines. Free the transient models when you are done.

Done when: the language builds, every generated class has the right `PORTIONS`, `EVIDENCE.md`
holds the evidence, and the samples model is unchanged.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
