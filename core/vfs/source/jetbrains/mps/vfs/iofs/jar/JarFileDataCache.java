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

import jetbrains.mps.logging.Logger;

import java.io.File;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipFile;

/**
 * A container for <code>JarFileData</code> instances.
 * Stores a mapping from paths to jar file data, clears it up exploiting the
 * <code>WeakReference</code> + <code>ReferenceQueue</code>mechanism.
 *
 * @author danilla, apyshkin
 * @see WeakReference#WeakReference(Object, ReferenceQueue)
 * @see #removeGCedReferences()
 * <p>
 * Also we use this mechanism to clean up the <code>JarFileData</code> resources,
 * namely we close the <code>ZipFile</code> associated with the JarFileData instance.
 */
final class JarFileDataCache {
  private static final Logger LOG = Logger.getLogger(JarFileDataCache.class);

  private final ReferenceQueue<JarFileData> myQueue = new ReferenceQueue<>();
  private final Map<String, JarFileDataWeakReference> myPathToRef = new HashMap<>();

  private final Object myLock = new Object();

  /*package*/ JarFileDataCache() {
  }

  public JarFileData getDataFor(File file) {
    synchronized (myLock) {
      removeGCedReferences();

      final String path = file.getAbsolutePath();

      if (myPathToRef.containsKey(path)) {
        JarFileDataWeakReference ref = myPathToRef.get(path);
        JarFileData data = ref.get();
        if (data != null) {
          return data;
        } else {
          // ref might be queued already, removeRef() accounts for that
          removeRef(ref);
        }
      }

      JarFileData data = new JarFileData(file, this);
      JarFileDataWeakReference ref = new JarFileDataWeakReference(path, data, myQueue);
      myPathToRef.put(path, ref);

      return data;
    }
  }

  void discard(JarFileData data) {
    synchronized (myLock) {
      final String path = data.getFile().getAbsolutePath();
      JarFileDataWeakReference ref = myPathToRef.get(path);
      if (ref != null && ref.get() == data) {
        myPathToRef.remove(path);
        ref.cleanup();
      }
    }
  }

  private void removeGCedReferences() {
    // invoked with myLock
    Reference<? extends JarFileData> ref;
    while ((ref = myQueue.poll()) != null) {
      if (ref instanceof JarFileDataWeakReference) {
        removeRef((JarFileDataWeakReference) ref);
      }
    }
  }

  private void removeRef(JarFileDataWeakReference ref) {
    // invoked with myLock
    final JarFileDataWeakReference stored = myPathToRef.get(ref.myKey);
    if (stored == ref) {
      myPathToRef.remove(ref.myKey);
      stored.cleanup();
    } else {
      // might be already removed with explicit removeRef() call from getDataFor
      // when we noticed ref.get() == null. The ref might get enqueued meanwhile and end up in subsequent poll().
      // However, doesn't hurt to clean non-actual ref - each JavaFileData has own zipFile which deserves close(),
      // we just need to be careful not to close the actual one in use
      ref.cleanup();
    }
  }


  /**
   * Standard idiom to free resources associated with a weakly referenced data.
   */
  private static class JarFileDataWeakReference extends WeakReference<JarFileData> {
    /*package*/ final String myKey;
    /*package*/ final ZipFileContainer myZipFileContainer;

    public JarFileDataWeakReference(String path, JarFileData data, ReferenceQueue<JarFileData> queue) {
      super(data, queue);
      myKey = path;
      myZipFileContainer = data.getZipFileContainer();
    }

    public void cleanup() {
      ZipFile zip = myZipFileContainer.zipFile;
      if (zip == null) {
        // zip file hasn't ever been opened in JarFileData
        return;
      }
      try {
        LOG.trace("GC triggered closing zip file " + zip.getName());
        zip.close();
        myZipFileContainer.zipFile = null;
      } catch (IOException e) {
        LOG.error("Failed to close zip file " + zip.getName(), e);
      }
    }
  }
}
