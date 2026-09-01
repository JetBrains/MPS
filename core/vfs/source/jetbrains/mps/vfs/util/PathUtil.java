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
package jetbrains.mps.vfs.util;

import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.path.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.util.Locale;

/**
 * For internal use only.
 */
public class PathUtil {
  // fixme incorrect since backslashes are valid for linux system path names
  //  we might fix it in 2021.3 with new unc path support
  //  for now we just get wrong path names
  @NotNull
  public static String toSystemIndependent(@NotNull String path) {
    String result = path.replace(File.separator, IFileSystem.SEPARATOR);
    new PathFormatChecker(result).osIndependentPath();
    return result;
  }

  // fixme the same as above
  @NotNull
  public static String toSystemDependent(@NotNull String path) {
    String result = path.replace(IFileSystem.SEPARATOR, File.separator);
    new PathFormatChecker(result).osDependentPath();
    return result;
  }

  public static boolean isRoot(@NotNull String path) {
    return path.endsWith(":/") || "/".equals(path);
  }

  /**
   * Splits off the part of a path that may denote an archive hosting the rest of it, i.e. everything in front of the FIRST
   * {@link Path#ARCHIVE_SEPARATOR} (an archive root is sometimes spelled without the trailing slash, and a bare trailing {@code '!'}
   * counts as a separator, too). Whether that part indeed is an archive is up to the caller, see e.g. {@link #hasArchiveFileName(String)}
   * - the mere presence of a {@code '!'} tells nothing, as it is a legal character of a local file name (MPS-40062).
   * <p>
   * Only the first separator matters, so that a path into a nested archive ({@code a.jar!/b.jar!/entry}) is attributed to the
   * outermost one.
   *
   * @return the archive part of the path, {@code null} if the path bears none
   * @since 2026.2
   */
  @Nullable
  public static String extractArchivePath(@NotNull String path) {
    // cf. com.intellij.openapi.vfs.impl.jar.JarFileSystemImpl#extractRootPath
    int separatorIndex = path.indexOf(Path.ARCHIVE_SEPARATOR);
    if (separatorIndex > 0) {
      return path.substring(0, separatorIndex);
    }
    return path.length() > 1 && path.endsWith("!") ? path.substring(0, path.length() - 1) : null;
  }

  /**
   * @return whether the last name of the given path is that of a java archive, judging by its extension alone, without any file
   *         access. Note the IDEA-backed file system recognizes a wider set of extensions, see
   *         {@code jetbrains.mps.ide.vfs.IdeaFileSystem#denotesArchive(String)}.
   * @since 2026.2
   */
  public static boolean hasArchiveFileName(@NotNull String path) {
    String name = path.substring(path.lastIndexOf(IFileSystem.SEPARATOR_CHAR) + 1).toLowerCase(Locale.ENGLISH);
    return name.endsWith(Path.DOT_JAR) || name.endsWith(Path.DOT_ZIP);
  }

  /**
   * Finds a {@link Path#ARCHIVE_SEPARATOR} that indeed separates an archive from an entry within it, i.e. one preceded by an
   * {@linkplain #hasArchiveFileName(String) archive file name}. The mere presence of the sequence tells nothing: {@code '!'} is a
   * legal character of a file name on every supported OS, so a plain local path bears it whenever a directory name ends with one
   * (MPS-40062).
   * <p>
   * Judging by the name alone is what keeps this free of any file access, which the immutable {@code Path} value types depend on.
   * It is the name-based half of the notion of an archive the java.io-backed file system uses, see
   * {@code jetbrains.mps.vfs.impl.IoFileSystem#denotesArchive(String)}; the extension-less archive its content sniffing would also
   * accept is beyond reach here, and so is the wider set of extensions the platform knows, see
   * {@code jetbrains.mps.ide.vfs.IdeaFileSystem#denotesArchive(String)}.
   *
   * @param fromIndex the index to start the search from, as in {@link String#indexOf(String, int)}
   * @return the index of the separator, {@code -1} if the path bears none past {@code fromIndex}
   * @since 2026.2
   */
  public static int indexOfArchiveSeparator(@NotNull String path, int fromIndex) {
    for (int i = path.indexOf(Path.ARCHIVE_SEPARATOR, fromIndex); i >= 0;
         i = path.indexOf(Path.ARCHIVE_SEPARATOR, i + Path.ARCHIVE_SEPARATOR.length())) {
      // the separator itself ends with a slash, hence the name in front of a nested one is found by the very same lookup
      if (hasArchiveFileName(path.substring(0, i))) {
        return i;
      }
    }
    return -1;
  }
}
