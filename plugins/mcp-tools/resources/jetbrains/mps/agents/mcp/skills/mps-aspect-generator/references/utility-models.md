# Utility templates, template functions, and utility models

Read this when: reusing condition predicates across many rules, factoring out name-building helpers, or distinguishing utility models from runtime solutions / behavior methods.

## Template-side reuse

- **Template fragments** (`<TF ... TF>`) let you define one big sample in target language and expose only a sub-tree as the generated output. Multiple fragments are allowed in one template *only if they all sit under the same parent in the same role* — that produces multiple outputs from a single template call.
- **Template switches** — see `references/template-switches.md`.
- **Template functions / CALL templates** accept parameters (`genContext`, arbitrary `node<>` args) and act like subroutines — useful for shared patterns. Declare `templateParameter` children on the `TemplateDeclaration`, invoke via `TemplateCallMacro` with `templateArgument` children.

## Utility models inside the generator module

A generator module normally has one or more models whose names end with the `@generator` stereotype (e.g. `template/main@generator.mps`). MPS treats **every root node in a generator-stereotype model as a template** and feeds it to the generation process. That is fine for `MappingConfiguration`, `TemplateDeclaration`, `TemplateSwitch`, `MappingScript`, etc. — but it is *not* what you want for a plain Java helper class that holds reusable predicates, name-building logic, or lookup tables invoked from macro/query bodies.

The solution is a **utility model** — a plain-stereotype model (no `@generator` suffix) sitting *inside the generator module*. It "uses" `jetbrains.mps.baseLanguage`. Its roots are not picked up as templates; they are ordinary classes whose static methods you call from query bodies, property macros, `if` conditions, and so on. The code runs **at generation time**, not at generated-code runtime — so place it here, not in the language's runtime solution.

## Example — `MoneyUtil` in `org.jetbrains.mps.samples.Money`

The Money generator module at `samples/sampleJavaExtensions/languages/Money/generator/` contains two models side by side:

- `template/…/main@generator.mps` — the generator-stereotype template model (rules, templates, switches);
- `template/…/util.mps` — a plain-stereotype utility model whose single root is a `ClassConcept` `MoneyUtil` with a static method `isMoneyOperation(SNode node)` that asks the typesystem whether both operands of a `BinaryOperation` coerce to `MoneyType`.

`main@generator.mps` imports `util.mps` and calls `MoneyUtil.isMoneyOperation(node)` from the `conditionFunction` of each arithmetic-reduction rule (`PlusExpression`, `MinusExpression`, `MulExpression`, `DivExpression`, `EqualsExpression`, `NotEqualsExpression`) — six rules share the same predicate instead of duplicating the coerce logic inline. Because `MoneyUtil` lives in a non-generator model, MPS does not try to interpret it as a template.

## When to use a utility model

- Condition predicates reused by more than one rule (Money's `isMoneyOperation`).
- Name-building or id-building helpers shared across templates (beyond what `genContext.unique name` / `GenerationContextOp_CreateIndexedName` offer).
- Lookup tables or small algorithms that would clutter a `TemplateQueryBase` body.
- Any pure Java/Kotlin helper needed *by the generator itself*, not by the generated output.

## Wiring

1. In the generator module (`.mpl`), add the utility model under the same module — no module dependency changes needed; both models live in the same module.
2. In `main@generator.mps`, import the utility model via `mps_mcp_model_dependency` so templates can reference the class.
3. Invoke the static methods directly from query/macro bodies with `baseLanguage` dot expressions — at generation time the generator's own classpath contains the compiled utility class.

## Don't confuse with

- **Runtime solution** — holds classes the *generated code* calls at user-program runtime. Runtime solutions are declared as `runtime` dependencies on the language module and shipped to users; utility models are internal to generation and stay inside the generator module.
- **Behavior methods** — live in the `behavior` aspect and operate on input concepts. Use them for per-concept logic callable from *any* aspect; use utility models when the helper is generator-specific and doesn't belong on any one concept.
