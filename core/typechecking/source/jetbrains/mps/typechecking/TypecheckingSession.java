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
package jetbrains.mps.typechecking;

import jetbrains.mps.util.performance.IPerformanceTracer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Map;

/**
 * @author Fedor Isakov
 */
public interface TypecheckingSession {

  Flags flags();

  <Q extends TypecheckingQueries> Q getQueries(Class<? extends Q> queriesClass);

  TypecheckingQueries getQueries(@NotNull SNode src, SNode trg, SConcept trgConcept);

  TypecheckingQueries getQueries(@NotNull SNode src, SNode trg);

  TypecheckingQueries getQueries(@NotNull SNode node);

  <C> C getData(Class<? extends C> dataClass);

    /**
     * Instances of this class must never be shared with other clients.
     * Provides possibility to invalidate and release session.
     */
  interface Handle {

    /**
     * Returns a transient session instance.
     * Subsequent calls may return a new instance, if invalidated.
     */
    TypecheckingSession session();

    /**
     * Signal that the session is no longer used.
     * Further attempts to access session through this handle will fail.
     */
    void release();

    /**
     * Invalidate and release the session.
     * If there are other users, they will receive new instance on accessing the session.
     * Further attempts to access session through this handle will fail.
     */
    void invalidateAndRelease();
  }

  /**
   * Provides flags for new session instantiation.
   */
  class Flags {

    public static long FLAG_BASIC         = 0x1;
    public static long FLAG_ROOT_SPECIFIC = 0x1 << 1;
    public static long FLAG_CACHING       = 0x1 << 2;
    public static long FLAG_INCREMENTAL   = 0x1 << 3;
    public static long FLAG_GENERATOR     = 0x1 << 4;
    public static long FLAG_GENERATOR_WORKER     = 0x1 << 5;

    private long myFlags;
    private SNode myRoot;
    private IPerformanceTracer myTracer;
    private Map<String, ?> myParamsMap;

    @NotNull
    private static Flags nullFlags() {
      return new Flags(0L);
    }

    @NotNull
    public static Flags basic() {
      return new Flags(FLAG_BASIC);
    }

    @NotNull
    public static Flags generator() {
      return new Flags(FLAG_GENERATOR);
    }

    @NotNull
    public static Flags generatorWorker() {
      return new Flags(FLAG_GENERATOR | FLAG_GENERATOR_WORKER);
    }

    @NotNull
    public static Flags forRoot(@NotNull SNode root) {
      return new Flags(root, FLAG_ROOT_SPECIFIC);
    }

    @NotNull
    public Flags caching() {
      this.myFlags |= FLAG_CACHING;
      return this;
    }

    @NotNull
    public Flags incremental() {
      this.myFlags |= FLAG_INCREMENTAL;
      return this;
    }

    public Flags withTracer(IPerformanceTracer ttrace) {
      this.myTracer = ttrace;
      return this;
    }

    public Flags withParameters(Map<String, ?> paramsMap) {
      myParamsMap = paramsMap;
      return this;
    }

    public SNode getRoot() {
      return myRoot;
    }

    public boolean isBasic() {
      return (myFlags & FLAG_BASIC) != 0;
    }

    public boolean isCaching() {
      return (myFlags & FLAG_CACHING) != 0;
    }

    public boolean isIncremental() {
      return (myFlags & FLAG_INCREMENTAL) != 0;
    }

    public boolean isOverride() { return (myFlags & FLAG_GENERATOR) != 0; }

    public boolean isGenerator() {
      return (myFlags & FLAG_GENERATOR) != 0;
    }

    public boolean isGeneratorMain() {
      return (myFlags & FLAG_GENERATOR) != 0 && (myFlags & FLAG_GENERATOR_WORKER) == 0 ;
    }

    public boolean isGeneratorWorker() {
      return (myFlags & FLAG_GENERATOR_WORKER) != 0;
    }

    public IPerformanceTracer getTracer() {
      return myTracer;
    }

    public Map<String, ?> getParamsMap() {
      return myParamsMap;
    }

    @Override
    public String toString() {
      return "[root=" + myRoot + (myRoot != null ? " (" + myRoot.getReference() + ")" : "") + ", flags=" + myFlags + "]";
    }

    protected Flags(Flags copyFrom) {
      this.myRoot = copyFrom.myRoot;
      this.myFlags = copyFrom.myFlags;
      this.myTracer = copyFrom.myTracer;
      this.myParamsMap = copyFrom.myParamsMap;
    }

    private Flags(long flags) {
      this.myFlags = flags;
    }

    private Flags(SNode root, long flags) {
      this.myRoot = root;
      this.myFlags = flags;
    }

  }

  class NullTypecheckingSession implements TypecheckingSession {
    @Override
    public Flags flags() {
      return Flags.nullFlags();
    }

    @Override
    public <Q extends TypecheckingQueries> Q getQueries(Class<? extends Q> queriesClass) {
      return null;
    }

    @Override
    public TypecheckingQueries getQueries(@NotNull SNode src, SNode trg, SConcept trgConcept) {
      return null;
    }

    @Override
    public TypecheckingQueries getQueries(@NotNull SNode src, SNode trg) {
      return null;
    }

    @Override
    public TypecheckingQueries getQueries(@NotNull SNode node) {
      return null;
    }

    @Override
    public <C> C getData(Class<? extends C> dataClass) {
      return null;
    }
  }

  class NullHandle implements Handle  {

    private final NullTypecheckingSession myNullTypecheckingSession = new NullTypecheckingSession();

    @Override
    public TypecheckingSession session() {
      return myNullTypecheckingSession;
    }

    @Override
    public void release() {
      // NOP
    }

    @Override
    public void invalidateAndRelease() {
      // NOP
    }
  }

}
