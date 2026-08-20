/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.smodel;

import java.util.concurrent.ConcurrentLinkedQueue;

/**
 * Implementation facility to track reads shared among multiple threads.
 */
/*package*/ final class SharedReadSupport {
  private final ConcurrentLinkedQueue<ReadAccessToken> myAllReadFlagTokens = new ConcurrentLinkedQueue<>();
  private final ThreadLocal<ReadAccessToken> myReadFlagTokens = new ThreadLocal<>();

  SharedReadSupport() {
  }

  /*package*/ void sharedReadIsOver() {
    ReadAccessToken token = myReadFlagTokens.get();
    if (token != null) {
      token.revoke();
      myReadFlagTokens.remove();
      myAllReadFlagTokens.remove(token);
    }
  }

  /**
   * Acquires a shared read token for the current thread, ensuring thread-bound read access.
   * If no token is already associated with the current thread, a new token is created,
   * registered, and returned. The shared read token allows multiple threads to have
   * concurrent read access, adhering to specific usage and lifecycle constraints.
   * <p>
   * Note: this method does not check if the current thread has read access, to establish
   * that fact, and to ensure that all the necessary constraints are satisfied, is on the conscience
   * of the caller.
   *
   * @return an instance of {@link ReadAccessToken} representing the shared read access
   *         bound to the current thread. If a token already exists for the thread, the
   *         existing token is returned.
   */
  /*package*/  ReadAccessToken acquireSharedReadTokenNoCheck() {
    ReadAccessToken token = myReadFlagTokens.get();
    // XXX not sure about sharing original read, need to give it more thought/investigation
    //     e.g. what happens if/when 'nested' read reports sharedReadIsOver(). If this is the case, perhaps, need "usage counter" for the token?
    //     Keep in mind, token is bound to the current thread, another thread (running under 'read enabled') would get another instance.
    //     ^^^ sounds like we can get into a state when original thread releases platform read, but there are 2 threads with 'read enabled' state.
    //     (thread0 shared its read for thread1, thread1 was in 'read enabled' and shared its state for thread2, thread0 ends, platform lock gone)
    if (token == null) {
      token = new ReadAccessToken();
      myReadFlagTokens.set(token);
      myAllReadFlagTokens.add(token);
    }
    return token;
  }

  /*package*/  boolean isReadEnabledFlag() {
    // FIXME I wonder if we shall filter isActive (or make it part of isReadInProgressCurrentThread)
    for (ReadAccessToken token : myAllReadFlagTokens) {
      if (token.isReadInProgressCurrentThread()) {
        return true;
      }
    }
    return false;
  }
}
