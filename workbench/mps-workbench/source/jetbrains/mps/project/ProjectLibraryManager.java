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
package jetbrains.mps.project;

import com.intellij.openapi.application.AccessToken;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManagerListener;
import com.intellij.util.SlowOperations;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.library.BaseLibraryManager;
import jetbrains.mps.library.contributor.LibraryContributor;
import jetbrains.mps.util.MacroHelper;
import jetbrains.mps.util.MacrosFactory;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.util.Collections;

@State(
  name = "ProjectLibraryManager",
  storages = @Storage("libraries.xml")
)
public class ProjectLibraryManager extends BaseLibraryManager {
  private final Project myProject;
  private IFileSystem myFileSystem;

  public static ProjectLibraryManager getInstance(Project ideaProject) {
    return ideaProject.getService(ProjectLibraryManager.class);
  }

  public ProjectLibraryManager(Project project) {
    // could not use MPSProject here as it depends from this component
    myProject = project;
    if (null == DumbService.getInstance(project)) {
      // DumbService dependency introduced in 90f537f7 to address MPS-12136.
      // Likely, there's no such issue anymore, but better safe than sorry, ask DS to get
      // initialized in advance
      throw new IllegalStateException();
    }
  }

  @Override
  @NotNull
  public LibraryContributor createContributor(IFileSystem fs) {
    myFileSystem = fs;
    return super.createContributor(fs);
  }

  @Override
  protected String addMacros(String path) {
    return withProject().shrinkPath(path);
  }

  @Override
  protected String removeMacros(String path) {
    return withProject().expandPath(path);
  }

  private MacroHelper withProject() {
    if (myFileSystem == null) {
      // do not mangle file names unless we've been properly initialized. This is a hack, instead, shall not mangle file names on loadState()/getState()
      // but this is much less trivial to accomplish now.
      return MacrosFactory.getGlobal();
    }
    IFile projectFile = myFileSystem.getFile(getAnchorFile());
    return MacrosFactory.forProjectFile(projectFile);
  }

  private File getAnchorFile() {
    String projectUrl = myProject.getPresentableUrl();
    if (projectUrl != null) {
      return new File(projectUrl);
    }
    return new File(PathManager.getHomePath());
  }

  public static class ProjectListener implements ProjectManagerListener {
    private LibraryContributor myContributor;

    @Override
    public void projectOpened(@NotNull Project project) {
      if (project.isDefault()) {
        return;
      }
      VFSManager vfsManager = MPSCoreComponents.getInstance().getPlatform().findComponent(VFSManager.class);
      myContributor = ProjectLibraryManager.getInstance(project).createContributor(vfsManager.getFileSystem(VFSManager.FILE_FS));
      // projectOpened runs on EDT, and the library scan does VFS I/O there.
      // Remove this section when the scan moves to a background thread.
      try(AccessToken ignore = SlowOperations.knownIssue("MPS-40512")) {
        MPSCoreComponents.getInstance().getLibraryInitializer().load(Collections.singletonList(myContributor));
      }
    }

    @Override
    public void projectClosed(@NotNull Project project) {
      if (project.isDefault()) {
        return;
      }
      if (myContributor != null) {
        MPSCoreComponents.getInstance().getLibraryInitializer().unload(Collections.singletonList(myContributor));
        myContributor = null;
      }
    }
  }
}
