/*
 * Copyright 2003-2026 JetBrains s.r.o.
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
package jetbrains.mps.smodel.tempmodel;

import jetbrains.mps.extapi.module.SRepositoryExt;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SRepository;

public abstract class TempModuleOptions {
  public abstract SModule createModule();

  public abstract void disposeModule();

  public static TempModuleOptions forExistingModule(SModule m) {
    return new ExistingModuleOptions(m);
  }

  /**
   * @deprecated use alternatives that take {@code SRepository}.
   *             Version = 0 as we are going to drop this methods as soon as known uses in MPS-Extensions and mbeddr tests are gone.
   */
  @Deprecated(forRemoval = true, since = "0")
  public static TempModuleOptions forDefaultModule() {
    // there are few uses in MPS-extensions tests as well as in 2 mbeddr modules:
    //  - com.mbeddr.mpsutil.ecore.testing.runtime
    //  - com.mbeddr.mpsutil.editingGuide.execution
    return new NewModuleOptions(MPSModuleRepository.getInstance());
  }

  /**
   * Module has no Java Module facet nor model roots. Doesn't participate in class-loading, doesn't affect graph of module classloaders.
   *
   * @param repository where to register the new temporary module
   * @return options to instantiate {@link ReloadableModule non-reloadable} temp module.
   */
  public static TempModuleOptions nonReloadableModule(@NotNull SRepository repository) {
    assert repository instanceof SRepositoryExt : "Only SRepositoryExt is supported";
    return new NonReloadableNewModuleOptions((SRepositoryExt) repository);
  }

  /**
   * @since 2025.1
   */
  public static TempModuleOptions forNewModule(@NotNull SRepository repository, SModuleFacet... facets ) {
    assert repository instanceof SRepositoryExt;
    // XXX I wonder if there are enough options for temp module to have a builder (to configure TempModuleOptions).
    return new NewModuleOptions((SRepositoryExt) repository, facets);
  }

  /**
   * Use to construct a {@link jetbrains.mps.project.facets.JavaModuleFacet JMF} instance to use in temporary module
   * @since 2025.1
   */
  @NotNull
  public static JavaModuleFacetBuilder javaFacet() {
    return new JavaModuleFacetBuilder();
  }

  private static class NewModuleOptions extends TempModuleOptions implements MPSModuleOwner {
    private final SRepositoryExt myRepository;
    private final TempModule myCreatedModule;

    /*package*/ NewModuleOptions(SRepositoryExt repository, SModuleFacet... facets) {
      myRepository = repository;
      // Note, before this change, each #createModule() call resulted in a new module.
      // Now that legacy cons is gone, can get back to that semantics (don't believe clients rely on it, though)
      myCreatedModule = new TempModule(facets);
    }

    @Override
    public SModule createModule() {
      TempModule regModule = myRepository.registerModule(myCreatedModule, this);
      assert myCreatedModule == regModule : "Temporary module with same id already registered";
      return myCreatedModule;
    }

    @Override
    public void disposeModule() {
      myRepository.unregisterModule(myCreatedModule, this);
    }

    @Override
    public boolean isHidden() {
      return true;
    }
  }

  private static class ExistingModuleOptions extends TempModuleOptions {
    private SModule myModule;

    public ExistingModuleOptions(SModule module) {
      myModule = module;
    }

    @Override
    public SModule createModule() {
      return myModule;
    }

    @Override
    public void disposeModule() {

    }
  }

  private static class NonReloadableNewModuleOptions extends TempModuleOptions implements MPSModuleOwner {
    private final SRepositoryExt myRepo;
    private TempModule2 myCreatedModule;

    /*package*/ NonReloadableNewModuleOptions(SRepositoryExt repo) {
      myRepo = repo;
    }

    @Override
    public SModule createModule() {
      myCreatedModule = myRepo.registerModule(new TempModule2(), this);
      return myCreatedModule;
    }

    @Override
    public void disposeModule() {
      myRepo.unregisterModule(myCreatedModule, this);
    }

    @Override
    public boolean isHidden() {
      return true;
    }
  }
}
