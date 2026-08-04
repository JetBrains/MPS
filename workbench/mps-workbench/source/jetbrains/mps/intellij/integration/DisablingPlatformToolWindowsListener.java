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
package jetbrains.mps.intellij.integration;

import com.intellij.analysis.problemsView.toolWindow.ProblemsView;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowId;
import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.openapi.wm.ex.ToolWindowManagerListener;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/*package*/ final class DisablingPlatformToolWindowsListener implements ToolWindowManagerListener {
  private final List<String> myToolWindows2Disable = Arrays.asList(ToolWindowId.FIND, ToolWindowId.INSPECTION, ToolWindowId.SERVICES, ToolWindowId.TODO_VIEW, ProblemsView.ID, ToolWindowId.BOOKMARKS);

  @Override
  public void toolWindowsRegistered(@NotNull List<String> ids, @NotNull ToolWindowManager toolWindowManager) {
    HashSet<String> toDisable = new HashSet<>(myToolWindows2Disable);
    toDisable.retainAll(ids);
    if (toDisable.isEmpty()) {
      return;
    }
    ApplicationManager.getApplication().invokeLater(() -> {
      for (String id : toDisable) {
        ToolWindow toolWindow = toolWindowManager.getToolWindow(id);
        if (toolWindow != null) {
          toolWindow.setAvailable(false);
        }
      }
    });
  }
}
