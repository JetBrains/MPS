/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.project.modules

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Test

class NewModuleCheckTest {
  @Test
  fun `no module kind accepts path separators in the namespace`() {
    for (check in allModuleKinds()) {
      for (name in listOf("group/module", "group\\module")) {
        assertEquals(
          "Module namespace should not contain path separators",
          check.withName(name).checkNamespace().message,
        )
      }
    }
  }

  @Test
  fun `non-Java solution and devkit names remain valid`() {
    for (check in listOf(NewModuleCheck().forSolution(), NewModuleCheck().forDevkit())) {
      assertFalse(check.withName("non-java-module-name").checkNamespace().isError)
    }
  }

  @Test
  fun `non-Java language and generator names are still rejected as Java packages`() {
    for (check in listOf(NewModuleCheck().forLanguage(), NewModuleCheck().forGenerator())) {
      assertEquals(
        "Module namespace should be a valid Java package",
        check.withName("non-java-module-name").checkNamespace().message,
      )
    }
  }

  private fun allModuleKinds(): List<NewModuleCheck> = listOf(
    NewModuleCheck().forSolution(),
    NewModuleCheck().forDevkit(),
    NewModuleCheck().forLanguage(),
    NewModuleCheck().forGenerator(),
  )
}
