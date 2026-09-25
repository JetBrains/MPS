## Iteration: pick the right `foreach`

- **Collections `ForEachStatement`** (`foreach v in seq {..}`) — use for `sequence`/`list`/`set`/`map`. Contains `ForEachVariable` (role `variable`) and `ForEachVariableReference` inside the body.
- **BaseLanguage `ForeachStatement`** (Java-style enhanced for) — uses `LocalVariableDeclaration` (role `variable`). Works on Java `Iterable`/arrays. Do **not** use for `sequence<T>`.

If you see a typesystem error about iteration protocol, you almost certainly picked the wrong one. See `foreach-statements.md`.
