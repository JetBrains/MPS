/*
 * Copyright 2000-2024 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.nodeEditor;

import com.intellij.codeInsight.hint.TooltipGroup;
import com.intellij.codeInsight.hint.TooltipRenderer;
import com.intellij.ide.IdeEventQueue;
import com.intellij.openapi.editor.Editor;
import com.intellij.openapi.project.Project;
import com.intellij.ui.awt.RelativePoint;
import com.intellij.util.Alarm;
import com.intellij.util.Alarm.ThreadToUse;
import jetbrains.mps.editor.runtime.DocumentationProvider;
import jetbrains.mps.nodeEditor.documentation.MPSDocumentationManager;
import org.jetbrains.annotations.Nullable;

import java.awt.Component;
import java.awt.Window;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionAdapter;
import java.awt.event.MouseMotionListener;
import java.util.function.Consumer;

/**
 * @author Fedor Isakov
 */
class HintPopupController {
  private final MouseMotionListener myMouseMotionAdapter = new MyMouseMotionAdapter();
  private final MouseListener myMouseListener = new MyMouseAdapter();
  private final KeyListener myKeyListener = new MyKeyListener();
  
  private final Alarm myHoverAlarm = new Alarm(ThreadToUse.SWING_THREAD);
  private final Alarm myMoveAlarm = new Alarm(ThreadToUse.SWING_THREAD);
  private final Consumer<MouseEvent> myShowTooltipHandler;
  private boolean myKeepHintOnMouseMove;
  public HintPopupController(Consumer<MouseEvent> showTooltipHandler) {
    myShowTooltipHandler = showTooltipHandler;
  }

  public void installListeners(Component owner) {
    owner.addMouseListener(myMouseListener);
    owner.addMouseMotionListener(myMouseMotionAdapter);
    if (owner instanceof EditorComponent) {
      owner.addKeyListener(myKeyListener);
    }
  }

  public void uninstallListeners(Component owner) {
    owner.removeMouseListener(myMouseListener);
    owner.removeMouseMotionListener(myMouseMotionAdapter);
    if (owner instanceof EditorComponent) {
      owner.removeKeyListener(myKeyListener);
    }
  }

  protected void cancelAllRequests() {
    myMoveAlarm.cancelAllRequests();
    myHoverAlarm.cancelAllRequests();
  }

  private class MyMouseMotionAdapter extends MouseMotionAdapter {
    @Override
    public void mouseMoved(MouseEvent e) {
      if ((MPSDocumentationManager.getInstance().isHintPopupShown() && myKeepHintOnMouseMove) ||
           MPSDocumentationManager.getInstance().isQuickDocPopupShown())
      {
        myMoveAlarm.cancelAllRequests();
        return;
      }
      // FIXME magic constant 300? 600?
      if (myMoveAlarm.getActiveRequestCount() == 0) {
        myMoveAlarm.addRequest(() -> MPSDocumentationManager.getInstance().cancelAll(), 300);
      }
      myHoverAlarm.cancelAllRequests();
      myHoverAlarm.addRequest(() -> {
        myMoveAlarm.cancelAllRequests();
        myShowTooltipHandler.accept(e);
      }, 600);
    }
  }

  private class MyMouseAdapter extends MouseAdapter {
    @Override
    public void mouseExited(MouseEvent e) {
      myHoverAlarm.cancelAllRequests();
    }

    @Override
    public void mouseClicked(MouseEvent e) {
      MPSDocumentationManager.getInstance().cancelAll();
      }
  }

  private class MyKeyListener extends KeyAdapter {
    @Override
    public void keyTyped(KeyEvent e) {
      MPSDocumentationManager.getInstance().cancelAll();
    }

    @Override
    public void keyPressed(KeyEvent e) {
      if (e.isActionKey()) {
        MPSDocumentationManager.getInstance().cancelAll();
      }
    }

    @Override
    public void keyReleased(KeyEvent e) {
      if (e.isActionKey()) {
        MPSDocumentationManager.getInstance().cancelAll();
      }
    }
  }

  private void setKeepHintOnMouseMove(boolean keep) {
    myKeepHintOnMouseMove = keep;
  }

  public void showInfoToolTip(@Nullable Project project, Editor editor, @Nullable DocumentationProvider provider, TooltipRenderer tooltipRenderer, TooltipGroup tooltipGroup, RelativePoint showPoint) {
    // this clears the hint window on mouse move
    setKeepHintOnMouseMove(false);

    MPSDocumentationManager.getInstance().showHintPopup(project, editor, provider, tooltipRenderer, tooltipGroup, showPoint, (hint) -> {
      Window window = hint.getPopupWindow();
      if (window != null) {
        IdeEventQueue.getInstance().addDispatcher(e -> {
          if (e.getSource() == window) {
            myMoveAlarm.cancelAllRequests();
          }
          if (e.getID() == MouseEvent.MOUSE_PRESSED && e.getSource() == window) {
            setKeepHintOnMouseMove(true);
          }
          return false;
        }, hint);
      }
    });


  }

}
