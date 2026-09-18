---
name: mps-aspect-constraints
description: Use when defining or editing MPS language constraints — property validators / setters / getters, referent search scopes (imperative or inherited via `ScopeProvider.getScope`), `referentSetHandler` side effects, default-scope blocks, `canBeChild` / `canBeParent` / `canBeAncestor` / `canBeRoot` placement rules, `defaultConcreteConcept` for abstract concepts, `set <read-only>` and `{name}` aliasing, and scope helpers (`SimpleRoleScope`, `ListScope`, `CompositeScope`, `HidingByNameScope`). Reach for this skill whenever the task involves authoring or modifying `<lang>/languageModels/constraints.mps`.
type: reference
---

# MPS Constraints Aspect

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

The **constraints** aspect controls *runtime* rules about nodes: what values properties may hold, how a property is stored when set, what nodes a reference may point to, and where a node of a concept is allowed to appear in the AST. It lives in the language's `constraints` model (`<lang>/languageModels/constraints.mps`) and uses the language `jetbrains.mps.lang.constraints`.

Constraints are enforced at edit time and also consulted by the typesystem/editor. They are **not** the place for structural cardinalities (that belongs in `structure`) or for types (that belongs in `typesystem`).

## Critical Directives

- One `ConceptConstraints` root per concept. Set its `concept` reference; everything else is child blocks.
- Pick the right body for the job:
  - **Validator** (`propertyValidator`) — pure acceptance check; returns `boolean`; never mutates state.
  - **Setter** (`propertySetter`) — normalises and **must explicitly assign** `node.<prop> = propertyValue` (a body that forgets this silently drops the value).
  - **Getter** (`propertyGetter`) — only when the displayed value differs from the stored value (derived URL, aliased name).
  - `set <read-only>` means *no setter at all* — direct assignment to the property is rejected by MPS. An empty-body setter is almost always a bug.
- `canBeChild` / `canBeParent` / `canBeAncestor` are **inherited** by sub-concepts; per-property and per-reference constraints are **not** — duplicate the `ConceptConstraints` root or hoist the rule up.
- Pick the right scope shape:
  - **Inherited via `InheritedNodeScopeFactory` + `ScopeProvider.getScope` (behavior)** — preferred whenever the scope naturally belongs to an ancestor (block, declaration, program, module). Composes cleanly along the containment chain with `parent scope`.
  - **Imperative `ConstraintFunction_ReferentSearchScope_Scope`** — only when the scope is tiny, highly local, and has no natural ancestor owner.
- `referentSetHandler` performs side effects (auto-rename referrer, copy fields, `keeps original reference`). Never overload the scope to do this.
- `defaultConcreteConcept` on `ConceptConstraints` chooses which concrete subconcept replaces an abstract pick — it is a single reference, not a child block.
- Surface forms (`come from`, `parent scope`, `kind.isSubConceptOf(...)`, `link/C : role/`, `concept/C/`) are not BaseLanguage. Each is a dedicated `jetbrains.mps.lang.scopes` / `jetbrains.mps.lang.smodel` concept — construct those concepts, not strings (see `references/scope-fqn-reference.md`).
- `Concept_IsSubConceptOfOperation` matches a concept **and** its sub-concepts; `Concept_IsExactlyOperation` excludes sub-concepts. Use `isExactly` for guards that must not fire on specialisations.
- Edit constraint models through MPS MCP (`mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`, `mps_mcp_parse_java_and_insert`). Do not hand-edit `.mps` files. Validate with `mps_mcp_check_root_node_problems` and rebuild the language; if the new constraint is invisible at runtime, run `mps_mcp_reload_all`.

## Section index — open one heading, not the file

`references/` is a lookup catalog. Never Read `referent-constraints.md` (~48 KB) or `property-constraints.md` (~14 KB) in one shot. Pick the row, grep headings, Read only that range, stop.

| Job | File | Heading to open |
|---|---|---|
| have not chosen scope style yet | referent-constraints.md | Choosing between the two approaches |
| scope computed at the reference site | referent-constraints.md | Imperative reference-side scope |
| scope belongs to an ancestor / getScope | referent-constraints.md | Inherited scope via `InheritedNodeScopeFactory` + `ScopeProvider` |
| setting a ref must rename/copy/keep original | referent-constraints.md | ReferentSetHandler: side effects on reference assignment |
| every ref *to* this concept shares one scope | referent-constraints.md | Default Scope (concept-level, not reference-level) |
| validator / setter / getter shape | property-constraints.md | Shape of `NodePropertyConstraint` |
| validator / getter / setter wrapper FQNs | property-constraints.md | Key concept FQNs for property constraints |
| validator JSON blueprint | property-constraints.md | Validator example — `Compound.cardinality` (ChemMastery) |
| derived-getter JSON blueprint | property-constraints.md | Derived getter example — `Element.details_url` (ChemMastery) |
| sibling-uniqueness validator | property-constraints.md | Validator that enforces sibling uniqueness |
| {name} alias / set read-only | property-constraints.md | Property getter delegation and read-only semantics |

How to open: `grep -n '^## '` (two hashes and a space — **not** `^##`, which also matches `###` and would stop before the examples) then `Read` with offset/limit covering that heading until the next `## ` line. Include any `###` example subsections that belong to that `##`; they are part of the section, not a stop. Stop after that section unless a later error names another heading. Do not use line numbers from this skill — they drift.

## Common-Path Workflow

1. Ensure the language has a `constraints` model; create it with `mps_mcp_create_model` (`modelName: "<lang>.constraints"` — aspect ID `constraints`, case-sensitive, no `@` suffix; see [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md)) if absent.
2. Add `jetbrains.mps.lang.constraints` to the model's used languages. For scope bodies also add `jetbrains.mps.lang.smodel`, `jetbrains.mps.lang.scopes`, `jetbrains.mps.lang.behavior`, `jetbrains.mps.baseLanguage`; import models `jetbrains.mps.scope` and `jetbrains.mps.lang.core.behavior`.
   - **Module-level dependency for scope classes**: the language module must have a `Default` dependency on solution `jetbrains.mps.kernel` (which ships model `jetbrains.mps.scope`). `mps_mcp_model_dependency` adds it automatically when importing `jetbrains.mps.scope`; `mps_mcp_create_module type=language` does not. See `references/scope-fqn-reference.md` → "Required module-level dependency".
3. For each concept to constrain, create one `ConceptConstraints` root (`mps_mcp_create_root_node`); set `concept` ref. Minimal blueprint and validated FQN/c-ref in `references/concept-roots.md`.
4. Add `NodePropertyConstraint` / `NodeReferentConstraint` / `canBe*` children as needed. For inherited scopes, also add a `getScope` method to the owning ancestor's `ConceptBehavior` (see `mps-aspect-behavior`).
5. Write bodies in BaseLanguage + smodel — follow the `mps-model-manipulation` skill for smodel / collections / closures syntax. Prefer `mps_mcp_parse_java_and_insert` for the BaseLanguage skeleton, then drop in scope / constraint-specific concepts via MCP.
6. Validate with `mps_mcp_check_root_node_problems` and rebuild the language.

## Related Skills

- `mps-aspect-behavior` — `ScopeProvider.getScope` lives in the behavior aspect; this is the partner of every `InheritedNodeScopeFactory` constraint. Behavior is also where most validator/getter delegation lands.
- `mps-aspect-structure-concepts` — structural cardinalities belong in `structure`, not here. Add `INamedConcept` / `IResolveInfo` / `ScopeProvider` interfaces on the concept declaration before writing the matching constraint or scope.
- `mps-aspect-editor-menus-and-keymaps` — completion menus consume the scope built here; substitute / transformation menus are the place for actions that go *beyond* picking an existing target.
- `mps-aspect-actions` — when a constructor-style initialization is needed, use `NodeFactory` (actions aspect), not a constraint.
- `mps-aspect-intentions` — when a *suggested fix* belongs on a node, write an intention; constraints only accept or reject.
- `mps-model-manipulation` — full BaseLanguage / smodel / collections / closures reference for constraint and scope bodies; for a scope or `canBe*` body open only `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin. Indispensable for `ancestor<concept = X, +>`, `selectMany`, `siblings.ofConcept<X>.all(...)`, anonymous-class scopes, and the smodel operation FQNs.
- `mps-aspect-typesystem` — type checks belong in typesystem; constraints are about value/scope/placement.
- `mps-aspect-textgen` and `mps-aspect-constraints`-co-located utility classes — see `references/concept-roots.md` for the BaseLanguage `ClassConcept` co-location pattern (used by `XmlNameUtil`).

## Reference Index

**Start here — most common case**: creating the `ConceptConstraints` root or setting `defaultConcreteConcept` → read only `references/concept-roots.md`. A property validator / setter / getter, a referent search scope, or a `referentSetHandler` → pick the matching heading from the Section index above (symptom → heading), then grep/Read only that range. Never full-Read `referent-constraints.md` or `property-constraints.md`.

- Open `references/concept-roots.md` when creating the `ConceptConstraints` root, setting `defaultConcreteConcept` to a concrete subconcept of an abstract concept, looking up the validated concept c-ref, or co-locating a BaseLanguage helper `ClassConcept` next to constraint roots.
- Open one heading of `references/property-constraints.md` (Section index above) when writing `NodePropertyConstraint` bodies — validator vs. setter vs. getter shape, wrapper FQNs, the validator / derived-getter JSON blueprints, the `{name}` aliasing pattern with `set <read-only>`, or sibling-uniqueness validators. Never Read the whole file.
- Open one heading of `references/referent-constraints.md` (Section index above) when writing `NodeReferentConstraint` — choosing scope style, imperative `ConstraintFunction_ReferentSearchScope_Scope`, ancestor-supplied `InheritedNodeScopeFactory`, `referentSetHandler`, or concept-level `Default Scope`. Never Read the whole file.
- Open `references/scope-helpers.md` when picking among `EmptyScope`, `ListScope`, `SimpleRoleScope`, `CompositeScope`, `FilteringScope`, `DelegatingScope`, `ModelsScope`, `ModelPlusImportedScope`, `Scopes.forConcepts`, `HidingByNameScope`, or `ListScope.forResolvableElements`; or when caching with `for model [...]`, `visible roots [C]`, `visible nodes [C]`. Includes the verbatim StateChart `Stateful_Behavior.getScope` (`ListScope` + anonymous `getName` + `HidingByNameScope` over `parent scope`) idiom.
- Open `references/scope-fqn-reference.md` when constructing scope bodies via MCP — the full surface-syntax-to-FQN table (`parent scope`, `come from`, `isSubConceptOf` vs `isExactly`, `RefConcept_Reference` vs `ConceptIdRefExpression`, `LinkIdRefExpression`, `Node_GetAncestorOperation` + `OperationParm_Concept`, `Node_GetDescendantsOperation`, `Node_GetModelOperation`, `Model_RootsIncludingImportedOperation`, `Node_GetParentOperation`, `Node_IsInstanceOfOperation`), required used-languages and model imports, the validated `ScopeProvider.getScope` overriddenMethod ref, and JSON blueprints for the `getScope` skeleton, `parent scope` return, and the guarded local-scope `if`-branch.
- Open `references/canbe-rules.md` when authoring `ConstraintFunction_CanBeAChild` / `CanBeAParent` / `CanBeAnAncestor` / `CanBeARoot` — each block's parameter set (note `canBeAnAncestor` has only 3 parameters; no `parentNode` or `link`), the `parentNode.parent.isInstanceOf(...)` grandparent-traversal pattern (Kaja `RoutineDefinition` and `Require`), the `node.isInRole(link/C : role/)` pattern, the `model` parameter for `canBeRoot`, and the minimal `ConstraintFunction_CanBeAChild` blueprint.
- Open `references/common-failures.md` when a setter runs but stores nothing, a completion popup is empty, the editor reports "cannot be child", a constraint does not apply to a sub-concept, or constraint edits seem invisible at runtime.
