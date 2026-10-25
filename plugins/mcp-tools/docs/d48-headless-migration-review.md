# Review of Commits `0f8cdfe56871555d4de50f8ec4f38746ee600ec7` & `04e70b0529df695a9ddaf7feda18d8a5d185acab` (`MPS-40278`)

This review covers the two commits implementing headless migration execution and Migration Assistant suppression:
1. `0f8cdfe56871555d4de50f8ec4f38746ee600ec7` — `migration-platform - MPS-40278 support headless migration execution and assistant auto-start suppression`
2. `04e70b0529df695a9ddaf7feda18d8a5d185acab` — `mcp-tools - MPS-40278 run migrations over MCP without the Migration Assistant dialog`

(Before a rebase these commits were `9a783b68375de3b04759f1706bccfca4b2173007` and `b39e9123da8a0f31ed60160a0c5a707ff1e56c59`; the reviewed files are identical in both pairs.)

### Where fixes belong

Every Java location below points into `source_gen`. Fixes to `MigrationTrigger`, `MigrationBlock`, `MigrationNotificationsSupport`, `MigrationTask` and `MigrationSetup` must be made in the MPS model `jetbrains.mps.ide.migration` (solution `jetbrains.mps.migration.component`) and regenerated, not in the generated Java. The Kotlin files under `plugins/mcp-tools/src` are hand-written and can be fixed directly.

### Origin of the findings

Each finding is tagged with its origin:
- **Introduced** — new code in these commits: the headless block (`runHeadlessMigration`), `postponeWithoutAssistant`, and the suppression lease (`MigrationAssistantGuard`).
- **Pre-existing** — code that predates these commits: the `synchronized` `scheduleMigration` with its modal dialog (D1), most of R1, R5, `MigrationTask.doRun` (side effect 3), and the `MigrationSetup` behaviour behind side effect 4. The new code paths make several of these older problems easier to hit.

---

## 1. Threading Scheme, Deadlocks, and Race Conditions

### 1.1 Threading & Lock Architecture Overview

| Execution Context | Where Used | Role in Migration Flow |
|---|---|---|
| **MCP Server Coroutine / Caller Thread** | `MigrationAssistantGuard.beforeMcpToolCall` / `afterMcpToolCall` (`MigrationAssistantGuard.kt:45-77`), `JetBrainsMPSMigrationMcpToolset.mps_mcp_run_migrations` (`JetBrainsMPSMigrationMcpToolset.kt:53-83`) | Entry/exit hooks for tool calls (`ToolCallListener.TOPIC`); orchestrates `CHECK` and `APPLY` and launches a periodic `500 ms` child coroutine (`JetBrainsMPSMigrationMcpToolset.kt:202-211`) to forward `latestStep` (`AtomicReference<String?>`) to `reportToolActivity`. |
| **`Dispatchers.Default`** | `AbstractOps.executeBackgroundRead` (`AbstractOps.kt:2787-2795`), `JetBrainsMPSMigrationMcpToolset.kt:66-73, 131-133` | Used for `CHECK` planning, `APPLY` initial planning, post-`APPLY` `remaining` recount, and post-`MAKE` `pendingMigrationCount` (`AbstractOps.kt:4237-4245`). |
| **`Dispatchers.IO`** | `JetBrainsMPSMigrationMcpToolset.runEngine` (`JetBrainsMPSMigrationMcpToolset.kt:217-230`) | Drives `MigrationTrigger.runHeadlessMigration` and `HeadlessMigrations.run` (which in turn runs `MigrationTask.run`). |
| **IDE Pooled Thread Pool** (`Application.executeOnPooledThread`) | `MigrationTrigger.projectOpened` (`MigrationTrigger.java:166`), `checkMigrationNeeded` (`MigrationTrigger.java:217`), `checkMigrationNeededOnLanguageReload` (`MigrationTrigger.java:224`), `postponeWithoutAssistant` (`MigrationTrigger.java:425`), `MigrationStep.scheduleTaskExecutionInEDT` (`MigrationStep.java:71`) | Background repository checks (`ModelReadRunnable`), background computation of `MigrationSetup` when auto-assistant is suppressed, and background driver for the interactive wizard's `MigrationTask`. |
| **Scheduled Executor** (`AppExecutorUtil.getAppScheduledExecutorService()`) | `MigrationAssistantSuppression.scheduleExpiration` (`MigrationAssistantGuard.kt:199-203`) | Runs the sliding inactivity lease timer (default `120s`, configurable via `mps.migration.assistant.leaseSeconds` / `leaseMs`). Calls `expireLeaseIfIdle(generation)` on timer expiry. |
| **AWT Event Dispatch Thread (EDT)** | `MigrationTrigger.scheduleMigration` (`invokeLater` with `ModalityState.nonModal()`, `MigrationTrigger.java:297`), `MigrationTrigger.syncRefresh` (`invokeAndWait`, `MigrationTrigger.java:537, 539`), `MigrationTask` (`invokeAndWait`, `MigrationTask.java:85, 220, 302, 322`), `HeadlessMigrations.run` (`invokeAndWait` with `ModalityState.nonModal()`, `HeadlessMigrations.kt:267`), `JetBrainsMPSMigrationMcpToolset.requireResponsiveEdt` (`Dispatchers.EDT + ModalityState.nonModal()`, `JetBrainsMPSMigrationMcpToolset.kt:241-252`) | Runs UI notifications/dialogs (`Messages.showMessageDialog`, `MigrationWizard.showAndGet()`), modal file sync (`ProgressManager.getInstance().run(new Task.Modal(...))`), VFS save/reload flush, and every write step of `MigrationTask`. |

#### Synchronization Primitives
- **`MigrationTrigger.this` intrinsic monitor**: `synchronized` on `scheduleMigration(final boolean force)` (`MigrationTrigger.java:280`).
- **`MigrationTrigger.myPostponeLock` (`Object`)**: Synchronizes `postponeWithoutAssistant()` (`MigrationTrigger.java:430-449`) against the two `myNotifications.expireRequired()` blocks in `runHeadlessMigration()` (`MigrationTrigger.java:395-397, 407-410`).
- **`MigrationTrigger.myHeadlessRunning` (`AtomicBoolean`)**: Per-project CAS guard preventing concurrent `runHeadlessMigration` executions (`MigrationTrigger.java:385`).
- **`MigrationTrigger.myMigrationRunning` (`volatile boolean`)**: Set to `true` during `runHeadlessMigration` and `runMigration`; read by `SilentModuleVersionUpdater` (`() -> myMigrationRunning`, line 134).
- **`MigrationTrigger.myAssistantSuppressors` (`Set<Disposable>` backed by `ConcurrentHashMap.newKeySet()`)**: Tracks active suppression tokens registered via `suppressAutoAssistant(Disposable)`.
- **`MigrationTrigger.myPostponedState` (`AtomicReference<PostponedState>`)** & **`myAssistantPostponedState` (`volatile AtomicReference<PostponedState>`)**: Track postponed migration state for human-cancelled wizard runs vs. assistant-suppressed runs.
- **`MigrationAssistantSuppression.lock`**: Guards `activeCallsCount`, `currentLeaseToken`, `suppressedTrigger`, `scheduledExpiration`, and `expirationGeneration` (`MigrationAssistantGuard.kt:112`).
- **`JetBrainsMPSMigrationMcpToolset.applyRunning` (`AtomicBoolean`)**: Process-wide guard ensuring at most one `mps_mcp_run_migrations(APPLY)` runs at a time (`JetBrainsMPSMigrationMcpToolset.kt:43`).

---

### 1.2 Deadlock Hazards

#### [MEDIUM] D1: Monitor/Read-Lock Deadlock Between `synchronized (MigrationTrigger.this)` and a Modal `showCantStart` Dialog
- **Origin**: Pre-existing. The `synchronized` `scheduleMigration` and the modal `showCantStart` predate these commits. The commits add new block causes (`"migration is running headlessly"`, `postponeWithoutAssistant`), which widen the window in which `scheduleMigration(true)` takes the `showCantStart` branch.
- **Location**:
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:217, 224, 271, 280-284`
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationNotificationsSupport.java:62-64`
- **Problem**:
  `scheduleMigration(final boolean force)` is `synchronized` on `MigrationTrigger.this`. When `force == true` and `myMigrationBlock.isMigrationForbiddenWithout(NOT_DEPLOYED)` is `true` (during a headless run, a `postponeWithoutAssistant` scan, or a make session), `scheduleMigration(true)` calls `myNotifications.showCantStart(...)` -> `Messages.showMessageDialog(...)` on the EDT **while holding the `MigrationTrigger.this` monitor**.
  Meanwhile, background checks in `checkMigrationNeeded()` (line 217) and `checkMigrationNeededOnLanguageReload()` (line 224) run inside `ModelReadRunnable` (holding the **IDEA Read Lock + MPS Model Read Lock**) and call `scheduleIfNewMigrations` -> `scheduleMigration(false)` (line 271), which blocks trying to enter `synchronized (MigrationTrigger.this)`.
  - **Pooled Thread Lock Order**: `IDEA Read Lock / MPS Model Read Lock` -> `MigrationTrigger.this`
  - **EDT Lock Order (inside the modal dialog's nested event loop)**: `MigrationTrigger.this` -> any event dispatched in that loop that needs the `IDEA Write Lock` / `MPS Model Write Lock`.
  Once the pooled thread blocks on `MigrationTrigger.this` while holding the read lock, a write action dispatched inside the dialog's event loop waits forever for the read lock.
- **Conditions**: The deadlock needs a write action to run *inside* the dialog's event loop. Headless `MigrationTask` steps use `invokeAndWait(..., ModalityState.nonModal())`, so they are not dispatched in the modal loop; they stall until the user closes the dialog rather than deadlock. The comment at `MigrationTrigger.java:392-393` already acknowledges this stall.
- **Fix**: Show the dialog via `invokeLater` after leaving the monitor, so no UI runs while `MigrationTrigger.this` is held.

#### [LOW] D2: Holding `myPostponeLock` Across `ModelAccess.computeReadAction` and `MigrationSetup` Construction
- **Status (2026-10-22)**: fixed with the deadline change, the scan now runs before the lock; see `d48-deadline-suppression-plan.md`.
- **Origin**: Introduced.
- **Location**:
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:395-397, 407-410, 430-449`
- **Problem**:
  In `postponeWithoutAssistant()` (lines 430-449), the pooled thread acquires `synchronized (myPostponeLock)` and, while holding it, executes `myMpsProject.getModelAccess().computeReadAction(() -> new MigrationSetup(myMpsProject))` (line 434) and `myNotifications.showRequired(setup)` (line 447).
  - Nothing takes `myPostponeLock` while holding a model lock, so there is no reverse lock order and no deadlock risk. The cost is latency.
  - If an EDT write action or model save is running, `computeReadAction` waits for the model lock while holding `myPostponeLock`.
  - If `runHeadlessMigration` starts on `Dispatchers.IO`, it waits at line 395 for `myPostponeLock` until every queued `postponeWithoutAssistant()` has acquired the model read lock and scanned the project.
- **Fix**: Line 436 already re-validates `if (myHeadlessRunning.get() || !(isAutoAssistantSuppressed()) || myAssistantPostponedState != assistantState) return;` under the lock, and that check is enough. `computeReadAction` and `PostponedState.current(setup)` can move before `synchronized (myPostponeLock)`.

#### [NOTE] D3: Calling `Disposer.register` / `Disposer.dispose` Inside `synchronized(lock)` (style only)
- **Status (2026-10-22)**: resolved by design, the lease token and `Disposer` are gone; see `d48-deadline-suppression-plan.md`.
- **Origin**: Introduced.
- **Location**:
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/migration/MigrationAssistantGuard.kt:135-142, 176, 185-186, 219, 258-274`
- **Observation**:
  `ensureTokenActive` and `expireLeaseIfIdle` call `Disposer.dispose` / `Disposer.register` while holding `MigrationAssistantSuppression.lock`, and `MigrationAssistantSuppression.dispose()` (entered from `Disposer` on project disposal) also takes `synchronized(lock)`. This is not a hazard: as far as known, `Disposer` runs dispose callbacks outside its internal tree lock, and when `dispose()` runs during project disposal the child `LeaseToken` is already disposed, so nothing nests. Detaching `currentLeaseToken` under `lock` and disposing it outside `lock` is an optional style improvement.

---

### 1.3 Race Conditions & Synchronization Bugs

#### [LOW–MEDIUM] R1: Unsynchronized Access to `MigrationNotificationsSupport.myLastNotification` and `myLastDeployWarning`
- **Origin**: Mostly pre-existing (unsynchronized fields, EDT and pooled-thread callers). The commits add callers on `Dispatchers.IO` (`runHeadlessMigration`) and on pooled threads (`postponeWithoutAssistant`).
- **Location**:
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationNotificationsSupport.java:50-51, 66-144`
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:215, 258, 323, 333, 342, 345, 396, 409, 447`
- **Problem**:
  `myLastNotification` and `myLastDeployWarning` in `MigrationNotificationsSupport` are non-`volatile` fields with no internal synchronization. While `runHeadlessMigration` (lines 395, 407 on `Dispatchers.IO`) and `postponeWithoutAssistant` (line 430 on a pooled thread) synchronize on `myPostponeLock`, **no other caller of `myNotifications` acquires `myPostponeLock`**:
  - `scheduleMigration` on the EDT calls `showRequired` (lines 323, 333, 345) and `showNotRequired` (line 342) without `myPostponeLock`.
  - `checkMigrationNeeded` (called from pooled threads, EDT, and `Dispatchers.IO` via `unblockMigrationsCheck`) calls `showProjectVersionError` (line 215) without `myPostponeLock`.
  - `checkMigrationForbidden` calls `showDeployWarn` (line 258, mutating `myLastDeployWarning`) from multiple threads without any lock.
  This is a thread-safety hygiene problem (visibility, possible duplicate balloons).
- **Reachability of the NPE**: An NPE needs `expireRequired()` on `Dispatchers.IO` (`myLastNotification = null`, `MigrationNotificationsSupport.java:111`) to run between `myLastNotification = getNotifyGroup().createNotification(...)` (line 98) and `myLastNotification.addAction(...)` / `myLastNotification.notify(...)` (lines 99-104) of an EDT `showRequired`. During `APPLY` the MCP call keeps suppression active, so a non-forced `scheduleMigration` diverts at line 300, and the forced path is blocked at line 281. The NPE is therefore only reachable through the R2 race.

#### [MEDIUM] R2: Lack of Mutual Exclusion Between `runHeadlessMigration` and Interactive `scheduleMigration` / `runMigration`
- **Origin**: Introduced (`runHeadlessMigration` is new; it does not coordinate with the existing interactive path).
- **Location**:
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:280-358, 384-419, 498-519`
- **Problem**:
  1. `scheduleMigration(false)` (line 280) does not check `myMigrationBlock` or `myHeadlessRunning`. This is by design: its callers check `checkMigrationForbidden()` first.
  2. Inside `scheduleMigration`'s `invokeLater` lambda on the EDT (lines 297-357), there is no check for `myHeadlessRunning.get()` or `myMigrationRunning`. If a human clicks `"Migrate"` on the notification balloon (`scheduleMigration(true)`) shortly before `runHeadlessMigration` blocks checks, the queued `invokeLater` has `force == true` (so line 300 `if (!force && isAutoAssistantSuppressed())` is skipped) and opens `Task.Modal("Synchronizing Files...")` and `MigrationWizard` **while `runHeadlessMigration` is mutating the project on `Dispatchers.IO`**. When that wizard closes, `runMigration`'s `finally` block (line 517) sets `myMigrationRunning = false` while `runHeadlessMigration` is still running.
  3. Conversely, `runHeadlessMigration` (line 384) and `HeadlessMigrations.blockers` (`HeadlessMigrations.kt:146`) never check whether `myMigrationRunning` is already `true` or whether `myMigrationBlock` is already blocked by `"migration is already scheduled"`.
- **Window**: Mostly closed in practice. A click before `requireResponsiveEdt()` queues its `invokeLater` ahead of the EDT probe; the wizard then blocks the probe and `APPLY` returns `MODAL_BLOCKED`. What remains is a click between the end of the probe and `blockMigrationsCheck` (line 389).
- **Fix** (cheap): Check `myHeadlessRunning` inside the `invokeLater` lambda, and check `myMigrationRunning` in `runHeadlessMigration`.

#### [MEDIUM–LOW] R3: Lost Migration Check When the Suppression Lease Expires While `postponeWithoutAssistant` Is Queued or Running
- **Status (2026-10-22)**: resolved by design, there is no expiry event and a decided postpone always posts its balloon; see `d48-deadline-suppression-plan.md`.
- **Origin**: Introduced.
- **Location**:
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:286-289, 365-375, 421-454`
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationBlock.java` (`checkMigrationIfNecessary`)
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/migration/MigrationAssistantGuard.kt:206-225`
- **Problem**:
  When `scheduleMigration(false)` sees `isAutoAssistantSuppressed() == true`, it delegates to `postponeWithoutAssistant()` and returns. `postponeWithoutAssistant()` runs asynchronously on a pooled thread and checks:
  ```java
  if (myHeadlessRunning.get() || !(isAutoAssistantSuppressed()) || myAssistantPostponedState != assistantState) {
    return;
  }
  ```
  If the inactivity lease expires while `postponeWithoutAssistant()` is queued or inside `computeReadAction` (line 434), `isAutoAssistantSuppressed()` becomes `false` and `myAssistantPostponedState` is replaced (line 371). `postponeWithoutAssistant()` then returns early at line 431 or 436 without posting the `"Migration required"` balloon.
  Whether the check is lost depends on `myShouldCheckAfterUnblock`, which every `checkMigrationForbidden()` sets:
  - After a **direct** check (project open, language reload, properties reload, version updater), the flag is still set, so `unblockMigrationsCheck(cause)` in the `finally` block (line 451) re-checks and the state recovers.
  - The check is lost only when the original check came from **`checkMigrationIfNecessary()`** (make session closed, end of a headless run), which resets the flag right after starting its asynchronous scan.
  It also needs the lease to expire inside a window of milliseconds to seconds. The pending migration is announced again at the next check event.

#### [LOW] R4: `MigrationTrigger.cleanup()` Runs `runWriteAction` Off the EDT in `runHeadlessMigration` (open question)
- **Origin**: Introduced.
- **Location**:
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:403, 521-532`
  - `workbench/mps-platform/source/jetbrains/mps/smodel/WorkbenchModelAccess.java:108-121`
- **Observation**:
  In `scheduleMigration` (lines 334, 337), `cleanup()` is called on the EDT. In `runHeadlessMigration` (line 403), `cleanup()` is called directly on `Dispatchers.IO`.
  Off the EDT, `WorkbenchModelAccess.runWriteAction` takes the IDEA platform read lock plus the MPS model write lock. That is MPS's supported background-write mode, not a lock violation. Two questions remain to be checked:
  - the inconsistency with the interactive path and with the other write steps of `MigrationTask` / `HeadlessMigrations.run`, which run on the EDT via `invokeAndWait`;
  - whether listeners of `model.unload()` (for example, open editors) assume they are called on the EDT.

#### [MEDIUM] R5: `MigrationBlock` Unsynchronized Set Iteration and `myShouldCheckAfterUnblock` Race
- **Origin**: Pre-existing. `MigrationBlock` is not modified in these commits, but it is now exercised concurrently across `Dispatchers.IO` (`runHeadlessMigration`), pooled threads (`postponeWithoutAssistant`), the EDT (`scheduleMigration`), and make listeners.
- **Location**:
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationBlock.java:16-17, 45-72`
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:415-416`
- **Problem**:
  - `isMigrationForbiddenWithout` (`SetSequence.fromSet(myBlocks).subtract(...)`) and `getMigrationForbiddenMessage` (`SetSequence.fromSet(myBlocks).last()`) lazily iterate over a `Collections.synchronizedSet` without holding its lock, risking `ConcurrentModificationException`.
  - In `checkMigrationIfNecessary()`, `myMigrationTrigger.checkMigrationNeeded()` runs *before* `myShouldCheckAfterUnblock = false`; a concurrent block + check on another thread setting `myShouldCheckAfterUnblock = true` gets overwritten with `false`.

#### [LOW] R6: Asymmetric `activeCallsCount` in `MigrationAssistantSuppression` and Leak Risk in `suppressAutoAssistant`
- **Status (2026-10-22)**: resolved by design, no counter and no token remain; see `d48-deadline-suppression-plan.md`.
- **Origin**: Introduced.
- **Location**:
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/migration/MigrationAssistantGuard.kt:130-156`
  - `plugins/mps-migration/migration-platform/solutions/component/source_gen/jetbrains/mps/ide/migration/MigrationTrigger.java:365-375`
- **Problem**:
  1. In `MigrationAssistantSuppression.onToolCallStarted()` (lines 131-133):
     ```kotlin
     if (!project.isOpen || project.isDisposed) return
     val mpsProject = ProjectHelper.fromIdeaProject(project) ?: return
     val trigger = triggerOverride ?: (IStartupMigrationExecutor.getInstance(mpsProject) as? MigrationTrigger) ?: return
     ```
     If `onToolCallStarted()` returns early before incrementing `activeCallsCount`, `afterMcpToolCall` still unconditionally calls `onToolCallFinished()` (line 70), which decrements `activeCallsCount` if `activeCallsCount > 0` (line 149). That can decrement the counter of another in-flight call and arm the lease while that call is still running.
     The window is narrow: the early returns are mostly startup states (project not open yet, no trigger yet). The impact is that the lease starts its countdown too early and could expire during an `APPLY` that lasts longer than the lease.
  2. In `MigrationTrigger.suppressAutoAssistant(owner)` (lines 365-375):
     `myAssistantSuppressors.add(owner)` is called *before* `Disposer.register(owner, ...)`. If `owner` were already disposed, `Disposer.register` would throw `IncorrectOperationException` without running the disposal callback, leaving `owner` in `myAssistantSuppressors` permanently. This is theoretical: the owner is always a fresh `LeaseToken`.
- **Fix**: See R8 — tracking in-flight `callId`s instead of a counter fixes part 1.

#### [LOW–MEDIUM] R7: TOCTOU Window and Dispatcher Choice in `JetBrainsMPSMigrationMcpToolset.apply`
- **Origin**: Introduced.
- **Location**:
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/JetBrainsMPSMigrationMcpToolset.kt:66-73, 107-139`
- **Problem**:
  1. **Make session after `plan`**: `HeadlessMigrations.plan(mpsProject, scope)` (which checks `makeService.isSessionActive`) runs at lines 66-73, *before* `applyRunning.compareAndSet(false, true)` (line 107), `requireResponsiveEdt()` (line 117), and `runHeadlessMigration`. If a make session opens after `plan`, neither `runHeadlessMigration` nor `HeadlessMigrations.run` re-checks `makeService.isSessionActive`, so the migration can run concurrently with an active make session.
  2. **Early `applyRunning.set(false)` before the `remaining` recount**: `applyRunning.set(false)` is released in `finally` at line 123, *before* the post-run `remaining` recount (lines 131-133). A second `APPLY` can start in between; this only affects how accurate the reported `remaining` is.
  3. **Recount on `Dispatchers.Default`**: At lines 131-133, the `remaining` recount runs `mpsProject.modelAccess.computeReadAction { HeadlessMigrations.plan(mpsProject, scope) }` on `Dispatchers.Default` right after `cleanup()` unloaded all project models, so it blocks a CPU-bound coroutine thread while models are reloaded from disk. `Dispatchers.IO` fits better. (The missing timeout is deliberate, see the comment at `JetBrainsMPSMigrationMcpToolset.kt:126-128`.)

#### [TO VERIFY] R8: Is `afterMcpToolCall` Guaranteed for Every `beforeMcpToolCall`?
- **Status (2026-10-22)**: moot, nothing is paired any more (the platform does fire it on success and in each catch branch of `McpSessionHandler`); see `d48-deadline-suppression-plan.md`.
- **Origin**: Introduced.
- **Location**:
  - `plugins/mcp-tools/src/jetbrains/mps/agents/mcp/tools/migration/MigrationAssistantGuard.kt:45-77, 130-156`
- **Problem**:
  Suppression is released only when `activeCallsCount` returns to `0` in `onToolCallFinished()`. If the platform skips `afterMcpToolCall` for some calls (for example cancelled calls, or calls that fail before or outside the tool body), the counter never returns to `0`. Suppression would then stay on for the rest of the session, and the Migration Assistant would never open by itself for a human user. The `ToolCallListener` contract could not be confirmed from this repository.
- **Fix**: Track a set of in-flight `McpCallInfo.callId`s instead of a counter (as `McpCallLogListener` already does with `startedNanos`). That makes `onToolCallFinished()` idempotent and fixes R6 part 1. It fixes a skipped `afterMcpToolCall` only together with an upper bound on how long a call may keep suppression on.

---

### 1.4 Summary Table of Concurrency Findings

Sorted by severity.

| ID | Severity | Origin | Component / File | Lines | Summary |
|---|---|---|---|---|---|
| **R2** | **MEDIUM** | Introduced | `MigrationTrigger.java` | `280-358, 384-419, 498-519` | The queued `invokeLater` of a forced `scheduleMigration(true)` does not check `myHeadlessRunning`, and `runHeadlessMigration` does not check `myMigrationRunning`; a click between the EDT probe and `blockMigrationsCheck` can open the wizard during a headless run. |
| **D1** | **MEDIUM** | Pre-existing (window widened) | `MigrationTrigger.java` / `MigrationNotificationsSupport.java` | `217, 224, 280-284` / `62-64` | `scheduleMigration(true)` opens a modal `Messages.showMessageDialog` while holding `synchronized (MigrationTrigger.this)`; deadlocks with a `ModelReadRunnable` thread only if a write action runs inside the dialog's event loop, otherwise headless steps stall. |
| **R5** | **MEDIUM** | Pre-existing | `MigrationBlock.java` / `MigrationTrigger.java` | `16-17, 45-72` / `415-416` | Lazy `subtract()` / `last()` iterate the synchronized set `myBlocks` without holding its lock (`ConcurrentModificationException`), and `myShouldCheckAfterUnblock = false` can overwrite a concurrent `true`. |
| **R3** | **MEDIUM–LOW** | Introduced | `MigrationTrigger.java` / `MigrationAssistantGuard.kt` | `286-289, 365-375, 421-454` / `206-225` | If the lease expires while `postponeWithoutAssistant()` is queued or scanning, it returns without a balloon; the check is lost only when it originated from `checkMigrationIfNecessary()`, otherwise the unblock re-checks. |
| **R7** | **LOW–MEDIUM** | Introduced | `JetBrainsMPSMigrationMcpToolset.kt` / `HeadlessMigrations.kt` | `66-73, 107-139, 217-230` / `146-157, 245` | A make session opening after `plan` is not re-checked; `applyRunning` is released before the `remaining` recount; the recount runs on `Dispatchers.Default` instead of `Dispatchers.IO`. |
| **R1** | **LOW–MEDIUM** | Mostly pre-existing | `MigrationNotificationsSupport.java` / `MigrationTrigger.java` | `50-51, 66-144` / `215, 258, 323-345, 396, 409, 447` | `myLastNotification` and `myLastDeployWarning` are non-`volatile` and touched from several threads with only partial locking; the NPE is only reachable through the R2 race. |
| **R8** | **TO VERIFY** | Introduced | `MigrationAssistantGuard.kt` | `45-77, 130-156` | If `afterMcpToolCall` can be skipped, `activeCallsCount` never returns to `0` and suppression stays on for the rest of the session. |
| **D2** | **LOW** | Introduced | `MigrationTrigger.java` | `395-397, 407-410, 430-449` | `postponeWithoutAssistant()` holds `myPostponeLock` across the `MigrationSetup` scan; no reverse lock order exists, so this is latency for `runHeadlessMigration`, not a deadlock. |
| **R4** | **LOW** (open question) | Introduced | `MigrationTrigger.java` / `WorkbenchModelAccess.java` | `403, 521-532` / `108-121` | `cleanup()` runs `runWriteAction` on `Dispatchers.IO` (supported background-write mode); to check: inconsistency with the EDT path and whether `model.unload()` listeners assume the EDT. |
| **R6** | **LOW** | Introduced | `MigrationAssistantGuard.kt` / `MigrationTrigger.java` | `130-156` / `365-375` | An early return in `onToolCallStarted()` paired with an unconditional decrement can arm the lease early for a concurrent call; the `myAssistantSuppressors` leak is theoretical. |
| **D3** | **NOTE** | Introduced | `MigrationAssistantGuard.kt` | `135-142, 176, 185-186, 219, 258-274` | `Disposer` calls inside `synchronized(lock)`; no actual nesting hazard, style only. |

---

## 2. Possible Unwanted Side-Effects

1. **`runHeadlessMigration` Wipes Human `myPostponedState` Even on Scoped or Failed Runs (`MigrationTrigger.java:405`)** — *Introduced*
   - In the interactive `scheduleMigration` path (`MigrationTrigger.java:332`), when a migration finishes with `FINISHED_WITH_ERRORS`, `myPostponedState.set(newState)` is recorded, so the failed migration is treated as postponed and does not endlessly re-open the modal wizard.
   - In `runHeadlessMigration` (`MigrationTrigger.java:405`), the `finally` block unconditionally sets `myPostponedState.set(null)` and triggers a re-check via `unblockMigrationsCheck(cause)` (line 416) — even when:
     - `APPLY` failed with `FINISHED_WITH_ERRORS`, or
     - `APPLY` was called with a `modules` filter (`scope != null`) that only migrated one module while other modules had migrations postponed by the human user.
   - Lease expiry itself does not trigger a check. But once the suppression lease has expired, the next check event (make session closed, language reload, properties reload) opens the modal Migration Wizard again for those unmigrated or failed migrations.

2. **`runHeadlessMigration` Unloads All Models in the Entire Project Regardless of `modules` Scope or Early Failure (`MigrationTrigger.java:403`)** — *Introduced, LOW*
   - `cleanup()` in `runHeadlessMigration`'s `finally` block unloads every model of every module in `myMpsProject.getProjectModulesWithGenerators()`, even if `modules` (`scope`) only migrated a single module, or if `syncRefresh()` / stage 0 failed before any migration script ran.
   - This matches the wizard path, which also unloads everything (`cleanup()` at lines 334 and 337). The unload after a failed run is deliberate (comment at line 402), and force-save and version updates are project-wide anyway. The only cost is reloading the models.

3. **`MigrationTask.doRun` Unconditionally Runs `runForceSave` Even When `FORCE_SAVE` Is Not Required (`MigrationTask.java:95, 103` vs `HeadlessMigrations.kt:41-42`)** — *Pre-existing in `MigrationTask`, newly relied on*
   - The KDoc in `HeadlessMigrations.kt:41-42` states:
     > "The session's step flags come from the setup, as in the wizard (the Ant path forces all three), so a project with nothing pending is neither force-saved nor version-updated."
   - However, in `MigrationTask.java:95-103`:
     ```java
     boolean save = mySession.requires(MigrationSession.MigrationStepKind.FORCE_SAVE);
     ...
     runForceSave(m.subTask((save ? 80 : 100)));
     ```
     `MigrationTask.doRun` never checks `if (save)` — it calls `runForceSave` on every project module whenever `MigrationTask.run` executes. The KDoc is only true because of the tool's `nothingToDo` guard.
   - `JetBrainsMPSMigrationMcpToolset.apply` guards against this via `if (plan.nothingToDo)` (line 101) before calling `runEngine`. But if `syncRefresh()` inside `runHeadlessMigration` resolves the pending state between `plan` and `HeadlessMigrations.run`, `HeadlessMigrations.run` still executes `MigrationTask.run` and force-saves every module in the project.
   - **Fix**: Return early in `HeadlessMigrations.run` when the setup recomputed at line 245 reports `!isRepositorySaveRequired`.

4. **Silent Skip of Version Updates When an Unrelated Module Outside `modules` (`scope`) Uses an Undeployed Language (`HeadlessMigrations.kt:166-190` vs `MigrationSetup.java:64-79`)** — *Pre-existing `MigrationSetup` behaviour, exposed by the new scope*
   - In `MigrationSetup.java:64-69`, `myBrokenDepsOfProjectModules` checks `mv.dependenciesPresent(module)` across **all** modules in `mpsProject.getProjectModulesWithGenerators()`, not just the `modules` passed to `MigrationSetup(mpsProject, modules)`. If *any* module in the project has a missing/undeployed dependency, `MigrationSetup` skips version updates (`modulesToUpdateVersions` is empty) for **all** modules.
   - However, `HeadlessMigrations.runtimeProblems(mpsProject, scope)` (`HeadlessMigrations.kt:169`) only checks `modulesOf(mpsProject, scope)`.
   - Thus, if a caller passes `modules = ["SolutionA"]` while an unrelated `LanguageB` elsewhere in the project is undeployed, `CHECK` reports `modulesToUpdateVersions: []` and `runtimeProblems: []`, hiding the reason why `SolutionA`'s version update was skipped.

5. **Full-Project `MigrationSetup` Scan Added to Language `MAKE` (`AbstractOps.kt:4219`)** — *Introduced*
   - After a successful `MAKE` that built a language target and with `runtimeReady == true`, `performMake` now runs `pendingMigrationCount(mpsProject)` -> `new MigrationSetup(mpsProject)` inside `executeBackgroundRead`, under `withModalTimeout`.
   - `new MigrationSetup(mpsProject)` walks all migrateable modules and all project module dependencies. On a large project (such as MPS itself), this adds a synchronous full-project scan to `MAKE` at the same moment `MigrationTrigger` is also firing asynchronous `MigrationSetup` scans from `afterLanguagesLoaded` and `sessionClosed`.

6. **Hard Plugin Dependency on `jetbrains.mps.ide.migration.workbench` (`plugins/mcp-tools/META-INF/plugin.xml:12`)** — *Introduced, LOW*
   - `<depends>jetbrains.mps.ide.migration.workbench</depends>` is declared as a mandatory dependency. In an MPS distribution where the migration workbench plugin is disabled or not bundled, the entire `jetbrains.mps.agents.mcp.tools` plugin fails to load.
   - `jetbrains.mps.ide.migration.workbench` is a bundled core plugin, so this is unlikely in practice. Making it optional would mean moving both the migration toolset and `MigrationAssistantGuard` into an optional config file, because both import `MigrationTrigger`.

---

## 3. Code Clarity

1. **Obscure Side-Effect Call `myMigrationBlock.isMigrationForbidden()` in `MigrationTrigger.runHeadlessMigration` (`MigrationTrigger.java:415`)**
   - At line 415:
     ```java
     // sets myShouldCheckAfterUnblock, so the unblock below re-checks once and re-announces what
     // the run left pending (a balloon while suppressed); no second, racing check
     myMigrationBlock.isMigrationForbidden();
     myMigrationBlock.unblockMigrationsCheck(cause);
     ```
     Calling a boolean query method `isMigrationForbidden()` and discarding its return value solely for its side effect of setting `myShouldCheckAfterUnblock = true` is non-obvious and brittle. Expose an explicit method on `MigrationBlock` instead, e.g. `requestCheckAfterUnblock()`. (Calling `checkMigrationNeeded()` directly after `unblockMigrationsCheck(cause)` is not an alternative: it would bring back the second, racing check the comment avoids.)

2. **Inconsistent Handling of `myNotifications.showRequired(setup)` Return Value (`MigrationTrigger.java:445-448`)**
   - In `scheduleMigration` (line 345), `myPostponedState` is updated only `if (myNotifications.showRequired(null))` returns `true` (it returns `false` when an `ERROR` notification is currently active).
   - In `postponeWithoutAssistant` (lines 445-448), `assistantState.set(newState)` is called unconditionally before `myNotifications.showRequired(setup)`, ignoring the boolean return value.
   - Effect: while an `ERROR` notification is showing, `showRequired` returns `false`, but the state is already recorded as announced, so the `"Migration required"` balloon never appears for that state.

3. **Shared `warnedOnce` Flag Across Unrelated Operations (`MigrationAssistantGuard.kt:41-42, 53-56, 72-75`)**
   - A single companion-level `warnedOnce` flag is shared between `beforeMcpToolCall` and `afterMcpToolCall`. An exception in `beforeMcpToolCall` suppresses logging of any subsequent failure in `afterMcpToolCall` (and across different projects).

4. **`StepMonitor` Partial Synchronization (`HeadlessMigrations.kt:326-357`)**
   - `StepMonitor.report()` is `@Synchronized`, but `setTitleInternal` and `setStepInternal` write to non-`@Volatile` fields `title` and `step` before entering `report()`. This is not a race in practice: the callbacks run on the IO thread and inside `invokeAndWait` on the EDT, which already orders them. Moving the assignments inside the synchronized block (or making the setters `@Synchronized`) would make that ordering explicit.

---

## 4. Redundancy

1. **Redundant `MigrationSetup` Computations (Several Full-Project Scans per Operation)**
   - **In `MigrationTrigger` (`MigrationTrigger.java:217, 264-274, 286-288, 434, 451`)**:
     `checkMigrationNeeded()` computes `new MigrationSetup(myMpsProject)` in `ModelReadRunnable` (line 217) and passes it to `scheduleIfNewMigrations(ms)` (line 264). `scheduleIfNewMigrations` checks `PostponedState.current(ms)` and calls `scheduleMigration(false)` (line 271), **discarding `ms`**. When `isAutoAssistantSuppressed()` is `true`, `scheduleMigration(false)` calls `postponeWithoutAssistant()`, which spawns *another* pooled thread to compute `new MigrationSetup(myMpsProject)` a second time (line 434).
     In addition, the unblock in `postponeWithoutAssistant()`'s `finally` block (line 451) usually re-checks as well, because `myShouldCheckAfterUnblock` is still set. That runs another scan, another postpone and another scan, so each check event costs about four `MigrationSetup` scans while suppression is on.
   - **In `mps_mcp_run_migrations(APPLY)` (`JetBrainsMPSMigrationMcpToolset.kt:72, 132`, `HeadlessMigrations.kt:245`, `MigrationTrigger.java:415-416`)**:
     A single `APPLY` call computes `MigrationSetup`:
     1. Before the run in `mps_mcp_run_migrations` (`HeadlessMigrations.plan`, line 72),
     2. At the start of `HeadlessMigrations.run` (`setup(mpsProject, scope)`, line 245),
     3. Inside `MigrationTrigger.runHeadlessMigration`'s `finally` block via `unblockMigrationsCheck` -> `checkMigrationNeeded()` (line 416, plus further scans in `postponeWithoutAssistant()` if anything remains pending, see above),
     4. After `runEngine` returns, in `JetBrainsMPSMigrationMcpToolset.apply` for the `remaining` recount (`HeadlessMigrations.plan`, line 132).
     Scans (3) and (4) run concurrently right after `cleanup()` has unloaded every model in the project.

2. **Redundant `modulesOf(mpsProject, scope)` Resolution in `HeadlessMigrations.plan` (`HeadlessMigrations.kt:113-138, 169`)**
   - `HeadlessMigrations.plan(mpsProject, scope)` calls `setup(mpsProject, scope)` (which resolves `modulesOf(mpsProject, scope)`) at line 118, and then calls `runtimeProblems(mpsProject, scope)` at line 137 (which resolves `modulesOf(mpsProject, scope)` a second time in the same read action). Passing the resolved `List<SModule>` into both avoids duplicate module resolution/iteration.

3. **Dead Production Method `MigrationAssistantSuppression.ensureSuppressed()` (`MigrationAssistantGuard.kt:161-164`)**
   - `MigrationAssistantSuppression` is a newly introduced `internal` class in commit `04e70b0529df`, yet it includes:
     ```kotlin
     /**
      * Backward-compatibility hook that ensures suppression is active and arms the sliding lease.
      */
     fun ensureSuppressed() {
         onToolCallStarted()
         onToolCallFinished()
     }
     ```
     There are no production callers of `ensureSuppressed()` anywhere in the repository — only `MigrationAssistantGuardTest` calls it. Mark it `@TestOnly` or move it into the test.

4. **Redundant `@Volatile` Annotations on Lock-Guarded Fields (`MigrationAssistantGuard.kt:114-121`)**
   - `activeCallsCount`, `currentLeaseToken`, and `suppressedTrigger` in `MigrationAssistantSuppression` are annotated with `@Volatile`, even though every read and write of all three fields occurs strictly inside `synchronized(lock)`.
