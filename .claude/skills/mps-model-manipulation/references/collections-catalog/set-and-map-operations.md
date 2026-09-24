## Set & map operations

Sets reuse the collection-level concepts: `set.add(v)` → `AddElementOperation`, `set.addAll(seq)` → `AddAllElementsOperation`, `set.remove(v)` → `RemoveElementOperation`, `set.removeAll(seq)` → `RemoveAllElementsOperation`, `set.clear` → `ClearAllElementsOperation`. (Deprecated `AddSetElementOperation` / `RemoveSetElementOperation` exist but should not be used in new code — they were superseded in 2018.3.)

`set.iterator` → `GetIteratorOperation`. For a mutable set, this yields a **`modifying_iterator`**, enabling in-place removal during traversal — not a plain Java iterator (see `references/collections-catalog/iterators.md`).

Maps:

| Syntax | Concept |
|---|---|
| `map[k]` (read) | `MapElement` (standalone Expression) |
| `map[k] = v` | `AssignmentExpression` whose `lValue` is a `MapElement` |
| `map.containsKey(k)` / `.containsValue(v)` | `ContainsKeyOperation` / `ContainsValueOperation` |
| `map.keys` / `.values` | `GetKeysOperation` / `GetValuesOperation` |
| `map.removeKey(k)` | `MapRemoveOperation` (alias `removeKey`) |
| `map.clear` | `MapClearOperation` |
| `map.putAll(other)` | `PutAllOperation` |

`map.keys` and `.values` return **sequences** (live views), not new collections.
