# Extension

**Definition.** *Syntactic integration with explicit dependencies.* A sublanguage extends a base language it fully knows, adds concepts valid **in the same fragment** as the base concepts, and composes editors, type rules, *and* generators. The user model becomes **heterogeneous**: nodes from several languages in one containment tree.

**Real MPS to study first.** MPS ships textbook extensions of `jetbrains.mps.baseLanguage`:
- `...baseLanguage.collections` — adds `sequence`/`list`/`set`/`map` **types** (`SequenceType extends Type`) and ops (`where`/`select`/`toList`), legal wherever an expression is, lowered to plain Java loops + runtime calls.
- `...baseLanguage.closures` — adds the `{ => … }` literal (`ClosureLiteral extends Expression`), reduced to a functional-interface instance.

Every one is the same move: *new concept subtyping a base concept → valid in existing positions → assimilated back to the base language by the generator.*

**Why MPS makes this easy.** Several extensions of one base language coexist in one program with no "combining grammar": concept identities are stored directly, so the AST stays unambiguous even when two extensions reuse a notation — only **alias collisions** cost an interactive completion choice.

**Choose it when** the new constructs must appear inline among base constructs *and* depending on that base is acceptable. **Not when** the base must stay independent of your additions (→ embedding) or you only link separate fragments (→ referencing).

## MPS mechanics

**Structure — subconcepting is the whole trick.** A concept becomes legal wherever its supertype is by *extending* it. → `mps-aspect-structure-concepts`.

```text
concept UnlessStatement extends Statement      // legal anywhere a statement is
  children: Expression condition 1; StatementList body 1
concept PlaceholderStatement extends Statement properties: id : string   // reserved generator hook
```

`PlaceholderStatement` is also a valid statement, but reserved as a **generator hook** for later composition — the seed of *extensible generators* (see `reuse.md`).

**Generator — assimilate to the base language.** Extensions are *lowered* into the host; nothing extension-specific survives. Simplest case is a pure reduction; for constructs needing a helper, the classic shape is **weaving rule** creates a method → **mapping label** remembers it → **reduction rule** replaces the construct with a call to that label (how `closures` lowers a capturing `{ => … }`). → `mps-aspect-generator`.

```text
reduction UnlessStatement -> IfStatement   condition = Not($COPY_SRC$[condition]); body = $COPY_SRCL$[body]
// unless (door.isOpen) { close(); }  →  if (!(door.isOpen)) { close(); }
```

**Typesystem — integrate into the lattice, don't bypass it.** Type the new concept in terms of the base type system. When an extension adds new *types* but should reuse *existing operators* (`+`, `*`, `==`), use **overloaded operation containers** rather than cloning operators — this keeps modularity additive and avoids two near-identical `+` concepts at completion. → `mps-aspect-typesystem`.

```text
concept MoneyType extends Type;  concept MoneyLiteral extends Expression  // 19.99 EUR
typeof(MoneyLiteral) :==: <MoneyType>;
// overloaded operations — no second "plus"/"times" concept:
operation PlusExpression  operands: <MoneyType>,<MoneyType>  -> <MoneyType>
operation MulExpression   operands: <MoneyType>,<int|float>  -> <MoneyType>
// (generator lowers MoneyType arithmetic to java.math.BigDecimal calls)
```

**Constraints — don't overgeneralize the host.** Restrict illegal blends only where needed (e.g. a `can be ancestor` rule banning a statement inside a constant-expression context). → `mps-aspect-constraints`.


## Recipe

1. **Accessories** — add the host language (BaseLanguage, your core, a reusable expression language) as a dependency.
2. **Structure** — new concepts as subtypes of existing base concepts; that one choice gives validity in existing positions.
3. **Editor** — assign unique aliases where possible.
4. **Typesystem** — type the new concept *and* extend existing operators via overloaded operation containers before duplicating syntax.
5. **Constraints** — ban illegal placements narrowly.
6. **Generator** — assimilate via reduction + weaving; reserve placeholders for future post-processing.
7. **Generation priorities** — run the extension generator **before** the host's final text generator and **after** any generator that must create hook nodes first. → `mps-aspect-generation-plan`

## Pitfalls

- **Syntax without semantics** — a concept added but not typed: looks valid, fails semantically.
- **Unordered hooks** — placeholders without explicit generator priorities (generation plans or generator priorities) leak into later phases.
- **New operators instead of overloads** — forces users to choose among near-identical concepts at completion.
- **Retrofitted reuse** — after-the-fact extension points are limited; plan hook concepts deliberately and early.

**Validation:** see `validation.md` § Extension.
