/*
 * Copyright 2003-2023 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.cells;

import com.intellij.ide.BrowserUtil;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.smodel.NodeReadAccessCasterInEditor;
import jetbrains.mps.smodel.NodeReadAccessInEditorListener;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.awt.Color;
import java.awt.event.InputEvent;
import java.awt.event.MouseEvent;

public class EditorCell_URL extends EditorCell_Property {
  protected EditorCell_URL(EditorContext editorContext, ModelAccessor accessor, SNode node) {
    super(editorContext, accessor, node);
    // COLORS: Remove hardcoded color
    this.setTextColor(Color.BLUE);
  }

  @Override
  public boolean processMousePressed(MouseEvent e) {
    int modifiers = InputEvent.BUTTON1_DOWN_MASK | InputEvent.CTRL_DOWN_MASK;
    if ((e.getModifiersEx() & modifiers) == modifiers) {
      e.consume();
      BrowserUtil.browse(this.getText());
      return false;
    } else {
      return super.processMousePressed(e);
    }
  }

  public static EditorCell_URL create(EditorContext editorContext, SNode node, SProperty property) {
    NodeReadAccessInEditorListener listener = NodeReadAccessCasterInEditor.getReadAccessListener();
    ModelAccessor accessor = new SPropertyAccessor(node, property, false, true);
    if (listener != null) {
      listener.clearCleanlyReadAccessProperties();
    }
    EditorCell_URL result = new EditorCell_URL(editorContext, accessor, node);
    if (listener != null) {
      for (Pair<SNodeReference, String> pair : listener.popCleanlyReadAccessedProperties()) {
        // TODO: specify property name directly - we know it from PropertyAccessor
        result.getEditorComponent().getUpdater().getCurrentUpdateSession().registerCleanDependency(result, pair);
      }
    }
    return result;
  }
}
