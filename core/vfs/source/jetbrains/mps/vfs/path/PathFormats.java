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
package jetbrains.mps.vfs.path;


import jetbrains.mps.logging.Logger;
// note this is jetbrains.mps.vfs.util.PathUtil, not the same-named interface of this very package
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * @author apyshkin
 */
public class PathFormats {
  private static final Logger LOG = Logger.getLogger(PathFormats.class);

  public static final PathFormat UNIX = new UnixPathFormat();
  public static final PathFormat WIN = new WinPathFormat();

  public static final PathFormat DEFAULT = UNIX;

  // TODO support UNC paths
  // TODO: should we use case-sensitivity, e.g. transform all the incoming paths to lower-case?
  private static final class WinPathFormat implements PathFormat {
    @Override
    public char getSeparatorChar() {
      return Path.WIN_SEPARATOR_CHAR;
    }

    //    @Override
//    public boolean isCaseSensitive() {
//      return false;
//    }
//
    @Override
    public String toString() {
      return "Windows Path Format";
    }

    @Override
    @Nullable
    public String extractRootPart(@NotNull String path) {
      String sep = Path.WIN_SEPARATOR;
      String uncRootPart = tryExtractUNC(path, sep);
      if (uncRootPart != null) {
        return uncRootPart;
      }
      if (path.startsWith(sep)) {
        throw new PathParseException(path, "Cannot parse '" + path + "'; the current drive is " +
                                           "impossible to resolve without addressing the physical file system");
      }
      int driveIndex = path.indexOf(Path.WIN_DRIVE_LETTER_SEPARATOR);
      if (driveIndex < 0) {
        return null;
      }
      return path.substring(0, driveIndex + 1);
    }

    @NotNull
    @Override
    public List<String> extractNonRootParts(@NotNull String path) {
      if (extractRootPart(path) != null) {
        int i = path.indexOf(Path.WIN_SEPARATOR_CHAR);
        assert (i >= 0) : path;
        path = path.substring(i);
      }
      return getTrimmedParts(path, getSeparator());
    }

    @NotNull
    @Override
    public String fromRootAndParts(@Nullable String root, @NotNull List<String> nonRootParts) {
      nonRootParts = skipEmptyStrings(nonRootParts);
      if (root == null) {
        return String.join(Path.WIN_SEPARATOR, nonRootParts);
      } else {
        if (nonRootParts.isEmpty()) {
          return root;
        }
        return root + Path.WIN_SEPARATOR + String.join(Path.WIN_SEPARATOR, nonRootParts);
      }
    }

    @NotNull
    @Override
    public Path fromParts(@Nullable String root, @NotNull String... nonRootParts) {
      return constructFilePath(root, nonRootParts, this);
    }

    @NotNull
    @Override
    public Path fromString(@NotNull String path) {
      return constructFilePathFromString(path, this);
    }

    @Override
    public void validateRoot(@Nullable String rootPart) {
      if (rootPart == null) {
        return;
      }
      validate(rootPart);
    }

    @Override
    public void validateNonRoot(@NotNull String nonRootPart) {
      // fixme to become smth more in 22.1
      validate(nonRootPart);
    }

    @Override
    public void validatePath(@NotNull String path) {
      // fixme to become smth more in 22.1
      validate(path);
    }
  }

  @Nullable
  private static String tryExtractUNC(@NotNull String path, String sep) {
    var uncPrefix = sep + sep;
    if (path.startsWith(uncPrefix)) {
      // probably unc
      int ix = path.indexOf(sep, uncPrefix.length());
      if (ix < 0) {
        // we have '//' at the start
        return null;
      } else if (ix == uncPrefix.length()) {
        // we have '///' at the start
        return null;
      }
      String hostName = path.substring(uncPrefix.length(), ix);
      int ix2 = path.indexOf(sep, ix + 1);
      if (ix2 == ix + 1) { // our volumeName is empty?
        return null; // not unc then!
      }
      if (ix2 >= 0) {
        return uncPrefix + hostName + sep + path.substring(ix + 1, ix2);
      }
      return path;
    }
    return null;
  }

  private static final class UnixPathFormat implements PathFormat {
    @Override
    public char getSeparatorChar() {
      return Path.UNIX_SEPARATOR_CHAR;
    }

    //    @Override
//    public boolean isCaseSensitive() {
//      return true;
//    }
//
    @Override
    public String toString() {
      return "Unix Path Format";
    }

    @Nullable
    @Override
    public String extractRootPart(@NotNull String path) {
      String sep = Path.UNIX_SEPARATOR;
      var uncRoot = PathFormats.tryExtractUNC(path, sep);
      if (uncRoot != null) {
        return uncRoot;
      }
      if (!path.startsWith(sep)) {
        return null;
      }
      return sep;
    }

    @NotNull
    @Override
    public List<String> extractNonRootParts(@NotNull String path) {
      return getTrimmedParts(path, getSeparator());
    }

    @NotNull
    @Override
    public String fromRootAndParts(@Nullable String root, @NotNull List<String> nonRootParts) {
      nonRootParts = skipEmptyStrings(nonRootParts);
      if (root == null) {
        return String.join(Path.UNIX_SEPARATOR, nonRootParts);
      } else {
        if (root.equals(Path.UNIX_SEPARATOR)) {
          return root + String.join(Path.UNIX_SEPARATOR, nonRootParts);
        }
        return Stream.concat(Stream.of(root), nonRootParts.stream()).collect(Collectors.joining(Path.UNIX_SEPARATOR));
      }
    }

    @NotNull
    @Override
    public Path fromParts(@Nullable String root, @NotNull String... nonRootParts) {
      return constructFilePath(root, nonRootParts, this);
    }

    @NotNull
    @Override
    public Path fromString(@NotNull String path) {
      return constructFilePathFromString(path, this);
    }

    @Override
    public void validateRoot(@Nullable String rootPart) {
      if (rootPart == null) {
        return;
      }
      if (tryExtractUNC(rootPart, Path.UNIX_SEPARATOR) != null) {
        return;
      }
      if (!rootPart.equals(Path.UNIX_SEPARATOR)) {
        throw new PathParseException(rootPart, "The root part must be slash, unc share or null");
      }
    }

    @Override
    public void validateNonRoot(@NotNull String nonRootPart) {
      // fixme to become smth more in 22.1
      validate(nonRootPart);
    }

    @Override
    public void validatePath(@NotNull String path) {
      // fixme to become smth more in 22.1
      validate(path);
    }
  }

  @NotNull
  private static FilePath constructFilePath(@Nullable String root,
                                            @NotNull String[] nonRootParts,
                                            @NotNull PathFormat format) {
    var archivePathParts = Arrays.stream(nonRootParts)
                                 .map(path -> NonArchivePath.fromString(path, DEFAULT))
                                 .toArray(NonArchivePath[]::new);
    return FilePath.fromPathParts(NonArchivePath.fromString(root, format), archivePathParts);
  }

  /**
   * fixme the invocation goes to FilePath and then back here but for this moment, I do not care
   */
  @NotNull
  private static Path constructFilePathFromString(@NotNull String path, @NotNull PathFormat format) {
    return FilePath.fromString(path, format);
  }

  public static PathFormat getCurrentSystemFormat() {
    if (System.getProperty("os.name").toLowerCase(Locale.US).startsWith("windows")) {
      return WIN;
    } else {
      return UNIX;
    }
  }

  @NotNull
  private static List<String> skipEmptyStrings(List<String> strings) {
    return strings.stream()
                  .filter(x -> !x.isEmpty())
                  .collect(Collectors.toList());
  }

  @NotNull
  private static List<String> getTrimmedParts(@NotNull String path, @NotNull String separator) {
    var result = new ArrayList<String>();
    String uncPrefix = tryExtractUNC(path, separator);
    if (uncPrefix != null) {
      assert (path.startsWith(uncPrefix));
      path = path.substring(uncPrefix.length());
    }
    for (String s : path.split(Pattern.quote(separator))) {
      if (!s.isEmpty()) {
        result.add(s);
      }
    }
    return result;
  }

  private static void validate(@NotNull String path) {
    if (path.contains(Path.UNIX_SEPARATOR) && path.contains(Path.WIN_SEPARATOR)) {
      LOG.warning("The path '" + path + "' contains both Unix and Windows separators which is suspicious.");
    }
    // Only a separator that indeed introduces an archive entry calls for a FilePath. A '!' is a legal character of a file name, so
    // a plain local path bears the "!/" sequence whenever a directory name ends with one, and it is a NonArchivePath (MPS-40062).
    if (PathUtil.indexOfArchiveSeparator(path, 0) >= 0) {
      throw new PathParseException(path, "NonArchivePath is not allowed to include archive separators." +
                                         "One would expect FilePath to be used here.");
    }
  }


  @NotNull
  public static List<PathFormat> getDefaultFormats() {
    return Arrays.asList(UNIX, WIN);
  }
}
