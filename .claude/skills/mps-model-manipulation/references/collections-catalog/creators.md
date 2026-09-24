## Creators (all wrapped in `GenericNewExpression`)

| MPS expression | Creator concept |
|---|---|
| `new arraylist<T>` | `ListCreatorWithInit` |
| `new linkedlist<T>` | `LinkedListCreator` |
| `new hashset<T>` | `HashSetCreator` |
| `new linked_hashset<T>` | `LinkedHashSetCreator` |
| `new hashmap<K,V>` | `HashMapCreator` |
| `new linked_hashmap<K,V>` | `LinkedHashMapCreator` |
| `new sequence<T>({=> yield ...})` | `SequenceCreator` wrapping a `ClosureLiteral` |

All take an optional brace-initializer (`{a, b, c}` for lists/sets; `{k=v, k=v}` for maps) as a separate child role — search the creator concept for the exact role name when needed.
