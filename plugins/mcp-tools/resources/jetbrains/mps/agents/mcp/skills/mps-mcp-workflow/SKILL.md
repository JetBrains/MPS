---
name: mps-mcp-workflow
description: Complete JetBrains MPS workflow guide for DSL projects — models, languages, generators, node JSON blueprints, validation, MPS MCP tool usage, and the index of companion skills. Use whenever working in an MPS project, when AGENTS.md says to load the MPS workflow skill, or when you need to pick the right MPS aspect-specific skill.
type: reference
---

# Projectional Agent Toolkit – JetBrains MPS for Agents

Entry point for working with JetBrains MPS (Meta Programming System) models, languages, generators, and the MPS MCP tools.

Read this together with `AGENTS.md` whenever the task involves MPS artifacts or MPS MCP tooling.

## Critical Directives

> **⚠️ STOP — If you are reading raw `.mps` or `.mpl` XML files, you are way off track.**
> MPS model files are opaque serialized XML: you cannot safely understand or edit them as plain text, and doing so will corrupt the model.
> Use `mps_mcp_*` tools instead. If they are not available, ask the user to start MPS and enable the MPS MCP server before continuing.

- **Always prefer MPS MCP tools over hand-editing `.mps` / `.mpl` XML.** Hand-edits silently corrupt model files.
- **Preserve node IDs.** Prefer `mps_mcp_update_root_node_from_json` or surgical edits (`mps_mcp_update_node`, …) over delete-and-reinsert. Deleting destroys persistent IDs and breaks incoming references.
- **Copy-then-modify beats reconstruct-from-JSON.** To create a node that closely resembles an existing one, duplicate it with `mps_mcp_alter_nodes` `COPY_NODE` and adjust the copy with `mps_mcp_update_node`, instead of printing the original and re-authoring it as a JSON blueprint. The copy is guaranteed structurally valid and needs no blueprint authoring at all.
- **Reload after compiled-aspect changes.** After modifying **typesystem**, **constraints**, **behavior**, **editor**, or any other compiled aspect, call `mps_mcp_reload_all` (or rebuild the language module via `mps_mcp_alter_nodes MAKE`) before validating with `mps_mcp_check_root_node_problems` on a consumer model. Without a reload, cached compiled rules continue to fire — checking will report stale errors or miss new ones.
- **The Structure-to-Aspect/Scaffold Prerequisite Chain (Ordering & Recovery).** When editing a language's **structure aspect** (e.g., creating concepts/enums or modifying properties, children, or references via `mps_mcp_alter_structure`), you MUST adhere to the following strict sequence of cross-tool steps before invoking dependent tools (such as `mps_mcp_get_concept_details` or `mps_mcp_scaffold_editor`):
    1. **Structure Edit**: Modify the structure aspect (using `mps_mcp_alter_structure`).
    2. **Clean Make/Rebuild**: Run `mps_mcp_alter_nodes` with `MAKE` and `rebuild=true` targeting the **language module** (a model-scoped make can leave a never-before-deployed language's runtime hollow). Note: a plain `mps_mcp_reload_all` alone is **not** sufficient because the generated structure aspect descriptor classes on disk must be regenerated before the ClassLoader reloads them.
    3. **Verify Descriptors**: Retrieve the compiled concept details using `mps_mcp_get_concept_details` and verify that the `descriptorStatus` is not `"hollow"` and no warnings exist.
    4. **Scaffold / Aspect Editing**: Once the descriptors are verified as compiled and active, proceed to scaffold the editor (`mps_mcp_scaffold_editor`) or define other aspects (behavior, constraints, typesystem, generator, etc.).
    *Failing to follow this ordering results in stale or hollow descriptors where dependent tools silently see empty properties, children, or references.*
    **Shortcut:** `mps_mcp_alter_structure CREATE_CONCEPTS` with `make: true` already does steps 2–3 — it clean-rebuilds, verifies every created descriptor against the runtime, and auto-recovers a never-deployed language (one module-scoped rebuild, `recoveryStage: "module-rebuild"`). Trust its `makeStatus`; run the manual chain only for structure edits made through tools that do not make (`UPDATE_*`/`RENAME_*` operations, `mps_mcp_update_node`).
- **Surgical edits over full-root rewrites.** When a single child changes, prefer `mps_mcp_update_node` over re-running `mps_mcp_update_root_node_from_json` on the whole root.
- **Validate frequently.** A successful insertion (`"ok": true`) does not mean the AST is semantically valid — always follow with `mps_mcp_check_root_node_problems`.

> **Tool name note**: MPS MCP tools are named with a `mps_mcp_` prefix (e.g. `mps_mcp_query_nodes`, `mps_mcp_alter_nodes`, `mps_mcp_get_concept_details`). Your MCP client wraps these with a server-specific prefix (e.g. `mcp__mps-mcp-server__<env>___`), which varies by environment. Match tools by the stable `mps_mcp_*` suffix.

> **Which project the tools act on (subdirectory & multi-project checkouts).** The `mps_mcp_*` tools operate on the MPS project currently open in the running MPS instance. That project often lives in a **subdirectory** of your repository (e.g. `<repo>/tools/BigProject`, as in mbeddr or MPS-extensions), and one checkout may even hold **several** MPS projects. The host resolves the project from your client's workspace roots, then falls back to the single open project. If a tool call is rejected with "no project opened" or "multiple projects opened", call `mps_mcp_list_open_projects`, then supply the intended project's `mpsProjectBaseDirectory` — the folder MPS actually opened, i.e. a path *at or inside* it, **not** the repository root — via the host's project-path argument. This is the opposite of `mps_mcp_initialize_project_for_agents`, whose `targetDirectory` is the *repository / workspace root* (where `.agents/`, `.claude/`, `AGENTS.md`, and `CLAUDE.md` belong), which may be an *ancestor* of the MPS project directory.
>
> **Multi-project repository rules.** All open MPS projects share the same module repository. Write targets — models, modules, root nodes, and nodes being mutated — must belong to the project selected by `projectPath`; tools refuse writes to another open project's elements. Read/reference/dependency targets may come from another open MPS project when they are explicitly named or imported: model/module dependencies, model used languages/devkits, node concepts, and reference targets can point across projects, and the foreign elements are treated like read-only library/stub elements. Returned JSON for an element from another open project includes `containingProject: { name, mpsProjectBaseDirectory }` and `editableFromCurrentProject: false`; nested references use prefixes such as `conceptContainingProject`, `targetContainingProject`, or `typeContainingProject`. These markers appear *only* for elements owned by another open project — their absence does not imply an element is editable (a read-only library/stub in the current project carries `readOnly: true` but no `containingProject`), so decide editability from `readOnly` together with these markers.
>
> **When in doubt, ask which project.** When several MPS projects are open under one repository / VCS root, the `mps_mcp_*` tools accept *any* valid project path and act relative to that project. Same-name resolution prefers the selected project's own elements before falling back to the shared repository, but an explicit reference may still resolve to another open project. If the intended project is not obvious from the user's request or the current editor focus (`mps_mcp_get_current_editor_root_node`), do **not** guess — show the `mps_mcp_list_open_projects` entries and ask the user which project the query or change should run against.

## Companion Skills

All MPS skills live in a per-harness directory loaded by the agent host (e.g. `.agents/skills/<skill-name>/SKILL.md` for AGENTS.md-aware hosts, `.claude/skills/<skill-name>/SKILL.md` for Claude Code). Load whichever ones apply to your current task.

> **Installing / refreshing the catalog.** These `mps-*` skills and the project's `AGENTS.md`/`CLAUDE.md` are installed and refreshed by the `mps_mcp_initialize_project_for_agents` MCP tool. It installs into a `targetDirectory` — normally your **repository / workspace root** (the folder containing `.git`), which may be an *ancestor* of the MPS project directory when the project sits in a subdirectory; leave `targetDirectory` empty to let the tool derive that root from the open project's enclosing VCS folder, and do **not** pass it `projectPath`. If no `mps-*` skills exist yet, the project has not been initialized for agents — tell the user and offer to run it. If the catalog looks stale or incomplete, offer to refresh it (with approval): delete every `mps-*` skill folder from `.agents/skills/` and `.claude/skills/` — keeping any project-local `*-dsl` skills — re-run the tool, then carefully merge its returned `agentsFileText` into `AGENTS.md`/`CLAUDE.md`, preserving project-specific sections. See that tool's description for the exact refresh contract.

| Skill | What it covers |
|-------|---------------|
| `mps-language-aspects-overview`     | Entry point for defining an MPS language — lists the aspects, what each owns, and the typical authoring order. Start here. |
| `mps-language-modularity`           | Design tier for multi-language work — choose between referencing, extension, reuse, and embedding *before* authoring aspects, then route into the aspect skills. Use when one language must see, extend, embed, or adapt another. |
| `mps-aspect-structure-concepts`            | Define concepts, interface concepts, enumerations, and constrained data types. Includes the full `mps_mcp_alter_structure` / `mps_mcp_query_structure` reference. |
| `mps-baselanguage`                  | Author and edit `jetbrains.mps.baseLanguage` (Java) nodes — parser vs. JSON AST, concept mapping, reference harvesting, validation. Load when writing any Java/BaseLanguage code in MPS. |
| `mps-model-manipulation`                    | Write and edit MPS BaseLanguage code that uses smodel, closures, and collections — manipulating nodes, lists, and queries. Use when editing checking rules, behavior methods, typesystem rules, or any model code that manipulates nodes. |
| `mps-aspect-accessories`            | Module/model dependencies, used languages, runtime solutions, accessory models. |
| `mps-aspect-actions`                | Node factories (the "actions" aspect) — concept-specific setup functions for newly created nodes. |
| `mps-aspect-behavior`               | ConceptBehavior — per-concept methods, constructors, virtual dispatch, calling behavior from other aspects. |
| `mps-aspect-constraints`            | Property validators/setters, referent scopes, `canBe*` rules (canBeChild/Parent/Ancestor/Root). |
| `mps-aspect-dataflow`               | Dataflow builders — control and data flow declarations for concept nodes, reachability analysis, variable-use checking. |
| `mps-aspect-editor-menus-and-keymaps` | Non-layout parts of the MPS editor aspect — action maps, cell keymaps, transformation/substitute menus, side transforms, paste handlers, completion styling. |
| `mps-aspect-generator`              | Generator templates — root mapping rules, reduction rules, macros, mapping labels. |
| `mps-aspect-generation-plan`        | Generation plans — explicit ordering of generation steps, checkpoints, forks, plan contributions. |
| `mps-aspect-intentions`             | Intentions — Alt+Enter context actions, parameterized/surround/quick-fix variants. |
| `mps-aspect-migrations`             | Migration scripts — upgrading user models when language definitions change. |
| `mps-aspect-textgen`                | TextGen — concept-to-plain-text serialization rules. |
| `mps-aspect-typesystem`             | Typesystem — inference rules, subtyping, replacement, comparison, non-typesystem checking. |
| `mps-aspect-editor`                 | Overall workflow for creating and changing MPS editor definitions — scaffolding, componentizing, cell models, layouts, styles, validation. |
| `mps-language-analysis`             | Analyze MPS language definitions — discover concepts, metadata, aspects, sample nodes. |
| `mps-language-inheritance`          | Investigate inheritance between MPS languages and concepts — extends, super, sub, assignable. |
| `mps-node-editing`                  | Modify MPS nodes using JSON blueprints — the canonical workflow for any node mutation. |
| `mps-dsl-memory`                    | Explore a live MPS DSL project and create or refresh generated project-local DSL skills under `.agents/skills/<dsl-name>-dsl/`. |
| `mps-lang-core-xml`                 | `jetbrains.mps.core.xml` language for authoring XML documents and XML-generating generator templates. |
| `mps-quotations`                    | MPS quotations and anti-quotations — node literals creating SNode trees inline in behavior/generator/model code. |
| `mps-build-language`                | MPS Build Language — declarative DSL generating Ant `build.xml` files for packaging plugins, Java modules, standalone IDEs. |
| `mps-ide-plugin`                    | MPS IDE plugins — actions, action groups, tool windows, keymaps, preference components. |
| `mps-bugfix`                        | MPS bugfixing workflow. |

## Key Concepts

MPS is a projectional editor and a language workbench. Unlike text-based IDEs, MPS works with an Abstract Syntax Tree (AST) directly. JSON is used to represent MPS nodes and their properties in a structured format for the MPS tools.

- **Modules**: The top-level containers in an MPS project.
    - **Solution**: contains user code (models).
    - **Language**: defines a new language - structure (concepts and interface concepts), editor, etc.
    - **Generator**: defines how to transform one language to another (usually to Java/BaseLanguage). May belong to a language or be independent.
    - **DevKit**: a bundle of languages and other devkits. DevKits can also export solutions and languages. Importing a DevKit into a module or model automatically makes all its exported languages and solutions available. This is the preferred way to manage common sets of languages and dependencies.
- **Models**: contained within modules. They hold a collection of **Root Nodes**.
- **Nodes**: the basic building blocks of the AST. Nodes are organized hierarchically.
    - **Root Nodes**: the top-level nodes in a model.
- **Concepts**: define the "type" of a node (like a class in OOP). They define properties, children, and references. Concepts are defined in the **structure** aspect of a language. Like in OOP, a concept can extend another concept and implement multiple interface concepts, which leads to subconcept-superconcept relationships and affects assignability of nodes into child or reference roles.
- **Aspects**: different parts of a language definition (Structure, Editor, Typesystem, Constraints, etc.). Technically, each aspect is a dedicated model inside a language's module.
- Some MPS modules and models can be read-only.
- MPS modules and models define dependencies between each other. DevKits can re-export dependencies on solutions and other devkits. If a module depends on a DevKit, it implicitly depends on all solutions exported by that DevKit.
- MPS models specify 'used languages'. If model A uses language L, nodes in model A can be instances of concepts from language L. Using a DevKit in a model automatically includes all languages exported by that DevKit (and any devkits it extends).

## Common Workflow — Initialize a Session

1. **Check generated DSL skills** under `.agents/skills/*-dsl/` before starting unfamiliar DSL work. Use the relevant project-local DSL skill when it exists; if it is missing or stale, load `mps-dsl-memory` to create or refresh it.
2. **Anchor on the user's focus** — call `mps_mcp_get_current_editor_root_node` so you know which root the user is looking at.
3. **Identify the task family**: defining a language → load `mps-language-aspects-overview`. Editing user code → load `mps-node-editing` and (often) `mps-baselanguage`. Investigating an unfamiliar language → load `mps-language-analysis`.
4. **Follow the matching aspect skill** for the specific aspect you're touching.
5. **Validate frequently** with `mps_mcp_check_root_node_problems`. Rebuild/reload after compiled-aspect changes.

## Essential Skills (Detail)

Open `references/finding-things.md` for the protocol on finding models, modules, and languages (including shortened-name resolution like `j.m.l.core` → `jetbrains.mps.lang.core`).

Open `references/node-editing-rules.md` for the full rulebook on adding/updating nodes (concept selection, role types, cardinality, assignability, persistent IDs, surgical edits, reload after compiled-aspect changes).

Open `references/reference-formats.md` for the reference-format protocol: node refs (`r:`/`i:`), concept refs (`c:`), and the critical "never use a concept ref where a node ref is expected" rule.

Open `references/bulk-creation.md` for the print-shallow-then-add-children staged construction workflow used when subtrees exceed the JSON size limit.

Open `references/analysis-tools.md` for the inventory of analysis operations (`mps_mcp_print_node`, `mps_mcp_check_root_node_problems` with its `quickFixes`/`autoApplyQuickFixes`, `mps_mcp_list_node_intentions` / `mps_mcp_apply_intention`, `mps_mcp_alter_nodes FIX_REFERENCES`, etc.).

Open `references/editor-workflow.md` for the MPS Concept Editor workflow (scaffold → componentize → refine → validate) and the editor procedural guidelines.

Open `references/mcp-tools-index.md` for the complete inventory of MPS MCP tools grouped by Project/Structure, Modules and Models, Root Nodes and Nodes, Console, and Language Definition.

## Boundaries

- **Do not** edit serialized `.mps` model files as plain text unless the user explicitly asks for it.
- **Do not** edit `.mpl` module descriptors manually if an MCP wiring tool (`mps_mcp_module_dependency`, `mps_mcp_update_module`, …) covers the change.
- **Do not** delete-and-reinsert a node to "change" it when surgical tools exist.
