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

import org.hamcrest.Matchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ErrorCollector;

import java.util.List;

import static jetbrains.mps.vfs.path.Path.ARCHIVE_SEPARATOR;

public class FilePathTest extends PathTest {
  @Rule
  public ErrorCollector myErrors = new ErrorCollector();

  @NotNull
  @Override
  public Path fromString(@NotNull String path, @NotNull PathFormat format) {
    return FilePath.fromString(path, format);
  }

  @NotNull
  @Override
  public Path fromParts(@Nullable String rootPart,
                        @NotNull List<String> nonRootParts,
                        @NotNull PathFormat format) {
    return FilePath.fromPathParts(NonArchivePath.fromParts(rootPart, nonRootParts, format));
  }

  @Test(expected = IllegalArgumentException.class)
  public void constructionContractTest1() {
    NonArchivePath toFile = NonArchivePath.fromString("a.jar", PathFormats.UNIX);
    NonArchivePath inJar = NonArchivePath.fromStringWithDefaultFormat("/a/b");
    FilePath.fromPathParts(toFile, inJar);
  }

  @Test
  public void constructionContractTest2() {
    FilePath path = FilePath.fromString("C:\\a.jar" + ARCHIVE_SEPARATOR + "a/b", PathFormats.WIN);
    Assert.assertEquals(FilePath.fromString("C:\\a.jar" + ARCHIVE_SEPARATOR + "a/b/", PathFormats.WIN), path);
  }

  @Test
  public void constructionEqualityTestWin() {
    NonArchivePath toFile = NonArchivePath.fromString("a\\b\\a.jar", PathFormats.WIN);
    NonArchivePath inJar = NonArchivePath.fromStringWithDefaultFormat("a/b/c");
    Assert.assertEquals(FilePath.fromPathParts(toFile, inJar),
                        FilePath.fromString("a\\b\\\\a.jar" + ARCHIVE_SEPARATOR + "///a///b/c", PathFormats.WIN));
  }

  @Test
  public void constructionEqualityTestFilePath() {
    NonArchivePath toFile = NonArchivePath.fromStringWithDefaultFormat("a.jar");
    NonArchivePath inJar = NonArchivePath.fromStringWithDefaultFormat("a/b/c");
    Assert.assertEquals(FilePath.fromPathParts(toFile, inJar), FilePath.fromStringInDefaultFormat("a.jar" + ARCHIVE_SEPARATOR + "a/b/c"));
  }

  @Test
  public void separatorTest3() {
    Path path = fromString("a\\b\\c\\d.jar!/a/b/c", PathFormats.WIN);
    Assert.assertEquals(fromString("a/b/c/d.jar!/a/b/c//", PathFormats.UNIX), path.toUnixPathFormat());
  }

  @Test
  public void separatorTest4() {
    Path path = fromString("a\\b\\c\\d.jar!/a/b/c.jar!/", PathFormats.WIN);
    Assert.assertEquals(fromString("a/b/c///d.jar!//a/b/////c.jar!/", PathFormats.UNIX), path.toUnixPathFormat());
  }

  @Test
  public void parentTest3() {
    Path path = fromString("/a/b/c/asdf/cx.jar!/asd.jar!/db.xml", PathFormats.UNIX);
    Assert.assertEquals(fromString("/a/b/c//asdf//cx.jar!///asd.jar!/", PathFormats.UNIX), path.getParent());
  }

  /**
   * A {@code '!'} is a legal character of a file name on every supported OS, so a directory whose name ends with one puts the
   * {@link Path#ARCHIVE_SEPARATOR} sequence into the path of everything below it without any archive being involved. Such a path
   * is a plain path to a file, see MPS-40062.
   */
  @Test
  public void bangInDirectoryNameIsNoArchiveSeparator() {
    Path path = fromString("/a/&#!/b/c.mps", PathFormats.UNIX);
    Assert.assertFalse("Shall not be an archive path: " + path, path.isArchive());
    Assert.assertEquals("/a/&#!/b/c.mps", path.toText());
    Assert.assertEquals("c.mps", path.getFileName());
    // the '!' belongs to the name of the directory and has to survive the parse
    Assert.assertEquals(List.of("/", "a", "&#!", "b", "c.mps"), path.getAllParts());
    Assert.assertEquals(fromString("/a/&#!/b", PathFormats.UNIX), path.getParent());
  }

  /**
   * The counterpart of {@link #bangInDirectoryNameIsNoArchiveSeparator()}: a separator that does follow an archive name still
   * splits, nested archives included.
   */
  @Test
  public void archiveNameBeforeSeparatorStillSplits() {
    Path path = fromString("/a/&#!/b.jar!/c.zip!/d.mps", PathFormats.UNIX);
    Assert.assertTrue(path.isArchive());
    Assert.assertEquals("/a/&#!/b.jar!/c.zip!/d.mps", path.toText());
    Assert.assertEquals(fromString("/a/&#!/b.jar!/c.zip!/", PathFormats.UNIX), path.getParent());
  }

  @Test
  public void jarSeparatorTest() {
    for (var format : PathFormats.getDefaultFormats()) {
      Path path = fromString("asd.jar!/", format);
      Assert.assertEquals(fromString("asd.jar", format), path.getParent());
    }
  }

  @Test
  public void parentTest4() {
    var format = PathFormats.UNIX;
    Path path = fromString("a////b/c.jar", format);
    Assert.assertEquals(fromString("a//b", format), path.getParent());
  }

  @Test
  public void parentTest5() {
    var format = PathFormats.WIN;
    Path path = fromString("a\\b\\c.jar!/x.txt", format);
    Assert.assertEquals(fromString("a\\b\\c.jar!/", format), path.getParent());
  }

  @Test
  public void parentTest6() {
    var format = PathFormats.WIN;
    Path path = fromString("a\\b\\c.jar!/", format);
    Assert.assertEquals(fromString("a\\b\\c.jar", format), path.getParent());
  }

  // although this test doesn't mention FilePath directly, put it here as path inside archive is FilePath
  @Test
  @Ignore
  public void pathFormatFromParts() {
    final String winAbsPath = "c:\\Test\\test\\archive.jar";
    final String unixAbsPath = "/Test/test/archive.jar";
    final String entryPath = "entry/inside/archive";
    // JarEntryFile.toPath():
    Path un1 = PathFormats.UNIX.fromParts(winAbsPath, entryPath);
    Path win1 = PathFormats.WIN.fromParts(winAbsPath, entryPath);
    Path un2 = PathFormats.UNIX.fromParts(unixAbsPath, entryPath);
    Path win2 = PathFormats.WIN.fromParts(unixAbsPath, entryPath);
    final Path expected = PathFormats.UNIX.fromString(unixAbsPath + "!/" + entryPath);
    System.out.println(un1.toUnixPathFormat().equals(expected));
    System.out.println(un2.toUnixPathFormat().equals(expected));
//    System.out.println(win1.toUnixPathFormat().equals(expected));
//    System.out.println(win2.toUnixPathFormat().equals(expected));
  }

  @Test
  @Ignore
  public void changePathFormat() {
    final String winRelPath = "Test\\test\\archive.jar";
    final String unixRelPath = "Test/test/archive.jar";
    final String entryPath = "entry/inside/archive";
    Path un1 = PathFormats.UNIX.fromString(unixRelPath);
    Path un2 = PathFormats.UNIX.fromParts(unixRelPath, entryPath);
    Path win1 = PathFormats.WIN.fromString(winRelPath);
    Path win2 = PathFormats.WIN.fromParts(winRelPath, entryPath);
    System.out.println(un1);
    System.out.println("\tparts:" + un1.getAllParts()); // distinct part string for each element of the path
    // FilePath[Test/test/archive.jar]
    //     parts:[null, Test, test, archive.jar]
    System.out.println(un2);
    System.out.println(win1);
    System.out.println("\tparts:" + win1.getAllParts()); // distinct part string for each element of the path
    // FilePath[Test\test\archive.jar]
    //	   parts:[null, Test, test, archive.jar]
    System.out.println(win2);

    // see what happens if string doesn't match format (note, string doesn't include root/drive designator)
    Path un3 = PathFormats.UNIX.fromString(winRelPath);
    Path win3 = PathFormats.WIN.fromString(unixRelPath);

    System.out.println(un3 + "; FMT=" + un3.getFormat());
    System.out.println("\tparts:" + un3.getAllParts()); // complete path is treated as single part!
    // parts:[null, Test\test\archive.jar]
    System.out.println(win3 + "; FMT=" + win3.getFormat());
    System.out.println("\tparts:" + win3.getAllParts()); // complete path is treated as single part!
    // parts:[null, Test/test/archive.jar]

    myErrors.checkThat("toUnixPathFormat() doesn't change path already in UNIX format", un3.toUnixPathFormat(), Matchers.equalTo(un3));
    myErrors.checkThat("toUnixPathFormat() for relative Windows path translates to UNIX format", win3.toUnixPathFormat(), Matchers.equalTo(un3));
  }
}
