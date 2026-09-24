# `NodeFactories`, `NodeFactory`, and What Triggers Them

## Root: `NodeFactories`

One root per actions model by convention, named like `ElementFactories`, `ExpressionFactories`, etc.

- FQN: `jetbrains.mps.lang.actions.structure.NodeFactories`
- Concept ref: `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/1158700664498`
- Super: `BaseConcept`; implements `INamedAspect`, `IConceptAspect`
- Rootable: yes
- Property `name` (string) — mandatory
- Child `nodeFactory` → `NodeFactory` (0..n)

One `NodeFactories` root holds every `NodeFactory` in the language. You do not create a new root per concept — you add factories as children.

## `NodeFactory` — one per target concept

- FQN: `jetbrains.mps.lang.actions.structure.NodeFactory`
- Concept ref: `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/1158700725281`
- Property `description` (string, optional) — human hint shown next to the entry.
- Reference `applicableConcept` → `AbstractConceptDeclaration` (cardinality 1) — the concept whose instances this factory sets up. `NodeFactoryManager.setupNode` walks a `DepthFirstConceptIterator` over the concept being created **and all of its super-concepts and implemented interfaces**, and runs every factory found along the way — a factory on a supertype is not shadowed by a more specific one; both run.
- Child `setupFunction` → `NodeSetupFunction` (cardinality 1)

Multiple `NodeFactory` children for the *same* `applicableConcept` are not merged — keep one per concept.

## `NodeSetupFunction` — the body

- FQN: `jetbrains.mps.lang.actions.structure.NodeSetupFunction`
- Concept ref: `c:aee9cad2-acd4-4608-aef2-0004f6a1cdbd/1158701162220`
- Super: `jetbrains.mps.baseLanguage.structure.ConceptFunction`
- Child `body` → `jetbrains.mps.baseLanguage.structure.StatementList` (1)
- Signature surfaced in the editor: `(newNode, sampleNode, enclosingNode, index, model) -> void`
- Runs inside MPS's editor write action; no explicit return required (`void`)

### Execution timing — node not yet in the model

The setup function fires *before* `newNode` is inserted into the model. This means `newNode.parent`, ancestors, and model-wide queries that depend on containment will return null/empty. Use `enclosingNode` (passed as parameter) when you need the would-be parent, rather than `newNode.parent`.

## When factories fire

| Trigger | Notes |
|---|---|
| Code completion menu — substitution / replacement | User selects a concept from the completion menu; the factory for that concept fires |
| `add new initialized(...)` | From `jetbrains.mps.lang.smodel` / `jetbrains.mps.lang.actions`; fires the factory then inserts |
| `set new initialized(...)` | Replaces an existing child with a new instance; factory fires first |
| `replace new initialized(...)` | Variant for in-place replacement in a list; factory fires first |
| Root node creation via the project-view context menu | "New → <concept>" in the Project pane triggers the factory |

## When factories do NOT fire

| Non-trigger | Explanation |
|---|---|
| Quotations `<C()>` | Generator quotations bypass behavior constructors **and** node factories |
| `model.add root(<C()>)` | The inner quotation creates the node without a factory |
| `model.add new root(C)` | Direct programmatic root creation; no factory is invoked |
| Displaying nodes in the editor | Rendering never triggers creation logic |

> **Key rule**: If you need factory-initialised nodes in generator code, use `new node<C>()` followed by explicit property assignments, or redesign to route creation through an intention/action that calls `add new initialized`.
