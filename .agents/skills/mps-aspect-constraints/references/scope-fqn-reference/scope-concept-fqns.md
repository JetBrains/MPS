## Scope-related concept FQNs

| Surface | FQN | Key children / references |
|---|---|---|
| `parent scope` | `jetbrains.mps.lang.scopes.structure.ParentScope` | (leaf expression) |
| `come from <role>` | `jetbrains.mps.lang.scopes.structure.ComeFromExpression` | ref `link` → `LinkDeclaration` |
| `concept.isSubConceptOf(C)` | `jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation` | child `conceptArgument` → `RefConcept_Reference`. Matches `C` **and** its sub-concepts. |
| `concept.isExactly(C)` | `jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation` | child `conceptArgument` → `RefConcept_Reference`. Matches `C` **only** — not sub-concepts. Use when a guard must not fire for specialised sub-concepts (e.g. `kind.isExactly(State)` in `Stateful.getScope`). |
| Concept literal `C` (inside a smodel operation parameter) | `jetbrains.mps.lang.smodel.structure.RefConcept_Reference` | ref `conceptDeclaration` → `AbstractConceptDeclaration`. Used as the `conceptArgument` child of operations like `isSubConceptOf`, `isExactly`, `OperationParm_Concept`. |
| Standalone concept literal `concept/C/` | `jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression` | ref `conceptDeclaration` → `AbstractConceptDeclaration`. A first-class expression of type `concept<C>`; use this when passing a concept as a plain argument (e.g. `new HidingByNameScope(concept/Event/, concept/Event/, …)`), **not** `RefConcept_Reference`. |
| Link literal `link/C : role/` | `jetbrains.mps.lang.smodel.structure.LinkIdRefExpression` | refs `conceptDeclaration` + `linkDeclaration` |
| `node.ancestor<concept = C>` | `jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation` | child `parameter` → `OperationParm_Concept` (whose `conceptArgument` is `RefConcept_Reference`) |
| `node.descendants<concept = C>` | `jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation` | child `parameter` → `OperationParm_Concept`; analogous to `Node_GetAncestorOperation` but downward |
| `node.model` | `jetbrains.mps.lang.smodel.structure.Node_GetModelOperation` | (leaf operation) returns `SModel` |
| `model.rootsIncludingImported(C)` | `jetbrains.mps.lang.smodel.structure.Model_RootsIncludingImportedOperation` | child `conceptArgument` → `RefConcept_Reference`; returns all roots of concept `C` in current model + imported models |
| `node.parent` | `jetbrains.mps.lang.smodel.structure.Node_GetParentOperation` | (leaf operation) returns the direct parent node; chainable: `parentNode.parent.isInstanceOf(Script)` reaches the grandparent |
| `node.isInstanceOf(C)` | `jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation` | child `conceptArgument` → `RefConcept_Reference`; returns `boolean`; used in canBe block bodies |
| `<concept = C>` operation parm | `jetbrains.mps.lang.smodel.structure.OperationParm_Concept` | child `conceptArgument` → `IRefConceptArg` (typically `RefConcept_Reference`) |
| Type `concept<>` | `jetbrains.mps.lang.smodel.structure.SConceptType` | (leaf) |
| Type `node<>` | `jetbrains.mps.lang.smodel.structure.SNodeType` | optional ref `concept` (to narrow) |
| `this` (behavior) | `jetbrains.mps.lang.behavior.structure.ThisNodeExpression` | (leaf) |
| `contextNode` (constraint fn) | `jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode` | (leaf) |
| `InheritedNodeScopeFactory` | `jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory` | ref `kind` → `AbstractConceptDeclaration` |
| Imperative scope factory | `jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope` | child `body` → `StatementList` |
| `ConceptMethodDeclaration.overriddenMethod` | target: `jetbrains.mps.lang.core.behavior.ScopeProvider.getScope` | see `references/scope-fqn-reference/blueprint-getscope-skeleton.md` |

The overridden `getScope` method in `jetbrains.mps.lang.core.behavior` has the stable node reference `r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)/5811245382203252452`. Use it verbatim as the `overriddenMethod` target when constructing the `ConceptMethodDeclaration`.
