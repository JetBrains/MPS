package jetbrains.mps.intellij.integration

import com.intellij.ide.impl.OpenProjectTask
import com.intellij.openapi.module.Module
import com.intellij.openapi.project.Project
import com.intellij.openapi.project.impl.ProjectManagerImpl
import java.nio.file.Path

class MPSProjectManager : ProjectManagerImpl() {
  override suspend fun configureWorkspace(project: Project, projectStoreBaseDir: Path, options: OpenProjectTask): Module? {
    // MPS modules do not need a JPS module, including when the platform falls back to configurators for an empty cache.
    return super.configureWorkspace(project, projectStoreBaseDir, options.copy(createModule = false, runConfigurators = false))
  }
}
