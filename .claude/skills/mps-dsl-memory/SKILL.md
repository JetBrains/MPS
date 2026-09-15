---
name: mps-dsl-memory
description: Create or refresh project-local DSL skills under `.agents/skills/<dsl-name>-dsl/` for one or more MPS languages after discovering concepts, sandbox examples, JSON blueprints, references, or gotchas.
type: reference
---

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

### When to Use
* A new MPS sample or DSL project has no generated DSL skill under `.agents/skills/<dsl-name>-dsl/`, or the existing one is outdated.
* The user says "bootstrap DSL skill", "generate DSL skill", or "document this DSL".
* You have just explored a DSL and want to persist your findings for future sessions as a project-local skill.

### Prerequisites
* MPS MCP tools are available.
* The project has one or more language modules and at least one sandbox, example solution, or editable model that exercises the DSLs.
* Use MPS MCP tools for discovery and model edits. Do not hand-edit serialized `.mps` XML.

### Workflow
1. **Discover languages**: Call `mps_mcp_get_project_structure` with `includeModels: false`. Identify all editable DSL language modules and derive each concept-tools language ref as `l:<uuid>:<languageName>`.
2. **Choose skill scope**: Prefer one generated skill per language. Use one combined skill only when the project languages are tightly coupled and users normally edit them together.
3. **Find examples**: For each language or language group, call `mps_mcp_get_project_structure` with the relevant sandbox/example solution as `startingPoint` and `includeRootNodes: true`. Record editable model refs and representative root refs.
4. **Read concepts**: Call `mps_mcp_get_concept_details` with the relevant `l:<uuid>:<languageName>` refs. Capture rootable concepts, concrete children, properties, child roles, references, and useful `shortDescription` text.
5. **Sample sparingly**: Use `mps_mcp_print_node` only on representative roots or subtrees needed for reference targets, required roles, or reusable blueprints. Avoid dumping every root.
6. **Generate DSL skills**: Create or update `.agents/skills/<dsl-name>-dsl/` for each selected scope. Preserve user-added notes unless they are stale or wrong.
7. **Cross-link related skills**: When generated skills cover languages that extend, depend on, or are commonly used inside each other, add short links and usage notes between them.
8. **Verify**: Confirm linked reference files exist, blueprint JSON parses, no `.DS_Store` or editor artifacts were added, and one or two recorded node refs still resolve if the sandbox may have changed.

### Generated Skill Layout
```text
.agents/skills/<dsl-name>-dsl/
|-- SKILL.md
`-- references/
    |-- concepts.md
    |-- sandbox.md
    |-- workflows.md
    |-- gotchas.md
    `-- blueprints/
        |-- <operation>-skeleton.json
        `-- <operation>-subtree.json
```

The `<dsl-name>` slug is derived from the language namespace: use stable lowercase, split camel case and separators into words, and prefer the namespace's final meaningful segment unless the project consistently names the DSL differently. The `-dsl` suffix is mandatory — callers (such as `mps-mcp-workflow`) discover generated skills with the glob `.agents/skills/*-dsl/`.

### Generated `SKILL.md` Requirements
* Frontmatter:
    * `name: <dsl-name>-dsl`
    * `description:` Use when creating, editing, validating, or inspecting this DSL's models.
* Short domain summary: two to four sentences. For combined skills, name each covered language and when to use the combined workflow.
* Critical rules:
    * Use MPS MCP tools; do not hand-edit `.mps` XML.
    * Use `mps_mcp_get_concept_details` with `l:<uuid>:<languageName>`, not `<uuid>(<languageName>)`.
    * Prefer skeleton-plus-subtree insertion for large or uncertain roots.
    * Validate changed roots with `mps_mcp_check_root_node_problems`.
* Quick start:
    * Use the recorded sandbox model for examples or new sample roots.
    * Start from `references/blueprints/` for known shapes.
    * Dry-run root JSON with `mps_mcp_insert_root_node_from_json`.
    * Insert roots with `mps_mcp_insert_root_node_from_json`.
    * Add child-role subtrees incrementally for large roots.
    * Run `mps_mcp_check_root_node_problems` and any task-required build/generation checks.
* Project references:
    * Concept-tools language ref for each covered language.
    * Sandbox/example model refs.
    * Primary editable modules.
    * Dependencies or extension relationships between covered project languages, if relevant.
* Related DSL skills:
    * Link sibling generated skills when another project language supplies child concepts, expressions, commands, reference targets, or extensions used by this language.
    * Explain when to load each related skill.
* Reference directory links.

### Reference Files
* `concepts.md` under the generated skill's `references/`: concept hierarchy, rootable concepts, properties, child roles, references, and semantic notes.
* `sandbox.md` under the generated skill's `references/`: sandbox model refs, representative roots, configuration nodes, reference targets, and stable node refs.
* `workflows.md` under the generated skill's `references/`: creation/editing recipes, including when to use full-root JSON versus skeleton-plus-subtrees.
* `gotchas.md` under the generated skill's `references/`: reference formats, ordering constraints, required roles, expression precedence issues, extension-language dependencies, and known validation failures.
* `references/blueprints/`: valid compact JSON skeletons and subtree templates.
