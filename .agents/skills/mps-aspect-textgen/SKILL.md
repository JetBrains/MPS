---
name: mps-aspect-textgen
description: Use when authoring or debugging MPS TextGen — concept-to-plain-text serialisation for languages whose final output is text (source files, config, scripts, DDL, XML, markdown). Covers `ConceptTextGenDeclaration` roots, `append` / `indent buffer` / `with indent` statements, text layout areas, context objects (e.g. imports sets), attributes, the base text gen component (`LanguageTextGenDeclaration`), binary `write`, `found error`, and the indentation-buffer model. Reach for this skill whenever the task involves editing `<lang>/languageModels/textGen.mps`.
type: reference
---

# MPS TextGen Aspect

## Loading companion skills

Companion names in this skill are lazy dependencies: load only those relevant to the current task. If this skill came from an MCP server, use the host's skill loader to resolve the companion's unique discovered entry URI on the same host-assigned originating server. If the host has no server-backed skill loader, stop and report that limitation; do not silently fall back to a filesystem copy. If this skill came from a filesystem catalog, load the named sibling from that same catalog at `<skills-root>/<skill-name>/SKILL.md`, even if remote skill loaders are also available. Do not invent a tool name or server endpoint.

**TextGen** turns a model (usually the output of generation) into plain text files. It is how BaseLanguage becomes `.java` on disk, and how any text-targeting language serialises its models. Lives in `<lang>/languageModels/textGen.mps`, language `jetbrains.mps.lang.textGen`. Rule bodies are BaseLanguage + smodel + textgen-specific statements (`append`, `indent buffer`, `with indent`).

**Prerequisite for any insert:** the textGen model must exist (`mps_mcp_create_model` with `modelName: "<lang>.textGen"` — aspect ID `textGen`, case-sensitive, no `@` suffix; see [aspect-model-stereotypes.md](references/aspect-model-stereotypes.md)) and must import `jetbrains.mps.lang.textGen`, `jetbrains.mps.baseLanguage`, and `jetbrains.mps.lang.smodel` as used languages **before** the first `mps_mcp_insert_root_node_from_json`. Missing any of these three causes node inserts to fail with unresolved-concept errors. See step 1 of the Common-Path Workflow.

## Critical Directives

- One `ConceptTextGenDeclaration` root per concept you want to serialise. Only the **file-generating root concept** needs `extension` / `filename` / `encoding`; structural concepts inside the file need only `textGenBlock`.
- `extension` is a **function body returning a string**, not a literal property. It must `return` a string.
- TextGen dispatch is **concept-exact, not polymorphic**. An extending concept that wants the parent's serialisation must declare its own `ConceptTextGenDeclaration` (even an empty one) — or its output will be silently missing. See `references/dispatch-and-base-component.md`.
- The indentation buffer is a per-output-file depth counter. `with indent` / `increase depth` / `decrease depth` and the `withIndent` flag on `NodeAppendPart` only mutate the counter — **whitespace is emitted only when `indent buffer` is called**. Always pair `append \n ;` with `indent buffer ;` on the next line that should be indented. See `references/indentation-model.md`.
- Prefer `with indent { ... }` over paired `increase depth ; … ; decrease depth ;` — the block form cannot leak depth on an early `return` or exception. Use the paired form only when the scope is not a block.
- Use TextGen only when the final artifact is text. If your pipeline ends in a model-to-model transformation targeting another MPS language (e.g. BaseLanguage), you don't need TextGen — that language's own TextGen handles the final step.
- `BinaryWriteOperation` (`write`) cannot be mixed with text `append`s in the same `ConceptTextGenDeclaration`. A rule emits either text or bytes, not both.
- The older `$ref{node.reference<target>}` syntax is **deprecated**. Use a `NodeAppendPart` over a resolved node (or over `.name`).
- Edit textGen models through MPS MCP tools (`mps_mcp_insert_root_node_from_json`, `mps_mcp_update_node`). Do not hand-edit `.mps` files.
- After edits run `mps_mcp_check_root_node_problems` and rebuild the language; regenerate consumers.

## Common-Path Workflow

1. Create a `textGen` model (`mps_mcp_create_model` with `modelName: "<lang>.textGen"`; aspect ID is `textGen` — case-sensitive, no `@` suffix) if absent, then **before any insert** add the three required used languages: `jetbrains.mps.lang.textGen` (for `ConceptTextGenDeclaration`, `AppendOperation`, parts, `NodeParameter`, etc.), `jetbrains.mps.baseLanguage` (for `StatementList`, `DotExpression`, control flow, returns), and `jetbrains.mps.lang.smodel` (for `SPropertyAccess`, `SLinkAccess`, `SLinkListAccess` used to read node data). Also add the structure language whose concepts you serialise (referenced by `conceptDeclaration` and inside smodel accesses), and `jetbrains.mps.baseLanguage.collections` if you use maps/lists. Skipping any of the three core languages causes `mps_mcp_insert_root_node_from_json` to fail with unresolved-concept errors — don't add them piecemeal after a failure.
2. For each concept to serialise, insert a `ConceptTextGenDeclaration` root via `mps_mcp_insert_root_node_from_json`. The file-generating concept also needs `extension`, optionally `encoding` / `filename` / `filePath` / `layout` / `contextObjects`.
3. Fill the `textGenBlock` body — a `StatementList` of `append`s, `indent buffer`, `with indent { ... }`, and standard BaseLanguage control flow. See `references/statements-and-appends.md` for the part vocabulary and `references/json-blueprints.md` for AST shapes.
4. Push formatting heuristics ("should this go on a new line?") into the behavior aspect and call them back from textgen (`node.hasNewLineAfter()` pattern). See `references/delegating-to-behavior.md`.
5. For large-file languages (imports area, headers, shared state), declare a `TextUnitLayout`, a `UnitContextDeclaration` in the base `LanguageTextGenDeclaration`, and per-concept `UnitContextObject`s. See `references/layout-and-context-objects.md`.
6. Validate with `mps_mcp_check_root_node_problems`, rebuild the language module, regenerate any consumer, and inspect the produced text.

## TextGen vs. Generator

| Aspect | Role |
|---|---|
| Generator | Model → Model (typed AST transformation) |
| TextGen | Model → Text (final serialisation) |

A custom language usually has both: a generator rewrites into BaseLanguage + runtime API, and BaseLanguage's TextGen emits `.java`. Write your own TextGen only if you target text directly (as `jetbrains.mps.core.xml` does).

## Related Skills

- `mps-aspect-generator` — model-to-model step that usually precedes TextGen; emits the AST you serialise.
- `mps-aspect-behavior` — host for layout-heuristic helper methods called from textgen bodies.
- `mps-model-manipulation` — BaseLanguage + smodel + collections used inside textgen bodies (`StatementList`, `DotExpression`, `SLinkAccess`, `SLinkListAccess`, `StaticMethodCall`).
- `mps-quotations` — anti-quotations may appear inside `Quotation`s used as `${...}` expression values.
- `mps-aspect-structure-concepts` — when introducing the concepts a textgen will serialise.

## Reference Index

**Start here — most common case**: one `ConceptTextGenDeclaration` emitting text for one concept → read only `references/concept-textgen-root.md` and, for the body vocabulary, `references/statements-and-appends.md`; wrong indentation → only `references/indentation-model.md`; no output at all → only `references/common-failures.md`.

- Open `references/concept-textgen-root.md` when adding or editing a `ConceptTextGenDeclaration` — slot purposes (`extension`, `encoding`, `filename`, `filePath`, `layout`, `contextObjects`, `textGenBlock`), the editor shorthand, and what each child holds.
- Open `references/statements-and-appends.md` when writing the body — `AppendOperation` and its part vocabulary (`ConstantStringAppendPart`, `NodeAppendPart`, `CollectionAppendPart`, `NewLineAppendPart`), the `$list{... with sep}` form, `BinaryWriteOperation` (`write`), `FoundErrorOperation` (`found error`), control flow, and the smodel/behavior accessors usable inside a body.
- Open `references/indentation-model.md` when indentation is wrong — the depth-counter mental model, rules of thumb (always pair `\n` with `indent buffer`, prefer `with indent { ... }`, use `withIndent` flag for one-shot dispatch), and worked examples from `IfStatement_TextGen`, `BlockStatement_TextGen`, and `ClassConcept_TextGen`.
- Open `references/layout-and-context-objects.md` when emitting multi-region files (headers, imports, body) or threading per-generation state — `TextUnitLayout` with `append to AREA { ... }`, `LanguageTextGenDeclaration`, `UnitContextDeclaration` types, and per-concept `UnitContextObject` bindings (the imports-set pattern). Also covers attribute dispatch order (reverse containment) and `${attributed node}`.
- Open `references/dispatch-and-base-component.md` for concept-exact dispatch — why an extending concept needs its own (possibly empty) `ConceptTextGenDeclaration`, and how the base `LanguageTextGenDeclaration` exposes reusable `OperationDeclaration`s / `UtilityMethodDeclaration`s / `UnitContextDeclaration`s; inheriting between language base components via `extends`.
- Open `references/delegating-to-behavior.md` when textgen bodies grow tangled with formatting heuristics — the xml pattern of moving `hasNewLineAfter` / `isMultiline` / `onNewLine` into behavior and calling them from textgen, plus utility classes (`XmlCharEscape`) for escaping/formatting.
- Open `references/json-blueprints.md` when inserting nodes via MCP — full validated AST shapes for each statement/part (`AppendOperation` with literal/expression/list parts, `WithIndentOperation`, `IncreaseDepthOperation`/`DecreaseDepthOperation`, `NodeAppendPart` with `withIndent`), the minimal file-generating-concept skeleton, layout/context skeletons, and the full validated concept reference (FQNs, concept refs, child roles).
- Open `references/common-failures.md` when output is missing, indentation is broken, file extension is wrong, special characters appear unescaped, subclasses emit nothing, imports leak inline, attributes are ignored, or `write` and `append` collide.
