/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.findusages.view.icons;

import com.intellij.icons.AllIcons.Actions;
import com.intellij.icons.AllIcons.General;
import com.intellij.icons.AllIcons.Nodes;
import jetbrains.mps.icons.MPSIcons;

import javax.swing.Icon;

public class Icons {
  public static final Icon EXPAND_ICON = Actions.Expandall;
  public static final Icon COLLAPSE_ICON = Actions.Collapseall;
  public static final Icon AUTOSCROLL_ICON = General.AutoscrollToSource;

  public static final Icon CATEGORY_ICON = MPSIcons.Actions.GroupByCategory;
  public static final Icon MODULE_ICON = MPSIcons.Actions.GroupByModule;
  public static final Icon MODEL_ICON = MPSIcons.Actions.GroupByModel;
  public static final Icon VIRTUAL_PACKAGE_ICON = Nodes.Folder;
  public static final Icon ROOT_ICON = MPSIcons.Actions.GroupByRoot;
  public static final Icon PATH_ICON = Actions.GroupByPackage;
}
