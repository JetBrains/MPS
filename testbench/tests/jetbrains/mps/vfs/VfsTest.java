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
import jetbrains.mps.vfs.openapi.FileSystem;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.util.PathFormatChecker.PathFormatException;
import org.jetbrains.annotations.NotNull;
import org.junit.Assume;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.function.Consumer;

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
      }

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
  public void jarIdeaVfsTest() {
    IDEA_FS_TEST(VfsTest::doJarVfsTest);
  }

  @Test
  public void jarIoVfsTest() {
    IO_FS_TEST(VfsTest::doJarVfsTest);
  }
}
