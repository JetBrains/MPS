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
package jetbrains.mps.plugins.tool;

import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowFactory;
import jetbrains.mps.ide.tools.BaseTool;
import jetbrains.mps.plugins.projectplugins.ProjectPluginManager;
import org.jetbrains.annotations.NotNull;

/**
 * A single, shared {@link ToolWindowFactory} serving every MPS tool window that is declared via the
 * {@code com.intellij.toolWindow} extension point. The platform owns creation, lifecycle and timing of the
 * window; this factory only connects the window to the {@link BaseTool} that holds its content/logic.
 * <p>
 * Initial visibility is driven by the owning {@link BaseTool}: {@link #shouldBeAvailable(Project)} returns
 * {@code false} (so the stripe is hidden at startup), and {@link BaseTool#register()} subsequently calls
 * {@link com.intellij.openapi.wm.ToolWindow#setAvailable(boolean, Runnable) setAvailable(true)} for tools
 * whose {@code isInitiallyAvailable()} is {@code true}. That call lazily triggers
 * {@link #createToolWindowContent(Project, ToolWindow)}, which by then is guaranteed to find the tool in the
 * project-scoped {@link ProjectPluginManager}.
 *
 * @see BaseTool#attachTo(ToolWindow)
 * @see ProjectPluginManager#getTool(String)
 */
public final class MpsToolWindowFactory implements ToolWindowFactory, DumbAware {

  @Override
  public boolean shouldBeAvailable(@NotNull Project project) {
    return false;
  }

  @Override
  public void createToolWindowContent(@NotNull Project project, @NotNull ToolWindow toolWindow) {
    BaseTool tool = ProjectPluginManager.getInstance(project).getTool(toolWindow.getId());
    if (tool != null) {
      tool.attachTo(toolWindow);
    }
  }
}
