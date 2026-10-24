# Plan: replace the Migration Assistant suppression lease with a deadline (D48 follow-up, MPS-40278)

Status: implemented (2026-10-22), uncommitted. Revision 3 of the plan was settled after two opus review
rounds; sections 3.1 and 3.2 are in, `McpWorkspaceToolsTestSuite` + `McpContractAndSkillsTestSuite` pass
(494 tests, 0 failures), and the live S4 run in section 4 passed (see 4.5). The remaining live steps
(idle then wizard, balloon's *Migrate*, second project) are manual and listed there. Supersedes
section B1 and deviation 2 of `d48-headless-migration-plan.md`. Review findings it answers are
listed in section 6; the rest of `d48-headless-migration-review.md` is unaffected.

## 1. Problem

Commits `0f8cdfe56871` (migration-platform) and `04e70b0529df` (mcp-tools) stop `MigrationTrigger`
from opening the modal Migration Assistant wizard while an agent drives the IDE. The mechanism is a
per-project *lease*: `MigrationAssistantGuard` (a `ToolCallListener`) counts in-flight `mps_mcp_*`
calls in a project service, holds a `Disposable` token registered with `MigrationTrigger` while the
count is above zero, and after the last call schedules an expiry on the application scheduled
executor, guarded by a generation counter against cancelled callbacks. On the trigger side the token
set, a `Disposer` callback, and a generational swap of the balloon cache (`myAssistantPostponedState`)
mirror that lifecycle.

That lifecycle is where most of the introduced concurrency findings live (review R3, R6, R8, D3) and
it is more machinery than the requirement needs. The requirement is only: *while an agent is active,
a check that finds pending migrations posts the "Migration required" balloon instead of the wizard;
once the agent has been idle for a while, the wizard comes back.*

## 2. Design

### 2.1 A deadline, not a lease

Suppression is a single application-wide timestamp. Every `mps_mcp_*` call moves it to
`now + window`. A check compares the clock with it. Nothing runs when the window ends: the wizard is
"re-enabled" by the next check reading the clock.

On `MigrationTrigger` (model `jetbrains.mps.ide.migration`, solution `jetbrains.mps.migration.component`,
root node `6781485246382122239`), replacing `myAssistantSuppressors` and `suppressAutoAssistant(Disposable)`:

```java
private static final String AUTO_ASSISTANT_PROPERTY = "mps.migration.assistant.auto";   // unchanged
/** System.nanoTime() deadline. Starts already lapsed; nanoTime may be negative, so every
 *  comparison is a difference, never an absolute test. */
private static final AtomicLong ourAutoAssistantSuppressedUntil = new AtomicLong(System.nanoTime());

/** Until `millis` from now, a check that finds pending migrations posts the "Migration required"
 *  balloon instead of opening the wizard, in every open project. Explicit runs (force) are
 *  unaffected. Later calls only extend the deadline, never shorten it. */
public static void suppressAutoAssistantFor(long millis) {
  final long until = System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(millis);
  ourAutoAssistantSuppressedUntil.accumulateAndGet(until, (cur, next) -> next - cur > 0 ? next : cur);
}

public static boolean isAutoAssistantSuppressed() {
  return System.nanoTime() - ourAutoAssistantSuppressedUntil.get() < 0
      || "false".equalsIgnoreCase(System.getProperty(AUTO_ASSISTANT_PROPERTY));
}

/** Test hook: forget the deadline. */
public static void clearAutoAssistantSuppression() {
  ourAutoAssistantSuppressedUntil.set(System.nanoTime());
}
```

Notes on the shape:

- `System.nanoTime()` is monotonic, so a wall-clock jump cannot extend or cut the window. Its
  absolute value is meaningless and may be negative, so the initial value and the reset are "now"
  (already lapsed), the max is difference-based, and the suppression test is a difference.
- `AtomicLong.accumulateAndGet` makes two concurrent bumps exact; a plain volatile with
  read-max-write would be good enough but costs the same number of lines.
- The state is static because the condition it models, "an agent is driving this IDE", is not
  per project: `MigrationTrigger` is one instance per project, but the JVM property that already
  switches the assistant off is global, and the platform resolves `McpCallInfo.project` from the
  call's `projectPath` (verified in `McpSessionHandler`: a call whose project cannot be resolved
  never reaches the tool), so a per-project field would work but would need an `MPSProject` and
  trigger lookup in the listener for no gain. Cost of the static: a human working in a second
  project of the same IDE gets the balloon instead of the wizard for `window` after each agent call,
  and so does a project opened within the window (its project-open check runs through the same
  `scheduleMigration(false)`).
- `isAutoAssistantSuppressed()` becomes static. In the MPS model that is a new declaration node
  (instance method to static method), so the two remaining callers in `scheduleMigration` (current
  lines 286 and 300) must be rebound to it, and `check_root_node_problems` must show neither an
  unresolved reference nor a "never used" warning on the new method (memory
  `mps-parse-java-replace-mints-new-node-id`). The same applies to the new static field.
  `MigrationAccess` never builds a trigger in unit-test or headless mode, so the static is inert
  there.

### 2.2 The listener and the in-call heartbeat

`MigrationAssistantGuard` keeps its registration (`META-INF/plugin.xml`, `applicationListeners`,
topic `com.intellij.mcpserver.ToolCallListener`; all three interface methods have defaults) and
shrinks to a before-call bump plus a helper for the two long operations:

```kotlin
class MigrationAssistantGuard : ToolCallListener {
    companion object {
        const val WINDOW_SECONDS_PROPERTY = "mps.mcp.migrationAssistantWindowSeconds"
        const val DEFAULT_WINDOW_SECONDS = 120L

        /** Invalid or negative values fall back to the default. */
        fun windowMillis(): Long =
            (System.getProperty(WINDOW_SECONDS_PROPERTY)?.toLongOrNull()?.takeIf { it >= 0 } ?: DEFAULT_WINDOW_SECONDS) * 1000L

        fun bump() = MigrationTrigger.suppressAutoAssistantFor(windowMillis())

        /** Keeps the deadline ahead of the clock while [block] runs; the heartbeat ends with the
         *  caller's coroutine, so there is no shared state and nothing to release. */
        suspend fun <T> holdingSuppression(block: suspend () -> T): T = coroutineScope {
            // runCatching: a failing heartbeat must never cancel the scope and turn a finished
            // migration into an error answer
            val heartbeat = launch { while (isActive) { runCatching { bump() }; delay(maxOf(windowMillis() / 2, 250L)) } }
            try { block() } finally { heartbeat.cancel() }
        }
    }

    override fun beforeMcpToolCall(mcpToolDescriptor: McpToolDescriptor, additionalData: McpCallInfo) {
        if (mcpToolDescriptor.name.startsWith("mps_mcp_")) bump()
    }
}
```

- **Why bump on every call, not only on the rebuilding ones.** New pending migrations arise only
  from a redeploy or reload (the four `performMake` call sites and `reload_all`), but the wizard
  opens on any *check*, and `MigrationTrigger` checks on `moduleAdded` / `moduleChanged` of any
  migrateable project module, on make `sessionClosed`, on a properties reload and on project open.
  A migration that is pending and not yet applied is re-raised by any later module-touching tool
  (create_module, update_module, module_dependency, create_model, update_model, model_dependency).
  Bumping on every call keeps the window tied to agent activity, which is the condition we mean.
- **Why a heartbeat, and why not `afterMcpToolCall`.** The checks that a long call provokes fire
  *inside* the call: `sessionClosed` and `afterLanguagesLoaded` fire while `performMake` is still
  waiting on its reload latch and counting pending migrations, and the `finally` of
  `runHeadlessMigration` unblocks and re-checks while the tool is still doing its `remaining`
  recount. `afterMcpToolCall` runs only after the tool body returns (`McpSessionHandler`), so a
  bump there is too late for a `MAKE` or `APPLY` longer than the window; today's counter covers
  that case, and losing it would regress D48 on large projects. The heartbeat is per call, lives
  in the call's coroutine scope and needs no release. It wraps the three operations that provoke
  a check and can run long: `performMake` (make, reload wait, pending count),
  `mps_mcp_run_migrations APPLY` (engine run and recount) and `mps_mcp_reload_all` (its
  `executeShortCommandOnEdt` only bounds the wait to get onto the EDT; once `reloadAll` runs there
  it cannot be interrupted, and the trigger's reload check reads the deadline after it).
  `mps_mcp_run_console_command` runs arbitrary code and is left uncovered on purpose: a console
  command that rebuilds a language for minutes is not a path the skills describe, and the
  before-call bump still covers the usual short commands. `toolActivity` (the third listener method, fed by
  `reportToolActivity`) was considered as a free heartbeat and rejected: `runEngine` only reports
  when the step name changes, so a long single step would starve it.
- No `afterMcpToolCall` override at all. The platform does fire it on success and in each catch
  branch, so R8 is answered either way, but with the heartbeat it adds nothing. (If one is ever
  added back: the bundled jar has the 4-parameter signature and the platform source already has a
  5-parameter one with the result; see memory `mcp-tools-tests-break-on-platform-bump`.)
- No try/catch, no `warnedOnce`: the bump is a static field write in a plugin we hard-depend on
  (`<depends>jetbrains.mps.ide.migration.workbench</depends>`).
- `MigrationAssistantSuppression` (the project service, the lease token, the scheduled expiry,
  `triggerOverride`, `ensureSuppressed`) is deleted. The properties
  `mps.migration.assistant.leaseSeconds` / `leaseMs` are replaced by the one window property;
  they appear only in the guard, its test and the historical D48 docs.

### 2.3 Trigger-side simplifications that follow

All in `MigrationTrigger`, same model root:

1. `myAssistantPostponedState` becomes `private final AtomicReference<PostponedState>`. The three
   places that replaced the reference (the `Disposer` callback in `suppressAutoAssistant`, the
   `finally` of `runHeadlessMigration` at the current line 408, and the start of `runMigration` at
   line 499) become `.set(null)` or disappear with the callback. The swap existed only to give each
   lease an identity; a deadline has none. Consequence, accepted: the cache now spans the IDE
   session until an APPLY or a wizard run resets it, so a set that was announced once, stops being
   pending (say, after a revert) and becomes pending again is not re-announced; it is still
   migrated by APPLY and still listed by CHECK.
2. In `postponeWithoutAssistant`, the local `assistantState` capture and the two identity checks
   (`myAssistantPostponedState != assistantState`) go. The `!isAutoAssistantSuppressed()` re-checks
   go as well: once `scheduleMigration(false)` has decided to postpone, the scan posts the balloon
   even if the window lapsed meanwhile. A balloon is never wrong (it is what the wizard's own
   *Postpone* produces), and this is what removes review R3. The run guard becomes
   `if (myMigrationRunning || myHeadlessRunning.get()) return;`: `myMigrationRunning` is volatile
   and set by both the headless run (line 390) and the wizard run (line 500), so a scan that was
   queued before a human clicked *Migrate* neither posts a balloon behind the modal wizard nor
   fills the cache with the pre-wizard state (the identity checks used to cover that case through
   the swap at line 499). `myHeadlessRunning` stays in the condition for the R2 overlap, a forced
   wizard running alongside a headless run, where each run's `finally` (lines 411 and 517) clears
   `myMigrationRunning` while the other is still writing. Ordering against `myPostponeLock` is
   unchanged: the headless run sets the flag (390) before taking the lock (395), so a scan that
   read `false` has posted its balloon before `expireRequired()` at 396 removes it; the wizard
   path sets it without the lock (500), leaving the same microsecond race the identity check had.
3. Optional, since the method is being edited anyway (review D2): compute the `MigrationSetup`
   before taking `myPostponeLock`, and keep only the `myMigrationRunning` check, the cache update
   and `showRequired` under it. `myPostponeLock` itself stays; it orders the balloon against the
   `expireRequired()` calls of `runHeadlessMigration` and has nothing to do with the lease.

Not in scope, recorded for a follow-up: the redundant `MigrationSetup` scans per check event
(review 4.1), which could be removed by posting the balloon from the setup that
`scheduleIfNewMigrations` already holds; and the pre-existing findings D1, R1, R2, R4, R5, R7.

### 2.4 Behaviour after the change

| situation | today (lease) | after (deadline) |
|---|---|---|
| check while an `mps_mcp_*` call runs | balloon | balloon (before-call bump; heartbeat for `MAKE`, `APPLY`, `reload_all`; `run_console_command` running arbitrary long code is uncovered) |
| check within `window` of the last call's *start* (after a heartbeat call: at least `window/2` past its end) | balloon | balloon |
| check later than that | wizard | wizard |
| `MAKE`, `APPLY` or `reload_all` longer than `window` | balloon throughout (counter) | balloon throughout (heartbeat) |
| after-call skipped by the platform | suppression stuck on for the session | no effect (nothing is paired) |
| second open project, human rebuilds a language within `window` of an agent call | wizard | balloon |
| a project (anyone's) opened within `window` of an agent call | wizard | balloon |
| agent uses only non-`mps_mcp_` tools of the same server (`apply_patch`, `create_new_file`, `execute_run_configuration`) for longer than `window`, then a descriptor change lands | wizard | wizard (unchanged; these tools are off the MPS path anyway) |
| IDE idle longer than `window`, then a spontaneous check (frame-activation VFS refresh of the agent's shell edits, `MigrationProperties` reload) | wizard, next call `MODAL_BLOCKED` | same (unchanged); `requireResponsiveEdt` and the skill text name the way out |
| `-Dmps.migration.assistant.auto=false` | never a wizard | never a wizard |
| balloon's *Migrate*, *Run Migration Assistant* action | wizard (force path) | wizard (force path) |

The study's `mps_control.sh start` keeps passing `-Dmps.migration.assistant.auto=false`.
`MIGRATION_ASSISTANT_AUTO=true` lets the wizard open before the first `mps_mcp_*` call and again
once `window` has passed since the last one; the comment block in the script (lines 325-330, "which
suppresses it regardless") is rewritten to say that (section 3.3).

## 3. Changes, file by file

### 3.1 migration-platform (MPS model, regenerated Java is committed)

Edit through MPS MCP tools only (`mps-baselanguage`, `mps-model-manipulation`; opus subagent per
memory). The MPS MCP server must be running.

- `MigrationTrigger` (node `6781485246382122239`):
  - remove `myAssistantSuppressors` and `suppressAutoAssistant(Disposable)`; imports are
    generated, so `Disposable`, `Disposer` and `ConcurrentHashMap` drop out on regeneration
    (`Set` stays, it is used elsewhere in the class);
  - add `ourAutoAssistantSuppressedUntil`, `suppressAutoAssistantFor(long)`,
    `clearAutoAssistantSuppression()`; make `isAutoAssistantSuppressed()` static and rebind the
    two callers in `scheduleMigration` (2.1, last note);
  - `myAssistantPostponedState` final, `.set(null)` at the two reset sites;
  - `postponeWithoutAssistant` per 2.3 items 2 and 3.
- `MigrationNotificationsSupport` (node `2632090902167058889`): unchanged (`expireRequired()` stays).
- Then `mps_mcp_check_root_node_problems` on `MigrationTrigger` (no errors, no "never used" on
  the new static members), regenerate the model (`source_gen` diff is part of the commit,
  `generated` stamp and `trace.info` included), build `migration-platform` in IDEA (memory
  `mps-idea-compile-boundary-validation`: build the IDEA module before expecting mcp-tools to
  compile against the new static API).

### 3.2 mcp-tools (hand-written Kotlin)

- `src/.../migration/MigrationAssistantGuard.kt`: listener and helper per 2.2; delete
  `MigrationAssistantSuppression`.
- `src/.../common/AbstractOps.kt`, `performMake`: wrap the make, the reload-latch wait and the
  `pendingMigrationCount` in `MigrationAssistantGuard.holdingSuppression { }`.
- `src/.../JetBrainsMPSMigrationMcpToolset.kt`, `apply`: wrap `runEngine` and the `remaining`
  recount in `holdingSuppression { }` (the block lambda is not inline, so the wrapped region must
  contain no `return`; the region from `requireResponsiveEdt` through the recount has none).
  Update the `requireResponsiveEdt` KDoc ("opened before this
  session suppressed it" becomes "opened before the first call, or after the IDE sat idle longer
  than the suppression window").
- `src/.../JetBrainsMPSProjectMcpToolset.kt`, `mps_mcp_reload_all`: wrap the
  `executeShortCommandOnEdt { clm.reloadAll(...) }` call in `holdingSuppression { }`.
- `test/.../integration/MigrationAssistantGuardTest.kt` (stays in `McpWorkspaceToolsTestSuite`).
  The static API is called directly; no `MigrationTrigger` instance, no project service.
  `@Before`/`@After`: `MigrationTrigger.clearAutoAssistantSuppression()`, clear the window property
  and `mps.migration.assistant.auto` (a test JVM that inherits `=false` would make every
  "unsuppressed" assertion fail). Tests:
  - an `mps_mcp_*` descriptor on `beforeMcpToolCall` makes `isAutoAssistantSuppressed()` true; a
    non-`mps_mcp_` descriptor does not;
  - window property `1`: suppression ends within a few seconds (poll, at most ~3 s); property
    `0`: a call leaves it unsuppressed;
  - a bump with a shorter window after a longer one does not shorten the deadline;
  - `holdingSuppression` with window `1` and a body that delays ~3 s: still suppressed when the
    body ends; with a body that throws, `isAutoAssistantSuppressed()` turns false within about
    2 s of the throw and is still false 1.5 s later (a leaked heartbeat would keep it true);
  - property parsing: missing, non-numeric and negative values give 120 s (replaces
    `lease duration property parsing and defaults`).
  Section 2.3 has no automated coverage: `MigrationAccess` builds no trigger in test mode, so the
  live steps in section 4 are its only test.
- `META-INF/plugin.xml`: unchanged.
- `JetBrainsMPSMigrationMcpToolset` tool description: the sentence "While an agent drives the
  project the wizard does not open on its own" stays true; no change.

### 3.3 Docs and skills

- `mps-aspect-migrations/references/run-migrations.md`, bullet 2: "does not open on its own once
  an agent has called an `mps_mcp_*` tool for the project" becomes "does not open on its own in
  any open project while `mps_mcp_*` calls are being made and for two minutes after the last one
  (`-Dmps.mcp.migrationAssistantWindowSeconds`)"; its second sentence, "If the wizard was already
  open before that", becomes "If the wizard opened before the first call or after the IDE sat idle
  longer than the window". Propagate to the three catalogs
  (`plugins/mcp-tools/resources/.../skills`, `.agents/skills`, `.claude/skills`);
  `SkillCatalogReplicationTest` checks they match, `SkillReferenceLayoutTest` the size budget.
- `mps-mcp-workflow/references/mcp-tools-index.md`: no change (the row says "while an agent
  drives the project", which is still right).
- `study/scripts/mps_control.sh`, comment block at lines 325-330: rewrite per 2.4's last
  paragraph; the capture handling (`vmOptions`) gains nothing, but section 4 explains how the
  window property gets into a live run.
- `d48-headless-migration-plan.md`: a one-paragraph section 8 pointing here; B1 and deviation 2
  are historical.
- `d48-headless-migration-review.md`: append a status line to R3, R6, R8 and D3 ("resolved by
  design, see `d48-deadline-suppression-plan.md`"), and to D2 if 2.3 item 3 is done.
- Memory `mps-model-save-pops-migration-dialog`: no change (the override and the tool remain the
  way out).

## 4. Validation

1. MPS side: `check_root_node_problems` clean on `MigrationTrigger`; regenerate; IDEA build of
   `migration-platform` then `mcp-tools` (both green before any test run).
2. `McpWorkspaceToolsTestSuite` (guard test, migration toolset test, module tools) and
   `McpContractAndSkillsTestSuite` (`AbstractOpsMakeTest`, catalog replication, reference layout,
   wire shape). Gate on no
   other `JUnitStarter` JVM machine-wide (memory `mcp-suites-share-test-system-dir-across-worktrees`).
3. Live, after restarting MPS from the branch (`mps_control.sh`; never `kill`). The JVM override
   must be off for these runs, and `MIGRATION_ASSISTANT_AUTO=true` is silently ignored when the
   capture already carries `-Dmps.migration.assistant.auto=false` (`start` only appends the option
   when the capture lacks it, and a capture re-taken from an MPS that `start` launched carries it).
   So before each run confirm with `ps -ww -p <pid> -o args=` that the flag is absent or `=true`;
   edit the capture's `vmOptions` if not, the same way the call-log option is handled. Steps:
   - run the S4 worker prompt once: no `MODAL_BLOCKED` in the call log, the "Migration required"
     balloon after the language `MAKE`, `mps_mcp_run_migrations APPLY` with one applied row;
   - with `-Dmps.mcp.migrationAssistantWindowSeconds=20` in the capture, run a language `MAKE`
     that takes longer than about 40 s (the MPS-on-MPS checkout, or a fixture with a slow
     generator): balloon, not wizard, which is the heartbeat. The window must not be made much
     shorter: after `performMake` returns the deadline is only `window/2` to `window` ahead, and
     the trigger's own scan on a large project can finish after that; a wizard in this step is
     judged by its timestamp against the call's end in the call log, not by its mere appearance;
   - leave the IDE idle for longer than the window, then rebuild a language by hand: the wizard
     opens (the re-enable path, which has no code of its own, so it must be seen once);
   - click the balloon's *Migrate* during the window: the wizard opens (force path unchanged);
   - open a second project, make an agent call in the first, rebuild a language in the second
     within the window: balloon, not wizard;
   - `idea.log` has no new SEVERE for the run window (memory `live-mcp-verification-check-idea-log`).
4. Study: the D48 row in `study/docs-defects.md` gets the new mechanism; S4 criteria unchanged.
5. Live results (2026-10-22, MPS 261.25134 started from the branch WITHOUT the JVM override, so the
   deadline was the only suppression; opus worker at low effort; fixture `recipes-full` sha 37d9c83a):
   - `runs-d48-deadline/S4-1`: full S4 run, 18 `mps_mcp_*` calls, 0 `MODAL_BLOCKED`, the wizard never
     opened; `MAKE` answered `migrationsPending:1`, CHECK listed `AddRecipeSummary` 0→1 for
     `mcp.study.kitchen`, APPLY `FINISHED` with one applied row and `remaining` all 0; all four S4 done
     criteria pass; `idea.log` WARN+ in the window: only project-open noise, nothing from
     `MigrationTrigger`, notifications or balloons.
   - `runs-d48-deadline/S4-2`: same steps up to the language `MAKE` (16:43:17) and one CHECK, APPLY not
     run, left open with the migration pending for the manual checks. Pitfall hit on the way: a second
     extraction of the same fixture resolves to the first project's modules (same UUIDs, one shared
     repository); closing the first project is not enough once the second is open, the second had to
     be closed and reopened too.
   - Not yet seen live: the wizard returning after an idle gap, the balloon's *Migrate*, the heartbeat
     with a short window (unit-tested only), the second-project row.

## 5. Commits

Two commits, mirroring the originals, both carrying the issue id since they change the fix itself:

1. `migration-platform - MPS-40278 replace the assistant suppression tokens with a deadline`
   (model, `source_gen`, `generated`, `trace.info`).
2. `mcp-tools - MPS-40278 bump the assistant suppression deadline per call instead of leasing it`
   (guard, heartbeat in `performMake`, `apply` and `reload_all`, test, skill reference in three
   catalogs, study script comment, docs).

## 6. What this answers in the review, and what it does not

| finding | effect |
|---|---|
| R3 lost check on lease expiry | gone: no expiry event; a decided postpone always posts its balloon |
| R6 asymmetric counter, token leak | gone: no counter, no token |
| R8 after-call not guaranteed | moot: nothing is paired; long calls are held by an in-call heartbeat |
| D3 `Disposer` under a lock | gone: no `Disposer` |
| D2 lock held across the scan | fixed if 2.3 item 3 is done, otherwise unchanged |
| D1, R1, R2, R4, R5, R7, side effects 1-6, clarity, redundancy | unchanged; they concern the headless run and pre-existing code |

## 7. Decisions taken

- Application-wide deadline, not per project (2.1).
- Default window 120 s, one property `mps.mcp.migrationAssistantWindowSeconds`.
- Bump on every `mps_mcp_*` call in `beforeMcpToolCall` only; no `afterMcpToolCall` override.
  Long calls are covered by a per-call heartbeat in `performMake`, `APPLY` and `reload_all` (2.2),
  not by the after-call hook, because the checks they provoke fire before the call returns.
  `run_console_command` is knowingly left without one.
- The deadline lives on `MigrationTrigger` in the MPS model, not in a hand-written class under
  `migration-platform/sources`: the trigger's own query and the cache simplification touch the
  model anyway, and a hand-written holder would add a java-stub refresh step (memory
  `mps-java-stubs-lag-behind-new-java-methods`) for one field and two methods.
