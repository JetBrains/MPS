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
package jetbrains.mps.vfs.impl;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.Files;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import jetbrains.mps.vfs.util.PathFormatChecker.PathFormatException;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.io.IOException;

/**
 * @deprecated access instance through VFSManager.getFileSystem()
 */
@Deprecated(since = "2019.1", forRemoval = true)
public class IoFileSystem implements FileSystem {
  private static final Logger LOG = Logger.getLogger(IoFileSystem.class);

  private final VFSManager myManager;

  /**
   * IMPLEMENTATION METHOD FOR MPS INTERNAL USE!
   */
  public static FileSystem newInstance(VFSManager vfsManager) {
    return new IoFileSystem(vfsManager);
  }

  private IoFileSystem(VFSManager vfsManager) {
    myManager = vfsManager;
  }

  @NotNull
  @Override
@Deprecated(since = "2019.1", forRemoval = true)
  //use either JarIoFS or LocalIoFS
  public IFile getFile(@NotNull String path) {
    path = FileUtil.getCanonicalPath(path);
    path = FileUtil.normalizeAndResolveParentDirs(path);
    String archivePath = PathUtil.extractArchivePath(path);
    if (archivePath != null && denotesArchive(archivePath)) {
      if (path.endsWith("!")) {
        // an archive root is sometimes spelled without the trailing slash, e.g. /path/to/lib.jar!
        path += IFileSystem.SEPARATOR;
      }
      // this is the only place we care to get java.io-backed jar FS, which could become history once this class gone.
      return myManager.getFileSystem(VFSManager.JAVA_IO_JAR_FS).getFile(path);
    } else {
      return myManager.getFileSystem(VFSManager.JAVA_IO_FILE_FS).getFile(path);
    }
  }

  /**
   * Tells whether the given local path denotes an archive. This reuses the very notion the java.io-backed file system employs to
   * produce archive paths in the first place, {@code LocalFile#isZipArchive()}, i.e. detection of the zip signature in the file
   * contents ({@link Files#isJarOrZipFile(File)}) - with the extension checked first, so that an archive that is yet to be created
   * keeps its archive nature (and does not end up in the local file system, where it would never resolve).
   * <p>
   * Note, the mere presence of a {@code '!'} in a path tells nothing, as it is a legal character of a local file name (MPS-40062).
   * <p>
   * The IDEA-backed {@code jetbrains.mps.ide.vfs.IdeaFileSystem} deliberately decides differently: it never touches the disk and
   * recognizes the whole set of extensions of the platform's {@code FileTypes.ARCHIVE}, which is what the platform itself requires
   * of a host of its archive file system. Here, in turn, there is no platform to ask, and the extension alone would disagree with
   * {@code LocalFile#isZipArchive()}, which pays no attention to file names.
   */
  private static boolean denotesArchive(@NotNull String localPath) {
    if (PathUtil.hasArchiveFileName(localPath)) {
      return true;
    }
    try {
      // no risk of the 'ends with .jar/.zip but is no archive' warning of Files#isJarOrZipFile, such names are answered above
      // java.io.File copes with the os-independent separator on every OS, cf. JarIoFileSystem#getFile
      return Files.isJarOrZipFile(new File(localPath));
    } catch (IOException e) {
      LOG.warning("Could not tell whether '" + localPath + "' is an archive", e);
      return false;
    }
  }

  @Override
  public IFile findExistingFile(@NotNull String path) {
    try {
      IFile f = getFile(path);
      return f.exists() ? f : null;
    } catch (PathFormatException e) {
      // fixme apyshkin
      return null;
    }
  }

  @Override
  public boolean isFileIgnored(@NotNull String name) {
    return false;
  }

  @Override
  public boolean runWriteTransaction(@NotNull Runnable r) {
    try {
      r.run();
    } catch (Exception e) {
      LOG.error(e);
      return false;
    }
    return true;
  }
}
