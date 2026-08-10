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
package jetbrains.mps.ide.findusages.view.treeholder.treeview;

import jetbrains.mps.ide.findusages.IExternalizeable;
import jetbrains.mps.project.Project;
import org.jdom.Element;

import java.util.Arrays;

public class ViewOptions implements IExternalizeable {
  private static final String OPTIONS = "options";
  private static final String CATEGORY_OPTION = "category_option";
  private static final String MODULE_OPTION = "module_option";
  private static final String MODEL_OPTION = "model_option";
  private static final String VIRTUAL_PACKAGE_OPTION = "virtual_package_option";
  private static final String ROOT_OPTION = "root_option";
  private static final String PATH_OPTION = "path_option";

  private static final String COUNT_OPTION = "count_option";
  private static final String INFO_OPTION = "info_option";
  private static final String SHOW_SEARCHED_NODES_OPTION = "view_searched_nodes_option";
  private static final String GROUP_SEARCHED_NODES_OPTION = "group_searched_nodes_option";

  private static final String AUTOSCROLL_OPTION = "autoscroll_option";

  public boolean myAutoscrolls = false;

  @Deprecated
  public boolean myCategory = false;
  public boolean myModule = true,
    myModel = true,
    myVirtualPackage = false,
    myRoot = true,
    myNamedPath = false;

  public boolean[] myCategories = new boolean[]{false};

  public boolean myCount = true,
    myInfo = true,
    myShowSearchedNodes = true,
    myGroupSearchedNodes = true;

  public boolean myShowPopupMenu = true;

  public boolean mySearchedNodesButtonsVisible = true;
  public boolean myAdditionalInfoButtonVisible = true;

  public ViewOptions() {

  }

  public ViewOptions(boolean count, boolean info, boolean showSearchedNodes, boolean groupSearchedNodes, boolean searchedNodesButtonsVisible) {
    myCount = count;
    myInfo = info;
    myShowSearchedNodes = showSearchedNodes;
    myGroupSearchedNodes = groupSearchedNodes;
    mySearchedNodesButtonsVisible = searchedNodesButtonsVisible;
  }

  public ViewOptions(boolean count, boolean info, boolean showSearchedNodes, boolean groupSearchedNodes, boolean searchedNodesButtonsVisible, boolean additionalInfoButtonNeeded) {
    this(count, info, showSearchedNodes, groupSearchedNodes, searchedNodesButtonsVisible);
    myAdditionalInfoButtonVisible = additionalInfoButtonNeeded;
  }

  @Override
  public void read(Element element, Project project) {
    Element viewOptionsXML = element.getChild(OPTIONS);
    if (viewOptionsXML == null) {
      return;
    }

    myCategory = Boolean.valueOf(viewOptionsXML.getAttributeValue(CATEGORY_OPTION));
    myModule = Boolean.valueOf(viewOptionsXML.getAttributeValue(MODULE_OPTION));
    myModel = Boolean.valueOf(viewOptionsXML.getAttributeValue(MODEL_OPTION));
    String virtualPackageOption = viewOptionsXML.getAttributeValue(VIRTUAL_PACKAGE_OPTION);
    // Attribute absent means state saved before this option existed: grant the default-on
    // behaviour that fresh Find Usages views get. Only Find Usages persists ViewOptions.
    myVirtualPackage = virtualPackageOption == null || Boolean.parseBoolean(virtualPackageOption);
    myRoot = Boolean.valueOf(viewOptionsXML.getAttributeValue(ROOT_OPTION));
    myNamedPath = Boolean.valueOf(viewOptionsXML.getAttributeValue(PATH_OPTION));

    // TODO persistence for categories array

    myCount = Boolean.valueOf(viewOptionsXML.getAttributeValue(COUNT_OPTION));
    myInfo = Boolean.valueOf(viewOptionsXML.getAttributeValue(INFO_OPTION));
    myShowSearchedNodes = Boolean.valueOf(viewOptionsXML.getAttributeValue(SHOW_SEARCHED_NODES_OPTION));
    myGroupSearchedNodes = Boolean.valueOf(viewOptionsXML.getAttributeValue(GROUP_SEARCHED_NODES_OPTION));

    myAutoscrolls = Boolean.valueOf(viewOptionsXML.getAttributeValue(AUTOSCROLL_OPTION));
  }

  @Override
  public void write(Element element, Project project) {
    Element viewOptionsXML = new Element(OPTIONS);

    viewOptionsXML.setAttribute(CATEGORY_OPTION, Boolean.toString(myCategory));
    viewOptionsXML.setAttribute(MODULE_OPTION, Boolean.toString(myModule));
    viewOptionsXML.setAttribute(MODEL_OPTION, Boolean.toString(myModel));
    viewOptionsXML.setAttribute(VIRTUAL_PACKAGE_OPTION, Boolean.toString(myVirtualPackage));
    viewOptionsXML.setAttribute(ROOT_OPTION, Boolean.toString(myRoot));
    viewOptionsXML.setAttribute(PATH_OPTION, Boolean.toString(myNamedPath));

    // TODO persistence for categories array

    viewOptionsXML.setAttribute(COUNT_OPTION, Boolean.toString(myCount));
    viewOptionsXML.setAttribute(INFO_OPTION, Boolean.toString(myInfo));
    viewOptionsXML.setAttribute(SHOW_SEARCHED_NODES_OPTION, Boolean.toString(myShowSearchedNodes));
    viewOptionsXML.setAttribute(GROUP_SEARCHED_NODES_OPTION, Boolean.toString(myGroupSearchedNodes));

    viewOptionsXML.setAttribute(AUTOSCROLL_OPTION, Boolean.toString(myAutoscrolls));

    element.addContent(viewOptionsXML);
  }

  synchronized public void setValues(ViewOptions options) {
    myAutoscrolls = options.myAutoscrolls;

    myCategory = options.myCategory;
    myModule = options.myModule;
    myModel = options.myModel;
    myVirtualPackage = options.myVirtualPackage;
    myRoot = options.myRoot;
    myNamedPath = options.myNamedPath;
    myCategories = Arrays.copyOf(options.myCategories, options.myCategories.length);

    myCount = options.myCount;
    myInfo = options.myInfo;
    myShowSearchedNodes = options.myShowSearchedNodes;
    myGroupSearchedNodes = options.myGroupSearchedNodes;

    myShowPopupMenu = options.myShowPopupMenu;

    mySearchedNodesButtonsVisible = options.mySearchedNodesButtonsVisible;
    myAdditionalInfoButtonVisible = options.myAdditionalInfoButtonVisible;
  }
}
