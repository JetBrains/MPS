## Sorted collections

Types `sortedset<T>` / `sorted_map<K,V>` add range operations on top of their unordered cousins. Creators: `TreeSetCreator` and `TreeMapCreator` (both wrapped in `GenericNewExpression`). A `sortedset` iterates in natural/comparator order; likewise `sorted_map.keys` is ordered.

Range operations (all sit in the `operation` role of a `DotExpression`; all share the same arity as their `java.util.SortedSet` / `SortedMap` analogues):

| Syntax | Concept | Returns |
|---|---|---|
| `sortedset.headSet(hi)` | `HeadSetOperation` | `sortedset<T>` (elements `< hi`) |
| `sortedset.tailSet(lo)` | `TailSetOperation` | `sortedset<T>` (elements `≥ lo`) |
| `sortedset.subSet(lo, hi)` | `SubSetOperation` | `sortedset<T>` (range `[lo, hi)`) |
| `sorted_map.headMap(hi)` | `HeadMapOperation` | `sorted_map<K,V>` |
| `sorted_map.tailMap(lo)` | `TailMapOperation` | `sorted_map<K,V>` |
| `sorted_map.subMap(lo, hi)` | `SubMapOperation` | `sorted_map<K,V>` |

The returned collections are **live views** over the original — writes through them propagate. Use `.toList` or a fresh creator if you need an independent snapshot.
