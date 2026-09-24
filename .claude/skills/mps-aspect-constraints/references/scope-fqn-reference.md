# Scope Concepts: FQNs, Required Imports, JSON Blueprints

Open this file when constructing scope bodies via MPS MCP — to translate surface syntax (`come from`, `parent scope`, `kind.isSubConceptOf(...)`, `link/C : role/`, `.ancestor<concept = X>`, `.descendants<concept = X>`, `node.model`, etc.) into the concrete `jetbrains.mps.lang.scopes` / `jetbrains.mps.lang.smodel` concept FQNs, and to look up the validated `getScope` method skeleton.

Surface syntax like `come from outputField`, `parent scope`, `kind.isSubConceptOf(InputField)`, and `link/Calculator : inputField/` is not BaseLanguage. Each construct is a dedicated concept from `jetbrains.mps.lang.scopes` or `jetbrains.mps.lang.smodel`. When building `getScope` bodies via MPS MCP, you construct *these* concepts — not strings.

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Required used-languages on the behavior model | `references/scope-fqn-reference/required-languages-imports-dependencies.md` |
| Scope-related concept FQNs | `references/scope-fqn-reference/scope-concept-fqns.md` |
| JSON blueprint — `ScopeProvider.getScope` method skeleton | `references/scope-fqn-reference/blueprint-getscope-skeleton.md` |
| JSON blueprint — guarded local scope | `references/scope-fqn-reference/blueprint-guarded-local-scope.md` |
| JSON blueprint — `InheritedNodeScopeFactory` constraint | `references/scope-fqn-reference/blueprint-inherited-scope-factory.md` |
