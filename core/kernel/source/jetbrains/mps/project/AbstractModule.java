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
package jetbrains.mps.project;

import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.extapi.model.EditableSModelBase;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.EditableSModule;
import jetbrains.mps.extapi.module.ModelDiscoveryDelta;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.extapi.module.SRepositoryBase;
import jetbrains.mps.extapi.persistence.ModelRootBase;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.module.PersistenceContextImpl;
import jetbrains.mps.module.SDependencyImpl;
import jetbrains.mps.persistence.MementoImpl;
import jetbrains.mps.project.structure.model.ModelRootDescriptor;
import jetbrains.mps.project.structure.modules.Dependency;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.ModuleFacetDescriptor;
import jetbrains.mps.scope.VisibleDepsSearchScope;
import jetbrains.mps.smodel.SModelInternal;
import jetbrains.mps.util.MacrosFactory;
import jetbrains.mps.util.PathSpec;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.openapi.FileSystem;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.annotations.Mutable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SaveOptions;
import org.jetbrains.mps.openapi.module.FacetsFacade;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SearchScope;
import org.jetbrains.mps.openapi.persistence.Memento;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.jetbrains.mps.openapi.persistence.ModelRootFactory;
import org.jetbrains.mps.openapi.persistence.ModulePersistenceContext;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;

import static org.jetbrains.mps.openapi.module.FacetsFacade.FacetFactory;

/**
 * {@code SModule} implementation backed by {@link ModuleDescriptor} usually comming from {@link IFile}.
 * <p>
 * This class provides a common implementation of the module editing. Not only the implementation of
 * simple interface {@link EditableSModule} is here but also a special editing mechanism is suggested below.
 * Nonetheless there are several flaws.
 * <p>
 * 1. We need to separate FileBasedModule from the AbstractModule in order to make the AbstractModule truly abstract.
 * 2. We need to enforce a special committing mechanism (for the module editing) which is only sketched in this class.
 * The {@link #getModuleDescriptor()} method in fact is just a public property which discloses all the internals of the module.
 * It is undoubtedly ought to be fixed.
 * Moreover the implementations of this method return the original descriptor (copy they must return!). [not the problem of the abstract module per se]
 * Suggestion [to be done]:
 * Rather the {@link AbstractModule} must possess a special {@code #getEditingHandle} which returns a class which in turn is able to accumulate
 * all the changes user desire to accomplish and when user is finished with editing commit all the changes with one invocation of {@code handle.commit()}.
 * [or something like this]
 * 3. Also this subclass serves another purpose: it introduces model roots and module facets into module.
 * I guess this logic might migrate to <code>SModuleBase</code>.
 * <p>
 * AP
 *
 * @see ModuleDescriptor for the details
 */
public abstract class AbstractModule extends SModuleBase implements EditableSModule {
  private static final Logger LOG = Logger.getLogger(AbstractModule.class);

  public static final String MODULE_DIR = "module";
  public static final String CLASSES_GEN = "classes_gen";

  /**
   * @deprecated no special meaning for this location in MPS now; single present use is bogus and needs attention
   */
  @Deprecated(since = "2022.3", forRemoval = true)
  public static final String CLASSES = "classes";

  /**
   * All paths concerning a module must be either absolute or relative to this 'anchor' file.
   * This is a rational idea since keeping the same information twice does not make sense.
   * <p>
   * please do not mutate the field
   */
  @Nullable
  @Immutable
  private final IFile myDescriptorFile;
  private PathSpec myOutputRoot;

  @NotNull
  private final FileSystem myFileSystem;
  private SModuleReference myModuleReference;
  private final Set<ModelRoot> mySModelRoots = new LinkedHashSet<>();
  private final Set<SModuleFacet> myFacets = new LinkedHashSet<>();

  private boolean myChanged = false;

  private static jetbrains.mps.vfs.FileSystem getFSSingleton() {
    return jetbrains.mps.vfs.FileSystem.getInstance();
  }

  protected AbstractModule(@Nullable IFile descriptorFile) {
    myDescriptorFile = descriptorFile;
    if (descriptorFile != null) {
      myFileSystem = descriptorFile.getFileSystem();
    } else {
      myFileSystem = getFSSingleton();
    }
  }

  /**
   * @deprecated there's no guarantee {@code AbstractModule} is based on a file
   */
  @Deprecated(forRemoval = true, since = "2025.1")
  public FileSystem getFileSystem() {
    // 2 uses in MPS-extension, 1 in mbeddr
    return myFileSystem;
  }

  @NotNull
  @Override
  public SModuleId getModuleId() {
//    assertCanRead(); @see getModuleReference()
    // keep the method here, despite identical default implementation, to satisfy uses in MPS/MPS-extensions/mbeddr code
    return super.getModuleId();
  }

  @Override
  public @Nullable String getModuleName() {
    // keep the method here, despite identical default implementation, to satisfy uses in MPS/MPS-extensions/mbeddr code
    return super.getModuleName();
  }

  @Override
  public Iterable<SDependency> getDeclaredDependencies() {
    assertCanRead();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return Collections.emptyList();
    }
    HashSet<SDependency> result = new HashSet<>();
    final SRepository repo = getRepository();
    if (repo == null) {
      throw new IllegalStateException("It is not possible to resolve all declared dependencies with a null repository : module " + this);
    }

    // add declared dependencies
    for (Dependency d : descriptor.getDependencies()) {
      result.add(new SDependencyImpl(d.getModuleRef(), repo, d.getScope(), d.isReexport()));
    }

    // as the method name suggests, we don't add any derived/calculated dependencies (like solutions exported by employed devkits)
    // and leave this to various facilities around SModule (like GMDM or CLDependencies), depending on usage scenario and its needs.
    return result;
  }

  @Override
  public Set<SLanguage> getUsedLanguages() {
    assertCanRead();
    return collectLanguagesAndDevkits().languages;
  }

  // fills collections with of imported languages and devkits.
  // Languages include directly imported and coming immediately through devkits; listed devkits are imported directly, without those they extend (why?).
  public LangAndDevkits collectLanguagesAndDevkits() {
    Set<SLanguage> usedLanguages = new LinkedHashSet<>();
    Set<SModuleReference> devkits = new LinkedHashSet<>();

    // perhaps, shall introduce ModuleImports similar to ModelImports to accomplish this?
    for (SModel m : getModels()) {
      final SModelInternal modelInternal = (SModelInternal) m;
      usedLanguages.addAll(modelInternal.importedLanguageIds());
      devkits.addAll(modelInternal.importedDevkits());
    }
    // XXX why don't we respect extended devkits here? DevKit.get*All*ExportedLanguageIds does this for us, but as long as we've got repository here
    //     why let devkit module bother to get it again?
    // XXX pretty similar to SModelOperations.getAllLanguageImports(sModel) and to ModelDependenciesManager#getAllImportedLanguagesIds()
    final SRepository repository = getRepository();
    if (repository != null) {
      for (SModuleReference devkitRef : devkits) {
        final SModule module = devkitRef.resolve(repository);
        if (module instanceof DevKit) {
          for (SLanguage l : ((DevKit) module).getAllExportedLanguageIds()) {
            usedLanguages.add(l);
          }
        }
      }
    }
    return new LangAndDevkits(usedLanguages, devkits);
  }

  public static class LangAndDevkits {
    public final Set<SLanguage> languages;
    public final Set<SModuleReference> devkits;

    public LangAndDevkits(@NotNull Set<SLanguage> languages, @NotNull Set<SModuleReference> devkits) {
      this.languages = languages;
      this.devkits = devkits;
    }
  }

  protected final void setModuleReference(@NotNull SModuleReference reference) {
    assertCanChange();
    assert myModuleReference == null || reference.getModuleId().equals(myModuleReference.getModuleId()) : "module id can't be changed: " + myModuleReference;
    myModuleReference = reference;
  }

  @Override
  @NotNull
  //module reference is immutable, so we can return original
  public SModuleReference getModuleReference() {
//    assertCanRead(); ClassLoaderManager needs module reference. Do we need CLM to obtain read lock?
    return myModuleReference;
  }

  //----save

  //todo move to EditableModule class
  @Nullable
  public ModuleDescriptor getModuleDescriptor() {
    return null;
  }

  //todo should be replaced with events
  // FIXME check if we always supply same MD instance module already has (it seems that the method is merely a means to tell 'reload state from memory/MD' after
  //       MD has been changed.
  // FIXME descive what happens module identity/reference is changed in the new MD
  public final void setModuleDescriptor(@NotNull ModuleDescriptor moduleDescriptor) {
    setModuleDescriptor(moduleDescriptor, true);
  }

  /**
   * PROVISIONAL INTERNAL API, DON'T USE OUTSIDE OF MPS, TO BE CHANGED WITHOUT NOTICE
   * <p>
   * sometimes we do not need to mark the reloaded module as changed (e.g. in the cases when we reload from the disk)
   */
  public final void setModuleDescriptor(@NotNull ModuleDescriptor moduleDescriptor, boolean setAsChanged) {
    assertCanChange();
    doSetModuleDescriptor(moduleDescriptor);
    if (setAsChanged) {
      setChanged();
    }

    reloadAfterDescriptorChange();
    fireChanged();
  }

  // no notifications are sent
  protected void doSetModuleDescriptor(ModuleDescriptor moduleDescriptor) {
    throw new UnsupportedOperationException();
  }

  @Override
  public void setChanged() {
    assertCanChange();
    if (isReadOnly()) {
      LOG.warning("Changing read-only module " + this);
      // XXX here was `return` prior to ee6502cd commit, perhaps, it's worth to bring it back?
      //     is there a scenario I need to save changed r/o module?
    }
    if (!myChanged) {
      myChanged = true;
      fireChanged();
    }
  }

  /**
   * invokes module#save, force-saves its models,
   * updates imports for module and containing models,
   * updates resolve-info in references
   */
  public final void forceSaveRecursively() {
    assertCanChange();
    updateExternalReferences();
    save();

    for (SModel model : getModels()) {
      if (model instanceof EditableSModel) {
        var eModel = (EditableSModel) model;
        if (eModel.isReadOnly()) {
          continue;
        }
        eModel.save(SaveOptions.FORCE_SAVE_WITH_RESOLVE_INFO);
      }
    }
  }

  @Override
  public void save() {
    assertCanChange();
    final ModuleDescriptor moduleDescriptor = getModuleDescriptor();
    // ensure ModelRoot has a chance to serialize their changes, if any
    // For now, we don't account for added/removed model roots as there's no API other than ModuleDescriptor, hence we only try to change matching MR-MRD pairs
    if (moduleDescriptor != null) {
      final ModulePersistenceContext mpc = PersistenceContextImpl.forModule(this);
      // after #updateModuleDescriptorValues or #reloadAfterDescriptorChange(), myOutputRoot is our only source of information
      // FIXME it's not nice to modify MD, provided we use MD as an editing handle for module. Just need to come up with a better approach
      //       Note, for ModuleFacetDescriptor and ModelRootDescriptor, it's easier as they got Memento to keep the transformed values!
      //       Perhaps, shall introduce Memento to keep MD settings instead of fields? Or to keep fields and introduce MD.load/save()
      //       with Memento to populate the fields?
      // Note, in persistence, we use empty string to indicate null (aka "no value")
      moduleDescriptor.setOutputRoot(myOutputRoot == null ? null : myOutputRoot.shrink(PersistenceContextImpl.macroHelper(mpc)));
      var descriptors = new LinkedList<>(moduleDescriptor.getModelRootDescriptors());
      // I can't change MRD.memento, therefore need to replace MRD instance with new memento, next collection is to ensure root ordering persists.
      var newDescriptors = new ArrayList<ModelRootDescriptor>(moduleDescriptor.getModelRootDescriptors().size());
      for (ModelRoot mr : mySModelRoots) {
        ModelRootDescriptor mrd = null;
        // here we assume order of descriptors correspond to the order of loaded MR, and new descriptors, if any, are at the end of
        // getModelRootDescriptors collection
        for (Iterator<ModelRootDescriptor> it = descriptors.iterator(); it.hasNext(); ) {
          ModelRootDescriptor next = it.next();
          if (mr.getType().equals(next.getType())) {
            mrd = next;
            // in case there's more than 1 descriptor and MR with the same type, don't modify the same descriptor again and again with different MRs
            it.remove();
            break;
          }
        }
        if (mrd == null) {
          // now there's no way to add new MR other than by new MRD in MD, therefore mrd == null here means
          // we likely got MR instance for removed root. Once there's a mechanism to add/remove MRs without need to deal with ModuleDescriptor,
          // then shall uncomment the code below and review the code above to account for MD with stale MRDs.
//          mrd = new ModelRootDescriptor(mr.getType(), new MementoImpl());
//          // we've got a copy of original set, therefore can modify original value here
//          moduleDescriptor.getModelRootDescriptors().add(mrd);
          continue;
        }
        MementoImpl clearMemento = new MementoImpl();
        mr.save(clearMemento, mpc);
        if (!clearMemento.equals(mrd.getMemento())) {
          // root settings changed
          newDescriptors.add(new ModelRootDescriptor(mrd.getType(), clearMemento));
        } else {
          // just reuse existing instance
          newDescriptors.add(mrd);
        }
      }
      newDescriptors.addAll(descriptors);
      moduleDescriptor.clearModelRootDescriptors();
      moduleDescriptor.getModelRootDescriptors().addAll(newDescriptors);

      // make sure module facets serialize their changes as well.
      for (SModuleFacet mf : getFacets()) {
        moduleDescriptor.updateFacetDescriptor(mf, mpc);
      }
    }
    myChanged = false;
  }

  //----adding different deps

  /**
   * FIXME module editing is generally done through descriptor and reload. Although I do not mind exposing add/remove methods here, it should be consistent!
   * There's use in mbeddr
   */
  @Nullable
  public Dependency addDependency(@NotNull SModuleReference moduleRef, boolean reexport) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return null;
    }
    if (this.getModuleReference().equals(moduleRef)) {
      return null;
    }
    for (Dependency dep : descriptor.getDependencies()) {
      if (!Objects.equals(dep.getModuleRef(), moduleRef)) {
        continue;
      }

      if (reexport && !dep.isReexport()) {
        dep.setReexport(true);
        fireChanged();
        setChanged();
      }
      return dep;
    }

    Dependency dep = new Dependency(moduleRef, reexport);
    descriptor.getDependencies().add(dep);

    fireChanged();
    setChanged();
    return dep;
  }

  public void removeDependency(@NotNull Dependency dependency) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return;
    }
    if (!descriptor.getDependencies().contains(dependency)) {
      return;
    }

    descriptor.getDependencies().remove(dependency);

    fireChanged();
    setChanged();
  }

//----

  @Override
  public Iterable<ModelRoot> getModelRoots() {
    // We check read lock here because mySModelRoots is updated inside write.
    assertCanRead();
    return Collections.unmodifiableCollection(mySModelRoots);
  }

  protected void reloadAfterDescriptorChange() {
    updateModuleDescriptorValues();
    updateFacets();
    updateModelsSet();
  }

  private void updateModuleDescriptorValues() {
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null && descriptor.getOutputRoot() != null) {
      myOutputRoot = new PathSpec(descriptor.getOutputRoot());
      final Function<String, IFile> path2file = s -> myFileSystem.getFile(MacrosFactory.forModule((SModule) this).expandPath(s));
      myOutputRoot.resolve(path2file);
    } else {
      myOutputRoot = null;
    }
  }

  /**
   * Mechanism for sublclasses to enforce certain facets for a module, if necessary.
   * MPS itself respects actual facets for a module as defined in a ModuleDescriptor and doesn't impose any mandatory facet any longer
   * (for a long time , it would force Java facet, which is essential for classloading mechanism). When needed, necessary module facets
   * are added at module creation time.
   * The method is no-op, subclasses are not obliged to invoke it as MPS unlikely ever to get back to mandatory facets.
   * It's unlikely there's even a reason to keep this extension point, left in 2020.2 for compatibility and future consideration.
   */
  protected void collectMandatoryFacetTypes(@Mutable Set<String> types) {
  }

  @NotNull
  protected SModuleFacet loadAndAttachIfNeeded(@NotNull SModuleFacet facet, Memento memento) {
    if (!facet.isAttached()) {
      assert (facet.getModule() == null);
      facet.attach(this);
    }
    facet.load(memento != null ? memento : new MementoImpl(), PersistenceContextImpl.forModule(this));
    return facet;
  }

  protected void updateFacets() {
    assertCanChange();

    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return;
    }

    clearFacets();

    Map<String, Memento> config = new HashMap<>();
    for (ModuleFacetDescriptor facetDescriptors : descriptor.getModuleFacetDescriptors()) {
      if (config.containsKey(facetDescriptors.getType())) {
        // with JMF holding non-trivial defaults, I've faced few hard to debug issues with duplicated facet entries.
        //  FTR, the fact MD.myFacets is a Set doesn't help here, as
        //    (a) ModuleFacetDescriptor doesn't override equals()
        //    (b) even if it would, duplicating facet descriptors are generally not the same (duplicates usually bear no
        //        settings at all, while the first one comes with <classes> and path
        LOG.error(String.format("Module %s comes with duplicated facet %s, ignored", getModuleName(), facetDescriptors.getType()));
        continue;
      }
      config.put(facetDescriptors.getType(), facetDescriptors.getMemento());
    }

    Set<String> types = new HashSet<>();
    collectMandatoryFacetTypes(types);
    types.addAll(config.keySet());

    FacetsFacade facetsFacade = FacetsFacade.getInstance();
    for (String facetType : types) {
      FacetFactory factory = facetsFacade.getFacetFactory(facetType);
      Memento memento = config.get(facetType);
      if (factory == null) {
        createUnknownFacet(facetsFacade, facetType, memento);
      } else {
        createAndLoadFacet(factory, memento);
      }
    }
  }

  private void createUnknownFacet(FacetsFacade facetsFacade, String facetType, Memento memento) {
    LOG.warning(String.format("no registered factory for a facet with type=`%s'", facetType));
    SModuleFacet unknownFacet = new UnknownFacet(facetType, this);
    unknownFacet.load(memento, PersistenceContextImpl.empty());
    myFacets.add(unknownFacet);
    facetsFacade.callWhenFacetFactoryAppears(facetType, (facetFactory -> {
      myFacets.remove(unknownFacet);
      createAndLoadFacet(facetFactory, memento);
    }));
  }

  private void createAndLoadFacet(FacetFactory factory, Memento memento) {
    if (!factory.isApplicable(this)) {
      LOG.warning(String.format("Facet factory '%s' can't handle module %s", factory, getModuleName()));
      // still, if facet is there, create it to facilitate removal from UI
    }
    SModuleFacet facet = factory.create(this);
    facet = loadAndAttachIfNeeded(facet, memento);
    myFacets.add(facet);
  }

  private void clearFacets() {
    for (SModuleFacet facet : myFacets) {
      facet.detach();
    }
    myFacets.clear();
  }

  @Override
  public boolean isReadOnly() {
//    assertCanRead(); getModuleSourceDir() doesn't require read, why isPackaged() does?
    return isPackaged();
  }

  @Override
  public boolean isPackaged() {
//    assertCanRead(); getModuleSourceDir() doesn't require read, why isPackaged() does?
    return getModuleSourceDir() == null || getModuleSourceDir().isInZipArchive();
  }

  /**
   * Module sources folder
   * In case of working on sources == dir with module descriptor
   * In case of working on distribution = {module-name}-src.jar/module/
   * In case of Generator = sourceLanguage.getModuleSourceDir()
   * ${module} expands to this method
   */
  public IFile getModuleSourceDir() {
    return getDescriptorFile() != null ? getDescriptorFile().getParent() : null;
  }

  /**
   * The use of the method is discouraged as it exposes some internal MPS infrastructure.
   * Modules do not necessarily originate from files.
   * There's no limitation of number of modules that share same descriptor file.
   * <p>
   * Note, the name of descriptor file for deployed module is not necessarily the same as for the same module in sources
   * (e.g. META-INF/module.xml vs mylang/my.lang.mpl)
   * </p>
   *
   * @return a file (might be shared with other module) we took module's description from, or {@code null} if no such information is available.
   */
  @Nullable
  public final IFile getDescriptorFile() {
//    assertCanRead();   if getModuleSourceDir doesn't require read, why getDescriptorFile does?
    return myDescriptorFile;
  }

  public void setModuleVersion(int version) {
    getModuleDescriptor().setModuleVersion(version);
    fireChanged();
    setChanged();
  }

  public int getModuleVersion() {
    ModuleDescriptor descriptor = getModuleDescriptor();
    return descriptor == null ? 0 : descriptor.getModuleVersion();
  }

  @NotNull
  public SearchScope getScope() {
    //    assertCanRead(); XXX There was no reason to guard access to the field, but now there's a class that initializes at construction time.
    return new VisibleDepsSearchScope(getRepository(), this);
  }

  @Override
  public void attach(@NotNull SRepository repository) {
    super.attach(repository);
    updateModuleDescriptorValues();
    updateFacets();
    if (RuntimeFlags.modelsLoadedOnModuleAttach()) {
      updateModelsSet(); // refresh model roots and load models
    } else {
      doUpdateModelRoots(); // just roots
      if (repository instanceof SRepositoryBase) {
        ((SRepositoryBase) repository).markIncompleteModelSet(this);
      }
    }
  }

  @Override
  public String toString() {
    String namespace = getModuleName();
    return namespace + " [module]";
  }

  @Override
  public void dispose() {
    assertCanChange();
    LOG.trace("Disposing the module " + this);
    clearFacets();
    // FIXME perhaps, have to call super.dispose() prior MR.dispose()
    //       just in case models care about thir model root?
    for (ModelRoot m : mySModelRoots) {
      ((ModelRootBase) m).dispose();
    }
    mySModelRoots.clear();
    super.dispose();
  }

  /**
   * @deprecated though there are no uses, I still hesitate what's the right way to access source paths of a module
   * ModuleDesciptor.getSourcePath(), actively in use, is the worst possible way, no MD shall get exposed to end-user.
   * SModuleOperations.getAllSourcePaths(this) is better, yet not that discoverable.
   * AbstractModule.getSourcePaths() is both discoverable and not exposing MD, but cast to AM is odd, and getSourcePaths is definitely
   * not a part of SModule API. To me, it's rather part of JavaModuleFacet. Left as a reminder to refactor uses of other APIs prior to removing the method.
   */
  @Deprecated
  public List<String> getSourcePaths() {
    assertCanRead();
    return new ArrayList<>(SModuleOperations.getAllSourcePaths(this));
  }

  public final void updateModelsSet() {
    // FIXME this is very, very suspicious code, but DiskMemoryConflictTest.deleteDisk_XXX() tests
    //   heavily rely on the fact updateModelsSet() doesn't reload model roots when there's changed
    //   model, and instead let conflict resolver to jump in and to deal with the conflict.
    //   However, I don't like whole conflict resolution story, and likely need to refactor this, too.
    final AtomicBoolean ignoreUpdate = new AtomicBoolean(false);
    forEachRegisteredModel(model -> {
      if (model instanceof EditableSModel && ((EditableSModel) model).isChanged()) {
        LOG.warning(
            "Trying to reload module " + getModuleName() + " which contains a non-saved model '" +
            model.getName() + "'. To prevent data loss, MPS will not update models in this module. " +
            "Please save your work and restart MPS. See MPS-18743 for details."
        );
        if (model instanceof EditableSModelBase) {
          ((EditableSModelBase) model).resolveDiskConflict();
        }
        ignoreUpdate.set(true);
      }
    });
    if (ignoreUpdate.get()) {
      return;
    }
    doUpdateModelRoots();
    // XXX why do I force model loading in this scenario now? I know
    // it's historic approach, but, perhaps, we could do better now?
    ensureModelsReady(); // == doUpdateModelsSet(), guarded with myModels lock
  }

  protected Iterable<ModelRoot> loadRoots() {
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return Collections.emptyList();
    }

    List<ModelRoot> result = new ArrayList<>();
    final ModulePersistenceContext mpc = PersistenceContextImpl.forModule(this);
    for (ModelRootDescriptor modelRoot : descriptor.getModelRootDescriptors()) {
      try {
        ModelRootFactory modelRootFactory = PersistenceFacade.getInstance().getModelRootFactory(modelRoot.getType());
        if (modelRootFactory == null) {
          LOG.error("Unknown model root type: `" + modelRoot.getType() + "'. Requested by: " + this);
          continue;
        }

        ModelRoot root = modelRootFactory.create();
        root.load(modelRoot.getMemento(), mpc);
        result.add(root);
      } catch (Exception e) {
        LOG.error("Error loading models from root with type: `" + modelRoot.getType() + "'. Requested by: " + this, e);
      }
    }
    return result;
  }

  // updates mySModelRoots with proper ModelRoot instances, attaching new and disposing outdated, as needed.
  // Requires model write (mySModelRoots is guarded with write)
  private void doUpdateModelRoots() {
    assertCanChange();

    Set<ModelRoot> toRemove = new LinkedHashSet<>(mySModelRoots);
    Set<ModelRoot> toUpdate = new LinkedHashSet<>(mySModelRoots);
    Set<ModelRoot> toAttach = new LinkedHashSet<>();
    /*
    XXX ModelRoot instance just loaded from MRDescriptor and the one attached to a module might
    get quite different, to ensure matching of existing (attached) vs freshly loaded (detached) MR
    instances we might want to stick to their 'persisted' state and to match respective Memento instead.
    However, for 22.3 the change seems a bit more drastic than desired, addressed by FileBasedModelRoot.equals() impl, instead.
    Map<Memento, ModelRoot> persisted2instance = new HashMap<>();
    for (ModelRoot mr : mySModelRoots) {
      final MementoImpl persisted = new MementoImpl();
      mr.save(persisted);
      persisted2instance.put(persisted, mr);
    }
    */

    for (ModelRoot root : loadRoots()) {
      // see comment above for explanation
//      final MementoImpl newRootPersisted = new MementoImpl();
//      root.save(newRootPersisted);
//      final ModelRoot existing = persisted2instance.get(newRootPersisted);
      if (mySModelRoots.contains(root)) {
        toRemove.remove(root);
      } else {
        toAttach.add(root);
      }
    }
    toUpdate.removeAll(toRemove);

    if (!toRemove.isEmpty()) {
      HashSet<SModel> registeredModels = new HashSet<>();
      forEachRegisteredModel(registeredModels::add);
      HashSet<SModel> toUnregisterModels = new HashSet<>();
      for (ModelRoot modelRoot : toRemove) {
        registeredModels.stream().filter(m -> m.getModelRoot() == modelRoot).forEach(toUnregisterModels::add);
        ((ModelRootBase) modelRoot).dispose();
      }
      if (!toUnregisterModels.isEmpty()) {
        changeModelSet(Collections.emptyList(), toUnregisterModels);
      }
    }
    mySModelRoots.removeAll(toRemove);
    for (ModelRoot modelRoot : toAttach) {
      try {
        ModelRootBase rootBase = (ModelRootBase) modelRoot;
        rootBase.setModule(this);
        mySModelRoots.add(modelRoot);
        rootBase.attach();
      } catch (Exception e) {
        LOG.error(String.format("Error loading models from root `%s'. Requested by: %s", modelRoot, this), e);
      }
    }
    markModelsIncomplete();
  }


  @Override
  protected void ensureModelsReady0() {
    doUpdateModelsSet();
  }

  // takes known set of model roots and updates set of module's models based on these model roots
  private void doUpdateModelsSet() {
    // assertCanChange(); // FIXME model read + separate lock for models
    assertCanRead(); // guard access to mySModelRoots

    class MDD implements ModelDiscoveryDelta {
      private final ArrayList<SModel> in = new ArrayList<>();
      private final ArrayList<SModel> out = new ArrayList<>();

      MDD() {
      }

      @Override
      public SModule module() {
        // FIXME don't need module(), shall extract ModelRootBase.doLoadModels() into separate class and
        //       pass AM instance into the class, keeping MDD pure collector
        return AbstractModule.this;
      }

      @Override
      public void unload(SModel model) {
        model.unload();
      }

      @Override
      public void registerModel(SModel model, @Nullable ModelRoot source) {
        if (model instanceof SModelBase) {
          // XXX not 100% sure if setModelRoot() shall be part of model root impl or this code
          //     seems that it has to be ModelRoot impl but it's not very convenient given there are few calls
          //     to registerModel(). Decided to keep here for now, re-consider later.
          ((SModelBase) model).setModelRoot(source);
        }
        in.add(model);
      }

      @Override
      public void unregisterModel(SModel model) {
        if (model instanceof EditableSModel && ((EditableSModel) model).isChanged()) {
          model.unload();
        }
        out.add(model);
      }
      void apply() {
        AbstractModule.this.changeModelSet(in, out);
      }
    }
    MDD mdd = new MDD();
    for (ModelRoot modelRoot : mySModelRoots) {
      ((ModelRootBase) modelRoot).doLoadModels(mdd);
    }
    mdd.apply();
  }

  // unlike similar method in SModel, doesn't take SRepository now
  // according to present use cases, we iterate modules of a repository and update them,
  // hence it's superficial  to pass repository in here (although might add one for consistency)
  // TODO discuss: isn't it plain better to personally track all the dependency renames for each module (and model)?
  //      or it could be #save where we re-resolve all the references in the descriptor
  //  the current method exposes the persistence stuff of this module, which must be of no one's concern
  public void updateExternalReferences() {
    ModuleDescriptor moduleDescriptor = getModuleDescriptor();
    final SRepository repository = getRepository();
    if (moduleDescriptor == null || repository == null) {
      return;
    }
    if (moduleDescriptor.updateModelRefs(repository)) {
      setChanged();
    }
    if (moduleDescriptor.updateModuleRefs(repository)) {
      setChanged();
    }
  }

  @Override
  public boolean isChanged() {
    return myChanged;
  }

  // used in mbeddr & mps
  @Nullable
  @Override
  public <T extends SModuleFacet> T getFacet(@NotNull Class<T> clazz) {
    return super.getFacet(clazz);
  }

  @NotNull
  @Override // pass them here instead overriding?
  public Iterable<SModuleFacet> getFacets() {
    return Collections.unmodifiableSet(myFacets);
  }

  /**
   * Internal API to access generic output location for the module, if any. Although there ain't no such thing as output path for a module in general,
   * and each {@link jetbrains.mps.project.facets.GenerationTargetFacet} may opt to specify whatever location it likes, it's advised to place generated
   * artifacts under this location (unless unspecified) for ease of manipulation. MPS module facets that control module output use this value
   * <p>
   * Note, this method generally makes sense for source modules only.
   * {@implNote} FIXME there's 1 use in MPS tests where we use this value to access content of module-src.jar, just need to address this sceanario by
   *             another packaging
   */
  @Nullable
  public IFile getOutputPath() {
    if (myOutputRoot == null || !myOutputRoot.resolved()) {
      return null;
    }
    return myOutputRoot.resolvedFile();
  }

  public void setOutputPath(@Nullable IFile outputRoot) {
    myOutputRoot = outputRoot == null ? null : new PathSpec(outputRoot);
  }

  @Override
  public int getUsedLanguageVersion(@NotNull SLanguage usedLanguage) {
    ModuleDescriptor moduleDescriptor = getModuleDescriptor();
    if (!checkDescriptorNotNull(moduleDescriptor)) {
      return -1;
    }
    Integer res = moduleDescriptor.getLanguageVersions().get(usedLanguage);
    return res == null ? -1 : res.intValue();
  }

  public int getDependencyVersion(@NotNull SModule dependency) {
    return getDependencyVersion(dependency, true);
  }

  /**
   * has a fallback if the dependency is absent in the module descriptor. if it happens then returns simply the current dep. module version
   *
   * @param check is whether to show error for not found version
   */
  public int getDependencyVersion(@NotNull SModule dependency, boolean check) {
    ModuleDescriptor moduleDescriptor = getModuleDescriptor();
    if (!checkDescriptorNotNull(moduleDescriptor)) {
      return -1;
    }
    Integer res = moduleDescriptor.getDependencyVersions().get(dependency.getModuleReference());
    if (res == null) {
      if (check) {
        LOG.error(
            "#getDependencyVersion can't find a version for module " + dependency.getModuleName() +
            " in module " + getModuleName() + "." +
            " This can either mean that the module is not visible from this module or that " +
            "#validateDependencyVersions() was not called on this module in appropriate moment.",
            new Throwable());
      }
      return ((AbstractModule) dependency).getModuleVersion();
    }
    return res;
  }

  /**
   * @return true iff descriptor is not null
   */
  @Contract("null -> false")
  private boolean checkDescriptorNotNull(ModuleDescriptor moduleDescriptor) {
    if (moduleDescriptor == null) {
      LOG.warning("Descriptor is null " + this + "; returning -1");
      return false;
    }
    return true;
  }
}
