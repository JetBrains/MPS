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
package jetbrains.mps.workbench.index;

import com.intellij.openapi.fileTypes.FileType;
import com.intellij.openapi.progress.ProcessCanceledException;
import com.intellij.openapi.project.IndexNotReadyException;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Key;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.indexing.FileBasedIndex;
import com.intellij.util.indexing.FileBasedIndex.InputFilter;
import com.intellij.util.indexing.FileContent;
import com.intellij.util.indexing.ID;
import com.intellij.util.indexing.SingleEntryFileBasedIndexExtension;
import com.intellij.util.indexing.SingleEntryIndexer;
import com.intellij.util.io.DataExternalizer;
import jetbrains.mps.components.ComponentHost;
import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.extapi.persistence.ModelFactoryService;
import jetbrains.mps.extapi.persistence.datasource.DataSourceFactoryFromPath;
import jetbrains.mps.extapi.persistence.datasource.DataSourceFactoryRuleService;
import jetbrains.mps.fileTypes.MPSFileTypeFactory;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.persistence.IndexAwareModelFactory;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.persistence.def.ModelReadException;
import jetbrains.mps.vfs.path.Path;
import jetbrains.mps.vfs.path.PathFormats;
import jetbrains.mps.workbench.goTo.index.SNodeDescriptor;
import jetbrains.mps.workbench.index.ModelRootsData.Entry;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelFactory;
import org.jetbrains.mps.openapi.persistence.NavigationParticipant.NavigationTarget;
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * Indexes .mps files, producing an object that keeps all navigable model roots.
 * Note, it's not a true index, rather a caching mechanism that employs indexing infrastructure (as any
 * SingleEntryFileBasedIndexExtension does). There's only one key to access indexed values, and it's id of the virtual file itself.
 * It's not an index as one needs to know file to obtain the key (look at {@link #getValues(Project, VirtualFile)}).
 */
public class RootNodeNameIndex extends SingleEntryFileBasedIndexExtension<ModelRootsData> {
  @NonNls
  private static final ID<Integer, ModelRootsData> NAME = ID.create("mps.RootNodeName");
  private static final Logger LOG = Logger.getLogger(RootNodeNameIndex.class);
  private static final Key<SModelData> PARSED_MODEL = new Key<>("parsed-model");

  public static SModelData doModelParsing(ComponentHost mpsPlatform, FileContent inputData) {
    SModelData modelData = inputData.getUserData(PARSED_MODEL);

    if (modelData == null) {
      try {
        Path path = constructPathFromData(inputData);
        var dataSourceFactory = getDataSourceFactory(mpsPlatform, path);
        if (dataSourceFactory == null) {
          return null;
        }
        DataSource dataSource = dataSourceFactory.create(path);
        DataSourceType type = dataSource.getType();
        if (type == null) {
          return null;
        }
        ModelFactory factory = mpsPlatform.findComponent(ModelFactoryService.class).getDefaultModelFactory(type);
        if (factory == null) {
          return null;
        }
        // FIXME seems that can be replaced with regular load(StreamDataSource, ContentOption.CONTENT_ONLY)
        if (!(factory instanceof IndexAwareModelFactory)) {
          return null;
        }
        modelData = ((IndexAwareModelFactory) factory).parseSingleStream(inputData.getFileName(), new ByteArrayInputStream(inputData.getContent()));
        if (modelData == null) {
          return null;
        }
        inputData.putUserData(PARSED_MODEL, modelData);
      } catch (ModelReadException e) {
        //do nothing. This may happen e.g. when the file is created and not yet filled with content
      } catch (IOException e) {
        LOG.error(String.format("Failed to index %s", inputData.getFileName()), e);
        return null;
      }
    }
    return modelData;
  }

  @Nullable
  private static DataSourceFactoryFromPath getDataSourceFactory(ComponentHost mpsPlatform, Path path) {
    var service = mpsPlatform.findComponent(DataSourceFactoryRuleService.class);
    var dataSourceFactory = service.getFactory(path);
    if (dataSourceFactory == null) {
      LOG.error("Data Source Factory is not found for " + path);
    }
    return dataSourceFactory;
  }

  @Nullable
  private static Path constructPathFromData(FileContent inputData) {
    String path = inputData.getFile().getPath();
    return PathFormats.UNIX.fromString(path);
  }

  /**
   * @return cached, aka 'indexed' values associated with the model file, ready for navigation
   */
  @NotNull
  public static Collection<NavigationTarget> getValues(@NotNull Project project, @NotNull VirtualFile modelFile) {
    Collection<ModelRootsData> descriptors = Collections.emptyList();
    try {
      descriptors = FileBasedIndex.getInstance().getFileData(RootNodeNameIndex.NAME, modelFile, project).values();
    } catch (ProcessCanceledException | IndexNotReadyException ex) {
      // ignore, fall-through
    }
    if (descriptors.isEmpty()) {
      return Collections.emptyList();
    }
    if (descriptors.size() > 1) {
      final String m = descriptors.stream().map(ModelRootsData::getModelReference).map(Objects::toString).collect(Collectors.joining(","));
      LOG.warning(String.format("Unexpected %d sets of data inside a single model file: %s", descriptors.size(), m));
    }
    ModelRootsData modelEntry = descriptors.iterator().next(); // key is unique for the model
    Collection<Entry> entries = modelEntry.getEntries();
    ArrayList<NavigationTarget> rv = new ArrayList<>(entries.size());
    for (Entry e : entries) {
      rv.add(new SNodeDescriptor(e.myName, e.myConcept, new SNodePointer(modelEntry.getModelReference(), e.myNode)));
    }
    return rv;
  }

  @Override
  @NotNull
  public ID<Integer, ModelRootsData> getName() {
    return NAME;
  }

  @NotNull
  @Override
  public DataExternalizer<ModelRootsData> getValueExternalizer() {
    return new ModelRootsExternalizer();
  }

  @NotNull
  @Override
  public SingleEntryIndexer<ModelRootsData> getIndexer() {
    return new MyIndexer(MPSCoreComponents.getInstance().getPlatform());
  }

  @NotNull
  @Override
  public InputFilter getInputFilter() {
    return new MyInputFilter();
  }

  @Override
  public int getVersion() {
    return 1;
  }

  private static class MyInputFilter implements FileBasedIndex.InputFilter {
    @Override
    public boolean acceptInput(@NotNull VirtualFile file) {
      FileType fileType = file.getFileType();
      return MPSFileTypeFactory.MPS_FILE_TYPE.equals(fileType) || MPSFileTypeFactory.MPS_BINARY_FILE_TYPE.equals(fileType);
    }
  }

  private static class MyIndexer extends SingleEntryIndexer<ModelRootsData> {
    private final ComponentHost myPlatform;

    private MyIndexer(ComponentHost platform) {
      super(false);
      myPlatform = platform;
    }

    @Override
    protected ModelRootsData computeValue(@NotNull final FileContent inputData) {
      try {
        // XXX Perhaps, shall extend xml.persistence.Indexer with proper methods (name, concept) not to read as complete SModel?
        SModelData modelData = doModelParsing(myPlatform, inputData);
        if (modelData == null) {
          // e.g. model with merge conflict
          return null;
        }

        ModelRootsData data = new ModelRootsData(modelData);
        // it looks there's no reason to serialize data for empty model
        return data.isEmpty() ? null : data;
      } catch (Exception e) {
        LOG.error("Cannot index model file " + inputData.getFileName() , e);
      }
      return null;
    }
  }
}
