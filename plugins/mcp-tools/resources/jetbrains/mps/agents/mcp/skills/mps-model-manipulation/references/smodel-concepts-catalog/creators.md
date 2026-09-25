## Creators (node factories)

`SNodeCreator` and `SNodeCreatorAndInitializer` are `AbstractCreator`s: each is the `creator` child of a `GenericNewExpression`.

| Concept | ID | MPS notation / usage |
|---|---|---|
| `SNodeCreator` | `1180636770613` | `new node<C>()` — concept literal / prototype-based creator (child `createdType`: `SNodeType` card 1; optional `prototypeNode`) |
| `Model_CreateNewNodeOperation` | `1143235216708` | `model.createNode<C>()` |
| `Model_CreateNewRootNodeOperation` | `1166648550386` | `new root node<C>` in `model` |
| `SNodeCreatorAndInitializer` | actions-lang `5979988948250981289` | `new initialized node<C>()` — runs the node factory (from `jetbrains.mps.lang.actions`) |
