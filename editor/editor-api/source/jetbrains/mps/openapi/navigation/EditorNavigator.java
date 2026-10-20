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
package jetbrains.mps.openapi.navigation;

import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.project.Project;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.concurrent.CompletionStage;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

/**
 * Handy facility to replace code like:
 * <pre>
 *   final SNodeReference nodeRef = ...;
 *   getProject().getModelAccess().runWriteInEDT(new Runnable() {
 *     public void run() {
 *       SNode target = nodeRef.resolve(getProject().getRepository());
 *       if (target != null) {
 *         NavigationSupport.getInstance().openNode(getProject(), target, true, false);
 *       }
 *     }
 *   }
 * </pre>
 *
 * Instead, this class could be used:
 * <pre>
 *   final SNodeReference nodeRef = ...;
 *   new EditorNavigator(getProject()).shallFocus(true).open(nodeRef);
 * </pre>
 *
 * Primary benefit is that we hide all the knowledge about read/write model and thread access.
 *
 * @author Artem Tikhomirov
 * @since 3.3
 */
public final class EditorNavigator {
  private final Project myProject;
  private Predicate<SNode> myFocus = node -> false;
  private Predicate<SNode> mySelect = node -> false;
  private BiConsumer<SNode, Editor> myHandler;

  public EditorNavigator(@NotNull Project mpsProject) {
    myProject = mpsProject;
  }

  /**
   * Default: no focus, <code>false</code>
   */
  public EditorNavigator shallFocus(boolean shallFocus) {
    return shallFocus(node -> shallFocus);
  }

  /**
   * Default: no selection, <code>false</code>
   */
  public EditorNavigator shallSelect(boolean shallSelect) {
    return shallSelect(node -> shallSelect);
  }

  public EditorNavigator selectIfChild() {
    return shallSelect(node -> node.getParent() != null);
  }

  /**
   * @param condition tells whether to move focus to the editor (or inspector) for the node being opened
   * @since 2026.2
   */
  public EditorNavigator shallFocus(@NotNull Predicate<SNode> condition) {
    myFocus = condition;
    return this;
  }

  /**
   * @param condition tells whether to select the node being opened (or its parent) in the editor and inspector
   * @since 2026.2
   */
  public EditorNavigator shallSelect(@NotNull Predicate<SNode> condition) {
    mySelect = condition;
    return this;
  }

  /**
   * @param handler notified if editor has been successfully opened and ready for further actions
   * @since 2023.3
   */
  public EditorNavigator onceEditorReady(BiConsumer<SNode, Editor> handler) {
    myHandler = handler;
    return this;
  }

  public void open(@NotNull final SNodeReference node) {
    navigate(node);
  }

  /**
   * Opens the node in an editor, always asynchronously, even if invoked from EDT. Could be invoked from any thread.
   * Navigator settings are captured at the time of the call, subsequent changes do not affect pending navigation.
   *
   * @return completes with the editor once open, or with {@code null} if there's no editor opened (e.g. node is gone).
   *         Completion comes with no model access, use {@link #onceEditorReady(BiConsumer)} if you need one.
   * @since 2026.2
   */
  public CompletionStage<Editor> navigate(@NotNull SNodeReference node) {
    return NavigationSupport.getInstance(myProject).openEditor(myProject, node, EditorOpenRequest.of(myFocus, mySelect, myHandler));
  }
}
