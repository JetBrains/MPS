package jetbrains.mps.intellij.integration

import com.intellij.CommonBundle
import com.intellij.ide.IdeBundle
import com.intellij.ide.RecentProjectsManagerBase
import com.intellij.ide.impl.OpenProjectTask
import com.intellij.ide.impl.ProjectUtilCore
import com.intellij.openapi.application.EDT
import com.intellij.openapi.diagnostic.logger
import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.Messages
import com.intellij.openapi.wm.impl.welcomeScreen.WelcomeFrame
import jetbrains.mps.workbench.actions.OpenMPSProjectTrustProjectHelper
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.nio.file.Path
import kotlin.io.path.absolutePathString
import kotlin.io.path.exists

class MPSRecentProjectsManagerBase(coroutineScope: CoroutineScope) : RecentProjectsManagerBase(coroutineScope) {
    companion object {
        private val LOG = logger<MPSRecentProjectsManagerBase>()
    }

    override suspend fun openProject(projectFile: Path, options: OpenProjectTask): Project? {
        try {
            if (!projectFile.exists() || !ProjectUtilCore.isValidProjectPath(projectFile)) {
                LOG.warn("MPSRecentProjectsManagerBase called with a non-existent project file: " + projectFile.absolutePathString())
                withContext(Dispatchers.EDT) {
                    Messages.showErrorDialog(IdeBundle.message("error.project.file.does.not.exist", projectFile.toString()), CommonBundle.getErrorTitle())
                }
                return null
            }

            val trusted = OpenMPSProjectTrustProjectHelper.checkTrustSuspend(projectFile)

            return if (trusted) {
                withContext(Dispatchers.EDT) {
                    super.openProject(projectFile, options)
                }
            } else {
                LOG.info("Project is not trusted -> return null")
                null
            }
        } finally {
            WelcomeFrame.showIfNoProjectOpened()
        }
    }
}