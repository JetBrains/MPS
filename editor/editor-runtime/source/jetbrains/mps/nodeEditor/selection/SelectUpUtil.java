/*
 * Copyright 2003-2017 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.selection;

import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.selection.Selection;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.openapi.editor.selection.SingularSelection;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.function.BooleanSupplier;

public class SelectUpUtil {
  public static boolean canExecute(EditorContext context) {
    EditorComponent editorComponent = context.getEditorComponent();
    return findWholeListSelection(editorComponent) != null || findTarget(editorComponent.getSelectionManager()) != null;
  }

  public static void execute(EditorContext context) {
    SelectionManager selectionManager = context.getEditorComponent().getSelectionManager();
    Selection listSelection = findWholeListSelection(context.getEditorComponent());
    if (listSelection != null) {
      selectionManager.pushSelection(listSelection);
      listSelection.ensureVisible();
    } else {
      EditorCell cell = findTarget(selectionManager);
      selectionManager.pushSelection(selectionManager.createSelection(cell));
      if (cell instanceof EditorCell_Label) {
        ((EditorCell_Label) cell).selectWordOrAll();
      }
    }
  }

  /**
   * If possible, select all siblings (nlist) first before selecting their parent.
   *
   * @return null if this step is not possible or a range selection
   */
  private static Selection findWholeListSelection(EditorComponent editorComponent) {
    SelectionManager selectionManager = editorComponent.getSelectionManager();
    Selection selection = selectionManager.getSelection();
    if (!(selection instanceof SingularSelection singularSelection)) {
      return null;
    }
    EditorCell cell = singularSelection.getEditorCell();
    if (isPartiallySelectedLabel(cell)) {
      return null;
    }
    if (!cell.isBig()) {
      return null;
    }
    SNode node = cell.getSNode();
    if (node == null) {
      return null;
    }
    SContainmentLink role = node.getContainmentLink();
    if (role == null || !role.isMultiple()) {
      return null;
    }
    SNode parent = node.getParent();
    if (parent == null) {
      return null;
    }
    SNode first = null;
    SNode last = null;
    for (SNode child : parent.getChildren(role)) {
      // NodeRangeSelection throws an exception if we pass it a node without a cell
      if (editorComponent.findNodeCell(child) == null) {
        return null;
      }
      if (first == null) {
        first = child;
      }
      last = child;
    }
    if (first == last) {
      return null;
    }
    return selectionManager.createRangeSelection(first, last);
  }

  public static void executeWhile(EditorContext context, BooleanSupplier condition) {
    while (canExecute(context) && condition.getAsBoolean()) {
      execute(context);
    }
  }

  private static EditorCell findTarget(SelectionManager selectionManager) {
    Selection selection = selectionManager.getSelection();
    if (selection == null) {
      return null;
    }

    EditorCell cell = selection.getSelectedCells().getFirst();
    if (selection instanceof SingularSelection) {
      if (isPartiallySelectedLabel(cell)) {
        return cell;
      }
    } else {
      // "cell" is the first cell in the ranged selection, let's search up from its parent
      cell = cell.getParent();
      if (cell == null) {
        return null;
      }
    }

    if (cell.getParent() == null) {
      return null;
    }

    while (cell.getParent() != null && cell.getParent().isTransparentCollection()) {
      cell = cell.getParent();
    }
    EditorCell_Collection parent = cell.getParent();
    while (parent != null) {
      if (parent.isSelectable()) {
        while (parent.getParent() != null && parent.getParent().isTransparentCollection() && parent.getParent().isSelectable()) {
          parent = parent.getParent();
        }
        return parent;
      }
      parent = parent.getParent();
    }
    return null;
  }

  private static boolean isPartiallySelectedLabel(EditorCell cell) {
    return cell instanceof EditorCell_Label && !((EditorCell_Label) cell).isEverythingSelected();
  }
}
