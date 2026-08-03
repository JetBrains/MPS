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
package jetbrains.mps.ide.vfs;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.WriteAction;
import com.intellij.openapi.fileTypes.FileTypeManager;
import com.intellij.openapi.vfs.JarFileSystem;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VfsUtil;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.ThrowableRunnable;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.platform.watching.FileSystemListenersContainer;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.FileSystemExtPoint;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import jetbrains.mps.vfs.refresh.CachingContext;
import jetbrains.mps.vfs.refresh.CachingFile;
import jetbrains.mps.vfs.refresh.CachingFileSystem;
import jetbrains.mps.vfs.refresh.FileSystemListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.nio.file.Path;
import java.util.Collection;
import java.util.Objects;

/**
 * To my best knowledge, it's a bridge between legacy FileSystem singleton and "new" per-protocol IFileSystem.
 * Not sure if it has to be IFileSystem then, as it delegates to IFileSystem through FileSystem facade.
 */
@SuppressWarnings({"deprecation"})
@Deprecated(since = "2019.1", forRemoval = true)
public final class IdeaFileSystem implements FileSystem, CachingFileSystem, FileSystemBridge {

  private FileSystem myOldFileSystem;

  //all FSes should be registered before this one starts working
  private JarIdeaFileSystem fs1;
  private LocalIdeaFileSystem fs2;
  private JrtIdeaFileSystem fs3;

  /**
   * Use this one to hide knowledge whether this is an app component or a service
   * @since 2024.2
   */
  public static IdeaFileSystem getInstance() {
    // FIXME once/if we remove all uses of this method, could be not a component/service, just a POJO direcly instantiated by MPSCoreComponents
    //       (or somehow integrated into ComponentPlugin story)
    return ApplicationManager.getApplication().getService(IdeaFileSystem.class);
  }

  public IdeaFileSystem() {
  }

  /**
   * @deprecated use {@link #getFile(Path)} for local paths, {@link #getArchiveAwareFile(String)} for paths that may point inside an archive
   */
  @NotNull
  @Override
  @Deprecated(since = "2026.2")
  public IdeaFile getFile(@NotNull String path) {
    return getArchiveAwareFile(path);
  }

  /**
   * Gives an MPS file abstraction for an absolute path that may denote an entry inside an archive, e.g. {@code /path/to/lib.jar!/entry}.
   * The path is dispatched to the archive or to the local file system depending on the presence of the {@code !/} separator.
   * <p>
   * Prefer {@link #getFile(Path)} whenever the path is known to be a local one.
   *
   * @since 2026.2
   */
  @NotNull
  public IdeaFile getArchiveAwareFile(@NotNull String path) {
    path = FileUtil.normalizeAndResolveParentDirs(path);
    if (path.endsWith("!")) {
      path += "/";
    }
    String fsId = path.contains("!") ? VFSManager.JAR_FS : VFSManager.FILE_FS;
    IFileSystem fileSystem = MPSCoreComponents.getInstance().getPlatform().findComponent(VFSManager.class).getFileSystem(fsId);
    assert fileSystem instanceof BaseIdeaFileSystem;
    return ((BaseIdeaFileSystem) fileSystem).getFile(path);
  }

  /**
   * Gives an MPS file abstraction for an absolute local path.
   * <p>
   * Archive entries are not represented by {@link Path}; use {@link IFile#stepIntoArchive()} for them.
   *
   * @since 2026.2
   */
  @NotNull
  public IdeaFile getFile(@NotNull Path path) {
    String normalizedPath = FileUtil.normalize(path.normalize().toString());
    IFileSystem fileSystem = MPSCoreComponents.getInstance().getPlatform().findComponent(VFSManager.class).getFileSystem(VFSManager.FILE_FS);
    assert fileSystem instanceof BaseIdeaFileSystem;
    return ((BaseIdeaFileSystem) fileSystem).getFile(normalizedPath);
  }

  @Override
  public boolean isFileIgnored(@NotNull String name) {
    return FileTypeManager.getInstance().isFileIgnored(name);
  }

  /**
   * @deprecated use {@link #findExistingFile(Path)} for local paths, {@link #getArchiveAwareFile(String)} for paths that may point inside an archive
   */
  @Override
  @Deprecated(since = "2026.2")
  public IFile findExistingFile(@NotNull String path) {
    // copied from IoFileSystem/IFileSystem
    try {
      IFile f = getArchiveAwareFile(path);
      return f.exists() ? f : null;
    } catch (Exception e) {
      return null;
    }
  }

  /**
   * @return the existing file at {@code path}, or {@code null}
   * @since 2026.2
   */
  @Nullable
  public IFile findExistingFile(@NotNull Path path) {
    try {
      IFile file = getFile(path);
      return file.exists() ? file : null;
    } catch (Exception e) {
      return null;
    }
  }

  @Override
  public boolean runWriteTransaction(@NotNull Runnable r) {
    ThrowableRunnable<Exception> tr = r::run;
    try {
      WriteAction.runAndWait(tr);
      return true;
    } catch (Exception ex) {
      Logger.getLogger(getClass()).error(ex);
      return false;
    }
  }

  /**
   * Proper alternative to {@code VirtualFileUtils#toIFile(VirtualFile)}, gives MPS file abstraction for an IDEA's one.
   *
   * @param virtualFile IDEA's file abstraction
   * @return MPS file abstraction
   */
  @Override
  @NotNull
  public IFile fromVirtualFile(@NotNull VirtualFile virtualFile) {
    assert canConvert(virtualFile) : "Only local/jar platform file systems are supported by IdeaFileSystem: " + virtualFile.getPath();
    if (virtualFile.getFileSystem() instanceof LocalFileSystem) {
      // not every LocalFileSystem is backed by java.nio (e.g. the in-memory TempFileSystem of platform tests),
      // and toNioPath() would throw for those, while canConvert() promises they are convertible
      Path nioPath = virtualFile.getFileSystem().getNioPath(virtualFile);
      if (nioPath != null) {
        return getFile(nioPath);
      }
    }
    return getFile(FileUtil.normalize(virtualFile.getPath()));
  }

  @Override
  public boolean canConvert(@NotNull VirtualFile virtualFile) {
    return virtualFile.getFileSystem() instanceof LocalFileSystem || virtualFile.getFileSystem() instanceof JarFileSystem;
  }

  /**
   * Proper alternative to {@code VirtualFileUtils#getProjectVirtualFile(IFile)}, get back from MPS's {@code IFile} to IDEA's {@code VirtualFile}
   *
   * @param file MPS file abstraction
   * @return IDEA's VirtualFile, if supplied IFile is tracked under project's file system.
   * @since 2021.1
   */
  @Override
  @Nullable
  public VirtualFile asVirtualFile(@NotNull IFile file) {
    if (file instanceof IdeaFile) {
      return ((IdeaFile) file).getVirtualFile();
    } else {
      return null;
    }
  }

  @Override
  public void addListener(@NotNull FileSystemListener listener) {
    getListenersContainer().addListener(listener, listener.getFileToListen());
  }

  @Override
  public void removeListener(@NotNull FileSystemListener listener) {
    getListenersContainer().removeListener(listener, listener.getFileToListen());
  }

  public FileSystemListenersContainer getListenersContainer() {
    return FileSystemListenersContainer.getInstance();
  }

  @Override
  public void refresh(@NotNull CachingContext context, Collection<CachingFile> files) {
    VirtualFile[] filesArray = files.stream()
                                    .map(file -> ((IdeaFile) file).getVirtualFile())
                                    .filter(Objects::nonNull)
                                    .distinct()
                                    .toArray(VirtualFile[]::new);
    VfsUtil.markDirtyAndRefresh(!context.isSynchronous(), context.isRecursive(), true, filesArray);
  }

  /**
   * FOR INTERNAL USE
   */
  public void install(VFSManager vfsManager) {
    fs1 = new JarIdeaFileSystem(this);
    fs2 = new LocalIdeaFileSystem(this);
    fs3 = new JrtIdeaFileSystem(this);
    vfsManager.registerFS(fs1.getProtocol(), fs1);
    vfsManager.registerFS(fs2.getProtocol(), fs2);
    vfsManager.registerFS(fs3.getProtocol(), fs3);
    // FIXME move setFS code into vfsManager
    myOldFileSystem = FileSystemExtPoint.getFS();
    FileSystemExtPoint.setFS(this);
  }

  /**
   * FOR INTERNAL USE
   */
  public void uninstall(VFSManager vfsManager) {
    vfsManager.unregisterFS(fs3.getProtocol(), fs3);
    vfsManager.unregisterFS(fs2.getProtocol(), fs2);
    vfsManager.unregisterFS(fs1.getProtocol(), fs1);
    if (myOldFileSystem != null) {
      FileSystemExtPoint.setFS(myOldFileSystem);
      myOldFileSystem = null;
    }
  }

  /*package*/ LocalIdeaFileSystem getLocalFS() {
    return fs2;
  }
}
