/*
 * Copyright 2003-2024 JetBrains s.r.o.
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
package jetbrains.mps.ide.bookmark;

import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.StoragePathMacros;
import com.intellij.openapi.editor.colors.EditorColors;
import com.intellij.openapi.editor.colors.EditorColorsManager;
import com.intellij.openapi.editor.colors.EditorFontType;
import com.intellij.openapi.project.Project;
import com.intellij.ui.ColorUtil;
import com.intellij.ui.JBColor;
import com.intellij.ui.RetrievableIcon;
import com.intellij.util.IconUtil;
import com.intellij.util.PlatformIcons;
import com.intellij.util.ui.JBCachingScalableIcon;
import jetbrains.mps.ide.bookmark.BookmarkManager.MyState;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.Highlighter;
import jetbrains.mps.nodeEditor.HighlighterContribution;
import jetbrains.mps.openapi.navigation.EditorNavigator;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.util.Pair;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import javax.swing.Icon;
import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static com.intellij.ui.scale.ScaleType.OBJ_SCALE;
import static java.lang.Math.ceil;

/* TODO: think of reusing com.intellij.ide.bookmarks.Bookmark:
 * 1. A lot of copy paste from that class due to restricted visibility
 * 2. UI is the same only underlying editor is different
 * */
@State(
    name = "MPSBookmarkManager",
    storages = @Storage(StoragePathMacros.WORKSPACE_FILE)
)
public class BookmarkManager implements PersistentStateComponent<MyState>, HighlighterContribution {
  private static final Logger LOG = Logger.getLogger(BookmarkManager.class);

  private static final Icon DEFAULT_ICON = new MyCheckedIcon();

  private final List<BookmarkListener> myBookmarkListeners = new ArrayList<>();

  private final SNodeReference[] myBookmarks = new SNodeReference[10];

  private final List<SNodeReference> myUnnumberedBookmarks = new ArrayList<>();

  private final MPSProject myProject;
  private BookmarksHighlighter myChecker;

  public static BookmarkManager getInstance(Project ideaProject) {
    return ideaProject.getService(BookmarkManager.class);
  }

  public BookmarkManager(Project ideaProject) {
    myProject = ProjectHelper.fromIdeaProjectOrFail(ideaProject);
  }

  @Override
  public void install(@NotNull Highlighter highlighter) {
//    myChecker = new BookmarksHighlighter(this);
    myChecker = new BookmarksHighlighter(getInstance(ProjectHelper.toIdeaProject(myProject)));
    highlighter.addChecker(myChecker);
  }

  @Override
  public void uninstall(@NotNull Highlighter highlighter) {
    highlighter.removeChecker(myChecker);
    myChecker.dispose();
  }

  /**
   * assumes model read access
   */
  public List<Pair<SNode, Integer>> getBookmarks(SNode root) {
    if (root == null) {
      return Collections.emptyList();
    }
    List<Pair<SNode, Integer>> result = new ArrayList<>();
    for (int i = 0; i <= 9; i++) {
      SNodeReference nodePointer = myBookmarks[i];
      if (nodePointer != null) {
        SNode node = nodePointer.resolve(myProject.getRepository());
        if (node != null && node.getContainingRoot() == root) {
          result.add(new Pair<>(node, i));
        }
      }
    }
    for (SNodeReference nodePointer : myUnnumberedBookmarks) {
      if (nodePointer != null) {
        SNode node = nodePointer.resolve(myProject.getRepository());
        if (node != null && node.getContainingRoot() == root) {
          result.add(new Pair<>(node, -1));
        }
      }
    }
    return result;
  }

  /**
   * assumes model read access
   */
  public void setUnnumberedBookmark(SNode node) {
    if (node == null) {
      LOG.error("node to bookmark is null");
      return;
    }
    SNodeReference newBookmark = node.getReference();
    boolean bookmarkRemoved = false;
    for (int i = 0; i < 10; i++) {
      if (myBookmarks[i] != null && myBookmarks[i].resolve(myProject.getRepository()) == node) {
        myBookmarks[i] = null;
        bookmarkRemoved = true;
        fireBookmarkRemoved(i, node);
      }
    }
    if (myUnnumberedBookmarks.contains(newBookmark)) {
      myUnnumberedBookmarks.remove(newBookmark);
      bookmarkRemoved = true;
      fireBookmarkRemoved(-1, newBookmark.resolve(myProject.getRepository()));
    }
    if (!bookmarkRemoved) {
      myUnnumberedBookmarks.add(newBookmark);
      fireBookmarkAdded(-1, newBookmark.resolve(myProject.getRepository()));
    }
  }

  /**
   * XXX assumes model read action as there's SNode argument
   */
  public void setBookmark(SNode node, int number) {
    if (node == null) {
      LOG.error("node to bookmark is null");
      return;
    }
    if (number == -1) {
      setUnnumberedBookmark(node);
      return;
    }

    SNodeReference newBookmark = new jetbrains.mps.smodel.SNodePointer(node);

    for (int i = 0; i < 10; i++) {
      SNodeReference bookmark = myBookmarks[i];
      if (i != number && bookmark != null && bookmark.resolve(myProject.getRepository()) == node) {
        return;
      }
    }
    if (getAllUnnumberedBookmarks().contains(newBookmark)) {
      return;
    }

    SNodeReference oldBookmark = myBookmarks[number];
    SNode oldNode = null;
    myBookmarks[number] = null;
    if (oldBookmark != null) {
      oldNode = oldBookmark.resolve(myProject.getRepository());
      fireBookmarkRemoved(number, oldNode);
    }
    if (!node.equals(oldNode)) {
      myBookmarks[number] = newBookmark;
      fireBookmarkAdded(number, node);
    }
  }

  public void clearBookmarks() {
    myProject.getModelAccess().runReadAction(() -> {
      for (int i = 0; i < myBookmarks.length; i++) {
        SNodeReference pointer = myBookmarks[i];
        if (pointer != null) {
          myBookmarks[i] = null;
          fireBookmarkRemoved(i, pointer.resolve(myProject.getRepository()));
        }
      }
      ArrayList<SNodeReference> nodePointers = new ArrayList<>(myUnnumberedBookmarks);
      myUnnumberedBookmarks.clear();
      for (SNodeReference pointer : nodePointers) {
        if (pointer != null) {
          fireBookmarkRemoved(-1, pointer.resolve(myProject.getRepository()));
        }
      }
    });
  }

  public void removeBookmark(int i) {
    if (i > 9) {
      return;
    }
    SNodeReference pointer = myBookmarks[i];
    if (pointer != null) {
      myBookmarks[i] = null;
      myProject.getModelAccess().runReadAction(() -> fireBookmarkRemoved(i, pointer.resolve(myProject.getRepository())));
    }
  }

  public void removeUnnumberedBookmark(SNodeReference nodePointer) {
    if (myUnnumberedBookmarks.contains(nodePointer)) {
      myUnnumberedBookmarks.remove(nodePointer);
      myProject.getModelAccess().runReadAction(() -> fireBookmarkRemoved(-1, nodePointer.resolve(myProject.getRepository())));
    }
  }

  public List<SNodeReference> getAllBookmarks() {
    List<SNodeReference> nodePointers = getAllNumberedBookmarks();
    nodePointers.addAll(getAllUnnumberedBookmarks());
    return nodePointers;
  }

  public List<SNodeReference> getAllNumberedBookmarks() {
    return Arrays.asList(myBookmarks);
  }

  public List<SNodeReference> getAllUnnumberedBookmarks() {
    return new ArrayList<>(myUnnumberedBookmarks);
  }

  public static Icon getIcon(int bookmarkNumber) {
    if (bookmarkNumber == -1) {
      return BookmarkManager.DEFAULT_ICON;
    }
    return MnemonicIcon.getIcon(bookmarkNumber);
  }

  public SNodeReference getBookmark(int number) {
    return myBookmarks[number];
  }

  public void navigateToBookmark(int number) {
    if (number < 0 || number > 9) {
      return;
    }
    SNodeReference pointer = myBookmarks[number];
    if (pointer == null) {
      return;
    }
    new EditorNavigator(myProject).shallFocus(true).shallSelect(true).open(pointer);
  }

  public void addBookmarkListener(BookmarkListener listener) {
    myBookmarkListeners.add(listener);
  }

  public void removeBookmarkListener(BookmarkListener listener) {
    myBookmarkListeners.remove(listener);
  }

  public boolean hasBookmarkListener(BookmarkListener listener) {
    return myBookmarkListeners.contains(listener);
  }

  private void fireBookmarkAdded(int number, SNode node) {
    for (BookmarkListener listener : myBookmarkListeners) {
      listener.bookmarkAdded(number, node);
    }
  }

  private void fireBookmarkRemoved(int number, SNode node) {
    for (BookmarkListener listener : myBookmarkListeners) {
      listener.bookmarkRemoved(number, node);
    }
  }

  @Override
  public MyState getState() {
    MyState state = new MyState();
    for (int i = 0; i < myBookmarks.length; i++) {
      SNodeReference pointer = myBookmarks[i];
      if (pointer != null) {
        state.myBookmarkInfos[i] = new BookmarkInfo(pointer, i);
      } else {
        state.myBookmarkInfos[i] = new BookmarkInfo();
      }
    }
    state.myUnnumberedBookmarkInfos = new BookmarkInfo[myUnnumberedBookmarks.size()];
    for (int i = 0; i < myUnnumberedBookmarks.size(); i++) {
      SNodeReference pointer = myUnnumberedBookmarks.get(i);
      if (pointer != null) {
        state.myUnnumberedBookmarkInfos[i] = new BookmarkInfo(pointer, -1);
      } else {
        state.myUnnumberedBookmarkInfos[i] = new BookmarkInfo();
      }
    }
    return state;
  }

  @Override
  public void loadState(@NotNull MyState state) {
    for (int i = 0; i < state.myBookmarkInfos.length; i++) {
      BookmarkInfo bookmarkInfo = state.myBookmarkInfos[i];
      if (!bookmarkInfo.myIsNull) {
        assert i == bookmarkInfo.myNumber;
        myBookmarks[i] = bookmarkInfo.myNodeRef;
      } else {
        myBookmarks[i] = null;
      }
    }
    myUnnumberedBookmarks.clear();
    for (BookmarkInfo bookmarkInfo : state.myUnnumberedBookmarkInfos) {
      if (bookmarkInfo != null) {
        myUnnumberedBookmarks.add(bookmarkInfo.myNodeRef);
      }
    }
  }

  public interface BookmarkListener {
    void bookmarkAdded(int number, SNode node);

    void bookmarkRemoved(int number, SNode node);
  }

  public static class MyState {
    public BookmarkInfo[] myBookmarkInfos = new BookmarkInfo[10];
    public BookmarkInfo[] myUnnumberedBookmarkInfos = new BookmarkInfo[0];
  }

  public static class BookmarkInfo {
    private SNodeReference myNodeRef;
    public int myNumber;
    public boolean myIsNull;

    public BookmarkInfo() {
      myIsNull = true;
    }

    public BookmarkInfo(SNodeReference nodeRef, int number) {
      myNodeRef = nodeRef;
      myNumber = number;
      myIsNull = false;
    }

    //for serialization/deserialization
    @SuppressWarnings("UnusedDeclaration")
    public String getNodeRef() {
      if (myNodeRef == null) {
        return "";
      }
      return jetbrains.mps.smodel.SNodePointer.serialize(myNodeRef);
    }

    //for serialization/deserialization
    @SuppressWarnings("UnusedDeclaration")
    public void setNodeRef(String nodeRef) {
      if (nodeRef.isEmpty()) {
        return;
      }
      myNodeRef = jetbrains.mps.smodel.SNodePointer.deserialize(nodeRef);
    }
  }

  // TODO: remove copy/paste see todo on class

  /**
   * Partly copy/paste of {@link Bookmark.MnemonicIcon}
   */
  private final static class MnemonicIcon extends JBCachingScalableIcon<MnemonicIcon> {
    private static final MnemonicIcon[] CACHE = new MnemonicIcon[]{
        new MnemonicIcon('0'), new MnemonicIcon('1'),
        new MnemonicIcon('2'), new MnemonicIcon('3'),
        new MnemonicIcon('4'), new MnemonicIcon('5'),
        new MnemonicIcon('6'), new MnemonicIcon('7'),
        new MnemonicIcon('8'), new MnemonicIcon('9')
    };

    private final char myMnemonic;

    @NotNull
    @Override
    public MnemonicIcon copy() {
      return new MnemonicIcon(myMnemonic);
    }

    @NotNull
    static MnemonicIcon getIcon(int digit) {
      return CACHE[digit];
    }

    private MnemonicIcon(char mnemonic) {
      myMnemonic = mnemonic;
    }

    @Override
    public void paintIcon(Component c, Graphics g, int x, int y) {
      int width = getIconWidth();
      int height = getIconHeight();

      g.setColor(new JBColor(() -> {
        //noinspection UseJBColor
        return !darkBackground() ? new Color(0xffffcc) : new Color(0x675133);
      }));
      g.fillRect(x, y, width, height);

      g.setColor(JBColor.GRAY);
      g.drawRect(x, y, width, height);

      g.setColor(EditorColorsManager.getInstance().getGlobalScheme().getDefaultForeground());

      float startingFontSize = 40f;  // large font for smaller rounding error
      Font font = EditorFontType.getGlobalPlainFont().deriveFont(startingFontSize);
      FontRenderContext fontRenderContext = ((Graphics2D) g).getFontRenderContext();
      double height40 = font.createGlyphVector(fontRenderContext, new char[]{'A'}).getVisualBounds().getHeight();
      font = font.deriveFont((float) (startingFontSize * height / height40 * 0.7));

      GlyphVector gv = font.createGlyphVector(fontRenderContext, new char[]{myMnemonic});
      Rectangle2D bounds = gv.getVisualBounds();
      ((Graphics2D) g).drawGlyphVector(gv, (float) (x + (width - bounds.getWidth()) / 2 - bounds.getX()),
                                       (float) (y + (height - bounds.getHeight()) / 2 - bounds.getY()));
    }

    @Override
    public int getIconWidth() {
      return (int) ceil(scaleVal(BookmarkManager.DEFAULT_ICON.getIconWidth(), OBJ_SCALE));
    }

    @Override
    public int getIconHeight() {
      return (int) ceil(scaleVal(BookmarkManager.DEFAULT_ICON.getIconHeight(), OBJ_SCALE));
    }

    @Override
    public boolean equals(Object o) {
      if (this == o) {
        return true;
      }
      if (o == null || getClass() != o.getClass()) {
        return false;
      }

      MnemonicIcon that = (MnemonicIcon) o;

      return myMnemonic == that.myMnemonic;
    }

    @Override
    public int hashCode() {
      return (int) myMnemonic;
    }
  }

  // TODO: remove copy/paste see todo on class

  /**
   * Copy/paste of {@link Bookmark.MyCheckedIcon}
   */
  private static class MyCheckedIcon extends JBCachingScalableIcon<MyCheckedIcon> implements RetrievableIcon {
    @Nullable
    @Override
    public Icon retrieveIcon() {
      return IconUtil.scale(PlatformIcons.CHECK_ICON, null, getScale());
    }

    @Override
    public void paintIcon(Component c, Graphics g, int x, int y) {
      IconUtil.scale(PlatformIcons.CHECK_ICON, c, getScale()).paintIcon(c, g, x, y);
    }

    @Override
    public int getIconWidth() {
      return scale(PlatformIcons.CHECK_ICON.getIconWidth());
    }

    private int scale(int width) {
      return (int) Math.ceil(scaleVal(width, OBJ_SCALE));
    }

    @Override
    public int getIconHeight() {
      return scale(PlatformIcons.CHECK_ICON.getIconHeight());
    }

    @NotNull
    @Override
    public MyCheckedIcon copy() {
      return new MyCheckedIcon();
    }
  }

  private static boolean darkBackground() {
    Color gutterBackground = EditorColorsManager.getInstance().getGlobalScheme().getColor(EditorColors.GUTTER_BACKGROUND);
    if (gutterBackground == null) {
      gutterBackground = EditorColors.GUTTER_BACKGROUND.getDefaultColor();
    }
    return ColorUtil.isDark(gutterBackground);
  }
}
