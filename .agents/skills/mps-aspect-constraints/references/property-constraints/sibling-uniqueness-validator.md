## Validator that enforces sibling uniqueness

Property validators can reject `propertyValue` based on siblings. StateChart's `State.isInitial` allows setting the flag to `true` only if no sibling `State` already carries it:

```
propertyValue == false || node.siblings.ofConcept<State>.all({it => it.isInitial == false; });
```

This is the canonical pattern for "only one X in the collection may have flag Y set": short-circuit on the benign value (`false` / absence), otherwise run an `all({...})` over `siblings.ofConcept<Self>` (see the mps-model-manipulation skill for `Node_GetAllSiblingsOperation`, `OfConceptOperation`, `AllOperation`). Put it in `propertyValidator`, not `propertySetter` — the validator returns `false` and MPS shows an editor error without mutating the node; a setter that silently clears the flag on peers would be a larger, less obvious side effect.
