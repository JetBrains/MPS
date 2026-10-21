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
package jetbrains.mps.openapi.navigation;

import jetbrains.mps.openapi.editor.Editor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.function.BiConsumer;
import java.util.function.Predicate;

/**
 * Tells how to open a node in an editor, see {@link NavigationSupport#openEditor(jetbrains.mps.project.Project, SNodeReference, EditorOpenRequest)}.
 * Clients would use {@link EditorNavigator} rather than implement this interface.
 * <p>
 * All methods get invoked from EDT, with model read access.
 *
 * @author Artem Tikhomirov
 * @since 2026.2
 */
public interface EditorOpenRequest {

  /**
   * Invoked both before and after an editor is open, therefore shall be idempotent and cheap.
   * <p>
   * There's no way to customize it with {@link EditorNavigator} yet, use {@link NavigationSupport} directly if you need to.
   * Likely, would be {@code EditorNavigator.setResolveRepo(SRepository)}, once there's demand.
   *
   * @param repo project repository
   * @return node to open, or {@code null} if there's nothing to open
   */
  @Nullable
  default SNode resolve(@NotNull SRepository repo, @NotNull SNodeReference node) {
    return node.resolve(repo);
  }

  /**
   * @return whether to move focus to the editor (or inspector) for the node being opened
   */
  default boolean focus(@NotNull SNode node) {
    return false;
  }

  /**
   * @return whether to select the node being opened (or its parent) in the editor and inspector
   */
  default boolean select(@NotNull SNode node) {
    return false;
  }

  /**
   * Notified once an editor for the node is open. Not invoked if there's no editor opened.
   */
  default void onReady(@NotNull SNode node, @NotNull Editor editor) {
  }

  /**
   * @param onReady optional, could be {@code null}
   */
  static EditorOpenRequest of(@NotNull Predicate<SNode> focus, @NotNull Predicate<SNode> select, @Nullable BiConsumer<SNode, Editor> onReady) {
    return new Impl(focus, select, onReady);
  }

  final class Impl implements EditorOpenRequest {
    private final Predicate<SNode> myFocus;
    private final Predicate<SNode> mySelect;
    private final BiConsumer<SNode, Editor> myOnReady;

    private Impl(Predicate<SNode> focus, Predicate<SNode> select, BiConsumer<SNode, Editor> onReady) {
      myFocus = focus;
      mySelect = select;
      myOnReady = onReady;
    }

    @Override
    public boolean focus(@NotNull SNode node) {
      return myFocus.test(node);
    }

    @Override
    public boolean select(@NotNull SNode node) {
      return mySelect.test(node);
    }

    @Override
    public void onReady(@NotNull SNode node, @NotNull Editor editor) {
      if (myOnReady != null) {
        myOnReady.accept(node, editor);
      }
    }
  }
}
