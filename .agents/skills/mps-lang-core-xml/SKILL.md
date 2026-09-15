---
name: mps-lang-core-xml
description: Use when authoring XML documents as MPS root nodes or building XML-generating generator templates with jetbrains.mps.core.xml — covers XmlFile, XmlDocument, prolog (XML declaration, DOCTYPE, processing instructions, comments), elements, attributes, CDATA, entity references, and macro attachment via the smodelAttribute role for templates that emit XML output.
type: reference
---

# jetbrains.mps.core.xml Language

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

`jetbrains.mps.core.xml` is an MPS language for authoring and generating XML documents inside MPS models. It is used either for **direct XML authoring** (an `XmlFile` root holds a complete document) or for **generator templates** (an `XmlFile` carries `RootTemplateAnnotation` and macros via `smodelAttribute` child roles).

**Language reference:** `l:479c7a8c-02f9-43b5-9139-d910cb22f298:jetbrains.mps.core.xml`

## Critical Directives

- **Wrap everything in `XmlFile → XmlDocument`.** `XmlFile` is the only rootable concept. `XmlDocument.rootElement` has cardinality 1 — put the root there, not in `content`.
- **`XmlProlog` is optional (`0..1`).** Omit it entirely when no prolog is needed.
- **Attribute values are lists of `XmlValuePart`.** A plain string is a single `XmlTextValue`. An attribute with no `value` children renders as a valueless (boolean) attribute.
- **Property name asymmetry:** `XmlText` / `XmlSingleLineText` use the property `value`. `XmlTextValue` (attribute value part) uses the property `text`. Do not swap them.
- **In generators, macros go in the `smodelAttribute` child role** of the node they annotate — not as siblings in `content` or `attributes`.
- **Subclass the base types.** Extend `XmlBaseAttribute` (not `XmlAttribute`) and `XmlBaseElement` (not `XmlElement`) when defining custom concepts for derived languages.
- **Do not hand-edit serialized `.mps` files.** Use MPS MCP node tools for all changes.

## Common-Path Workflow

1. Add `jetbrains.mps.core.xml` as a used language on the target model. For generator templates, also add `jetbrains.mps.lang.generator`.
2. Create an `XmlFile` root node with a `name`. The `name` is the template/document identifier, not the output filename.
3. Add an `XmlDocument` child in role `document`. Optionally add an `XmlProlog` for declarations/comments/PIs.
4. Build the document tree under `XmlDocument.rootElement` and the inner `content` lists.
5. For generator templates, attach `RootTemplateAnnotation` to the `XmlFile` via `smodelAttribute`, and attach macros (`PropertyMacro`, `LoopMacro`, `CopySrcNodeMacro`, …) to inner nodes via their `smodelAttribute` role.
6. Validate with `mps_mcp_check_root_node_problems`.

## Related Skills

- `mps-aspect-generator` — for generator-side macro design that produces these XML templates.
- `mps-aspect-textgen` — for the text-serialization layer that turns these XML trees into output files.
- `mps-node-editing` — generic JSON-blueprint node creation/replacement workflow.

## Reference Index

- Concept catalog — open when you need exact concept names, properties, cardinalities, or aliases for any document, prolog, element, attribute, or content node. See [references/concept-catalog.md](references/concept-catalog.md).
- JSON blueprint patterns — open when constructing or editing concrete XML trees as JSON for `mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`. Includes minimal files, prolog with declarations, DOCTYPE, comments, attributes, mixed values, CDATA, processing instructions, and a full generator-template example. See [references/json-blueprints.md](references/json-blueprints.md).
- Rules and pitfalls — open when a node validates but the rendered XML is wrong, when attribute/value naming feels inconsistent, or before subclassing element/attribute concepts. See [references/rules-and-pitfalls.md](references/rules-and-pitfalls.md).
- Language dependencies — open when setting up a new model that uses XML concepts, or when wiring generator templates that mix XML with generator macros. See [references/language-dependencies.md](references/language-dependencies.md).
