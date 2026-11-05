/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.leftHighlighter;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;

import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * User: Alexander Shatalin
 * Date: 02.03.2010
 */
public class FoldingButtonsPainter extends AbstractFoldingAreaPainter {
  private final List<FoldingButton> myFoldingButtons = new ArrayList<>();
  private FoldingButton myButtonUnderMouse;

  FoldingButtonsPainter(LeftEditorHighlighter leftHighlighter) {
    super(leftHighlighter);
  }

  @Override
  public void editorRebuilt() {
    myFoldingButtons.clear();
    EditorComponent editorComponent = getEditorComponent();
    for (EditorCell_Collection foldable : editorComponent.getCellTracker().getFoldableCells()) {
      assert foldable.getEditorComponent() == editorComponent : "cell must be from my editor";
      myFoldingButtons.add(new FoldingButton(foldable));
    }
  }

  @Override
  public void relayout() {
    doRelayout();
  }

  private void doRelayout() {
    Map<Integer, FoldingButton> occupiedSlot = new HashMap<>();
    for (Iterator<FoldingButton> i = myFoldingButtons.iterator(); i.hasNext(); ) {
      FoldingButton button = i.next();
      if (button.relayout()) {
        i.remove();
      } else if (!button.isHidden()) {
        int y1 = button.getY() + FoldingButton.HEIGHT;
        int y2 = button.getY() + button.getHeight();
        occupiedSlot.compute(y1, (k, existing) -> resolveConflict(y1, button, existing));
        occupiedSlot.compute(y2, (k, existing) -> resolveConflict(y2, button, existing));
      }
    }
  }

  private FoldingButton resolveConflict(int y, FoldingButton button, FoldingButton existing) {
    if (existing == null || existing == button) {
      return button;
    }
    if (existing.getHeight() <= button.getHeight()) {
      hideMarker(y, button);
      return existing;
    } else {
      hideMarker(y, existing);
      return button;
    }
  }

  private void hideMarker(int y, FoldingButton button) {
    if (y == button.getY() + FoldingButton.HEIGHT) {
      button.setTopCovered();
    } else {
      button.setBottomCovered();
    }
  }

  @Override
  public int getLeftAreaWidth() {
    return myFoldingButtons.isEmpty() ? 0 : FoldingButton.HALF_WIDTH;
  }

  @Override
  public int getRightAreaWidth() {
    // same as leftAreaWidth
    return getLeftAreaWidth();
  }

  @Override
  public void paintInLocalCoordinates(Graphics g) {
    Rectangle clipBounds = g.getClipBounds();

    if (myButtonUnderMouse != null) {
      if (isVisible(myButtonUnderMouse, clipBounds)) {
        myButtonUnderMouse.paintFeedback(g);
      }
      for (FoldingButton button : myFoldingButtons) {
        if (isVisible(button, clipBounds)) {
          button.paint(g, myButtonUnderMouse.getY() + FoldingButton.HEIGHT, myButtonUnderMouse.getY() + myButtonUnderMouse.getHeight());
        }
      }
      myButtonUnderMouse.paint(g);
    } else {
      for (FoldingButton button : myFoldingButtons) {
        if (isVisible(button, clipBounds)) {
          button.paint(g);
        }
      }
    }
  }

  private boolean isVisible(FoldingButton button, Rectangle clipBounds) {
    return !(clipBounds.y + clipBounds.height < button.getY() ||
        clipBounds.y > button.getY() + button.getHeight() ||
        clipBounds.x + clipBounds.width < -FoldingButton.HALF_WIDTH ||
        clipBounds.x > FoldingButton.HALF_WIDTH);
  }

  @Override
  public void mouseMoved(MouseEvent e) {
    FoldingButton newButtonUnderMouse = getFoldingButtonUnderMouse(e);
    if (newButtonUnderMouse != null) {
      e.consume();
    }
    if (newButtonUnderMouse == myButtonUnderMouse) {
      return;
    }
    if (myButtonUnderMouse != null) {
      myButtonUnderMouse.mouseExited(getLeftHighlighter());
      repaint(myButtonUnderMouse);
    }
    if (newButtonUnderMouse != null) {
      newButtonUnderMouse.mouseEntered(getLeftHighlighter());
      repaint(newButtonUnderMouse);
    }
    myButtonUnderMouse = newButtonUnderMouse;
  }

  @Override
  public void mouseExited(MouseEvent e) {
    if (myButtonUnderMouse != null) {
      myButtonUnderMouse.mouseExited(getLeftHighlighter());
      repaint(myButtonUnderMouse);
      myButtonUnderMouse = null;
    }
  }

  @Override
  public void mousePressed(MouseEvent e) {
    if (e.getButton() != MouseEvent.BUTTON1) {
      return;
    }
    FoldingButton buttonUnderMouse = getFoldingButtonUnderMouse(e);
    if (buttonUnderMouse != null) {
      if (e.getID() == MouseEvent.MOUSE_CLICKED) {
        buttonUnderMouse.activate(e.getY());
      }
      e.consume();
    }
  }

  @Override
  public int getWeight() {
    return 2;
  }

  private FoldingButton getFoldingButtonUnderMouse(MouseEvent e) {
    int x = getLocalXCoordinate(e);
    int y = e.getY();
    for (FoldingButton button : myFoldingButtons) {
      if (button.isInside(x, y)) {
        return button;
      }
    }
    return null;
  }

  private void repaint(FoldingButton buttonUnderMouse) {
    repaint(buttonUnderMouse.getY(), buttonUnderMouse.getHeight());
  }
}
