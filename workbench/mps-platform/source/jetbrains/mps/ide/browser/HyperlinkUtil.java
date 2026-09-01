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
package jetbrains.mps.ide.browser;

import com.intellij.ide.BrowserUtil;

import javax.swing.JComponent;
import javax.swing.JEditorPane;
import javax.swing.event.HyperlinkEvent;
import javax.swing.event.HyperlinkListener;

public final class HyperlinkUtil {

  private HyperlinkUtil() {
  }

  public static JComponent getHyperlinkComponent(final String url) {
    JEditorPane editorPane = new JEditorPane();
    editorPane.setContentType("text/html");
    editorPane.setText("<a href=\"" + url + "\">" + url + "</a>");
    editorPane.setEditable(false);
    editorPane.addHyperlinkListener(e -> {
      if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
        BrowserUtil.browse(url);
      }
    });
    editorPane.setFocusable(false);
    return editorPane;
  }

}
