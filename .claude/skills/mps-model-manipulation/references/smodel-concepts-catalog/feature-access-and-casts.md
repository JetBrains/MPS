## Feature access and casts

| Concept | ID | MPS notation |
|---|---|---|
| `SLinkAccess` | `1138056143562` | `node.linkName` (in DotExpression) |
| `SPropertyAccess` | `1138056022639` | `node.propertyName` (in DotExpression) |
| `SNodeTypeCastExpression` | `1140137987495` | `expr as C` / `expr : C` |
| `SemanticDowncastExpression` | `1145404486709` | `expr /` — downcast smodel type (`node<C>`, `model<L>`) to Java API (`SNode`, `SModel`) |
| `SConceptTypeCastExpression` | `1761385620274348152` | cast to `concept<C>` |
| `SConceptTypeLiteral` | `5472444609684539882` | `concept/C/` concept literal |
| `RefConcept_Reference` | `1177026924588` | `<ConceptName>` concept argument wrapper |
| `LinkIdRefExpression` | `2644386474301421077` | `link/C : role/` link literal |

## Node and model pointers

Blueprints, prerequisites and when to use them: `references/link-and-concept-literals.md`.

| Concept | ID | MPS notation |
|---|---|---|
| `NodePointerExpression` | `7400021826774799413` | `node-ptr/Name/` literal; child `ref` = `NamedNodeReference` (lang.modelapi; ref `target`, optional `child`) or the id form `NodePointer` |
| `ModelPointerExpression` | `1863527487546129879` | `model-ptr/model.name/` literal; child `modelRef` = `ModelPointer` (lang.modelapi) |
| `NodePointer_ResolveOperation` | `3648723375513868532` | `ptr.resolve(repo)` → `node<C>`; child `repositoryArg` |
| `ModelPointer_ResolveOperation` | `4065387505485742666` | `mptr.resolve(repo)` → `model`; child `repositoryArg` |
| `NodePointer_GetModelOperation` | `6138838330738724256` | `ptr.model` → `model-ptr` |
| `Node_PointerOperation` | `5045161044515397667` | `node.pointer` → `node-ptr<C>` |
| `Model_PointerOperation` | `3506770386464365589` | `model.pointer` → `model-ptr` |
| `Node_IsOperation` | `3661776679762942774` | `node.is(Name)`; child `ref` = `NamedNodeReference`, as in `NodePointerExpression` |
| `Link_SetTargetPointerOperation` | `942336824646299470` | `node.ref.set ptr(Name)`; child `linkTarget` (`INodePointerArg`): `NodePointerArg_Identity` (`3320646261221695165`, child `ref` as above) for a literal target, `# expr` (`PoundExpression`) for a `node-ptr` value |
