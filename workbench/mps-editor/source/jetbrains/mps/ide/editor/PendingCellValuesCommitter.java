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
package jetbrains.mps.ide.editor;

import com.intellij.openapi.fileEditor.FileDocumentManagerListener;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManager;

/**
 * Cells themselves only commit their values on focus lost. This is not always guaranteed to happen, especially
 * if the root node or project is saved, closed, or recompiled with the cursor still in the cell.
 */
public final class PendingCellValuesCommitter implements FileDocumentManagerListener {

  @Override
  public void beforeAllDocumentsSaving() {
    for (Project project : ProjectManager.getInstance().getOpenProjects()) {
      EditorTrackService trackService = project.getServiceIfCreated(EditorTrackService.class);
      if (trackService != null) {
        trackService.commitPendingCellValues();
      }
    }
  }
}
