/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.ide.make.actions;

import jetbrains.mps.project.MPSProject;
import com.intellij.openapi.Disposable;
import jetbrains.mps.generator.IModifiableGenerationSettings;
import jetbrains.mps.make.IMakeNotificationListener;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.wm.StatusBar;
import com.intellij.openapi.wm.WindowManager;
import jetbrains.mps.generator.GenerationSettingsProvider;
import jetbrains.mps.make.MakeServiceComponent;
import jetbrains.mps.ide.ThreadUtils;
import com.intellij.openapi.wm.StatusBarWidget;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.make.MakeNotification;
import jetbrains.mps.project.ProjectLifecycleListener;
import org.jetbrains.annotations.NotNull;

public class TransientModelsNotification {
  private final MPSProject myProject;
  private Disposable myRootDispose;
  private TransientModelBalloonDisplayer myDisplayer;
  private final IModifiableGenerationSettings.Listener mySettingsListener = new IModifiableGenerationSettings.Listener() {
    public void settingsChanged() {
      // notification not necessarily comes in EDT
      updateWidgetLater();
    }
  };
  private final IMakeNotificationListener myMakeNotificationListener = new MyMakeNotificationListener();

  public TransientModelsNotification(final MPSProject project) {
    myProject = project;
  }

  public void projectOpened() {
    myRootDispose = Disposer.newDisposable("notify-transients");
    final GenerationSettingsProvider genSettings = myProject.getComponent(GenerationSettingsProvider.class);

    // Note, we are notified as soon as MPSProject is ready, which happens well before the project gets its
    // IDEA frame (and thus a status bar), hence the displayer has to find the status bar when it needs one.
    myDisplayer = new TransientModelBalloonDisplayer(myProject.getProject());
    Disposer.register(myRootDispose, myDisplayer);
    genSettings.addSettingsListener(mySettingsListener);
    myProject.getComponent(MakeServiceComponent.class).addListener(myMakeNotificationListener);
    updateWidgetLater();
  }

  public void projectClosed() {
    myProject.getComponent(MakeServiceComponent.class).removeListener(myMakeNotificationListener);
    myProject.getComponent(GenerationSettingsProvider.class).removeSettingsListener(mySettingsListener);
    // widget registered with Disposable get automatically removed on dispose
    Disposer.dispose(myRootDispose);
    myRootDispose = null;
    myDisplayer = null;
  }

  /*package*/ void updateWidgetLater() {
    ThreadUtils.runInUIThreadNoWait(() -> {
      StatusBar statusBar = WindowManager.getInstance().getStatusBar(myProject.getProject());
      if (statusBar != null) {
        StatusBarWidget widget = statusBar.getWidget("SaveTransientModels");
        if (widget instanceof TransientModelsWidget) {
          ((TransientModelsWidget) widget).update();
        }
      }
    });
  }

  /*package*/ void showBalloonLater() {
    GenerationSettingsProvider sp = myProject.getComponent(GenerationSettingsProvider.class);
    if (!(sp.getGenerationSettings().isSaveTransientModels()) || !(TransientModelBalloonDisplayer.isPopupShown())) {
      return;
    }
    ThreadUtils.runInUIThreadNoWait(() -> {
      TransientModelBalloonDisplayer displayer = myDisplayer;
      if (displayer != null) {
        displayer.showBalloon();
      }
    });
  }

  /*package*/ void selectTransientsFolderLater() {
    GenerationSettingsProvider sp = myProject.getComponent(GenerationSettingsProvider.class);
    if (!(sp.getGenerationSettings().isSaveTransientModels()) || !(TransientModelBalloonDisplayer.isPopupShown())) {
      return;
    }
    ThreadUtils.runInUIThreadNoWait(() -> ProjectPane.getInstance(myProject).expandTransientsFolder());
  }

  private class MyMakeNotificationListener implements IMakeNotificationListener {
    private volatile boolean mySessionJustOpened;

    @Override
    public void scriptAboutToStart(MakeNotification notification) {
      if (mySessionJustOpened) {
        showBalloonLater();
        mySessionJustOpened = false;
      }
    }
    @Override
    public void sessionOpened(MakeNotification notification) {
      mySessionJustOpened = true;
    }
    @Override
    public void sessionClosed(MakeNotification notification) {
      mySessionJustOpened = false;
      if (myProject == notification.getProject()) {
        selectTransientsFolderLater();
      }
    }
  }

  public static final class Plug implements ProjectLifecycleListener {
    @Override
    public void projectReady(@NotNull MPSProject project, @NotNull Context context) {
      TransientModelsNotification tmn = new TransientModelsNotification(project);
      context.keep(TransientModelsNotification.class, tmn);
      tmn.projectOpened();
    }

    @Override
    public void projectDiscarded(@NotNull MPSProject project, @NotNull Context context) {
      TransientModelsNotification tmn = context.discard(TransientModelsNotification.class);
      if (tmn != null) {
        tmn.projectClosed();
      }
    }
  }
}
