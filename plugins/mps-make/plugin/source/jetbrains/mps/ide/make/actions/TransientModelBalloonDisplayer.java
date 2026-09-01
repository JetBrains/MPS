/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.ide.make.actions;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.wm.StatusBar;
import com.intellij.notification.impl.NotificationsConfigurationImpl;
import com.intellij.notification.NotificationDisplayType;
import com.intellij.openapi.ui.popup.BalloonBuilder;
import com.intellij.openapi.ui.popup.JBPopupFactory;
import com.intellij.openapi.ui.MessageType;
import com.intellij.openapi.ui.popup.Balloon;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.wm.StatusBarWidget;
import com.intellij.openapi.wm.WindowManager;
import java.awt.Component;
import javax.swing.JRootPane;
import javax.swing.SwingUtilities;
import java.awt.Container;
import java.awt.Rectangle;
import java.awt.Point;
import com.intellij.openapi.project.Project;
import com.intellij.util.ui.UIUtil;
import java.awt.Dimension;
import java.util.function.Supplier;
import com.intellij.ui.awt.RelativePoint;
import com.intellij.notification.impl.NotificationSettings;
import org.jetbrains.annotations.NotNull;

public final class TransientModelBalloonDisplayer implements Disposable {
  private static final String ID = "Saving Transient Models Is On";
  private final Supplier<StatusBar> myStatusBar;
  private boolean myIsDisposed = false;

  /**
   * The {@code widget} parameter is ignored.
   *
   * @deprecated use {@link #TransientModelBalloonDisplayer(Project)}, the status bar of a project being opened doesn't necessarily exist yet
   */
  @Deprecated
  public TransientModelBalloonDisplayer(StatusBar statusBar, TransientModelsWidget widget) {
    this(statusBar);
  }

  /**
   * @deprecated use {@link #TransientModelBalloonDisplayer(Project)}, the status bar of a project being opened doesn't necessarily exist yet
   */
  @Deprecated
  public TransientModelBalloonDisplayer(StatusBar statusBar) {
    myStatusBar = () -> statusBar;
  }

  public TransientModelBalloonDisplayer(@NotNull Project project) {
    // A project's frame, and hence its status bar, comes to life later than MPSProject gets ready (i.e. later than
    // the moment we are instantiated at), therefore we look the status bar up on demand rather than capture it here.
    myStatusBar = () -> WindowManager.getInstance().getStatusBar(project);
  }

  @Override
  public void dispose() {
    // this class has to be Disposable as it serves a parent for a disposable Balloon
    myIsDisposed = true;
  }

  /*package*/ void showBalloon() {
    if (myIsDisposed) {
      return;
    }
    // Assumes EDT
    StatusBar statusBar = myStatusBar.get();
    if (statusBar == null) {
      // there's no frame for the project (yet), or we are headless - nothing to anchor the balloon to
      return;
    }
    boolean sticky = NotificationsConfigurationImpl.getSettings(ID).getDisplayType() == NotificationDisplayType.STICKY_BALLOON;
    BalloonBuilder builder = JBPopupFactory.getInstance().createHtmlTextBalloonBuilder("Saving transient models is on. This may slow down generation.", MessageType.WARNING, null).setHideOnAction(!(sticky)).setHideOnClickOutside(!(sticky)).setHideOnKeyOutside(!(sticky));
    if (!(sticky)) {
      builder.setFadeoutTime(3000);
    }
    final Balloon balloon = builder.createBalloon();

    Disposer.register(this, balloon);

    StatusBarWidget widget = statusBar.getWidget("SaveTransientModels");
    Component component = (widget instanceof TransientModelsWidget ? ((TransientModelsWidget) widget).getComponent() : null);
    if (component != null && component.isShowing()) {
      showForComponent(component, balloon);
    } else {
      component = statusBar.getComponent();
      if (component != null && component.isShowing()) {
        showForComponent(component, balloon);
      } else {
        final JRootPane rootPane = SwingUtilities.getRootPane(component);
        if (rootPane != null && rootPane.isShowing()) {
          final Container contentPane = rootPane.getContentPane();
          final Rectangle bounds = contentPane.getBounds();
          final Point target = UIUtil.getCenterPoint(bounds, new Dimension(1, 1));
          target.y = bounds.height - 3;
          balloon.show(new RelativePoint(contentPane, target), Balloon.Position.above);
        }
      }
    }
  }

  private void showForComponent(Component component, Balloon ballon) {
    int offset = component.getHeight() / 2;
    Point point = new Point(component.getWidth() - offset, component.getHeight() - offset);
    ballon.show(new RelativePoint(component, point), Balloon.Position.above);
  }

  public static boolean isPopupShown() {
    if (!(NotificationsConfigurationImpl.getInstanceImpl().SHOW_BALLOONS)) {
      return false;
    }
    NotificationDisplayType displayType = NotificationsConfigurationImpl.getSettings(ID).getDisplayType();
    return displayType == NotificationDisplayType.BALLOON || displayType == NotificationDisplayType.STICKY_BALLOON;
  }

  public static void setShowPopup(boolean show) {
    NotificationSettings settings = NotificationsConfigurationImpl.getSettings(ID);
    settings.withDisplayType((show ? NotificationDisplayType.BALLOON : NotificationDisplayType.NONE));
  }
}
