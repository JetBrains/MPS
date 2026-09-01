/*
 * Copyright 2003-2021 JetBrains s.r.o.
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
package jetbrains.mps.extapi.persistence;

import jetbrains.mps.extapi.persistence.datasource.PreinstalledDataSourceTypes;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.openapi.FileSystem;
import jetbrains.mps.vfs.refresh.CachingFile;
import jetbrains.mps.vfs.refresh.CachingFileSystem;
import jetbrains.mps.vfs.refresh.DefaultCachingContext;
import jetbrains.mps.vfs.refresh.FileEventProcessor;
import jetbrains.mps.vfs.refresh.FileListeningPreferences;
import jetbrains.mps.vfs.refresh.FileSystemEvent;
import jetbrains.mps.vfs.refresh.FileSystemListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.DataSourceListener;
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType;
import org.jetbrains.mps.openapi.util.ProgressMonitor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.stream.Collectors;

/**
 * evgeny, 11/3/12
 */
public class FolderSetDataSource extends DataSourceBase implements DataSource, FileEventProcessor, FileSystemBasedDataSource {
  private final ReadWriteLock myLock = new ReentrantReadWriteLock();
  private final List<DataSourceListener> myListeners = new ArrayList<>(4);
  private final Map<String, PathListener> myPaths = new LinkedHashMap<>(8);

  public FolderSetDataSource() {
  }

  public void addPath(@NotNull IFile path) {
    myLock.writeLock().lock();
    try {

      if (myPaths.containsKey(path.getPath())) {
        return;
      }

      PathListener listener = new PathListener(path, this);

      myPaths.put(path.getPath(), listener);
      if (!(myListeners.isEmpty())) {
        listener.attach();
      }
    } finally {
      myLock.writeLock().unlock();
    }
  }

  public Collection<String> getPaths() {
    myLock.readLock().lock();
    try {
      return new ArrayList<>(myPaths.keySet());
    } finally {
      myLock.readLock().unlock();
    }
  }

  private Collection<IFile> getFiles() {
    myLock.readLock().lock();
    try {
      Collection<IFile> rv = new ArrayList<>(myPaths.size());
      for (PathListener l : myPaths.values()) {
        rv.add(l.myFile);
      }
      return rv;
    } finally {
      myLock.readLock().unlock();
    }
  }

  @Override
  public void refresh() {
    Set<CachingFile> collect = getFiles().stream().filter(file -> file instanceof CachingFile).map(file -> (CachingFile) file).collect(Collectors.toSet());
    for (CachingFileSystem fs : collect.stream().map(CachingFile::getFileSystem).collect(Collectors.toSet())) {
      final DefaultCachingContext cc = new DefaultCachingContext(true, false);
      fs.refresh(cc, collect.stream().filter(f -> f.getFileSystem() == fs).collect(Collectors.toList()));
    }
  }

  @Override
  public long getTimestamp() {
    long max = -1;
    Collection<IFile> paths = getFiles();
    for (IFile path : paths) {
      //at least some programs don't change timestamp of a directory inside jar file after deleting a file in it.
      //Ask the file itself: a path bears the "!/" sequence whenever a local directory name ends with a '!', which is legal on
      //every supported OS and denotes no archive at all, see MPS-40062.
      if (path.isInZipArchive()) {
        max = Math.max(max, path.stepUpToArchive().lastModified());
        continue; // no need to go deep into jar contents
      }
      long ts = getTimestampRecursive(path);
      max = Math.max(max, ts);
    }
    return max;
  }

  @Override
  public boolean isReadOnly() {
    return false;
  }

  @Override
  public boolean delete() {
    return getFiles().stream()
                     .map(IFile::deleteIfExists)
                     .reduce(true, (a, b) -> (a && b));
  }

  @NotNull
  @Override
  public String getLocation() {
    return "Folders(" + Arrays.toString(getPaths().toArray()) + ")";
  }

  @Override
  public void addListener(@NotNull DataSourceListener listener) {
    myLock.writeLock().lock();
    try {
      if (myListeners.isEmpty()) {
        myPaths.values().forEach(PathListener::attach);
      }
      myListeners.add(listener);
    } finally {
      myLock.writeLock().unlock();
    }
  }

  @Override
  public void removeListener(@NotNull DataSourceListener listener) {
    myLock.writeLock().lock();
    try {
      myListeners.remove(listener);
      if (myListeners.isEmpty()) {
        myPaths.values().forEach(PathListener::detach);
      }
    } finally {
      myLock.writeLock().unlock();
    }
  }

  private List<DataSourceListener> getDataSourceListeners() {
    List<DataSourceListener> listeners;
    myLock.readLock().lock();
    try {
      listeners = new ArrayList<>(myListeners);
    } finally {
      myLock.readLock().unlock();
    }
    return listeners;
  }

  @Override
  public void update(@NotNull ProgressMonitor monitor, @NotNull FileSystemEvent event) {
    fireChanged(monitor);
  }

  private void fireChanged(ProgressMonitor monitor) {
    List<DataSourceListener> listeners = getDataSourceListeners();
    monitor.start("Reloading", listeners.size());
    try {
      for (DataSourceListener l : listeners) {
        l.changed(this);
        monitor.advance(1);
      }
    } finally {
      monitor.done();
    }
  }

  private static long getTimestampRecursive(IFile path) {
    long max = path.lastModified();
    if (path.isDirectory()) {
      for (IFile child : path.getChildren()) {
        long timestamp = getTimestampRecursive(child);
        if (timestamp > max) {
          max = timestamp;
        }
      }
    }
    return max;
  }

  @NotNull
  @Override
  public Collection<IFile> getAffectedFiles() {
    return getFiles();
  }

  @Nullable
  @Override
  public FileSystemBasedDataSource physicalCopy(@NotNull IFile parentFolder) {
    throw new UnsupportedOperationException("Cannot copy this type of data source");
  }

  @NotNull
  @Override
  public DataSourceType getType() {
    return PreinstalledDataSourceTypes.FOLDER_SET;
  }

  private static class PathListener implements FileSystemListener {
    private final IFile myFile;
    private final FileEventProcessor myDelegate;

    private PathListener(@NotNull IFile path, FileEventProcessor delegate) {
      myFile = path;
      myDelegate = delegate;
    }

    // register itself as listener for associated file, if possible
    /*package*/ void attach() {
      final FileSystem fs = myFile.getFileSystem();
      if (fs instanceof CachingFileSystem) {
        ((CachingFileSystem) fs).addListener(this);
      }
    }

    /*package*/ void detach() {
      final FileSystem fs = myFile.getFileSystem();
      if (fs instanceof CachingFileSystem) {
        ((CachingFileSystem) fs).removeListener(this);
      }
    }

    @NotNull
    @Override
    public FileListeningPreferences listeningPreferences() {
      return FileListeningPreferences.construct()
                                     .notifyOnDescendantRemoval()
                                     .notifyOnDescendantCreation()
                                     .notifyOnDescendantChange()
                                     .notifyOnAncestorChange() // this is when the path is under .jar
                                     .build();
    }

    @NotNull
    @Override
    public IFile getFileToListen() {
      return myFile;
    }

    @Override
    public void update(@NotNull ProgressMonitor monitor, @NotNull FileSystemEvent event) {
      event.notify(myDelegate);
    }
  }
}
