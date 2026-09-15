---
name: mps-aspect-actions
description: Use when defining or editing MPS node factories (the "actions" aspect) — `NodeFactories` roots, per-concept `NodeFactory` setup functions that initialize a freshly created node and optionally copy data from a replaced `sampleNode`, plus the actions aspect's `CopyPasteHandlers` and `PasteWrappers` roots. Reach for this skill when a substitution, side transform, completion replacement, or `add new initialized(...)` should preserve fields from the node it is replacing, or when defaults set in a constructor are not enough.
type: reference
---

# MPS Actions Aspect

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

The **actions** aspect customizes how new nodes of a concept are constructed by the MPS editor — typically during substitution, side transformations, right-transform/`<ctrl-space>` replacement, or auto-replace. The framework produces an empty instance of the target concept; the setup function then populates it, often copying fields from the node it is replacing (`sampleNode`). Lives in `<lang>/models/<lang>.actions.mps`, language `jetbrains.mps.lang.actions`. The aspect also hosts copy/paste handlers and paste wrappers (see `references/copy-paste-and-paste-wrappers.md`).

## Critical Directives

- One `NodeFactories` root per actions model; add per-concept `NodeFactory` children to it. Do not create one root per concept.
- One `NodeFactory` per `applicableConcept`. Multiple factories for the same concept are not merged.
- The setup function runs **before** `newNode` is attached to the model. `newNode.parent`, ancestors, and model-wide queries return null/empty. Use the `enclosingNode` implicit parameter when you need the would-be parent.
- `sampleNode` is typed as `node<BaseConcept>`. Always narrow with `ifInstanceOf (sampleNode is <Concept> original)` before accessing fields — direct dereference will NPE or fail to compile.
- Use `SPropertyAccess` (ref `property` → `PropertyDeclaration`) for properties; use `SLinkAccess` (ref `link` → `LinkDeclaration`) for **both** containment and reference child roles.
- Factories do **not** fire for quotations `<C()>`, `model.add root(<C()>)`, `model.add new root(C)`, or pure rendering. If you need factory-initialised nodes in generator code, use `new node<C>()` with explicit property assignments or route creation through an intention that calls `add new initialized`.
- Edit factories through MPS MCP tools (`mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`, optionally `mps_mcp_parse_java_and_insert` with `featureKind: "STATEMENTS"` for the body). Do not hand-edit `.mps` files.
- After editing, validate with `mps_mcp_check_root_node_problems` on the `NodeFactories` root and rebuild the language.

## Common-Path Workflow

1. Ensure an actions model exists (`<lang>/models/<lang>.actions.mps`; create with `mps_mcp_create_model` and `modelName: "<lang>.actions"` — aspect ID `actions`, case-sensitive, no `@` suffix; see [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md)). Used languages: `jetbrains.mps.lang.actions`, `jetbrains.mps.baseLanguage`, `jetbrains.mps.lang.smodel`. Add `jetbrains.mps.lang.core` as the base. Import the structure model of your language.
2. Create the `NodeFactories` root via `mps_mcp_insert_root_node_from_json` (blueprint in `references/json-blueprints.md`). Set `name`.
3. For each concept that needs custom initialization, add a `NodeFactory` child via `mps_mcp_update_node`. Set `applicableConcept`; attach a `NodeSetupFunction` with a `StatementList` body.
4. Fill the body. Typical pattern: `ifInstanceOf (sampleNode is <Concept> original) { newNode.<prop> = original.<prop>; ... }`. Cross-type narrowing is allowed — see `references/setup-function-bodies.md`.
5. Validate with `mps_mcp_check_root_node_problems`, rebuild the language, exercise in a sandbox.

## Implicit Parameters of `NodeSetupFunction`

| Alias | FQN | Type | Nullable | Notes |
|---|---|---|---|---|
| `newNode` | `jetbrains.mps.lang.actions.structure.NodeSetupFunction_NewNode` | `node<applicableConcept>` | no | The freshly created empty node. Populate it. |
| `sampleNode` | `jetbrains.mps.lang.actions.structure.NodeSetupFunction_SampleNode` | `node<BaseConcept>` | yes | Node being replaced, if any. Narrow with `ifInstanceOf`. |
| `enclosingNode` | `jetbrains.mps.lang.actions.structure.NodeSetupFunction_EnclosingNode` | `node<BaseConcept>` | yes | Prospective parent container; null during root-node creation or programmatic creation outside the editor. |
| `index` | `jetbrains.mps.lang.actions.structure.NodeSetupFunction_Index` | `int` | — | 0-based position in the parent collection, or 0 if not in a collection. |
| `model` | (plain VariableReference in generated Java) | `SModel` | yes | The `SModel` `newNode` will be inserted into. Most factories don't use this. |

Signature surfaced in the editor: `(newNode, sampleNode, enclosingNode, index, model) -> void`.

## Related Skills

- `mps-aspect-behavior` — concept constructors are the place to set defaults that don't depend on the node being replaced. Use a constructor for *intrinsic* defaults, a `NodeFactory` for context-sensitive carry-over.
- `mps-aspect-intentions` — intentions that call `add new initialized(...)` route through factories. Load the `mps-aspect-intentions` companion skill from the same origin when this applies, then open `references/factory-initialized.md` in the `mps-aspect-intentions` skill root for the `NF_*` family.
- `mps-aspect-generator` — generator output bypasses factories (quotations and `add new root` do not fire factories). Document where the generator must mimic the factory behavior.
- `mps-model-manipulation` — full smodel reference: `SLinkAccess` vs `SPropertyAccess`, `IfInstanceOfStatement`, `IfInstanceOfVariable`, and the `NF_*` family.
- `mps-aspect-structure-concepts` — when adding the concept that `applicableConcept` targets.
- `mps-aspect-constraints` — for `canBe*` rules that gate insertion before a factory ever runs.

## Reference Index

- Open `references/node-factories-and-triggers.md` when you need the validated concept ref for `NodeFactories` / `NodeFactory` / `NodeSetupFunction`, the rule that factories are picked by exact `applicableConcept` (not by subtype inheritance through a more-general parent factory), and the precise list of triggers that fire / do not fire a factory.
- Open `references/setup-function-bodies.md` when writing the function body — copying properties vs. child links (`SPropertyAccess` vs `SLinkAccess`), cross-type narrowing in `ifInstanceOf`, the verbatim ChemMastery (same-type property copy) and Kaja (cross-type child-link copy) examples, and the JSON shape for an `AssignmentExpression` over `SLinkAccess`.
- Open `references/json-blueprints.md` when inserting the `NodeFactories` root or a `NodeFactory` child via MCP — minimal blueprints, the full `IfInstanceOfStatement` body, and the tip on using `mps_mcp_parse_java_and_insert` to skip the blueprint.
- Open `references/copy-paste-and-paste-wrappers.md` when the language needs custom copy pre-processing, paste post-processing, or paste-time wrapping of nodes — these other roots also live in the actions aspect.
- Open `references/concept-reference.md` for the validated FQN/ref table — the `jetbrains.mps.lang.actions` concepts plus the supporting BaseLanguage and smodel concepts used in setup bodies.
- Open `references/common-failures.md` when a freshly created node always has defaults, `sampleNode.<prop>` does not compile, `enclosingNode` is unexpectedly null, the factory fires twice, or it does not fire from quotations / generator code.
