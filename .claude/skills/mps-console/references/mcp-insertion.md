# Inserting console code with `mps_mcp_insert_console_command_from_json`

Use this when the user asks you to **put code into the MPS Console**. The tool builds a command from a JSON blueprint and drops it into the Console tool window's input editor **as an editable, unexecuted command** — the user reviews, edits, and runs it (Ctrl+Enter). After a successful insert the Console tool window is focused and the inserted node selected. Requires the MPS Console plugin to be enabled.

The blueprint uses the **same node format** as `mps_mcp_insert_root_node_from_json` — see `mps-node-editing`. The command's languages and model imports are added to the console model automatically. Inline JSON up to 4 KB, or an absolute path to a file in the system temp directory — `$TMPDIR` on macOS/Linux (on macOS a `/var/folders/...` path, so `/tmp` is rejected), `%TEMP%` on Windows; e.g. `f="$TMPDIR/command-$$.json"`.

## The two accepted shapes

1. **A single console `Command` node** — inserted as-is. This is a `BLExpression` (wrapping an expression), a `BLCommand` (wrapping a `StatementList`), or an `InterpretedCommand` (`#reloadClasses`, `#stat`, `#showGenPlan`, `#showBrokenRefs`, `?`).
2. **One or more BaseLanguage `Statement`s** — a single statement object, or a JSON array of statements. These are wrapped into one `BLCommand` (a `{ … }` block whose body is a `StatementList`) so multiple statements run as one command.

### The gotcha: expressions are not statements and not commands

The query commands (`#nodes`, `#instances`, …), the IDE commands `#make` / `#clean` / `#removeGenSources` / `#show` / `#callAction`, and the `#print*` printers are baseLanguage **`Expression`s**. They are neither `Command`s nor `Statement`s, so passing one as the top-level object fails. The tool tries to wrap a lone non-command object as a *Statement*, and an `Expression` is not a `Statement`:

```
Concept assignability error … Actual concept: 'Make' … Expected concept(s): 'Statement' … Role: 'statement'
```

**Fix:** wrap the expression in a `BLExpression` (`expression` role), or in an `ExpressionStatement` if you are sending a statement array.

## Validated working blueprints

All of the following pass `dryRun` and insert cleanly against a live MPS.

**A query expression — `#models` (all editable project models):**
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.lang.smodel.query.structure.ModelsExpression"}]}]}
```

**`#instances(ClassConcept)`** — note `RefConcept_Reference` with the `conceptDeclaration` reference targeting the concept by qualified name:
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.lang.smodel.query.structure.InstancesExpression",
    "children":[{"role":"conceptArg","nodes":[
      {"concept":"jetbrains.mps.lang.smodel.structure.RefConcept_Reference",
       "references":[{"role":"conceptDeclaration",
                     "target":"jetbrains.mps.baseLanguage.structure.ClassConcept"}]}]}]}]}]}
```

**A literal value — `BLExpression` + `StringLiteral`** (prints the string):
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.baseLanguage.structure.StringLiteral",
    "properties":[{"name":"value","value":"hello from MCP"}]}]}]}
```

**An interpreted command — `#reloadClasses`** (a `Command`, so it goes in bare):
```json
{"concept":"jetbrains.mps.console.internalCommands.structure.ReloadClassesCommand"}
```

**A statement array → wrapped into one `{ … }` `BLCommand`.** Here a single expression statement holding `#modules`:
```json
[{"concept":"jetbrains.mps.baseLanguage.structure.ExpressionStatement",
  "children":[{"role":"expression","nodes":[
    {"concept":"jetbrains.mps.lang.smodel.query.structure.ModulesExpression"}]}]}]
```

**`#make` wrapped in `BLExpression`** (recall `#make` is an expression — bare fails):
```json
{"concept":"jetbrains.mps.console.base.structure.BLExpression",
 "children":[{"role":"expression","nodes":[
   {"concept":"jetbrains.mps.console.ideCommands.structure.Make"}]}]}
```

## Concept FQNs you need for blueprints

| Surface | Concept FQN |
|---|---|
| `{` block command | `jetbrains.mps.console.base.structure.BLCommand` (child `body: StatementList`) |
| expression command | `jetbrains.mps.console.base.structure.BLExpression` (child `expression: Expression`) |
| `#print` / `#printNode` / `#printNodeRef` / `#printSequence` / `#printText` | `jetbrains.mps.console.base.structure.PrintExpression` / `PrintNodeExpression` / `PrintNodeReferenceExpression` / `PrintSequenceExpression` / `PrintTextExpression` (child `object: Expression`) |
| `#nodes` / `#references` / `#models` / `#modules` | `jetbrains.mps.lang.smodel.query.structure.NodesExpression` / `ReferencesExpression` / `ModelsExpression` / `ModulesExpression` |
| `#instances` | `jetbrains.mps.lang.smodel.query.structure.InstancesExpression` (child `conceptArg: IRefConceptArg`) |
| concept argument | `jetbrains.mps.lang.smodel.structure.RefConcept_Reference` (ref `conceptDeclaration` → the concept) |
| `#usages` | `jetbrains.mps.lang.smodel.query.structure.UsagesExpression` (child `node: Expression`) |
| scope param wrapper | `jetbrains.mps.lang.smodel.query.structure.QueryParameterList` (child `parameter`) → `QueryParameterScope` (child `value`) / `QueryParameterExact` |
| scopes | `…console.base.structure.ProjectScope` / `ProjectEditableScope`; `…ideCommands.structure.GlobalScope` / `VisibleModulesScope`; `…smodel.query.structure.ModelsScope` / `ModulesScope` / `CustomScope` |
| `#make` / `#clean` / `#removeGenSources` / `#show` | `…console.ideCommands.structure.Make` / `Clean` / `RemoveGenSources` / `ShowExpression` |
| `#stat` / `#showGenPlan` / `#showBrokenRefs` | `…console.ideCommands.structure.StatCommand` / `ShowGenPlan` / `ShowBrokenReferences` |
| `#reloadClasses` | `…console.internalCommands.structure.ReloadClassesCommand` |
| `forEach` (apply closure to each node) | `jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation` (child `closure: Expression`) — use this for headless mutation |
| `refactor` | `…console.scripts.structure.RefactorOperation` (child `closure: Expression`) — ⚠️ pops a modal confirm dialog; stalls `mps_mcp_run_console_command`, see `console-languages.md`. Prefer `forEach` for unattended edits |

## Workflow

1. **Validate first with `dryRun: true`.** It checks the JSON, console availability, and command-concept assignability without inserting anything. Returns `{"dryRun":true,"message":"Dry run successful…"}`.
2. **Insert for real** (omit `dryRun`). Success returns the inserted command's node-info envelope (its node lives in a temporary `ConsoleModel_*` model). The Console window is focused with the node selected.
3. **Tell the user it is not executed** — they run it with Ctrl+Enter. Offer to insert a different command if they want to iterate.
4. **Pass `projectPath`** whenever you know it, to avoid ambiguous-project errors. If the console plugin is disabled, ask the user to enable it.

Building the smodel/collections expressions that go *inside* these blueprints (e.g. the `.where(…).forEach(…)` / `.refactor(…)` chain, closure literals) is the job of `mps-model-manipulation` and `mps-node-editing`.
