---
name: mps-quotations
description: >-
  Use when writing or debugging MPS quotations and anti-quotations — "node literals" that create SNode trees inline in behavior, typesystem, intentions, generator, and other model code. Covers heavy quotations (`Quotation`, `<...>`), light quotations (`NodeBuilder`, constructor-style for bootstrapping), and the four anti-quotation varieties: child (`%(...)%`), list (`*(...)*`), reference (`^(...)^`), property (`$(...)$`). Reach for this skill whenever the task involves splicing runtime values into quoted node trees or choosing between heavy and light quotations.
type: reference
---

# MPS Quotations and Anti-quotations

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

A **quotation** is a node literal — a concise expression that evaluates to an `SNode` (or tree of `SNode`s) at runtime. Instead of building nodes manually via the smodel API, you write the desired structure in the target language syntax and let MPS wrap it. Anti-quotations ("antiquotations") are escape holes inside a quotation where a runtime expression is spliced in.

**Required used language:** `jetbrains.mps.lang.quotation` (UUID `3a13115c-633c-4c5c-bbcc-75c4219e9555`)

## Critical Directives

- **Quotations do not call behavior constructors.** Using `<Car()>` produces an `SNode` of concept `Car` without running its constructor. Use `new node<Car>()` (smodel API) when you need the constructor to run.
- Use the **concept identifier inside a quotation, not an alias.** Write `<IntegerType>`, not `<int>`.
- All four anti-quotation kinds attach via the inherited `smodelAttribute` role on any `BaseConcept`. The anti-quotation node is a *sibling attribute* of the host node, **not** a replacement child. The runtime substitution happens during materialisation. See `references/antiquotations.md`.
- **`ListAntiquotation` constraint:** the list role must contain at least one placeholder child before you can activate a list antiquotation. The placeholder is replaced at runtime with zero-or-more nodes.
- `PropertyAntiquotation.propertyId` and `ReferenceAntiquotation.linkId` are filled in **automatically by MPS** when you type `$` / `^` in a property/reference cell. Do not construct these encoded ids manually unless you have already verified the exact `language-uuid/concept-id/property-or-link-id` form against the running MPS. See `references/property-and-reference-ids.md`.
- Prefer **heavy quotation** (`<...>`) for readability; switch to **light quotation** (`NodeBuilder`) only for bootstrapping (the target language can't be a `used language`), for generators-of-generators, or when nesting depth makes embedded syntax unreadable. See `references/heavy-vs-light.md`.
- The deprecated `NodeBuilderInitLink.expression` (cardinality 0..1) was removed in 2019.2. Use `initValue` with a `NodeBuilderExpression` instead.
- Edit quotation-bearing models through MPS MCP tools (`mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`). Do not hand-edit `.mps` files.
- Validate with `mps_mcp_check_root_node_problems`; quotations frequently expose missing used-languages on the host model (the quoted concept's language must be a *used language*, not just a dependency).

## Common-Path Workflow

1. Add `jetbrains.mps.lang.quotation` to the host model's **used languages**, plus the language whose concepts will be quoted.
2. In the editor, type `<` in an expression position to insert a `Quotation`, then type the desired surface syntax of the quoted node. The quoted concept must be available as a used language; otherwise switch to `NodeBuilder`.
3. To inject runtime values, place the caret inside the appropriate cell and type:
   - `%` — child antiquotation (replaces the child node)
   - `*` — list antiquotation (replaces a list-position node; requires a placeholder child first)
   - `^` — reference antiquotation (replaces a reference target)
   - `$` — property antiquotation (replaces a property value)
4. For bootstrapping or deep nesting, use the *Convert Quotation to NodeBuilder* intention (or insert `NodeBuilder` directly).
5. Validate with `mps_mcp_check_root_node_problems`; rebuild the host language if needed.

## When To Use Which Form

| Situation | Recommended form |
|---|---|
| Short, readable node literal in behavior / typesystem / intentions code | Heavy quotation |
| One or more children computed at runtime | Heavy quotation + child/list antiquotation |
| A property computed at runtime | Heavy quotation + property antiquotation |
| A reference target resolved at runtime | Heavy quotation + reference antiquotation |
| Bootstrapping (generating language infrastructure) or concept not importable | Light quotation (`NodeBuilder`) |
| More than 3 levels of nesting where embedded syntax is confusing | Light quotation (`NodeBuilder`) |

## Related Skills

- `mps-aspect-behavior` — behavior bodies frequently use quotations to build sub-trees; remember constructors do not fire when materialising a quotation.
- `mps-aspect-typesystem` — `<TypeConcept>` literals inside rule bodies are heavy quotations; the typesystem model typically imports `jetbrains.mps.lang.quotation` as a used language. The `:==:`/`:<=:` body shapes are in `mps-aspect-typesystem` `json-blueprints.md`.
- `mps-aspect-generator` — template macros are a different mechanism for building target trees; quotations are used in non-template code (filters, mapping scripts, conditions) within the generator model.
- `mps-aspect-migrations` — `<NewConcept>` plus `^(oldNode.target)^` is the canonical shape inside migration rewrite scripts (`references/antiquotation-reference.md` includes the verbatim example).
- `mps-aspect-intentions` — the `replace_invokeOperation_with_compactInvoke` example shipping with the closures language uses `<%(...)%>` + `*(...)*` to rebuild an expression tree.
- `mps-aspect-structure-concepts` — when the quoted concept's link/property metadata is needed; `propertyId` / `linkId` encode the persistent form of those declarations.
- `mps-model-manipulation` — the smodel operations and BaseLanguage expressions used inside antiquotation `expression` slots.

## Reference Index

- Open `references/heavy-vs-light.md` when deciding between `Quotation` and `NodeBuilder` — the surface trade-offs, the bootstrapping rationale, and the recommendation table for typical situations.
- Open `references/heavy-quotation.md` when authoring a basic `Quotation` (`<...>`) — concept structure, the `quotedNode`/`smodelAttribute`/`modelToCreate` roles, JSON blueprint, and the verbatim `MoneyType` example from the baseLanguage.money generator.
- Open `references/antiquotations.md` for the full antiquotation catalog — the four kinds at a glance, attachment mechanism via `smodelAttribute`, syntax (`%`/`*`/`^`/`$`), the `AbstractAntiquotation` interface, the `Antiquotation` (child) shape, and the closures-intention worked example combining child + list antiquotations.
- Open `references/antiquotation-list.md` when working with `ListAntiquotation` (`*(...)*`) — placeholder requirement, expression type (`nlist<..>` / `Iterable`), and how it cooperates with multi-cardinality list roles.
- Open `references/antiquotation-property.md` when writing or debugging a `PropertyAntiquotation` (`$(...)$`) — concept structure, `propertyId` / `name_DebugInfo` / `stringValueMigrated` properties, and the full JSON printout from the quotation editor test.
- Open `references/antiquotation-reference.md` when a runtime reference target must be spliced — `ReferenceAntiquotation` (`^(...)^`) shape, `linkId` / `role_DebugInfo` properties, and the migration-script example creating a `NewComponentRef` whose target is computed at runtime.
- Open `references/property-and-reference-ids.md` for the encoded id formats used by `PropertyAntiquotation.propertyId` and `ReferenceAntiquotation.linkId` — `language-uuid/concept-id/property-or-link-id` — and the rule "let MPS fill these in" when editing in the IDE.
- Open `references/light-quotation.md` when using `NodeBuilder` — the constructor-style notation, `NodeBuilderNode` / `NodeBuilderInitLink` / `NodeBuilderInitProperty` / `NodeBuilderExpression` (`#`) concept structure, deprecation note on `NodeBuilderInitLink.expression`, JSON blueprint, and the verbatim nested-NodeBuilder example from `jetbrains.mps.kotlin.smodel.behavior`.
- Open `references/model-and-node-id.md` when the quotation needs to land in a specific model or with a specific node id — `ModelNodeInitializer` shape and JSON blueprint.
- Open `references/concept-catalog.md` for the quick lookup table — FQNs and aliases of every `jetbrains.mps.lang.quotation.structure.*` concept, plus the key role names and cardinalities used in JSON blueprints.
- Open `references/source-locations.md` for paths inside the MPS repository — where to find structure/behavior/typesystem/editor of the quotation language, generation+editor test cases, and the source models behind every example used in this skill.
