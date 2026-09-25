# Intention Blocks and Implicit Parameters

`IntentionDeclaration` (and its `Parameterized` / `SurroundWith` variants) is composed of named function-blocks. This page enumerates each block, its concept FQN, and the implicit parameters available inside it.

## Root concept fields

`IntentionDeclaration` key fields (FQN: `jetbrains.mps.lang.intentions.structure.IntentionDeclaration`, concept ref `c:d7a92d38-f7db-40d0-8431-763b0c3c9f20/1192794744107`):

- `forConcept` (ref, cardinality 1) — the concept the intention applies to.
- `isAvailableInChildNodes` (bool property) — when true, also enabled at descendants of the `forConcept` node.
- `isErrorIntention` (bool property) — shown as a red/error-style fix.
- `descriptionFunction` (child, role `descriptionFunction`, cardinality 1) — `DescriptionBlock` returning the menu label (String). Receives `node` and `editorContext`.
- `isApplicableFunction` (child, role `isApplicableFunction`, 0..1) — `IsApplicableBlock` returning boolean.
- `executeFunction` (child, role `executeFunction`, cardinality 1) — `ExecuteBlock` with the transformation. Receives `node`, `editorContext`.
- `childFilterFunction` (child, 0..1) — `ChildFilterFunction` used with `isAvailableInChildNodes`.

## Flavour selector

| Concept FQN | Use when |
|---|---|
| `jetbrains.mps.lang.intentions.structure.IntentionDeclaration` | Plain action. |
| `jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration` (`c:d7a92d38-f7db-40d0-8431-763b0c3c9f20/1240395258925`) | User picks a parameter first (e.g. from a scope). |
| `jetbrains.mps.lang.intentions.structure.SurroundWithIntentionDeclaration` (`c:d7a92d38-f7db-40d0-8431-763b0c3c9f20/2522969319638198293`) | Intention wraps a selected range of sibling nodes. |

All three extend `BaseIntentionDeclaration`.

## Description block (`DescriptionBlock`)

- FQN: `jetbrains.mps.lang.intentions.structure.DescriptionBlock`.
- Must return a short, user-visible label. Can include derived info:
  ```
  return "Preview " + node.title;
  ```
- Avoid heavy computation — it runs whenever Alt+Enter is opened.

## IsApplicable block (`IsApplicableBlock`)

- FQN: `jetbrains.mps.lang.intentions.structure.IsApplicableBlock`.
- Optional; returns boolean. False hides the intention.
- For `ParameterizedIntentionDeclaration` this runs **once per parameter value** produced by `queryFunction`. Use it both as a per-entry filter (e.g. `parameter > 0`) and as a node-level gate (`!node.cardinalityVisible`).

A useful idiom — make an additive intention self-disable after applying:

```
node.onEntry.operations.isEmpty;
```

This uses the **collections** `IsEmptyOperation` (`jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation`) on a containment role access. Distinct from the BaseLanguage (string) `IsEmptyOperation` — see `references/collections-catalog.md` in the `mps-model-manipulation` skill root after loading that companion skill from the same origin.

## Execute block (`ExecuteBlock`)

- FQN: `jetbrains.mps.lang.intentions.structure.ExecuteBlock`.
- Runs on the EDT inside a write action automatically.
- Body is a `StatementList`.
- See `references/execute-idioms.md` for the typical AST-editing patterns and the `select-in-editor` finalizer.

## ChildFilterFunction

- FQN: `jetbrains.mps.lang.intentions.structure.ChildFilterFunction`.
- Active only when `isAvailableInChildNodes = true`. Runs per descendant cursor position; returns `false` to hide the intention at that descendant.
- See `references/surround-and-child-filter.md` for the verbatim `AddOnEntry` body and JSON.

## Parameterized blocks

| Role | Concept FQN | Notes |
|---|---|---|
| `queryFunction` | `jetbrains.mps.lang.intentions.structure.QueryBlock` | Returns an `Iterable<paramType>`; one menu entry per value. Children: `paramType` (Type), `body` (StatementList). |
| `paramType` (child of `QueryBlock`) | Any Type | Declares the type of the picked value. |

`parameter` inside `descriptionFunction` / `isApplicableFunction` / `executeFunction` is an `IntentionParameter` node (FQN `jetbrains.mps.lang.intentions.structure.IntentionParameter`), no properties/references/children. See `references/parameterized-intentions.md`.

## Implicit parameter FQNs

| Alias | FQN | Visible in |
|---|---|---|
| `node` | `jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node` | All blocks; typed as `forConcept`. Inside `ChildFilterFunction`, this is the nearest enclosing `forConcept` ancestor. |
| `editorContext` | `jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext` | All blocks; needed for selection, cell lookup, dialogs. |
| `childNode` | `jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_childNode` | Only inside `ChildFilterFunction`; the descendant under the cursor. |
| `parameter` (`IntentionParameter`) | `jetbrains.mps.lang.intentions.structure.IntentionParameter` | Only inside parameterized blocks; resolves to the current queried value with type `paramType`. |
