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

import jetbrains.mps.extapi.model.PersistenceProblem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.extapi.persistence.DisposableDataSource;
import jetbrains.mps.extapi.persistence.FileSystemBasedDataSource;
import jetbrains.mps.extapi.persistence.datasource.PreinstalledDataSourceTypes;
import jetbrains.mps.generator.ModelDigestUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.persistence.MetaModelInfoProvider.MetaInfoLoadingOption;
import jetbrains.mps.persistence.MetaModelInfoProvider.RegularMetaModelInfo;
import jetbrains.mps.persistence.MetaModelInfoProvider.StuffedMetaModelInfo;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.smodel.DefaultSModel;
import jetbrains.mps.smodel.DefaultSModelDescriptor;
import jetbrains.mps.smodel.SModelHeader;
import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.loading.ModelLoadResult;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.smodel.persistence.def.FilePerRootFormatUtil;
import jetbrains.mps.smodel.persistence.def.IModelWriter;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import jetbrains.mps.smodel.persistence.def.ModelReadException;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.JDOMUtil;
import org.jdom.Document;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
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
import org.jetbrains.mps.openapi.persistence.MultiStreamDataSource;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.persistence.StreamDataSource;
import org.jetbrains.mps.openapi.persistence.UnsupportedDataSourceException;
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType;
import org.xml.sax.InputSource;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Stream;

import static org.jetbrains.mps.openapi.persistence.MFProblem.NO_PROBLEM;

/**
 * evgeny, 6/3/13
 */
public class FilePerRootModelFactory implements ModelFactory, IndexAwareModelFactory, DataLocationAwareModelFactory {
  private static final Logger LOG = Logger.getLogger(FilePerRootModelFactory.class);

  private final PersistenceFacade myPersistenceRegistry;

  public FilePerRootModelFactory(@NotNull PersistenceFacade persistenceFacade) {
    myPersistenceRegistry = persistenceFacade;
  }

  @NotNull
  @Override
  public MFProblem canCreate(@NotNull DataSource dataSource, @NotNull SModelName modelName, @NotNull ModelLoadingOption... options) {
    if (!supports(dataSource)) {
      return new DataSourceNotSupportedProblem(dataSource);
    }
    if (dataSource instanceof FileSystemBasedDataSource) {
      FileSystemBasedDataSource dataSource1 = (FileSystemBasedDataSource) dataSource;
      if (dataSource1.exists()) {
        return () -> "Some of the data source files already exist on the disk";
      }
    }
    return NO_PROBLEM;
  }

  @Override
  public boolean supports(@NotNull DataSource dataSource) {
    return dataSource instanceof MultiStreamDataSource;
  }

  @NotNull
  @Override
  public SModel create(@NotNull DataSource dataSource, @NotNull SModelName modelName, @NotNull ModelLoadingOption... options) throws
                                                                                                                              UnsupportedDataSourceException {
    if (!supports(dataSource)) {
      throw new UnsupportedDataSourceException(dataSource);
    }

    SModelReference ref = myPersistenceRegistry.createModelReference(null, SModelId.generate(), modelName);
    final SModelHeader header = SModelHeader.create(ModelPersistence.LAST_VERSION);
    header.setModelReference(ref);
    return new DefaultSModelDescriptor(new PersistenceFacility(this, (MultiStreamDataSource) dataSource), header);
  }

  @NotNull
  @Override
  public SModel load(@NotNull DataSource dataSource, @NotNull ModelLoadingOption... options) throws UnsupportedDataSourceException,
                                                                                                    ModelLoadException {
    if (!supports(dataSource)) {
      if (dataSource instanceof StreamDataSource sds && ContentOption.CONTENT_ONLY.presentIn(options)) {
        try (InputStream is = sds.openInputStream()) {
          SModelData modelData = ModelPersistence.getModelData(is, MetaInfoLoadingOption.KEEP_READ.presentIn(options));
          if (modelData instanceof DefaultSModel dsm) {
            return new ContentOnlySModelDescriptor(dsm, this);
          } else {
            // no fall-through as the rest of the code needs MultiStreamDataSource
            throw new ModelLoadException("Unexpected model data: " + modelData);
          }
        } catch (IOException | ModelReadException ex) {
          throw new ModelLoadException(ex.getMessage());
        }
      }
      throw new UnsupportedDataSourceException(dataSource);
    }

    MultiStreamDataSource source = (MultiStreamDataSource) dataSource;
    PersistenceFacility pf = new PersistenceFacility(this, source);
    SModelHeader header;
    try {
      header = pf.readHeader();
    } catch (ModelReadException mre) {
      LOG.error("Can't read model: ", mre);
      throw new ModelLoadException("Can't read model: ", Collections.emptyList(), mre);
    }

    if (header.getModelReference() == null) {
      throw new ModelLoadException("Could not find model reference in the model header while loading from the " + source);
    }

    if (MetaInfoLoadingOption.KEEP_READ.presentIn(options)) {
      header.setMetaInfoProvider(new StuffedMetaModelInfo(new RegularMetaModelInfo()));
    }

    if (ContentOption.CONTENT_ONLY.presentIn(options)) {
      try {
        ModelLoadResult result = pf.readModel(header, ModelLoadingState.FULLY_LOADED);
        return new ContentOnlySModelDescriptor((DefaultSModel) result.getModel(), this);
      } catch (ModelReadException mre) {
        throw new ModelLoadException("Can't read model: ", Collections.emptyList(), mre);
      }
    }

    LOG.debug("Getting model " + header.getModelReference() + " from " + source.getLocation());
    return new DefaultSModelDescriptor(pf, header);
  }

  @Override
  public void save(@NotNull SModel model, @NotNull DataSource dataSource, @Nullable ModelSaveOption... options) throws ModelSaveException {
    if (!supports(dataSource)) {
      String m = String.format("Incompatible data source %s(%s) for model %s", dataSource.getType(), dataSource.getLocation(), model.getReference());
      throw new ModelSaveException(PersistenceProblem.errorSave(m, dataSource));
    }

    IModelWriter mw = DefaultModelPersistence.deduceWriterVersion(model, dataSource, options);
    Map<String, Document> result = mw.saveModelAsMultiStream(((SModelBase) model).getSModel());

    Set<StreamDataSource> toRemove = new HashSet<>();
    ((MultiStreamDataSource) dataSource).getSubStreams().filter(s -> !result.containsKey(s.getStreamName())).forEach(toRemove::add);

    toRemove.stream().filter(DisposableDataSource.class::isInstance).map(DisposableDataSource.class::cast).forEach(DisposableDataSource::delete);

    ArrayList<SModel.Problem> writeIssues = new ArrayList<>();
    for (Entry<String, Document> entry : result.entrySet()) {
      try {
        JDOMUtil.writeDocument(entry.getValue(), (MultiStreamDataSource) dataSource, entry.getKey());
      } catch (IOException ex) {
        writeIssues.add(PersistenceProblem.errorSave(ex.getMessage(), dataSource));
      }
    }
    if (!writeIssues.isEmpty()) {
      throw new ModelSaveException("Failed to persist individual streams of %s".formatted(model.getReference()), writeIssues);
    }
  }

  @NotNull
  @Override
  public ModelFactoryType getType() {
    return PreinstalledModelFactoryTypes.PER_ROOT_XML;
  }

  @NotNull
  @Override
  public List<DataSourceType> getPreferredDataSourceTypes() {
    return Arrays.asList(PreinstalledDataSourceTypes.MODEL,
                         PreinstalledDataSourceTypes.FOLDER,
                         PreinstalledDataSourceTypes.MODEL_ROOT);
  }

  @Override
  public void index(@NotNull InputStream input, @NotNull Callback callback) throws IOException {
    ModelPersistence.index(input, callback);
  }

  @Override
  public SModelData parseSingleStream(@NotNull String name, @NotNull InputStream input) throws IOException, ModelReadException {
    return ModelPersistence.getModelData(input, false);
  }

  @Override
  public boolean needsUpgrade(@NotNull DataSource dataSource) throws IOException {
    if (!supports(dataSource)) {
      throw new UnsupportedDataSourceException(dataSource);
    }

    InputStream in = null;
    try {
      final StreamDataSource dotModelStream = ((MultiStreamDataSource) dataSource).getStreamByName(MPSExtentions.DOT_MODEL_HEADER);
      if (dotModelStream == null) {
        throw new IOException(String.format("No model found at %s", dataSource.getLocation()));
      }
      in = dotModelStream.openInputStream();
      InputSource source = new InputSource(new InputStreamReader(in, FileUtil.DEFAULT_CHARSET));

      // FIXME replace with SingleStreamSource
      SModelHeader header = ModelPersistence.loadDescriptor(source);
      return header.getPersistenceVersion() < ModelPersistence.LAST_VERSION;
    } catch (ModelReadException ex) {
      throw new IOException(ex);
    } finally {
      FileUtil.closeFileSafe(in);
    }
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
    // FIXME seem that we don't handle nodes with the same name correctly. Check NodeHistoryUtil and its use of
    //       FilePerRootFormatUtil.getStreamNames(). Here, all nodes with the same name would retrieve the same stream
    MultiStreamDataSource source = (MultiStreamDataSource) model.getSource();
    String fileName = SPropertyOperations.getString(node.getContainingRoot(), SNodeUtil.property_INamedConcept_name);
    // FIXME FilePerRootFormatUtil.getStreamNames() handles fileName.isEmpty scenario (i.e. not INamedConcept as root), why not here?
    return source.getStreamByName(FilePerRootFormatUtil.asFileName(fileName) + MPSExtentions.DOT_MODEL_ROOT);
  }

  @Nullable
  @Override
  public DataSource getMetaInfoLocation(@NotNull SModel model) {
    MultiStreamDataSource source = getMSource(model);
    if (source == null) {
      return null;
    }
    return source.getStreamByName(MPSExtentions.DOT_MODEL_HEADER);
  }

  @Nullable
  @Override
  public DataSource getDataLocation(@NotNull SModel model) {
    MultiStreamDataSource source = getMSource(model);
    if (source == null) {
      return null;
    }

    return new ReadOnlyMultiStreamDataSource(source.getLocation()) {
      @NotNull
      @Override
      public Stream<StreamDataSource> getSubStreams() {
        return source.getSubStreams()
                     .filter(sds -> !sds.getStreamName().equals(MPSExtentions.DOT_MODEL_HEADER));
      }
    };
  }

  @Nullable
  public MultiStreamDataSource getMSource(@NotNull SModel model) {
    CorrectnessChecker correctnessChecker = new CorrectnessChecker(this);
    correctnessChecker.checkAndWarn(model);
    if (!correctnessChecker.doesMFSupportDS(model)) {
      return null;
    }
    return (MultiStreamDataSource) model.getSource();
  }

  private static class PersistenceFacility extends LazyLoadFacility {
    public PersistenceFacility(@NotNull FilePerRootModelFactory modelFactory, @NotNull MultiStreamDataSource dataSource) {
      super(modelFactory, dataSource, true);
    }

    @NotNull
    private MultiStreamDataSource getSource0() {
      return (MultiStreamDataSource) super.getSource();
    }

    @Override
    public String getModelHash() {
      return getSource0().getSubStreams().map(streamDataSource -> ModelDigestUtil.hash(streamDataSource, true)).filter(Objects::nonNull)
                         .map(hash -> new BigInteger(hash, Character.MAX_RADIX))
                         .reduce(BigInteger.ZERO, BigInteger::xor)
                         .toString(Character.MAX_RADIX);
    }

    @NotNull
    @Override
    public SModelHeader readHeader() throws ModelReadException {
      return FilePerRootFormatUtil.loadDescriptor(getSource0());
    }

    @NotNull
    @Override
    public ModelLoadResult readModel(@NotNull SModelHeader header, @NotNull ModelLoadingState state) throws ModelReadException {
      return FilePerRootFormatUtil.readModel(header, getSource0(), state);
    }
  }
}
