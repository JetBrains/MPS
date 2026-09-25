---
name: mps-aspect-dataflow
description: Use when defining or debugging MPS dataflow builders for a concept — control/data flow declarations that drive reachability analysis and variable-use checking. Covers DataFlowBuilderDeclaration, BuilderBlock, emit instructions (code for, jump, ifjump, label, read, write, ret, mayBeUnreachable), positions (AfterPosition, BeforePosition, LabelPosition), the jetbrains.mps.lang.dataFlow language, the NodeParameter implicit, BL+smodel usage inside builder bodies, and IBuilderMode for advanced analyses such as nullable/non-null tracking.
type: reference
---

# MPS Dataflow Aspect

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

The dataflow aspect (`jetbrains.mps.lang.dataFlow`, `l:7fa12e9c-b949-4976-b4fa-19accbc320b4`) lets a language describe how control and data flow through nodes of a concept. MPS uses that information for reachability analysis, uninitialised-variable checks, and (via `IBuilderMode`) richer flow analyses such as nullable tracking.

## Mental Model

Each `DataFlowBuilderDeclaration` answers: *given a node of concept X, in what order might execution visit its children, and which variables are read or written?*

The builder body is a **BL `StatementList`** (inside a `BuilderBlock`). You use normal BL control flow (`if`, `foreach`, local variables) to compute which **emit instructions** to output at runtime. The `node` implicit parameter (concept `NodeParameter`) is always in scope — its type is the concept referenced by `conceptDeclaration`, giving smodel-typed access to children and references.

The MPS dataflow engine builds a control-flow graph from the emitted instructions, then runs analyses (unreachable code, uninitialised variable reads) on that graph. The engine only traces the paths you declare; if no builder exists for a concept, MPS falls back to delegating all children in declaration order.

## Critical Directives

- **`code for` is delegation, not a call.** Never use `jump` for child delegation. Use `EmitCodeForStatement` to inline a child's own builder at this point.
- **`ifjump` semantics: the jump is taken when the condition is FALSE.** Use it after `code for node.condition` to model branching.
- **Labels are node references, not string lookups.** `EmitLabelStatement.name` is display-only; jumps reference the label node via `LabelPosition.label`. Two labels with the same string are still distinct targets.
- **Always null-guard `0..1` children** with BL `if (node.child != null)` before emitting `code for node.child`.
- **`write node` vs `write node.link`:** use `write node` (just `NodeParameter` as the variable expression) when the concept node **is** the variable being declared. Use `write node.link` (via `SLinkAccess`) when the node merely references the variable being written.
- **Leaf concepts need no builder.** The engine treats unbuilt concepts as no-ops, or for ordinary parents delegates to children in declaration order.
- **Do not hand-edit serialized `.mps` dataflow files.** Use MPS MCP node tools.

## Common-Path Workflow

1. Create the dataflow model with `mps_mcp_create_model` (`moduleName: "<lang>"`, `modelName: "<lang>.dataFlow"`) if absent. **The aspect ID is `dataFlow` — camelCase, case-sensitive, no `@` suffix**; spelling it `dataflow` (lowercase) produces a utility model that MPS will not recognise. See [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md). Add `jetbrains.mps.lang.dataFlow` (and transitively `jetbrains.mps.baseLanguage`) as used languages on the model.
2. Create a `DataFlowBuilderDeclaration` root node; set `conceptDeclaration` to the concept being described; give it a `name`.
3. Add a `BuilderBlock` child with a `body` (BL `StatementList`).
4. Emit instructions: delegate to children with `EmitCodeForStatement`; model branches with `EmitIfJumpStatement` + `EmitLabelStatement`; record variable use with `EmitReadStatement` / `EmitWriteStatement`; mark exits with `EmitRetStatement`.
5. For loops, use `BeforePosition`/`AfterPosition` to encode loop-back/exit edges; wrap potentially-unreachable instructions in `EmitMayBeUnreachable`.
6. Validate with `mps_mcp_check_root_node_problems`. For tricky cases, inspect an existing baseLanguage builder via `mps_mcp_print_node` with `deep: true`.

## Related Skills

- `mps-model-manipulation` — BL + smodel code inside builder bodies (`DotExpression`, `SLinkAccess`, `NodeParameter`, behavior method calls); for a builder body open only `references/dot-expression-basics.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.
- `mps-aspect-behavior` — for behavior methods called from builders to compute target nodes (e.g. `getLoopOrSwitch`, `getReturnJumpTarget`).
- `mps-aspect-typesystem` — when the dataflow you emit must agree with type checks.
- `mps-node-editing` — generic JSON-blueprint node creation/replacement workflow.

## Reference Index

**Start here — most common case**: writing one builder for one concept → read only `references/json-patterns.md` (the verified blueprint shapes), plus `references/concept-catalog.md` when you need an exact concept/role name; a builder that validates but analyses wrongly → only `references/rules-and-pitfalls.md`.

- Concept catalog — open when you need exact concept names, properties, children, cardinalities, or abstract bases for `DataFlowBuilderDeclaration`, `BuilderBlock`, every emit statement, every position type, and the abstract bases. See [references/concept-catalog.md](references/concept-catalog.md).
- Verified JSON patterns — open when constructing or editing a builder as JSON for `mps_mcp_*` tools. Includes variable read, single-child delegation, return-with-finally, if/elsif/else, while loop, assignment, variable declaration, break to ancestor, and a custom inverted-condition statement. See [references/json-patterns.md](references/json-patterns.md).
- Rules and pitfalls — open when a builder validates but the engine reports surprising reachability or variable-use results, when choosing between `AfterPosition` and `LabelPosition`, or before using `modes`/`IBuilderMode`. See [references/rules-and-pitfalls.md](references/rules-and-pitfalls.md).
- Language setup and engine invocation — open when wiring a new dataflow model, or when debugging "why is my builder not being called". See [references/setup-and-engine.md](references/setup-and-engine.md).
- BaseLanguage builder index — open when you want to study a known-good builder for `IfStatement`, `WhileStatement`, `ReturnStatement`, `BreakStatement`, `VariableDeclaration`, `TryFinallyStatement`, `SwitchStatement`, `ForStatement`, etc. Lists builder names and persistent nodeReferences in `r:00000000-0000-4000-0000-011c895902c2`. See [references/baselanguage-builder-index.md](references/baselanguage-builder-index.md).
- Sample language reference — open when looking for a minimal complete builder for a custom language (`UnlessStatement_DataFlow`). See [references/sample-language-reference.md](references/sample-language-reference.md).
