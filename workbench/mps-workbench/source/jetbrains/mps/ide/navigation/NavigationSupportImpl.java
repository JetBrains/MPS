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
package jetbrains.mps.ide.navigation;

import jetbrains.mps.ide.editor.MPSEditorOpener;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.openapi.navigation.EditorOpenRequest;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;

import java.util.concurrent.CompletionStage;

/**
 * Idea-aware navigation implementation
 */
public class NavigationSupportImpl extends NavigationSupport {

  @SuppressWarnings("removal")
  @Deprecated(since = "2026.2", forRemoval = true)
  @Override
  public Editor openNode(@NotNull Project project, @NotNull SNode node, boolean focus, boolean select) {
    // cast to MPSProject is ok as we are inside IDEA-aware ApplicationComponent
    return new MPSEditorOpener((MPSProject) project).openNode(node, focus, select);
  }

  @Override
  public CompletionStage<Editor> openEditor(@NotNull Project project, @NotNull SNodeReference node, @NotNull EditorOpenRequest request) {
    return new MPSEditorOpener((MPSProject) project).open(node, request);
  }

  @Override
  public void selectInTree(@NotNull Project project, @NotNull SNode node, boolean focus) {
    ProjectPane projectPane = ProjectPane.getInstance(project);
    projectPane.selectNode(node, focus);
  }

  @Override
  public void selectInTree(@NotNull Project project, @NotNull SModel model, boolean focus) {
    ProjectPane projectPane = ProjectPane.getInstance(project);
    projectPane.selectModel(model, focus);
  }

  @Override
  public void selectInTree(@NotNull Project project, @NotNull SModule module, boolean focus) {
    ProjectPane projectPane = ProjectPane.getInstance(project);
    projectPane.selectModule(module, focus);
  }
}
