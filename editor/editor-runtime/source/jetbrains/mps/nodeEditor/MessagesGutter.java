/*
 * Copyright 2003-2022 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor;

import com.intellij.codeInsight.hint.TooltipGroup;
import com.intellij.codeInsight.hint.TooltipRenderer;
import com.intellij.icons.AllIcons.General;
import com.intellij.openapi.editor.colors.CodeInsightColors;
import com.intellij.openapi.editor.colors.EditorColorsManager;
import com.intellij.openapi.editor.impl.EditorImpl;
import com.intellij.openapi.project.Project;
import com.intellij.ui.ColorUtil;
import com.intellij.ui.awt.RelativePoint;
import com.intellij.util.IconUtil;
import com.intellij.util.containers.SortedList;
import com.intellij.util.ui.ButtonlessScrollBarUI;
import com.intellij.util.ui.update.MergingUpdateQueue;
import com.intellij.util.ui.update.Update;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;
import javax.swing.JButton;
import javax.swing.JComponent;
import java.awt.Adjustable;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.awt.geom.AffineTransform;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class MessagesGutter extends ButtonlessScrollBarUI.Transparent implements MouseMotionListener, MouseListener {
  private static final Comparator<GutterMark> EDITOR_MESSAGES_COMPARATOR = (mark, otherMark) -> otherMark.getPriority() != mark.getPriority() ?
                                                                                                otherMark.getPriority() - mark.getPriority() :
                                                                                                otherMark.getStatus().ordinal() - mark.getStatus().ordinal();

  private final EditorComponent myEditorComponent;

  // towards independence from EditorComponent, use it where EC is assumed to be JComponent.
  // this MessagesGutter has to become regular Swing element, with EC-dependent code being separate
  private final JComponent myScrollable;
  private final MyErrorsButton myErrorsButton = new MyErrorsButton();
  private final List<SimpleEditorMessage> myMessages = new CopyOnWriteArrayList<>();
  private List<GutterMark> myGutterMarks = Collections.emptyList();
  private final boolean myRightToLeft;
  private MergingUpdateQueue myUpdateQueue;
  private final Object myUpdateIdentity = new Object();
  private final HintPopupController myHintPopupController;

  public MessagesGutter(EditorComponent editorComponent, boolean rightToLeft) {
    myEditorComponent = editorComponent;
    myScrollable = editorComponent;
    myRightToLeft = rightToLeft;
    myHintPopupController = new HintPopupController(this::showHintToolTip);
  }

  @Override
  protected JButton createDecreaseButton(int orientation) {
    // don't see a reason to expose EditorComponent to MyErrorsButton just for the sake of background color
    // in case we need to react to BG changes in EC scrollable, could use property change listener
    // FWIW, BasicScrollBarUI.createDecreaseButton() set background here and doesn't track its changes, AFAIU.
    myErrorsButton.setBackground(myScrollable.getBackground());
    return myErrorsButton;
  }

  @Override
  protected void installListeners() {
    super.installListeners();
    scrollbar.addMouseListener(this);
    scrollbar.addMouseMotionListener(this);
    myHintPopupController.installListeners(scrollbar);
  }

  @Override
  public void uninstallListeners() {
    myHintPopupController.uninstallListeners(scrollbar);
    scrollbar.removeMouseMotionListener(this);
    scrollbar.removeMouseListener(this);
    super.uninstallListeners();
  }

  //copied from com.intellij.openapi.editor.impl.EditorMarkupModelImpl
  @Override
  protected Color adjustColor(Color c) {
    return isMacOverlayScrollbar() ? super.adjustColor(c) : adjustThumbColor(super.adjustColor(c), isDark());
  }


  /**
   * Copy paste of {@link EditorImpl#adjustThumbColor(java.awt.Color, boolean)}
   */
  @SuppressWarnings("JavadocReference")
  @NotNull
  private static Color adjustThumbColor(@NotNull Color base, boolean dark) {
    return dark ? ColorUtil.withAlpha(ColorUtil.shift(base, 1.35), 0.5)
                : ColorUtil.withAlpha(ColorUtil.shift(base, 0.68), 0.4);
  }

  //copied from com.intellij.openapi.editor.impl.EditorMarkupModelImpl
  @Override
  protected void paintThumb(Graphics g, JComponent c, Rectangle thumbBounds) {
    if (isMacOverlayScrollbar()) {
      if (!myRightToLeft) {
        super.paintThumb(g, c, thumbBounds);
      } else {
        Graphics2D g2d = (Graphics2D) g;
        AffineTransform old = g2d.getTransform();
        AffineTransform tx = AffineTransform.getScaleInstance(-1, 1);
        tx.translate(-c.getWidth(), 0);
        g2d.transform(tx);
        g.translate(1, 0);
        super.paintThumb(g, c, thumbBounds);
        g2d.setTransform(old);
      }
    } else {
      super.paintThumb(g, c, thumbBounds);
    }
  }

  @Override
  protected void doPaintTrack(Graphics g, JComponent c, Rectangle bounds) {
    drawMarks(g);
  }

  @Override
  protected int getThickness() {
    // TODO: remove magic number!
    return super.getThickness() + 7;
  }

  @Override
  public void mouseDragged(MouseEvent e) {
  }

  @Override
  public void mouseMoved(MouseEvent e) {
    List<GutterMark> gutterMarks = getGutterMarksAt(e.getY());
    if (!gutterMarks.isEmpty()) {
      scrollbar.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
    } else {
      scrollbar.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
    }
  }


  @Override
  public void mouseClicked(MouseEvent e) {
  }

  @Override
  public void mousePressed(MouseEvent e) {
    int y = e.getY();
    CoordinateTransformation transformation = new CoordinateTransformation();
    List<GutterMark> gutterMarks = getGutterMarksAt(y, transformation);
    if (!gutterMarks.isEmpty()) {
      GutterMark mark = gutterMarks.getFirst();
      SimpleEditorMessage message = mark.getEditorMessage();
      if (message instanceof EditorMessage) {
        ((EditorMessage) message).doNavigate(myEditorComponent);
      } else {
        // I assume y comes within scrollable area, where some space is occupied by decrement button,
        // and area with messages starts right after the button.
        // Perhaps, the ratio constant shall be part of GutterMark?
        int scrollableY = transformation.toEditorLocation(y);
        // I don't expect any negative value here, provided we found the mark, but there's some range tolerated for
        // discovery in getGutterMarksAt(int), max() is for extra safety here.
        // +1 is legacy, I suppose it's to deal with rounding and the EditorCell_Collection trick in calculateHeight()
        EditorCell editorCell = myEditorComponent.findCellWeak(1, Math.max(0, scrollableY + 1));
        if (editorCell != null) {
          myEditorComponent.changeSelection(editorCell);
        }
      }
    }
  }

  @Override
  public void mouseReleased(MouseEvent e) {
  }

  @Override
  public void mouseEntered(MouseEvent e) {
  }

  @Override
  public void mouseExited(MouseEvent e) {
  }

  private void updateGutterMarks() {
    if (scrollbar == null) {
      return;
    }
    getUpdateQueue().queue(new Update(myUpdateIdentity) {
      @Override
      public void run() {
        GutterStatus status = GutterStatus.OK;
        List<GutterMark> marks = new ArrayList<>();
        Rectangle msgBounds = new Rectangle();
        final int xx = myRightToLeft ? -2 : 4;
        final int ww = General.InspectionsOK.getIconWidth() - 1;
        for (SimpleEditorMessage message : myMessages) {
          if (!GutterMark.isValid(message, myEditorComponent)) {
            continue;
          }
          calculateBounds(msgBounds, message, xx, ww);
          GutterMark mark = new GutterMark(message, msgBounds);

          GutterStatus messageStatus = GutterStatus.getStatus(message.getStatus());
          if (messageStatus.ordinal() > status.ordinal()) {
            status = messageStatus;
          }
          marks.add(mark);
        }

        marks.sort((mark1, mark2) -> {
          if (mark1 == mark2) {
            return 0;
          }
          SimpleEditorMessage message1 = mark1.getEditorMessage();
          SimpleEditorMessage message2 = mark2.getEditorMessage();
          if (message1 instanceof EditorMessage == message2 instanceof EditorMessage) {
            if (message1 instanceof EditorMessage) {
              return mark1.getStatus() != mark2.getStatus() ? mark1.getStatus().ordinal() - mark2.getStatus().ordinal() : mark1.getY() - mark2.getY();
            } else {
              return mark1.getY() - mark2.getY();
            }
          } else {
            return message1 instanceof EditorMessage ? 1 : -1;
          }
        });

        myGutterMarks = marks;
        setStatus(status);
        //otherwise some messages (removal of which does not affect model) could be not repainted
        if (scrollbar != null) {
          scrollbar.repaint();
        }
      }
    });
  }

  private MergingUpdateQueue getUpdateQueue() {
    if (myUpdateQueue == null) {
      myUpdateQueue = new MergingUpdateQueue("MessagesGutter", 500, true, myScrollable, null, null, true);
      myUpdateQueue.setRestartTimerOnAdd(true);
      // TODO add update queue to the disposables tree
    }
    return myUpdateQueue;
  }

  @Override
  public boolean alwaysShowTrack() {
    return (scrollbar.getOrientation() == Adjustable.VERTICAL) || super.alwaysShowTrack();
  }

  private void setStatus(GutterStatus status) {
    switch (status) {
      case OK:
        myErrorsButton.setIcon(General.InspectionsOK);
        break;
      case WARNING:
        final Color warningStripeColor =
            EditorColorsManager.getInstance().getGlobalScheme().getAttributes(CodeInsightColors.WARNINGS_ATTRIBUTES).getErrorStripeColor();
        myErrorsButton.setIcon(IconUtil.colorize(General.InspectionsError, warningStripeColor));
        break;
      case ERROR:
        final Color errorStripeColor =
            EditorColorsManager.getInstance().getGlobalScheme().getAttributes(CodeInsightColors.ERRORS_ATTRIBUTES).getErrorStripeColor();
        myErrorsButton.setIcon(IconUtil.colorize(General.InspectionsError, errorStripeColor));
        break;
      case IN_PROGRESS:
        myErrorsButton.setIcon(General.InspectionsEye);
        break;
    }
  }

  public void add(SimpleEditorMessage message) {
    myMessages.add(message);
    updateGutterMarks();
  }

  public void remove(SimpleEditorMessage message) {
    myMessages.remove(message);
    updateGutterMarks();
  }

  public boolean removeMessages(EditorMessageOwner owner) {
    boolean removedAnything = false;
    for (SimpleEditorMessage m : new ArrayList<>(myMessages)) {
      if (m.getOwner() == owner) {
        myMessages.remove(m);
        removedAnything = true;
      }
    }
    updateGutterMarks();
    return removedAnything;
  }

  public void dispose() {
    if (myUpdateQueue != null) {
      // TODO unsure if this is the right way to dispose the queue
      myUpdateQueue.dispose();
      myUpdateQueue.cancelAllUpdates();
    }
  }

  private void drawMarks(Graphics graphics) {
    CoordinateTransformation transformation = new CoordinateTransformation();
    for (GutterMark mark : myGutterMarks) {
      mark.paint(graphics, transformation);
    }
  }

  private int getMessagesAreaShift() {
    // we need to find first position *after* decrement button.
    // there's no need to take scrollbar.Y into account (nether + nor -) as we position message marks relative
    // to the scrollbar, and its position within its parent (that's what scrollbar.Y is) doesn't affect
    // positions of the marks.
    return getDecrementButtonHeight();
  }

  private int getMessagesAreaHeight() {
    return scrollbar.getHeight() - getIncrementButtonHeight() - getMessagesAreaShift();
  }

  // to translate Y position inside Scrollable to Y position in scroll bar.
  // 1/value translates Y in scroll bar to Y in Scrollable
  private double scrollBar2ScrollableRatio() {
    return ((double) getMessagesAreaHeight()) / myScrollable.getHeight();
  }

  // magic around right-to-left and horizontal/vertical shape
  private void calculateBounds(Rectangle rect, SimpleEditorMessage message, int x, int width) {
    boolean isThin = myIsMessageThin.test(message);

    rect.x = isThin ? (myRightToLeft ? width : 0) : x;
    rect.width = isThin ? 2 : width;
    rect.y = message.getStart(myEditorComponent);
    rect.height = calculateHeight(message);
  }

  private int calculateHeight(SimpleEditorMessage message) {
    int height = message.getHeight(myEditorComponent);
    if (message instanceof EditorMessage) {
      EditorCell cell = ((EditorMessage) message).getCell(myEditorComponent);
      if (cell != null) {
        while (cell instanceof EditorCell_Collection) {
          cell = ((EditorCell_Collection) cell).lastCell();
        }
        if (cell != null) {
          height -= cell.getHeight();
        }
      }
    }
    return height;
  }

  private List<GutterMark> getGutterMarksAt(int y) {
    return getGutterMarksAt(y, new CoordinateTransformation());
  }

  private List<GutterMark> getGutterMarksAt(int y, CoordinateTransformation transformation) {
    List<GutterMark> result = new SortedList<>(EDITOR_MESSAGES_COMPARATOR);
    for (GutterMark gutterMark : myGutterMarks) {
      if (gutterMark.isLocatedAt(y, transformation)) {
        result.add(gutterMark);
      }
    }
    return result;
  }

  private void showHintToolTip(MouseEvent event) {
    int y = event.getY();

    List<GutterMark> gutterMarks = getGutterMarksAt(y);
    List<SimpleEditorMessage> messages = gutterMarks.stream()
                                                    .map(GutterMark::getEditorMessage)
                                                    .collect(Collectors.toList());

    // by some reason tooltip provider expects messages to be in reverse order
    Collections.reverse(messages);

    EditorTooltipProvider tooltipProvider = myEditorComponent.getTooltipProvider();
    final TooltipRenderer tooltipRenderer = tooltipProvider.getTooltipRenderer(messages);
    if (tooltipRenderer == null) {
      return;
    }
    final TooltipGroup tooltipGroup = tooltipProvider.getTooltipGroup();

    Project project = ProjectHelper.toIdeaProject(ProjectHelper.getProject(myEditorComponent.getRepository()));
    RelativePoint showPoint = new RelativePoint(scrollbar, event.getPoint());

    // this shows a hint popup on the error strip at right hand side of the editor
    myHintPopupController.showInfoToolTip(project, myEditorComponent.getPlatformEditorEmulation(), null, tooltipRenderer, tooltipGroup, showPoint);
  }

  /*package*/ String getMPSTooltipText(MouseEvent event) {
    int y = event.getY();

    List<GutterMark> gutterMarks = getGutterMarksAt(y);
    if (!gutterMarks.isEmpty()) {
      StringBuilder text = new StringBuilder();
      for (GutterMark mark : gutterMarks) {
        if (!text.isEmpty()) {
          text.append("<br>");
        }
        text.append(mark.getEditorMessage().getFormattedMessage());
      }
      return text.toString();
    }

    return null;
  }

  private Predicate<SimpleEditorMessage> myIsMessageThin = m -> !(m instanceof EditorMessage);

  public void setMessageThicknessProvider(Predicate<SimpleEditorMessage> isMessageThin) {
    myIsMessageThin = isMessageThin;
  }

  private static class GutterMark {
    private final int myX, myY, myWidth, myHeight;
    private final SimpleEditorMessage myMessage;

    static boolean isValid(SimpleEditorMessage message, EditorComponent editorComponent) {
      if (message == null || message.getColor() == null) {
        return false;
      }
      return !(message instanceof EditorMessage) || ((EditorMessage) message).isValid(editorComponent);
    }

    GutterMark(SimpleEditorMessage message, Rectangle bounds) {
      myMessage = message;
      myX = bounds.x;
      myY = bounds.y;
      myWidth = bounds.width;
      myHeight = bounds.height;
    }

    void paint(Graphics g, CoordinateTransformation transformation) {
      int y = transformation.toGutterLocation(myY);
      int height = transformation.toGutterHeight(myHeight);
      if (g.hitClip(myX, y, myWidth, height)) {
        g.setColor(myMessage.getColor());
        g.fillRect(myX, y, myWidth, Math.max(height, 3));
      }
    }

    boolean isLocatedAt(int y, CoordinateTransformation transformation) {
      int start = transformation.toGutterLocation(myY);
      int end = start + transformation.toGutterHeight(myHeight);
      return start - 3 <= y && y <= end + 3;
    }

    int getY() {
      return myY;
    }

    int getPriority() {
      return myMessage.getPriority();
    }

    MessageStatus getStatus() {
      return myMessage.getStatus();
    }

    SimpleEditorMessage getEditorMessage() {
      return myMessage;
    }
  }

  private enum GutterStatus {
    OK,
    WARNING,
    ERROR,
    IN_PROGRESS;

    static GutterStatus getStatus(MessageStatus status) {
      return switch (status) {
        case WARNING -> WARNING;
        case ERROR -> ERROR;
        default -> OK;
      };
    }
  }

  private static final class MyErrorsButton extends JButton {
    private MyErrorsButton() {
      super(General.InspectionsEye);
      setFocusable(false);
    }

    @Override
    public void paint(Graphics g) {
      final Rectangle bounds = getBounds();

      g.setColor(getBackground());
      g.fillRect(0, 0, bounds.width, bounds.height);

      Icon icon = getIcon();
      if (icon != null) {
        icon.paintIcon(this, g, (getWidth() - icon.getIconWidth()) / 2, (getHeight() - icon.getIconHeight()) / 2);
      }
    }

    @Override
    public Dimension getPreferredSize() {
      return new Dimension(General.InspectionsOK.getIconWidth(), General.InspectionsOK.getIconHeight());
    }
  }

  private final class CoordinateTransformation {

    private final int     myShift;
    private final double  myRatio;

    CoordinateTransformation() {
      myShift = getMessagesAreaShift();
      myRatio = scrollBar2ScrollableRatio();
    }

    int toGutterLocation(int yEditor) {
      return myShift + (int) (yEditor * myRatio);
    }

    int toGutterHeight(int editorHeight) {
      return (int) (editorHeight * myRatio) + 2;
    }

    int toEditorLocation(int yGutter) {
      return (int) Math.round((yGutter - myShift) / myRatio);
    }
  }
}
