# Open API and Dependency Layers

When hand-written Java/Kotlin needs to talk to MPS models from outside a rule body, it uses the Open API classes. Smodel-language code reads and writes the same objects at runtime. This reference also documents the two distinct dependency layers (module vs model) and the matching MCP tools.

## Open API quick reference (`org.jetbrains.mps.openapi.*`)

| Interface | What it represents | Key methods |
|---|---|---|
| `SRepository` | The container for all loaded modules | `getModelAccess()`, `getModules()`, `getProject()` |
| `ModelAccess` | Read/write-lock gate for a repository | `runReadAction(Runnable)`, `executeCommand(Runnable)`, `runWriteInEDT`, `checkReadAccess()`, `checkWriteAccess()` |
| `SModule` | A module (solution / language / generator / devkit) | `getModels()`, `getName()`, `getDeclaredDependencies()` |
| `SModel` | A model holding root nodes | `getRootNodes()`, `createNode(SConcept)`, `addRootNode(SNode)`, `getReference()` |
| `SNode` | A concrete node | `getConcept()`, `getChildren(SContainmentLink)`, `getReferenceTarget(SReferenceLink)`, `getProperty(SProperty)`, `setProperty`, `setReferenceTarget`, `addChild`, `delete` |
| `SNodeReference` | Persistent pointer to a node (survives detach/reload) | `resolve(SRepository)`, `getNodeId()`, `getModelReference()` |
| `SModelReference` | Persistent pointer to a model | `resolve(SRepository)` |
| `SConcept` / `SContainmentLink` / `SReferenceLink` / `SProperty` | Metadata about concepts and their features | obtained via `MetaAdapterFactory.getConcept(...)` / `getContainmentLink(...)` / `getReferenceLink(...)` / `getProperty(...)` |

### Threading rules

- Every read from an `SNode`/`SModel`/`SRepository` requires either the read or write lock.
- Every mutation requires the write lock. The JVM API exposes `ModelAccess.runReadAction` and `ModelAccess.executeCommand` for locking. Smodel-language code expresses the same intent with `read action { … }` and `command { … }` (see `references/concurrent-access.md`).
- EDT does not hold any lock by default. Use `runWriteInEDT` or wrap a `command` in `execute command in EDT { … }` if the mutation must happen on the UI thread.
- Locks are **re-entrant** but not interchangeable: a read lock cannot be upgraded to a write lock inside the same frame. Restructure the code if that pattern appears.
- Behavior methods and rule bodies already run under the right lock — do not wrap their contents in another `command` / `read action`.

### From model file to runtime

A persistent node ref (e.g. `r:<modelId>/<nodeId>`) maps to `SNodeReference`; resolve via `ref.resolve(repo)` to get a live `SNode`. The reverse conversion uses `SNode.getReference()`.

## Dependencies FAQ: modules vs models

MPS distinguishes two dependency layers. Get this right before assuming a concept or class "is missing" from your context.

### Module dependencies

- Live on the owning module (solution, language, generator, devkit).
- Control which other modules are on the module's **classpath** at generation and runtime.
- Set with MCP tool `mps_mcp_module_dependency(moduleName, targetModule, scope, reexport)`. Valid scopes: `Default`, `Design`, `Compile`, `Runtime`, `Provided`, `Extends`, `Generation Target`. Most dependencies are `Default`.
- A "**used language**" (imported separately as module metadata) is required for MPS to load that language's runtime/generator when this module builds — this is different from a plain module dependency. See `mps_mcp_model_used_language` for the model-level form.

### Model dependencies

- Live on an individual model (`.mps` file).
- Control which **models** (and therefore which concepts, root nodes, and references) are visible inside this model's nodes.
- Two sub-kinds:
    - **Imported models** — needed whenever you reference a node (including a concept declaration) from another model. Add with `mps_mcp_model_dependency(modelReference, targetModels)`. The tool also adds a `Default` module dependency on each target model's owning module — you do **not** need to add that manually.
    - **Used languages** — every concept used in the model must come from a language imported here. Add with `mps_mcp_model_used_language(modelReference, usedLanguage, kind)` where `kind` is `language` or `devkit`.

### Typical failure modes

| Symptom | Likely cause | Fix |
|---|---|---|
| "Concept not imported" on a freshly written node | Model does not import the language defining that concept | `mps_mcp_model_used_language` with `kind: "language"` |
| Reference target "cannot be resolved" at generation time | Target model not imported by the source model | `mps_mcp_model_dependency` |
| Class not found at runtime despite import looking right | Missing module-level classpath dependency | `mps_mcp_module_dependency` with scope `Default` (or `Runtime` for runtime-only jars) |
| "'L' must specify the language 'X' as a generation target …" (warning on L's generator) | Language L does not list its output language X (e.g. `jetbrains.mps.baseLanguage`) with scope `Generation Target` | `mps_mcp_module_dependency(operation="ADD", moduleName=L, targetModule=X, scope="Generation Target")` on the language |

### When to re-inspect dependencies

- After inserting a node whose concept comes from a language not yet used in the model.
- After adding a cross-model reference (`target` in a blueprint that names a different model).
- After creating a new module — check both that it declares the expected dependencies and that consuming modules/models import it.

Use `mps_mcp_get_project_structure(startingPoint, includeDependencies=true)` to inspect the current dependency graph instead of hand-reading `.msd` / `.mpl` files.
