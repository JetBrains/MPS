# Making Fork Conditions Printable in MPS Core

## Summary

Making `ForkCondition` printable in MPS core is a **small, self-contained change (~50–80 lines of hand-written Java across 4–5 files in `core/generator`)**, plus an optional 2-line update in `mps-console`'s `PartitioningHelper` if `#showGenPlan` in the IDE Console should also display it.

Today, `ModelGenerationPlan.Fork.getCondition()` (`core/generator/source/jetbrains/mps/generator/ModelGenerationPlan.java:194`) returns a `@Nullable ForkCondition`, and `ForkCondition` (`core/generator/source/jetbrains/mps/generator/plan/ForkCondition.java:8`) is a single-method interface:

```java
public interface ForkCondition {
  boolean test(GenerationSessionContext context);
}
```

Every layer involved in building a `ForkCondition` currently erases or hides its human-readable representation:

1. **`PlanParameterIdentity` and `TrivialParameterIdentity` hide the parameter name:**
   - `PlanParameterIdentity` (`core/generator/source/jetbrains/mps/generator/plan/PlanParameterIdentity.java:6`) is an empty marker interface.
   - Its sole implementation in the repository, `TrivialParameterIdentity` (`core/generator/source/jetbrains/mps/generator/impl/plan/TrivialParameterIdentity.java:9`), stores `private final String myQualifiedName` and implements `equals`/`hashCode`, but has neither `getName()` nor `toString()`.
2. **`ConditionBuilder` composes opaque `java.util.function.Predicate` lambdas:**
   - `ConditionBuilder` (`core/generator/source/jetbrains/mps/generator/impl/plan/ConditionBuilder.java:28`) builds a `Deque<Predicate<ParameterContext>>`.
   - While leaf predicates are instances of the private inner class `EqualValue(myParam, myValue, myMandatory)` (`ConditionBuilder.java:137`), `and()`, `or()`, and `not()` (`ConditionBuilder.java:37-52`) use `Predicate.and(...)`, `Predicate.or(...)`, and `Predicate.negate()`. Those default methods on `java.util.function.Predicate` return synthetic lambdas (`(t) -> test(t) && other.test(t)`), losing the expression tree and any ability to format `toString()`.
   - `ConditionBuilder.FC` (`ConditionBuilder.java:66`) wraps the resulting `Predicate<ParameterContext>` without `toString()`.
3. **`ModuleFacetPresentLegacyForkCondition` has no `toString()` or getter:**
   - `ModuleFacetPresentLegacyForkCondition` (`core/generator/source/jetbrains/mps/generator/impl/plan/ModuleFacetPresentLegacyForkCondition.java:9`) holds `private final String myGenerationTarget` and implements `ForkCondition`, with no `toString()` (so it prints as `jetbrains.mps.generator.impl.plan.ModuleFacetPresentLegacyForkCondition@<hash>`).

---

## Required Changes in MPS Core (`core/generator`)

There are **only two `ForkCondition` implementations** and **one `PlanParameterIdentity` implementation** in the entire repository. All of them live in `core/generator/source/jetbrains/mps/generator/` (plain hand-written Java, not generated from an MPS model).

### 1. `PlanParameterIdentity` & `TrivialParameterIdentity`

- **File:** `core/generator/source/jetbrains/mps/generator/plan/PlanParameterIdentity.java`
- **File:** `core/generator/source/jetbrains/mps/generator/impl/plan/TrivialParameterIdentity.java`
- **Change:** Either add `String getName()` (or rely on `toString()`) on `PlanParameterIdentity` and implement `getName()` / `@Override public String toString()` in `TrivialParameterIdentity` returning `myQualifiedName`:

```java
@Override
public String toString() {
  return myQualifiedName;
}
```

### 2. `ForkCondition` (API contract)

- **File:** `core/generator/source/jetbrains/mps/generator/plan/ForkCondition.java`
- **Change:** Either:
  - Add a `default String describe() { return toString(); }` method to `ForkCondition` (matching the commented-out `String describe();` idea in `ModelGenerationPlan.Step` at `ModelGenerationPlan.java:80`), **or**
  - Document `toString()` on `ForkCondition` as returning a human-readable condition description and implement `toString()` in both concrete classes.
  - Note: `ForkCondition` is explicitly marked `PROVISIONAL API, DO NOT USE OUTSIDE OF MPS. LIKELY TO GET CHANGED` (`ForkCondition.java:10-11`), so adding `default String describe()` or `toString()` has zero external compatibility risk.

### 3. `ModuleFacetPresentLegacyForkCondition`

- **File:** `core/generator/source/jetbrains/mps/generator/impl/plan/ModuleFacetPresentLegacyForkCondition.java`
- **Change:** Implement `toString()` (and/or `describe()`):

```java
@Override
public String toString() {
  return String.format("module facet '%s' present", myGenerationTarget); // or "target: " + myGenerationTarget
}
```

### 4. `ConditionBuilder` (`FC` and predicate combinators)

- **File:** `core/generator/source/jetbrains/mps/generator/impl/plan/ConditionBuilder.java`
- **Change:**
  1. Implement `toString()` on `EqualValue` (`ConditionBuilder.java:137`):
     ```java
     @Override
     public String toString() {
       return String.format("%s == %s", myParam, myValue);
     }
     ```
  2. Replace `Predicate.and` / `Predicate.or` / `Predicate.negate` in `and()`, `or()`, and `not()` (`ConditionBuilder.java:37-52`) with a small named record/helper or combinator wrapper that preserves `toString()` (note also the stack pop order in `ConditionBuilder`: `p1 = pop(); p2 = pop()`):
     ```java
     private record NamedPredicate<T>(Predicate<T> delegate, String text) implements Predicate<T> {
       @Override
       public boolean test(T t) { return delegate.test(t); }
       @Override
       public String toString() { return text; }
     }
     ```
     Then in `ConditionBuilder`:
     - `and()`: pop `right`, pop `left` → `new NamedPredicate<>(left.and(right), "(" + left + " && " + right + ")")`
     - `or()`: pop `right`, pop `left` → `new NamedPredicate<>(left.or(right), "(" + left + " || " + right + ")")`
     - `not()`: pop `p` → `new NamedPredicate<>(p.negate(), "!(" + p + ")")`
  3. Delegate `toString()` (and/or `describe()`) in `ConditionBuilder.FC` (`ConditionBuilder.java:66`) to `myFilter.toString()`:
     ```java
     @Override
     public String toString() {
       return myFilter.toString();
     }
     ```

---

## Related Gaps Discovered in the Codebase

While inspecting the fork condition pipeline, three related gaps stood out:

1. **`PartitioningHelper` in `mps-console` ignores `fork.getCondition()`:**
   - In `plugins/mps-console/lang/ideCommands/source_gen/jetbrains/mps/console/ideCommands/util/PartitioningHelper.java:106-113` (generated from `plugins/mps-console/lang/ideCommands/models/jetbrains/mps/console/ideCommands/util.mps`), `printStep` currently does:
     ```java
     } else if (step instanceof ModelGenerationPlan.Fork) {
       ModelGenerationPlan.Fork fork = (ModelGenerationPlan.Fork) step;
       console.addText(String.format("%s Fork:\n", indentString));
     ```
   - Once `ForkCondition` has a `toString()` / `describe()`, `PartitioningHelper` can print `Fork (when <condition>):` when `fork.getCondition() != null`.
2. **`ConceptListSelector` is defined in the `jetbrains.mps.lang.generator.plan` language but not translated in `GenPlanTranslator`:**
   - The `jetbrains.mps.lang.generator.plan` language defines two `ForkSelector` subconcepts: `ParameterEquals` and `ConceptListSelector`.
   - However, `GenPlanTranslator.feedForkCondition` (`core/generator/source_gen/jetbrains/mps/generator/impl/GenPlanTranslator.java:221-231`, generated from `core/generator/solutions/generator/models/impl.mps`) currently only handles `ParameterEquals`:
     ```java
     ForkConditionBuilder fcb = branchBuilder.withConditionSelector();
     if (SNodeOperations.isInstanceOf(forkSelector, CONCEPTS.ParameterEquals$YP)) {
       SNode spe = SNodeOperations.cast(forkSelector, CONCEPTS.ParameterEquals$YP);
       fcb.same(toParameterIdentity(SLinkOperations.getTarget(SLinkOperations.getTarget(spe, LINKS.parameter$euJ1), LINKS.declaration$eoQb)), SPropertyOperations.getString(spe, PROPS.value$euY2));
     }
     fcb.complete();
     ```
   - If a plan uses `ConceptListSelector`, `fcb.same(...)` is never called, and `fcb.complete()` hits `assert myFilter.size() == 1;` in `ConditionBuilder.java:62` (or `NoSuchElementException` on `myFilter.pop()` when assertions are off).
3. **`ModelSetup` on `ModelGenerationPlan.Fork` is also not inspectable/printable:**
   - A `Fork` step can also carry a `ModelSetup myModelConfigurator` (`ModelGenerationPlan.java:169`, populated from `InitModelAttributes` or `gentarget`), which sets model attributes like `targetFacet` on the forked branch's transient model.
   - Unlike `myForkSelector` (which has `getCondition()`), `Fork` has no `getModelSetup()` getter (only `configure(SModel)`), and `ModelSetupImpl` (`core/generator/source/jetbrains/mps/generator/plan/ModelSetupImpl.java:12`) has no `toString()` or attribute map accessor.

---

## Impact on `plugins/mcp-tools/docs/generation-debugging-plan.md`

- **If `toString()` is added on `TrivialParameterIdentity`, `ConditionBuilder` (`EqualValue`/`FC`), and `ModuleFacetPresentLegacyForkCondition`:**
  - Not even a new method on `ForkCondition` is strictly required for `mps-mcp` — `fork.getCondition()?.toString()` in `mps_mcp_generation`'s `PLAN` operation will immediately return strings like `"jetbrains.mps.generator.extensions.module-facet == documentation"` or `"module facet 'xyz' present"` without any binary-incompatible signature change, and `conditionPrintable: false` in section `3.3` of `generation-debugging-plan.md` can be replaced with `"condition": fork.condition?.toString()`.
