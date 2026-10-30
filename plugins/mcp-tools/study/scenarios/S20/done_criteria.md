# S20 done criteria — Tariff plans: interface + implementations, per-tier constants, pattern rule, $MAP_SRC$

**Status: drafted 2026-10-30 by a fable subagent, revised after two opus reviews; rehearsal round
46: `S20-opus-1` FAIL on gates the prompt did not state (the `$COPY_SRCL$` loop index, the
`limits()` insertion, braces and parentheses; prompt and criteria revised), `S20-sonnet-1` PASS on
the revision (116 calls, 8 min). Round 47 (stable catalog `a7ee526d`, medium effort): `S20-opus-1` PASS (101 calls, 8 min), `S20-sonnet-1` PASS (132, 10); criteria wording fixed after the evaluators' notes. Prompt frozen 2026-10-30.**

## Fixture

`empty-project` (synthesized). Greenfield: language `mcp.study.tariff` (with generator), solution
`mcp.study.tariffdemo`, model `mcp.study.tariffdemo.plans`. Output idiom: a generated interface
and one implementation class per plan, a constants block, a string-switch factory. Plain Java 7:
no lambdas, no checked exceptions, no streams.

## Topics forced

Root mapping rule with `conditionFunction` + `labelDeclaration` · `CreateRootRule` **with**
condition whose output is read by label alone (`get output <label>`, no input) · `CreateRootRule`
without condition · `$COPY_SRCL$` (tiers → statements) · `$COPY_SRC$` on a single child (fee →
expression) · reduction with in-line template (no context) and in-line template **with context**
· pattern reduction rule with a **property pattern variable used in the consequence** · `$LOOP$`
with the loop index **and** node-macro `mappingLabel` on the loop, read by `$REF$`
elsewhere · `$PROPERTY$` typed (int, string) · `$MAP_SRC$` with a **null source** · `$MAP_SRC$`
with **mapper + post-mapper** · `$INSERT$` (nested ternary chain) · post-processing script
(`scriptKind` `post_processing`). Not here: weaving, switches, input-modifying scripts, plans.

## Criteria

Observer, read-only, `projectPath` = run project dir. Files are read on disk (`find`, `cat`; the
IDEA file tools are not reachable through `mcp_call.py`):
`**/mcp.study.tariffdemo/source_gen/mcp/study/tariff/out/*.java` (exactly four) and the sibling
`classes_gen/mcp/study/tariff/out` (four `.class`). Whitespace-normalised text, `if` bodies in
braces as MPS prints them (`if (usage <= TIER_1) { return 5; }`), redundant parentheses accepted;
member order matters where listed. `print_node` PLAIN TEXT for structure, JSON for flags/ids.

1. **Structure.** Language with one generator; the concepts and roles of step 1
   (`mps_mcp_get_concept_details` with `languageRefs`: concept names, property types, child
   cardinalities, `Plan` rootable and named; editors are not checked); the three Plan roots of step 2 (`Basic.currency` = `eur`,
   `Old.archived` true).
2. **Tariff.java**: `public interface Tariff` with exactly the three method declarations.
3. **BasicPlan.java**: `public final class BasicPlan implements Tariff`; `TIER_1 = 100`, `TIER_2 =
   0`; `price`: `if (usage <= TIER_1) { return 5; }` then `return 9;` (nothing else); `base()` returns
   `2`; `currency()` returns `"EUR"` (upper case; `"eur"` fails); `limits()` returns
   `new int[]{100, 0}`; `discount` returns
   `amount * 10 / 100`.
4. **ProPlan.java**: `TIER_1 = 50`, `TIER_2 = 500`, `TIER_3 = 0`; `price`: `if (usage <= TIER_1)
   { return 3; }`, `if (usage <= TIER_2) { return 20; }`, `return 50;`; `base()` `0`; `currency()` `"USD"`;
   `limits()` `new int[]{50, 500, 0}`; **no** `discount` method.
5. **Tariffs.java**: `public final class Tariffs` (the post-script applies to every class);
   `byName` is a `switch (name)` with `case "Basic": return new BasicPlan();`, `case "Pro": return
   new ProPlan();`, `default: return null;` in that order. No `OldPlan.java`.
6. **Mechanisms** (gates; record the alternative taken when one fails):
   - `Root_MappingRule` on `Plan` with `conditionFunction` (reads `archived`) and `labelDeclaration`;
   - `CreateRootRule` for `Tariff` **with** `conditionFunction` and `label`; the plan template's
     `implements` reference carries a `ReferenceMacro` whose query is
     `GenerationContextOp_GetOutputByLabel` (label only; `forModel` optional) — a `$REF$` by name
     or a typed reference to a template interface fails this item;
   - `CreateRootRule` for `Tariffs` **without** `conditionFunction`; the `case` statement carries
     `$LOOP$` and the `new <Name>Plan()` reference a `ReferenceMacro` reading the plan rule's label
     (`GetOutputByLabelAndInput`);
   - `TIER_<i>` field: `LoopMacro` with `mappingLabel` set (the label declared with
     `sourceConcept` Tier); its name `$PROPERTY$` uses the loop index (`LoopMacroNamespaceAccessor`
     `index`, or `counterVarName` read through `GenerationContextOp_ContextVarRef`) — a position
     query such as `node.index` fails this item; `price`'s `if`
     statements come from a `CopySrcListMacro` over `node.tiers`; the `Tier` reduction's `TIER_<i>`
     reference is a `ReferenceMacro` reading that loop label with the tier as input;
   - the limited-tier `Tier` reduction has an `InlineTemplateWithContext_RuleConsequence` (the
     `if` needs `usage` in scope); a `conditionFunction` (`upTo != 0`) is optional, because
     pattern rules (`patternReductionRule`) are always tried before reductions; the unlimited
     tier is a `PatternReduction_MappingRule` whose pattern quotation is a `Tier` with `upTo` 0
     and a `PropertyPatternVariableDeclaration` on `price`, and whose consequence's `$PROPERTY$`
     reads that variable (`GenerationContextOp_PropertyPatternRef`; a
     `TemplateArgumentPropertyPatternRefExpression` in a query has no TextGen and fails the make); a second conditional reduction rule instead
     fails this item;
   - `base()`: `CopySrcNodeMacro` on the return expression with `node.base`; a `Fee` reduction
     with `InlineTemplate_RuleConsequence` (an `IntegerConstant` + `$PROPERTY$`); a `$PROPERTY$`
     straight on an integer literal fails this item;
   - `currency()`: `MapSrcNodeMacro` on the string literal with **both** `mapperFunction` (builds
     the literal from `node.currency`) and `postMapperFunction` (upper-cases the output node's
     value); `toUpperCase` (or equivalent) appears only in the post-mapper — in the mapper or in
     a `$PROPERTY$` fails this item;
   - `limits()`'s return expression, or the creator inside its `new`, carries an `InsertMacro` whose query builds the
     `ArrayCreatorWithInitializer` (bare, or wrapped in the `GenericNewExpression` MPS uses for `new`) with
     one `IntegerConstant` per tier; a
     `$LOOP$` or `$COPY_SRCL$` on a template literal fails this item;
   - `discount`: `MapSrcNodeMacro` on the method with `sourceNodeQuery` `node.discount` (null for
     Pro); an `$IF$` fails this item;
   - a `MappingScript` with `scriptKind` `post_processing` referenced from the configuration's
     `postMappingScript`, setting the class modifier; `final` typed in the template fails this item.
7. **Clean.** `check_root_node_problems`: template model, structure model and `mcp.study.tariffdemo.plans`
   0 errors (warnings on template scaffolding, e.g. an unused context-class method, and the `String`
   info entries are not problems).

Pass = 1–7. Accepted: the `Tariff` template as a `TemplateDeclaration` or an interface root with
`RootTemplateAnnotation`; JDK names imported or qualified; the limited-tier rule with or without a condition; a
`DropRootRule` for archived plans (record whether one was added).

Process signals: `GN_*`; `get_concept_details` calls on generator concepts (discovery cost);
engine-source reads 0; console Java 0; makes before the first green one.

## Isolation

Greenfield ids; no name overlap with any other cell (`mcp.study.tariff*`). No restart needed before
it. The archived `Old` root is copied through to the output unless the worker adds a `DropRootRule`
for it (not asked, accepted and recorded; both round-47 workers added one).

## Risks

- `$INSERT$` builds nodes with quotations or `new node<>`; the placeholder return expression it
  replaces must live in the template. The built nodes must not reference output nodes: label
  lookups are not allowed in `InsertMacro_CreateNodeQuery` (rehearsal `S20-opus-1` met this with
  an earlier `tierFor` design and fell back to a deprecated `DynamicReference`).
- The `implements` placeholder must be a reference to a template-model interface (the `Tariff`
  template root itself works); a reference to a `mcp.study.tariff.out.Tariff` stub cannot exist.
- `$MAP_SRC$` with a null source removing a whole method is documented in `macro-map-src.md`
  since R1; a worker that reads only `macro-catalog.md` will reach for `$IF$`. The mapper /
  post-mapper pair on `currency()` is the only place a worker meets `MapSrcMacro_MapperFunction`.
- Pattern rules are the least-documented construct (`pattern-rules.md`); first failures expected
  there. Pattern rules are always tried before reductions; the limited-tier condition is optional.
- Size ≈ 150–180 tool calls (A1 was 110 with fewer constructs). If a rehearsal exceeds 60 min,
  drop 3b's `limits()` (`$INSERT$`) first.
- The copied-through `Old` root is harmless when no `DropRootRule` is added (rehearsal `S20-sonnet-1`: make green, no warning).
