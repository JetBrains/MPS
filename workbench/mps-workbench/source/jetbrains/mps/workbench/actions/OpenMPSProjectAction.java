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
package jetbrains.mps.workbench.actions;

import com.intellij.DynamicBundle;
import com.intellij.icons.AllIcons;
import com.intellij.ide.IdeBundle;
import com.intellij.ide.actions.OpenFileAction;
import com.intellij.ide.impl.OpenProjectTask;
import com.intellij.ide.impl.ProjectUtil;
import com.intellij.idea.ActionsBundle;
import com.intellij.openapi.actionSystem.ActionUpdateThread;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.actionSystem.Presentation;
import com.intellij.openapi.application.Application;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.fileChooser.FileChooser;
import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.fileChooser.ex.FileChooserDialogImpl;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ex.ProjectManagerEx;
import com.intellij.openapi.ui.Messages;
import com.intellij.openapi.util.NlsContexts;
import com.intellij.openapi.util.SystemInfo;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.wm.impl.welcomeScreen.FlatWelcomeFrame;
import com.intellij.openapi.wm.impl.welcomeScreen.NewWelcomeScreen;
import com.intellij.ui.ExperimentalUI;
import org.jetbrains.annotations.NotNull;

import java.awt.Component;
import java.io.File;

public class OpenMPSProjectAction extends AnAction {

  public OpenMPSProjectAction() {
  }

  @Override
  public @NotNull ActionUpdateThread getActionUpdateThread() {
    return ActionUpdateThread.BGT;
  }


  @Override
  public void update(@NotNull AnActionEvent e) {
    Presentation presentation = e.getPresentation();
    presentation.setIcon(AllIcons.Actions.MenuOpen);
    presentation.setApplicationScope(true);
  }

  protected FileChooserDescriptor createFileChooserDescriptor() {
    return new OpenMPSProjectFileChooserDescriptor(true);
  }

  @SuppressWarnings("UnstableApiUsage")
  @Override
  public void actionPerformed(@NotNull AnActionEvent e) {
    final Project currentProject = PlatformDataKeys.PROJECT.getData(e.getDataContext());
    final Component parent = PlatformDataKeys.CONTEXT_COMPONENT.getData(e.getDataContext());

    final FileChooserDescriptor descriptor = createFileChooserDescriptor();
    descriptor.setTitle(IdeBundle.message("title.open.project"));

    VirtualFile userHomeDir = null;
    if (SystemInfo.isMac || SystemInfo.isLinux) {
      final String home = System.getProperty("user.home");
      if (home != null) {
        userHomeDir = LocalFileSystem.getInstance().findFileByIoFile(new File(home));
      }
    }

    descriptor.putUserData(FileChooserDialogImpl.PREFER_LAST_OVER_TO_SELECT, Boolean.TRUE);

    final VirtualFile @NotNull [] virtualFiles = FileChooser.chooseFiles(descriptor, parent, currentProject, userHomeDir);
    for (VirtualFile virtualFile : virtualFiles) {
      if (virtualFile == null) {
        continue;
      }

      if (OpenMPSProjectFileChooserDescriptor.isMpsProjectDirectory(virtualFile) || OpenMPSProjectFileChooserDescriptor.isMpsProjectFile(virtualFile)) {
        if (OpenMPSProjectTrustProjectHelper.checkTrust(virtualFile)) {
          ProjectUtil.openProject(virtualFile.toNioPath(), OpenProjectTask.build().withProjectToClose(currentProject).withForceOpenInNewFrame(false));
        }
      } else {
        if (virtualFile.isDirectory()) {
          @NlsContexts.DialogTitle String title = new DynamicBundle(this.getClass(), "messages.MPSIdeBundle").getMessage("unknown.mps.project.directory.title");
          @NlsContexts.DialogMessage String msg = new DynamicBundle(this.getClass(), "messages.MPSIdeBundle").getMessage("unknown.mps.project.directory.text");
          Messages.showErrorDialog(currentProject, msg, title);
        } else {
          if (currentProject == null) {
            @NlsContexts.DialogTitle String title =
                new DynamicBundle(this.getClass(), "messages.MPSIdeBundle").getMessage("cannot.open.file.without.project.title");
            @NlsContexts.DialogMessage String msg =
                new DynamicBundle(this.getClass(), "messages.MPSIdeBundle").getMessage("cannot.open.file.without.project.text");
            Messages.showErrorDialog(msg, title);
          } else {
            OpenFileAction.openFile(virtualFile, currentProject);
          }
        }
      }

    }
//    final VirtualFile virtualFile = FileChooser.chooseFile(descriptor, currentProject, userHomeDir);
  }

  public static class OnMPSWelcomeScreen extends OpenMPSProjectAction {
    @Override
    public void update(@NotNull AnActionEvent e) {
      Presentation presentation = e.getPresentation();
      if (!NewWelcomeScreen.isNewWelcomeScreen(e)) {
        presentation.setEnabledAndVisible(false);
        return;
      }
      if (FlatWelcomeFrame.USE_TABBED_WELCOME_SCREEN) {
        presentation.setIcon(AllIcons.Welcome.Open);
        presentation.setSelectedIcon(AllIcons.Welcome.OpenSelected);
        presentation.setText(ActionsBundle.message("action.Tabbed.WelcomeScreen.OpenProject.text"));
      }
      else {
        presentation.setIcon(AllIcons.Actions.MenuOpen);
      }
    }

    @Override
    protected FileChooserDescriptor createFileChooserDescriptor() {
      return new OpenMPSProjectFileChooserDescriptor(true) {
        @Override
        public boolean isFileSelectable(VirtualFile file) {
          return isMpsProjectFile(file) || isMpsProjectDirectory(file);
        }
      };
    }

  }
}
