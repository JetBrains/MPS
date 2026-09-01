/*
 * Copyright 2003-2025 JetBrains s.r.o.
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
package jetbrains.mps.workbench.dialogs.project.newproject;

import com.intellij.ide.impl.OpenProjectTask;
import com.intellij.ide.startup.StartupManagerEx;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.application.ex.ApplicationManagerEx;
import com.intellij.openapi.components.StorageScheme;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ex.ProjectManagerEx;
import com.intellij.openapi.startup.StartupManager;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectManager;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.StandaloneMPSProject;
import jetbrains.mps.project.modules.DevkitProducer;
import jetbrains.mps.project.modules.LanguageProducer;
import jetbrains.mps.project.modules.SolutionProducer;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModelName;

import java.io.File;
import java.nio.file.Path;

public class ProjectFactory {
  private ProjectOptions myOptions;
  private Project myCreatedProject;

  private Language myCreatedLanguage;
  private Solution myCreatedSolution;
  private DevKit myCreatedDevkit;

  public ProjectFactory(ProjectOptions options) {
    myOptions = options;
  }

  /**
   * @deprecated use {@link #createProjectMPS()} instead
   */
  @Deprecated(forRemoval = true, since = "2025.2")
  public Project createProject() throws ProjectNotCreatedException {
    return createProjectMPS().getProject();
  }

  public MPSProject createProjectMPS() throws ProjectNotCreatedException {
    final String[] error = new String[]{null};
    ProgressManager.getInstance().run(new Task.Modal(null, "Creating Project", false) {
      @Override
      public void run(@NotNull() ProgressIndicator indicator) {
        indicator.setIndeterminate(true);
        error[0] = createDirs();
        if (error[0] != null) {
          return;
        }

        final String projectFilePath = myOptions.getStorageScheme() == StorageScheme.DIRECTORY_BASED
                                       ? myOptions.getProjectPath()
                                       : myOptions.getProjectPath() + File.separator + myOptions.getProjectName() + MPSExtentions.DOT_MPS_PROJECT;

        myCreatedProject = ProjectManagerEx.getInstanceEx().newProject(Path.of(projectFilePath), OpenProjectTask.build()
          .asNewProject()
          .withProjectName(myOptions.getProjectName()));
      }
    });

    if (error[0] != null) {
      throw new ProjectNotCreatedException(error[0]);
    }

    boolean saveAllowed = ApplicationManagerEx.getApplicationEx().isSaveAllowed();
    try {
      ApplicationManagerEx.getApplicationEx().setSaveAllowed(true);
      myCreatedProject.save();
    } finally {
      ApplicationManagerEx.getApplicationEx().setSaveAllowed(saveAllowed);
    }

    final MPSProject mpsProject = ProjectHelper.fromIdeaProjectOrFail(myCreatedProject);
    assert mpsProject != null;

    StartupManager.getInstance(myCreatedProject).runAfterOpened(() -> {
      ApplicationManager.getApplication().invokeAndWait(() -> {
        mpsProject.getModelAccess().executeCommand(() -> {
          if (myOptions.getCreateNewLanguage()) {
            // see if for new solution, below
            final IFile path = MPSProjectTemplate.getModuleHome(mpsProject, new File(myOptions.getLanguagePath()));
            myCreatedLanguage = new LanguageProducer(mpsProject).create(myOptions.getLanguageNamespace(), path);
          }

          if (myOptions.getCreateNewSolution()) {
            // FIXME here we can control whether to get controlled IFile instance (through VFSManager) or
            //       rely on project fs. Since it's almost a dead code (CreateProjectWizard uses MPSProjectTemplate to fill the project)
            //       I decided not to bother.
            final IFile path = MPSProjectTemplate.getModuleHome(mpsProject, new File(myOptions.getSolutionPath()));
            myCreatedSolution = new SolutionProducer(mpsProject).create(myOptions.getSolutionNamespace(), path);
          }

          if (myOptions.getCreateNewDevkit()) {
            final IFile path = MPSProjectTemplate.getModuleHome(mpsProject, new File(myOptions.getDevkitPath()));
            myCreatedDevkit = new DevkitProducer(mpsProject).create(myOptions.getDevkitNamespace(), path);
          }

          if (myCreatedSolution != null && myCreatedLanguage != null) {
            myCreatedSolution.save();
            if (myOptions.getCreateModel()) {
              final SModelName mn = new SModelName(myCreatedSolution.getModuleName(), "sandbox", null);
              EditableSModel model = (EditableSModel) myCreatedSolution.getModelRoots().iterator().next().createModel(mn);
              new ModelImports(model).addUsedLanguage(MetaAdapterFactory.getLanguage(myCreatedLanguage.getModuleReference()));
              model.save();
            }
          }
          if (myOptions.getCreateNewSolution() || myOptions.getCreateNewLanguage() || myOptions.getCreateNewDevkit()) {
            ((StandaloneMPSProject) mpsProject).update();
          }
        });

      });
    });
    return mpsProject;
  }

  public void activate(boolean openInNewFrame) {
    if (myCreatedProject == null) {
      return;
    }

    MPSCoreComponents.getInstance().getPlatform().findComponent(ProjectManager.class).fireProjectCreated(ProjectHelper.fromIdeaProject(myCreatedProject));

    ProjectManagerEx projectManager = ProjectManagerEx.getInstanceEx();

    @Nullable Project project = projectManager.openProject(
        Path.of(myCreatedProject.getBasePath()),
        OpenProjectTask.build()
                       .withForceOpenInNewFrame(openInNewFrame)
                       .withProject(myCreatedProject));
    if (project != null) {
      StartupManagerEx startupManager = StartupManagerEx.getInstanceEx(myCreatedProject);
      // extra .invokeLater() was added here (copied from IDEA platform) see: https://youtrack.jetbrains.com/issue/IDEA-158859
      Runnable projectPaneActivator =
          () -> {
            final ProjectPane projectPane = ProjectPane.getInstance(myCreatedProject);
            if (projectPane != null) {
              ApplicationManager.getApplication().invokeLater(projectPane::activate, ModalityState.NON_MODAL);
            }
          };
      startupManager.runAfterOpened(projectPaneActivator);
    }
  }

  @Nullable
  private String createDirs() {
    File projectDirFile = new File(myOptions.getProjectPath());
    if (!(projectDirFile.exists())) {
      if (!projectDirFile.mkdirs()) {
        return "Couldn't create project directory";
      }
    }

    if (myOptions.getCreateNewLanguage()) {
      File languageDirFile = new File(myOptions.getLanguagePath());
      if (!(languageDirFile.exists())) {
        if (!languageDirFile.mkdirs()) {
          return "Couldn't create language directory";
        }
      }
    }

    if (myOptions.getCreateNewSolution()) {
      String path = myOptions.getSolutionPath() + File.separator + myOptions.getSolutionNamespace() + MPSExtentions.DOT_SOLUTION;
      File solutionDescriptorFile = new File(path);
      File dir = solutionDescriptorFile.getParentFile();
      if (!(dir.exists())) {
        if (!dir.mkdirs()) {
          return "Couldn't create solution directory";
        }
      }
    }

    return null;
  }

  public static class ProjectNotCreatedException extends Exception {
    public ProjectNotCreatedException(String message) {
      super(message);
    }
  }
}
