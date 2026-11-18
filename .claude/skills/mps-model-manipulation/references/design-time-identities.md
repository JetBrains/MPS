# Design-time identities: smodel literals, never identity strings

When code inside a model names a model, module, node, concept, link or language that exists when you
write the code, it uses the smodel literal for it. That holds for every body: a quick fix, intention,
behavior method, checking rule, action, plugin hook or test.

| Identity | Literal | Concept | Java type | Typical callee |
|---|---|---|---|---|
| model | `model-ptr/<model name>/` | `ModelPointerExpression` | `model-ptr`, a subtype of `SModelReference` | `new ModelImports(m).addModelImport(…)` |
| module | `module-reference/<module name>/` | `ModuleRefExpression` | `SModuleReference` | `((AbstractModule) m).addDependency(…, false)`, `new ModelImports(m).addUsedDevKit(…)` |
| node | `node-ptr/<name>/` | `NodePointerExpression` | `node-ptr<C>` | `.resolve(repo)` (`node.is(…)` and `ref.set ptr(…)` hold the same identity directly) |
| concept | `concept/C/` | `ConceptIdRefExpression` | `concept<C>` (`SConcept`) | Java APIs and behavior methods that take an `SConcept` |
| link | `link/C : role/` | `LinkIdRefExpression` | `SContainmentLink` / `SReferenceLink` | `SimpleRoleScope`, `SNode.getChildren(link)` |
| language | `language/<language name>/` | `LanguageRefExpression` | `SLanguage` | `new ModelImports(m).addUsedLanguage(…)` |

All concepts are in `jetbrains.mps.lang.smodel`. The `node-ptr`, `concept/` and `link/` blueprints are in
`references/link-and-concept-literals.md`; the other three are below.

**Never** write the identity as a string or rebuild it by hand in model code:
`PersistenceFacade.getInstance().createModelReference("r:…(name)")`, `createModuleReference("<uuid>(name)")`,
`createNodeReference(…)`, `new SNodePointer("r:…", "<id>")`, `MetaAdapterFactory.getConcept/getContainmentLink/getLanguage(0x…L, …)`
written inline, or a UUID / hex-id string handed to any of these. And never look a known node, model or
module up by name (`roots(C).findFirst(… name …)`, `repo.getModule(…)` over a name loop).

Not covered: identities computed at run time (a model the user picked, a node's own `.model`), Java
classes, methods and fields (ordinary BaseLanguage references), generator templates (macros and mapping
labels), and Java written outside a model.

## Resolve only when the callee needs the loaded object

Pass the literal itself when the callee takes a reference: `addModelImport(model-ptr/…/)`,
`addDependency(module-reference/…/, false)`. Do not write `model-ptr/…/.resolve(repo)` there:
`.resolve` gives an `SModel` / `SModule`, which these callees do not accept.

When the code needs the object itself:

- model: `model-ptr/…/.resolve(repo)` → `model` (`ModelPointer_ResolveOperation`, child `repositoryArg`);
- node: `node-ptr/…/.resolve(repo)` → `node<C>` (`references/link-and-concept-literals.md`);
- module: no smodel operation; call the Java `resolve(repo)` of `SModuleReference` on the literal.

## The Java parser is not an exception

`mps_mcp_parse_java_and_insert` cannot produce any of these literals. A parsed body that names an
identity with `PersistenceFacade`, `SNodePointer` or `MetaAdapterFactory` is a **placeholder**, not a
finished body:

1. Parse the body with the placeholder call where the literal belongs.
2. Print the result with `mps_mcp_print_node` `format: "AGENTIC VIEW"`, `codeAsText: true` and read the
   node reference of each placeholder expression (`PLAIN TEXT` shows no ids). The placeholder is the whole
   `PersistenceFacade.getInstance().create…Reference("…")` `DotExpression`, not its string.
3. `mps_mcp_update_node` `SET` `CHILD` with `childNodeRef` = that reference and the literal's blueprint.
4. Validate (`mps_mcp_check_root_node_problems`). No check flags a placeholder you missed: the string
   form compiles and runs. The body is finished only when none remain.

## Why the literal is safe, and what it buys

- **No new dependency.** `model-ptr/` and `module-reference/` need no import of the target model or
  dependency on the target module (`node-ptr/` does need the import). The insert tools add the used languages
  `jetbrains.mps.lang.smodel` and `jetbrains.mps.lang.modelapi` themselves.
- **Same generated code.** Both generate `PersistenceFacade.getInstance().createModelReference("<id>(<name>)")`
  / `createModuleReference("<id>(<name>)")`. The identity is baked into the class as a string and resolved by id.
- **What a model or module literal gives you:** a typed value, and an id kept apart from a display name.
  When the target resolves and its name changed, MPS reports an **info** "Model name doesn't reflect actual
  value" / "Module name …", with the quick fix `UpdateModelPointerName` / `UpdateModulePointerName`. You can
  also find every use with `mps_mcp_query_nodes` `FIND_INSTANCES` of the concept, `propertyFilter` on
  `modelId` / `moduleId`.
- **What it does not give you:** `model-ptr/` and `module-reference/` hold ids, not references. Find Usages
  does not list them, a rename does not rewrite them (only the info above), and a wrong id is **not**
  reported. Copy ids from `mps_mcp_get_project_structure` or an existing reference, never type them.
  `node-ptr/`, `concept/` and `link/` are real references: checked, renamed and found by Find Usages.

Use `PersistenceFacade` only in Java written outside a model.

## `model-ptr/…/` — a model

`ModelPointerExpression` holds a `modelapi.ModelPointer` (property `modelId`, child `name`, optional
`moduleRef`) in its `modelRef` child. Verified as the `addModelImport` argument:

```json
{ "concept": "jetbrains.mps.lang.smodel.structure.ModelPointerExpression", "children": [
  { "role": "modelRef", "nodes": [
    { "concept": "jetbrains.mps.lang.modelapi.structure.ModelPointer",
      "properties": [ { "name": "modelId", "value": "r:c3548bac-30eb-4a2a-937c-0111d5697309" } ],
      "children": [ { "role": "name", "nodes": [
        { "concept": "jetbrains.mps.lang.modelapi.structure.ModelName",
          "properties": [ { "name": "value", "value": "jetbrains.mps.lang.smodel.generator.smodelAdapter" } ] } ] } ] } ] } ] }
```

`modelId` is the part of the model reference before `(`, without the module prefix. To get one
node, prefer `node-ptr/…/` over `model-ptr/…/` plus a search of the model.

## `module-reference/…/` — a module

`ModuleRefExpression` holds a `modelapi.ModulePointer` (properties `moduleId`, `moduleName`) in its
`moduleId` child. Verified as the `addDependency` argument:

```json
{ "concept": "jetbrains.mps.lang.smodel.structure.ModuleRefExpression", "children": [
  { "role": "moduleId", "nodes": [
    { "concept": "jetbrains.mps.lang.modelapi.structure.ModulePointer",
      "properties": [ { "name": "moduleId", "value": "9a4afe51-f114-4595-b5df-048ce3c596be" },
                      { "name": "moduleName", "value": "jetbrains.mps.runtime" } ] } ] } ] }
```

The editor prints the stored `moduleName`, so a stale one shows as the old name. Use
`jetbrains.mps.lang.modelapi.structure.ModulePointer`, not the deprecated `smodel.ModulePointer`.

## `language/…/` — a language

`LanguageRefExpression`, child `languageId` = `jetbrains.mps.lang.smodel.structure.LanguageId` with
properties `languageId` (the UUID) and `namespace` (the qualified name); typed `SLanguage`.

```json
{ "concept": "jetbrains.mps.lang.smodel.structure.LanguageRefExpression", "children": [
  { "role": "languageId", "nodes": [
    { "concept": "jetbrains.mps.lang.smodel.structure.LanguageId",
      "properties": [ { "name": "languageId", "value": "f3061a53-9226-4cc5-a443-f952ceaf5816" },
                      { "name": "namespace", "value": "jetbrains.mps.baseLanguage" } ] } ] } ] }
```

## Deprecated look-alikes

Never write these. On an existing one, `mps_mcp_list_node_intentions` shows whether a conversion
intention exists; `model/`, `module/` and `nodePointer/` have none, so `SET` `CHILD` the replacement blueprint.

| Deprecated | Concept | Write instead |
|---|---|---|
| `model/<name>/` | `ModelReferenceExpression` (name only) | `model-ptr/…/` |
| `module/<name>/` | `ModuleReferenceExpression`; generation fails with "module `…` is not found" when the module is not in the generating repository | `module-reference/…/` (blueprint above) |
| `language-module/<name>/` | `LanguageReferenceExpression` | `module-reference/…/` for the module, `language/…/` for the `SLanguage`. Its intention "Replace with module reference" writes the deprecated `smodel.ModulePointer`: `SET` `CHILD` the `modelapi.ModulePointer` blueprint over it. Its "Replace with .resolve()" gives an `SModule`, wrong where a reference is wanted |
| `node/<name>/`, `childNode` | `NodeRefExpression`, `ChildNodeRefExpression` | `node-ptr/…/` (intention "Replace With node-ptr<>") |
| `nodePointer/<name>/` | `NodePointerExpression_Old` | `node-ptr/…/` |
| `conceptNode/<name>/` | `ConceptRefExpression` | `concept/C/` (`.asNode` for the declaration node; intention "Convert to concept<...>") |
| `linkNode/<role>/` | `LinkRefExpression` | `link/C : role/` (intention "Convert to link/.../") |

## The one `LINKS` / `CONCEPTS` exception

Generated-style classes such as `RulesFunctions_BaseLanguage` keep their links and concepts in
`LINKS.xxx` / `CONCEPTS.xxx` constants (`MetaAdapterFactory` fields of an inner class). When you edit
**such a class**, use and extend its constants, following
`references/java-parser-capabilities/unsupported-and-workarounds.md`. Everywhere else write
`link/C : role/` and `concept/C/`.
