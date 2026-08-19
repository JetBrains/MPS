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

import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import jetbrains.mps.vfs.util.PathFormatChecker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.annotations.Internal;

import java.io.File;

public final class JarIoFileSystem implements IFileSystem {
  public static final String JAR_SEPARATOR = "!";
  private final VFSManager myManager;
  private final FileSystem myUmbrellaFileSystem;

  private final JarFileDataCache myJarCache;

  /**
   * Clients shall not instantiate this class. Instead, use {@link jetbrains.mps.vfs.VFSManager#getFileSystem(String)}
   */
  public JarIoFileSystem(@NotNull VFSManager manager, FileSystem umbrellaFileSystem) {
    myManager = manager;
    myUmbrellaFileSystem = umbrellaFileSystem;
    myJarCache = new JarFileDataCache();
  }

  @NotNull
  @Override
  public IFile getFile(@NotNull String path) {
    new PathFormatChecker(path).absolute().noDots().osIndependentPath();
    int index = path.indexOf(JAR_SEPARATOR);
    assert index > 0;
    String jarPath = path.substring(0, index);
    String entryPath = path.substring(index + 1);

    if (entryPath.startsWith(IFileSystem.SEPARATOR)) {
      entryPath = entryPath.substring(1);
    }

    JarFileData jarFileData = myJarCache.getDataFor(new File(jarPath));
    return createFile(entryPath, jarFileData);
  }

  @Internal
  @NotNull
  /*package*/ JarEntryFile createFile(String entryPath, JarFileData jarFileData) {
    return new JarEntryFile(jarFileData, entryPath, this);
  }

  @Override
  public boolean isFileIgnored(@NotNull String name) {
    return false;
  }

  /**
   * @since 2025.1
   */
  @NotNull
  /*package*/ FileSystem getUmbrellaFileSystem() {
    return myUmbrellaFileSystem;
  }
}
