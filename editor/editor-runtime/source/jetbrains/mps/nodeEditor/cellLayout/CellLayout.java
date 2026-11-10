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
package jetbrains.mps.nodeEditor.cellLayout;

import com.intellij.openapi.util.text.Strings;
import jetbrains.mps.editor.runtime.HtmlTextBuilderImpl;
import jetbrains.mps.openapi.editor.HtmlTextBuilder;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import org.jetbrains.annotations.Nullable;

import java.awt.Rectangle;
import java.util.List;

public interface CellLayout extends jetbrains.mps.openapi.editor.cells.CellLayout {

  void doLayout(EditorCell_Collection editorCells);

  TextBuilder doLayoutText(Iterable<EditorCell> editorCells);

  /**
   * Default for layouts without an HTML form: the {@link #doLayoutText(Iterable) text layout}, escaped, one line per row
   * (without the padding {@link TextBuilder} adds to the right of shorter lines).
   */
  default HtmlTextBuilder doLayoutHtml(Iterable<EditorCell> editorCells) {
    HtmlTextBuilder result = new HtmlTextBuilderImpl();
    for (CharSequence line : doLayoutText(editorCells).getLines()) {
      result.appendToTheBottom(new HtmlTextBuilderImpl(Strings.escapeXmlEntities(line.toString().stripTrailing()).replace(" ", "&nbsp;")));
    }
    return result;
  }

  int getAscent(EditorCell_Collection editorCells);

  int getDescent(EditorCell_Collection editorCell_collection);

  List<Rectangle> getSelectionBounds(EditorCell_Collection editorCells);

  boolean canBeFolded();

  @Nullable
  List<? extends EditorCell> getSelectionCells(EditorCell_Collection editorCells);

  /**
   * Used to notify {@link jetbrains.mps.nodeEditor.cellLayout.CellLayout} that re-layout of corresponding
   * {@link jetbrains.mps.openapi.editor.cells.EditorCell_Collection} was requested.
   * <p/>
   * Can be used to include additional (child) cells into re-layout process by calling
   * {@link jetbrains.mps.openapi.editor.cells.EditorCell#requestRelayout()} method on corresponding cells.
   *
   * @param editorCells EditorCell_Collection to re-layout
   */
  void requestRelayout(EditorCell_Collection editorCells);

  /**
   * Used to notify {@link jetbrains.mps.nodeEditor.cellLayout.CellLayout} that {@link jetbrains.mps.openapi.editor.cells.EditorCell#moveTo(int, int)}
   * of corresponding {@link jetbrains.mps.openapi.editor.cells.EditorCell_Collection} was performed.
   * <p/>
   * Can be used to trigger re-layout for some child cells if layout logic depends on cell x/y coordinates.
   *
   * @param editorCells EditorCell_Collection to re-layout
   * @param deltaX      change of X-coordinate (newX - oldX) for <code>editorCells</code>
   * @param deltaY      change of Y-coordinate (newY - oldY) for <code>editorCells</code>
   */
  void move(EditorCell_Collection editorCells, int deltaX, int deltaY);
}
