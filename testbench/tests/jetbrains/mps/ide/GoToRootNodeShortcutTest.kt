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
package jetbrains.mps.ide

import com.intellij.openapi.actionSystem.ActionManager
import com.intellij.openapi.actionSystem.AnAction
import com.intellij.openapi.actionSystem.DataContext
import com.intellij.openapi.actionSystem.KeyboardShortcut
import com.intellij.openapi.actionSystem.impl.SimpleDataContext
import com.intellij.openapi.keymap.KeymapManager
import com.intellij.testFramework.TestActionEvent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import javax.swing.KeyStroke

/**
 * MPS assigns its own "Go to Root Node" action to keystrokes the platform keymaps already use for `GotoClass`:
 * `ctrl N` in `$default` and `meta O` in `Mac OS X 10.5+`
 * (see the KeymapChanges of the `jetbrains.mps.ide.actions` model). MPS registers those through
 * [jetbrains.mps.plugins.actions.BaseKeymapChanges], which only ever touches the shortcuts of the MPS action
 * itself, so the platform action keeps its binding and both compete for the keystroke.
 *
 * `IdeKeyEventDispatcher` performs the *first enabled* action bound to a keystroke - it does not ask the user to
 * disambiguate. A platform action left enabled on one of these keystrokes therefore shadows "Go to Root Node",
 * which is what MPS-40019 reports: `Ctrl+N` / `Cmd+O` opened the Search Everywhere "Classes" tab instead.
 * MPS neutralizes such platform actions in `DisabledLangActions.xml`, and this test guards that it keeps doing so.
 */
class GoToRootNodeShortcutTest : ModuleInProjectTest() {

  @Test
  fun noPlatformActionCompetesForGoToRootNodeShortcut() {
    val actionManager = ActionManager.getInstance()
    val dataContext = SimpleDataContext.getProjectContext(myProject.project)
    val checkedKeymaps = mutableListOf<String>()
    val shadowing = mutableListOf<String>()

    for ((keymapName, keystroke) in GO_TO_ROOT_NODE_KEYSTROKES) {
      // A bundled macOS keymap is not loaded on a non-macOS host unless the application runs headless. When the
      // keymap is absent there is no binding to compete for, so there is nothing to assert.
      val keymap = KeymapManager.getInstance().getKeymap(keymapName) ?: continue
      checkedKeymaps.add(keymapName)

      val shortcut = KeyboardShortcut(KeyStroke.getKeyStroke(keystroke), null)
      keymap.getActionIdList(shortcut)
        .filterNot { it.startsWith(MPS_GO_TO_ROOT_NODE_ACTION_ID) }
        .filter { isEnabled(actionManager.getAction(it), dataContext) }
        .forEach { shadowing.add("$keymapName / $keystroke: $it") }
    }

    assertTrue("No keymap was available to check, the test asserted nothing", checkedKeymaps.isNotEmpty())
    assertEquals(
      "Enabled actions shadow MPS 'Go to Root Node' on its own keystrokes." +
        " Neutralize them in DisabledLangActions.xml (see MPS-40019)",
      emptyList<String>(),
      shadowing
    )
  }

  private fun isEnabled(action: AnAction?, dataContext: DataContext): Boolean {
    if (action == null) {
      // A keymap may mention an action id no loaded plugin provides.
      return false
    }
    val event = TestActionEvent.createTestEvent(action, dataContext)
    action.update(event)
    return event.presentation.isEnabled
  }

  companion object {
    /** Parameterized MPS actions get their parameters appended to the class name, hence a prefix match. */
    private const val MPS_GO_TO_ROOT_NODE_ACTION_ID = "jetbrains.mps.ide.actions.GoToRootNode_Action"

    private val GO_TO_ROOT_NODE_KEYSTROKES = listOf(
      KeymapManager.DEFAULT_IDEA_KEYMAP to "ctrl N",
      KeymapManager.MAC_OS_X_10_5_PLUS_KEYMAP to "meta O",
    )
  }
}
