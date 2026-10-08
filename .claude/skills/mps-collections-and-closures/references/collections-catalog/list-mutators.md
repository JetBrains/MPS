## List mutators

`ListType` adds (all are `*Operation` concepts, statement or expression):

| Syntax | Concept |
|---|---|
| `list[i]` (read) | `ListElementAccessExpression` (standalone Expression, not a DotExpression op) |
| `list[i] = v` | `AssignmentExpression` whose `lValue` is a `ListElementAccessExpression` |
| `list.set(i,v)` | `SetElementOperation` (alias `set`) |
| `list.insert(i,v)` | `InsertElementOperation` (alias `insert`) |
| `list.add(v)` (implicit `+=`) | `AddElementOperation` |
| `list.addFirst(v)` / `addLast(v)` | `AddFirstElementOperation` / `AddLastElementOperation` |
| `list.addAll(seq)` / `removeAll(seq)` | `AddAllElementsOperation` / `RemoveAllElementsOperation` |
| `list.remove(v)` (by value) | `RemoveElementOperation` |
| `list.removeFirst` / `removeLast` | `RemoveFirstElementOperation` / `RemoveLastElementOperation` |
| `list.clear` | `ClearAllElementsOperation` |
