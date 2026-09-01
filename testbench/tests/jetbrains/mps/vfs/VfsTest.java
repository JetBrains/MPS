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
package jetbrains.mps.vfs;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.core.platform.Platform;
import jetbrains.mps.ide.vfs.IdeaFileSystem;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentAware;
import jetbrains.mps.util.IFileUtil;
import jetbrains.mps.util.ReadUtil;
import jetbrains.mps.vfs.iofs.jar.JarIoFileSystem;
import jetbrains.mps.vfs.openapi.FileSystem;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.util.PathFormatChecker.PathFormatException;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.junit.Assume;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.Collections;
import java.util.function.Consumer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

/**
 * @author Evgeny Gerashchenko
 */
@SuppressWarnings("removal")
public class VfsTest implements EnvironmentAware {
  private static final int FILE_SIZE = 20000;

  private static final String JAR_NAME = "testjar.zip";
  private static final String JAR_FOLDER = "testjar";
  private static final String WEIRD_DIR_NAME = "weird&#!";

  private Platform myPlatform;

  private void IO_FS_TEST(final Consumer<FileSystem> testRunnable) {
    VFSManager vfsManager = myPlatform.findComponent(VFSManager.class);
    testRunnable.accept(vfsManager.getUmbrellaFileSystemJavaIO());
  }

  private static void IDEA_FS_TEST(final Consumer<? super IdeaFileSystem> testRunnable) {
    final Throwable[] ex = new Throwable[1];
    ApplicationManager.getApplication().invokeAndWait(() -> ApplicationManager.getApplication().runWriteAction(() -> {
      try {
        testRunnable.accept(IdeaFileSystem.getInstance());
      } catch (Throwable e) {
        ex[0] = e;
      }
    }), ModalityState.defaultModalityState());
    if (ex[0] != null) {
      ex[0].printStackTrace();
      fail();
    }
  }

  @Override
  public void setEnvironment(@NotNull Environment env) {
    // Needs IdeaEnvironment
    myPlatform = env.getPlatform();
  }

  private static void doBaseVfsTest(@NotNull FileSystem fs) {
    IFile tmpDir = IFileUtil.createTmpDir(fs);
    assertTrue("Temp dir does not exist", tmpDir.exists());
    assertTrue("Created temp directory is not directory", tmpDir.isDirectory());
    assertFalse("Could create file with the same name as the directory", tmpDir.createNewFile());
    assertTrue("Created temp directory is not empty", tmpDir.getChildren().isEmpty());

    IFile subSubDir = tmpDir.findChild("subdir").findChild("subsubdir");
    assertTrue(subSubDir.mkdirs());

    assertTrue(subSubDir.isDirectory());
    assertTrue(subSubDir.exists());

    IFile file1 = subSubDir.findChild("file1");
    assertFalse(file1.exists());
    assertEquals(file1.getParent(), subSubDir);
    try (OutputStream os = file1.openOutputStream()) {
      for (int i = 0; i < FILE_SIZE; i++) {
        os.write(i % 256);
      }
    } catch (IOException e) {
      fail(e.getMessage());
    }
    assertTrue(file1.exists());
    assertEquals(FILE_SIZE, file1.length());
    assertEquals(Collections.singletonList(file1), subSubDir.getChildren());

    try (InputStream os = file1.openInputStream()) {
      for (int i = 0; i < FILE_SIZE; i++) {
        assertEquals(os.read(), i % 256);
      }
    } catch (IOException e) {
      fail(e.getMessage());
    }

    IFile file111 = file1.rename1("file111");
    assertEquals("file1", file1.getName());
    assertNotEquals(file111, file1);
    assertEquals(file1.getParent().findChild("file1"), file1);
    assertFalse(file1.exists());

    file1 =  file1.getParent().findChild("file111");
    assertTrue(file1.rename("file1"));
    String path1Original = file1.getPath();
    file1 = file1.getParent().findChild("file1");
    assertTrue(file1.move(tmpDir));
    assertNotEquals(file1.getPath(), path1Original);
    assertFalse(fs.getFile(path1Original).exists());

    assertTrue(tmpDir.delete());
    assertFalse(tmpDir.exists());
  }

  private static void doPathVfsTest(@NotNull IdeaFileSystem fs) {
    IFile tmpDir = IFileUtil.createTmpDir(fs);
    try {
      java.nio.file.Path tmpPath = java.nio.file.Path.of(tmpDir.getPath());
      IFile fileFromPath = fs.getFile(tmpPath);
      assertEquals(tmpDir, fileFromPath);
      assertEquals(tmpDir, fs.findExistingFile(tmpPath));

      java.nio.file.Path missingPath = tmpPath.resolve("subdir").resolve("..").resolve("missing");
      IFile missingFile = fs.getFile(missingPath);
      assertEquals(tmpDir.findChild("missing"), missingFile);
      assertFalse(missingFile.exists());
      assertNull(fs.findExistingFile(missingPath));

      VirtualFile virtualFile = fs.asVirtualFile(fileFromPath);
      assertNotNull(virtualFile);
      assertEquals(fileFromPath, fs.fromVirtualFile(virtualFile));

      try {
        fs.getFile(java.nio.file.Path.of("relative"));
        fail("Relative paths are not supported");
      } catch (PathFormatException expected) {
        // expected
      }
    } finally {
      assertTrue(tmpDir.delete());
    }
  }

  private static void doUnixBackslashPathVfsTest(@NotNull IdeaFileSystem fs) {
    IFile tmpDir = IFileUtil.createTmpDir(fs);
    try {
      java.nio.file.Path backslashPath = java.nio.file.Path.of(tmpDir.getPath()).resolve("file\\with\\backslashes");
      IFile backslashFile = fs.getFile(backslashPath);
      assertEquals(backslashPath.toString(), backslashFile.getPath());
    } finally {
      assertTrue(tmpDir.delete());
    }
  }

  private static void doJarVfsTest(@NotNull FileSystem fileSystem) {
    String testJarPath = VfsTest.class.getResource(JAR_NAME).getPath();
    IFile jarRoot1 = fileSystem.getFile(testJarPath + Path.ARCHIVE_SEPARATOR + JAR_FOLDER);
    testJarRoot(jarRoot1);

    IFile testJarFile = fileSystem.getFile(testJarPath);

    try {
      assertTrue(testJarFile.isZipArchive());
      assertFalse(testJarFile.isInZipArchive());
      assertFalse(testJarFile.isDirectory());

      IFile zipRoot = testJarFile.stepIntoArchive();
      assertFalse(zipRoot.isZipArchive());
      assertTrue(zipRoot.isInZipArchive());
      assertTrue(zipRoot.isReadOnly());
      assertTrue(zipRoot.isDirectory());

      IFile jarRoot2 = zipRoot.findChild(JAR_FOLDER);
      testJarRoot(jarRoot2);

      assertEquals(jarRoot1, jarRoot2);

      if (fileSystem instanceof IdeaFileSystem) {
        IdeaFileSystem ideaFileSystem = (IdeaFileSystem) fileSystem;
        VirtualFile virtualFile = ideaFileSystem.asVirtualFile(jarRoot1);
        assertNotNull(virtualFile);
        assertEquals(jarRoot1, ideaFileSystem.fromVirtualFile(virtualFile));

        assertEquals(jarRoot1, ideaFileSystem.getArchiveAwareFile(testJarPath + Path.ARCHIVE_SEPARATOR + JAR_FOLDER));
        assertEquals(testJarFile, ideaFileSystem.getArchiveAwareFile(testJarPath));
        // an archive root spelled without the trailing slash is still an archive root
        assertEquals(zipRoot, ideaFileSystem.getArchiveAwareFile(testJarPath + "!"));

        assertEquals(VFSManager.FILE_FS, testJarFile.getQualifiedPath().getFsId());
        assertEquals(VFSManager.JAR_FS, zipRoot.getQualifiedPath().getFsId());
        assertEquals(VFSManager.JAR_FS, jarRoot1.getQualifiedPath().getFsId());
      }

      // getBundleHome: the containing archive for entries, the parent directory for a local file
      assertEquals(testJarFile, zipRoot.getBundleHome());
      assertEquals(testJarFile, jarRoot2.getBundleHome());
      assertEquals(testJarFile.getParent(), testJarFile.getBundleHome());

      // stepUpToArchive
      assertTrue(zipRoot.stepUpToArchive().isZipArchive());
      assertTrue(jarRoot2.stepUpToArchive().isZipArchive());
      assertEquals(zipRoot.stepUpToArchive(), jarRoot2.stepUpToArchive());
      assertEquals(testJarFile, jarRoot2.stepUpToArchive()); // implies == zipRoot.stepUpToArchive()

    } catch (IOException e) {
      fail(e.getMessage());
    }
  }

  private static void testJarRoot(IFile jarRoot) {
    assertEquals(3, jarRoot.getChildren().size());
    assertTrue(jarRoot.isDirectory());
    assertTrue(jarRoot.isReadOnly());
    assertTrue(jarRoot.isInZipArchive());
    IFile readmeFile = jarRoot.findChild("README");
    assertFalse(readmeFile.isDirectory());
    try (InputStream is = readmeFile.openInputStream()) {
      assertEquals("this is a test file\n", new String(ReadUtil.read(is)));
    } catch (IOException e) {
      fail(e.getMessage());
    }

    try (OutputStream ignored = readmeFile.openOutputStream()) {
      // if file was opened for output, it is an error
      fail();
    } catch (UnsupportedOperationException | IOException e) {
      // ok
    }

    IFile file1 = jarRoot.findChild("dir1").findChild("subdir").findChild("file1");

    try (InputStream is = file1.openInputStream()) {
      assertEquals("file1\n", new String(ReadUtil.read(is)));
    } catch (IOException e) {
      fail(e.getMessage());
    }

    assertEquals(jarRoot.getPath(), file1.getParent().getParent().getParent().getPath());
    assertNotNull(jarRoot.getParent());
    assertNull(jarRoot.getParent().getParent());
  }

  /**
   * {@code '!'} is a legal character of a file name on every supported OS, so a local path must not be taken for an archive path just
   * because it bears one. Used to break creation of a project in a directory with such a name, see MPS-40062. Note the dispatch under
   * test here is the one of the umbrella file system, {@code getFile(String)}.
   */
  private static void doBangInNameVfsTest(@NotNull FileSystem fs) {
    IFile tmpDir = IFileUtil.createTmpDir(fs);
    try {
      String weirdDirPath = tmpDir.getPath() + IFileSystem.SEPARATOR + WEIRD_DIR_NAME;
      String descendantPath = weirdDirPath + "/languages/MyLanguage/models/MyLanguage.structure.mps";

      // the file is not there yet - this is the case that used to break the New Project wizard
      IFile missingDir = fs.getFile(weirdDirPath);
      assertLocalFile(missingDir);
      assertFalse(missingDir.exists());

      IFile missingDescendant = fs.getFile(descendantPath);
      assertLocalFile(missingDescendant);
      assertFalse(missingDescendant.exists());
      assertEquals(missingDir, missingDescendant.getParent().getParent().getParent().getParent());

      // there is no archive to step up to, and no exception either (the path bears a '!' but no "!/")
      assertEquals(missingDescendant, missingDescendant.stepUpToArchive());
      assertEquals(missingDescendant.getParent(), missingDescendant.getBundleHome());
      assertEquals(missingDir, missingDir.stepUpToArchive());
      assertEquals(tmpDir, missingDir.getBundleHome());

      // and now the same, with the files in place
      assertTrue(missingDescendant.getParent().mkdirs());
      try (OutputStream os = missingDescendant.openOutputStream()) {
        os.write('x');
      } catch (IOException e) {
        fail(e.getMessage());
      }

      IFile existingDir = fs.getFile(weirdDirPath);
      assertLocalFile(existingDir);
      assertTrue(existingDir.exists());
      assertTrue(existingDir.isDirectory());
      try {
        assertFalse("A plain directory is not an archive: " + existingDir, existingDir.isZipArchive());
      } catch (IOException e) {
        fail(e.getMessage());
      }
      assertEquals(WEIRD_DIR_NAME, existingDir.getName());

      IFile existingDescendant = fs.getFile(descendantPath);
      assertLocalFile(existingDescendant);
      assertTrue(existingDescendant.exists());
      assertFalse(existingDescendant.isReadOnly());
      assertEquals(1L, existingDescendant.length());
      // children of a directory with a '!' in the name are local files, too
      assertLocalFile(existingDir.findChild("languages"));

      // The IFile -> Path -> IFile round trip a data source goes through, see
      // jetbrains.mps.persistence.DataSourceFactoryBridge#create(IFile): the Path of a local file must not claim to enter an
      // archive, or the file is re-resolved against the archive file system and stops resolving at all. That is how every model
      // of a project under such a directory failed to load, with a FileNotFoundException naming a file plainly there (MPS-40062).
      Path localPath = existingDescendant.toPath();
      assertFalse("A local path shall not be taken for an archive path: " + localPath, localPath.isArchive());
      String roundTripped = PathUtil.toSystemIndependent(localPath.toText());
      assertEquals(existingDescendant.getPath(), roundTripped);
      assertLocalFile(fs.getFile(roundTripped));
      try (InputStream is = fs.getFile(roundTripped).openInputStream()) {
        assertEquals('x', is.read());
      } catch (IOException e) {
        fail(e.getMessage());
      }

      // a path that does enter an archive still splits, so that a model shipped inside a jar keeps loading
      IFile jarEntry = fs.getFile(tmpDir.getPath() + "/lib.jar" + Path.ARCHIVE_SEPARATOR + "entry");
      assertTrue("An archive path shall be recognized as one: " + jarEntry, jarEntry.toPath().isArchive());
      assertTrue("Shall be an archive entry: " + jarEntry, jarEntry.isInZipArchive());

      // an existing plain file is no archive either - this tells 'the prefix is not an archive' apart from 'the prefix is absent'
      IFile notes = tmpDir.findChild("notes.txt");
      try (OutputStream os = notes.openOutputStream()) {
        os.write("this is not an archive\n".getBytes(StandardCharsets.UTF_8));
      } catch (IOException e) {
        fail(e.getMessage());
      }
      assertTrue(notes.exists());
      IFile notesEntry = fs.getFile(notes.getPath() + Path.ARCHIVE_SEPARATOR + "entry");
      assertLocalFile(notesEntry);
      assertFalse(notesEntry.exists());
    } finally {
      assertTrue(tmpDir.delete());
    }
  }

  private static void assertLocalFile(@NotNull IFile file) {
    assertEquals("Shall belong to the local file system: " + file, VFSManager.FILE_FS, file.getQualifiedPath().getFsId());
    assertFalse("Shall not be an archive entry: " + file, file.isInZipArchive());
  }

  private static void doMissingJarIoVfsTest() throws IOException {
    java.nio.file.Path tempDir = Files.createTempDirectory("mps-missing-jar");
    java.nio.file.Path archive = tempDir.resolve("created-later.zip");
    tempDir.toFile().deleteOnExit();
    archive.toFile().deleteOnExit();
    String archivePath = PathUtil.toSystemIndependent(archive.toString());
    IFileSystem jarFileSystem = new JarIoFileSystem(new VFSManager(), null);
    String entryPath = archivePath + Path.ARCHIVE_SEPARATOR + "entry.txt";

    try {
      IFile missingEntry = jarFileSystem.getFile(entryPath);
      assertFalse(missingEntry.exists());
      assertFalse(missingEntry.isDirectory());
      assertTrue(missingEntry.getChildren().isEmpty());
      assertEquals(-1L, missingEntry.length());
      assertCannotRead(missingEntry);

      try (ZipOutputStream output = new ZipOutputStream(Files.newOutputStream(archive))) {
        output.putNextEntry(new ZipEntry("entry.txt"));
        output.write("content".getBytes(StandardCharsets.UTF_8));
        output.closeEntry();
      }

      IFile recoveredEntry = jarFileSystem.getFile(entryPath);
      assertTrue(recoveredEntry.exists());
      try (InputStream input = recoveredEntry.openInputStream()) {
        assertEquals("content", new String(ReadUtil.read(input), StandardCharsets.UTF_8));
      }
      assertEquals(missingEntry, recoveredEntry);
      assertEquals(missingEntry.hashCode(), recoveredEntry.hashCode());

      IFile absentEntry = jarFileSystem.getFile(archivePath + Path.ARCHIVE_SEPARATOR + "absent.txt");
      assertFalse(absentEntry.exists());
      assertEquals(-1L, absentEntry.length());
      assertCannotRead(absentEntry);
    } finally {
      try {
        Files.deleteIfExists(archive);
        Files.deleteIfExists(tempDir);
      } catch (IOException ignored) {
        // ZipFile stays open while an IFile from the archive is reachable; deleteOnExit handles this case on Windows.
      }
    }
  }

  private static void assertCannotRead(IFile file) {
    try (InputStream ignored = file.openInputStream()) {
      fail("Expected an IOException for " + file);
    } catch (IOException expected) {
      // expected
    }
  }

  @Test
  public void baseIdeaVfsTest() {
    IDEA_FS_TEST(VfsTest::doBaseVfsTest);
  }

  @Test
  public void baseIoVfsTest() {
    IO_FS_TEST(VfsTest::doBaseVfsTest);
  }

  @Test
  public void pathIdeaVfsTest() {
    IDEA_FS_TEST(VfsTest::doPathVfsTest);
  }

  @Test
  public void unixBackslashPathIdeaVfsTest() {
    Assume.assumeTrue("Backslash is a valid file-name character only on Unix", java.io.File.separatorChar == '/');
    IDEA_FS_TEST(VfsTest::doUnixBackslashPathVfsTest);
  }

  @Test
  public void bangInNameIdeaVfsTest() {
    IDEA_FS_TEST(VfsTest::doBangInNameVfsTest);
  }

  @Test
  public void bangInNameIoVfsTest() {
    IO_FS_TEST(VfsTest::doBangInNameVfsTest);
  }

  @Test
  public void jarIdeaVfsTest() {
    IDEA_FS_TEST(VfsTest::doJarVfsTest);
  }

  @Test
  public void jarIoVfsTest() {
    IO_FS_TEST(VfsTest::doJarVfsTest);
  }

  @Test
  public void missingJarIoVfsTest() throws IOException {
    doMissingJarIoVfsTest();
  }
}
