## Core concepts

| Concept | Full `conceptReference` | MPS notation |
|---|---|---|
| `SequenceType` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1151689724996` | `sequence<T>` type |
| `ListType` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1151688443754` | `list<T>` type |
| `SetType` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1226511727824` | `set<T>` type |
| `ListCreatorWithInit` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1160600644654` | `new arraylist<T>` / `new linkedlist<T>` |
| `HashSetCreator` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1226516258405` | `new hashset<T>` |
| `WhereOperation` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1202120902084` | `.where { predicate }` |
| `AnyOperation` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1235566554328` | `.any { predicate }` |
| `TranslateOperation` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1201792049884` | `.translate { it => yield ...; ... }` — flatMap-style; body is a closure that may `yield` multiple elements |
| `AddElementOperation` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1160612413312` | `.add(element)` |
| `SkipStatement` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1224446583770` | `continue;` inside a collections `foreach` or `.translate`/`.where`/etc. closure |
| `ForEachStatement` (collections) | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1153943597977` | `foreach v in sequence { ... }` — see `foreach-statements.md` |
| `ForEachVariable` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1153944193378` | Loop variable of the collections `ForEachStatement`. **Not** a `LocalVariableDeclaration`. |
| `ForEachVariableReference` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1153944233411` | Reference to a `ForEachVariable` inside the loop body. **Not** a `VariableReference`. |
| `DowncastExpression` | `c:83888646-71ce-4f1c-9c53-c54016f6ad4f/1228228912534` | `expr` — downcast a collection-typed value to a specific Java interface (`Map`, `List`, etc.) for calling methods not on the abstract type |

## Type hierarchy

```
sequence<T>    ← Iterable-like, lazy
  list<T>      ← ordered, indexed, mutable
  set<T>       ← unordered unique (hashset | linked_hashset)
  map<K,V>     ← key→value; also a sequence<MapEntry<K,V>>
    sorted_map<K,V>
```

- `map` is a sequence of entries — you can pass it anywhere `sequence` is expected.
- Sorted variants exist: `sortedset<T>`, `sorted_map<K,V>`.

## Null & emptiness semantics (non-obvious)

- Assigning `null` to a `sequence`/`list`/`set`/`map` typed variable yields an **empty** collection; subsequent operations do **not** NPE.
- Terminal accessors on empty sequences return **null** instead of throwing: `seq.first`, `seq.last`, `seq.findFirst{..}`, `seq.reduceLeft{..}` → `null` when empty.
- This affects null-check placement in generated Java — explicit `== null` checks after `first`/`last` are idiomatic, not defensive noise.
