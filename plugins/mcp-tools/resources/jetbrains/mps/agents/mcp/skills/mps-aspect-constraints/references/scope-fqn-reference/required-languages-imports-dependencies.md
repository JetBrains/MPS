## Required used-languages on the behavior model

- `jetbrains.mps.baseLanguage` — statements, classifier types, static calls
- `jetbrains.mps.lang.behavior` — `ThisNodeExpression` (for `this`)
- `jetbrains.mps.lang.smodel` — `SConceptType`, `SNodeType`, `LinkIdRefExpression`, `RefConcept_Reference`, `Concept_IsSubConceptOfOperation`
- `jetbrains.mps.lang.scopes` — `ParentScope`, `ComeFromExpression`

## Required model imports (for classifier/method targets)

- `jetbrains.mps.scope` — provides `Scope`, `SimpleRoleScope` (and `forNamedElements`), `ListScope`, `CompositeScope`, `FilteringScope`, `FilteringByNameScope`, `DelegatingScope`, `EmptyScope`, `ModelsScope`, `ModelPlusImportedScope`
- `jetbrains.mps.lang.core.behavior` — provides the `ScopeProvider` interface with `getScope` (used as `overriddenMethod`)

## Required module-level dependency

The `jetbrains.mps.scope` model is shipped inside solution `jetbrains.mps.kernel` (uuid `2d3c70e9-aab2-4870-8d8d-6036800e4103`). The language module that owns the constraints (or behavior) model must therefore declare a `Default` dependency on `jetbrains.mps.kernel`, otherwise the scope helper classes (`SimpleRoleScope`, `ListScope`, `CompositeScope`, `HidingByNameScope`, …) are not on the compile classpath and the generated Java fails to compile with `ClassNotFoundException` / unresolved imports at runtime.

`mps_mcp_model_dependency` adds this module dependency automatically when it imports `jetbrains.mps.scope`. Languages created via `mps_mcp_create_module` do NOT carry the kernel dependency out of the box — check with `mps_mcp_get_project_structure(startingPoint=<module>, includeDependencies=true)` (or just add it with `mps_mcp_module_dependency targetModule=jetbrains.mps.kernel scope=Default`) when scaffolding a constraints aspect manually.
