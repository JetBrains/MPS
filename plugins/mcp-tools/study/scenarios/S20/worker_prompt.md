You are working in the current folder, which contains an empty JetBrains MPS project. MPS is
running with the MCP server enabled and this project open. Follow CLAUDE.md and the MPS skills.

Task: a small DSL for tariff plans and a generator that emits one Java class per plan.

1. Language `mcp.study.tariff` with a generator. Concepts: root `Plan` (name; string `currency`;
   boolean `archived`; child `base: Fee[1]`; child `discount: Discount[0..1]`; children
   `tiers: Tier[1..n]`); `Fee` (int `amount`); `Discount` (int `percent`); `Tier` (int `upTo`,
   int `price`; `upTo` 0 means "unlimited" and is always the last tier). Minimal editors.
2. Solution `mcp.study.tariffdemo`, model `mcp.study.tariffdemo.plans`: Plan `Basic` (currency
   `eur`; base 2; discount 10; tiers: upTo 100 price 5, upTo 0 price 9); Plan `Pro` (currency
   `USD`; base 0; no discount; tiers: upTo 50 price 3, upTo 500 price 20, upTo 0 price 50);
   Plan `Old` (archived; `GBP`; base 1; tiers: upTo 0 price 1).
3. Generator, package `mcp.study.tariff.out`:
   a. When the model has at least one plan that is not archived, one interface `Tariff` with
      `int price(int usage);`, `int base();` and `String currency();` is generated without an
      input root. Every plan class implements it; the `implements` reference must be resolved
      through a mapping label on the rule that creates the interface.
   b. Every plan that is not archived becomes `public final class <Name>Plan implements Tariff`
      with, in order:
      - one `public static final int TIER_<i> = <upTo>;` per tier, `<i>` counting 1, 2, 3 in
        tier order (so `Basic` has `TIER_1 = 100`, `TIER_2 = 0`), taken from the generating loop's
        iteration index;
      - `public int price(int usage) { ... }` whose body is one statement per tier, in order,
        produced by copying the plan's tiers into the body with a single `$COPY_SRCL$`: a
        tier with a limit becomes `if (usage <= TIER_<i>) return <price>;` where `TIER_<i>` is a
        reference to that tier's own constant, resolved through a mapping label written on the
        constant's loop (not by name); the unlimited tier becomes `return <price>;` — match the
        unlimited tier with a pattern-based rule whose pattern binds the price to a variable that
        the output uses;
      - `public int base() { return <amount>; }` — the fee is copied into the return and reduced
        to the integer literal by its own rule;
      - `public String currency() { return "<CURRENCY>"; }` with the currency in upper case.
        Produce the literal with one `$MAP_SRC$` whose mapper function creates it from the
        plan's currency and whose post-mapper function upper-cases it;
      - `public int[] limits() { return new int[]{100, 0}; }` — the tiers' `upTo` values in
        order, the array creator built imperatively in one `$INSERT$`;
      - `public int discount(int amount) { return amount * <percent> / 100; }` only for a plan
        that has a discount; produce it with a `$MAP_SRC$` that rebinds the input to the
        discount (a plan without one gets no method; no `$IF$`).
      The `final` modifier is added to every generated class by a post-processing script, not by
      the template.
   c. One class `Tariffs` per model, created without an input root and without a condition, with
      `public static Tariff byName(String name)` whose body is a `switch (name)` with one
      `case "<name>": return new <Name>Plan();` per generated plan, in model order, then
      `default: return null;`. The constructor calls reference the generated classes through the
      plan rule's mapping label.
4. Make the language and the solution.
5. Done when: both modules make without errors, the generated Java compiles, `Tariff.java`,
   `BasicPlan.java`, `ProPlan.java` and `Tariffs.java` exist with the content above and there is no
   `OldPlan.java`, and `mps_mcp_check_root_node_problems` reports no errors on the generator's
   template model.

Do not roll back changes. Do not edit .mps/.mpl files as text. Stop and explain if blocked.
