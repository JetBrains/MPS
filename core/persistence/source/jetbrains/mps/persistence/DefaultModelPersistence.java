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
package jetbrains.mps.persistence;

import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.extapi.model.PersistenceProblem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.extapi.persistence.FileSystemBasedDataSource;
import jetbrains.mps.extapi.persistence.datasource.PreinstalledDataSourceTypes;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.persistence.MetaModelInfoProvider.MetaInfoLoadingOption;
import jetbrains.mps.persistence.MetaModelInfoProvider.RegularMetaModelInfo;
import jetbrains.mps.persistence.MetaModelInfoProvider.StuffedMetaModelInfo;
import jetbrains.mps.persistence.PersistenceVersionAware.SpecificVersion;
import jetbrains.mps.smodel.DefaultSModel;
import jetbrains.mps.smodel.DefaultSModelDescriptor;
import jetbrains.mps.smodel.SModelHeader;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.loading.ModelLoadResult;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.smodel.persistence.def.IModelPersistence;
import jetbrains.mps.smodel.persistence.def.IModelWriter;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import jetbrains.mps.smodel.persistence.def.ModelReadException;
import jetbrains.mps.util.JDOMUtil;
import org.jdom.Document;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.annotations.Internal;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.persistence.ContentOption;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.DataSourceNotSupportedProblem;
import org.jetbrains.mps.openapi.persistence.MFProblem;
import org.jetbrains.mps.openapi.persistence.ModelFactory;
import org.jetbrains.mps.openapi.persistence.ModelFactoryType;
import org.jetbrains.mps.openapi.persistence.ModelLoadException;
import org.jetbrains.mps.openapi.persistence.ModelLoadingOption;
import org.jetbrains.mps.openapi.persistence.ModelSaveException;
import org.jetbrains.mps.openapi.persistence.ModelSaveOption;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.persistence.StreamDataSource;
import org.jetbrains.mps.openapi.persistence.UnsupportedDataSourceException;
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.jetbrains.mps.openapi.persistence.MFProblem.NO_PROBLEM;

/**
 * Factory for models stored in .mps files.
 */
public class DefaultModelPersistence implements ModelFactory, IndexAwareModelFactory, DataLocationAwareModelFactory {
  private static final Logger LOG = Logger.getLogger(DefaultModelPersistence.class);

  public enum ContentLoadingExtentOptions implements ModelLoadingOption {
    /**
     * An option for model loading, indicates loaded model doesn't care about implementation node.
     * For the time being, implementation node is the one with appropriate ConceptKind (designated according to concept's implemented interfaces).
     */
    STRIP_IMPLEMENTATION,
    /**
     * Boolean option for model loading, indicates loaded model cares about its interface aspects only.
     *
     */
    INTERFACE_ONLY
  }

  private final PersistenceFacade myPersistenceRegistry;

  @Internal
  public DefaultModelPersistence() {
    // FIXME refactor single use in tests
    this(PersistenceFacade.getInstance());
  }

  public DefaultModelPersistence(@NotNull PersistenceFacade persistenceRegistry) {
    myPersistenceRegistry = persistenceRegistry;
  }

  @Override
  public boolean supports(@NotNull DataSource dataSource) {
    return dataSource instanceof StreamDataSource;
  }

  @NotNull
  @Override
  public MFProblem canCreate(@NotNull DataSource dataSource, @NotNull SModelName modelName, @NotNull ModelLoadingOption... options) {
    if (!supports(dataSource)) {
      return new DataSourceNotSupportedProblem(dataSource);
    }
    if (dataSource instanceof FileSystemBasedDataSource) {
      if (((FileSystemBasedDataSource) dataSource).exists()) {
          return () -> "Some of the data source paths already exist on the disk";
      }
    }
    return NO_PROBLEM;
  }

  @NotNull
  @Override
  public SModel create(@NotNull DataSource dataSource,
                       @NotNull SModelName modelName,
                       @NotNull ModelLoadingOption... options) throws UnsupportedDataSourceException {
    if (!(supports(dataSource))) {
      throw new UnsupportedDataSourceException(dataSource);
    }

    final SModelHeader header = SModelHeader.create(ModelPersistence.LAST_VERSION);
    final SModelReference modelReference = myPersistenceRegistry.createModelReference(null, SModelId.generate(), modelName);
    header.setModelReference(modelReference);
    final DefaultSModelDescriptor rv = new DefaultSModelDescriptor(new PersistenceFacility(this, (StreamDataSource) dataSource), header);
    // Hack to ensure newly created model is indeed empty. Otherwise, with StreamDataSource pointing to existing model stream, an attempt to
    // do anything with the model triggers loading and the model get all the data. Two approaches deemed reasonable to tackle the issue:
    // (a) enforce clear empty model (why would anyone call #create() then)
    // (b) fail with error (too brutal?)
    // Another alternative considered is to tolerate any DataSource in DefaultSModelDescriptor (or its persistence counterpart), so that
    // one can create an empty model with NullDataSource, and later save with a proper DataSource (which yields more job to client and makes him
    // question why SModel.save() is there). This task is reasonable regardless of final approach taken, but would take more effort, hence the hack.
    if (dataSource.getTimestamp() != -1) { // chances are there's something in the stream already
      rv.replace(new DefaultSModel(modelReference, header)); // model state is FULLY_LOADED, DataSource won't get read
    }
    return rv;
  }

  @NotNull
  @Override
  public SModel load(@NotNull DataSource dataSource, @NotNull ModelLoadingOption... options) throws UnsupportedDataSourceException,
                                                                                                    ModelLoadException {
    if (!(dataSource instanceof StreamDataSource source)) {
      throw new UnsupportedDataSourceException(dataSource);
    }

    if (ContentOption.CONTENT_ONLY.presentIn(options)) {
      // aka parseSingleStream(), just with extra option to keep MMIP
      try {
        // Use the source-based overload because the stream may not remain reusable after header parsing.
        SModelData modelData = ModelPersistence.getModelData(source, MetaInfoLoadingOption.KEEP_READ.presentIn(options));
        if (modelData instanceof DefaultSModel dsm) {
          return new ContentOnlySModelDescriptor(dsm, this);
        }
        // fall-through, try regular path
      } catch (IOException | ModelReadException ex) {
        // if it fails to read, why bother with another attempt
        throw new ModelLoadException(ex.getMessage());
      }
    }

    PersistenceFacility persistenceFacility = new PersistenceFacility(this, source);
    SModelHeader header = readHeader(dataSource, source, persistenceFacility);
    LOG.debug("Getting model " + header.getModelReference() + " from " + dataSource.getLocation());

    if (MetaInfoLoadingOption.KEEP_READ.presentIn(options)) {
      header.setMetaInfoProvider(new StuffedMetaModelInfo(new RegularMetaModelInfo()));
    }

    // If there are any load options, process them and fill the model with desired model data, otherwise return a lightweight descriptor.
    final DefaultSModelDescriptor resultingModel = new DefaultSModelDescriptor(persistenceFacility, header);
    ModelLoadingState loadingLevel = detectLoadingLevel(options);
    readModelUpToLevel(dataSource, persistenceFacility, header, resultingModel, loadingLevel);
    return resultingModel;
  }

  private void readModelUpToLevel(@NotNull DataSource dataSource,
                                  PersistenceFacility persistenceFacility,
                                  SModelHeader header,
                                  DefaultSModelDescriptor rv,
                                  ModelLoadingState loadingLevel) throws ModelLoadException {
    if (loadingLevel != null) {
      try {
        jetbrains.mps.smodel.SModel md = persistenceFacility.readModel(header, loadingLevel).getModel();
        rv.replace(md);
      } catch (ModelReadException e) {
        LOG.error("Can't read model: ", e);
        throw new ModelLoadException("Can't read a model from the '" + dataSource + "'", Collections.emptyList(), e);
      }
    }
  }

  @NotNull
  private SModelHeader readHeader(@NotNull DataSource dataSource, StreamDataSource source, PersistenceFacility pf) throws ModelLoadException {
    SModelHeader header;
    try {
      header = pf.readHeader();
    } catch (ModelReadException e) {
      LOG.info("Can't read model: " + e.getMessage());
      throw new ModelLoadException("Can't read model header from the '" + dataSource + "'", Collections.emptyList(), e);
    }
    if (header.getModelReference() == null) {
      throw new ModelLoadException("Could not find model reference in the model header while loading from the " + source);
    }
    return header;
  }

  /**
   * An alternative to replace() method call (which is hacky) is to expose UpdateableModel field from LazyEditableSModelBase and use
   * UpdateableModel#getModel(ModelLoadingState) instead to ensure model is loaded to desired state.
   * However, not sure subsequent access to model won't trigger full load anyway, thus replace() which indicates supplied state is 'FULLY LOADED'
   * might be the right (hacky, nonetheless) solution.
   * [atikhomirov]
   */
  @Nullable
  private ModelLoadingState detectLoadingLevel(@NotNull ModelLoadingOption[] options) {
    ModelLoadingState loadingLevel = null;
    if (Arrays.asList(options).contains(ContentLoadingExtentOptions.STRIP_IMPLEMENTATION)) {
      loadingLevel = ModelLoadingState.NO_IMPLEMENTATION;
    } else if (Arrays.asList(options).contains(ContentLoadingExtentOptions.INTERFACE_ONLY)) {
      loadingLevel = ModelLoadingState.INTERFACE_LOADED;
    }
    return loadingLevel;
  }

  @Override
  public boolean needsUpgrade(@NotNull DataSource dataSource) throws IOException {
    if (!(dataSource instanceof StreamDataSource)) {
      throw new UnsupportedDataSourceException(dataSource);
    }
    try {
      SModelHeader header = ModelPersistence.loadDescriptor((StreamDataSource) dataSource);
      return header.getPersistenceVersion() < ModelPersistence.LAST_VERSION;
    } catch (ModelReadException ex) {
      throw new IOException(ex);
    }
  }


  @Override
  public void save(@NotNull SModel model, @NotNull DataSource dataSource) throws ModelSaveException, UnsupportedDataSourceException {
    save(model, dataSource, saveOptionsFor(((SModelBase) model).getSModel()));
  }

  @Override
  public void save(@NotNull SModel model, @NotNull DataSource dataSource, @Nullable ModelSaveOption... options) throws ModelSaveException {
    checkSaveStreamDataSource(dataSource, model.getReference());
    // improved alternative to ModelPersistence.saveModel
    checkSaveReadOnlyDataSource(dataSource);

    IModelWriter mw = deduceWriterVersion(model, dataSource, options);
    Document document = mw.saveModel(((SModelBase) model).getSModel());
    try {
      JDOMUtil.writeDocument(document, (StreamDataSource) dataSource);
    } catch (IOException ex) {
      throw new ModelSaveException("Failed to save model %s".formatted(model.getReference()), Collections.singleton(PersistenceProblem.errorSave(ex.getMessage(), dataSource)), ex);
    }
  }

  @Override
  public void index(@NotNull InputStream input, @NotNull Callback callback) throws IOException {
    ModelPersistence.index(input, callback);
  }

  @Override
  public SModelData parseSingleStream(@NotNull String name, @NotNull InputStream input) throws IOException, ModelReadException {
    return ModelPersistence.getModelData(input, false);
  }

  @NotNull
  @Override
  public ModelFactoryType getType() {
    return PreinstalledModelFactoryTypes.PLAIN_XML;
  }

  @Nullable
  @Override
  public DataSource getNodeLocation(@NotNull SNode node) {
    CorrectnessChecker correctnessChecker = new CorrectnessChecker(this);
    SModel model = node.getModel();
    if (model == null) return null;
    correctnessChecker.checkAndWarn(model);
    if (!correctnessChecker.doesMFSupportDS(model)) {
      return null;
    }
    return model.getSource();
  }

  @Nullable
  public DataSource getMetaInfoLocation(@NotNull SModel model) {
    return getDataLocation(model);
  }

  @Nullable
  @Override
  public DataSource getDataLocation(@NotNull SModel model) {
    CorrectnessChecker correctnessChecker = new CorrectnessChecker(this);
    correctnessChecker.checkAndWarn(model);
    if (!correctnessChecker.doesMFSupportDS(model)) {
      return null;
    }
    return model.getSource();
  }

  @NotNull
  @Override
  public List<DataSourceType> getPreferredDataSourceTypes() {
    return Collections.singletonList(PreinstalledDataSourceTypes.MPS);
  }

  /*package*/ static void checkSaveStreamDataSource(DataSource dataSource, SModelReference modelReference) throws ModelSaveException {
    if (!(dataSource instanceof StreamDataSource)) {
      String m = String.format("Incompatible data source %s(%s) for model %s", dataSource.getType(), dataSource.getLocation(), modelReference);
      throw new ModelSaveException(PersistenceProblem.errorSave(m, dataSource));
    }
  }

  /*package*/ static void checkSaveReadOnlyDataSource(DataSource dataSource) throws ModelSaveException {
    if (dataSource.isReadOnly()) {
      throw new ModelSaveException(PersistenceProblem.errorSave(String.format("`%s' is read-only", dataSource.getLocation()), dataSource));
    }
  }

  /**
   * Shared logic for xml persistence (both all-in-one stream and root-per-stream) to figure out persistence version to use and whether to upgrade it or not
   */
  @NotNull
  /*package*/ static IModelWriter deduceWriterVersion(@NotNull SModel model, @NotNull DataSource dataSource, @Nullable ModelSaveOption... options) throws ModelSaveException {
    // next code is the same in FilePerRootModelFactory
    int persistenceVersion = -1;
    if (model instanceof PersistenceVersionAware) {
      persistenceVersion = ((PersistenceVersionAware) model).getPersistenceVersion();
    }
    // we shall not upgrade persistence version unless explicitly instructed to via ModelSaveOptions (SpecificVersion > than actual version)
    SpecificVersion versionOption = SpecificVersion.find(options);
    if (versionOption != null) {
      if (persistenceVersion == -1) {
        LOG.debug("Model %s without persistence version information is to be saved with version %d".formatted(model.getName(), versionOption.getVersion()));
      } else if (persistenceVersion < versionOption.getVersion()) {
        LOG.debug("Upgrading persistence of model %s: %d --> %d".formatted(model.getName(), persistenceVersion, versionOption.getVersion()));
      } else if (persistenceVersion > versionOption.getVersion()) {
        LOG.warning("Downgrading persistence of model %s: %d --> %d".formatted(model.getName(), persistenceVersion, versionOption.getVersion()));
      }
      persistenceVersion = versionOption.getVersion();
    }
    if (persistenceVersion == -1) {
      // still unspecified, use the latest
      persistenceVersion = ModelPersistence.LAST_VERSION;
    }
    final IModelPersistence mp = ModelPersistence.getPersistence(persistenceVersion);
    if (mp == null) {
      // XXX similar logic is in ModelPersistence.saveModel()
      final String m = String.format(versionOption == null ? "Unknown persistence version %d" : "Bad requested persistence version %d", persistenceVersion);
      throw new ModelSaveException(PersistenceProblem.errorSave(m, dataSource));
    }
    final MetaModelInfoProvider mmiProvider = ModelPersistence.mmiProviderFor(((SModelBase) model).getModelData());
    // FIXME why on earth does ModelWriter take smodel.SModel?!
    IModelWriter mw = mp.getModelWriter(mmiProvider, options);
    if (mw == null) {
      // XXX same/similar logic is in ModelPersistence.saveModel()
      final String m = String.format("Persistence has no writer. Version %d", persistenceVersion);
      throw new ModelSaveException(PersistenceProblem.errorSave(m, dataSource));
    }
    return mw;
  }

  @Nullable
  /*package*/ static ModelSaveOption[] saveOptionsFor(SModelData model) {
    final SModelHeader header = model instanceof DefaultSModel ? ((DefaultSModel) model).getSModelHeader() : null;
    if (header != null) {
      if (RuntimeFlags.customNodeIdentitySupport()) {
        return new UserObjectsPersistence[]{UserObjectsPersistence.DESIRED};
      }
      String value = header.getOptionalProperty(MPSPersistence.UO_MODEL_ATTRIBUTE);
      return value != null ? new UserObjectsPersistence[]{UserObjectsPersistence.valueOf(value)} : null;
    }
    return null;
  }

  private static class PersistenceFacility extends LazyLoadFacility {
    /*package*/ PersistenceFacility(DefaultModelPersistence modelFactory, StreamDataSource dataSource) {
      super(modelFactory, dataSource, true);
    }

    @NotNull
    private StreamDataSource getSource0() {
      return (StreamDataSource) super.getSource();
    }

    @NotNull
    @Override
    public SModelHeader readHeader() throws ModelReadException {
      return ModelPersistence.loadDescriptor(getSource0());
    }

    @NotNull
    @Override
    public ModelLoadResult readModel(@NotNull SModelHeader header, @NotNull ModelLoadingState state) throws ModelReadException {
      return ModelPersistence.readModel(header, getSource0(), state);
    }

    @Override
    public void saveModel(@NotNull SModel modelData) throws ModelSaveException {
      // same as #save(SMode, DataSource), above, as I can't use default impl from super - need to detect proper options based on header values
      getModelFactory().save(modelData, getSource0(), saveOptionsFor(((SModelBase) modelData).getSModel()));
    }
  }
}
