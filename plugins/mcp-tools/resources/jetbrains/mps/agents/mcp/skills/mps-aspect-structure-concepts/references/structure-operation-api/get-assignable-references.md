#### `GET_ASSIGNABLE_REFERENCES`
Returns valid target nodes for a reference according to MPS scoping rules.
Supports two modes: `'exhaustive'` (default, returns all scope candidates) and `'completion'` (returns a small, ranked, context-aware candidate set suited for code writing and repair).
In completion mode the server infers constructor/method context, argument count, and argument types from the AST so the client does not need to probe the tree manually.

Parameters:
```
{
  "contextNode": "Required: Persistent reference of the node (SNodeReference). The closest existing ancestor node to the reference position, or the node itself.",
  "referenceRole": "Required: The name of the reference role (link name)",
  "owningConcept": "Optional: Concept that defines the reference. Defaults to the concept of 'contextNode'.",
  "targetConcept": "Optional: Filter results to this concept (SAbstractConcept reference or FQ name).",
  "containmentLink": "Optional: Containment link name when the node with the reference is being created as a child of 'contextNode'.",
  "position": "Optional: Index within 'containmentLink' where the node is being created.",
  "mode": "Optional: 'exhaustive' (default) or 'completion'. Use 'completion' for code-writing workflows.",
  "limit": "Optional: Maximum number of candidates to return in completion mode (default: 25).",
  "offset": "Optional: Pagination offset for completion mode (default: 0).",
  "scopeMode": "Optional: 'local' (same root node as contextNode) | 'model' | 'module' | 'imports' | 'project' | 'jdk'. Narrows the search scope in completion mode.",
  "includeModules": "Optional: List of module references to restrict results to.",
  "excludeModules": "Optional: List of module references to exclude from results.",
  "kindFilter": "Optional: List of candidate kinds to include: 'constructors' | 'instanceMethods' | 'staticMethods' | 'classes'.",
  "expectedDeclaringType": "Optional: FQ type name or reference. Strongly narrows constructor and member lookup. Inferred automatically for ClassCreator in completion mode.",
  "receiverType": "Optional: FQ type name for the receiver in method/field access contexts.",
  "argumentTypes": "Optional: List of FQ type names or references for argument types. Used for overload ranking. Inferred from AST in completion mode.",
  "argumentCount": "Optional: Number of arguments. Used for arity ranking even when types are unknown. Inferred from AST in completion mode.",
  "sortBy": "Optional: 'relevance' (default) | 'name' | 'module' | 'distance'.",
  "preferSameModel": "Optional: Boolean, boost candidates from the same model (default: true).",
  "preferSameModule": "Optional: Boolean, boost candidates from the same module (default: true).",
  "preferProjectCode": "Optional: Boolean, boost editable project code over stubs (default: true).",
  "includeReason": "Optional: Boolean, include ranking reason strings per candidate (default: true).",
  "includeTypeDistance": "Optional: Boolean, include type distance integer per candidate (default: true).",
  "includeInaccessible": "Optional: Boolean, include inaccessible candidates (default: false)."
}
```

The response is a structured object: `{ ok, data: [...candidates], meta: { totalMatches, returnedMatches, suppressedMatches, truncated, inferenceSummary }, error? }`.

> **`kindFilter` is meaningful only on a BaseLanguage call/type reference role.** The candidate kind is derived from each candidate's concept (`ConstructorDeclaration → constructors`, `StaticMethodDeclaration → staticMethods`, `InstanceMethodDeclaration → instanceMethods`, `Classifier → classes`), so the filter only bites where the role's scope yields those member/type declarations: `baseMethodDeclaration` on an `IMethodCall` (`InstanceMethodCallOperation`, `StaticMethodCall`, `ClassCreator`), or `classifier` on a `ClassifierType`. On a DSL reference role (or any role whose scope is plain nodes) every candidate's kind is `unknown`, so a `kindFilter` filters the whole set out. (A real `ClassCreator` — needed for `constructors` — comes from `new <type>(args)` against a resolvable constructor; a no-arg `new Foo()` is a `DefaultClassCreator`, which references `classifier` rather than `baseMethodDeclaration`.)
