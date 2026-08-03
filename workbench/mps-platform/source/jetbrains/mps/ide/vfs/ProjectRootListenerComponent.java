/*
 * Copyright 2003-2022 JetBrains s.r.o.
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
import com.intellij.openapi.project.Project;
import jetbrains.mps.ide.platform.watching.WatchedRoots;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.refresh.CachingFileSystem;
import jetbrains.mps.vfs.refresh.FileListener;
import jetbrains.mps.vfs.refresh.FileSystemEvent;
import jetbrains.mps.vfs.refresh.FileSystemListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Adds listener to the local file system, which boosts the project reading.
 * our {@link WatchedRoots} works recursively, for every {@link WatchedRoots#addWatchRequest(String)} call
 * it triggers the platfrom mechanism which addresses the native file watcher via external process. This procedure is very time-consuming,
 * thus in order to optimize MPS opening project performance we call it once for the project root recursively, avoiding to call it for each
 * {@link FileSystemListener#getFileToListen()} as well as {@link FileListener}.
 *
 * The other way might be to collect all the files we want to listen and trigger {@link com.intellij.openapi.vfs.LocalFileSystem#addRootsToWatch(Collection, boolean)}
 * for multiple roots. Unfortunately right now it is not possible since the whole hierarchy (libraries, projects, modules, models, model roots) listens to
 * FS events directly. Probably the easier way would be to have a SModule as a delegate of the file system events downwards (to model roots and models).
 * Then we can collect all the module directories on the project opening and call {@code addRootsToWatch()} for them altogether.
 * Now I see it as the way it should be done.
 *
 * AP
 */
public final class ProjectRootListenerComponent implements Disposable {
  private static final Logger LOG = Logger.getLogger(ProjectRootListenerComponent.class);
  private static final List<String> EXCLUDED_FOLDERS = Collections.singletonList(".git");

  private final Project myProject;
  private final List<EmptyFSListener> myListeners = new ArrayList<>();
  private CachingFileSystem myFileSystem;

  // XXX can not use MPSProject here as MPSProject depends on this service
  public ProjectRootListenerComponent(Project ideaProject) {
    // XXX not sure I can convert this a StartupActivity - I need to get this hack as early as possible, otherwise
    //     there's no value in these additional 'top' listeners.
    myProject = ideaProject;
  }

  public void boostProjectRead(@NotNull IdeaFileSystem fs) {
    // FIXME is there's anything in MPSProject better suited to find out project root. If not, why?
    //       if yes, can pass here to use instead of ideaProject.getBasePath() guess
    String basePath = myProject.getBasePath();
    if (basePath != null) {
      myFileSystem = fs;
      IFile projectBase = fs.getFile(Path.of(basePath));
      List<EmptyFSListener> newListeners = new ArrayList<>();
      ApplicationManager.getApplication().runReadAction(() -> {
        List<IFile> children = projectBase.getChildren();
        if (children == null) {
          addEmptyListener(fs, projectBase);
        } else {
          for (IFile child : children) {
            if (listenTo(child)) {
              addEmptyListener(fs, child);
            }
          }
        }
      });
    } else {
      LOG.warning("Could not find base path of the project " + myProject);
    }
  }

  private void addEmptyListener(CachingFileSystem fs, IFile file) {
    EmptyFSListener listener = new EmptyFSListener(file);
    fs.addListener(listener);
    myListeners.add(listener);
  }

  private static boolean listenTo(@NotNull IFile childOfProjectDir) {
    return !EXCLUDED_FOLDERS.contains(childOfProjectDir.getName());
  }

  @Override
  public void dispose() {
    if (myFileSystem == null) {
      return;
    }
    ApplicationManager.getApplication().runReadAction(() -> {
      for (EmptyFSListener listener : myListeners) {
        myFileSystem.removeListener(listener);
      }
      myListeners.clear();
      myFileSystem = null;
    });
  }

  private static class EmptyFSListener implements FileSystemListener {
    private final IFile myFileIListenTo;

    public EmptyFSListener(@NotNull IFile fileIListenTo) {
      myFileIListenTo = fileIListenTo;
    }

    @Nullable
    @Override
    public IFile getFileToListen() {
      return myFileIListenTo;
    }

    @Override
    public String toString() {
      return "EMPTY LISTENER";
    }

    @Override
    public void update(@NotNull ProgressMonitor monitor, @NotNull FileSystemEvent event) {
    }
  }
}
