/*
 * Copyright 2000-2021 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.fileTypes;

import com.intellij.openapi.fileTypes.FileType;
import com.intellij.openapi.vfs.VirtualFile;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;

public class XMLFileType implements FileType/*, FileTypeIdentifiableByVirtualFile*/ {
  private final String myName;
  private final String myDescription;
  private final String myDefaultExt;
  private final Icon myIcon;

  public XMLFileType(String name, String description, String extension, Icon icon) {
//    super(XMLLanguage.INSTANCE, true);
    myName = name;
    myDescription = description;
    myDefaultExt = extension;
    myIcon = icon;
  }

  @Override
  public boolean isBinary() {
    return false;
  }

  @Override
  public boolean isReadOnly() {
    return true;
  }

  @Override
  public @NonNls @Nullable String getCharset(@NotNull VirtualFile file, byte @NotNull [] content) {
    return null;
  }

  @Override
  public boolean isCharsetHardcoded() {
    return true;
  }

  @Override
  @NotNull
  public String getName() {
    return myName;
  }

  @Override
  @NotNull
  public String getDescription() {
    return myDescription;
  }

  @Override
  public @Nls
  @NotNull String getDisplayName() {
    return getName();
  }

  @Override
  @NotNull
  public String getDefaultExtension() {
    return myDefaultExt;
  }

  @Override
  public Icon getIcon() {
    return myIcon;
  }
}
