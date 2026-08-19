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
package jetbrains.mps.vfs.iofs.jar;

import gnu.trove.THashMap;
import gnu.trove.THashSet;
import jetbrains.mps.logging.Logger;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.NoSuchFileException;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * This class represents a jar file abstraction
 * It stores cache with all subdirectories and all entries
 */
class JarFileData {
  private static final Logger LOG = Logger.getLogger(JarFileData.class);

  private enum State {
    NEW, READY, FAILED
  }

  private final Object myLock = new Object();
  private final File myFile;
  private final JarFileDataCache myCache;
  private State myState = State.NEW;
  private IOException myInitializationFailure;
  private final ZipFileContainer myZipFileContainer = new ZipFileContainer(); // cleared up in the JarFileDataCache#removeGCedReferences
  private final Map<String, Set<String>> myFiles = new THashMap<>();
  private final Map<String, Set<String>> mySubDirectories = new THashMap<>();
  private final Map<String, ZipEntry> myEntries = new THashMap<>();

  JarFileData(File file, JarFileDataCache cache) {
    myFile = file;
    myCache = cache;
  }

  File getFile() {
    return myFile;
  }

  ZipFileContainer getZipFileContainer() {
    return myZipFileContainer;
  }

  Set<String> getFiles(String dir) {
    if (!ensureInitialized()) {
      return Collections.emptySet();
    }
    Set<String> files = myFiles.get(dir);
    return files == null ? Collections.emptySet() : Collections.unmodifiableSet(files);
  }

  Set<String> getSubdirectories(String dir) {
    if (!ensureInitialized()) {
      return Collections.emptySet();
    }
    Set<String> directories = mySubDirectories.get(dir);
    return directories == null ? Collections.emptySet() : Collections.unmodifiableSet(directories);
  }

  boolean exists(String path) {
    return ensureInitialized() && (myEntries.get(path) != null || mySubDirectories.get(path) != null);
  }

  boolean isDirectory(String path) {
    if (!ensureInitialized()) {
      return false;
    }

    if (myEntries.get(path) != null) {
      return myEntries.get(path).isDirectory();
    }

    return myFiles.get(path) != null || mySubDirectories.get(path) != null;
  }

  String getParentDirectory(String dir) {
    int lastSlash = dir.lastIndexOf('/');
    if (lastSlash == -1) {
      return "";
    }
    return dir.substring(0, lastSlash);
  }

  private Set<String> getDirectoriesFor(String dir) {
    mySubDirectories.putIfAbsent(dir, new THashSet<>());
    return mySubDirectories.get(dir);
  }

  private Set<String> getFilesFor(String dir) {
    myFiles.putIfAbsent(dir, new THashSet<>());
    return myFiles.get(dir);
  }

  InputStream openStream(String path) throws IOException {
    if (!ensureInitialized()) {
      throw new IOException("Unable to read archive '" + getFile() + "'", getInitializationFailure());
    }

    ZipEntry entry = myEntries.get(path);
    if (entry == null) {
      throw new FileNotFoundException("Archive entry does not exist: " + getFile() + "!/" + path);
    }
    // XXX I wonder why not to count InputStream open()/close() to assess when zipFile might be ready to go/close().
    return new MyInputStream(entry);
  }

  long getLength(String path) {
    if (!ensureInitialized()) {
      return -1L;
    }
    ZipEntry entry = myEntries.get(path);
    return entry == null ? -1L : entry.getSize();
  }

  private boolean ensureInitialized() {
    synchronized (myLock) {
      if (myState == State.READY) {
        return true;
      }
      if (myState == State.FAILED) {
        return false;
      }

      try {
        Stream<? extends ZipEntry> entries = doOpenArchive();

        entries.forEach(entry -> {
          if (entry.isDirectory()) {
            String name = entry.getName();
            while (name.endsWith("/")) {
              name = name.substring(0, name.length() - 1);
            }
            if (".".equals(name)) {
              // yes, I've faced jar files with "./" entry, and yes, it causes no good
              // jar tvf code/languages/com.mbeddr.mpsutil.inca/code/solutions/com.mbeddr.mpsutil.soot.runtime/lib/soot-trunk.jar | fgrep "./"
              // 0 Thu Jul 12 11:23:24 CEST 2012 ./
              // We faced dramatic slowdown in JavaClassStubsModelRoot, which goes ././././... over and over again (multiply number of folders in the jar).
              return;
            }

            buildDirectoryCaches(name);
          } else {
            final String name = entry.getName();

            final int packEnd = name.lastIndexOf('/');
            final String dir;
            final String fileName;
            if (packEnd == -1) {
              dir = "";
              fileName = name;
            } else {
              // FIXME packEnd == 0 means name == "/something", and myEntries eventually maps "something/something". Is it right?
              // Either null instead of name or assert packEnd > 0
              dir = packEnd > 0 ? name.substring(0, packEnd) : name;
              fileName = name.substring(packEnd + 1);
            }

            buildDirectoryCaches(dir);
            getFilesFor(dir).add(fileName);

            // XXX seems that could use name
            if (dir.length() > 0) {
              myEntries.put(dir + '/' + fileName, entry);
            } else {
              myEntries.put(fileName, entry);
            }
          }
        });
        myState = State.READY;
        return true;
      } catch (IOException e) {
        myInitializationFailure = e;
        myState = State.FAILED;
        myCache.discard(this);
        if (e instanceof FileNotFoundException || e instanceof NoSuchFileException) {
          LOG.warning("Requested jar file does not exist " + getFile());
        } else {
          LOG.error(String.format("Bad jar '%s'", getFile()), e);
        }
        return false;
      }
    }
  }

  private IOException getInitializationFailure() {
    synchronized (myLock) {
      return myInitializationFailure;
    }
  }

  private Stream<? extends ZipEntry> doOpenArchive() throws IOException {
    final File archiveFile = getFile();
    if (archiveFile.getName().endsWith(".jar")) {
      JarFile zipFile = new JarFile(archiveFile, true, ZipFile.OPEN_READ, JarFile.runtimeVersion());
      myZipFileContainer.zipFile = zipFile;
      return zipFile.versionedStream();
    } else {
      final ZipFile zipFile = new ZipFile(archiveFile);
      myZipFileContainer.zipFile = zipFile;
      return zipFile.stream();
    }
  }

  private void buildDirectoryCaches(String dir) {
    String parent = getParentDirectory(dir);

    getDirectoriesFor(dir);
    getFilesFor(dir);

    if (parent.equals(dir)) {
      return;
    }
    getDirectoriesFor(parent).add(dir);
    buildDirectoryCaches(parent);
  }

  // Let's be paranoid and have it non-static, because when the enclosing JarFileData is garbage collected
  // its ZipFile will be closed (see JarFileDataCache)
  // And this way the instance of this class will retain the enclosing instance from becoming garbage
  private class MyInputStream extends InputStream {
    private InputStream stream;

    public MyInputStream(ZipEntry entry) throws IOException {
      stream = myZipFileContainer.zipFile.getInputStream(entry);
    }

    @Override
    public int read() throws IOException {
      return stream.read();
    }

    @Override
    public int read(@NotNull byte[] b) throws IOException {
      return stream.read(b);
    }

    @Override
    public int read(@NotNull byte[] b, int off, int len) throws IOException {
      return stream.read(b, off, len);
    }

    @Override
    public long skip(long n) throws IOException {
      return stream.skip(n);
    }

    @Override
    public int available() throws IOException {
      return stream.available();
    }

    @Override
    public void close() throws IOException {
      try {
        super.close();
      } finally {
        stream.close();
      }
    }

    @Override
    public void mark(int readLimit) {
      stream.mark(readLimit);
    }

    @Override
    public void reset() throws IOException {
      stream.reset();
    }

    @Override
    public boolean markSupported() {
      return stream.markSupported();
    }
  }
}
