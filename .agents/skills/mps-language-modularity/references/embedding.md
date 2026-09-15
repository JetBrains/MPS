# Embedding

**Definition.** An independently useful **guest** language is integrated **syntactically, inline** into a **host**, while host and guest need **no direct mutual dependency**. A third **composition** language depends on both and does the semantic bridging (scopes, types, generation).

**Running example.** A reusable `expr` language (literals, `+ - * == && ||`, its own type system, its own generator to Java) is the **guest**. A `rules` language (a rule fires an outcome over named `Fact`s) is the **host**. Neither knows the other. A composition language `rules.expr` depends on both: it lets a rule's condition be an embedded `expr.Expression`, and adds a `FactRef` so embedded expressions can name host facts.

**Reuse vs. embedding — easy to blur.** In *reuse* the core owns an **abstract hook** (`Guard`) and the adapter supplies a subconcept — the core decides the slot's shape. In *embedding* the host owns a child typed as the guest's **own concrete** `Expression` — a whole pre-existing language dropped in unchanged. Control the slot's shape → reuse; inline a foreign language as-is → embedding.

**The defining tension:** syntactic embedding is **mechanically trivial** — the host concept just contains a child of the guest's abstract concept (e.g. `Expression`). Everything *after* is the hard part: constraining references to the host, bridging host types to guest types, composing generation. Treat embedding as **easy structurally, hard semantically.**

## MPS mechanics

**Guest** — self-contained: its own `Expression` hierarchy, literals, operators, type system, and a reusable generator lowering to BaseLanguage. By itself it knows nothing about the host — that independence is what makes this embedding, not extension.

**Composition language** — depends on both, often extends/adapts the host so it can own a guest child, and adds adapter concepts so the guest can talk about host data. → `mps-aspect-structure-concepts`.

```text
// rules.expr (composition — depends on rules AND expr)
concept ConditionalRule extends Rule        children:  Expression when 1   // host owns a guest child
concept FactRef         extends Expression  references: Fact fact 1          // adapter concept
```

Prefer **specific reference concepts** (`FactRef`) over a generic symbol reference: MPS lets each keep its own scope and type rules.

**Scope — the canonical semantic bridge.** The guest never knew about `RuleSet`/`Fact`; the composition language adds that knowledge and restricts a `FactRef` to facts of the enclosing rule set. → `mps-aspect-constraints`; `contextNode`/`ancestor<…>` syntax is smodel → `mps-model-manipulation`.

```text
link {fact} search scope:  contextNode.ancestor<concept = RuleSet, +>.facts;
```

**Type bridges — the most important non-obvious part.** Host and guest were each designed independently, so each defines its *own* primitive types — and two concepts sharing the simple name `BooleanType` (`rules.BooleanType` vs `expr.BooleanType`) are still **different concept instances**, incompatible to the type checker. So when a guest operator (`==`, `&&`) meets a `FactRef` carrying a *host* type, the guest's type system rejects it. Choose **one** canonical type space (often the guest's) and map everything into it — either type the adapter concept directly into that space, or extend the relevant overloaded operations to accept the host type and still yield a result in the chosen space. → `mps-aspect-typesystem`.

```text
// inference rule for FactRef as fr — map host primitive onto guest at the adapter boundary.
// An inference-rule body is a statement list, so guard the equation with a plain if:
if (fr.fact.type.isInstanceOf(rules.BooleanType)) { typeof(fr) :==: <expr.BooleanType>; }
if (fr.fact.type.isInstanceOf(rules.NumberType))  { typeof(fr) :==: <expr.NumberType>; }
// (alternative) overload guest == to accept a rules.BooleanType operand, result expr.BooleanType
```

**Generation — reuse the guest's lowering pipeline.** The guest already lowers to some base language; reuse it in the host chain rather than re-flattening expressions to text in every host. Host-specific reductions then handle *only* the adapter concepts (here `FactRef` → a host fact read). → `mps-aspect-generator`.

```text
reduction rule FactRef -> facts.read( $[fact.name] )   // host-specific; guest Expression -> Java reused unchanged
```

## Recipe

1. **Guest language** — useful on its own (structure, typesystem, reusable generator). Without that, this is probably just an extension.
2. **Composition language** — depend on both host and guest; don't require them to know each other.
3. **Structure** — host concept owns a child of the guest's abstract concept (e.g. `Expression`). In MPS that is all syntax-level embedding needs.
4. **Adapter concepts** — add specific reference concepts (`FactRef`) wherever the guest must name host elements.
5. **Constraints/scoping** — restrict visibility aggressively to the host context; embedded languages over-expose easily.
6. **Typesystem** — choose a canonical target type space and add explicit bridges. Duplicate primitive hierarchies are the #1 failure.
7. **Generator** — reuse the guest→BaseLanguage lowering; keep host-specific reductions only for adapter concepts.

## Pitfalls

- **"Syntax works, so embedding works"** — the trap. Notation composes immediately; the bugs are semantic.
- **Duplicate type hierarchies** — same-named host/guest primitives that are different concept instances; always bridge explicitly.
- **Over-exposed scopes** — embedded expressions seeing every fact in the project, not just the enclosing rule set.
- **Re-flattening the guest** — re-implementing guest→text in each host instead of reusing one lowering pipeline.

**Validation:** see `validation.md` § Embedding.
