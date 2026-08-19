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
package jetbrains.mps.vfs.iofs.jar;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.IFileUtil;
import jetbrains.mps.util.annotation.Hack;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.QualifiedPath;
import jetbrains.mps.vfs.VFSManager;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.path.PathFormats;
import jetbrains.mps.vfs.util.PathFormatChecker;
import jetbrains.mps.vfs.util.PathUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.annotations.Immutable;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

@Immutable
//todo: currently, myEntryPath can be empty or like "a/b/c". Force it to have "/a/b/c" format and be non-empty (like in JRT file)
public class JarEntryFile implements IFile {

  private final JarFileData myJarFileData;
  private final String myEntryPath;
  private final JarIoFileSystem myFileSystem;

  JarEntryFile(JarFileData jarFileData, String entryPath, JarIoFileSystem fileSystem) {
    myJarFileData = jarFileData;
    myEntryPath = entryPath;
    myFileSystem = fileSystem;
  }

  @NotNull
  @Override
  public IFileSystem getFS() {
    return myFileSystem;
  }

  @NotNull
  @Override
  public FileSystem getFileSystem() {
    return myFileSystem.getUmbrellaFileSystem();
  }

  @NotNull
  @Override
  public String getName() {
    String result = myEntryPath;
    int index = result.lastIndexOf(IFileSystem.SEPARATOR);
    if (index != -1) {
      result = result.substring(index + 1);
    }
    if (myEntryPath.isEmpty()) {
      return "/";
    }
    return result;
  }

  @Override
  public IFile getParent() {
    if (myEntryPath.isEmpty()) {
      return null;
    } else {
      return myFileSystem.createFile(myJarFileData.getParentDirectory(myEntryPath), myJarFileData);
    }
  }

  @Override
  public List<IFile> getChildren() {
    if (!isDirectory()) {
      return Collections.emptyList();
    }

    List<IFile> result = new ArrayList<>();
    for (String e : myJarFileData.getSubdirectories(myEntryPath)) {
      result.add(myFileSystem.createFile(e, myJarFileData));
    }
    final String prefix = myEntryPath.isEmpty() ? null : myEntryPath + '/';
    for (String e : myJarFileData.getFiles(myEntryPath)) {
      result.add(myFileSystem.createFile(prefix != null ? prefix + e : e, myJarFileData));
    }

    return result;
  }

  @Override
  public boolean isZipArchive() {
    return false;
  }

  @Override
  @NotNull
  public IFile stepIntoArchive() {
    return this;
  }

  @Override
  public boolean isInZipArchive() {
    return true;
  }

  @NotNull
  @Override
  public IFile stepUpToArchive() {
    return myFileSystem.getUmbrellaFileSystem().getFile(myJarFileData.getFile());
  }

  @Override
  @NotNull
  public IFile getDescendant(@NotNull String suffix) {
    IFile result = IFileUtil.getDescendant(this, PathUtil.toSystemIndependent(suffix));
    if (result == null) {
      throw new IllegalStateException("Can't find descendant " + suffix + " of file " + getPath());
    }
    return result;
  }

  @Override
  @NotNull
  public IFile findChild(@NotNull String name) {
    new PathFormatChecker(name).nonEmpty().noSeparators();
    String path = myEntryPath.isEmpty() ? name : myEntryPath + IFileSystem.SEPARATOR + name;
    return myFileSystem.createFile(path, myJarFileData);
  }

  @Override
  public boolean isDirectory() {
    return myJarFileData.isDirectory(myEntryPath);
  }

  @NotNull
  @Override
  public String getPath() {
    return PathUtil.toSystemIndependent(myJarFileData.getFile().getAbsolutePath()) + "!/" + myEntryPath;
  }

  @NotNull
  @Override
  public Path toPath() {
    return PathFormats.getCurrentSystemFormat().fromParts(myJarFileData.getFile().getAbsolutePath(), myEntryPath);
  }

  @NotNull
  @Override
  public String toRealPath() {
    try {
      return PathUtil.toSystemIndependent(myJarFileData.getFile().getCanonicalPath()) + "!/" + myEntryPath;
    } catch (IOException e) {
      Logger.getLogger(JarEntryFile.class).warning("Got problem while accessing canonical path of " + this, e);
      return getPath();
    }
  }

  @Override
  public QualifiedPath getQualifiedPath() {
    return new QualifiedPath(VFSManager.JAR_FS, getPath());
  }

  @Override
  public long lastModified() {
    return myJarFileData.getFile().lastModified();
  }

  @Override
  public boolean exists() {
    return myJarFileData.exists(myEntryPath);
  }

  @Override
  public boolean createNewFile() {
    return false;
  }

  @Override
  public boolean mkdirs() {
    return false;
  }

  @Override
  public boolean delete() {
    return false;
  }

  @Override
  public boolean rename(@NotNull String newName) {
    throw new UnsupportedOperationException("Cannot rename JarEntryFiles");
  }

  @Override
  public boolean move(@NotNull IFile newParent) {
    throw new UnsupportedOperationException("Cannot move JarEntryFiles");
  }

  @Override
  public IFile copy(@NotNull IFile newParent, @NotNull String newName) {
    throw new UnsupportedOperationException("Cannot copy JarEntryFiles");
  }

  @Override
  public InputStream openInputStream() throws IOException {
    return myJarFileData.openStream(myEntryPath);
  }

  @Override
  public OutputStream openOutputStream() throws IOException {
    throw new IOException("Write for jar files is not supported.");
  }

  @Override
  public boolean isReadOnly() {
    return true;
  }

  @Override
  public long length() {
    return myJarFileData.getLength(myEntryPath);
  }

  @NotNull
  @Override
  public String toString() {
    return getPath();
  }

  @Override
  public IFile getBundleHome() {
    return stepUpToArchive();
  }

  @Override
  public boolean setTimeStamp(long time) {
    return false;
  }


  /**
   * The problem here is with jar URLs.
   * JDK does not allow us to work efficiently with jar files via URI.
   * 0. I want to create URL which can be converted to URI.
   * 1. Unfortunately that means that we need to escape space characters.
   * (unescaped URL cannot be converted to the URI due to the #toURI method contract)
   * 2. We are urged to use multi-argument <code>URI</code> constructor in order to properly escape all characters (spaces for instance).
   * Moreover it is a recommended way to comply to all URI protocol conventions.
   * 3. URI multi-arg constructor also asks for its path to be absolute (which -- in his understanding -- means a path starting with '/')
   * 4. In jdk a default URL for a jar-file looks like 'jar:file://a.jar!/b.txt' and calling URL#getPath returns
   * 'file://a.jar!/b.txt' which does not start with the slash and hence is not absolute and therefore cannot be simply passed to the URI constructor.
   * 5. That is why we are compelled to use such a hack in constructor arguments which namely passes
   * a jar:file scheme and passes an honest absolute path '/a.jar!/b.txt'.
   * <p>
   * [AP: I would rather return URLs which can be converted to URIs than the ones which can not]
   * Hopefully this hell will be replaced by the upcoming <code>vfs.Path</code> features.
   */
  @Hack
  @Override
  public URL getUrl() throws MalformedURLException {
    String encoded = new File(myJarFileData.getFile().getAbsoluteFile() + Path.ARCHIVE_SEPARATOR + myEntryPath).toURI().toASCIIString();
    return URI.create("jar:" + encoded).toURL();
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }

    JarEntryFile that = (JarEntryFile) o;

    return Objects.equals(myEntryPath, that.myEntryPath) && (myJarFileData == that.myJarFileData || Objects.equals(myJarFileData.getFile(), that.myJarFileData.getFile()));
  }

  @Override
  public int hashCode() {
    int result = myJarFileData.getFile().hashCode();
    result = 31 * result + myEntryPath.hashCode();
    return result;
  }
}
