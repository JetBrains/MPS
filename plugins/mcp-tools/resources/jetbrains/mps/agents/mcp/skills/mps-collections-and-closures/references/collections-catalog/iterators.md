## Iterator and modifying_iterator

Two distinct iterator types:

- `iterator<T>` — read-only cursor. Methods: `.hasNext`, `.next`. Produced by `GetIteratorOperation` (alias `iterator`) on any sequence/collection.
- `modifying_iterator<T>` — cursor that also supports `.remove` (delete the element most recently returned by `.next`). Produced by `.iterator` on a **mutable** collection (`list`, `set`, map views). Using `.remove` on a plain `iterator<T>` is a typesystem error.

Typical "remove-while-iterating" pattern:

```
var it = mySet.iterator;
while (it.hasNext) {
  var e = it.next;
  if (shouldDrop(e)) { it.remove; }
}
```

In AST terms: `.hasNext`, `.next`, `.remove` are `DotExpression` operations whose operand is the iterator variable. Search concept names when needed — they follow the same `*Operation` convention as the rest of this catalog.
