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
package jetbrains.mps.editor.runtime.commands;


import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.commands.CommandContext;
import jetbrains.mps.smodel.SNodeUndoableAction;
import jetbrains.mps.smodel.undo.UndoContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.LinkedHashSet;
import java.util.Set;

/**
 * User: shatalin
 * Date: 08/10/14
 */
public abstract class EditorCommand implements Runnable, UndoContext {
  private final CommandContext myCommandContext;
  private final SNode myContextNode;

  public EditorCommand(EditorContext editorContext) {
    this(editorContext.getEditorComponent().getCommandContext());
  }

  public EditorCommand(EditorComponent editorComponent) {
    this(editorComponent.getCommandContext());
  }

  public EditorCommand(CommandContext commandContext) {
    myCommandContext = commandContext;
    myContextNode = myCommandContext.getContextNode();
  }

  @Override
  public void run() {
    try {
      myCommandContext.commandStarted();
      doExecute();
    } finally {
      myCommandContext.commandFinished();
    }
  }

  @Override
  public Iterable<SNode> getVirtualFileNodes(SNodeUndoableAction action) {
    Set<SNode> result = new LinkedHashSet<>(2);
    SNode affectedNode = action.getAffectedNode();
    if (affectedNode != null) {
      result.add(affectedNode.getContainingRoot());
    }
    if (myContextNode != null) {
      result.add(myContextNode);
    }
    return result;
  }

  @NotNull
  @Override
  public SRepository getRepository() {
    return myCommandContext.getRepository();
  }

  protected abstract void doExecute();
}
