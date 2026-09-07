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
package jetbrains.mps.workbench.components;

import com.intellij.ide.BrowserUtil;
import org.jetbrains.annotations.NonNls;

import javax.swing.JLabel;
import java.awt.Cursor;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class RefLabel extends JLabel {
  @NonNls
  private static final String HTML_PREFIX = "<html><body><a href=\"\">";
  @NonNls
  private static final String HTML_SUFIX = "</a></body></html>";

  String myURL;

  public RefLabel(String text, String url) {
    super(text);
    myURL = url;

    addMouseListener(new MouseAdapter() {
      @Override
      public void mouseClicked(MouseEvent e) {
        launchBrowserAction(myURL, "");
      }
    });
  }

  private static void launchBrowserAction(String cmd, String prefix) {
    if (cmd != null && cmd.trim().length() > 0) {
      try {
        BrowserUtil.browse(prefix + cmd.trim());
      }
      catch (IllegalThreadStateException ex) {/* not a problem */}
    }
  }

  @Override
  public void setText(String text) {
    boolean isValid = (text != null && text.trim().length() > 0);
    String setVal = isValid ? HTML_PREFIX + text.trim() + HTML_SUFIX : "";
    super.setText(setVal);
    setCursor(isValid ? Cursor.getPredefinedCursor(Cursor.HAND_CURSOR) : Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
  }
}
