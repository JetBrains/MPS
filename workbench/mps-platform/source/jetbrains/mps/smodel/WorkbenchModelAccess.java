/*
 * Copyright 2003-2026 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.smodel;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.command.CommandProcessor;
import com.intellij.openapi.command.UndoConfirmationPolicy;
import com.intellij.openapi.util.Disposer;
import com.intellij.util.ui.EDT;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSProject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.util.RunWithOutcome;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

import static java.math.BigDecimal.valueOf;

/**
 * We access IDEA locking mechanism here in order to prevent different way of acquiring locks
 * We always first acquire IDEA's lock and only then acquire MPS's lock
 */
public final class WorkbenchModelAccess extends ModelAccess implements Disposable, ModelCommandContext.Provider {
  private static final int WAIT_FOR_WRITE_LOCK_MILLIS = 200;
  private static final String IDEA_WRITE_LOCK_FAIL = "Failed to acquire the IDEA write lock after having waited for %.3f s";

  private final EDTExecutor myEDTExecutor = new EDTExecutor();
  private final TryRunPlatformWriteHelper myPlatformWriteHelper;
  private final CancellableReadsManager myCancellableReads;

  /**
   * PROVISIONAL CODE
   * DON'T USE OUTSIDE OF MPS.
   * IN MPS, DON'T USE UNLESS FOR TRANSITION PURPOSES
   * @return IDEA App Service instance
   */
  public static WorkbenchModelAccess getInstance() {
    return (WorkbenchModelAccess) ApplicationManager.getApplication().getService(org.jetbrains.mps.openapi.module.ModelAccess.class);
  }

  public WorkbenchModelAccess() {
    myPlatformWriteHelper = new TryRunPlatformWriteHelper();
    myCancellableReads = new CancellableReadsManager();
    Disposer.register(this, myEDTExecutor);
    Disposer.register(this, myPlatformWriteHelper);
    setInstance(this);
  }

  // implementation detail, public just to overcome package boundaries j.m.smodel and j.m.project
  public org.jetbrains.mps.openapi.module.ModelAccess createForProject(MPSProject mpsProject) {
    return new ProjectModelAccess2(mpsProject, this);
  }

  @Override
  public void dispose() {
    setInstance(null);
  }

  @Override
  public void runReadAction(final Runnable r) {
    // even if canRead(), register anyway, just in case it can stop sooner in case a 'write' arrives
    if (handleIfCancellable(r)) {
      return;
    }
    if (canRead()) {
      r.run();
      myCancellableReads.removeIfCanCancel(r);
      return;
    }
    ApplicationManager.getApplication().runReadAction(new PlatformCancelBlock(() -> {
      if (ApplicationManager.getApplication().hasWriteAction(PlatformCancelBlock.class)) {
        // the only way the application has THIS kind of write action is if the write action was suspended:
        // com.intellij.openapi.application.impl.AnyThreadWriteThreadingSupport.executeSuspendingWriteAction
        // see jetbrains.mps.smodel.WorkbenchModelAccess.runWriteAction
        // since we're in application read action and OUR write action is suspended, it is safe
        // to assume we have read access
        reportSuspendedWriteBypass();
        SharedReadModelAccess rma = shareReadNoCheck();
        rma.execute(prepareLocked(r, new NoLock(), myReadActionDispatcher));
        rma.release();
      } else {
        prepareLocked(r, getReadLock(), myReadActionDispatcher).run();
      }
    }));
    myCancellableReads.removeIfCanCancel(r);
  }

  // MPS-38709: make the lock bypass visible, to find code that triggers it (e.g. editor opened from within a command)
  private static void reportSuspendedWriteBypass() {
    StringBuilder sb = new StringBuilder("Model read without lock: MPS write in EDT is suspended by the platform (MPS-38709).");
    Thread edt = EDT.getEventDispatchThreadOrNull();
    if (edt != null) {
      sb.append(" Suspended write in EDT:");
      for (StackTraceElement ste : edt.getStackTrace()) {
        sb.append("\n\tat ").append(ste);
      }
    }
    Logger.getLogger(WorkbenchModelAccess.class).warning(sb.toString(), new Throwable());
  }

  @Override
  public void runWriteAction(final Runnable r) {
    if (canWrite()) {
      r.run();
      return;
    }
    assertNotWriteFromRead();
    myCancellableReads.cancel();
    final Runnable lockRunnable = prepareLocked(r, getWriteLock(), myWriteActionDispatcher);
    if (isInEDT()) {
      myPlatformWriteHelper.runWrite(new PlatformCancelBlock(lockRunnable));
    } else {
      ApplicationManager.getApplication().runReadAction(new PlatformCancelBlock(lockRunnable));
    }
  }

  @Deprecated(since = "201", forRemoval = true)
  @Internal
  public void forceFlush() {
    // XXX in fact, just _schedules_ a flush, is it what clients expect?
    myEDTExecutor.forceScheduleFlushEDT();
  }

  @Override
  public void runReadInEDT(Runnable r) {
    if (handleIfCancellable(r)) {
      return;
    }
    myEDTExecutor.scheduleTask(() -> tryRead(r));
  }

  // return true if runnable doesn't need further processing
  private boolean handleIfCancellable(Runnable r) {
    if (r instanceof CancellableReadAction) {
      if (hasScheduledWrites()) {
        // cancel right away if there's write in action/scheduled
        ((CancellableReadAction) r).cancel();
        return true;
      } else {
        myCancellableReads.add((CancellableReadAction) r);
        return false;
      }
    }
    return false;
  }

  @Override
  public void runWriteInEDT(Runnable r) {
    myCancellableReads.cancel(); // not sure if shall cancel here or inside scheduled write, i.e. right before tryWrite(),
    // though it seems that if we do it from the original thread, not EDT, we facilitate use of CancellableReadActions from within
    // the ED thread. Otherwise, with cancel from withing scheduleWrite(), there'd be no chances for cancellable action started in EDT to
    // get cancellation request (code in scheduleWrite would get executed *after* the read action completes).
    myEDTExecutor.scheduleTask(() -> tryWrite(r));
  }

  /*package*/ void runCommandInEDT_(@NotNull final Runnable cmd, @NotNull final MPSProject project, @Nullable final UndoRunnable undoInfo) {
    // beware, anonymous class, not lambda, as I need to use `this` inside, pointing to the right instance.
    EDTExecutor.Task t = new EDTExecutor.Task() {
      @Override
      public boolean tryRun() throws EDTExecutor.TaskIsOutdated {
        if (project.isDisposed()) {
          throw new EDTExecutor.TaskIsOutdated("Task %s is outdated; the reason is %s is disposed".formatted(this, project));
        }
        return tryWriteInCommand(cmd, project, undoInfo);
      }
    };
    myEDTExecutor.scheduleTask(t);
  }

  private boolean isInEDT() {
    return ApplicationManager.getApplication().isDispatchThread();
  }

  /**
   * @param r has to be original runnable to facilitate {@code CancellableReadAction} check
   */
  private boolean tryRead(final Runnable r) {
    // 1 ms is pretty short to be considered 'try'
    final LockRunnable lockRunnable = prepareLocked(r, getReadLock(), 1, myReadActionDispatcher);
    // XXX likely, shall try to grab IDEA's read lock much like tryWrite does
    ApplicationManager.getApplication().runReadAction(new PlatformCancelBlock(lockRunnable));
    if (lockRunnable.wasExecuted()) {
      myCancellableReads.removeIfCanCancel(r);
      return true;
    }
    return false;
  }

  private boolean tryWrite(final Runnable r) {
    if (canRead() && !canWrite()) {
      // This is an attempt to prevent scenarios like MPS-35610, when attempt to start a write operation leads to read operation being cancelled.
      // We addressed this on the spot, for popup menu in EC, but generally may face same issue elsewhere.
      // When/if we decide to rewrite scheduling and the way we interact with IDEA reads/writes, we'd better take this scenario into account.
      //  To me, it looks like our write requests get executed even in nested EDT pump (~ modal?), and likely this makes IDEA "uneasy".
      return false;
    }

    final LockRunnable lockRunnable = prepareLocked(r, getWriteLock(), WAIT_FOR_WRITE_LOCK_MILLIS, myWriteActionDispatcher);

    // XXX there's only 1 use of the method, and it's from EDT executor, are there any chance not to be in EDT here?
    assert isInEDT();
    // XXX elapsed time of TaskTimer could be part of WriteTimeOutException!
    TaskTimer taskTimer = new TaskTimer();
    taskTimer.start();
    try {
      // in fact, there are 2 lock attempts, one to grab IDEA's platform lock (myPlatformWriteHelper.tryWrite),
      // and another is to grab MPS write lock with lockRunnable
      myPlatformWriteHelper.tryWrite(new PlatformCancelBlock(lockRunnable));
    } catch (WriteTimeOutException e) {
      // XXX why not return false to indicate failed attempt?
      throw new TimeOutRuntimeException(String.format(IDEA_WRITE_LOCK_FAIL, taskTimer.secondsElapsed()), e);
    }
    return lockRunnable.wasExecuted();
  }

  /**
   * not thread-safe
   */
  private static final class TaskTimer {
    private long myStartNanos;

    public void start() {
      myStartNanos = System.nanoTime();
    }


    BigDecimal secondsElapsed() {
      return valueOf(System.nanoTime())
                 .subtract(valueOf(myStartNanos))
                 .divide(valueOf(1e9), RoundingMode.DOWN);
    }
  }

  private boolean tryWriteInCommand(final Runnable cmd, @NotNull final MPSProject project, @Nullable UndoRunnable ur) {
    ApplicationManager.getApplication().assertIsDispatchThread();

    TaskTimer taskTimer = new TaskTimer();
    // tryWrite ensures our command runnable would be executed from a distinct thread and hence would be 'top' one
    final LockRunnable lockRunnable = prepareLocked(cmd, getWriteLock(), WAIT_FOR_WRITE_LOCK_MILLIS, myWriteActionDispatcher);
    RunWithOutcome<Object> computable = new RunWithOutcome<>((Callable<?>) () -> {
      myPlatformWriteHelper.tryWrite(new PlatformCancelBlock(lockRunnable));
      return null;
    });
    // XXX unlike #executeCommand(Runnable, Project), we don't respect UndoRunnable options here, why?
    String name =  "MPS #tryCommand", groupId = null;
    UndoConfirmationPolicy confirmUndo = UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION;
    if (ur != null) {
      name = ur.getName();
      groupId = ur.getGroupId();
      if (ur.shallConfirmUndo()) {
        confirmUndo = UndoConfirmationPolicy.REQUEST_CONFIRMATION;
      }
    }
    CommandProcessor.getInstance().executeCommand(project.getProject(), computable, name, groupId, confirmUndo);
    if (computable.getException() != null) {
      // XXX why on earth do we report platform lock timeout with an exception, while model lock timeout with mere boolean wasExecuted?
      throw new TimeOutRuntimeException(String.format(IDEA_WRITE_LOCK_FAIL, taskTimer.secondsElapsed()), computable.getException());
    }
    return lockRunnable.wasExecuted();
  }

  /*package*/ void cancelReads() {
    myCancellableReads.cancel();
  }

  /*package*/ void executeCommand_(Runnable cmd, MPSProject project, @Nullable UndoRunnable ur) {
    assert cmd != null;
    assert project != null;
    if (!canWrite()) {
      final Runnable withModelLock = prepareLocked(cmd, getWriteLock(), myWriteActionDispatcher);
      cmd = myPlatformWriteHelper.withPlatformWrite(new PlatformCancelBlock((withModelLock)));
    }
    String name = "MPS Execute Command", groupId = null;
    UndoConfirmationPolicy confirmUndo = UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION;
    if (ur != null) {
      name = ur.getName();
      groupId = ur.getGroupId();
      if (ur.shallConfirmUndo()) {
        confirmUndo = UndoConfirmationPolicy.REQUEST_CONFIRMATION;
      }
    }
    CommandProcessor.getInstance().executeCommand(project.getProject(), cmd, name, groupId, confirmUndo);
  }

  /*package*/ void runUndoTransparentCommand(Runnable r) {
    final Runnable withModelLock = prepareLocked(r, getWriteLock(), myWriteActionDispatcher);
    CommandProcessor.getInstance().runUndoTransparentAction(myPlatformWriteHelper.withPlatformWrite(new PlatformCancelBlock(withModelLock)));
  }

  @Override
  public boolean hasScheduledWrites() {
    return myPlatformWriteHelper.hasScheduledWrites() || super.hasScheduledWrites();
  }

  // provisional code until all project modules have proper ProjectRepository (even those duplicating modules in MPSModuleRepository, i.e. discovered on start)
  // XXX However, even then we'd need a delegation, as I feel editing bootstrap modules (loaded before project has been initialized) should fall under the
  // same rules as editing project modules (while in IDE). Perhaps, this means MCC or IDEA Command handling has to become a separate service to use from different
  // MA implementations. Or it could be that GMA tracks MCC, too.
  private ModelCommandContext.Provider myCurrentCommandContextProvider;

  /*package*/ void installMCC(ModelCommandContext.Provider p) {
    myCurrentCommandContextProvider = p;
  }
  /*package*/ void uninstallMCC(ModelCommandContext.Provider p) {
    assert myCurrentCommandContextProvider == p;
    myCurrentCommandContextProvider = null;
  }

  @Override
  public @Nullable ModelCommandContext getCommandContext(SModel model) {
    return myCurrentCommandContextProvider == null ? null : myCurrentCommandContextProvider.getCommandContext(model);
  }

  private static class NoLock implements Lock {
    @Override
    public void lock() {
      // no-op
    }

    @Override
    public void lockInterruptibly() {
      // no-op
    }

    @Override
    public boolean tryLock() {
      return true;
    }

    @Override
    public boolean tryLock(long time, @NotNull TimeUnit unit) throws InterruptedException {
      return true;
    }

    @Override
    public void unlock() {
      // no-op
    }

    @Override
    public @NotNull Condition newCondition() {
      throw new UnsupportedOperationException();
    }
  }
}
