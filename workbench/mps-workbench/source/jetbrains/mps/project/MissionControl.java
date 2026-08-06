/*
 * Copyright 2000-2024 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.project;

import com.intellij.ide.PowerSaveMode;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.progress.ProcessCanceledException;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.util.ProgressIndicatorBase;
import com.intellij.openapi.progress.util.ProgressIndicatorUtils;
import com.intellij.openapi.progress.util.ReadTask;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Disposer;
import com.intellij.util.ConcurrencyUtil;
import com.intellij.util.concurrency.EdtExecutorService;
import com.intellij.util.concurrency.ThreadingAssertions;
import jetbrains.mps.errors.item.IssueKindReportItem.CheckerCategory;
import jetbrains.mps.errors.item.IssueKindReportItem.KindLevel;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.Collection;
import java.util.Collections;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/**
 * A project service to facilitate collecting and reporting of errors, warnings, and other messages, project-wide.
 * For now only issues reported on module/model level are taken into account.  
 *
 * <h3>Technical note</h3>
 * <p>
 *   <ul>
 *     <li>updates are re-scheduled automatically with a default delay of 300ms</li>
 *     <li>the actual work is perfomed in background through a {@link ReadTask}</li>
 *   </ul>
 * </p>
 *
 *
 * @author Fedor Isakov
 */
public interface MissionControl {

  Logger LOG = Logger.getInstance(MissionControl.class);

  static MissionControl getInstance(Project project) {
    return project.getService(MissionControl.class);
  }

  Collection<SModuleReference> lookupProjectModule(IFile descriptionFile);

  SModelReference lookupProjectModel(IFile descriptionFile);

  default ProjectFileLookup lookupProjectFile(IFile descriptionFile) {
    Collection<SModuleReference> moduleReferences = lookupProjectModule(descriptionFile);
    return new ProjectFileLookup(moduleReferences, moduleReferences.isEmpty() ? lookupProjectModel(descriptionFile) : null);
  }

  MessagesContainer getMessagesContainer();

  void refresh();

  class Impl implements MissionControl, Disposable {

    public static CheckerCategory GENERATION_STATUS = new CheckerCategory(KindLevel.PROJECT, "generation status");

    public static final int DEFAULT_DELAY = 300;  // in ms

    private final Project myProject;
    private boolean myDisposed = false;
    private final MyUpdateRunnable myUpdateRunnable;
    private long myUpdateScheduledAt;
    private volatile Future<?> myUpdateRunnableFuture = CompletableFuture.completedFuture(null);
    private volatile ProgressIndicator myBackgroundProgressIndicator;

    private final MessagesContainer myMessagesContainer;
    private final ChangesMonitor myChangesMonitor;
    private final AtomicReference<MissionControlRefreshRequest> myRefreshRequest = new AtomicReference<>(MissionControlRefreshRequest.NONE);

    public Impl(Project project) {
      myProject = project;
      myUpdateRunnable = new MyUpdateRunnable(project);
      myMessagesContainer = new MessagesContainer(myProject);
      Disposer.register(this, myMessagesContainer);
      myChangesMonitor = new ChangesMonitor(project, myMessagesContainer);
      Disposer.register(this, myChangesMonitor);
      Disposer.register(this, () -> {
        myUpdateRunnable.clearOnDispose();
        stopAndRestartUpdate(false);
        myDisposed = true;
      });
      ApplicationManager.getApplication().executeOnPooledThread(() -> {
        // this instantiates the service
        MissionControl missionControl = MissionControl.getInstance(project);
        // start update loop
        ((Impl) missionControl).stopAndRestartUpdate(true);
      });
    }

    @Override
    public synchronized void dispose() {
      myUpdateRunnableFuture.cancel(true);
    }

    public boolean isDisposed() {
      return myDisposed;
    }

    @Override
    public Collection<SModuleReference> lookupProjectModule(IFile descriptionFile) {
      return myChangesMonitor.lookupProjectModule(descriptionFile);
    }

    @Override
    public SModelReference lookupProjectModel(IFile descriptionFile) {
      return myChangesMonitor.lookupProjectModel(descriptionFile);
    }

    @Override
    public ProjectFileLookup lookupProjectFile(IFile descriptionFile) {
      return myChangesMonitor.lookupProjectFile(descriptionFile);
    }

    @Override
    public MessagesContainer getMessagesContainer() {
      return myMessagesContainer;
    }

    @Override
    public void refresh() {
      myChangesMonitor.refresh();
    }

    public synchronized void stopAndRestartUpdate(boolean restart) {
      if (myDisposed || myProject.isDisposed() || myProject.getMessageBus().isDisposed()) return;

      cancelBackgroundTask();

      long delay = TimeUnit.MILLISECONDS.toNanos(DEFAULT_DELAY);
      myUpdateScheduledAt = System.nanoTime() + delay;

      // optimisation: this check is to avoid too many re-schedules in case of thousands of event spikes
      boolean isDone = myUpdateRunnableFuture.isDone();
      if (isDone && restart) {
        scheduleUpdateRunnable(delay);
      }
    }

    private synchronized void scheduleUpdateRunnable(long delayNanos) {
      rethrowExceptionIfDone(myUpdateRunnableFuture);
      myUpdateRunnableFuture = EdtExecutorService.getScheduledExecutorInstance().schedule(myUpdateRunnable, delayNanos, TimeUnit.NANOSECONDS);
    }

    private void cancelBackgroundTask() {
      ProgressIndicator progressIndicator = myBackgroundProgressIndicator;
      if (progressIndicator != null && !progressIndicator.isCanceled()) {
        progressIndicator.cancel();
      }
    }

    private void submitInBackground() {
      myBackgroundProgressIndicator = new ProgressIndicatorBase();
      CompletableFuture<?> collectErrorsFuture = ProgressIndicatorUtils.scheduleWithWriteActionPriority(myBackgroundProgressIndicator, new CollectErrorsTask());
      collectErrorsFuture.whenComplete((__, ___) -> stopAndRestartUpdate(true));
    }

    private static void doUpdate(Project project) {
      ThreadingAssertions.assertEventDispatchThread();

      MissionControl.Impl instance;
      if (project == null ||
          project.isDefault() ||
          !project.isInitialized() ||
          project.isDisposed() ||
          (instance = (Impl) MissionControl.getInstance(project)).isDisposed()) {
        return;
      }

      if (PowerSaveMode.isEnabled()) {
        // FIXME this terminates the update loop, ensure it is re-started when PowerSaveMode is disabled
        return;
      }

      // FIXME: check if the job is underway

      synchronized (instance) {
        // process results of previous runs
        MissionControlRefreshRequest refreshRequest = instance.myRefreshRequest.getAndSet(MissionControlRefreshRequest.NONE);
        if (refreshRequest != MissionControlRefreshRequest.NONE) {
          if (LOG.isDebugEnabled()) {
            LOG.debug("dispatching refresh request");
          }
          MissionControlListener listener = instance.myProject.getMessageBus().syncPublisher(MissionControlListener.MISSION_CONTROL_UPDATE);
          ApplicationManager.getApplication().invokeLater(() -> listener.requestReceived(refreshRequest));
        }

        long delay = instance.myUpdateScheduledAt - System.nanoTime();
        if (delay > 0 || DumbService.getInstance(project).isDumb()) {
          instance.scheduleUpdateRunnable(delay);
          return;
        }

        CompletableFuture<Void> future = CompletableFuture.runAsync(instance::submitInBackground);
        future.whenComplete((__, ___) -> rethrowExceptionIfDone(future));
      }
    }

    private static void rethrowExceptionIfDone(Future<?> maybeDone) {
      if (maybeDone.isDone()) {
        ApplicationManager.getApplication().invokeLater(() -> ConcurrencyUtil.manifestExceptionsIn(maybeDone));
      }
    }

    private static class MyUpdateRunnable implements Runnable {

      private Project myProjectToUse;

      public MyUpdateRunnable(Project projectToUse) {
        myProjectToUse = projectToUse;
      }

      @Override
      public void run() {
        doUpdate(myProjectToUse);
      }

      private void clearOnDispose() {
        // let's help GC
        this.myProjectToUse = null;
      }
    }

    private class CollectErrorsTask extends ReadTask {

      @Override
      public void computeInReadAction(@NotNull ProgressIndicator indicator) throws ProcessCanceledException {
        if (isDisposed() || indicator.isCanceled()) return;
        MissionControlRefreshRequest updateRequest = ProjectHelper.fromIdeaProject(myProject)
                                                                  .getModelAccess()
                                                                  .computeReadAction(() -> myChangesMonitor.pumpQueue(myMessagesContainer, indicator));
        if (!(myRefreshRequest.compareAndSet(MissionControlRefreshRequest.NONE, updateRequest))) {
          throw new IllegalStateException("Unexpected state of update request");
        }
      }

      @Override
      public void onCanceled(@NotNull ProgressIndicator indicator) {
      }
    }

  }

  final class ProjectFileLookup {
    private final Collection<SModuleReference> myModuleReferences;
    private final SModelReference myModelReference;

    ProjectFileLookup(Collection<SModuleReference> moduleReferences, SModelReference modelReference) {
      myModuleReferences = moduleReferences;
      myModelReference = modelReference;
    }

    public Collection<SModuleReference> getModuleReferences() {
      return myModuleReferences;
    }

    public SModelReference getModelReference() {
      return myModelReference;
    }
  }

  /**
   * Dummy implementation for tests. 
   */
  class TestImpl implements MissionControl, Disposable {

    private final MessagesContainer myMessagesContainer;

    public TestImpl(Project project) {
      myMessagesContainer = new MessagesContainer(project);
    }

    @Override
    public void dispose() {

    }

    @Override
    public Collection<SModuleReference> lookupProjectModule(IFile descriptionFile) {
      return Collections.emptyList();
    }

    @Override
    public SModelReference lookupProjectModel(IFile descriptionFile) {
      return null;
    }

    @Override
    public MessagesContainer getMessagesContainer() {
      return myMessagesContainer;
    }

    @Override
    public void refresh() {
      throw new UnsupportedOperationException();
    }
  }
}
