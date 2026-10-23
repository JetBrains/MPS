# Imports for Java-parsed console commands

Typed Java inserted with `mps_mcp_parse_java_and_insert` (`insert.mode: "console"`) resolves JDK classes, plus classes from the models the console model imports or its temporary module already depends on. Those come from the history: restoring or executing a command derives imports and module dependencies from its resolved references. Any other class stays unresolved; the response then lists `Unresolved reference` problems and carries a warning that points to `mps_mcp_model_dependency`. Import the model that declares the class, then insert again:

```
mps_mcp_model_dependency(modelReference: "console",
                         targetModels: ["742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)"])
```

## Naming the models

- **The console.** `modelReference: "console"` names the model of the Console's current editable tab, and `mps_mcp_model_dependency` and `mps_mcp_model_used_language` both accept it. A project model that is really named `console` then needs its persistent reference. The console model's own reference also works, but only in the full form the tools return (`<module-id>/r:<uuid>(TempModule…/ConsoleModel_…)`, module prefix included), and it changes on every plugin reload, so prefer the alias.
- **The target.** A bare stub name such as `jetbrains.mps.ide.project@java_stub` can exist in more than one module. The name then picks one of them, maybe not the one the Java resolver binds to. Prefer the persistent reference: it is the `targetReference` of a resolved reference to the class (`mps_mcp_print_node`, JSON), minus the part from `/~` on.

## What ADD and DELETE do

- **ADD** writes the model import and a module dependency of the console's temporary module on the target's module, which the command needs to compile and run. Nothing is saved; the response has `"console": true` and a lifetime warning.
- **DELETE** removes the import, but the console may add back an import it still references: the next execute or paste re-derives imports from the input and history, Clear from the input only. The response warns when the console still references the model. Module dependencies stay.
- `mps_mcp_model_used_language` DELETE refuses the built-in devkits (`jetbrains.mps.console.devkit` and the devkits extending it). They already provide most languages, so a language ADD is often a no-op reporting `providedByDevKit`.

## Lifetime

- **Console ▸ Clear** drops the imports and used languages, then re-adds the built-in devkits and whatever the current input references. It keeps the module dependencies, so code keeps resolving through them after Clear. `mps_mcp_clear_console` does the same, and deletes the user's history; pass `clearInput: true` for a clean check of what a command needs, since a kept input keeps its imports.
- **A plugin reload** (including `mps_mcp_reload_all`) creates a new console model and module, and restores the history **as it was loaded when the project opened**, not the current one: a Clear since then is undone, and the restored commands bring back their derived imports and dependencies. Closing the project saves the current history; on reopen, only imports and dependencies that history commands reference come back.
- **Ctrl+Z** in the Console does not revert an MCP import: import changes are not on the editor's undo stack.

## Pitfalls

- **Ambiguous short names.** With both `jetbrains.mps.smodel@java_stub` and `org.jetbrains.mps.openapi.model@java_stub` imported, a bare `SNode` matches a class in each and stays unresolved. Write `org.jetbrains.mps.openapi.model.SNode`.
- **Output.** A console command's trailing expression prints nothing for a parsed `STATEMENTS` block; to read a value from an agent, write it to a file in `/tmp` or `$TMPDIR`. `mps_mcp_run_console_command` returns before the command's make and run finish.
- **JSON blueprints need none of this.** Their references name explicit targets, and the console derives the imports from them.
