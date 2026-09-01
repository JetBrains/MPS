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
package jetbrains.mps.vfs.path;

// note this is jetbrains.mps.vfs.util.PathUtil, not the same-named interface of this very package
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Immutable;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * FilePath works either with usual files and folders and with archives
 * Archives might be inside other archives /foo/bar/a.jar!/b.jar!/abc.xml
 *
 * @author apyshkin
 */
@Immutable
public class FilePath extends AbstractPath {
  @NotNull private final NonArchivePath myPathToFile;
  @NotNull private final List<NonArchivePath> myArchivePaths = new ArrayList<>();
  private final String myPathText;
  private final int myHashCode;

  /**
   * @param path might contain {@link #ARCHIVE_SEPARATOR} symbolS (!)
   */
  private FilePath(@NotNull String path, @NotNull PathFormat pathFormat) {
    String[] archiveStrings = splitArchive(path);
    if (archiveStrings.length == 0) {
      myPathToFile = NonArchivePath.fromString(path, pathFormat);
    } else {
      myPathToFile = NonArchivePath.fromString(archiveStrings[0], pathFormat);
      int index = 1; // we are skipping first non-archive part
      while (index < archiveStrings.length) {
        String trimmed = trim(archiveStrings[index]);
        NonArchivePath archivePart = NonArchivePath.fromString(trimmed, PathFormats.UNIX);
        myArchivePaths.add(archivePart.toUnixPathFormat());
        index++;
      }
    }
    myPathText = calcPathText();
    myHashCode = calcHash();
  }

  private FilePath(@NotNull NonArchivePath path, @Nullable NonArchivePath... pathsInArchive) {
    myPathToFile = path;
    if (pathsInArchive != null) {
      for (NonArchivePath commonPath : pathsInArchive) {
        assert commonPath.isRelative();
        myArchivePaths.add(commonPath.toUnixPathFormat());
      }
    }
    myPathText = calcPathText();
    myHashCode = calcHash();
  }

  private String calcPathText() {
    var res = new StringBuilder(myPathToFile.toText());
    for (Path path : myArchivePaths) {
      res.append(ARCHIVE_SEPARATOR).append(path.toText());
    }
    return res.toString();
  }

  private int calcHash() {
    return Objects.hash(myPathToFile, myArchivePaths);
  }

  /**
   * Splits the path at every {@link PathUtil#indexOfArchiveSeparator(String, int) archive separator}, that is, at the ones that
   * indeed separate an archive from an entry within it. A {@code '!'} that merely ends a local directory name is none, so
   * {@code /a/b!/c} is a plain path to a file, while {@code /a/b.jar!/c} enters an archive (MPS-40062).
   *
   * @return the part addressing a file in the file system, followed by the parts addressing entries within archives; a single
   *         element, the path itself, when the path enters no archive
   */
  private static String[] splitArchive(String path) {
    int separator = PathUtil.indexOfArchiveSeparator(path, 0);
    if (separator < 0) {
      return new String[]{path};
    }
    List<String> parts = new ArrayList<>();
    int partStart = 0;
    while (separator >= 0) {
      parts.add(path.substring(partStart, separator));
      partStart = separator + ARCHIVE_SEPARATOR.length();
      separator = PathUtil.indexOfArchiveSeparator(path, partStart);
    }
    // an archive root is spelled with the separator at the very end, which leaves an empty last part, e.g. /a/b.jar!/
    parts.add(path.substring(partStart));
    return parts.toArray(new String[0]);
  }

  private static String trim(String path) {
    for (int i = 0; i < path.length(); ++i) {
      if (path.charAt(i) != UNIX_SEPARATOR_CHAR && path.charAt(i) != WIN_SEPARATOR_CHAR) {
        return path.substring(i);
      }
    }
    return path;
  }

  @NotNull
  public static FilePath fromStringInDefaultFormat(@NotNull String path) {
    return fromString(path, PathFormats.UNIX);
  }

  @NotNull
  public static FilePath fromString(@NotNull String path, @NotNull PathFormat pathFormat) {
    validate(path);
    return new FilePath(path, pathFormat);
  }

  private static void validate(String path) {
    if (path.isEmpty()) {
      return;
    }
    for (String part : path.split(ARCHIVE_SEPARATOR)) {
      if (part.isEmpty()) {
        throw new IllegalArgumentException("The path `" + path + "' contains two archive separators, one right after another.");
      }
    }
  }

  private static void validate(NonArchivePath... pathsInArchive) {
    for (NonArchivePath path : pathsInArchive) {
      if (!path.isRelative()) {
        throw new IllegalArgumentException("Given path within the archive must be relative `" + path);
      }
    }
  }

  /**
   * the path is pathToFile + ARCHIVE_SEPARATOR + pathsInArchive[0] + ARCHIVE_SEPARATOR + pathsInArchive[1] + ...
   * if it is archive or just pathToFile in the case it is not
   * the paths within the archive might be system-dependent -- it will be converted to the system-independent path automatically
   */
  @NotNull
  public static FilePath fromPathParts(@NotNull NonArchivePath pathToFile,
                                       @NotNull NonArchivePath... pathsInArchive) {
    validate(pathsInArchive);
    return new FilePath(pathToFile, pathsInArchive);
  }

  @NotNull
  private static FilePath fromPathParts(@NotNull NonArchivePath pathToFile,
                                        @Nullable List<NonArchivePath> pathsInArchive) {
    if (pathsInArchive == null) {
      return new FilePath(pathToFile);
    }
    return FilePath.fromPathParts(pathToFile, pathsInArchive.toArray(new NonArchivePath[0]));
  }

  public boolean isInArchive() {
    return !myArchivePaths.isEmpty();
  }

  @Override
  @NotNull
  public FilePath toUnixPathFormat() {
    return FilePath.fromPathParts(myPathToFile.toUnixPathFormat(), myArchivePaths);
  }

  @Override
  @NotNull
  public FilePath toSystemPathFormat() {
    return FilePath.fromPathParts(myPathToFile.toSystemPathFormat(), myArchivePaths);
  }

  @NotNull
  @Override
  public PathFormat getFormat() {
    return myPathToFile.getFormat();
  }

  @Override
  public boolean endsWith(@NotNull String other) {
    return toText().endsWith(other);
  }

  @Override
  public boolean startsWith(@NotNull String other) {
    return startsWith(FilePath.fromStringInDefaultFormat(other));
  }

  @NotNull
  @Override
  public Path relativize(@NotNull Path other) {
    throw new UnsupportedOperationException("TODO");
  }

  @NotNull
  @Override
  public FilePath normalize() {
    return FilePath.fromPathParts(myPathToFile.normalize(),
                                  myArchivePaths.stream()
                                            .map(NonArchivePath::normalize)
                                            .collect(Collectors.toList()));
  }

  @NotNull
  @Override
  public Path resolve(@NotNull Path other) {
    throw new UnsupportedOperationException("TODO");
  }

  @NotNull
  @Override
  public Path resolve(@NotNull String other) {
    throw new UnsupportedOperationException("TODO");
  }

  @Override
  public boolean isRelative() {
    return myPathToFile.isRelative();
  }

  @Override
  public boolean isArchive() {
    return !myArchivePaths.isEmpty();
  }

  @Override
  public char getSeparatorChar() {
    return myPathToFile.getSeparatorChar();
  }

  @Nullable
  @Override
  public Path getParent() {
    if (myArchivePaths.isEmpty()) {
      NonArchivePath parent = myPathToFile.getParent();
      if (parent == null) {
        return null;
      }
      return new FilePath(parent);
    }
    int lastIndex = myArchivePaths.size() - 1;
    NonArchivePath lastParent = myArchivePaths.get(lastIndex).getParent();
    List<NonArchivePath> newArchivePaths = myArchivePaths.subList(0, lastIndex);
    if (lastParent != null) {
      newArchivePaths.add(lastParent);
    }
    return FilePath.fromPathParts(myPathToFile, newArchivePaths);
  }

  @NotNull
  @Override
  public List<String> getAllParts() {
    List<String> result = new ArrayList<>(myPathToFile.getAllParts());
    for (NonArchivePath path : myArchivePaths) {
      result.addAll(path.getAllParts());
    }
    return result;
  }

  @NotNull
  @Override
  public Path getRoot() {
    return new FilePath((NonArchivePath) myPathToFile.getRoot());
  }

  @Nullable
  public String getRootPart() {
    return myPathToFile.getRootPart();
  }

  @NotNull
  @Override
  public String toText() {
    return myPathText;
  }

  @Override
  public String toString() {
    return "FilePath[" + myPathText + "]";
  }

  @NotNull
  @Override
  public FilePath copy() {
    return FilePath.fromPathParts(myPathToFile, myArchivePaths);
  }

  @Override
  public int hashCode() {
    return myHashCode;
  }

  @Override
  public boolean equals(Object o) {
    if (o instanceof FilePath) {
      return Objects.equals(myPathToFile, ((FilePath) o).myPathToFile) &&
             Objects.equals(myArchivePaths, ((FilePath) o).myArchivePaths);
    }
    return false;
  }

//  public WatchKey register(WatchService watcher, Kind<?>[] events, Modifier... modifiers) throws IOException {
//     fixme
//    throw new NotImplementedException();
//  }
//
//  public WatchKey register(WatchService watcher, Kind<?>... events) throws IOException {
//     fixme
//    throw new NotImplementedException();
//  }
}
