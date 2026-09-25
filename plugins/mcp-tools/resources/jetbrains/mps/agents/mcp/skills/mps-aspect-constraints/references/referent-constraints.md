# Reference (Referent) Constraints

Open this file when defining a `NodeReferentConstraint` — choosing between imperative reference-side scopes and ancestor-supplied `InheritedNodeScopeFactory`, attaching a `referentSetHandler`, or configuring concept-level `Default Scope`.

A reference's **scope** is the set of nodes the editor offers as completion and against which MPS validates the stored target. Without any constraint MPS falls back to a default scope: *all nodes of the reference's target concept in the current model plus all imported models*. For anything narrower, choose one of two approaches.

`NodeReferentConstraint` children:
- `applicableLink` — ref to the `LinkDeclaration` of the reference role (historic name `applicableReferent`; the current concept uses `applicableLink`)
- `searchScopeFactory` — holds either a declarative `InheritedNodeScopeFactory` (see [§ Inherited scope](referent-constraints/inherited-scope.md)) **or** an imperative `ConstraintFunction_ReferentSearchScope_Scope` (see [§ Imperative reference-side scope](referent-constraints/imperative-scope.md))
- `referentSetHandler` / `referentValidator` — optional advanced hooks for rewriting the stored target or rejecting assignments

One file per section, each self-contained. Read only the files for your job, and when you need more than one, Read them all in one parallel batch.

| Section | File |
|---|---|
| Imperative reference-side scope | `references/referent-constraints/imperative-scope.md` |
| Verbatim example — Calculator `InputFieldReference_Constraints`, link `field` | `references/referent-constraints/imperative-scope-calculator-example.md` |
| Computed sequences: `ListScope` with anonymous `getName` | `references/referent-constraints/computed-sequences-listscope.md` |
| Computed sequences — full `body` (`StatementList`) JSON blueprint | `references/referent-constraints/computed-sequences-blueprint.md` |
| CompositeScope with dynamic addScope (Kaja `RoutineCall`) | `references/referent-constraints/composite-scope-addscope.md` |
| Cross-model filtered scope with `rootsIncludingImported` (Kaja `Require`) | `references/referent-constraints/cross-model-filtered-scope.md` |
| Meta-level scope: offering structure declarations (`LinkDeclaration` referents) | `references/referent-constraints/meta-level-scope.md` |
| Inherited scope via `InheritedNodeScopeFactory` + `ScopeProvider` | `references/referent-constraints/inherited-scope.md` |
| Choosing between the two approaches | `references/referent-constraints/choosing-scope-style.md` |
| ReferentSetHandler: side effects on reference assignment | `references/referent-constraints/referent-set-handler.md` |
| Default Scope (concept-level, not reference-level) | `references/referent-constraints/default-scope.md` |
