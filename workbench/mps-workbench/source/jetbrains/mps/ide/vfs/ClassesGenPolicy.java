/*
 * Copyright 2003-2021 JetBrains s.r.o.
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
package jetbrains.mps.ide.vfs;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.application.ReadAction;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.roots.ex.ProjectRootManagerEx;
import com.intellij.openapi.roots.impl.DirectoryIndexExcludePolicy;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.concurrency.AppExecutorUtil;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectLifecycleListener;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepositoryListener;

import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

import static com.intellij.openapi.project.RootsChangeRescanningInfo.RESCAN_DEPENDENCIES_IF_NEEDED;

// XXX Resembles GeneratedFilesExcludePolicy, which deals with generated sources, while this one with artifacts compiled from these sources.
// XXX there's suspicious DirectoryIndexExcludeUpdater that is interested in BaseDirectoryIndexExcludePolicy subclasses!?
public class ClassesGenPolicy extends BaseDirectoryIndexExcludePolicy {
  private final AtomicReference<Set<VirtualFile>> myExcludeRootsCache = new AtomicReference<>(Collections.emptySet());

  protected ClassesGenPolicy(@NotNull Project project) {
    super(project);
    // Cache starts empty; Plug wires the listener once MPSProject is ready.
  }

  @Override
  @NotNull
  protected Set<VirtualFile> getAllExcludeRoots() {
    return myExcludeRootsCache.get();
  }

  @NotNull
  private Set<VirtualFile> calcRoots(@NotNull MPSProject mpsProject) {
    final Set<VirtualFile> roots = new HashSet<>();
    mpsProject.getModelAccess().runReadAction(() -> {
      for (SModule module : mpsProject.getProjectModulesWithGenerators()) {
        JavaModuleFacet facet = module.getFacet(JavaModuleFacet.class);
        if (facet == null) {
          continue;
        }

        IFile classesGen = facet.getClassesGen();
        if (classesGen == null) {
          continue;
        }

        VirtualFile classesGenVF = mpsProject.getFileSystem().asVirtualFile(classesGen);
        if (classesGenVF != null) {
          roots.add(classesGenVF);
        }

        if (classesGen.getParent() != null) {
          // FIXME quite stupid code. Guess, the idea here is to exclide 'classes/' in case when there are
          //       both classes_gen/ and classes/.
          IFile classesDir = classesGen.getParent().findChild(AbstractModule.CLASSES);
          VirtualFile classesVF = mpsProject.getFileSystem().asVirtualFile(classesDir);
          if (classesVF != null) {
            roots.add(classesVF);
          }
        }
      }
    });
    return Collections.unmodifiableSet(roots);
  }

  /*package*/ void invalidateCache(@NotNull MPSProject mpsProject, Disposable disposable) {
    ReadAction.nonBlocking(() -> calcRoots(mpsProject))
      .coalesceBy(myExcludeRootsCache)
      .expireWith(disposable)
      .submit(AppExecutorUtil.getAppExecutorService())
      .onSuccess(result -> {
        if (!Objects.equals(result, myExcludeRootsCache.get())) {
          myExcludeRootsCache.set(result);
          ApplicationManager.getApplication().invokeLaterOnWriteThread(() ->
            ApplicationManager.getApplication().runWriteAction(() ->
              ProjectRootManagerEx.getInstanceEx(getProject()).makeRootsChange(() -> {}, RESCAN_DEPENDENCIES_IF_NEEDED) // or should it be TOTAL_RESCAN? not sure
            ),
            ModalityState.defaultModalityState(),
            getProject().getDisposed()
          );
        }
      });
  }

  public static final class Plug implements ProjectLifecycleListener {

    @Override
    public void projectReady(@NotNull MPSProject project, @NotNull Context context) {
      ClassesGenPolicy policy = findPolicy(project.getProject());
      if (policy == null) return;

      ExpirationToken disposable = new ExpirationToken();
      Disposer.register(project, disposable);
      context.keep(ExpirationToken.class, disposable);
      RepositoryListener listener = new RepositoryListener(project, policy, disposable);
      context.keep(RepositoryListener.class, listener);
      project.getRepository().addRepositoryListener(listener);
      policy.invalidateCache(project, disposable);
    }

    @Override
    public void projectDiscarded(@NotNull MPSProject project, @NotNull Context context) {
      ExpirationToken disposable = context.discard(ExpirationToken.class);
      if (disposable != null) {
        Disposer.dispose(disposable);
      }
      RepositoryListener listener = context.discard(RepositoryListener.class);
      if (listener != null) {
        project.getRepository().removeRepositoryListener(listener);
      }
      ClassesGenPolicy policy = findPolicy(project.getProject());
      if (policy != null) {
        policy.myExcludeRootsCache.set(Collections.emptySet());
      }
    }

    private static ClassesGenPolicy findPolicy(@NotNull Project project) {
      for (DirectoryIndexExcludePolicy ep : DirectoryIndexExcludePolicy.getExtensions(project)) {
        if (ep instanceof ClassesGenPolicy p) return p;
      }
      return null;
    }

    private static final class ExpirationToken implements Disposable {
      @Override
      public void dispose() {
      }
    }

    private static final class RepositoryListener implements SRepositoryListener {
      private final MPSProject myProject;
      private final ClassesGenPolicy myPolicy;
      private final Disposable myDisposable;

      private RepositoryListener(@NotNull MPSProject project, @NotNull ClassesGenPolicy policy, @NotNull Disposable disposable) {
        myProject = project;
        myPolicy = policy;
        myDisposable = disposable;
      }

      @Override
      public void moduleAdded(@NotNull SModule module) {
        myPolicy.invalidateCache(myProject, myDisposable);
      }

      @Override
      public void moduleRemoved(@NotNull SModuleReference ref) {
        myPolicy.invalidateCache(myProject, myDisposable);
      }
    }
  }
}
