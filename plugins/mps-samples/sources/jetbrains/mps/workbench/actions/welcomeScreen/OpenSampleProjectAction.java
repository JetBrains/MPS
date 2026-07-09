/*
 * Copyright 2003-2020 JetBrains s.r.o.
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
package jetbrains.mps.workbench.actions.welcomeScreen;

import com.intellij.ide.impl.OpenProjectTask;
import com.intellij.ide.impl.ProjectUtil;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.application.Application;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.fileChooser.FileChooser;
import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.ui.ExperimentalUI;
import jetbrains.mps.samples.SamplesInfo;
import jetbrains.mps.workbench.actions.OpenMPSProjectFileChooserDescriptor;
import jetbrains.mps.workbench.actions.OpenMPSProjectTrustProjectHelper;
import org.jetbrains.annotations.NotNull;

import java.awt.Component;
import java.io.File;
import java.util.Arrays;
import java.util.Comparator;

public class OpenSampleProjectAction extends AnAction {

  @SuppressWarnings("UnstableApiUsage")
  public void actionPerformed(@NotNull AnActionEvent e) {
    VirtualFile samplesFolder = null;
    String samplesPath = SamplesInfo.getInstance().getSamplesPath();
    if (System.getProperty("user.home") != null && samplesPath != null) {
      samplesFolder = LocalFileSystem.getInstance().findFileByIoFile(new File(samplesPath));
      if (samplesFolder != null) {
        // Try to locate first sample folder or fall back to samples folder
        samplesFolder = Arrays.stream(samplesFolder.getChildren()).min(Comparator.comparing(VirtualFile::getName)).orElse(samplesFolder);
      }
    }

    if(samplesFolder == null) {
      // Can't obtain samples path - SamplesExtractor should have already shown dialogs so just skip here
      return;
    }

    final Project currentProject = PlatformDataKeys.PROJECT.getData(e.getDataContext());
    final Component parent = PlatformDataKeys.CONTEXT_COMPONENT.getData(e.getDataContext());
    final FileChooserDescriptor descriptor = new OpenMPSProjectFileChooserDescriptor(true);
    descriptor.setTitle("Samples");

    final VirtualFile @NotNull [] virtualFiles = FileChooser.chooseFiles(descriptor, parent, currentProject, samplesFolder);
    for (VirtualFile virtualFile : virtualFiles) {
      if (virtualFile == null) {
        continue;
      }
      if (OpenMPSProjectTrustProjectHelper.checkTrust(virtualFile)) {
        ProjectUtil.openProject(virtualFile.toNioPath(), OpenProjectTask.build().withProjectToClose(currentProject).withForceOpenInNewFrame(false));
      }
    }
  }
}
