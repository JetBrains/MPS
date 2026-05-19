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
package jetbrains.mps.nodeEditor.cells;

import com.intellij.openapi.util.IconLoader;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.openapi.editor.EditorComponentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorFontMetrics;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.MacrosFactory;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Stream;

public class EditorCell_Image extends EditorCell_Basic {
  private ImageAlignment myAlignment = ImageAlignment.justify;
  private Icon myIcon;

  private int myDescent = -1;
  private boolean myAlignWithText;

  protected EditorCell_Image(EditorContext editorContext, SNode node) {
    super(editorContext, node);
    getStyle().set(StyleAttributes.PUNCTUATION_LEFT, true);
    getStyle().set(StyleAttributes.PUNCTUATION_RIGHT, true);
  }

  /**
   * @param imageFileName path to an image with respect to macros of {@code node's} module.
   */
  public static EditorCell_Image createImageCell(EditorContext editorContext, SNode node, String imageFileName) {
    SModule module = getModule(node);
    if (module == null) {
      return createImageCell(editorContext, node, (Image) null);
    }
    return createImageCell(editorContext, node, new ModuleImageDescriptor(module, imageFileName));
  }

  @Nullable
  private static SModule getModule(SNode node) {
    SModel model = node.getModel();
    if (model == null) {
      return null;
    }
    return model.getModule();
  }

  /**
   * @param imagePath path is expanded with respect to macros of {@code imageModule} context.
   */
  public static EditorCell_Image createImageCell(EditorContext editorContext, SNode node, @NotNull SModule imageModule, String imagePath) {
    return createImageCell(editorContext, node, new ModuleImageDescriptor(imageModule, imagePath));
  }

  public static EditorCell_Image createImageCell(EditorContext editorContext, SNode node, Image image) {
    EditorCell_Image result = new EditorCell_Image(editorContext, node);
    result.setImage(image);
    return result;
  }

  public static EditorCell_Image createImageCell(EditorContext editorContext, SNode node, @NotNull ImageDescriptor image) {
    EditorCell_Image result = new EditorCell_Image(editorContext, node);
    result.setIcon(image.loadIcon(editorContext, node));
    return result;
  }

  @Override
  protected void paintContent(Graphics g, ParentSettings parentSettings) {
    if (myIcon == null) {
      return;
    }
    switch (myAlignment) {
      case justify: {
        if ((myWidth != -1 && myWidth != myIcon.getIconWidth())
            || (myHeight != -1 && myHeight != myIcon.getIconHeight())) {
          paintIconScaled(g);
        } else {
          myIcon.paintIcon(getEditor(), g, myX, myY);
        }
        break;
      }
      case center: {
        int x = myX + (myWidth - myIcon.getIconWidth()) / 2;
        int y = myY + (myHeight - myIcon.getIconHeight()) / 2;
        myIcon.paintIcon(getEditor(), g, x, y);
        break;
      }
      case title: {
        break;
      }
    }
  }

  private void paintIconScaled(Graphics g) {
    int iconWidth = myIcon.getIconWidth();
    int iconHeight = myIcon.getIconHeight();

    if (iconWidth <= 0 || iconHeight <= 0) {
      return;
    }

    double sx = (double) myWidth / (double) iconWidth;
    double sy = (double) myHeight / (double) iconHeight;
    Graphics2D gscaled = (Graphics2D) g.create();
    gscaled.translate(myX, myY);
    gscaled.scale(sx, sy);
    myIcon.paintIcon(getEditor(), gscaled, 0, 0);
  }

  @Override
  protected void relayoutImpl() {
    if (myIcon == null) {
      return;
    }
    if (myAlignment == ImageAlignment.justify) {
      int width = myIcon.getIconWidth();
      int height = myIcon.getIconHeight();
      double scale = myAlignWithText ? fontSizeScale() : 1.0;
      if (width != -1) {
        myWidth = (int) Math.round(width * scale);
      }
      if (height != -1) {
        myHeight = (int) Math.round(height * scale);
      }
    }

    if (!myAlignWithText && myDescent < 0) {
      myDescent = EditorSettings.getInstance().getDefaultEditorFontMetrics().getDescent();
    }
  }

  /**
   * Opt the cell into font-aware sizing and vertical alignment (MPS-32245).
   *
   * <p>When {@code true}:
   * <ul>
   *   <li>The icon is scaled by {@code currentFontSize / 13} so it grows or shrinks
   *       proportionally with the effective editor font size.</li>
   *   <li>The cell's ascent/descent are computed so the icon's vertical center aligns with
   *       the visual center of the surrounding text glyphs.</li>
   * </ul>
   *
   * @param enabled the default is false
   */
  public void setAlignWithText(boolean enabled) {
    myAlignWithText = enabled;
  }

  @Override
  public int getAscent() {
    return myHeight - getDescent();
  }

  @Override
  public int getDescent() {
    if (myAlignWithText) {
      EditorFontMetrics fm = getCurrentEditorFontMetrics();
      return fm.getDescent() + (myHeight - fm.getHeight() + 1/*round up*/) / 2;
    }
    return Math.max(myDescent, 0);
  }

  private EditorFontMetrics getCurrentEditorFontMetrics() {
    EditorSettings settings = EditorSettings.getInstance();
    EditorComponent editor = getEditor();
    if (editor != null) {
      EditorComponentSettings ecs = editor.getEditorComponentSettings();
      return ecs.getFontMetrics(settings.getFontFamily(), Font.PLAIN, ecs.getFontSize());
    }
    return settings.getDefaultEditorFontMetrics();
  }

  private double fontSizeScale() {
    EditorComponent editor = getEditor();
    if (editor == null) {
      return 1.0;
    }
    int currentFontSize = editor.getEditorComponentSettings().getFontSize();
    // icons to be aligned with text are originally designed for fort size 13
    return (double) currentFontSize / 13;
  }

  public void setDescent(int descent) {
    myDescent = descent;
  }

  public void setAlignment(ImageAlignment alignment) {
    myAlignment = alignment;
  }

  protected void setImage(Image image) {
    setIcon(image == null ? null : new ImageIcon(image));
  }

  protected void setIcon(Icon icon) {
    myIcon = icon;
  }

  public Icon getIcon() {
    return myIcon;
  }

  public enum ImageAlignment {
    justify, center, title
  }

  /**
   * Abstracts mechanism to describe image source and control its loading
   */
  public interface ImageDescriptor {
    @Nullable
    Icon loadIcon(EditorContext context, SNode node);
  }

  /**
   * Loads an image from a path expanded with respect to module macros.
   */
  public static final class ModuleImageDescriptor implements ImageDescriptor {

    private final SModule myModule;
    private final SModuleReference myModuleRef;
    private final String myPath;

    public ModuleImageDescriptor(@NotNull SModule module, @Nullable String path) {
      myModule = module;
      myModuleRef = null;
      myPath = path;
    }

    public ModuleImageDescriptor(@NotNull SModuleReference module, @Nullable String path) {
      myModuleRef = module;
      myModule = null;
      myPath = path;
    }

    @Nullable
    @Override
    public Icon loadIcon(EditorContext context, SNode node) {
      assert myModule != null || myModuleRef != null;
      // try deployed location first
      // Note, we don't care if myModuleRef points to deployed, packaged module or one from sources of an actual project.
      // For module deployed from sources, there's IClassPathItem extension to supply resources under ${module} location, see LocalResourceClassPathItem.
      // For packaged deployed modules, it's build language responsibility to add respective icons into jar with binaries.
      if (myPath.startsWith(MacrosFactory.MODULE) && myPath.length() > MacrosFactory.MODULE.length()+1) {
        // there's '/' b/w module macro and the rest of the path, we gonna strip it off, make sure we don't get out of bounds
        AtomicReference<Icon> loaded = new AtomicReference<>(null);
        LanguageRegistry.getInstance(context.getRepository()).withModuleRuntime(Stream.of(myModuleRef == null ? myModule.getModuleReference() : myModuleRef), mr -> {
          final String asAbsoluteResourcePath = myPath.substring(MacrosFactory.MODULE.length() );
          // see below for explanation why do we handle svg and png in a different way
          try (InputStream is = mr.getOwnResource(asAbsoluteResourcePath.substring(1))) {
            // not sure if I need to remove leading slash, just seen iconUtil.kt strips one off before passing the value to CL.getResource(), and I know
            // "startup.properties" lookup doesn't use one. However, seems that CL shall take absolute path, need to investigate more.
            //
            // getOwnResource() helps us make sure file exists (IconLoader.findIcon, despite its contract, give != null value for non-existent resource)
            if (asAbsoluteResourcePath.toLowerCase().endsWith(".svg") || asAbsoluteResourcePath.toLowerCase().endsWith(".png")) {
              loaded.set(IconLoader.findIcon(asAbsoluteResourcePath, mr.getModuleClassLoader()));
            } else {
              loaded.set(new ImageIcon(is.readAllBytes(), asAbsoluteResourcePath));
            }
          } catch (IOException e) {
            LOG.info(String.format("Can't load icon [%s]%s", mr.getSourceModule().getModuleName(), asAbsoluteResourcePath));
            // ignore, try regular file and macro resolution
          }
        });
        if (loaded.get() != null) {
          return loaded.get();
        }
      }
      SModule m = myModule != null ? myModule : myModuleRef.resolve(context.getRepository());
      if (m == null) {
        return null;
      }
      String fullPath = MacrosFactory.forModule(m).expandPath(myPath);
      if (fullPath == null || !(m instanceof AbstractModule) || ((AbstractModule) m).getDescriptorFile() == null) {
        return null;
      }

      jetbrains.mps.nodeEditor.EditorContext ec = (jetbrains.mps.nodeEditor.EditorContext) context;
      Map<String, Icon> iconCache = ec.getIconCache();
      if (!iconCache.containsKey(fullPath)) {
        // MPS-29452: we need this to work with bundled icons (java.io.File -> URL doesn't mix well with jar protocol),
        //            therefore we stick to IFile that is capable constructing proper URL.
        //            However, perhaps using InputStream/byte[] instead of URL is a better alternative
        //            (at least ImageIcon can handle these). AbstractModule.getOwnResource():InputStream?
        // Broader context: here we need to reference resource both from source and deployed modules. For deployed
        // resource scenario, there's IconResource; there's no proper one when we need both. Consider hiding this logic
        // into EditorContext implementation (which could use ModuleRuntime.getOwnResource() for deployed modules)
        // or even under some IconManager (BaseIconManager alternative) so that there's single place to look for modules
        // come and go.
        IFile iconFile = ((AbstractModule) m).getDescriptorFile().getFileSystem().findExistingFile(fullPath);
        if (iconFile == null) {
          LOG.info(String.format("Can't find image '%s' in module %s", myPath, m.getModuleName()));
          return null;
        }

        try {
          URL iconUrl = iconFile.getUrl();
          String extension = FileUtil.getExtension(iconFile.getName());
          if ("svg".equalsIgnoreCase(extension) || "png".equalsIgnoreCase(extension)) {
            // IconLoader only supports SVG and PNG, which are also the supported formats for MPS images
            iconCache.put(fullPath, IconLoader.findIcon(iconUrl, false));
          } else {
            // ImageIcon supports more formats than IconLoader, but not SVG, which is why we use both here
            iconCache.put(fullPath, new ImageIcon(iconUrl));
          }
        } catch (MalformedURLException e) {
          LOG.error("can't convert icon path to url: " + fullPath, e);
        }
      }
      return iconCache.get(fullPath);
    }
  }
}
