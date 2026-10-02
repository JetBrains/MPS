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
package jetbrains.mps.project;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.ex.ProjectManagerEx;
import com.intellij.openapi.util.InvalidDataException;
import com.intellij.openapi.vfs.VfsUtil;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.extapi.module.SRepositoryRegistry;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.vfs.IdeaFileSystem;
import jetbrains.mps.ide.vfs.ProjectRootListenerComponent;
import jetbrains.mps.nodefs.FileSystemProjectBridge;
import jetbrains.mps.persistence.PersistenceRegistry;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.WorkbenchModelAccess;
import jetbrains.mps.util.annotation.AccessAsPlatformService;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.VFSManager;
import jetbrains.mps.vfs.tracking.ConflictResolverImpl;
import org.jdom.JDOMException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.ModelAccess;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Represents a project based on the idea platform project
 * <p>
 * fixme introduce a project<->library relation on this particular level (AP)
 */
public abstract class MPSProject extends ProjectBase implements FileBasedProject, Disposable {

  private final com.intellij.openapi.project.Project myProject;
  @SuppressWarnings("removal")
  private final IdeaFileSystem myProjectFileSystem;
  private final LifecycleEventDispatch myLifecycleEvents;

  private FileSystemProjectBridge myFileSystemBridge;

  // WorkbenchModelAccess is provisional argument. Now it provides implementation of executeCommand method
  // with respect to shared model lock object from its smodel.ModelAccess superclass. Once each MA has own
  // model lock object and executeCommand* implementations, we won't need this WMA parameter
  public MPSProject(@NotNull com.intellij.openapi.project.Project project) {
    super(project.getName(), MPSCoreComponents.getInstance().getPlatform(), false);
    myProject = project;
    myProjectFileSystem = IdeaFileSystem.getInstance();
    myLifecycleEvents = new LifecycleEventDispatch(this);
    project.getService(ProjectRootListenerComponent.class).boostProjectRead(myProjectFileSystem);
    Platform platform = MPSCoreComponents.getInstance().getPlatform();
    final MPSModuleRepository extRepo = platform.findComponent(MPSModuleRepository.class);
    final SRepositoryRegistry registry = platform.findComponent(SRepositoryRegistry.class);
    final ModelAccess projectMA = WorkbenchModelAccess.getInstance().createForProject(MPSProject.this);
    final ProjectRepository repo = new ProjectRepository(this, extRepo, registry, projectMA);
    repo.init();
    initRepository(repo);
    repo.setConflictResolver(new ConflictResolverImpl(this, platform.findComponent(PersistenceRegistry.class), platform.findComponent(VFSManager.class)));
  }

  @Override
  public void projectOpened() {
    initFileSystemBridge();
    super.projectOpened();
    myLifecycleEvents.projectReady();
  }

  @Override
  public void projectClosed() {
    myLifecycleEvents.projectDiscarded();
    super.projectClosed();
    destroyFileSystemBridge();
  }

  @Override
  public void dispose() {
    super.dispose();
  }

  @Override
  protected synchronized void destroy() {
    if (isDisposed()) {
      return;
    }
    ((ProjectRepository) getRepository()).setConflictResolver(null);
    super.destroy();
  }

  private void initFileSystemBridge() {
    assert myFileSystemBridge == null : "FileSystemProjectBridge should not be initialized more than once";
    if (myFileSystemBridge == null) {
      // can't override projectOpened(), go with initComponent() now; have to fix ether of these anyway once get to ProjectComponent here
      myFileSystemBridge = new FileSystemProjectBridge(this);
      // FWIW, there's OnReloadingUndoCleaner (at least) that depends on this bridge present for a project
      myFileSystemBridge.projectOpened();
    }
  }

  private void destroyFileSystemBridge() {
    FileSystemProjectBridge fileSystemBridge = myFileSystemBridge;
    assert fileSystemBridge != null : "FileSystemProjectBridge should not be null during project destruction";
    if (fileSystemBridge != null) {
      fileSystemBridge.projectClosed();
      myFileSystemBridge = null;
    }
  }

  @NotNull
  @Override
  public File getProjectFile() {
    String presentableUrl = myProject.getPresentableUrl();
    if (presentableUrl == null) {
      assert myProject.isDefault() : "Broken contract : url is null whenever the project is default!";
      throw new IllegalArgumentException("The project url is null (default project?)");
    }
    return new File(presentableUrl);
  }

  /**
   * @return the backing idea project
   */
  @NotNull
  public com.intellij.openapi.project.Project getProject() {
    return myProject;
  }

  @NotNull
  @Override
  public String getName() {
    // have to keep method here to avoid broken references in mbeddr
    return super.getName();
  }


  @Override
  public void save() {
    getProject().save();
  }

  public static MPSProject open(@NotNull String projectPath) throws InvalidDataException, IOException, JDOMException {
    com.intellij.openapi.project.Project project = ProjectManagerEx.getInstanceEx().loadAndOpenProject(projectPath);
    if (project == null) {
      return null;
    }
    return project.getService(MPSProject.class);
  }

  @Override
  public <T> T getComponent(Class<T> clazz) {
    if (isDisposed()) {
      return null;
    }
    T rv = super.getComponent(clazz);
    if (rv != null) {
      return rv;
    }
    if (clazz.getAnnotation(AccessAsPlatformService.class) != null) {
      rv = getProject().getService(clazz);
    } else {
      // Until we refactor all legacy components in MPS, shall keep getComponent() here.
      // FWIW, since Sep 2025 (25.3 or 26.1?), IDEA's getComponent() is capable of retrieving Service
      // instances (0dfa726ef314e64252ca450c61fac73403b7710d), so we are ok to continue using getComponent() here,
      // and, perhaps, shall drop AccessAsPlatformService marker
      // This was not the case, IDEA used to logPluginError in ComponentManagerImpl.doGetService.
      //noinspection UnstableApiUsage,deprecation
      rv = getProject().getComponent(clazz);
    }
    return rv;
  }

  /**
   * XXX the method might be worth exposing from {@link FileBasedProject} (with a more generic return type, of course), so that other Project clients has
   *     a chance to access project's FS without need to use global singleton
   * @return fs one may use to resolve string paths of a project
   */
  public final IdeaFileSystem getFileSystem() {
    return myProjectFileSystem;
  }

  @Override
  public void reconcileProjectFiles(@Nullable Iterable<IFile> files) {
    // XXX perhaps, shall pass ProgressMonitor in here?
    if (files == null) {
      return;
    }
    // original fix was for MPS-14247; VCS picks up the resulting VFS events itself (VcsDirtyScopeVfsListener)
    ArrayList<VirtualFile> ideaFiles = new ArrayList<>();
    for (IFile f : files) {
      final VirtualFile vf = myProjectFileSystem.asVirtualFile(f);
      if (vf == null) {
        continue;
      }
      ideaFiles.add(vf);
    }
    // I don't need write nor write intent here (as invokeLater provides),  markDirtyAndRefresh is ok with read, just didn't find invokeReadLater().
    ApplicationManager.getApplication().invokeLater(() -> {
      // VfsUtil.markDirtyAndRefresh relies on LocalFileSystem (eventually delegates to RefreshQueue), while our
      // BaseIdeaFileSystem.refresh uses IDEA's RefreshQueue directly. No idea what's right here.
      VfsUtil.markDirtyAndRefresh(false, true, true, ideaFiles.toArray(new VirtualFile[0]));
    });
  }
}
