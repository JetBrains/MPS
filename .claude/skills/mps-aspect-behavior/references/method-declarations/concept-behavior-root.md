## Root: `ConceptBehavior`

One `ConceptBehavior` root per concept. Key children:

| Role | Concept | Purpose |
|---|---|---|
| `concept` (ref) | ConceptDeclaration | Target concept |
| `constructor` | `ConceptConstructorDeclaration` | Runs once at node creation; initialise default values |
| `method` | `ConceptMethodDeclaration` | Instance method visible as `node.m(...)` |

Concept methods may be:

- **non-virtual** (**default** — no modifier flags) — inherited by subconcepts and called as `node.m(...)`, but **statically bound**: it cannot be overridden. A same-named method in a subconcept's behavior *shadows* it (which method runs depends on the static type at the call site) — a common source of bugs. Most utility methods in baseLanguage's `Classifier_Behavior` (`getAllSuperClassifiers`, `isDescendant`, `isSame`, …) are non-virtual.
- **`virtual`** — overridable by subconcept behaviors; calls dispatch at runtime on the node's actual concept. Called as `node.m(...)`. Examples: `Expression.isLValue`, `Expression.getVariableExpectedName`, and effectively every method of `Type_Behavior` (`getSupertypes`, `isReifiable`, `getBoxedType`, …) in baseLanguage.
- **`abstract`** — no implementation; every non-abstract subconcept must provide one. **Implies virtual: set both `isAbstract` and `isVirtual` to `true`** (baseLanguage does, e.g. `Classifier.findAncestor`, `IMemberContainer.getMembers`). Declare on abstract concepts or concept interfaces. Called as `node.m(...)` (virtually dispatched). Note that "no implementation" still means an **empty `body` `StatementList`, not a missing `body` child** — the role is obligatory (see `references/json-blueprints.md`), so an abstract method without one is reported as `No child in the obligatory role 'body'`.
- **`final`** — a virtual method that cannot be overridden further. Rarely needed: a plain non-virtual method is already non-overridable.
- **`static`** — belongs to the concept, not an instance. No `this`. Called as **`Concept.m(...)`** (i.e., qualify with the concept name, not a node). Used for concept-wide utilities, often taking nodes as parameters — e.g. `Classifier.getContextClassifier(node)`, `Classifier.banParent(...)` in baseLanguage.
- **`virtual static`** (`isVirtual` + `isStatic`) — a static method dispatched on a runtime **concept value** (`concept<X>` expression): `conceptValue.m(...)`. Subconcept behaviors override it like any virtual method (matching signature + `overriddenMethod`). Use when the result varies per concept but no node instance is needed. baseLanguage examples: `Expression.getPrecedenceLevel`, `Expression.lvalue`, `Expression.constant`, `Type.isValueType` — each overridden across many subconcept behaviors (smodel, collections, …).

A subconcept's `ConceptBehavior` overriding a virtual/abstract method must match the signature exactly. Only `virtual` (incl. `abstract` and `virtual static`) methods can be overridden — to make a method overridable later, it must be declared `virtual` up front.
