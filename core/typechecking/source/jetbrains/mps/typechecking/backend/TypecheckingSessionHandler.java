/*
 * Copyright 2003-2019 JetBrains s.r.o.
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
package jetbrains.mps.typechecking.backend;

import jetbrains.mps.typechecking.TypecheckingComputations;
import jetbrains.mps.typechecking.TypecheckingFacade;
import jetbrains.mps.typechecking.TypecheckingSession;
import jetbrains.mps.typechecking.TypecheckingSession.*;
import org.jetbrains.annotations.NotNull;

import java.util.function.Consumer;
import java.util.function.Function;

/**
 * Provides an interface for manipulating typechecking sessions.
 *
 * The method {@link TypecheckingSessionHandler#requestNewSession(Flags)} can be called by clients wishing to
 * start a new typechecking session with specific features. The session will be managed by this component,
 * but the client is free to call {@link TypecheckingSession.Handle#release()} at any time to signal that the session
 * is no longer in use.
 *
 * @author Fedor Isakov
 */
public abstract class TypecheckingSessionHandler implements TypecheckingComputations {

  /**
   * Requests that a new session is initiated with provided flags.
   *
   * All typechecking queries in this context are to be run via this session,
   * which forwards them to its participants, until the session is released.
   * 
   *
   * See {@link TypecheckingFacade#getFromContext()} for the discussion of what context is.
   */
  @NotNull
  public final Handle requestNewSession(@NotNull Flags flags) {
    return activeController().requestSession(flags);
  }

  @Override
  public final <T> T computeWithSession(@NotNull TypecheckingSession withSession, Function<TypecheckingSession, T> code) {
    if (withSession instanceof NullTypecheckingSession) {
      return code.apply(withSession);
    }
    if (!(withSession instanceof TypecheckingSessionImpl)) {
      throw new IllegalArgumentException();
    }
    T t;
    try {
      overrideSharedController((TypecheckingSessionImpl) withSession);
      t = code.apply(withSession);
    }
    finally {
      resetOverride();
    }
    return t;
  }

  @Override
  public final void runWithSession(@NotNull TypecheckingSession withSession, Consumer<TypecheckingSession> code) {
    if (withSession instanceof NullTypecheckingSession) {
      code.accept(withSession);
      return;
    }
    if (!(withSession instanceof TypecheckingSessionImpl)) {
      throw new IllegalArgumentException();
    }
    try {
      overrideSharedController((TypecheckingSessionImpl) withSession);
      code.accept(withSession);
    }
    finally {
      resetOverride();
    }
  }

  @Override
  public final <T> T computeIsolated(Function<TypecheckingSession, T> code) {
    T t;
    try {
      Flags flags = TypecheckingSession.Flags.basic();
      Handle token = overrideIsolatedController(flags).requestSession(flags);
      t = code.apply(token.session());
    }
    finally {
      resetOverride();
    }
    return t;
  }

  @Override
  public final <T> T computeIsolated(Flags flags, Function<TypecheckingSession, T> code) {
    T t;
    try {
      Handle token = overrideIsolatedController(flags).requestSession(flags);
      t = code.apply(token.session());
    }
    finally {
      resetOverride();
    }
    return t;
  }

  @Override
  public final void runIsolated(Consumer<TypecheckingSession> code) {
    try {
      Flags flags = TypecheckingSession.Flags.basic();
      Handle token = overrideIsolatedController(flags).requestSession(flags);
      code.accept(token.session());
    }
    finally {
      resetOverride();
    }
  }

  @Override
  public final void runIsolated(Flags flags, Consumer<TypecheckingSession> code) {
    try {
      Handle token = overrideIsolatedController(flags).requestSession(flags);
      code.accept(token.session());
    }
    finally {
      resetOverride();
    }
  }

  /**
   * Lazily initialized instance of {@link TypecheckingController} specific to this context.
   */
  @NotNull
  protected abstract TypecheckingController activeController();

  /**
   * Eagerly initializes and installs an instance of {@link TypecheckingController} that is constructed
   * from the specified session, independently of the current context.
   * Later calls to {@link TypecheckingSessionHandler#activeController()} will return this
   * newly constructed instance, until a call to {@link TypecheckingSessionHandler#resetOverride()}.
   */
  protected abstract void overrideSharedController(@NotNull TypecheckingSessionImpl session);

  /**
   * Eagerly initializes and installs a controller for running typechecking queries in isolation.
   */
  protected abstract TypecheckingController overrideIsolatedController(Flags flags);

  /**
   * Clears the previously installed override controller.
   */
  protected abstract void resetOverride();

}
