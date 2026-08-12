/*
 * Copyright 2003-2019 JetBrains s.r.o.
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

import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.smodel.ModelAccessHelper;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.Color;
import java.awt.Graphics;
import java.util.HashMap;
import java.util.Map;

/**
 * Cyril.Konopko, 01.04.2008
 */
public class DefaultEditorMessage implements EditorMessage {
  private static final int DEFAULT_MESSAGE_PRIORITY = 0;

  private final Color myColor;
  private final String myMessage;
  private final EditorMessageOwner myOwner;
  private final SNode myNode;
  private final MessageStatus myStatus;

  private Map<Object, Object> myUserObjects;

  public DefaultEditorMessage(SNode node, Color color, String message, EditorMessageOwner owner) {
    this(node, MessageStatus.OK, color, message, owner);
  }

  public DefaultEditorMessage(SNode node, MessageStatus status, Color color, String message, EditorMessageOwner owner) {
    myStatus = status;
    myNode = node;
    myColor = color;
    myMessage = message;
    myOwner = owner;
  }

  @Override
  public boolean sameAs(SimpleEditorMessage message) {
    return message.getNode() == getNode() &&
           getOwner() == message.getOwner() &&
           getStatus() == message.getStatus() &&
           getMessage().equals(message.getMessage());
  }

  @Override
  public void putUserObject(Object key, Object value) {
    if (myUserObjects == null) {
      myUserObjects = new HashMap<>(1);
    }
    myUserObjects.put(key, value);
  }

  @Override
  public Object getUserObject(Object key) {
    if (myUserObjects == null) {
      return null;
    }
    return myUserObjects.get(key);
  }

  @Override
  public String getMessage() {
    return myMessage;
  }

  @Override
  public Color getColor() {
    return myColor;
  }

  @Override
  public EditorMessageOwner getOwner() {
    return myOwner;
  }

  @Override
  public boolean isValid(EditorComponent editorComponent) {
    return getCellInBothWays(editorComponent) != null;
  }

  @Override
  public int getStart(jetbrains.mps.openapi.editor.EditorComponent editorComponent) {
    EditorCell editorCell = getCellInBothWays(editorComponent);
    if (editorCell == null) {
      return -1;
    }
    return editorCell.getY();
  }

  @Override
  public int getHeight(jetbrains.mps.openapi.editor.EditorComponent editorComponent) {
    EditorCell editorCell = getCellInBothWays(editorComponent);
    if (editorCell == null) {
      return -1;
    }
    return editorCell.getHeight();
  }

  @Override
  public void doNavigate(EditorComponent editorComponent) {
    EditorCell editorCell = getCellInBothWays(editorComponent);
    if (editorCell != null) {
      editorComponent.changeSelection(editorCell);
    }
  }

  protected EditorCell getCellInBothWays(final jetbrains.mps.openapi.editor.EditorComponent editorComponent) {
    if (false == editorComponent instanceof EditorComponent) {
      return null;
    }
    EditorComponent editor = (EditorComponent) editorComponent;
    return new ModelAccessHelper(editor.getRepository()).runReadAction(() -> {
      EditorCell editorCell = getCell(editor);
      if (editorCell != null) {
        return editorCell;
      }
      return getCellForParentNodeInMainEditor(editor);
    });
  }

  @Override
  public MessageStatus getStatus() {
    return myStatus;
  }

  @Override
  public EditorCell getCell(EditorComponent editor) {
    if (editor == null) {
      return null;
    }
    return editor.getBigValidCellForNode(getNode());
  }

  protected EditorCell getCellForParentNodeInMainEditor(final EditorComponent editor) {
    if (editor instanceof InspectorEditorComponent) {
      return null;
    }
    if (getNode() == null) {
      return null;
    }
    SNode parent = getNode().getParent();
    while (parent != null) {
      EditorCell result = editor.getBigValidCellForNode(parent);
      if (result != null) {
        return result;
      }
      parent = parent.getParent();
    }
    return null;
  }

  @Override
  public boolean acceptCell(EditorCell cell, EditorComponent editor) {
    if (cell == null) {
      return false;
    }
    return cell.isBig() && editor.isValid(cell) && cell.getSNode() == getNode();
  }

  @Override
  public SNode getNode() {
    return myNode;
  }

  @Override
  public boolean showInEditor() {
    return true;
  }

  @Override
  public void paint(Graphics g, EditorComponent editorComponent, EditorCell cell) {
    paintWithColor(g, cell, getColor());
  }

  protected void paintWithColor(Graphics g, EditorCell cell, Color color) {
    // Guard here not to break existing clients. Treat null as transparent.
    if (color == null) {
      return;
    }
    int x = cell.getX() + cell.getLeftInset();
    int y = cell.getY();
    int width = cell.getWidth() - cell.getLeftInset() - cell.getRightInset() - 1;
    int height = cell.getHeight() - cell.getTopInset() - cell.getBottomInset() - 1;
    g.setColor(color);
    g.drawRect(x, y, width, height);
    color = new Color(color.getRed(), color.getGreen(), color.getBlue(), color.getAlpha() / 5);
    g.setColor(color);
    g.fillRect(x, y, width, height);
  }

  @Override
  public boolean isBackground() {
    return false;
  }

  @Override
  public int getPriority() {
    return DEFAULT_MESSAGE_PRIORITY;
  }

  @Override
  public boolean showInGutter() {
    return true;
  }
}
