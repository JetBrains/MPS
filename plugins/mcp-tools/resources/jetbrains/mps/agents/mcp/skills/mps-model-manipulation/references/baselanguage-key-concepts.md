# BaseLanguage Key Concepts (Context for Model Code)

The small set of BaseLanguage concepts that smodel/collections/closures code keeps reaching for.

| Concept | Full `conceptReference` | Notes |
|---|---|---|
| `DotExpression` | `c:f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228` | Universal `a.b` chained expression. See `references/dot-expression-basics.md`. |
| `ForeachStatement` (BaseLanguage) | `c:f3061a53-9226-4cc5-a443-f952ceaf5816/1144226303539` | Java-style `for (T v : iterable)` — uses `LocalVariableDeclaration` for the loop var. **Different** from the `collections.ForEachStatement` (see `references/foreach-statements.md` in the `mps-collections-and-closures` skill root after loading that companion skill from the same origin). |
| `BlockStatement` | `c:f3061a53-9226-4cc5-a443-f952ceaf5816/1082485599095` | Nested `{ ... }` block (body is a `StatementList`). |
| `NPEEqualsExpression` | `c:f3061a53-9226-4cc5-a443-f952ceaf5816/1225271283259` | `:eq:` null-safe equality. See `references/node-equality.md`. |
| `NPENotEqualsExpression` | `c:f3061a53-9226-4cc5-a443-f952ceaf5816/1225271221393` | `:ne:` null-safe inequality. |
| `BreakStatement` | `c:f3061a53-9226-4cc5-a443-f952ceaf5816/1081855346303` | `break;` |
| `UndefinedType` | `c:f3061a53-9226-4cc5-a443-f952ceaf5816/4836112446988635817` | Placeholder type used wherever a `Type` slot is structurally required but the actual type should be inferred. Canonical use: the `type` child of `InferredClosureParameterDeclaration` (see `references/closures-catalog.md` in the `mps-collections-and-closures` skill root after loading that companion skill from the same origin). |
