# Standalone Literal Expressions: links, concepts, node and model pointers

These are **top-level expressions**, not DotExpression operations. They produce an `SContainmentLink` / `SReferenceLink` / `SConcept` handle, or a pointer to one specific node or model, without a preceding `node.` operand. Links and concepts are useful as arguments to scope factories, smodel APIs, and behavior methods that take them by identity. For a node or model that already exists when you write the code, see the last section, "A node or model known at design time".

## `link/C : role/` — a containment/reference link literal

Surface form: `link/Calculator : inputField/`. Yields the link object for the `inputField` role declared on concept `Calculator`. Commonly passed to `SimpleRoleScope.forNamedElements(...)`, `SimpleRoleScope(...)`, or to APIs that need an `SContainmentLink` / `SReferenceLink`.

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression",
  "references": [
    { "role": "conceptDeclaration", "target": "<owner-concept-noderef>" },
    { "role": "linkDeclaration",    "target": "<link-declaration-noderef>" }
  ]
}
```

Both refs are required: `conceptDeclaration` pins which concept's link list is being indexed; `linkDeclaration` names the link itself. If the link is declared on a super-concept but used via a sub-concept, point `conceptDeclaration` at the sub-concept — MPS renders `link/Sub : role/` in that case.

A typical composite argument list (`(this, link/C : role/)` as passed to `SimpleRoleScope.forNamedElements`):

```json
{ "role": "actualArgument", "nodes": [
  { "concept": "jetbrains.mps.lang.behavior.structure.ThisNodeExpression" },
  { "concept": "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression",
    "references": [
      { "role": "conceptDeclaration", "target": "<owner-concept-noderef>" },
      { "role": "linkDeclaration",    "target": "<link-declaration-noderef>" }
    ]
  }
]}
```

Do **not** confuse `LinkIdRefExpression` with `OperationParm_LinkQualifier` (used as a *child of an operation* — `Node_GetReferenceOperation`; see `references/references-and-queries.md`): the latter carries only the `link` ref, not a `conceptDeclaration`.

## Concept literal `concept/C/` — also standalone, also just two refs

Surface form: `concept/Calculator/`. Produces an `SConcept` handle.

```json
{
  "concept": "jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression",
  "references": [
    { "role": "conceptDeclaration", "target": "<concept-noderef>" }
  ]
}
```

Use when a method or scope factory takes an `SConcept` argument. (For the older, interface-based argument form `RefConcept_Reference` used by `.ancestor<C>`, `isSubConceptOf(C)`, etc., see `references/smodel-concepts-catalog.md` — those live inside an operation, not as a top-level expression.)

## A node or model known at design time: `node-ptr/…/` and `model-ptr/…/`

When code needs one specific node that exists when you write the code (a sample root, a sandbox
recipe, a node in a library model), point at it with a node-pointer literal and resolve it:

```
node<Recipe> pancakes = node-ptr/Pancakes/.resolve(project.getRepository());
```

Do **not** search a model for its name (`model.roots(Recipe).findFirst({~it => it.name.equals("Pancakes")})`),
and do not hand-write `new SNodePointer("r:…", "<id>")` or `PersistenceFacade…createNodeReference(…)`.
`node-ptr/…/` holds a real reference to the node: the editor checks it, a rename updates it (it then
prints `node-ptr/<new name>/`), and Find Usages lists it. It generates
`SPointerOperations.resolveNode(new SNodePointer("<model ref>", "<node id>"), repo)`, so it resolves by
node id. A name in a string is invisible to all of these, and after a rename the search returns `null`
at run time. A hand-written `SNodePointer` resolves correctly, but nothing checks it, Find Usages
misses it, and moving the node to another model breaks it.

Not for everything known at design time: a concept is `concept/C/` (above), a Java class, method or
field is an ordinary BaseLanguage reference, and a generator template reaches its nodes through
macros and mapping labels.

Blueprint of the whole `node-ptr/Pancakes/.resolve(project.getRepository())`:

```json
{ "concept": "jetbrains.mps.baseLanguage.structure.DotExpression", "children": [
  { "role": "operand", "nodes": [
    { "concept": "jetbrains.mps.lang.smodel.structure.NodePointerExpression", "children": [
      { "role": "ref", "nodes": [
        { "concept": "jetbrains.mps.lang.modelapi.structure.NamedNodeReference",
          "references": [ { "role": "target", "target": "Pancakes" } ] } ] } ] } ] },
  { "role": "operation", "nodes": [
    { "concept": "jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation", "children": [
      { "role": "repositoryArg", "nodes": [
        { "concept": "jetbrains.mps.baseLanguage.structure.DotExpression", "children": [
          { "role": "operand", "nodes": [ { "concept": "jetbrains.mps.lang.test.structure.ProjectExpression" } ] },
          { "role": "operation", "nodes": [
            { "concept": "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation",
              "references": [ { "role": "baseMethodDeclaration",
                "target": "6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)/~Project.getRepository%28%29" } ] } ] } ] } ] } ] } ] }
] }
```

- **Import the target's model first** (`mps_mcp_model_dependency` `ADD`; it also adds the module
  dependency, so think twice before a language module imports a sandbox model). The `target` scope is the roots of the code's own model plus those of its imported models.
  Without the import, a name stays `fixReferences.stillBroken` ("Unresolved reference: Pancakes"). With it,
  a name or an `r:` ref resolves; after an `r:` ref, check that `fixReferences.repointed` is 0.
- **Used language:** `jetbrains.mps.lang.smodel`. The insert tools add `jetbrains.mps.lang.modelapi`
  (the language of `NamedNodeReference`) themselves.
- **Nested nodes:** `node-ptr/Root->Inner->member/` is a `NamedNodeReference` whose optional `child`
  holds the next `NamedNodeReference`. Each segment must be a named node (`INamedConcept`); the scope of a
  segment is the named nodes under the previous one, and it looks past unnamed nodes in between.
- **Type:** `.resolve(repo)` is typed `node<C>` for the target's concept, so no cast is needed. It returns
  `null` when the node is not in that repository, or when the pointer is `null`.
- **The repository argument:** `project.getRepository()` in a `NodesTestCase` or `EditorTestCase`
  (`ProjectExpression`, above); the repository of the MPS project in a plugin action or tool. A model you
  already hold also has one: `<model>/.getRepository()`.
- **Read access:** resolving reads the model. `NodesTestCase` test methods, behavior methods, rule bodies
  and actions whose `requiredAccess` is `read` or `command` already hold the lock. An `EditorTestCase`'s
  `code` does not; nor do tools and plugin hooks: wrap the read in `read action { … }` or the model
  access's `runReadAction` (`references/concurrent-access.md`).
- **The Java parser cannot produce the literal.** Parse the rest, then put this blueprint in place with
  `mps_mcp_update_node` (`SET` `CHILD` over the placeholder expression).
- **A node without a name** has only the id form: `NodePointer` (`nodeId` property, `modelRef` child),
  printed `model.name:12345`. MPS checks that the node exists, but it is not a reference: Find Usages
  misses it and a move breaks it. Prefer pointing at a named ancestor and navigating from there.
- **A copy, not the stored node.** `node-ptr` resolves the node in its own model. A test run
  (`NodesTestCase`, `EditorTestCase`) works on a transient copy of the test model whose roots keep their
  node ids, so find the copy by id in the copy's model. In an `EditorTestCase` that model is the edited
  node's: `editor component.getEditedNode().getModel().getNode(node-ptr/Source//.getNodeId())`, inside a read
  action. lang.test's `model` expression is the stored test model, not the copy, so `model/.getNode(…)`
  returns the original. The `/` (`SemanticDowncastExpression`) after the literal is required:
  `node-ptr<C>` is not a subtype of `SNodeReference`, and `node-ptr/Source/.getNodeId()` fails the type
  check. Generator output keeps no ids; reach it through mapping labels (`mps-aspect-generator` skill),
  not `node-ptr`.
- **Deprecated look-alikes:** `node/<name>/` (`NodeRefExpression`), `nodePointer/<name>/`
  (`NodePointerExpression_Old`) and `model/<name>/` (`ModelReferenceExpression`). Do not write them, nor
  `childNode` (`ChildNodeRefExpression`, the child step of a `node/<name>/` path). On an existing
  `node/<name>/` or `childNode`, the intention "Replace With node-ptr<>" converts it
  (`mps_mcp_list_node_intentions` lists it on that node).

Related operations on pointers: `node.pointer` gives a `node`'s pointer (`Node_PointerOperation`),
`node.is(Pancakes)` tests whether a node is that design-time node (`Node_IsOperation`, whose own
`ref` child is the `NamedNodeReference`), `ref.set ptr(Pancakes)` sets a reference from a pointer
(`Link_SetTargetPointerOperation`, child `linkTarget` = `NodePointerArg_Identity` holding the
`NamedNodeReference`), and `ptr.model` gives the pointer's `model-ptr`
(`NodePointer_GetModelOperation`).

### `model-ptr/…/` — a model known at design time

`model-ptr/mcp.study.kitchen.samples/.resolve(repo)` gives a `model`; the deprecated `model/<name>/`
finds models by name only. `ModelPointerExpression` holds a `ModelPointer` (property `modelId`, child
`name`) in its `modelRef` child, and `.resolve(repo)` is `ModelPointer_ResolveOperation` (child
`repositoryArg`, as above):

```json
{ "concept": "jetbrains.mps.lang.smodel.structure.ModelPointerExpression", "children": [
  { "role": "modelRef", "nodes": [
    { "concept": "jetbrains.mps.lang.modelapi.structure.ModelPointer",
      "properties": [ { "name": "modelId", "value": "r:38cfdf05-3b6a-4864-b1ba-70dca7ae70da" } ],
      "children": [ { "role": "name", "nodes": [
        { "concept": "jetbrains.mps.lang.modelapi.structure.ModelName",
          "properties": [ { "name": "value", "value": "mcp.study.kitchen.samples" } ] } ] } ] } ] } ] }
```

To get one node, prefer `node-ptr/…/` over `model-ptr/…/` plus a search of the model.
