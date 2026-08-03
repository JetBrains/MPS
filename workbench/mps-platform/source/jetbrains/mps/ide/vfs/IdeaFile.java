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

import com.intellij.openapi.application.AccessToken;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.WriteAction;
import com.intellij.openapi.fileTypes.FileTypes;
import com.intellij.openapi.util.io.FileUtil;
import com.intellij.openapi.vfs.JarFileSystem;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileSystem;
import com.intellij.openapi.vfs.newvfs.ArchiveFileSystem;
import com.intellij.openapi.vfs.newvfs.NewVirtualFile;
import com.intellij.util.SlowOperations;
import jetbrains.mps.ide.platform.watching.FileSystemListenersContainer;
import jetbrains.mps.ide.platform.watching.FileSystemListenersContainer.ListenersForPath;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.IFileUtil;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.QualifiedPath;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.path.PathFormats;
import jetbrains.mps.vfs.refresh.CachingContext;
import jetbrains.mps.vfs.refresh.CachingFile;
import jetbrains.mps.vfs.refresh.CachingFileSystem;
import jetbrains.mps.vfs.refresh.FileListener;
import jetbrains.mps.vfs.refresh.FileListenerAdapter;
import jetbrains.mps.vfs.refresh.FileSystemListener;
import jetbrains.mps.vfs.util.PathFormatChecker;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.annotations.Internal;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * NOTE the IdeaFiles' equality now totally depends on the starting string.
 * That means that some IdeaFiles which point to essentially the same place on fs, might not be equal in the sense
 * of the current #equals relation
 */
@SuppressWarnings("removal")
@Immutable
public class IdeaFile implements IFile, CachingFile {
  private final static Logger LOG = Logger.getLogger(IdeaFile.class);
  private final BaseIdeaFileSystem myFS;

  /*
   * remember the name used to create this instance, as it might be different from a name in fs on case-insensitive filesystem
   * always normalized
   */
  @NotNull
  private final String myPath;

  @Internal
  public IdeaFile(BaseIdeaFileSystem fileSystem, @NotNull String path) {
    myFS = fileSystem;
    myPath = path;
  }

  private IdeaFile(BaseIdeaFileSystem fileSystem, @NotNull VirtualFile virtualFile) {
    myFS = fileSystem;
    String path = virtualFile.getPath();
    new PathFormatChecker(path).absolute().noDots().osIndependentPath().noOddEndSlash();
    myPath = path;
  }

  @NotNull
  @Override
  public String getPath() {
    VirtualFile virtualFile = findVirtualFile();
    return virtualFile != null ? virtualFile.getPath() : myPath;
  }

  @NotNull
  @Override
  public Path toPath() {
    return PathFormats.UNIX.fromString(myPath);
  }

  @NotNull
  @Override
  public String toRealPath() {
    VirtualFile virtualFile = findVirtualFile();
    return virtualFile != null ? virtualFile.getCanonicalPath() : myPath;
  }

  @Override
  public QualifiedPath getQualifiedPath() {
    String path = getPath();
    return new QualifiedPath(myFS.getProtocol(), path);
  }

  /**
   * @return encoded in compliance with RFC standard
   */
  @Override
  @Nullable
  public URL getUrl() {
    VirtualFile virtualFile = findVirtualFile();
    try {
      if (virtualFile == null) {
        LOG.warning("Could not find the virtual file for " + this);
        return guessURLForPath(myPath);
      }
      return VirtualFileUtils.extractURLFromVirtualFile(virtualFile);
    } catch (IOException e) {
      LOG.error("Could not create URI from " + this, e);
    }
    return null;
  }

  @NotNull
  private static URL guessURLForPath(String path) throws MalformedURLException {
    // it is guaranteed that the path is already absolute and os-independent
//    path = PathUtil.addSlashForAbsolutePathIfNeeded(path);
    if (path.contains(Path.ARCHIVE_SEPARATOR)) {
      String encoded = new File(path).toURI().toASCIIString(); // adding file://, reversing slashes on windows etc.
      // using this URI constructor is the correct way to create JARs (with 'jar:file://...')
      return URI.create("jar:" + encoded).toURL();
    } else {
      return new File(path).toURI().toURL();
    }
  }

  @NotNull
  @Override
  public CachingFileSystem getFileSystem() {
    //this should go after 2019.1, when we remove FileSystem and ony use IFileSystem
    return myFS.getUmbrellaFileSystem();
  }

  @NotNull
  @Override
  public IFileSystem getFS() {
    return myFS;
  }

  @NotNull
  @Override
  public String getName() {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      return virtualFile.getName();
    } else {
      if (PathUtil.isRoot(myPath)) {
        return myPath;
      }

      int index = myPath.lastIndexOf(IFileSystem.SEPARATOR);
      assert index >= 0 : "illegal file path: " + myPath;

      return myPath.substring(index + 1);
    }
  }

  @Override
  public IdeaFile getParent() {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      VirtualFile parentVirtualFile = virtualFile.getParent();
      if (parentVirtualFile != null) {
        return new IdeaFile(myFS, parentVirtualFile);
      }
      return null;
    } else {
      if (PathUtil.isRoot(myPath)) {
        return null;
      }

      int index = myPath.lastIndexOf(IFileSystem.SEPARATOR);
      assert index >= 0 : "can't extract parent from path: " + myPath;

      return myFS.getFile(myPath.substring(0, index));
    }
  }

  @Override
  public List<IFile> getChildren() {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      VirtualFile[] children = new VirtualFile[0];
      if (virtualFile.isValid()) {
        children = virtualFile.getChildren();
      }
      List<IdeaFile> result = new ArrayList<>();
      for (VirtualFile child : children) {
        result.add(new IdeaFile(myFS, child));
      }
      return Collections.unmodifiableList(result);
    } else {
      return Collections.emptyList();
    }
  }

  @Override
  @NotNull
  public IdeaFile getDescendant(@NotNull String suffix) {
    IFile result = IFileUtil.getDescendant(this, PathUtil.toSystemIndependent(suffix));
    if (result == null) {
      throw new IllegalStateException("Can't find descendant " + suffix + " of file " + getPath());
    }
    return ((IdeaFile) result);
  }

  @Override
  @NotNull
  public IdeaFile findChild(@NotNull String name) {
    new PathFormatChecker(name).nonEmpty().noSeparators();
    String path = getPath();
    //the following is because there's one file that path ends with slash: JDK_MODE!/
    return myFS.getFile(path + (path.endsWith("!" + IFileSystem.SEPARATOR) ? "" : IFileSystem.SEPARATOR) + name);
  }

  @Override
  public boolean isDirectory() {
    VirtualFile virtualFile = findVirtualFile();
    return virtualFile != null ? virtualFile.isDirectory()
                               : new File(myPath).isDirectory();
  }

  @Override
  public boolean isReadOnly() {
    if (!exists()) {
      return false;
    }
    VirtualFile virtualFile = findVirtualFile();
    return virtualFile != null && !virtualFile.isWritable();
  }

  @Override
  public long lastModified() {
    VirtualFile virtualFile = findVirtualFile();
    return virtualFile != null ? virtualFile.getTimeStamp() : -1;
  }

  @Override
  public long length() {
    VirtualFile virtualFile = findVirtualFile();
    return virtualFile != null ? virtualFile.getLength() : -1;
  }

  @Override
  public boolean createNewFile() {
    ApplicationManager.getApplication().assertWriteAccessAllowed();
    VirtualFile virtualFile = findVirtualFile0(true);
    if (virtualFile != null) {
      return !virtualFile.isDirectory();
    } else {
      try {
        IdeaFile parent = getParent();
        assert parent != null : "can't create a root directory";
        VirtualFile directory = createDirectories(parent.getPath());
        if (directory == null) {
          throw new IllegalStateException("Could not create directory for file '" + myPath);
        }
        String fileName = getName();
        directory.findChild(fileName); // This is a workaround for IDEA-67279
        directory.createChildData(new MPSSavingRequestor(), fileName);
        return true;
      } catch (IOException e) {
        LOG.error("Got a problem while creating a new file", e);
        return false;
      }
    }
  }

  //this was copied from Idea's VfsUtil. The point of copying is changing the requestor not to get back-events during saving models
  @Nullable
  private VirtualFile createDirectories(final String directoryPath) throws IOException {
    return WriteAction.compute(() -> createDirectoryIfMissing(directoryPath));
  }

  //this was copied from Idea's VfsUtil. The point of copying is changing the requestor not to get back-events during saving models
  @Nullable
  private VirtualFile createDirectoryIfMissing(String directoryPath) throws IOException {
    String path = FileUtil.toSystemIndependentName(directoryPath);
    final VirtualFile file = LocalFileSystem.getInstance().refreshAndFindFileByPath(path);
    if (file == null) {
      int pos = path.lastIndexOf('/');
      if (pos < 0) {
        return null;
      }
      VirtualFile parent = createDirectoryIfMissing(path.substring(0, pos));
      if (parent == null) {
        return null;
      }
      final String dirName = path.substring(pos + 1);
      VirtualFile child = parent.findChild(dirName);
      if (child != null && child.isDirectory()) {
        return child;
      }
      return parent.createChildDirectory(new MPSSavingRequestor(), dirName);
    }
    return file;
  }

  @Override
  public boolean mkdirs() {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      return virtualFile.isDirectory();
    } else {
      try {
        return createDirectories(myPath) != null;
      } catch (IOException ex) {
        return false;
      }
    }
  }

  @Override
  public boolean exists() {
    VirtualFile virtualFile = findVirtualFile();
    return virtualFile != null && virtualFile.exists();
  }

  @Override
  public boolean delete() {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      try {
        checkNoListenersWhenRemove();
        virtualFile.delete(new MPSSavingRequestor());
        return true;
      } catch (IOException e) {
        LOG.warning("Could not delete the file: ", e);
        return false;
      }
    } else {
      LOG.warning("Could not find the file to delete: " + myPath, new Throwable());
      return false;
    }
  }

  @Override
  public boolean rename(@NotNull String newName) {
    try {
      VirtualFile virtualFile = findVirtualFile();
      if (virtualFile != null) {
        virtualFile.rename(new MPSSavingRequestor(), newName);
        return true;
      } else {
        LOG.error("Could not find the file: " + myPath, new Throwable());
        return false;
      }
    } catch (IOException e) {
      LOG.warning("Could not rename the file: ", e);
      return false;
    }
  }

  private void checkNoListenersWhenRemove() {
    IdeaFileSystem umbrellaFileSystem = myFS.getUmbrellaFileSystem();
    FileSystemListenersContainer container = umbrellaFileSystem.getListenersContainer();
    ListenersForPath listenersForPath = container.getListenersForPath(myPath);
    List<FileSystemListener> all = listenersForPath.getMeAndDescendants();
    if (!all.isEmpty()) {
      LOG.warning(String.format("%d listener(s) have not been unregistered for the path '%s':", all.size(), getPath()));
      for (FileSystemListener listener : all) {
        // FIXME I don't like use of umbrellaFileSystem here, if we know FSListenerContainer and
        //  start directly with its methods/values. Why not use it to remove listeners?
        //  Guess, it's FileListener vs FileSystemListener and their unfortunate 'extends' relation.
        umbrellaFileSystem.removeListener(listener);
      }
    }
  }

  @NotNull
  @Override
  public IFile rename1(@NotNull String newName) {
    try {
      VirtualFile virtualFile = findVirtualFile();
      if (virtualFile != null) {
        VirtualFile existingNewLocation = virtualFile.getParent().findChild(newName);
        if (existingNewLocation != null && !isCaseSensitiveRenameOnCaseInsensitiveFS(virtualFile, existingNewLocation, newName)) {
          LOG.info("Could not rename the file, such file already exists: " + existingNewLocation.getPath());
          return this;
        }
        checkNoListenersWhenRemove();
        virtualFile.rename(new MPSSavingRequestor(), newName);
        return getParent().findChild(newName);
      } else {
        LOG.warning("Could not find the file: " + myPath);
        return this;
      }
    } catch (IOException e) {
      LOG.error("Could not rename the file: ", e);
      return this;
    }
  }

  private static boolean isCaseSensitiveRenameOnCaseInsensitiveFS(VirtualFile originalFile, VirtualFile newFile, @NotNull String newName) {
    // Uses the trick with getPath() being the same despite the actual names being case-different
    // The important guarantee is that on case-insensitive FS getPath() returns the same string for the same physical file, irrespective of the IFile instances being different objects
    return !newName.equals(originalFile.getName()) && newName.equalsIgnoreCase(originalFile.getName()) &&
           newFile.getPath().equals(originalFile.getPath());
  }

  @Override
  public IdeaFile copy(@NotNull IFile newParent, @NotNull String newName) {
    // XXX I wonder why do we assume here newParent is in the same proto/FS as this one?
    VirtualFile newParentFile = new IdeaFile(myFS, newParent.getPath()).findVirtualFile();
    if (newParentFile != null) {
      try {
        VirtualFile virtualFile = findVirtualFile();
        if (virtualFile != null) {
          VirtualFile copy = virtualFile.copy(new MPSSavingRequestor(), newParentFile, newName);
          return new IdeaFile(myFS, copy);
        } else {
          LOG.error("Could not find the file to copy: '" + myPath + "'", new Throwable());
          return null;
        }
      } catch (IOException e) {
        LOG.warning("Could not copy file: ", e);
        return null;
      }
    }
    return null;
  }

  @Override
  public boolean move(@NotNull IFile newParent) {
    if (!(newParent instanceof IdeaFile)) {
      return false;
    }
    VirtualFile newParentFile = ((IdeaFile) newParent).findVirtualFile();
    if (newParentFile != null) {
      try {
        VirtualFile virtualFile = findVirtualFile();
        if (virtualFile != null) {
          virtualFile.move(new MPSSavingRequestor(), newParentFile);
          return true;
        } else {
          LOG.error("Could not find the file to move: " + myPath + ". The file was not moved", new Throwable());
          return false;
        }
      } catch (IOException e) {
        LOG.warning("Could not rename file: ", e);
        return false;
      }
    }
    return false;
  }

  @NotNull
  public IFile move1(@NotNull IFile newParent) {
    if (!(newParent instanceof IdeaFile)) {
      LOG.error("No opportunity to move from IdeaFile to non-IdeaFile yet");
      // see Files#move, Files#copyToForeignTarget
      return this;
    }
    VirtualFile newParentFile = ((IdeaFile) newParent).findVirtualFile();
    if (newParentFile != null) {
      try {
        VirtualFile virtualFile = findVirtualFile();
        if (virtualFile != null) {
          checkNoListenersWhenRemove();
          virtualFile.move(new MPSSavingRequestor(), newParentFile);
          return newParent.findChild(virtualFile.getName());
        } else {
          LOG.error("Could not find the file to move: '" + myPath + "'", new Throwable());
          return this;
        }
      } catch (IOException e) {
        LOG.warning("Could not rename file: ", e);
        return this;
      }
    }
    return this;
  }

  @Override
  public InputStream openInputStream() throws IOException {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile == null) {
      throw new FileNotFoundException("File not found: " + myPath);
    }
    try (AccessToken ignored = SlowOperations.allowSlowOperations("known-issues")) {
      // there's no indication (javadoc) for VF#getInputStream() that it's not supposed to be invoked in EDT!
      return virtualFile.getInputStream();
    }
  }

  @Override
  public OutputStream openOutputStream() throws IOException {
    ApplicationManager.getApplication().assertWriteAccessAllowed();
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile == null) {
      if (createNewFile()) {
        virtualFile = findVirtualFile();
      }
    }
    if (virtualFile == null) {
      throw new IOException("Could not create file: " + myPath);
    }
    if (virtualFile.getFileSystem() instanceof JarFileSystem) {
      throw new UnsupportedOperationException("Cannot write to JAR files");
    } else {
      virtualFile = renameIfCaseSensitive(virtualFile);
      return virtualFile.getOutputStream(new MPSSavingRequestor(){});
    }
  }

  private VirtualFile renameIfCaseSensitive(VirtualFile virtualFile) throws IOException {
    if (!virtualFile.getFileSystem().isCaseSensitive()) {
      // Mac default (HFS), NTFS - are case-insensitive, looking up file "b/A" when there's "b/a" gives
      // existing file. However, Java is strict about case, and won't allow class A to live in file a.java
      // Hence, when we try to write into a file with the name different from one requested initially,
      // try to bring the name up to the desired one.
      final String desiredFileName = getName();
      if (!virtualFile.getName().equals(desiredFileName)) {
        virtualFile.rename(new MPSSavingRequestor(), desiredFileName);
      }
      virtualFile = findVirtualFile0(false);
    }
    return virtualFile;
  }

  @Nullable
  public VirtualFile getVirtualFile() {
    return findVirtualFile();
  }

  @Override
  public boolean setTimeStamp(long time) {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile instanceof NewVirtualFile) {
      try {
        ((NewVirtualFile) virtualFile).setTimeStamp(time);
        return true;
      } catch (IOException e) {
        LOG.warning("", e);
      }
    }
    return false;
  }

  @Override
  public void refresh(@NotNull CachingContext context) {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      myFS.getUmbrellaFileSystem().refresh(context, Collections.singleton(this));
    } else {
      virtualFile = findVirtualFile0(true); // not a mistake the same logic is in LFS#findFileByIoFile
      if (virtualFile != null) {
        myFS.getUmbrellaFileSystem().refresh(context, Collections.singleton(this));
      }
    }
  }

  @Override
  public boolean isInZipArchive() {
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      return virtualFile.getFileSystem() instanceof ArchiveFileSystem;
    } else {
      return myPath.contains("!");
    }
  }

  @Override
  public boolean isZipArchive() {
    var virtualFile = findVirtualFile();
    if (virtualFile == null) {
      LOG.warning("could not find the virtual file for " + this);
    }
    // XXX I wonder if virtualFile.exists() (comes from d2fd1cc3) is necessary - other implementations doesn't seem to check existence
    // check for "!/" is to distinguish zipFile and zipFile.stepIntoArchive(), latter shall answer isZipArchive == false (but isInZipArchive == true)
    return virtualFile != null && !myPath.endsWith(Path.ARCHIVE_SEPARATOR) && virtualFile.exists() && virtualFile.getFileType() == FileTypes.ARCHIVE;
  }

  @Override
  @NotNull
  public IFile stepIntoArchive() {
    if (isZipArchive()) {
      return myFS.getUmbrellaFileSystem().getArchiveAwareFile(myPath + Path.ARCHIVE_SEPARATOR);
    } else {
      return this;
    }
  }

  @Override
  @NotNull
  public IFile stepUpToArchive() {
    BaseIdeaFileSystem localFS = myFS.getUmbrellaFileSystem().getLocalFS();
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      if (virtualFile.getFileSystem() instanceof ArchiveFileSystem) {
        VirtualFile fileForJar = ((ArchiveFileSystem) virtualFile.getFileSystem()).getLocalByEntry(virtualFile);
        return fileForJar == null ? this : new IdeaFile(localFS, fileForJar);
      } else {
        return this;
      }
    } else {
      if (myPath.contains("!")) {
        return localFS.getFile(myPath.substring(0, myPath.indexOf(Path.ARCHIVE_SEPARATOR)));
      } else {
        return this;
      }
    }
  }

  @Override
  public IFile getBundleHome() {
    // pretty much == stepUpToArchive, except for error handling, here we use null or getParent()
    BaseIdeaFileSystem localFS = myFS.getUmbrellaFileSystem().getLocalFS();
    VirtualFile virtualFile = findVirtualFile();
    if (virtualFile != null) {
      if (virtualFile.getFileSystem() instanceof ArchiveFileSystem) {
        VirtualFile fileForJar = ((ArchiveFileSystem) virtualFile.getFileSystem()).getLocalByEntry(virtualFile);
        if (fileForJar == null) {
          return null;
        }
        return new IdeaFile(localFS, fileForJar);
      } else {
        return getParent();
      }
    } else {
      if (myPath.contains("!")) {
        return localFS.getFile(myPath.substring(0, myPath.indexOf(Path.ARCHIVE_SEPARATOR)));
      } else {
        return getParent();
      }
    }
  }

  @Nullable
  private VirtualFile findVirtualFile() {
    return findVirtualFile0(false);
  }

  // null <=> file was not found
  @Nullable
  private VirtualFile findVirtualFile0(boolean withRefresh) {
    VirtualFileSystem fileSystem = myFS.getUnderlyingFS();
    if (fileSystem == null) {
      return null;
    }
    if (withRefresh) {
      return fileSystem.refreshAndFindFileByPath(myPath);
    } else {
      return fileSystem.findFileByPath(myPath);
    }
  }

  /**
   * note that in order to make IdeaFile immutable which is rather desirable (e.g. to store them in hash sets, not strings)
   * we need to have equals relation totally dependent on the string from which the object is constructed
   */
  @Override
  public boolean equals(Object another) {
    if (this == another) {
      return true;
    }
    if (another == null || getClass() != another.getClass()) {
      return false;
    }

    IdeaFile ideaFile = (IdeaFile) another;
    return myPath.equals(ideaFile.myPath);
  }

  @Override
  public int hashCode() {
    return myPath.hashCode();
  }

  @Override
  public String toString() {
    return "IdeaFile[path: " + myPath + "]";
  }

  @Override
  public void addListener(@NotNull FileListener listener) {
    if (isInZipArchive()) {
      LOG.debug("There might be a problem when adding file listener for the files inside the archive: '" + getPath() + "'");
    }
    getFileSystem().addListener(FileListenerAdapter.adapt(this, listener));
  }

  @Override
  public void removeListener(@NotNull FileListener listener) {
    getFileSystem().removeListener(FileListenerAdapter.adapt(this, listener));
  }
}
