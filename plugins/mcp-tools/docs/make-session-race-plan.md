# Make-session races: fix plan

Follow-up to commit 8f8770c4 (performMake waits for SESSION_CLOSED). A review of the code
paths where a "make finished" signal is taken to mean the follow-up state has settled found
four more defects. Findings 1 and 2 were confirmed by reading both sides of the race. For
findings 3 and 4 the ordering is confirmed, but the harm is inferred.

## Findings, as verified

| # | Defect | Where | Fix belongs in |
|---|--------|-------|----------------|
| F1 | A cancelled `performMake` returns while the make keeps running with its session open | `AbstractOps.kt` cancel branch (`makeMonitor.cancel(); future.cancel(true); throw e`); `WorkbenchMakeService._doMake` ignores `monitor`; `WorkbenchMakeTask.cancel` only sets a flag that `reconcile()` reads; `CoreMakeTask` checks only the platform indicator (`CoreMakeTask.java:96`) | MPS model, plus a caller-side stopgap |
| F2 | `reconcile()` counts the latch down before `done()`, which closes the session and fires SESSION_CLOSED / SCRIPT_FINISHED. Every caller other than `AbstractOps` can still see the session open after `get()` | `WorkbenchMakeTask.reconcile()`; callers `MakeNodePointers_BeforeTask`, `DeployScript.make()`, `ConsoleUtil.make()`, `GeneratorUtil` | MPS model |
| F2b | "Make before Run" returns `true` when `openNewSession` is refused, so the run uses stale classes | `MakeNodePointers` BeforeTask | MPS model |
| F3 | `MigrationTrigger` checks the make block, then reaches the wizard after a pooled-thread hop and an `invokeLater` without checking again; the `invokeLater` body re-checks suppression only | `MigrationTrigger.scheduleMigration` | MPS model |
| F4 | `run_migrations` APPLY checks `isSessionActive` while planning, then waits in `requireResponsiveEdt()` before `runEngine`; `performMake` never checks for a running APPLY | `JetBrainsMPSMigrationMcpToolset.apply`, `HeadlessMigrations.blockers`, `AbstractOps.performMake` | mcp-tools |
| F5a | Force close runs under `invokeLater(any())`, so it is write-unsafe; `cancelAndTryJoin` → `inModalContext` records its sentinel modality as write-unsafe for one event flush (same mechanism as known example 2, but short-lived) | `JetBrainsMPSProjectMcpToolset.closeIdeaProjectOnEdt` / `closeIdeaProjectNow` | mcp-tools |
| F5b | A non-force close that times out keeps running: `abandoned` only drops the result, and the close finishes once the user answers its Save/confirm dialog, while the MODAL_BLOCKED text says "retry" | `JetBrainsMPSProjectMcpToolset.closeProject` timeout branch, `closeIdeaProjectOnEdt` | mcp-tools |

MPS roots, confirmed through MPS MCP:
- `WorkbenchMakeTask`, `r:abe0ad99-3ef3-4277-a170-d1efd7986b86(jetbrains.mps.ide.make)/173672751428922083`
- `WorkbenchMakeService`, same model `/173672751428923285` (module `jetbrains.mps.ide.platform`)
- `MigrationTrigger`, `r:a9597bdf-0806-4a79-8ace-88240c6b9878(jetbrains.mps.migration.component/jetbrains.mps.ide.migration)/6781485246382122239`
- `MakeNodePointers`, `r:a1b1112d-dd34-4046-a6a3-811fd290d232(jetbrains.mps.execution.configurations.pluginSolution.plugin)/5487985028841950959`

Skip the `MPS.Platform` `java:` stub roots that the same name search returns.

## Phase 1: mcp-tools caller side (Kotlin only, no regeneration)

### 1.1 F1 stopgap: settle the session before a cancelled make rethrows
In the `CancellationException` branch of `performMake`, after `future.cancel(true)`, wait for
`sessionClosedLatch` inside `withContext(NonCancellable)`, bounded by
`SESSION_CLOSE_TIMEOUT_SECONDS`, before rethrowing. That way `withSaveTransientModels` restores
the setting only after the make stops reading it. With phase 2.2 in place, the wait ends almost
at once. Without it, the wait runs out after 10 s and the make carries on, but no worse than
today. On timeout, log a WARN. The tool result is not returned on cancel, so no message is
needed.

### 1.2 F4: make and APPLY exclude each other
- Move `applyRunning` out of `JetBrainsMPSMigrationMcpToolset` into a shared holder, such as
  `HeadlessMigrations`, so that `performMake` can refuse with "a run_migrations APPLY is
  running" next to its `isSessionActive` check.
- In `apply`, check `isSessionActive` again after `requireResponsiveEdt()` and
  `ensureActive()`, immediately before `runEngine`. If a make session is active, return the
  same blocker error.
- What remains: a UI-started make doesn't consult the flag, and a small window is left
  between the re-check and the first write. Note this in a KDoc and don't solve it here.
- Rejected: holding a sticky `MakeSession` open for the length of APPLY. Its SESSION_OPENED
  listeners suspend `ReloadManagerComponent`, and migrations depend on those reloads.

### 1.3 F5: close_project (details in the F5 section below)
- **F5a:** re-dispatch the force close under the modality read from the `any()` hop, so it
  runs write-safe.
- **F5b:** a timeout is no longer reported as "not closed". The close is already running on
  the EDT and cannot be withdrawn, so the MODAL_BLOCKED error must say so:
  - the close is still pending and completes once the user answers the dialog;
  - check `mps_mcp_list_open_projects` before retrying;
  - add `"closePending": true` to the error data, so an agent can branch on it without
    parsing the text.

  An abandoned close that later succeeds or fails is logged at INFO, so `idea.log` shows how
  it ended. Update the close-project section of the `mps-project-management` skill (blueprint
  first, then propagate it), so agents stop retrying a close that is still pending.
- **Tests:**
  - F5a: the `isWritingAllowed` assertion described below;
  - F5b: start a non-force close under a fake modal entered from a write-safe context,
    with a short timeout, and assert that the MODAL_BLOCKED data has `closePending`;
  - F5b: after the modal is left, assert the project was closed and the INFO line was logged.

  If the 20 s timeout has no test override, add one, as `withModalTimeoutOnEdt` has.

### 1.4 Tests (in `AbstractOpsMakeTest` and the migration toolset test)
- Cancel test: drop the `finally` loop that polls `isSessionActive` and that hides F1, then
  assert `!makeService.isSessionActive` straight after `cancelAndJoin()`. Before phase 2.2 this
  holds only if the make finishes within the bound, so the test documents the limit. After
  2.2 it holds deterministically.
- With the APPLY flag set, `performMake` returns the refusal. A two-call test of
  `run_migrations`: APPLY is refused while a session opened by the test is active.

## Phase 2: MPS model fixes (callee side)

Load the `mps-mcp-workflow` and `mps-baselanguage` skills first. Use opus subagents for any
delegated `mps_mcp_*` work.

### 2.1 F2: count the latch down after `done()`
Change `WorkbenchMakeTask.reconcile()` to:
```java
myState.set(DONE);
try {
  if (isCancelled || getResult() == null) myState.set(CANCELLED);
  try { done(); } finally { myLatch.countDown(); }
} ...
```
The latch must stay in a `finally`, because `done()` runs listeners (`notifyListeners` has no
try/catch), and any exception thrown there would otherwise hang every `get()`.

**Deadlock audit, required before the edit.** `done()` runs listeners synchronously on the
make thread. After the change, a `get()` caller on the EDT would wait until every listener
returns, so no listener may block on the EDT or on the model write lock. Check each one:
- `BaseLogicalViewProjectPane.rebuild()` implementations;
- `ReloadManagerComponent.resumeReloads()` → `myTaskQueue.resume()` (synchronous run?);
- `BreakpointsIconCache.updateIcons`;
- `TransientModelsNotification`, `ProjectTree`, `ProjectPaneTree` (these look like `*Later`, or
  only flip flags);
- `MigrationTrigger.sessionClosed` → `unblockMigrationsCheck` → `checkMigrationNeeded`;
- `AbstractOps` listeners (latch countdowns only).

Also list every `WorkbenchMakeTask.get()` caller and the thread it runs on.
`awaitCurrentProcess` is safe: `isDone()` is already true once `myState` is set to DONE,
before `done()` runs. If any listener does block, move that listener's work to `invokeLater`
rather than keeping the old order.

### 2.2 F1: make `cancel()` stop the make
In `_doMake`, keep the platform `ProgressIndicator` the task runs with, and have
`WorkbenchMakeTask.cancel()` call `indicator.cancel()` as well as setting the flag. A cancel
that arrives before the task starts (indicator not yet assigned) keeps relying on the flag,
which `doRun` checks: add an `isCancelled` check before `super.doRun`. Watch for re-entry:
`onCancel()` calls `makeTask.cancel(true)` again, and that call must do nothing.

Considered as an alternative: wrapping the caller's `monitor` so that `isCanceled()` ORs both
sources. It was rejected, because `ProgressMonitorAdapter.subTask` creates child monitors that
the wrapper would also need to cover.

### 2.3 F2b: "Make before Run" waits for the active make
Decided with the user: wait, don't fail. In `MakeNodePointers`, when `openNewSession` fails,
register a SESSION_CLOSED listener, wait for it with a bounded timeout, and retry
`openNewSession`. Register the listener before checking `isSessionActive` again, so a close
that lands in between isn't missed.
- The wait must be cancellable through the before-run progress indicator.
- It must never run on the EDT. Check which thread `BeforeTask.execute` runs on.
- If the wait times out or another make grabs the session first, return `false` and post
  "another make is still running" to the "Make before Run" list. Never skip the make silently
  again.

### 2.4 F3: re-check the make block where the migration acts
In `scheduleMigration`, at the start of the `invokeLater` body (next to the existing
suppression re-check) and again after the "Synchronizing Files…" modal, check
`myMigrationBlock.isMigrationForbidden()`. If it is set, re-arm (for example, leave the
postponed state so that the next `sessionClosed` → `checkMigrationNeeded` brings it back)
instead of dropping the migration. Make sure `scheduledBlockCause` is still unblocked on that
path.

### 2.5 Regenerate and validate
- `mps_mcp_check_root_node_problems` on the three changed roots.
- Make `jetbrains.mps.ide.platform`, `jetbrains.mps.migration.component` and
  `jetbrains.mps.execution.configurations.pluginSolution`. Commit the regenerated `source_gen`
  together with the models.
- Run IDEA `build_project`. Stale bytecode across the MPS/IDEA boundary breaks the MPS make, so
  build before running suites.

## Phase 3: clean-up once phase 2 has landed
- `performMake`'s SESSION_CLOSED wait becomes redundant, but it costs nothing: the latch is
  already counted down when `get()` returns. Keep it as a guard and update its comment, which
  currently describes the old ordering.
- Add a probabilistic regression test for F2 in `AbstractOpsMakeTest`: about 20 cycles of
  open session → `make` → `get()` → `assertFalse(isSessionActive)` straight away, without
  going through `performMake`.

## Validation gates
- After phase 1: `get_file_problems` on the changed Kotlin files, then `build_project`, then
  `McpToolsIntegrationTestSuite` with `MCP_TESTS=AbstractOpsMakeTest,<migration toolset test>`.
  `common/` changed, so the umbrella suite follows. Run one suite at a time, gated on no
  `[b]in/java.*JUnitStarter` process.
- After phase 2: the MPS checks above, the umbrella suite again, and a live check over MCP.
  Start a `make` with a short client timeout, then make again right away: the second make must
  not answer "Another make session is already active". Then read `mps_mcp_read_ide_log`
  (`minLevel=WARN`) for the run window.
- Probably no MPS testbench test can catch F2 or F3 deterministically, so say that explicitly
  in the commit message.

## Commits (per `.agents/git.md`)
1. `mcp-tools - settle the make session before a cancelled performMake rethrows` (1.1, 1.3a)
2. `mcp-tools - run_migrations APPLY and make exclude each other` (1.2, 1.3b)
3. `make - WorkbenchMakeTask releases get() after done() and cancel() stops the make` (2.1, 2.2)
2b. `mcp-tools - force close re-dispatches under the current modality to stay write-safe` (F5a, F5b)
4. `execution - Make before Run waits for an active make instead of skipping it` (2.3, MPS-40330)
5. `migration - MigrationTrigger re-checks the make block before running the wizard` (2.4)
6. `mcp-tools - F2 regression test, refresh the performMake session-wait comment` (phase 3)

## YouTrack
- F2: MPS-40329, "WorkbenchMakeTask releases Future.get() before done() closes the make session"
- F2b: MPS-40330, "'Make before Run' silently skips the make when another make session is open"
  (linked to MPS-40329 with "relates to")
- F3: MPS-40331, "MigrationTrigger checks the make block once, then opens the Migration
  Assistant without checking again" (no subsystem set)
- F1: MPS-40336, "WorkbenchMakeTask.cancel() does not stop the running make" (relates to
  MPS-40329)
- F4: MPS-40335, "mps_mcp_run_migrations APPLY and mps_mcp make can run at the same time"
- F5: MPS-40334, "mps_mcp_close_project: force close runs write-unsafe, and a timed-out close
  keeps running while the error says "retry""

The commits landed as: MPS-40334 (F5), MPS-40335 (F4), the `jetbrains.mps.ide.make` model for
MPS-40329 and MPS-40336 together (one model, so one commit), then the mcp-tools parts of
MPS-40329 (phase 3) and MPS-40336, MPS-40330, and MPS-40331.

## F5: force close runs in a write-unsafe context (reviewed after the plan)

Sources: `JetBrainsMPSProjectMcpToolset.closeIdeaProjectOnEdt` / `closeIdeaProjectNow`, read
against the bundled 261 platform sources in `lib/src/platform-sources.zip`. They match 263 on
these points.

**F5a: the sentinel modality is recorded as write-unsafe. Ordering CONFIRMED; consequence
PLAUSIBLE, low likelihood.**
1. `force=true` dispatches `invokeLater(..., ModalityState.any())`.
   `TransactionGuardImpl.wrapLaterInvocation` grants writing only for write-safe modalities, and
   `any()` is never one, so `myWritingAllowed` is false for the whole close.
2. `forceCloseProject` → `closeProject(save=false)` → `fireProjectClosing`. The registry key
   `ide.await.project.scope.completion` defaults to false, so `cancelAndTryJoin(project)` runs
   next → `inModalContext(sentinel)` → `LaterInvocator.enterModal` → `enteredModality(state)`
   records the sentinel modality with `myWritingAllowed = false`.
3. Every EDT event that `flushExistingEvents()` runs inside that modality runs write-unsafe.

This is the same mechanism as known example 2. The difference is that the modality is left
right after one flush instead of persisting, so the window is short. A write action that
another open project's DumbService transfers to the EDT during the flush would be rejected, as
in example 2. The closing project's own DumbService is cancelled anyway.

`fireProjectClosing` and project disposal also run write-unsafe. That includes
`StandaloneMPSProject.projectClosing` → `MPSProject.projectClosed()`. They stay silent only
because `ide.require.transaction.for.model.changes` is off by default.

**Fix (mcp-tools):** keep the `any()` hop only to reach the EDT under a modal dialog. In it,
read `ModalityState.current()` (the dialog's modality, recorded write-safe when the dialog was
opened from a write-safe context) and re-dispatch `closeIdeaProjectNow` with
`invokeLater(..., thatModality)`, so that `wrapLaterInvocation` grants writing. Keep the
`abandoned` checks in both hops.

Rejected: borrowing `EDTExecutor.guaranteeWriteSafetyViaHack`, which hard-codes a
platform-internal workaround in a second place.

**Test:** in the close-project integration test, register a `ProjectManagerListener` and assert
`TransactionGuard.getInstance().isWritingAllowed` inside `projectClosing` during a force close.
Enter any fake modal from a write-safe context: `invokeAndWait(..., nonModal())`, not `any()`.

**F5b: a timed-out non-force close keeps running. CONFIRMED, minor.** If the 20 s timeout
fires while `CloseProjectAction` is blocked in its own Save or confirmation dialog,
`abandoned` only stops the result from being reported. Once the user answers the dialog, the
close finishes anyway. The MODAL_BLOCKED text ("Ask the user to close it manually, then
retry") does not say this, so a retry can hit a project that is already gone.

**Fix:** add "the close is still pending and completes once the dialog is answered; check
`mps_mcp_list_open_projects` before retrying" to the message.

**Live check, 2026-10-25 16:53–16:54, MPS 261.25134, myMPS-fix as the only open project:**
- Setup: an application-modal "New Project" dialog was open. `get_current_editor_root_node`
  returned MODAL_BLOCKED after 30 s, which confirms the modal.
- `close_project(force=true)` returned `closed:true` in about 0.2 s.
- Log: "Project 'MPS' is closing", then project disposed, then frame released. The only WARNs
  were the usual ModulesWatcher ones; there was no ERROR, SEVERE or "Write-unsafe" line.
  "Write-unsafe" lines are silent by default anyway, so their absence proves nothing for F5a.
- During the close, `PluginLoaderRegistry`'s `invokeAndWait` ran under the dialog's modality
  and completed.
- Not covered: "New Project" is an application-level dialog, not one owned by the closing
  project.

- After the close, the "New Project" dialog was gone: it closed together with the project frame
  it was parented to.
- Reopened through `mps_control.sh open`, using a per-worktree `CAPTURE`: activation took 4 s.
  `get_current_editor_root_node`, which had returned MODAL_BLOCKED before the close, now
  answered at once ("No MPS editor is currently open"), so no modality was left on the
  `LaterInvocator` stack.
- The new project's DumbService entered and left dumb mode normally.
- From the close onward, the log has no ERROR or SEVERE line; the only WARNs are routine
  project-open noise.

**Conclusion:** for a dialog parented to the closing project's frame, force close disposes the
dialog and leaves no modality behind. Not tested: a dialog with another owner, such as a
project service's dialog parented to the Welcome frame or to no window; that case is not
expected in practice. F5a and F5b stand: the live run neither confirms nor rules out F5a,
because its symptom is silent by default. If it does, every later
`nonModal` dispatch would stall, and with it every later MCP call that needs the EDT. It needs
a live check: open a dialog, run `close_project(force=true)`, then call any EDT tool.

## Open questions
- Not reviewed yet: `EDTExecutor.java:204`, the smart-mode windows in the tests,
  `HighlighterUpdateSession`, `GenStatusUpdater`, `BuildMakeService`, `IdeaPlugin`
  `GenerateModelsInProcess`.
