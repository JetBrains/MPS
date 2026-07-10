# Handoff: MCP Make Session Migration Blocker Lifecycle Bug

**Issue**: `AssertionError: Non-paired block-unblock method usage` during MCP-triggered make operations  
**Root Cause**: Migration blocker lifecycle not exception-safe; make session cleanup fails to properly release block state  
**Component**: MPS make infrastructure + MCP tool bridge  
**Severity**: High (corrupts IDE state, blocks further make operations)  

---

## Problem Statement

When an MCP tool invokes a make operation (e.g., `mps_mcp_make_project`, `mps_mcp_build_module`), the following sequence can fail:

1. Make session starts → `MigrationTrigger` calls `MigrationBlock.blockMigrationsCheck()`
2. Make completes, errors, or times out
3. Make session close fires → `MigrationTrigger$1.sessionClosed()` calls `MigrationBlock.unblockMigrationsCheck()`
4. **Assertion fails**: `MigrationBlock.unblockMigrationsCheck()` detects the blocker is still in a blocked state

The exception:
```
java.lang.AssertionError: Non-paired block-unblock method usage. Cause: 'make session is in progress'
at jetbrains.mps.ide.migration.MigrationBlock.unblockMigrationsCheck(MigrationBlock.java:47)
at jetbrains.mps.ide.migration.MigrationTrigger$1.sessionClosed(MigrationTrigger.java:100)
```

### Impact

- **Immediate**: IDE throws an assertion error to logs; make state is left corrupted
- **Cascading**: Subsequent make attempts may fail with the same error or hang indefinitely
- **User-facing**: Agent workflow blocks; user must restart MPS to clear the state

---

## Root Cause Analysis

### Why This Happens

The migration blocker is a pair of methods designed to prevent model migrations during the make process:

```java
// MigrationBlock.java (platform/jetbrains/mps)
public static void blockMigrationsCheck() { /* internal state updated */ }
public static void unblockMigrationsCheck() {
    // Line 47: assertion that expects blockMigrationsCheck to have been called exactly once
    assert /* paired state check */: "Non-paired block-unblock method usage. Cause: 'make session is in progress'"
}
```

**Scenario 1: Double-unblock**
- If `sessionClosed` is called twice (nested sessions, re-entrant event firing), `unblock()` is called twice but only one `block()` occurred.

**Scenario 2: Unblock without block**
- MCP tool crashes or is interrupted before make session fully initializes.
- `sessionClosed` fires anyway, calling `unblock()` without a matching `block()`.

**Scenario 3: Exception during make, no cleanup**
- Make session throws an exception that escapes `MigrationTrigger` bounds.
- `sessionClosed` never fires, or fires in a corrupted state.
- Subsequent make attempt tries to block again → blocker is already in blocked state.

### Why MCP Tools Are Vulnerable

MCP tools invoke make through the IDE/MPS message/action dispatch system, but:

1. **No try-finally wrapping**: The MCP tool invokes the action, but doesn't own or wrap the session lifecycle.
2. **Async completion**: The make operation is async; the MCP tool's call returns before the session is fully closed.
3. **No state validation**: The tool doesn't check whether a prior make session left the migration blocker in an inconsistent state.
4. **Error propagation**: If an error occurs in `MigrationTrigger`, it may not properly unwind the block/unblock pairing.

---

## Implementation Strategy

### Option A: Defensive Unblocking in MCP Tool (Short-term, recommended)

The MCP tool that invokes make should detect and correct migration blocker state.

**Location**: `MPS/IdeaPlugin/` (the MCP server wrapper around make invocation)

**Pattern**:
```kotlin
// Hypothetical MCP make tool (e.g., McpMakeFacade or WorkbenchMakeBridge)
fun invokeMake(/* params */) {
    // Pre-flight: check if a prior make left the blocker in a bad state
    val isBlockedBefore = MigrationBlock.isMigrationsCheckBlocked()
    if (isBlockedBefore && !isMakeInProgress()) {
        // A previous make crashed without cleanup; force-unblock
        try {
            MigrationBlock.unblockMigrationsCheck()
        } catch (e: AssertionError) {
            // Log but don't crash; the unblock may have been spurious
            log.warn("Had to force-unblock migration check due to prior crashed make session", e)
        }
    }
    
    // Now invoke the make through the normal path
    try {
        WorkbenchMakeService.makeProject(/* ... */)
    } catch (e: Exception) {
        // If make throws, ensure we attempt to unblock even though sessionClosed may not fire
        if (MigrationBlock.isMigrationsCheckBlocked()) {
            try {
                MigrationBlock.unblockMigrationsCheck()
            } catch (e2: AssertionError) {
                log.error("Failed to unblock after make exception", e2)
            }
        }
        throw e
    }
}
```

**Pros**:
- Contained to MCP layer; doesn't require changes to core platform MigrationBlock logic
- Defensive: guards against cascading failures
- Can be deployed immediately without deep platform refactoring

**Cons**:
- Treats symptoms, not root cause
- Requires all MCP make-invoking tools to use the same pattern
- Doesn't address the underlying lifecycle mismanagement

### Option B: Exception-Safe Migration Block Lifecycle (Long-term)

Harden the `MigrationBlock` and `MigrationTrigger` to be exception-safe.

**Location**: `platform/` or `core/` MigrationBlock implementation (platform project)

#### Change 1: Add state introspection

```kotlin
// MigrationBlock.kt (or Java equivalent)
object MigrationBlock {
    private var blockCount = 0  // Track nesting depth
    
    fun blockMigrationsCheck() {
        blockCount++
    }
    
    fun unblockMigrationsCheck() {
        require(blockCount > 0) { "Attempted to unblock without matching block" }
        blockCount--
    }
    
    fun isMigrationsCheckBlocked(): Boolean = blockCount > 0
    
    fun resetMigrationsCheckState() {
        blockCount = 0  // Emergency reset (for recovery)
    }
}
```

#### Change 2: Wrap MigrationTrigger in a try-finally

```kotlin
// MigrationTrigger.kt
class MigrationTrigger {
    fun onMakeSessionStart() {
        MigrationBlock.blockMigrationsCheck()
    }
    
    fun onMakeSessionClose(isSuccess: Boolean) {
        try {
            if (MigrationBlock.isMigrationsCheckBlocked()) {
                MigrationBlock.unblockMigrationsCheck()
            }
        } catch (e: Exception) {
            log.error("Error unblocking migrations after make session close", e)
            // Don't crash; attempt recovery
            MigrationBlock.resetMigrationsCheckState()
        }
    }
}
```

#### Change 3: Guard against double-unblock

```kotlin
// In MigrationBlock or MigrationTrigger
class MigrationTrigger : IMakeNotificationListener {
    private var isBlockedByThisSession = false
    
    override fun sessionOpened(session: IMakeSession) {
        if (!isBlockedByThisSession) {
            MigrationBlock.blockMigrationsCheck()
            isBlockedByThisSession = true
        }
    }
    
    override fun sessionClosed(session: IMakeSession) {
        if (isBlockedByThisSession) {
            try {
                MigrationBlock.unblockMigrationsCheck()
            } finally {
                isBlockedByThisSession = false
            }
        }
    }
}
```

**Pros**:
- Fixes the root cause; prevents corruption of internal state
- Exception-safe: doesn't leak blocker state even if errors occur
- Idempotent: repeated unblock calls are safe

**Cons**:
- Requires changes to platform (may require coordination with JetBrains)
- Longer timeline to deploy
- Needs careful testing to avoid new regressions

### Option C: Hybrid Approach (Recommended)

1. **Immediate**: Implement Option A (defensive unblocking in MCP layer)
2. **Short-term**: Document the issue and file with JetBrains platform team
3. **Long-term**: Advocate for Option B changes in platform

---

## Implementation Details: Option A

### Affected MCP Tools

Any MCP tool that invokes a make operation:
- `mps_mcp_make_project` (if exists)
- `mps_mcp_build_module` (if exists)
- Tools that trigger regeneration via `WorkbenchMakeService`
- `execute_run_configuration` when the run config involves make/rebuild

### Code Location & Changes

**Primary location**: The MCP tool wrapper that invokes `WorkbenchMakeService` or similar

Pseudo-location: `plugins/mps-devkit/source_gen/.../mcp/*/make*.kt` or the core MCP server's make facade.

**Implementation skeleton**:

```kotlin
package jetbrains.mps.mcp.server

import jetbrains.mps.ide.migration.MigrationBlock
import jetbrains.mps.ide.make.WorkbenchMakeService
import org.jetbrains.annotations.VisibleForTesting

class McpMakeFacade {
    
    /**
     * Wrapper to safely invoke a make operation, with recovery for corrupted migration blocker state.
     * 
     * @throws AssertionError if migration blocker is still corrupted after recovery attempt
     */
    fun invokeMakeWithRecovery(operation: () -> Unit) {
        // Step 1: Pre-flight check and recovery
        recoverFromPriorMakeFailure()
        
        // Step 2: Invoke make with exception safety
        var makeSucceeded = false
        try {
            operation.invoke()
            makeSucceeded = true
        } catch (e: Exception) {
            // Step 3: If make threw, attempt emergency unblock
            emergencyUnblockIfNeeded()
            throw e
        }
    }
    
    @VisibleForTesting
    fun recoverFromPriorMakeFailure() {
        val isBlockedNow = MigrationBlock.isMigrationsCheckBlocked()
        val isMakeInProgress = isAnyMakeInProgress()
        
        if (isBlockedNow && !isMakeInProgress) {
            // Migration blocker is stuck from a crashed make; force-unblock
            log.warn("Recovering from stuck migration blocker (make was not in progress)")
            try {
                MigrationBlock.unblockMigrationsCheck()
            } catch (e: AssertionError) {
                // If unblock still fails, the state is deeply corrupted
                log.error(
                    "Failed to recover migration blocker state; IDE may need restart. " +
                    "Error: ${e.message}",
                    e
                )
                // Do NOT re-throw; allow make to proceed and fail naturally
            }
        }
    }
    
    @VisibleForTesting
    fun emergencyUnblockIfNeeded() {
        if (MigrationBlock.isMigrationsCheckBlocked()) {
            log.warn("Make operation failed; attempting emergency unblock of migration blocker")
            try {
                MigrationBlock.unblockMigrationsCheck()
            } catch (e: AssertionError) {
                log.error("Emergency unblock also failed", e)
                // Continue anyway; the error is already being thrown
            }
        }
    }
    
    private fun isAnyMakeInProgress(): Boolean {
        // Delegate to WorkbenchMakeService or similar to check if a make is currently running
        return WorkbenchMakeService.getInstance().isMakingInProgress
    }
}
```

### Integration Point

The MCP server's main entry point for make operations should use `McpMakeFacade`:

```kotlin
// In the MCP tool definition (e.g., mps_mcp_make_project)
fun mcpMakeProject(/*params*/): MakeResult {
    return McpMakeFacade().invokeMakeWithRecovery {
        WorkbenchMakeService.getInstance().makeProject(/* ... */)
    }
}
```

### Testing

**Unit tests**:
```kotlin
class McpMakeFacadeTest {
    
    @Test
    fun testRecoverFromStuckBlocker() {
        // Simulate a stuck blocker (prior make crashed)
        MigrationBlock.blockMigrationsCheck()
        // Don't call unblock; leave it stuck
        
        val facade = McpMakeFacade()
        // Should not throw
        facade.recoverFromPriorMakeFailure()
        
        // After recovery, blocker should be unblocked
        assertFalse(MigrationBlock.isMigrationsCheckBlocked())
    }
    
    @Test
    fun testEmergencyUnblockOnMakeException() {
        MigrationBlock.blockMigrationsCheck()
        
        val facade = McpMakeFacade()
        val exception = RuntimeException("Make failed")
        
        assertThrows(RuntimeException::class.java) {
            facade.invokeMakeWithRecovery {
                throw exception
            }
        }
        
        // After exception, blocker should be unblocked despite the error
        assertFalse(MigrationBlock.isMigrationsCheckBlocked())
    }
}
```

**Integration tests**:
- Run an MCP make operation that completes successfully
- Run an MCP make operation that throws midway
- Verify no subsequent make operations fail due to blocker state
- Verify logs show recovery attempts (if any)

---

## Related Context & Cross-References

### Similar Issues in Memory

- [MCP exception out of MPS command](mcp_exception_out_of_command.md): MCP tools throwing exceptions from inside write commands corrupt internal state (McpUserException not caught at command boundary)
- [MCP multi-project scope leak](mcp_multiproject_scope_leak.md): MCP tools don't properly isolate state across multiple open projects

**Lesson**: MCP tools are at a boundary where exceptions can escape to the platform and leave it in an inconsistent state. Defensive wrapping (try-finally, state validation before critical ops) is essential.

### Platform Code

- **MigrationBlock**: Core platform class (`jetbrains/platform/...`) — track down exact location
- **MigrationTrigger**: Listens to make session events; calls block/unblock
- **WorkbenchMakeService**: Dispatches make operations; fires session-opened/closed events

### References

- Check platform issue tracker for "migration block" or "non-paired block-unblock"
- Review `MigrationBlock.java:47` and surrounding code to understand the assertion
- Review `MigrationTrigger.java:100` to see how sessionClosed is implemented

---

## Recommendations for Handoff

### Phase 1: Quick Stabilization (1-2 days)

1. **Locate** the MCP tool(s) that invoke make operations
2. **Add** `McpMakeFacade.recoverFromPriorMakeFailure()` before every make invocation
3. **Wrap** make operations in try-finally with `emergencyUnblockIfNeeded()`
4. **Add logging** to track when recovery happens
5. **Test** manually and via CI to verify no regressions

### Phase 2: Root Cause Fix (1-2 weeks)

1. **File** a platform issue with JetBrains (or check if one exists)
2. **Implement** Option B (exception-safe blocker lifecycle) in platform if JetBrains agrees
3. **Backport** to supported MPS versions
4. **Remove** defensive unblocking from Option A once platform fix is in place

### Phase 3: Documentation

1. **Update** CLAUDE.md with guidance on safe make invocation patterns
2. **Create** a recovery skill/helper for developers who encounter this in custom tools
3. **Document** the migration blocker lifecycle for future MCP developers

---

## Rollout Plan

**Pre-deployment**:
- Run full test suite on the affected module
- Manual verification: trigger make failure, verify recovery, verify no state leak

**Deployment**:
- Merge Option A fix to all MCP make-invoking tools
- Include in next MPS/MCP server release

**Post-deployment**:
- Monitor logs for "Recovering from stuck migration blocker" messages
- If zero occurrences within 2 weeks, migration blocker was transient
- If occurrences continue, escalate to JetBrains and implement Option B

---

## Appendix: Quick Reference

| Item | Details |
|------|---------|
| **Classes** | `MigrationBlock`, `MigrationTrigger`, `WorkbenchMakeService` |
| **Methods** | `blockMigrationsCheck()`, `unblockMigrationsCheck()`, `isMigrationsCheckBlocked()` |
| **Exception** | `AssertionError: Non-paired block-unblock method usage` |
| **Assertion location** | `MigrationBlock.java:47` |
| **Event trigger** | `MigrationTrigger$1.sessionClosed()` at line 100 |
| **Affected tools** | Any MCP tool calling `WorkbenchMakeService.makeProject()` or similar |
| **Prevention** | Validate blocker state before make, wrap in try-finally, emergency unblock on error |
