/*
 * Copyright 2003-2017 JetBrains s.r.o.
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
package jetbrains.mps.plugins.tool;

import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.ToolWindowAnchor;
import jetbrains.mps.ide.tools.BaseTool;

import javax.swing.Icon;
import javax.swing.KeyStroke;
import java.util.Map;

public abstract class GeneratedTool extends BaseTool {

  protected GeneratedTool(Project project, String id, Map<String, KeyStroke> shortcutsByKeymap, Icon icon, ToolWindowAnchor anchor, boolean canCloseContent) {
    this(project, id, shortcutsByKeymap, icon, anchor, canCloseContent, false);
  }

  protected GeneratedTool(Project project, String id, Map<String, KeyStroke> shortcutsByKeymap, Icon icon, ToolWindowAnchor anchor, boolean canCloseContent, boolean sideTool) {
    super(project, id, shortcutsByKeymap, icon, anchor, sideTool, canCloseContent);
  }
}
