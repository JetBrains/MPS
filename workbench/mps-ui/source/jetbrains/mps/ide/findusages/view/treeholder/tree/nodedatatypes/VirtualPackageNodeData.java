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
package jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes;

import jetbrains.mps.ide.findusages.CantLoadSomethingException;
import jetbrains.mps.ide.findusages.CantSaveSomethingException;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathItemRole;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.project.Project;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;

public class VirtualPackageNodeData extends BaseNodeData {
  private static final String PACKAGE = "package";

  private String myPackageName;

  public VirtualPackageNodeData(PathItemRole role, @NotNull String qualifiedName, @NotNull String displayName, boolean resultsSection) {
    super(role, displayName, null, false, resultsSection);
    myPackageName = qualifiedName;
  }

  public VirtualPackageNodeData(Element element, Project project) throws CantLoadSomethingException {
    read(element, project);
  }

  @Override
  public Icon getIcon(PresentationContext presentationContext) {
    return IdeIcons.CLOSED_FOLDER;
  }

  @Override
  public Object getIdObject() {
    return myPackageName;
  }

  @Override
  public void write(Element element, Project project) throws CantSaveSomethingException {
    super.write(element, project);
    element.setAttribute(PACKAGE, myPackageName);
  }

  @Override
  public void read(Element element, Project project) throws CantLoadSomethingException {
    super.read(element, project);
    myPackageName = element.getAttributeValue(PACKAGE);
    if (myPackageName == null) {
      myPackageName = getCaption() != null ? getCaption() : "";
    }
  }
}
