/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.project;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.extensions.ExtensionPointName;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.ProjectLifecycleListener.Bean;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import java.util.function.Predicate;

final class LifecycleEventDispatch {
  private final MPSProject myProject;
  private final ProjectLifecycleListener.Context myProjectContext;
  private final AtomicInteger myStateTransition = new AtomicInteger(Transitions.START.ordinal());

  LifecycleEventDispatch(@NotNull MPSProject project) {
    myProject = project;
    myProjectContext = new ContextImpl();
  }

  public void projectReady() {
    if (!myStateTransition.compareAndSet(Transitions.START.ordinal(), Transitions.READY_BEFORE.ordinal())) {
      throw new IllegalStateException(Transitions.values()[myStateTransition.get()].name());
    }
    try {
      final ExtensionPointName<Bean> ep = Bean.epName();
      if (ApplicationManager.getApplication().isUnitTestMode()) {
        // during tests, make sure we dispatch projectReady() *before* any projectDiscarded() may fail with
        // "no preserved instance in the context" assertion.
        ep.forEachExtensionSafe(this::ready);
        return;
      }
      // XXX check if AppExecutorUtils.createCustomPriorityQueueBoundedApplicationPoolExecutor() is better alternative
      ApplicationManager.getApplication().executeOnPooledThread(() -> ep.forEachExtensionSafe(this::ready));
    } finally {
      if (!myStateTransition.compareAndSet(Transitions.READY_BEFORE.ordinal(), Transitions.READY.ordinal())) {
        Logger.getLogger(getClass()).warning("Unexpected state on project open, now %s, expected %s".formatted(Transitions.values()[myStateTransition.get()].name(), Transitions.READY_BEFORE.name()));
      }
    }
  }

  void ready(ProjectLifecycleListener.Bean bl) {
    bl.getListener().projectReady(myProject, myProjectContext);
  }

  void gone(ProjectLifecycleListener.Bean bl) {
    bl.getListener().projectDiscarded(myProject, myProjectContext);
  }

  void goneAsync(ProjectLifecycleListener.Bean bl) {
    bl.getListener().asyncProjectClosed(myProject);
  }

  public void projectDiscarded() {
    final ExtensionPointName<Bean> ep = Bean.epName();
    if (!myStateTransition.compareAndSet(Transitions.READY.ordinal(), Transitions.DISCARD_BEFORE.ordinal())) {
      Logger.getLogger(getClass()).warning("Unexpected state on project close, now %s, expected %s".formatted(Transitions.values()[myStateTransition.get()].name(), Transitions.READY.name()));
      return;
    }
    try {
      // dispatches events and returns immediately
      ApplicationManager.getApplication().executeOnPooledThread(() -> ep.forEachExtensionSafe(this::goneAsync));
      // The synchronous 'gone' listeners need care about the thread they run on. This method is normally invoked on
      // the EDT (project close arrives through ProjectCloseListener.projectClosing on the EDT). Some listeners -
      // notably ProjectPluginManager - have to release UI-bound state (tools, editor extensions, highlighters) on
      // the EDT, and they must do so while the project is still alive. Dispatching them on a pooled thread and then
      // blocking the EDT for the result (Future.get) deadlocks any such listener that marshals back to the EDT: it
      // cannot proceed until the wait times out, by which point the project is already being disposed. That is the
      // cause of the 'project discarded takes too long' timeout, the NPEs from now-null project components, and the
      // dangling editor/Disposer extensions seen at shutdown. So when we are already on the EDT, run the listeners
      // inline; only fall back to the pooled-thread-and-wait scheme off the EDT (e.g. headless), where blocking the
      // calling thread is harmless.
      if (ThreadUtils.isInEDT()) {
        ep.forEachExtensionSafe(this::gone);
      } else {
        // waits for each listener to finish, and then returns
        Future<?> notify = ApplicationManager.getApplication().executeOnPooledThread(() -> ep.forEachExtensionSafe(this::gone));
        try {
          // I don't expect listeners to perform any heavy-duty tasks. The number is wild guess, though.
          notify.get(5000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException ex) {
          Logger.getLogger(getClass()).error("Failed to dispatch 'project discarded' event", ex);
        } catch (TimeoutException ex) {
          Logger.getLogger(getClass()).error("Dispatching 'project discarded' event takes too long, aborted", ex);
        }
      }
    } finally {
      if (!myStateTransition.compareAndSet(Transitions.DISCARD_BEFORE.ordinal(), Transitions.DISCARDED.ordinal())) {
        Logger.getLogger(getClass()).error("Unexpected state on project close, now %s, expected %s".formatted(Transitions.values()[myStateTransition.get()].name(), Transitions.DISCARD_BEFORE.name()));
      }
    }
  }

  private static class ContextImpl implements ProjectLifecycleListener.Context {
    private final Map<Class<?>, Object> myValues = new HashMap<>();
    private final ArrayList<R> keepSeq = new ArrayList<>();
    private final ArrayList<R> discardSeq = new ArrayList<>();

    @Override
    public synchronized <T> void keep(@NotNull Class<T> key, @NotNull T value) {
      if (myValues.containsKey(key)) {
        throw new IllegalArgumentException();
      }
      myValues.put(key, value);
      keepSeq.add(R.create(key));
    }

    @Override
    @Nullable
    public synchronized <T> T get(@NotNull Class<T> key) {
      return key.cast(myValues.get(key));
    }

    @Override
    public synchronized <T> T discard(Class<T> key) {
      discardSeq.add(R.create(key));
      T rv = key.cast(myValues.remove(key));
      if (rv == null) {
        // XXX note, we are inside synchronized method, don't expect concurrent modifications here
        System.out.printf("Missing value for key %s. We have %d records for keep and %d for discard\n", key, keepSeq.size(), discardSeq.size());
        Consumer<R> dump = r -> {
          System.out.printf("\t\t%s @%2$tM:%2$tS.%2$tL\n", r.threadName, Date.from(r.when));
        };
        Predicate<R> p = r -> r.key == key;
        System.out.println("\trecorded:  ");
        keepSeq.stream().filter(p).forEach(dump);
        System.out.println("\tdiscarded: ");
        discardSeq.stream().filter(p).forEach(dump);
      }
      return rv;
    }
  }

  private record R(Class<?> key, String threadName, Instant when) {
    static R create(Class<?> key) {
      return new R(key, Thread.currentThread().getName(), Instant.now());
    }
  }

  private enum Transitions {
    START,
    READY_BEFORE,
    READY,
    DISCARD_BEFORE,
    DISCARDED
  }
}
