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

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.project.Project;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;

/**
 * Facility to reveal different aspects of an mps project, either in a project tree or in an editor.
 * This is low-level, implementation API and shall not be used unless there's justification to do so (e.g. you've got an SNode
 * and need to do something with an {@link Editor} from {@link #openNode(Project, SNode, boolean, boolean)}. Otherwise, use
 * {@link EditorNavigator} or {@link ProjectPaneNavigator}
 * FIXME it's odd to require external methods to wrap into read/write/EDT if we can do it ourselves here (with project and its model access available)
 * FIXME it's odd this class lives in [editor-api], why not in platform/ui?
 */
public abstract class NavigationSupport implements CoreComponent {
  private static NavigationSupport INSTANCE;

  /**
   * @deprecated use {@link EditorNavigator} or {@link ProjectPaneNavigator} instead.
   *             If utterly necessary, for transition purposes can use {@link #getInstance(Project)}
   */
  @Deprecated(forRemoval = true, since = "2024.1")
  public static NavigationSupport getInstance() {
    Logger.getLogger(NavigationSupport.class).warnDeprecatedUse("Replace with #getInstance(project) call");
    return INSTANCE;
  }

  public static NavigationSupport getInstance(@NotNull Project mpsProject) {
    // NavigationSupportImpl is part of [mps-workbench] and gets registered through j.m.ide module plugin (AppPart)
    return mpsProject.getComponent(NavigationSupport.class);
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
  }

  @Override
  public void dispose() {
    INSTANCE = null;
  }


  /**
   * Opens node in the editor. Requires: model read, EDT.
   * <p>
   * Beware, the editor gets opened with model read held, which may lead to a deadlock (MPS-38858) if the platform needs a write action
   * meanwhile. Use {@link EditorNavigator#navigate(SNodeReference)} instead, it gives access to the editor as well.
   *
   * @param mpsProject project where node is looked up and where editor is opened
   * @param node alive node from model repository
   * @param focus move focus if needed - to editor or to inspector
   * @param select select node (or its parent) in editor and inspector (if exist)
   * @deprecated use {@link EditorNavigator#navigate(SNodeReference)}
   */
  @Deprecated(since = "2026.2", forRemoval = true)
  public Editor openNode(@NotNull Project mpsProject, @NotNull SNode node, boolean focus, boolean select) {
    Logger.getLogger(NavigationSupport.class).warnDeprecatedUse("Replace with #openEditor(project, node, request) call");
    return null;
  }

  /**
   * Opens node in the editor, asynchronously. Could be invoked from any thread, with or without model access.
   * Clients shall use {@link EditorNavigator}.
   * <p>
   * Default implementation opens nothing, subclasses are expected to override.
   *
   * @return completes with the editor once open, or with {@code null} if there's no editor opened. Completion comes with no model access.
   * @since 2026.2
   */
  public CompletionStage<Editor> openEditor(@NotNull Project mpsProject, @NotNull SNodeReference node, @NotNull EditorOpenRequest request) {
    Logger.getLogger(NavigationSupport.class).warning("No editor support, override #openEditor(project, node, request)");
    return CompletableFuture.completedFuture(null);
  }

  /**
   * Opens project tree tool and selects the node. Requires: model read, EDT.
   *
   * @param project where the node is looked up and where it gets revealed
   * @param node  node to select
   * @param focus focus on project tree tool
   */
  public abstract void selectInTree(@NotNull Project project, @NotNull SNode node, boolean focus);


  /**
   * Activates project tree tool and selects the model. Requires: model read, EDT.
   *
   * @param project where the model is looked up and where it gets revealed
   * @param model model to select
   * @param focus focus on project tree tool
   */
  public abstract void selectInTree(@NotNull Project project, @NotNull SModel model, boolean focus);

  /**
   * Activates project tree tool and selects the module. Requires: module read, EDT.
   *
   * @param project where the module is looked up and where it gets revealed
   * @param module module to select
   * @param focus  focus on project tree tool
   */
  public abstract void selectInTree(@NotNull Project project, @NotNull SModule module, boolean focus);
}
