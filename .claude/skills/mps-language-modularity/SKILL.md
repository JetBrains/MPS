---
name: mps-language-modularity
description: >-
  Use when designing how multiple MPS languages relate or compose — choosing between language referencing, extension, reuse, and embedding, or deciding where a cross-language dependency should live and how generated code interacts. Covers the 2×2 modularity taxonomy adapted to MPS, a decision procedure, per-kind recipes (references + search scopes; subconcepting + overloaded operations; abstract hooks + adapter languages + separated/interwoven generation; guest + composition languages + type bridges), the annotations escape hatch, and per-kind validation. This is the design tier above the aspect-implementation skills: it picks the strategy, then routes into the relevant mps-aspect-* skills (structure, constraints, typesystem, generator, generation-plan, intentions) and mps-tests. Reach for it before authoring aspects, or whenever one language must see, extend, embed, or adapt another.
type: reference
---

# MPS Language Modularity & Composition

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

The **design tier** for multi-language MPS work: before authoring aspects, decide *how* the languages relate. This skill turns a 2×2 taxonomy into a decision procedure and routes each choice into the aspect skills that implement it.

**The MPS-specific lesson: syntax composition is the easy part.** MPS is projectional — no parser, no grammar to become ambiguous — so combining notations needs far less work than in parser-based tools (only alias clashes and completion UX still need a glance). The real difficulty is semantic: **scopes, type systems, generator contracts, and migration.** Choosing a modularity kind is mostly choosing *where the dependency lives* and *how generated code interacts*.

## Critical directives

- **Spend effort on semantics, not syntax.** Scopes, type bridges, generator contracts, and migration are where modular languages break.
- **Two questions decide the kind** (below). Answer them before touching any aspect.
- **MPS "extends" ≠ the design category.** At the module level MPS calls almost any inter-language use "extension"; that *tool-level* dependency is independent of whether your *design* is referencing/extension/reuse/embedding. See `references/design-principles.md`.
- **References vs. containment is the structural fork.** Model a foreign element as a **reference** → *referencing*. Contain a foreign concept as a **child** → inline composition (*extension* vs *embedding*). Hard to reverse — pick deliberately.
- **Reuse must be designed in.** Abstract hooks, behavior contracts, and generator placeholders must exist *before* you need them; after-the-fact reuse (especially interwoven generation) is severely limited.
- **The exported surface is an API.** Behavior-method names, interface concepts, placeholder IDs, mapping labels, and generated abstract signatures are cross-language contracts — stabilize, version, and test them.

## The two questions (the 2×2)

> The four-kind taxonomy (referencing / extension / reuse / embedding) was introduced by **Markus Voelter** in his work on language composition (*DSL Engineering*). This skill adapts it to MPS practice.

|                                           | **New language MAY depend on the other** | **New language may NOT depend (independent core)** |
|-------------------------------------------|------------------------------------------|----------------------------------------------------|
| **Separate fragments** (no inline syntax) | **Referencing**                          | **Reuse** (via an adapter language)                |
| **Same fragment** (inline syntax)         | **Extension**                            | **Embedding** (via a composition language)         |

> "Inline / same fragment" means the concrete syntax the user *writes* — not where generated code ends up. Whether generated code is physically inlined is a *separate* axis (separated-vs-interwoven within **Reuse**), orthogonal to the kind.

## Decision procedure

1. **Must the new constructs be written inline**, among the host's nodes in the same fragment/root?
   - **No** → step 2.  **Yes** → step 3.
2. *(separate fragments)* **May the new language know the other directly?**
   - **Yes** → **Referencing** — cross-language references + search scopes.
   - **No** → **Reuse** — keep the core independent; build a separate **adapter** language that depends on both.
3. *(inline syntax)* **Are the new constructs built specifically for this host, or do they come from a language that must stay independent (a reusable guest)?**
   - **Built for the host, may depend on it** → **Extension** — subconcept the host's concepts; integrate type rules and generators additively.
   - **Must stay independent** → **Embedding** — add a third **composition** language depending on both host and guest, so neither needs to know the other.

If the goal is only to **attach metadata** to existing nodes (traceability, variability) rather than compose semantics, none of the four applies — see the **annotations** escape hatch in `references/design-principles.md`.

## The four kinds — essence, mechanism, routing

| Kind | One-liner | Inline? | Core dependency | Typical MPS mechanism | Generated-code relation | Implement with |
|---|---|---|---|---|---|---|
| **Referencing** | New language points into another's nodes; fragments stay separate (a dashboard widget → a metric in a catalog) | No | Yes | Cross-language references + search scopes + behavior naming contracts | Separate generators, shared naming contracts | structure-concepts, constraints, behavior |
| **Extension** | New concepts subtype base concepts, legal wherever the base is (MPS's own `collections`/`closures` over BaseLanguage) | Yes | Yes | Subconcept base concepts; additive typesystem (overloaded operations); reduction/weaving assimilation | Assimilated into the base language | structure-concepts, typesystem, generator, intentions |
| **Reuse** | Independently valuable core exposing hooks an adapter fills (a state-machine core whose `Guard`/`Action` an adapter binds) | No (in core) | No in core; yes in adapter | Abstract hook concepts + abstract behavior; separate adapter language; generator placeholders/priorities | Separated *or* interwoven | structure-concepts, behavior, generator, generation-plan |
| **Embedding** | Independent guest dropped inline in a host; a composition language bridges (an expression language inside a business rule) | Yes | Host/guest independent; composition layer depends on both | Host owns a child of guest's abstract concept + scope/type/generator adapters | Reuses guest generator; host-specific reductions | constraints, typesystem, generator, intentions |

If you don't actually need the guest to stay independent, **extension is materially cheaper than embedding** — prefer it.

Wiring the dependencies any strategy needs (used/extended languages, runtime solutions, accessory models) is covered by the `mps-aspect-accessories` companion skill.

## Reference index

- `references/referencing.md` — reference links, smart references, search scopes, behavior naming contracts.
- `references/extension.md` — subconcepting, overloaded operations, assimilation/weaving generators, placeholder hooks, upgrade intentions.
- `references/reuse.md` — abstract hooks, abstract behavior contracts, adapter languages, separated-vs-interwoven generation.
- `references/embedding.md` — composition language, narrow scopes, host/guest type bridges, reusing the guest's lowering pipeline.
- `references/design-principles.md` — cross-cutting lessons (reuse-designed-in, behavior contracts, specific references, model-to-model assimilation, MPS-"extends" trap) and the **annotations** escape hatch.
- `references/validation.md` — the per-kind test checklist.

## Related skills

- `mps-language-aspects-overview` — authoring order and which aspect to edit once a strategy is chosen.
- `mps-language-inheritance` — module `extends` and concept super/sub mechanics used by extension and embedding.
- `mps-tests` — `NodesTestCase` / `EditorTestCase` patterns the validation checklist relies on.

## Validation

Projectional reality changes what to test: invalid syntax usually cannot be entered, so parser-style tests are nearly irrelevant. Test the **semantic seams** — visible vs. invisible scope targets, host/guest type bridges, generator contracts (placeholder IDs, abstract signatures, priorities), and migration of representative example models. Run the model checker over the example suite after every structural or generator change. Full per-kind checklist: `references/validation.md`.

> Code snippets here are **illustrative pseudo-syntax** showing the *shape* of each pattern — implement the real artifacts through MPS MCP tools and the linked aspect skills; never hand-edit `.mps` files.
