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
package jetbrains.mps.util;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.openapi.FileSystem;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.util.PathFormatChecker;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class IFileUtil {
  private static final Logger LOG = Logger.getLogger(IFileUtil.class);
  private static final String JAR_SEPARATOR = Path.ARCHIVE_SEPARATOR;

  public static boolean copyFileContent(IFile oldFile, IFile newFile) {
    BufferedInputStream in = null;
    OutputStream out = null;
    try {
      in = new BufferedInputStream(oldFile.openInputStream());
      out = newFile.openOutputStream();
      byte[] bytes = ReadUtil.read(in);
      out.write(bytes);
      return true;
    } catch (IOException e) {
      LOG.error(String.format("Failed to copy %s to %s", oldFile, newFile), e);
      return false;
    } finally {
      FileUtil.closeFileSafe(in);
      FileUtil.closeFileSafe(out);
    }
  }

  public static boolean copyDirectoryContent(IFile oldDirectory, IFile newDirectory) {
    assert oldDirectory.isDirectory();
    assert oldDirectory.exists();

    newDirectory.mkdirs();

    boolean result = true;
    for (IFile oldChild : oldDirectory.getChildren()) {
      String name = oldChild.getName();
      IFile newChild = newDirectory.findChild(name);
      if (oldChild.isDirectory()) {
        result &= copyDirectoryContent(oldChild, newChild);
      } else {
        newChild.createNewFile();
        result &= copyFileContent(oldChild, newChild);
      }
    }
    return result;
  }

  public static boolean isJarFile(@NotNull IFile file) {
    try {
      return file.isZipArchive();
    } catch (IOException e) {
      String message = String.format("received io error when trying to access the file %s", file);
      LOG.error(message, e);
      return false;
    }
  }

  /**
   * Fixme: will be replaced with the simple call getDescendant.
   * Resulting file is already inside jar, i.e. file in JarFileSystem, because we added JAR_SEPARATOR
   * @deprecated there's new {@link IFile#stepIntoArchive()}, replace uses. Although using getDescendant() (^^^) might be an alternative to consider
   *
   * @param jarFile shall be {@link #isJarFile(IFile) java archive file}
   */
  @Deprecated(since = "3.4", forRemoval = true)
  @NotNull
  public static IFile stepIntoJar(@NotNull IFile jarFile) {
    assert isJarFile(jarFile) : jarFile;
    return jarFile.getFileSystem().getFile(jarFile.getPath() + JAR_SEPARATOR); // the reason of this juggling is specifically our IoFileSystem
  }

  /**
   * Allows getting descendant in the same FS by a relative path. The path may include "//",".",".."
   */
  public static IFile getDescendant(@NotNull IFile file, String relativePath) {
    //that's because at least we don't know the type of the archive
    // a bare '!' is no archive separator, it is a legal character of a file name and steps into nothing, see MPS-40062
    String archivePath = PathUtil.extractArchivePath(relativePath);
    if (archivePath != null && PathUtil.hasArchiveFileName(archivePath)) {
      LOG.error("getDescendant() can't step into an archive. File= " + file.getPath() + ", relativePath=" + relativePath+". Using a fallback solution. Support for '!' will soon be completely removed", new Throwable());
      return file.getFileSystem().getFile(file.getPath()+"/"+relativePath);
    }
    new PathFormatChecker(relativePath).osIndependentPath();
    for (String part : relativePath.split(IFileSystem.SEPARATOR)) {
      if (part.isEmpty() || part.equals(".")) {
        continue;
      }
      if (part.equals("..")) {
        file = file.getParent();
        if (file == null) {
          return null;
        }
      } else {
        file = file.findChild(part);
      }
    }
    return file;
  }

  public static IFile createTmpDir(FileSystem vfs) {
    // XXX Files.createTempDirectory + IFileSystem.getFile(java.io.File) would be better, IMO.
    IFile tmpHome = vfs.getFile(System.getProperty("java.io.tmpdir"));
    // For e.g. Mac, tmpdir might reside under /var/folders, with canonical path /private/var/folders
    // IDEA's VirtualFile seems to be incapable to notice changes done through other location, which may lead to
    // puzzling failures (i.e. U see the file at fs location, but VirtualFile for the same (though, aliased) location doesn't list it).
    tmpHome = vfs.getFile(getCanonicalPath(tmpHome));
    int i = 1;
    String prefix = "mps-" + new SimpleDateFormat("yyyy-MM-dd-").format(new Date());
    while (tmpHome.findChild(prefix + i).exists()) {
      i++;
    }

    IFile result = tmpHome.findChild(prefix + i);
    result.mkdirs();
    return result;
  }

  public static String getCanonicalPath(IFile file) {
    if (file == null) {
      return null;
    }
    final String absolutePath = file.getPath();
    return getCanonicalPath(absolutePath);
  }

  public static String getCanonicalPath(String absolutePath) {
    // Only the part in front of an archive escapes canonicalization - there is no such thing as a symlink to follow inside a jar.
    // A '!' that merely ends a local directory name introduces no archive, and the rest of a local path has to be canonicalized
    // like any other, see MPS-40062.
    final int index = PathUtil.indexOfArchiveSeparator(absolutePath, 0);
    if (index == -1) {
      return FileUtil.getCanonicalPath(absolutePath);
    } else {
      return FileUtil.getCanonicalPath(absolutePath.substring(0, index)) + absolutePath.substring(index);
    }
  }

  public static String getTextContents(IFile file) throws IOException {
    try (BufferedReader br = new BufferedReader(new InputStreamReader(file.openInputStream()))) {
      StringBuilder sb = new StringBuilder();
      while (br.ready()) {
        sb.append(br.readLine());
        // FIXME preserve original line ednings
        sb.append('\n');
      }
      return sb.toString();
    }
  }

  public static List<IFile> getAllFiles(IFile directory) {
    if (!directory.isDirectory()) {
      throw new IllegalArgumentException("Not a directory");
    }
    List<IFile> result = new ArrayList<>();
    collectFiles(directory, result);
    return result;
  }

  private static void collectFiles(IFile dir, List<IFile> result) {
    for (IFile child : dir.getChildren()) {
      if (child.isDirectory()) {
        collectFiles(child, result);
      } else {
        result.add(child);
      }
    }
  }
}

