/*
 * Copyright 2000-2026 JetBrains s.r.o. Use of this source code is governed by the Apache 2.0 license that can be found in the LICENSE file.
 */
package jetbrains.mps.project

import jetbrains.mps.project.structure.modules.ModuleReference
import jetbrains.mps.vfs.IFile
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import java.lang.reflect.Proxy

class ModuleReferencesCacheTest {
  private val file = proxyFile()
  private val firstReference = ModuleReference("first", ModuleId.regular())
  private val secondReference = ModuleReference("second", ModuleId.regular())

  @Test
  fun `duplicate references are stored once`() {
    val cache = ChangesMonitor.ModuleReferencesCache()

    cache.add(file, firstReference)
    cache.add(file, firstReference)

    assertEquals(listOf(firstReference), cache.get(file))
  }

  @Test
  fun `removing references keeps other modules sharing the descriptor`() {
    val cache = ChangesMonitor.ModuleReferencesCache()
    cache.add(file, firstReference)
    cache.add(file, secondReference)

    cache.remove(file, firstReference)
    assertEquals(listOf(secondReference), cache.get(file))

    cache.remove(file, secondReference)
    assertNull(cache.get(file))
  }

  private fun proxyFile(): IFile {
    return Proxy.newProxyInstance(javaClass.classLoader, arrayOf(IFile::class.java)) { proxy, method, args ->
      when (method.name) {
        "equals" -> proxy === args?.firstOrNull()
        "hashCode" -> System.identityHashCode(proxy)
        "toString" -> "test-file"
        else -> error("Unexpected IFile method: ${method.name}")
      }
    } as IFile
  }
}
