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
package jetbrains.mps.ide.findusages.caches;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.application.ReadAction;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.project.ProjectManagerListener;
import com.intellij.openapi.roots.ex.ProjectRootManagerEx;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.concurrency.AppExecutorUtil;
import com.intellij.util.indexing.IndexableSetContributorModificationTracker;
import jetbrains.mps.extapi.module.TransientSModule;
import jetbrains.mps.extapi.persistence.FileBasedModelRoot;
import jetbrains.mps.extapi.persistence.SourceRootKinds;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.vfs.IdeaFile;
import jetbrains.mps.ide.vfs.IdeaFileSystem;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.CancellableReadAction;
import jetbrains.mps.smodel.tempmodel.TempModule;
import jetbrains.mps.smodel.tempmodel.TempModule2;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.VFSManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleListener;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryListener;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/**
 * Finds indexable roots for a global repository (do not get misled by a project presence here --
 * we use project#getRepository which (as for 09.09.16) delegates to the global repo)
 *
 * Also caches them and clears them on every module change or module added/removed events. [premature optimization?]
 *
 * AP
 */
final class IndexableRootCalculator implements Disposable {
  private final MPSProject myProject;

  private final ChangeListener myModuleChangesListener = new ChangeListener(this::invalidateCache);
  private final AtomicReference<Set<VirtualFile>> myRootsCache = new AtomicReference<>(Collections.emptySet());
  private final ProjectManagerListener myProjectListener = new ProjectManagerListener() {
    @Override
    public void projectClosing(@NotNull Project project) {
      unregister();
    }
  };

  // access project service instance
  public static IndexableRootCalculator getInstance(@NotNull com.intellij.openapi.project.Project ideaProject) {
    return ideaProject.getService(IndexableRootCalculator.class);
  }

  public IndexableRootCalculator(@NotNull com.intellij.openapi.project.Project project) {
    myProject = ProjectHelper.fromIdeaProject(project);
    ProjectManager.getInstance().addProjectManagerListener(project, myProjectListener);
    register();
  }

  /*package*/ void register() {
    SRepository repository = myProject.getRepository();
    repository.addRepositoryListener(myModuleChangesListener);
    invalidateCache();
  }

  /*package*/ void unregister() {
    SRepository repository = myProject.getRepository();
    repository.removeRepositoryListener(myModuleChangesListener);
  }

  @Override
  public void dispose() {
    ProjectManager.getInstance().removeProjectManagerListener(myProject.getProject(), myProjectListener);
    unregister();
  }

  @NotNull
  public Set<VirtualFile> getIndexableRoots() {
    // XXX there is no need to cache roots, likely, IDEA caches them, but we can't calculate them here
    //     as this may lead to a deadlock, therefore we calculate them in background and access cached value here.
    return myRootsCache.get();
  }

  /**
   * We iterate over all modules, visible inside this project including libraries & core modules.
   * Thus we provide indices for libs.
   * Must be gone when some kind of BootRepository is introduced
   */
  @NotNull
  private Set<VirtualFile> calcRoots() {
    final Set<VirtualFile> files = new HashSet<>();

    myProject.getModelAccess().runReadAction(new CancellableReadAction() {
      @Override
      protected void execute() {
        final IdeaFileSystem fs = myProject.getFileSystem();
        for (final SModule m : myProject.getRepository().getModules()) {
          if (isCancelRequested()) {
            files.clear();
            break;
          }
          for (IFile f : getIndexablePaths(m)) {
            // XXX can't just use VirtualFileUtils.getVirtualFile(f) as for packaged modules
            //     IFile coming won't be IdeaFile, and getVF() would give null, effectively excluding
            //     module location from indexing. In fact, it might be the right way to go, as it's not
            //     clear whether we have to index models from within distributed modules (or whether we
            //     have to use IDEA's index mechanism for the task). However, as of this writing,
            //     MPSModelsFastFindSupport assumes any model available through ProjectRepository is indexed
            //     and without this code it may yield wrong results (i.e. consume a model that has not been
            //     indexed, omitting some instances)
            final IdeaFile ideaFile = fs.getArchiveAwareFile(f.getPath());
            VirtualFile vf = ideaFile == null ? null : ideaFile.getVirtualFile();
            if (vf != null) {
              files.add(vf);
            }
          }
        }
      }
    });
    return Collections.unmodifiableSet(files);
  }

  private Collection<IFile> getIndexablePaths(@NotNull SModule module) {
    // todo: maybe move getIndexablePaths method to FileBasedModelRoot, or even in ModelRoot classes?
    Set<IFile> result = new HashSet<>();

    for (ModelRoot modelRoot : module.getModelRoots()) {
      if (modelRoot instanceof FileBasedModelRoot) {
        for (var sourceRoot : ((FileBasedModelRoot) modelRoot).getSourceRoots(SourceRootKinds.SOURCES)) {
          IFile contentRoot = sourceRoot.getAbsolutePath();
          try {
            IFile expanded = stepIntoArchiveIfNeeded(contentRoot);
            result.add(expanded);
          } catch (IOException e) {
            String message = String.format("received io error when expanding archive; contentRoot=%s", contentRoot);
            Logger.getLogger(IndexableRootCalculator.class).error(message, e);
          }
        }
      }
    }

    return result;
  }

  // otherwise nothing in jars is indexed; and find usages does not work with stubs
  // fixme to be replaced with the new path functionality in 2021.3
  private IFile stepIntoArchiveIfNeeded(@NotNull IFile file) throws IOException {
    var path = file.getPath();
    if (file.isZipArchive()) {
      String suffix = path.endsWith("." + MPSExtentions.MPS_ARCH) ? "!/" : "";

      VFSManager vfsManager = myProject.getComponent(VFSManager.class);
      return vfsManager.getFileSystem(VFSManager.JAR_FS).findExistingFile(path + suffix);
    } else {
      return file;
    }
  }

  /*package*/ void invalidateCache() {
    // here we hold model write, schedule async root re-calculation and then notify IDEA about the change
    var pp = ReadAction.nonBlocking(this::calcRoots).coalesceBy(myModuleChangesListener).expireWith(this).submit(AppExecutorUtil.getAppExecutorService());
    pp.onSuccess(myRootsCache::set).then(ff -> {
      if (ff.isEmpty()) {
        // likely, didn't succeed to complete cancellable read and have to run again
        invalidateCache();
        return null;
      }
      // notify once per change, no need to incModificationCount for each module come and go
      //noinspection UnstableApiUsage
      IndexableSetContributorModificationTracker.getInstance().incModificationCount();
      // According to Dmitrii Batkovich, counter should suffice, but doesn't hurt to
      // notify through ProjectRootManagerEx.
      ApplicationManager.getApplication().invokeLaterOnWriteThread(() -> {
        ApplicationManager.getApplication().runWriteAction(() -> {
          // makeRootsChange event dispatch requires write lock
          //
          // XXX as long as we use value from IndexableSetContributor.getAdditionalProjectRootsToIndex, seems that
          //     we can replace deprecated method with RootsChangeRescanningInfo.RESCAN_DEPENDENCIES_IF_NEEDED
          ProjectRootManagerEx.getInstanceEx(myProject.getProject()).makeRootsChange(()->{}, false, true);
          // FTR, there's DirectoryIndexExcludeUpdater sending similar notifications. Perhaps, we can unify approach
          // to keep index up to date.
        });
      }, ModalityState.defaultModalityState(), myProject.getProject().getDisposed());
      return null;
    });
  }

  private static class ChangeListener implements SRepositoryListener, SModuleListener {
    private final Runnable myInvalidate;
    private final CycledArray<SModuleReference> myRecentTriggers = new CycledArray<>(13);

    /*package*/ ChangeListener(Runnable invalidate) {
      myInvalidate = invalidate;
    }

    @Override
    public void moduleAdded(@NotNull SModule module) {
      if (irrelevant(module)) {
        return;
      }
      module.addModuleListener(this);
      myInvalidate.run();
    }

    private boolean irrelevant(SModule module) {
      return module instanceof TransientSModule || module instanceof TempModule || module instanceof TempModule2;
    }

    @Override
    public void beforeModuleRemoved(@NotNull SModule module) {
      if (irrelevant(module)) {
        return;
      }
      module.removeModuleListener(this);
      myRecentTriggers.add(module.getModuleReference());
    }

    @Override
    public void moduleRemoved(@NotNull SModuleReference moduleReference) {
      if (myRecentTriggers.remove(moduleReference)) {
        // want to keep invalidate() call on moduleRemoved(), not beforeModuleRemoved()
        // not to get accidentally into re-calc for a removed module. I have no means
        // to figure out here if the module removed was the one I cared about. Using limited
        // set of references (initialized with an arbitrary size) to prevent memory
        // leaks.
        // Indeed, it's unlikely invalidateCache() would get to re-calc right away, but as
        // long as there's IDEA logic I can't control, it's better to do our best not to get into
        // trouble (after all, it's just an excessive, likely non-existent indexed root)
        myInvalidate.run();
      }
    }

    @Override
    public void moduleChanged(@NotNull SModule module) {
      myInvalidate.run();
    }
  }

  // linear lookup time, don't allocate too big
  // add - O(1); contains(T), offer(T) and remove(T) - O(n).
  private static class CycledArray<T> {
    private final Object[] myElements;
    private int myHead, myTail;

    public CycledArray(int size) {
      if (size <= 0) {
        throw new IllegalArgumentException();
      }
      myElements = new Object[size];
      myHead = myTail = 0;
    }

    public void add(T next) {
      if (myTail == myElements.length) {
        // wrap around
        myTail = 0;
      }
      if (myTail == myHead) {
        if (++myHead == myElements.length) {
          myHead = 0;
        }
      }
      myElements[myTail++] = next;
    }

    public boolean offer(T element) {
      if (indexOf(element) == -1) {
        add(element);
        return true;
      } else {
        return false;
      }
    }

    public boolean remove(T element) {
      final int x = indexOf(element);
      if (x == -1) {
        return false;
      }
      if (x >= myHead) {
        if (x == myHead) {
          if (++myHead == myElements.length) {
            myHead = 0;
          }
        } else {
          for (int i = 0, cc = x - myHead; i < cc; i++) {
            myElements[cc - i] = myElements[myHead+i];
          }
          myHead++;
        }
      } else {
        assert x >= 0;
        assert x < myTail;
        if (x == myTail - 1) {
          if (--myTail == 0) {
            myTail = myElements.length;
          }
        } else {
          // copy all but element preceding tail (we're to drop it anyway)
          for (int i = 0, cc = myTail - 1 - x; i < cc; i++) {
            myElements[x + i] = myElements[myTail - 1 - i];
          }
          myTail--;
        }
      }
      return true;
    }

    public boolean contains(T element) {
      return indexOf(element) != -1;
    }

    private int indexOf(T e) {
      if (myHead < myTail) {
        for (int i = myHead; i < myTail; i++) {
          if (Objects.equals(myElements[i], e)) {
            return i;
          }
        }
        return -1;
      }
      // XXX can't I use // (i+myElements.length) % myElements.length?
      for (int i = myHead; i < myElements.length; i++) {
        if (Objects.equals(myElements[i], e)) {
          return i;
        }
      }
      for (int i = 0; i < myTail; i++) {
        if (Objects.equals(myElements[i], e)) {
          return i;
        }
      }
      return -1;
    }
  }

//  public static void main(String[] args) {
//    CycledArray<String> aaa = new CycledArray<>(3);
//    ensure(aaa.offer("1"));
//    ensure(aaa.offer("2"));
//    ensure(aaa.offer("3"));
//    ensure(aaa.offer("4"));
//    ensure(aaa.offer("5"));
//    ensure(!aaa.offer("4"));
//    //
//    ensure(aaa.contains("5"));
//    ensure(aaa.contains("4"));
//    ensure(aaa.contains("3"));
//    ensure(!aaa.contains("2"));
//    ensure(!aaa.contains("1"));
//    //
//    ensure(aaa.remove("4"));
//    ensure(!aaa.contains("4"));
//    ensure(!aaa.remove("1"));
//    ensure(!aaa.remove("2"));
//    //
//    ensure(!aaa.offer("5"));
//    ensure(aaa.offer("6"));
//    ensure(aaa.contains("3"));
//    ensure(aaa.contains("5"));
//    ensure(aaa.contains("6"));
//    //
//    ensure(aaa.offer("7"));
//    ensure(!aaa.contains("3"));
//    ensure(aaa.contains("5"));
//    ensure(aaa.contains("6"));
//    ensure(aaa.contains("7"));
//  }
//
//  private static void ensure(boolean r) {
//    if (!r) {
//      throw new RuntimeException();
//    }
//  }
}
