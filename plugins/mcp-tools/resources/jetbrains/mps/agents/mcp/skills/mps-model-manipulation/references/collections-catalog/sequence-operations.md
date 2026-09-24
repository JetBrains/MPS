## Sequence operations (most common)

Operations come as `*Operation` concepts sitting in the `operation` role of a `DotExpression`. The predicate/mapping closure goes in the `closure` role.

| Syntax                                                                     | Operation concept | Lazy? | Returns |
|----------------------------------------------------------------------------|---|---|---|
| `seq.where{it=>P}`                                                         | `WhereOperation` | ✓ | `sequence<T>` |
| `seq.select{it=>E}`                                                        | `SelectOperation` | ✓ | `sequence<U>` |
| `seq.selectMany{it=>Es}`                                                   | `SelectManyOperation` | ✓ | `sequence<U>` |
| `seq.translate{it=>yield..}`                                               | `TranslateOperation` | ✓ | `sequence<U>` (yields) |
| `seq.ofType<C>`                                                            | `OfTypeOperation` | ✓ | `sequence<C>` |
| `seq.ofConcept<C>`                                                     | `OfConceptOperation` | ✓ | `sequence<C>` |
| `seq.take(n)` / `.skip(n)` / `.tail(n)` / `.cut(n)` / `.page(a,b)`         | `TakeOperation` etc. | ✓ | `sequence<T>` |
| `seq.distinct`                                                             | `DistinctOperation` | ✓ | `sequence<T>` |
| `seq.reverse`                                                              | `ReverseOperation` | — | `list<T>` (new list) |
| `seq.sortBy{..}, asc` / `.sort{a,b=>cmp}`                                  | `SortByOperation` / `SortOperation` | force | `sequence<T>` |
| `seq.concat(other)` / `.union` / `.intersect` / `.except` / `.disjunction` | matching `*Operation` | ✓ | `sequence<T>` |
| `seq.any{..}` / `.all{..}`                                                 | `AnyOperation` / `AllOperation` | force | `boolean` |
| `seq.contains(x)` / `.indexOf(x)`                                          | `ContainsOperation` / `IndexOfOperation` | force | `boolean` / `int` |
| `seq.findFirst{..}` / `.findLast{..}`                                      | `FindFirstOperation` / `FindLastOperation` | force | `T` (nullable) |
| `seq.first` / `.last`                                                      | `GetFirstOperation` / `GetLastOperation` | force | `T` (nullable) |
| `seq.size`                                                                 | `GetSizeOperation` | force | `int` |
| `seq.isEmpty`                                                              | `IsEmptyOperation` (collections) | force | `boolean` |
| `seq.isNotEmpty`                                                           | `IsNotEmptyOperation` (collections) | force | `boolean` |
| `seq.reduceLeft{..}` / `.foldLeft(z){..}`                                  | `ReduceLeftOperation` / `FoldLeftOperation` | force | `T` / `Z` |
| `seq.toList` / `.toArray`                                                  | `ToListOperation` / `ToArrayOperation` | force | materialized |
| `seq.join(",")`                                                            | `JoinOperation` | force | `string` |
| `seq.forEach{it=>..}` (dot-op form)                                        | `VisitAllOperation` (alias `forEach`) | force | — |

> The dot-op `seq.forEach{..}` (concept `VisitAllOperation`) is distinct from the statement-level `foreach v in seq { .. }` (concept `ForEachStatement`, see `foreach-statements.md`). They look similar in prose but have different AST shapes.

**Lazy vs eager rule of thumb**: filtering/mapping/`ofType`/`take`/`skip`/`distinct`/`concat` are lazy; everything that returns a scalar, `boolean`, `int`, materialized collection, or performs side effects forces iteration.

### `isEmpty` / `isNotEmpty` ambiguity

There are two unrelated concepts with the same name:

| FQN | ID | Applies to |
|---|---|---|
| `jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation` | `1165530316231` | `sequence<T>`, `list<T>`, `set<T>`, `map<K,V>` |
| `jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation` | `1176501494711` | same collections |
| `jetbrains.mps.baseLanguage.structure.IsEmptyOperation` | `1225271369338` | `string` |
| `jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation` | `1225271408483` | `string` |

Pick the correct one based on the receiver's type: `node.someRole.isEmpty` on a multi-cardinality containment uses the **collections** variant (because `.someRole` yields a sequence), while `node.name.isEmpty` on a `string` property uses the **baseLanguage** variant. Using the wrong FQN in a blueprint produces a constraint error even though the surface syntax is identical.
