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
package jetbrains.mps.smodel.persistence.def;

import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.persistence.IndexAwareModelFactory.Callback;
import jetbrains.mps.persistence.MetaModelInfoProvider;
import jetbrains.mps.persistence.MetaModelInfoProvider.RegularMetaModelInfo;
import jetbrains.mps.persistence.MetaModelInfoProvider.StuffedMetaModelInfo;
import jetbrains.mps.persistence.xml.XMLPersistence;
import jetbrains.mps.persistence.xml.XMLPersistence.Indexer;
import jetbrains.mps.smodel.DefaultSModel;
import jetbrains.mps.smodel.SModelHeader;
import jetbrains.mps.smodel.loading.ModelLoadResult;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.smodel.persistence.def.v9.ModelPersistence9;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.JDOMUtil;
import jetbrains.mps.util.StringUtil;
import jetbrains.mps.util.xml.BreakParseSAXException;
import jetbrains.mps.util.xml.XMLSAXHandler;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.persistence.StreamDataSource;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;

/**
 * ModelPersistence handles all XML persistence versions supported by current MPS installation.
 * The range of supported versions is [FIRST_SUPPORTED_VERSION, LAST_VERSION].
 * MPS must be able to read any of these persistence versions and write the last one.
 * <p/>
 * The "previous" persistence version being writable is not a must, but it is better
 * to support it to have less moments when we accidentally need to convert
 * between persistence versions. E.g. to be able to fix model before migration from previous
 * version and save it in old persistence, or to merge two non-migrated branches
 * without converting persistence.
 * <p/>
 * It is supposed that only one or two persistence versions are supported:
 * the last persistence used by previous MPS version (to read and
 * migrate project created in the previous version, and, sometimes,
 * a new persistence introduced in current version.
 * NOTE this is not mandatory, we can support more than two versions.
 * <p/>
 * We can't support full functionality on all created persistence versions as the change
 * in persistence is actually made because of change in SModel. So, we can't save
 * actual SModel to a very old persistence or even read all the information
 * from old persistence into a new SModel. The good thing about that is that we
 * can "partially" support very old persistence versions where we might need such a support.
 * See {@code VCSPersistenceSupport} for an example.
 */
public class ModelPersistence {
  private static final Logger LOG = Logger.getLogger(ModelPersistence.class);

  public static final String MODEL = "model";
  public static final String REF = "ref";
  public static final String MODEL_UID = "modelUID";
  public static final String NAME = "name";
  public static final String VALUE = "value";

  public static final String PERSISTENCE = "persistence";
  public static final String PERSISTENCE_VERSION = "version";

  // attribute for <model> tag we use to denote type of per-root content (header or a root).
  // have to process individually not to get the value into header's properties (i.e. until we keep the code to
  // copy <model> attributes as header's properties)
  public static final String PER_ROOT_CONTENT = "content";

  public static final int FIRST_SUPPORTED_VERSION = 9;
  public static final int LAST_VERSION = 9;

  private static final int HEADER_READ_LIMIT = 1 << 16; // allow for huge headers

  public static boolean isSupported(int version) {
    return version >= FIRST_SUPPORTED_VERSION && version <= LAST_VERSION;
  }

  @Nullable
  public static IModelPersistence getPersistence(int version) {
    if (version == 9) {
      return new ModelPersistence9();
    }

    assert !isSupported(version) : "inconsistent ModelPersistence.isSupported and .getPersistence. Version=" + version;
    // callers generally handle null return value, no reason to frighten user away with a throwable in the log. Is there need for the message at all?
    LOG.debug("Unknown persistence version requested: " + version, new Throwable());
    return null;
  }

  @NotNull
  public static SModelHeader loadDescriptor(InputSource source) throws ModelReadException {
    try {
      SModelHeader result = new SModelHeader();
      parseAndHandleExceptions(source, new HeaderOnlyHandler(result));
      return result;
    } catch (Exception ex) {
      Throwable th = ex.getCause() == null ? ex : ex.getCause();
      throw new ModelReadException(String.format("Failed to read model header: %s", th.getMessage()), th);
    }
  }

  @NotNull
  public static SModelHeader loadDescriptor(StreamDataSource source) throws ModelReadException {
    try (InputStream in = source.openInputStream()) {
      final SModelHeader result = new SModelHeader();
      parseAndHandleExceptions(new InputSource(new InputStreamReader(in, FileUtil.DEFAULT_CHARSET)), new HeaderOnlyHandler(result));
      return result;
    } catch (Exception e) {
      Throwable th = e.getCause() == null ? e : e.getCause();
      throw new ModelReadException(String.format("Couldn't read descriptor from %s: %s", source.getLocation(), th.getMessage()), th);
    }
  }

  private static ModelLoadResult readModel(@NotNull SModelHeader header, @NotNull InputSource source, ModelLoadingState state) throws ModelReadException {
    int ver = header.getPersistenceVersion();
    if (ver < 0) {
      throw new ModelReadException("Couldn't read model because of unknown persistence version", null);
    }

    IModelPersistence mp;
    if (!isSupported(ver) || (mp = getPersistence(ver)) == null) {
      String m = "Can not find appropriate persistence version for model %s (requested:%d)\n Use newer version of JetBrains MPS to load this model.";
      throw new PersistenceVersionNotFoundException(String.format(m, header.getModelReference(), ver), header.getModelReference());
    }

    XMLSAXHandler<ModelLoadResult> handler = mp.getModelReaderHandler(state, header);
    if (handler == null) {
      throw new ModelReadException("Can not read model header", null, header.getModelReference());
    }
    try {
      parseAndHandleExceptions(source, handler);
      // in case persistence version could change during IModelPersistence activities, might need to update header:
      // header.setPersistenceVersion(mp.getVersion());
      return handler.getResult();
    } catch (Exception ex) {
      Throwable th = ex.getCause() == null ? ex : ex.getCause();
      final String causeText = th.getMessage() == null ? th.getClass().getSimpleName() : th.getMessage();
      throw new ModelReadException(String.format("Failed to load model: %s", causeText), th, header);
    }
  }

  @NotNull
  public static ModelLoadResult readModel(@NotNull SModelHeader header, @NotNull StreamDataSource dataSource, ModelLoadingState state) throws
                                                                                                                                       ModelReadException {
    InputStream in = null;
    try {
      in = dataSource.openInputStream();
      InputSource source = new InputSource(new InputStreamReader(in, FileUtil.DEFAULT_CHARSET));
      return readModel(header, source, state);
    } catch (IOException e) {
      throw new ModelReadException("Couldn't read model: " + e.getMessage(), e, header);
    } finally {
      FileUtil.closeFileSafe(in);
    }
  }

  /**
   * DO NOT USE THIS METHOD OUTSIDE OF MPS
   *
   * This is internal contract how we pass {@link MetaModelInfoProvider} instances around
   */
  @NotNull
  public static MetaModelInfoProvider mmiProviderFor(SModelData model) {
    final SModelHeader header = model instanceof DefaultSModel ? ((DefaultSModel) model).getSModelHeader() : null;
    if (header != null && header.getMetaInfoProvider() != null) {
      return header.getMetaInfoProvider();
    } else {
      return new RegularMetaModelInfo();
    }
  }

  @NotNull
  public static DefaultSModel readModel(@NotNull final StreamDataSource source, boolean interfaceOnly) throws ModelReadException {
    SModelHeader header = loadDescriptor(source);
    ModelLoadingState state = interfaceOnly ? ModelLoadingState.INTERFACE_LOADED : ModelLoadingState.FULLY_LOADED;
    return (DefaultSModel) readModel(header, source, state).getModel();
  }

  @NotNull
  public static DefaultSModel readModel(@NotNull final String content, boolean interfaceOnly) throws ModelReadException {
    SModelHeader header = loadDescriptor(new InputSource(new StringReader(content)));
    ModelLoadingState state = interfaceOnly ? ModelLoadingState.INTERFACE_LOADED : ModelLoadingState.FULLY_LOADED;
    return (DefaultSModel) readModel(header, new InputSource(new StringReader(content)), state).getModel();
  }


  // propagates exceptions that had happened during read, except for special case when we deliberately stop parsing process
  // wrap certain errors as exceptions to facilitate broken model instead of broken MPS
  static void parseAndHandleExceptions(InputSource source, DefaultHandler handler) throws Exception {
    try {
      JDOMUtil.createSAXParser().parse(source, handler);
    } catch (BreakParseSAXException e) {
      /* used to break SAX parsing flow */
    } catch (AssertionError er) {
      // just in case something goes wrong deep inside our persistence implementation, let MPS go on with broken model
      throw new Exception(er);
    }
  }


  private static void assertMarkSupported(InputStream stream) {
    // Both BufferedInputStream and ByteArrayInputStream do support marks, latter without limit.
    assert stream.markSupported() : "XML model persistence reads the stream twice (to parse header and to figure out persistence version)";
  }

  public static void index(InputStream data, Callback newConsumer) throws IOException {
    assertMarkSupported(data);
    try {
      SModelHeader header = new SModelHeader();
      data.mark(HEADER_READ_LIMIT);
      InputSource source = new InputSource(new InputStreamReader(data, FileUtil.DEFAULT_CHARSET));
      parseAndHandleExceptions(source, new HeaderOnlyHandler(header));
      IModelPersistence mp = getPersistence(header.getPersistenceVersion());
      if (!(mp instanceof XMLPersistence)) {
        LOG.warning("Can't index old persistence. Please update persistence of old models.\n" +
                 "Persistence version: " + header.getPersistenceVersion() + "\n" +
                 "Model: " + header.getModelReference().getModelName());
        return;
      }

      data.reset();
      Indexer indexSupport = ((XMLPersistence) mp).getIndexSupport(newConsumer);
      indexSupport.index(new InputStreamReader(data, FileUtil.DEFAULT_CHARSET));
    } catch (IOException ex) {
      throw ex;
    } catch (Exception ex) {
      Throwable th = ex.getCause() == null ? ex : ex.getCause();
      throw new IOException(th);
    }
  }

  /**
   * Loads model data from input InputStream. The stream must support mark/reset and remain usable after close,
   * as SAX parser closes stream after reading the header.
   */
  public static SModelData getModelData(@NotNull InputStream input, boolean keepMetaModelInfo) throws IOException, ModelReadException {
    assertMarkSupported(input);
    input.mark(HEADER_READ_LIMIT);
    SModelHeader header = loadDescriptor(new InputSource(new InputStreamReader(input, FileUtil.DEFAULT_CHARSET)));
    input.reset();
    if (keepMetaModelInfo) {
      header.setMetaInfoProvider(new StuffedMetaModelInfo(new RegularMetaModelInfo()));
    }
    ModelLoadResult result = readModel(header, new InputSource(new InputStreamReader(input, FileUtil.DEFAULT_CHARSET)), ModelLoadingState.FULLY_LOADED);
    return result.getModel();
  }

  /**
   * Loads model data by opening separate data source streams for the header and the complete model.
   * The SAX parser closes the header stream, so file-backed streams cannot be reset and reused
   * for the complete model read.
   */
  public static SModelData getModelData(@NotNull StreamDataSource source, boolean keepMetaModelInfo) throws IOException, ModelReadException {
    SModelHeader header = loadDescriptor(source);
    if (keepMetaModelInfo) {
      header.setMetaInfoProvider(new StuffedMetaModelInfo(new RegularMetaModelInfo()));
    }
    ModelLoadResult result = readModel(header, source, ModelLoadingState.FULLY_LOADED);
    return result.getModel();
  }

  public static class HeaderOnlyHandler extends DefaultHandler {
    private final SModelHeader myResult;

    public HeaderOnlyHandler(SModelHeader result) {
      myResult = result;
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
      //todo this must be simplified as soon as all models are re-saved in last v9 persistence or later
      if (MODEL.equals(qName)) {
        for (int idx = 0; idx < attributes.getLength(); idx++) {
          String name = attributes.getQName(idx);
          String value = attributes.getValue(idx);
          if (MODEL_UID.equals(name) || ModelPersistence9.REF.equals(name)) {
            final SModelReference mr = value == null ? null : PersistenceFacade.getInstance().createModelReference(value);
            myResult.setModelReference(mr);
          } else if (PER_ROOT_CONTENT.equals(name)) {
            // ignore the value; this is our implementation tag, we don't want to have it in header's properties
            // Complete reader uses the value to setContentKind of ModelLoadResult.
            continue;
          } else {
            // XXX in fact, with dedicated <attribute> child support since 2018, we may drop
            //     this fallback here. Perhaps, shall keep one for legacy persistence versions (in VCS)?
            myResult.setOptionalProperty(name, StringUtil.unescapeXml(value));
          }
        }
      } else if (PERSISTENCE.equals(qName)) {
        String s = attributes.getValue(PERSISTENCE_VERSION);
        if (s != null) {
          try {
            myResult.setPersistenceVersion(Integer.parseInt(s));
          } catch (NumberFormatException ignored) {
          }
        }
      } else if ("attribute".equals(qName)) {
        // copied as is from the VCSPersistenceSupport
        myResult.setOptionalProperty(attributes.getValue(NAME), attributes.getValue(VALUE));
      } else {
        // here we supposed to be always finished with the main model tag parsing
        if (myResult.getModelReference() == null) {
          throw new SAXException("Could not find the model reference in the model file header while parsing");
        }
        throw new BreakParseSAXException();
      }
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
      // do not react on element end, when <persistence /> is processed, there are chances for <attribute>
      // let startElement fail once it get to an element it doesn't care about.
    }
  }
}
