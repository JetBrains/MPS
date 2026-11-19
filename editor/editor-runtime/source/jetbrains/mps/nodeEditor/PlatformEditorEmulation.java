/*
 * Copyright 2000-2021 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.nodeEditor;

import com.intellij.codeInsight.hint.TooltipController;
import com.intellij.codeInsight.hint.TooltipGroup;
import com.intellij.codeInsight.hint.TooltipRenderer;
import com.intellij.ide.DataManager;
import com.intellij.openapi.Disposable;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.editor.Caret;
import com.intellij.openapi.editor.CaretAction;
import com.intellij.openapi.editor.CaretActionListener;
import com.intellij.openapi.editor.CaretModel;
import com.intellij.openapi.editor.CaretState;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.editor.Editor;
import com.intellij.openapi.editor.EditorGutter;
import com.intellij.openapi.editor.EditorKind;
import com.intellij.openapi.editor.EditorSettings;
import com.intellij.openapi.editor.FoldingModel;
import com.intellij.openapi.editor.IndentsModel;
import com.intellij.openapi.editor.InlayModel;
import com.intellij.openapi.editor.LogicalPosition;
import com.intellij.openapi.editor.RangeMarker;
import com.intellij.openapi.editor.ScrollingModel;
import com.intellij.openapi.editor.SelectionModel;
import com.intellij.openapi.editor.SoftWrapModel;
import com.intellij.openapi.editor.VisualPosition;
import com.intellij.openapi.editor.colors.EditorColorsScheme;
import com.intellij.openapi.editor.event.CaretListener;
import com.intellij.openapi.editor.event.EditorMouseEvent;
import com.intellij.openapi.editor.event.EditorMouseEventArea;
import com.intellij.openapi.editor.event.EditorMouseListener;
import com.intellij.openapi.editor.event.EditorMouseMotionListener;
import com.intellij.openapi.editor.event.SelectionListener;
import com.intellij.openapi.editor.markup.MarkupModel;
import com.intellij.openapi.editor.markup.TextAttributes;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Key;
import com.intellij.openapi.util.NlsSafe;
import com.intellij.openapi.wm.impl.IdeRootPane;
import com.intellij.ui.HintHint;
import com.intellij.ui.awt.RelativePoint;
import com.intellij.util.containers.ContainerUtil;
import com.intellij.util.ui.accessibility.ScreenReader;
import jetbrains.mps.editor.runtime.DocumentationProvider;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.nodeEditor.documentation.MPSDocumentationManager;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.smodel.CancellableReadAction;
import jetbrains.mps.util.Reference;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.JComponent;
import javax.swing.JScrollPane;
import javax.swing.border.Border;
import java.awt.Component;
import java.awt.Insets;
import java.awt.Point;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionAdapter;
import java.awt.event.MouseMotionListener;
import java.awt.geom.Point2D;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class PlatformEditorEmulation implements Editor {
  private final EditorComponent myEditorComponent;
  private List<EditorMouseListener> myMouseListeners = ContainerUtil.createLockFreeCopyOnWriteList();
  private final PlatformScrollingModelEmulation myScrollingModel;
  private final MouseMotionListener myMouseMotionAdapter = new MyMouseMotionAdapter();
  private final MouseListener myMouseListener = new MyMouseAdapter();
  private HintPopupController myHintPopupController = new HintPopupController(this::showInfoToolTip);

  PlatformEditorEmulation(@NotNull EditorComponent editorComponent) {
    myEditorComponent = editorComponent;
    myScrollingModel = new PlatformScrollingModelEmulation(this);
  }

  public void installListeners(Component owner) {
    owner.addMouseListener(myMouseListener);
    owner.addMouseMotionListener(myMouseMotionAdapter);
    myHintPopupController.installListeners(owner);
  }

  public void uninstallListeners(Component owner) {
    owner.removeMouseListener(myMouseListener);
    owner.removeMouseMotionListener(myMouseMotionAdapter);
    myHintPopupController.uninstallListeners(owner);
  }

  MouseMotionListener getMouseMotionListener() {
    return myMouseMotionAdapter;
  }

  MouseListener getMouseListener() {
    return myMouseListener;
  }

  private class MyMouseMotionAdapter extends MouseMotionAdapter {
  }

  JScrollPane getScrollPane() {
    return myEditorComponent.getScrollPane();
  }

  @Override
  public @NotNull
  Document getDocument() {
    return new Document() {
      @Override
      public @NotNull
      @NlsSafe CharSequence getImmutableCharSequence() {
        return null;
      }

      @Override
      public int getLineCount() {
        return 0;
      }

      @Override
      public int getLineNumber(int offset) {
        return 0;
      }

      @Override
      public int getLineStartOffset(int line) {
        return 0;
      }

      @Override
      public int getLineEndOffset(int line) {
        return 0;
      }

      @Override
      public void insertString(int offset, @NonNls @NotNull CharSequence s) {

      }

      @Override
      public void deleteString(int startOffset, int endOffset) {

      }

      @Override
      public void replaceString(int startOffset, int endOffset, @NlsSafe @NotNull CharSequence s) {

      }

      @Override
      public boolean isWritable() {
        return !myEditorComponent.isReadOnly();
      }

      @Override
      public long getModificationStamp() {
        return 0;
      }

      @Override
      public @NotNull
      RangeMarker createRangeMarker(int startOffset, int endOffset, boolean surviveOnExternalChange) {
        return null;
      }

      @Override
      public @NotNull
      RangeMarker createGuardedBlock(int startOffset, int endOffset) {
        return null;
      }

      @Override
      public void setText(@NotNull CharSequence text) {

      }

      @Override
      public <T> T getUserData(@NotNull Key<T> key) {
        return null;
      }

      @Override
      public <T> void putUserData(@NotNull Key<T> key, @Nullable T value) {

      }
    };
  }

  @Override
  public boolean isViewer() {
    return false;
  }

  @Override
  public @NotNull
  JComponent getComponent() {
    return myEditorComponent.getExternalComponent();
  }

  @Override
  public @NotNull
  JComponent getContentComponent() {
    return myEditorComponent;
  }

  @Override
  public void setBorder(@Nullable Border border) {

  }

  @Override
  public Insets getInsets() {
    return null;
  }

  @Override
  public @NotNull
  SelectionModel getSelectionModel() {
    return new SelectionModel() {
      @Override
      public @NotNull
      Editor getEditor() {
        return PlatformEditorEmulation.this;
      }

      @Override
      public void addSelectionListener(@NotNull SelectionListener listener) {

      }

      @Override
      public void removeSelectionListener(@NotNull SelectionListener listener) {

      }

      @Override
      public void copySelectionToClipboard() {

      }

      @Override
      public void setBlockSelection(@NotNull LogicalPosition blockStart, @NotNull LogicalPosition blockEnd) {

      }

      @Override
      public int[] getBlockSelectionStarts() {
        return new int[0];
      }

      @Override
      public int[] getBlockSelectionEnds() {
        return new int[0];
      }

      @Override
      public TextAttributes getTextAttributes() {
        return null;
      }
    };
  }

  @Override
  public @NotNull
  MarkupModel getMarkupModel() {
    return null;
  }

  @Override
  public @NotNull
  FoldingModel getFoldingModel() {
    return null;
  }

  @Override
  public @NotNull
  ScrollingModel getScrollingModel() {
    return myScrollingModel;
  }

  @Override
  public @NotNull
  CaretModel getCaretModel() {
    return new CaretModel() {
      @Override
      public void addCaretListener(@NotNull CaretListener listener) {

      }

      @Override
      public void removeCaretListener(@NotNull CaretListener listener) {

      }

      @Override
      public TextAttributes getTextAttributes() {
        return null;
      }

      @Override
      public boolean supportsMultipleCarets() {
        return false;
      }

      @Override
      public int getMaxCaretCount() {
        return 0;
      }

      @Override
      public @NotNull
      Caret getCurrentCaret() {
        return null;
      }

      @Override
      public @NotNull
      Caret getPrimaryCaret() {
        return null;
      }

      @Override
      public int getCaretCount() {
        return 0;
      }

      @Override
      public @NotNull
      List<Caret> getAllCarets() {
        return null;
      }

      @Override
      public @Nullable
      Caret getCaretAt(@NotNull VisualPosition pos) {
        return null;
      }

      @Override
      public @Nullable
      Caret addCaret(@NotNull VisualPosition pos, boolean makePrimary) {
        return null;
      }

      @Override
      public @Nullable
      Caret addCaret(@NotNull LogicalPosition pos, boolean makePrimary) {
        return null;
      }

      @Override
      public boolean removeCaret(@NotNull Caret caret) {
        return false;
      }

      @Override
      public void removeSecondaryCarets() {

      }

      @Override
      public void setCaretsAndSelections(@NotNull List<? extends CaretState> caretStates) {

      }

      @Override
      public void setCaretsAndSelections(@NotNull List<? extends CaretState> caretStates, boolean updateSystemSelection) {

      }

      @Override
      public @NotNull
      List<CaretState> getCaretsAndSelections() {
        return null;
      }

      @Override
      public void runForEachCaret(@NotNull CaretAction action) {

      }

      @Override
      public void runForEachCaret(@NotNull CaretAction action, boolean reverseOrder) {

      }

      @Override
      public void addCaretActionListener(@NotNull CaretActionListener listener, @NotNull Disposable disposable) {

      }

      @Override
      public void runBatchCaretOperation(@NotNull Runnable runnable) {

      }
    };
  }

  @Override
  public @NotNull
  SoftWrapModel getSoftWrapModel() {
    return null;
  }

  @Override
  public @NotNull
  EditorSettings getSettings() {
    return null;
  }

  @Override
  public @NotNull
  EditorColorsScheme getColorsScheme() {
    return null;
  }

  @Override
  public int getLineHeight() {
    return 0;
  }

  @Override
  public @NotNull
  Point logicalPositionToXY(@NotNull LogicalPosition pos) {
    return null;
  }

  @Override
  public int logicalPositionToOffset(@NotNull LogicalPosition pos) {
    return 0;
  }

  @Override
  public @NotNull
  VisualPosition logicalToVisualPosition(@NotNull LogicalPosition logicalPos) {
    return null;
  }

  @Override
  public @NotNull
  Point visualPositionToXY(@NotNull VisualPosition visible) {
    return null;
  }

  @Override
  public @NotNull
  Point2D visualPositionToPoint2D(@NotNull VisualPosition pos) {
    return null;
  }

  @Override
  public @NotNull
  LogicalPosition visualToLogicalPosition(@NotNull VisualPosition visiblePos) {
    return null;
  }

  @Override
  public @NotNull
  LogicalPosition offsetToLogicalPosition(int offset) {
    return null;
  }

  @Override
  public @NotNull
  VisualPosition offsetToVisualPosition(int offset) {
    return null;
  }

  @Override
  public @NotNull
  VisualPosition offsetToVisualPosition(int offset, boolean leanForward, boolean beforeSoftWrap) {
    return null;
  }

  @Override
  public @NotNull
  LogicalPosition xyToLogicalPosition(@NotNull Point p) {
    return null;
  }

  @Override
  public @NotNull
  VisualPosition xyToVisualPosition(@NotNull Point p) {
    return null;
  }

  @Override
  public @NotNull
  VisualPosition xyToVisualPosition(@NotNull Point2D p) {
    return null;
  }

  private class MyMouseAdapter extends MouseAdapter {

    private MyMouseAdapter() {
    }

    private EditorMouseEvent createEditorMouseEvent(MouseEvent e) {
      return new EditorMouseEvent(PlatformEditorEmulation.this, e, EditorMouseEventArea.EDITING_AREA);
    }

    @Override
    public void mouseEntered(MouseEvent e) {
      EditorMouseEvent editorMouseEvent = createEditorMouseEvent(e);
      myMouseListeners.forEach(it -> it.mouseEntered(editorMouseEvent));
    }

    @Override
    public void mouseExited(MouseEvent e) {
      EditorMouseEvent editorMouseEvent = createEditorMouseEvent(e);
      myMouseListeners.forEach(it -> it.mouseExited(editorMouseEvent));
    }

    @Override
    public void mousePressed(MouseEvent e) {
      EditorMouseEvent editorMouseEvent = createEditorMouseEvent(e);
      myMouseListeners.forEach(it -> it.mousePressed(editorMouseEvent));
    }

    @Override
    public void mouseClicked(MouseEvent e) {
      MPSDocumentationManager.getInstance().cancelAll();
      EditorMouseEvent editorMouseEvent = createEditorMouseEvent(e);
      myMouseListeners.forEach(it -> it.mouseClicked(editorMouseEvent));
    }

    @Override
    public void mouseReleased(MouseEvent e) {
      EditorMouseEvent editorMouseEvent = createEditorMouseEvent(e);
      myMouseListeners.forEach(it -> it.mouseReleased(editorMouseEvent));
    }
  }

  @Override
  public void addEditorMouseListener(@NotNull EditorMouseListener listener) {
    myMouseListeners.add(listener);
  }

  @Override
  public void removeEditorMouseListener(@NotNull EditorMouseListener listener) {
    myMouseListeners.remove(listener);
  }

  @Override
  public void addEditorMouseMotionListener(@NotNull EditorMouseMotionListener listener) {

  }

  @Override
  public void removeEditorMouseMotionListener(@NotNull EditorMouseMotionListener listener) {

  }

  @Override
  public boolean isDisposed() {
    return false;
  }

  @Override
  public @Nullable
  Project getProject() {
    DataContext dataContext = DataManager.getInstance().getDataContext(myEditorComponent.getParent());
    return CommonDataKeys.PROJECT.getData(dataContext);
  }

  @Override
  public boolean isInsertMode() {
    return false;
  }

  @Override
  public boolean isColumnMode() {
    return false;
  }

  @Override
  public boolean isOneLineMode() {
    return false;
  }

  @Override
  public @NotNull
  EditorGutter getGutter() {
    return null;
  }

  @Override
  public @Nullable
  EditorMouseEventArea getMouseEventArea(@NotNull MouseEvent e) {
    return null;
  }

  @Override
  public void setHeaderComponent(@Nullable JComponent header) {

  }

  @Override
  public boolean hasHeaderComponent() {
    return false;
  }

  @Override
  public @Nullable
  JComponent getHeaderComponent() {
    return null;
  }

  @Override
  public @NotNull
  IndentsModel getIndentsModel() {
    return null;
  }

  @Override
  public @NotNull
  InlayModel getInlayModel() {
    return null;
  }

  @Override
  public @NotNull
  EditorKind getEditorKind() {
    return EditorKind.MAIN_EDITOR;
  }

  @Override
  public <T> T getUserData(@NotNull Key<T> key) {
    return null;
  }

  @Override
  public <T> void putUserData(@NotNull Key<T> key, @Nullable T value) {

  }

  /**
   * This implementation of tooltips has been superseded with the one relying on MPSDocumentationManager
   * @param e
   */
  @Deprecated(forRemoval = true)
  private void showToolTip(@NotNull MouseEvent e) {

    boolean isGutter = e.getSource() == myEditorComponent.getLeftEditorHighlighter();
    EditorTooltipProvider tooltipProvider =
        isGutter ? myEditorComponent.getLeftEditorHighlighter().getTooltipProvider() : myEditorComponent.getTooltipProvider();

    if (tooltipProvider == null) {
      return;
    }
    TooltipController controller = TooltipController.getInstance();
    TooltipRenderer tr = tooltipProvider.getTooltipRenderer(e);

    if (tr == null || this.isDisposed()) {
      controller.cancelTooltip(tooltipProvider.getTooltipGroup(), null, false);
      return;
    }
    if (getComponent().getRootPane() == null) {
      return;
    }
    JComponent component = isGutter ? myEditorComponent.getLeftEditorHighlighter() : myEditorComponent;
    RelativePoint showPoint = new RelativePoint(component, e.getPoint());
    HintHint hint = new HintHint(component, e.getPoint())
        .setAwtTooltip(true)
        .setPreferredPosition(tooltipProvider.getPreferredPosition())
        .setRequestFocus(ScreenReader.isActive());
    controller.showTooltipByMouseMove(this, showPoint, tr, false, tooltipProvider.getTooltipGroup(), hint);
  }

  public void cancelShowInfoToolTipRequest() {
    myHintPopupController.cancelAllRequests();
  }

  private void showInfoToolTip(@NotNull MouseEvent event) {
    if (getComponent().getRootPane() == null || MPSDocumentationManager.getInstance().isQuickDocPopupShown()) {
      return;
    }
    Project project = ProjectHelper.toIdeaProject(ProjectHelper.getProject(myEditorComponent.getRepository()));
    // Do not show the documentation popup/tool window when inside a dialog or when the editor is not backed by a project repository
    // (e.g. VCS diff editors over temporary repositories). Editor tooltips (like change descriptions) are still shown.
    DocumentationProvider provider =
        (project != null && getComponent().getRootPane() instanceof IdeRootPane) ? getDocumentationProvider(event) : null;

    boolean isGutter = event.getSource() == myEditorComponent.getLeftEditorHighlighter();
    final EditorTooltipProvider tooltipProvider =
        isGutter ? myEditorComponent.getLeftEditorHighlighter().getTooltipProvider() : myEditorComponent.getTooltipProvider();
    if (tooltipProvider == null) {
      // TODO how is this possible?
      return;
    }

    final TooltipRenderer tooltipRenderer = tooltipProvider.getTooltipRenderer(event);
    final TooltipGroup tooltipGroup = tooltipProvider.getTooltipGroup();
    if ((tooltipRenderer == null && (provider == null || !provider.hasDocumentation())) || this.isDisposed()) {
      return;
    }

    final RelativePoint showPoint = getShowPoint(event, isGutter);
    myHintPopupController.showInfoToolTip(project, this, provider, tooltipRenderer, tooltipGroup, showPoint);
  }

  @NotNull
  private RelativePoint getShowPoint(@NotNull MouseEvent event, boolean isGutter) {
    EditorCell hoverCell = getEditorCellAtXY(event.getX(), event.getY());
    int yCoordinate = hoverCell == null ? event.getY() : hoverCell.getBottom() - 1;
    Point pointToShow = new Point(event.getX(), yCoordinate);
    return new RelativePoint(isGutter ? myEditorComponent.getLeftEditorHighlighter() : myEditorComponent, pointToShow);
  }

  private EditorCell getEditorCellAtXY(int x, int y) {
    final Reference<EditorCell> rv = new Reference<>(null);
    myEditorComponent.getRepository().getModelAccess().runReadAction(new CancellableReadAction() {
      @Override
      protected void execute() {
        if (isDisposed()) {
          return;
        }
        jetbrains.mps.openapi.editor.cells.EditorCell cell = myEditorComponent.getRootCell().findLeaf(x, y);
        rv.set(cell);
      }
    });
    return rv.get();
  }
  
  @Nullable
  private DocumentationProvider getDocumentationProvider(MouseEvent event) {
    final Reference<DocumentationProvider> providerRef = new Reference<>(null);
    myEditorComponent.getRepository().getModelAccess().runReadAction(new CancellableReadAction() {
      @Override
      protected void execute() {
        if (isDisposed()) {
          return;
        }
        final jetbrains.mps.nodeEditor.cells.EditorCell rootCell = myEditorComponent.getRootCell();
        if (rootCell == null) {
          return;
        }
        jetbrains.mps.openapi.editor.cells.EditorCell cell = rootCell.findLeaf(event.getX(), event.getY());
        if (cell == null) {
          return;
        }
        DocumentationProvider provider = new DocumentationProvider(myEditorComponent.getRepository(), cell);
        providerRef.set(provider);
      }
    });
    return providerRef.get();
  }

  public void release() {
    myScrollingModel.dispose();
  }
}
