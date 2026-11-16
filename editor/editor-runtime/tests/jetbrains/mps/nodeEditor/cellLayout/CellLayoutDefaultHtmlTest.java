/*
 * Copyright 2003-2026 JetBrains s.r.o.
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

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import org.junit.Test;

import java.util.Collections;

import static org.junit.Assert.assertEquals;

public class CellLayoutDefaultHtmlTest {

  private static CellLayout layoutWithText(String... lines) {
    return new AbstractCellLayout() {
      @Override
      public void doLayout(EditorCell_Collection editorCells) {
      }

      @Override
      public TextBuilder doLayoutText(Iterable<EditorCell> editorCells) {
        TextBuilder result = new TextBuilderImpl();
        for (String line : lines) {
          result.appendToTheBottom(new TextBuilderImpl(line));
        }
        return result;
      }
    };
  }

  @Test
  public void escapesMarkupAndKeepsLineBreaks() {
    String html = layoutWithText("a < b & c", "x>y").doLayoutHtml(Collections.emptyList()).getHtmlText();
    assertEquals("<p>a&nbsp;&lt;&nbsp;b&nbsp;&amp;&nbsp;c<br>x&gt;y</p>", html.replaceAll(" +<", "<"));
    assertEquals("<p>&nbsp;&nbsp;indented</p>", layoutWithText("  indented").doLayoutHtml(Collections.emptyList()).getHtmlText());
  }

  @Test
  public void noLinesGiveAnEmptyParagraph() {
    assertEquals("<p></p>", layoutWithText().doLayoutHtml(Collections.emptyList()).getHtmlText());
  }
}
