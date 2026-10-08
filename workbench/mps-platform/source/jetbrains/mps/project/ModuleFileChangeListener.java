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

import jetbrains.mps.library.ModuleFileTracker;
import jetbrains.mps.library.ModuleFileTracker.Delta;
import jetbrains.mps.library.ModulesMiner;
import jetbrains.mps.library.ModulesMiner.ModuleHandle;
import jetbrains.mps.project.structure.project.ModulePath;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.RedispatchListener;
import jetbrains.mps.vfs.refresh.FileListener;
import jetbrains.mps.vfs.refresh.FileListeningPreferences;
import jetbrains.mps.vfs.refresh.FileSystemEvent;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

/**
 * Listens for module descriptor paths in a project descriptor.
 * Files created with a path that did not exist at the moment project was last initialized, trigger project update.
 * Changes to descriptor files drop or reload respective project modules.
 *
 * Note, this class doesn't track changes to project descriptor file (the one with module descriptor paths, .mps/modules.xml).
 *
 * XXX In fact, quite similar to {@link jetbrains.mps.library.SLibrary}, just an own source for module paths, worth a refactoring.
 *     Besides, there's {@code ProjectModuleLoader} which is responsible for another SLibrary-similar part of functionality.
 *
 * @author Alexey Pyshkin
 * @author Artem Tikhomirov
 */
/*package*/ final class ModuleFileChangeListener implements ProjectModuleLoadingListener {
  private final MPSProject myMpsProject;

  /*
   * tracks changes and removals of files with descriptors of project modules
   */
  private final ModuleFileTracker myProjectModulesAndFiles;

  private final RedispatchListener myRedispatchListener;

  /**
   * All these checks whether the module is not disposed are due to the problem of idea plugin
   * project being a MPSProject which is absolutely incorrect (since the project file does not contain a descriptor, there are no virtual folders
   * and there is no need in ProjectDescriptor filling the project with modules, since idea modules contribute mps modules via MPSFacet.
   * The MPSFacet is also responsible for disposing the corresponding SModule there thus we might get disposed modules in the plugin environment
   */
  /*package*/ void update(@NotNull ProgressMonitor monitor, @NotNull FileSystemEvent event) {
    // removeModule0, below, grabs model write anyway, hence runWriteAction
    final SRepository repo = myMpsProject.getRepository();
    repo.getModelAccess().runWriteAction(() -> {
      ModulesMiner mm = new ModulesMiner(myMpsProject.getPlatform());
      // Project keeps list of files it loads modules from, we don't care about any new file created unless it's referenced in project descriptor, ignore new.
//      event.getCreated().forEach(mm::collectModules);
      event.getChanged().forEach(mm::collectModules);
      // FIXME mm.collectModules have to be guarded with code that deals with failures to read module descriptor and asks VCS (if any) for a
      //       merge conflict resolution. SModuleOperations#reloadFromDisk used to do it through SuspiciousModelIndex, which is not the thing I'd like to keep,
      //       especially in a {@code SuspiciousModelHandler.getHandler().handleSuspiciousModule()} way  of AbstractModule#handleReadProblem()
      final Delta moduleDelta = myProjectModulesAndFiles.buildDeltaFor(event, mm);

      moduleDelta.deletedFiles().forEach(f -> f.removeListener(myRedispatchListener));

      moduleDelta.gone().forEach((mRef, file) -> {
        IFile path = myMpsProject.getModuleDescriptorFile(mRef);
        if (path != null) {
          moduleNotFound(path);
        }
        SModule resolved = mRef.resolve(repo);
        if (resolved != null) {
          myMpsProject.removeModule0(resolved, null);
        }
        // removeModule0, above, fires ProjectModuleLoadingListener.moduleRemoved for generators owned by a removed language,
        // but not for the module itself; tell tracker there's no longer module in the file
        myProjectModulesAndFiles.forget(file, mRef);
      });
      // FIXME shall I add new modules (delta.toLoad()) discovered from existing/tracked files? Previous version didn't care to do that, though that
      //       seems to be wrong. Project descriptor may reference same file, but changed content may end up in a new module descriptor.
      //       What should I do to add a module here? myMpsProject.addModule() or addModule0()?

      // reload those changed.
      for (ModuleHandle mh : moduleDelta.changed()) {
        final SModule module = mh.getDescriptor().getModuleReference().resolve(repo);
        if (module == null) {
          continue;
        }
        if (module instanceof AbstractModule) {
          // FIXME If MD comes from another file, need to let AM know about the change!
          //       Perhaps, it's better just to unregister the module altogether and instantiate again?
          ((AbstractModule) module).setModuleDescriptor(mh.getDescriptor(), false);
        }
      }
    });
  }

  /*
   * tracks files known to host a project's module but not existent at the moment project is initialized.
   */
  private final FileListener myMissingFileListener = new FileListener() {
    @Override
    public void update(@NotNull ProgressMonitor monitor, @NotNull FileSystemEvent event) {
      for (IFile file : event.getCreated()) {
        file.removeListener(this);
      }
      if (!event.getCreated().isEmpty()) {
        myMpsProject.update();
      }
    }

    @NotNull
    @Override
    public FileListeningPreferences listeningPreferences() {
      return FileListeningPreferences.construct().notifyOnAncestorCreation().build();
    }
  };

  ModuleFileChangeListener(@NotNull MPSProject mpsProject) {
    myMpsProject = mpsProject;
    myProjectModulesAndFiles = new ModuleFileTracker();
    // prefs copied from ModuleFileTracker;
    final FileListeningPreferences prefs = FileListeningPreferences.construct()
                                                                   .notifyOnDescendantCreation()
                                                                   .notifyOnParentRemoval()
                                                                   .build();
    myRedispatchListener = new RedispatchListener(this::update, prefs);
  }

  @Override
  public void moduleLoaded(@NotNull SModule module, IFile file) {
    // FIXME I'd love to use `file = file.stepUpToArchive()` here not to add listeners inside archives, but this change require careful fix in other
    //       places ModuleFileTracker is used (especially in update/#buildDeltaFor()
    boolean needListener = !myProjectModulesAndFiles.isAnyModuleTrackedFor(file);
    myProjectModulesAndFiles.track(file, module);
    // Shall account for more than one module for the same path (e.g. if/when ProjectModuleLoader dispatches events for generators)
    //   although IFile.addListener implementation adds given listener for a file only once, doesn't hurt to be careful/explicit about adding one.
    if (needListener) {
      file.addListener(myRedispatchListener);
    }
  }

  @Override
  public void moduleRemoved(@NotNull SModule module, IFile file) {
    myProjectModulesAndFiles.forget(file, module);
    if (!myProjectModulesAndFiles.isAnyModuleTrackedFor(file)) {
      // if there are few modules in a file, removal of one of them shall not leave us here without notifications for others.
      file.removeListener(myRedispatchListener);
    }
  }

  @Override
  public void moduleNotFound(@NotNull final IFile descriptorFile) {
    descriptorFile.addListener(myMissingFileListener);
  }
}
