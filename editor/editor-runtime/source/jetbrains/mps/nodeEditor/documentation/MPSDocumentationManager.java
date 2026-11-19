/*
 * Copyright 2000-2023 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.nodeEditor.documentation;

import com.intellij.codeInsight.hint.HintUtil;
import com.intellij.codeInsight.hint.LineTooltipRenderer;
import com.intellij.codeInsight.hint.TooltipGroup;
import com.intellij.codeInsight.hint.TooltipRenderer;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.editor.Editor;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.util.ProgressIndicatorBase;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.popup.ComponentPopupBuilder;
import com.intellij.openapi.ui.popup.JBPopup;
import com.intellij.openapi.ui.popup.JBPopupFactory;
import com.intellij.reference.SoftReference;
import com.intellij.ui.LightweightHint;
import com.intellij.ui.awt.RelativePoint;
import com.intellij.ui.popup.AbstractPopup;
import com.intellij.util.ui.JBUI;
import jetbrains.mps.editor.runtime.DocumentationProvider;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.documentation.ui.MPSDocumentationPopupUI;
import jetbrains.mps.nodeEditor.documentation.ui.MPSDocumentationUI;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.JComponent;
import javax.swing.JPanel;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Point;
import java.awt.Window;
import java.lang.ref.WeakReference;
import java.util.function.Consumer;


public class MPSDocumentationManager {
  private static final Logger LOG = Logger.getLogger(MPSDocumentationManager.class);
  private WeakReference<JBPopup> myQuickDocPopupReference;
  private WeakReference<JBPopup> myHintPopupReference;
  private ProgressIndicator myCurrentProgress;

  public static MPSDocumentationManager getInstance() {
    return ApplicationManager.getApplication().getService(MPSDocumentationManager.class);
  }

  /**
   * Show quick documentation: either as a popup or in the tool window.
   * Calling this method results in focus being transferred to the documentation UI component.
   */
  public void showQuickDocumentation(Frame owner, Project project, Point location, @NotNull DocumentationProvider provider) {
    if (!provider.hasDocumentation()) {
      LOG.warning("null doc message specified");
      return;
    }
    cancelAll();

    MPSDocumentationUI documentationUI = new MPSDocumentationUI(project, provider);
    if (provider.hasDocumentation() && (MPSDocumentationToolWindowManager.getInstance(project).isVisible() || !EditorSettings.getInstance()
                                                                                                                             .isShowDocumentationPopupFirst())) {
      // redirect to the tool window
      MPSDocumentationToolWindowManager.getInstance(project).showInToolWindow(documentationUI);
      return;
    }

    MPSDocumentationPopupUI popupUI = new MPSDocumentationPopupUI(project, documentationUI);
    ComponentPopupBuilder builder = JBPopupFactory.getInstance()
                                                  .createComponentPopupBuilder(popupUI.getComponent(), popupUI.getPreferableFocusComponent())
                                                  .setProject(project)
                                                  .setResizable(true)
                                                  .setMovable(true)
                                                  .setFocusable(true)
                                                  .setRequestFocus(true)
                                                  .setModalContext(true);
    AbstractPopup popup = (AbstractPopup) builder.createPopup();
    popupUI.setPopup(popup);
    popup.show(owner, location.x, location.y, true);
    myQuickDocPopupReference = new WeakReference<>(popup);
  }

  /**
   * Show hint popup: a joint popup containing the quick doc and the hint components.
   * <p>
   * In case the documentation tool window is already open, don't show the quick doc part,
   * instead update the tool's contents.
   * <p>
   * Does nothing if both {@code docMessage} and {@code tooltipRenderer} are null.
   * <p>
   * The code in {@code continuation} is called after the popup window has been created, so that
   * the caller has a chance to install appropriate callbacks, etc.
   * <p>
   * {@code project} may be null only if {@code provider} is null, i.e. when only the editor tooltip is to be shown.
   */
  public void showHintPopup(@Nullable Project project, Editor editor, @Nullable DocumentationProvider provider, TooltipRenderer tooltipRenderer,
                            TooltipGroup tooltipGroup, RelativePoint showPoint, Consumer<AbstractPopup> continuation) {
    cancelProgress();
    ProgressManager.getInstance().executeProcessUnderProgress(() -> {
      cancelHintPopup();
      if (isQuickDocPopupShown()) {
        // avoid showing two popups
        return;
      }
      DocumentationProvider currentProvider = provider;
      if (currentProvider != null && MPSDocumentationToolWindowManager.getInstance(project).isVisible()) {
        // redirect to the tool window
        MPSDocumentationToolWindowManager.getInstance(project).showInToolWindow(new MPSDocumentationUI(project, currentProvider));
        currentProvider = null;
      }

      JComponent highlightHoverInfo = tooltipRenderer == null
                                      ? null : createHighlightInfoComponent(editor, tooltipRenderer, tooltipGroup);

      MPSDocumentationPopupUI popupUI = currentProvider == null ? null : new MPSDocumentationPopupUI(project, new MPSDocumentationUI(project, provider));
      JComponent documentationHoverInfo = currentProvider == null || !currentProvider.hasDocumentation()
                                          ? null : createQuickDocComponent(highlightHoverInfo != null, popupUI);

      if (highlightHoverInfo == null && documentationHoverInfo == null) {
        return;
      }

      HoverInfo info = new HoverInfo(highlightHoverInfo, documentationHoverInfo);
      AbstractPopup hint = info.createHint(popupUI);
      hint.show(showPoint);

      Window window = hint.getPopupWindow();
      if (window != null) {
        window.setFocusableWindowState(true);
      }

      myHintPopupReference = new WeakReference<>(hint);
      continuation.accept(hint);

    }, myCurrentProgress);
  }

  private @Nullable JComponent createHighlightInfoComponent(@NotNull Editor editor, @Nullable TooltipRenderer tooltipRenderer, TooltipGroup tooltipGroup) {
    if (tooltipRenderer == null) {
      return null;
    }
    // FIXME: how is this hard cast justified?
    LightweightHint hint = ((LineTooltipRenderer) tooltipRenderer).createHint(editor,
                                                                              new Point(),
                                                                              false,
                                                                              tooltipGroup,
                                                                              HintUtil.getInformationHint(),
                                                                              true,
                                                                              true,
                                                                              null);
    return hint.getComponent();
  }


  private @Nullable JComponent createQuickDocComponent(boolean jointPopup, MPSDocumentationPopupUI popupUI) {
    // If the flag is set to false, the documentation popup will not appear on mouse movement. It can only be displayed using the shortcut.
    if (!EditorSettings.getInstance().isShowOnMouseMove()) {
      return null;
    }
    if (jointPopup) {
      popupUI.jointHover();
    }
    return popupUI.getComponent();
  }

  public boolean isQuickDocPopupShown() {
    WeakReference<JBPopup> ref = myQuickDocPopupReference;
    return isPopupShown(ref);
  }

  public boolean isHintPopupShown() {
    WeakReference<JBPopup> ref = myHintPopupReference;
    return isPopupShown(ref);
  }

  private static boolean isPopupShown(WeakReference<JBPopup> ref) {
    JBPopup popup = SoftReference.dereference(ref);
    return popup != null && popup.isVisible();
  }

  public void cancelAll() {
    cancelProgress();
    cancelQuickDocPopup();
    cancelHintPopup();
  }

  private void cancelProgress() {
    if (myCurrentProgress != null) {
      myCurrentProgress.cancel();
      myCurrentProgress = null;
    }
    myCurrentProgress = new ProgressIndicatorBase();
  }

  private void cancelHintPopup() {
    cancelPopup(myHintPopupReference);
    myHintPopupReference = null;
  }

  private void cancelQuickDocPopup() {
    cancelPopup(myQuickDocPopupReference);
    myQuickDocPopupReference = null;
  }

  private void cancelPopup(WeakReference<JBPopup> ref) {
    JBPopup popup = SoftReference.dereference(ref);
    if (popup != null) {
      popup.cancel();
    }
  }

  /**
   * A factory for highlight + doc components to be shown in a popup.
   */
  private static class HoverInfo {
    private final JComponent myHighlightHoverInfo;
    private final JComponent myDocumentationHoverInfo;

    /**
     * Either {@code documentationProvider} or {@code tooltipRenderer} may be null, but not both!
     */
    HoverInfo(@Nullable JComponent highlightHoverInfo, @Nullable JComponent documentationHoverInfo) {
      assert (highlightHoverInfo != null) || (documentationHoverInfo != null);
      myHighlightHoverInfo = highlightHoverInfo;
      myDocumentationHoverInfo = documentationHoverInfo;
    }

    AbstractPopup createHint(@Nullable MPSDocumentationPopupUI popupUI) {
      JComponent component = createComponent();
      assert component != null;
      AbstractPopup popup = createHintPopup(component, popupUI);
      if (popupUI != null) {
        popupUI.setPopup(popup);
      }
      return popup;
    }


    private @NotNull JComponent createComponent() {
      JPanel p = new JPanel(new GridBagLayout());
      GridBagConstraints c = new GridBagConstraints(0, 0, 1, 1, 1, 0, GridBagConstraints.NORTH, GridBagConstraints.HORIZONTAL,
                                                    JBUI.emptyInsets(), 0, 0);
      if (myHighlightHoverInfo != null) {
        p.add(myHighlightHoverInfo, c);
      }
      c.gridy = 1;
      c.weighty = 1;
      c.fill = GridBagConstraints.BOTH;
      if (myDocumentationHoverInfo != null) {
        p.add(myDocumentationHoverInfo, c);
      }
      return p;
    }

    private AbstractPopup createHintPopup(JComponent component, @Nullable MPSDocumentationPopupUI popupUI) {
      JComponent preferableFocusComponent = popupUI == null ? component : popupUI.getPreferableFocusComponent();
      return (AbstractPopup) JBPopupFactory.getInstance()
                                           .createComponentPopupBuilder(component, preferableFocusComponent)
                                           .setRequestFocus(false)
                                           .setFocusable(true)
                                           .setMovable(true)
                                           .setResizable(true)
                                           .createPopup();
    }

  }

}
