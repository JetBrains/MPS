# MPS MCP Live Verification Scenario — console model imports

**Goal:** confirm against a running MPS that `mps_mcp_model_dependency` and
`mps_mcp_model_used_language` accept the MPS Console model (`modelReference: "console"`), so typed
Java inserted with `mps_mcp_parse_java_and_insert` (`insert.mode: "console"`) resolves MPS classes.
The plan is `docs/console-model-imports-plan.md`.

The integration tests cannot reach the live console lookup: the headless fixture never creates a
Console tool window. They drive the alias and admission rules with a temporary model standing in
for the console model, and run the import logic on it. The expected outcomes below were confirmed
in a live run on 2026-10-23 (MPS 2026.1, build 261.25134), except V9, skipped with one project open. If a response's shape differs but the
checked values match, record PASS with a "shape" note and quote the difference.

| # | What it proves |
|---|----------------|
| V0 | a class outside the console's reach stays unresolved and the hint says what to do |
| V1 | the alias resolves and writes the import plus the module dependency |
| V2 | the typed Java resolves after V1 |
| V3 | the command compiles and runs with the new module dependency |
| V4 | DELETE warns when the history still references the model |
| V5 | the built-in devkit guard |
| V6 | MCP imports are not undoable |
| V7 | Clear drops the import but not the module dependency |
| V8 | plugin reload recreates the console model and restores the history loaded at project open |
| V9 | refusal of another project's model |
| V10 | no `WARN`/`ERROR`/`SEVERE` traces from the tools in `idea.log` |

---

## 0. Rules for the agent running this scenario (READ FIRST)

1. **All calls are MPS MCP tools** (`mps_mcp_*`), with whatever session prefix you have. If none are
   available, or they fail with ECONNREFUSED, stop and ask the human to start MPS with the MCP
   server enabled.
2. **Always pass `projectPath`** = the checkout MPS has open (e.g. `/Users/vaclav/work/MPS/myMPS-reviews`).
3. **Precondition:** MPS runs a build that includes this change. If V1 fails with "resolves to a
   module that is not part of the project", report "MPS runs a build without the change" first.
4. **Never read or edit `.mps` files.**
5. Steps marked **HUMAN** need a UI action; ask the human to do it and wait for confirmation.
6. Note the wall-clock time before V0; V10 reads the log from then on.
7. **Record PASS / FAIL for every step** with a one-line note, then print the Final Report (§2).

### Identifiers

```
probe stub model      742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)
                      (persistent reference: the bare name jetbrains.mps.ide.project@java_stub also
                       names a second, different stub model)
console devkit        jetbrains.mps.console.devkit
probe output file     /tmp/console-imports-probe.txt
```

The typed probe (featureKind `STATEMENTS`) uses a class from MPS.Platform, which the console's
history usually does not reach. Do not probe with `SNode`/`SNodePointer`: the restored history of
most consoles already imports their models, so they resolve without any import. The probe writes
its result to a file because a parsed command's trailing expression prints nothing:

```java
jetbrains.mps.ide.project.ProjectHelper helper = null;
java.nio.file.Files.write(new java.io.File("/tmp/console-imports-probe.txt").toPath(), jetbrains.mps.ide.project.ProjectHelper.class.getName().getBytes());
```

---

## 1. Steps

**V0 — baseline.** Delete `/tmp/console-imports-probe.txt` if it exists. Call
`mps_mcp_get_console_history` and record the model part of any entry's `reference` (the text
before the last `/`, module prefix included) as `OLD_CONSOLE_MODEL`; if the history is empty,
insert the probe first and take it from `inserted[0].reference`. Then run
`mps_mcp_parse_java_and_insert` with the probe and `insert: {"mode": "console"}`.
Expect `ok:true`, two `Unresolved reference: jetbrains.mps.ide.project.ProjectHelper` problems, and
a warning that starts "Some Java names did not resolve". If the names resolve already, an earlier
run left the import or dependency behind: record SKIP for V0 and go on.

**V1 — import through the alias.**
`mps_mcp_model_dependency(modelReference: "console", targetModels: "<probe stub model>")`.
Expect `ok:true`, `data.added: 1`, `data.console: true`, and one warning that starts "Console model
imports and used languages last until Console > Clear".

**V2 — typed Java resolves.** Insert the probe again as in V0.
Expect `problems: []` and no "Some Java names did not resolve" warning.

**V3 — run.** `mps_mcp_run_console_command`.
Expect `ok:true`. The tool returns before the command's make and run finish: wait for
`/tmp/console-imports-probe.txt` (poll up to about 60 seconds), then check that it contains
`jetbrains.mps.ide.project.ProjectHelper`. A make failure naming the console module fails this
step: quote it.

**V4 — re-derivation warning.** The executed probe is now in the history.
`mps_mcp_model_dependency(modelReference: "console", targetModels: "<probe stub model>", operation: "DELETE")`.
Expect `removed: true` and a second warning that starts "The console still references this model".
Then V1 again: `added: 1`.

**V5 — built-in devkit guard.**
`mps_mcp_model_used_language(modelReference: "console", usedLanguage: "jetbrains.mps.console.devkit", kind: "devkit", operation: "DELETE")`.
Expect `ok:false`, `code: INVALID_REQUEST`, error naming "built-in MPS Console devkit".

**V6 — no undo.** HUMAN: click into the Console input and press Ctrl+Z (Cmd+Z) a few times, and
nothing else (a Clear in between masks the result). Then V1 again: expect `added: 0,
alreadyPresent: 1`, so the undo did not revert the import.

**V7 — Clear.** HUMAN: delete any command from the Console input so it is empty, then Console ▸
Clear. (Clear re-derives imports from the input it keeps, so a non-empty input would mask the
result.) Then V4's DELETE: expect `removed: false`, because Clear dropped the import. Then insert
the probe (V0 call): expect `problems: []`, because the module dependency outlives Clear.

**V8 — plugin reload.** `mps_mcp_reload_all`. Then V4's DELETE with `modelReference:
OLD_CONSOLE_MODEL`: expect `ok:false` with NOT_FOUND. Then `mps_mcp_get_console_history`: expect
the history **as loaded when the project opened**, so the V7 Clear is undone (reload restores the
loaded state, not the current one). V1 with `modelReference: "console"` must succeed with
`console: true`.

**V9 — refusal.** If a second MPS project is open, call V1 with `modelReference` set to one of its
models' persistent references and expect "not part of the project selected by projectPath".
Otherwise record SKIP.

**V10 — log.** `mps_mcp_read_ide_log(minLevel: "WARN", sinceMinutes: <minutes since V0 + 1>)`.
Expect no stack trace from `jetbrains.mps.agents.mcp`. `Could not resolve reference` lines from the
V0 insert are known resolver noise on unresolved types; list them, but they do not fail the step.

---

## 2. Final Report

```
V0 baseline              PASS/FAIL/SKIP  <note>
V1 alias import          PASS/FAIL  <note>
V2 typed Java resolves   PASS/FAIL  <note>
V3 run                   PASS/FAIL  <note>
V4 re-derivation         PASS/FAIL  <note>
V5 devkit guard          PASS/FAIL  <note>
V6 no undo               PASS/FAIL  <note>
V7 Clear                 PASS/FAIL  <note>
V8 plugin reload         PASS/FAIL  <note>
V9 refusal               PASS/FAIL/SKIP  <note>
V10 log                  PASS/FAIL  <note>
```

## 3. Cleanup (human)

Console ▸ Clear, and delete `/tmp/console-imports-probe.txt`. Nothing outside the console changed.
