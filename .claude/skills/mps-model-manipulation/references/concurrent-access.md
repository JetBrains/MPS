# Concurrent Access: `command`, `write action`, `read action`, EDT Variants

Mutations on an MPS model must hold the repository **write lock**; arbitrary reads must hold the **read lock**. The wrappers live in `jetbrains.mps.lang.access`.

Language id: `l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access`.

## Concept catalog

All six statements extend `BaseExecuteCommandStatement` and share its shape: a mandatory `commandClosureLiteral` child (concept `CommandClosureLiteral`) holding the body, and a `repo` child (any `Expression` of type `SRepository`). Each reduces to one `SRepository.getModelAccess()` call:

| Concept | ID | MPS notation | Generates | Use for |
|---|---|---|---|---|
| `ExecuteCommandStatement` | `8974276187400348177` | `command with repo { … }` | `repo.getModelAccess().executeCommand(…)` | Synchronous write inside a command: undoable, notifies command listeners |
| `ExecuteWriteActionStatement` | `8974276187400348183` | `write action with repo { … }` | `repo.getModelAccess().runWriteAction(…)` | Synchronous write lock without a command: no undo entry |
| `ExecuteLightweightCommandStatement` | `8974276187400348181` | `read action with repo { … }` | `repo.getModelAccess().runReadAction(…)` | Synchronous read (read lock); cannot mutate |
| `ExecuteTransparentCommandStatement` | `5332677359380589431` | `undo-transparent command with repo { … }` | `repo.getModelAccess().executeUndoTransparentCommand(…)` | Command whose changes merge into the surrounding undo step (use sparingly) |
| `ExecuteCommandInEDTStatement` | `8974276187400348174` | `execute command in EDT with repo { … }` | `repo.getModelAccess().executeCommandInEDT(…)` | Schedules a command on the EDT; returns immediately |
| `ExecuteEDTCommandStatement` | `8974276187400348179` | `execute in EDT with repo { … }` | `repo.getModelAccess().runReadInEDT(…)` | Schedules a **read** on the EDT; returns immediately; cannot mutate |

`command`, `write action`, `read action` and `undo-transparent command` extend `BaseExecuteCommandStatementSync` (they run synchronously); the two EDT statements extend `BaseExecuteCommandStatement` directly.

> `CommandClosureLiteral` (from the same language) is the concept that wraps the body `{ … }`. It is a `ClosureLiteral` subconcept whose `body` is a `StatementList`; a `return` inside it is an error ("return statement not allowed here").

## Blueprint

All six concepts share the same shape:

```json
{
  "concept": "jetbrains.mps.lang.access.structure.ExecuteCommandStatement",
  "children": [
    {
      "role": "commandClosureLiteral",
      "nodes": [{
        "concept": "jetbrains.mps.lang.access.structure.CommandClosureLiteral",
        "children": [
          { "role": "body", "nodes": [{ "concept": "jetbrains.mps.baseLanguage.structure.StatementList" }] }
        ]
      }]
    },
    {
      "role": "repo",
      "nodes": [{ "...": "<SRepository expression, e.g. a variable or project.getRepository()>" }]
    }
  ]
}
```

Swap the outer concept for `ExecuteWriteActionStatement`, `ExecuteLightweightCommandStatement`, `ExecuteTransparentCommandStatement`, `ExecuteCommandInEDTStatement`, or `ExecuteEDTCommandStatement` depending on locking semantics.

## Rules

- **Always fill `repo`.** The structure allows `0..1`, but a checking rule reports "Repository must be specified" when it is empty. Without it, `command`/`write action`/`read action`/`execute in EDT` fall back to the deprecated `ModelAccess.instance()`, and `undo-transparent command`/`execute command in EDT` have no fallback at all.
- Use `command { … }` for user-visible edits to project models (undoable, editor-aware). Use `write action { … }` for writes that must not create an undo entry or run outside the command machinery. Use `undo-transparent command { … }` only when the change must merge into the user's previous undo step.
- Reads from non-UI code should use `read action { … }`. It is cheaper than `command` and cannot mutate.
- `execute in EDT { … }` takes only the read lock — it cannot mutate. To mutate from the EDT asynchronously, use `execute command in EDT { … }`.
- Never hold a write lock while waiting for the EDT — hand the work off with `execute command in EDT { … }` instead.
- Behavior methods called from a rule body already run under the right lock — do not wrap them in another `command` or `read action`.
